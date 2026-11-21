Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h264_direct?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@ff_h264_direct_ref_list_init:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i32, ptr %i.v, align 4, !tbaa !62
  %i.ap = zext i32 %i.ao to i64
  %i.aq = icmp samesign ult i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %bb.c, label %._crit_edge, !llvm.loop !86

._crit_edge107.loopexit:                          ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !60
  br label %._crit_edge107

._crit_edge107:                                   ; preds = %._crit_edge107.loopexit, %.preheader103
  %i.ar = phi i32 [ %.pre, %._crit_edge107.loopexit ], [ %i.e, %.preheader103 ]
  %i.as = icmp eq i32 %i.ar, 3
  br i1 %i.as, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge107
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 676
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 684
  %i.av = load i64, ptr %i.at, align 4
  store i64 %i.av, ptr %i.au, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 420
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.ax, ptr noundef nonnull align 4 dereferenceable(256) %i.aw, i64 256, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge107
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 35824
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !89
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 31064
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 692
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !77
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 692
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !77
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 31064
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !64
  %i.bi = icmp eq i32 %i.bf, %i.bh
  br i1 %i.bi, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 146) #8
  tail call void @abort() #9
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 21088 ; 2 uses
  store i32 0, ptr %i.bj, align 16, !tbaa !78
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 22648
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !88
  %.not94 = icmp eq i32 %i.bl, 2
  br i1 %.not94, label %bb.j, label %.loopexit102

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 22644
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !62
  %.not95 = icmp eq i32 %i.bn, 0
  br i1 %.not95, label %.loopexit102, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = load i32, ptr %i.d, align 4, !tbaa !60  ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 3
  br i1 %i.bp, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 25392
  %i.br = load ptr, ptr %i.bq, align 16, !tbaa !65 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 136
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !62 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 2147483647
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 140
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !62 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 2147483647
  %or.cond = select i1 %i.bu, i1 %i.bx, i1 false
  br i1 %or.cond, label %bb.m, label %._crit_edge119

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !72
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bz, i32 noundef 16, ptr noundef nonnull @.str.3) #8
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 21084
  store i32 1, ptr %i.ca, align 4, !tbaa !79
  br label %bb.q

._crit_edge119:                                   ; preds = %bb.l
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 144
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !90
  %i.ce = sext i32 %i.bt to i64
  %i.cf = sext i32 %i.cd to i64                   ; 2 uses
  %i.cg = sub nsw i64 %i.ce, %i.cf
  %i.ch = tail call i64 @llvm.abs.i64(i64 %i.cg, i1 true)
  %i.ci = sext i32 %i.bw to i64
  %i.cj = sub nsw i64 %i.ci, %i.cf
  %i.ck = tail call i64 @llvm.abs.i64(i64 %i.cj, i1 true)
  %i.cl = icmp samesign uge i64 %i.ch, %i.ck
  %i.cm = zext i1 %i.cl to i32                    ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 21084
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !79
  br label %bb.q

bb.n:                                             ; preds = %bb.k
  %i.co = load i32, ptr %i.h, align 4, !tbaa !75  ; 2 uses
  %i.cp = and i32 %i.co, %i.bo
  %.not96 = icmp eq i32 %i.cp, 0
  br i1 %.not96, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 25392
  %i.cr = load ptr, ptr %i.cq, align 16, !tbaa !65
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 692
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !77
  %.not97 = icmp eq i32 %i.ct, 0
  br i1 %.not97, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cu = shl nsw i32 %i.co, 1
  %i.cv = add nsw i32 %i.cu, -3
  store i32 %i.cv, ptr %i.bj, align 16, !tbaa !78
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %._crit_edge119, %bb.n, %bb.o, %bb.p
  %.086 = phi i32 [ %i.g, %bb.p ], [ %i.g, %bb.n ], [ %i.g, %bb.o ], [ %i.cm, %._crit_edge119 ], [ 1, %bb.m ] ; 2 uses
  %.085 = phi i32 [ %i.k, %bb.p ], [ %i.k, %bb.n ], [ %i.k, %bb.o ], [ %i.cm, %._crit_edge119 ], [ 1, %bb.m ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cx = load i32, ptr %i.cw, align 16, !tbaa !91
  %.not98 = icmp eq i32 %i.cx, 3
  br i1 %.not98, label %bb.r, label %.loopexit102

bb.r:                                             ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 21080
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !80
  %.not99 = icmp eq i32 %i.cz, 0
  br i1 %.not99, label %.preheader101, label %.loopexit102

.preheader101:                                    ; preds = %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 21488 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 31064 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 21872 ; 2 uses
  tail call fastcc void @fill_colmap(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.da, i32 noundef 0, i32 noundef %.086, i32 noundef %.085, i32 noundef 0)
  %i.dd = load i32, ptr %i.db, align 8, !tbaa !64
  %.not100 = icmp eq i32 %i.dd, 0
  br i1 %.not100, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader101
  tail call fastcc void @fill_colmap(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.dc, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 22256
  tail call fastcc void @fill_colmap(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.de, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.preheader101
  tail call fastcc void @fill_colmap(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.da, i32 noundef 1, i32 noundef %.086, i32 noundef %.085, i32 noundef 0)
  %i.df = load i32, ptr %i.db, align 8, !tbaa !64
  %.not100.1 = icmp eq i32 %i.df, 0
  br i1 %.not100.1, label %.loopexit102, label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %.loopexit
  tail call fastcc void @fill_colmap(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.dc, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 22256
  tail call fastcc void @fill_colmap(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.dg, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  br label %.loopexit102

.loopexit102:                                     ; preds = %.loopexit, %.preheader.preheader.1, %bb.q, %bb.r, %bb.i, %bb.j
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @fill_colmap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 22656 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 25392
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !65  ; 3 uses
  %.not = icmp eq i32 %6, 0                       ; 4 uses
  %i.d = select i1 %.not, i32 0, i32 16           ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 22640
  %i.f = load i32, ptr %i.e, align 16, !tbaa !62  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl i32 %i.f, 1
  %i.h = add i32 %i.g, 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 31068
  %i.j = load i32, ptr %i.i, align 4, !tbaa !60
  %i.k = icmp ne i32 %i.j, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %i.h, %bb.b ], [ %i.f, %bb.c ] ; 3 uses
  %i.m = phi i1 [ true, %bb.b ], [ %i.k, %bb.c ]  ; 4 uses
  %i.n = zext nneg i32 %3 to i64                  ; 3 uses
  %i.o = getelementptr inbounds nuw [192 x i8], ptr %2, i64 %i.n ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.o, i8 0, i64 192, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 676
  %i.q = sext i32 %5 to i64                       ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.q
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.n ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  %i.u = getelementptr inbounds [256 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw [128 x i8], ptr %i.u, i64 %i.n ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 692 ; 2 uses
  %i.x = load i32, ptr %i.s, align 4, !tbaa !62
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph62, label %.split67.us

.lr.ph62:                                         ; preds = %bb.d
  %i.z = icmp slt i32 %i.d, %i.l
  %i.aa = zext nneg i32 %i.d to i64               ; 2 uses
  %7 = icmp ne i32 %4, 0
  %or.cond = select i1 %7, i1 %i.m, i1 false
  br i1 %i.z, label %.lr.ph62.split.us.preheader, label %.split67.us

.lr.ph62.split.us.preheader:                      ; preds = %.lr.ph62
  %i.ab = sext i32 %4 to i64
  %wide.trip.count = zext i32 %i.l to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.o, i64 %i.ab
  br label %.lr.ph62.split.us

.lr.ph62.split.us:                                ; preds = %.lr.ph62.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv73 = phi i64 [ 0, %.lr.ph62.split.us.preheader ], [ %indvars.iv.next74, %..loopexit_crit_edge.us ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv73
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !62 ; 4 uses
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph62.split.us
  %i.ae = or i32 %i.ad, 3
  br label %.lr.ph.us

bb.f:                                             ; preds = %.lr.ph62.split.us
  %i.af = and i32 %i.ad, 3
  %i.ag = icmp eq i32 %i.af, 3
  %i.ah = and i32 %i.ad, -3
  %spec.select = select i1 %i.ag, i32 %i.ah, i32 %i.ad
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.f, %bb.e
  %.0.us = phi i32 [ %i.ae, %bb.e ], [ %spec.select, %bb.f ]
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.us, %bb.h
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph.us ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !65
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 148
  %i.am = load i32, ptr %i.al, align 4, !tbaa !76
  %i.an = shl nsw i32 %i.am, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !75
  %i.aq = and i32 %i.ap, 3
  %i.ar = or disjoint i32 %i.aq, %i.an
  %i.as = icmp eq i32 %i.ar, %.0.us
  br i1 %i.as, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.g, !llvm.loop !92

bb.i:                                             ; preds = %bb.g
  %i.at = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.au = add nsw i32 %i.at, -16
  %i.av = xor i32 %i.au, %4
  %i.aw = select i1 %.not, i32 %i.at, i32 %i.av   ; 2 uses
  %i.ax = load i32, ptr %i.w, align 4, !tbaa !77
  %.not57.us = icmp eq i32 %i.ax, 0
  br i1 %.not57.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.idx = shl i64 %indvars.iv73, 3
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx
  %i.ay = getelementptr i8, ptr %gep, i64 64
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !62
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %or.cond, label %..loopexit_crit_edge.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv73
  store i32 %i.aw, ptr %i.az, align 4, !tbaa !62
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.h, %bb.l, %bb.k
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.ba = load i32, ptr %i.s, align 4, !tbaa !62  ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next74, %i.bb
  br i1 %i.bc, label %.lr.ph62.split.us, label %._crit_edge, !llvm.loop !93

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us
  %i.bd = icmp sgt i32 %i.ba, 0
  br i1 %i.bd, label %.lr.ph62.1, label %.split67.us

.lr.ph62.1:                                       ; preds = %._crit_edge
  %8 = icmp ne i32 %4, 1
  %or.cond.1 = select i1 %8, i1 %i.m, i1 false
  %9 = xor i32 %4, 1
  %i.be = sext i32 %9 to i64
  %wide.trip.count.1 = zext i32 %i.l to i64
  %invariant.gep81 = getelementptr [4 x i8], ptr %i.o, i64 %i.be
  br label %.lr.ph62.split.us.1

.lr.ph62.split.us.1:                              ; preds = %..loopexit_crit_edge.us.1, %.lr.ph62.1
  %indvars.iv73.1 = phi i64 [ 0, %.lr.ph62.1 ], [ %indvars.iv.next74.1, %..loopexit_crit_edge.us.1 ] ; 4 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv73.1
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !62 ; 4 uses
  br i1 %i.m, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph62.split.us.1
  %i.bh = or i32 %i.bg, 3
  br label %.lr.ph.us.1

bb.n:                                             ; preds = %.lr.ph62.split.us.1
  %i.bi = and i32 %i.bg, 3
  %i.bj = icmp eq i32 %i.bi, 3
  %i.bk = and i32 %i.bg, -2
  %spec.select83 = select i1 %i.bj, i32 %i.bk, i32 %i.bg
  br label %.lr.ph.us.1

.lr.ph.us.1:                                      ; preds = %bb.n, %bb.m
  %.0.us.1 = phi i32 [ %i.bh, %bb.m ], [ %spec.select83, %bb.n ]
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.us.1
  %indvars.iv.1 = phi i64 [ %i.aa, %.lr.ph.us.1 ], [ %indvars.iv.next.1, %bb.p ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [56 x i8], ptr %i.a, i64 %indvars.iv.1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !65
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 148
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !76
  %i.bq = shl nsw i32 %i.bp, 2
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !75
  %i.bt = and i32 %i.bs, 3
  %i.bu = or disjoint i32 %i.bt, %i.bq
  %i.bv = icmp eq i32 %i.bu, %.0.us.1
  br i1 %i.bv, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.1
  br i1 %exitcond.1.not, label %..loopexit_crit_edge.us.1, label %bb.o, !llvm.loop !92

bb.q:                                             ; preds = %bb.o
  %i.bw = trunc nuw nsw i64 %indvars.iv.1 to i32  ; 2 uses
  %i.bx = add nsw i32 %i.bw, -16
  %i.by = xor i32 %i.bx, %4
  %i.bz = select i1 %.not, i32 %i.bw, i32 %i.by   ; 2 uses
  %i.ca = load i32, ptr %i.w, align 4, !tbaa !77
  %.not57.us.1 = icmp eq i32 %i.ca, 0
  br i1 %.not57.us.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.idx77 = shl i64 %indvars.iv73.1, 3
  %gep82 = getelementptr i8, ptr %invariant.gep81, i64 %.idx77
  %i.cb = getelementptr i8, ptr %gep82, i64 64
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !62
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %or.cond.1, label %..loopexit_crit_edge.us.1, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv73.1
  store i32 %i.bz, ptr %i.cc, align 4, !tbaa !62
  br label %..loopexit_crit_edge.us.1

..loopexit_crit_edge.us.1:                        ; preds = %bb.p, %bb.t, %bb.s
  %indvars.iv.next74.1 = add nuw nsw i64 %indvars.iv73.1, 1 ; 2 uses
  %i.cd = load i32, ptr %i.s, align 4, !tbaa !62
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %indvars.iv.next74.1, %i.ce
  br i1 %i.cf, label %.lr.ph62.split.us.1, label %.split67.us, !llvm.loop !93

.split67.us:                                      ; preds = %..loopexit_crit_edge.us.1, %.lr.ph62, %._crit_edge, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_h264_pred_direct_motion(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 21080
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 31048
  %i.d = load i32, ptr %i.c, align 8, !tbaa !96   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 21032
  %i.f = load i32, ptr %i.e, align 8, !tbaa !97   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 21028 ; 8 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !98   ; 6 uses
  %i.i = load i32, ptr %2, align 4, !tbaa !62     ; 4 uses
  %i.j = and i32 %i.i, 64                         ; 6 uses
  %i.k = getelementptr i8, ptr %1, i64 25380      ; 4 uses
  %i.l = getelementptr i8, ptr %1, i64 25392      ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 664
  %i.p = load i32, ptr %i.o, align 8, !tbaa !110
  %i.q = and i32 %i.p, 1
  %.not.i.i7 = icmp eq i32 %i.q, 0                ; 2 uses
  br i1 %.not, label %bb.ey, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i7, label %await_reference_mb_row.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val412.i = load ptr, ptr %i.l, align 8, !tbaa !65 ; 2 uses
  %.val411.i = load i32, ptr %i.k, align 4, !tbaa !75
  %i.r = lshr i32 %i.i, 7
  %.lobit.i = and i32 %i.r, 1
  %i.s = add nsw i32 %.lobit.i, %i.h
  %i.t = getelementptr inbounds nuw i8, ptr %.val412.i, i64 696
  %i.u = load i32, ptr %i.t, align 8, !tbaa !111  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 31724
  %i.w = load i32, ptr %i.v, align 4, !tbaa !112
  %i.x = shl nsw i32 %i.w, 4
  %i.y = ashr i32 %i.x, %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %.val412.i, i64 8
  %i.aa = shl nsw i32 %i.s, 4
  %i.ab = ashr i32 %i.aa, %i.u
  %i.ac = add nsw i32 %i.y, -1
  %i.ad = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 %i.ac)
  %i.ae = icmp ne i32 %i.u, 0
  %i.af = icmp ne i32 %.val411.i, 1
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  %i.ah = zext i1 %i.ag to i32
  tail call void @ff_thread_await_progress(ptr noundef nonnull %i.z, i32 noundef %i.ad, i32 noundef %i.ah) #8
  br label %await_reference_mb_row.exit.i

await_reference_mb_row.exit.i:                    ; preds = %bb.c, %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 29056
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 28736 ; 4 uses
  %.not403.i = icmp eq i32 %i.j, 0                ; 16 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 29067
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !113
  %i.am = sext i8 %i.al to i32                    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 29060
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !113
  %i.ap = sext i8 %i.ao to i32                    ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 29064
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !113 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 28768
  %i.at = icmp eq i8 %i.ar, -2
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %await_reference_mb_row.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 29059
  %i.av = load i8, ptr %i.au, align 1, !tbaa !113
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 28748
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %await_reference_mb_row.exit.i
  %.0322.in.i = phi i8 [ %i.av, %bb.d ], [ %i.ar, %await_reference_mb_row.exit.i ]
  %.0321.i = phi ptr [ %i.aw, %bb.d ], [ %i.as, %await_reference_mb_row.exit.i ] ; 3 uses
  %.0322.i = sext i8 %.0322.in.i to i32           ; 2 uses
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.am, i32 %i.ap) ; 2 uses
  %.0322..i = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 %.0322.i) ; 5 uses
  %i.ay = icmp sgt i32 %.0322..i, -1
  br i1 %i.ay, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 28780 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 28752 ; 2 uses
  %i.bb = icmp eq i32 %.0322..i, %i.am            ; 2 uses
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %.0322..i, %i.ap            ; 2 uses
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp uge i32 %i.ax, %.0322.i
  %i.bg = zext i1 %i.bf to i32
  %i.bh = add nuw nsw i32 %i.be, %i.bg
  %i.bi = add nuw nsw i32 %i.bh, %i.bc
  %i.bj = icmp samesign ugt i32 %i.bi, 1
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bk = load i16, ptr %i.az, align 4, !tbaa !114
  %i.bl = sext i16 %i.bk to i32                   ; 2 uses
  %i.bm = load i16, ptr %i.ba, align 8, !tbaa !114
  %i.bn = sext i16 %i.bm to i32                   ; 2 uses
  %i.bo = load i16, ptr %.0321.i, align 2, !tbaa !114
  %i.bp = sext i16 %i.bo to i32
  %..i.i = tail call i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.bl, i32 range(i32 -32768, 32768) %i.bn)
  %.20.i.i = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.bl, i32 range(i32 -32768, 32768) %i.bn)
  %i.bq = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.bp, i32 %..i.i)
  %i.br = tail call range(i32 -32768, 32768) i32 @llvm.smax.i32(i32 %i.bq, i32 %.20.i.i)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 28782
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !114
  %i.bu = sext i16 %i.bt to i32                   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 28754
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !114
  %i.bx = sext i16 %i.bw to i32                   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0321.i, i64 2
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !114
  %i.ca = sext i16 %i.bz to i32
  %..i413.i = tail call i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.bu, i32 range(i32 -32768, 32768) %i.bx)
  %.20.i414.i = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.bu, i32 range(i32 -32768, 32768) %i.bx)
  %i.cb = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.ca, i32 %..i413.i)
  %i.cc = tail call range(i32 -32768, 32768) i32 @llvm.smax.i32(i32 %i.cb, i32 %.20.i414.i)
  %i.cd = and i32 %i.br, 65535
  %i.ce = shl nsw i32 %i.cc, 16
  %i.cf = or disjoint i32 %i.ce, %i.cd
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cg = load i32, ptr %i.az, align 4, !tbaa !113
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = load i32, ptr %i.ba, align 8, !tbaa !113
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ci = load i32, ptr %.0321.i, align 4, !tbaa !113
  br label %bb.o

bb.m:                                             ; preds = %bb.e
  br i1 %.not403.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cj = load i32, ptr %2, align 4, !tbaa !62
  %i.ck = and i32 %i.cj, -12289
  store i32 %i.ck, ptr %2, align 4, !tbaa !62
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.i, %bb.g
  %.sroa.0460.0.i = phi i32 [ %.0322..i, %bb.g ], [ %i.am, %bb.i ], [ %i.ap, %bb.k ], [ %.0322..i, %bb.l ], [ -1, %bb.n ], [ -1, %bb.m ] ; 8 uses
  %.sroa.0.0.i = phi i32 [ %i.cf, %bb.g ], [ %i.cg, %bb.i ], [ %i.ch, %bb.k ], [ %i.ci, %bb.l ], [ 0, %bb.n ], [ 0, %bb.m ] ; 61 uses
  %.1328.i = phi i32 [ 61440, %bb.g ], [ 61440, %bb.i ], [ 61440, %bb.k ], [ 61440, %bb.l ], [ 49152, %bb.n ], [ 49152, %bb.m ] ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 29107
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !113
  %i.cn = sext i8 %i.cm to i32                    ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 29100
  %i.cp = load i8, ptr %i.co, align 4, !tbaa !113
  %i.cq = sext i8 %i.cp to i32                    ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 29104
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !113 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 28928
  %i.cu = icmp eq i8 %i.cs, -2
  br i1 %i.cu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 29099
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !113
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 28908
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0322.in.1.i = phi i8 [ %i.cw, %bb.p ], [ %i.cs, %bb.o ]
  %.0321.1.i = phi ptr [ %i.cx, %bb.p ], [ %i.ct, %bb.o ] ; 3 uses
  %.0322.1.i = sext i8 %.0322.in.1.i to i32       ; 2 uses
  %i.cy = tail call i32 @llvm.umin.i32(i32 %i.cn, i32 %i.cq) ; 2 uses
  %.0322..1.i = tail call i32 @llvm.umin.i32(i32 %i.cy, i32 %.0322.1.i) ; 5 uses
  %i.cz = icmp sgt i32 %.0322..1.i, -1
  br i1 %i.cz, label %bb.s, label %bb.r

end_hunk_0
