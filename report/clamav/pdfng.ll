Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pdfng?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@pdf_parse_string:bb.a
bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fh, ptr nonnull align 1 %.2234.lcssa, i64 %i.fe, i1 false)
  %i.fi = getelementptr i8, ptr %i.fh, i64 %i.fd
  %i.fj = getelementptr i8, ptr %i.fi, i64 1
  store i8 0, ptr %i.fj, align 1, !tbaa !14
  %.not287 = icmp eq ptr %6, null
  br i1 %.not287, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fk = trunc i64 %i.fd to i32
  %i.fl = add i32 %i.fk, 1
  br label %.sink.split

bb.ba:                                            ; preds = %bb.aw
  %.not288 = icmp eq ptr %6, null
  br i1 %.not288, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ff) #15
  %i.fn = trunc i64 %i.fm to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.az, %bb.bb
  %.sink426 = phi i32 [ %i.fn, %bb.bb ], [ %i.fl, %bb.az ]
  %.sink = phi i32 [ 1, %bb.bb ], [ 0, %bb.az ]
  %.2.ph = phi ptr [ %i.ff, %bb.bb ], [ %i.fh, %bb.az ]
  store i32 %.sink426, ptr %6, align 8, !tbaa !46
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.fo, align 8, !tbaa !49
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.sink, ptr %i.fp, align 8, !tbaa !50
  br label %bb.bc

bb.bc:                                            ; preds = %.sink.split, %bb.ba, %bb.ay
  %.2 = phi ptr [ %i.fh, %bb.ay ], [ %i.ff, %bb.ba ], [ %.2.ph, %.sink.split ] ; 2 uses
  %.not289 = icmp eq ptr %5, null
  br i1 %.not289, label %._crit_edge.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store ptr %storemerge283.lcssa, ptr %5, align 8, !tbaa !8
  br label %._crit_edge.thread

bb.be:                                            ; preds = %bb.av
  %i.fq = getelementptr inbounds nuw i8, ptr %.2234.lcssa, i64 1 ; 7 uses
  store ptr %i.fq, ptr %i.a, align 8, !tbaa !8
  %i.fr = icmp ult ptr %i.fq, %i.bc
  br i1 %i.fr, label %.lr.ph350, label %.loopexit

.lr.ph350:                                        ; preds = %bb.be, %bb.bg
  %storemerge348 = phi ptr [ %i.fv, %bb.bg ], [ %i.fq, %bb.be ] ; 4 uses
  %i.fs = load i8, ptr %storemerge348, align 1, !tbaa !14
  switch i8 %i.fs, label %bb.bg [
    i8 92, label %bb.bf
    i8 41, label %.thread
  ]

bb.bf:                                            ; preds = %.lr.ph350
  %i.ft = getelementptr inbounds nuw i8, ptr %storemerge348, i64 1
  br label %bb.bg

.thread:                                          ; preds = %.lr.ph350
  %i.fu = getelementptr inbounds i8, ptr %storemerge348, i64 -1 ; 2 uses
  store ptr %i.fu, ptr %i.a, align 8, !tbaa !8
  br label %.loopexit

bb.bg:                                            ; preds = %bb.bf, %.lr.ph350
  %storemerge347 = phi ptr [ %i.ft, %bb.bf ], [ %storemerge348, %.lr.ph350 ]
  %i.fv = getelementptr inbounds nuw i8, ptr %storemerge347, i64 1 ; 4 uses
  store ptr %i.fv, ptr %i.a, align 8, !tbaa !8
  %i.fw = icmp ult ptr %i.fv, %i.bc
  br i1 %i.fw, label %.lr.ph350, label %.loopexit

.loopexit:                                        ; preds = %bb.bg, %bb.be, %.thread
  %i.fx = phi ptr [ %i.fu, %.thread ], [ %i.fq, %bb.be ], [ %i.fv, %bb.bg ] ; 3 uses
  %.not277 = icmp ult ptr %i.fx, %i.bc
  br i1 %.not277, label %bb.bh, label %._crit_edge.thread

bb.bh:                                            ; preds = %.loopexit
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fq to i64
  %i.ga = sub i64 %i.fy, %i.fz                    ; 2 uses
  %i.gb = add i64 %i.ga, 1                        ; 4 uses
  %i.gc = call ptr @pdf_finalize_string(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.fq, i64 noundef %i.gb) ; 4 uses
  %.not278 = icmp eq ptr %i.gc, null
  br i1 %.not278, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.gd = add i64 %i.ga, 2
  %i.ge = call ptr @cli_max_calloc(i64 noundef 1, i64 noundef %i.gd) #13 ; 5 uses
  %.not279 = icmp eq ptr %i.ge, null
  br i1 %.not279, label %._crit_edge.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ge, ptr nonnull align 1 %i.fq, i64 %i.gb, i1 false)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gb
  store i8 0, ptr %i.gf, align 1, !tbaa !14
  %.not280 = icmp eq ptr %6, null
  br i1 %.not280, label %bb.bm, label %.sink.split427

bb.bk:                                            ; preds = %bb.bh
  %.not281 = icmp eq ptr %6, null
  br i1 %.not281, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gc) #15
  br label %.sink.split427

.sink.split427:                                   ; preds = %bb.bj, %bb.bl
  %.sink432 = phi i64 [ %i.gg, %bb.bl ], [ %i.gb, %bb.bj ]
  %.sink428 = phi i32 [ 1, %bb.bl ], [ 0, %bb.bj ]
  %.3.ph = phi ptr [ %i.gc, %bb.bl ], [ %i.ge, %bb.bj ]
  %i.gh = trunc i64 %.sink432 to i32
  store i32 %i.gh, ptr %6, align 8, !tbaa !46
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.gi, align 8, !tbaa !49
  %i.gj = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.sink428, ptr %i.gj, align 8, !tbaa !50
  br label %bb.bm

bb.bm:                                            ; preds = %.sink.split427, %bb.bk, %bb.bj
  %.3 = phi ptr [ %i.ge, %bb.bj ], [ %i.gc, %bb.bk ], [ %.3.ph, %.sink.split427 ] ; 2 uses
  %.not282 = icmp eq ptr %5, null
  br i1 %.not282, label %._crit_edge.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store ptr %i.fx, ptr %5, align 8, !tbaa !8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph453, %.lr.ph457, %.preheader318, %bb.bm, %bb.bn, %bb.bi, %.loopexit, %bb.av, %bb.bc, %bb.bd, %bb.ax, %.critedge4, %.critedge, %._crit_edge, %bb.i, %bb.au, %bb.g, %bb.e, %bb.b
  %.1236 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.i ], [ null, %._crit_edge ], [ %.0235, %bb.au ], [ null, %.critedge ], [ null, %bb.ax ], [ null, %.critedge4 ], [ %.2, %bb.bc ], [ null, %bb.av ], [ null, %bb.bi ], [ null, %.loopexit ], [ %.2, %bb.bd ], [ %.3, %bb.bn ], [ %.3, %bb.bm ], [ null, %.lr.ph457 ], [ null, %.preheader318 ], [ null, %.lr.ph453 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.1236
}

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

declare ptr @find_obj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @pdf_parseobj(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pdf_extract_obj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #8

declare i32 @cli_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #9

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define noundef ptr @pdf_parse_dict(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 16 uses
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.b, %i.c
  %i.d = icmp ne ptr %3, null
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.b, label %bb.by

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 11 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31
  %i.g = icmp ugt i32 %i.f, 25
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #13
  br label %bb.by

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = load i32, ptr %1, align 8, !tbaa !39
  %i.k = zext i32 %i.j to i64
  %. = select i1 %.not, ptr %0, ptr %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %., i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k ; 2 uses
  %i.o = icmp ult ptr %3, %i.n
  br i1 %i.o, label %bb.by, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = ptrtoint ptr %3 to i64
  %i.q = ptrtoint ptr %i.n to i64                 ; 4 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = add i64 %2, -2                           ; 6 uses
  %.not267 = icmp ult i64 %i.r, %i.s
  br i1 %.not267, label %bb.f, label %bb.by

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %3, align 1, !tbaa !14
  %.not268 = icmp eq i8 %i.t, 60
  br i1 %.not268, label %bb.g, label %bb.by

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !14
  %.not269 = icmp eq i8 %i.v, 60
  br i1 %.not269, label %.preheader338, label %bb.by

.preheader338:                                    ; preds = %bb.g
  %i.w = icmp ult i64 %i.r, %2
  br i1 %i.w, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader338, %.thread451
  %i.x = phi i64 [ %i.am, %.thread451 ], [ %i.r, %.preheader338 ] ; 3 uses
  %.0224354 = phi i32 [ %.4, %.thread451 ], [ 0, %.preheader338 ] ; 8 uses
  %.0228353 = phi i32 [ %.3231, %.thread451 ], [ 0, %.preheader338 ]
  %.0232352.idx = phi i64 [ %.0232352.add, %.thread451 ], [ 0, %.preheader338 ] ; 3 uses
  %.0232352.ptr = getelementptr inbounds nuw i8, ptr %3, i64 %.0232352.idx ; 4 uses
  %.not270 = icmp eq i32 %.0228353, 0
  %i.y = load i8, ptr %.0232352.ptr, align 1, !tbaa !14 ; 2 uses
  br i1 %.not270, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  switch i8 %i.y, label %bb.k [
    i8 92, label %.thread451
    i8 41, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %.thread451

bb.j:                                             ; preds = %.lr.ph
  switch i8 %i.y, label %.thread451 [
    i8 40, label %bb.k
    i8 60, label %bb.l
    i8 62, label %bb.n
  ]

bb.k:                                             ; preds = %bb.h, %bb.j
  br label %.thread451

bb.l:                                             ; preds = %bb.j
  %.not272 = icmp ugt i64 %i.x, %i.s
  br i1 %.not272, label %.thread451, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %.0232352.ptr, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14
  %i.ab = icmp eq i8 %i.aa, 60
  %i.ac = zext i1 %i.ab to i32
  %spec.select = add i32 %.0224354, %i.ac
  br label %.thread451

bb.n:                                             ; preds = %bb.j
  %.not271 = icmp ugt i64 %i.x, %i.s
  br i1 %.not271, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %.0232352.ptr, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !14
  %i.af = icmp eq i8 %i.ae, 62
  %i.ag = sext i1 %i.af to i32
  %spec.select292 = add i32 %.0224354, %i.ag
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.3227 = phi i32 [ %spec.select292, %bb.o ], [ %.0224354, %bb.n ] ; 3 uses
  %.not273.not = icmp ugt i64 %i.x, %i.s
  br i1 %.not273.not, label %.thread451, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = getelementptr inbounds nuw i8, ptr %.0232352.ptr, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !14
  %i.aj = icmp eq i8 %i.ai, 62
  %i.ak = icmp eq i32 %.3227, 0
  %or.cond5 = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond5, label %.thread, label %.thread451

.thread451:                                       ; preds = %bb.p, %bb.q, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.0219459.sink = phi i64 [ 1, %bb.j ], [ 2, %bb.h ], [ 1, %bb.i ], [ 2, %bb.p ], [ 2, %bb.q ], [ 2, %bb.m ], [ 2, %bb.l ], [ 1, %bb.k ]
  %.3231 = phi i32 [ 0, %bb.j ], [ 1, %bb.h ], [ 0, %bb.i ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.m ], [ 0, %bb.l ], [ 1, %bb.k ]
  %.4 = phi i32 [ %.0224354, %bb.j ], [ %.0224354, %bb.h ], [ %.0224354, %bb.i ], [ %.3227, %bb.p ], [ %.3227, %bb.q ], [ %spec.select, %bb.m ], [ %.0224354, %bb.l ], [ %.0224354, %bb.k ]
  %.0232352.add = add nuw nsw i64 %.0232352.idx, %.0219459.sink ; 3 uses
  %.1233.ptr = getelementptr inbounds nuw i8, ptr %3, i64 %.0232352.add
  %i.al = ptrtoint ptr %.1233.ptr to i64
  %i.am = sub i64 %i.al, %i.q                     ; 2 uses
  %i.an = icmp ult i64 %i.am, %2
  br i1 %i.an, label %.lr.ph, label %.thread

.thread:                                          ; preds = %.thread451, %bb.q, %.preheader338
  %.0232.lcssa.idx = phi i64 [ 0, %.preheader338 ], [ %.0232352.idx, %bb.q ], [ %.0232352.add, %.thread451 ] ; 2 uses
  %.0232.lcssa.ptr = getelementptr inbounds nuw i8, ptr %3, i64 %.0232.lcssa.idx ; 15 uses
  %i.ao = ptrtoint ptr %.0232.lcssa.ptr to i64    ; 3 uses
  %i.ap = sub i64 %i.ao, %i.q                     ; 5 uses
  %.not274 = icmp ult i64 %i.ap, %i.s
  br i1 %.not274, label %bb.r, label %bb.by

bb.r:                                             ; preds = %.thread
  %i.aq = load i8, ptr %.0232.lcssa.ptr, align 1, !tbaa !14
  %.not275 = icmp eq i8 %i.aq, 62
  br i1 %.not275, label %bb.s, label %bb.by

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %.0232.lcssa.ptr, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !14
  %.not276 = icmp eq i8 %i.as, 62
  br i1 %.not276, label %bb.t, label %bb.by

bb.t:                                             ; preds = %bb.s
  %i.at = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #16 ; 7 uses
  %.not277 = icmp eq ptr %i.at, null
  br i1 %.not277, label %bb.by, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = icmp sgt i64 %.0232.lcssa.idx, 2
  br i1 %i.au, label %.lr.ph394, label %.loopexit337

.lr.ph394:                                        ; preds = %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.aw = tail call ptr @__ctype_b_loc() #14      ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.0232.lcssa.ptr, i64 -3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph394, %bb.bw
  %.0241393 = phi ptr [ %i.av, %.lr.ph394 ], [ %.3244321, %bb.bw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !15 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.x
  %.1242357 = phi ptr [ %.0241393, %bb.v ], [ %i.bf, %bb.x ] ; 3 uses
  %i.ba = load i8, ptr %.1242357, align 1, !tbaa !14
  %i.bb = sext i8 %i.ba to i64
  %i.bc = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !17
  %i.be = and i16 %i.bd, 8192
  %.not278 = icmp eq i16 %i.be, 0
  br i1 %.not278, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %.1242357, i64 1 ; 3 uses
  %i.bg = icmp ult ptr %i.bf, %.0232.lcssa.ptr
  br i1 %i.bg, label %bb.w, label %.critedge

.critedge:                                        ; preds = %bb.x, %bb.w
  %.1242.lcssa = phi ptr [ %i.bf, %bb.x ], [ %.1242357, %bb.w ] ; 8 uses
  %.1242.lcssa418 = ptrtoaddr ptr %.1242.lcssa to i64
  %i.bh = icmp eq ptr %.1242.lcssa, %.0232.lcssa.ptr
  br i1 %i.bh, label %.thread326, label %.preheader336

.preheader336:                                    ; preds = %.critedge
  %storemerge358 = getelementptr inbounds nuw i8, ptr %.1242.lcssa, i64 1 ; 4 uses
  store ptr %storemerge358, ptr %i.a, align 8, !tbaa !8
  %i.bi = icmp ult ptr %storemerge358, %.0232.lcssa.ptr
  br i1 %i.bi, label %.lr.ph361, label %.critedge7

.lr.ph361:                                        ; preds = %.preheader336
  %scevgep = getelementptr i8, ptr %.1242.lcssa, i64 %i.ao
  %i.bj = sub i64 0, %.1242.lcssa418
  %scevgep419 = getelementptr i8, ptr %scevgep, i64 %i.bj
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph361, %bb.ad
  %storemerge360 = phi ptr [ %storemerge358, %.lr.ph361 ], [ %storemerge, %bb.ad ] ; 12 uses
  %.0213359 = phi i32 [ 0, %.lr.ph361 ], [ %.1.ph, %bb.ad ] ; 11 uses
  %i.bk = load i8, ptr %storemerge360, align 1, !tbaa !14 ; 2 uses
  %i.bl = sext i8 %i.bk to i64
  %i.bm = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !17
  %i.bo = and i16 %i.bn, 8192
  %.not279 = icmp eq i16 %i.bo, 0
  br i1 %.not279, label %bb.z, label %.critedge7.loopexit

bb.z:                                             ; preds = %bb.y
  switch i8 %i.bk, label %bb.ad [
    i8 60, label %.critedge7.loopexit
    i8 91, label %.critedge7.loopexit
    i8 40, label %.critedge7.loopexit
    i8 47, label %.critedge7.loopexit
    i8 13, label %.critedge7.loopexit
    i8 10, label %.critedge7.loopexit
    i8 32, label %.critedge7.loopexit
    i8 9, label %.critedge7.loopexit
    i8 35, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  %i.bp = add i32 %.0213359, 1
  %i.bq = icmp ugt ptr %storemerge360, %i.ax
  br i1 %i.bq, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %.not280 = icmp eq ptr %4, null
  br i1 %.not280, label %.thread330, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %.0232.lcssa.ptr, ptr %4, align 8, !tbaa !8
  br label %.thread330

.thread330:                                       ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.by

bb.ad:                                            ; preds = %bb.aa, %bb.z
  %.1.ph = phi i32 [ %i.bp, %bb.aa ], [ %.0213359, %bb.z ] ; 2 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge360, i64 1 ; 4 uses
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !8
  %exitcond.not = icmp eq ptr %storemerge, %scevgep419
  br i1 %exitcond.not, label %.critedge7.loopexit, label %bb.y

.critedge7.loopexit:                              ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.ad, %bb.y
  %i.br = phi ptr [ %storemerge360, %bb.y ], [ %storemerge, %bb.ad ], [ %storemerge360, %bb.z ], [ %storemerge360, %bb.z ], [ %storemerge360, %bb.z ], [ %storemerge360, %bb.z ], [ %storemerge360, %bb.z ], [ %storemerge360, %bb.z ], [ %storemerge360, %bb.z ], [ %storemerge360, %bb.z ]
  %.0213.lcssa.ph = phi i32 [ %.0213359, %bb.y ], [ %.1.ph, %bb.ad ], [ %.0213359, %bb.z ], [ %.0213359, %bb.z ], [ %.0213359, %bb.z ], [ %.0213359, %bb.z ], [ %.0213359, %bb.z ], [ %.0213359, %bb.z ], [ %.0213359, %bb.z ], [ %.0213359, %bb.z ]
  %i.bs = icmp eq i32 %.0213.lcssa.ph, 0
  br label %.critedge7

.critedge7:                                       ; preds = %.critedge7.loopexit, %.preheader336
  %i.bt = phi ptr [ %storemerge358, %.preheader336 ], [ %i.br, %.critedge7.loopexit ] ; 6 uses
  %.0213.lcssa = phi i1 [ true, %.preheader336 ], [ %i.bs, %.critedge7.loopexit ]
  %i.bu = icmp eq ptr %i.bt, %.0232.lcssa.ptr
  br i1 %i.bu, label %.thread326, label %bb.ae

bb.ae:                                            ; preds = %.critedge7
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %.1242.lcssa to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = add nsw i64 %i.bx, 2
  %i.bz = call ptr @cli_max_calloc(i64 noundef %i.by, i64 noundef 1) #13 ; 10 uses
  %.not282 = icmp eq ptr %i.bz, null
  br i1 %.not282, label %.thread326, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.0213.lcssa, label %bb.ag, label %.preheader

.preheader:                                       ; preds = %bb.af
  %i.ca = icmp ult ptr %.1242.lcssa, %i.bt
  br i1 %i.ca, label %.lr.ph383, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.cb = call ptr @strncpy(ptr noundef nonnull %i.bz, ptr noundef nonnull %.1242.lcssa, i64 noundef %i.bx) #13 ; 0 uses
  %i.cc = getelementptr inbounds i8, ptr %i.bz, i64 %i.bx
  store i8 0, ptr %i.cc, align 1, !tbaa !14
  br label %.loopexit

.lr.ph383:                                        ; preds = %.preheader, %bb.aj
  %i.cd = phi ptr [ %i.cn, %bb.aj ], [ %i.bt, %.preheader ]
  %.0212382 = phi i32 [ %i.cp, %bb.aj ], [ 0, %.preheader ] ; 3 uses
  %.0216381 = phi ptr [ %i.co, %bb.aj ], [ %.1242.lcssa, %.preheader ] ; 4 uses
  %i.ce = load i8, ptr %.0216381, align 1, !tbaa !14 ; 2 uses
  %i.cf = icmp eq i8 %i.ce, 35
  br i1 %i.cf, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph383
  %i.cg = getelementptr inbounds nuw i8, ptr %.0216381, i64 1
  %i.ch = zext i32 %.0212382 to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ch
  %i.cj = call i32 @cli_hex2str_to(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ci, i64 noundef 2) #13 ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0216381, i64 2
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph383
  %i.cl = zext i32 %.0212382 to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cl
  store i8 %i.ce, ptr %i.cm, align 1, !tbaa !14
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.cn = phi ptr [ %.pre, %bb.ah ], [ %i.cd, %bb.ai ] ; 3 uses
  %.1217 = phi ptr [ %i.ck, %bb.ah ], [ %.0216381, %bb.ai ]
  %i.co = getelementptr inbounds nuw i8, ptr %.1217, i64 1 ; 2 uses
  %i.cp = add i32 %.0212382, 1
  %i.cq = icmp ult ptr %i.co, %i.cn
  br i1 %i.cq, label %.lr.ph383, label %.loopexit

.loopexit:                                        ; preds = %bb.aj, %.preheader, %bb.ag
  %i.cr = phi ptr [ %i.bt, %bb.ag ], [ %i.bt, %.preheader ], [ %i.cn, %bb.aj ] ; 5 uses
  %i.cs = icmp ult ptr %i.cr, %.0232.lcssa.ptr
  br i1 %i.cs, label %.lr.ph385, label %.critedge9

.lr.ph385:                                        ; preds = %.loopexit
  %i.ct = ptrtoaddr ptr %i.cr to i64
  %i.cu = load ptr, ptr %i.aw, align 8, !tbaa !15
  %scevgep420 = getelementptr i8, ptr %i.cr, i64 %i.ao
  %i.cv = sub i64 0, %i.ct
  %scevgep421 = getelementptr i8, ptr %scevgep420, i64 %i.cv ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph385, %bb.al
  %.2243384 = phi ptr [ %i.cr, %.lr.ph385 ], [ %i.db, %bb.al ] ; 3 uses
  %i.cw = load i8, ptr %.2243384, align 1, !tbaa !14
  %i.cx = sext i8 %i.cw to i64
  %i.cy = getelementptr inbounds [2 x i8], ptr %i.cu, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !17
  %i.da = and i16 %i.cz, 8192
  %.not283 = icmp eq i16 %i.da, 0
  br i1 %.not283, label %.critedge9, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.db = getelementptr inbounds nuw i8, ptr %.2243384, i64 1 ; 2 uses
  %exitcond422.not = icmp eq ptr %i.db, %scevgep421
  br i1 %exitcond422.not, label %.critedge9, label %bb.ak

.critedge9:                                       ; preds = %bb.ak, %bb.al, %.loopexit
  %.2243.lcssa = phi ptr [ %i.cr, %.loopexit ], [ %scevgep421, %bb.al ], [ %.2243384, %bb.ak ] ; 13 uses
  %i.dc = icmp eq ptr %.2243.lcssa, %.0232.lcssa.ptr
  br i1 %i.dc, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.critedge9
  call void @free(ptr noundef %i.bz) #13
  br label %.thread326

bb.an:                                            ; preds = %.critedge9
  %i.dd = load i8, ptr %.2243.lcssa, align 1, !tbaa !14 ; 2 uses
  switch i8 %i.dd, label %bb.au [
    i8 40, label %bb.ao
    i8 91, label %bb.ap
    i8 60, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.an
  %i.de = load i32, ptr %i.e, align 4, !tbaa !31
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.e, align 4, !tbaa !31
  %i.dg = call ptr @pdf_parse_string(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.2243.lcssa, i64 noundef %i.ap, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null)
  br label %.sink.split

bb.ap:                                            ; preds = %bb.an
  %i.dh = load i32, ptr %i.e, align 4, !tbaa !31
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr %i.e, align 4, !tbaa !31
  %i.dj = call ptr @pdf_parse_array(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.ap, ptr noundef nonnull %.2243.lcssa, ptr noundef nonnull %i.a)
  br label %.sink.split

bb.aq:                                            ; preds = %bb.an
  %i.dk = ptrtoint ptr %.2243.lcssa to i64
  %i.dl = sub i64 %i.dk, %i.q
  %i.dm = icmp ult i64 %i.dl, %i.s
  br i1 %i.dm, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.dn = getelementptr inbounds nuw i8, ptr %.2243.lcssa, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !14
  %i.dp = icmp eq i8 %i.do, 60
  br i1 %i.dp, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dq = load i32, ptr %i.e, align 4, !tbaa !31
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr %i.e, align 4, !tbaa !31
  %i.ds = call ptr @pdf_parse_dict(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.ap, ptr noundef nonnull %.2243.lcssa, ptr noundef nonnull %i.a)
  br label %.sink.split

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.dt = load i32, ptr %i.e, align 4, !tbaa !31
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.e, align 4, !tbaa !31
  %i.dv = call ptr @pdf_parse_string(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.2243.lcssa, i64 noundef %i.ap, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null)
  br label %.sink.split

bb.au:                                            ; preds = %bb.an
  %i.dw = icmp eq i8 %i.dd, 47
  %.idx = zext i1 %i.dw to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %.2243.lcssa, i64 %.idx ; 3 uses
  store ptr %i.dx, ptr %i.a, align 8, !tbaa !8
  %i.dy = icmp ult ptr %i.dx, %.0232.lcssa.ptr
  br i1 %i.dy, label %.lr.ph390, label %.thread312

.lr.ph390:                                        ; preds = %bb.au, %bb.av
  %storemerge335389 = phi ptr [ %i.ea, %bb.av ], [ %i.dx, %bb.au ] ; 2 uses
  %i.dz = load i8, ptr %storemerge335389, align 1, !tbaa !14
  switch i8 %i.dz, label %bb.av [
    i8 62, label %.thread312
    i8 47, label %.thread312
  ]

bb.av:                                            ; preds = %.lr.ph390
  %i.ea = getelementptr inbounds nuw i8, ptr %storemerge335389, i64 1 ; 3 uses
  store ptr %i.ea, ptr %i.a, align 8, !tbaa !8
  %i.eb = icmp ult ptr %i.ea, %.0232.lcssa.ptr
  br i1 %i.eb, label %.lr.ph390, label %.thread312

.thread312:                                       ; preds = %bb.av, %.lr.ph390, %.lr.ph390, %bb.au
  %i.ec = call i32 @is_object_reference(ptr noundef nonnull %.2243.lcssa, ptr noundef nonnull %i.a, ptr noundef null) ; 0 uses
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !8   ; 3 uses
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %.2243.lcssa to i64
  %i.eg = sub i64 %i.ee, %i.ef                    ; 3 uses
  %i.eh = add nsw i64 %i.eg, 2
  %i.ei = call ptr @cli_max_calloc(i64 noundef %i.eh, i64 noundef 1) #13 ; 4 uses
  %.not285 = icmp eq ptr %i.ei, null
  br i1 %.not285, label %bb.aw, label %.thread314

.thread314:                                       ; preds = %.thread312
  %i.ej = call ptr @strncpy(ptr noundef nonnull %i.ei, ptr noundef nonnull %.2243.lcssa, i64 noundef %i.eg) #13 ; 0 uses
  %i.ek = getelementptr inbounds i8, ptr %i.ei, i64 %i.eg
  store i8 0, ptr %i.ek, align 1, !tbaa !14
  %i.el = load i8, ptr %i.ed, align 1, !tbaa !14
  %.not286 = icmp ne i8 %i.el, 47
  %spec.select293.idx = zext i1 %.not286 to i64
  %spec.select293 = getelementptr inbounds nuw i8, ptr %i.ed, i64 %spec.select293.idx
  br label %bb.ay

.sink.split:                                      ; preds = %bb.ao, %bb.ap, %bb.as, %bb.at
  %.sink482 = phi i64 [ 2, %bb.at ], [ 2, %bb.as ], [ 1, %bb.ap ], [ 2, %bb.ao ]
  %.0218.ph = phi ptr [ %i.dv, %bb.at ], [ null, %bb.as ], [ null, %bb.ap ], [ %i.dg, %bb.ao ]
  %.0215.ph = phi ptr [ null, %bb.at ], [ %i.ds, %bb.as ], [ null, %bb.ap ], [ null, %bb.ao ]
  %.0214.ph = phi ptr [ null, %bb.at ], [ null, %bb.as ], [ %i.dj, %bb.ap ], [ null, %bb.ao ]
  %i.em = load i32, ptr %i.e, align 4, !tbaa !31
  %i.en = add i32 %i.em, -1
  store i32 %i.en, ptr %i.e, align 4, !tbaa !31
  %i.eo = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sink482
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split, %.thread312
  %.3244 = phi ptr [ %.2243.lcssa, %.thread312 ], [ %i.ep, %.sink.split ]
  %.0218 = phi ptr [ null, %.thread312 ], [ %.0218.ph, %.sink.split ] ; 2 uses
  %.0215 = phi ptr [ null, %.thread312 ], [ %.0215.ph, %.sink.split ] ; 2 uses
  %.0214 = phi ptr [ null, %.thread312 ], [ %.0214.ph, %.sink.split ] ; 2 uses
  %i.eq = icmp ne ptr %.0218, null                ; 2 uses
  %i.er = icmp ne ptr %.0215, null                ; 2 uses
  %or.cond11 = or i1 %i.eq, %i.er
  %i.es = icmp ne ptr %.0214, null                ; 2 uses
  %or.cond13 = or i1 %or.cond11, %i.es
  br i1 %or.cond13, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef %i.bz) #13
  br label %.thread326

bb.ay:                                            ; preds = %.thread314, %bb.aw
  %i.et = phi i1 [ false, %.thread314 ], [ %i.es, %bb.aw ] ; 3 uses
  %i.eu = phi i1 [ false, %.thread314 ], [ %i.er, %bb.aw ] ; 3 uses
  %i.ev = phi i1 [ true, %.thread314 ], [ %i.eq, %bb.aw ] ; 3 uses
  %.0214324 = phi ptr [ null, %.thread314 ], [ %.0214, %bb.aw ] ; 3 uses
  %.0215323 = phi ptr [ null, %.thread314 ], [ %.0215, %bb.aw ] ; 3 uses
  %.0218322 = phi ptr [ %i.ei, %.thread314 ], [ %.0218, %bb.aw ] ; 4 uses
  %.3244321 = phi ptr [ %spec.select293, %.thread314 ], [ %.3244, %bb.aw ] ; 2 uses
  %i.ew = load ptr, ptr %i.at, align 8, !tbaa !51
  %.not287 = icmp eq ptr %i.ew, null
  %i.ex = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #16 ; 13 uses
  br i1 %.not287, label %bb.az, label %bb.bg

bb.az:                                            ; preds = %bb.ay
  store ptr %i.ex, ptr %i.ay, align 8, !tbaa !54
  store ptr %i.ex, ptr %i.at, align 8, !tbaa !51
  %.not288 = icmp eq ptr %i.ex, null
  br i1 %.not288, label %bb.ba, label %bb.bq

bb.ba:                                            ; preds = %bb.az
  call void @free(ptr noundef %i.bz) #13
  br i1 %i.eu, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @pdf_free_dict(ptr noundef nonnull %.0215323)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  br i1 %i.ev, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef %.0218322) #13
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  br i1 %i.et, label %bb.bf, label %.thread326

bb.bf:                                            ; preds = %bb.be
  call void @pdf_free_array(ptr noundef nonnull %.0214324)
  br label %.thread326

bb.bg:                                            ; preds = %bb.ay
  %.not289 = icmp eq ptr %i.ex, null
  br i1 %.not289, label %bb.bh, label %bb.bn

bb.bh:                                            ; preds = %bb.bg
  call void @free(ptr noundef %i.bz) #13
  br i1 %i.eu, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void @pdf_free_dict(ptr noundef nonnull %.0215323)
  br label %bb.bj

end_hunk_0
