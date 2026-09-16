Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/ws?download=true
inline.NumInlined: 22
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ws_fix_copy:bb.a
  br i1 %i.c, label %bb.e, label %._crit_edge.thread.thread.thread

bb.e:                                             ; preds = %bb.d
  %i.i = zext nneg i32 %2 to i64
  %i.j = getelementptr i8, ptr %1, i64 %i.i       ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !12
  %i.m = icmp eq i8 %i.l, 10
  br i1 %i.m, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %.not139 = icmp eq i32 %2, 1
  br i1 %.not139, label %._crit_edge.thread.thread.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = add nsw i32 %2, -1
  %i.o = getelementptr i8, ptr %i.j, i64 -2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !12
  %i.q = icmp eq i8 %i.p, 13
  br i1 %i.q, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.r = lshr i32 %3, 9
  %.lobit = and i32 %i.r, 1                       ; 2 uses
  %i.s = add nsw i32 %2, -2                       ; 2 uses
  %.not236 = icmp eq i32 %i.s, 0
  br i1 %.not236, label %._crit_edge.thread.thread, label %.thread

.thread:                                          ; preds = %bb.e, %bb.g, %bb.h
  %.0114219 = phi i32 [ %.lobit, %bb.h ], [ 0, %bb.g ], [ 0, %bb.e ] ; 3 uses
  %.1117218 = phi i32 [ 1, %bb.h ], [ 1, %bb.g ], [ %.0111, %bb.e ] ; 3 uses
  %.0123217 = phi i32 [ %i.s, %bb.h ], [ %i.n, %bb.g ], [ %2, %bb.e ] ; 3 uses
  %i.t = zext nneg i32 %.0123217 to i64
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !12
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !12
  %i.aa = and i8 %i.z, 1
  %.not140 = icmp eq i8 %i.aa, 0
  br i1 %.not140, label %.lr.ph246, label %.lr.ph

.lr.ph:                                           ; preds = %.thread, %bb.i
  %.1124239 = phi i32 [ %i.aj, %bb.i ], [ %.0123217, %.thread ] ; 4 uses
  %i.ab = zext nneg i32 %.1124239 to i64
  %i.ac = getelementptr i8, ptr %1, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !12
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !12
  %i.ai = and i8 %i.ah, 1
  %.not141 = icmp eq i8 %i.ai, 0
  br i1 %.not141, label %.lr.ph246, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.aj = add nsw i32 %.1124239, -1
  %i.ak = icmp sgt i32 %.1124239, 1
  br i1 %i.ak, label %.lr.ph, label %._crit_edge.thread.thread, !llvm.loop !38

.critedge:                                        ; preds = %bb.c
  %i.al = icmp sgt i32 %2, 0
  br i1 %i.al, label %.lr.ph246, label %._crit_edge.thread.thread.thread

.lr.ph246:                                        ; preds = %.lr.ph, %.thread, %.critedge
  %.1112369 = phi i32 [ %.0111, %.critedge ], [ %.0111, %.thread ], [ 1, %.lr.ph ]
  %.1115368 = phi i32 [ 0, %.critedge ], [ %.0114219, %.thread ], [ %.0114219, %.lr.ph ] ; 3 uses
  %.2118367 = phi i32 [ %.0111, %.critedge ], [ %.1117218, %.thread ], [ %.1117218, %.lr.ph ] ; 3 uses
  %.2125366 = phi i32 [ %2, %.critedge ], [ %.0123217, %.thread ], [ %.1124239, %.lr.ph ] ; 4 uses
  %i.am = and i32 %3, 256
  %.not142 = icmp eq i32 %i.am, 0
  %i.an = and i32 %3, 63                          ; 2 uses
  %i.ao = and i32 %3, 128
  %.not298 = icmp eq i32 %i.ao, 0                 ; 2 uses
  %wide.trip.count324 = zext nneg i32 %.2125366 to i64 ; 4 uses
  br i1 %.not142, label %.lr.ph246.split.us, label %.lr.ph246.split

.lr.ph246.split.us:                               ; preds = %.lr.ph246
  br i1 %.not298, label %.lr.ph246.split.us.split.us, label %.lr.ph246.split.us.split

.lr.ph246.split.us.split.us:                      ; preds = %.lr.ph246.split.us, %bb.k
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %bb.k ], [ 0, %.lr.ph246.split.us ] ; 3 uses
  %.0107243.us.us = phi i32 [ %.2109.ph.us.us, %bb.k ], [ -1, %.lr.ph246.split.us ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv321
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !12
  switch i8 %i.aq, label %._crit_edge.thread [
    i8 9, label %bb.j
    i8 32, label %bb.k
  ]

bb.j:                                             ; preds = %.lr.ph246.split.us.split.us
  %i.ar = trunc nuw nsw i64 %indvars.iv321 to i32
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph246.split.us.split.us, %bb.j
  %.2109.ph.us.us = phi i32 [ %i.ar, %bb.j ], [ %.0107243.us.us, %.lr.ph246.split.us.split.us ] ; 2 uses
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %exitcond325.not = icmp eq i64 %indvars.iv.next322, %wide.trip.count324
  br i1 %exitcond325.not, label %._crit_edge.thread, label %.lr.ph246.split.us.split.us, !llvm.loop !39

.lr.ph246.split.us.split:                         ; preds = %.lr.ph246.split.us, %bb.m
  %indvars.iv316 = phi i64 [ %indvars.iv.next317, %bb.m ], [ 0, %.lr.ph246.split.us ] ; 3 uses
  %.0100245.us = phi i32 [ %.2102.ph.us, %bb.m ], [ 0, %.lr.ph246.split.us ] ; 3 uses
  %.0103244.us = phi i32 [ %.2105.ph.us, %bb.m ], [ -1, %.lr.ph246.split.us ] ; 3 uses
  %.0107243.us = phi i32 [ %.2109.ph.us, %bb.m ], [ -1, %.lr.ph246.split.us ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv316
  %i.at = load i8, ptr %i.as, align 1, !tbaa !12
  %i.au = trunc nuw nsw i64 %indvars.iv316 to i32 ; 2 uses
  switch i8 %i.at, label %._crit_edge [
    i8 9, label %bb.l
    i8 32, label %bb.m
  ]

bb.l:                                             ; preds = %.lr.ph246.split.us.split
  %i.av = icmp sgt i32 %.0103244.us, -1
  %spec.select296 = select i1 %i.av, i32 1, i32 %.0100245.us
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph246.split.us.split, %bb.l
  %.2109.ph.us = phi i32 [ %i.au, %bb.l ], [ %.0107243.us, %.lr.ph246.split.us.split ] ; 2 uses
  %.2105.ph.us = phi i32 [ %.0103244.us, %bb.l ], [ %i.au, %.lr.ph246.split.us.split ] ; 2 uses
  %.2102.ph.us = phi i32 [ %spec.select296, %bb.l ], [ %.0100245.us, %.lr.ph246.split.us.split ] ; 2 uses
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1 ; 2 uses
  %exitcond320.not = icmp eq i64 %indvars.iv.next317, %wide.trip.count324
  br i1 %exitcond320.not, label %._crit_edge, label %.lr.ph246.split.us.split, !llvm.loop !39

.lr.ph246.split:                                  ; preds = %.lr.ph246
  br i1 %.not298, label %.lr.ph246.split.split.us, label %.lr.ph246.split.split

.lr.ph246.split.split.us:                         ; preds = %.lr.ph246.split, %bb.o
  %indvars.iv311 = phi i64 [ %indvars.iv.next312, %bb.o ], [ 0, %.lr.ph246.split ] ; 3 uses
  %.0100245.us259 = phi i32 [ %.2102.ph.us266, %bb.o ], [ 0, %.lr.ph246.split ] ; 3 uses
  %.0103244.us260 = phi i32 [ %.2105.ph.us265, %bb.o ], [ -1, %.lr.ph246.split ] ; 2 uses
  %.0107243.us261 = phi i32 [ %.2109.ph.us264, %bb.o ], [ -1, %.lr.ph246.split ] ; 3 uses
  %indvars313 = trunc i64 %indvars.iv311 to i32   ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv311
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !12
  switch i8 %i.ax, label %._crit_edge [
    i8 9, label %bb.o
    i8 32, label %bb.n
  ]

bb.n:                                             ; preds = %.lr.ph246.split.split.us
  %i.ay = sub nsw i32 %indvars313, %.0107243.us261
  %.not143.us = icmp ugt i32 %i.an, %i.ay
  %spec.select153.us = select i1 %.not143.us, i32 %.0100245.us259, i32 1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph246.split.split.us, %bb.n
  %.2109.ph.us264 = phi i32 [ %.0107243.us261, %bb.n ], [ %indvars313, %.lr.ph246.split.split.us ] ; 2 uses
  %.2105.ph.us265 = phi i32 [ %indvars313, %bb.n ], [ %.0103244.us260, %.lr.ph246.split.split.us ] ; 2 uses
  %.2102.ph.us266 = phi i32 [ %spec.select153.us, %bb.n ], [ %.0100245.us259, %.lr.ph246.split.split.us ] ; 2 uses
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1 ; 2 uses
  %exitcond315.not = icmp eq i64 %indvars.iv.next312, %wide.trip.count324
  br i1 %exitcond315.not, label %._crit_edge, label %.lr.ph246.split.split.us, !llvm.loop !39

.lr.ph246.split.split:                            ; preds = %.lr.ph246.split, %bb.r
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ 0, %.lr.ph246.split ] ; 3 uses
  %.0100245 = phi i32 [ %.2102.ph, %bb.r ], [ 0, %.lr.ph246.split ] ; 3 uses
  %.0103244 = phi i32 [ %.2105.ph, %bb.r ], [ -1, %.lr.ph246.split ] ; 3 uses
  %.0107243 = phi i32 [ %.2109.ph, %bb.r ], [ -1, %.lr.ph246.split ] ; 3 uses
  %indvars310 = trunc i64 %indvars.iv to i32      ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !12
  switch i8 %i.ba, label %._crit_edge [
    i8 9, label %bb.p
    i8 32, label %bb.q
  ]

bb.p:                                             ; preds = %.lr.ph246.split.split
  %i.bb = icmp sgt i32 %.0103244, -1
  %spec.select297 = select i1 %i.bb, i32 1, i32 %.0100245
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph246.split.split
  %i.bc = sub nsw i32 %indvars310, %.0107243
  %.not143 = icmp ugt i32 %i.an, %i.bc
  %spec.select153 = select i1 %.not143, i32 %.0100245, i32 1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.2109.ph = phi i32 [ %indvars310, %bb.p ], [ %.0107243, %bb.q ] ; 2 uses
  %.2105.ph = phi i32 [ %.0103244, %bb.p ], [ %indvars310, %bb.q ] ; 2 uses
  %.2102.ph = phi i32 [ %spec.select297, %bb.p ], [ %spec.select153, %bb.q ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count324
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph246.split.split, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.r, %.lr.ph246.split.split, %bb.o, %.lr.ph246.split.split.us, %bb.m, %.lr.ph246.split.us.split
  %.0107.lcssa = phi i32 [ %.2109.ph.us, %bb.m ], [ %.2109.ph.us264, %bb.o ], [ %.0107243.us, %.lr.ph246.split.us.split ], [ %.0107243.us261, %.lr.ph246.split.split.us ], [ %.0107243, %.lr.ph246.split.split ], [ %.2109.ph, %bb.r ] ; 3 uses
  %.0103.lcssa = phi i32 [ %.2105.ph.us, %bb.m ], [ %.2105.ph.us265, %bb.o ], [ %.0103244.us, %.lr.ph246.split.us.split ], [ %.0103244.us260, %.lr.ph246.split.split.us ], [ %.0103244, %.lr.ph246.split.split ], [ %.2105.ph, %bb.r ]
  %.0100.lcssa = phi i32 [ %.2102.ph.us, %bb.m ], [ %.2102.ph.us266, %bb.o ], [ %.0100245.us, %.lr.ph246.split.us.split ], [ %.0100245.us259, %.lr.ph246.split.split.us ], [ %.0100245, %.lr.ph246.split.split ], [ %.2102.ph, %bb.r ]
  %.not144 = icmp eq i32 %.0100.lcssa, 0
  br i1 %.not144, label %._crit_edge.thread, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.bd = and i32 %3, 256
  %.not147 = icmp eq i32 %i.bd, 0
  %.3106..3110 = tail call i32 @llvm.smax.i32(i32 %.0107.lcssa, i32 %.0103.lcssa)
  %.0.in = select i1 %.not147, i32 %.0107.lcssa, i32 %.3106..3110 ; 2 uses
  %.0 = add i32 %.0.in, 1                         ; 3 uses
  %.not148286 = icmp slt i32 %.0.in, 0
  br i1 %.not148286, label %._crit_edge294, label %.lr.ph290

.lr.ph290:                                        ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bg = and i32 %3, 63
  %wide.trip.count329 = zext i32 %.0 to i64
  br label %bb.t

.preheader237:                                    ; preds = %bb.x
  %i.bh = icmp sgt i32 %.1, 0
  br i1 %i.bh, label %.lr.ph293, label %._crit_edge294

.lr.ph293:                                        ; preds = %.preheader237
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.y

bb.t:                                             ; preds = %.lr.ph290, %bb.x
  %indvars.iv326 = phi i64 [ 0, %.lr.ph290 ], [ %indvars.iv.next327, %bb.x ] ; 2 uses
  %.098288 = phi i32 [ 0, %.lr.ph290 ], [ %.1, %bb.x ]
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv326
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !12  ; 4 uses
  %.not151 = icmp eq i8 %i.bl, 32
  br i1 %.not151, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = load i64, ptr %0, align 8, !tbaa !44    ; 2 uses
  %.not.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i, label %.sink.split.sink.split, label %strbuf_avail.exit.i

strbuf_avail.exit.i:                              ; preds = %bb.u
  %i.bn = load i64, ptr %i.be, align 8, !tbaa !18 ; 2 uses
  %.neg.i = add i64 %i.bn, 1                      ; 2 uses
  %.not.i = icmp eq i64 %i.bm, %.neg.i
  br i1 %.not.i, label %.sink.split.sink.split, label %.sink.split

bb.v:                                             ; preds = %bb.t
  %i.bo = add nsw i32 %.098288, 1                 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, %i.bg
  br i1 %i.bp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bq = load i64, ptr %0, align 8, !tbaa !44    ; 2 uses
  %.not.i.i154 = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i154, label %.sink.split.sink.split, label %strbuf_avail.exit.i155

strbuf_avail.exit.i155:                           ; preds = %bb.w
  %i.br = load i64, ptr %i.be, align 8, !tbaa !18 ; 2 uses
  %.neg.i156 = add i64 %i.br, 1                   ; 2 uses
  %.not.i157 = icmp eq i64 %i.bq, %.neg.i156
  br i1 %.not.i157, label %.sink.split.sink.split, label %.sink.split

.sink.split.sink.split:                           ; preds = %bb.w, %strbuf_avail.exit.i155, %bb.u, %strbuf_avail.exit.i
  %.sink.ph = phi i8 [ %i.bl, %bb.u ], [ %i.bl, %strbuf_avail.exit.i ], [ 9, %strbuf_avail.exit.i155 ], [ 9, %bb.w ]
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #12
  %.pre.i161 = load i64, ptr %i.be, align 8, !tbaa !18 ; 2 uses
  %.pre7.i162 = add i64 %.pre.i161, 1
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %strbuf_avail.exit.i155, %strbuf_avail.exit.i
  %.pre-phi.i158.sink = phi i64 [ %.neg.i, %strbuf_avail.exit.i ], [ %.neg.i156, %strbuf_avail.exit.i155 ], [ %.pre7.i162, %.sink.split.sink.split ]
  %.sink413 = phi i64 [ %i.bn, %strbuf_avail.exit.i ], [ %i.br, %strbuf_avail.exit.i155 ], [ %.pre.i161, %.sink.split.sink.split ]
  %.sink = phi i8 [ %i.bl, %strbuf_avail.exit.i ], [ 9, %strbuf_avail.exit.i155 ], [ %.sink.ph, %.sink.split.sink.split ]
  %i.bs = load ptr, ptr %i.bf, align 8, !tbaa !45
  store i64 %.pre-phi.i158.sink, ptr %i.be, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sink413
  store i8 %.sink, ptr %i.bt, align 1, !tbaa !12
  %i.bu = load ptr, ptr %i.bf, align 8, !tbaa !45
  %i.bv = load i64, ptr %i.be, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bv
  store i8 0, ptr %i.bw, align 1, !tbaa !12
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.v
  %.1 = phi i32 [ %i.bo, %bb.v ], [ 0, %.sink.split ] ; 3 uses
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1 ; 2 uses
  %exitcond330.not = icmp eq i64 %indvars.iv.next327, %wide.trip.count329
  br i1 %exitcond330.not, label %.preheader237, label %bb.t, !llvm.loop !40

bb.y:                                             ; preds = %.lr.ph293, %strbuf_addch.exit173
  %.2292 = phi i32 [ %.1, %.lr.ph293 ], [ %i.bx, %strbuf_addch.exit173 ] ; 2 uses
  %i.bx = add nsw i32 %.2292, -1
  %i.by = load i64, ptr %0, align 8, !tbaa !44    ; 2 uses
  %.not.i.i164 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i164, label %strbuf_avail.exit.thread.i169, label %strbuf_avail.exit.i165

strbuf_avail.exit.i165:                           ; preds = %bb.y
  %i.bz = load i64, ptr %i.bi, align 8, !tbaa !18 ; 2 uses
  %.neg.i166 = add i64 %i.bz, 1                   ; 2 uses
  %.not.i167 = icmp eq i64 %i.by, %.neg.i166
  br i1 %.not.i167, label %strbuf_avail.exit.thread.i169, label %strbuf_addch.exit173

strbuf_avail.exit.thread.i169:                    ; preds = %strbuf_avail.exit.i165, %bb.y
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #12
  %.pre.i171 = load i64, ptr %i.bi, align 8, !tbaa !18 ; 2 uses
  %.pre7.i172 = add i64 %.pre.i171, 1
  br label %strbuf_addch.exit173

strbuf_addch.exit173:                             ; preds = %strbuf_avail.exit.i165, %strbuf_avail.exit.thread.i169
  %.pre-phi.i168 = phi i64 [ %.pre7.i172, %strbuf_avail.exit.thread.i169 ], [ %.neg.i166, %strbuf_avail.exit.i165 ]
  %i.ca = phi i64 [ %.pre.i171, %strbuf_avail.exit.thread.i169 ], [ %i.bz, %strbuf_avail.exit.i165 ]
  %i.cb = load ptr, ptr %i.bj, align 8, !tbaa !45
  store i64 %.pre-phi.i168, ptr %i.bi, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ca
  store i8 32, ptr %i.cc, align 1, !tbaa !12
  %i.cd = load ptr, ptr %i.bj, align 8, !tbaa !45
  %i.ce = load i64, ptr %i.bi, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ce
  store i8 0, ptr %i.cf, align 1, !tbaa !12
  %i.cg = icmp samesign ugt i32 %.2292, 1
  br i1 %i.cg, label %bb.y, label %._crit_edge294, !llvm.loop !41

._crit_edge294:                                   ; preds = %strbuf_addch.exit173, %bb.s, %.preheader237
  %i.ch = sub nsw i32 %.2125366, %.0
  %i.ci = sext i32 %.0 to i64
  %i.cj = getelementptr inbounds i8, ptr %1, i64 %i.ci
  br label %._crit_edge.thread.thread

._crit_edge.thread:                               ; preds = %.lr.ph246.split.us.split.us, %bb.k, %._crit_edge
  %.0107.lcssa384 = phi i32 [ %.0107.lcssa, %._crit_edge ], [ %.0107243.us.us, %.lr.ph246.split.us.split.us ], [ %.2109.ph.us.us, %bb.k ] ; 2 uses
  %i.ck = and i32 %3, 2048
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = icmp sgt i32 %.0107.lcssa384, -1
  %or.cond3 = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond3, label %bb.z, label %._crit_edge.thread.thread

bb.z:                                             ; preds = %._crit_edge.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %sext = shl i64 %i.co, 32
  %i.cq = ashr exact i64 %sext, 32
  %i.cr = and i32 %3, 63
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = add nuw i32 %.0107.lcssa384, 1          ; 2 uses
  %wide.trip.count334 = zext i32 %i.ct to i64     ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.loopexit
  %indvars.iv331 = phi i64 [ 0, %bb.z ], [ %indvars.iv.next332, %.loopexit ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv331
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !12  ; 2 uses
  %i.cw = icmp eq i8 %i.cv, 9
  br i1 %i.cw, label %.preheader, label %bb.ab

.preheader:                                       ; preds = %bb.aa, %strbuf_addch.exit183
  %i.cx = load i64, ptr %0, align 8, !tbaa !44    ; 2 uses
  %.not.i.i174 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i174, label %strbuf_avail.exit.thread.i179, label %strbuf_avail.exit.i175

strbuf_avail.exit.i175:                           ; preds = %.preheader
  %i.cy = load i64, ptr %i.cn, align 8, !tbaa !18 ; 2 uses
  %.neg.i176 = add i64 %i.cy, 1                   ; 2 uses
  %.not.i177 = icmp eq i64 %i.cx, %.neg.i176
  br i1 %.not.i177, label %strbuf_avail.exit.thread.i179, label %strbuf_addch.exit183

strbuf_avail.exit.thread.i179:                    ; preds = %strbuf_avail.exit.i175, %.preheader
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #12
  %.pre.i181 = load i64, ptr %i.cn, align 8, !tbaa !18 ; 2 uses
  %.pre7.i182 = add i64 %.pre.i181, 1
  br label %strbuf_addch.exit183

strbuf_addch.exit183:                             ; preds = %strbuf_avail.exit.i175, %strbuf_avail.exit.thread.i179
  %.pre-phi.i178 = phi i64 [ %.pre7.i182, %strbuf_avail.exit.thread.i179 ], [ %.neg.i176, %strbuf_avail.exit.i175 ]
  %i.cz = phi i64 [ %.pre.i181, %strbuf_avail.exit.thread.i179 ], [ %i.cy, %strbuf_avail.exit.i175 ]
  %i.da = load ptr, ptr %i.cp, align 8, !tbaa !45
  store i64 %.pre-phi.i178, ptr %i.cn, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cz
  store i8 32, ptr %i.db, align 1, !tbaa !12
  %i.dc = load ptr, ptr %i.cp, align 8, !tbaa !45
  %i.dd = load i64, ptr %i.cn, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dd
  store i8 0, ptr %i.de, align 1, !tbaa !12
  %i.df = load i64, ptr %i.cn, align 8, !tbaa !18
  %i.dg = sub i64 %i.df, %i.cq
  %i.dh = urem i64 %i.dg, %i.cs
  %.not146 = icmp eq i64 %i.dh, 0
  br i1 %.not146, label %.loopexit, label %.preheader, !llvm.loop !42

bb.ab:                                            ; preds = %bb.aa
  %i.di = load i64, ptr %0, align 8, !tbaa !44    ; 2 uses
  %.not.i.i184 = icmp eq i64 %i.di, 0
  br i1 %.not.i.i184, label %strbuf_avail.exit.thread.i189, label %strbuf_avail.exit.i185

strbuf_avail.exit.i185:                           ; preds = %bb.ab
  %i.dj = load i64, ptr %i.cn, align 8, !tbaa !18 ; 2 uses
  %.neg.i186 = add i64 %i.dj, 1                   ; 2 uses
  %.not.i187 = icmp eq i64 %i.di, %.neg.i186
  br i1 %.not.i187, label %strbuf_avail.exit.thread.i189, label %strbuf_addch.exit193

strbuf_avail.exit.thread.i189:                    ; preds = %strbuf_avail.exit.i185, %bb.ab
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #12
  %.pre.i191 = load i64, ptr %i.cn, align 8, !tbaa !18 ; 2 uses
  %.pre7.i192 = add i64 %.pre.i191, 1
  br label %strbuf_addch.exit193

strbuf_addch.exit193:                             ; preds = %strbuf_avail.exit.i185, %strbuf_avail.exit.thread.i189
  %.pre-phi.i188 = phi i64 [ %.pre7.i192, %strbuf_avail.exit.thread.i189 ], [ %.neg.i186, %strbuf_avail.exit.i185 ]
  %i.dk = phi i64 [ %.pre.i191, %strbuf_avail.exit.thread.i189 ], [ %i.dj, %strbuf_avail.exit.i185 ]
  %i.dl = load ptr, ptr %i.cp, align 8, !tbaa !45
  store i64 %.pre-phi.i188, ptr %i.cn, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk
  store i8 %i.cv, ptr %i.dm, align 1, !tbaa !12
  %i.dn = load ptr, ptr %i.cp, align 8, !tbaa !45
  %i.do = load i64, ptr %i.cn, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do
  store i8 0, ptr %i.dp, align 1, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %strbuf_addch.exit183, %strbuf_addch.exit193
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1 ; 2 uses
  %exitcond335.not = icmp eq i64 %indvars.iv.next332, %wide.trip.count334
  br i1 %exitcond335.not, label %bb.ac, label %bb.aa, !llvm.loop !43

bb.ac:                                            ; preds = %.loopexit
  %i.dq = sub nsw i32 %.2125366, %i.ct
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 %wide.trip.count334
  br label %._crit_edge.thread.thread

._crit_edge.thread.thread.thread:                 ; preds = %bb.f, %bb.d, %.critedge
  %.2118355381.ph = phi i32 [ %.0111, %.critedge ], [ %.0111, %bb.d ], [ 1, %bb.f ]
  %.3126.ph = phi i32 [ %2, %.critedge ], [ %2, %bb.d ], [ 0, %bb.f ]
  %i.ds = sext i32 %.3126.ph to i64
  tail call void @strbuf_add(ptr noundef %0, ptr noundef %1, i64 noundef %i.ds) #12
  br label %bb.ae

._crit_edge.thread.thread:                        ; preds = %bb.i, %bb.h, %._crit_edge.thread, %bb.ac, %._crit_edge294
  %.2118355381 = phi i32 [ %.2118367, %._crit_edge294 ], [ %.2118367, %bb.ac ], [ %.2118367, %._crit_edge.thread ], [ 1, %bb.h ], [ %.1117218, %bb.i ] ; 2 uses
  %.1115356379 = phi i32 [ %.1115368, %._crit_edge294 ], [ %.1115368, %bb.ac ], [ %.1115368, %._crit_edge.thread ], [ %.lobit, %bb.h ], [ %.0114219, %bb.i ]
  %.3126 = phi i32 [ %i.ch, %._crit_edge294 ], [ %i.dq, %bb.ac ], [ %.2125366, %._crit_edge.thread ], [ 0, %bb.h ], [ 0, %bb.i ]
  %.0122 = phi ptr [ %i.cj, %._crit_edge294 ], [ %i.dr, %bb.ac ], [ %1, %._crit_edge.thread ], [ %1, %bb.h ], [ %1, %bb.i ]
  %.2113 = phi i32 [ 1, %._crit_edge294 ], [ 1, %bb.ac ], [ %.1112369, %._crit_edge.thread ], [ %.0111, %bb.h ], [ 1, %bb.i ] ; 2 uses
  %i.dt = sext i32 %.3126 to i64
  tail call void @strbuf_add(ptr noundef %0, ptr noundef %.0122, i64 noundef %i.dt) #12
  %.not149 = icmp eq i32 %.1115356379, 0
  br i1 %.not149, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.thread.thread
  %i.du = load i64, ptr %0, align 8, !tbaa !44    ; 2 uses
  %.not.i.i194 = icmp eq i64 %i.du, 0
  br i1 %.not.i.i194, label %strbuf_avail.exit.thread.i199, label %strbuf_avail.exit.i195

strbuf_avail.exit.i195:                           ; preds = %bb.ad
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !18 ; 2 uses
  %.neg.i196 = add i64 %i.dw, 1                   ; 2 uses
  %.not.i197 = icmp eq i64 %i.du, %.neg.i196
  br i1 %.not.i197, label %strbuf_avail.exit.thread.i199, label %strbuf_addch.exit203

strbuf_avail.exit.thread.i199:                    ; preds = %strbuf_avail.exit.i195, %bb.ad
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #12
  %.phi.trans.insert.i200 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i201 = load i64, ptr %.phi.trans.insert.i200, align 8, !tbaa !18 ; 2 uses
  %.pre7.i202 = add i64 %.pre.i201, 1
  br label %strbuf_addch.exit203

strbuf_addch.exit203:                             ; preds = %strbuf_avail.exit.i195, %strbuf_avail.exit.thread.i199
  %.pre-phi.i198 = phi i64 [ %.pre7.i202, %strbuf_avail.exit.thread.i199 ], [ %.neg.i196, %strbuf_avail.exit.i195 ]
  %i.dx = phi i64 [ %.pre.i201, %strbuf_avail.exit.thread.i199 ], [ %i.dw, %strbuf_avail.exit.i195 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !45
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.pre-phi.i198, ptr %i.ea, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dx
  store i8 13, ptr %i.eb, align 1, !tbaa !12
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !45
  %i.ed = load i64, ptr %i.ea, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ed
  store i8 0, ptr %i.ee, align 1, !tbaa !12
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.thread.thread.thread, %strbuf_addch.exit203, %._crit_edge.thread.thread
  %.2113399 = phi i32 [ %.0111, %._crit_edge.thread.thread.thread ], [ %.2113, %strbuf_addch.exit203 ], [ %.2113, %._crit_edge.thread.thread ]
  %.2118355381398 = phi i32 [ %.2118355381.ph, %._crit_edge.thread.thread.thread ], [ %.2118355381, %strbuf_addch.exit203 ], [ %.2118355381, %._crit_edge.thread.thread ]
  %.not150 = icmp eq i32 %.2118355381398, 0
  br i1 %.not150, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ef = load i64, ptr %0, align 8, !tbaa !44    ; 2 uses
  %.not.i.i204 = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i204, label %strbuf_avail.exit.thread.i209, label %strbuf_avail.exit.i205

strbuf_avail.exit.i205:                           ; preds = %bb.af
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !18 ; 2 uses
  %.neg.i206 = add i64 %i.eh, 1                   ; 2 uses
  %.not.i207 = icmp eq i64 %i.ef, %.neg.i206
  br i1 %.not.i207, label %strbuf_avail.exit.thread.i209, label %strbuf_addch.exit213

strbuf_avail.exit.thread.i209:                    ; preds = %strbuf_avail.exit.i205, %bb.af
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #12
  %.phi.trans.insert.i210 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i211 = load i64, ptr %.phi.trans.insert.i210, align 8, !tbaa !18 ; 2 uses
  %.pre7.i212 = add i64 %.pre.i211, 1
  br label %strbuf_addch.exit213

strbuf_addch.exit213:                             ; preds = %strbuf_avail.exit.i205, %strbuf_avail.exit.thread.i209
  %.pre-phi.i208 = phi i64 [ %.pre7.i212, %strbuf_avail.exit.thread.i209 ], [ %.neg.i206, %strbuf_avail.exit.i205 ]
  %i.ei = phi i64 [ %.pre.i211, %strbuf_avail.exit.thread.i209 ], [ %i.eh, %strbuf_avail.exit.i205 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !45
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.pre-phi.i208, ptr %i.el, align 8, !tbaa !18
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ei
  store i8 10, ptr %i.em, align 1, !tbaa !12
  %i.en = load ptr, ptr %i.ej, align 8, !tbaa !45
  %i.eo = load i64, ptr %i.el, align 8, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.eo
  store i8 0, ptr %i.ep, align 1, !tbaa !12
  br label %bb.ag

bb.ag:                                            ; preds = %strbuf_addch.exit213, %bb.ae
  %i.eq = icmp ne i32 %.2113399, 0
end_hunk_0
