Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sbdCore?download=true
inline.NumInlined: 748
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@Sbd_ManMatrPrint:bb.a

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
  %i.e = alloca [2 x i32], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.c, i8 0, i64 2048, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.d, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val205 = load i32, ptr %i.h, align 4, !tbaa !43 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !92
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val216 = load ptr, ptr %i.k, align 8, !tbaa !44
  %i.l = sext i32 %1 to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %.val216, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !91
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %.val204 = load i32, ptr %i.q, align 4, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !199
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %.val203 = load i32, ptr %i.t, align 4, !tbaa !43
  %i.u = add nsw i32 %.val203, %.val204
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !90
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val202 = load i32, ptr %i.x, align 4, !tbaa !43
  %i.y = add nsw i32 %i.u, %.val202
  %i.z = load ptr, ptr %0, align 8, !tbaa !72     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 60
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !247
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %1, i32 noundef %.val205) ; 0 uses
  %.val217.pre.pre = load ptr, ptr %0, align 8, !tbaa !72
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.val217.pre = phi ptr [ %i.z, %bb.a ], [ %.val217.pre.pre, %bb.b ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !94 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %.val201 = load i32, ptr %i.af, align 4, !tbaa !43 ; 3 uses
  %i.ag = icmp sgt i32 %.val201, 0
  br i1 %i.ag, label %.lr.ph, label %..critedge_crit_edge

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
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %.val215 = load ptr, ptr %i.ah, align 8, !tbaa !44
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !91
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %.val214 = load ptr, ptr %i.aj, align 8, !tbaa !44
  %i.ak = getelementptr i8, ptr %0, i64 56
  %.val220 = load ptr, ptr %i.ak, align 8, !tbaa !86
  %i.al = getelementptr i8, ptr %.val217.pre, i64 32
  %.val219.val = load i32, ptr %i.al, align 4, !tbaa !9 ; 2 uses
  %i.am = getelementptr i8, ptr %.val220, i64 8
  %.val220.val = load ptr, ptr %i.am, align 8, !tbaa !84 ; 2 uses
  %i.an = getelementptr i8, ptr %0, i64 72
  %.val224 = load ptr, ptr %i.an, align 8, !tbaa !86
  %i.ao = getelementptr i8, ptr %.val224, i64 8
  %.val224.val = load ptr, ptr %i.ao, align 8, !tbaa !84 ; 2 uses
  %i.ap = getelementptr i8, ptr %0, i64 80
  %.val228 = load ptr, ptr %i.ap, align 8, !tbaa !86
  %i.aq = getelementptr i8, ptr %.val228, i64 8
  %.val228.val = load ptr, ptr %i.aq, align 8, !tbaa !84 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %wide.trip.count = zext nneg i32 %.val201 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.val215, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !8
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %.val214, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !8
  %i.ax = mul nsw i32 %.val219.val, %i.aw
  %i.ay = sext i32 %i.ax to i64                   ; 3 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.val220.val, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !100
  %i.bb = sub nuw nsw i64 63, %indvars.iv         ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bb
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !100
  %i.bd = getelementptr inbounds [8 x i8], ptr %.val224.val, i64 %i.ay
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !100
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bb
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !100
  %i.bg = getelementptr inbounds [8 x i8], ptr %.val228.val, i64 %i.ay
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !100
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.bb
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !100
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.loopexit, label %bb.d, !llvm.loop !248

.critedge.loopexit:                               ; preds = %bb.d
  %i.bj = sub nsw i32 63, %.val201
  %i.bk = sext i32 %i.bj to i64
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.critedge.loopexit
  %.val226.val = phi ptr [ %.val226.val.pre, %..critedge_crit_edge ], [ %.val228.val, %.critedge.loopexit ]
  %.val222.val = phi ptr [ %.val222.val.pre, %..critedge_crit_edge ], [ %.val224.val, %.critedge.loopexit ]
  %.val218.val = phi ptr [ %.val218.val.pre, %..critedge_crit_edge ], [ %.val220.val, %.critedge.loopexit ]
  %.val217.val = phi i32 [ %.val217.val.pre, %..critedge_crit_edge ], [ %.val219.val, %.critedge.loopexit ]
  %.0166.lcssa = phi i64 [ 63, %..critedge_crit_edge ], [ %i.bk, %.critedge.loopexit ] ; 3 uses
  %i.bl = mul nsw i32 %.val217.val, %1
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %.val218.val, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !100
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.0166.lcssa
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !100
  %i.bq = getelementptr inbounds [8 x i8], ptr %.val222.val, i64 %i.bm
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !100
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.0166.lcssa
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !100
  %i.bt = getelementptr inbounds [8 x i8], ptr %.val226.val, i64 %i.bm
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !100
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 3 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %.0166.lcssa
  store i64 %i.bu, ptr %i.bw, align 8, !tbaa !100
  call fastcc void @Sbd_TransposeMatrix64(ptr noundef %i.a)
  call fastcc void @Sbd_TransposeMatrix64(ptr noundef %i.b)
  call fastcc void @Sbd_TransposeMatrix64(ptr noundef %i.bv)
  %i.bx = ashr i32 %.val205, 6
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = and i32 %.val205, 63
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.cb = shl nuw i64 1, %i.ca
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %.loopexit259
  %indvars.iv309 = phi i64 [ 0, %.critedge ], [ %indvars.iv.next310, %.loopexit259 ] ; 4 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv309 ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.by
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !100
  %i.cf = and i64 %i.ce, %i.cb
  %.not199 = icmp eq i64 %i.cf, 0
  br i1 %.not199, label %.loopexit259, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv309 ; 3 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.by
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !100
  %i.cj = lshr i64 %i.ci, %i.ca
  %i.ck = and i64 %i.cj, 1                        ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv309
  %i.cm = getelementptr inbounds nuw [1024 x i8], ptr %i.c, i64 %i.ck ; 11 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ck ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 512 ; 10 uses
  %.pre = load i64, ptr %i.cc, align 8, !tbaa !100 ; 3 uses
  %i.cp = load i64, ptr %i.cg, align 8, !tbaa !100 ; 2 uses
  %i.cq = xor i64 %i.cp, -1
  %i.cr = and i64 %.pre, %i.cq                    ; 4 uses
  %i.cs = and i64 %.pre, %i.cp                    ; 4 uses
  %i.ct = load i32, ptr %i.cn, align 4, !tbaa !8  ; 5 uses
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.f
  %wide.trip.count.i = zext nneg i32 %i.ct to i64 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.i
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !100 ; 2 uses
  %i.cx = and i64 %i.cw, %i.cr
  %i.cy = icmp eq i64 %i.cx, %i.cw
  br i1 %i.cy, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.i
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !100 ; 2 uses
  %i.db = and i64 %i.da, %i.cs
  %i.dc = icmp eq i64 %i.db, %i.da
  br i1 %i.dc, label %.loopexit451, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.g, !llvm.loop !249

.preheader.i:                                     ; preds = %bb.i, %bb.l
  %indvars.iv11.i = phi i64 [ %indvars.iv.next12.i, %bb.l ], [ 0, %bb.i ] ; 4 uses
  %.04.i = phi i32 [ %.1.i, %bb.l ], [ 0, %bb.i ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv11.i
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !100 ; 2 uses
  %i.df = and i64 %i.de, %i.cr
  %.not.i = icmp eq i64 %i.df, %i.cr
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader.i
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv11.i
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !100
  %i.di = and i64 %i.dh, %i.cs
  %.not58.i = icmp eq i64 %i.di, %i.cs
  br i1 %.not58.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader.i
  %i.dj = sext i32 %.04.i to i64                  ; 2 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.dj
  store i64 %i.de, ptr %i.dk, align 8, !tbaa !100
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv11.i
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !100
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.dj
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !100
  %i.do = add nsw i32 %.04.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.i = phi i32 [ %i.do, %bb.k ], [ %.04.i, %bb.j ] ; 4 uses
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1 ; 2 uses
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next12.i, %wide.trip.count.i
  br i1 %exitcond15.not.i, label %._crit_edge.i, label %.preheader.i, !llvm.loop !250

._crit_edge.i:                                    ; preds = %bb.l
  %i.dp = icmp slt i32 %.1.i, 64
  br i1 %i.dp, label %._crit_edge.thread.i, label %bb.m

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.f
  %.0.lcssa23.i = phi i32 [ %.1.i, %._crit_edge.i ], [ 0, %bb.f ] ; 2 uses
  %i.dq = sext i32 %.0.lcssa23.i to i64           ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.dq
  store i64 %i.cr, ptr %i.dr, align 8, !tbaa !100
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.dq
  store i64 %i.cs, ptr %i.ds, align 8, !tbaa !100
  %i.dt = add nsw i32 %.0.lcssa23.i, 1
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i
  %.2.i = phi i32 [ %i.dt, %._crit_edge.thread.i ], [ %.1.i, %._crit_edge.i ] ; 5 uses
  %i.du = icmp slt i32 %.2.i, %i.ct
  br i1 %i.du, label %.lr.ph8.i, label %.loopexit451

.lr.ph8.i:                                        ; preds = %bb.m
  %i.dv = sext i32 %.2.i to i64
  %i.dw = shl nsw i64 %i.dv, 3
  %i.dx = getelementptr i8, ptr %i.cm, i64 %i.dw  ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.dx, i64 512
  %i.dy = xor i32 %.2.i, -1
  %i.dz = add i32 %i.ct, %i.dy
  %i.ea = zext i32 %i.dz to i64
  %i.eb = shl nuw nsw i64 %i.ea, 3
  %i.ec = add nuw nsw i64 %i.eb, 8                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ec, i1 false), !tbaa !100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dx, i8 0, i64 %i.ec, i1 false), !tbaa !100
  br label %.loopexit451

.loopexit451:                                     ; preds = %bb.h, %bb.m, %.lr.ph8.i
  %.055.i = phi i32 [ %.2.i, %bb.m ], [ %.2.i, %.lr.ph8.i ], [ %i.ct, %bb.h ]
  store i32 %.055.i, ptr %i.cn, align 4, !tbaa !8
  %i.ed = load i64, ptr %i.cl, align 8, !tbaa !100 ; 3 uses
  %i.ee = icmp eq i64 %.pre, %i.ed
  br i1 %i.ee, label %.loopexit259, label %bb.n

bb.n:                                             ; preds = %.loopexit451
  %i.ef = load i64, ptr %i.cg, align 8, !tbaa !100 ; 2 uses
  %i.eg = xor i64 %i.ef, -1
  %i.eh = and i64 %i.ed, %i.eg                    ; 4 uses
  %i.ei = and i64 %i.ed, %i.ef                    ; 4 uses
  %i.ej = load i32, ptr %i.cn, align 4, !tbaa !8  ; 5 uses
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %.lr.ph.i.1, label %._crit_edge.thread.i.1

.lr.ph.i.1:                                       ; preds = %bb.n
  %wide.trip.count.i.1 = zext nneg i32 %i.ej to i64 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i.1
  %indvars.iv.i.1 = phi i64 [ 0, %.lr.ph.i.1 ], [ %indvars.iv.next.i.1, %bb.q ] ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.i.1
  %i.em = load i64, ptr %i.el, align 8, !tbaa !100 ; 2 uses
  %i.en = and i64 %i.em, %i.eh
  %i.eo = icmp eq i64 %i.en, %i.em
  br i1 %i.eo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.i.1
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !100 ; 2 uses
  %i.er = and i64 %i.eq, %i.ei
  %i.es = icmp eq i64 %i.er, %i.eq
  br i1 %i.es, label %Sbd_ManAddCube2.exit.1, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i.1
  br i1 %exitcond.not.i.1, label %.preheader.i.1, label %bb.o, !llvm.loop !249

.preheader.i.1:                                   ; preds = %bb.q, %bb.t
end_hunk_0
