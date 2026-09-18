Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/nal?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @ff_nal_find_startcode(ptr noundef %0, ptr nofree noundef readonly captures(address, ret: address, provenance) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 3
  %2 = sub nuw nsw i64 4, %i.c
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.d = getelementptr inbounds i8, ptr %1, i64 -3 ; 3 uses
  %i.e = icmp ult ptr %0, %i.d
  br i1 %i.e, label %.lr.ph.i.a, label %._crit_edge.i

.lr.ph.i.a:                                       ; preds = %bb.a, %bb.d
  %.04356.i = phi ptr [ %i.n, %bb.d ], [ %0, %bb.a ] ; 5 uses
  %i.f = load i8, ptr %.04356.i, align 1, !tbaa !11
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i.a
  %i.h = getelementptr inbounds nuw i8, ptr %.04356.i, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.04356.i, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = icmp eq i8 %i.l, 1
  br i1 %i.m, label %nal_find_startcode_internal.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i.a
  %i.n = getelementptr inbounds nuw i8, ptr %.04356.i, i64 1 ; 4 uses
  %i.o = icmp ult ptr %i.n, %3
  %i.p = icmp ult ptr %i.n, %i.d
  %i.q = and i1 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.a, label %._crit_edge.i, !llvm.loop !20

._crit_edge.i:                                    ; preds = %bb.d, %bb.a
  %.043.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.n, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 -6 ; 2 uses
  %i.s = icmp ult ptr %.043.lcssa.i, %i.r
  br i1 %i.s, label %.lr.ph68.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.n, %._crit_edge.i
  %.1.lcssa.i = phi ptr [ %.043.lcssa.i, %._crit_edge.i ], [ %i.ax, %bb.n ] ; 4 uses
  %i.t = icmp ult ptr %.1.lcssa.i, %i.d
  br i1 %i.t, label %.lr.ph71.preheader.i, label %nal_find_startcode_internal.exit.thread

.lr.ph71.preheader.i:                             ; preds = %.preheader.i
  %.1.lcssa83.i = ptrtoaddr ptr %.1.lcssa.i to i64
  %i.u = add i64 %i.a, -3
  %i.v = sub i64 %i.u, %.1.lcssa83.i
  %scevgep.i = getelementptr i8, ptr %.1.lcssa.i, i64 %i.v
  br label %.lr.ph71.i

.lr.ph68.i:                                       ; preds = %._crit_edge.i, %bb.n
  %.166.i = phi ptr [ %i.ax, %bb.n ], [ %.043.lcssa.i, %._crit_edge.i ] ; 10 uses
  %i.w = load i32, ptr %.166.i, align 4           ; 6 uses
  %i.x = sub i32 16843008, %i.w
  %i.y = or i32 %i.x, %i.w
  %i.z = and i32 %i.y, -2139062144
  %.not.i = icmp eq i32 %i.z, -2139062144
  %i.aa = lshr i32 %i.w, 16
  %i.ab = trunc i32 %i.aa to i8                   ; 3 uses
  %i.ac = lshr i32 %i.w, 24                       ; 2 uses
  br i1 %.not.i, label %bb.n, label %bb.e

bb.e:                                             ; preds = %.lr.ph68.i
  %i.ad = and i32 %i.w, 65280
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.af = and i32 %i.w, 255
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = icmp eq i8 %i.ab, 1
  %or.cond.i = and i1 %i.ag, %i.ah
  br i1 %or.cond.i, label %nal_find_startcode_internal.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp eq i8 %i.ab, 0
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %trunc = trunc nuw i32 %i.ac to i8
  switch i8 %trunc, label %bb.n [
    i8 1, label %.thread.loopexit94.split.loop.exit.i
    i8 0, label %.thread93.i
  ]

bb.i:                                             ; preds = %bb.g, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.166.i, i64 3 ; 2 uses
  %i.ak = icmp eq i32 %i.ac, 0
  br i1 %i.ak, label %bb.j, label %bb.n

.thread93.i:                                      ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.166.i, i64 3
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = icmp eq i8 %i.ab, 0
  br i1 %i.am, label %bb.k, label %._crit_edge84.i

._crit_edge84.i:                                  ; preds = %bb.j
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.166.i, i64 4
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 4, !tbaa !11
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %.thread93.i
  %i.an = phi ptr [ %i.al, %.thread93.i ], [ %i.aj, %bb.j ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.166.i, i64 4
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !11  ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 1
  br i1 %i.aq, label %nal_find_startcode_internal.exit.loopexit12.split.loop.exit19, label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge84.i
  %i.ar = phi ptr [ %i.aj, %._crit_edge84.i ], [ %i.an, %bb.k ]
  %i.as = phi i8 [ %.pre.i, %._crit_edge84.i ], [ %i.ap, %bb.k ]
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %.166.i, i64 5
  %i.av = load i8, ptr %i.au, align 1, !tbaa !11
  %i.aw = icmp eq i8 %i.av, 1
  br i1 %i.aw, label %nal_find_startcode_internal.exit, label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m, %bb.l, %bb.i, %.lr.ph68.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.166.i, i64 4 ; 3 uses
  %i.ay = icmp ult ptr %i.ax, %i.r
  br i1 %i.ay, label %.lr.ph68.i, label %.preheader.i, !llvm.loop !21

.lr.ph71.i:                                       ; preds = %bb.q, %.lr.ph71.preheader.i
  %.270.i = phi ptr [ %i.bh, %bb.q ], [ %.1.lcssa.i, %.lr.ph71.preheader.i ] ; 5 uses
  %i.az = load i8, ptr %.270.i, align 1, !tbaa !11
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.lr.ph71.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.270.i, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !11
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %.270.i, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !11
  %i.bg = icmp eq i8 %i.bf, 1
  br i1 %i.bg, label %nal_find_startcode_internal.exit, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.lr.ph71.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.270.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.bh, %scevgep.i
  br i1 %exitcond.not.i, label %nal_find_startcode_internal.exit.thread, label %.lr.ph71.i, !llvm.loop !22

.thread.loopexit94.split.loop.exit.i:             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %.166.i, i64 1
  br label %nal_find_startcode_internal.exit

nal_find_startcode_internal.exit.loopexit12.split.loop.exit19: ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %.166.i, i64 2
  br label %nal_find_startcode_internal.exit

nal_find_startcode_internal.exit:                 ; preds = %bb.c, %bb.m, %bb.f, %bb.p, %nal_find_startcode_internal.exit.loopexit12.split.loop.exit19, %.thread.loopexit94.split.loop.exit.i
  %.246.i = phi ptr [ %i.bj, %nal_find_startcode_internal.exit.loopexit12.split.loop.exit19 ], [ %i.bi, %.thread.loopexit94.split.loop.exit.i ], [ %.270.i, %bb.p ], [ %.166.i, %bb.f ], [ %i.ar, %bb.m ], [ %.04356.i, %bb.c ] ; 5 uses
  %i.bk = icmp ult ptr %0, %.246.i
  %i.bl = icmp ult ptr %.246.i, %1
  %or.cond = and i1 %i.bk, %i.bl
  br i1 %or.cond, label %bb.r, label %nal_find_startcode_internal.exit.thread

bb.r:                                             ; preds = %nal_find_startcode_internal.exit
  %i.bm = getelementptr inbounds i8, ptr %.246.i, i64 -1 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !11
  %.not = icmp eq i8 %i.bn, 0
  %spec.select = select i1 %.not, ptr %i.bm, ptr %.246.i
  br label %nal_find_startcode_internal.exit.thread

nal_find_startcode_internal.exit.thread:          ; preds = %bb.q, %.preheader.i, %bb.r, %nal_find_startcode_internal.exit
  %.0 = phi ptr [ %spec.select, %bb.r ], [ %.246.i, %nal_find_startcode_internal.exit ], [ %1, %.preheader.i ], [ %1, %bb.q ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @ff_nal_parse_units(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @nal_parse_units(ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @nal_parse_units(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr inbounds i8, ptr %2, i64 %i.a ; 9 uses
  %i.c = tail call ptr @ff_nal_find_startcode(ptr noundef %2, ptr noundef %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %.not60 = icmp eq ptr %0, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = ptrtoint ptr %2 to i64
  br i1 %.not60, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %.critedge63.us
  %.051.us = phi ptr [ %i.l, %.critedge63.us ], [ %i.c, %bb.a ] ; 3 uses
  %.044.us = phi i32 [ %i.ai, %.critedge63.us ], [ 0, %bb.a ] ; 2 uses
  %i.g = icmp ult ptr %.051.us, %i.b
  br i1 %i.g, label %.lr.ph90, label %.critedge.us

bb.b:                                             ; preds = %.lr.ph90
  %i.h = icmp ult ptr %i.i, %i.b
  br i1 %i.h, label %.lr.ph90, label %.critedge.us, !llvm.loop !0

.lr.ph90:                                         ; preds = %.split.us, %bb.b
  %.152.us89 = phi ptr [ %i.i, %bb.b ], [ %.051.us, %.split.us ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.152.us89, i64 1 ; 4 uses
  %i.j = load i8, ptr %.152.us89, align 1, !tbaa !11
  %.not.us = icmp eq i8 %i.j, 0
  br i1 %.not.us, label %bb.b, label %..critedge.us_crit_edge, !llvm.loop !0

..critedge.us_crit_edge:                          ; preds = %.lr.ph90
  br label %.critedge.us, !llvm.loop !0

.critedge.us:                                     ; preds = %bb.b, %..critedge.us_crit_edge, %.split.us
  %.253.us = phi ptr [ %i.i, %..critedge.us_crit_edge ], [ %.051.us, %.split.us ], [ %i.i, %bb.b ] ; 4 uses
  %i.k = icmp eq ptr %.253.us, %i.b
  br i1 %i.k, label %.critedge63.thread, label %bb.c

bb.c:                                             ; preds = %.critedge.us
  %i.l = tail call ptr @ff_nal_find_startcode(ptr noundef %.253.us, ptr noundef %i.b) ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %.253.us to i64             ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %.not5972.us = icmp eq i64 %i.o, 0
  br i1 %.not5972.us, label %.critedge2.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.c, %bb.d
  %.04773.us = phi i64 [ %i.t, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = getelementptr i8, ptr %.253.us, i64 %.04773.us
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.d, label %.critedge2.us.loopexit

bb.d:                                             ; preds = %.lr.ph.us
  %i.t = add i64 %.04773.us, -1                   ; 2 uses
  %.not59.us = icmp eq i64 %i.t, 0
  br i1 %.not59.us, label %.critedge2.us.loopexit, label %.lr.ph.us, !llvm.loop !1

.critedge2.us.loopexit:                           ; preds = %bb.d, %.lr.ph.us
  %.047.lcssa.us.ph = phi i64 [ %.04773.us, %.lr.ph.us ], [ 0, %bb.d ]
  %i.u = trunc i64 %.047.lcssa.us.ph to i32
  br label %.critedge2.us

.critedge2.us:                                    ; preds = %.critedge2.us.loopexit, %bb.c
  %.047.lcssa.us = phi i32 [ 0, %bb.c ], [ %i.u, %.critedge2.us.loopexit ] ; 2 uses
  %i.v = load i32, ptr %i.d, align 4, !tbaa !16
  %i.w = load ptr, ptr %1, align 8, !tbaa !17
  %i.x = add i32 %i.v, 1
  %i.y = zext i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call ptr @av_fast_realloc(ptr noundef %i.w, ptr noundef nonnull %i.e, i64 noundef %i.z) #8 ; 3 uses
  %.not61.not.us = icmp eq ptr %i.aa, null
  br i1 %.not61.not.us, label %.critedge63.thread, label %.critedge63.us

.critedge63.us:                                   ; preds = %.critedge2.us
  store ptr %i.aa, ptr %1, align 8, !tbaa !17
  %i.ab = load i32, ptr %i.d, align 4, !tbaa !16  ; 2 uses
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.d, align 4, !tbaa !16
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ad ; 2 uses
  %i.af = sub i64 %i.n, %i.f
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !18
  %.sroa.2.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %.047.lcssa.us, ptr %.sroa.2.0..sroa_idx.us, align 4, !tbaa !18
  %i.ah = add i32 %.044.us, 4
  %i.ai = add i32 %i.ah, %.047.lcssa.us
  br label %.split.us

.split:                                           ; preds = %bb.a, %.critedge2
  %.051 = phi ptr [ %i.ao, %.critedge2 ], [ %i.c, %bb.a ] ; 3 uses
  %.044 = phi i32 [ %i.az, %.critedge2 ], [ 0, %bb.a ] ; 2 uses
  %i.aj = icmp ult ptr %.051, %i.b
  br i1 %i.aj, label %.lr.ph86, label %.critedge

bb.e:                                             ; preds = %.lr.ph86
  %i.ak = icmp ult ptr %i.al, %i.b
  br i1 %i.ak, label %.lr.ph86, label %.critedge, !llvm.loop !0

.lr.ph86:                                         ; preds = %.split, %bb.e
  %.15285 = phi ptr [ %i.al, %bb.e ], [ %.051, %.split ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.15285, i64 1 ; 4 uses
  %i.am = load i8, ptr %.15285, align 1, !tbaa !11
  %.not = icmp eq i8 %i.am, 0
  br i1 %.not, label %bb.e, label %..critedge_crit_edge87, !llvm.loop !0

..critedge_crit_edge87:                           ; preds = %.lr.ph86
  br label %.critedge, !llvm.loop !0

.critedge:                                        ; preds = %bb.e, %..critedge_crit_edge87, %.split
  %.253 = phi ptr [ %i.al, %..critedge_crit_edge87 ], [ %.051, %.split ], [ %i.al, %bb.e ] ; 5 uses
  %i.an = icmp eq ptr %.253, %i.b
  br i1 %i.an, label %.critedge63.thread, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ao = tail call ptr @ff_nal_find_startcode(ptr noundef %.253, ptr noundef %i.b) ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %.253 to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 2 uses
  %.not5972 = icmp eq i64 %i.ar, 0
  br i1 %.not5972, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.04773 = phi i64 [ %i.aw, %bb.g ], [ %i.ar, %bb.f ] ; 3 uses
  %i.as = getelementptr i8, ptr %.253, i64 %.04773
  %i.at = getelementptr i8, ptr %i.as, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !11
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.g, label %.critedge2.loopexit

bb.g:                                             ; preds = %.lr.ph
  %i.aw = add i64 %.04773, -1                     ; 2 uses
  %.not59 = icmp eq i64 %i.aw, 0
  br i1 %.not59, label %.critedge2.loopexit, label %.lr.ph, !llvm.loop !1

.critedge2.loopexit:                              ; preds = %bb.g, %.lr.ph
  %.047.lcssa.ph = phi i64 [ %.04773, %.lr.ph ], [ 0, %bb.g ]
  %i.ax = trunc i64 %.047.lcssa.ph to i32
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.f
  %.047.lcssa = phi i32 [ 0, %bb.f ], [ %i.ax, %.critedge2.loopexit ] ; 3 uses
  tail call void @avio_wb32(ptr noundef nonnull %0, i32 noundef %.047.lcssa) #8
  tail call void @avio_write(ptr noundef nonnull %0, ptr noundef %.253, i32 noundef %.047.lcssa) #8
  %i.ay = add i32 %.044, 4
  %i.az = add i32 %i.ay, %.047.lcssa
  br label %.split

.critedge63.thread:                               ; preds = %.critedge, %.critedge.us, %.critedge2.us
  %.us-phi = phi i32 [ -12, %.critedge2.us ], [ %.044.us, %.critedge.us ], [ %.044, %.critedge ]
  ret i32 %.us-phi
}

; Function Attrs: nounwind uwtable
define i32 @ff_nal_units_create_list(ptr noundef initializes((12, 16)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !16
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 5 uses
  %i.d = tail call ptr @ff_nal_find_startcode(ptr noundef %1, ptr noundef %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = ptrtoint ptr %1 to i64
  br label %.split.us.i

.split.us.i:                                      ; preds = %.critedge63.us.i, %bb.a
  %.051.us.i = phi ptr [ %i.l, %.critedge63.us.i ], [ %i.d, %bb.a ] ; 3 uses
  %.044.us.i = phi i32 [ %i.ai, %.critedge63.us.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = icmp ult ptr %.051.us.i, %i.c
  br i1 %i.g, label %.lr.ph, label %.critedge.us.i

bb.b:                                             ; preds = %.lr.ph
  %i.h = icmp ult ptr %i.i, %i.c
  br i1 %i.h, label %.lr.ph, label %.critedge.us.i, !llvm.loop !0

.lr.ph:                                           ; preds = %.split.us.i, %bb.b
  %.152.us.i6 = phi ptr [ %i.i, %bb.b ], [ %.051.us.i, %.split.us.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.152.us.i6, i64 1 ; 4 uses
  %i.j = load i8, ptr %.152.us.i6, align 1, !tbaa !11
  %.not.us.i = icmp eq i8 %i.j, 0
  br i1 %.not.us.i, label %bb.b, label %..critedge.us.i_crit_edge, !llvm.loop !0

..critedge.us.i_crit_edge:                        ; preds = %.lr.ph
  br label %.critedge.us.i, !llvm.loop !0

.critedge.us.i:                                   ; preds = %bb.b, %..critedge.us.i_crit_edge, %.split.us.i
  %.253.us.i = phi ptr [ %i.i, %..critedge.us.i_crit_edge ], [ %.051.us.i, %.split.us.i ], [ %i.i, %bb.b ] ; 4 uses
  %i.k = icmp eq ptr %.253.us.i, %i.c
  br i1 %i.k, label %nal_parse_units.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.us.i
  %i.l = tail call ptr @ff_nal_find_startcode(ptr noundef %.253.us.i, ptr noundef %i.c) ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %.253.us.i to i64           ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %.not5972.us.i = icmp eq i64 %i.o, 0
  br i1 %.not5972.us.i, label %.critedge2.us.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.c, %bb.d
  %.04773.us.i = phi i64 [ %i.t, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = getelementptr i8, ptr %.253.us.i, i64 %.04773.us.i
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.d, label %.critedge2.us.loopexit.i

bb.d:                                             ; preds = %.lr.ph.us.i
  %i.t = add i64 %.04773.us.i, -1                 ; 2 uses
  %.not59.us.i = icmp eq i64 %i.t, 0
  br i1 %.not59.us.i, label %.critedge2.us.loopexit.i, label %.lr.ph.us.i, !llvm.loop !1

.critedge2.us.loopexit.i:                         ; preds = %bb.d, %.lr.ph.us.i
  %.047.lcssa.us.ph.i = phi i64 [ %.04773.us.i, %.lr.ph.us.i ], [ 0, %bb.d ]
  %i.u = trunc i64 %.047.lcssa.us.ph.i to i32
  br label %.critedge2.us.i

.critedge2.us.i:                                  ; preds = %.critedge2.us.loopexit.i, %bb.c
  %.047.lcssa.us.i = phi i32 [ 0, %bb.c ], [ %i.u, %.critedge2.us.loopexit.i ] ; 2 uses
  %i.v = load i32, ptr %i.a, align 4, !tbaa !16
  %i.w = load ptr, ptr %0, align 8, !tbaa !17
  %i.x = add i32 %i.v, 1
  %i.y = zext i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call ptr @av_fast_realloc(ptr noundef %i.w, ptr noundef nonnull %i.e, i64 noundef %i.z) #8 ; 3 uses
  %.not61.not.us.i = icmp eq ptr %i.aa, null
  br i1 %.not61.not.us.i, label %nal_parse_units.exit, label %.critedge63.us.i

.critedge63.us.i:                                 ; preds = %.critedge2.us.i
  store ptr %i.aa, ptr %0, align 8, !tbaa !17
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !16  ; 2 uses
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.a, align 4, !tbaa !16
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ad ; 2 uses
  %i.af = sub i64 %i.n, %i.f
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !18
  %.sroa.2.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %.047.lcssa.us.i, ptr %.sroa.2.0..sroa_idx.us.i, align 4, !tbaa !18
  %i.ah = add i32 %.044.us.i, 4
  %i.ai = add i32 %i.ah, %.047.lcssa.us.i
  br label %.split.us.i

nal_parse_units.exit:                             ; preds = %.critedge.us.i, %.critedge2.us.i
  %.us-phi.i = phi i32 [ -12, %.critedge2.us.i ], [ %.044.us.i, %.critedge.us.i ]
  ret i32 %.us-phi.i
}

; Function Attrs: nounwind uwtable
define void @ff_nal_units_write_list(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !25
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %i.f) #8
  %i.g = load ptr, ptr %0, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !26
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %2, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !25
  tail call void @avio_write(ptr noundef %1, ptr noundef %i.k, i32 noundef %i.m) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !16
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !23
}

declare void @avio_wb32(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @avio_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_nal_parse_units_buf(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.a) #8 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.e = load i32, ptr %2, align 4, !tbaa !18
  %i.f = call fastcc i32 @nal_parse_units(ptr noundef %i.d, ptr noundef null, ptr noundef %0, i32 noundef %i.e) ; 0 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.h = call i32 @avio_close_dyn_buf(ptr noundef %i.g, ptr noundef %1) #8
  store i32 %i.h, ptr %2, align 4, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

declare i32 @avio_open_dyn_buf(ptr noundef) local_unnamed_addr #3

declare i32 @avio_close_dyn_buf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define ptr @ff_nal_mp4_find_startcode(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sext i32 %2 to i64
  %i.e = icmp slt i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not15 = icmp eq i32 %2, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i32 %2, 3                       ; 3 uses
  %i.f = icmp ult i32 %2, 4
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %2, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01316 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.g, %.lr.ph ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.g = getelementptr inbounds nuw i8, ptr %.01316, i64 4 ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !29

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.h = load i8, ptr %.01316, align 1, !tbaa !11
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 16
  %i.k = getelementptr inbounds nuw i8, ptr %.01316, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 8
  %i.o = or disjoint i32 %i.j, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.01316, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.o, %i.r
  %i.t = shl nuw i32 %i.s, 8
  %i.u = getelementptr inbounds nuw i8, ptr %.01316, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11
  %i.w = zext i8 %i.v to i32
  %i.x = or disjoint i32 %i.t, %i.w               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.018.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %.01316.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.g, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod25 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.018.epil = phi i32 [ %i.ac, %.lr.ph.epil ], [ %.018.epil.init, %.lr.ph.epil.preheader ]
  %.01316.epil = phi ptr [ %i.z, %.lr.ph.epil ], [ %.01316.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.y = shl i32 %.018.epil, 8
  %i.z = getelementptr inbounds nuw i8, ptr %.01316.epil, i64 1
  %i.aa = load i8, ptr %.01316.epil, align 1, !tbaa !11
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.y, %i.ab             ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !30

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %i.x, %._crit_edge.loopexit.unr-lcssa ], [ %i.ac, %.lr.ph.epil ]
  %i.ad = zext i32 %2 to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.ad  ; 2 uses
  %.pre = ptrtoint ptr %scevgep to i64
  %.pre21 = sub i64 %i.a, %.pre
  %i.ae = zext i32 %.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre-phi22 = phi i64 [ %.pre21, %._crit_edge.loopexit ], [ %i.c, %.preheader ]
  %.013.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %.preheader ]
  %.0.lcssa = phi i64 [ %i.ae, %._crit_edge.loopexit ], [ 0, %.preheader ] ; 2 uses
  %i.af = icmp slt i64 %.pre-phi22, %.0.lcssa
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.lcssa, i64 %.0.lcssa
  %spec.select = select i1 %i.af, ptr null, ptr %i.ag
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.012 = phi ptr [ %spec.select, %._crit_edge ], [ null, %bb.a ]
  ret ptr %.012
}

; Function Attrs: nounwind uwtable
define ptr @ff_nal_unit_extract_rbsp(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %1, 64
  %i.b = zext i32 %i.a to i64
  %i.c = tail call noalias ptr @av_malloc(i64 noundef %i.b) #8 ; 14 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %.preheader53

.preheader53:                                     ; preds = %bb.a
  %invariant.umin = tail call i32 @llvm.umin.i32(i32 %3, i32 %1) ; 6 uses
  %.not66 = icmp eq i32 %invariant.umin, 0
  br i1 %.not66, label %.preheader52, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader53
  %i.d = tail call i32 @llvm.umin.i32(i32 %3, i32 %1)
  %umin = zext i32 %i.d to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %0, i64 %umin, i1 false), !tbaa !11
  br label %.preheader52

.preheader52:                                     ; preds = %.lr.ph.preheader, %.preheader53
  %i.e = add i32 %invariant.umin, 2               ; 2 uses
  %i.f = icmp ult i32 %i.e, %1
  br i1 %i.f, label %.lr.ph59, label %.preheader

.preheader:                                       ; preds = %bb.e, %.preheader52
  %.143.lcssa = phi i32 [ %invariant.umin, %.preheader52 ], [ %.244, %bb.e ] ; 2 uses
  %.1.lcssa = phi i32 [ %invariant.umin, %.preheader52 ], [ %.2, %bb.e ] ; 8 uses
  %i.g = icmp ult i32 %.143.lcssa, %1
  br i1 %i.g, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.h = zext i32 %.143.lcssa to i64              ; 8 uses
  %wide.trip.count73 = zext i32 %1 to i64         ; 5 uses
  %i.i = sub nsw i64 %wide.trip.count73, %i.h     ; 7 uses
  %min.iters.check = icmp ult i64 %i.i, 8
  br i1 %min.iters.check, label %.lr.ph64.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.j = xor i64 %i.h, -1
  %i.k = add nsw i64 %i.j, %wide.trip.count73     ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = xor i32 %.1.lcssa, -1
  %i.n = icmp ult i32 %i.m, %i.l
  %i.o = icmp ugt i64 %i.k, 4294967295
  %i.p = or i1 %i.n, %i.o
  br i1 %i.p, label %.lr.ph64.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check77 = icmp ult i64 %i.i, 32
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.i, 24
  %n.vec = and i64 %i.i, -32                      ; 5 uses
  %i.r = add nsw i64 %n.vec, %i.h
  %i.s = trunc i64 %n.vec to i32
  %i.t = add i32 %.1.lcssa, %i.s                  ; 2 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = trunc i64 %index to i32
  %i.v = add i32 %.1.lcssa, %i.u
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <16 x i8>, ptr %gep, align 1, !tbaa !11
  %wide.load78 = load <16 x i8>, ptr %i.w, align 1, !tbaa !11
  %i.x = zext i32 %i.v to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <16 x i8> %wide.load, ptr %i.y, align 1, !tbaa !11
  store <16 x i8> %wide.load78, ptr %i.z, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph64.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec80 = and i64 %i.i, -8                     ; 4 uses
  %i.ab = add nsw i64 %n.vec80, %i.h
  %i.ac = trunc i64 %n.vec80 to i32
  %i.ad = add i32 %.1.lcssa, %i.ac                ; 2 uses
  %invariant.gep89 = getelementptr i8, ptr %0, i64 %i.h
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index81 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next83, %vec.epilog.vector.body ] ; 3 uses
  %i.ae = trunc i64 %index81 to i32
  %i.af = add i32 %.1.lcssa, %i.ae
  %gep90 = getelementptr i8, ptr %invariant.gep89, i64 %index81
  %wide.load82 = load <8 x i8>, ptr %gep90, align 1, !tbaa !11
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ag
  store <8 x i8> %wide.load82, ptr %i.ah, align 1, !tbaa !11
  %index.next83 = add nuw i64 %index81, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next83, %n.vec80
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !32

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n84 = icmp eq i64 %i.i, %n.vec80
  br i1 %cmp.n84, label %._crit_edge, label %.lr.ph64.preheader

.lr.ph64.preheader:                               ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.h, %iter.check ], [ %i.h, %vector.scevcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ] ; 4 uses
  %.363.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %.1.lcssa, %vector.scevcheck ], [ %i.t, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ] ; 2 uses
  %i.aj = sub nsw i64 %wide.trip.count73, %indvars.iv.ph
  %xtraiter = and i64 %i.aj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph64.prol.loopexit, label %.lr.ph64.prol

.lr.ph64.prol:                                    ; preds = %.lr.ph64.preheader, %.lr.ph64.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph64.prol ], [ %indvars.iv.ph, %.lr.ph64.preheader ] ; 2 uses
  %.363.prol = phi i32 [ %i.am, %.lr.ph64.prol ], [ %.363.ph, %.lr.ph64.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph64.prol ], [ 0, %.lr.ph64.preheader ]
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.prol
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !11
  %i.am = add i32 %.363.prol, 1                   ; 3 uses
  %i.an = zext i32 %.363.prol to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.an
  store i8 %i.al, ptr %i.ao, align 1, !tbaa !11
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph64.prol.loopexit, label %.lr.ph64.prol, !llvm.loop !33

.lr.ph64.prol.loopexit:                           ; preds = %.lr.ph64.prol, %.lr.ph64.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph64.preheader ], [ %i.am, %.lr.ph64.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph64.preheader ], [ %indvars.iv.next.prol, %.lr.ph64.prol ]
  %.363.unr = phi i32 [ %.363.ph, %.lr.ph64.preheader ], [ %i.am, %.lr.ph64.prol ]
  %i.ap = sub nsw i64 %indvars.iv.ph, %wide.trip.count73
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %._crit_edge, label %.lr.ph64

.lr.ph59:                                         ; preds = %.preheader52, %bb.e
  %i.ar = phi i32 [ %i.bn, %bb.e ], [ %i.e, %.preheader52 ]
  %.158 = phi i32 [ %.2, %bb.e ], [ %invariant.umin, %.preheader52 ] ; 5 uses
  %.14357 = phi i32 [ %.244, %bb.e ], [ %invariant.umin, %.preheader52 ] ; 3 uses
  %i.as = zext i32 %.14357 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !11  ; 2 uses
  %.not50 = icmp eq i8 %i.au, 0
  %i.av = add i32 %.14357, 1                      ; 2 uses
  br i1 %.not50, label %bb.b, label %.lr.ph59._crit_edge

bb.b:                                             ; preds = %.lr.ph59
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !11
  %.not51 = icmp eq i8 %i.ay, 0
  br i1 %.not51, label %bb.c, label %.lr.ph59._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.az = zext i32 %i.ar to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !11
  %i.bc = icmp eq i8 %i.bb, 3
  br i1 %i.bc, label %bb.d, label %.lr.ph59._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.bd = add i32 %.158, 1
  %i.be = zext i32 %.158 to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.be
  store i8 0, ptr %i.bf, align 1, !tbaa !11
  %i.bg = add i32 %.158, 2
  %i.bh = zext i32 %i.bd to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bh
  store i8 0, ptr %i.bi, align 1, !tbaa !11
  %i.bj = add i32 %.14357, 3
  br label %bb.e

.lr.ph59._crit_edge:                              ; preds = %.lr.ph59, %bb.c, %bb.b
  %i.bk = add i32 %.158, 1
  %i.bl = zext i32 %.158 to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bl
  store i8 %i.au, ptr %i.bm, align 1, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph59._crit_edge, %bb.d
  %.244 = phi i32 [ %i.av, %.lr.ph59._crit_edge ], [ %i.bj, %bb.d ] ; 3 uses
  %.2 = phi i32 [ %i.bk, %.lr.ph59._crit_edge ], [ %i.bg, %bb.d ] ; 2 uses
  %i.bn = add i32 %.244, 2                        ; 2 uses
  %i.bo = icmp ult i32 %i.bn, %1
  br i1 %i.bo, label %.lr.ph59, label %.preheader, !llvm.loop !34

.lr.ph64:                                         ; preds = %.lr.ph64.prol.loopexit, %.lr.ph64
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph64 ], [ %indvars.iv.unr, %.lr.ph64.prol.loopexit ] ; 5 uses
  %.363 = phi i32 [ %i.cj, %.lr.ph64 ], [ %.363.unr, %.lr.ph64.prol.loopexit ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !11
  %i.br = add i32 %.363, 1
  %i.bs = zext i32 %.363 to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bs
  store i8 %i.bq, ptr %i.bt, align 1, !tbaa !11
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !11
  %i.bx = add i32 %.363, 2
  %i.by = zext i32 %i.br to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.by
  store i8 %i.bw, ptr %i.bz, align 1, !tbaa !11
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !11
  %i.cd = add i32 %.363, 3
  %i.ce = zext i32 %i.bx to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ce
  store i8 %i.cc, ptr %i.cf, align 1, !tbaa !11
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !11
  %i.cj = add i32 %.363, 4                        ; 2 uses
  %i.ck = zext i32 %i.cd to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ck
  store i8 %i.ci, ptr %i.cl, align 1, !tbaa !11
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count73
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph64, !llvm.loop !35

._crit_edge:                                      ; preds = %.lr.ph64.prol.loopexit, %.lr.ph64, %middle.block, %vec.epilog.middle.block, %.preheader
  %.3.lcssa = phi i32 [ %.1.lcssa, %.preheader ], [ %i.ad, %vec.epilog.middle.block ], [ %i.t, %middle.block ], [ %.lcssa.unr, %.lr.ph64.prol.loopexit ], [ %i.cj, %.lr.ph64 ] ; 2 uses
  %i.cm = zext i32 %.3.lcssa to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cm
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cn, i8 0, i64 64, i1 false)
  store i32 %.3.lcssa, ptr %2, align 4, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge
  ret ptr %i.c
}

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare ptr @av_fast_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !12}
!1 = distinct !{!1, !12}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"override-stack-alignment", i32 16}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 _ZTS4NALU", !13, i64 0}
!15 = !{!"NALUList", !14, i64 0, !8, i64 8, !8, i64 12}
!16 = !{!15, !8, i64 12}
!17 = !{!15, !14, i64 0}
!18 = !{!8, !8, i64 0}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = !{!"NALU", !8, i64 0, !8, i64 4}
!25 = !{!24, !8, i64 4}
!26 = !{!24, !8, i64 0}
!27 = !{!"p1 _ZTS11AVIOContext", !13, i64 0}
!28 = !{!27, !27, i64 0}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !12, !36, !37}
!32 = distinct !{!32, !12, !36, !37}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12, !36}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!"branch_weights", i32 8, i32 24}
end_hunk_0
