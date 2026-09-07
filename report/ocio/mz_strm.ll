Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/mz_strm?download=true
inline.NumInlined: 40
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@mz_stream_find:bb.a
  %.not10.i.i83 = icmp eq ptr %i.ab, null
  br i1 %.not10.i.i83, label %mz_stream_read.exit.thread, label %mz_stream_is_open.exit.i84

mz_stream_is_open.exit.i84:                       ; preds = %bb.h
  %i.ac = call i32 %i.ab(ptr noundef nonnull %0) #12, !inline_history !34
  %.not13.i = icmp eq i32 %i.ac, 0
  br i1 %.not13.i, label %mz_stream_read.exit, label %mz_stream_read.exit.thread

mz_stream_read.exit:                              ; preds = %mz_stream_is_open.exit.i84
  %i.ad = load ptr, ptr %0, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22
  %i.ag = call i32 %i.af(ptr noundef nonnull %0, ptr noundef nonnull %i.w, i32 noundef %.164) #12, !inline_history !35 ; 3 uses
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
  br i1 %exitcond.not, label %bb.t, label %bb.k, !llvm.loop !54

bb.k:                                             ; preds = %.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.j ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %bcmp = call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %1, i64 %i.p)
  %.not77 = icmp eq i32 %bcmp, 0
  br i1 %.not77, label %bb.l, label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %.not9.i87 = icmp eq ptr %i.al, null
  br i1 %.not9.i87, label %mz_stream_read.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %.not10.i88 = icmp eq ptr %i.an, null
  br i1 %.not10.i88, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  %.not10.i.i89 = icmp eq ptr %i.ap, null
  br i1 %.not10.i.i89, label %.thread, label %mz_stream_is_open.exit.i90

mz_stream_is_open.exit.i90:                       ; preds = %bb.n
  %i.aq = call i32 %i.ap(ptr noundef nonnull %0) #12, !inline_history !32
  %.not11.i91 = icmp eq i32 %i.aq, 0
  %.pr.pre128 = load ptr, ptr %0, align 8, !tbaa !19 ; 2 uses
  br i1 %.not11.i91, label %bb.o, label %bb.p

bb.o:                                             ; preds = %mz_stream_is_open.exit.i90
  %i.ar = getelementptr inbounds nuw i8, ptr %.pr.pre128, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.at = call i64 %i.as(ptr noundef nonnull %0) #12, !inline_history !33
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !19
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
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !31
  %.not15.i = icmp eq ptr %i.ba, null
  br i1 %.not15.i, label %mz_stream_read.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %.pr149, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !21 ; 2 uses
  %.not10.i.i95 = icmp eq ptr %i.bc, null
  br i1 %.not10.i.i95, label %mz_stream_read.exit.thread, label %mz_stream_is_open.exit.i96

mz_stream_is_open.exit.i96:                       ; preds = %bb.r
  %i.bd = call i32 %i.bc(ptr noundef nonnull %0) #12, !inline_history !36
  %.not16.i = icmp ne i32 %i.bd, 0
  %i.be = icmp slt i64 %i.ay, 0
  %or.cond106 = select i1 %.not16.i, i1 true, i1 %i.be
  br i1 %or.cond106, label %mz_stream_read.exit.thread, label %mz_stream_seek.exit

mz_stream_seek.exit:                              ; preds = %mz_stream_is_open.exit.i96
  %i.bf = load ptr, ptr %0, align 8, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !31
  %i.bi = call i32 %i.bh(ptr noundef nonnull %0, i64 noundef %i.ay, i32 noundef 0) #12, !inline_history !37
  %.not78 = icmp eq i32 %i.bi, 0
  br i1 %.not78, label %bb.s, label %mz_stream_read.exit.thread

bb.s:                                             ; preds = %mz_stream_seek.exit
  %i.bj = add nsw i64 %.061118, %.0.i
  %i.bk = add nsw i64 %i.bj, %indvars.iv
  store i64 %i.bk, ptr %4, align 8, !tbaa !27
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
  br i1 %i.bp, label %bb.f, label %mz_stream_read.exit.thread, !llvm.loop !55

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
  store i64 -1, ptr %4, align 8, !tbaa !27
  %i.e = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %.not9.i = icmp eq ptr %i.e, null
  br i1 %.not9.i, label %mz_stream_tell.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  %.not10.i = icmp eq ptr %i.g, null
  br i1 %.not10.i, label %mz_stream_tell.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %.not10.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i, label %mz_stream_tell.exit, label %mz_stream_is_open.exit.i

mz_stream_is_open.exit.i:                         ; preds = %bb.d
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0) #12, !inline_history !32
  %.not11.i = icmp eq i32 %i.j, 0
  br i1 %.not11.i, label %bb.e, label %mz_stream_tell.exit

bb.e:                                             ; preds = %mz_stream_is_open.exit.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30
  %i.n = tail call i64 %i.m(ptr noundef nonnull %0) #12, !inline_history !33
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
  %.068141 = phi i64 [ 0, %.lr.ph144 ], [ %i.co, %bb.x ] ; 2 uses
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
  %i.y = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %.not14.i = icmp eq ptr %i.y, null
  br i1 %.not14.i, label %mz_stream_seek.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31
  %.not15.i = icmp eq ptr %i.aa, null
  br i1 %.not15.i, label %mz_stream_seek.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21 ; 2 uses
  %.not10.i.i89 = icmp eq ptr %i.ac, null
  br i1 %.not10.i.i89, label %mz_stream_seek.exit.thread, label %mz_stream_is_open.exit.i90

mz_stream_is_open.exit.i90:                       ; preds = %bb.h
  %i.ad = call i32 %i.ac(ptr noundef nonnull %0) #12, !inline_history !36
  %.not16.i = icmp ne i32 %i.ad, 0
  %i.ae = icmp slt i64 %i.x, 0
  %or.cond122 = select i1 %.not16.i, i1 true, i1 %i.ae
  br i1 %or.cond122, label %mz_stream_seek.exit.thread, label %mz_stream_seek.exit

mz_stream_seek.exit:                              ; preds = %mz_stream_is_open.exit.i90
  %i.af = load ptr, ptr %0, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !31
  %i.ai = call i32 %i.ah(ptr noundef nonnull %0, i64 noundef %i.x, i32 noundef 0) #12, !inline_history !37
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.i, label %mz_stream_seek.exit.thread

bb.i:                                             ; preds = %mz_stream_seek.exit
  %i.aj = load ptr, ptr %0, align 8, !tbaa !19    ; 3 uses
  %.not11.i93 = icmp eq ptr %i.aj, null
  br i1 %.not11.i93, label %mz_stream_seek.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !22
  %.not12.i = icmp eq ptr %i.al, null
  br i1 %.not12.i, label %mz_stream_seek.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21 ; 2 uses
  %.not10.i.i94 = icmp eq ptr %i.an, null
  br i1 %.not10.i.i94, label %mz_stream_seek.exit.thread, label %mz_stream_is_open.exit.i95

mz_stream_is_open.exit.i95:                       ; preds = %bb.k
  %i.ao = call i32 %i.an(ptr noundef nonnull %0) #12, !inline_history !34
  %.not13.i = icmp eq i32 %i.ao, 0
  br i1 %.not13.i, label %mz_stream_read.exit, label %mz_stream_seek.exit.thread

mz_stream_read.exit:                              ; preds = %mz_stream_is_open.exit.i95
  %i.ap = load ptr, ptr %0, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !22
  %i.as = call i32 %i.ar(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %.170) #12, !inline_history !35 ; 6 uses
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
  %i.bb = add nuw i32 %5, %.071139
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %indvars.iv = phi i64 [ %i.r, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.w ] ; 4 uses
  %i.bc = sub nsw i64 1024, %indvars.iv
  %i.bd = getelementptr inbounds i8, ptr %i.a, i64 %i.bc
  %bcmp = call i32 @bcmp(ptr nonnull %i.bd, ptr nonnull %1, i64 %i.q)
  %.not84 = icmp eq i32 %bcmp, 0
  br i1 %.not84, label %bb.o, label %bb.w

bb.o:                                             ; preds = %.lr.ph
  %i.be = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %.not9.i98 = icmp eq ptr %i.be, null
  br i1 %.not9.i98, label %mz_stream_seek.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !30
  %.not10.i99 = icmp eq ptr %i.bg, null
  br i1 %.not10.i99, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !21 ; 2 uses
  %.not10.i.i100 = icmp eq ptr %i.bi, null
  br i1 %.not10.i.i100, label %.thread, label %mz_stream_is_open.exit.i101

mz_stream_is_open.exit.i101:                      ; preds = %bb.q
  %i.bj = call i32 %i.bi(ptr noundef nonnull %0) #12, !inline_history !32
  %.not11.i102 = icmp eq i32 %i.bj, 0
  %.pr.pre157 = load ptr, ptr %0, align 8, !tbaa !19 ; 2 uses
  br i1 %.not11.i102, label %bb.r, label %bb.s

bb.r:                                             ; preds = %mz_stream_is_open.exit.i101
  %i.bk = getelementptr inbounds nuw i8, ptr %.pr.pre157, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !30
  %i.bm = call i64 %i.bl(ptr noundef nonnull %0) #12, !inline_history !33
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !19
  br label %bb.s

.thread:                                          ; preds = %bb.p, %bb.q
  %.0.i103.ph.ph.ph = phi i64 [ -1, %bb.q ], [ -102, %bb.p ]
  %i.bn = zext nneg i32 %.071139 to i64           ; 2 uses
  %i.bo = and i64 %indvars.iv, 4294967295         ; 2 uses
  %i.bp = sub nsw i64 %i.bn, %i.bo
  %i.bq = add nsw i64 %i.bp, %.0.i103.ph.ph.ph
  br label %bb.t

bb.s:                                             ; preds = %mz_stream_is_open.exit.i101, %bb.r
  %.pr = phi ptr [ %.pr.pre, %bb.r ], [ %.pr.pre157, %mz_stream_is_open.exit.i101 ] ; 2 uses
  %.0.i103.ph.ph = phi i64 [ %i.bm, %bb.r ], [ -1, %mz_stream_is_open.exit.i101 ]
  %i.br = zext nneg i32 %.071139 to i64           ; 2 uses
  %i.bs = and i64 %indvars.iv, 4294967295         ; 2 uses
  %i.bt = sub nsw i64 %i.br, %i.bs
  %i.bu = add i64 %i.bt, %.0.i103.ph.ph
  %.not14.i106 = icmp eq ptr %.pr, null
  br i1 %.not14.i106, label %mz_stream_seek.exit.thread, label %bb.t

bb.t:                                             ; preds = %.thread, %bb.s
  %i.bv = phi i64 [ %i.bq, %.thread ], [ %i.bu, %bb.s ] ; 2 uses
  %i.bw = phi i64 [ %i.bo, %.thread ], [ %i.bs, %bb.s ]
  %i.bx = phi i64 [ %i.bn, %.thread ], [ %i.br, %bb.s ]
  %.pr181 = phi ptr [ %i.be, %.thread ], [ %.pr, %bb.s ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.pr181, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !31
  %.not15.i107 = icmp eq ptr %i.bz, null
  br i1 %.not15.i107, label %mz_stream_seek.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %.pr181, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !21 ; 2 uses
  %.not10.i.i108 = icmp eq ptr %i.cb, null
  br i1 %.not10.i.i108, label %mz_stream_seek.exit.thread, label %mz_stream_is_open.exit.i109

mz_stream_is_open.exit.i109:                      ; preds = %bb.u
  %i.cc = call i32 %i.cb(ptr noundef nonnull %0) #12, !inline_history !36
  %.not16.i110 = icmp ne i32 %i.cc, 0
  %i.cd = icmp slt i64 %i.bv, 0
  %or.cond123 = select i1 %.not16.i110, i1 true, i1 %i.cd
  br i1 %or.cond123, label %mz_stream_seek.exit.thread, label %mz_stream_seek.exit112

mz_stream_seek.exit112:                           ; preds = %mz_stream_is_open.exit.i109
  %i.ce = load ptr, ptr %0, align 8, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !31
  %i.ch = call i32 %i.cg(ptr noundef nonnull %0, i64 noundef %i.bv, i32 noundef 0) #12, !inline_history !37
  %.not85 = icmp eq i32 %i.ch, 0
  br i1 %.not85, label %bb.v, label %mz_stream_seek.exit.thread

bb.v:                                             ; preds = %mz_stream_seek.exit112
  %.neg132 = add i64 %.0.i, %i.bx
  %.neg133 = add i64 %.neg132, %.068.neg143
  %i.ci = sub i64 %.neg133, %i.bw
  store i64 %i.ci, ptr %4, align 8, !tbaa !27
  br label %mz_stream_seek.exit.thread

bb.w:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bb, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !56

._crit_edge:                                      ; preds = %bb.w
  %i.cj = select i1 %.not83142, i32 0, i32 %2     ; 3 uses
  %i.ck = icmp eq i32 %i.as, %i.cj
  br i1 %i.ck, label %mz_stream_seek.exit.thread, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %.067 = sub nsw i32 %i.as, %i.cj
  %.2 = sub nsw i32 %.170, %i.cj                  ; 2 uses
  %.172 = select i1 %.not83142, i32 %.071139, i32 %2
  %i.cl = sext i32 %.2 to i64
  %i.cm = getelementptr inbounds i8, ptr %i.a, i64 %i.cl
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cm, ptr nonnull align 16 %i.a, i64 %i.q, i1 false)
  %i.cn = sext i32 %.067 to i64
  %i.co = add nsw i64 %.068141, %i.cn             ; 3 uses
  %.068.neg = sub i64 0, %i.co
  %i.cp = icmp slt i64 %i.co, %3
  br i1 %i.cp, label %bb.f, label %mz_stream_seek.exit.thread, !llvm.loop !57

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
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %.not9 = icmp eq ptr %i.a, null
  br i1 %.not9, label %mz_stream_is_open.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  %.not10 = icmp eq ptr %i.c, null
  br i1 %.not10, label %mz_stream_is_open.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %.not10.i = icmp eq ptr %i.e, null
  br i1 %.not10.i, label %mz_stream_is_open.exit.thread, label %mz_stream_is_open.exit

mz_stream_is_open.exit:                           ; preds = %bb.d
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0) #12, !inline_history !23
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %bb.e, label %mz_stream_is_open.exit.thread

bb.e:                                             ; preds = %mz_stream_is_open.exit
  %i.g = load ptr, ptr %0, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %.not9 = icmp eq ptr %i.a, null
  br i1 %.not9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
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
  store ptr %1, ptr %i.a, align 8, !tbaa !59
  ret i32 0
}

end_hunk_0
