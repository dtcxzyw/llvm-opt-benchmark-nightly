Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/proto_bin?download=true
inline.NumInlined: 55
inline.NumDeleted: 7
begin_hunk_0_@try_read_command_binary:bb.a
.thread167.i:                                     ; preds = %.thread167.sink.split.i, %bb.ak, %bb.ak
  %i.em = icmp ne i16 %i.ay, 0
  %i.en = icmp eq i8 %i.bu, 0
  %or.cond27.i = select i1 %i.em, i1 %i.en, i1 false
  br i1 %or.cond27.i, label %bb.ax, label %bb.bi

bb.ax:                                            ; preds = %.thread167.i
  tail call fastcc void @process_bin_append_prepend(ptr noundef nonnull %0)
  br label %bb.bj

bb.ay:                                            ; preds = %bb.ak
  %i.eo = icmp eq i8 %i.bu, 0
  br i1 %i.eo, label %bb.az, label %bb.bi

bb.az:                                            ; preds = %bb.ay
  tail call fastcc void @process_bin_stat(ptr noundef nonnull %0)
  br label %bb.bj

bb.ba:                                            ; preds = %bb.ak, %.thread172.i
  %i.ep = icmp eq i16 %i.ay, 0
  %i.eq = icmp eq i8 %i.bu, 0
  %or.cond30.i = select i1 %i.ep, i1 %i.eq, i1 false
  %i.er = icmp eq i32 %i.bv, 0
  %or.cond32.i = and i1 %or.cond30.i, %i.er
  br i1 %or.cond32.i, label %bb.bb, label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  tail call fastcc void @write_bin_response(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0)
  tail call void @conn_set_state(ptr noundef nonnull %0, i32 noundef 9) #11
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 1, ptr %i.es, align 2, !tbaa !73
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i32 1, ptr %i.et, align 4, !tbaa !85
  br label %bb.bj

bb.bc:                                            ; preds = %bb.ak
  %i.eu = icmp eq i8 %i.bu, 0
  %i.ev = icmp eq i16 %i.ay, 0
  %or.cond35.i = and i1 %i.ev, %i.eu
  %i.ew = icmp eq i32 %i.bv, 0
  %or.cond37.i = and i1 %or.cond35.i, %i.ew
  br i1 %or.cond37.i, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  tail call fastcc void @bin_list_sasl_mechs(ptr noundef nonnull %0)
  br label %bb.bj

bb.be:                                            ; preds = %bb.ak, %bb.ak
  %i.ex = icmp eq i8 %i.bu, 0
  %i.ey = icmp ne i16 %i.ay, 0
  %or.cond40.i = and i1 %i.ey, %i.ex
  br i1 %or.cond40.i, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  tail call fastcc void @process_bin_sasl_auth(ptr noundef nonnull %0)
  br label %bb.bj

.thread169.sink.split.i:                          ; preds = %bb.aj, %bb.ad
  %.sink182.i = phi i16 [ 35, %bb.aj ], [ 29, %bb.ad ]
  store i16 %.sink182.i, ptr %i.ax, align 8, !tbaa !31
  br label %.thread169.i

.thread169.i:                                     ; preds = %.thread169.sink.split.i, %bb.ak, %bb.ak, %bb.ak
  %i.ez = icmp eq i8 %i.bu, 4
  %i.fa = icmp ne i16 %i.ay, 0
  %or.cond43.i = and i1 %i.fa, %i.ez
  br i1 %or.cond43.i, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %.thread169.i
  call fastcc void @process_bin_get_or_touch(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  br label %bb.bj

bb.bh:                                            ; preds = %bb.ak
  tail call void @write_bin_error(ptr noundef nonnull %0, i32 noundef 129, ptr noundef null, i32 noundef %i.bv)
  br label %bb.bj

bb.bi:                                            ; preds = %.thread169.i, %bb.be, %bb.bc, %bb.ba, %bb.ay, %.thread167.i, %.thread165.i, %bb.au, %bb.as, %.thread163.i, %.thread.i, %bb.ap, %bb.an, %bb.al
  tail call fastcc void @handle_binary_protocol_error(ptr noundef nonnull %0)
  br label %bb.bj

bb.bj:                                            ; preds = %write_bin_error.exit.i, %write_bin_error.exit158.i, %write_bin_error.exit161.i, %bb.ac, %bb.am, %bb.ao, %bb.aq, %bb.ar, %bb.at, %bb.av, %bb.aw, %bb.ax, %bb.az, %bb.bb, %bb.bd, %bb.bf, %bb.bg, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.n, %bb.k, %bb.bj, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 1, %bb.bj ], [ 0, %bb.l ], [ -1, %bb.n ], [ -1, %bb.k ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare i64 @ntohll(i64 noundef) local_unnamed_addr #2

declare void @conn_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @resp_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @write_bin_error(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.k [
    i32 130, label %bb.l
    i32 129, label %bb.c
    i32 1, label %bb.d
    i32 4, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 6, label %bb.h
    i32 5, label %bb.i
    i32 32, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  br label %bb.l

bb.h:                                             ; preds = %bb.b
  br label %bb.l

bb.i:                                             ; preds = %bb.b
  br label %bb.l

bb.j:                                             ; preds = %bb.b
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 210, ptr noundef nonnull @__PRETTY_FUNCTION__.write_bin_error) #10
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.a
  %.0 = phi ptr [ %2, %bb.a ], [ @.str.18, %bb.j ], [ @.str.11, %bb.c ], [ @.str.12, %bb.d ], [ @.str.13, %bb.e ], [ @.str.14, %bb.f ], [ @.str.15, %bb.g ], [ @.str.16, %bb.h ], [ @.str.17, %bb.i ], [ @.str.10, %bb.b ] ; 3 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !63
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !41
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.20, i32 noundef %i.e, ptr noundef nonnull %.0) #12 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #14 ; 2 uses
  %i.h = trunc i32 %1 to i16
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  tail call fastcc void @add_bin_header(ptr noundef %0, i16 noundef zeroext %i.h, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef %i.i)
  %.not18 = icmp eq i64 %i.g, 0
  br i1 %.not18, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  tail call void @resp_add_iov(ptr noundef %i.k, ptr noundef nonnull %.0, i32 noundef %i.i) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.l = icmp sgt i32 %3, 0
  br i1 %i.l, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %3, ptr %i.m, align 8, !tbaa !69
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sink = phi i32 [ 7, %bb.q ], [ 9, %bb.p ]
  tail call void @conn_set_state(ptr noundef %0, i32 noundef %.sink) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @add_bin_header(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1, i8 noundef zeroext range(i8 0, 5) %2, i16 noundef zeroext %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 10 uses
  tail call void @resp_reset(ptr noundef %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 164 ; 3 uses
  store i8 -127, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 337
  %i.e = load i8, ptr %i.d, align 1, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 165
  store i8 %i.e, ptr %i.f, align 1, !tbaa !35
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %3)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 166
  store i16 %rev.i, ptr %i.g, align 2, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %rev.i32 = tail call noundef i16 @llvm.bswap.i16(i16 %1)
  %5 = zext nneg i8 %2 to i32
  %6 = zext i16 %rev.i32 to i32
  %7 = shl nuw i32 %6, 16
  %8 = or disjoint i32 %7, %5
  store i32 %8, ptr %i.h, align 4
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %4)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  store i32 %i.i, ptr %i.j, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.l = load i32, ptr %i.k, align 4, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i32 %i.l, ptr %i.m, align 4, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.o = load i64, ptr %i.n, align 8, !tbaa !58
  %i.p = tail call i64 @htonll(i64 noundef %i.o) #11
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  store i64 %i.p, ptr %i.q, align 8, !tbaa !35
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !63
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !41
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.22, i32 noundef %i.v) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.x = and i64 %indvars.iv, 3
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.aa = load i32, ptr %i.u, align 8, !tbaa !41
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.23, i32 noundef %i.aa) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !35
  %i.af = zext i8 %i.ae to i32
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.7, i32 noundef %i.af) #12 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 24
  br i1 %exitcond.not, label %bb.f, label %bb.c, !llvm.loop !86

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !65
  %fputc = tail call i32 @fputc(i32 10, ptr %i.ah) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 24, ptr %i.ai, align 8, !tbaa !87
  tail call void @resp_add_iov(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 24) #11
  ret void
}

declare void @resp_add_iov(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @resp_reset(ptr noundef) local_unnamed_addr #2

declare i64 @htonll(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

declare i32 @store_item(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @get_cas_id() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @write_bin_response(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 14) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 121
  %i.d = load i8, ptr %i.c, align 1, !tbaa !62, !range !56, !noundef !57
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.g = load i16, ptr %i.f, align 8, !tbaa !31
  switch i16 %i.g, label %bb.e [
    i16 0, label %bb.c
    i16 12, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.a
  tail call fastcc void @add_bin_header(ptr noundef nonnull %0, i16 noundef zeroext 0, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef %2)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !59
  tail call void @resp_add_iov(ptr noundef %i.h, ptr noundef %1, i32 noundef %2) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  tail call void @conn_set_state(ptr noundef nonnull %0, i32 noundef 1) #11
  ret void
}

declare void @item_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #7

; Function Attrs: nounwind uwtable
define internal fastcc void @handle_binary_protocol_error(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !63
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %write_bin_error.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !41
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.20, i32 noundef %i.e, ptr noundef nonnull @.str.13) #12 ; 0 uses
  br label %write_bin_error.exit

write_bin_error.exit:                             ; preds = %bb.b, %bb.a
  tail call fastcc void @add_bin_header(ptr noundef %0, i16 noundef zeroext 4, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 17)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59
  tail call void @resp_add_iov(ptr noundef %i.h, ptr noundef nonnull @.str.13, i32 noundef 17) #11
  tail call void @conn_set_state(ptr noundef %0, i32 noundef 9) #11
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !63
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %write_bin_error.exit
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 337
  %i.l = load i8, ptr %i.k, align 1, !tbaa !35
  %i.m = zext i8 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !41
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.37, i32 noundef %i.m, i32 noundef %i.o) #12 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %write_bin_error.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 1, ptr %i.q, align 2, !tbaa !73
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @process_bin_flush(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 184), align 8, !tbaa !88, !range !56, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !63
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %write_bin_error.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !41
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.20, i32 noundef %i.g, ptr noundef nonnull @.str.18) #12 ; 0 uses
  br label %write_bin_error.exit

write_bin_error.exit:                             ; preds = %bb.c, %bb.b
  tail call fastcc void @add_bin_header(ptr noundef %0, i16 noundef zeroext 32, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 13)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59
  tail call void @resp_add_iov(ptr noundef %i.j, ptr noundef nonnull @.str.18, i32 noundef 13) #11
  br label %write_bin_response.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.l = load i8, ptr %i.k, align 4, !tbaa !35
  %i.m = icmp eq i8 %i.l, 4
  br i1 %i.m, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !35   ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call noundef i32 @llvm.bswap.i32(i32 %i.o)
  %i.q = zext i32 %i.p to i64
  %i.r = tail call i32 @realtime(i64 noundef %i.q) #11
  br label %bb.g

.thread:                                          ; preds = %bb.d, %bb.e
  %i.s = load volatile i32, ptr @current_time, align 4, !tbaa !38
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.0.in = phi i32 [ %i.r, %bb.f ], [ %i.s, %.thread ]
  %.0 = add i32 %.0.in, -1
  store i32 %.0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 36), align 4, !tbaa !89
  tail call void @item_flush_expired() #11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 360
  %i.w = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.v) #11 ; 0 uses
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !34   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 504 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !90
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !90
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 360
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ab) #11 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 121
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !62, !range !56, !noundef !57
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.aj = load i16, ptr %i.ai, align 8, !tbaa !31
  switch i16 %i.aj, label %write_bin_response.exit [
    i16 0, label %bb.i
    i16 12, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.g
  tail call fastcc void @add_bin_header(ptr noundef nonnull %0, i16 noundef zeroext 0, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 0)
  br label %write_bin_response.exit

write_bin_response.exit:                          ; preds = %bb.i, %bb.h, %write_bin_error.exit
  %.sink = phi i32 [ 9, %write_bin_error.exit ], [ 1, %bb.h ], [ 1, %bb.i ]
  tail call void @conn_set_state(ptr noundef %0, i32 noundef %.sink) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @process_bin_update(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1106, ptr noundef nonnull @__PRETTY_FUNCTION__.process_bin_update) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 192
  %.val = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.b = getelementptr i8, ptr %0, i64 338
  %.val93 = load i16, ptr %i.b, align 2, !tbaa !35 ; 4 uses
  %i.c = zext i16 %.val93 to i64                  ; 5 uses
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds i8, ptr %.val, i64 %i.d ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %2 = load i32, ptr %i.f, align 8, !tbaa !35
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.g = load i32, ptr %3, align 4, !tbaa !35
  %4 = zext i32 %i.g to i64
  %5 = zext i32 %2 to i64
  %6 = shl nuw i64 %5, 32
  %7 = or disjoint i64 %6, %4
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  store i64 %8, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.i = load i32, ptr %i.h, align 8, !tbaa !35
  %i.j = zext i16 %.val93 to i32                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.l = load i8, ptr %i.k, align 4, !tbaa !35
  %i.m = zext i8 %i.l to i32
  %i.n = add nuw nsw i32 %i.j, %i.m
  %i.o = sub i32 %i.i, %i.n                       ; 6 uses
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !63
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.s = load i16, ptr %i.r, align 8, !tbaa !31   ; 2 uses
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !41
  %switch.selectcmp = icmp eq i16 %i.s, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.39, ptr @.str.40
  %switch.selectcmp104 = icmp eq i16 %i.s, 2
  %switch.select105 = select i1 %switch.selectcmp104, ptr @.str.38, ptr %switch.select
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull %switch.select105, i32 noundef %i.v) #12 ; 0 uses
  %.not97 = icmp eq i16 %.val93, 0
  br i1 %.not97, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext i16 %.val93 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %i.z = load i8, ptr %i.y, align 1, !tbaa !35
  %i.aa = sext i8 %i.z to i32
  %fputc92 = tail call i32 @fputc(i32 %i.aa, ptr %i.x) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !91

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.42, i32 noundef %i.o) #12 ; 0 uses
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !65
  %fputc = tail call i32 @fputc(i32 10, ptr %i.ad) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 96), align 8, !tbaa !74
  %.not84 = icmp eq i32 %i.ae, 0
  br i1 %.not84, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @stats_prefix_record_set(ptr noundef %i.e, i64 noundef %i.c) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = load i32, ptr %i.f, align 8, !tbaa !35
  %i.ag = load i32, ptr %3, align 4, !tbaa !35
  %i.ah = zext i32 %i.ag to i64
  %i.ai = tail call i32 @realtime(i64 noundef %i.ah) #11
  %i.aj = add nsw i32 %i.o, 2                     ; 2 uses
  %i.ak = tail call ptr @item_alloc(ptr noundef %i.e, i64 noundef %i.c, i32 noundef %i.af, i32 noundef %i.ai, i32 noundef %i.aj) #11 ; 7 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.f, align 8, !tbaa !35
  %i.an = tail call zeroext i1 @item_size_ok(i64 noundef %i.c, i32 noundef %i.am, i32 noundef %i.aj) #11
  br i1 %i.an, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !63
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !41
  %i.at = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aq, ptr noundef nonnull @.str.20, i32 noundef %i.as, ptr noundef nonnull @.str.15) #12 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call fastcc void @add_bin_header(ptr noundef nonnull %0, i16 noundef zeroext 3, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 10)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !59
  tail call void @resp_add_iov(ptr noundef %i.av, ptr noundef nonnull @.str.15, i32 noundef 10) #11
  %i.aw = icmp sgt i32 %i.o, 0
  br i1 %i.aw, label %bb.l, label %write_bin_error.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %i.o, ptr %i.ax, align 8, !tbaa !69
  br label %write_bin_error.exit

write_bin_error.exit:                             ; preds = %bb.k, %bb.l
  %.sink.i = phi i32 [ 7, %bb.l ], [ 9, %bb.k ]
  tail call void @conn_set_state(ptr noundef nonnull %0, i32 noundef %.sink.i) #11
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  tail call void @out_of_memory(ptr noundef nonnull %0, ptr noundef nonnull @.str.43) #11
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %i.o, ptr %i.ay, align 8, !tbaa !69
  br label %bb.n

bb.n:                                             ; preds = %write_bin_error.exit, %bb.m
  %.077 = phi i32 [ 5, %bb.m ], [ 4, %write_bin_error.exit ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !34
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 6968
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !92 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = load i32, ptr @logger_key, align 4, !tbaa !38
  %i.bf = tail call ptr @pthread_getspecific(i32 noundef %i.be) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi ptr [ %i.bf, %bb.o ], [ %i.bc, %bb.n ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0, i64 84
  %i.bh = load i16, ptr %i.bg, align 4, !tbaa !95
  %i.bi = and i16 %i.bh, 8
  %.not90 = icmp eq i16 %i.bi, 0
  br i1 %.not90, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load i32, ptr %3, align 4, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !41
  %i.bm = tail call i32 (ptr, i32, ptr, ...) @logger_log(ptr noundef nonnull %.0, i32 noundef 3, ptr noundef null, i32 noundef %.077, i32 noundef 0, ptr noundef %i.e, i32 noundef %i.j, i32 noundef %i.bj, i32 noundef 0, i32 noundef %i.bl) #11 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bo = load i16, ptr %i.bn, align 8, !tbaa !31
  %i.bp = icmp eq i16 %i.bo, 1
  br i1 %i.bp, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bq = load ptr, ptr %i.az, align 8, !tbaa !34
  %i.br = tail call ptr @item_get(ptr noundef %i.e, i64 noundef %i.c, ptr noundef %i.bq, i1 noundef zeroext false) #11 ; 4 uses
  %.not91 = icmp eq ptr %i.br, null
  br i1 %.not91, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @item_unlink(ptr noundef nonnull %i.br) #11
  %i.bs = load ptr, ptr %i.az, align 8, !tbaa !34
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 6960
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !75
  tail call void @storage_delete(ptr noundef %i.bu, ptr noundef nonnull %i.br) #11
  tail call void @item_remove(ptr noundef nonnull %i.br) #11
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r
  tail call void @conn_set_state(ptr noundef nonnull %0, i32 noundef 7) #11
  br label %bb.ab

bb.v:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ak, i64 38 ; 3 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !37
  %i.bx = and i16 %i.bw, 2
  %.not85 = icmp eq i16 %i.bx, 0
  br i1 %.not85, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !35
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !35
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.cc = load i16, ptr %i.cb, align 8, !tbaa !31
  %switch.tableidx = add i16 %i.cc, -1            ; 2 uses
  %i.cd = icmp ult i16 %switch.tableidx, 3
  br i1 %i.cd, label %switch.lookup, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1186, ptr noundef nonnull @__PRETTY_FUNCTION__.process_bin_update) #10
  unreachable

switch.lookup:                                    ; preds = %bb.x
  %i.ce = shl nuw nsw i16 %switch.tableidx, 4
  %switch.shiftamt = zext nneg i16 %i.ce to i48
  %switch.downshift = lshr i48 12884967426, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i16
  store i16 %switch.masked, ptr %i.cb, align 8, !tbaa !31
  %i.cf = load i16, ptr %i.bv, align 2, !tbaa !37 ; 3 uses
  %i.cg = and i16 %i.cf, 2
  %.not86 = icmp eq i16 %i.cg, 0
  br i1 %.not86, label %.critedge, label %bb.z

bb.z:                                             ; preds = %switch.lookup
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
end_hunk_0
begin_hunk_1_@process_bin_sasl_auth:bb.a
  %i.as = icmp eq ptr %i.ar, null                 ; 2 uses
  br i1 %i.as, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 38
  %i.au = load i16, ptr %i.at, align 2, !tbaa !37 ; 2 uses
  %i.av = and i16 %i.au, 32
  %.not34 = icmp eq i16 %i.av, 0
  br i1 %.not34, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !63
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !41
  %i.bb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ay, ptr noundef nonnull @.str.20, i32 noundef %i.ba, ptr noundef nonnull @.str.10) #12 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call fastcc void @add_bin_header(ptr noundef nonnull %0, i16 noundef zeroext 130, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 13)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !59
  tail call void @resp_add_iov(ptr noundef %i.bd, ptr noundef nonnull @.str.10, i32 noundef 13) #11
  %i.be = icmp sgt i32 %i.aa, 0
  br i1 %i.be, label %bb.t, label %write_bin_error.exit44

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %i.aa, ptr %i.bf, align 8, !tbaa !69
  br label %write_bin_error.exit44

write_bin_error.exit44:                           ; preds = %bb.s, %bb.t
  %.sink.i43 = phi i32 [ 7, %bb.t ], [ 9, %bb.s ]
  tail call void @conn_set_state(ptr noundef nonnull %0, i32 noundef %.sink.i43) #11
  tail call void @conn_set_state(ptr noundef nonnull %0, i32 noundef 7) #11
  br i1 %i.as, label %bb.w, label %bb.u

bb.u:                                             ; preds = %write_bin_error.exit44
  tail call void @do_item_remove(ptr noundef nonnull %i.ar) #11
  br label %bb.w

bb.v:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.ar, ptr %i.bg, align 8, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 41
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !35
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 49
  %i.bm = zext i16 %i.au to i32                   ; 2 uses
  %i.bn = lshr i32 %i.bm, 6
  %i.bo = and i32 %i.bn, 4
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bp
  %i.br = shl nuw nsw i32 %i.bm, 2
  %i.bs = and i32 %i.br, 8
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !39
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %i.aa, ptr %i.bw, align 8, !tbaa !76
  tail call void @conn_set_state(ptr noundef nonnull %0, i32 noundef 6) #11
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 10, ptr %i.bx, align 4, !tbaa !32
  br label %bb.w

bb.w:                                             ; preds = %write_bin_error.exit41, %write_bin_error.exit44, %bb.u, %bb.v, %write_bin_error.exit
  ret void
}

declare i32 @realtime(i64 noundef) local_unnamed_addr #2

declare void @item_flush_expired() local_unnamed_addr #2

declare void @stats_prefix_record_set(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @item_alloc(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @item_size_ok(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @out_of_memory(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @pthread_getspecific(i32 noundef) local_unnamed_addr #6

declare i32 @logger_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @item_get(ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @item_unlink(ptr noundef) local_unnamed_addr #2

declare void @storage_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @limited_get(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare i32 @storage_get_item(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @resp_add_chunked_iov(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @write_bin_miss_response(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 0, 65536) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = trunc nuw i64 %2 to i16
  %i.b = trunc nuw nsw i64 %2 to i32              ; 2 uses
  tail call fastcc void @add_bin_header(ptr noundef %0, i16 noundef zeroext 1, i8 noundef zeroext 0, i16 noundef zeroext %i.a, i32 noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 188 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr align 1 %1, i64 %2, i1 false)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !59
  tail call void @resp_add_iov(ptr noundef %i.f, ptr noundef nonnull %i.e, i32 noundef %i.b) #11
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !63
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %write_bin_error.exit

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !41
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.20, i32 noundef %i.k, ptr noundef nonnull @.str.12) #12 ; 0 uses
  br label %write_bin_error.exit

write_bin_error.exit:                             ; preds = %bb.d, %bb.c
  tail call fastcc void @add_bin_header(ptr noundef %0, i16 noundef zeroext 1, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 9)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59
  tail call void @resp_add_iov(ptr noundef %i.n, ptr noundef nonnull @.str.12, i32 noundef 9) #11
  br label %bb.e

bb.e:                                             ; preds = %write_bin_error.exit, %bb.b
  %.sink = phi i32 [ 9, %write_bin_error.exit ], [ 1, %bb.b ]
  tail call void @conn_set_state(ptr noundef %0, i32 noundef %.sink) #11
  ret void
}

declare void @stats_prefix_record_get(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @stats_prefix_record_delete(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @item_get_locked(ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @do_item_unlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @item_unlock(i32 noundef) local_unnamed_addr #2

declare i32 @add_delta(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare void @server_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @append_stats(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) #2

declare zeroext i1 @get_stats(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare void @stats_reset() local_unnamed_addr #2

declare void @process_stat_settings(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @stats_prefix_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare void @write_and_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { cold }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"any p2 pointer", !12, i64 0}
!14 = !{!"_Bool", !8, i64 0}
!15 = !{!"p1 _ZTS14event_callback", !12, i64 0}
!16 = !{!"p2 _ZTS14event_callback", !13, i64 0}
!17 = !{!"", !15, i64 0, !16, i64 8}
!18 = !{!"short", !8, i64 0}
!19 = !{!"event_callback", !17, i64 0, !18, i64 16, !8, i64 18, !8, i64 19, !8, i64 24, !12, i64 32}
!20 = !{!"p1 _ZTS10event_base", !12, i64 0}
!21 = !{!"long", !8, i64 0}
!22 = !{!"timeval", !21, i64 0, !21, i64 8}
!23 = !{!"event", !19, i64 0, !8, i64 40, !9, i64 56, !20, i64 64, !8, i64 72, !18, i64 104, !18, i64 106, !22, i64 112}
!24 = !{!"p1 omnipotent char", !12, i64 0}
!25 = !{!"p1 _ZTS8_mc_resp", !12, i64 0}
!26 = !{!"in6_addr", !8, i64 0}
!27 = !{!"sockaddr_in6", !18, i64 0, !18, i64 2, !9, i64 4, !26, i64 8, !9, i64 24}
!28 = !{!"", !24, i64 0, !21, i64 8, !21, i64 16}
!29 = !{!"p1 _ZTS4conn", !12, i64 0}
!30 = !{!"conn", !13, i64 0, !9, i64 8, !14, i64 12, !14, i64 13, !14, i64 14, !14, i64 15, !14, i64 16, !8, i64 17, !12, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !23, i64 48, !18, i64 176, !18, i64 178, !24, i64 184, !24, i64 192, !9, i64 200, !9, i64 204, !25, i64 208, !25, i64 216, !24, i64 224, !9, i64 232, !12, i64 240, !9, i64 248, !9, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !27, i64 276, !9, i64 304, !28, i64 312, !8, i64 336, !21, i64 360, !21, i64 368, !18, i64 376, !9, i64 380, !9, i64 384, !29, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !12, i64 440}
!31 = !{!30, !18, i64 376}
!32 = !{!30, !9, i64 36}
!33 = !{!30, !12, i64 240}
!34 = !{!30, !12, i64 400}
!35 = !{!8, !8, i64 0}
!36 = !{!"slab_stats", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56}
!37 = !{!18, !18, i64 0}
!38 = !{!9, !9, i64 0}
!39 = !{!30, !24, i64 224}
!40 = !{!21, !21, i64 0}
!41 = !{!30, !9, i64 8}
!42 = !{!"thread_notify", !23, i64 0, !9, i64 128}
!43 = !{!"p1 _ZTS13_io_pending_t", !12, i64 0}
!44 = !{!"p2 _ZTS13_io_pending_t", !13, i64 0}
!45 = !{!"iop_head_s", !43, i64 0, !44, i64 8}
!46 = !{!"thread_stats", !8, i64 0, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !21, i64 80, !21, i64 88, !21, i64 96, !21, i64 104, !21, i64 112, !21, i64 120, !21, i64 128, !21, i64 136, !21, i64 144, !21, i64 152, !21, i64 160, !21, i64 168, !21, i64 176, !21, i64 184, !21, i64 192, !21, i64 200, !21, i64 208, !21, i64 216, !21, i64 224, !21, i64 232, !21, i64 240, !21, i64 248, !21, i64 256, !21, i64 264, !21, i64 272, !8, i64 280, !8, i64 4376, !21, i64 6424, !21, i64 6432, !21, i64 6440}
!47 = !{!"p1 _ZTS10conn_queue", !12, i64 0}
!48 = !{!"p1 _ZTS15_mc_resp_bundle", !12, i64 0}
!49 = !{!"p1 _ZTS7_logger", !12, i64 0}
!50 = !{!"", !21, i64 0, !20, i64 8, !42, i64 16, !42, i64 152, !8, i64 288, !45, i64 328, !9, i64 344, !9, i64 348, !9, i64 352, !46, i64 360, !8, i64 6808, !47, i64 6928, !12, i64 6936, !48, i64 6944, !12, i64 6952, !12, i64 6960, !49, i64 6968, !12, i64 6976, !9, i64 6984}
!51 = !{!50, !9, i64 344}
!52 = !{!"double", !8, i64 0}
!53 = !{!"p1 _ZTS17slab_rebal_thread", !12, i64 0}
!54 = !{!"settings", !21, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !24, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !24, i64 48, !24, i64 56, !9, i64 64, !52, i64 72, !9, i64 80, !9, i64 84, !9, i64 88, !8, i64 92, !9, i64 96, !9, i64 100, !14, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !14, i64 132, !14, i64 133, !14, i64 134, !14, i64 135, !14, i64 136, !14, i64 137, !14, i64 138, !9, i64 140, !9, i64 144, !52, i64 152, !52, i64 160, !9, i64 168, !9, i64 172, !14, i64 176, !9, i64 180, !14, i64 184, !14, i64 185, !24, i64 192, !9, i64 200, !9, i64 204, !9, i64 208, !9, i64 212, !52, i64 216, !52, i64 224, !9, i64 232, !14, i64 236, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !14, i64 260, !14, i64 261, !14, i64 262, !53, i64 264, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !9, i64 296, !9, i64 300, !9, i64 304, !9, i64 308, !52, i64 312, !14, i64 320, !9, i64 324, !9, i64 328, !24, i64 336, !9, i64 344}
!55 = !{!54, !14, i64 104}
!56 = !{i8 0, i8 2}
!57 = !{}
!58 = !{!30, !21, i64 360}
!59 = !{!30, !25, i64 208}
!60 = !{!"p1 _ZTS8_stritem", !12, i64 0}
!61 = !{!"_mc_resp", !48, i64 0, !25, i64 8, !9, i64 16, !9, i64 20, !12, i64 24, !43, i64 32, !60, i64 40, !8, i64 48, !9, i64 112, !8, i64 116, !8, i64 117, !14, i64 118, !14, i64 119, !14, i64 120, !14, i64 121, !14, i64 122, !14, i64 123, !14, i64 124, !18, i64 126, !18, i64 128, !18, i64 130, !27, i64 132, !9, i64 160, !8, i64 164}
!62 = !{!61, !14, i64 121}
!63 = !{!54, !9, i64 32}
!64 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!54, !14, i64 132}
!67 = !{!30, !14, i64 13}
!68 = !{!30, !13, i64 0}
!69 = !{!30, !9, i64 248}
!70 = !{!30, !24, i64 192}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!30, !9, i64 380}
!73 = !{!30, !14, i64 14}
!74 = !{!54, !9, i64 96}
!75 = !{!50, !12, i64 6960}
!76 = !{!30, !9, i64 232}
!77 = !{!36, !21, i64 0}
!78 = !{!"p1 _ZTS9_strchunk", !12, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!30, !14, i64 12}
!81 = distinct !{!81, !71}
!82 = !{!30, !9, i64 204}
!83 = !{!30, !9, i64 384}
!84 = !{!30, !9, i64 40}
!85 = !{!30, !9, i64 268}
!86 = distinct !{!86, !71}
!87 = !{!61, !9, i64 16}
!88 = !{!54, !14, i64 184}
!89 = !{!54, !9, i64 36}
!90 = !{!50, !21, i64 504}
!91 = distinct !{!91, !71}
!92 = !{!50, !49, i64 6968}
!93 = !{!"p1 _ZTS14_entry_details", !12, i64 0}
!94 = !{!"_logger", !49, i64 0, !49, i64 8, !8, i64 16, !21, i64 56, !21, i64 64, !21, i64 72, !18, i64 80, !18, i64 82, !18, i64 84, !12, i64 88, !93, i64 96}
!95 = !{!94, !18, i64 84}
!96 = !{!14, !14, i64 0}
!97 = !{!50, !21, i64 432}
!98 = !{!36, !21, i64 16}
!99 = !{!50, !21, i64 400}
!100 = !{!61, !14, i64 122}
!101 = !{!61, !43, i64 32}
!102 = !{!"", !43, i64 0}
!103 = !{!"_io_pending_t", !8, i64 0, !8, i64 1, !8, i64 2, !12, i64 8, !29, i64 16, !25, i64 24, !12, i64 32, !12, i64 40, !102, i64 48, !8, i64 56}
!104 = !{!103, !29, i64 16}
!105 = !{!61, !14, i64 119}
!106 = !{!30, !9, i64 252}
!107 = !{!61, !60, i64 40}
!108 = !{!50, !21, i64 608}
!109 = distinct !{!109, !71}
!110 = !{!36, !21, i64 24}
!111 = !{!50, !21, i64 448}
!112 = distinct !{!112, !71}
!113 = distinct !{!113, !71}
!114 = !{!54, !14, i64 185}
!115 = !{!30, !24, i64 312}
!116 = !{!30, !21, i64 328}
end_hunk_1
