Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/inet_cidr_ntop?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"/%u\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%x\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @pg_inet_cidr_ntop(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 15 uses
  %i.b = alloca [50 x i8], align 16               ; 23 uses
  switch i32 %0, label %bb.bi [
    i32 2, label %bb.b
    i32 3, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %or.cond.i = icmp ugt i32 %2, 32
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #7
  store i32 22, ptr %i.c, align 4
  br label %inet_cidr_ntop_ipv4.exit

bb.d:                                             ; preds = %bb.b
  %i.d = icmp eq i32 %2, 0
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = icmp ult i64 %4, 2
  br i1 %i.e, label %.loopexit.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 48, ptr %3, align 1
  %i.g = add i64 %4, -1
  store i8 0, ptr %i.f, align 1
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.h = lshr i32 %2, 3                           ; 2 uses
  %.not67.i = icmp eq i32 %i.h, 0
  br i1 %.not67.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.i = icmp ult i64 %4, 6
  br i1 %i.i, label %.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.04961.i63 = phi ptr [ %i.j, %.lr.ph.i ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %.14662.i62 = phi ptr [ %i.s, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ] ; 4 uses
  %.163.i61 = phi i64 [ %i.v, %.lr.ph.i ], [ %4, %.lr.ph.i.preheader ] ; 2 uses
  %.064.i60 = phi i32 [ %i.w, %.lr.ph.i ], [ %i.h, %.lr.ph.i.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.04961.i63, i64 1 ; 2 uses
  %i.k = load i8, ptr %.04961.i63, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.14662.i62, ptr noundef nonnull @.str, i32 noundef %i.l) #8
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.14662.i62, i64 %i.n ; 4 uses
  %.not54.i = icmp eq i32 %.064.i60, 1
  br i1 %.not54.i, label %.thread76.i, label %.lr.ph.i

.thread76.i:                                      ; preds = %.lr.ph
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %.14662.i62 to i64
  %.neg5578.i = add i64 %.163.i61, %i.q
  %i.r = sub i64 %.neg5578.i, %i.p
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 3 uses
  store i8 46, ptr %i.o, align 1
  store i8 0, ptr %i.s, align 1
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %.14662.i62 to i64
  %.neg55.i = add i64 %.163.i61, %i.u
  %i.v = sub i64 %.neg55.i, %i.t                  ; 2 uses
  %i.w = add nsw i32 %.064.i60, -1
  %i.x = icmp ult i64 %i.v, 6
  br i1 %i.x, label %.loopexit.i, label %.lr.ph

._crit_edge.i:                                    ; preds = %.thread76.i, %bb.f
  %.049.lcssa.i = phi ptr [ %1, %bb.f ], [ %i.j, %.thread76.i ]
  %.146.lcssa.i = phi ptr [ %3, %bb.f ], [ %i.o, %.thread76.i ] ; 5 uses
  %.1.lcssa.i = phi i64 [ %4, %bb.f ], [ %i.r, %.thread76.i ] ; 3 uses
  %i.y = and i32 %2, 7                            ; 3 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.z = icmp ult i64 %.1.lcssa.i, 6
  br i1 %i.z, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not53.i = icmp eq ptr %.146.lcssa.i, %3
  br i1 %.not53.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.146.lcssa.i, i64 1
  store i8 46, ptr %.146.lcssa.i, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.3.i = phi ptr [ %i.aa, %bb.i ], [ %3, %bb.h ] ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.y
  %i.ab = xor i32 %notmask.i, -1
  %i.ac = sub nuw nsw i32 8, %i.y
  %i.ad = shl nuw nsw i32 %i.ab, %i.ac
  %i.ae = load i8, ptr %.049.lcssa.i, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = and i32 %i.ad, %i.af
  %i.ah = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.3.i, ptr noundef nonnull @.str, i32 noundef %i.ag) #8
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.ai ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %.146.lcssa.i to i64
  %.neg.i = add i64 %.1.lcssa.i, %i.al
  %i.am = sub i64 %.neg.i, %i.ak
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i, %._crit_edge.thread.i
  %.4.i = phi ptr [ %i.aj, %bb.j ], [ %.146.lcssa.i, %._crit_edge.i ], [ %i.f, %._crit_edge.thread.i ]
  %.2.i = phi i64 [ %i.am, %bb.j ], [ %.1.lcssa.i, %._crit_edge.i ], [ %i.g, %._crit_edge.thread.i ]
  %i.an = icmp ult i64 %.2.i, 5
  br i1 %i.an, label %.loopexit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef %.4.i, ptr noundef nonnull @.str.1, i32 noundef %2) #8 ; 0 uses
  br label %inet_cidr_ntop_ipv4.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %bb.k, %bb.g, %bb.e
  %i.ap = tail call ptr @__errno_location() #7
  store i32 90, ptr %i.ap, align 4
  br label %inet_cidr_ntop_ipv4.exit

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %or.cond.i9 = icmp ugt i32 %2, 128
  br i1 %or.cond.i9, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aq = tail call ptr @__errno_location() #7
  store i32 22, ptr %i.aq, align 4
  br label %inet_cidr_ntop_ipv6.exit

bb.o:                                             ; preds = %bb.m
  %i.ar = icmp eq i32 %2, 0
  br i1 %i.ar, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 58, ptr %i.b, align 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  store i8 58, ptr %i.as, align 1
  store i8 0, ptr %i.at, align 2
  br label %.loopexit.i13

bb.q:                                             ; preds = %bb.o
  %i.au = add nuw nsw i32 %2, 7
  %i.av = lshr i32 %i.au, 3                       ; 2 uses
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %1, i64 %i.aw, i1 false)
  %i.ax = getelementptr i8, ptr %i.a, i64 %i.aw   ; 2 uses
  %i.ay = sub nuw nsw i32 16, %i.av
  %i.az = zext nneg i32 %i.ay to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 0, i64 %i.az, i1 false)
  %i.ba = and i32 %2, 7                           ; 2 uses
  %.not.i10 = icmp eq i32 %i.ba, 0
  br i1 %.not.i10, label %.lr.ph.preheader.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = ashr exact i32 -256, %i.ba
  %i.bc = getelementptr i8, ptr %i.ax, i64 -1     ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = trunc nsw i32 %i.bb to i8
  %i.bf = and i8 %i.bd, %i.be
  store i8 %i.bf, ptr %i.bc, align 1
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r, %bb.q
  %i.bg = add nuw nsw i32 %2, 15
  %i.bh = lshr i32 %i.bg, 4                       ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 1
  %spec.store.select.i = select i1 %i.bi, i32 2, i32 %i.bh ; 10 uses
  %i.bj = shl nuw nsw i32 %spec.store.select.i, 1
  %i.bk = zext nneg i32 %i.bj to i64
  br label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %bb.w, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.w ] ; 3 uses
  %.0101140.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1102.i, %bb.w ] ; 5 uses
  %.0103139.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.2105.i, %bb.w ] ; 5 uses
  %.0106138.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1107.i, %bb.w ] ; 4 uses
  %.0109137.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1110.i, %bb.w ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = or i8 %i.bo, %i.bm
  %i.bq = icmp eq i8 %i.bp, 0
  %i.br = icmp eq i32 %.0101140.i, 0              ; 2 uses
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i11
  %i.bs = lshr exact i64 %indvars.iv.i, 1
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %spec.select.i = select i1 %i.br, i32 %i.bt, i32 %.0103139.i
  %i.bu = add i32 %.0101140.i, 1
  br label %bb.w

bb.t:                                             ; preds = %.lr.ph.i11
  br i1 %i.br, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = icmp slt i32 %.0106138.i, %.0101140.i
  br i1 %i.bv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %.1110.i = phi i32 [ %.0109137.i, %bb.s ], [ %.0103139.i, %bb.v ], [ %.0109137.i, %bb.u ], [ %.0109137.i, %bb.t ] ; 2 uses
  %.1107.i = phi i32 [ %.0106138.i, %bb.s ], [ %.0101140.i, %bb.v ], [ %.0106138.i, %bb.u ], [ %.0106138.i, %bb.t ] ; 3 uses
  %.2105.i = phi i32 [ %spec.select.i, %bb.s ], [ %.0103139.i, %bb.v ], [ %.0103139.i, %bb.u ], [ %.0103139.i, %bb.t ] ; 2 uses
  %.1102.i = phi i32 [ %i.bu, %bb.s ], [ 0, %bb.v ], [ %.0101140.i, %bb.u ], [ 0, %bb.t ] ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bw = icmp samesign ult i64 %indvars.iv.next.i, %i.bk
  br i1 %i.bw, label %.lr.ph.i11, label %._crit_edge.i12, !llvm.loop !4

._crit_edge.i12:                                  ; preds = %bb.w
  %.not116.i = icmp ne i32 %.1102.i, 0
  %i.bx = icmp slt i32 %.1107.i, %.1102.i
  %or.cond123.i = select i1 %.not116.i, i1 %i.bx, i1 false ; 2 uses
  %.2111.i = select i1 %or.cond123.i, i32 %.2105.i, i32 %.1110.i ; 6 uses
  %.2108.i = select i1 %or.cond123.i, i32 %.1102.i, i32 %.1107.i
  %.2108.fr.i = freeze i32 %.2108.i               ; 7 uses
  %i.by = icmp ne i32 %.2108.fr.i, %spec.store.select.i
  %i.bz = icmp eq i32 %.2111.i, 0
  %or.cond3.i = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %or.cond3.i, label %bb.x, label %.lr.ph149.split.us.i

bb.x:                                             ; preds = %._crit_edge.i12
  switch i32 %.2108.fr.i, label %.lr.ph149.split.us.i [
    i32 6, label %.lr.ph149.split.split.preheader.split.i
    i32 5, label %bb.y
    i32 7, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.cb = load i8, ptr %i.ca, align 2
  %i.cc = icmp eq i8 %i.cb, -1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = icmp eq i8 %i.ce, -1
  %or.cond126.i = select i1 %i.cc, i1 %i.cf, i1 false
  br i1 %or.cond126.i, label %.lr.ph149.split.split.preheader.split.i, label %.lr.ph149.split.us.split.preheader.split.i

bb.z:                                             ; preds = %bb.x
  %.old.i = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.old127.i = load i8, ptr %.old.i, align 2
  %.not117.old.i = icmp eq i8 %.old127.i, 0
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.ch = load i8, ptr %i.cg, align 1
  %.not118.i = icmp eq i8 %i.ch, 1
  %or.cond135.i = select i1 %.not117.old.i, i1 true, i1 %.not118.i
  br i1 %or.cond135.i, label %.lr.ph149.split.us.split.preheader.split.i, label %.lr.ph149.split.split.preheader.split.i

.lr.ph149.split.us.i:                             ; preds = %bb.x, %._crit_edge.i12
  %.not119.not252.i = icmp eq i32 %.2108.fr.i, 0
  %i.ci = add i32 %.2108.fr.i, %.2111.i
  br i1 %.not119.not252.i, label %.lr.ph149.split.us.split.us.i, label %.lr.ph149.split.us.split.preheader.split.i

.lr.ph149.split.us.split.preheader.split.i:       ; preds = %bb.y, %bb.z, %.lr.ph149.split.us.i
  %i.cj = phi i32 [ %i.ci, %.lr.ph149.split.us.i ], [ 7, %bb.z ], [ 5, %bb.y ] ; 2 uses
  %i.ck = add nsw i32 %spec.store.select.i, -2
  br label %.lr.ph149.split.us.split.i

.lr.ph149.split.us.split.us.i:                    ; preds = %.lr.ph149.split.us.i, %bb.ab
  %.0147.us.us.i = phi ptr [ %i.cw, %bb.ab ], [ %i.a, %.lr.ph149.split.us.i ] ; 3 uses
  %.097146.us.us.i = phi ptr [ %i.cv, %bb.ab ], [ %i.b, %.lr.ph149.split.us.i ] ; 3 uses
  %.0112145.us.us.i = phi i32 [ %i.cx, %bb.ab ], [ 0, %.lr.ph149.split.us.i ]
  %.not121.us.us.i = icmp eq ptr %.097146.us.us.i, %i.b
  br i1 %.not121.us.us.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph149.split.us.split.us.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.097146.us.us.i, i64 1
  store i8 58, ptr %.097146.us.us.i, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph149.split.us.split.us.i
  %.3.us.us.i = phi ptr [ %i.cl, %bb.aa ], [ %i.b, %.lr.ph149.split.us.split.us.i ] ; 2 uses
  %i.cm = load i8, ptr %.0147.us.us.i, align 1
  %i.cn = zext i8 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.0147.us.us.i, i64 1
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = zext i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.co, %i.cr
  %i.ct = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %.3.us.us.i, ptr noundef nonnull @.str.2, i32 noundef %i.cs) #8
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.3.us.us.i, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0147.us.us.i, i64 2
  %i.cx = add nuw nsw i32 %.0112145.us.us.i, 1    ; 2 uses
  %exitcond172.not.i = icmp eq i32 %i.cx, %spec.store.select.i
  br i1 %exitcond172.not.i, label %.loopexit.i13, label %.lr.ph149.split.us.split.us.i, !llvm.loop !5

.lr.ph149.split.us.split.i:                       ; preds = %bb.ah, %.lr.ph149.split.us.split.preheader.split.i
  %.0147.us.i = phi ptr [ %.1.us.i, %bb.ah ], [ %i.a, %.lr.ph149.split.us.split.preheader.split.i ] ; 4 uses
  %.097146.us.i = phi ptr [ %.4.us.i, %bb.ah ], [ %i.b, %.lr.ph149.split.us.split.preheader.split.i ] ; 6 uses
  %.0112145.us.i = phi i32 [ %i.dn, %bb.ah ], [ 0, %.lr.ph149.split.us.split.preheader.split.i ] ; 5 uses
  %.not120.us.i = icmp sge i32 %.0112145.us.i, %.2111.i
  %i.cy = icmp slt i32 %.0112145.us.i, %i.cj
  %i.cz = and i1 %.not120.us.i, %i.cy
  br i1 %i.cz, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph149.split.us.split.i
  %.not121.us.i = icmp eq ptr %.097146.us.i, %i.b
  br i1 %.not121.us.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.da = getelementptr inbounds nuw i8, ptr %.097146.us.i, i64 1
  store i8 58, ptr %.097146.us.i, align 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.3.us.i = phi ptr [ %i.da, %bb.ad ], [ %i.b, %bb.ac ] ; 2 uses
  %i.db = load i8, ptr %.0147.us.i, align 1
  %i.dc = zext i8 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 8
  %i.de = getelementptr inbounds nuw i8, ptr %.0147.us.i, i64 1
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i32
  %i.dh = or disjoint i32 %i.dd, %i.dg
  %i.di = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %.3.us.i, ptr noundef nonnull @.str.2, i32 noundef %i.dh) #8
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %.3.us.i, i64 %i.dj
  br label %bb.ah

bb.af:                                            ; preds = %.lr.ph149.split.us.split.i
  %i.dl = icmp eq i32 %.0112145.us.i, %.2111.i
  br i1 %i.dl, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dm = getelementptr inbounds nuw i8, ptr %.097146.us.i, i64 1
  store i8 58, ptr %.097146.us.i, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.4.us.i = phi ptr [ %i.dk, %bb.ae ], [ %i.dm, %bb.ag ], [ %.097146.us.i, %bb.af ] ; 7 uses
  %.1.us.i = getelementptr inbounds nuw i8, ptr %.0147.us.i, i64 2 ; 2 uses
  %i.dn = add nuw nsw i32 %.0112145.us.i, 1
  %exitcond.not.i = icmp eq i32 %.0112145.us.i, %i.ck
  br i1 %exitcond.not.i, label %.loopexit.loopexit168.peel.begin.i, label %.lr.ph149.split.us.split.i, !llvm.loop !6

.lr.ph149.split.split.preheader.split.i:          ; preds = %bb.z, %bb.y, %bb.x
  %i.do = icmp sgt i32 %2, 120                    ; 2 uses
  %i.dp = add nsw i32 %spec.store.select.i, -1    ; 4 uses
  %5 = icmp sgt i32 %.2108.fr.i, 0
  br i1 %5, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph149.split.split.preheader.split.i
  %i.dq = load i8, ptr %i.a, align 16
  %i.dr = zext i8 %i.dq to i32
  %i.ds = shl nuw nsw i32 %i.dr, 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = zext i8 %i.du to i32
  %i.dw = or disjoint i32 %i.ds, %i.dv
  %i.dx = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.2, i32 noundef %i.dw) #8
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.ak

bb.aj:                                            ; preds = %.lr.ph149.split.split.preheader.split.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 58, ptr %i.b, align 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.4.i15.peel = phi ptr [ %i.eb, %bb.aj ], [ %i.dz, %bb.ai ] ; 2 uses
  %.1.i.peel = phi ptr [ %i.ec, %bb.aj ], [ %i.ea, %bb.ai ] ; 2 uses
  %exitcond173.not.i.peel = icmp eq i32 %i.dp, 1
  br i1 %exitcond173.not.i.peel, label %.loopexit.loopexit166.peel.begin.i, label %.lr.ph149.split.split.i

.lr.ph149.split.split.i:                          ; preds = %bb.ak, %bb.as
  %.0147.i = phi ptr [ %.1.i, %bb.as ], [ %.1.i.peel, %bb.ak ] ; 7 uses
  %.097146.i = phi ptr [ %.4.i15, %bb.as ], [ %.4.i15.peel, %bb.ak ] ; 6 uses
  %.0112145.i = phi i32 [ %i.fj, %bb.as ], [ 1, %bb.ak ] ; 5 uses
  %i.ed = icmp slt i32 %.0112145.i, %.2108.fr.i
  br i1 %i.ed, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph149.split.split.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.0147.i, i64 2
  br label %bb.as

bb.am:                                            ; preds = %.lr.ph149.split.split.i
  %i.ef = icmp samesign ugt i32 %.0112145.i, 5
  br i1 %i.ef, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.eg = icmp eq i32 %.0112145.i, 6
  %i.eh = select i1 %i.eg, i8 58, i8 46
  %i.ei = getelementptr inbounds nuw i8, ptr %.097146.i, i64 1 ; 2 uses
  store i8 %i.eh, ptr %.097146.i, align 1
  %i.ej = getelementptr inbounds nuw i8, ptr %.0147.i, i64 1 ; 2 uses
  %i.ek = load i8, ptr %.0147.i, align 1
  %i.el = zext i8 %i.ek to i32
  %i.em = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.ei, ptr noundef nonnull @.str, i32 noundef %i.el) #8
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.en ; 3 uses
  %i.ep = icmp ne i32 %.0112145.i, 7
  %or.cond7.i = or i1 %i.do, %i.ep
  br i1 %or.cond7.i, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 1 ; 2 uses
  store i8 46, ptr %i.eo, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %.0147.i, i64 2
  %i.es = load i8, ptr %i.ej, align 1
  %i.et = zext i8 %i.es to i32
  %i.eu = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.eq, ptr noundef nonnull @.str, i32 noundef %i.et) #8
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ev
  br label %bb.as

bb.ap:                                            ; preds = %bb.am
  %.not121.i = icmp eq ptr %.097146.i, %i.b
  br i1 %.not121.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ex = getelementptr inbounds nuw i8, ptr %.097146.i, i64 1
  store i8 58, ptr %.097146.i, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.3.i14 = phi ptr [ %i.ex, %bb.aq ], [ %i.b, %bb.ap ] ; 2 uses
  %i.ey = load i8, ptr %.0147.i, align 1
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.0147.i, i64 1
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = zext i8 %i.fc to i32
  %i.fe = or disjoint i32 %i.fa, %i.fd
  %i.ff = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %.3.i14, ptr noundef nonnull @.str.2, i32 noundef %i.fe) #8
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %.3.i14, i64 %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %.0147.i, i64 2
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao, %bb.an, %bb.al
  %.4.i15 = phi ptr [ %.097146.i, %bb.al ], [ %i.ew, %bb.ao ], [ %i.eo, %bb.an ], [ %i.fh, %bb.ar ] ; 2 uses
  %.1.i = phi ptr [ %i.ee, %bb.al ], [ %i.er, %bb.ao ], [ %i.ej, %bb.an ], [ %i.fi, %bb.ar ] ; 2 uses
  %i.fj = add nuw nsw i32 %.0112145.i, 1          ; 2 uses
  %exitcond173.not.i = icmp eq i32 %i.fj, %i.dp
  br i1 %exitcond173.not.i, label %.loopexit.loopexit166.peel.begin.i, label %.lr.ph149.split.split.i, !llvm.loop !7

.loopexit.loopexit166.peel.begin.i:               ; preds = %bb.as, %bb.ak
  %.4.i15.lcssa = phi ptr [ %.4.i15.peel, %bb.ak ], [ %.4.i15, %bb.as ] ; 7 uses
  %.1.i.lcssa = phi ptr [ %.1.i.peel, %bb.ak ], [ %.1.i, %bb.as ] ; 4 uses
  %.not = icmp sgt i32 %spec.store.select.i, %.2108.fr.i
  br i1 %.not, label %bb.at, label %bb.az

bb.at:                                            ; preds = %.loopexit.loopexit166.peel.begin.i
  %i.fk = icmp samesign ugt i32 %spec.store.select.i, 6
  br i1 %i.fk, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not121.peel.i = icmp eq ptr %.4.i15.lcssa, %i.b
  br i1 %.not121.peel.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fl = getelementptr inbounds nuw i8, ptr %.4.i15.lcssa, i64 1
  store i8 58, ptr %.4.i15.lcssa, align 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.3.peel.i = phi ptr [ %i.fl, %bb.av ], [ %i.b, %bb.au ] ; 2 uses
  %i.fm = load i8, ptr %.1.i.lcssa, align 1
  %i.fn = zext i8 %i.fm to i32
  %i.fo = shl nuw nsw i32 %i.fn, 8
  %i.fp = getelementptr inbounds nuw i8, ptr %.1.i.lcssa, i64 1
  %i.fq = load i8, ptr %i.fp, align 1
  %i.fr = zext i8 %i.fq to i32
  %i.fs = or disjoint i32 %i.fo, %i.fr
  %i.ft = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %.3.peel.i, ptr noundef nonnull @.str.2, i32 noundef %i.fs) #8
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %.3.peel.i, i64 %i.fu
  br label %.loopexit.i13

bb.ax:                                            ; preds = %bb.at
  %i.fw = icmp eq i32 %i.dp, 6
  %i.fx = select i1 %i.fw, i8 58, i8 46
  %i.fy = getelementptr inbounds nuw i8, ptr %.4.i15.lcssa, i64 1 ; 2 uses
  store i8 %i.fx, ptr %.4.i15.lcssa, align 1
  %i.fz = load i8, ptr %.1.i.lcssa, align 1
  %i.ga = zext i8 %i.fz to i32
  %i.gb = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.fy, ptr noundef nonnull @.str, i32 noundef %i.ga) #8
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gc ; 3 uses
  %i.ge = icmp ne i32 %i.dp, 7
  %or.cond7.peel.i = or i1 %i.do, %i.ge
  br i1 %or.cond7.peel.i, label %bb.ay, label %.loopexit.i13

bb.ay:                                            ; preds = %bb.ax
  %i.gf = getelementptr inbounds nuw i8, ptr %.1.i.lcssa, i64 1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 1 ; 2 uses
  store i8 46, ptr %i.gd, align 1
  %i.gh = load i8, ptr %i.gf, align 1
  %i.gi = zext i8 %i.gh to i32
  %i.gj = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.gg, ptr noundef nonnull @.str, i32 noundef %i.gi) #8
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gk
  br label %.loopexit.i13

bb.az:                                            ; preds = %.loopexit.loopexit166.peel.begin.i
  %i.gm = getelementptr inbounds nuw i8, ptr %.4.i15.lcssa, i64 1
  store i8 58, ptr %.4.i15.lcssa, align 1
  br label %.loopexit.i13

.loopexit.loopexit168.peel.begin.i:               ; preds = %bb.ah
  %.not120.us.peel.i = icmp sgt i32 %spec.store.select.i, %.2111.i
  %i.gn = icmp sle i32 %spec.store.select.i, %i.cj
  %i.go = and i1 %.not120.us.peel.i, %i.gn
  br i1 %i.go, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %.loopexit.loopexit168.peel.begin.i
  %.not121.us.peel.i = icmp eq ptr %.4.us.i, %i.b
  br i1 %.not121.us.peel.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gp = getelementptr inbounds nuw i8, ptr %.4.us.i, i64 1
  store i8 58, ptr %.4.us.i, align 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.3.us.peel.i = phi ptr [ %i.gp, %bb.bb ], [ %i.b, %bb.ba ] ; 2 uses
  %i.gq = load i8, ptr %.1.us.i, align 1
  %i.gr = zext i8 %i.gq to i32
  %i.gs = shl nuw nsw i32 %i.gr, 8
  %i.gt = getelementptr inbounds nuw i8, ptr %.0147.us.i, i64 3
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = zext i8 %i.gu to i32
  %i.gw = or disjoint i32 %i.gs, %i.gv
  %i.gx = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %.3.us.peel.i, ptr noundef nonnull @.str.2, i32 noundef %i.gw) #8
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %.3.us.peel.i, i64 %i.gy
  br label %.loopexit.i13

bb.bd:                                            ; preds = %.loopexit.loopexit168.peel.begin.i
  %i.ha = add nsw i32 %spec.store.select.i, -1
  %i.hb = icmp eq i32 %i.ha, %.2111.i
  br i1 %i.hb, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hc = getelementptr inbounds nuw i8, ptr %.4.us.i, i64 1
  store i8 58, ptr %.4.us.i, align 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %.198.us.peel.i = phi ptr [ %i.hc, %bb.be ], [ %.4.us.i, %bb.bd ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.198.us.peel.i, i64 1
  store i8 58, ptr %.198.us.peel.i, align 1
  br label %.loopexit.i13

.loopexit.i13:                                    ; preds = %bb.ab, %bb.bf, %bb.bc, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.p
  %.5.i = phi ptr [ %i.at, %bb.p ], [ %i.hd, %bb.bf ], [ %i.gz, %bb.bc ], [ %i.fv, %bb.aw ], [ %i.gl, %bb.ay ], [ %i.gd, %bb.ax ], [ %i.gm, %bb.az ], [ %i.cv, %bb.ab ]
  %i.he = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %.5.i, ptr noundef nonnull @.str.1, i32 noundef %2) #8 ; 0 uses
  %i.hf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #9
  %i.hg = add i64 %i.hf, 1
  %i.hh = icmp ugt i64 %i.hg, %4
  br i1 %i.hh, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.loopexit.i13
  %i.hi = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %i.b) #8 ; 0 uses
  br label %inet_cidr_ntop_ipv6.exit

bb.bh:                                            ; preds = %.loopexit.i13
  %i.hj = tail call ptr @__errno_location() #7
  store i32 90, ptr %i.hj, align 4
  br label %inet_cidr_ntop_ipv6.exit

inet_cidr_ntop_ipv6.exit:                         ; preds = %bb.n, %bb.bg, %bb.bh
  %.0113.i = phi ptr [ null, %bb.n ], [ null, %bb.bh ], [ %3, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %inet_cidr_ntop_ipv4.exit

bb.bi:                                            ; preds = %bb.a
  %i.hk = tail call ptr @__errno_location() #7
  store i32 97, ptr %i.hk, align 4
  br label %inet_cidr_ntop_ipv4.exit

inet_cidr_ntop_ipv4.exit:                         ; preds = %.loopexit.i, %bb.l, %bb.c, %bb.bi, %inet_cidr_ntop_ipv6.exit
  %.0 = phi ptr [ null, %bb.bi ], [ %.0113.i, %inet_cidr_ntop_ipv6.exit ], [ null, %bb.c ], [ null, %.loopexit.i ], [ %3, %bb.l ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @pg_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !8}
!5 = distinct !{!5, !8}
!6 = distinct !{!6, !8, !9}
!7 = distinct !{!7, !8, !10}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.peeled.count", i32 1}
!10 = !{!"llvm.loop.peeled.count", i32 2}
end_hunk_0
