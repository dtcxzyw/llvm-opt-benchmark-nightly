loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@hypre_SubtractBoxes:bb.a
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
  %i.n = add nsw i32 %.sroa.0485.0..sroa.0485.0.488, -1 ; 13 uses
  %i.o = add nsw i32 %.sroa.17.0..sroa.17.4.492, -1 ; 9 uses
  %i.p = mul nsw i32 %i.o, %i.n                   ; 2 uses
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
  %i.ag = sext i32 %.sroa.0485.0..sroa.0485.0.486537 to i64 ; 4 uses
  %i.ah = sext i32 %.0151214 to i64               ; 2 uses
  %i.ai = sub nsw i64 %i.ag, %i.ah                ; 3 uses
  %min.iters.check728 = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check728, label %scalar.ph727.preheader, label %vector.ph729

vector.ph729:                                     ; preds = %.lr.ph221
  %n.vec731 = and i64 %i.ai, -8                   ; 3 uses
  %i.aj = sub nsw i64 %i.ag, %n.vec731
  br label %vector.body732

vector.body732:                                   ; preds = %vector.body732, %vector.ph729
  %index733 = phi i64 [ 0, %vector.ph729 ], [ %index.next736, %vector.body732 ] ; 2 uses
  %i.ak = sub i64 %i.ag, %index733
  %i.al = getelementptr [4 x i8], ptr %i.f, i64 %i.ak ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 -16
  %i.an = getelementptr i8, ptr %i.al, i64 -32
  %wide.load734 = load <4 x i32>, ptr %i.am, align 4, !tbaa !4
  %wide.load735 = load <4 x i32>, ptr %i.an, align 4, !tbaa !4
  %i.ao = getelementptr i8, ptr %i.al, i64 -12
  %i.ap = getelementptr i8, ptr %i.al, i64 -28
  store <4 x i32> %wide.load734, ptr %i.ao, align 4, !tbaa !4
  store <4 x i32> %wide.load735, ptr %i.ap, align 4, !tbaa !4
  %index.next736 = add nuw i64 %index733, 8       ; 2 uses
  %i.aq = icmp eq i64 %index.next736, %n.vec731
  br i1 %i.aq, label %middle.block737, label %vector.body732, !llvm.loop !15

middle.block737:                                  ; preds = %vector.body732
  %cmp.n738 = icmp eq i64 %i.ai, %n.vec731
  br i1 %cmp.n738, label %._crit_edge, label %scalar.ph727.preheader

scalar.ph727.preheader:                           ; preds = %.lr.ph221, %middle.block737
  %indvars.iv316.ph = phi i64 [ %i.ag, %.lr.ph221 ], [ %i.aj, %middle.block737 ]
  br label %scalar.ph727

scalar.ph727:                                     ; preds = %scalar.ph727.preheader, %scalar.ph727
  %indvars.iv316 = phi i64 [ %indvars.iv.next317, %scalar.ph727 ], [ %indvars.iv316.ph, %scalar.ph727.preheader ] ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv316 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !4
  %indvars.iv.next317 = add nsw i64 %indvars.iv316, -1 ; 2 uses
  %i.au = icmp sgt i64 %indvars.iv.next317, %i.ah
  br i1 %i.au, label %scalar.ph727, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %scalar.ph727, %middle.block737, %.critedge
  %i.av = zext nneg i32 %.0151214 to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.av
  store i32 %i.x, ptr %i.aw, align 4, !tbaa !4
  %i.ax = add nsw i32 %.sroa.0485.0..sroa.0485.0.486537, 1
  br label %.preheader206.1

.preheader206.1:                                  ; preds = %bb.c, %._crit_edge
  %.sroa.0485.0..sroa.0485.0.486 = phi i32 [ %.sroa.0485.0..sroa.0485.0.486537, %bb.c ], [ %i.ax, %._crit_edge ] ; 7 uses
  %i.ay = icmp sgt i32 %.sroa.0485.0..sroa.0485.0.486, 0
  br i1 %i.ay, label %.lr.ph.1, label %.critedge.1

.lr.ph.1:                                         ; preds = %.preheader206.1
  %wide.trip.count.1 = zext nneg i32 %.sroa.0485.0..sroa.0485.0.486 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.1
  %indvars.iv.1 = phi i64 [ 0, %.lr.ph.1 ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.1
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4  ; 2 uses
  %.not198.1.not = icmp slt i32 %i.y, %i.ba
  br i1 %.not198.1.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = trunc nuw nsw i64 %indvars.iv.1 to i32
  %i.bc = icmp eq i32 %i.z, %i.ba
  br i1 %i.bc, label %.preheader206.1332, label %.critedge.1

bb.g:                                             ; preds = %bb.e
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.1
  br i1 %exitcond.1.not, label %.critedge.1, label %bb.e, !llvm.loop !13

.critedge.1:                                      ; preds = %bb.g, %bb.f, %.preheader206.1
  %.0151214.1 = phi i32 [ %i.bb, %bb.f ], [ 0, %.preheader206.1 ], [ %.sroa.0485.0..sroa.0485.0.486, %bb.g ] ; 3 uses
  %i.bd = icmp sgt i32 %.sroa.0485.0..sroa.0485.0.486, %.0151214.1
  br i1 %i.bd, label %.lr.ph221.1, label %._crit_edge.1

.lr.ph221.1:                                      ; preds = %.critedge.1
  %i.be = sext i32 %.sroa.0485.0..sroa.0485.0.486 to i64 ; 4 uses
  %i.bf = sext i32 %.0151214.1 to i64             ; 2 uses
  %i.bg = sub nsw i64 %i.be, %i.bf                ; 3 uses
  %min.iters.check715 = icmp ult i64 %i.bg, 8
  br i1 %min.iters.check715, label %scalar.ph714.preheader, label %vector.ph716

vector.ph716:                                     ; preds = %.lr.ph221.1
  %n.vec718 = and i64 %i.bg, -8                   ; 3 uses
  %i.bh = sub nsw i64 %i.be, %n.vec718
  br label %vector.body719

vector.body719:                                   ; preds = %vector.body719, %vector.ph716
  %index720 = phi i64 [ 0, %vector.ph716 ], [ %index.next723, %vector.body719 ] ; 2 uses
  %i.bi = sub i64 %i.be, %index720
  %i.bj = getelementptr [4 x i8], ptr %i.f, i64 %i.bi ; 4 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 -16
  %i.bl = getelementptr i8, ptr %i.bj, i64 -32
  %wide.load721 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !4
  %wide.load722 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !4
  %i.bm = getelementptr i8, ptr %i.bj, i64 -12
  %i.bn = getelementptr i8, ptr %i.bj, i64 -28
  store <4 x i32> %wide.load721, ptr %i.bm, align 4, !tbaa !4
  store <4 x i32> %wide.load722, ptr %i.bn, align 4, !tbaa !4
  %index.next723 = add nuw i64 %index720, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next723, %n.vec718
  br i1 %i.bo, label %middle.block724, label %vector.body719, !llvm.loop !19

middle.block724:                                  ; preds = %vector.body719
  %cmp.n725 = icmp eq i64 %i.bg, %n.vec718
  br i1 %cmp.n725, label %._crit_edge.1, label %scalar.ph714.preheader

scalar.ph714.preheader:                           ; preds = %.lr.ph221.1, %middle.block724
  %indvars.iv316.1.ph = phi i64 [ %i.be, %.lr.ph221.1 ], [ %i.bh, %middle.block724 ]
  br label %scalar.ph714

scalar.ph714:                                     ; preds = %scalar.ph714.preheader, %scalar.ph714
  %indvars.iv316.1 = phi i64 [ %indvars.iv.next317.1, %scalar.ph714 ], [ %indvars.iv316.1.ph, %scalar.ph714.preheader ] ; 2 uses
  %i.bp = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv316.1 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 -4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !4
  %indvars.iv.next317.1 = add nsw i64 %indvars.iv316.1, -1 ; 2 uses
  %i.bs = icmp sgt i64 %indvars.iv.next317.1, %i.bf
  br i1 %i.bs, label %scalar.ph714, label %._crit_edge.1, !llvm.loop !20

._crit_edge.1:                                    ; preds = %scalar.ph714, %middle.block724, %.critedge.1
  %i.bt = zext nneg i32 %.0151214.1 to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bt
  store i32 %i.z, ptr %i.bu, align 4, !tbaa !4
  %i.bv = add nsw i32 %.sroa.0485.0..sroa.0485.0.486, 1
  br label %.preheader206.1332

.preheader206.1332:                               ; preds = %._crit_edge.1, %bb.f
  %.sroa.0485.0..sroa.0485.0.486538 = phi i32 [ %i.bv, %._crit_edge.1 ], [ %.sroa.0485.0..sroa.0485.0.486, %bb.f ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4  ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4  ; 2 uses
  %i.ca = add nsw i32 %i.bz, 1                    ; 2 uses
  %i.cb = icmp sgt i32 %.sroa.17.0..sroa.17.4.491542, 0
  br i1 %i.cb, label %.lr.ph.1334, label %.critedge.1343

.lr.ph.1334:                                      ; preds = %.preheader206.1332
  %wide.trip.count.1333 = zext nneg i32 %.sroa.17.0..sroa.17.4.491542 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.1334
  %indvars.iv.1335 = phi i64 [ 0, %.lr.ph.1334 ], [ %indvars.iv.next.1339, %bb.j ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.1335
end_hunk_0
begin_hunk_1_@hypre_UnionBoxes:bb.a
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
  %i.jh = add nuw nsw i32 %i.jg, 1                ; 2 uses
  %i.ji = icmp slt i32 %i.jh, %.sroa.32.0
  br i1 %i.ji, label %.lr.ph256.us.1, label %._crit_edge265.thread595, !llvm.loop !40

.lr.ph256.us.us.1:                                ; preds = %.lr.ph264.split.us.1, %._crit_edge257.split.us.us.us.1
  %i.jj = phi i32 [ %i.jx, %._crit_edge257.split.us.us.us.1 ], [ 0, %.lr.ph264.split.us.1 ] ; 2 uses
  %.1166262.us.us.1 = phi i32 [ %.4169.us.us.us.1, %._crit_edge257.split.us.us.us.1 ], [ %.1166.lcssa594, %.lr.ph264.split.us.1 ]
  %.1171261.us.us.1 = phi i32 [ %.4174.us.us.us.1, %._crit_edge257.split.us.us.us.1 ], [ %.1171.lcssa593, %.lr.ph264.split.us.1 ]
  %i.jk = mul nsw i32 %i.jj, %i.o
  br label %.lr.ph249.us.us.us.1

.lr.ph249.us.us.us.1:                             ; preds = %._crit_edge250.us.us.us.1, %.lr.ph256.us.us.1
  %i.jl = phi i32 [ 0, %.lr.ph256.us.us.1 ], [ %i.jv, %._crit_edge250.us.us.us.1 ] ; 2 uses
  %.2167254.us.us.us.1 = phi i32 [ %.1166262.us.us.1, %.lr.ph256.us.us.1 ], [ %.4169.us.us.us.1, %._crit_edge250.us.us.us.1 ]
  %.2172253.us.us.us.1 = phi i32 [ %.1171261.us.us.1, %.lr.ph256.us.us.1 ], [ %.4174.us.us.us.1, %._crit_edge250.us.us.us.1 ]
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph249.us.us.us.1
  %.3168247.us.us.us.1 = phi i32 [ %.2167254.us.us.us.1, %.lr.ph249.us.us.us.1 ], [ %.4169.us.us.us.1, %bb.ak ] ; 3 uses
  %.3173246.us.us.us.1 = phi i32 [ %.2172253.us.us.us.1, %.lr.ph249.us.us.us.1 ], [ %.4174.us.us.us.1, %bb.ak ] ; 3 uses
  %.0175245.us.us.us.1 = phi i32 [ 0, %.lr.ph249.us.us.us.1 ], [ %.1176.us.us.us.1, %bb.ak ]
  %.sroa.14.0..sroa.14.4.445 = phi i32 [ 0, %.lr.ph249.us.us.us.1 ], [ %i.ju, %bb.ak ] ; 2 uses
  %i.jm = add nsw i32 %i.jk, %.sroa.14.0..sroa.14.4.445
  %i.jn = mul nsw i32 %i.jm, %i.n
  %i.jo = add nsw i32 %i.jn, %i.jl                ; 2 uses
  %.not194.us.us.us.1 = icmp ne i32 %.0175245.us.us.us.1, 0
  %.phi.trans.insert551 = sext i32 %i.jo to i64
  %.phi.trans.insert552 = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.phi.trans.insert551 ; 2 uses
  %.pre553 = load i32, ptr %.phi.trans.insert552, align 4, !tbaa !4 ; 3 uses
  %i.jp = icmp eq i32 %.pre553, %.3168247.us.us.us.1
  %or.cond643 = select i1 %.not194.us.us.us.1, i1 %i.jp, i1 false
  br i1 %or.cond643, label %bb.aj, label %._crit_edge550

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %.phi.trans.insert552, align 4, !tbaa !4
  %i.jq = sext i32 %.3173246.us.us.us.1 to i64
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.jq ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !4
  %i.jt = add nsw i32 %i.js, %.sroa.0485.0..sroa.0485.0.488
  store i32 %i.jt, ptr %i.jr, align 4, !tbaa !4
  br label %bb.ak

._crit_edge550:                                   ; preds = %bb.ai
  %.not195.us.us.us.1 = icmp ne i32 %.pre553, 0   ; 3 uses
  %..us.us.us.1 = zext i1 %.not195.us.us.us.1 to i32
  %.3173..us.us.us.1 = select i1 %.not195.us.us.us.1, i32 %i.jo, i32 %.3173246.us.us.us.1
  %.3168..us.us.us.1 = select i1 %.not195.us.us.us.1, i32 %.pre553, i32 %.3168247.us.us.us.1
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge550, %bb.aj
  %.1176.us.us.us.1 = phi i32 [ 1, %bb.aj ], [ %..us.us.us.1, %._crit_edge550 ]
  %.4174.us.us.us.1 = phi i32 [ %.3173246.us.us.us.1, %bb.aj ], [ %.3173..us.us.us.1, %._crit_edge550 ] ; 4 uses
  %.4169.us.us.us.1 = phi i32 [ %.3168247.us.us.us.1, %bb.aj ], [ %.3168..us.us.us.1, %._crit_edge550 ] ; 4 uses
  %i.ju = add nuw nsw i32 %.sroa.14.0..sroa.14.4.445, 1 ; 2 uses
  %exitcond402.1.not = icmp eq i32 %i.ju, %i.o
  br i1 %exitcond402.1.not, label %._crit_edge250.us.us.us.1, label %bb.ai, !llvm.loop !38

._crit_edge250.us.us.us.1:                        ; preds = %bb.ak
  %i.jv = add nuw nsw i32 %i.jl, 1                ; 2 uses
  %i.jw = icmp slt i32 %i.jv, %i.n
  br i1 %i.jw, label %.lr.ph249.us.us.us.1, label %._crit_edge257.split.us.us.us.1, !llvm.loop !39

._crit_edge257.split.us.us.us.1:                  ; preds = %._crit_edge250.us.us.us.1
  %i.jx = add nuw nsw i32 %i.jj, 1                ; 2 uses
  %i.jy = icmp slt i32 %i.jx, %.sroa.32.0
  br i1 %i.jy, label %.lr.ph256.us.us.1, label %._crit_edge265.thread595, !llvm.loop !40

._crit_edge265.thread595:                         ; preds = %._crit_edge257.split.us268.1, %._crit_edge257.split.us.us.us.1, %.preheader203
  %.1171.lcssa.1.ph = phi i32 [ %i.d, %.preheader203 ], [ %.4174.us.us.us.1, %._crit_edge257.split.us.us.us.1 ], [ %.1171.lcssa593, %._crit_edge257.split.us268.1 ]
  %.1166.lcssa.1.ph = phi i32 [ undef, %.preheader203 ], [ %.4169.us.us.us.1, %._crit_edge257.split.us.us.us.1 ], [ %.1166.lcssa594, %._crit_edge257.split.us268.1 ]
  %i.jz = icmp sgt i32 %.sroa.0485.0..sroa.0485.0.488, 1
  %i.ka = icmp sgt i32 %.sroa.17.0..sroa.17.4.492, 1
  %or.cond823 = and i1 %i.jz, %i.ka
  br i1 %or.cond823, label %.lr.ph264.split.us.2, label %._crit_edge265.2

.lr.ph264.split.us.2:                             ; preds = %._crit_edge265.thread595
  %i.kb = icmp sgt i32 %.sroa.32.0, 0
  br i1 %i.kb, label %.lr.ph256.us.us.2, label %._crit_edge257.split.us268.2

._crit_edge257.split.us268.2:                     ; preds = %.lr.ph264.split.us.2, %._crit_edge257.split.us268.2
  %i.kc = phi i32 [ %i.kd, %._crit_edge257.split.us268.2 ], [ 0, %.lr.ph264.split.us.2 ]
  %i.kd = add nuw nsw i32 %i.kc, 1                ; 2 uses
  %i.ke = icmp slt i32 %i.kd, %i.n
  br i1 %i.ke, label %._crit_edge257.split.us268.2, label %._crit_edge265.2, !llvm.loop !40

.lr.ph256.us.us.2:                                ; preds = %.lr.ph264.split.us.2, %._crit_edge257.split.us.us.us.2
  %i.kf = phi i32 [ %i.kt, %._crit_edge257.split.us.us.us.2 ], [ 0, %.lr.ph264.split.us.2 ] ; 2 uses
  %.1166262.us.us.2 = phi i32 [ %.4169.us.us.us.2, %._crit_edge257.split.us.us.us.2 ], [ %.1166.lcssa.1.ph, %.lr.ph264.split.us.2 ]
  %.1171261.us.us.2 = phi i32 [ %.4174.us.us.us.2, %._crit_edge257.split.us.us.us.2 ], [ %.1171.lcssa.1.ph, %.lr.ph264.split.us.2 ]
  br label %.lr.ph249.us.us.us.2

.lr.ph249.us.us.us.2:                             ; preds = %._crit_edge250.us.us.us.2, %.lr.ph256.us.us.2
  %i.kg = phi i32 [ 0, %.lr.ph256.us.us.2 ], [ %i.kr, %._crit_edge250.us.us.us.2 ] ; 2 uses
  %.2167254.us.us.us.2 = phi i32 [ %.1166262.us.us.2, %.lr.ph256.us.us.2 ], [ %.4169.us.us.us.2, %._crit_edge250.us.us.us.2 ]
  %.2172253.us.us.us.2 = phi i32 [ %.1171261.us.us.2, %.lr.ph256.us.us.2 ], [ %.4174.us.us.us.2, %._crit_edge250.us.us.us.2 ]
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %.lr.ph249.us.us.us.2
  %.3168247.us.us.us.2 = phi i32 [ %.2167254.us.us.us.2, %.lr.ph249.us.us.us.2 ], [ %.4169.us.us.us.2, %bb.an ] ; 3 uses
  %.3173246.us.us.us.2 = phi i32 [ %.2172253.us.us.us.2, %.lr.ph249.us.us.us.2 ], [ %.4174.us.us.us.2, %bb.an ] ; 3 uses
  %.0175245.us.us.us.2 = phi i32 [ 0, %.lr.ph249.us.us.us.2 ], [ %.1176.us.us.us.2, %bb.an ]
  %.sroa.26.0..sroa.26.8.448 = phi i32 [ 0, %.lr.ph249.us.us.us.2 ], [ %i.kq, %bb.an ] ; 2 uses
  %i.kh = mul nsw i32 %.sroa.26.0..sroa.26.8.448, %i.o
  %i.ki = add nsw i32 %i.kh, %i.kg
  %i.kj = mul nsw i32 %i.ki, %i.n
  %i.kk = add nsw i32 %i.kj, %i.kf                ; 2 uses
  %.not194.us.us.us.2 = icmp ne i32 %.0175245.us.us.us.2, 0
  %.phi.trans.insert555 = sext i32 %i.kk to i64
  %.phi.trans.insert556 = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.phi.trans.insert555 ; 2 uses
  %.pre557 = load i32, ptr %.phi.trans.insert556, align 4, !tbaa !4 ; 3 uses
  %i.kl = icmp eq i32 %.pre557, %.3168247.us.us.us.2
  %or.cond644 = select i1 %.not194.us.us.us.2, i1 %i.kl, i1 false
  br i1 %or.cond644, label %bb.am, label %._crit_edge554

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %.phi.trans.insert556, align 4, !tbaa !4
  %i.km = sext i32 %.3173246.us.us.us.2 to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.km ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !4
  %i.kp = add nsw i32 %i.ko, %i.r
  store i32 %i.kp, ptr %i.kn, align 4, !tbaa !4
  br label %bb.an

._crit_edge554:                                   ; preds = %bb.al
  %.not195.us.us.us.2 = icmp ne i32 %.pre557, 0   ; 3 uses
  %..us.us.us.2 = zext i1 %.not195.us.us.us.2 to i32
  %.3173..us.us.us.2 = select i1 %.not195.us.us.us.2, i32 %i.kk, i32 %.3173246.us.us.us.2
  %.3168..us.us.us.2 = select i1 %.not195.us.us.us.2, i32 %.pre557, i32 %.3168247.us.us.us.2
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge554, %bb.am
  %.1176.us.us.us.2 = phi i32 [ 1, %bb.am ], [ %..us.us.us.2, %._crit_edge554 ]
  %.4174.us.us.us.2 = phi i32 [ %.3173246.us.us.us.2, %bb.am ], [ %.3173..us.us.us.2, %._crit_edge554 ] ; 3 uses
  %.4169.us.us.us.2 = phi i32 [ %.3168247.us.us.us.2, %bb.am ], [ %.3168..us.us.us.2, %._crit_edge554 ] ; 3 uses
  %i.kq = add nuw nsw i32 %.sroa.26.0..sroa.26.8.448, 1 ; 2 uses
  %exitcond402.2.not = icmp eq i32 %i.kq, %.sroa.32.0
  br i1 %exitcond402.2.not, label %._crit_edge250.us.us.us.2, label %bb.al, !llvm.loop !38

._crit_edge250.us.us.us.2:                        ; preds = %bb.an
  %i.kr = add nuw nsw i32 %i.kg, 1                ; 2 uses
  %i.ks = icmp slt i32 %i.kr, %i.o
  br i1 %i.ks, label %.lr.ph249.us.us.us.2, label %._crit_edge257.split.us.us.us.2, !llvm.loop !39

._crit_edge257.split.us.us.us.2:                  ; preds = %._crit_edge250.us.us.us.2
  %i.kt = add nuw nsw i32 %i.kf, 1                ; 2 uses
  %i.ku = icmp slt i32 %i.kt, %i.n
  br i1 %i.ku, label %.lr.ph256.us.us.2, label %._crit_edge265.2, !llvm.loop !40

._crit_edge265.2:                                 ; preds = %._crit_edge257.split.us.us.us.2, %._crit_edge257.split.us268.2, %.lr.ph264.1, %._crit_edge265.thread595
  %i.kv = icmp sgt i32 %i.q, 0
  br i1 %i.kv, label %.lr.ph278.preheader, label %._crit_edge279

.lr.ph278:                                        ; preds = %.lr.ph278.preheader765, %.lr.ph278
  %indvars.iv407 = phi i64 [ %indvars.iv.next408, %.lr.ph278 ], [ %indvars.iv407.ph, %.lr.ph278.preheader765 ] ; 2 uses
  %.0177277 = phi i32 [ %spec.select200, %.lr.ph278 ], [ %.0177277.ph, %.lr.ph278.preheader765 ]
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv407
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !4
  %.not191 = icmp ne i32 %i.kx, 0
  %i.ky = zext i1 %.not191 to i32
  %spec.select200 = add nuw nsw i32 %.0177277, %i.ky ; 2 uses
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1 ; 2 uses
  %exitcond411.not = icmp eq i64 %indvars.iv.next408, %wide.trip.count410
  br i1 %exitcond411.not, label %._crit_edge279, label %.lr.ph278, !llvm.loop !43

._crit_edge279:                                   ; preds = %.lr.ph278, %middle.block762, %._crit_edge265.2
  %.0177.lcssa = phi i32 [ 0, %._crit_edge265.2 ], [ %i.if, %middle.block762 ], [ %spec.select200, %.lr.ph278 ]
  %i.kz = tail call i32 @hypre_BoxArraySetSize(ptr noundef %0, i32 noundef %.0177.lcssa) #5 ; 0 uses
  %i.la = icmp sgt i32 %.sroa.32.0, 0
  %i.lb = icmp sgt i32 %.sroa.17.0..sroa.17.4.492, 1
  %or.cond645 = and i1 %i.la, %i.lb
  %i.lc = icmp sgt i32 %.sroa.0485.0..sroa.0485.0.488, 1
  %or.cond646 = and i1 %or.cond645, %i.lc
  br i1 %or.cond646, label %.preheader201.us.preheader, label %._crit_edge300.split

.preheader201.us.preheader:                       ; preds = %._crit_edge279
  %wide.trip.count429 = zext nneg i32 %.sroa.32.0 to i64
  %wide.trip.count424 = zext nneg i32 %i.o to i64
  %wide.trip.count419 = zext nneg i32 %i.n to i64
  br label %.preheader201.us

.preheader201.us:                                 ; preds = %.preheader201.us.preheader, %._crit_edge291.split.us.us
  %indvars.iv426 = phi i64 [ 0, %.preheader201.us.preheader ], [ %indvars.iv.next427, %._crit_edge291.split.us.us ] ; 3 uses
  %.2179297.us.a = phi i32 [ 0, %.preheader201.us.preheader ], [ %indvars.iv.next415, %._crit_edge291.split.us.us ] ; 2 uses
  %.2179297.us = phi i32 [ 0, %.preheader201.us.preheader ], [ %.5.us.us, %._crit_edge291.split.us.us ]
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv426
  %i.le = trunc nuw nsw i64 %indvars.iv426 to i32
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge285.us.us, %.preheader201.us
  %indvars.iv421 = phi i64 [ %indvars.iv.next422, %._crit_edge285.us.us ], [ 0, %.preheader201.us ] ; 3 uses
  %indvars.iv416 = phi i32 [ %indvars.iv.next417, %._crit_edge285.us.us ], [ %.2179297.us.a, %.preheader201.us ] ; 2 uses
  %.3180289.us.us = phi i32 [ %.5.us.us, %._crit_edge285.us.us ], [ %.2179297.us, %.preheader201.us ]
  %1 = sext i32 %indvars.iv416 to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv421
  %i.lg = trunc nuw nsw i64 %indvars.iv421 to i32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %.preheader.us.us
  %indvars.iv414 = phi i64 [ %indvars.iv.next415.a, %bb.aq ], [ %1, %.preheader.us.us ] ; 2 uses
  %indvars.iv412 = phi i64 [ %indvars.iv.next413, %bb.aq ], [ 0, %.preheader.us.us ] ; 3 uses
  %.4181282.us.us = phi i32 [ %.5.us.us, %bb.aq ], [ %.3180289.us.us, %.preheader.us.us ] ; 3 uses
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv414
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !4  ; 4 uses
  %.not.us.us = icmp eq i32 %i.li, 0
  br i1 %.not.us.us, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.lj = srem i32 %i.li, %.sroa.0485.0..sroa.0485.0.488
  %i.lk = srem i32 %i.li, %i.r
  %i.ll = sdiv i32 %i.lk, %.sroa.0485.0..sroa.0485.0.488
  %i.lm = sdiv i32 %i.li, %i.r
  %i.ln = load ptr, ptr %0, align 8, !tbaa !8
  %i.lo = sext i32 %.4181282.us.us to i64
  %i.lp = getelementptr inbounds [24 x i8], ptr %i.ln, i64 %i.lo ; 6 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv412
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !4
  store i32 %i.lr, ptr %i.lp, align 4, !tbaa !4
  %i.ls = load i32, ptr %i.lf, align 4, !tbaa !4
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  store i32 %i.ls, ptr %i.lt, align 4, !tbaa !4
  %i.lu = load i32, ptr %i.ld, align 4, !tbaa !4
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store i32 %i.lu, ptr %i.lv, align 4, !tbaa !4
  %i.lw = trunc nuw nsw i64 %indvars.iv412 to i32
  %i.lx = add nsw i32 %i.lj, %i.lw
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ly
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !4
  %i.mb = add nsw i32 %i.ma, -1
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lp, i64 12
  store i32 %i.mb, ptr %i.mc, align 4, !tbaa !4
  %i.md = add nsw i32 %i.ll, %i.lg
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.me
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !4
  %i.mh = add nsw i32 %i.mg, -1
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store i32 %i.mh, ptr %i.mi, align 4, !tbaa !4
  %i.mj = add nsw i32 %i.lm, %i.le
  %i.mk = sext i32 %i.mj to i64
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !4
  %i.mn = add nsw i32 %i.mm, -1
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lp, i64 20
  store i32 %i.mn, ptr %i.mo, align 4, !tbaa !4
  %i.mp = add nsw i32 %.4181282.us.us, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.5.us.us = phi i32 [ %i.mp, %bb.ap ], [ %.4181282.us.us, %bb.ao ] ; 3 uses
  %indvars.iv.next415.a = add nsw i64 %indvars.iv414, 1
  %indvars.iv.next413 = add nuw nsw i64 %indvars.iv412, 1 ; 2 uses
  %exitcond420.not = icmp eq i64 %indvars.iv.next413, %wide.trip.count419
  br i1 %exitcond420.not, label %._crit_edge285.us.us, label %bb.ao, !llvm.loop !44

._crit_edge285.us.us:                             ; preds = %bb.aq
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 2 uses
  %indvars.iv.next417 = add i32 %indvars.iv416, %i.n
  %exitcond425.not = icmp eq i64 %indvars.iv.next422, %wide.trip.count424
  br i1 %exitcond425.not, label %._crit_edge291.split.us.us, label %.preheader.us.us, !llvm.loop !45

._crit_edge291.split.us.us:                       ; preds = %._crit_edge285.us.us
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1 ; 2 uses
  %indvars.iv.next415 = add i32 %.2179297.us.a, %i.p
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
end_hunk_1
