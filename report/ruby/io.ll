Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/io?download=true
inline.NumInlined: 1500
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@nogvl_copy_stream_func:bb.a
nogvl_copy_stream_write.exit.thread50.i:          ; preds = %.outer.i.i, %nogvl_copy_stream_write.exit.i
  %i.jv = select i1 %i.gk, i64 0, i64 %.038.i
  %spec.select46.i = sub i64 %.03658.i, %i.jv     ; 2 uses
  %i.jw = icmp sgt i64 %spec.select46.i, 0
  %i.jx = select i1 %i.gk, i1 true, i1 %i.jw
  br i1 %i.jx, label %bb.aj, label %nogvl_copy_stream_read_write.exit, !llvm.loop !388

nogvl_copy_stream_read_write.exit:                ; preds = %bb.am, %nogvl_copy_stream_write.exit.i, %nogvl_copy_stream_write.exit.thread50.i, %.critedge.i, %bb.ai, %nogvl_copy_stream_write.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.au

bb.au:                                            ; preds = %nogvl_copy_stream_sendfile.exit.thread, %nogvl_copy_file_range.exit.thread20, %nogvl_copy_stream_sendfile.exit, %nogvl_copy_file_range.exit, %nogvl_copy_stream_read_write.exit
  ret ptr null
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @copy_stream_fallback_body(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 8 uses
  %i.c = tail call i64 @rb_str_buf_new(i64 noundef 16384) #28 ; 7 uses
  %i.d = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !180
  %i.f = getelementptr i8, ptr %i.b, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !181
  %i.h = load i64, ptr @id_readpartial, align 8, !tbaa !19 ; 3 uses
  %i.i = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !280
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.b, align 8, !tbaa !277
  %i.l = tail call i32 @rb_respond_to(i64 noundef %i.k, i64 noundef %i.h) #28
  %.not58 = icmp eq i32 %i.l, 0
  %i.m = load i64, ptr @id_read, align 8
  %spec.select = select i1 %.not58, i64 %i.m, i64 %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.046 = phi i64 [ %i.h, %bb.a ], [ %spec.select, %bb.b ] ; 3 uses
  %i.n = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 24       ; 2 uses
  %i.p = getelementptr i8, ptr %i.b, i64 8
  %i.q = getelementptr i8, ptr %i.b, i64 56       ; 2 uses
  %i.r = getelementptr i8, ptr %i.n, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %bb.c
  %.050 = phi i64 [ %i.e, %bb.c ], [ %i.az, %.backedge ] ; 3 uses
  %.047 = phi i64 [ %i.g, %bb.c ], [ %.3, %.backedge ] ; 4 uses
  call void @rb_str_make_independent(i64 noundef %i.c) #28
  %i.s = load i64, ptr %i.d, align 8, !tbaa !180
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i64 %.050, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = call i64 @rb_str_resize(i64 noundef %i.c, i64 noundef 0) #28 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.w = call i64 @llvm.smin.i64(i64 %.050, i64 16384)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.045 = phi i64 [ %i.w, %bb.g ], [ 16384, %bb.d ] ; 2 uses
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !280
  %.not59 = icmp eq ptr %i.x, null
  br i1 %.not59, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = load i64, ptr %i.b, align 8, !tbaa !277
  %i.z = shl i64 %.045, 1
  %i.aa = or disjoint i64 %i.z, 1
  %i.ab = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.y, i64 noundef %.046, i32 noundef 2, i64 noundef %i.aa, i64 noundef %i.c) #28
  %i.ac = load i64, ptr @id_read, align 8, !tbaa !19
  %i.ad = icmp eq i64 %.046, %i.ac
  %i.ae = icmp eq i64 %i.ab, 4
  %or.cond = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond, label %.loopexit, label %.thread

bb.j:                                             ; preds = %bb.h
  %i.af = call i64 @rb_str_resize(i64 noundef %i.c, i64 noundef 16384) #28 ; 0 uses
  %i.ag = load i64, ptr %i.n, align 8, !tbaa !22
  %i.ah = and i64 %i.ag, 8192
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !90
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.j, %bb.k
  %i.aj = phi ptr [ %i.ai, %bb.k ], [ %i.o, %bb.j ]
  %i.ak = call fastcc i64 @maygvl_copy_stream_read(i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef %i.aj, i64 noundef %.045, i64 noundef %.047) ; 4 uses
  %i.al = call i64 @llvm.smax.i64(i64 %i.ak, i64 0)
  %i.am = call i64 @rb_str_resize(i64 noundef %i.c, i64 noundef %i.al) #28 ; 0 uses
  %i.an = icmp sgt i64 %i.ak, -1
  br i1 %i.an, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %RSTRING_PTR.exit
  %i.ao = icmp eq i64 %i.ak, 0
  br i1 %i.ao, label %bb.m, label %.thread64

bb.m:                                             ; preds = %bb.l
  call void @rb_eof_error() #31
  unreachable

.thread64:                                        ; preds = %bb.l
  %i.ap = icmp slt i64 %.047, 0
  %i.aq = select i1 %i.ap, i64 0, i64 %i.ak
  %spec.select60 = add nuw i64 %i.aq, %.047
  br label %.thread

.thread:                                          ; preds = %bb.i, %.thread64
  %.3 = phi i64 [ %spec.select60, %.thread64 ], [ %.047, %bb.i ]
  %i.ar = load i64, ptr %i.p, align 8, !tbaa !278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8, !tbaa !19
  %i.as = load i64, ptr @id_write, align 8, !tbaa !19
  %i.at = call i64 @rb_funcallv(i64 noundef %i.ar, i64 noundef %i.as, i32 noundef 1, ptr noundef nonnull %i.a) #28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.au = trunc i64 %i.at to i1
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread
  %i.av = ashr i64 %i.at, 1
  br label %rb_num2long_inline.exit

bb.o:                                             ; preds = %.thread
  %i.aw = call i64 @rb_num2long(i64 noundef %i.at) #28
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.n, %bb.o
  %.0.i = phi i64 [ %i.av, %bb.n ], [ %i.aw, %bb.o ] ; 2 uses
  %i.ax = load i64, ptr %i.q, align 8, !tbaa !182
  %i.ay = add i64 %i.ax, %.0.i
  store i64 %i.ay, ptr %i.q, align 8, !tbaa !182
  %i.az = sub i64 %.050, %.0.i
  %i.ba = load i64, ptr @id_read, align 8, !tbaa !19
  %i.bb = icmp eq i64 %.046, %i.ba
  br i1 %i.bb, label %bb.p, label %.backedge

.backedge:                                        ; preds = %rb_num2long_inline.exit, %bb.p
  br label %bb.d

bb.p:                                             ; preds = %rb_num2long_inline.exit
  %i.bc = load i64, ptr %i.r, align 8, !tbaa !86
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %.loopexit, label %.backedge

.loopexit:                                        ; preds = %bb.i, %bb.p, %RSTRING_PTR.exit, %bb.f
  ret i64 4
}

declare void @rb_str_make_independent(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @maygvl_copy_stream_read(i32 noundef range(i32 0, 2) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.fiber_scheduler_wait_for_arguments, align 8 ; 7 uses
  %6 = alloca %struct.pollfd, align 4             ; 5 uses
  %i.a = icmp slt i64 %4, 0                       ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %.not.i = icmp eq i32 %0, 0                     ; 3 uses
  %i.c = getelementptr i8, ptr %1, i64 80         ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 18
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !280  ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.backedge
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call fastcc i64 @rb_io_read_memory(ptr noundef %i.h, ptr noundef %2, i64 noundef %3)
  br label %maygvl_read.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !38
  %i.l = call i64 @read(i32 noundef %i.k, ptr noundef %2, i64 noundef %3) #28
  br label %maygvl_read.exit

bb.e:                                             ; preds = %.backedge
  %i.m = getelementptr i8, ptr %i.h, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !38
  %i.o = call i64 @pread(i32 noundef %i.n, ptr noundef %2, i64 noundef %3, i64 noundef %4) #28
  br label %maygvl_read.exit

maygvl_read.exit:                                 ; preds = %bb.d, %bb.c, %bb.e
  %.024 = phi i64 [ %i.o, %bb.e ], [ %i.i, %bb.c ], [ %i.l, %bb.d ] ; 4 uses
  %7 = icmp slt i64 %.024, 0
  br i1 %7, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %maygvl_read.exit
  %i.p = call ptr @rb_errno_ptr() #28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  switch i32 %i.q, label %bb.k [
    i32 4, label %bb.g
    i32 85, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.r = load i64, ptr %i.c, align 8, !tbaa !279
  %i.s = call i32 @rb_thread_interrupted(i64 noundef %i.r) #28
  %.not.i28 = icmp eq i32 %i.s, 0
  br i1 %.not.i28, label %.backedge.backedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.c, align 8, !tbaa !279  ; 2 uses
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @rb_thread_execute_interrupts(i64 noundef %i.t) #28
  br label %.backedge.backedge

bb.j:                                             ; preds = %bb.h
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = call ptr @rb_thread_call_with_gvl(ptr noundef nonnull @exec_interrupts, ptr noundef %i.u) #28 ; 0 uses
  br label %.backedge.backedge

bb.k:                                             ; preds = %bb.f
  %i.w = call ptr @rb_errno_ptr() #28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !16
  switch i32 %i.x, label %bb.v [
    i32 11, label %bb.l
    i32 38, label %bb.u
  ]

bb.l:                                             ; preds = %bb.k
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.l
  %i.y = load i64, ptr %i.c, align 8, !tbaa !279
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !280  ; 2 uses
  %i.aa = call i64 @rb_fiber_scheduler_current_for_thread(i64 noundef %i.y) #28 ; 2 uses
  %.not.i.us25.i = icmp eq i64 %i.aa, 4
  br i1 %.not.i.us25.i, label %.lr.ph.i, label %.split22.us.i

.lr.ph.i:                                         ; preds = %.split.us.i, %maygvl_copy_stream_continue_p.exit.us.i
  %i.ab = phi ptr [ %i.ap, %maygvl_copy_stream_continue_p.exit.us.i ], [ %i.z, %.split.us.i ]
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !38 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %.backedge.backedge, label %nogvl_wait_for.exit.us.i

nogvl_wait_for.exit.us.i:                         ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store i32 %i.ad, ptr %6, align 4, !tbaa !256
  store i16 1, ptr %i.d, align 4, !tbaa !257
  %i.af = call i32 @poll(ptr noundef nonnull %6, i64 noundef 1, i32 noundef -1) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.m, label %.backedge.backedge

bb.m:                                             ; preds = %nogvl_wait_for.exit.us.i
  %i.ah = call ptr @rb_errno_ptr() #28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !16
  switch i32 %i.ai, label %maygvl_copy_stream_wait_read.exit.thread [
    i32 4, label %bb.n
    i32 85, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !279
  %i.ak = call i32 @rb_thread_interrupted(i64 noundef %i.aj) #28
  %.not.i15.us.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i15.us.i, label %maygvl_copy_stream_continue_p.exit.us.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = load i64, ptr %i.c, align 8, !tbaa !279
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = call ptr @rb_thread_call_with_gvl(ptr noundef nonnull @exec_interrupts, ptr noundef %i.am) #28 ; 0 uses
  br label %maygvl_copy_stream_continue_p.exit.us.i

maygvl_copy_stream_continue_p.exit.us.i:          ; preds = %bb.o, %bb.n
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !279
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !280 ; 2 uses
  %i.aq = call i64 @rb_fiber_scheduler_current_for_thread(i64 noundef %i.ao) #28 ; 2 uses
  %.not.i.us.i = icmp eq i64 %i.aq, 4
  br i1 %.not.i.us.i, label %.lr.ph.i, label %.split22.us.i, !llvm.loop !391

.split.i:                                         ; preds = %bb.l, %.split.i.backedge
  %i.ar = load i64, ptr %1, align 8, !tbaa !277
  %i.as = call i64 @rb_io_wait(i64 noundef %i.ar, i64 noundef 3, i64 noundef 4) ; 3 uses
  %i.at = trunc i64 %i.as to i1
  br i1 %i.at, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.split.i
  %i.au = call i64 @rb_fix2int(i64 noundef %i.as) #28
  br label %rb_num2int_inline.exit.i

bb.q:                                             ; preds = %.split.i
  %i.av = call i64 @rb_num2int(i64 noundef %i.as) #28
  br label %rb_num2int_inline.exit.i

rb_num2int_inline.exit.i:                         ; preds = %bb.q, %bb.p
  %.0.i.i = phi i64 [ %i.au, %bb.p ], [ %i.av, %bb.q ]
  %i.aw = trunc i64 %.0.i.i to i32                ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %bb.r, label %.backedge.backedge

.split22.us.i:                                    ; preds = %maygvl_copy_stream_continue_p.exit.us.i, %.split.us.i
  %.lcssa20.us.i = phi ptr [ %i.z, %.split.us.i ], [ %i.ap, %maygvl_copy_stream_continue_p.exit.us.i ]
  %.lcssa.us.i = phi i64 [ %i.aa, %.split.us.i ], [ %i.aq, %maygvl_copy_stream_continue_p.exit.us.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i64 %.lcssa.us.i, ptr %5, align 8, !tbaa !251
  store ptr %.lcssa20.us.i, ptr %i.e, align 8, !tbaa !252
  store i16 1, ptr %i.f, align 8, !tbaa !253
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.g, i8 0, i64 14, i1 false)
  %i.ay = call ptr @rb_thread_call_with_gvl(ptr noundef nonnull @fiber_scheduler_wait_for, ptr noundef nonnull %5) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %rb_num2int_inline.exit.i, %.lr.ph.i, %nogvl_wait_for.exit.us.i, %.split22.us.i, %bb.j, %bb.i, %bb.g
  br label %.backedge

bb.r:                                             ; preds = %rb_num2int_inline.exit.i
  %i.az = call ptr @rb_errno_ptr() #28
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !16
  switch i32 %i.ba, label %maygvl_copy_stream_wait_read.exit.thread [
    i32 4, label %bb.s
    i32 85, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  %i.bb = load i64, ptr %i.c, align 8, !tbaa !279
  %i.bc = call i32 @rb_thread_interrupted(i64 noundef %i.bb) #28
  %.not.i15.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i15.i, label %.split.i.backedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !279
  call void @rb_thread_execute_interrupts(i64 noundef %i.bd) #28
  br label %.split.i.backedge

.split.i.backedge:                                ; preds = %bb.t, %bb.s
  br label %.split.i, !llvm.loop !391

maygvl_copy_stream_wait_read.exit.thread:         ; preds = %bb.r, %bb.m
  %.us-phi24.i = phi i32 [ %i.af, %bb.m ], [ %i.aw, %bb.r ]
  %i.be = getelementptr i8, ptr %1, i64 64
  store ptr @.str.250, ptr %i.be, align 8, !tbaa !281
  %i.bf = call ptr @rb_errno_ptr() #28
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !16
  %i.bh = getelementptr i8, ptr %1, i64 52
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !282
  %i.bi = sext i32 %.us-phi24.i to i64
  br label %.loopexit

bb.u:                                             ; preds = %bb.k
  %i.bj = getelementptr i8, ptr %1, i64 72
  store ptr @.str.91, ptr %i.bj, align 8, !tbaa !284
  br label %.loopexit

bb.v:                                             ; preds = %bb.k
  %i.bk = select i1 %i.a, ptr @.str.34, ptr @.str.91
  %i.bl = getelementptr i8, ptr %1, i64 64
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !281
  %i.bm = call ptr @rb_errno_ptr() #28
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !16
  %i.bo = getelementptr i8, ptr %1, i64 52
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !282
  br label %.loopexit

.loopexit:                                        ; preds = %maygvl_read.exit, %maygvl_copy_stream_wait_read.exit.thread, %bb.v, %bb.u
  %.2 = phi i64 [ %.024, %bb.u ], [ %.024, %bb.v ], [ %i.bi, %maygvl_copy_stream_wait_read.exit.thread ], [ %.024, %maygvl_read.exit ]
  ret i64 %.2
}

; Function Attrs: nofree
declare noundef i64 @pread(i32 noundef, ptr noundef captures(none), i64 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @rb_thread_interrupted(i64 noundef) local_unnamed_addr #1

declare void @rb_thread_execute_interrupts(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noalias noundef ptr @exec_interrupts(ptr noundef %0) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  tail call void @rb_thread_execute_interrupts(i64 noundef %i.a) #28
  ret ptr null
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @nogvl_copy_stream_wait_write(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.fiber_scheduler_wait_for_arguments, align 8 ; 7 uses
  %2 = alloca %struct.pollfd, align 4             ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 80         ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !279
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !283  ; 2 uses
  %i.e = tail call i64 @rb_fiber_scheduler_current_for_thread(i64 noundef %i.c) #28 ; 2 uses
  %.not.i20 = icmp eq i64 %i.e, 4
  br i1 %.not.i20, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.b

._crit_edge:                                      ; preds = %maygvl_copy_stream_continue_p.exit, %bb.a
  %.lcssa16 = phi ptr [ %i.d, %bb.a ], [ %i.y, %maygvl_copy_stream_continue_p.exit ]
  %.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.z, %maygvl_copy_stream_continue_p.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store i64 %.lcssa, ptr %1, align 8, !tbaa !251
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.lcssa16, ptr %i.g, align 8, !tbaa !252
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 4, ptr %i.h, align 8, !tbaa !253
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.i, i8 0, i64 14, i1 false)
  %i.j = call ptr @rb_thread_call_with_gvl(ptr noundef nonnull @fiber_scheduler_wait_for, ptr noundef nonnull %1) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.critedge9

bb.b:                                             ; preds = %.lr.ph, %maygvl_copy_stream_continue_p.exit
  %i.k = phi ptr [ %i.d, %.lr.ph ], [ %i.y, %maygvl_copy_stream_continue_p.exit ]
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !38   ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %.critedge9, label %nogvl_wait_for.exit

nogvl_wait_for.exit:                              ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i32 %i.m, ptr %2, align 4, !tbaa !256
  store i16 4, ptr %i.f, align 4, !tbaa !257
  %i.o = call i32 @poll(ptr noundef nonnull %2, i64 noundef 1, i32 noundef -1) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %.critedge9

bb.c:                                             ; preds = %nogvl_wait_for.exit
  %i.q = call ptr @rb_errno_ptr() #28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  switch i32 %i.r, label %.critedge [
    i32 4, label %bb.d
    i32 85, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.s = load i64, ptr %i.a, align 8, !tbaa !279
  %i.t = call i32 @rb_thread_interrupted(i64 noundef %i.s) #28
  %.not.i10 = icmp eq i32 %i.t, 0
  br i1 %.not.i10, label %maygvl_copy_stream_continue_p.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.a, align 8, !tbaa !279
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = call ptr @rb_thread_call_with_gvl(ptr noundef nonnull @exec_interrupts, ptr noundef %i.v) #28 ; 0 uses
  br label %maygvl_copy_stream_continue_p.exit

maygvl_copy_stream_continue_p.exit:               ; preds = %bb.d, %bb.e
  %i.x = load i64, ptr %i.a, align 8, !tbaa !279
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !283  ; 2 uses
  %i.z = call i64 @rb_fiber_scheduler_current_for_thread(i64 noundef %i.x) #28 ; 2 uses
  %.not.i = icmp eq i64 %i.z, 4
  br i1 %.not.i, label %bb.b, label %._crit_edge, !llvm.loop !5

.critedge:                                        ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %0, i64 64
  store ptr @.str.250, ptr %i.aa, align 8, !tbaa !281
  %i.ab = call ptr @rb_errno_ptr() #28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !16
  %i.ad = getelementptr i8, ptr %0, i64 52
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !282
  br label %.critedge9

.critedge9:                                       ; preds = %bb.b, %nogvl_wait_for.exit, %._crit_edge, %.critedge
  %.0 = phi i32 [ %i.o, %.critedge ], [ 0, %._crit_edge ], [ 0, %nogvl_wait_for.exit ], [ 0, %bb.b ]
  ret i32 %.0
}

declare i64 @copy_file_range(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @sendfile(i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @io_initialize(i64 noundef returned %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.rb_io_encoding, align 8     ; 4 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @rb_io_extract_modeenc(ptr noundef nonnull %i.a, ptr noundef null, i64 noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %4)
  %i.f = trunc i64 %1 to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @rb_fix2int(i64 noundef %1) #28
  br label %rb_num2int_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i64 @rb_num2int(i64 noundef %1) #28
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.i = trunc i64 %.0.i to i32                   ; 12 uses
  %i.j = tail call i32 @rb_reserved_fd_p(i32 noundef %i.i) #28
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_num2int_inline.exit
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.255) #30
  unreachable

bb.e:                                             ; preds = %rb_num2int_inline.exit
  %i.l = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.i, i32 noundef 3) #28 ; 6 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @rb_errno_ptr() #28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  tail call void @rb_syserr_fail(i32 noundef %i.o, ptr noundef null) #30
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = load i32, ptr @max_file_descriptor, align 4, !tbaa !16 ; 2 uses
  %i.q = icmp sgt i32 %i.i, -1
  %.not.i = icmp ult i32 %i.p, %i.i
  %or.cond.i = select i1 %i.q, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.h, label %rb_update_max_fd.exit

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.i, i32 noundef 3) #28
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i, %bb.h
  br label %.lr.ph.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call ptr @rb_errno_ptr() #28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !16
  %i.v = icmp eq i32 %i.u, 9
  br i1 %i.v, label %bb.j, label %.lr.ph.i.preheader

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str, i32 noundef %i.i) #29
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.013.i = phi i32 [ %i.x, %.lr.ph.i ], [ %i.p, %.lr.ph.i.preheader ]
  %i.w = cmpxchg volatile ptr @max_file_descriptor, i32 %.013.i, i32 %i.i seq_cst seq_cst, align 4
  %i.x = extractvalue { i32, i1 } %i.w, 0         ; 2 uses
  %i.y = icmp ult i32 %i.x, %i.i
  br i1 %i.y, label %.lr.ph.i, label %rb_update_max_fd.exit, !llvm.loop !0

rb_update_max_fd.exit:                            ; preds = %.lr.ph.i, %bb.g
  %i.z = and i32 %i.l, 3
  %i.aa = zext nneg i32 %i.z to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.io_initialize, i64 %i.aa
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 2 uses
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !19
  %i.ac = icmp eq i64 %i.ab, 4
end_hunk_0
