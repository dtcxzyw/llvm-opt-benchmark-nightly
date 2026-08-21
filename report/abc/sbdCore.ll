Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sbdCore?download=true
inline.NumInlined: 748
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@Sbd_ManPrintObj:bb.a
  %putchar195 = tail call i32 @putchar(i32 10)    ; 0 uses
  %.pre377 = load ptr, ptr %i.x, align 8, !tbaa !97
  br label %Vec_WrdPushUnique.exit.thread

Vec_WrdPushUnique.exit.thread:                    ; preds = %bb.cd, %._crit_edge304
  %i.rk = phi ptr [ %.pre377, %._crit_edge304 ], [ %i.om, %bb.cd ] ; 5 uses
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 1 ; 2 uses
  %i.rl = getelementptr i8, ptr %i.rk, i64 4
  %.val = load i32, ptr %i.rl, align 4, !tbaa !43
  %i.rm = tail call range(i32 -2147483648, 536870913) i32 @llvm.smin.i32(i32 %.val, i32 64)
  %i.rn = sext i32 %i.rm to i64
  %i.ro = icmp slt i64 %indvars.iv.next369, %i.rn
  br i1 %i.ro, label %bb.bw, label %.critedge20.loopexit, !llvm.loop !242

.critedge20.loopexit:                             ; preds = %Vec_WrdPushUnique.exit.thread
  %.pre378 = load ptr, ptr %i.u, align 8, !tbaa !97
  br label %.critedge20

.critedge20:                                      ; preds = %.critedge20.loopexit, %bb.bv
  %i.rp = phi ptr [ %.pre378, %.critedge20.loopexit ], [ %i.nz, %bb.bv ] ; 2 uses
  %i.rq = phi ptr [ %i.rk, %.critedge20.loopexit ], [ %i.oa, %bb.bv ]
  %i.rr = phi ptr [ %i.rk, %.critedge20.loopexit ], [ %i.ob, %bb.bv ]
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %i.rs = getelementptr i8, ptr %i.rp, i64 4
  %.val226 = load i32, ptr %i.rs, align 4, !tbaa !43
  %i.rt = tail call range(i32 -2147483648, 536870913) i32 @llvm.smin.i32(i32 %.val226, i32 64)
  %i.ru = sext i32 %i.rt to i64
  %i.rv = icmp slt i64 %indvars.iv.next372, %i.ru
  br i1 %i.rv, label %bb.bv, label %.critedge18, !llvm.loop !243

.critedge18:                                      ; preds = %.critedge20, %._crit_edge
  ret void
}

declare void @Extra_PrintBinary(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define void @Sbd_ManMatrPrint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #11 {
bb.a:
  %.not24 = icmp slt i32 %2, 0
  br i1 %.not24, label %._crit_edge28, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.e = icmp sgt i32 %3, 0
  %i.f = zext nneg i32 %2 to i64                  ; 3 uses
  %i.g = add nuw i32 %2, 1
  %wide.trip.count39 = zext i32 %i.g to i64
  br i1 %i.e, label %.lr.ph27.split.us.preheader, label %.lr.ph27.split.preheader

.lr.ph27.split.preheader:                         ; preds = %.lr.ph27
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.lr.ph27.split.peel, label %.lr.ph27.split.preheader.split

.lr.ph27.split.preheader.split:                   ; preds = %.lr.ph27.split.preheader
  %i.h = zext nneg i32 %2 to i64
  br label %.lr.ph27.split

.lr.ph27.split.us.preheader:                      ; preds = %.lr.ph27
  %wide.trip.count34 = zext nneg i32 %3 to i64
  br label %.lr.ph27.split.us

.lr.ph27.split.us:                                ; preds = %.lr.ph27.split.us.preheader, %._crit_edge.us
  %indvars.iv36 = phi i64 [ 0, %.lr.ph27.split.us.preheader ], [ %indvars.iv.next37, %._crit_edge.us ] ; 5 uses
  %i.i = trunc nuw nsw i64 %indvars.iv36 to i32
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.i) ; 0 uses
  %i.k = icmp eq i64 %indvars.iv36, %i.f
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !77
  br i1 %i.k, label %.lr.ph.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph27.split.us
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val21.us = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val21.us, i64 %indvars.iv36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8
  %i.r = getelementptr i8, ptr %i.m, i64 8
  %.val20.us = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %.val20.us, i64 %i.s
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph27.split.us, %bb.b
  %.sink43.in = phi ptr [ %i.t, %bb.b ], [ %i.d, %.lr.ph27.split.us ]
  %.sink43 = load i32, ptr %.sink43.in, align 4, !tbaa !8
  %i.u = getelementptr i8, ptr %i.l, i64 8
  %.val22.us = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.v = sext i32 %.sink43 to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %.val22.us, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %i.x) ; 0 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv36
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us, %bb.c
  %indvars.iv31 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next32, %bb.c ] ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !100
  %i.ab = lshr i64 %i.aa, %indvars.iv31
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 1
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ad) ; 0 uses
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count34
  br i1 %exitcond35.not, label %._crit_edge.us, label %bb.c, !llvm.loop !244

._crit_edge.us:                                   ; preds = %bb.c
  %putchar19.us = tail call i32 @putchar(i32 10)  ; 0 uses
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %._crit_edge28, label %.lr.ph27.split.us, !llvm.loop !245

.lr.ph27.split:                                   ; preds = %.lr.ph27.split.preheader.split, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph27.split.preheader.split ] ; 4 uses
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.af) ; 0 uses
  %i.ah = icmp eq i64 %indvars.iv, %i.f
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !77
  br i1 %i.ah, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph27.split
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %.val21 = load ptr, ptr %i.al, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val21, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !8
  %i.ao = getelementptr i8, ptr %i.aj, i64 8
  %.val20 = load ptr, ptr %i.ao, align 8, !tbaa !44
  %i.ap = sext i32 %i.an to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %.val20, i64 %i.ap
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph27.split, %bb.d
  %.sink44.in = phi ptr [ %i.aq, %bb.d ], [ %i.d, %.lr.ph27.split ]
  %.sink44 = load i32, ptr %.sink44.in, align 4, !tbaa !8
  %i.ar = getelementptr i8, ptr %i.ai, i64 8
  %.val = load ptr, ptr %i.ar, align 8, !tbaa !44
  %i.as = sext i32 %.sink44 to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !8
  %i.av = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %i.au) ; 0 uses
  %putchar19 = tail call i32 @putchar(i32 10)     ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %.lr.ph27.split.peel, label %.lr.ph27.split, !llvm.loop !246

.lr.ph27.split.peel:                              ; preds = %.lr.ph27.split.preheader, %bb.e
  %i.aw = phi i64 [ 0, %.lr.ph27.split.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.ax) ; 0 uses
  %i.az = icmp eq i64 %i.aw, %i.f
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !77
  br i1 %i.az, label %._crit_edge28.loopexit46.peel.next, label %bb.f

bb.f:                                             ; preds = %.lr.ph27.split.peel
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %.val21.peel = load ptr, ptr %i.bd, align 8, !tbaa !44
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.val21.peel, i64 %i.aw
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8
  %i.bg = getelementptr i8, ptr %i.bb, i64 8
  %.val20.peel = load ptr, ptr %i.bg, align 8, !tbaa !44
  %i.bh = sext i32 %i.bf to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %.val20.peel, i64 %i.bh
  br label %._crit_edge28.loopexit46.peel.next

._crit_edge28.loopexit46.peel.next:               ; preds = %bb.f, %.lr.ph27.split.peel
  %.sink44.in.peel = phi ptr [ %i.bi, %bb.f ], [ %i.d, %.lr.ph27.split.peel ]
  %.sink44.peel = load i32, ptr %.sink44.in.peel, align 4, !tbaa !8
  %i.bj = getelementptr i8, ptr %i.ba, i64 8
  %.val.peel = load ptr, ptr %i.bj, align 8, !tbaa !44
  %i.bk = sext i32 %.sink44.peel to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %.val.peel, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !8
  %i.bn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %i.bm) ; 0 uses
  %putchar19.peel = tail call i32 @putchar(i32 10) ; 0 uses
  br label %._crit_edge28

._crit_edge28:                                    ; preds = %._crit_edge.us, %._crit_edge28.loopexit46.peel.next, %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Sbd_ManExplore(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [64 x i64], align 16              ; 7 uses
  %i.b = alloca [2 x [64 x i64]], align 16        ; 9 uses
  %i.c = alloca [2 x [2 x [64 x i64]]], align 16  ; 12 uses
  %i.d = alloca [64 x i64], align 16              ; 95 uses
  %.sroa.0 = alloca i64, align 8                  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.c, i8 0, i64 2048, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.d, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i64 0, ptr %.sroa.0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val205 = load i32, ptr %i.g, align 4, !tbaa !43 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val216 = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.k = sext i32 %1 to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %.val216, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !91
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %.val204 = load i32, ptr %i.p, align 4, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !199
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %.val203 = load i32, ptr %i.s, align 4, !tbaa !43
  %i.t = add nsw i32 %.val203, %.val204
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !90
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %.val202 = load i32, ptr %i.w, align 4, !tbaa !43
  %i.x = add nsw i32 %i.t, %.val202
  %i.y = load ptr, ptr %0, align 8, !tbaa !72     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 60
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !247
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %1, i32 noundef %.val205) ; 0 uses
  %.val217.pre.pre = load ptr, ptr %0, align 8, !tbaa !72
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.val217.pre = phi ptr [ %i.y, %bb.a ], [ %.val217.pre.pre, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !94 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %.val201 = load i32, ptr %i.ae, align 4, !tbaa !43 ; 3 uses
  %i.af = icmp sgt i32 %.val201, 0
  br i1 %i.af, label %.lr.ph, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.c
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 56
  %.val218.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !86
  %.phi.trans.insert348 = getelementptr i8, ptr %.val217.pre, i64 32
  %.val217.val.pre = load i32, ptr %.phi.trans.insert348, align 4, !tbaa !9
  %.phi.trans.insert350 = getelementptr i8, ptr %.val218.pre, i64 8
  %.val218.val.pre = load ptr, ptr %.phi.trans.insert350, align 8, !tbaa !84
  %.phi.trans.insert352 = getelementptr i8, ptr %0, i64 72
  %.val222.pre = load ptr, ptr %.phi.trans.insert352, align 8, !tbaa !86
  %.phi.trans.insert354 = getelementptr i8, ptr %.val222.pre, i64 8
  %.val222.val.pre = load ptr, ptr %.phi.trans.insert354, align 8, !tbaa !84
  %.phi.trans.insert356 = getelementptr i8, ptr %0, i64 80
  %.val226.pre = load ptr, ptr %.phi.trans.insert356, align 8, !tbaa !86
  %.phi.trans.insert358 = getelementptr i8, ptr %.val226.pre, i64 8
  %.val226.val.pre = load ptr, ptr %.phi.trans.insert358, align 8, !tbaa !84
  br label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.ag = getelementptr i8, ptr %i.ad, i64 8
  %.val215 = load ptr, ptr %i.ag, align 8, !tbaa !44
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !91
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val214 = load ptr, ptr %i.ai, align 8, !tbaa !44
  %i.aj = getelementptr i8, ptr %0, i64 56
  %.val220 = load ptr, ptr %i.aj, align 8, !tbaa !86
  %i.ak = getelementptr i8, ptr %.val217.pre, i64 32
  %.val219.val = load i32, ptr %i.ak, align 4, !tbaa !9 ; 2 uses
  %i.al = getelementptr i8, ptr %.val220, i64 8
  %.val220.val = load ptr, ptr %i.al, align 8, !tbaa !84 ; 2 uses
  %i.am = getelementptr i8, ptr %0, i64 72
  %.val224 = load ptr, ptr %i.am, align 8, !tbaa !86
  %i.an = getelementptr i8, ptr %.val224, i64 8
  %.val224.val = load ptr, ptr %i.an, align 8, !tbaa !84 ; 2 uses
  %i.ao = getelementptr i8, ptr %0, i64 80
  %.val228 = load ptr, ptr %i.ao, align 8, !tbaa !86
  %i.ap = getelementptr i8, ptr %.val228, i64 8
  %.val228.val = load ptr, ptr %i.ap, align 8, !tbaa !84 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %wide.trip.count = zext nneg i32 %.val201 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.val215, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !8
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %.val214, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8
  %i.aw = mul nsw i32 %.val219.val, %i.av
  %i.ax = sext i32 %i.aw to i64                   ; 3 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %.val220.val, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !100
  %i.ba = sub nsw i64 63, %indvars.iv             ; 3 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ba
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !100
  %i.bc = getelementptr inbounds [8 x i8], ptr %.val224.val, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !100
  %i.be = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ba
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !100
  %i.bf = getelementptr inbounds [8 x i8], ptr %.val228.val, i64 %i.ax
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !100
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ba
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !100
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.loopexit, label %bb.d, !llvm.loop !248

.critedge.loopexit:                               ; preds = %bb.d
  %i.bi = sub nsw i32 63, %.val201
  %i.bj = sext i32 %i.bi to i64
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.critedge.loopexit
  %.val226.val = phi ptr [ %.val226.val.pre, %..critedge_crit_edge ], [ %.val228.val, %.critedge.loopexit ]
  %.val222.val = phi ptr [ %.val222.val.pre, %..critedge_crit_edge ], [ %.val224.val, %.critedge.loopexit ]
  %.val218.val = phi ptr [ %.val218.val.pre, %..critedge_crit_edge ], [ %.val220.val, %.critedge.loopexit ]
  %.val217.val = phi i32 [ %.val217.val.pre, %..critedge_crit_edge ], [ %.val219.val, %.critedge.loopexit ]
  %.0166.lcssa = phi i64 [ 63, %..critedge_crit_edge ], [ %i.bj, %.critedge.loopexit ] ; 3 uses
  %i.bk = mul nsw i32 %.val217.val, %1
  %i.bl = sext i32 %i.bk to i64                   ; 3 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %.val218.val, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !100
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.0166.lcssa
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !100
  %i.bp = getelementptr inbounds [8 x i8], ptr %.val222.val, i64 %i.bl
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !100
  %i.br = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.0166.lcssa
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !100
  %i.bs = getelementptr inbounds [8 x i8], ptr %.val226.val, i64 %i.bl
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !100
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 3 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %.0166.lcssa
  store i64 %i.bt, ptr %i.bv, align 8, !tbaa !100
  call fastcc void @Sbd_TransposeMatrix64(ptr noundef %i.a)
  call fastcc void @Sbd_TransposeMatrix64(ptr noundef %i.b)
  call fastcc void @Sbd_TransposeMatrix64(ptr noundef %i.bu)
  %i.bw = ashr i32 %.val205, 6
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = and i32 %.val205, 63
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  %i.ca = shl nuw i64 1, %i.bz
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %.loopexit259
  %indvars.iv309 = phi i64 [ 0, %.critedge ], [ %indvars.iv.next310, %.loopexit259 ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv309 ; 2 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.bx
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !100
  %i.ce = and i64 %i.cd, %i.ca
  %.not199 = icmp eq i64 %i.ce, 0
  br i1 %.not199, label %.loopexit259, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv309 ; 3 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.bx
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !100
  %i.ci = lshr i64 %i.ch, %i.bz
  %i.cj = and i64 %i.ci, 1                        ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv309
  %i.cl = getelementptr inbounds nuw [1024 x i8], ptr %i.c, i64 %i.cj ; 11 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 512 ; 10 uses
  %.pre = load i64, ptr %i.cb, align 8, !tbaa !100 ; 3 uses
  %i.cn = load i64, ptr %i.cf, align 8, !tbaa !100 ; 2 uses
  %i.co = xor i64 %i.cn, -1
  %i.cp = and i64 %.pre, %i.co                    ; 4 uses
  %i.cq = and i64 %.pre, %i.cn                    ; 4 uses
  %.sroa.0.0..sroa_stride347 = shl nuw nsw i64 %i.cj, 2
  %.sroa.0.0..sroa_idx349 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %.sroa.0.0..sroa_stride347 ; 2 uses
  %i.cr = load i32, ptr %.sroa.0.0..sroa_idx349, align 4, !tbaa !8 ; 5 uses
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.f
  %wide.trip.count.i = zext nneg i32 %i.cr to i64 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.i
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !100 ; 2 uses
  %i.cv = and i64 %i.cu, %i.cp
  %i.cw = icmp eq i64 %i.cv, %i.cu
  br i1 %i.cw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.i
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !100 ; 2 uses
  %i.cz = and i64 %i.cy, %i.cq
  %i.da = icmp eq i64 %i.cz, %i.cy
  br i1 %i.da, label %.loopexit451, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.g, !llvm.loop !249

.preheader.i:                                     ; preds = %bb.i, %bb.l
  %indvars.iv11.i = phi i64 [ %indvars.iv.next12.i, %bb.l ], [ 0, %bb.i ] ; 4 uses
  %.04.i = phi i32 [ %.1.i, %bb.l ], [ 0, %bb.i ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv11.i
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !100 ; 2 uses
  %i.dd = and i64 %i.dc, %i.cp
  %.not.i = icmp eq i64 %i.dd, %i.cp
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader.i
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv11.i
  %i.df = load i64, ptr %i.de, align 8, !tbaa !100
  %i.dg = and i64 %i.df, %i.cq
  %.not58.i = icmp eq i64 %i.dg, %i.cq
  br i1 %.not58.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader.i
  %i.dh = sext i32 %.04.i to i64                  ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.dh
  store i64 %i.dc, ptr %i.di, align 8, !tbaa !100
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv11.i
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !100
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.dh
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !100
  %i.dm = add nsw i32 %.04.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.i = phi i32 [ %i.dm, %bb.k ], [ %.04.i, %bb.j ] ; 4 uses
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1 ; 2 uses
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next12.i, %wide.trip.count.i
  br i1 %exitcond15.not.i, label %._crit_edge.i, label %.preheader.i, !llvm.loop !250

._crit_edge.i:                                    ; preds = %bb.l
  %i.dn = icmp slt i32 %.1.i, 64
  br i1 %i.dn, label %._crit_edge.thread.i, label %bb.m

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.f
  %.0.lcssa23.i = phi i32 [ %.1.i, %._crit_edge.i ], [ 0, %bb.f ] ; 2 uses
  %i.do = sext i32 %.0.lcssa23.i to i64           ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.do
  store i64 %i.cp, ptr %i.dp, align 8, !tbaa !100
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.do
  store i64 %i.cq, ptr %i.dq, align 8, !tbaa !100
  %i.dr = add nsw i32 %.0.lcssa23.i, 1
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i
  %.2.i = phi i32 [ %i.dr, %._crit_edge.thread.i ], [ %.1.i, %._crit_edge.i ] ; 5 uses
  %i.ds = icmp slt i32 %.2.i, %i.cr
  br i1 %i.ds, label %.lr.ph8.i, label %.loopexit451

.lr.ph8.i:                                        ; preds = %bb.m
  %i.dt = sext i32 %.2.i to i64
  %i.du = shl nsw i64 %i.dt, 3
  %i.dv = getelementptr i8, ptr %i.cl, i64 %i.du  ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.dv, i64 512
  %i.dw = xor i32 %.2.i, -1
  %i.dx = add i32 %i.cr, %i.dw
  %i.dy = zext i32 %i.dx to i64
  %i.dz = shl nuw nsw i64 %i.dy, 3
  %i.ea = add nuw nsw i64 %i.dz, 8                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ea, i1 false), !tbaa !100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dv, i8 0, i64 %i.ea, i1 false), !tbaa !100
  br label %.loopexit451

.loopexit451:                                     ; preds = %bb.h, %bb.m, %.lr.ph8.i
  %.055.i = phi i32 [ %.2.i, %bb.m ], [ %.2.i, %.lr.ph8.i ], [ %i.cr, %bb.h ]
  store i32 %.055.i, ptr %.sroa.0.0..sroa_idx349, align 4, !tbaa !8
  %i.eb = load i64, ptr %i.ck, align 8, !tbaa !100 ; 3 uses
  %i.ec = icmp eq i64 %.pre, %i.eb
  br i1 %i.ec, label %.loopexit259, label %bb.n

bb.n:                                             ; preds = %.loopexit451
  %i.ed = load i64, ptr %i.cf, align 8, !tbaa !100 ; 2 uses
  %i.ee = xor i64 %i.ed, -1
  %i.ef = and i64 %i.eb, %i.ee                    ; 4 uses
  %i.eg = and i64 %i.eb, %i.ed                    ; 4 uses
  %.sroa.0.0..sroa_stride350 = shl nuw nsw i64 %i.cj, 2
  %.sroa.0.0..sroa_idx352 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %.sroa.0.0..sroa_stride350 ; 2 uses
  %i.eh = load i32, ptr %.sroa.0.0..sroa_idx352, align 4, !tbaa !8 ; 5 uses
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %.lr.ph.i.1, label %._crit_edge.thread.i.1

.lr.ph.i.1:                                       ; preds = %bb.n
  %wide.trip.count.i.1 = zext nneg i32 %i.eh to i64 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i.1
  %indvars.iv.i.1 = phi i64 [ 0, %.lr.ph.i.1 ], [ %indvars.iv.next.i.1, %bb.q ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.i.1
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !100 ; 2 uses
  %i.el = and i64 %i.ek, %i.ef
  %i.em = icmp eq i64 %i.el, %i.ek
  br i1 %i.em, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.i.1
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !100 ; 2 uses
  %i.ep = and i64 %i.eo, %i.eg
  %i.eq = icmp eq i64 %i.ep, %i.eo
  br i1 %i.eq, label %Sbd_ManAddCube2.exit.1, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i.1
  br i1 %exitcond.not.i.1, label %.preheader.i.1, label %bb.o, !llvm.loop !249

.preheader.i.1:                                   ; preds = %bb.q, %bb.t
  %indvars.iv11.i.1 = phi i64 [ %indvars.iv.next12.i.1, %bb.t ], [ 0, %bb.q ] ; 4 uses
  %.04.i.1 = phi i32 [ %.1.i.1, %bb.t ], [ 0, %bb.q ] ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv11.i.1
  %i.es = load i64, ptr %i.er, align 8, !tbaa !100 ; 2 uses
  %i.et = and i64 %i.es, %i.ef
  %.not.i.1 = icmp eq i64 %i.et, %i.ef
  br i1 %.not.i.1, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.preheader.i.1
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv11.i.1
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !100
  %i.ew = and i64 %i.ev, %i.eg
  %.not58.i.1 = icmp eq i64 %i.ew, %i.eg
  br i1 %.not58.i.1, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader.i.1
  %i.ex = sext i32 %.04.i.1 to i64                ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.ex
  store i64 %i.es, ptr %i.ey, align 8, !tbaa !100
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv11.i.1
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !100
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.ex
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !100
  %i.fc = add nsw i32 %.04.i.1, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1.i.1 = phi i32 [ %i.fc, %bb.s ], [ %.04.i.1, %bb.r ] ; 4 uses
  %indvars.iv.next12.i.1 = add nuw nsw i64 %indvars.iv11.i.1, 1 ; 2 uses
  %exitcond15.not.i.1 = icmp eq i64 %indvars.iv.next12.i.1, %wide.trip.count.i.1
  br i1 %exitcond15.not.i.1, label %._crit_edge.i.1, label %.preheader.i.1, !llvm.loop !250

._crit_edge.i.1:                                  ; preds = %bb.t
  %i.fd = icmp slt i32 %.1.i.1, 64
  br i1 %i.fd, label %._crit_edge.thread.i.1, label %bb.u

._crit_edge.thread.i.1:                           ; preds = %._crit_edge.i.1, %bb.n
  %.0.lcssa23.i.1 = phi i32 [ %.1.i.1, %._crit_edge.i.1 ], [ 0, %bb.n ] ; 2 uses
  %i.fe = sext i32 %.0.lcssa23.i.1 to i64         ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.fe
  store i64 %i.ef, ptr %i.ff, align 8, !tbaa !100
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.fe
  store i64 %i.eg, ptr %i.fg, align 8, !tbaa !100
  %i.fh = add nsw i32 %.0.lcssa23.i.1, 1
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread.i.1, %._crit_edge.i.1
  %.2.i.1 = phi i32 [ %i.fh, %._crit_edge.thread.i.1 ], [ %.1.i.1, %._crit_edge.i.1 ] ; 5 uses
  %i.fi = icmp slt i32 %.2.i.1, %i.eh
  br i1 %i.fi, label %.lr.ph8.i.1, label %Sbd_ManAddCube2.exit.1

.lr.ph8.i.1:                                      ; preds = %bb.u
  %i.fj = sext i32 %.2.i.1 to i64
  %i.fk = shl nsw i64 %i.fj, 3
  %i.fl = getelementptr i8, ptr %i.cl, i64 %i.fk  ; 2 uses
  %scevgep.i.1 = getelementptr i8, ptr %i.fl, i64 512
  %i.fm = xor i32 %.2.i.1, -1
  %i.fn = add i32 %i.eh, %i.fm
  %i.fo = zext i32 %i.fn to i64
  %i.fp = shl nuw nsw i64 %i.fo, 3
  %i.fq = add nuw nsw i64 %i.fp, 8                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.1, i8 0, i64 %i.fq, i1 false), !tbaa !100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fl, i8 0, i64 %i.fq, i1 false), !tbaa !100
  br label %Sbd_ManAddCube2.exit.1

Sbd_ManAddCube2.exit.1:                           ; preds = %bb.p, %.lr.ph8.i.1, %bb.u
  %.055.i.1 = phi i32 [ %.2.i.1, %bb.u ], [ %.2.i.1, %.lr.ph8.i.1 ], [ %i.eh, %bb.p ]
  store i32 %.055.i.1, ptr %.sroa.0.0..sroa_idx352, align 4, !tbaa !8
  br label %.loopexit259

.loopexit259:                                     ; preds = %.loopexit451, %Sbd_ManAddCube2.exit.1, %bb.e
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1 ; 2 uses
  %exitcond312.not = icmp eq i64 %indvars.iv.next310, 64
  br i1 %exitcond312.not, label %bb.v, label %bb.e, !llvm.loop !251

bb.v:                                             ; preds = %.loopexit259
  %i.fr = getelementptr inbounds nuw i8, ptr %.val217.pre, i64 60
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !247
  %.not175 = icmp eq i32 %i.fs, 0
  br i1 %.not175, label %..loopexit258_crit_edge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ft = load i32, ptr %.sroa.0, align 8, !tbaa !8
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !8
  %i.fw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.ft, i32 noundef %i.fv) ; 0 uses
  %.pre364 = load ptr, ptr %0, align 8, !tbaa !72
  %.phi.trans.insert365 = getelementptr inbounds nuw i8, ptr %.pre364, i64 60
  %.pre366 = load i32, ptr %.phi.trans.insert365, align 4, !tbaa !247
  %i.fx = icmp eq i32 %.pre366, 0
  br i1 %i.fx, label %..loopexit258_crit_edge, label %.preheader257.preheader

..loopexit258_crit_edge:                          ; preds = %bb.v, %bb.w
  %.pre367 = load i32, ptr %.sroa.0, align 8, !tbaa !8
  br label %.loopexit258

.preheader257.preheader:                          ; preds = %bb.w
  %i.fy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @.str.18) ; 0 uses
  %i.fz = load i32, ptr %.sroa.0, align 8, !tbaa !8 ; 3 uses
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %.preheader256.lr.ph, label %._crit_edge

.preheader256.lr.ph:                              ; preds = %.preheader257.preheader
  %i.gb = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %wide.trip.count320 = zext nneg i32 %i.fz to i64
  br label %.preheader256

.preheader256:                                    ; preds = %.preheader256.lr.ph, %bb.aa
  %indvars.iv317 = phi i64 [ 0, %.preheader256.lr.ph ], [ %indvars.iv.next318, %bb.aa ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv317
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !100
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv317
  br label %bb.x

bb.x:                                             ; preds = %.preheader256, %bb.z
  %indvars.iv313 = phi i64 [ 0, %.preheader256 ], [ %indvars.iv.next314, %bb.z ] ; 2 uses
  %i.gf = shl nuw i64 1, %indvars.iv313           ; 2 uses
  %i.gg = and i64 %i.gd, %i.gf
  %.not194 = icmp eq i64 %i.gg, 0
  br i1 %.not194, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gh = load i64, ptr %i.ge, align 8, !tbaa !100
  %i.gi = and i64 %i.gh, %i.gf
  %.not195 = icmp eq i64 %i.gi, 0
  %. = select i1 %.not195, i32 46, i32 49
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sink = phi i32 [ %., %bb.y ], [ 48, %bb.x ]
  %putchar198 = tail call i32 @putchar(i32 %.sink) ; 0 uses
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1 ; 2 uses
  %exitcond316.not = icmp eq i64 %indvars.iv.next314, 64
  br i1 %exitcond316.not, label %bb.aa, label %bb.x, !llvm.loop !252

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1 ; 2 uses
  %putchar193 = tail call i32 @putchar(i32 10)    ; 0 uses
  %exitcond321.not = icmp eq i64 %indvars.iv.next318, %wide.trip.count320
  br i1 %exitcond321.not, label %._crit_edge, label %.preheader256, !llvm.loop !253

._crit_edge:                                      ; preds = %bb.aa, %.preheader257.preheader
  %putchar192 = tail call i32 @putchar(i32 10)    ; 0 uses
  %i.gj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @.str.17) ; 0 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !8  ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, 0
  br i1 %i.gm, label %.preheader256.lr.ph.1, label %._crit_edge.1

.preheader256.lr.ph.1:                            ; preds = %._crit_edge
  %i.gn = getelementptr inbounds nuw i8, ptr %i.c, i64 1024
  %i.go = getelementptr inbounds nuw i8, ptr %i.c, i64 1536
  %wide.trip.count320.1 = zext nneg i32 %i.gl to i64
  br label %.preheader256.1

.preheader256.1:                                  ; preds = %bb.ae, %.preheader256.lr.ph.1
  %indvars.iv317.1 = phi i64 [ 0, %.preheader256.lr.ph.1 ], [ %indvars.iv.next318.1, %bb.ae ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv317.1
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !100
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv317.1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %.preheader256.1
  %indvars.iv313.1 = phi i64 [ 0, %.preheader256.1 ], [ %indvars.iv.next314.1, %bb.ad ] ; 2 uses
  %i.gs = shl nuw i64 1, %indvars.iv313.1         ; 2 uses
  %i.gt = and i64 %i.gq, %i.gs
  %.not194.1 = icmp eq i64 %i.gt, 0
  br i1 %.not194.1, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gu = load i64, ptr %i.gr, align 8, !tbaa !100
  %i.gv = and i64 %i.gu, %i.gs
  %.not195.1 = icmp eq i64 %i.gv, 0
  %.455 = select i1 %.not195.1, i32 46, i32 49
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sink454 = phi i32 [ 48, %bb.ab ], [ %.455, %bb.ac ]
  %putchar196.1 = tail call i32 @putchar(i32 %.sink454) ; 0 uses
  %indvars.iv.next314.1 = add nuw nsw i64 %indvars.iv313.1, 1 ; 2 uses
  %exitcond316.1.not = icmp eq i64 %indvars.iv.next314.1, 64
  br i1 %exitcond316.1.not, label %bb.ae, label %bb.ab, !llvm.loop !252

bb.ae:                                            ; preds = %bb.ad
  %indvars.iv.next318.1 = add nuw nsw i64 %indvars.iv317.1, 1 ; 2 uses
  %putchar193.1 = tail call i32 @putchar(i32 10)  ; 0 uses
  %exitcond321.1.not = icmp eq i64 %indvars.iv.next318.1, %wide.trip.count320.1
  br i1 %exitcond321.1.not, label %._crit_edge.1, label %.preheader256.1, !llvm.loop !253

._crit_edge.1:                                    ; preds = %bb.ae, %._crit_edge
  %putchar192.1 = tail call i32 @putchar(i32 10)  ; 0 uses
  br label %.loopexit258

.loopexit258:                                     ; preds = %..loopexit258_crit_edge, %._crit_edge.1
  %i.gw = phi i32 [ %.pre367, %..loopexit258_crit_edge ], [ %i.fz, %._crit_edge.1 ] ; 2 uses
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %.preheader.lr.ph, label %._crit_edge276

.preheader.lr.ph:                                 ; preds = %.loopexit258
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !8  ; 2 uses
  %i.ha = icmp sgt i32 %i.gz, 0
  %i.hb = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %i.hc = getelementptr inbounds nuw i8, ptr %i.c, i64 1024
  %i.hd = getelementptr inbounds nuw i8, ptr %i.c, i64 1536
  br i1 %i.ha, label %.preheader.us.preheader, label %._crit_edge276

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.he = zext nneg i32 %i.gz to i64
  %i.hf = zext nneg i32 %i.gw to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge272.us
  %indvars.iv328 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next329, %._crit_edge272.us ] ; 3 uses
  %.0159275.us = phi i32 [ 0, %.preheader.us.preheader ], [ %.036.i.us, %._crit_edge272.us ]
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv328
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !100
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv328
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !100
  br label %bb.af

bb.af:                                            ; preds = %.preheader.us, %Sbd_ManAddCube1.exit.us
  %indvars.iv325 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next326, %Sbd_ManAddCube1.exit.us ] ; 3 uses
  %.1160269.us = phi i32 [ %.0159275.us, %.preheader.us ], [ %.036.i.us, %Sbd_ManAddCube1.exit.us ] ; 7 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv325
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !100
  %i.hm = and i64 %i.hl, %i.hh
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv325
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !100
  %i.hp = and i64 %i.ho, %i.hj
  %i.hq = or i64 %i.hp, %i.hm                     ; 8 uses
  %i.hr = icmp sgt i32 %.1160269.us, 0
  br i1 %i.hr, label %.lr.ph.preheader.i.us, label %._crit_edge.thread.i231.us

.lr.ph.preheader.i.us:                            ; preds = %bb.af
  %wide.trip.count.i234.us = zext nneg i32 %.1160269.us to i64 ; 3 uses
  br label %.lr.ph.i235.us

.lr.ph.i235.us:                                   ; preds = %bb.ag, %.lr.ph.preheader.i.us
  %indvars.iv.i236.us = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i237.us, %bb.ag ] ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i236.us
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !100 ; 2 uses
  %i.hu = and i64 %i.ht, %i.hq
  %i.hv = icmp eq i64 %i.hu, %i.ht
  br i1 %i.hv, label %Sbd_ManAddCube1.exit.us, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i235.us
  %indvars.iv.next.i237.us = add nuw nsw i64 %indvars.iv.i236.us, 1 ; 2 uses
  %exitcond.not.i238.us = icmp eq i64 %indvars.iv.next.i237.us, %wide.trip.count.i234.us
  br i1 %exitcond.not.i238.us, label %.lr.ph43.i.us.preheader, label %.lr.ph.i235.us, !llvm.loop !254

.lr.ph43.i.us.preheader:                          ; preds = %bb.ag
  %xtraiter = and i64 %wide.trip.count.i234.us, 1
  %i.hw = icmp eq i32 %.1160269.us, 1
  br i1 %i.hw, label %.lr.ph43.i.us.epil.preheader, label %.lr.ph43.i.us.preheader.new

.lr.ph43.i.us.preheader.new:                      ; preds = %.lr.ph43.i.us.preheader
  %unroll_iter = and i64 %wide.trip.count.i234.us, 2147483646
  br label %.lr.ph43.i.us

.lr.ph43.i.us:                                    ; preds = %bb.aj, %.lr.ph43.i.us.preheader.new
  %indvars.iv49.i.us = phi i64 [ 0, %.lr.ph43.i.us.preheader.new ], [ %indvars.iv.next50.i.us.1, %bb.aj ] ; 3 uses
  %.042.i.us = phi i32 [ 0, %.lr.ph43.i.us.preheader.new ], [ %.1.i241.us.1, %bb.aj ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph43.i.us.preheader.new ], [ %niter.next.1, %bb.aj ]
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv49.i.us
  %i.hy = load i64, ptr %i.hx, align 16, !tbaa !100 ; 2 uses
  %i.hz = and i64 %i.hy, %i.hq
  %.not.i240.us = icmp eq i64 %i.hz, %i.hq
  br i1 %.not.i240.us, label %.lr.ph43.i.us.1, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph43.i.us
  %i.ia = add nsw i32 %.042.i.us, 1
  %i.ib = sext i32 %.042.i.us to i64
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ib
  store i64 %i.hy, ptr %i.ic, align 8, !tbaa !100
  br label %.lr.ph43.i.us.1

.lr.ph43.i.us.1:                                  ; preds = %bb.ah, %.lr.ph43.i.us
  %.1.i241.us = phi i32 [ %i.ia, %bb.ah ], [ %.042.i.us, %.lr.ph43.i.us ] ; 3 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv49.i.us
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !100 ; 2 uses
  %i.ig = and i64 %i.if, %i.hq
  %.not.i240.us.1 = icmp eq i64 %i.ig, %i.hq
  br i1 %.not.i240.us.1, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph43.i.us.1
  %i.ih = add nsw i32 %.1.i241.us, 1
  %i.ii = sext i32 %.1.i241.us to i64
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ii
  store i64 %i.if, ptr %i.ij, align 8, !tbaa !100
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph43.i.us.1
  %.1.i241.us.1 = phi i32 [ %i.ih, %bb.ai ], [ %.1.i241.us, %.lr.ph43.i.us.1 ] ; 3 uses
  %indvars.iv.next50.i.us.1 = add nuw nsw i64 %indvars.iv49.i.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i242.us.unr-lcssa, label %.lr.ph43.i.us, !llvm.loop !255

._crit_edge.i242.us.unr-lcssa:                    ; preds = %bb.aj
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i242.us, label %.lr.ph43.i.us.epil.preheader

.lr.ph43.i.us.epil.preheader:                     ; preds = %._crit_edge.i242.us.unr-lcssa, %.lr.ph43.i.us.preheader
  %indvars.iv49.i.us.epil.init = phi i64 [ 0, %.lr.ph43.i.us.preheader ], [ %indvars.iv.next50.i.us.1, %._crit_edge.i242.us.unr-lcssa ]
  %.042.i.us.epil.init = phi i32 [ 0, %.lr.ph43.i.us.preheader ], [ %.1.i241.us.1, %._crit_edge.i242.us.unr-lcssa ] ; 3 uses
  %lcmp.mod461 = trunc i32 %.1160269.us to i1
  tail call void @llvm.assume(i1 %lcmp.mod461)
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv49.i.us.epil.init
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !100 ; 2 uses
  %i.im = and i64 %i.il, %i.hq
  %.not.i240.us.epil = icmp eq i64 %i.im, %i.hq
  br i1 %.not.i240.us.epil, label %._crit_edge.i242.us, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph43.i.us.epil.preheader
  %i.in = add nsw i32 %.042.i.us.epil.init, 1
  %i.io = sext i32 %.042.i.us.epil.init to i64
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.io
  store i64 %i.il, ptr %i.ip, align 8, !tbaa !100
  br label %._crit_edge.i242.us

._crit_edge.i242.us:                              ; preds = %.lr.ph43.i.us.epil.preheader, %bb.ak, %._crit_edge.i242.us.unr-lcssa
  %.1.i241.us.lcssa = phi i32 [ %.1.i241.us.1, %._crit_edge.i242.us.unr-lcssa ], [ %i.in, %bb.ak ], [ %.042.i.us.epil.init, %.lr.ph43.i.us.epil.preheader ] ; 3 uses
  %i.iq = icmp slt i32 %.1.i241.us.lcssa, 64
  br i1 %i.iq, label %._crit_edge.thread.i231.us, label %bb.al

._crit_edge.thread.i231.us:                       ; preds = %._crit_edge.i242.us, %bb.af
  %.0.lcssa60.i.us = phi i32 [ %.1.i241.us.lcssa, %._crit_edge.i242.us ], [ 0, %bb.af ] ; 2 uses
  %i.ir = add nsw i32 %.0.lcssa60.i.us, 1
  %i.is = sext i32 %.0.lcssa60.i.us to i64
  %i.it = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.is
  store i64 %i.hq, ptr %i.it, align 8, !tbaa !100
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge.thread.i231.us, %._crit_edge.i242.us
  %.2.i232.us = phi i32 [ %i.ir, %._crit_edge.thread.i231.us ], [ %.1.i241.us.lcssa, %._crit_edge.i242.us ] ; 5 uses
  %i.iu = icmp slt i32 %.2.i232.us, %.1160269.us
  br i1 %i.iu, label %.lr.ph46.preheader.i.us, label %Sbd_ManAddCube1.exit.us

.lr.ph46.preheader.i.us:                          ; preds = %bb.al
  %i.iv = sext i32 %.2.i232.us to i64
  %i.iw = shl nsw i64 %i.iv, 3
  %scevgep.i233.us = getelementptr i8, ptr %i.d, i64 %i.iw
  %i.ix = xor i32 %.2.i232.us, -1
  %i.iy = add i32 %.1160269.us, %i.ix
  %i.iz = zext i32 %i.iy to i64
  %i.ja = shl nuw nsw i64 %i.iz, 3
  %i.jb = add nuw nsw i64 %i.ja, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i233.us, i8 0, i64 %i.jb, i1 false), !tbaa !100
  br label %Sbd_ManAddCube1.exit.us

Sbd_ManAddCube1.exit.us:                          ; preds = %.lr.ph.i235.us, %.lr.ph46.preheader.i.us, %bb.al
  %.036.i.us = phi i32 [ %.2.i232.us, %bb.al ], [ %.2.i232.us, %.lr.ph46.preheader.i.us ], [ %.1160269.us, %.lr.ph.i235.us ] ; 4 uses
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1 ; 2 uses
  %i.jc = icmp samesign ult i64 %indvars.iv.next326, %i.he
  %i.jd = icmp slt i32 %.036.i.us, 32             ; 2 uses
  %i.je = and i1 %i.jc, %i.jd
  br i1 %i.je, label %bb.af, label %._crit_edge272.us, !llvm.loop !256

._crit_edge272.us:                                ; preds = %Sbd_ManAddCube1.exit.us
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 1 ; 2 uses
  %i.jf = icmp samesign ult i64 %indvars.iv.next329, %i.hf
  %i.jg = and i1 %i.jf, %i.jd
  br i1 %i.jg, label %.preheader.us, label %._crit_edge276.loopexit, !llvm.loop !257

._crit_edge276.loopexit:                          ; preds = %._crit_edge272.us
  %.pre368 = load i64, ptr %i.d, align 16, !tbaa !100
  %.phi.trans.insert371 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.phi.trans.insert373 = getelementptr inbounds nuw i8, ptr %i.d, i64 496
  %i.jh = load <2 x i64>, ptr %.phi.trans.insert373, align 16, !tbaa !100
  %i.ji = load <2 x i64>, ptr %.phi.trans.insert371, align 8, !tbaa !100
  %.phi.trans.insert379 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.phi.trans.insert381 = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.jj = load <2 x i64>, ptr %.phi.trans.insert381, align 16, !tbaa !100
  %i.jk = load <2 x i64>, ptr %.phi.trans.insert379, align 8, !tbaa !100
  %.phi.trans.insert387 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.phi.trans.insert389 = getelementptr inbounds nuw i8, ptr %i.d, i64 464
  %i.jl = load <2 x i64>, ptr %.phi.trans.insert389, align 16, !tbaa !100
  %i.jm = load <2 x i64>, ptr %.phi.trans.insert387, align 8, !tbaa !100
  %.phi.trans.insert395 = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.phi.trans.insert397 = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.jn = load <2 x i64>, ptr %.phi.trans.insert397, align 16, !tbaa !100
  %i.jo = load <2 x i64>, ptr %.phi.trans.insert395, align 8, !tbaa !100
  %.phi.trans.insert403 = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.phi.trans.insert405 = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  %i.jp = load <2 x i64>, ptr %.phi.trans.insert405, align 16, !tbaa !100
  %i.jq = load <2 x i64>, ptr %.phi.trans.insert403, align 8, !tbaa !100
  %.phi.trans.insert411 = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.phi.trans.insert413 = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %i.jr = load <2 x i64>, ptr %.phi.trans.insert413, align 16, !tbaa !100
  %i.js = load <2 x i64>, ptr %.phi.trans.insert411, align 8, !tbaa !100
  %.phi.trans.insert419 = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %.phi.trans.insert421 = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  %i.jt = load <2 x i64>, ptr %.phi.trans.insert421, align 16, !tbaa !100
  %i.ju = load <2 x i64>, ptr %.phi.trans.insert419, align 8, !tbaa !100
  %.phi.trans.insert427 = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %.phi.trans.insert429 = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %i.jv = load <2 x i64>, ptr %.phi.trans.insert429, align 16, !tbaa !100
  %i.jw = load <2 x i64>, ptr %.phi.trans.insert427, align 8, !tbaa !100
end_hunk_0
begin_hunk_1_@Sbd_ManExplore:bb.a
  %i.ua = sdiv i64 %i.tz, 1000
  %i.ub = add nsw i64 %i.ua, %i.ty
  br label %Abc_Clock.exit253

Abc_Clock.exit253:                                ; preds = %Abc_Clock.exit251, %bb.bc
  %.0.i252 = phi i64 [ %i.ub, %bb.bc ], [ -1, %Abc_Clock.exit251 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.uc = add i64 %.0.i252, %.0.i250.neg
  %i.ud = load i64, ptr %i.rl, align 8, !tbaa !260
  %i.ue = add nsw i64 %i.uc, %i.ud
  store i64 %i.ue, ptr %i.rl, align 8, !tbaa !260
  %i.uf = load i64, ptr %2, align 8, !tbaa !100
  switch i64 %i.uf, label %bb.bm [
    i64 1311768465173141112, label %bb.bd
    i64 -8690466094656961759, label %bb.be
  ]

bb.bd:                                            ; preds = %Abc_Clock.exit253
  %i.ug = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %1) ; 0 uses
  br label %bb.bo

bb.be:                                            ; preds = %Abc_Clock.exit253
  %i.uh = load ptr, ptr %0, align 8, !tbaa !72
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 60
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !247
  %.not183 = icmp eq i32 %i.uj, 0
  br i1 %.not183, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.uk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %1) ; 0 uses
  br i1 %i.rm, label %.lr.ph280, label %._crit_edge285

.lr.ph280:                                        ; preds = %bb.bf, %.lr.ph280
  %.0278 = phi i32 [ %i.un, %.lr.ph280 ], [ 0, %bb.bf ] ; 2 uses
  %i.ul = urem i32 %.0278, 10
  %i.um = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ul) ; 0 uses
  %i.un = add nuw nsw i32 %.0278, 1               ; 2 uses
  %exitcond331.not = icmp eq i32 %i.un, %.val205
  br i1 %exitcond331.not, label %.lr.ph284.preheader, label %.lr.ph280, !llvm.loop !261

.lr.ph284.preheader:                              ; preds = %.lr.ph280
  %putchar184449 = call i32 @putchar(i32 10)      ; 0 uses
  br label %.lr.ph284

.lr.ph284:                                        ; preds = %.lr.ph284.preheader, %.lr.ph284
  %indvars.iv332 = phi i64 [ 0, %.lr.ph284.preheader ], [ %indvars.iv.next333, %.lr.ph284 ] ; 2 uses
  %i.uo = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.up = getelementptr i8, ptr %i.uo, i64 8
  %.val211 = load ptr, ptr %i.up, align 8, !tbaa !44
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %.val211, i64 %indvars.iv332
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !8  ; 2 uses
  %i.us = and i32 %i.ur, 4
  %.not189 = icmp eq i32 %i.us, 0
  %i.ut = and i32 %i.ur, 1
  %i.uu = or disjoint i32 %i.ut, 48
  %i.uv = select i1 %.not189, i32 120, i32 %i.uu
  %putchar190 = call i32 @putchar(i32 %i.uv)      ; 0 uses
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1 ; 2 uses
  %exitcond336.not = icmp eq i64 %indvars.iv.next333, %wide.trip.count335
  br i1 %exitcond336.not, label %.lr.ph288.preheader, label %.lr.ph284, !llvm.loop !262

._crit_edge285:                                   ; preds = %bb.bf
  %putchar184 = call i32 @putchar(i32 10)         ; 0 uses
  %putchar185 = call i32 @putchar(i32 10)         ; 0 uses
  br label %._crit_edge289

.lr.ph288.preheader:                              ; preds = %.lr.ph284
  %putchar185450 = call i32 @putchar(i32 10)      ; 0 uses
  br label %.lr.ph288

.lr.ph288:                                        ; preds = %.lr.ph288.preheader, %.lr.ph288
  %indvars.iv337 = phi i64 [ 0, %.lr.ph288.preheader ], [ %indvars.iv.next338, %.lr.ph288 ] ; 2 uses
  %i.uw = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.ux = getelementptr i8, ptr %i.uw, i64 8
  %.val209 = load ptr, ptr %i.ux, align 8, !tbaa !44
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %.val209, i64 %indvars.iv337
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !8  ; 2 uses
  %i.va = and i32 %i.uz, 8
  %.not187 = icmp eq i32 %i.va, 0
  %i.vb = lshr i32 %i.uz, 1
  %i.vc = and i32 %i.vb, 1
  %i.vd = or disjoint i32 %i.vc, 48
  %i.ve = select i1 %.not187, i32 120, i32 %i.vd
  %putchar188 = call i32 @putchar(i32 %i.ve)      ; 0 uses
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1 ; 2 uses
  %exitcond341.not = icmp eq i64 %indvars.iv.next338, %wide.trip.count340
  br i1 %exitcond341.not, label %._crit_edge289, label %.lr.ph288, !llvm.loop !263

._crit_edge289:                                   ; preds = %.lr.ph288, %._crit_edge285
  %putchar186 = call i32 @putchar(i32 10)         ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge289, %bb.be
  br i1 %i.rm, label %.lr.ph292, label %.._crit_edge293_crit_edge

.._crit_edge293_crit_edge:                        ; preds = %bb.bg
  %.pre436 = zext nneg i32 %.2161295 to i64
  %.pre437 = shl nuw i64 1, %.pre436
  br label %._crit_edge293

.lr.ph292:                                        ; preds = %bb.bg
  %i.vf = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.vg = getelementptr i8, ptr %i.vf, i64 8
  %.val207 = load ptr, ptr %i.vg, align 8, !tbaa !44 ; 3 uses
  %i.vh = zext nneg i32 %.2161295 to i64
  %i.vi = shl nuw i64 1, %i.vh                    ; 6 uses
  br i1 %i.rp, label %.epil.preheader, label %.lr.ph292.new

.lr.ph292.new:                                    ; preds = %.lr.ph292, %bb.bk
  %indvars.iv342 = phi i64 [ %indvars.iv.next343.1, %bb.bk ], [ 0, %.lr.ph292 ] ; 4 uses
  %niter466 = phi i64 [ %niter466.next.1, %bb.bk ], [ 0, %.lr.ph292 ]
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %.val207, i64 %indvars.iv342
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !8
  %.off = add i32 %i.vk, -13
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph292.new
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv342 ; 2 uses
  %i.vm = load i64, ptr %i.vl, align 16, !tbaa !100
  %i.vn = or i64 %i.vm, %i.vi
  store i64 %i.vn, ptr %i.vl, align 16, !tbaa !100
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph292.new, %bb.bh
  %indvars.iv.next343 = or disjoint i64 %indvars.iv342, 1 ; 2 uses
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %.val207, i64 %indvars.iv.next343
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !8
  %.off.1 = add i32 %i.vp, -13
  %switch.1 = icmp ult i32 %.off.1, 2
  br i1 %switch.1, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next343 ; 2 uses
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !100
  %i.vs = or i64 %i.vr, %i.vi
  store i64 %i.vs, ptr %i.vq, align 8, !tbaa !100
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %indvars.iv.next343.1 = add nuw nsw i64 %indvars.iv342, 2 ; 2 uses
  %niter466.next.1 = add i64 %niter466, 2         ; 2 uses
  %niter466.ncmp.1 = icmp eq i64 %niter466.next.1, %unroll_iter465
  br i1 %niter466.ncmp.1, label %._crit_edge293.loopexit.unr-lcssa, label %.lr.ph292.new, !llvm.loop !264

._crit_edge293.loopexit.unr-lcssa:                ; preds = %bb.bk
  br i1 %lcmp.mod463.not, label %._crit_edge293, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge293.loopexit.unr-lcssa, %.lr.ph292
  %indvars.iv342.epil.init = phi i64 [ 0, %.lr.ph292 ], [ %indvars.iv.next343.1, %._crit_edge293.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod464)
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %.val207, i64 %indvars.iv342.epil.init
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !8
  %.off.epil = add i32 %i.vu, -13
  %switch.epil = icmp ult i32 %.off.epil, 2
  br i1 %switch.epil, label %bb.bl, label %._crit_edge293

bb.bl:                                            ; preds = %.epil.preheader
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv342.epil.init ; 2 uses
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !100
  %i.vx = or i64 %i.vw, %i.vi
  store i64 %i.vx, ptr %i.vv, align 8, !tbaa !100
  br label %._crit_edge293

._crit_edge293:                                   ; preds = %._crit_edge293.loopexit.unr-lcssa, %bb.bl, %.epil.preheader, %.._crit_edge293_crit_edge
  %.pre-phi438 = phi i64 [ %.pre437, %.._crit_edge293_crit_edge ], [ %i.vi, %.epil.preheader ], [ %i.vi, %bb.bl ], [ %i.vi, %._crit_edge293.loopexit.unr-lcssa ]
  %i.vy = load i64, ptr %i.ro, align 8, !tbaa !100
  %i.vz = or i64 %i.vy, %.pre-phi438
  store i64 %i.vz, ptr %i.ro, align 8, !tbaa !100
  %i.wa = add nsw i32 %.2161295, 1
  br label %bb.bo

bb.bm:                                            ; preds = %Abc_Clock.exit253
  %i.wb = load ptr, ptr %0, align 8, !tbaa !72
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 60
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !247
  %.not182 = icmp eq i32 %i.wd, 0
  br i1 %.not182, label %.loopexit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.we = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %1) ; 0 uses
  %i.wf = load ptr, ptr @stdout, align 8, !tbaa !226
  %i.wg = load ptr, ptr %i.rg, align 8, !tbaa !93
  %i.wh = getelementptr i8, ptr %i.wg, i64 4
  %.val = load i32, ptr %i.wh, align 4, !tbaa !43
  %i.wi = shl nuw i32 1, %.val
  call void @Extra_PrintBinary(ptr noundef %i.wf, ptr noundef nonnull %2, i32 noundef %i.wi) #33
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %.loopexit

bb.bo:                                            ; preds = %bb.bd, %._crit_edge293
  %.3 = phi i32 [ %.2161295, %bb.bd ], [ %i.wa, %._crit_edge293 ] ; 2 uses
  %i.wj = add nuw nsw i32 %.0170294, 1
  %i.wk = icmp samesign ult i32 %.0170294, 31
  %i.wl = icmp slt i32 %.3, 64
  %i.wm = select i1 %i.wk, i1 %i.wl, i1 false
  br i1 %i.wm, label %bb.ao, label %.loopexit, !llvm.loop !265

.loopexit:                                        ; preds = %bb.bo, %bb.an, %bb.bn, %bb.bm, %Abc_Clock.exit244
  %.0171 = phi i32 [ 0, %Abc_Clock.exit244 ], [ 1, %bb.bm ], [ 1, %bb.bn ], [ 0, %bb.an ], [ 0, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.0171
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @Sbd_TransposeMatrix64(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #12 {
.preheader:
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %bb.a
  %.02830 = phi i32 [ 0, %.preheader ], [ %i.n, %bb.a ] ; 3 uses
  %i.a = sext i32 %.02830 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !100  ; 2 uses
  %i.d = sext i32 %.02830 to i64
  %i.e = getelementptr [8 x i8], ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 256      ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !100  ; 2 uses
  %i.h = lshr i64 %i.g, 32
  %.masked = and i64 %i.c, 4294967295
  %i.i = xor i64 %i.h, %.masked                   ; 2 uses
  %i.j = xor i64 %i.i, %i.c
  store i64 %i.j, ptr %i.b, align 8, !tbaa !100
  %i.k = shl nuw i64 %i.i, 32
  %i.l = xor i64 %i.k, %i.g
  store i64 %i.l, ptr %i.f, align 8, !tbaa !100
  %i.m = add nsw i32 %.02830, 33
  %i.n = and i32 %i.m, -33                        ; 2 uses
  %i.o = icmp slt i32 %i.n, 64
  br i1 %i.o, label %bb.a, label %.preheader.1, !llvm.loop !266

.preheader.1:                                     ; preds = %bb.a, %.preheader.1
  %.02830.1 = phi i32 [ %i.ad, %.preheader.1 ], [ 0, %bb.a ] ; 3 uses
  %i.p = sext i32 %.02830.1 to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !100  ; 2 uses
  %i.s = sext i32 %.02830.1 to i64
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 128      ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !100  ; 2 uses
  %i.w = lshr i64 %i.v, 16
  %i.x = xor i64 %i.w, %i.r
  %i.y = and i64 %i.x, 281470681808895            ; 2 uses
  %i.z = xor i64 %i.y, %i.r
  store i64 %i.z, ptr %i.q, align 8, !tbaa !100
  %i.aa = shl nuw i64 %i.y, 16
  %i.ab = xor i64 %i.aa, %i.v
  store i64 %i.ab, ptr %i.u, align 8, !tbaa !100
  %i.ac = add nsw i32 %.02830.1, 17
  %i.ad = and i32 %i.ac, -17                      ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 64
  br i1 %i.ae, label %.preheader.1, label %.preheader.2, !llvm.loop !266

.preheader.2:                                     ; preds = %.preheader.1, %.preheader.2
  %.02830.2 = phi i32 [ %i.at, %.preheader.2 ], [ 0, %.preheader.1 ] ; 3 uses
  %i.af = sext i32 %.02830.2 to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %i.af ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !100 ; 2 uses
  %i.ai = sext i32 %.02830.2 to i64
  %i.aj = getelementptr [8 x i8], ptr %0, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 64     ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !100 ; 2 uses
  %i.am = lshr i64 %i.al, 8
  %i.an = xor i64 %i.am, %i.ah
  %i.ao = and i64 %i.an, 71777214294589695        ; 2 uses
  %i.ap = xor i64 %i.ao, %i.ah
  store i64 %i.ap, ptr %i.ag, align 8, !tbaa !100
  %i.aq = shl nuw i64 %i.ao, 8
  %i.ar = xor i64 %i.aq, %i.al
  store i64 %i.ar, ptr %i.ak, align 8, !tbaa !100
  %i.as = add nsw i32 %.02830.2, 9
  %i.at = and i32 %i.as, -9                       ; 2 uses
  %i.au = icmp slt i32 %i.at, 64
  br i1 %i.au, label %.preheader.2, label %.preheader.3, !llvm.loop !266

.preheader.3:                                     ; preds = %.preheader.2, %.preheader.3
  %.02830.3 = phi i32 [ %i.bj, %.preheader.3 ], [ 0, %.preheader.2 ] ; 3 uses
  %i.av = sext i32 %.02830.3 to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.av ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !100 ; 2 uses
  %i.ay = sext i32 %.02830.3 to i64
  %i.az = getelementptr [8 x i8], ptr %0, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 32     ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !100 ; 2 uses
  %i.bc = lshr i64 %i.bb, 4
  %i.bd = xor i64 %i.bc, %i.ax
  %i.be = and i64 %i.bd, 1085102592571150095      ; 2 uses
  %i.bf = xor i64 %i.be, %i.ax
  store i64 %i.bf, ptr %i.aw, align 8, !tbaa !100
  %i.bg = shl nuw i64 %i.be, 4
  %i.bh = xor i64 %i.bg, %i.bb
  store i64 %i.bh, ptr %i.ba, align 8, !tbaa !100
  %i.bi = add nsw i32 %.02830.3, 5
  %i.bj = and i32 %i.bi, -5                       ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 64
  br i1 %i.bk, label %.preheader.3, label %.preheader.4, !llvm.loop !266

.preheader.4:                                     ; preds = %.preheader.3, %.preheader.4
  %.02830.4 = phi i32 [ %i.bz, %.preheader.4 ], [ 0, %.preheader.3 ] ; 3 uses
  %i.bl = sext i32 %.02830.4 to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !100 ; 2 uses
  %i.bo = sext i32 %.02830.4 to i64
  %i.bp = getelementptr [8 x i8], ptr %0, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 16     ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !100 ; 2 uses
  %i.bs = lshr i64 %i.br, 2
  %i.bt = xor i64 %i.bs, %i.bn
  %i.bu = and i64 %i.bt, 3689348814741910323      ; 2 uses
  %i.bv = xor i64 %i.bu, %i.bn
  store i64 %i.bv, ptr %i.bm, align 8, !tbaa !100
  %i.bw = shl nuw i64 %i.bu, 2
  %i.bx = xor i64 %i.bw, %i.br
  store i64 %i.bx, ptr %i.bq, align 8, !tbaa !100
  %i.by = add nsw i32 %.02830.4, 3
  %i.bz = and i32 %i.by, -3                       ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 64
  br i1 %i.ca, label %.preheader.4, label %.preheader.5, !llvm.loop !266

.preheader.5:                                     ; preds = %.preheader.4, %.preheader.5
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.5 ], [ 0, %.preheader.4 ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !100 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !100 ; 2 uses
  %i.cg = lshr i64 %i.cf, 1
  %i.ch = xor i64 %i.cg, %i.cc
  %i.ci = and i64 %i.ch, 6148914691236517205      ; 2 uses
  %i.cj = xor i64 %i.ci, %i.cc
  store i64 %i.cj, ptr %i.cb, align 8, !tbaa !100
  %i.ck = shl nuw i64 %i.ci, 1
  %i.cl = xor i64 %i.ck, %i.cf
  store i64 %i.cl, ptr %i.ce, align 8, !tbaa !100
  %indvars.iv.next = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !100 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !100 ; 2 uses
  %i.cr = lshr i64 %i.cq, 1
  %i.cs = xor i64 %i.cr, %i.cn
  %i.ct = and i64 %i.cs, 6148914691236517205      ; 2 uses
  %i.cu = xor i64 %i.ct, %i.cn
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !100
  %i.cv = shl nuw i64 %i.ct, 1
  %i.cw = xor i64 %i.cv, %i.cq
  store i64 %i.cw, ptr %i.cp, align 8, !tbaa !100
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4
  %i.cx = icmp samesign ult i64 %indvars.iv.next, 62
  br i1 %i.cx, label %.preheader.5, label %bb.b, !llvm.loop !266

bb.b:                                             ; preds = %.preheader.5
  ret void
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @Sbd_ManFindCands(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #13 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 5 uses
  %i.b = alloca [64 x i32], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.c = sdiv i32 %2, 4                           ; 2 uses
  %i.d = sdiv i32 %2, 3
  %i.e = add nsw i32 %i.d, 2                      ; 4 uses
  %i.f = sdiv i32 %2, 2
  %i.g = add nsw i32 %i.f, 3                      ; 4 uses
  %i.h = sext i32 %2 to i64                       ; 6 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %1, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !100  ; 8 uses
  %i.k = icmp slt i32 %2, 8
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load i32, ptr %i.m, align 4, !tbaa !267
  %.not = icmp eq i32 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 8 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !93   ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 6 uses
  store i32 0, ptr %i.q, align 4, !tbaa !43
  br i1 %.not, label %.lr.ph.preheader, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !93   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !43
  %i.u = icmp sgt i32 %2, 0
  br i1 %i.u, label %.lr.ph.preheader.i, label %Sbd_ManFindCandsSimple.exit

.lr.ph.preheader.i:                               ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.t, %bb.c ], [ %i.q, %bb.b ] ; 6 uses
  %i.w = phi ptr [ %i.s, %bb.c ], [ %i.p, %bb.b ] ; 14 uses
  %i.x = phi ptr [ %i.r, %bb.c ], [ %i.o, %bb.b ] ; 6 uses
end_hunk_1
