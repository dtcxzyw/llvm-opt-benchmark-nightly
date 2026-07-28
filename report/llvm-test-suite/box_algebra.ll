loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @hypre_IntersectBoxes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %0, align 4, !tbaa !4
  %i.e = load i32, ptr %1, align 4, !tbaa !4
  %. = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %i.e)
  store i32 %., ptr %2, align 4, !tbaa !4
  %i.f = load i32, ptr %i.a, align 4, !tbaa !4
  %i.g = load i32, ptr %i.b, align 4, !tbaa !4
  %i.h = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.g)
  store i32 %i.h, ptr %i.c, align 4, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %..1 = tail call i32 @llvm.smax.i32(i32 %i.j, i32 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %..1, ptr %i.m, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = tail call i32 @llvm.smin.i32(i32 %i.o, i32 %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.r, ptr %i.s, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %..2 = tail call i32 @llvm.smax.i32(i32 %i.u, i32 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %..2, ptr %i.x, align 4, !tbaa !4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = tail call i32 @llvm.smin.i32(i32 %i.z, i32 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SubtractBoxes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @hypre_BoxArraySetSize(ptr noundef %2, i32 noundef 7) #5 ; 0 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !8      ; 28 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 5 uses
  %i.d = load i32, ptr %0, align 4, !tbaa !4      ; 5 uses
  store i32 %i.d, ptr %i.c, align 4, !tbaa !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4    ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  store i32 %i.f, ptr %i.g, align 4, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4    ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 156 ; 4 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4    ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i32 %i.o, ptr %i.p, align 4, !tbaa !4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4    ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 164 ; 2 uses
  store i32 %i.r, ptr %i.s, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.u = load i32, ptr %1, align 4, !tbaa !4      ; 2 uses
  %i.v = icmp sgt i32 %i.u, %i.l
  br i1 %i.v, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = load i32, ptr %i.t, align 4, !tbaa !4    ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.d
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.o, %bb.n, %bb.i, %bb.h, %bb.b, %bb.a
  %i.y = load i32, ptr %0, align 4, !tbaa !4
  store i32 %i.y, ptr %i.b, align 4, !tbaa !4
  %i.z = load i32, ptr %i.e, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !4
  %i.ab = load i32, ptr %i.h, align 4, !tbaa !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !4
  %i.ad = load i32, ptr %i.k, align 4, !tbaa !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !4
  %i.af = load i32, ptr %i.n, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !4
  %i.ah = load i32, ptr %i.q, align 4, !tbaa !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !4
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.aj = icmp sgt i32 %i.u, %i.d
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.d, ptr %i.b, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.f, ptr %i.ak, align 4, !tbaa !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.i, ptr %i.al, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  store i32 %i.l, ptr %i.am, align 4, !tbaa !4
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.o, ptr %i.an, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.r, ptr %i.ao, align 4, !tbaa !4
  %i.ap = load i32, ptr %1, align 4, !tbaa !4
  %i.aq = add nsw i32 %i.ap, -1
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !4
  %i.ar = load i32, ptr %1, align 4, !tbaa !4     ; 2 uses
  store i32 %i.ar, ptr %i.c, align 4, !tbaa !4
  %.pre = load i32, ptr %i.t, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = phi i32 [ %i.ar, %bb.e ], [ %i.d, %bb.d ] ; 2 uses
  %i.at = phi i32 [ %.pre, %bb.e ], [ %i.w, %bb.d ]
  %.1 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]        ; 3 uses
  %i.au = icmp slt i32 %i.at, %i.l
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = zext nneg i32 %.1 to i64
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.av ; 7 uses
  store i32 %i.as, ptr %i.aw, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 %i.f, ptr %i.ax, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 %i.i, ptr %i.ay, align 4, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 %i.l, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i32 %i.o, ptr %i.ba, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  store i32 %i.r, ptr %i.bb, align 4, !tbaa !4
  %i.bc = load i32, ptr %i.t, align 4, !tbaa !4
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.aw, align 4, !tbaa !4
  %i.be = load i32, ptr %i.t, align 4, !tbaa !4   ; 2 uses
  store i32 %i.be, ptr %i.m, align 4, !tbaa !4
  %i.bf = add nuw nsw i32 %.1, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bg = phi i32 [ %i.be, %bb.g ], [ %i.l, %bb.f ]
  %.2 = phi i32 [ %i.bf, %bb.g ], [ %.1, %bb.f ]  ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !4  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.bk = icmp sgt i32 %i.bi, %i.o
  br i1 %i.bk, label %bb.c, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.bo = icmp slt i32 %i.bm, %i.f
  br i1 %i.bo, label %bb.c, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = icmp sgt i32 %i.bi, %i.f
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bq = zext nneg i32 %.2 to i64
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.bq ; 7 uses
  store i32 %i.as, ptr %i.br, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 %i.f, ptr %i.bs, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %i.i, ptr %i.bt, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 %i.bg, ptr %i.bu, align 4, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i32 %i.o, ptr %i.bv, align 4, !tbaa !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 20
  store i32 %i.r, ptr %i.bw, align 4, !tbaa !4
  %i.bx = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.by = add nsw i32 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !4
  %i.ca = load i32, ptr %i.bh, align 4, !tbaa !4  ; 2 uses
  store i32 %i.ca, ptr %i.bn, align 4, !tbaa !4
  %i.cb = add nuw nsw i32 %.2, 1
  %.pre99 = load i32, ptr %i.bl, align 4, !tbaa !4
  %.pre100 = load i32, ptr %i.bj, align 4, !tbaa !4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cc = phi i32 [ %i.ca, %bb.k ], [ %i.f, %bb.j ]
  %i.cd = phi i32 [ %.pre100, %bb.k ], [ %i.o, %bb.j ] ; 3 uses
  %i.ce = phi i32 [ %.pre99, %bb.k ], [ %i.bm, %bb.j ]
  %.1.1 = phi i32 [ %i.cb, %bb.k ], [ %.2, %bb.j ] ; 3 uses
  %i.cf = icmp slt i32 %i.ce, %i.cd
  br i1 %i.cf, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %.pre101 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !4
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = zext nneg i32 %.1.1 to i64
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.cg ; 5 uses
  %i.ci = load i32, ptr %i.c, align 4, !tbaa !4
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  store i32 %i.cc, ptr %i.cj, align 4, !tbaa !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cl = load <2 x i32>, ptr %i.j, align 4, !tbaa !4
  store <2 x i32> %i.cl, ptr %i.ck, align 4, !tbaa !4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i32 %i.cd, ptr %i.cm, align 4, !tbaa !4
  %i.cn = load i32, ptr %i.s, align 4, !tbaa !4   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !4
  %i.cp = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.cj, align 4, !tbaa !4
  %i.cr = load i32, ptr %i.bl, align 4, !tbaa !4  ; 2 uses
  store i32 %i.cr, ptr %i.bj, align 4, !tbaa !4
  %i.cs = add nuw nsw i32 %.1.1, 1
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.m
  %i.ct = phi i32 [ %i.cr, %bb.m ], [ %i.cd, %._crit_edge ]
  %i.cu = phi i32 [ %i.cn, %bb.m ], [ %.pre101, %._crit_edge ] ; 3 uses
  %.2.1 = phi i32 [ %i.cs, %bb.m ], [ %.1.1, %._crit_edge ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 164 ; 2 uses
  %i.cy = icmp sgt i32 %i.cw, %i.cu
  br i1 %i.cy, label %bb.c, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4  ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !4  ; 4 uses
  %i.dd = icmp slt i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.c, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.de = icmp sgt i32 %i.cw, %i.dc
  br i1 %i.de, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.df = zext nneg i32 %.2.1 to i64
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.df ; 6 uses
  %i.dh = load <2 x i32>, ptr %i.c, align 4, !tbaa !4
  store <2 x i32> %i.dh, ptr %i.dg, align 4, !tbaa !4
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i32 %i.dc, ptr %i.di, align 4, !tbaa !4
  %i.dj = load i32, ptr %i.m, align 4, !tbaa !4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i32 %i.ct, ptr %i.dl, align 4, !tbaa !4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 20
  store i32 %i.cu, ptr %i.dm, align 4, !tbaa !4
  %i.dn = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.do = add nsw i32 %i.dn, -1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 20
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !4
  %i.dq = load i32, ptr %i.cv, align 4, !tbaa !4  ; 2 uses
  store i32 %i.dq, ptr %i.db, align 4, !tbaa !4
  %i.dr = add nuw nsw i32 %.2.1, 1
  %.pre102 = load i32, ptr %i.cz, align 4, !tbaa !4
  %.pre103 = load i32, ptr %i.cx, align 4, !tbaa !4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ds = phi i32 [ %i.dq, %bb.q ], [ %i.dc, %bb.p ]
  %i.dt = phi i32 [ %.pre103, %bb.q ], [ %i.cu, %bb.p ] ; 2 uses
  %i.du = phi i32 [ %.pre102, %bb.q ], [ %i.da, %bb.p ]
  %.1.2 = phi i32 [ %i.dr, %bb.q ], [ %.2.1, %bb.p ] ; 3 uses
  %i.dv = icmp slt i32 %i.du, %i.dt
  br i1 %i.dv, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.dw = zext nneg i32 %.1.2 to i64
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.dw ; 4 uses
  %i.dy = load <2 x i32>, ptr %i.c, align 4, !tbaa !4
  store <2 x i32> %i.dy, ptr %i.dx, align 4, !tbaa !4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  store i32 %i.ds, ptr %i.dz, align 4, !tbaa !4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  %i.eb = load <2 x i32>, ptr %i.m, align 4, !tbaa !4
  store <2 x i32> %i.eb, ptr %i.ea, align 4, !tbaa !4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  store i32 %i.dt, ptr %i.ec, align 4, !tbaa !4
  %i.ed = load i32, ptr %i.cz, align 4, !tbaa !4
  %i.ee = add nsw i32 %i.ed, 1
  store i32 %i.ee, ptr %i.dz, align 4, !tbaa !4
  %i.ef = load i32, ptr %i.cz, align 4, !tbaa !4
  store i32 %i.ef, ptr %i.cx, align 4, !tbaa !4
  %i.eg = add nuw nsw i32 %.1.2, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.s, %bb.c
  %.3 = phi i32 [ 1, %bb.c ], [ %i.eg, %bb.s ], [ %.1.2, %bb.r ]
  %i.eh = tail call i32 @hypre_BoxArraySetSize(ptr noundef nonnull %2, i32 noundef %.3) #5 ; 0 uses
  ret i32 0
}

declare i32 @hypre_BoxArraySetSize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_UnionBoxes(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.ar, label %.preheader207

.preheader207:                                    ; preds = %bb.a
  %i.d = shl nuw nsw i32 %i.b, 1                  ; 5 uses
  %i.e = mul i32 %i.b, 24
  %i.f = tail call ptr @hypre_MAlloc(i32 noundef %i.e) #5 ; 14 uses
  %i.g = zext nneg i32 %i.d to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 13 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.g ; 12 uses
  %i.j = load i32, ptr %i.a, align 8, !tbaa !12
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph225, label %.preheader205

.lr.ph225:                                        ; preds = %.preheader207
  %i.l = load ptr, ptr %0, align 8, !tbaa !8
  br label %.preheader206

.preheader205.loopexit:                           ; preds = %bb.t
  %i.m = add nsw i32 %.sroa.32.3, -1
  br label %.preheader205

.preheader205:                                    ; preds = %.preheader205.loopexit, %.preheader207
  %.sroa.17.0..sroa.17.4.492 = phi i32 [ %.sroa.17.0..sroa.17.4.491543, %.preheader205.loopexit ], [ 0, %.preheader207 ] ; 6 uses
  %.sroa.0485.0..sroa.0485.0.488 = phi i32 [ %.sroa.0485.0..sroa.0485.0.486538, %.preheader205.loopexit ], [ 0, %.preheader207 ] ; 11 uses
  %.sroa.32.0 = phi i32 [ %i.m, %.preheader205.loopexit ], [ -1, %.preheader207 ] ; 10 uses
  %i.n = add nsw i32 %.sroa.0485.0..sroa.0485.0.488, -1 ; 12 uses
  %i.o = add nsw i32 %.sroa.17.0..sroa.17.4.492, -1 ; 9 uses
  %i.p = mul nsw i32 %i.o, %i.n
  %i.q = mul nsw i32 %i.p, %.sroa.32.0            ; 4 uses
  %i.r = mul nsw i32 %.sroa.17.0..sroa.17.4.492, %.sroa.0485.0..sroa.0485.0.488 ; 4 uses
  %i.s = tail call ptr @hypre_CAlloc(i32 noundef %i.q, i32 noundef 4) #5 ; 11 uses
  %i.t = load i32, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph243, label %.preheader203

.preheader206:                                    ; preds = %.lr.ph225, %bb.t
  %.sroa.17.0..sroa.17.4.491542 = phi i32 [ 0, %.lr.ph225 ], [ %.sroa.17.0..sroa.17.4.491543, %bb.t ] ; 7 uses
  %.sroa.0485.0..sroa.0485.0.486537 = phi i32 [ 0, %.lr.ph225 ], [ %.sroa.0485.0..sroa.0485.0.486538, %bb.t ] ; 7 uses
  %.sroa.32.1 = phi i32 [ 0, %.lr.ph225 ], [ %.sroa.32.3, %bb.t ] ; 7 uses
  %indvars.iv367 = phi i64 [ 0, %.lr.ph225 ], [ %indvars.iv.next368, %bb.t ] ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv367 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.v, align 4, !tbaa !4    ; 3 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !4    ; 2 uses
  %i.z = add nsw i32 %i.y, 1                      ; 2 uses
  %i.aa = icmp sgt i32 %.sroa.0485.0..sroa.0485.0.486537, 0
  br i1 %i.aa, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader206
  %wide.trip.count = zext nneg i32 %.sroa.0485.0..sroa.0485.0.486537 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4  ; 2 uses
  %.not198 = icmp sgt i32 %i.x, %i.ac
  br i1 %.not198, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  %i.ae = icmp eq i32 %i.x, %i.ac
  br i1 %i.ae, label %.preheader206.1, label %.critedge

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !13

.critedge:                                        ; preds = %bb.d, %.preheader206, %bb.c
  %.0151214 = phi i32 [ %i.ad, %bb.c ], [ 0, %.preheader206 ], [ %.sroa.0485.0..sroa.0485.0.486537, %bb.d ] ; 3 uses
  %i.af = icmp sgt i32 %.sroa.0485.0..sroa.0485.0.486537, %.0151214
  br i1 %i.af, label %.lr.ph221, label %._crit_edge

.lr.ph221:                                        ; preds = %.critedge
  %1 = sext i32 %.sroa.0485.0..sroa.0485.0.486537 to i64 ; 4 uses
  %2 = sext i32 %.0151214 to i64                  ; 2 uses
  %3 = sub nsw i64 %1, %2                         ; 3 uses
  %min.iters.check728 = icmp ult i64 %3, 8
  br i1 %min.iters.check728, label %scalar.ph727.preheader, label %vector.ph729

vector.ph729:                                     ; preds = %.lr.ph221
  %n.vec731 = and i64 %3, -8                      ; 3 uses
  %4 = sub nsw i64 %1, %n.vec731
  br label %vector.body732

vector.body732:                                   ; preds = %vector.body732, %vector.ph729
  %index733 = phi i64 [ 0, %vector.ph729 ], [ %index.next736, %vector.body732 ] ; 2 uses
  %5 = sub i64 %1, %index733
  %6 = getelementptr [4 x i8], ptr %i.f, i64 %5   ; 4 uses
  %7 = getelementptr i8, ptr %6, i64 -16
  %8 = getelementptr i8, ptr %6, i64 -32
  %wide.load734 = load <4 x i32>, ptr %7, align 4, !tbaa !4
  %wide.load735 = load <4 x i32>, ptr %8, align 4, !tbaa !4
  %i.ag = getelementptr i8, ptr %6, i64 -12
  %i.ah = getelementptr i8, ptr %6, i64 -28
  store <4 x i32> %wide.load734, ptr %i.ag, align 4, !tbaa !4
  store <4 x i32> %wide.load735, ptr %i.ah, align 4, !tbaa !4
  %index.next736 = add nuw i64 %index733, 8       ; 2 uses
  %9 = icmp eq i64 %index.next736, %n.vec731
  br i1 %9, label %middle.block737, label %vector.body732, !llvm.loop !15

middle.block737:                                  ; preds = %vector.body732
  %cmp.n738 = icmp eq i64 %3, %n.vec731
  br i1 %cmp.n738, label %._crit_edge, label %scalar.ph727.preheader

scalar.ph727.preheader:                           ; preds = %.lr.ph221, %middle.block737
  %indvars.iv316.ph = phi i64 [ %1, %.lr.ph221 ], [ %4, %middle.block737 ]
  br label %scalar.ph727

scalar.ph727:                                     ; preds = %scalar.ph727.preheader, %scalar.ph727
  %indvars.iv316 = phi i64 [ %indvars.iv.next317, %scalar.ph727 ], [ %indvars.iv316.ph, %scalar.ph727.preheader ] ; 2 uses
  %10 = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv316 ; 2 uses
  %11 = getelementptr i8, ptr %10, i64 -4
  %12 = load i32, ptr %11, align 4, !tbaa !4
  store i32 %12, ptr %10, align 4, !tbaa !4
  %indvars.iv.next317 = add nsw i64 %indvars.iv316, -1 ; 2 uses
  %13 = icmp sgt i64 %indvars.iv.next317, %2
  br i1 %13, label %scalar.ph727, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %scalar.ph727, %middle.block737, %.critedge
  %i.ai = zext nneg i32 %.0151214 to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ai
  store i32 %i.x, ptr %i.aj, align 4, !tbaa !4
  %i.ak = add nsw i32 %.sroa.0485.0..sroa.0485.0.486537, 1
  br label %.preheader206.1

.preheader206.1:                                  ; preds = %bb.c, %._crit_edge
  %.sroa.0485.0..sroa.0485.0.486 = phi i32 [ %.sroa.0485.0..sroa.0485.0.486537, %bb.c ], [ %i.ak, %._crit_edge ] ; 7 uses
  %i.al = icmp sgt i32 %.sroa.0485.0..sroa.0485.0.486, 0
  br i1 %i.al, label %.lr.ph.1, label %.critedge.1

.lr.ph.1:                                         ; preds = %.preheader206.1
  %wide.trip.count.1 = zext nneg i32 %.sroa.0485.0..sroa.0485.0.486 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.1
  %indvars.iv.1 = phi i64 [ 0, %.lr.ph.1 ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.1
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4  ; 2 uses
  %.not198.1.not = icmp slt i32 %i.y, %i.an
  br i1 %.not198.1.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = trunc nuw nsw i64 %indvars.iv.1 to i32
  %i.ap = icmp eq i32 %i.z, %i.an
  br i1 %i.ap, label %.preheader206.1332, label %.critedge.1

bb.g:                                             ; preds = %bb.e
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.1
  br i1 %exitcond.1.not, label %.critedge.1, label %bb.e, !llvm.loop !13

.critedge.1:                                      ; preds = %bb.g, %bb.f, %.preheader206.1
  %.0151214.1 = phi i32 [ %i.ao, %bb.f ], [ 0, %.preheader206.1 ], [ %.sroa.0485.0..sroa.0485.0.486, %bb.g ] ; 3 uses
  %i.aq = icmp sgt i32 %.sroa.0485.0..sroa.0485.0.486, %.0151214.1
  br i1 %i.aq, label %.lr.ph221.1, label %._crit_edge.1

.lr.ph221.1:                                      ; preds = %.critedge.1
  %14 = sext i32 %.sroa.0485.0..sroa.0485.0.486 to i64 ; 4 uses
  %15 = sext i32 %.0151214.1 to i64               ; 2 uses
  %16 = sub nsw i64 %14, %15                      ; 3 uses
  %min.iters.check715 = icmp ult i64 %16, 8
  br i1 %min.iters.check715, label %scalar.ph714.preheader, label %vector.ph716

vector.ph716:                                     ; preds = %.lr.ph221.1
  %n.vec718 = and i64 %16, -8                     ; 3 uses
  %17 = sub nsw i64 %14, %n.vec718
  br label %vector.body719

vector.body719:                                   ; preds = %vector.body719, %vector.ph716
  %index720 = phi i64 [ 0, %vector.ph716 ], [ %index.next723, %vector.body719 ] ; 2 uses
  %18 = sub i64 %14, %index720
  %19 = getelementptr [4 x i8], ptr %i.f, i64 %18 ; 4 uses
  %20 = getelementptr i8, ptr %19, i64 -16
  %21 = getelementptr i8, ptr %19, i64 -32
  %wide.load721 = load <4 x i32>, ptr %20, align 4, !tbaa !4
  %wide.load722 = load <4 x i32>, ptr %21, align 4, !tbaa !4
  %i.ar = getelementptr i8, ptr %19, i64 -12
  %i.as = getelementptr i8, ptr %19, i64 -28
  store <4 x i32> %wide.load721, ptr %i.ar, align 4, !tbaa !4
  store <4 x i32> %wide.load722, ptr %i.as, align 4, !tbaa !4
  %index.next723 = add nuw i64 %index720, 8       ; 2 uses
  %22 = icmp eq i64 %index.next723, %n.vec718
  br i1 %22, label %middle.block724, label %vector.body719, !llvm.loop !19

middle.block724:                                  ; preds = %vector.body719
  %cmp.n725 = icmp eq i64 %16, %n.vec718
  br i1 %cmp.n725, label %._crit_edge.1, label %scalar.ph714.preheader

scalar.ph714.preheader:                           ; preds = %.lr.ph221.1, %middle.block724
  %indvars.iv316.1.ph = phi i64 [ %14, %.lr.ph221.1 ], [ %17, %middle.block724 ]
  br label %scalar.ph714

scalar.ph714:                                     ; preds = %scalar.ph714.preheader, %scalar.ph714
  %indvars.iv316.1 = phi i64 [ %indvars.iv.next317.1, %scalar.ph714 ], [ %indvars.iv316.1.ph, %scalar.ph714.preheader ] ; 2 uses
  %23 = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv316.1 ; 2 uses
  %24 = getelementptr i8, ptr %23, i64 -4
  %25 = load i32, ptr %24, align 4, !tbaa !4
  store i32 %25, ptr %23, align 4, !tbaa !4
  %indvars.iv.next317.1 = add nsw i64 %indvars.iv316.1, -1 ; 2 uses
  %26 = icmp sgt i64 %indvars.iv.next317.1, %15
  br i1 %26, label %scalar.ph714, label %._crit_edge.1, !llvm.loop !20

._crit_edge.1:                                    ; preds = %scalar.ph714, %middle.block724, %.critedge.1
  %i.at = zext nneg i32 %.0151214.1 to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.at
  store i32 %i.z, ptr %i.au, align 4, !tbaa !4
  %i.av = add nsw i32 %.sroa.0485.0..sroa.0485.0.486, 1
  br label %.preheader206.1332

.preheader206.1332:                               ; preds = %._crit_edge.1, %bb.f
  %.sroa.0485.0..sroa.0485.0.486538 = phi i32 [ %i.av, %._crit_edge.1 ], [ %.sroa.0485.0..sroa.0485.0.486, %bb.f ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4  ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4  ; 2 uses
  %i.ba = add nsw i32 %i.az, 1                    ; 2 uses
  %i.bb = icmp sgt i32 %.sroa.17.0..sroa.17.4.491542, 0
  br i1 %i.bb, label %.lr.ph.1334, label %.critedge.1343

.lr.ph.1334:                                      ; preds = %.preheader206.1332
  %wide.trip.count.1333 = zext nneg i32 %.sroa.17.0..sroa.17.4.491542 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.1334
  %indvars.iv.1335 = phi i64 [ 0, %.lr.ph.1334 ], [ %indvars.iv.next.1339, %bb.j ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.1335
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4  ; 2 uses
  %.not198.1336 = icmp sgt i32 %i.ax, %i.bd
  br i1 %.not198.1336, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = trunc nuw nsw i64 %indvars.iv.1335 to i32
  %i.bf = icmp eq i32 %i.ax, %i.bd
  br i1 %i.bf, label %.preheader206.1.1, label %.critedge.1343

bb.j:                                             ; preds = %bb.h
  %indvars.iv.next.1339 = add nuw nsw i64 %indvars.iv.1335, 1 ; 2 uses
  %exitcond.1340.not = icmp eq i64 %indvars.iv.next.1339, %wide.trip.count.1333
  br i1 %exitcond.1340.not, label %.critedge.1343, label %bb.h, !llvm.loop !13

.critedge.1343:                                   ; preds = %bb.j, %bb.i, %.preheader206.1332
  %.0151214.1342 = phi i32 [ %i.be, %bb.i ], [ 0, %.preheader206.1332 ], [ %.sroa.17.0..sroa.17.4.491542, %bb.j ] ; 3 uses
  %i.bg = icmp sgt i32 %.sroa.17.0..sroa.17.4.491542, %.0151214.1342
  br i1 %i.bg, label %.lr.ph221.1344, label %._crit_edge.1348

.lr.ph221.1344:                                   ; preds = %.critedge.1343
  %27 = sext i32 %.sroa.17.0..sroa.17.4.491542 to i64 ; 4 uses
  %28 = sext i32 %.0151214.1342 to i64            ; 2 uses
  %29 = sub nsw i64 %27, %28                      ; 3 uses
  %min.iters.check702 = icmp ult i64 %29, 8
  br i1 %min.iters.check702, label %scalar.ph701.preheader, label %vector.ph703

vector.ph703:                                     ; preds = %.lr.ph221.1344
  %n.vec705 = and i64 %29, -8                     ; 3 uses
  %30 = sub nsw i64 %27, %n.vec705
  br label %vector.body706

vector.body706:                                   ; preds = %vector.body706, %vector.ph703
  %index707 = phi i64 [ 0, %vector.ph703 ], [ %index.next710, %vector.body706 ] ; 2 uses
  %31 = sub i64 %27, %index707
  %32 = getelementptr [4 x i8], ptr %i.h, i64 %31 ; 4 uses
  %33 = getelementptr i8, ptr %32, i64 -16
  %34 = getelementptr i8, ptr %32, i64 -32
  %wide.load708 = load <4 x i32>, ptr %33, align 4, !tbaa !4
  %wide.load709 = load <4 x i32>, ptr %34, align 4, !tbaa !4
  %i.bh = getelementptr i8, ptr %32, i64 -12
  %i.bi = getelementptr i8, ptr %32, i64 -28
  store <4 x i32> %wide.load708, ptr %i.bh, align 4, !tbaa !4
  store <4 x i32> %wide.load709, ptr %i.bi, align 4, !tbaa !4
  %index.next710 = add nuw i64 %index707, 8       ; 2 uses
  %35 = icmp eq i64 %index.next710, %n.vec705
  br i1 %35, label %middle.block711, label %vector.body706, !llvm.loop !21

middle.block711:                                  ; preds = %vector.body706
  %cmp.n712 = icmp eq i64 %29, %n.vec705
  br i1 %cmp.n712, label %._crit_edge.1348, label %scalar.ph701.preheader

scalar.ph701.preheader:                           ; preds = %.lr.ph221.1344, %middle.block711
  %indvars.iv316.1345.ph = phi i64 [ %27, %.lr.ph221.1344 ], [ %30, %middle.block711 ]
  br label %scalar.ph701

scalar.ph701:                                     ; preds = %scalar.ph701.preheader, %scalar.ph701
  %indvars.iv316.1345 = phi i64 [ %indvars.iv.next317.1346, %scalar.ph701 ], [ %indvars.iv316.1345.ph, %scalar.ph701.preheader ] ; 2 uses
  %36 = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv316.1345 ; 2 uses
  %37 = getelementptr i8, ptr %36, i64 -4
  %38 = load i32, ptr %37, align 4, !tbaa !4
  store i32 %38, ptr %36, align 4, !tbaa !4
  %indvars.iv.next317.1346 = add nsw i64 %indvars.iv316.1345, -1 ; 2 uses
  %39 = icmp sgt i64 %indvars.iv.next317.1346, %28
  br i1 %39, label %scalar.ph701, label %._crit_edge.1348, !llvm.loop !22

._crit_edge.1348:                                 ; preds = %scalar.ph701, %middle.block711, %.critedge.1343
  %i.bj = zext nneg i32 %.0151214.1342 to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bj
  store i32 %i.ax, ptr %i.bk, align 4, !tbaa !4
  %i.bl = add nsw i32 %.sroa.17.0..sroa.17.4.491542, 1
  br label %.preheader206.1.1

.preheader206.1.1:                                ; preds = %._crit_edge.1348, %bb.i
  %.sroa.17.0..sroa.17.4.491 = phi i32 [ %i.bl, %._crit_edge.1348 ], [ %.sroa.17.0..sroa.17.4.491542, %bb.i ] ; 7 uses
  %i.bm = icmp sgt i32 %.sroa.17.0..sroa.17.4.491, 0
  br i1 %i.bm, label %.lr.ph.1.1, label %.critedge.1.1

.lr.ph.1.1:                                       ; preds = %.preheader206.1.1
  %wide.trip.count.1.1 = zext nneg i32 %.sroa.17.0..sroa.17.4.491 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph.1.1
  %indvars.iv.1.1 = phi i64 [ 0, %.lr.ph.1.1 ], [ %indvars.iv.next.1.1, %bb.m ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.1.1
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4  ; 2 uses
  %.not198.1.1.not = icmp slt i32 %i.az, %i.bo
  br i1 %.not198.1.1.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bp = trunc nuw nsw i64 %indvars.iv.1.1 to i32
  %i.bq = icmp eq i32 %i.ba, %i.bo
  br i1 %i.bq, label %.preheader206.2, label %.critedge.1.1

bb.m:                                             ; preds = %bb.k
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1.1, 1 ; 2 uses
  %exitcond.1.1.not = icmp eq i64 %indvars.iv.next.1.1, %wide.trip.count.1.1
  br i1 %exitcond.1.1.not, label %.critedge.1.1, label %bb.k, !llvm.loop !13

.critedge.1.1:                                    ; preds = %bb.m, %bb.l, %.preheader206.1.1
  %.0151214.1.1 = phi i32 [ %i.bp, %bb.l ], [ 0, %.preheader206.1.1 ], [ %.sroa.17.0..sroa.17.4.491, %bb.m ] ; 3 uses
  %i.br = icmp sgt i32 %.sroa.17.0..sroa.17.4.491, %.0151214.1.1
  br i1 %i.br, label %.lr.ph221.1.1, label %._crit_edge.1.1

.lr.ph221.1.1:                                    ; preds = %.critedge.1.1
  %40 = sext i32 %.sroa.17.0..sroa.17.4.491 to i64 ; 4 uses
  %41 = sext i32 %.0151214.1.1 to i64             ; 2 uses
  %42 = sub nsw i64 %40, %41                      ; 3 uses
  %min.iters.check689 = icmp ult i64 %42, 8
  br i1 %min.iters.check689, label %scalar.ph688.preheader, label %vector.ph690

vector.ph690:                                     ; preds = %.lr.ph221.1.1
  %n.vec692 = and i64 %42, -8                     ; 3 uses
  %43 = sub nsw i64 %40, %n.vec692
  br label %vector.body693

vector.body693:                                   ; preds = %vector.body693, %vector.ph690
  %index694 = phi i64 [ 0, %vector.ph690 ], [ %index.next697, %vector.body693 ] ; 2 uses
  %44 = sub i64 %40, %index694
  %45 = getelementptr [4 x i8], ptr %i.h, i64 %44 ; 4 uses
  %46 = getelementptr i8, ptr %45, i64 -16
  %47 = getelementptr i8, ptr %45, i64 -32
  %wide.load695 = load <4 x i32>, ptr %46, align 4, !tbaa !4
  %wide.load696 = load <4 x i32>, ptr %47, align 4, !tbaa !4
  %i.bs = getelementptr i8, ptr %45, i64 -12
  %i.bt = getelementptr i8, ptr %45, i64 -28
  store <4 x i32> %wide.load695, ptr %i.bs, align 4, !tbaa !4
  store <4 x i32> %wide.load696, ptr %i.bt, align 4, !tbaa !4
  %index.next697 = add nuw i64 %index694, 8       ; 2 uses
  %48 = icmp eq i64 %index.next697, %n.vec692
  br i1 %48, label %middle.block698, label %vector.body693, !llvm.loop !23

middle.block698:                                  ; preds = %vector.body693
  %cmp.n699 = icmp eq i64 %42, %n.vec692
  br i1 %cmp.n699, label %._crit_edge.1.1, label %scalar.ph688.preheader

scalar.ph688.preheader:                           ; preds = %.lr.ph221.1.1, %middle.block698
  %indvars.iv316.1.1.ph = phi i64 [ %40, %.lr.ph221.1.1 ], [ %43, %middle.block698 ]
  br label %scalar.ph688

scalar.ph688:                                     ; preds = %scalar.ph688.preheader, %scalar.ph688
  %indvars.iv316.1.1 = phi i64 [ %indvars.iv.next317.1.1, %scalar.ph688 ], [ %indvars.iv316.1.1.ph, %scalar.ph688.preheader ] ; 2 uses
  %49 = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv316.1.1 ; 2 uses
  %50 = getelementptr i8, ptr %49, i64 -4
  %51 = load i32, ptr %50, align 4, !tbaa !4
  store i32 %51, ptr %49, align 4, !tbaa !4
  %indvars.iv.next317.1.1 = add nsw i64 %indvars.iv316.1.1, -1 ; 2 uses
  %52 = icmp sgt i64 %indvars.iv.next317.1.1, %41
  br i1 %52, label %scalar.ph688, label %._crit_edge.1.1, !llvm.loop !24

._crit_edge.1.1:                                  ; preds = %scalar.ph688, %middle.block698, %.critedge.1.1
  %i.bu = zext nneg i32 %.0151214.1.1 to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bu
  store i32 %i.ba, ptr %i.bv, align 4, !tbaa !4
  %i.bw = add nsw i32 %.sroa.17.0..sroa.17.4.491, 1
  br label %.preheader206.2

.preheader206.2:                                  ; preds = %._crit_edge.1.1, %bb.l
  %.sroa.17.0..sroa.17.4.491543 = phi i32 [ %i.bw, %._crit_edge.1.1 ], [ %.sroa.17.0..sroa.17.4.491, %bb.l ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4  ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4  ; 2 uses
  %i.cb = add nsw i32 %i.ca, 1                    ; 2 uses
  %i.cc = icmp sgt i32 %.sroa.32.1, 0
  br i1 %i.cc, label %.lr.ph.2, label %.critedge.2

.lr.ph.2:                                         ; preds = %.preheader206.2
  %wide.trip.count.2 = zext nneg i32 %.sroa.32.1 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.2
  %indvars.iv.2 = phi i64 [ 0, %.lr.ph.2 ], [ %indvars.iv.next.2, %bb.p ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.2
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4  ; 2 uses
  %.not198.2 = icmp sgt i32 %i.by, %i.ce
  br i1 %.not198.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = trunc nuw nsw i64 %indvars.iv.2 to i32
  %i.cg = icmp eq i32 %i.by, %i.ce
  br i1 %i.cg, label %.preheader206.1.2, label %.critedge.2

bb.p:                                             ; preds = %bb.n
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, %wide.trip.count.2
  br i1 %exitcond.2.not, label %.critedge.2, label %bb.n, !llvm.loop !13

.critedge.2:                                      ; preds = %bb.p, %bb.o, %.preheader206.2
  %.0151214.2 = phi i32 [ %i.cf, %bb.o ], [ 0, %.preheader206.2 ], [ %.sroa.32.1, %bb.p ] ; 3 uses
  %i.ch = icmp sgt i32 %.sroa.32.1, %.0151214.2
  br i1 %i.ch, label %.lr.ph221.2, label %._crit_edge.2

.lr.ph221.2:                                      ; preds = %.critedge.2
  %53 = sext i32 %.sroa.32.1 to i64               ; 4 uses
  %54 = sext i32 %.0151214.2 to i64               ; 2 uses
  %55 = sub nsw i64 %53, %54                      ; 3 uses
  %min.iters.check676 = icmp ult i64 %55, 8
  br i1 %min.iters.check676, label %scalar.ph675.preheader, label %vector.ph677

vector.ph677:                                     ; preds = %.lr.ph221.2
  %n.vec679 = and i64 %55, -8                     ; 3 uses
  %56 = sub nsw i64 %53, %n.vec679
  br label %vector.body680

vector.body680:                                   ; preds = %vector.body680, %vector.ph677
  %index681 = phi i64 [ 0, %vector.ph677 ], [ %index.next684, %vector.body680 ] ; 2 uses
  %57 = sub i64 %53, %index681
  %58 = getelementptr [4 x i8], ptr %i.i, i64 %57 ; 4 uses
  %59 = getelementptr i8, ptr %58, i64 -16
  %60 = getelementptr i8, ptr %58, i64 -32
  %wide.load682 = load <4 x i32>, ptr %59, align 4, !tbaa !4
  %wide.load683 = load <4 x i32>, ptr %60, align 4, !tbaa !4
  %i.ci = getelementptr i8, ptr %58, i64 -12
  %i.cj = getelementptr i8, ptr %58, i64 -28
  store <4 x i32> %wide.load682, ptr %i.ci, align 4, !tbaa !4
  store <4 x i32> %wide.load683, ptr %i.cj, align 4, !tbaa !4
  %index.next684 = add nuw i64 %index681, 8       ; 2 uses
  %61 = icmp eq i64 %index.next684, %n.vec679
  br i1 %61, label %middle.block685, label %vector.body680, !llvm.loop !25

middle.block685:                                  ; preds = %vector.body680
  %cmp.n686 = icmp eq i64 %55, %n.vec679
  br i1 %cmp.n686, label %._crit_edge.2, label %scalar.ph675.preheader

scalar.ph675.preheader:                           ; preds = %.lr.ph221.2, %middle.block685
  %indvars.iv316.2.ph = phi i64 [ %53, %.lr.ph221.2 ], [ %56, %middle.block685 ]
  br label %scalar.ph675

scalar.ph675:                                     ; preds = %scalar.ph675.preheader, %scalar.ph675
  %indvars.iv316.2 = phi i64 [ %indvars.iv.next317.2, %scalar.ph675 ], [ %indvars.iv316.2.ph, %scalar.ph675.preheader ] ; 2 uses
  %62 = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv316.2 ; 2 uses
  %63 = getelementptr i8, ptr %62, i64 -4
  %64 = load i32, ptr %63, align 4, !tbaa !4
  store i32 %64, ptr %62, align 4, !tbaa !4
  %indvars.iv.next317.2 = add nsw i64 %indvars.iv316.2, -1 ; 2 uses
  %65 = icmp sgt i64 %indvars.iv.next317.2, %54
  br i1 %65, label %scalar.ph675, label %._crit_edge.2, !llvm.loop !26

._crit_edge.2:                                    ; preds = %scalar.ph675, %middle.block685, %.critedge.2
  %i.ck = zext nneg i32 %.0151214.2 to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ck
  store i32 %i.by, ptr %i.cl, align 4, !tbaa !4
  %i.cm = add nsw i32 %.sroa.32.1, 1
  br label %.preheader206.1.2

.preheader206.1.2:                                ; preds = %._crit_edge.2, %bb.o
  %.sroa.32.2 = phi i32 [ %i.cm, %._crit_edge.2 ], [ %.sroa.32.1, %bb.o ] ; 7 uses
  %i.cn = icmp sgt i32 %.sroa.32.2, 0
  br i1 %i.cn, label %.lr.ph.1.2, label %.critedge.1.2

.lr.ph.1.2:                                       ; preds = %.preheader206.1.2
  %wide.trip.count.1.2 = zext nneg i32 %.sroa.32.2 to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.1.2
  %indvars.iv.1.2 = phi i64 [ 0, %.lr.ph.1.2 ], [ %indvars.iv.next.1.2, %bb.s ] ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.1.2
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !4  ; 2 uses
  %.not198.1.2.not = icmp slt i32 %i.ca, %i.cp
  br i1 %.not198.1.2.not, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cq = trunc nuw nsw i64 %indvars.iv.1.2 to i32
  %i.cr = icmp eq i32 %i.cb, %i.cp
  br i1 %i.cr, label %bb.t, label %.critedge.1.2

bb.s:                                             ; preds = %bb.q
  %indvars.iv.next.1.2 = add nuw nsw i64 %indvars.iv.1.2, 1 ; 2 uses
  %exitcond.1.2.not = icmp eq i64 %indvars.iv.next.1.2, %wide.trip.count.1.2
  br i1 %exitcond.1.2.not, label %.critedge.1.2, label %bb.q, !llvm.loop !13

.critedge.1.2:                                    ; preds = %bb.s, %bb.r, %.preheader206.1.2
  %.0151214.1.2 = phi i32 [ %i.cq, %bb.r ], [ 0, %.preheader206.1.2 ], [ %.sroa.32.2, %bb.s ] ; 3 uses
  %i.cs = icmp sgt i32 %.sroa.32.2, %.0151214.1.2
  br i1 %i.cs, label %.lr.ph221.1.2, label %._crit_edge.1.2

.lr.ph221.1.2:                                    ; preds = %.critedge.1.2
  %66 = sext i32 %.sroa.32.2 to i64               ; 4 uses
  %67 = sext i32 %.0151214.1.2 to i64             ; 2 uses
  %68 = sub nsw i64 %66, %67                      ; 3 uses
  %min.iters.check = icmp ult i64 %68, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph221.1.2
  %n.vec = and i64 %68, -8                        ; 3 uses
  %69 = sub nsw i64 %66, %n.vec
  br label %vector.body.a

vector.body.a:                                    ; preds = %vector.body.a, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.a, %vector.body.a ] ; 2 uses
  %70 = sub i64 %66, %index
  %71 = getelementptr [4 x i8], ptr %i.i, i64 %70 ; 4 uses
  %72 = getelementptr i8, ptr %71, i64 -16
  %73 = getelementptr i8, ptr %71, i64 -32
  %wide.load = load <4 x i32>, ptr %72, align 4, !tbaa !4
  %wide.load674 = load <4 x i32>, ptr %73, align 4, !tbaa !4
  %i.ct = getelementptr i8, ptr %71, i64 -12
  %i.cu = getelementptr i8, ptr %71, i64 -28
  store <4 x i32> %wide.load, ptr %i.ct, align 4, !tbaa !4
  store <4 x i32> %wide.load674, ptr %i.cu, align 4, !tbaa !4
  %index.next.a = add nuw i64 %index, 8           ; 2 uses
  %74 = icmp eq i64 %index.next.a, %n.vec
  br i1 %74, label %middle.block, label %vector.body.a, !llvm.loop !27

middle.block:                                     ; preds = %vector.body.a
  %cmp.n = icmp eq i64 %68, %n.vec
  br i1 %cmp.n, label %._crit_edge.1.2, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph221.1.2, %middle.block
  %indvars.iv316.1.2.ph = phi i64 [ %66, %.lr.ph221.1.2 ], [ %69, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv316.1.2 = phi i64 [ %indvars.iv.next317.1.2, %scalar.ph ], [ %indvars.iv316.1.2.ph, %scalar.ph.preheader ] ; 2 uses
  %75 = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv316.1.2 ; 2 uses
  %76 = getelementptr i8, ptr %75, i64 -4
  %77 = load i32, ptr %76, align 4, !tbaa !4
  store i32 %77, ptr %75, align 4, !tbaa !4
  %indvars.iv.next317.1.2 = add nsw i64 %indvars.iv316.1.2, -1 ; 2 uses
  %78 = icmp sgt i64 %indvars.iv.next317.1.2, %67
  br i1 %78, label %scalar.ph, label %._crit_edge.1.2, !llvm.loop !28

._crit_edge.1.2:                                  ; preds = %scalar.ph, %middle.block, %.critedge.1.2
  %i.cv = zext nneg i32 %.0151214.1.2 to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cv
  store i32 %i.cb, ptr %i.cw, align 4, !tbaa !4
  %i.cx = add nsw i32 %.sroa.32.2, 1
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.1.2, %bb.r
  %.sroa.32.3 = phi i32 [ %i.cx, %._crit_edge.1.2 ], [ %.sroa.32.2, %bb.r ] ; 2 uses
  %indvars.iv.next368 = add nuw nsw i64 %indvars.iv367, 1 ; 2 uses
  %i.cy = load i32, ptr %i.a, align 8, !tbaa !12
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next368, %i.cz
  br i1 %i.da, label %.preheader206, label %.preheader205.loopexit, !llvm.loop !29

.lr.ph243:                                        ; preds = %.preheader205
  %i.db = load ptr, ptr %0, align 8, !tbaa !8
  %i.dc = add i32 %.sroa.0485.0..sroa.0485.0.488, 1
  %i.dd = add i32 %i.dc, %i.r                     ; 2 uses
  %i.de = sext i32 %i.n to i64
  %i.df = sext i32 %i.o to i64
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dd, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader204

.preheader204:                                    ; preds = %.lr.ph243, %._crit_edge239.split
  %i.dg = phi i32 [ %i.t, %.lr.ph243 ], [ %i.et, %._crit_edge239.split ] ; 2 uses
  %indvars.iv399 = phi i64 [ 0, %.lr.ph243 ], [ %indvars.iv.next400, %._crit_edge239.split ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %indvars.iv399 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader204
  %indvars.iv374 = phi i64 [ %indvars.iv.next375, %bb.u ], [ 0, %.preheader204 ] ; 7 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv374
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !4
  %.not196 = icmp eq i32 %i.dj, %i.dl
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1
  br i1 %.not196, label %bb.v, label %bb.u, !llvm.loop !30

bb.v:                                             ; preds = %bb.u
  %i.dm = load i32, ptr %i.di, align 4, !tbaa !4
  %i.dn = add nsw i32 %i.dm, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %indvar = phi i64 [ %indvar.next, %bb.w ], [ 0, %bb.v ] ; 4 uses
  %indvars.iv377 = phi i64 [ %indvars.iv.next378, %bb.w ], [ %indvars.iv374, %bb.v ] ; 4 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv377
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !4
  %.not197 = icmp eq i32 %i.dn, %i.dp
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not197, label %.preheader204.1, label %bb.w, !llvm.loop !31

.preheader204.1:                                  ; preds = %bb.w
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !4
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.preheader204.1
  %indvars.iv374.1 = phi i64 [ %indvars.iv.next375.1, %bb.x ], [ 0, %.preheader204.1 ] ; 5 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv374.1
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !4
  %.not196.1 = icmp eq i32 %i.dr, %i.dt
  %indvars.iv.next375.1 = add nuw nsw i64 %indvars.iv374.1, 1
  br i1 %.not196.1, label %bb.y, label %bb.x, !llvm.loop !30

bb.y:                                             ; preds = %bb.x
  %i.du = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !4
  %i.dw = add nsw i32 %i.dv, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %indvars.iv377.1 = phi i64 [ %indvars.iv.next378.1, %bb.z ], [ %indvars.iv374.1, %bb.y ] ; 4 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv377.1
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4
  %.not197.1 = icmp eq i32 %i.dw, %i.dy
  %indvars.iv.next378.1 = add nuw nsw i64 %indvars.iv377.1, 1
  br i1 %.not197.1, label %.preheader204.2, label %bb.z, !llvm.loop !31

.preheader204.2:                                  ; preds = %bb.z
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.preheader204.2
  %indvars.iv374.2 = phi i64 [ %indvars.iv.next375.2, %bb.aa ], [ 0, %.preheader204.2 ] ; 5 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv374.2
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !4
  %.not196.2 = icmp eq i32 %i.ea, %i.ec
  %indvars.iv.next375.2 = add nuw nsw i64 %indvars.iv374.2, 1
  br i1 %.not196.2, label %bb.ab, label %bb.aa, !llvm.loop !30

bb.ab:                                            ; preds = %bb.aa
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !4
  %i.ef = add nsw i32 %i.ee, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %indvars.iv377.2 = phi i64 [ %indvars.iv.next378.2, %bb.ac ], [ %indvars.iv374.2, %bb.ab ] ; 4 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv377.2
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !4
  %.not197.2 = icmp eq i32 %i.ef, %i.eh
  %indvars.iv.next378.2 = add nuw nsw i64 %indvars.iv377.2, 1
  br i1 %.not197.2, label %bb.ad, label %bb.ac, !llvm.loop !31

bb.ad:                                            ; preds = %bb.ac
  %i.ei = icmp samesign ult i64 %indvars.iv374.2, %indvars.iv377.2
  br i1 %i.ei, label %.lr.ph238, label %._crit_edge239.split

.lr.ph238:                                        ; preds = %bb.ad
  %i.ej = icmp samesign uge i64 %indvars.iv374.1, %indvars.iv377.1
  %i.ek = icmp samesign uge i64 %indvars.iv374, %indvars.iv377
  %brmerge = select i1 %i.ej, i1 true, i1 %i.ek
  br i1 %brmerge, label %._crit_edge239.split, label %.lr.ph234.preheader

.lr.ph234.preheader:                              ; preds = %.lr.ph238
  %min.iters.check741 = icmp ult i64 %indvar, 8
  %n.vec744 = and i64 %indvar, -8                 ; 3 uses
  %i.el = add i64 %indvars.iv374, %n.vec744
  %cmp.n749 = icmp eq i64 %indvar, %n.vec744
  br label %.lr.ph234

.lr.ph234:                                        ; preds = %.lr.ph234.preheader, %._crit_edge235
  %indvars.iv394 = phi i64 [ %indvars.iv.next395, %._crit_edge235 ], [ %indvars.iv374.2, %.lr.ph234.preheader ] ; 2 uses
  %i.em = mul nsw i64 %indvars.iv394, %i.df
  br label %.lr.ph230

.lr.ph230:                                        ; preds = %.lr.ph234, %._crit_edge231
  %indvars.iv389.a = phi i64 [ %indvars.iv374.1, %.lr.ph234 ], [ %indvars.iv.next390.a, %._crit_edge231 ] ; 2 uses
  %i.en = add nsw i64 %indvars.iv389.a, %i.em
  %i.eo = mul nsw i64 %i.en, %i.de
  %invariant.gep = getelementptr [4 x i8], ptr %i.s, i64 %i.eo ; 2 uses
  br i1 %min.iters.check741, label %scalar.ph740.preheader, label %vector.ph742

vector.ph742:                                     ; preds = %.lr.ph230
  %i.ep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv374
  br label %vector.body745

vector.body745:                                   ; preds = %vector.body745, %vector.ph742
  %index746 = phi i64 [ 0, %vector.ph742 ], [ %index.next747, %vector.body745 ] ; 2 uses
  %i.eq = getelementptr [4 x i8], ptr %i.ep, i64 %index746 ; 2 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.eq, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.er, align 4, !tbaa !4
  %index.next747 = add nuw i64 %index746, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next747, %n.vec744
  br i1 %i.es, label %middle.block748, label %vector.body745, !llvm.loop !32

middle.block748:                                  ; preds = %vector.body745
  br i1 %cmp.n749, label %._crit_edge231, label %scalar.ph740.preheader

scalar.ph740.preheader:                           ; preds = %.lr.ph230, %middle.block748
  %indvars.iv384.ph.a = phi i64 [ %indvars.iv374, %.lr.ph230 ], [ %i.el, %middle.block748 ]
  br label %scalar.ph740

scalar.ph740:                                     ; preds = %scalar.ph740.preheader, %scalar.ph740
  %indvars.iv384.a = phi i64 [ %indvars.iv.next385.a, %scalar.ph740 ], [ %indvars.iv384.ph.a, %scalar.ph740.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv384.a
  store i32 %i.dd, ptr %gep, align 4, !tbaa !4
  %indvars.iv.next385.a = add nuw nsw i64 %indvars.iv384.a, 1 ; 2 uses
  %exitcond388.not.a = icmp eq i64 %indvars.iv.next385.a, %indvars.iv377
  br i1 %exitcond388.not.a, label %._crit_edge231, label %scalar.ph740, !llvm.loop !33

._crit_edge231:                                   ; preds = %scalar.ph740, %middle.block748
  %indvars.iv.next390.a = add nuw nsw i64 %indvars.iv389.a, 1 ; 2 uses
  %exitcond393.not = icmp eq i64 %indvars.iv.next390.a, %indvars.iv377.1
  br i1 %exitcond393.not, label %._crit_edge235, label %.lr.ph230, !llvm.loop !34

._crit_edge235:                                   ; preds = %._crit_edge231
  %indvars.iv.next395 = add nuw nsw i64 %indvars.iv394, 1 ; 2 uses
  %exitcond398.not = icmp eq i64 %indvars.iv.next395, %indvars.iv377.2
  br i1 %exitcond398.not, label %._crit_edge239.split.loopexit, label %.lr.ph234, !llvm.loop !35

._crit_edge239.split.loopexit:                    ; preds = %._crit_edge235
  %.pre = load i32, ptr %i.a, align 8, !tbaa !12
  br label %._crit_edge239.split

._crit_edge239.split:                             ; preds = %._crit_edge239.split.loopexit, %.lr.ph238, %bb.ad
  %i.et = phi i32 [ %.pre, %._crit_edge239.split.loopexit ], [ %i.dg, %.lr.ph238 ], [ %i.dg, %bb.ad ] ; 2 uses
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 2 uses
  %i.eu = sext i32 %i.et to i64
  %i.ev = icmp slt i64 %indvars.iv.next400, %i.eu
  br i1 %i.ev, label %.preheader204, label %.preheader203, !llvm.loop !36

.lr.ph278.preheader:                              ; preds = %._crit_edge265.2
  %wide.trip.count410 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check752 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check752, label %.lr.ph278.preheader765, label %vector.ph753

vector.ph753:                                     ; preds = %.lr.ph278.preheader
  %n.vec755 = and i64 %wide.trip.count410, 2147483640 ; 3 uses
  br label %vector.body756

vector.body756:                                   ; preds = %vector.body756, %vector.ph753
  %index757 = phi i64 [ 0, %vector.ph753 ], [ %index.next761, %vector.body756 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph753 ], [ %i.fc, %vector.body756 ]
  %vec.phi758 = phi <4 x i32> [ zeroinitializer, %vector.ph753 ], [ %i.fd, %vector.body756 ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index757 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load759 = load <4 x i32>, ptr %i.ew, align 4, !tbaa !4
  %wide.load760 = load <4 x i32>, ptr %i.ex, align 4, !tbaa !4
  %i.ey = icmp ne <4 x i32> %wide.load759, zeroinitializer
  %i.ez = icmp ne <4 x i32> %wide.load760, zeroinitializer
  %i.fa = zext <4 x i1> %i.ey to <4 x i32>
  %i.fb = zext <4 x i1> %i.ez to <4 x i32>
  %i.fc = add <4 x i32> %vec.phi, %i.fa           ; 2 uses
  %i.fd = add <4 x i32> %vec.phi758, %i.fb        ; 2 uses
  %index.next761 = add nuw i64 %index757, 8       ; 2 uses
  %i.fe = icmp eq i64 %index.next761, %n.vec755
  br i1 %i.fe, label %middle.block762, label %vector.body756, !llvm.loop !37

middle.block762:                                  ; preds = %vector.body756
  %bin.rdx = add <4 x i32> %i.fd, %i.fc
  %i.ff = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n763 = icmp eq i64 %n.vec755, %wide.trip.count410
  br i1 %cmp.n763, label %._crit_edge279, label %.lr.ph278.preheader765

.lr.ph278.preheader765:                           ; preds = %.lr.ph278.preheader, %middle.block762
  %indvars.iv407.ph = phi i64 [ 0, %.lr.ph278.preheader ], [ %n.vec755, %middle.block762 ]
  %.0177277.ph = phi i32 [ 0, %.lr.ph278.preheader ], [ %i.ff, %middle.block762 ]
  br label %.lr.ph278

.preheader203:                                    ; preds = %._crit_edge239.split, %.preheader205
  %i.fg = icmp sgt i32 %.sroa.32.0, 0
  br i1 %i.fg, label %.lr.ph264, label %._crit_edge265.thread595

.lr.ph264:                                        ; preds = %.preheader203
  %i.fh = icmp sgt i32 %.sroa.17.0..sroa.17.4.492, 1
  br i1 %i.fh, label %.lr.ph264.split.us, label %.lr.ph264.1

.lr.ph264.split.us:                               ; preds = %.lr.ph264
  %i.fi = icmp sgt i32 %.sroa.0485.0..sroa.0485.0.488, 1
  br i1 %i.fi, label %.lr.ph256.us.us, label %._crit_edge257.split.us268

.lr.ph256.us.us:                                  ; preds = %.lr.ph264.split.us, %._crit_edge257.split.us.us.us
  %i.fj = phi i32 [ %i.fx, %._crit_edge257.split.us.us.us ], [ 0, %.lr.ph264.split.us ] ; 2 uses
  %.1166262.us.us = phi i32 [ %.4169.us.us.us, %._crit_edge257.split.us.us.us ], [ undef, %.lr.ph264.split.us ]
  %.1171261.us.us = phi i32 [ %.4174.us.us.us, %._crit_edge257.split.us.us.us ], [ %i.d, %.lr.ph264.split.us ]
  %i.fk = mul nsw i32 %i.fj, %i.o
  br label %.lr.ph249.us.us.us

.lr.ph249.us.us.us:                               ; preds = %._crit_edge250.us.us.us, %.lr.ph256.us.us
  %i.fl = phi i32 [ 0, %.lr.ph256.us.us ], [ %i.fv, %._crit_edge250.us.us.us ] ; 2 uses
  %.2167254.us.us.us = phi i32 [ %.1166262.us.us, %.lr.ph256.us.us ], [ %.4169.us.us.us, %._crit_edge250.us.us.us ]
  %.2172253.us.us.us = phi i32 [ %.1171261.us.us, %.lr.ph256.us.us ], [ %.4174.us.us.us, %._crit_edge250.us.us.us ]
  %i.fm = add nsw i32 %i.fk, %i.fl
  %i.fn = mul nsw i32 %i.fm, %i.n
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %.lr.ph249.us.us.us
  %.3168247.us.us.us = phi i32 [ %.2167254.us.us.us, %.lr.ph249.us.us.us ], [ %.4169.us.us.us, %bb.ag ] ; 3 uses
  %.3173246.us.us.us = phi i32 [ %.2172253.us.us.us, %.lr.ph249.us.us.us ], [ %.4174.us.us.us, %bb.ag ] ; 3 uses
  %.0175245.us.us.us = phi i32 [ 0, %.lr.ph249.us.us.us ], [ %.1176.us.us.us, %bb.ag ]
  %.sroa.0.0..sroa.0.0. = phi i32 [ 0, %.lr.ph249.us.us.us ], [ %i.fu, %bb.ag ] ; 2 uses
  %i.fo = add nsw i32 %i.fn, %.sroa.0.0..sroa.0.0. ; 2 uses
  %.not194.us.us.us = icmp ne i32 %.0175245.us.us.us, 0
  %.phi.trans.insert = sext i32 %i.fo to i64
  %.phi.trans.insert548 = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.phi.trans.insert ; 2 uses
  %.pre549 = load i32, ptr %.phi.trans.insert548, align 4, !tbaa !4 ; 3 uses
  %i.fp = icmp eq i32 %.pre549, %.3168247.us.us.us
  %or.cond = select i1 %.not194.us.us.us, i1 %i.fp, i1 false
  br i1 %or.cond, label %bb.af, label %._crit_edge547

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %.phi.trans.insert548, align 4, !tbaa !4
  %i.fq = sext i32 %.3173246.us.us.us to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.fq ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !4
  %i.ft = add nsw i32 %i.fs, 1
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !4
  br label %bb.ag

._crit_edge547:                                   ; preds = %bb.ae
  %.not195.us.us.us = icmp ne i32 %.pre549, 0     ; 3 uses
  %..us.us.us = zext i1 %.not195.us.us.us to i32
  %.3173..us.us.us = select i1 %.not195.us.us.us, i32 %i.fo, i32 %.3173246.us.us.us
  %.3168..us.us.us = select i1 %.not195.us.us.us, i32 %.pre549, i32 %.3168247.us.us.us
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge547, %bb.af
  %.1176.us.us.us = phi i32 [ 1, %bb.af ], [ %..us.us.us, %._crit_edge547 ]
  %.4174.us.us.us = phi i32 [ %.3173246.us.us.us, %bb.af ], [ %.3173..us.us.us, %._crit_edge547 ] ; 4 uses
  %.4169.us.us.us = phi i32 [ %.3168247.us.us.us, %bb.af ], [ %.3168..us.us.us, %._crit_edge547 ] ; 4 uses
  %i.fu = add nuw nsw i32 %.sroa.0.0..sroa.0.0., 1 ; 2 uses
  %exitcond402.not.a = icmp eq i32 %i.fu, %i.n
  br i1 %exitcond402.not.a, label %._crit_edge250.us.us.us, label %bb.ae, !llvm.loop !38

._crit_edge250.us.us.us:                          ; preds = %bb.ag
  %i.fv = add nuw nsw i32 %i.fl, 1                ; 2 uses
  %i.fw = icmp slt i32 %i.fv, %i.o
  br i1 %i.fw, label %.lr.ph249.us.us.us, label %._crit_edge257.split.us.us.us, !llvm.loop !39

._crit_edge257.split.us.us.us:                    ; preds = %._crit_edge250.us.us.us
  %i.fx = add nuw nsw i32 %i.fj, 1                ; 2 uses
  %i.fy = icmp slt i32 %i.fx, %.sroa.32.0
  br i1 %i.fy, label %.lr.ph256.us.us, label %.lr.ph264.1, !llvm.loop !40

._crit_edge257.split.us268:                       ; preds = %.lr.ph264.split.us, %._crit_edge257.split.us268
  %i.fz = phi i32 [ %i.ga, %._crit_edge257.split.us268 ], [ 0, %.lr.ph264.split.us ]
  %i.ga = add nuw nsw i32 %i.fz, 1                ; 2 uses
  %i.gb = icmp slt i32 %i.ga, %.sroa.32.0
  br i1 %i.gb, label %._crit_edge257.split.us268, label %.lr.ph264.1, !llvm.loop !40

.lr.ph264.1:                                      ; preds = %._crit_edge257.split.us.us.us, %._crit_edge257.split.us268, %.lr.ph264
  %.1166.lcssa594 = phi i32 [ undef, %.lr.ph264 ], [ %.4169.us.us.us, %._crit_edge257.split.us.us.us ], [ undef, %._crit_edge257.split.us268 ] ; 2 uses
  %.1171.lcssa593 = phi i32 [ %i.d, %.lr.ph264 ], [ %.4174.us.us.us, %._crit_edge257.split.us.us.us ], [ %i.d, %._crit_edge257.split.us268 ] ; 2 uses
  %i.gc = icmp sgt i32 %.sroa.0485.0..sroa.0485.0.488, 1
  br i1 %i.gc, label %.lr.ph264.split.us.1, label %._crit_edge265.2

.lr.ph264.split.us.1:                             ; preds = %.lr.ph264.1
  %i.gd = icmp sgt i32 %.sroa.17.0..sroa.17.4.492, 1
  br i1 %i.gd, label %.lr.ph256.us.us.1, label %.lr.ph256.us.1.preheader

.lr.ph256.us.1.preheader:                         ; preds = %.lr.ph264.split.us.1
  %i.ge = add nsw i32 %.sroa.0485.0..sroa.0485.0.488, -2
  %xtraiter = and i32 %i.n, 7                     ; 3 uses
  %i.gf = icmp ult i32 %i.ge, 7
  %unroll_iter = and i32 %i.n, -8
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod797 = icmp ne i32 %xtraiter, 0
  br label %.lr.ph256.us.1

.lr.ph256.us.1:                                   ; preds = %.lr.ph256.us.1.preheader, %._crit_edge257.split.us268.1
  %i.gg = phi i32 [ %i.gh, %._crit_edge257.split.us268.1 ], [ 0, %.lr.ph256.us.1.preheader ]
  br i1 %i.gf, label %.epil.preheader, label %.lr.ph256.us.1.new

.lr.ph256.us.1.new:                               ; preds = %.lr.ph256.us.1, %.lr.ph256.us.1.new
  %niter = phi i32 [ %niter.next.7, %.lr.ph256.us.1.new ], [ 0, %.lr.ph256.us.1 ]
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7.not = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %._crit_edge257.split.us268.1.unr-lcssa, label %.lr.ph256.us.1.new, !llvm.loop !39

._crit_edge257.split.us268.1.unr-lcssa:           ; preds = %.lr.ph256.us.1.new
  br i1 %lcmp.mod.not, label %._crit_edge257.split.us268.1, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge257.split.us268.1.unr-lcssa, %.lr.ph256.us.1
  tail call void @llvm.assume(i1 %lcmp.mod797)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.epil.preheader
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ah ]
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge257.split.us268.1, label %bb.ah, !llvm.loop !41

._crit_edge257.split.us268.1:                     ; preds = %bb.ah, %._crit_edge257.split.us268.1.unr-lcssa
  %i.gh = add nuw nsw i32 %i.gg, 1                ; 2 uses
  %i.gi = icmp slt i32 %i.gh, %.sroa.32.0
  br i1 %i.gi, label %.lr.ph256.us.1, label %._crit_edge265.thread595, !llvm.loop !40

.lr.ph256.us.us.1:                                ; preds = %.lr.ph264.split.us.1, %._crit_edge257.split.us.us.us.1
  %i.gj = phi i32 [ %i.gx, %._crit_edge257.split.us.us.us.1 ], [ 0, %.lr.ph264.split.us.1 ] ; 2 uses
  %.1166262.us.us.1 = phi i32 [ %.4169.us.us.us.1, %._crit_edge257.split.us.us.us.1 ], [ %.1166.lcssa594, %.lr.ph264.split.us.1 ]
  %.1171261.us.us.1 = phi i32 [ %.4174.us.us.us.1, %._crit_edge257.split.us.us.us.1 ], [ %.1171.lcssa593, %.lr.ph264.split.us.1 ]
  %i.gk = mul nsw i32 %i.gj, %i.o
  br label %.lr.ph249.us.us.us.1

.lr.ph249.us.us.us.1:                             ; preds = %._crit_edge250.us.us.us.1, %.lr.ph256.us.us.1
  %i.gl = phi i32 [ 0, %.lr.ph256.us.us.1 ], [ %i.gv, %._crit_edge250.us.us.us.1 ] ; 2 uses
  %.2167254.us.us.us.1 = phi i32 [ %.1166262.us.us.1, %.lr.ph256.us.us.1 ], [ %.4169.us.us.us.1, %._crit_edge250.us.us.us.1 ]
  %.2172253.us.us.us.1 = phi i32 [ %.1171261.us.us.1, %.lr.ph256.us.us.1 ], [ %.4174.us.us.us.1, %._crit_edge250.us.us.us.1 ]
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph249.us.us.us.1
  %.3168247.us.us.us.1 = phi i32 [ %.2167254.us.us.us.1, %.lr.ph249.us.us.us.1 ], [ %.4169.us.us.us.1, %bb.ak ] ; 3 uses
  %.3173246.us.us.us.1 = phi i32 [ %.2172253.us.us.us.1, %.lr.ph249.us.us.us.1 ], [ %.4174.us.us.us.1, %bb.ak ] ; 3 uses
  %.0175245.us.us.us.1 = phi i32 [ 0, %.lr.ph249.us.us.us.1 ], [ %.1176.us.us.us.1, %bb.ak ]
  %.sroa.14.0..sroa.14.4.445 = phi i32 [ 0, %.lr.ph249.us.us.us.1 ], [ %i.gu, %bb.ak ] ; 2 uses
  %i.gm = add nsw i32 %i.gk, %.sroa.14.0..sroa.14.4.445
  %i.gn = mul nsw i32 %i.gm, %i.n
  %i.go = add nsw i32 %i.gn, %i.gl                ; 2 uses
  %.not194.us.us.us.1 = icmp ne i32 %.0175245.us.us.us.1, 0
  %.phi.trans.insert551 = sext i32 %i.go to i64
  %.phi.trans.insert552 = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.phi.trans.insert551 ; 2 uses
  %.pre553 = load i32, ptr %.phi.trans.insert552, align 4, !tbaa !4 ; 3 uses
  %i.gp = icmp eq i32 %.pre553, %.3168247.us.us.us.1
  %or.cond643 = select i1 %.not194.us.us.us.1, i1 %i.gp, i1 false
  br i1 %or.cond643, label %bb.aj, label %._crit_edge550

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %.phi.trans.insert552, align 4, !tbaa !4
  %i.gq = sext i32 %.3173246.us.us.us.1 to i64
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.gq ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !4
  %i.gt = add nsw i32 %i.gs, %.sroa.0485.0..sroa.0485.0.488
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !4
  br label %bb.ak

._crit_edge550:                                   ; preds = %bb.ai
  %.not195.us.us.us.1 = icmp ne i32 %.pre553, 0   ; 3 uses
  %..us.us.us.1 = zext i1 %.not195.us.us.us.1 to i32
  %.3173..us.us.us.1 = select i1 %.not195.us.us.us.1, i32 %i.go, i32 %.3173246.us.us.us.1
  %.3168..us.us.us.1 = select i1 %.not195.us.us.us.1, i32 %.pre553, i32 %.3168247.us.us.us.1
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge550, %bb.aj
  %.1176.us.us.us.1 = phi i32 [ 1, %bb.aj ], [ %..us.us.us.1, %._crit_edge550 ]
  %.4174.us.us.us.1 = phi i32 [ %.3173246.us.us.us.1, %bb.aj ], [ %.3173..us.us.us.1, %._crit_edge550 ] ; 4 uses
  %.4169.us.us.us.1 = phi i32 [ %.3168247.us.us.us.1, %bb.aj ], [ %.3168..us.us.us.1, %._crit_edge550 ] ; 4 uses
  %i.gu = add nuw nsw i32 %.sroa.14.0..sroa.14.4.445, 1 ; 2 uses
  %exitcond402.1.not = icmp eq i32 %i.gu, %i.o
  br i1 %exitcond402.1.not, label %._crit_edge250.us.us.us.1, label %bb.ai, !llvm.loop !38

._crit_edge250.us.us.us.1:                        ; preds = %bb.ak
  %i.gv = add nuw nsw i32 %i.gl, 1                ; 2 uses
  %i.gw = icmp slt i32 %i.gv, %i.n
  br i1 %i.gw, label %.lr.ph249.us.us.us.1, label %._crit_edge257.split.us.us.us.1, !llvm.loop !39

._crit_edge257.split.us.us.us.1:                  ; preds = %._crit_edge250.us.us.us.1
  %i.gx = add nuw nsw i32 %i.gj, 1                ; 2 uses
  %i.gy = icmp slt i32 %i.gx, %.sroa.32.0
  br i1 %i.gy, label %.lr.ph256.us.us.1, label %._crit_edge265.thread595, !llvm.loop !40

._crit_edge265.thread595:                         ; preds = %._crit_edge257.split.us268.1, %._crit_edge257.split.us.us.us.1, %.preheader203
  %.1171.lcssa.1.ph = phi i32 [ %i.d, %.preheader203 ], [ %.4174.us.us.us.1, %._crit_edge257.split.us.us.us.1 ], [ %.1171.lcssa593, %._crit_edge257.split.us268.1 ]
  %.1166.lcssa.1.ph = phi i32 [ undef, %.preheader203 ], [ %.4169.us.us.us.1, %._crit_edge257.split.us.us.us.1 ], [ %.1166.lcssa594, %._crit_edge257.split.us268.1 ]
  %i.gz = icmp sgt i32 %.sroa.0485.0..sroa.0485.0.488, 1
  %i.ha = icmp sgt i32 %.sroa.17.0..sroa.17.4.492, 1
  %or.cond823 = and i1 %i.gz, %i.ha
  br i1 %or.cond823, label %.lr.ph264.split.us.2, label %._crit_edge265.2

.lr.ph264.split.us.2:                             ; preds = %._crit_edge265.thread595
  %i.hb = icmp sgt i32 %.sroa.32.0, 0
  br i1 %i.hb, label %.lr.ph256.us.us.2, label %._crit_edge257.split.us268.2

._crit_edge257.split.us268.2:                     ; preds = %.lr.ph264.split.us.2, %._crit_edge257.split.us268.2
  %i.hc = phi i32 [ %i.hd, %._crit_edge257.split.us268.2 ], [ 0, %.lr.ph264.split.us.2 ]
  %i.hd = add nuw nsw i32 %i.hc, 1                ; 2 uses
  %i.he = icmp slt i32 %i.hd, %i.n
  br i1 %i.he, label %._crit_edge257.split.us268.2, label %._crit_edge265.2, !llvm.loop !40

.lr.ph256.us.us.2:                                ; preds = %.lr.ph264.split.us.2, %._crit_edge257.split.us.us.us.2
  %i.hf = phi i32 [ %i.ht, %._crit_edge257.split.us.us.us.2 ], [ 0, %.lr.ph264.split.us.2 ] ; 2 uses
  %.1166262.us.us.2 = phi i32 [ %.4169.us.us.us.2, %._crit_edge257.split.us.us.us.2 ], [ %.1166.lcssa.1.ph, %.lr.ph264.split.us.2 ]
  %.1171261.us.us.2 = phi i32 [ %.4174.us.us.us.2, %._crit_edge257.split.us.us.us.2 ], [ %.1171.lcssa.1.ph, %.lr.ph264.split.us.2 ]
  br label %.lr.ph249.us.us.us.2

.lr.ph249.us.us.us.2:                             ; preds = %._crit_edge250.us.us.us.2, %.lr.ph256.us.us.2
  %i.hg = phi i32 [ 0, %.lr.ph256.us.us.2 ], [ %i.hr, %._crit_edge250.us.us.us.2 ] ; 2 uses
  %.2167254.us.us.us.2 = phi i32 [ %.1166262.us.us.2, %.lr.ph256.us.us.2 ], [ %.4169.us.us.us.2, %._crit_edge250.us.us.us.2 ]
  %.2172253.us.us.us.2 = phi i32 [ %.1171261.us.us.2, %.lr.ph256.us.us.2 ], [ %.4174.us.us.us.2, %._crit_edge250.us.us.us.2 ]
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %.lr.ph249.us.us.us.2
  %.3168247.us.us.us.2 = phi i32 [ %.2167254.us.us.us.2, %.lr.ph249.us.us.us.2 ], [ %.4169.us.us.us.2, %bb.an ] ; 3 uses
  %.3173246.us.us.us.2 = phi i32 [ %.2172253.us.us.us.2, %.lr.ph249.us.us.us.2 ], [ %.4174.us.us.us.2, %bb.an ] ; 3 uses
  %.0175245.us.us.us.2 = phi i32 [ 0, %.lr.ph249.us.us.us.2 ], [ %.1176.us.us.us.2, %bb.an ]
  %.sroa.26.0..sroa.26.8.448 = phi i32 [ 0, %.lr.ph249.us.us.us.2 ], [ %i.hq, %bb.an ] ; 2 uses
  %i.hh = mul nsw i32 %.sroa.26.0..sroa.26.8.448, %i.o
  %i.hi = add nsw i32 %i.hh, %i.hg
  %i.hj = mul nsw i32 %i.hi, %i.n
  %i.hk = add nsw i32 %i.hj, %i.hf                ; 2 uses
  %.not194.us.us.us.2 = icmp ne i32 %.0175245.us.us.us.2, 0
  %.phi.trans.insert555 = sext i32 %i.hk to i64
  %.phi.trans.insert556 = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.phi.trans.insert555 ; 2 uses
  %.pre557 = load i32, ptr %.phi.trans.insert556, align 4, !tbaa !4 ; 3 uses
  %i.hl = icmp eq i32 %.pre557, %.3168247.us.us.us.2
  %or.cond644 = select i1 %.not194.us.us.us.2, i1 %i.hl, i1 false
  br i1 %or.cond644, label %bb.am, label %._crit_edge554

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %.phi.trans.insert556, align 4, !tbaa !4
  %i.hm = sext i32 %.3173246.us.us.us.2 to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.hm ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !4
  %i.hp = add nsw i32 %i.ho, %i.r
  store i32 %i.hp, ptr %i.hn, align 4, !tbaa !4
  br label %bb.an

._crit_edge554:                                   ; preds = %bb.al
  %.not195.us.us.us.2 = icmp ne i32 %.pre557, 0   ; 3 uses
  %..us.us.us.2 = zext i1 %.not195.us.us.us.2 to i32
  %.3173..us.us.us.2 = select i1 %.not195.us.us.us.2, i32 %i.hk, i32 %.3173246.us.us.us.2
  %.3168..us.us.us.2 = select i1 %.not195.us.us.us.2, i32 %.pre557, i32 %.3168247.us.us.us.2
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge554, %bb.am
  %.1176.us.us.us.2 = phi i32 [ 1, %bb.am ], [ %..us.us.us.2, %._crit_edge554 ]
  %.4174.us.us.us.2 = phi i32 [ %.3173246.us.us.us.2, %bb.am ], [ %.3173..us.us.us.2, %._crit_edge554 ] ; 3 uses
  %.4169.us.us.us.2 = phi i32 [ %.3168247.us.us.us.2, %bb.am ], [ %.3168..us.us.us.2, %._crit_edge554 ] ; 3 uses
  %i.hq = add nuw nsw i32 %.sroa.26.0..sroa.26.8.448, 1 ; 2 uses
  %exitcond402.2.not = icmp eq i32 %i.hq, %.sroa.32.0
  br i1 %exitcond402.2.not, label %._crit_edge250.us.us.us.2, label %bb.al, !llvm.loop !38

._crit_edge250.us.us.us.2:                        ; preds = %bb.an
  %i.hr = add nuw nsw i32 %i.hg, 1                ; 2 uses
  %i.hs = icmp slt i32 %i.hr, %i.o
  br i1 %i.hs, label %.lr.ph249.us.us.us.2, label %._crit_edge257.split.us.us.us.2, !llvm.loop !39

._crit_edge257.split.us.us.us.2:                  ; preds = %._crit_edge250.us.us.us.2
  %i.ht = add nuw nsw i32 %i.hf, 1                ; 2 uses
  %i.hu = icmp slt i32 %i.ht, %i.n
  br i1 %i.hu, label %.lr.ph256.us.us.2, label %._crit_edge265.2, !llvm.loop !40

._crit_edge265.2:                                 ; preds = %._crit_edge257.split.us.us.us.2, %._crit_edge257.split.us268.2, %.lr.ph264.1, %._crit_edge265.thread595
  %i.hv = icmp sgt i32 %i.q, 0
  br i1 %i.hv, label %.lr.ph278.preheader, label %._crit_edge279

.lr.ph278:                                        ; preds = %.lr.ph278.preheader765, %.lr.ph278
  %indvars.iv407 = phi i64 [ %indvars.iv.next408, %.lr.ph278 ], [ %indvars.iv407.ph, %.lr.ph278.preheader765 ] ; 2 uses
  %.0177277 = phi i32 [ %spec.select200, %.lr.ph278 ], [ %.0177277.ph, %.lr.ph278.preheader765 ]
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv407
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !4
  %.not191 = icmp ne i32 %i.hx, 0
  %i.hy = zext i1 %.not191 to i32
  %spec.select200 = add nuw nsw i32 %.0177277, %i.hy ; 2 uses
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1 ; 2 uses
  %exitcond411.not = icmp eq i64 %indvars.iv.next408, %wide.trip.count410
  br i1 %exitcond411.not, label %._crit_edge279, label %.lr.ph278, !llvm.loop !43

._crit_edge279:                                   ; preds = %.lr.ph278, %middle.block762, %._crit_edge265.2
  %.0177.lcssa = phi i32 [ 0, %._crit_edge265.2 ], [ %i.ff, %middle.block762 ], [ %spec.select200, %.lr.ph278 ]
  %i.hz = tail call i32 @hypre_BoxArraySetSize(ptr noundef %0, i32 noundef %.0177.lcssa) #5 ; 0 uses
  %i.ia = icmp sgt i32 %.sroa.32.0, 0
  %i.ib = icmp sgt i32 %.sroa.17.0..sroa.17.4.492, 1
  %or.cond645 = and i1 %i.ia, %i.ib
  %i.ic = icmp sgt i32 %.sroa.0485.0..sroa.0485.0.488, 1
  %or.cond646 = and i1 %or.cond645, %i.ic
  br i1 %or.cond646, label %.preheader201.us.preheader, label %._crit_edge300.split

.preheader201.us.preheader:                       ; preds = %._crit_edge279
  %wide.trip.count429 = zext nneg i32 %.sroa.32.0 to i64
  %wide.trip.count424 = zext nneg i32 %i.o to i64
  %wide.trip.count419 = zext nneg i32 %i.n to i64
  br label %.preheader201.us

.preheader201.us:                                 ; preds = %.preheader201.us.preheader, %._crit_edge291.split.us.us
  %indvars.iv426 = phi i64 [ 0, %.preheader201.us.preheader ], [ %indvars.iv.next427, %._crit_edge291.split.us.us ] ; 3 uses
  %.2179297.us = phi i32 [ 0, %.preheader201.us.preheader ], [ %.5.us.us, %._crit_edge291.split.us.us ]
  %.1183296.us = phi i64 [ 0, %.preheader201.us.preheader ], [ %indvars.iv.next415, %._crit_edge291.split.us.us ]
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv426
  %i.ie = trunc nuw nsw i64 %indvars.iv426 to i32
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge285.us.us, %.preheader201.us
  %indvars.iv421 = phi i64 [ %indvars.iv.next422, %._crit_edge285.us.us ], [ 0, %.preheader201.us ] ; 3 uses
  %.3180289.us.us = phi i32 [ %.5.us.us, %._crit_edge285.us.us ], [ %.2179297.us, %.preheader201.us ]
  %.2184288.us.us = phi i64 [ %indvars.iv.next415, %._crit_edge285.us.us ], [ %.1183296.us, %.preheader201.us ]
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv421
  %i.ig = trunc nuw nsw i64 %indvars.iv421 to i32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %.preheader.us.us
  %indvars.iv414 = phi i64 [ %indvars.iv.next415, %bb.aq ], [ %.2184288.us.us, %.preheader.us.us ] ; 2 uses
  %indvars.iv412 = phi i64 [ %indvars.iv.next413, %bb.aq ], [ 0, %.preheader.us.us ] ; 3 uses
  %.4181282.us.us = phi i32 [ %.5.us.us, %bb.aq ], [ %.3180289.us.us, %.preheader.us.us ] ; 3 uses
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv414
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !4  ; 4 uses
  %.not.us.us = icmp eq i32 %i.ii, 0
  br i1 %.not.us.us, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ij = srem i32 %i.ii, %.sroa.0485.0..sroa.0485.0.488
  %i.ik = srem i32 %i.ii, %i.r
  %i.il = sdiv i32 %i.ik, %.sroa.0485.0..sroa.0485.0.488
  %i.im = sdiv i32 %i.ii, %i.r
  %i.in = load ptr, ptr %0, align 8, !tbaa !8
  %i.io = sext i32 %.4181282.us.us to i64
  %i.ip = getelementptr inbounds [24 x i8], ptr %i.in, i64 %i.io ; 6 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv412
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !4
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !4
  %i.is = load i32, ptr %i.if, align 4, !tbaa !4
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  store i32 %i.is, ptr %i.it, align 4, !tbaa !4
  %i.iu = load i32, ptr %i.id, align 4, !tbaa !4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !4
  %i.iw = trunc nuw nsw i64 %indvars.iv412 to i32
  %i.ix = add nsw i32 %i.ij, %i.iw
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !4
  %i.jb = add nsw i32 %i.ja, -1
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ip, i64 12
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !4
  %i.jd = add nsw i32 %i.il, %i.ig
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !4
  %i.jh = add nsw i32 %i.jg, -1
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store i32 %i.jh, ptr %i.ji, align 4, !tbaa !4
  %i.jj = add nsw i32 %i.im, %i.ie
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !4
  %i.jn = add nsw i32 %i.jm, -1
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ip, i64 20
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !4
  %i.jp = add nsw i32 %.4181282.us.us, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.5.us.us = phi i32 [ %i.jp, %bb.ap ], [ %.4181282.us.us, %bb.ao ] ; 3 uses
  %indvars.iv.next415 = add nsw i64 %indvars.iv414, 1 ; 3 uses
  %indvars.iv.next413 = add nuw nsw i64 %indvars.iv412, 1 ; 2 uses
  %exitcond420.not = icmp eq i64 %indvars.iv.next413, %wide.trip.count419
  br i1 %exitcond420.not, label %._crit_edge285.us.us, label %bb.ao, !llvm.loop !44

._crit_edge285.us.us:                             ; preds = %bb.aq
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 2 uses
  %exitcond425.not = icmp eq i64 %indvars.iv.next422, %wide.trip.count424
  br i1 %exitcond425.not, label %._crit_edge291.split.us.us, label %.preheader.us.us, !llvm.loop !45

._crit_edge291.split.us.us:                       ; preds = %._crit_edge285.us.us
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, %wide.trip.count429
  br i1 %exitcond430.not, label %._crit_edge300.split, label %.preheader201.us, !llvm.loop !46

._crit_edge300.split:                             ; preds = %._crit_edge291.split.us.us, %._crit_edge279
  tail call void @hypre_Free(ptr noundef %i.f) #5
  tail call void @hypre_Free(ptr noundef %i.s) #5
  br label %bb.ar

bb.ar:                                            ; preds = %bb.a, %._crit_edge300.split
  ret i32 0
}

declare ptr @hypre_MAlloc(i32 noundef) local_unnamed_addr #2

declare ptr @hypre_CAlloc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @hypre_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"hypre_BoxArray_struct", !10, i64 0, !5, i64 8, !5, i64 12}
!10 = !{!"p1 _ZTS16hypre_Box_struct", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !5, i64 8}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !14, !17, !16}
!19 = distinct !{!19, !14, !16, !17}
!20 = distinct !{!20, !14, !17, !16}
!21 = distinct !{!21, !14, !16, !17}
!22 = distinct !{!22, !14, !17, !16}
!23 = distinct !{!23, !14, !16, !17}
!24 = distinct !{!24, !14, !17, !16}
!25 = distinct !{!25, !14, !16, !17}
!26 = distinct !{!26, !14, !17, !16}
!27 = distinct !{!27, !14, !16, !17}
!28 = distinct !{!28, !14, !17, !16}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14, !16, !17}
!33 = distinct !{!33, !14, !17, !16}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14, !16, !17}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !14, !17, !16}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, !14}
end_hunk_0
