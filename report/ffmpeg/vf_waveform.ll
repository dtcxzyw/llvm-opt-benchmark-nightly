inline.NumInlined: 250
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 37
begin_hunk_0_@config_input:bb.a
  ]

bb.cb:                                            ; preds = %bb.ca
  %switch.tableidx265 = add i32 %i.n, -8          ; 3 uses
  %i.bz = icmp ult i32 %switch.tableidx265, 5
  %switch.maskindex = trunc i32 %switch.tableidx265 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond369 = select i1 %i.bz, i1 %switch.lobit, i1 false
  br i1 %or.cond369, label %.sink.split258, label %bb.cq

bb.cc:                                            ; preds = %bb.ca
  %switch.tableidx270 = add i32 %i.n, -8          ; 3 uses
  %i.ca = icmp ult i32 %switch.tableidx270, 5
  %switch.maskindex274 = trunc i32 %switch.tableidx270 to i8
  %switch.shifted275 = lshr i8 23, %switch.maskindex274
  %switch.lobit276 = trunc i8 %switch.shifted275 to i1
  %or.cond370 = select i1 %i.ca, i1 %switch.lobit276, i1 false
  br i1 %or.cond370, label %.sink.split258, label %bb.cq

bb.cd:                                            ; preds = %bb.ca
  %switch.tableidx279 = add i32 %i.n, -8          ; 3 uses
  %i.cb = icmp ult i32 %switch.tableidx279, 5
  %switch.maskindex283 = trunc i32 %switch.tableidx279 to i8
  %switch.shifted284 = lshr i8 23, %switch.maskindex283
  %switch.lobit285 = trunc i8 %switch.shifted284 to i1
  %or.cond371 = select i1 %i.cb, i1 %switch.lobit285, i1 false
  br i1 %or.cond371, label %.sink.split258, label %bb.cq

bb.ce:                                            ; preds = %bb.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 380
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !128
  switch i32 %i.cd, label %bb.cq [
    i32 0, label %bb.cf
    i32 1, label %bb.cg
    i32 2, label %bb.ch
  ]

bb.cf:                                            ; preds = %bb.ce
  %switch.tableidx288 = add i32 %i.n, -8          ; 3 uses
  %i.ce = icmp ult i32 %switch.tableidx288, 5
  %switch.maskindex292 = trunc i32 %switch.tableidx288 to i8
  %switch.shifted293 = lshr i8 23, %switch.maskindex292
  %switch.lobit294 = trunc i8 %switch.shifted293 to i1
  %or.cond372 = select i1 %i.ce, i1 %switch.lobit294, i1 false
  br i1 %or.cond372, label %.sink.split258, label %bb.cq

bb.cg:                                            ; preds = %bb.ce
  %switch.tableidx297 = add i32 %i.n, -8          ; 3 uses
  %i.cf = icmp ult i32 %switch.tableidx297, 5
  %switch.maskindex301 = trunc i32 %switch.tableidx297 to i8
  %switch.shifted302 = lshr i8 23, %switch.maskindex301
  %switch.lobit303 = trunc i8 %switch.shifted302 to i1
  %or.cond373 = select i1 %i.cf, i1 %switch.lobit303, i1 false
  br i1 %or.cond373, label %.sink.split258, label %bb.cq

bb.ch:                                            ; preds = %bb.ce
  %switch.tableidx306 = add i32 %i.n, -8          ; 3 uses
  %i.cg = icmp ult i32 %switch.tableidx306, 5
  %switch.maskindex310 = trunc i32 %switch.tableidx306 to i8
  %switch.shifted311 = lshr i8 23, %switch.maskindex310
  %switch.lobit312 = trunc i8 %switch.shifted311 to i1
  %or.cond374 = select i1 %i.cg, i1 %switch.lobit312, i1 false
  br i1 %or.cond374, label %.sink.split258, label %bb.cq

bb.ci:                                            ; preds = %bb.bz, %bb.bz, %bb.bz
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 380
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !128
  switch i32 %i.ci, label %bb.cq [
    i32 0, label %bb.cj
    i32 1, label %bb.ck
    i32 2, label %bb.cl
  ]

bb.cj:                                            ; preds = %bb.ci
  %switch.tableidx315 = add i32 %i.n, -8          ; 3 uses
  %i.cj = icmp ult i32 %switch.tableidx315, 5
  %switch.maskindex319 = trunc i32 %switch.tableidx315 to i8
  %switch.shifted320 = lshr i8 23, %switch.maskindex319
  %switch.lobit321 = trunc i8 %switch.shifted320 to i1
  %or.cond375 = select i1 %i.cj, i1 %switch.lobit321, i1 false
  br i1 %or.cond375, label %.sink.split258, label %bb.cq

bb.ck:                                            ; preds = %bb.ci
  %switch.tableidx324 = add i32 %i.n, -8          ; 3 uses
  %i.ck = icmp ult i32 %switch.tableidx324, 5
  %switch.maskindex328 = trunc i32 %switch.tableidx324 to i8
  %switch.shifted329 = lshr i8 23, %switch.maskindex328
  %switch.lobit330 = trunc i8 %switch.shifted329 to i1
  %or.cond376 = select i1 %i.ck, i1 %switch.lobit330, i1 false
  br i1 %or.cond376, label %.sink.split258, label %bb.cq

bb.cl:                                            ; preds = %bb.ci
  %switch.tableidx333 = add i32 %i.n, -8          ; 3 uses
  %i.cl = icmp ult i32 %switch.tableidx333, 5
  %switch.maskindex337 = trunc i32 %switch.tableidx333 to i8
  %switch.shifted338 = lshr i8 23, %switch.maskindex337
  %switch.lobit339 = trunc i8 %switch.shifted338 to i1
  %or.cond377 = select i1 %i.cl, i1 %switch.lobit339, i1 false
  br i1 %or.cond377, label %.sink.split258, label %bb.cq

bb.cm:                                            ; preds = %bb.bz
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 380
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !128
  switch i32 %i.cn, label %bb.cq [
    i32 0, label %bb.cn
    i32 1, label %bb.co
    i32 2, label %bb.cp
  ]

bb.cn:                                            ; preds = %bb.cm
  %switch.tableidx342 = add i32 %i.n, -8          ; 3 uses
  %i.co = icmp ult i32 %switch.tableidx342, 5
  %switch.maskindex346 = trunc i32 %switch.tableidx342 to i8
  %switch.shifted347 = lshr i8 23, %switch.maskindex346
  %switch.lobit348 = trunc i8 %switch.shifted347 to i1
  %or.cond378 = select i1 %i.co, i1 %switch.lobit348, i1 false
  br i1 %or.cond378, label %.sink.split258, label %bb.cq

bb.co:                                            ; preds = %bb.cm
  %switch.tableidx351 = add i32 %i.n, -8          ; 3 uses
  %i.cp = icmp ult i32 %switch.tableidx351, 5
  %switch.maskindex355 = trunc i32 %switch.tableidx351 to i8
  %switch.shifted356 = lshr i8 23, %switch.maskindex355
  %switch.lobit357 = trunc i8 %switch.shifted356 to i1
  %or.cond379 = select i1 %i.cp, i1 %switch.lobit357, i1 false
  br i1 %or.cond379, label %.sink.split258, label %bb.cq

bb.cp:                                            ; preds = %bb.cm
  %switch.tableidx360 = add i32 %i.n, -8          ; 3 uses
  %i.cq = icmp ult i32 %switch.tableidx360, 5
  %switch.maskindex364 = trunc i32 %switch.tableidx360 to i8
  %switch.shifted365 = lshr i8 23, %switch.maskindex364
  %switch.lobit366 = trunc i8 %switch.shifted365 to i1
  %or.cond380 = select i1 %i.cq, i1 %switch.lobit366, i1 false
  br i1 %or.cond380, label %.sink.split258, label %bb.cq

.sink.split258:                                   ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cl, %bb.ck, %bb.cj, %bb.ch, %bb.cg, %bb.cf, %bb.cd, %bb.cc, %bb.cb
  %switch.tableidx360.sink = phi i32 [ %switch.tableidx351, %bb.co ], [ %switch.tableidx342, %bb.cn ], [ %switch.tableidx333, %bb.cl ], [ %switch.tableidx324, %bb.ck ], [ %switch.tableidx315, %bb.cj ], [ %switch.tableidx306, %bb.ch ], [ %switch.tableidx297, %bb.cg ], [ %switch.tableidx288, %bb.cf ], [ %switch.tableidx279, %bb.cd ], [ %switch.tableidx270, %bb.cc ], [ %switch.tableidx265, %bb.cb ], [ %switch.tableidx360, %bb.cp ]
  %switch.table.config_input.12.sink = phi ptr [ @switch.table.config_input.11, %bb.co ], [ @switch.table.config_input.10, %bb.cn ], [ @switch.table.config_input.9, %bb.cl ], [ @switch.table.config_input.8, %bb.ck ], [ @switch.table.config_input.7, %bb.cj ], [ @switch.table.config_input.6, %bb.ch ], [ @switch.table.config_input.5, %bb.cg ], [ @switch.table.config_input.4, %bb.cf ], [ @switch.table.config_input.6, %bb.cd ], [ @switch.table.config_input.5, %bb.cc ], [ @switch.table.config_input.1, %bb.cb ], [ @switch.table.config_input.12, %bb.cp ]
  %.sink259 = phi i32 [ 5, %bb.co ], [ 3, %bb.cn ], [ 7, %bb.cl ], [ 5, %bb.ck ], [ 3, %bb.cj ], [ 5, %bb.ch ], [ 5, %bb.cg ], [ 5, %bb.cf ], [ 5, %bb.cd ], [ 5, %bb.cc ], [ 3, %bb.cb ], [ 7, %bb.cp ]
  %i.cr = zext nneg i32 %switch.tableidx360.sink to i64
  %switch.gep367 = getelementptr inbounds nuw [8 x i8], ptr %switch.table.config_input.12.sink, i64 %i.cr
  %switch.load368 = load ptr, ptr %switch.gep367, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  store ptr %switch.load368, ptr %i.cs, align 8, !tbaa !129
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  store i32 %.sink259, ptr %i.ct, align 8, !tbaa !130
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cl, %bb.ck, %bb.cj, %bb.ch, %bb.cg, %bb.cf, %bb.cd, %bb.cc, %bb.cb, %.sink.split258, %bb.cm, %bb.ci, %bb.ce, %bb.ca, %bb.bz
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 376
  %i.cv = add nsw i32 %i.n, -8
  %i.cw = shl i32 %.sink, %i.cv
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !63
  %i.cx = load i32, ptr %i.e, align 4, !tbaa !121
  %i.cy = add i32 %i.cx, -71                      ; 2 uses
  %i.cz = tail call i32 @llvm.fshl.i32(i32 %i.cy, i32 %i.cy, i32 31)
  switch i32 %i.cz, label %bb.cs [
    i32 20, label %bb.cr
    i32 0, label %bb.cr
    i32 1, label %bb.cr
    i32 2, label %bb.cr
    i32 32, label %bb.cr
  ]

bb.cr:                                            ; preds = %bb.cq, %bb.cq, %bb.cq, %bb.cq, %bb.cq
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 436
  store i32 1, ptr %i.da, align 4, !tbaa !113
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cq, %bb.cr
  %.sink262 = phi i32 [ -16777216, %bb.cr ], [ -8421632, %bb.cq ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %.sink262, ptr %i.db, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @envelope(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !131  ; 3 uses
  switch i32 %i.b, label %bb.c [
    i32 0, label %envelope_peak.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @envelope_instant(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %envelope_peak.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = sext i32 %3 to i64                       ; 8 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !44   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 %i.d
  %i.i = load i8, ptr %i.h, align 1, !tbaa !62    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !104
  %i.l = icmp eq i32 %i.k, 2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.n = load i32, ptr %i.m, align 4, !tbaa !132  ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !133  ; 2 uses
  %i.q = sdiv i32 %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.s = load i32, ptr %i.r, align 8, !tbaa !134
  %i.t = sdiv i32 %i.s, %i.p
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.v = load i32, ptr %i.u, align 8, !tbaa !134
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = phi i32 [ %i.q, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.x = phi i32 [ %i.t, %bb.d ], [ %i.v, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = sext i32 %2 to i64                       ; 4 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !44 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.z
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !44 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ag = getelementptr inbounds [32 x i8], ptr %i.af, i64 %i.z
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.d
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !135 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ak = getelementptr inbounds [32 x i8], ptr %i.aj, i64 %i.z
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.d
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !135 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !105
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader180.i

.preheader180.i:                                  ; preds = %bb.f
  %i.ap = add nsw i32 %i.x, %4                    ; 2 uses
  %i.aq = icmp sgt i32 %i.x, 0                    ; 2 uses
  br i1 %i.aq, label %.preheader179.lr.ph.i, label %._crit_edge.i

.preheader179.lr.ph.i:                            ; preds = %.preheader180.i
  %i.ar = icmp slt i32 %i.ab, %i.ae
  %i.as = getelementptr inbounds [8 x i8], ptr %1, i64 %i.d ; 2 uses
  %i.at = sext i32 %i.ab to i64                   ; 2 uses
  %i.au = sext i32 %i.f to i64                    ; 2 uses
  %i.av = sext i32 %i.ae to i64
  %i.aw = sext i32 %4 to i64                      ; 4 uses
  %i.ax = sext i32 %i.ap to i64                   ; 2 uses
  br i1 %i.ar, label %.preheader179.i.us, label %.preheader179.i

.preheader179.i.us:                               ; preds = %.preheader179.lr.ph.i, %.critedge2.i.us
  %indvars.iv224.i.us = phi i64 [ %indvars.iv.next225.i.us, %.critedge2.i.us ], [ %i.aw, %.preheader179.lr.ph.i ] ; 4 uses
  %i.ay = sub nsw i64 %indvars.iv224.i.us, %i.aw  ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !44
  %smax.i.us = tail call i32 @llvm.smax.i32(i32 %i.ba, i32 %i.ab)
  %wide.trip.count.i.us = sext i32 %smax.i.us to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.preheader179.i.us
  %indvars.iv.i.us = phi i64 [ %i.at, %.preheader179.i.us ], [ %indvars.iv.next.i.us, %bb.i ] ; 4 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %.critedge.i.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !71
  %i.bc = mul nsw i64 %indvars.iv.i.us, %i.au
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %indvars.iv224.i.us
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !62
  %.not174.i.us = icmp eq i8 %i.bf, %i.i
  br i1 %.not174.i.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.us = add nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %lftr.wideiv.i.us = trunc i64 %indvars.iv.next.i.us to i32
  %exitcond220.not.i.us = icmp eq i32 %i.ae, %lftr.wideiv.i.us
  br i1 %exitcond220.not.i.us, label %.critedge.i.us, label %bb.g, !llvm.loop !136

bb.j:                                             ; preds = %bb.h
  %i.bg = trunc nsw i64 %indvars.iv.i.us to i32
  store i32 %i.bg, ptr %i.az, align 4, !tbaa !44
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %bb.g, %bb.i, %bb.j
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ay ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !44
  %i.bj = sext i32 %i.bi to i64
  br label %.lr.ph57.a

bb.k:                                             ; preds = %bb.l
  %.not175.not.i.us = icmp sgt i64 %indvars.iv.next222.i.us56, %i.at
  br i1 %.not175.not.i.us, label %.lr.ph57.a, label %.critedge2.i.us, !llvm.loop !137

.lr.ph57.a:                                       ; preds = %.critedge.i.us, %bb.k
  %indvars.iv221.i.us55 = phi i64 [ %indvars.iv.next222.i.us56, %bb.k ], [ %i.av, %.critedge.i.us ] ; 2 uses
  %.not176.not.i.us = icmp sgt i64 %indvars.iv221.i.us55, %i.bj
  br i1 %.not176.not.i.us, label %bb.l, label %.critedge2.i.us

bb.l:                                             ; preds = %.lr.ph57.a
  %indvars.iv.next222.i.us56 = add nsw i64 %indvars.iv221.i.us55, -1 ; 4 uses
  %i.bk = load ptr, ptr %i.as, align 8, !tbaa !71
  %i.bl = mul nsw i64 %indvars.iv.next222.i.us56, %i.au
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %indvars.iv224.i.us
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !62
  %.not177.i.us = icmp eq i8 %i.bo, %i.i
  br i1 %.not177.i.us, label %bb.k, label %bb.m, !llvm.loop !137

bb.m:                                             ; preds = %bb.l
  %i.bp = trunc nsw i64 %indvars.iv.next222.i.us56 to i32
  store i32 %i.bp, ptr %i.bh, align 4, !tbaa !44
  br label %.critedge2.i.us

.critedge2.i.us:                                  ; preds = %.lr.ph57.a, %bb.k, %bb.m
  %indvars.iv.next225.i.us = add nsw i64 %indvars.iv224.i.us, 1 ; 2 uses
  %i.bq = icmp slt i64 %indvars.iv.next225.i.us, %i.ax
  br i1 %i.bq, label %.preheader179.i.us, label %._crit_edge.i, !llvm.loop !138

.preheader.i:                                     ; preds = %bb.f
  %i.br = add nsw i32 %i.w, %4                    ; 2 uses
  %i.bs = icmp sgt i32 %i.w, 0                    ; 2 uses
  br i1 %i.bs, label %.lr.ph206.i, label %._crit_edge207.i

.lr.ph206.i:                                      ; preds = %.preheader.i
  %i.bt = getelementptr inbounds [8 x i8], ptr %1, i64 %i.d
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !71
  %i.bv = icmp slt i32 %i.ab, %i.ae
  %i.bw = sext i32 %4 to i64                      ; 2 uses
  %i.bx = sext i32 %i.f to i64
  %i.by = sext i32 %i.br to i64
  br i1 %i.bv, label %.lr.ph202.us.preheader.i, label %._crit_edge207.i

.lr.ph202.us.preheader.i:                         ; preds = %.lr.ph206.i
  %i.bz = sext i32 %i.ab to i64                   ; 2 uses
  %i.ca = sext i32 %i.ae to i64
  br label %.lr.ph202.us.i

.lr.ph202.us.i:                                   ; preds = %.critedge6.us.i, %.lr.ph202.us.preheader.i
  %indvars.iv247.i = phi i64 [ %i.bw, %.lr.ph202.us.preheader.i ], [ %indvars.iv.next248.i, %.critedge6.us.i ] ; 3 uses
  %i.cb = mul nsw i64 %indvars.iv247.i, %i.bx
  %i.cc = getelementptr inbounds i8, ptr %i.bu, i64 %i.cb ; 2 uses
  %i.cd = sub nsw i64 %indvars.iv247.i, %i.bw     ; 2 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !44
  %smax239.i = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 %i.ab)
  %wide.trip.count240.i = sext i32 %smax239.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph202.us.i
  %indvars.iv236.i = phi i64 [ %i.bz, %.lr.ph202.us.i ], [ %indvars.iv.next237.i, %bb.p ] ; 4 uses
  %exitcond241.not.i = icmp eq i64 %indvars.iv236.i, %wide.trip.count240.i
  br i1 %exitcond241.not.i, label %.critedge4.us.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds i8, ptr %i.cc, i64 %indvars.iv236.i
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !62
  %.not170.us.i = icmp eq i8 %i.ch, %i.i
  br i1 %.not170.us.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next237.i = add nsw i64 %indvars.iv236.i, 1 ; 2 uses
  %lftr.wideiv242.i = trunc i64 %indvars.iv.next237.i to i32
  %exitcond243.not.i = icmp eq i32 %i.ae, %lftr.wideiv242.i
  br i1 %exitcond243.not.i, label %.critedge4.us.i, label %bb.n, !llvm.loop !139

bb.q:                                             ; preds = %bb.o
  %i.ci = trunc nsw i64 %indvars.iv236.i to i32
  store i32 %i.ci, ptr %i.ce, align 4, !tbaa !44
  br label %.critedge4.us.i

.critedge4.us.i:                                  ; preds = %bb.p, %bb.n, %bb.q
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.cd ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !44
  %i.cl = sext i32 %i.ck to i64
  br label %.lr.ph69

bb.r:                                             ; preds = %bb.s
  %.not171.not.us.i = icmp sgt i64 %indvars.iv.next245.i68, %i.bz
  br i1 %.not171.not.us.i, label %.lr.ph69, label %.critedge6.us.i, !llvm.loop !140

.lr.ph69:                                         ; preds = %.critedge4.us.i, %bb.r
  %indvars.iv244.i67 = phi i64 [ %indvars.iv.next245.i68, %bb.r ], [ %i.ca, %.critedge4.us.i ] ; 2 uses
  %.not172.not.us.i = icmp sgt i64 %indvars.iv244.i67, %i.cl
  br i1 %.not172.not.us.i, label %bb.s, label %.critedge6.us.i

bb.s:                                             ; preds = %.lr.ph69
  %indvars.iv.next245.i68 = add nsw i64 %indvars.iv244.i67, -1 ; 4 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cc, i64 %indvars.iv.next245.i68
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !62
  %.not173.us.i = icmp eq i8 %i.cn, %i.i
  br i1 %.not173.us.i, label %bb.r, label %bb.t, !llvm.loop !140

bb.t:                                             ; preds = %bb.s
  %i.co = trunc nsw i64 %indvars.iv.next245.i68 to i32
  store i32 %i.co, ptr %i.cj, align 4, !tbaa !44
  br label %.critedge6.us.i

.critedge6.us.i:                                  ; preds = %bb.r, %.lr.ph69, %bb.t
  %indvars.iv.next248.i = add nsw i64 %indvars.iv247.i, 1 ; 2 uses
  %i.cp = icmp slt i64 %indvars.iv.next248.i, %i.by
  br i1 %i.cp, label %.lr.ph202.us.i, label %.critedge4.loopexit.i, !llvm.loop !141

.preheader179.i:                                  ; preds = %.preheader179.lr.ph.i, %.preheader179.i
  %indvars.iv224.i = phi i64 [ %indvars.iv.next225.i, %.preheader179.i ], [ %i.aw, %.preheader179.lr.ph.i ] ; 2 uses
  %i.cq = sub nsw i64 %indvars.iv224.i, %i.aw
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.cq ; 0 uses
  %indvars.iv.next225.i = add nsw i64 %indvars.iv224.i, 1 ; 2 uses
  %i.cs = icmp slt i64 %indvars.iv.next225.i, %i.ax
  br i1 %i.cs, label %.preheader179.i, label %._crit_edge.i, !llvm.loop !138

._crit_edge.i:                                    ; preds = %.preheader179.i, %.critedge2.i.us, %.preheader180.i
  %i.ct = load i32, ptr %i.a, align 8, !tbaa !131
  %i.cu = icmp eq i32 %i.ct, 3
  br i1 %i.cu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i
  tail call fastcc void @envelope_instant(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i
  br i1 %i.aq, label %.lr.ph198.i, label %envelope_peak.exit

.lr.ph198.i:                                      ; preds = %bb.v
  %i.cv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.d ; 2 uses
  %i.cw = sext i32 %4 to i64                      ; 2 uses
  %i.cx = sext i32 %i.ap to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph198.i
  %indvars.iv227.i = phi i64 [ %i.cw, %.lr.ph198.i ], [ %indvars.iv.next228.i, %bb.w ] ; 4 uses
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !71
  %i.cz = sub nsw i64 %indvars.iv227.i, %i.cw     ; 2 uses
  %i.da = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !44
  %i.dc = mul nsw i32 %i.db, %i.f
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %i.cy, i64 %i.dd
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv227.i
  store i8 -1, ptr %i.df, align 1, !tbaa !62
  %i.dg = load ptr, ptr %i.cv, align 8, !tbaa !71
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.cz
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !44
  %i.dj = mul nsw i32 %i.di, %i.f
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %i.dg, i64 %i.dk
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %indvars.iv227.i
  store i8 -1, ptr %i.dm, align 1, !tbaa !62
  %indvars.iv.next228.i = add nsw i64 %indvars.iv227.i, 1 ; 2 uses
  %i.dn = icmp slt i64 %indvars.iv.next228.i, %i.cx
  br i1 %i.dn, label %bb.w, label %envelope_peak.exit, !llvm.loop !142

.critedge4.loopexit.i:                            ; preds = %.critedge6.us.i
  %.pre = load i32, ptr %i.a, align 8, !tbaa !131
  br label %._crit_edge207.i

._crit_edge207.i:                                 ; preds = %.lr.ph206.i, %.critedge4.loopexit.i, %.preheader.i
  %5 = phi i32 [ %i.b, %.preheader.i ], [ %.pre, %.critedge4.loopexit.i ], [ %i.b, %.lr.ph206.i ]
  %i.do = icmp eq i32 %5, 3
  br i1 %i.do, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge207.i
  tail call fastcc void @envelope_instant(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge207.i
  br i1 %i.bs, label %.lr.ph211.i, label %envelope_peak.exit

.lr.ph211.i:                                      ; preds = %bb.y
  %i.dp = getelementptr inbounds [8 x i8], ptr %1, i64 %i.d ; 2 uses
  %i.dq = sext i32 %4 to i64                      ; 2 uses
  %i.dr = sext i32 %i.f to i64
  %i.ds = sext i32 %i.br to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph211.i
  %indvars.iv250.i = phi i64 [ %i.dq, %.lr.ph211.i ], [ %indvars.iv.next251.i, %bb.z ] ; 3 uses
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !71
  %i.du = mul nsw i64 %indvars.iv250.i, %i.dr     ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %i.dt, i64 %i.du
  %i.dw = sub nsw i64 %indvars.iv250.i, %i.dq     ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !44
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds i8, ptr %i.dv, i64 %i.dz
  store i8 -1, ptr %i.ea, align 1, !tbaa !62
  %i.eb = load ptr, ptr %i.dp, align 8, !tbaa !71
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %i.du
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.dw
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !44
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds i8, ptr %i.ec, i64 %i.ef
  store i8 -1, ptr %i.eg, align 1, !tbaa !62
  %indvars.iv.next251.i = add nsw i64 %indvars.iv250.i, 1 ; 2 uses
  %i.eh = icmp slt i64 %indvars.iv.next251.i, %i.ds
  br i1 %i.eh, label %bb.z, label %envelope_peak.exit, !llvm.loop !143

envelope_peak.exit:                               ; preds = %bb.w, %bb.z, %bb.y, %bb.v, %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @envelope16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !131  ; 3 uses
  switch i32 %i.b, label %bb.c [
    i32 0, label %envelope_peak16.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @envelope_instant16(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %envelope_peak16.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = sext i32 %3 to i64                       ; 8 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !44
  %i.g = sdiv i32 %i.f, 2                         ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 %i.d
  %i.j = load i8, ptr %i.i, align 1, !tbaa !62
  %i.k = zext i8 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.m = load i32, ptr %i.l, align 4, !tbaa !59   ; 2 uses
  %i.n = sdiv i32 %i.m, 256
  %i.o = mul nsw i32 %i.n, %i.k                   ; 4 uses
  %i.p = add nsw i32 %i.m, -1                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !104
  %i.s = icmp eq i32 %i.r, 2
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.u = load i32, ptr %i.t, align 4, !tbaa !132  ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !133  ; 2 uses
  %i.x = sdiv i32 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = load i32, ptr %i.y, align 8, !tbaa !134
  %i.aa = sdiv i32 %i.z, %i.w
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !134
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = phi i32 [ %i.x, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %i.ae = phi i32 [ %i.aa, %bb.d ], [ %i.ac, %bb.e ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = sext i32 %2 to i64                      ; 4 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !44 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ag
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !44 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.an = getelementptr inbounds [32 x i8], ptr %i.am, i64 %i.ag
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.d
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !135 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ar = getelementptr inbounds [32 x i8], ptr %i.aq, i64 %i.ag
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.d
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !135 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !105
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader186.i

.preheader186.i:                                  ; preds = %bb.f
  %i.aw = add nsw i32 %i.ae, %4                   ; 2 uses
  %i.ax = icmp sgt i32 %i.ae, 0                   ; 2 uses
  br i1 %i.ax, label %.preheader185.lr.ph.i, label %._crit_edge.i

.preheader185.lr.ph.i:                            ; preds = %.preheader186.i
  %i.ay = icmp slt i32 %i.ai, %i.al
  %i.az = getelementptr inbounds [8 x i8], ptr %1, i64 %i.d ; 2 uses
  %i.ba = sext i32 %i.ai to i64                   ; 2 uses
  %i.bb = sext i32 %i.g to i64                    ; 2 uses
  %i.bc = sext i32 %i.al to i64
  %i.bd = sext i32 %4 to i64                      ; 4 uses
  %i.be = sext i32 %i.aw to i64                   ; 2 uses
  br i1 %i.ay, label %.preheader185.i.us, label %.preheader185.i

.preheader185.i.us:                               ; preds = %.preheader185.lr.ph.i, %.critedge2.i.us
  %indvars.iv230.i.us = phi i64 [ %indvars.iv.next231.i.us, %.critedge2.i.us ], [ %i.bd, %.preheader185.lr.ph.i ] ; 4 uses
  %i.bf = sub nsw i64 %indvars.iv230.i.us, %i.bd  ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !44
  %smax.i.us = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 %i.ai)
  %wide.trip.count.i.us = sext i32 %smax.i.us to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.preheader185.i.us
  %indvars.iv.i.us = phi i64 [ %i.ba, %.preheader185.i.us ], [ %indvars.iv.next.i.us, %bb.i ] ; 4 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %.critedge.i.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !71
  %i.bj = mul nsw i64 %indvars.iv.i.us, %i.bb
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %indvars.iv230.i.us
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !72
  %i.bn = zext i16 %i.bm to i32
  %.not180.i.us = icmp eq i32 %i.o, %i.bn
  br i1 %.not180.i.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.us = add nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %lftr.wideiv.i.us = trunc i64 %indvars.iv.next.i.us to i32
  %exitcond226.not.i.us = icmp eq i32 %i.al, %lftr.wideiv.i.us
  br i1 %exitcond226.not.i.us, label %.critedge.i.us, label %bb.g, !llvm.loop !144

bb.j:                                             ; preds = %bb.h
  %i.bo = trunc nsw i64 %indvars.iv.i.us to i32
  store i32 %i.bo, ptr %i.bg, align 4, !tbaa !44
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %bb.g, %bb.i, %bb.j
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.bf ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !44
  %i.br = sext i32 %i.bq to i64
  br label %.lr.ph57.a

bb.k:                                             ; preds = %bb.l
  %.not181.not.i.us = icmp sgt i64 %indvars.iv.next228.i.us56, %i.ba
  br i1 %.not181.not.i.us, label %.lr.ph57.a, label %.critedge2.i.us, !llvm.loop !145

.lr.ph57.a:                                       ; preds = %.critedge.i.us, %bb.k
  %indvars.iv227.i.us55 = phi i64 [ %indvars.iv.next228.i.us56, %bb.k ], [ %i.bc, %.critedge.i.us ] ; 2 uses
  %.not182.not.i.us = icmp sgt i64 %indvars.iv227.i.us55, %i.br
  br i1 %.not182.not.i.us, label %bb.l, label %.critedge2.i.us

bb.l:                                             ; preds = %.lr.ph57.a
  %indvars.iv.next228.i.us56 = add nsw i64 %indvars.iv227.i.us55, -1 ; 4 uses
  %i.bs = load ptr, ptr %i.az, align 8, !tbaa !71
  %i.bt = mul nsw i64 %indvars.iv.next228.i.us56, %i.bb
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.bu, i64 %indvars.iv230.i.us
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !72
  %i.bx = zext i16 %i.bw to i32
  %.not183.i.us = icmp eq i32 %i.o, %i.bx
  br i1 %.not183.i.us, label %bb.k, label %bb.m, !llvm.loop !145

bb.m:                                             ; preds = %bb.l
  %i.by = trunc nsw i64 %indvars.iv.next228.i.us56 to i32
  store i32 %i.by, ptr %i.bp, align 4, !tbaa !44
  br label %.critedge2.i.us

.critedge2.i.us:                                  ; preds = %.lr.ph57.a, %bb.k, %bb.m
  %indvars.iv.next231.i.us = add nsw i64 %indvars.iv230.i.us, 1 ; 2 uses
  %i.bz = icmp slt i64 %indvars.iv.next231.i.us, %i.be
  br i1 %i.bz, label %.preheader185.i.us, label %._crit_edge.i, !llvm.loop !146

.preheader.i:                                     ; preds = %bb.f
  %i.ca = add nsw i32 %i.ad, %4                   ; 2 uses
  %i.cb = icmp sgt i32 %i.ad, 0                   ; 2 uses
  br i1 %i.cb, label %.lr.ph212.i, label %._crit_edge213.i

.lr.ph212.i:                                      ; preds = %.preheader.i
  %i.cc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.d
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !71
  %i.ce = icmp slt i32 %i.ai, %i.al
  %i.cf = sext i32 %4 to i64                      ; 2 uses
  %i.cg = sext i32 %i.g to i64
  %i.ch = sext i32 %i.ca to i64
  br i1 %i.ce, label %.lr.ph208.us.preheader.i, label %._crit_edge213.i

.lr.ph208.us.preheader.i:                         ; preds = %.lr.ph212.i
  %i.ci = sext i32 %i.ai to i64                   ; 2 uses
  %i.cj = sext i32 %i.al to i64
  br label %.lr.ph208.us.i

.lr.ph208.us.i:                                   ; preds = %.critedge6.us.i, %.lr.ph208.us.preheader.i
  %indvars.iv253.i = phi i64 [ %i.cf, %.lr.ph208.us.preheader.i ], [ %indvars.iv.next254.i, %.critedge6.us.i ] ; 3 uses
  %i.ck = mul nsw i64 %indvars.iv253.i, %i.cg
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.cd, i64 %i.ck ; 2 uses
  %i.cm = sub nsw i64 %indvars.iv253.i, %i.cf     ; 2 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.cm ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !44
  %smax245.i = tail call i32 @llvm.smax.i32(i32 %i.co, i32 %i.ai)
  %wide.trip.count246.i = sext i32 %smax245.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph208.us.i
  %indvars.iv242.i = phi i64 [ %i.ci, %.lr.ph208.us.i ], [ %indvars.iv.next243.i, %bb.p ] ; 4 uses
  %exitcond247.not.i = icmp eq i64 %indvars.iv242.i, %wide.trip.count246.i
  br i1 %exitcond247.not.i, label %.critedge4.us.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %indvars.iv242.i
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !72
  %i.cr = zext i16 %i.cq to i32
  %.not176.us.i = icmp eq i32 %i.o, %i.cr
  br i1 %.not176.us.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next243.i = add nsw i64 %indvars.iv242.i, 1 ; 2 uses
  %lftr.wideiv248.i = trunc i64 %indvars.iv.next243.i to i32
  %exitcond249.not.i = icmp eq i32 %i.al, %lftr.wideiv248.i
  br i1 %exitcond249.not.i, label %.critedge4.us.i, label %bb.n, !llvm.loop !147

bb.q:                                             ; preds = %bb.o
  %i.cs = trunc nsw i64 %indvars.iv242.i to i32
  store i32 %i.cs, ptr %i.cn, align 4, !tbaa !44
  br label %.critedge4.us.i

.critedge4.us.i:                                  ; preds = %bb.p, %bb.n, %bb.q
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.cm ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !44
  %i.cv = sext i32 %i.cu to i64
  br label %.lr.ph69

bb.r:                                             ; preds = %bb.s
  %.not177.not.us.i = icmp sgt i64 %indvars.iv.next251.i68, %i.ci
  br i1 %.not177.not.us.i, label %.lr.ph69, label %.critedge6.us.i, !llvm.loop !148

.lr.ph69:                                         ; preds = %.critedge4.us.i, %bb.r
  %indvars.iv250.i67 = phi i64 [ %indvars.iv.next251.i68, %bb.r ], [ %i.cj, %.critedge4.us.i ] ; 2 uses
  %.not178.not.us.i = icmp sgt i64 %indvars.iv250.i67, %i.cv
  br i1 %.not178.not.us.i, label %bb.s, label %.critedge6.us.i

bb.s:                                             ; preds = %.lr.ph69
  %indvars.iv.next251.i68 = add nsw i64 %indvars.iv250.i67, -1 ; 4 uses
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %indvars.iv.next251.i68
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !72
  %i.cy = zext i16 %i.cx to i32
  %.not179.us.i = icmp eq i32 %i.o, %i.cy
  br i1 %.not179.us.i, label %bb.r, label %bb.t, !llvm.loop !148

bb.t:                                             ; preds = %bb.s
  %i.cz = trunc nsw i64 %indvars.iv.next251.i68 to i32
  store i32 %i.cz, ptr %i.ct, align 4, !tbaa !44
  br label %.critedge6.us.i

.critedge6.us.i:                                  ; preds = %bb.r, %.lr.ph69, %bb.t
  %indvars.iv.next254.i = add nsw i64 %indvars.iv253.i, 1 ; 2 uses
  %i.da = icmp slt i64 %indvars.iv.next254.i, %i.ch
  br i1 %i.da, label %.lr.ph208.us.i, label %.critedge4.loopexit.i, !llvm.loop !149

.preheader185.i:                                  ; preds = %.preheader185.lr.ph.i, %.preheader185.i
  %indvars.iv230.i = phi i64 [ %indvars.iv.next231.i, %.preheader185.i ], [ %i.bd, %.preheader185.lr.ph.i ] ; 2 uses
  %i.db = sub nsw i64 %indvars.iv230.i, %i.bd
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.db ; 0 uses
  %indvars.iv.next231.i = add nsw i64 %indvars.iv230.i, 1 ; 2 uses
  %i.dd = icmp slt i64 %indvars.iv.next231.i, %i.be
  br i1 %i.dd, label %.preheader185.i, label %._crit_edge.i, !llvm.loop !146

._crit_edge.i:                                    ; preds = %.preheader185.i, %.critedge2.i.us, %.preheader186.i
  %i.de = load i32, ptr %i.a, align 8, !tbaa !131
  %i.df = icmp eq i32 %i.de, 3
  br i1 %i.df, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i
  tail call fastcc void @envelope_instant16(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i
  br i1 %i.ax, label %.lr.ph204.i, label %envelope_peak16.exit

.lr.ph204.i:                                      ; preds = %bb.v
  %i.dg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.d
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !71 ; 2 uses
  %i.di = trunc i32 %i.p to i16                   ; 2 uses
  %i.dj = sext i32 %4 to i64                      ; 2 uses
  %i.dk = sext i32 %i.aw to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph204.i
  %indvars.iv233.i = phi i64 [ %i.dj, %.lr.ph204.i ], [ %indvars.iv.next234.i, %bb.w ] ; 4 uses
  %i.dl = sub nsw i64 %indvars.iv233.i, %i.dj     ; 2 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !44
  %i.do = mul nsw i32 %i.dn, %i.g
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [2 x i8], ptr %i.dh, i64 %i.dp
  %i.dr = getelementptr inbounds [2 x i8], ptr %i.dq, i64 %indvars.iv233.i
  store i16 %i.di, ptr %i.dr, align 2, !tbaa !72
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.dl
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !44
  %i.du = mul nsw i32 %i.dt, %i.g
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [2 x i8], ptr %i.dh, i64 %i.dv
  %i.dx = getelementptr inbounds [2 x i8], ptr %i.dw, i64 %indvars.iv233.i
  store i16 %i.di, ptr %i.dx, align 2, !tbaa !72
  %indvars.iv.next234.i = add nsw i64 %indvars.iv233.i, 1 ; 2 uses
  %i.dy = icmp slt i64 %indvars.iv.next234.i, %i.dk
  br i1 %i.dy, label %bb.w, label %envelope_peak16.exit, !llvm.loop !150

.critedge4.loopexit.i:                            ; preds = %.critedge6.us.i
  %.pre = load i32, ptr %i.a, align 8, !tbaa !131
  br label %._crit_edge213.i

._crit_edge213.i:                                 ; preds = %.lr.ph212.i, %.critedge4.loopexit.i, %.preheader.i
  %5 = phi i32 [ %i.b, %.preheader.i ], [ %.pre, %.critedge4.loopexit.i ], [ %i.b, %.lr.ph212.i ]
  %i.dz = icmp eq i32 %5, 3
  br i1 %i.dz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge213.i
  tail call fastcc void @envelope_instant16(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge213.i
  br i1 %i.cb, label %.lr.ph217.i, label %envelope_peak16.exit

.lr.ph217.i:                                      ; preds = %bb.y
  %i.ea = getelementptr inbounds [8 x i8], ptr %1, i64 %i.d
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !71
  %i.ec = trunc i32 %i.p to i16                   ; 2 uses
  %i.ed = sext i32 %4 to i64                      ; 2 uses
  %i.ee = sext i32 %i.g to i64
  %i.ef = sext i32 %i.ca to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph217.i
  %indvars.iv256.i = phi i64 [ %i.ed, %.lr.ph217.i ], [ %indvars.iv.next257.i, %bb.z ] ; 3 uses
  %i.eg = mul nsw i64 %indvars.iv256.i, %i.ee
  %i.eh = getelementptr inbounds [2 x i8], ptr %i.eb, i64 %i.eg ; 2 uses
  %i.ei = sub nsw i64 %indvars.iv256.i, %i.ed     ; 2 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !44
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [2 x i8], ptr %i.eh, i64 %i.el
  store i16 %i.ec, ptr %i.em, align 2, !tbaa !72
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ei
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !44
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.eh, i64 %i.ep
  store i16 %i.ec, ptr %i.eq, align 2, !tbaa !72
  %indvars.iv.next257.i = add nsw i64 %indvars.iv256.i, 1 ; 2 uses
  %i.er = icmp slt i64 %indvars.iv.next257.i, %i.ef
  br i1 %i.er, label %bb.z, label %envelope_peak16.exit, !llvm.loop !151

envelope_peak16.exit:                             ; preds = %bb.w, %bb.z, %bb.y, %bb.v, %bb.a, %bb.b
  ret void
}

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @envelope_instant(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = sext i32 %3 to i64                       ; 4 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 %i.b
  %i.g = load i8, ptr %i.f, align 1, !tbaa !62    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !104
  %i.j = icmp eq i32 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.l = load i32, ptr %i.k, align 4, !tbaa !132  ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !133  ; 2 uses
  %i.o = sdiv i32 %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.q = load i32, ptr %i.p, align 8, !tbaa !134
  %i.r = sdiv i32 %i.q, %i.n
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.t = load i32, ptr %i.s, align 8, !tbaa !134
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi i32 [ %i.o, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %i.v = phi i32 [ %i.r, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = sext i32 %2 to i64                       ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !44   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.x
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !44 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !105
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %.preheader, label %.preheader86

.preheader86:                                     ; preds = %bb.d
  %i.af = icmp sgt i32 %i.v, 0
  br i1 %i.af, label %.preheader84.lr.ph, label %.loopexit82

.preheader84.lr.ph:                               ; preds = %.preheader86
  %i.ag = add nsw i32 %i.v, %4
  %i.ah = icmp slt i32 %i.z, %i.ac
  %i.ai = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b ; 2 uses
  %i.aj = sext i32 %i.d to i64                    ; 2 uses
  %i.ak = sext i32 %4 to i64                      ; 2 uses
  %i.al = sext i32 %i.ag to i64                   ; 2 uses
  br i1 %i.ah, label %.preheader84.us.preheader, label %.preheader84.preheader

.preheader84.preheader:                           ; preds = %.preheader84.lr.ph
  %i.am = sext i32 %i.ac to i64                   ; 0 uses
  %i.an = sext i32 %i.z to i64                    ; 0 uses
  br label %.preheader84

.preheader84.us.preheader:                        ; preds = %.preheader84.lr.ph
  %i.ao = sext i32 %i.z to i64                    ; 2 uses
  %i.ap = sext i32 %i.ac to i64
  br label %.preheader84.us

.preheader84.us:                                  ; preds = %.preheader84.us.preheader, %.loopexit83.us
  %indvars.iv122 = phi i64 [ %i.ak, %.preheader84.us.preheader ], [ %indvars.iv.next123, %.loopexit83.us ] ; 5 uses
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !71
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next117 to i32
  %exitcond.not = icmp eq i32 %i.ac, %lftr.wideiv
  br i1 %exitcond.not, label %.lr.ph170.preheader, label %bb.f, !llvm.loop !152

bb.f:                                             ; preds = %.preheader84.us, %bb.e
  %indvars.iv116 = phi i64 [ %i.ao, %.preheader84.us ], [ %indvars.iv.next117, %bb.e ] ; 2 uses
  %i.ar = mul nsw i64 %indvars.iv116, %i.aj
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %indvars.iv122
  %i.au = load i8, ptr %i.at, align 1, !tbaa !62
  %.not78.us = icmp eq i8 %i.au, %i.g
  br i1 %.not78.us, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %indvars.iv122
  store i8 -1, ptr %i.av, align 1, !tbaa !62
  br label %.lr.ph170.preheader

.lr.ph170.preheader:                              ; preds = %bb.g, %bb.e
  %i.aw = load ptr, ptr %i.ai, align 8, !tbaa !71
  br label %.lr.ph170

bb.h:                                             ; preds = %.lr.ph170
  %.not79.not.us = icmp sgt i64 %indvars.iv.next120, %i.ao
  br i1 %.not79.not.us, label %.lr.ph170, label %.loopexit83.us, !llvm.loop !153

.lr.ph170:                                        ; preds = %.lr.ph170.preheader, %bb.h
  %indvars.iv119169 = phi i64 [ %indvars.iv.next120, %bb.h ], [ %i.ap, %.lr.ph170.preheader ]
  %indvars.iv.next120 = add nsw i64 %indvars.iv119169, -1 ; 3 uses
  %i.ax = mul nsw i64 %indvars.iv.next120, %i.aj
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %indvars.iv122
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !62
  %.not80.us = icmp eq i8 %i.ba, %i.g
  br i1 %.not80.us, label %bb.h, label %bb.i, !llvm.loop !153

bb.i:                                             ; preds = %.lr.ph170
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 %indvars.iv122
  store i8 -1, ptr %i.bb, align 1, !tbaa !62
  br label %.loopexit83.us

.loopexit83.us:                                   ; preds = %bb.h, %bb.i
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, 1 ; 2 uses
  %i.bc = icmp slt i64 %indvars.iv.next123, %i.al
  br i1 %i.bc, label %.preheader84.us, label %.loopexit82, !llvm.loop !154

.preheader:                                       ; preds = %bb.d
  %i.bd = icmp sgt i32 %i.u, 0
  br i1 %i.bd, label %.lr.ph101, label %.loopexit82

.lr.ph101:                                        ; preds = %.preheader
  %i.be = add nsw i32 %i.u, %4
  %i.bf = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b ; 2 uses
  %i.bg = icmp slt i32 %i.z, %i.ac
  %i.bh = sext i32 %4 to i64                      ; 2 uses
  %i.bi = sext i32 %i.d to i64                    ; 2 uses
  %i.bj = sext i32 %i.be to i64                   ; 2 uses
  br i1 %i.bg, label %.lr.ph.us.preheader, label %.loopexit81.preheader

.loopexit81.preheader:                            ; preds = %.lr.ph101
  %i.bk = sext i32 %i.ac to i64                   ; 0 uses
  %i.bl = sext i32 %i.z to i64                    ; 0 uses
  br label %.loopexit81

.lr.ph.us.preheader:                              ; preds = %.lr.ph101
  %i.bm = sext i32 %i.z to i64                    ; 2 uses
  %i.bn = sext i32 %i.ac to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.loopexit.us
  %indvars.iv139 = phi i64 [ %i.bh, %.lr.ph.us.preheader ], [ %indvars.iv.next140, %.loopexit.us ] ; 2 uses
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !71
  %i.bp = mul nsw i64 %indvars.iv139, %i.bi
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %i.bp ; 4 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next132 = add nsw i64 %indvars.iv131, 1 ; 2 uses
  %lftr.wideiv134 = trunc i64 %indvars.iv.next132 to i32
end_hunk_0
