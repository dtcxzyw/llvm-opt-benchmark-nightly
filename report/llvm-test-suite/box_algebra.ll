loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@hypre_SubtractBoxes:bb.a
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
  %i.eh = tail call i32 @hypre_BoxArraySetSize(ptr noundef nonnull %2, i32 noundef %.3) #6 ; 0 uses
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
  %i.f = tail call ptr @hypre_MAlloc(i32 noundef %i.e) #6 ; 14 uses
  %i.g = zext nneg i32 %i.d to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 13 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.g ; 12 uses
  %i.j = load i32, ptr %i.a, align 8, !tbaa !12
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph225, label %.preheader205

.lr.ph225:                                        ; preds = %.preheader207
  %i.l = load ptr, ptr %0, align 8, !tbaa !8
  %scevgep314 = getelementptr i8, ptr %i.f, i64 -4
  %scevgep314.1 = getelementptr i8, ptr %i.f, i64 -4
  %scevgep314.1339 = getelementptr i8, ptr %i.h, i64 -4
  %scevgep314.1.1 = getelementptr i8, ptr %i.h, i64 -4
  %scevgep314.2 = getelementptr i8, ptr %i.i, i64 -4
  %scevgep314.1.2 = getelementptr i8, ptr %i.i, i64 -4
  br label %.preheader206

.preheader205.loopexit:                           ; preds = %bb.t
  %i.m = add nsw i32 %.sroa.32.3, -1
  br label %.preheader205

.preheader205:                                    ; preds = %.preheader205.loopexit, %.preheader207
  %.sroa.17.0..sroa.17.4.469 = phi i32 [ %.sroa.17.0..sroa.17.4.468520, %.preheader205.loopexit ], [ 0, %.preheader207 ] ; 6 uses
  %.sroa.0462.0..sroa.0462.0.465 = phi i32 [ %.sroa.0462.0..sroa.0462.0.463515, %.preheader205.loopexit ], [ 0, %.preheader207 ] ; 11 uses
  %.sroa.32.0 = phi i32 [ %i.m, %.preheader205.loopexit ], [ -1, %.preheader207 ] ; 10 uses
  %i.n = add nsw i32 %.sroa.0462.0..sroa.0462.0.465, -1 ; 12 uses
  %i.o = add nsw i32 %.sroa.17.0..sroa.17.4.469, -1 ; 9 uses
  %i.p = mul nsw i32 %i.o, %i.n
  %i.q = mul nsw i32 %i.p, %.sroa.32.0            ; 4 uses
  %i.r = mul nsw i32 %.sroa.17.0..sroa.17.4.469, %.sroa.0462.0..sroa.0462.0.465 ; 4 uses
  %i.s = tail call ptr @hypre_CAlloc(i32 noundef %i.q, i32 noundef 4) #6 ; 11 uses
  %i.t = load i32, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph243, label %.preheader203

.preheader206:                                    ; preds = %.lr.ph225, %bb.t
  %.sroa.17.0..sroa.17.4.468519 = phi i32 [ 0, %.lr.ph225 ], [ %.sroa.17.0..sroa.17.4.468520, %bb.t ] ; 8 uses
  %.sroa.0462.0..sroa.0462.0.463514 = phi i32 [ 0, %.lr.ph225 ], [ %.sroa.0462.0..sroa.0462.0.463515, %bb.t ] ; 8 uses
  %.sroa.32.1 = phi i32 [ 0, %.lr.ph225 ], [ %.sroa.32.3, %bb.t ] ; 8 uses
  %indvars.iv344 = phi i64 [ 0, %.lr.ph225 ], [ %indvars.iv.next345, %bb.t ] ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv344 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.v, align 4, !tbaa !4    ; 3 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !4    ; 2 uses
  %i.z = add nsw i32 %i.y, 1                      ; 2 uses
  %i.aa = icmp sgt i32 %.sroa.0462.0..sroa.0462.0.463514, 0
  br i1 %i.aa, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader206
  %wide.trip.count = zext nneg i32 %.sroa.0462.0..sroa.0462.0.463514 to i64
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
  %.0151214 = phi i32 [ %i.ad, %bb.c ], [ 0, %.preheader206 ], [ %.sroa.0462.0..sroa.0462.0.463514, %bb.d ] ; 3 uses
  %i.af = icmp sgt i32 %.sroa.0462.0..sroa.0462.0.463514, %.0151214
  br i1 %i.af, label %.lr.ph221, label %._crit_edge

.lr.ph221:                                        ; preds = %.critedge
  %i.ag = sext i32 %.sroa.0462.0..sroa.0462.0.463514 to i64
  %i.ah = xor i32 %.0151214, -1
  %i.ai = add i32 %.sroa.0462.0..sroa.0462.0.463514, %i.ah
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = sub nsw i64 %i.ag, %i.aj
  %i.am = shl nsw i64 %i.al, 2                    ; 2 uses
  %scevgep313 = getelementptr i8, ptr %i.f, i64 %i.am
  %scevgep315 = getelementptr i8, ptr %scevgep314, i64 %i.am
  %i.an = add nuw nsw i64 %i.ak, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep313, ptr noundef nonnull align 4 dereferenceable(1) %scevgep315, i64 %i.an, i1 false), !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph221, %.critedge
  %i.ao = zext nneg i32 %.0151214 to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ao
  store i32 %i.x, ptr %i.ap, align 4, !tbaa !4
  %i.aq = add nsw i32 %.sroa.0462.0..sroa.0462.0.463514, 1
  br label %.preheader206.1

.preheader206.1:                                  ; preds = %bb.c, %._crit_edge
  %.sroa.0462.0..sroa.0462.0.463 = phi i32 [ %.sroa.0462.0..sroa.0462.0.463514, %bb.c ], [ %i.aq, %._crit_edge ] ; 8 uses
  %i.ar = icmp sgt i32 %.sroa.0462.0..sroa.0462.0.463, 0
  br i1 %i.ar, label %.lr.ph.1, label %.critedge.1

.lr.ph.1:                                         ; preds = %.preheader206.1
  %wide.trip.count.1 = zext nneg i32 %.sroa.0462.0..sroa.0462.0.463 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.1
  %indvars.iv.1 = phi i64 [ 0, %.lr.ph.1 ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.1
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4  ; 2 uses
  %.not198.1.not = icmp slt i32 %i.y, %i.at
  br i1 %.not198.1.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = trunc nuw nsw i64 %indvars.iv.1 to i32
  %i.av = icmp eq i32 %i.z, %i.at
  br i1 %i.av, label %.preheader206.1326, label %.critedge.1

bb.g:                                             ; preds = %bb.e
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.1
  br i1 %exitcond.1.not, label %.critedge.1, label %bb.e, !llvm.loop !13

.critedge.1:                                      ; preds = %bb.g, %bb.f, %.preheader206.1
  %.0151214.1 = phi i32 [ %i.au, %bb.f ], [ 0, %.preheader206.1 ], [ %.sroa.0462.0..sroa.0462.0.463, %bb.g ] ; 3 uses
  %i.aw = icmp sgt i32 %.sroa.0462.0..sroa.0462.0.463, %.0151214.1
  br i1 %i.aw, label %.lr.ph221.1, label %._crit_edge.1

.lr.ph221.1:                                      ; preds = %.critedge.1
  %i.ax = sext i32 %.sroa.0462.0..sroa.0462.0.463 to i64
  %i.ay = xor i32 %.0151214.1, -1
  %i.az = add i32 %.sroa.0462.0..sroa.0462.0.463, %i.ay
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = sub nsw i64 %i.ax, %i.ba
  %i.bd = shl nsw i64 %i.bc, 2                    ; 2 uses
  %scevgep313.1 = getelementptr i8, ptr %i.f, i64 %i.bd
  %scevgep315.1 = getelementptr i8, ptr %scevgep314.1, i64 %i.bd
  %i.be = add nuw nsw i64 %i.bb, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep313.1, ptr noundef nonnull align 4 dereferenceable(1) %scevgep315.1, i64 %i.be, i1 false), !tbaa !4
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %.lr.ph221.1, %.critedge.1
  %i.bf = zext nneg i32 %.0151214.1 to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bf
  store i32 %i.z, ptr %i.bg, align 4, !tbaa !4
  %i.bh = add nsw i32 %.sroa.0462.0..sroa.0462.0.463, 1
  br label %.preheader206.1326

.preheader206.1326:                               ; preds = %._crit_edge.1, %bb.f
  %.sroa.0462.0..sroa.0462.0.463515 = phi i32 [ %i.bh, %._crit_edge.1 ], [ %.sroa.0462.0..sroa.0462.0.463, %bb.f ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4  ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4  ; 2 uses
  %i.bm = add nsw i32 %i.bl, 1                    ; 2 uses
  %i.bn = icmp sgt i32 %.sroa.17.0..sroa.17.4.468519, 0
  br i1 %i.bn, label %.lr.ph.1328, label %.critedge.1337

.lr.ph.1328:                                      ; preds = %.preheader206.1326
  %wide.trip.count.1327 = zext nneg i32 %.sroa.17.0..sroa.17.4.468519 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.1328
  %indvars.iv.1329 = phi i64 [ 0, %.lr.ph.1328 ], [ %indvars.iv.next.1333, %bb.j ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.1329
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4  ; 2 uses
  %.not198.1330 = icmp sgt i32 %i.bj, %i.bp
  br i1 %.not198.1330, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = trunc nuw nsw i64 %indvars.iv.1329 to i32
  %i.br = icmp eq i32 %i.bj, %i.bp
  br i1 %i.br, label %.preheader206.1.1, label %.critedge.1337

bb.j:                                             ; preds = %bb.h
  %indvars.iv.next.1333 = add nuw nsw i64 %indvars.iv.1329, 1 ; 2 uses
  %exitcond.1334.not = icmp eq i64 %indvars.iv.next.1333, %wide.trip.count.1327
  br i1 %exitcond.1334.not, label %.critedge.1337, label %bb.h, !llvm.loop !13

.critedge.1337:                                   ; preds = %bb.j, %bb.i, %.preheader206.1326
  %.0151214.1336 = phi i32 [ %i.bq, %bb.i ], [ 0, %.preheader206.1326 ], [ %.sroa.17.0..sroa.17.4.468519, %bb.j ] ; 3 uses
  %i.bs = icmp sgt i32 %.sroa.17.0..sroa.17.4.468519, %.0151214.1336
  br i1 %i.bs, label %.lr.ph221.1341, label %._crit_edge.1343

.lr.ph221.1341:                                   ; preds = %.critedge.1337
  %i.bt = sext i32 %.sroa.17.0..sroa.17.4.468519 to i64
  %i.bu = xor i32 %.0151214.1336, -1
  %i.bv = add i32 %.sroa.17.0..sroa.17.4.468519, %i.bu
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = shl nuw nsw i64 %i.bw, 2
  %i.by = sub nsw i64 %i.bt, %i.bw
  %i.bz = shl nsw i64 %i.by, 2                    ; 2 uses
  %scevgep313.1338 = getelementptr i8, ptr %i.h, i64 %i.bz
  %scevgep315.1340 = getelementptr i8, ptr %scevgep314.1339, i64 %i.bz
  %i.ca = add nuw nsw i64 %i.bx, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep313.1338, ptr noundef nonnull align 4 dereferenceable(1) %scevgep315.1340, i64 %i.ca, i1 false), !tbaa !4
  br label %._crit_edge.1343

._crit_edge.1343:                                 ; preds = %.lr.ph221.1341, %.critedge.1337
  %i.cb = zext nneg i32 %.0151214.1336 to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cb
  store i32 %i.bj, ptr %i.cc, align 4, !tbaa !4
  %i.cd = add nsw i32 %.sroa.17.0..sroa.17.4.468519, 1
  br label %.preheader206.1.1

.preheader206.1.1:                                ; preds = %._crit_edge.1343, %bb.i
  %.sroa.17.0..sroa.17.4.468 = phi i32 [ %i.cd, %._crit_edge.1343 ], [ %.sroa.17.0..sroa.17.4.468519, %bb.i ] ; 8 uses
  %i.ce = icmp sgt i32 %.sroa.17.0..sroa.17.4.468, 0
  br i1 %i.ce, label %.lr.ph.1.1, label %.critedge.1.1

.lr.ph.1.1:                                       ; preds = %.preheader206.1.1
  %wide.trip.count.1.1 = zext nneg i32 %.sroa.17.0..sroa.17.4.468 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph.1.1
  %indvars.iv.1.1 = phi i64 [ 0, %.lr.ph.1.1 ], [ %indvars.iv.next.1.1, %bb.m ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.1.1
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !4  ; 2 uses
  %.not198.1.1.not = icmp slt i32 %i.bl, %i.cg
  br i1 %.not198.1.1.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ch = trunc nuw nsw i64 %indvars.iv.1.1 to i32
  %i.ci = icmp eq i32 %i.bm, %i.cg
  br i1 %i.ci, label %.preheader206.2, label %.critedge.1.1

bb.m:                                             ; preds = %bb.k
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1.1, 1 ; 2 uses
  %exitcond.1.1.not = icmp eq i64 %indvars.iv.next.1.1, %wide.trip.count.1.1
end_hunk_0
begin_hunk_1_@hypre_UnionBoxes:bb.a
  %niter.ncmp.7.not = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %._crit_edge257.split.us268.1.unr-lcssa, label %.lr.ph256.us.1.new, !llvm.loop !27

._crit_edge257.split.us268.1.unr-lcssa:           ; preds = %.lr.ph256.us.1.new
  br i1 %lcmp.mod.not, label %._crit_edge257.split.us268.1, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge257.split.us268.1.unr-lcssa, %.lr.ph256.us.1
  tail call void @llvm.assume(i1 %lcmp.mod695)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.epil.preheader
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ah ]
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge257.split.us268.1, label %bb.ah, !llvm.loop !29

._crit_edge257.split.us268.1:                     ; preds = %bb.ah, %._crit_edge257.split.us268.1.unr-lcssa
  %i.hr = add nuw nsw i32 %i.hq, 1                ; 2 uses
  %i.hs = icmp slt i32 %i.hr, %.sroa.32.0
  br i1 %i.hs, label %.lr.ph256.us.1, label %._crit_edge265.thread572, !llvm.loop !28

.lr.ph256.us.us.1:                                ; preds = %.lr.ph264.split.us.1, %._crit_edge257.split.us.us.us.1
  %i.ht = phi i32 [ %i.ih, %._crit_edge257.split.us.us.us.1 ], [ 0, %.lr.ph264.split.us.1 ] ; 2 uses
  %.1166262.us.us.1 = phi i32 [ %.4169.us.us.us.1, %._crit_edge257.split.us.us.us.1 ], [ %.1166.lcssa571, %.lr.ph264.split.us.1 ]
  %.1171261.us.us.1 = phi i32 [ %.4174.us.us.us.1, %._crit_edge257.split.us.us.us.1 ], [ %.1171.lcssa570, %.lr.ph264.split.us.1 ]
  %i.hu = mul nsw i32 %i.ht, %i.o
  br label %.lr.ph249.us.us.us.1

.lr.ph249.us.us.us.1:                             ; preds = %._crit_edge250.us.us.us.1, %.lr.ph256.us.us.1
  %i.hv = phi i32 [ 0, %.lr.ph256.us.us.1 ], [ %i.if, %._crit_edge250.us.us.us.1 ] ; 2 uses
  %.2167254.us.us.us.1 = phi i32 [ %.1166262.us.us.1, %.lr.ph256.us.us.1 ], [ %.4169.us.us.us.1, %._crit_edge250.us.us.us.1 ]
  %.2172253.us.us.us.1 = phi i32 [ %.1171261.us.us.1, %.lr.ph256.us.us.1 ], [ %.4174.us.us.us.1, %._crit_edge250.us.us.us.1 ]
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph249.us.us.us.1
  %.3168247.us.us.us.1 = phi i32 [ %.2167254.us.us.us.1, %.lr.ph249.us.us.us.1 ], [ %.4169.us.us.us.1, %bb.ak ] ; 3 uses
  %.3173246.us.us.us.1 = phi i32 [ %.2172253.us.us.us.1, %.lr.ph249.us.us.us.1 ], [ %.4174.us.us.us.1, %bb.ak ] ; 3 uses
  %.0175245.us.us.us.1 = phi i32 [ 0, %.lr.ph249.us.us.us.1 ], [ %.1176.us.us.us.1, %bb.ak ]
  %.sroa.14.0..sroa.14.4.422 = phi i32 [ 0, %.lr.ph249.us.us.us.1 ], [ %i.ie, %bb.ak ] ; 2 uses
  %i.hw = add nsw i32 %i.hu, %.sroa.14.0..sroa.14.4.422
  %i.hx = mul nsw i32 %i.hw, %i.n
  %i.hy = add nsw i32 %i.hx, %i.hv                ; 2 uses
  %.not194.us.us.us.1 = icmp ne i32 %.0175245.us.us.us.1, 0
  %.phi.trans.insert528 = sext i32 %i.hy to i64
  %.phi.trans.insert529 = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.phi.trans.insert528 ; 2 uses
  %.pre530 = load i32, ptr %.phi.trans.insert529, align 4, !tbaa !4 ; 3 uses
  %i.hz = icmp eq i32 %.pre530, %.3168247.us.us.us.1
  %or.cond620 = select i1 %.not194.us.us.us.1, i1 %i.hz, i1 false
  br i1 %or.cond620, label %bb.aj, label %._crit_edge527

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %.phi.trans.insert529, align 4, !tbaa !4
  %i.ia = sext i32 %.3173246.us.us.us.1 to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ia ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !4
  %i.id = add nsw i32 %i.ic, %.sroa.0462.0..sroa.0462.0.465
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !4
  br label %bb.ak

._crit_edge527:                                   ; preds = %bb.ai
  %.not195.us.us.us.1 = icmp ne i32 %.pre530, 0   ; 3 uses
  %..us.us.us.1 = zext i1 %.not195.us.us.us.1 to i32
  %.3173..us.us.us.1 = select i1 %.not195.us.us.us.1, i32 %i.hy, i32 %.3173246.us.us.us.1
  %.3168..us.us.us.1 = select i1 %.not195.us.us.us.1, i32 %.pre530, i32 %.3168247.us.us.us.1
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge527, %bb.aj
  %.1176.us.us.us.1 = phi i32 [ 1, %bb.aj ], [ %..us.us.us.1, %._crit_edge527 ]
  %.4174.us.us.us.1 = phi i32 [ %.3173246.us.us.us.1, %bb.aj ], [ %.3173..us.us.us.1, %._crit_edge527 ] ; 4 uses
  %.4169.us.us.us.1 = phi i32 [ %.3168247.us.us.us.1, %bb.aj ], [ %.3168..us.us.us.1, %._crit_edge527 ] ; 4 uses
  %i.ie = add nuw nsw i32 %.sroa.14.0..sroa.14.4.422, 1 ; 2 uses
  %exitcond379.1.not = icmp eq i32 %i.ie, %i.o
  br i1 %exitcond379.1.not, label %._crit_edge250.us.us.us.1, label %bb.ai, !llvm.loop !26

._crit_edge250.us.us.us.1:                        ; preds = %bb.ak
  %i.if = add nuw nsw i32 %i.hv, 1                ; 2 uses
  %i.ig = icmp slt i32 %i.if, %i.n
  br i1 %i.ig, label %.lr.ph249.us.us.us.1, label %._crit_edge257.split.us.us.us.1, !llvm.loop !27

._crit_edge257.split.us.us.us.1:                  ; preds = %._crit_edge250.us.us.us.1
  %i.ih = add nuw nsw i32 %i.ht, 1                ; 2 uses
  %i.ii = icmp slt i32 %i.ih, %.sroa.32.0
  br i1 %i.ii, label %.lr.ph256.us.us.1, label %._crit_edge265.thread572, !llvm.loop !28

._crit_edge265.thread572:                         ; preds = %._crit_edge257.split.us268.1, %._crit_edge257.split.us.us.us.1, %.preheader203
  %.1171.lcssa.1.ph = phi i32 [ %i.d, %.preheader203 ], [ %.4174.us.us.us.1, %._crit_edge257.split.us.us.us.1 ], [ %.1171.lcssa570, %._crit_edge257.split.us268.1 ]
  %.1166.lcssa.1.ph = phi i32 [ undef, %.preheader203 ], [ %.4169.us.us.us.1, %._crit_edge257.split.us.us.us.1 ], [ %.1166.lcssa571, %._crit_edge257.split.us268.1 ]
  %i.ij = icmp sgt i32 %.sroa.0462.0..sroa.0462.0.465, 1
  %i.ik = icmp sgt i32 %.sroa.17.0..sroa.17.4.469, 1
  %or.cond721 = and i1 %i.ij, %i.ik
  br i1 %or.cond721, label %.lr.ph264.split.us.2, label %._crit_edge265.2

.lr.ph264.split.us.2:                             ; preds = %._crit_edge265.thread572
  %i.il = icmp sgt i32 %.sroa.32.0, 0
  br i1 %i.il, label %.lr.ph256.us.us.2, label %._crit_edge257.split.us268.2

._crit_edge257.split.us268.2:                     ; preds = %.lr.ph264.split.us.2, %._crit_edge257.split.us268.2
  %i.im = phi i32 [ %i.in, %._crit_edge257.split.us268.2 ], [ 0, %.lr.ph264.split.us.2 ]
  %i.in = add nuw nsw i32 %i.im, 1                ; 2 uses
  %i.io = icmp slt i32 %i.in, %i.n
  br i1 %i.io, label %._crit_edge257.split.us268.2, label %._crit_edge265.2, !llvm.loop !28

.lr.ph256.us.us.2:                                ; preds = %.lr.ph264.split.us.2, %._crit_edge257.split.us.us.us.2
  %i.ip = phi i32 [ %i.jd, %._crit_edge257.split.us.us.us.2 ], [ 0, %.lr.ph264.split.us.2 ] ; 2 uses
  %.1166262.us.us.2 = phi i32 [ %.4169.us.us.us.2, %._crit_edge257.split.us.us.us.2 ], [ %.1166.lcssa.1.ph, %.lr.ph264.split.us.2 ]
  %.1171261.us.us.2 = phi i32 [ %.4174.us.us.us.2, %._crit_edge257.split.us.us.us.2 ], [ %.1171.lcssa.1.ph, %.lr.ph264.split.us.2 ]
  br label %.lr.ph249.us.us.us.2

.lr.ph249.us.us.us.2:                             ; preds = %._crit_edge250.us.us.us.2, %.lr.ph256.us.us.2
  %i.iq = phi i32 [ 0, %.lr.ph256.us.us.2 ], [ %i.jb, %._crit_edge250.us.us.us.2 ] ; 2 uses
  %.2167254.us.us.us.2 = phi i32 [ %.1166262.us.us.2, %.lr.ph256.us.us.2 ], [ %.4169.us.us.us.2, %._crit_edge250.us.us.us.2 ]
  %.2172253.us.us.us.2 = phi i32 [ %.1171261.us.us.2, %.lr.ph256.us.us.2 ], [ %.4174.us.us.us.2, %._crit_edge250.us.us.us.2 ]
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %.lr.ph249.us.us.us.2
  %.3168247.us.us.us.2 = phi i32 [ %.2167254.us.us.us.2, %.lr.ph249.us.us.us.2 ], [ %.4169.us.us.us.2, %bb.an ] ; 3 uses
  %.3173246.us.us.us.2 = phi i32 [ %.2172253.us.us.us.2, %.lr.ph249.us.us.us.2 ], [ %.4174.us.us.us.2, %bb.an ] ; 3 uses
  %.0175245.us.us.us.2 = phi i32 [ 0, %.lr.ph249.us.us.us.2 ], [ %.1176.us.us.us.2, %bb.an ]
  %.sroa.26.0..sroa.26.8.425 = phi i32 [ 0, %.lr.ph249.us.us.us.2 ], [ %i.ja, %bb.an ] ; 2 uses
  %i.ir = mul nsw i32 %.sroa.26.0..sroa.26.8.425, %i.o
  %i.is = add nsw i32 %i.ir, %i.iq
  %i.it = mul nsw i32 %i.is, %i.n
  %i.iu = add nsw i32 %i.it, %i.ip                ; 2 uses
  %.not194.us.us.us.2 = icmp ne i32 %.0175245.us.us.us.2, 0
  %.phi.trans.insert532 = sext i32 %i.iu to i64
  %.phi.trans.insert533 = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.phi.trans.insert532 ; 2 uses
  %.pre534 = load i32, ptr %.phi.trans.insert533, align 4, !tbaa !4 ; 3 uses
  %i.iv = icmp eq i32 %.pre534, %.3168247.us.us.us.2
  %or.cond621 = select i1 %.not194.us.us.us.2, i1 %i.iv, i1 false
  br i1 %or.cond621, label %bb.am, label %._crit_edge531

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %.phi.trans.insert533, align 4, !tbaa !4
  %i.iw = sext i32 %.3173246.us.us.us.2 to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.iw ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !4
  %i.iz = add nsw i32 %i.iy, %i.r
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !4
  br label %bb.an

._crit_edge531:                                   ; preds = %bb.al
  %.not195.us.us.us.2 = icmp ne i32 %.pre534, 0   ; 3 uses
  %..us.us.us.2 = zext i1 %.not195.us.us.us.2 to i32
  %.3173..us.us.us.2 = select i1 %.not195.us.us.us.2, i32 %i.iu, i32 %.3173246.us.us.us.2
  %.3168..us.us.us.2 = select i1 %.not195.us.us.us.2, i32 %.pre534, i32 %.3168247.us.us.us.2
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge531, %bb.am
  %.1176.us.us.us.2 = phi i32 [ 1, %bb.am ], [ %..us.us.us.2, %._crit_edge531 ]
  %.4174.us.us.us.2 = phi i32 [ %.3173246.us.us.us.2, %bb.am ], [ %.3173..us.us.us.2, %._crit_edge531 ] ; 3 uses
  %.4169.us.us.us.2 = phi i32 [ %.3168247.us.us.us.2, %bb.am ], [ %.3168..us.us.us.2, %._crit_edge531 ] ; 3 uses
  %i.ja = add nuw nsw i32 %.sroa.26.0..sroa.26.8.425, 1 ; 2 uses
  %exitcond379.2.not = icmp eq i32 %i.ja, %.sroa.32.0
  br i1 %exitcond379.2.not, label %._crit_edge250.us.us.us.2, label %bb.al, !llvm.loop !26

._crit_edge250.us.us.us.2:                        ; preds = %bb.an
  %i.jb = add nuw nsw i32 %i.iq, 1                ; 2 uses
  %i.jc = icmp slt i32 %i.jb, %i.o
  br i1 %i.jc, label %.lr.ph249.us.us.us.2, label %._crit_edge257.split.us.us.us.2, !llvm.loop !27

._crit_edge257.split.us.us.us.2:                  ; preds = %._crit_edge250.us.us.us.2
  %i.jd = add nuw nsw i32 %i.ip, 1                ; 2 uses
  %i.je = icmp slt i32 %i.jd, %i.n
  br i1 %i.je, label %.lr.ph256.us.us.2, label %._crit_edge265.2, !llvm.loop !28

._crit_edge265.2:                                 ; preds = %._crit_edge257.split.us.us.us.2, %._crit_edge257.split.us268.2, %.lr.ph264.1, %._crit_edge265.thread572
  %i.jf = icmp sgt i32 %i.q, 0
  br i1 %i.jf, label %.lr.ph278.preheader, label %._crit_edge279

.lr.ph278:                                        ; preds = %.lr.ph278.preheader663, %.lr.ph278
  %indvars.iv384 = phi i64 [ %indvars.iv.next385, %.lr.ph278 ], [ %indvars.iv384.ph, %.lr.ph278.preheader663 ] ; 2 uses
  %.0177277 = phi i32 [ %spec.select200, %.lr.ph278 ], [ %.0177277.ph, %.lr.ph278.preheader663 ]
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv384
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !4
  %.not191 = icmp ne i32 %i.jh, 0
  %i.ji = zext i1 %.not191 to i32
  %spec.select200 = add nuw nsw i32 %.0177277, %i.ji ; 2 uses
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1 ; 2 uses
  %exitcond388.not = icmp eq i64 %indvars.iv.next385, %wide.trip.count387
  br i1 %exitcond388.not, label %._crit_edge279, label %.lr.ph278, !llvm.loop !31

._crit_edge279:                                   ; preds = %.lr.ph278, %middle.block660, %._crit_edge265.2
  %.0177.lcssa = phi i32 [ 0, %._crit_edge265.2 ], [ %i.gp, %middle.block660 ], [ %spec.select200, %.lr.ph278 ]
  %i.jj = tail call i32 @hypre_BoxArraySetSize(ptr noundef %0, i32 noundef %.0177.lcssa) #6 ; 0 uses
  %i.jk = icmp sgt i32 %.sroa.32.0, 0
  %i.jl = icmp sgt i32 %.sroa.17.0..sroa.17.4.469, 1
  %or.cond622 = and i1 %i.jk, %i.jl
  %i.jm = icmp sgt i32 %.sroa.0462.0..sroa.0462.0.465, 1
  %or.cond623 = and i1 %or.cond622, %i.jm
  br i1 %or.cond623, label %.preheader201.us.preheader, label %._crit_edge300.split

.preheader201.us.preheader:                       ; preds = %._crit_edge279
  %wide.trip.count406 = zext nneg i32 %.sroa.32.0 to i64
  %wide.trip.count401 = zext nneg i32 %i.o to i64
  %wide.trip.count396 = zext nneg i32 %i.n to i64
  br label %.preheader201.us

.preheader201.us:                                 ; preds = %.preheader201.us.preheader, %._crit_edge291.split.us.us
  %indvars.iv403 = phi i64 [ 0, %.preheader201.us.preheader ], [ %indvars.iv.next404, %._crit_edge291.split.us.us ] ; 3 uses
  %.2179297.us = phi i32 [ 0, %.preheader201.us.preheader ], [ %.5.us.us, %._crit_edge291.split.us.us ]
  %.1183296.us = phi i64 [ 0, %.preheader201.us.preheader ], [ %indvars.iv.next392.a, %._crit_edge291.split.us.us ]
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv403
  %i.jo = trunc nuw nsw i64 %indvars.iv403 to i32
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge285.us.us, %.preheader201.us
  %indvars.iv398 = phi i64 [ %indvars.iv.next399, %._crit_edge285.us.us ], [ 0, %.preheader201.us ] ; 3 uses
  %.3180289.us.us = phi i32 [ %.5.us.us, %._crit_edge285.us.us ], [ %.2179297.us, %.preheader201.us ]
  %.2184288.us.us = phi i64 [ %indvars.iv.next392.a, %._crit_edge285.us.us ], [ %.1183296.us, %.preheader201.us ]
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv398
  %i.jq = trunc nuw nsw i64 %indvars.iv398 to i32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %.preheader.us.us
  %indvars.iv391.a = phi i64 [ %indvars.iv.next392.a, %bb.aq ], [ %.2184288.us.us, %.preheader.us.us ] ; 2 uses
  %indvars.iv389 = phi i64 [ %indvars.iv.next390, %bb.aq ], [ 0, %.preheader.us.us ] ; 3 uses
  %.4181282.us.us = phi i32 [ %.5.us.us, %bb.aq ], [ %.3180289.us.us, %.preheader.us.us ] ; 3 uses
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv391.a
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !4  ; 4 uses
  %.not.us.us = icmp eq i32 %i.js, 0
  br i1 %.not.us.us, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jt = srem i32 %i.js, %.sroa.0462.0..sroa.0462.0.465
  %i.ju = srem i32 %i.js, %i.r
  %i.jv = sdiv i32 %i.ju, %.sroa.0462.0..sroa.0462.0.465
  %i.jw = sdiv i32 %i.js, %i.r
  %i.jx = load ptr, ptr %0, align 8, !tbaa !8
  %i.jy = sext i32 %.4181282.us.us to i64
  %i.jz = getelementptr inbounds [24 x i8], ptr %i.jx, i64 %i.jy ; 6 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv389
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !4
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !4
  %i.kc = load i32, ptr %i.jp, align 4, !tbaa !4
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !4
  %i.ke = load i32, ptr %i.jn, align 4, !tbaa !4
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !4
  %i.kg = trunc nuw nsw i64 %indvars.iv389 to i32
  %i.kh = add nsw i32 %i.jt, %i.kg
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !4
  %i.kl = add nsw i32 %i.kk, -1
  %i.km = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !4
  %i.kn = add nsw i32 %i.jv, %i.jq
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !4
  %i.kr = add nsw i32 %i.kq, -1
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !4
  %i.kt = add nsw i32 %i.jw, %i.jo
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ku
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !4
  %i.kx = add nsw i32 %i.kw, -1
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jz, i64 20
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !4
  %i.kz = add nsw i32 %.4181282.us.us, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.5.us.us = phi i32 [ %i.kz, %bb.ap ], [ %.4181282.us.us, %bb.ao ] ; 3 uses
  %indvars.iv.next392.a = add nsw i64 %indvars.iv391.a, 1 ; 3 uses
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389, 1 ; 2 uses
  %exitcond397.not = icmp eq i64 %indvars.iv.next390, %wide.trip.count396
  br i1 %exitcond397.not, label %._crit_edge285.us.us, label %bb.ao, !llvm.loop !32

._crit_edge285.us.us:                             ; preds = %bb.aq
  %indvars.iv.next399 = add nuw nsw i64 %indvars.iv398, 1 ; 2 uses
  %exitcond402.not = icmp eq i64 %indvars.iv.next399, %wide.trip.count401
  br i1 %exitcond402.not, label %._crit_edge291.split.us.us, label %.preheader.us.us, !llvm.loop !33

._crit_edge291.split.us.us:                       ; preds = %._crit_edge285.us.us
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %exitcond407.not = icmp eq i64 %indvars.iv.next404, %wide.trip.count406
  br i1 %exitcond407.not, label %._crit_edge300.split, label %.preheader201.us, !llvm.loop !34

._crit_edge300.split:                             ; preds = %._crit_edge291.split.us.us, %._crit_edge279
  tail call void @hypre_Free(ptr noundef %i.f) #6
  tail call void @hypre_Free(ptr noundef %i.s) #6
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

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
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14, !19, !20}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !14, !20, !19}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14, !19, !20}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = distinct !{!31, !14, !20, !19}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
end_hunk_1
