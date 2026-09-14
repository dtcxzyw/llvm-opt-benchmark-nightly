Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mov?download=true
inline.NumInlined: 191
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@mov_read_tmcd:bb.a
bb.j:                                             ; preds = %.loopexit.i23
  store ptr %i.aq, ptr %i.af, align 8, !tbaa !221
  %i.ar = load i32, ptr %i.ae, align 4, !tbaa !220 ; 2 uses
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.ae, align 4, !tbaa !220
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.at
  store i32 %i.ah, ptr %i.au, align 4, !tbaa !95
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.j
  %i.av = add nuw nsw i32 %.037, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.av, %i.ad
  br i1 %exitcond.not, label %mov_add_tref_tag.exit, label %bb.f, !llvm.loop !625

mov_add_tref_tag.exit:                            ; preds = %.loopexit.i23, %bb.f, %.loopexit, %.loopexit34, %.loopexit.i, %bb.a
  %.3 = phi i32 [ -12, %.loopexit.i ], [ -1094995529, %bb.a ], [ 0, %.loopexit34 ], [ -12, %.loopexit.i23 ], [ -1094995529, %bb.f ], [ 0, %.loopexit ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @mov_read_chap(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = sdiv i64 %3, 4                           ; 3 uses
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  %i.c = and i64 %i.a, 4294967295
  %i.d = tail call ptr @av_malloc_array(i64 noundef %i.c, i64 noundef 4) #16 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !204
  tail call void @av_free(ptr noundef %i.f) #16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !204
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i32 %i.b, ptr %i.g, align 8, !tbaa !202
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.not21 = icmp eq i32 %i.b, 0
  br i1 %.not21, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = and i64 %i.a, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !59
  %.not17 = icmp eq i32 %i.i, 0
  br i1 %.not17, label %bb.c, label %.critedge.loopexit.split.loop.exit24

bb.c:                                             ; preds = %.lr.ph
  %i.j = tail call i32 @avio_rb32(ptr noundef nonnull %1) #16
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !204
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store i32 %i.j, ptr %i.l, align 4, !tbaa !95
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !626

.critedge.loopexit.split.loop.exit24:             ; preds = %.lr.ph
  %i.m = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.critedge.loopexit.split.loop.exit24, %bb.b
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %i.m, %.critedge.loopexit.split.loop.exit24 ], [ %i.b, %bb.c ]
  store i32 %.0.lcssa, ptr %i.g, align 8, !tbaa !202
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.critedge
  %.015 = phi i32 [ 0, %.critedge ], [ -12, %bb.a ]
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mov_read_trex(ptr noundef %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !372  ; 2 uses
  %i.c = icmp ugt i32 %i.b, 214748362
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = add nuw nsw i32 %i.b, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = tail call i32 @av_reallocp_array(ptr noundef nonnull %i.d, i64 noundef %i.f, i64 noundef 20) #16 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !372
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store i64 -9223372036854775808, ptr %i.k, align 8, !tbaa !627
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !235
  %i.m = load i32, ptr %i.a, align 8, !tbaa !372  ; 2 uses
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.a, align 8, !tbaa !372
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [20 x i8], ptr %i.l, i64 %i.o ; 5 uses
  %i.q = tail call i32 @avio_r8(ptr noundef %1) #16 ; 0 uses
  %i.r = tail call i32 @avio_rb24(ptr noundef %1) #16 ; 0 uses
  %i.s = tail call i32 @avio_rb32(ptr noundef %1) #16
  store i32 %i.s, ptr %i.p, align 4, !tbaa !374
  %i.t = tail call i32 @avio_rb32(ptr noundef %1) #16
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.t, ptr %i.u, align 4, !tbaa !377
  %i.v = tail call i32 @avio_rb32(ptr noundef %1) #16
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 %i.v, ptr %i.w, align 4, !tbaa !378
  %i.x = tail call i32 @avio_rb32(ptr noundef %1) #16
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 %i.x, ptr %i.y, align 4, !tbaa !380
  %i.z = tail call i32 @avio_rb32(ptr noundef %1) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !382
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ %i.g, %bb.c ], [ -1094995529, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @mov_read_trun(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !383
  %i.d = load i32, ptr %i.a, align 8, !tbaa !632
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 19 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36   ; 4 uses
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !47   ; 2 uses
  %.not533 = icmp eq i32 %i.h, 0
  br i1 %.not533, label %.preheader.._crit_edge_crit_edge, label %.lr.ph

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.pre551 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !368
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !368  ; 3 uses
  %wide.trip.count = zext i32 %i.h to i64
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.f, i32 noundef 16, ptr noundef nonnull @.str.207) #16
  br label %.loopexit

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !628

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 23 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !205
  %i.s = icmp eq i32 %i.r, %i.l
  br i1 %i.s, label %bb.e, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.preheader.._crit_edge_crit_edge
  %i.t = phi i32 [ %.pre551, %.preheader.._crit_edge_crit_edge ], [ %i.l, %bb.c ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.f, i32 noundef 24, ptr noundef nonnull @.str.156, i32 noundef %i.t) #16
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 268
  %i.v = load i32, ptr %i.u, align 4, !tbaa !86   ; 2 uses
  %i.w = add nsw i32 %i.v, 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.y = load i32, ptr %i.x, align 8, !tbaa !369
  %.not421 = icmp eq i32 %i.w, %i.y
  %.not422 = icmp eq i32 %i.v, -1
  %or.cond452 = or i1 %.not422, %.not421
  br i1 %or.cond452, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 328 ; 13 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !208 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !346 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !253 ; 3 uses
  %.1376517 = add nsw i32 %i.ad, 1                ; 2 uses
  %i.ag = icmp slt i32 %.1376517, %i.af
  br i1 %i.ag, label %.lr.ph521, label %.thread465

.lr.ph521:                                        ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 272
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph521, %get_frag_stream_info.exit.thread
  %.1376519 = phi i32 [ %.1376517, %.lr.ph521 ], [ %.1376, %get_frag_stream_info.exit.thread ] ; 5 uses
  %.1376.in518 = phi i32 [ %i.ad, %.lr.ph521 ], [ %.1376519, %get_frag_stream_info.exit.thread ]
  %i.ai = icmp sgt i32 %.1376.in518, -2
  %.not.i = icmp slt i32 %.1376519, %i.af
  %or.cond596 = and i1 %i.ai, %.not.i
  br i1 %or.cond596, label %bb.h, label %get_frag_stream_info.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !277
  %i.ak = zext nneg i32 %.1376519 to i64
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !278 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i, label %get_frag_stream_info.exit.thread

.lr.ph.i:                                         ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !279
  %wide.trip.count.i = zext nneg i32 %i.an to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %get_frag_stream_info.exit.thread, label %bb.j, !llvm.loop !6

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.aq, i64 %indvars.iv.i ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !281
  %i.at = icmp eq i32 %i.as, %i.l
  br i1 %i.at, label %get_frag_stream_info.exit, label %bb.i

get_frag_stream_info.exit:                        ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 44
  %i.av = load i32, ptr %i.au, align 4, !tbaa !408 ; 3 uses
  %i.aw = icmp sgt i32 %i.av, -1
  br i1 %i.aw, label %bb.k, label %get_frag_stream_info.exit.thread

get_frag_stream_info.exit.thread:                 ; preds = %bb.i, %bb.h, %bb.g, %get_frag_stream_info.exit
  %.1376 = add i32 %.1376519, 1                   ; 2 uses
  %exitcond541.not = icmp eq i32 %.1376, %i.af
  br i1 %exitcond541.not, label %.thread465, label %bb.g, !llvm.loop !629

bb.k:                                             ; preds = %get_frag_stream_info.exit
  %.not424 = icmp sgt i32 %i.av, %i.aa
  br i1 %.not424, label %bb.l, label %.thread465

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.2, i32 noundef 6001) #16
  tail call void @abort() #17
  unreachable

.thread465:                                       ; preds = %get_frag_stream_info.exit.thread, %bb.f, %bb.k
  %.0370470 = phi i32 [ %i.av, %bb.k ], [ %i.aa, %bb.f ], [ %i.aa, %get_frag_stream_info.exit.thread ] ; 12 uses
  %.0372469 = phi i32 [ %.1376519, %bb.k ], [ -1, %bb.f ], [ -1, %get_frag_stream_info.exit.thread ]
  %i.ax = tail call i32 @avio_r8(ptr noundef %1) #16 ; 0 uses
  %i.ay = tail call i32 @avio_rb24(ptr noundef %1) #16 ; 8 uses
  %i.az = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 4 uses
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ba, i32 noundef 56, ptr noundef nonnull @.str.209, i32 noundef %i.ay, i32 noundef %i.az) #16
  %i.bb = zext i32 %i.az to i64                   ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 6 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !402
  %i.be = zext i32 %i.bd to i64
  %i.bf = add nuw nsw i64 %i.be, %i.bb
  %i.bg = icmp samesign ugt i64 %i.bf, 357913940
  br i1 %i.bg, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %.thread465
  %i.bh = trunc i32 %i.ay to i1
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bi = tail call i32 @avio_rb32(ptr noundef %1) #16
  %i.bj = sext i32 %i.bi to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0382 = phi i64 [ %i.bj, %bb.n ], [ 0, %bb.m ]
  %i.bk = and i32 %i.ay, 4                        ; 2 uses
  %.not434 = icmp eq i32 %i.bk, 0
  br i1 %.not434, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = tail call i32 @avio_rb32(ptr noundef %1) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0379 = phi i32 [ %i.bl, %bb.p ], [ %i.c, %bb.o ] ; 2 uses
  %i.bm = and i32 %i.ay, 256                      ; 2 uses
  %.not425 = icmp eq i32 %i.bm, 0                 ; 2 uses
  %.lobit = lshr exact i32 %i.bm, 6
  %i.bn = and i32 %i.ay, 512                      ; 2 uses
  %.not427 = icmp eq i32 %i.bn, 0                 ; 2 uses
  %.lobit426 = lshr exact i32 %i.bn, 7
  %i.bo = add nuw nsw i32 %.lobit, %.lobit426
  %i.bp = and i32 %i.ay, 1024                     ; 2 uses
  %.not429 = icmp eq i32 %i.bp, 0                 ; 2 uses
  %.lobit428 = lshr exact i32 %i.bp, 8
  %i.bq = add nuw nsw i32 %i.bo, %.lobit428
  %i.br = and i32 %i.ay, 2048                     ; 3 uses
  %.not431 = icmp eq i32 %i.br, 0                 ; 3 uses
  %.lobit430 = lshr exact i32 %i.br, 9
  %i.bs = add nuw nsw i32 %i.bq, %.lobit430       ; 2 uses
  %i.bt = load ptr, ptr %i.p, align 8, !tbaa !206
  %i.bu = tail call i64 @avio_size(ptr noundef %i.bt) #16 ; 3 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bw = load i32, ptr %i.z, align 8, !tbaa !208
  %i.bx = sext i32 %i.bw to i64
  %i.by = sub nsw i64 %i.bu, %i.bx
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0367 = phi i64 [ %i.by, %bb.r ], [ 9223372036854775807, %bb.q ] ; 2 uses
  %.not432 = icmp eq i32 %i.bs, 0
  br i1 %.not432, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = load ptr, ptr %i.p, align 8, !tbaa !206
  %i.ca = icmp eq ptr %i.bz, %1
  br i1 %i.ca, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = tail call i64 @avio_size(ptr noundef %1) #16
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.cc = phi i64 [ %i.cb, %bb.u ], [ %i.bu, %bb.t ] ; 2 uses
  %i.cd = tail call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #16 ; 3 uses
  %i.ce = add nsw i64 %3, -8
  %i.cf = shl i32 %i.ay, 2
  %i.cg = and i32 %i.cf, 4
  %narrow = add nuw nsw i32 %i.cg, %i.bk
  %i.ch = zext nneg i32 %narrow to i64
  %i.ci = sub i64 %i.ce, %i.ch                    ; 2 uses
  %i.cj = icmp slt i64 %i.cd, 0
  %.not435 = icmp slt i64 %i.cc, %i.cd
  %or.cond453 = select i1 %i.cj, i1 true, i1 %.not435
  %i.ck = sub nsw i64 %i.cc, %i.cd
  %i.cl = tail call i64 @llvm.smin.i64(i64 %i.ci, i64 %i.ck)
  %.0366 = select i1 %or.cond453, i64 %i.ci, i64 %i.cl
  %i.cm = zext nneg i32 %i.bs to i64
  %i.cn = sdiv i64 %.0366, %i.cm
  %i.co = tail call i64 @llvm.smin.i64(i64 %.0367, i64 %i.cn)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.1368 = phi i64 [ %i.co, %bb.v ], [ %.0367, %bb.s ] ; 2 uses
  %i.cp = icmp slt i64 %.1368, %i.bb
  br i1 %i.cp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cq = load ptr, ptr %i.e, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cq, i32 noundef 16, ptr noundef nonnull @.str.210, i32 noundef %i.az, i64 noundef %.1368) #16
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.cr = load i32, ptr %i.ac, align 8, !tbaa !275 ; 3 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %get_current_frag_stream_info.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = load i32, ptr %i.ae, align 4, !tbaa !276
  %.not.i458 = icmp slt i32 %i.cr, %i.ct
  br i1 %.not.i458, label %bb.aa, label %get_current_frag_stream_info.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !277
  %i.cw = zext nneg i32 %i.cr to i64
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %i.cw ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !370 ; 3 uses
  %i.da = icmp sgt i32 %i.cz, -1
  br i1 %i.da, label %bb.ab, label %get_current_frag_stream_info.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !278
  %i.dd = icmp slt i32 %i.cz, %i.dc
  br i1 %i.dd, label %get_current_frag_stream_info.exit, label %get_current_frag_stream_info.exit.thread

get_current_frag_stream_info.exit:                ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !279 ; 2 uses
  %i.dg = zext nneg i32 %i.cz to i64
  %i.dh = getelementptr inbounds nuw [64 x i8], ptr %i.df, i64 %i.dg ; 10 uses
  %.not436 = icmp eq ptr %i.df, null
  br i1 %.not436, label %get_current_frag_stream_info.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %get_current_frag_stream_info.exit
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !384 ; 2 uses
  %.not437 = icmp eq i64 %i.dj, -9223372036854775808
  br i1 %.not437, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dk = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !409
  %i.dm = sub nsw i64 %i.dj, %i.dl
  br label %bb.ap

bb.ae:                                            ; preds = %bb.ac
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !345 ; 4 uses
  %.not438 = icmp eq i64 %i.do, -9223372036854775808
  br i1 %.not438, label %.thread477, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !236
  switch i32 %i.dq, label %.thread477 [
    i32 2, label %bb.ag
    i32 1, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.dr = load ptr, ptr %i.e, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dr, i32 noundef 48, ptr noundef nonnull @.str.211, i64 noundef %i.do) #16
  br label %bb.ap

bb.ah:                                            ; preds = %bb.af
  %i.ds = load ptr, ptr %i.e, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ds, i32 noundef 48, ptr noundef nonnull @.str.212, i64 noundef -9223372036854775808) #16
  br label %bb.ap

.thread477:                                       ; preds = %bb.af, %bb.ae
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !371
  %i.dv = icmp ne i64 %i.du, -9223372036854775808 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !350
  %i.dy = icmp ne i64 %i.dx, -9223372036854775808 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !633 ; 2 uses
  %i.eb = icmp ne i32 %i.ea, 0
  %or.cond = select i1 %i.eb, i1 true, i1 %i.dy
  %not.or.cond = xor i1 %or.cond, true
  %spec.select = select i1 %not.or.cond, i1 %i.dv, i1 false
  %i.ec = icmp eq i32 %i.ea, 0
  %or.cond3 = select i1 %i.ec, i1 true, i1 %i.dv
  %not.or.cond3 = xor i1 %or.cond3, true
  %spec.select456 = select i1 %not.or.cond3, i1 %i.dy, i1 false ; 2 uses
  br i1 %spec.select456, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread477
  %i.ed = load ptr, ptr %i.e, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ed, i32 noundef 48, ptr noundef nonnull @.str.213) #16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.thread477
  br i1 %spec.select, label %bb.ak, label %.thread478
end_hunk_0
