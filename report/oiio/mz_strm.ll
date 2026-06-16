inline.NumInlined: 40
inline.NumDeleted: 2
begin_hunk_0_@mz_stream_copy_to_end:bb.a
  br i1 %.not10.i.i, label %._crit_edge.i, label %mz_stream_is_open.exit.i

mz_stream_is_open.exit.i:                         ; preds = %bb.i
  %i.ab = call i32 %i.aa(ptr noundef nonnull %1) #12, !inline_history !35
  %.not13.i = icmp eq i32 %i.ab, 0
  br i1 %.not13.i, label %mz_stream_read.exit, label %._crit_edge.i

mz_stream_read.exit:                              ; preds = %mz_stream_is_open.exit.i
  %i.ac = load ptr, ptr %1, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !15
  %i.af = call i32 %i.ae(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 16384) #12, !inline_history !36 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !39

._crit_edge.i:                                    ; preds = %bb.i, %mz_stream_is_open.exit.i, %bb.g, %bb.h, %mz_stream_read.exit, %bb.d, %mz_stream_is_open.exit.i11, %bb.b, %bb.c, %bb.a, %mz_stream_read.exit14
  %.0.lcssa.i = phi i32 [ %i.k, %mz_stream_read.exit14 ], [ -102, %bb.c ], [ -102, %bb.a ], [ -102, %bb.d ], [ -102, %mz_stream_is_open.exit.i11 ], [ -102, %bb.b ], [ -102, %bb.h ], [ -102, %bb.g ], [ -102, %mz_stream_is_open.exit.i ], [ -102, %bb.i ], [ %i.af, %mz_stream_read.exit ]
  %.not17.i = icmp ne i32 %.0.lcssa.i, 0
  %..i = sext i1 %.not17.i to i32
  br label %mz_stream_copy_stream_to_end.exit

mz_stream_copy_stream_to_end.exit:                ; preds = %mz_stream_write.exit, %bb.f, %bb.e, %.lr.ph.i, %mz_stream_is_open.exit.i4, %.lr.ph.i.preheader, %._crit_edge.i
  %.014.i = phi i32 [ %..i, %._crit_edge.i ], [ -1, %.lr.ph.i.preheader ], [ -1, %mz_stream_is_open.exit.i4 ], [ -1, %.lr.ph.i ], [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %mz_stream_write.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.014.i
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @mz_stream_copy_stream_to_end(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16384 x i8], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %.not = icmp eq ptr %1, null
  %spec.store.select = select i1 %.not, ptr @mz_stream_write, ptr %1
  %.not15 = icmp eq ptr %3, null
  %spec.store.select1 = select i1 %.not15, ptr @mz_stream_read, ptr %3 ; 2 uses
  %i.b = call i32 %spec.store.select1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 16384) #12 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.019 = phi i32 [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = call i32 %spec.store.select(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %.019) #12
  %.not16 = icmp eq i32 %i.d, %.019
  br i1 %.not16, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.e = call i32 %spec.store.select1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 16384) #12 ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.e, %bb.b ]
  %.not17 = icmp ne i32 %.0.lcssa, 0
  %. = sext i1 %.not17 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge
  %.014 = phi i32 [ %., %._crit_edge ], [ -1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define i64 @mz_stream_tell(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %mz_stream_is_open.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %.not9 = icmp eq ptr %i.a, null
  br i1 %.not9, label %mz_stream_is_open.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %.not10 = icmp eq ptr %i.c, null
  br i1 %.not10, label %mz_stream_is_open.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %.not10.i = icmp eq ptr %i.e, null
  br i1 %.not10.i, label %mz_stream_is_open.exit.thread, label %mz_stream_is_open.exit

mz_stream_is_open.exit:                           ; preds = %bb.d
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0) #12, !inline_history !16
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %bb.e, label %mz_stream_is_open.exit.thread

bb.e:                                             ; preds = %mz_stream_is_open.exit
  %i.g = load ptr, ptr %0, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = tail call i64 %i.i(ptr noundef nonnull %0) #12
  br label %mz_stream_is_open.exit.thread

mz_stream_is_open.exit.thread:                    ; preds = %bb.d, %mz_stream_is_open.exit, %bb.a, %bb.b, %bb.c, %bb.e
  %.0 = phi i64 [ -102, %bb.a ], [ %i.j, %bb.e ], [ -102, %bb.c ], [ -102, %bb.b ], [ -1, %mz_stream_is_open.exit ], [ -1, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mz_stream_seek(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %mz_stream_is_open.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %.not14 = icmp eq ptr %i.a, null
  br i1 %.not14, label %mz_stream_is_open.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %mz_stream_is_open.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %.not10.i = icmp eq ptr %i.e, null
  br i1 %.not10.i, label %mz_stream_is_open.exit.thread, label %mz_stream_is_open.exit

mz_stream_is_open.exit:                           ; preds = %bb.d
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0) #12, !inline_history !16
  %.not16 = icmp eq i32 %i.f, 0
  br i1 %.not16, label %bb.e, label %mz_stream_is_open.exit.thread

bb.e:                                             ; preds = %mz_stream_is_open.exit
  %i.g = icmp eq i32 %2, 0
  %i.h = icmp slt i64 %1, 0
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %mz_stream_is_open.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %0, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.l = tail call i32 %i.k(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2) #12
  br label %mz_stream_is_open.exit.thread

mz_stream_is_open.exit.thread:                    ; preds = %bb.d, %bb.e, %mz_stream_is_open.exit, %bb.a, %bb.b, %bb.c, %bb.f
  %.0 = phi i32 [ -102, %bb.a ], [ -1, %mz_stream_is_open.exit ], [ %i.l, %bb.f ], [ -102, %bb.c ], [ -102, %bb.b ], [ -113, %bb.e ], [ -1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -107, 1) i32 @mz_stream_find(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond.not111 = or i1 %i.b, %i.c
  %i.d = icmp eq ptr %4, null
  %or.cond3.not108 = or i1 %or.cond.not111, %i.d
  %or.cond5 = icmp ugt i32 %2, 1023
  %or.cond80 = or i1 %or.cond5, %or.cond3.not108
  br i1 %or.cond80, label %mz_stream_read.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %4, align 8, !tbaa !24
  %i.e = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %.not9.i = icmp eq ptr %i.e, null
  br i1 %.not9.i, label %mz_stream_tell.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %.not10.i = icmp eq ptr %i.g, null
  br i1 %.not10.i, label %mz_stream_tell.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i, label %mz_stream_tell.exit, label %mz_stream_is_open.exit.i

mz_stream_is_open.exit.i:                         ; preds = %bb.d
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0) #12, !inline_history !42
  %.not11.i = icmp eq i32 %i.j, 0
  br i1 %.not11.i, label %bb.e, label %mz_stream_tell.exit

bb.e:                                             ; preds = %mz_stream_is_open.exit.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.n = tail call i64 %i.m(ptr noundef nonnull %0) #12, !inline_history !43
  br label %mz_stream_tell.exit

mz_stream_tell.exit:                              ; preds = %bb.b, %bb.c, %bb.d, %mz_stream_is_open.exit.i, %bb.e
  %.0.i = phi i64 [ -1, %bb.d ], [ %i.n, %bb.e ], [ -102, %bb.c ], [ -102, %bb.b ], [ -1, %mz_stream_is_open.exit.i ]
  %i.o = icmp sgt i64 %3, 0
  br i1 %i.o, label %.lr.ph, label %mz_stream_read.exit.thread

.lr.ph:                                           ; preds = %mz_stream_tell.exit
  %i.p = zext nneg i32 %2 to i64                  ; 2 uses
  %invariant.op = sub i32 1, %2
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.t
  %.not76119 = phi i1 [ false, %.lr.ph ], [ true, %bb.t ] ; 2 uses
  %.061118 = phi i64 [ 0, %.lr.ph ], [ %i.bo, %bb.t ] ; 3 uses
  %.063117 = phi i32 [ 1024, %.lr.ph ], [ %.2, %bb.t ] ; 2 uses
  %.065116 = phi i32 [ 0, %.lr.ph ], [ %.166, %bb.t ] ; 3 uses
  %i.q = zext nneg i32 %.065116 to i64            ; 2 uses
  %i.r = add i64 %.061118, %i.q
  %i.s = sub i64 %3, %i.r                         ; 2 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = icmp slt i64 %i.s, 1024
  %i.v = call i32 @llvm.smin.i32(i32 %.063117, i32 %i.t)
  %.164 = select i1 %i.u, i32 %i.v, i32 %.063117  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.q
  %i.x = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %.not11.i82 = icmp eq ptr %i.x, null
  br i1 %.not11.i82, label %mz_stream_read.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15
  %.not12.i = icmp eq ptr %i.z, null
  br i1 %.not12.i, label %mz_stream_read.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14 ; 2 uses
  %.not10.i.i83 = icmp eq ptr %i.ab, null
  br i1 %.not10.i.i83, label %mz_stream_read.exit.thread, label %mz_stream_is_open.exit.i84

mz_stream_is_open.exit.i84:                       ; preds = %bb.h
  %i.ac = call i32 %i.ab(ptr noundef nonnull %0) #12, !inline_history !44
  %.not13.i = icmp eq i32 %i.ac, 0
  br i1 %.not13.i, label %mz_stream_read.exit, label %mz_stream_read.exit.thread

mz_stream_read.exit:                              ; preds = %mz_stream_is_open.exit.i84
  %i.ad = load ptr, ptr %0, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !15
  %i.ag = call i32 %i.af(ptr noundef nonnull %0, ptr noundef nonnull %i.w, i32 noundef %.164) #12, !inline_history !45 ; 3 uses
  %i.ah = icmp slt i32 %i.ag, 1
  br i1 %i.ah, label %mz_stream_read.exit.thread, label %bb.i

bb.i:                                             ; preds = %mz_stream_read.exit
  %i.ai = add nuw nsw i32 %i.ag, %.065116         ; 4 uses
  %i.aj = icmp slt i32 %i.ai, %2
  br i1 %i.aj, label %mz_stream_read.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.i
  %.reass.reass = add i32 %i.ai, %invariant.op
  %wide.trip.count = zext i32 %.reass.reass to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.t, label %bb.k, !llvm.loop !46

bb.k:                                             ; preds = %.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.j ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %bcmp = call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %1, i64 %i.p)
  %.not77 = icmp eq i32 %bcmp, 0
  br i1 %.not77, label %bb.l, label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  %.not9.i87 = icmp eq ptr %i.al, null
  br i1 %.not9.i87, label %mz_stream_read.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !40
  %.not10.i88 = icmp eq ptr %i.an, null
  br i1 %.not10.i88, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !14 ; 2 uses
  %.not10.i.i89 = icmp eq ptr %i.ap, null
  br i1 %.not10.i.i89, label %.thread, label %mz_stream_is_open.exit.i90

mz_stream_is_open.exit.i90:                       ; preds = %bb.n
  %i.aq = call i32 %i.ap(ptr noundef nonnull %0) #12, !inline_history !42
  %.not11.i91 = icmp eq i32 %i.aq, 0
  %.pr.pre128 = load ptr, ptr %0, align 8, !tbaa !7 ; 2 uses
  br i1 %.not11.i91, label %bb.o, label %bb.p

bb.o:                                             ; preds = %mz_stream_is_open.exit.i90
  %i.ar = getelementptr inbounds nuw i8, ptr %.pr.pre128, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !40
  %i.at = call i64 %i.as(ptr noundef nonnull %0) #12, !inline_history !43
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !7
  br label %bb.p

.thread:                                          ; preds = %bb.m, %bb.n
  %.0.i92.ph.ph.ph = phi i64 [ -1, %bb.n ], [ -102, %bb.m ]
  %i.au = zext nneg i32 %i.ai to i64
  %.neg100147 = sub nsw i64 %indvars.iv, %i.au
  %i.av = add i64 %.0.i92.ph.ph.ph, %.neg100147
  br label %bb.q

bb.p:                                             ; preds = %mz_stream_is_open.exit.i90, %bb.o
  %.pr = phi ptr [ %.pr.pre, %bb.o ], [ %.pr.pre128, %mz_stream_is_open.exit.i90 ] ; 2 uses
  %.0.i92.ph.ph = phi i64 [ %i.at, %bb.o ], [ -1, %mz_stream_is_open.exit.i90 ]
  %i.aw = zext nneg i32 %i.ai to i64
  %.neg100 = sub nsw i64 %indvars.iv, %i.aw
  %i.ax = add i64 %.0.i92.ph.ph, %.neg100
  %.not14.i = icmp eq ptr %.pr, null
  br i1 %.not14.i, label %mz_stream_read.exit.thread, label %bb.q

bb.q:                                             ; preds = %.thread, %bb.p
  %i.ay = phi i64 [ %i.av, %.thread ], [ %i.ax, %bb.p ] ; 2 uses
  %.pr149 = phi ptr [ %i.al, %.thread ], [ %.pr, %bb.p ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.pr149, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !41
  %.not15.i = icmp eq ptr %i.ba, null
  br i1 %.not15.i, label %mz_stream_read.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %.pr149, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !14 ; 2 uses
  %.not10.i.i95 = icmp eq ptr %i.bc, null
  br i1 %.not10.i.i95, label %mz_stream_read.exit.thread, label %mz_stream_is_open.exit.i96

mz_stream_is_open.exit.i96:                       ; preds = %bb.r
  %i.bd = call i32 %i.bc(ptr noundef nonnull %0) #12, !inline_history !47
  %.not16.i = icmp ne i32 %i.bd, 0
  %i.be = icmp slt i64 %i.ay, 0
  %or.cond106 = select i1 %.not16.i, i1 true, i1 %i.be
  br i1 %or.cond106, label %mz_stream_read.exit.thread, label %mz_stream_seek.exit

mz_stream_seek.exit:                              ; preds = %mz_stream_is_open.exit.i96
  %i.bf = load ptr, ptr %0, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !41
  %i.bi = call i32 %i.bh(ptr noundef nonnull %0, i64 noundef %i.ay, i32 noundef 0) #12, !inline_history !48
  %.not78 = icmp eq i32 %i.bi, 0
  br i1 %.not78, label %bb.s, label %mz_stream_read.exit.thread

bb.s:                                             ; preds = %mz_stream_seek.exit
  %i.bj = add nsw i64 %.061118, %.0.i
  %i.bk = add nsw i64 %i.bj, %indvars.iv
  store i64 %i.bk, ptr %4, align 8, !tbaa !24
  br label %mz_stream_read.exit.thread

bb.t:                                             ; preds = %bb.j
  %.166 = select i1 %.not76119, i32 %.065116, i32 %2
  %i.bl = select i1 %.not76119, i32 0, i32 %2     ; 2 uses
  %.2 = sub nsw i32 %.164, %i.bl
  %.062 = sub nsw i32 %i.ag, %i.bl
  %i.bm = sext i32 %.062 to i64                   ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.a, i64 %i.bm
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.bn, i64 %i.p, i1 false)
  %i.bo = add nsw i64 %.061118, %i.bm             ; 2 uses
  %i.bp = icmp slt i64 %i.bo, %3
  br i1 %i.bp, label %bb.f, label %mz_stream_read.exit.thread, !llvm.loop !49

mz_stream_read.exit.thread:                       ; preds = %mz_stream_read.exit, %bb.i, %bb.t, %bb.g, %bb.f, %mz_stream_is_open.exit.i84, %bb.h, %mz_stream_tell.exit, %bb.l, %bb.r, %bb.p, %bb.q, %mz_stream_is_open.exit.i96, %mz_stream_seek.exit, %bb.a, %bb.s
  %.067 = phi i32 [ -102, %bb.a ], [ -107, %mz_stream_seek.exit ], [ -107, %mz_stream_is_open.exit.i96 ], [ 0, %bb.s ], [ -107, %bb.q ], [ -107, %bb.p ], [ -107, %bb.l ], [ -107, %bb.r ], [ -107, %mz_stream_tell.exit ], [ -107, %bb.h ], [ -107, %mz_stream_is_open.exit.i84 ], [ -107, %bb.f ], [ -107, %bb.g ], [ -107, %bb.t ], [ -107, %bb.i ], [ -107, %mz_stream_read.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.067
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define range(i32 -107, 1) i32 @mz_stream_find_reverse(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond.not128 = or i1 %i.b, %i.c
  %i.d = icmp eq ptr %4, null
  %or.cond3.not125 = or i1 %or.cond.not128, %i.d
  %or.cond5 = icmp ugt i32 %2, 1023
  %or.cond87 = or i1 %or.cond5, %or.cond3.not125
  br i1 %or.cond87, label %mz_stream_seek.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %4, align 8, !tbaa !24
  %i.e = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %.not9.i = icmp eq ptr %i.e, null
  br i1 %.not9.i, label %mz_stream_tell.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %.not10.i = icmp eq ptr %i.g, null
  br i1 %.not10.i, label %mz_stream_tell.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i, label %mz_stream_tell.exit, label %mz_stream_is_open.exit.i

mz_stream_is_open.exit.i:                         ; preds = %bb.d
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0) #12, !inline_history !42
  %.not11.i = icmp eq i32 %i.j, 0
  br i1 %.not11.i, label %bb.e, label %mz_stream_tell.exit

bb.e:                                             ; preds = %mz_stream_is_open.exit.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.n = tail call i64 %i.m(ptr noundef nonnull %0) #12, !inline_history !43
  br label %mz_stream_tell.exit

mz_stream_tell.exit:                              ; preds = %bb.b, %bb.c, %bb.d, %mz_stream_is_open.exit.i, %bb.e
  %.0.i = phi i64 [ -1, %bb.d ], [ %i.n, %bb.e ], [ -102, %bb.c ], [ -102, %bb.b ], [ -1, %mz_stream_is_open.exit.i ] ; 2 uses
  %i.o = icmp sgt i64 %3, 0
  br i1 %i.o, label %.lr.ph144, label %mz_stream_seek.exit.thread

.lr.ph144:                                        ; preds = %mz_stream_tell.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %i.q = zext nneg i32 %2 to i64                  ; 2 uses
  %i.r = zext nneg i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph144, %bb.x
  %.068.neg143 = phi i64 [ 0, %.lr.ph144 ], [ %.068.neg, %bb.x ] ; 2 uses
  %.not83142 = phi i1 [ false, %.lr.ph144 ], [ true, %bb.x ] ; 2 uses
  %.068141 = phi i64 [ 0, %.lr.ph144 ], [ %i.cn, %bb.x ] ; 2 uses
  %.069140 = phi i32 [ 1024, %.lr.ph144 ], [ %.2, %bb.x ] ; 2 uses
  %.071139 = phi i32 [ 0, %.lr.ph144 ], [ %.172, %bb.x ] ; 5 uses
  %i.s = sub nsw i64 %3, %.068141                 ; 2 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = icmp slt i64 %i.s, 1024
  %i.v = call i32 @llvm.smin.i32(i32 %.069140, i32 %i.t)
  %.170 = select i1 %i.u, i32 %i.v, i32 %.069140  ; 3 uses
  %i.w = sext i32 %.170 to i64
  %.neg129 = add i64 %.068.neg143, %.0.i
  %i.x = sub i64 %.neg129, %i.w                   ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %.not14.i = icmp eq ptr %i.y, null
  br i1 %.not14.i, label %mz_stream_seek.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !41
  %.not15.i = icmp eq ptr %i.aa, null
  br i1 %.not15.i, label %mz_stream_seek.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !14 ; 2 uses
  %.not10.i.i89 = icmp eq ptr %i.ac, null
  br i1 %.not10.i.i89, label %mz_stream_seek.exit.thread, label %mz_stream_is_open.exit.i90

mz_stream_is_open.exit.i90:                       ; preds = %bb.h
  %i.ad = call i32 %i.ac(ptr noundef nonnull %0) #12, !inline_history !47
  %.not16.i = icmp ne i32 %i.ad, 0
  %i.ae = icmp slt i64 %i.x, 0
  %or.cond122 = select i1 %.not16.i, i1 true, i1 %i.ae
  br i1 %or.cond122, label %mz_stream_seek.exit.thread, label %mz_stream_seek.exit

mz_stream_seek.exit:                              ; preds = %mz_stream_is_open.exit.i90
  %i.af = load ptr, ptr %0, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !41
  %i.ai = call i32 %i.ah(ptr noundef nonnull %0, i64 noundef %i.x, i32 noundef 0) #12, !inline_history !48
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.i, label %mz_stream_seek.exit.thread

bb.i:                                             ; preds = %mz_stream_seek.exit
  %i.aj = load ptr, ptr %0, align 8, !tbaa !7     ; 3 uses
  %.not11.i93 = icmp eq ptr %i.aj, null
  br i1 %.not11.i93, label %mz_stream_seek.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !15
  %.not12.i = icmp eq ptr %i.al, null
  br i1 %.not12.i, label %mz_stream_seek.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %.not10.i.i94 = icmp eq ptr %i.an, null
  br i1 %.not10.i.i94, label %mz_stream_seek.exit.thread, label %mz_stream_is_open.exit.i95

mz_stream_is_open.exit.i95:                       ; preds = %bb.k
  %i.ao = call i32 %i.an(ptr noundef nonnull %0) #12, !inline_history !44
  %.not13.i = icmp eq i32 %i.ao, 0
  br i1 %.not13.i, label %mz_stream_read.exit, label %mz_stream_seek.exit.thread

mz_stream_read.exit:                              ; preds = %mz_stream_is_open.exit.i95
  %i.ap = load ptr, ptr %0, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !15
  %i.as = call i32 %i.ar(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %.170) #12, !inline_history !45 ; 6 uses
  %i.at = icmp slt i32 %i.as, 1
  br i1 %i.at, label %mz_stream_seek.exit.thread, label %bb.l

bb.l:                                             ; preds = %mz_stream_read.exit
  %i.au = add nuw nsw i32 %i.as, %.071139         ; 3 uses
  %i.av = icmp slt i32 %i.au, %2
  br i1 %i.av, label %mz_stream_seek.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = icmp slt i32 %i.au, 1024
  br i1 %i.aw, label %bb.n, label %.lr.ph.preheader

bb.n:                                             ; preds = %bb.m
  %i.ax = zext nneg i32 %i.au to i64
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.p, i64 %i.ay
  %i.ba = zext nneg i32 %i.as to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull align 16 %i.a, i64 %i.ba, i1 false)
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m, %bb.n
  %5 = add nuw i32 %i.as, 1
  %6 = add nuw i32 %5, %.071139
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %indvars.iv = phi i64 [ %i.r, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.w ] ; 4 uses
  %i.bb = sub nsw i64 1024, %indvars.iv
  %i.bc = getelementptr inbounds i8, ptr %i.a, i64 %i.bb
  %bcmp = call i32 @bcmp(ptr nonnull %i.bc, ptr nonnull %1, i64 %i.q)
  %.not84 = icmp eq i32 %bcmp, 0
  br i1 %.not84, label %bb.o, label %bb.w

bb.o:                                             ; preds = %.lr.ph
  %i.bd = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  %.not9.i98 = icmp eq ptr %i.bd, null
  br i1 %.not9.i98, label %mz_stream_seek.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !40
  %.not10.i99 = icmp eq ptr %i.bf, null
  br i1 %.not10.i99, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !14 ; 2 uses
  %.not10.i.i100 = icmp eq ptr %i.bh, null
  br i1 %.not10.i.i100, label %.thread, label %mz_stream_is_open.exit.i101

mz_stream_is_open.exit.i101:                      ; preds = %bb.q
  %i.bi = call i32 %i.bh(ptr noundef nonnull %0) #12, !inline_history !42
  %.not11.i102 = icmp eq i32 %i.bi, 0
  %.pr.pre157 = load ptr, ptr %0, align 8, !tbaa !7 ; 2 uses
  br i1 %.not11.i102, label %bb.r, label %bb.s

bb.r:                                             ; preds = %mz_stream_is_open.exit.i101
  %i.bj = getelementptr inbounds nuw i8, ptr %.pr.pre157, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !40
  %i.bl = call i64 %i.bk(ptr noundef nonnull %0) #12, !inline_history !43
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !7
  br label %bb.s

.thread:                                          ; preds = %bb.p, %bb.q
  %.0.i103.ph.ph.ph = phi i64 [ -1, %bb.q ], [ -102, %bb.p ]
  %i.bm = zext nneg i32 %.071139 to i64           ; 2 uses
  %i.bn = and i64 %indvars.iv, 4294967295         ; 2 uses
  %i.bo = sub nsw i64 %i.bm, %i.bn
  %i.bp = add nsw i64 %i.bo, %.0.i103.ph.ph.ph
  br label %bb.t

bb.s:                                             ; preds = %mz_stream_is_open.exit.i101, %bb.r
  %.pr = phi ptr [ %.pr.pre, %bb.r ], [ %.pr.pre157, %mz_stream_is_open.exit.i101 ] ; 2 uses
  %.0.i103.ph.ph = phi i64 [ %i.bl, %bb.r ], [ -1, %mz_stream_is_open.exit.i101 ]
  %i.bq = zext nneg i32 %.071139 to i64           ; 2 uses
  %i.br = and i64 %indvars.iv, 4294967295         ; 2 uses
  %i.bs = sub nsw i64 %i.bq, %i.br
  %i.bt = add i64 %i.bs, %.0.i103.ph.ph
  %.not14.i106 = icmp eq ptr %.pr, null
  br i1 %.not14.i106, label %mz_stream_seek.exit.thread, label %bb.t

bb.t:                                             ; preds = %.thread, %bb.s
  %i.bu = phi i64 [ %i.bp, %.thread ], [ %i.bt, %bb.s ] ; 2 uses
  %i.bv = phi i64 [ %i.bn, %.thread ], [ %i.br, %bb.s ]
  %i.bw = phi i64 [ %i.bm, %.thread ], [ %i.bq, %bb.s ]
  %.pr181 = phi ptr [ %i.bd, %.thread ], [ %.pr, %bb.s ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.pr181, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !41
  %.not15.i107 = icmp eq ptr %i.by, null
  br i1 %.not15.i107, label %mz_stream_seek.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %.pr181, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !14 ; 2 uses
  %.not10.i.i108 = icmp eq ptr %i.ca, null
  br i1 %.not10.i.i108, label %mz_stream_seek.exit.thread, label %mz_stream_is_open.exit.i109

mz_stream_is_open.exit.i109:                      ; preds = %bb.u
  %i.cb = call i32 %i.ca(ptr noundef nonnull %0) #12, !inline_history !47
  %.not16.i110 = icmp ne i32 %i.cb, 0
  %i.cc = icmp slt i64 %i.bu, 0
  %or.cond123 = select i1 %.not16.i110, i1 true, i1 %i.cc
  br i1 %or.cond123, label %mz_stream_seek.exit.thread, label %mz_stream_seek.exit112

mz_stream_seek.exit112:                           ; preds = %mz_stream_is_open.exit.i109
  %i.cd = load ptr, ptr %0, align 8, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !41
  %i.cg = call i32 %i.cf(ptr noundef nonnull %0, i64 noundef %i.bu, i32 noundef 0) #12, !inline_history !48
  %.not85 = icmp eq i32 %i.cg, 0
  br i1 %.not85, label %bb.v, label %mz_stream_seek.exit.thread

bb.v:                                             ; preds = %mz_stream_seek.exit112
  %.neg132 = add i64 %.0.i, %i.bw
  %.neg133 = add i64 %.neg132, %.068.neg143
  %i.ch = sub i64 %.neg133, %i.bv
  store i64 %i.ch, ptr %4, align 8, !tbaa !24
  br label %mz_stream_seek.exit.thread

bb.w:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %6, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.w
  %i.ci = select i1 %.not83142, i32 0, i32 %2     ; 3 uses
  %i.cj = icmp eq i32 %i.as, %i.ci
  br i1 %i.cj, label %mz_stream_seek.exit.thread, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %.067 = sub nsw i32 %i.as, %i.ci
  %.2 = sub nsw i32 %.170, %i.ci                  ; 2 uses
  %.172 = select i1 %.not83142, i32 %.071139, i32 %2
  %i.ck = sext i32 %.2 to i64
  %i.cl = getelementptr inbounds i8, ptr %i.a, i64 %i.ck
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr nonnull align 16 %i.a, i64 %i.q, i1 false)
  %i.cm = sext i32 %.067 to i64
  %i.cn = add nsw i64 %.068141, %i.cm             ; 3 uses
  %.068.neg = sub i64 0, %i.cn
  %i.co = icmp slt i64 %i.cn, %3
  br i1 %i.co, label %bb.f, label %mz_stream_seek.exit.thread, !llvm.loop !51

mz_stream_seek.exit.thread:                       ; preds = %._crit_edge, %mz_stream_read.exit, %bb.l, %mz_stream_seek.exit, %bb.x, %mz_stream_is_open.exit.i90, %bb.g, %bb.f, %bb.h, %bb.k, %bb.j, %bb.i, %mz_stream_is_open.exit.i95, %mz_stream_tell.exit, %bb.o, %bb.u, %bb.s, %bb.t, %mz_stream_is_open.exit.i109, %mz_stream_seek.exit112, %bb.a, %bb.v
  %.073 = phi i32 [ -102, %bb.a ], [ -107, %mz_stream_seek.exit112 ], [ -107, %bb.u ], [ 0, %bb.v ], [ -107, %bb.o ], [ -107, %mz_stream_is_open.exit.i109 ], [ -107, %bb.t ], [ -107, %bb.s ], [ -107, %mz_stream_tell.exit ], [ -107, %mz_stream_is_open.exit.i95 ], [ -107, %bb.i ], [ -107, %bb.j ], [ -107, %bb.k ], [ -107, %bb.h ], [ -107, %bb.f ], [ -107, %bb.g ], [ -107, %mz_stream_is_open.exit.i90 ], [ -107, %bb.x ], [ -107, %mz_stream_seek.exit ], [ -107, %bb.l ], [ -107, %mz_stream_read.exit ], [ -107, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.073
}

; Function Attrs: nounwind uwtable
define i32 @mz_stream_close(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %mz_stream_is_open.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %.not9 = icmp eq ptr %i.a, null
  br i1 %.not9, label %mz_stream_is_open.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %.not10 = icmp eq ptr %i.c, null
  br i1 %.not10, label %mz_stream_is_open.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %.not10.i = icmp eq ptr %i.e, null
  br i1 %.not10.i, label %mz_stream_is_open.exit.thread, label %mz_stream_is_open.exit

mz_stream_is_open.exit:                           ; preds = %bb.d
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0) #12, !inline_history !16
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %bb.e, label %mz_stream_is_open.exit.thread

bb.e:                                             ; preds = %mz_stream_is_open.exit
  %i.g = load ptr, ptr %0, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0) #12
  br label %mz_stream_is_open.exit.thread

mz_stream_is_open.exit.thread:                    ; preds = %bb.d, %mz_stream_is_open.exit, %bb.a, %bb.b, %bb.c, %bb.e
  %.0 = phi i32 [ -102, %bb.a ], [ %i.j, %bb.e ], [ -102, %bb.c ], [ -102, %bb.b ], [ -1, %mz_stream_is_open.exit ], [ -1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mz_stream_error(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %.not9 = icmp eq ptr %i.a, null
  br i1 %.not9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %.not10 = icmp eq ptr %i.c, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 %i.c(ptr noundef nonnull %0) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %i.d, %bb.d ], [ -102, %bb.c ], [ -102, %bb.b ], [ -102, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @mz_stream_set_base(ptr nofree noundef writeonly captures(none) initializes((8, 16)) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !53
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @mz_stream_get_interface(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.a, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define i32 @mz_stream_get_prop_int64(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %.not11 = icmp eq ptr %i.a, null
  br i1 %.not11, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %.not12 = icmp eq ptr %i.c, null
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 %i.c(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %i.d, %bb.d ], [ -102, %bb.c ], [ -102, %bb.b ], [ -102, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mz_stream_set_prop_int64(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %.not11 = icmp eq ptr %i.a, null
  br i1 %.not11, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %.not12 = icmp eq ptr %i.c, null
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 %i.c(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %i.d, %bb.d ], [ -102, %bb.c ], [ -102, %bb.b ], [ -102, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @mz_stream_create(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr %i.b() #12
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @mz_stream_delete(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %.not11 = icmp eq ptr %i.a, null
  br i1 %.not11, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
end_hunk_0
