inline.NumInlined: 1500
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@io_writev:bb.a
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !20
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %rb_io_check_closed.exit.i

bb.g:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.aa = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit.i:                        ; preds = %rb_io_check_initialized.exit.i
  %i.ab = getelementptr i8, ptr %i.v, i64 20      ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !39
  %i.ad = and i32 %i.ac, 2
  %.not.i38 = icmp eq i32 %i.ad, 0
  br i1 %.not.i38, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_io_check_closed.exit.i
  %i.ae = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ae, ptr noundef nonnull @.str.8) #30
  unreachable

bb.i:                                             ; preds = %rb_io_check_closed.exit.i
  %i.af = getelementptr i8, ptr %i.v, i64 80
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !46
  %.not4.i = icmp eq i32 %i.ag, 0
  br i1 %.not4.i, label %rb_io_check_writable.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @io_unread(ptr noundef nonnull %i.v, i1 noundef zeroext true)
  br label %rb_io_check_writable.exit

rb_io_check_writable.exit:                        ; preds = %bb.i, %bb.j
  %i.ah = icmp sgt i32 %0, 0
  br i1 %i.ah, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %rb_io_check_writable.exit
  %i.ai = add nsw i32 %0, -1
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.t
  %.03043 = phi i32 [ 0, %.lr.ph ], [ %i.bm, %bb.t ] ; 5 uses
  %.03142 = phi i64 [ 1, %.lr.ph ], [ %i.bl, %bb.t ]
  %i.aj = load i32, ptr %i.ab, align 4, !tbaa !39
  %i.ak = and i32 %i.aj, 24
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = sub i32 %0, %.03043                     ; 3 uses
  %i.am = icmp sgt i32 %i.al, 1023
  br i1 %i.am, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = sext i32 %.03043 to i64
  %i.ao = getelementptr [8 x i8], ptr %1, i64 %i.an
  %i.ap = tail call fastcc i64 @io_fwritev(i32 noundef %i.al, ptr noundef %i.ao, ptr noundef nonnull %i.v)
  br label %bb.r

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.aq = sext i32 %.03043 to i64
  %i.ar = getelementptr [8 x i8], ptr %1, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !13
  %i.at = tail call i64 @rb_obj_as_string(i64 noundef %i.as) #28
  %i.au = icmp slt i32 %.03043, %i.ai
  %i.av = zext i1 %i.au to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !7
  %i.aw = call fastcc i64 @do_writeconv(i64 noundef %i.at, ptr noundef nonnull %i.v, ptr noundef %i.a) ; 3 uses
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !7
  %.not.i39 = icmp eq i32 %i.ax, 0
  br i1 %.not.i39, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @rb_obj_freeze_inline(i64 noundef %i.aw) #28
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ay = tail call i64 @rb_str_tmp_frozen_no_embed_acquire(i64 noundef %i.aw) #28 ; 2 uses
  %i.az = inttoptr i64 %i.ay to ptr               ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !16
  %i.bb = and i64 %i.ba, 8192
  %.not.i.i40 = icmp eq i64 %i.bb, 0
  %i.bc = getelementptr i8, ptr %i.az, i64 24     ; 2 uses
  br i1 %.not.i.i40, label %io_fwrite.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !86
  br label %io_fwrite.exit

io_fwrite.exit:                                   ; preds = %bb.p, %bb.q
  %i.be = phi ptr [ %i.bd, %bb.q ], [ %i.bc, %bb.p ]
  %i.bf = getelementptr i8, ptr %i.az, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !81
  %i.bh = tail call fastcc i64 @io_binwrite(ptr noundef %i.be, i64 noundef %i.bg, ptr noundef nonnull %i.v, i32 noundef %i.av)
  tail call void @rb_str_tmp_frozen_release(i64 noundef %i.aw, i64 noundef %i.ay) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.r

bb.r:                                             ; preds = %io_fwrite.exit, %bb.m
  %.033 = phi i64 [ %i.ap, %bb.m ], [ %i.bh, %io_fwrite.exit ] ; 2 uses
  %.0 = phi i32 [ %i.al, %bb.m ], [ 1, %io_fwrite.exit ]
  %i.bi = icmp slt i64 %.033, 0
  br i1 %i.bi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @rb_sys_fail_on_write(ptr noundef nonnull %i.v) #31
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bj = shl nuw i64 %.033, 1
  %i.bk = or disjoint i64 %i.bj, 1
  %i.bl = tail call i64 @rb_fix_plus(i64 noundef %i.bk, i64 noundef %.03142) #28 ; 2 uses
  %i.bm = add i32 %.0, %.03043                    ; 2 uses
  %i.bn = icmp slt i32 %i.bm, %0
  br i1 %i.bn, label %bb.k, label %.loopexit, !llvm.loop !342

.loopexit:                                        ; preds = %bb.t, %rb_io_check_writable.exit, %bb.c
  %.032 = phi i64 [ %i.k, %bb.c ], [ 1, %rb_io_check_writable.exit ], [ %i.bl, %bb.t ]
  ret i64 %.032
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @io_fwritev(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.binwritev_arg, align 8      ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.d = add i32 %0, 1                            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.e = sext i32 %i.d to i64                     ; 4 uses
  %i.f = icmp ult i32 %i.d, 64
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !13
  %i.g = shl nuw nsw i64 %i.e, 4
  %i.h = alloca i8, i64 %i.g, align 16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = icmp slt i32 %i.d, 0
  br i1 %i.i, label %bb.d, label %rb_alloc_tmp_buffer2.exit, !prof !343

bb.d:                                             ; preds = %bb.c
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 -2147483648, 2147483648) %i.e, i64 noundef 16) #30
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.c
  %i.j = shl nuw nsw i64 %i.e, 4
  %i.k = shl nuw nsw i64 %i.e, 1
  %i.l = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.b, i64 noundef %i.j, i64 noundef %i.k) #37
  br label %bb.e

bb.e:                                             ; preds = %rb_alloc_tmp_buffer2.exit, %bb.b
  %i.m = phi ptr [ %i.h, %bb.b ], [ %i.l, %rb_alloc_tmp_buffer2.exit ] ; 11 uses
  %i.n = sext i32 %0 to i64                       ; 4 uses
  %i.o = icmp ult i32 %0, 128
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.c, align 8, !tbaa !13
  %i.p = shl nuw nsw i64 %i.n, 3
  %i.q = alloca i8, i64 %i.p, align 16
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.r = icmp slt i32 %0, 0
  br i1 %i.r, label %bb.h, label %rb_alloc_tmp_buffer2.exit42, !prof !343

bb.h:                                             ; preds = %bb.g
  call void @ruby_malloc_size_overflow(i64 noundef range(i64 -2147483648, 2147483648) %i.n, i64 noundef 8) #30
  unreachable

rb_alloc_tmp_buffer2.exit42:                      ; preds = %bb.g
  %i.s = shl nuw nsw i64 %i.n, 3
  %i.t = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.c, i64 noundef %i.s, i64 noundef %i.n) #37
  br label %bb.i

bb.i:                                             ; preds = %rb_alloc_tmp_buffer2.exit42, %bb.f
  %i.u = phi ptr [ %i.q, %bb.f ], [ %i.t, %rb_alloc_tmp_buffer2.exit42 ] ; 2 uses
  %.not62 = icmp eq i32 %0, 0                     ; 2 uses
  br i1 %.not62, label %.preheader59.i.thread, label %.lr.ph.preheader

.preheader59.i.thread:                            ; preds = %bb.i
  call void @rb_thread_check_ints() #28
  br label %._crit_edge.i

.lr.ph.preheader:                                 ; preds = %bb.i
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %RSTRING_PTR.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %RSTRING_PTR.exit ] ; 3 uses
  %i.v = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.w = load i64, ptr %i.v, align 8, !tbaa !13
  %i.x = call i64 @rb_obj_as_string(i64 noundef %i.w) #28
  store i32 0, ptr %i.a, align 4, !tbaa !7
  %i.y = call fastcc i64 @do_writeconv(i64 noundef %i.x, ptr noundef %2, ptr noundef %i.a) ; 2 uses
  %i.z = load i32, ptr %i.a, align 4, !tbaa !7
  %.not41 = icmp eq i32 %i.z, 0
  br i1 %.not41, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @rb_obj_freeze_inline(i64 noundef %i.y) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph
  %i.aa = call i64 @rb_str_tmp_frozen_acquire(i64 noundef %i.y) #28 ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !13
  %i.ac = inttoptr i64 %i.aa to ptr               ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !16
  %i.ae = and i64 %i.ad, 8192
  %.not.i = icmp eq i64 %i.ae, 0
  %i.af = getelementptr i8, ptr %i.ac, i64 24     ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !86
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.k, %bb.l
  %i.ah = phi ptr [ %i.ag, %bb.l ], [ %i.af, %bb.k ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ai = getelementptr [16 x i8], ptr %i.m, i64 %indvars.iv.next ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !279
  %i.aj = getelementptr i8, ptr %i.ac, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !81
  %i.al = getelementptr i8, ptr %i.ai, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !281
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !344

._crit_edge:                                      ; preds = %RSTRING_PTR.exit
  call void @rb_thread_check_ints() #28
  %i.am = icmp eq i32 %i.d, 0
  br i1 %i.am, label %io_binwritev.exit, label %.preheader59.i

.preheader59.i:                                   ; preds = %._crit_edge
  %i.an = icmp sgt i32 %i.d, 1
  br i1 %i.an, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader59.i
  %wide.trip.count.i = zext nneg i32 %i.d to i64  ; 2 uses
  %min.iters.check = icmp ult i32 %i.d, 6
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %i.ao = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %i.ap = and i64 %i.ao, 3                        ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = select i1 %i.aq, i64 4, i64 %i.ap
  %n.vec = sub nsw i64 %i.ao, %i.ar               ; 2 uses
  %i.as = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi63 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.at = getelementptr [16 x i8], ptr %i.m, i64 %index
  %i.au = getelementptr [16 x i8], ptr %i.m, i64 %index
  %i.av = getelementptr i8, ptr %i.at, i64 24
  %i.aw = getelementptr i8, ptr %i.au, i64 56
  %wide.vec = load <4 x i64>, ptr %i.av, align 8, !tbaa !281
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec64 = load <4 x i64>, ptr %i.aw, align 8, !tbaa !281
  %strided.vec65 = shufflevector <4 x i64> %wide.vec64, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ax = add <2 x i64> %strided.vec, %vec.phi    ; 2 uses
  %i.ay = add <2 x i64> %strided.vec65, %vec.phi63 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !345

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ay, %i.ax
  %i.ba = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.as, %middle.block ]
  %.04760.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader59.i.thread, %.preheader59.i
  %i.bb = phi i1 [ false, %.preheader59.i ], [ false, %.preheader59.i.thread ], [ true, %.lr.ph.i ]
  %.047.lcssa.i = phi i64 [ 0, %.preheader59.i ], [ 0, %.preheader59.i.thread ], [ %i.bv, %.lr.ph.i ] ; 4 uses
  %i.bc = getelementptr i8, ptr %2, i64 48        ; 6 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !64 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.m, label %bb.o

bb.m:                                             ; preds = %._crit_edge.i
  %i.bf = getelementptr i8, ptr %2, i64 20
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !39
  %i.bh = and i32 %i.bg, 8
  %.not10.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not10.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr i8, ptr %2, i64 56
  store i32 0, ptr %i.bi, align 8, !tbaa !65
  %i.bj = getelementptr i8, ptr %2, i64 60
  store i32 0, ptr %i.bj, align 4, !tbaa !40
  %i.bk = getelementptr i8, ptr %2, i64 64
  store i32 8192, ptr %i.bk, align 8, !tbaa !66
  %i.bl = call noalias nonnull dereferenceable(8192) ptr @ruby_xmalloc2(i64 noundef 8192, i64 noundef 1) #32 ; 2 uses
  store ptr %i.bl, ptr %i.bc, align 8, !tbaa !64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i
  %i.bm = phi ptr [ %i.bl, %bb.n ], [ null, %bb.m ], [ %i.bd, %._crit_edge.i ]
  %i.bn = getelementptr i8, ptr %2, i64 192       ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !41
  %i.bp = icmp eq i64 %i.bo, 4
  br i1 %i.bp, label %bb.p, label %io_allocate_write_buffer.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bq = call i64 @rb_mutex_new() #28            ; 2 uses
  store i64 %i.bq, ptr %i.bn, align 8, !tbaa !41
  call void @rb_mutex_allow_trap(i64 noundef %i.bq, i32 noundef 1) #28
  %.pre.i = load ptr, ptr %i.bc, align 8, !tbaa !64
  br label %io_allocate_write_buffer.exit.i

io_allocate_write_buffer.exit.i:                  ; preds = %bb.p, %bb.o
  %i.br = phi ptr [ %i.bm, %bb.o ], [ %.pre.i, %bb.p ] ; 2 uses
  %.not.i43 = icmp eq ptr %i.br, null
  br i1 %.not.i43, label %bb.v, label %bb.q

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.04760.i = phi i64 [ %i.bv, %.lr.ph.i ], [ %.04760.i.ph, %.lr.ph.i.preheader ]
  %i.bs = getelementptr [16 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !281
  %i.bv = add i64 %i.bu, %.04760.i                ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !348

bb.q:                                             ; preds = %io_allocate_write_buffer.exit.i
  %i.bw = getelementptr i8, ptr %2, i64 60        ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !40 ; 4 uses
  %.not55.i = icmp eq i32 %i.bx, 0
  br i1 %.not55.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr i8, ptr %2, i64 56
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !65 ; 2 uses
  %i.ca = add i32 %i.bz, %i.bx
  %i.cb = sext i32 %i.ca to i64                   ; 3 uses
  %i.cc = add i64 %.047.lcssa.i, %i.cb
  %i.cd = getelementptr i8, ptr %2, i64 64
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !66
  %i.cf = sext i32 %i.ce to i64
  %.not57.i = icmp ugt i64 %i.cc, %i.cf
  br i1 %.not57.i, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.r
  br i1 %i.bb, label %.lr.ph64.preheader.i, label %._crit_edge65.i

.lr.ph64.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count70.i = zext i32 %i.d to i64
  %i.cg = add nsw i64 %wide.trip.count70.i, -1    ; 3 uses
  %xtraiter = and i64 %i.cg, 1
  %i.ch = icmp eq i32 %i.d, 2
  br i1 %i.ch, label %.lr.ph64.i.epil.preheader, label %.lr.ph64.preheader.i.new

.lr.ph64.preheader.i.new:                         ; preds = %.lr.ph64.preheader.i
  %unroll_iter = and i64 %i.cg, -2
  br label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %ruby_nonempty_memcpy.exit.i.1, %.lr.ph64.preheader.i.new
  %indvars.iv67.i = phi i64 [ 1, %.lr.ph64.preheader.i.new ], [ %indvars.iv.next68.i.1, %ruby_nonempty_memcpy.exit.i.1 ] ; 3 uses
  %.04562.i = phi i64 [ %i.cb, %.lr.ph64.preheader.i.new ], [ %i.cw, %ruby_nonempty_memcpy.exit.i.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph64.preheader.i.new ], [ %niter.next.1, %ruby_nonempty_memcpy.exit.i.1 ]
  %i.ci = getelementptr [16 x i8], ptr %i.m, i64 %indvars.iv67.i ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !281 ; 3 uses
  %.not.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i, label %ruby_nonempty_memcpy.exit.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph64.i
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !279
  %i.cm = load ptr, ptr %i.bc, align 8, !tbaa !64
  %i.cn = getelementptr i8, ptr %i.cm, i64 %.04562.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cn, ptr noundef nonnull readonly align 1 %i.cl, i64 noundef range(i64 1, 0) %i.ck, i1 noundef false) #28
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.s, %.lr.ph64.i
  %i.co = add i64 %i.ck, %.04562.i                ; 2 uses
  %i.cp = getelementptr [16 x i8], ptr %i.m, i64 %indvars.iv67.i ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !281 ; 3 uses
  %.not.i.i.1 = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i.1, label %ruby_nonempty_memcpy.exit.i.1, label %bb.t

bb.t:                                             ; preds = %ruby_nonempty_memcpy.exit.i
  %i.cs = getelementptr i8, ptr %i.cp, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !279
  %i.cu = load ptr, ptr %i.bc, align 8, !tbaa !64
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cv, ptr noundef nonnull readonly align 1 %i.ct, i64 noundef range(i64 1, 0) %i.cr, i1 noundef false) #28
  br label %ruby_nonempty_memcpy.exit.i.1

ruby_nonempty_memcpy.exit.i.1:                    ; preds = %bb.t, %ruby_nonempty_memcpy.exit.i
  %i.cw = add i64 %i.cr, %i.co                    ; 2 uses
  %indvars.iv.next68.i.1 = add nuw nsw i64 %indvars.iv67.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge65.loopexit.i.unr-lcssa, label %.lr.ph64.i, !llvm.loop !349

.thread.i:                                        ; preds = %bb.r
  %i.cx = sext i32 %i.bz to i64
  %i.cy = getelementptr i8, ptr %i.br, i64 %i.cx
  store ptr %i.cy, ptr %i.m, align 8, !tbaa !279
  %i.cz = sext i32 %i.bx to i64
  %i.da = getelementptr i8, ptr %i.m, i64 8
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !281
  br label %bb.w

._crit_edge65.loopexit.i.unr-lcssa:               ; preds = %ruby_nonempty_memcpy.exit.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge65.loopexit.i, label %.lr.ph64.i.epil.preheader

.lr.ph64.i.epil.preheader:                        ; preds = %._crit_edge65.loopexit.i.unr-lcssa, %.lr.ph64.preheader.i
  %indvars.iv67.i.epil.init = phi i64 [ 1, %.lr.ph64.preheader.i ], [ %indvars.iv.next68.i.1, %._crit_edge65.loopexit.i.unr-lcssa ]
  %.04562.i.epil.init = phi i64 [ %i.cb, %.lr.ph64.preheader.i ], [ %i.cw, %._crit_edge65.loopexit.i.unr-lcssa ]
  %lcmp.mod68 = trunc i64 %i.cg to i1
end_hunk_0
