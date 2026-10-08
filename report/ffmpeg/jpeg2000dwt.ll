Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeg2000dwt?download=true
inline.NumInlined: 22
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 52
begin_hunk_0_@ff_jpeg2000_dwt_init:bb.a
  store i8 %i.a, ptr %i.b, align 8, !tbaa !13
  %i.c = trunc i32 %3 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 321
  store i8 %i.c, ptr %i.d, align 1, !tbaa !14
  %.sroa.0.0.copyload = load i32, ptr %1, align 4, !tbaa !15 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !15 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !15 ; 2 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !15 ; 2 uses
  %i.e = sub nsw i32 %.sroa.7.0.copyload, %.sroa.0.0.copyload
  %i.f = sub nsw i32 %.sroa.15.0.copyload, %.sroa.11.0.copyload
  %. = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.f) ; 3 uses
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.i = zext nneg i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.sroa.15.0 = phi i32 [ %.sroa.15.0.copyload, %.preheader.lr.ph ], [ %i.aa, %.preheader ] ; 2 uses
  %.sroa.11.0 = phi i32 [ %.sroa.11.0.copyload, %.preheader.lr.ph ], [ %i.y, %.preheader ] ; 3 uses
  %.sroa.7.0 = phi i32 [ %.sroa.7.0.copyload, %.preheader.lr.ph ], [ %i.r, %.preheader ] ; 2 uses
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload, %.preheader.lr.ph ], [ %i.p, %.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %i.i, %.preheader.lr.ph ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.next ; 2 uses
  %i.l = sub nsw i32 %.sroa.7.0, %.sroa.0.0
  store i32 %i.l, ptr %i.j, align 4, !tbaa !15
  %i.m = trunc i32 %.sroa.0.0 to i8
  %i.n = and i8 %i.m, 1
  store i8 %i.n, ptr %i.k, align 1, !tbaa !16
  %i.o = add nsw i32 %.sroa.0.0, 1
  %i.p = ashr i32 %i.o, 1
  %i.q = add nsw i32 %.sroa.7.0, 1
  %i.r = ashr i32 %i.q, 1
  %i.s = sub nsw i32 %.sroa.15.0, %.sroa.11.0
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.s, ptr %i.t, align 4, !tbaa !15
  %i.u = trunc i32 %.sroa.11.0 to i8
  %i.v = and i8 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.v, ptr %i.w, align 1, !tbaa !16
  %i.x = add nsw i32 %.sroa.11.0, 1
  %i.y = ashr i32 %i.x, 1
  %i.z = add nsw i32 %.sroa.15.0, 1
  %i.aa = ashr i32 %i.z, 1
  %i.ab = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ab, label %.preheader, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %.preheader, %bb.a
  switch i32 %3, label %bb.f [
    i32 0, label %bb.b
    i32 2, label %bb.c
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge
  %i.ac = add nsw i32 %., 12
  %i.ad = sext i32 %i.ac to i64
  %i.ae = tail call ptr @av_malloc_array(i64 noundef %i.ad, i64 noundef 4) #6 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !18
  %.not50 = icmp eq ptr %i.ae, null
  br i1 %.not50, label %bb.f, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.ag = add nsw i32 %., 12
  %i.ah = sext i32 %i.ag to i64
  %i.ai = tail call ptr @av_malloc_array(i64 noundef %i.ah, i64 noundef 4) #6 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !19
  %.not49 = icmp eq ptr %i.ai, null
  br i1 %.not49, label %bb.f, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.ak = add nsw i32 %., 6
  %i.al = sext i32 %i.ak to i64
  %i.am = tail call ptr @av_malloc_array(i64 noundef %i.al, i64 noundef 4) #6 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %i.am, ptr %i.an, align 8, !tbaa !19
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d, %bb.c, %bb.b, %bb.e
  %.045 = phi i32 [ -12, %bb.d ], [ 0, %bb.e ], [ -12, %bb.c ], [ -12, %bb.b ], [ -1, %._crit_edge ]
  ret i32 %.045
}

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, 1) i32 @ff_dwt_encode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.c = load i8, ptr %i.b, align 8, !tbaa !13    ; 4 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %dwt_encode97_float.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
  switch i8 %i.f, label %dwt_encode97_float.exit [
    i8 0, label %.lr.ph173.i
    i8 2, label %bb.j
    i8 1, label %.lr.ph155.i
  ]

.lr.ph173.i:                                      ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 20 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 56 uses
  %i.k = zext i8 %i.c to i64
  %i.l = add nsw i64 %i.k, -1                     ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  %i.n = load i32, ptr %i.m, align 8, !tbaa !15   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.p = getelementptr i8, ptr %i.h, i64 24       ; 5 uses
  %i.q = sext i32 %i.n to i64                     ; 17 uses
  %scevgep448 = getelementptr i8, ptr %i.h, i64 28
  %scevgep471 = getelementptr i8, ptr %i.h, i64 20
  %scevgep473 = getelementptr i8, ptr %i.h, i64 24
  %scevgep493 = getelementptr i8, ptr %i.h, i64 20
  %scevgep498 = getelementptr i8, ptr %i.h, i64 16
  %scevgep529 = getelementptr i8, ptr %i.h, i64 12
  %scevgep534 = getelementptr i8, ptr %i.h, i64 8
  %scevgep536 = getelementptr i8, ptr %i.h, i64 16
  %i.r = add i64 %i.i, 20
  %i.s = shl nsw i64 %i.q, 2
  %scevgep587 = getelementptr i8, ptr %i.h, i64 24
  %scevgep588 = getelementptr i8, ptr %i.h, i64 28
  %scevgep608 = getelementptr i8, ptr %1, i64 4
  %i.t = shl nsw i64 %i.q, 2
  %scevgep610 = getelementptr i8, ptr %i.h, i64 20
  %scevgep612 = getelementptr i8, ptr %i.h, i64 24
  %scevgep633 = getelementptr i8, ptr %i.h, i64 20
  %scevgep638 = getelementptr i8, ptr %i.h, i64 16
  %scevgep669 = getelementptr i8, ptr %i.h, i64 12
  %scevgep674 = getelementptr i8, ptr %i.h, i64 8
  %scevgep676 = getelementptr i8, ptr %i.h, i64 16
  %i.u = add i64 %i.i, 20
  %i.v = sub i64 %i.u, %i.a
  %i.w = mul nsw i64 %i.q, -4
  %invariant.op814 = add i64 %i.v, -1
  %stride.check617 = icmp slt i32 %i.n, 0
  %ident.check567.not = icmp ne i32 %i.n, 1
  %ident.check468.not = icmp eq i32 %i.n, 1
  %ident.check442.not = icmp eq i32 %i.n, 1
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge170.i, %.lr.ph173.i
  %indvars.iv227.i = phi i64 [ %i.l, %.lr.ph173.i ], [ %indvars.iv.next228.i, %._crit_edge170.i ] ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv227.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !15   ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !15  ; 10 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv227.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !16  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !16  ; 3 uses
  %i.af = zext i8 %i.ae to i32                    ; 5 uses
  %i.ag = zext i8 %i.ac to i64                    ; 12 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ag ; 24 uses
  %i.ai = icmp sgt i32 %i.aa, 0                   ; 2 uses
  br i1 %i.ai, label %.preheader143.lr.ph.i, label %._crit_edge155.i

.preheader143.lr.ph.i:                            ; preds = %bb.c
  %i.aj = zext i8 %i.ac to i32                    ; 5 uses
  %i.ak = icmp sgt i32 %i.y, 0
  %.not.i.i = icmp samesign ugt i32 %i.y, 1
  %i.al = icmp eq i8 %i.ac, 1
  %i.am = add nuw nsw i32 %i.aj, 1
  %i.an = add i32 %i.y, %i.aj                     ; 2 uses
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aq = getelementptr i8, ptr %i.ah, i64 -4
  %i.ar = getelementptr [4 x i8], ptr %i.j, i64 %i.ao ; 8 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.au = getelementptr i8, ptr %i.ah, i64 -8
  %i.av = getelementptr i8, ptr %i.ar, i64 -12
  %i.aw = getelementptr i8, ptr %i.ar, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.ay = getelementptr i8, ptr %i.ah, i64 -12
  %i.az = getelementptr i8, ptr %i.ar, i64 -16
  %i.ba = getelementptr i8, ptr %i.ar, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.bc = getelementptr i8, ptr %i.ah, i64 -16
  %i.bd = getelementptr i8, ptr %i.ar, i64 -20
  %i.be = getelementptr i8, ptr %i.ar, i64 12
  %i.bf = add i32 %i.an, 1
  %i.bg = lshr i32 %i.am, 1                       ; 6 uses
  %i.bh = add nsw i32 %i.bg, -2
  %i.bi = lshr i32 %i.bf, 1                       ; 6 uses
  %.not5356.i.i = icmp sgt i32 %i.bh, %i.bi
  %i.bj = add nuw nsw i64 %i.ag, 1
  %i.bk = lshr i64 %i.bj, 1                       ; 15 uses
  %i.bl = add nsw i64 %i.bk, -2                   ; 3 uses
  %i.bm = trunc nuw nsw i64 %i.bk to i32
  %reass.sub.i = sub nsw i32 %i.bm, %i.bg
  %i.bn = add i32 %reass.sub.i, %i.bi             ; 2 uses
  %i.bo = add i32 %i.bn, 1                        ; 2 uses
  %i.bp = add nsw i32 %i.bg, -1
  %.not5458.i.i = icmp sgt i32 %i.bp, %i.bi
  %i.bq = add nsw i64 %i.bk, -1                   ; 6 uses
  %wide.trip.count.i.i = zext i32 %i.bo to i64    ; 5 uses
  %.not66.i.i = icmp samesign ugt i32 %i.bg, %i.bi
  %wide.trip.count72.i.i = zext i32 %i.bn to i64  ; 7 uses
  %i.br = icmp samesign ult i32 %i.bg, %i.bi
  %i.bs = icmp sgt i32 %i.y, %i.aj
  %i.bt = sub nsw i32 1, %i.aj                    ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.y
  %i.bv = xor i32 %i.aj, -1
  %i.bw = add i32 %i.y, %i.bv                     ; 4 uses
  %i.bx = lshr i32 %i.bw, 1
  %i.by = add nuw i32 %i.bx, 1
  %i.bz = sext i32 %i.bt to i64                   ; 4 uses
  %i.ca = sext i32 %i.y to i64                    ; 3 uses
  %wide.trip.count199.i = zext nneg i32 %i.aa to i64 ; 2 uses
  %wide.trip.count.i = zext i32 %i.y to i64       ; 5 uses
  %wide.trip.count187.i = zext i32 %i.by to i64   ; 5 uses
  %i.cb = sub nsw i64 3, %i.ag
  %smax584 = tail call i64 @llvm.smax.i64(i64 %i.cb, i64 %i.ca)
  %i.cc = add i64 %smax584, -2
  %i.cd = add i64 %i.cc, %i.ag
  %i.ce = lshr i64 %i.cd, 1                       ; 2 uses
  %i.cf = shl i64 %i.ce, 2
  %i.cg = shl i64 %i.ce, 3
  %scevgep589 = getelementptr i8, ptr %scevgep588, i64 %i.cg
  %i.ch = add nsw i64 %wide.trip.count199.i, -1
  %i.ci = mul i64 %i.t, %i.ch
  %i.cj = lshr i32 %i.bw, 1
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = shl nuw nsw i64 %i.ck, 2
  %i.cm = getelementptr i8, ptr %scevgep608, i64 %i.ci
  %scevgep609 = getelementptr i8, ptr %i.cm, i64 %i.cl
  %i.cn = shl nuw nsw i64 %i.ag, 3
  %scevgep611 = getelementptr i8, ptr %scevgep610, i64 %i.cn
  %i.co = add nuw nsw i64 %i.ck, %i.ag
  %i.cp = shl nuw nsw i64 %i.co, 3
  %scevgep613 = getelementptr i8, ptr %scevgep612, i64 %i.cp
  %i.cq = xor i64 %i.bk, -1
  %i.cr = add nsw i64 %i.cq, %wide.trip.count72.i.i ; 2 uses
  %i.cs = shl nuw nsw i64 %i.bk, 3                ; 5 uses
  %scevgep634 = getelementptr i8, ptr %scevgep633, i64 %i.cs ; 2 uses
  %scevgep639 = getelementptr i8, ptr %scevgep638, i64 %i.cs ; 2 uses
  %i.ct = sub nsw i64 %wide.trip.count.i.i, %i.bk ; 2 uses
  %scevgep670 = getelementptr i8, ptr %scevgep669, i64 %i.cs ; 2 uses
  %scevgep675 = getelementptr i8, ptr %scevgep674, i64 %i.cs ; 2 uses
  %scevgep677 = getelementptr i8, ptr %scevgep676, i64 %i.cs ; 2 uses
  %i.cu = shl nuw nsw i64 %i.ag, 2
  %i.cv = lshr i32 %i.bw, 1
  %i.cw = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cx = add nuw nsw i64 %i.cw, 1
  %i.cy = getelementptr i8, ptr %1, i64 %i.cf
  %i.cz = getelementptr i8, ptr %i.cy, i64 4
  %min.iters.check709 = icmp ult i32 %i.y, 8
  %invariant.op810.reass = add i64 %i.cu, %invariant.op814
  %n.vec711 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n718 = icmp eq i64 %n.vec711, %wide.trip.count.i
  %xtraiter778 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod779.not = icmp eq i64 %xtraiter778, 0
  %i.da = add nuw i32 %i.bi, 2
  %i.db = sub i32 %i.da, %i.bg                    ; 2 uses
  %min.iters.check693 = icmp ult i32 %i.db, 4
  %i.dc = zext i32 %i.db to i64
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %i.de = and i64 %i.dd, 3                        ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  %i.dg = select i1 %i.df, i64 4, i64 %i.de
  %n.vec695 = sub nsw i64 %i.dd, %i.dg            ; 2 uses
  %i.dh = add nsw i64 %i.bl, %n.vec695
  %i.di = add nuw nsw i64 %wide.trip.count.i.i, 1
  %i.dj = sub nsw i64 %i.di, %i.bk                ; 3 uses
  %min.iters.check679 = icmp ult i64 %i.dj, 13
  %mul.result672 = shl nsw i64 %i.ct, 3           ; 3 uses
  %mul.overflow673 = icmp ugt i64 %i.ct, 2305843009213693951
  %i.dk = getelementptr i8, ptr %scevgep670, i64 %mul.result672
  %i.dl = icmp ult ptr %i.dk, %scevgep670
  %i.dm = getelementptr i8, ptr %scevgep675, i64 %mul.result672
  %i.dn = icmp ult ptr %i.dm, %scevgep675
  %i.do = getelementptr i8, ptr %scevgep677, i64 %mul.result672
  %i.dp = icmp ult ptr %i.do, %scevgep677
  %i.dq = or i1 %i.dp, %mul.overflow673
  %i.dr = or i1 %i.dn, %i.dl
  %i.ds = or i1 %i.dr, %i.dq
  %i.dt = and i64 %i.dj, 3                        ; 2 uses
  %i.du = icmp eq i64 %i.dt, 0
  %i.dv = select i1 %i.du, i64 4, i64 %i.dt
  %n.vec681 = sub nsw i64 %i.dj, %i.dv            ; 2 uses
  %i.dw = add nsw i64 %i.bq, %n.vec681
  %i.dx = add nsw i64 %wide.trip.count.i.i, -1
  %i.dy = add nuw nsw i64 %wide.trip.count72.i.i, 1
  %i.dz = sub nsw i64 %i.dy, %i.bk                ; 3 uses
  %min.iters.check655 = icmp ult i64 %i.dz, 5
  %i.ea = and i64 %i.dz, 3                        ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 0
  %i.ec = select i1 %i.eb, i64 4, i64 %i.ea
  %n.vec657 = sub nsw i64 %i.dz, %i.ec            ; 2 uses
  %i.ed = add nsw i64 %i.bq, %n.vec657
  %i.ee = sub nsw i64 %wide.trip.count72.i.i, %i.bk ; 3 uses
  %min.iters.check641 = icmp ult i64 %i.ee, 13
  %mul.result636 = shl nsw i64 %i.cr, 3           ; 2 uses
  %mul.overflow637 = icmp ugt i64 %i.cr, 2305843009213693951
  %i.ef = getelementptr i8, ptr %scevgep634, i64 %mul.result636
  %i.eg = icmp ult ptr %i.ef, %scevgep634
  %i.eh = getelementptr i8, ptr %scevgep639, i64 %mul.result636
  %i.ei = icmp ult ptr %i.eh, %scevgep639
  %i.ej = or i1 %i.ei, %mul.overflow637
  %i.ek = or i1 %i.eg, %i.ej
  %i.el = and i64 %i.ee, 3                        ; 2 uses
  %i.em = icmp eq i64 %i.el, 0
  %i.en = select i1 %i.em, i64 4, i64 %i.el
  %n.vec643 = sub nsw i64 %i.ee, %i.en            ; 2 uses
  %i.eo = add nsw i64 %i.bk, %n.vec643
  %i.ep = add nsw i64 %wide.trip.count72.i.i, -1
  %min.iters.check619 = icmp ult i32 %i.bw, 16
  %bound0614 = icmp ult ptr %1, %scevgep613
  %bound1615 = icmp ult ptr %scevgep611, %scevgep609
  %found.conflict616 = and i1 %bound0614, %bound1615
  %i.eq = or i1 %found.conflict616, %stride.check617
  %i.er = and i64 %wide.trip.count187.i, 7        ; 2 uses
  %i.es = icmp eq i64 %i.er, 0
  %i.et = select i1 %i.es, i64 8, i64 %i.er
  %n.vec621 = sub nsw i64 %wide.trip.count187.i, %i.et ; 3 uses
  %i.eu = shl nsw i64 %n.vec621, 1
  %i.ev = add nsw i64 %i.eu, %i.ag
  %i.ew = sub nsw i64 3, %i.ag
  %i.ex = tail call i64 @llvm.smax.i64(i64 %i.ew, i64 %i.ca)
  %i.ey = add i64 %i.ex, %i.ag
  %i.ez = add i64 %i.ey, -2                       ; 2 uses
  %i.fa = lshr i64 %i.ez, 1
  %i.fb = add nuw i64 %i.fa, 1                    ; 2 uses
  %min.iters.check594 = icmp ult i64 %i.ez, 16
  %i.fc = and i64 %i.fb, 7                        ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 0
  %i.fe = select i1 %i.fd, i64 8, i64 %i.fc
  %n.vec596 = sub i64 %i.fb, %i.fe                ; 3 uses
  %i.ff = shl i64 %n.vec596, 1
  %i.fg = add i64 %i.ff, %i.bz
  br label %.preheader143.i

.preheader143.i:                                  ; preds = %._crit_edge153.i, %.preheader143.lr.ph.i
  %indvars.iv196.i = phi i64 [ 0, %.preheader143.lr.ph.i ], [ %indvars.iv.next197.i, %._crit_edge153.i ] ; 6 uses
  %i.fh = mul i64 %i.s, %indvars.iv196.i
  %scevgep585 = getelementptr i8, ptr %i.cz, i64 %i.fh
  br i1 %i.ak, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %.preheader143.i
  %i.fi = mul i64 %i.w, %indvars.iv196.i
  %i.fj = mul nsw i64 %indvars.iv196.i, %i.q
  %invariant.gep.i = getelementptr [4 x i8], ptr %1, i64 %i.fj ; 6 uses
  %.reass811 = add i64 %i.fi, %invariant.op810.reass
  %diff.check707 = icmp ult i64 %.reass811, 31
  %or.cond = select i1 %min.iters.check709, i1 true, i1 %diff.check707
  br i1 %or.cond, label %scalar.ph708.preheader, label %vector.body712

vector.body712:                                   ; preds = %.lr.ph.i, %vector.body712
  %index713 = phi i64 [ %index.next716, %vector.body712 ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.fk = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index713 ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 16
  %wide.load714 = load <4 x float>, ptr %i.fk, align 4, !tbaa !21
  %wide.load715 = load <4 x float>, ptr %i.fl, align 4, !tbaa !21
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index713 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store <4 x float> %wide.load714, ptr %i.fm, align 4, !tbaa !21
  store <4 x float> %wide.load715, ptr %i.fn, align 4, !tbaa !21
  %index.next716 = add nuw i64 %index713, 8       ; 2 uses
  %i.fo = icmp eq i64 %index.next716, %n.vec711
  br i1 %i.fo, label %middle.block717, label %vector.body712, !llvm.loop !26

middle.block717:                                  ; preds = %vector.body712
  br i1 %cmp.n718, label %._crit_edge.i, label %scalar.ph708.preheader

scalar.ph708.preheader:                           ; preds = %.lr.ph.i, %middle.block717
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec711, %middle.block717 ] ; 3 uses
  br i1 %lcmp.mod779.not, label %scalar.ph708.prol.loopexit, label %scalar.ph708.prol

scalar.ph708.prol:                                ; preds = %scalar.ph708.preheader, %scalar.ph708.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph708.prol ], [ %indvars.iv.i.ph, %scalar.ph708.preheader ] ; 3 uses
  %prol.iter780 = phi i64 [ %prol.iter780.next, %scalar.ph708.prol ], [ 0, %scalar.ph708.preheader ]
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  %i.fp = load float, ptr %gep.i.prol, align 4, !tbaa !21
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.prol
  store float %i.fp, ptr %i.fq, align 4, !tbaa !21
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter780.next = add i64 %prol.iter780, 1   ; 2 uses
  %prol.iter780.cmp.not = icmp eq i64 %prol.iter780.next, %xtraiter778
  br i1 %prol.iter780.cmp.not, label %scalar.ph708.prol.loopexit, label %scalar.ph708.prol, !llvm.loop !27

scalar.ph708.prol.loopexit:                       ; preds = %scalar.ph708.prol, %scalar.ph708.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph708.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph708.prol ]
  %i.fr = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.fs = icmp ugt i64 %i.fr, -4
  br i1 %i.fs, label %._crit_edge.i, label %scalar.ph708

scalar.ph708:                                     ; preds = %scalar.ph708.prol.loopexit, %scalar.ph708
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph708 ], [ %indvars.iv.i.unr, %scalar.ph708.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ft = load float, ptr %gep.i, align 4, !tbaa !21
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i
  store float %i.ft, ptr %i.fu, align 4, !tbaa !21
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.fv = load float, ptr %gep.i.1, align 4, !tbaa !21
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i
  store float %i.fv, ptr %i.fw, align 4, !tbaa !21
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  %i.fx = load float, ptr %gep.i.2, align 4, !tbaa !21
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.1
  store float %i.fx, ptr %i.fy, align 4, !tbaa !21
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  %i.fz = load float, ptr %gep.i.3, align 4, !tbaa !21
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.2
  store float %i.fz, ptr %i.ga, align 4, !tbaa !21
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph708, !llvm.loop !28

._crit_edge.i:                                    ; preds = %scalar.ph708.prol.loopexit, %scalar.ph708, %middle.block717
  br i1 %.not.i.i, label %bb.f, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %.preheader143.i
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.thread.i
  %i.gb = load float, ptr %i.p, align 4, !tbaa !21
  %i.gc = fmul nsz float %i.gb, f0x3FD019C3
  store float %i.gc, ptr %i.p, align 4, !tbaa !21
  br label %sd_1d97_float.exit.i

bb.e:                                             ; preds = %._crit_edge.thread.i
  %i.gd = load float, ptr %i.j, align 4, !tbaa !21
  %i.ge = fmul nsz float %i.gd, f0x3F9D7658
  store float %i.ge, ptr %i.j, align 4, !tbaa !21
  br label %sd_1d97_float.exit.i

bb.f:                                             ; preds = %._crit_edge.i
  %i.gf = load float, ptr %i.ap, align 4, !tbaa !21
  store float %i.gf, ptr %i.aq, align 4, !tbaa !21
  %i.gg = load float, ptr %i.as, align 4, !tbaa !21
  store float %i.gg, ptr %i.ar, align 4, !tbaa !21
  %i.gh = load float, ptr %i.at, align 4, !tbaa !21
  store float %i.gh, ptr %i.au, align 4, !tbaa !21
  %i.gi = load float, ptr %i.av, align 4, !tbaa !21
  store float %i.gi, ptr %i.aw, align 4, !tbaa !21
  %i.gj = load float, ptr %i.ax, align 4, !tbaa !21
  store float %i.gj, ptr %i.ay, align 4, !tbaa !21
  %i.gk = load float, ptr %i.az, align 4, !tbaa !21
  store float %i.gk, ptr %i.ba, align 4, !tbaa !21
  %i.gl = load float, ptr %i.bb, align 4, !tbaa !21
  store float %i.gl, ptr %i.bc, align 4, !tbaa !21
  %i.gm = load float, ptr %i.bd, align 4, !tbaa !21
  store float %i.gm, ptr %i.be, align 4, !tbaa !21
  br i1 %.not5356.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  br i1 %min.iters.check693, label %.lr.ph.i.i.preheader744, label %vector.body696

vector.body696:                                   ; preds = %.lr.ph.i.i.preheader, %vector.body696
  %index697 = phi i64 [ %index.next703, %vector.body696 ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.gn = add i64 %i.bl, %index697                ; 3 uses
  %i.go = add i64 %i.bk, %index697
  %i.gp = shl nsw i64 %i.gn, 3
  %i.gq = shl i64 %i.gn, 3
  %i.gr = shl nsw i64 %i.go, 3
  %i.gs = shl i64 %i.gn, 3
  %i.gt = getelementptr inbounds i8, ptr %i.j, i64 %i.gp ; 3 uses
  %i.gu = getelementptr i8, ptr %i.j, i64 %i.gq
  %i.gv = getelementptr inbounds i8, ptr %i.j, i64 %i.gr
  %i.gw = getelementptr i8, ptr %i.j, i64 %i.gs
  %wide.vec698 = load <8 x float>, ptr %i.gt, align 4, !tbaa !21
  %strided.vec699 = shufflevector <8 x float> %wide.vec698, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.gx = getelementptr i8, ptr %i.gt, i64 4
  %wide.vec700 = load <8 x float>, ptr %i.gx, align 4, !tbaa !21 ; 2 uses
  %strided.vec701 = shufflevector <8 x float> %wide.vec700, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec702 = shufflevector <8 x float> %wide.vec700, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gy = fadd nsz <4 x float> %strided.vec699, %strided.vec702
  %i.gz = fpext nsz <4 x float> %i.gy to <4 x double>
  %i.ha = getelementptr i8, ptr %i.gt, i64 4
  %i.hb = getelementptr i8, ptr %i.gu, i64 12
  %i.hc = getelementptr i8, ptr %i.gv, i64 4
  %i.hd = getelementptr i8, ptr %i.gw, i64 28
  %i.he = fpext nsz <4 x float> %strided.vec701 to <4 x double>
  %i.hf = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gz, <4 x double> splat (double f0xBFF960CE0B912DBA), <4 x double> %i.he)
  %i.hg = fptrunc nsz <4 x double> %i.hf to <4 x float> ; 4 uses
  %i.hh = extractelement <4 x float> %i.hg, i64 0
  store float %i.hh, ptr %i.ha, align 4, !tbaa !21
  %i.hi = extractelement <4 x float> %i.hg, i64 1
  store float %i.hi, ptr %i.hb, align 4, !tbaa !21
  %i.hj = extractelement <4 x float> %i.hg, i64 2
  store float %i.hj, ptr %i.hc, align 4, !tbaa !21
  %i.hk = extractelement <4 x float> %i.hg, i64 3
  store float %i.hk, ptr %i.hd, align 4, !tbaa !21
  %index.next703 = add nuw i64 %index697, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next703, %n.vec695
  br i1 %i.hl, label %.lr.ph.i.i.preheader744, label %vector.body696, !llvm.loop !29

.lr.ph.i.i.preheader744:                          ; preds = %vector.body696, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.ph = phi i64 [ %i.bl, %.lr.ph.i.i.preheader ], [ %i.dh, %vector.body696 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader744, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader744 ] ; 2 uses
  %.idx.i.i = shl nsw i64 %indvars.iv.i.i, 3
  %i.hm = getelementptr inbounds i8, ptr %i.j, i64 %.idx.i.i ; 3 uses
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !21
  %i.ho = getelementptr i8, ptr %i.hm, i64 8
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !21
  %i.hq = fadd nsz float %i.hn, %i.hp
  %i.hr = fpext nsz float %i.hq to double
  %i.hs = getelementptr i8, ptr %i.hm, i64 4      ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !21
  %i.hu = fpext nsz float %i.ht to double
  %i.hv = tail call nsz double @llvm.fmuladd.f64(double %i.hr, double f0xBFF960CE0B912DBA, double %i.hu)
  %i.hw = fptrunc nsz double %i.hv to float
  store float %i.hw, ptr %i.hs, align 4, !tbaa !21
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %i.bo, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !30

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.f
  br i1 %.not5458.i.i, label %.preheader55.i.i, label %.lr.ph61.i.i.preheader

.lr.ph61.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %brmerge = select i1 %min.iters.check679, i1 true, i1 %i.ds
  br i1 %brmerge, label %.lr.ph61.i.i.preheader743, label %vector.body682

.lr.ph61.i.i.preheader743:                        ; preds = %.lr.ph61.i.i.preheader, %vector.body682
  %indvars.iv67.i.i.ph = phi i64 [ %i.dw, %vector.body682 ], [ %i.bq, %.lr.ph61.i.i.preheader ] ; 5 uses
  %i.hx = sub i64 %wide.trip.count.i.i, %indvars.iv67.i.i.ph
  %xtraiter781 = and i64 %i.hx, 1
  %lcmp.mod782.not = icmp eq i64 %xtraiter781, 0
  br i1 %lcmp.mod782.not, label %.lr.ph61.i.i.prol.loopexit, label %.lr.ph61.i.i.prol

.lr.ph61.i.i.prol:                                ; preds = %.lr.ph61.i.i.preheader743
  %.idx82.i.i.prol = shl i64 %indvars.iv67.i.i.ph, 3
  %i.hy = getelementptr i8, ptr %i.j, i64 %.idx82.i.i.prol ; 4 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 -4
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !21
  %i.ib = getelementptr i8, ptr %i.hy, i64 4
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !21
  %i.id = fadd nsz float %i.ia, %i.ic
  %i.ie = fpext nsz float %i.id to double
  %i.if = load float, ptr %i.hy, align 4, !tbaa !21
  %i.ig = fpext nsz float %i.if to double
  %i.ih = tail call nsz double @llvm.fmuladd.f64(double %i.ie, double -5.298000e-02, double %i.ig)
  %i.ii = fptrunc nsz double %i.ih to float
  store float %i.ii, ptr %i.hy, align 4, !tbaa !21
  %indvars.iv.next68.i.i.prol = add nsw i64 %indvars.iv67.i.i.ph, 1
  br label %.lr.ph61.i.i.prol.loopexit

.lr.ph61.i.i.prol.loopexit:                       ; preds = %.lr.ph61.i.i.prol, %.lr.ph61.i.i.preheader743
  %indvars.iv67.i.i.unr = phi i64 [ %indvars.iv67.i.i.ph, %.lr.ph61.i.i.preheader743 ], [ %indvars.iv.next68.i.i.prol, %.lr.ph61.i.i.prol ]
  %i.ij = icmp eq i64 %indvars.iv67.i.i.ph, %i.dx
  br i1 %i.ij, label %.preheader55.i.i, label %.lr.ph61.i.i

vector.body682:                                   ; preds = %.lr.ph61.i.i.preheader, %vector.body682
  %index683 = phi i64 [ %index.next689, %vector.body682 ], [ 0, %.lr.ph61.i.i.preheader ] ; 3 uses
  %i.ik = add i64 %i.bq, %index683                ; 3 uses
  %i.il = add i64 %i.bk, %index683
  %i.im = shl i64 %i.ik, 3
  %i.in = shl i64 %i.il, 3
  %i.io = shl i64 %i.ik, 3
  %i.ip = shl i64 %i.ik, 3
  %i.iq = getelementptr i8, ptr %i.j, i64 %i.im   ; 3 uses
  %i.ir = getelementptr i8, ptr %i.j, i64 %i.in
  %i.is = getelementptr i8, ptr %i.j, i64 %i.io
  %i.it = getelementptr i8, ptr %i.is, i64 16
  %i.iu = getelementptr i8, ptr %i.j, i64 %i.ip
  %i.iv = getelementptr i8, ptr %i.iu, i64 24
  %i.iw = getelementptr i8, ptr %i.iq, i64 -4
  %wide.vec684 = load <8 x float>, ptr %i.iw, align 4, !tbaa !21
  %strided.vec685 = shufflevector <8 x float> %wide.vec684, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec686 = load <8 x float>, ptr %i.iq, align 4, !tbaa !21 ; 2 uses
  %strided.vec687 = shufflevector <8 x float> %wide.vec686, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec688 = shufflevector <8 x float> %wide.vec686, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ix = fadd nsz <4 x float> %strided.vec685, %strided.vec688
  %i.iy = fpext nsz <4 x float> %i.ix to <4 x double>
  %i.iz = fpext nsz <4 x float> %strided.vec687 to <4 x double>
  %i.ja = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iy, <4 x double> splat (double -5.298000e-02), <4 x double> %i.iz)
  %i.jb = fptrunc nsz <4 x double> %i.ja to <4 x float> ; 4 uses
  %i.jc = extractelement <4 x float> %i.jb, i64 0
  store float %i.jc, ptr %i.iq, align 4, !tbaa !21
  %i.jd = extractelement <4 x float> %i.jb, i64 1
  store float %i.jd, ptr %i.ir, align 4, !tbaa !21
  %i.je = extractelement <4 x float> %i.jb, i64 2
  store float %i.je, ptr %i.it, align 4, !tbaa !21
  %i.jf = extractelement <4 x float> %i.jb, i64 3
  store float %i.jf, ptr %i.iv, align 4, !tbaa !21
  %index.next689 = add nuw i64 %index683, 4       ; 2 uses
  %i.jg = icmp eq i64 %index.next689, %n.vec681
  br i1 %i.jg, label %.lr.ph61.i.i.preheader743, label %vector.body682, !llvm.loop !31

.preheader55.i.i:                                 ; preds = %.lr.ph61.i.i.prol.loopexit, %.lr.ph61.i.i, %._crit_edge.i.i
  br i1 %.not66.i.i, label %.preheader.i.i, label %.lr.ph63.i.i.preheader

.lr.ph63.i.i.preheader:                           ; preds = %.preheader55.i.i
  br i1 %min.iters.check655, label %.lr.ph63.i.i.preheader742, label %vector.body658

.lr.ph63.i.i.preheader742:                        ; preds = %vector.body658, %.lr.ph63.i.i.preheader
  %indvars.iv70.i.i.ph = phi i64 [ %i.bq, %.lr.ph63.i.i.preheader ], [ %i.ed, %vector.body658 ]
  br label %.lr.ph63.i.i

vector.body658:                                   ; preds = %.lr.ph63.i.i.preheader, %vector.body658
  %index659 = phi i64 [ %index.next665, %vector.body658 ], [ 0, %.lr.ph63.i.i.preheader ] ; 3 uses
  %i.jh = add i64 %i.bq, %index659                ; 3 uses
  %i.ji = add i64 %i.bk, %index659
  %i.jj = shl nsw i64 %i.jh, 3
  %i.jk = shl nsw i64 %i.ji, 3
  %i.jl = shl i64 %i.jh, 3
  %i.jm = shl i64 %i.jh, 3
  %i.jn = getelementptr inbounds i8, ptr %i.j, i64 %i.jj ; 3 uses
  %i.jo = getelementptr inbounds i8, ptr %i.j, i64 %i.jk
  %i.jp = getelementptr i8, ptr %i.j, i64 %i.jl
  %i.jq = getelementptr i8, ptr %i.j, i64 %i.jm
  %wide.vec660 = load <8 x float>, ptr %i.jn, align 4, !tbaa !21
  %strided.vec661 = shufflevector <8 x float> %wide.vec660, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.jr = getelementptr i8, ptr %i.jn, i64 4
  %wide.vec662 = load <8 x float>, ptr %i.jr, align 4, !tbaa !21 ; 2 uses
  %strided.vec663 = shufflevector <8 x float> %wide.vec662, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec664 = shufflevector <8 x float> %wide.vec662, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.js = fadd nsz <4 x float> %strided.vec661, %strided.vec664
  %i.jt = fpext nsz <4 x float> %i.js to <4 x double>
  %i.ju = getelementptr i8, ptr %i.jn, i64 4
  %i.jv = getelementptr i8, ptr %i.jo, i64 4
  %i.jw = getelementptr i8, ptr %i.jp, i64 20
  %i.jx = getelementptr i8, ptr %i.jq, i64 28
  %i.jy = fpext nsz <4 x float> %strided.vec663 to <4 x double>
  %i.jz = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jt, <4 x double> splat (double 8.829110e-01), <4 x double> %i.jy)
  %i.ka = fptrunc nsz <4 x double> %i.jz to <4 x float> ; 4 uses
  %i.kb = extractelement <4 x float> %i.ka, i64 0
  store float %i.kb, ptr %i.ju, align 4, !tbaa !21
  %i.kc = extractelement <4 x float> %i.ka, i64 1
  store float %i.kc, ptr %i.jv, align 4, !tbaa !21
  %i.kd = extractelement <4 x float> %i.ka, i64 2
  store float %i.kd, ptr %i.jw, align 4, !tbaa !21
  %i.ke = extractelement <4 x float> %i.ka, i64 3
  store float %i.ke, ptr %i.jx, align 4, !tbaa !21
  %index.next665 = add nuw i64 %index659, 4       ; 2 uses
  %i.kf = icmp eq i64 %index.next665, %n.vec657
  br i1 %i.kf, label %.lr.ph63.i.i.preheader742, label %vector.body658, !llvm.loop !32

.lr.ph61.i.i:                                     ; preds = %.lr.ph61.i.i.prol.loopexit, %.lr.ph61.i.i
  %indvars.iv67.i.i = phi i64 [ %indvars.iv.next68.i.i.1, %.lr.ph61.i.i ], [ %indvars.iv67.i.i.unr, %.lr.ph61.i.i.prol.loopexit ] ; 3 uses
  %.idx82.i.i = shl i64 %indvars.iv67.i.i, 3
  %i.kg = getelementptr i8, ptr %i.j, i64 %.idx82.i.i ; 4 uses
  %i.kh = getelementptr i8, ptr %i.kg, i64 -4
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !21
  %i.kj = getelementptr i8, ptr %i.kg, i64 4
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !21 ; 2 uses
  %i.kl = fadd nsz float %i.ki, %i.kk
  %i.km = fpext nsz float %i.kl to double
  %i.kn = load float, ptr %i.kg, align 4, !tbaa !21
  %i.ko = fpext nsz float %i.kn to double
  %i.kp = tail call nsz double @llvm.fmuladd.f64(double %i.km, double -5.298000e-02, double %i.ko)
  %i.kq = fptrunc nsz double %i.kp to float
  store float %i.kq, ptr %i.kg, align 4, !tbaa !21
  %indvars.iv.next68.i.i = shl i64 %indvars.iv67.i.i, 3
  %i.kr = getelementptr i8, ptr %i.j, i64 %indvars.iv.next68.i.i ; 2 uses
  %i.ks = getelementptr i8, ptr %i.kr, i64 8      ; 2 uses
  %i.kt = getelementptr i8, ptr %i.kr, i64 12
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !21
  %i.kv = fadd nsz float %i.kk, %i.ku
  %i.kw = fpext nsz float %i.kv to double
  %i.kx = load float, ptr %i.ks, align 4, !tbaa !21
  %i.ky = fpext nsz float %i.kx to double
  %i.kz = tail call nsz double @llvm.fmuladd.f64(double %i.kw, double -5.298000e-02, double %i.ky)
  %i.la = fptrunc nsz double %i.kz to float
  store float %i.la, ptr %i.ks, align 4, !tbaa !21
  %indvars.iv.next68.i.i.1 = add nsw i64 %indvars.iv67.i.i, 2 ; 2 uses
  %exitcond69.not.i.i.1 = icmp eq i64 %indvars.iv.next68.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond69.not.i.i.1, label %.preheader55.i.i, label %.lr.ph61.i.i, !llvm.loop !33

.preheader.i.i:                                   ; preds = %.lr.ph63.i.i, %.preheader55.i.i
  br i1 %i.br, label %.lr.ph65.i.i.preheader, label %sd_1d97_float.exit.i

.lr.ph65.i.i.preheader:                           ; preds = %.preheader.i.i
  %brmerge815 = select i1 %min.iters.check641, i1 true, i1 %i.ek
  br i1 %brmerge815, label %.lr.ph65.i.i.preheader741, label %vector.body644

.lr.ph65.i.i.preheader741:                        ; preds = %.lr.ph65.i.i.preheader, %vector.body644
  %indvars.iv74.i.i.ph = phi i64 [ %i.eo, %vector.body644 ], [ %i.bk, %.lr.ph65.i.i.preheader ] ; 5 uses
  %i.lb = sub i64 %wide.trip.count72.i.i, %indvars.iv74.i.i.ph
  %xtraiter784 = and i64 %i.lb, 1
  %lcmp.mod785.not = icmp eq i64 %xtraiter784, 0
  br i1 %lcmp.mod785.not, label %.lr.ph65.i.i.prol.loopexit, label %.lr.ph65.i.i.prol

.lr.ph65.i.i.prol:                                ; preds = %.lr.ph65.i.i.preheader741
  %.idx84.i.i.prol = shl i64 %indvars.iv74.i.i.ph, 3
  %i.lc = getelementptr i8, ptr %i.j, i64 %.idx84.i.i.prol ; 4 uses
  %i.ld = getelementptr i8, ptr %i.lc, i64 -4
  %i.le = load float, ptr %i.ld, align 4, !tbaa !21
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !21
  %i.lh = fadd nsz float %i.le, %i.lg
  %i.li = fpext nsz float %i.lh to double
  %i.lj = load float, ptr %i.lc, align 4, !tbaa !21
  %i.lk = fpext nsz float %i.lj to double
  %i.ll = tail call nsz double @llvm.fmuladd.f64(double %i.li, double 4.435060e-01, double %i.lk)
  %i.lm = fptrunc nsz double %i.ll to float
  store float %i.lm, ptr %i.lc, align 4, !tbaa !21
  %indvars.iv.next75.i.i.prol = add nuw nsw i64 %indvars.iv74.i.i.ph, 1
  br label %.lr.ph65.i.i.prol.loopexit

.lr.ph65.i.i.prol.loopexit:                       ; preds = %.lr.ph65.i.i.prol, %.lr.ph65.i.i.preheader741
  %indvars.iv74.i.i.unr = phi i64 [ %indvars.iv74.i.i.ph, %.lr.ph65.i.i.preheader741 ], [ %indvars.iv.next75.i.i.prol, %.lr.ph65.i.i.prol ]
  %i.ln = icmp eq i64 %indvars.iv74.i.i.ph, %i.ep
  br i1 %i.ln, label %sd_1d97_float.exit.i, label %.lr.ph65.i.i

vector.body644:                                   ; preds = %.lr.ph65.i.i.preheader, %vector.body644
  %index645 = phi i64 [ %index.next651, %vector.body644 ], [ 0, %.lr.ph65.i.i.preheader ] ; 2 uses
  %i.lo = add nuw i64 %i.bk, %index645            ; 4 uses
  %i.lp = shl i64 %i.lo, 3
  %i.lq = shl i64 %i.lo, 3
  %i.lr = shl i64 %i.lo, 3
  %i.ls = shl i64 %i.lo, 3
  %i.lt = getelementptr i8, ptr %i.j, i64 %i.lp   ; 3 uses
  %i.lu = getelementptr i8, ptr %i.j, i64 %i.lq
  %i.lv = getelementptr i8, ptr %i.lu, i64 8
  %i.lw = getelementptr i8, ptr %i.j, i64 %i.lr
  %i.lx = getelementptr i8, ptr %i.lw, i64 16
  %i.ly = getelementptr i8, ptr %i.j, i64 %i.ls
  %i.lz = getelementptr i8, ptr %i.ly, i64 24
  %i.ma = getelementptr i8, ptr %i.lt, i64 -4
  %wide.vec646 = load <8 x float>, ptr %i.ma, align 4, !tbaa !21
  %strided.vec647 = shufflevector <8 x float> %wide.vec646, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec648 = load <8 x float>, ptr %i.lt, align 4, !tbaa !21 ; 2 uses
  %strided.vec649 = shufflevector <8 x float> %wide.vec648, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec650 = shufflevector <8 x float> %wide.vec648, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.mb = fadd nsz <4 x float> %strided.vec647, %strided.vec650
  %i.mc = fpext nsz <4 x float> %i.mb to <4 x double>
  %i.md = fpext nsz <4 x float> %strided.vec649 to <4 x double>
  %i.me = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mc, <4 x double> splat (double 4.435060e-01), <4 x double> %i.md)
  %i.mf = fptrunc nsz <4 x double> %i.me to <4 x float> ; 4 uses
  %i.mg = extractelement <4 x float> %i.mf, i64 0
  store float %i.mg, ptr %i.lt, align 4, !tbaa !21
  %i.mh = extractelement <4 x float> %i.mf, i64 1
  store float %i.mh, ptr %i.lv, align 4, !tbaa !21
  %i.mi = extractelement <4 x float> %i.mf, i64 2
  store float %i.mi, ptr %i.lx, align 4, !tbaa !21
  %i.mj = extractelement <4 x float> %i.mf, i64 3
  store float %i.mj, ptr %i.lz, align 4, !tbaa !21
  %index.next651 = add nuw i64 %index645, 4       ; 2 uses
  %i.mk = icmp eq i64 %index.next651, %n.vec643
  br i1 %i.mk, label %.lr.ph65.i.i.preheader741, label %vector.body644, !llvm.loop !34

.lr.ph63.i.i:                                     ; preds = %.lr.ph63.i.i.preheader742, %.lr.ph63.i.i
  %indvars.iv70.i.i = phi i64 [ %indvars.iv.next71.i.i, %.lr.ph63.i.i ], [ %indvars.iv70.i.i.ph, %.lr.ph63.i.i.preheader742 ] ; 2 uses
  %.idx83.i.i = shl nsw i64 %indvars.iv70.i.i, 3
  %i.ml = getelementptr inbounds i8, ptr %i.j, i64 %.idx83.i.i ; 3 uses
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !21
  %i.mn = getelementptr i8, ptr %i.ml, i64 8
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !21
  %i.mp = fadd nsz float %i.mm, %i.mo
  %i.mq = fpext nsz float %i.mp to double
  %i.mr = getelementptr i8, ptr %i.ml, i64 4      ; 2 uses
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !21
  %i.mt = fpext nsz float %i.ms to double
  %i.mu = tail call nsz double @llvm.fmuladd.f64(double %i.mq, double 8.829110e-01, double %i.mt)
  %i.mv = fptrunc nsz double %i.mu to float
  store float %i.mv, ptr %i.mr, align 4, !tbaa !21
  %indvars.iv.next71.i.i = add nsw i64 %indvars.iv70.i.i, 1 ; 2 uses
  %exitcond73.not.i.i = icmp eq i64 %indvars.iv.next71.i.i, %wide.trip.count72.i.i
  br i1 %exitcond73.not.i.i, label %.preheader.i.i, label %.lr.ph63.i.i, !llvm.loop !35

.lr.ph65.i.i:                                     ; preds = %.lr.ph65.i.i.prol.loopexit, %.lr.ph65.i.i
  %indvars.iv74.i.i = phi i64 [ %indvars.iv.next75.i.i.1, %.lr.ph65.i.i ], [ %indvars.iv74.i.i.unr, %.lr.ph65.i.i.prol.loopexit ] ; 3 uses
  %.idx84.i.i = shl i64 %indvars.iv74.i.i, 3
  %i.mw = getelementptr i8, ptr %i.j, i64 %.idx84.i.i ; 4 uses
  %i.mx = getelementptr i8, ptr %i.mw, i64 -4
  %i.my = load float, ptr %i.mx, align 4, !tbaa !21
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  %i.na = load float, ptr %i.mz, align 4, !tbaa !21 ; 2 uses
  %i.nb = fadd nsz float %i.my, %i.na
  %i.nc = fpext nsz float %i.nb to double
  %i.nd = load float, ptr %i.mw, align 4, !tbaa !21
  %i.ne = fpext nsz float %i.nd to double
  %i.nf = tail call nsz double @llvm.fmuladd.f64(double %i.nc, double 4.435060e-01, double %i.ne)
  %i.ng = fptrunc nsz double %i.nf to float
  store float %i.ng, ptr %i.mw, align 4, !tbaa !21
  %indvars.iv.next75.i.i = shl i64 %indvars.iv74.i.i, 3
  %i.nh = getelementptr i8, ptr %i.j, i64 %indvars.iv.next75.i.i ; 2 uses
  %i.ni = getelementptr i8, ptr %i.nh, i64 8      ; 2 uses
  %i.nj = getelementptr i8, ptr %i.nh, i64 12
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !21
  %i.nl = fadd nsz float %i.na, %i.nk
  %i.nm = fpext nsz float %i.nl to double
  %i.nn = load float, ptr %i.ni, align 4, !tbaa !21
  %i.no = fpext nsz float %i.nn to double
  %i.np = tail call nsz double @llvm.fmuladd.f64(double %i.nm, double 4.435060e-01, double %i.no)
  %i.nq = fptrunc nsz double %i.np to float
  store float %i.nq, ptr %i.ni, align 4, !tbaa !21
  %indvars.iv.next75.i.i.1 = add nuw nsw i64 %indvars.iv74.i.i, 2 ; 2 uses
  %exitcond77.not.i.i.1 = icmp eq i64 %indvars.iv.next75.i.i.1, %wide.trip.count72.i.i
  br i1 %exitcond77.not.i.i.1, label %sd_1d97_float.exit.i, label %.lr.ph65.i.i, !llvm.loop !36

sd_1d97_float.exit.i:                             ; preds = %.lr.ph65.i.i.prol.loopexit, %.lr.ph65.i.i, %.preheader.i.i, %bb.e, %bb.d
  br i1 %i.bs, label %.lr.ph147.i, label %._crit_edge148.i

.lr.ph147.i:                                      ; preds = %sd_1d97_float.exit.i
  %i.nr = mul nsw i64 %indvars.iv196.i, %i.q
  %invariant.gep233.i = getelementptr [4 x i8], ptr %1, i64 %i.nr ; 6 uses
  %brmerge816 = select i1 %min.iters.check619, i1 true, i1 %i.eq
  br i1 %brmerge816, label %scalar.ph618.preheader, label %vector.body622

vector.body622:                                   ; preds = %.lr.ph147.i, %vector.body622
  %index623 = phi i64 [ %index.next628, %vector.body622 ], [ 0, %.lr.ph147.i ] ; 3 uses
  %i.ns = shl nuw i64 %index623, 1
  %i.nt = add nuw i64 %i.ns, %i.ag                ; 2 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.nt
  %i.nv = getelementptr [4 x i8], ptr %i.ah, i64 %i.nt
  %i.nw = getelementptr i8, ptr %i.nv, i64 32
  %wide.vec624 = load <8 x float>, ptr %i.nu, align 4, !tbaa !21, !alias.scope !147
  %strided.vec625 = shufflevector <8 x float> %wide.vec624, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec626 = load <8 x float>, ptr %i.nw, align 4, !tbaa !21, !alias.scope !147
  %strided.vec627 = shufflevector <8 x float> %wide.vec626, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nx = getelementptr [4 x i8], ptr %invariant.gep233.i, i64 %index623 ; 2 uses
  %i.ny = getelementptr i8, ptr %i.nx, i64 16
  store <4 x float> %strided.vec625, ptr %i.nx, align 4, !tbaa !21, !alias.scope !148, !noalias !147
  store <4 x float> %strided.vec627, ptr %i.ny, align 4, !tbaa !21, !alias.scope !148, !noalias !147
  %index.next628 = add nuw i64 %index623, 8       ; 2 uses
  %i.nz = icmp eq i64 %index.next628, %n.vec621
  br i1 %i.nz, label %scalar.ph618.preheader, label %vector.body622, !llvm.loop !40

scalar.ph618.preheader:                           ; preds = %vector.body622, %.lr.ph147.i
  %indvars.iv182.i.ph = phi i64 [ %i.ag, %.lr.ph147.i ], [ %i.ev, %vector.body622 ] ; 2 uses
  %indvars.iv180.i.ph = phi i64 [ 0, %.lr.ph147.i ], [ %n.vec621, %vector.body622 ] ; 4 uses
  %i.oa = sub nsw i64 %i.cx, %indvars.iv180.i.ph
  %i.ob = sub nsw i64 %i.cw, %indvars.iv180.i.ph
  %xtraiter787 = and i64 %i.oa, 3                 ; 2 uses
  %lcmp.mod788.not = icmp eq i64 %xtraiter787, 0
  br i1 %lcmp.mod788.not, label %scalar.ph618.prol.loopexit, label %scalar.ph618.prol

scalar.ph618.prol:                                ; preds = %scalar.ph618.preheader, %scalar.ph618.prol
  %indvars.iv182.i.prol = phi i64 [ %indvars.iv.next183.i.prol, %scalar.ph618.prol ], [ %indvars.iv182.i.ph, %scalar.ph618.preheader ] ; 2 uses
  %indvars.iv180.i.prol = phi i64 [ %indvars.iv.next181.i.prol, %scalar.ph618.prol ], [ %indvars.iv180.i.ph, %scalar.ph618.preheader ] ; 2 uses
  %prol.iter789 = phi i64 [ %prol.iter789.next, %scalar.ph618.prol ], [ 0, %scalar.ph618.preheader ]
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv182.i.prol
  %i.od = load float, ptr %i.oc, align 4, !tbaa !21
  %gep234.i.prol = getelementptr [4 x i8], ptr %invariant.gep233.i, i64 %indvars.iv180.i.prol
  store float %i.od, ptr %gep234.i.prol, align 4, !tbaa !21
  %indvars.iv.next183.i.prol = add nuw nsw i64 %indvars.iv182.i.prol, 2 ; 2 uses
  %indvars.iv.next181.i.prol = add nuw nsw i64 %indvars.iv180.i.prol, 1 ; 2 uses
  %prol.iter789.next = add i64 %prol.iter789, 1   ; 2 uses
  %prol.iter789.cmp.not = icmp eq i64 %prol.iter789.next, %xtraiter787
  br i1 %prol.iter789.cmp.not, label %scalar.ph618.prol.loopexit, label %scalar.ph618.prol, !llvm.loop !41

scalar.ph618.prol.loopexit:                       ; preds = %scalar.ph618.prol, %scalar.ph618.preheader
  %indvars.iv182.i.unr = phi i64 [ %indvars.iv182.i.ph, %scalar.ph618.preheader ], [ %indvars.iv.next183.i.prol, %scalar.ph618.prol ]
  %indvars.iv180.i.unr = phi i64 [ %indvars.iv180.i.ph, %scalar.ph618.preheader ], [ %indvars.iv.next181.i.prol, %scalar.ph618.prol ]
  %i.oe = icmp ult i64 %i.ob, 3
  br i1 %i.oe, label %._crit_edge148.i, label %scalar.ph618

scalar.ph618:                                     ; preds = %scalar.ph618.prol.loopexit, %scalar.ph618
  %indvars.iv182.i = phi i64 [ %indvars.iv.next183.i.3, %scalar.ph618 ], [ %indvars.iv182.i.unr, %scalar.ph618.prol.loopexit ] ; 5 uses
  %indvars.iv180.i = phi i64 [ %indvars.iv.next181.i.3, %scalar.ph618 ], [ %indvars.iv180.i.unr, %scalar.ph618.prol.loopexit ] ; 5 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv182.i
  %i.og = load float, ptr %i.of, align 4, !tbaa !21
  %gep234.i = getelementptr [4 x i8], ptr %invariant.gep233.i, i64 %indvars.iv180.i
  store float %i.og, ptr %gep234.i, align 4, !tbaa !21
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv182.i
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !21
  %i.ok = getelementptr [4 x i8], ptr %invariant.gep233.i, i64 %indvars.iv180.i
  %gep234.i.1 = getelementptr i8, ptr %i.ok, i64 4
  store float %i.oj, ptr %gep234.i.1, align 4, !tbaa !21
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv182.i
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.on = load float, ptr %i.om, align 4, !tbaa !21
  %i.oo = getelementptr [4 x i8], ptr %invariant.gep233.i, i64 %indvars.iv180.i
  %gep234.i.2 = getelementptr i8, ptr %i.oo, i64 8
  store float %i.on, ptr %gep234.i.2, align 4, !tbaa !21
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv182.i
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.or = load float, ptr %i.oq, align 4, !tbaa !21
  %i.os = getelementptr [4 x i8], ptr %invariant.gep233.i, i64 %indvars.iv180.i
  %gep234.i.3 = getelementptr i8, ptr %i.os, i64 12
  store float %i.or, ptr %gep234.i.3, align 4, !tbaa !21
  %indvars.iv.next183.i.3 = add nuw nsw i64 %indvars.iv182.i, 8
  %indvars.iv.next181.i.3 = add nuw nsw i64 %indvars.iv180.i, 4 ; 2 uses
  %exitcond188.not.i.3 = icmp eq i64 %indvars.iv.next181.i.3, %wide.trip.count187.i
  br i1 %exitcond188.not.i.3, label %._crit_edge148.i, label %scalar.ph618, !llvm.loop !42

._crit_edge148.i:                                 ; preds = %scalar.ph618.prol.loopexit, %scalar.ph618, %sd_1d97_float.exit.i
  %.096.lcssa.i = phi i64 [ 0, %sd_1d97_float.exit.i ], [ %wide.trip.count187.i, %scalar.ph618 ], [ %wide.trip.count187.i, %scalar.ph618.prol.loopexit ] ; 5 uses
  br i1 %i.bu, label %.lr.ph152.i, label %._crit_edge153.i

.lr.ph152.i:                                      ; preds = %._crit_edge148.i
  %i.ot = mul nsw i64 %indvars.iv196.i, %i.q
  %invariant.gep235.i = getelementptr [4 x i8], ptr %1, i64 %i.ot ; 3 uses
  br i1 %min.iters.check594, label %scalar.ph593.preheader, label %vector.memcheck582

vector.memcheck582:                               ; preds = %.lr.ph152.i
  %i.ou = shl nuw nsw i64 %.096.lcssa.i, 2        ; 2 uses
  %scevgep583 = getelementptr i8, ptr %invariant.gep235.i, i64 %i.ou
  %scevgep586 = getelementptr i8, ptr %scevgep585, i64 %i.ou
  %bound0590 = icmp ult ptr %scevgep583, %scevgep589
  %bound1591 = icmp ult ptr %scevgep587, %scevgep586
  %found.conflict592 = and i1 %bound0590, %bound1591
  br i1 %found.conflict592, label %scalar.ph593.preheader, label %vector.ph595

vector.ph595:                                     ; preds = %vector.memcheck582
  %i.ov = add i64 %.096.lcssa.i, %n.vec596
  %i.ow = getelementptr [4 x i8], ptr %invariant.gep235.i, i64 %.096.lcssa.i
  br label %vector.body597

vector.body597:                                   ; preds = %vector.body597, %vector.ph595
  %index598 = phi i64 [ 0, %vector.ph595 ], [ %index.next603, %vector.body597 ] ; 3 uses
  %i.ox = shl i64 %index598, 1
  %i.oy = add i64 %i.ox, %i.bz                    ; 2 uses
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.oy
  %i.pa = getelementptr [4 x i8], ptr %i.ah, i64 %i.oy
  %i.pb = getelementptr i8, ptr %i.pa, i64 32
  %wide.vec599 = load <8 x float>, ptr %i.oz, align 4, !tbaa !21, !alias.scope !149
  %strided.vec600 = shufflevector <8 x float> %wide.vec599, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec601 = load <8 x float>, ptr %i.pb, align 4, !tbaa !21, !alias.scope !149
  %strided.vec602 = shufflevector <8 x float> %wide.vec601, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pc = getelementptr [4 x i8], ptr %i.ow, i64 %index598 ; 2 uses
  %i.pd = getelementptr i8, ptr %i.pc, i64 16
  store <4 x float> %strided.vec600, ptr %i.pc, align 4, !tbaa !21, !alias.scope !150, !noalias !149
  store <4 x float> %strided.vec602, ptr %i.pd, align 4, !tbaa !21, !alias.scope !150, !noalias !149
  %index.next603 = add nuw i64 %index598, 8       ; 2 uses
  %i.pe = icmp eq i64 %index.next603, %n.vec596
  br i1 %i.pe, label %scalar.ph593.preheader, label %vector.body597, !llvm.loop !46

scalar.ph593.preheader:                           ; preds = %vector.body597, %vector.memcheck582, %.lr.ph152.i
  %indvars.iv191.i.ph = phi i64 [ %i.bz, %vector.memcheck582 ], [ %i.bz, %.lr.ph152.i ], [ %i.fg, %vector.body597 ]
  %indvars.iv189.i.ph = phi i64 [ %.096.lcssa.i, %vector.memcheck582 ], [ %.096.lcssa.i, %.lr.ph152.i ], [ %i.ov, %vector.body597 ]
  br label %scalar.ph593

scalar.ph593:                                     ; preds = %scalar.ph593.preheader, %scalar.ph593
  %indvars.iv191.i = phi i64 [ %indvars.iv.next192.i, %scalar.ph593 ], [ %indvars.iv191.i.ph, %scalar.ph593.preheader ] ; 2 uses
  %indvars.iv189.i = phi i64 [ %indvars.iv.next190.i, %scalar.ph593 ], [ %indvars.iv189.i.ph, %scalar.ph593.preheader ] ; 2 uses
  %i.pf = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv191.i
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !21
  %gep236.i = getelementptr [4 x i8], ptr %invariant.gep235.i, i64 %indvars.iv189.i
  store float %i.pg, ptr %gep236.i, align 4, !tbaa !21
  %indvars.iv.next192.i = add nsw i64 %indvars.iv191.i, 2 ; 2 uses
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1
  %i.ph = icmp slt i64 %indvars.iv.next192.i, %i.ca
  br i1 %i.ph, label %scalar.ph593, label %._crit_edge153.i, !llvm.loop !47

._crit_edge153.i:                                 ; preds = %scalar.ph593, %._crit_edge148.i
  %indvars.iv.next197.i = add nuw nsw i64 %indvars.iv196.i, 1 ; 2 uses
  %exitcond200.not.i = icmp eq i64 %indvars.iv.next197.i, %wide.trip.count199.i
  br i1 %exitcond200.not.i, label %._crit_edge155.i, label %.preheader143.i, !llvm.loop !48

._crit_edge155.i:                                 ; preds = %._crit_edge153.i, %bb.c
  %i.pi = zext i8 %i.ae to i64                    ; 12 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.pi ; 24 uses
  %i.pk = icmp sgt i32 %i.y, 0
  br i1 %i.pk, label %.preheader.lr.ph.i, label %._crit_edge170.i

.preheader.lr.ph.i:                               ; preds = %._crit_edge155.i
  %.not.i106.i = icmp samesign ugt i32 %i.aa, 1
  %i.pl = icmp eq i8 %i.ae, 1
  %i.pm = add nuw nsw i32 %i.af, 1
  %i.pn = add i32 %i.aa, %i.af                    ; 2 uses
  %i.po = zext nneg i32 %i.pn to i64
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pj, i64 4
  %i.pq = getelementptr i8, ptr %i.pj, i64 -4
  %i.pr = getelementptr [4 x i8], ptr %i.j, i64 %i.po ; 8 uses
  %i.ps = getelementptr i8, ptr %i.pr, i64 -8
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %i.pu = getelementptr i8, ptr %i.pj, i64 -8
  %i.pv = getelementptr i8, ptr %i.pr, i64 -12
  %i.pw = getelementptr i8, ptr %i.pr, i64 4
  %i.px = getelementptr inbounds nuw i8, ptr %i.pj, i64 12
  %i.py = getelementptr i8, ptr %i.pj, i64 -12
  %i.pz = getelementptr i8, ptr %i.pr, i64 -16
  %i.qa = getelementptr i8, ptr %i.pr, i64 8
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.qc = getelementptr i8, ptr %i.pj, i64 -16
  %i.qd = getelementptr i8, ptr %i.pr, i64 -20
  %i.qe = getelementptr i8, ptr %i.pr, i64 12
  %i.qf = add i32 %i.pn, 1
  %i.qg = lshr i32 %i.pm, 1                       ; 6 uses
  %i.qh = add nsw i32 %i.qg, -2
  %i.qi = lshr i32 %i.qf, 1                       ; 6 uses
  %.not5356.i107.i = icmp sgt i32 %i.qh, %i.qi
  %i.qj = add nuw nsw i64 %i.pi, 1
  %i.qk = lshr i64 %i.qj, 1                       ; 15 uses
  %i.ql = add nsw i64 %i.qk, -2                   ; 3 uses
  %i.qm = trunc nuw nsw i64 %i.qk to i32
  %reass.sub176.i = sub nsw i32 %i.qm, %i.qg
  %i.qn = add i32 %reass.sub176.i, %i.qi          ; 2 uses
  %i.qo = add i32 %i.qn, 1                        ; 2 uses
  %i.qp = add nsw i32 %i.qg, -1
  %.not5458.i116.i = icmp sgt i32 %i.qp, %i.qi
  %i.qq = add nsw i64 %i.qk, -1                   ; 6 uses
  %wide.trip.count.i118.i = zext i32 %i.qo to i64 ; 5 uses
  %.not66.i125.i = icmp samesign ugt i32 %i.qg, %i.qi
  %wide.trip.count72.i127.i = zext i32 %i.qn to i64 ; 7 uses
  %i.qr = icmp samesign ult i32 %i.qg, %i.qi
  %i.qs = icmp sgt i32 %i.aa, %i.af
  %i.qt = sub nsw i32 1, %i.af                    ; 2 uses
  %i.qu = icmp slt i32 %i.qt, %i.aa
  %i.qv = xor i32 %i.af, -1
  %i.qw = add i32 %i.aa, %i.qv                    ; 4 uses
  %i.qx = lshr i32 %i.qw, 1
  %i.qy = add nuw i32 %i.qx, 1
  %i.qz = sext i32 %i.qt to i64                   ; 4 uses
  %i.ra = sext i32 %i.aa to i64                   ; 3 uses
  %wide.trip.count225.i = zext nneg i32 %i.y to i64 ; 2 uses
  %wide.trip.count204.i = zext i32 %i.aa to i64   ; 5 uses
  %wide.trip.count213.i = zext i32 %i.qy to i64   ; 5 uses
  %i.rb = sub nsw i64 3, %i.pi
  %smax445 = tail call i64 @llvm.smax.i64(i64 %i.rb, i64 %i.ra)
  %i.rc = add i64 %smax445, -2
  %i.rd = add i64 %i.rc, %i.pi
  %i.re = lshr i64 %i.rd, 1                       ; 2 uses
  %i.rf = shl i64 %i.re, 3
  %scevgep449 = getelementptr i8, ptr %scevgep448, i64 %i.rf
  %i.rg = lshr i32 %i.qw, 1
  %i.rh = zext nneg i32 %i.rg to i64              ; 2 uses
  %i.ri = add nuw nsw i64 %i.rh, %wide.trip.count225.i
  %i.rj = shl nuw nsw i64 %i.ri, 2
  %scevgep470 = getelementptr i8, ptr %1, i64 %i.rj
  %i.rk = shl nuw nsw i64 %i.pi, 3
  %scevgep472 = getelementptr i8, ptr %scevgep471, i64 %i.rk
  %i.rl = add nuw nsw i64 %i.rh, %i.pi
  %i.rm = shl nuw nsw i64 %i.rl, 3
  %scevgep474 = getelementptr i8, ptr %scevgep473, i64 %i.rm
  %i.rn = xor i64 %i.qk, -1
  %i.ro = add nsw i64 %i.rn, %wide.trip.count72.i127.i ; 2 uses
  %i.rp = shl nuw nsw i64 %i.qk, 3                ; 5 uses
  %scevgep494 = getelementptr i8, ptr %scevgep493, i64 %i.rp ; 2 uses
  %scevgep499 = getelementptr i8, ptr %scevgep498, i64 %i.rp ; 2 uses
  %i.rq = sub nsw i64 %wide.trip.count.i118.i, %i.qk ; 2 uses
  %scevgep530 = getelementptr i8, ptr %scevgep529, i64 %i.rp ; 2 uses
  %scevgep535 = getelementptr i8, ptr %scevgep534, i64 %i.rp ; 2 uses
  %scevgep537 = getelementptr i8, ptr %scevgep536, i64 %i.rp ; 2 uses
  %i.rr = shl nuw nsw i64 %i.pi, 2
  %i.rs = lshr i32 %i.qw, 1
  %i.rt = zext nneg i32 %i.rs to i64              ; 2 uses
  %i.ru = add nuw nsw i64 %i.rt, 1
  %i.rv = add i64 %i.r, %i.rr
  %min.iters.check571 = icmp ult i32 %i.aa, 8
  %or.cond720.not736 = select i1 %min.iters.check571, i1 true, i1 %ident.check567.not
  %invariant.op812 = sub i64 %i.a, %i.rv
  %n.vec573 = and i64 %wide.trip.count204.i, 2147483640 ; 3 uses
  %cmp.n580 = icmp eq i64 %n.vec573, %wide.trip.count204.i
  %xtraiter790 = and i64 %wide.trip.count204.i, 3 ; 2 uses
  %lcmp.mod791.not = icmp eq i64 %xtraiter790, 0
  %i.rw = add nuw i32 %i.qi, 2
  %i.rx = sub i32 %i.rw, %i.qg                    ; 2 uses
  %min.iters.check553 = icmp ult i32 %i.rx, 4
  %i.ry = zext i32 %i.rx to i64
  %i.rz = add nuw nsw i64 %i.ry, 1                ; 2 uses
  %i.sa = and i64 %i.rz, 3                        ; 2 uses
  %i.sb = icmp eq i64 %i.sa, 0
  %i.sc = select i1 %i.sb, i64 4, i64 %i.sa
  %n.vec555 = sub nsw i64 %i.rz, %i.sc            ; 2 uses
  %i.sd = add nsw i64 %i.ql, %n.vec555
  %i.se = add nuw nsw i64 %wide.trip.count.i118.i, 1
  %i.sf = sub nsw i64 %i.se, %i.qk                ; 3 uses
  %min.iters.check539 = icmp ult i64 %i.sf, 13
  %mul.result532 = shl nsw i64 %i.rq, 3           ; 3 uses
  %mul.overflow533 = icmp ugt i64 %i.rq, 2305843009213693951
  %i.sg = getelementptr i8, ptr %scevgep530, i64 %mul.result532
  %i.sh = icmp ult ptr %i.sg, %scevgep530
  %i.si = getelementptr i8, ptr %scevgep535, i64 %mul.result532
  %i.sj = icmp ult ptr %i.si, %scevgep535
  %i.sk = getelementptr i8, ptr %scevgep537, i64 %mul.result532
  %i.sl = icmp ult ptr %i.sk, %scevgep537
  %i.sm = or i1 %i.sl, %mul.overflow533
  %i.sn = or i1 %i.sj, %i.sh
  %i.so = or i1 %i.sn, %i.sm
  %i.sp = and i64 %i.sf, 3                        ; 2 uses
  %i.sq = icmp eq i64 %i.sp, 0
  %i.sr = select i1 %i.sq, i64 4, i64 %i.sp
  %n.vec541 = sub nsw i64 %i.sf, %i.sr            ; 2 uses
  %i.ss = add nsw i64 %i.qq, %n.vec541
  %i.st = add nsw i64 %wide.trip.count.i118.i, -1
  %i.su = add nuw nsw i64 %wide.trip.count72.i127.i, 1
  %i.sv = sub nsw i64 %i.su, %i.qk                ; 3 uses
  %min.iters.check515 = icmp ult i64 %i.sv, 5
  %i.sw = and i64 %i.sv, 3                        ; 2 uses
  %i.sx = icmp eq i64 %i.sw, 0
  %i.sy = select i1 %i.sx, i64 4, i64 %i.sw
  %n.vec517 = sub nsw i64 %i.sv, %i.sy            ; 2 uses
  %i.sz = add nsw i64 %i.qq, %n.vec517
  %i.ta = sub nsw i64 %wide.trip.count72.i127.i, %i.qk ; 3 uses
  %min.iters.check501 = icmp ult i64 %i.ta, 13
  %mul.result496 = shl nsw i64 %i.ro, 3           ; 2 uses
  %mul.overflow497 = icmp ugt i64 %i.ro, 2305843009213693951
  %i.tb = getelementptr i8, ptr %scevgep494, i64 %mul.result496
  %i.tc = icmp ult ptr %i.tb, %scevgep494
  %i.td = getelementptr i8, ptr %scevgep499, i64 %mul.result496
  %i.te = icmp ult ptr %i.td, %scevgep499
  %i.tf = or i1 %i.te, %mul.overflow497
  %i.tg = or i1 %i.tc, %i.tf
  %i.th = and i64 %i.ta, 3                        ; 2 uses
  %i.ti = icmp eq i64 %i.th, 0
  %i.tj = select i1 %i.ti, i64 4, i64 %i.th
  %n.vec503 = sub nsw i64 %i.ta, %i.tj            ; 2 uses
  %i.tk = add nsw i64 %i.qk, %n.vec503
  %i.tl = add nsw i64 %wide.trip.count72.i127.i, -1
  %min.iters.check479 = icmp ugt i32 %i.qw, 15
  %or.cond722 = select i1 %min.iters.check479, i1 %ident.check468.not, i1 false
  %bound0475 = icmp ult ptr %1, %scevgep474
  %bound1476 = icmp ult ptr %scevgep472, %scevgep470
  %found.conflict477 = and i1 %bound0475, %bound1476
  %i.tm = and i64 %wide.trip.count213.i, 7        ; 2 uses
  %i.tn = icmp eq i64 %i.tm, 0
  %i.to = select i1 %i.tn, i64 8, i64 %i.tm
  %n.vec481 = sub nsw i64 %wide.trip.count213.i, %i.to ; 3 uses
  %i.tp = shl nsw i64 %n.vec481, 1
  %i.tq = add nsw i64 %i.tp, %i.pi
  %i.tr = sub nsw i64 3, %i.pi
  %i.ts = tail call i64 @llvm.smax.i64(i64 %i.tr, i64 %i.ra)
  %i.tt = add i64 %i.ts, %i.pi
  %i.tu = add i64 %i.tt, -2                       ; 2 uses
  %i.tv = lshr i64 %i.tu, 1
  %i.tw = add nuw i64 %i.tv, 1                    ; 2 uses
  %min.iters.check454 = icmp ugt i64 %i.tu, 15
  %or.cond723 = select i1 %min.iters.check454, i1 %ident.check442.not, i1 false
  %i.tx = and i64 %i.tw, 7                        ; 2 uses
  %i.ty = icmp eq i64 %i.tx, 0
  %i.tz = select i1 %i.ty, i64 8, i64 %i.tx
  %n.vec456 = sub i64 %i.tw, %i.tz                ; 3 uses
  %i.ua = shl i64 %n.vec456, 1
  %i.ub = add i64 %i.ua, %i.qz
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge168.i, %.preheader.lr.ph.i
  %indvars.iv222.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next223.i, %._crit_edge168.i ] ; 6 uses
  %i.uc = add nuw i64 %i.re, %indvars.iv222.i
  %i.ud = shl i64 %i.uc, 2
  %i.ue = getelementptr i8, ptr %1, i64 %i.ud
  %scevgep446 = getelementptr i8, ptr %i.ue, i64 4
  br i1 %i.ai, label %.lr.ph157.preheader.i, label %._crit_edge158.thread.i

.lr.ph157.preheader.i:                            ; preds = %.preheader.i
  %i.uf = shl i64 %indvars.iv222.i, 2
  %invariant.gep237.i = getelementptr [4 x i8], ptr %1, i64 %indvars.iv222.i ; 6 uses
  %.reass813 = add i64 %i.uf, %invariant.op812
  %diff.check569 = icmp ugt i64 %.reass813, -32
  %or.cond721 = select i1 %or.cond720.not736, i1 true, i1 %diff.check569
  br i1 %or.cond721, label %.lr.ph157.i.preheader, label %vector.body574

vector.body574:                                   ; preds = %.lr.ph157.preheader.i, %vector.body574
  %index575 = phi i64 [ %index.next578, %vector.body574 ], [ 0, %.lr.ph157.preheader.i ] ; 3 uses
  %i.ug = getelementptr [4 x i8], ptr %invariant.gep237.i, i64 %index575 ; 2 uses
  %i.uh = getelementptr i8, ptr %i.ug, i64 16
  %wide.load576 = load <4 x float>, ptr %i.ug, align 4, !tbaa !21
  %wide.load577 = load <4 x float>, ptr %i.uh, align 4, !tbaa !21
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %index575 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 16
  store <4 x float> %wide.load576, ptr %i.ui, align 4, !tbaa !21
  store <4 x float> %wide.load577, ptr %i.uj, align 4, !tbaa !21
  %index.next578 = add nuw i64 %index575, 8       ; 2 uses
  %i.uk = icmp eq i64 %index.next578, %n.vec573
  br i1 %i.uk, label %middle.block579, label %vector.body574, !llvm.loop !49

middle.block579:                                  ; preds = %vector.body574
  br i1 %cmp.n580, label %._crit_edge158.i, label %.lr.ph157.i.preheader

.lr.ph157.i.preheader:                            ; preds = %.lr.ph157.preheader.i, %middle.block579
  %indvars.iv201.i.ph = phi i64 [ 0, %.lr.ph157.preheader.i ], [ %n.vec573, %middle.block579 ] ; 3 uses
  br i1 %lcmp.mod791.not, label %.lr.ph157.i.prol.loopexit, label %.lr.ph157.i.prol

.lr.ph157.i.prol:                                 ; preds = %.lr.ph157.i.preheader, %.lr.ph157.i.prol
  %indvars.iv201.i.prol = phi i64 [ %indvars.iv.next202.i.prol, %.lr.ph157.i.prol ], [ %indvars.iv201.i.ph, %.lr.ph157.i.preheader ] ; 3 uses
  %prol.iter792 = phi i64 [ %prol.iter792.next, %.lr.ph157.i.prol ], [ 0, %.lr.ph157.i.preheader ]
  %i.ul = mul nsw i64 %indvars.iv201.i.prol, %i.q
  %gep238.i.prol = getelementptr [4 x i8], ptr %invariant.gep237.i, i64 %i.ul
  %i.um = load float, ptr %gep238.i.prol, align 4, !tbaa !21
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %indvars.iv201.i.prol
  store float %i.um, ptr %i.un, align 4, !tbaa !21
  %indvars.iv.next202.i.prol = add nuw nsw i64 %indvars.iv201.i.prol, 1 ; 2 uses
  %prol.iter792.next = add i64 %prol.iter792, 1   ; 2 uses
  %prol.iter792.cmp.not = icmp eq i64 %prol.iter792.next, %xtraiter790
  br i1 %prol.iter792.cmp.not, label %.lr.ph157.i.prol.loopexit, label %.lr.ph157.i.prol, !llvm.loop !50

.lr.ph157.i.prol.loopexit:                        ; preds = %.lr.ph157.i.prol, %.lr.ph157.i.preheader
  %indvars.iv201.i.unr = phi i64 [ %indvars.iv201.i.ph, %.lr.ph157.i.preheader ], [ %indvars.iv.next202.i.prol, %.lr.ph157.i.prol ]
  %i.uo = sub nsw i64 %indvars.iv201.i.ph, %wide.trip.count204.i
  %i.up = icmp ugt i64 %i.uo, -4
  br i1 %i.up, label %._crit_edge158.i, label %.lr.ph157.i

.lr.ph157.i:                                      ; preds = %.lr.ph157.i.prol.loopexit, %.lr.ph157.i
  %indvars.iv201.i = phi i64 [ %indvars.iv.next202.i.3, %.lr.ph157.i ], [ %indvars.iv201.i.unr, %.lr.ph157.i.prol.loopexit ] ; 6 uses
  %i.uq = mul nsw i64 %indvars.iv201.i, %i.q
  %gep238.i = getelementptr [4 x i8], ptr %invariant.gep237.i, i64 %i.uq
  %i.ur = load float, ptr %gep238.i, align 4, !tbaa !21
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %indvars.iv201.i
  store float %i.ur, ptr %i.us, align 4, !tbaa !21
  %indvars.iv.next202.i = add nuw nsw i64 %indvars.iv201.i, 1 ; 2 uses
  %i.ut = mul nsw i64 %indvars.iv.next202.i, %i.q
  %gep238.i.1 = getelementptr [4 x i8], ptr %invariant.gep237.i, i64 %i.ut
  %i.uu = load float, ptr %gep238.i.1, align 4, !tbaa !21
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %indvars.iv.next202.i
  store float %i.uu, ptr %i.uv, align 4, !tbaa !21
  %indvars.iv.next202.i.1 = add nuw nsw i64 %indvars.iv201.i, 2 ; 2 uses
  %i.uw = mul nsw i64 %indvars.iv.next202.i.1, %i.q
  %gep238.i.2 = getelementptr [4 x i8], ptr %invariant.gep237.i, i64 %i.uw
  %i.ux = load float, ptr %gep238.i.2, align 4, !tbaa !21
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %indvars.iv.next202.i.1
  store float %i.ux, ptr %i.uy, align 4, !tbaa !21
  %indvars.iv.next202.i.2 = add nuw nsw i64 %indvars.iv201.i, 3 ; 2 uses
  %i.uz = mul nsw i64 %indvars.iv.next202.i.2, %i.q
  %gep238.i.3 = getelementptr [4 x i8], ptr %invariant.gep237.i, i64 %i.uz
  %i.va = load float, ptr %gep238.i.3, align 4, !tbaa !21
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %indvars.iv.next202.i.2
  store float %i.va, ptr %i.vb, align 4, !tbaa !21
  %indvars.iv.next202.i.3 = add nuw nsw i64 %indvars.iv201.i, 4 ; 2 uses
  %exitcond205.not.i.3 = icmp eq i64 %indvars.iv.next202.i.3, %wide.trip.count204.i
  br i1 %exitcond205.not.i.3, label %._crit_edge158.i, label %.lr.ph157.i, !llvm.loop !51

._crit_edge158.i:                                 ; preds = %.lr.ph157.i.prol.loopexit, %.lr.ph157.i, %middle.block579
  br i1 %.not.i106.i, label %bb.i, label %._crit_edge158.thread.i

._crit_edge158.thread.i:                          ; preds = %._crit_edge158.i, %.preheader.i
  br i1 %i.pl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge158.thread.i
  %i.vc = load float, ptr %i.p, align 4, !tbaa !21
  %i.vd = fmul nsz float %i.vc, f0x3FD019C3
  store float %i.vd, ptr %i.p, align 4, !tbaa !21
  br label %sd_1d97_float.exit141.i

bb.h:                                             ; preds = %._crit_edge158.thread.i
  %i.ve = load float, ptr %i.j, align 4, !tbaa !21
  %i.vf = fmul nsz float %i.ve, f0x3F9D7658
  store float %i.vf, ptr %i.j, align 4, !tbaa !21
  br label %sd_1d97_float.exit141.i

bb.i:                                             ; preds = %._crit_edge158.i
  %i.vg = load float, ptr %i.pp, align 4, !tbaa !21
  store float %i.vg, ptr %i.pq, align 4, !tbaa !21
  %i.vh = load float, ptr %i.ps, align 4, !tbaa !21
  store float %i.vh, ptr %i.pr, align 4, !tbaa !21
  %i.vi = load float, ptr %i.pt, align 4, !tbaa !21
  store float %i.vi, ptr %i.pu, align 4, !tbaa !21
  %i.vj = load float, ptr %i.pv, align 4, !tbaa !21
  store float %i.vj, ptr %i.pw, align 4, !tbaa !21
  %i.vk = load float, ptr %i.px, align 4, !tbaa !21
  store float %i.vk, ptr %i.py, align 4, !tbaa !21
  %i.vl = load float, ptr %i.pz, align 4, !tbaa !21
  store float %i.vl, ptr %i.qa, align 4, !tbaa !21
  %i.vm = load float, ptr %i.qb, align 4, !tbaa !21
  store float %i.vm, ptr %i.qc, align 4, !tbaa !21
  %i.vn = load float, ptr %i.qd, align 4, !tbaa !21
  store float %i.vn, ptr %i.qe, align 4, !tbaa !21
  br i1 %.not5356.i107.i, label %._crit_edge.i115.i, label %.lr.ph.i109.i.preheader

.lr.ph.i109.i.preheader:                          ; preds = %bb.i
  br i1 %min.iters.check553, label %.lr.ph.i109.i.preheader740, label %vector.body556

vector.body556:                                   ; preds = %.lr.ph.i109.i.preheader, %vector.body556
  %index557 = phi i64 [ %index.next563, %vector.body556 ], [ 0, %.lr.ph.i109.i.preheader ] ; 3 uses
  %i.vo = add i64 %i.ql, %index557                ; 3 uses
  %i.vp = add i64 %i.qk, %index557
  %i.vq = shl nsw i64 %i.vo, 3
  %i.vr = shl i64 %i.vo, 3
  %i.vs = shl nsw i64 %i.vp, 3
  %i.vt = shl i64 %i.vo, 3
  %i.vu = getelementptr inbounds i8, ptr %i.j, i64 %i.vq ; 3 uses
  %i.vv = getelementptr i8, ptr %i.j, i64 %i.vr
  %i.vw = getelementptr inbounds i8, ptr %i.j, i64 %i.vs
  %i.vx = getelementptr i8, ptr %i.j, i64 %i.vt
  %wide.vec558 = load <8 x float>, ptr %i.vu, align 4, !tbaa !21
  %strided.vec559 = shufflevector <8 x float> %wide.vec558, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.vy = getelementptr i8, ptr %i.vu, i64 4
  %wide.vec560 = load <8 x float>, ptr %i.vy, align 4, !tbaa !21 ; 2 uses
  %strided.vec561 = shufflevector <8 x float> %wide.vec560, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec562 = shufflevector <8 x float> %wide.vec560, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.vz = fadd nsz <4 x float> %strided.vec559, %strided.vec562
  %i.wa = fpext nsz <4 x float> %i.vz to <4 x double>
  %i.wb = getelementptr i8, ptr %i.vu, i64 4
  %i.wc = getelementptr i8, ptr %i.vv, i64 12
  %i.wd = getelementptr i8, ptr %i.vw, i64 4
  %i.we = getelementptr i8, ptr %i.vx, i64 28
  %i.wf = fpext nsz <4 x float> %strided.vec561 to <4 x double>
  %i.wg = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.wa, <4 x double> splat (double f0xBFF960CE0B912DBA), <4 x double> %i.wf)
  %i.wh = fptrunc nsz <4 x double> %i.wg to <4 x float> ; 4 uses
  %i.wi = extractelement <4 x float> %i.wh, i64 0
  store float %i.wi, ptr %i.wb, align 4, !tbaa !21
  %i.wj = extractelement <4 x float> %i.wh, i64 1
  store float %i.wj, ptr %i.wc, align 4, !tbaa !21
  %i.wk = extractelement <4 x float> %i.wh, i64 2
  store float %i.wk, ptr %i.wd, align 4, !tbaa !21
  %i.wl = extractelement <4 x float> %i.wh, i64 3
  store float %i.wl, ptr %i.we, align 4, !tbaa !21
  %index.next563 = add nuw i64 %index557, 4       ; 2 uses
  %i.wm = icmp eq i64 %index.next563, %n.vec555
  br i1 %i.wm, label %.lr.ph.i109.i.preheader740, label %vector.body556, !llvm.loop !52

.lr.ph.i109.i.preheader740:                       ; preds = %vector.body556, %.lr.ph.i109.i.preheader
  %indvars.iv.i110.i.ph = phi i64 [ %i.ql, %.lr.ph.i109.i.preheader ], [ %i.sd, %vector.body556 ]
  br label %.lr.ph.i109.i

.lr.ph.i109.i:                                    ; preds = %.lr.ph.i109.i.preheader740, %.lr.ph.i109.i
  %indvars.iv.i110.i = phi i64 [ %indvars.iv.next.i112.i, %.lr.ph.i109.i ], [ %indvars.iv.i110.i.ph, %.lr.ph.i109.i.preheader740 ] ; 2 uses
  %.idx.i111.i = shl nsw i64 %indvars.iv.i110.i, 3
  %i.wn = getelementptr inbounds i8, ptr %i.j, i64 %.idx.i111.i ; 3 uses
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !21
  %i.wp = getelementptr i8, ptr %i.wn, i64 8
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !21
  %i.wr = fadd nsz float %i.wo, %i.wq
  %i.ws = fpext nsz float %i.wr to double
  %i.wt = getelementptr i8, ptr %i.wn, i64 4      ; 2 uses
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !21
  %i.wv = fpext nsz float %i.wu to double
  %i.ww = tail call nsz double @llvm.fmuladd.f64(double %i.ws, double f0xBFF960CE0B912DBA, double %i.wv)
  %i.wx = fptrunc nsz double %i.ww to float
  store float %i.wx, ptr %i.wt, align 4, !tbaa !21
  %indvars.iv.next.i112.i = add nsw i64 %indvars.iv.i110.i, 1 ; 2 uses
  %lftr.wideiv.i113.i = trunc i64 %indvars.iv.next.i112.i to i32
  %exitcond.not.i114.i = icmp eq i32 %i.qo, %lftr.wideiv.i113.i
  br i1 %exitcond.not.i114.i, label %._crit_edge.i115.i, label %.lr.ph.i109.i, !llvm.loop !53

._crit_edge.i115.i:                               ; preds = %.lr.ph.i109.i, %bb.i
  br i1 %.not5458.i116.i, label %.preheader55.i124.i, label %.lr.ph61.i119.i.preheader

.lr.ph61.i119.i.preheader:                        ; preds = %._crit_edge.i115.i
  %brmerge817 = select i1 %min.iters.check539, i1 true, i1 %i.so
  br i1 %brmerge817, label %.lr.ph61.i119.i.preheader739, label %vector.body542

.lr.ph61.i119.i.preheader739:                     ; preds = %.lr.ph61.i119.i.preheader, %vector.body542
  %indvars.iv67.i120.i.ph = phi i64 [ %i.ss, %vector.body542 ], [ %i.qq, %.lr.ph61.i119.i.preheader ] ; 5 uses
  %i.wy = sub i64 %wide.trip.count.i118.i, %indvars.iv67.i120.i.ph
  %xtraiter793 = and i64 %i.wy, 1
  %lcmp.mod794.not = icmp eq i64 %xtraiter793, 0
  br i1 %lcmp.mod794.not, label %.lr.ph61.i119.i.prol.loopexit, label %.lr.ph61.i119.i.prol

.lr.ph61.i119.i.prol:                             ; preds = %.lr.ph61.i119.i.preheader739
  %.idx82.i121.i.prol = shl i64 %indvars.iv67.i120.i.ph, 3
  %i.wz = getelementptr i8, ptr %i.j, i64 %.idx82.i121.i.prol ; 4 uses
  %i.xa = getelementptr i8, ptr %i.wz, i64 -4
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !21
  %i.xc = getelementptr i8, ptr %i.wz, i64 4
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !21
  %i.xe = fadd nsz float %i.xb, %i.xd
  %i.xf = fpext nsz float %i.xe to double
  %i.xg = load float, ptr %i.wz, align 4, !tbaa !21
  %i.xh = fpext nsz float %i.xg to double
  %i.xi = tail call nsz double @llvm.fmuladd.f64(double %i.xf, double -5.298000e-02, double %i.xh)
  %i.xj = fptrunc nsz double %i.xi to float
  store float %i.xj, ptr %i.wz, align 4, !tbaa !21
  %indvars.iv.next68.i122.i.prol = add nsw i64 %indvars.iv67.i120.i.ph, 1
  br label %.lr.ph61.i119.i.prol.loopexit

.lr.ph61.i119.i.prol.loopexit:                    ; preds = %.lr.ph61.i119.i.prol, %.lr.ph61.i119.i.preheader739
  %indvars.iv67.i120.i.unr = phi i64 [ %indvars.iv67.i120.i.ph, %.lr.ph61.i119.i.preheader739 ], [ %indvars.iv.next68.i122.i.prol, %.lr.ph61.i119.i.prol ]
  %i.xk = icmp eq i64 %indvars.iv67.i120.i.ph, %i.st
  br i1 %i.xk, label %.preheader55.i124.i, label %.lr.ph61.i119.i

vector.body542:                                   ; preds = %.lr.ph61.i119.i.preheader, %vector.body542
  %index543 = phi i64 [ %index.next549, %vector.body542 ], [ 0, %.lr.ph61.i119.i.preheader ] ; 3 uses
  %i.xl = add i64 %i.qq, %index543                ; 3 uses
  %i.xm = add i64 %i.qk, %index543
  %i.xn = shl i64 %i.xl, 3
  %i.xo = shl i64 %i.xm, 3
  %i.xp = shl i64 %i.xl, 3
  %i.xq = shl i64 %i.xl, 3
  %i.xr = getelementptr i8, ptr %i.j, i64 %i.xn   ; 3 uses
  %i.xs = getelementptr i8, ptr %i.j, i64 %i.xo
  %i.xt = getelementptr i8, ptr %i.j, i64 %i.xp
  %i.xu = getelementptr i8, ptr %i.xt, i64 16
  %i.xv = getelementptr i8, ptr %i.j, i64 %i.xq
  %i.xw = getelementptr i8, ptr %i.xv, i64 24
  %i.xx = getelementptr i8, ptr %i.xr, i64 -4
  %wide.vec544 = load <8 x float>, ptr %i.xx, align 4, !tbaa !21
  %strided.vec545 = shufflevector <8 x float> %wide.vec544, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec546 = load <8 x float>, ptr %i.xr, align 4, !tbaa !21 ; 2 uses
  %strided.vec547 = shufflevector <8 x float> %wide.vec546, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec548 = shufflevector <8 x float> %wide.vec546, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.xy = fadd nsz <4 x float> %strided.vec545, %strided.vec548
  %i.xz = fpext nsz <4 x float> %i.xy to <4 x double>
  %i.ya = fpext nsz <4 x float> %strided.vec547 to <4 x double>
  %i.yb = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.xz, <4 x double> splat (double -5.298000e-02), <4 x double> %i.ya)
  %i.yc = fptrunc nsz <4 x double> %i.yb to <4 x float> ; 4 uses
  %i.yd = extractelement <4 x float> %i.yc, i64 0
  store float %i.yd, ptr %i.xr, align 4, !tbaa !21
  %i.ye = extractelement <4 x float> %i.yc, i64 1
  store float %i.ye, ptr %i.xs, align 4, !tbaa !21
  %i.yf = extractelement <4 x float> %i.yc, i64 2
  store float %i.yf, ptr %i.xu, align 4, !tbaa !21
  %i.yg = extractelement <4 x float> %i.yc, i64 3
  store float %i.yg, ptr %i.xw, align 4, !tbaa !21
  %index.next549 = add nuw i64 %index543, 4       ; 2 uses
  %i.yh = icmp eq i64 %index.next549, %n.vec541
  br i1 %i.yh, label %.lr.ph61.i119.i.preheader739, label %vector.body542, !llvm.loop !54

.preheader55.i124.i:                              ; preds = %.lr.ph61.i119.i.prol.loopexit, %.lr.ph61.i119.i, %._crit_edge.i115.i
  br i1 %.not66.i125.i, label %.preheader.i133.i, label %.lr.ph63.i128.i.preheader

.lr.ph63.i128.i.preheader:                        ; preds = %.preheader55.i124.i
  br i1 %min.iters.check515, label %.lr.ph63.i128.i.preheader738, label %vector.body518

.lr.ph63.i128.i.preheader738:                     ; preds = %vector.body518, %.lr.ph63.i128.i.preheader
  %indvars.iv70.i129.i.ph = phi i64 [ %i.qq, %.lr.ph63.i128.i.preheader ], [ %i.sz, %vector.body518 ]
  br label %.lr.ph63.i128.i

vector.body518:                                   ; preds = %.lr.ph63.i128.i.preheader, %vector.body518
  %index519 = phi i64 [ %index.next525, %vector.body518 ], [ 0, %.lr.ph63.i128.i.preheader ] ; 3 uses
  %i.yi = add i64 %i.qq, %index519                ; 3 uses
  %i.yj = add i64 %i.qk, %index519
  %i.yk = shl nsw i64 %i.yi, 3
  %i.yl = shl nsw i64 %i.yj, 3
  %i.ym = shl i64 %i.yi, 3
  %i.yn = shl i64 %i.yi, 3
  %i.yo = getelementptr inbounds i8, ptr %i.j, i64 %i.yk ; 3 uses
  %i.yp = getelementptr inbounds i8, ptr %i.j, i64 %i.yl
  %i.yq = getelementptr i8, ptr %i.j, i64 %i.ym
  %i.yr = getelementptr i8, ptr %i.j, i64 %i.yn
  %wide.vec520 = load <8 x float>, ptr %i.yo, align 4, !tbaa !21
  %strided.vec521 = shufflevector <8 x float> %wide.vec520, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ys = getelementptr i8, ptr %i.yo, i64 4
  %wide.vec522 = load <8 x float>, ptr %i.ys, align 4, !tbaa !21 ; 2 uses
  %strided.vec523 = shufflevector <8 x float> %wide.vec522, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec524 = shufflevector <8 x float> %wide.vec522, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.yt = fadd nsz <4 x float> %strided.vec521, %strided.vec524
  %i.yu = fpext nsz <4 x float> %i.yt to <4 x double>
  %i.yv = getelementptr i8, ptr %i.yo, i64 4
  %i.yw = getelementptr i8, ptr %i.yp, i64 4
  %i.yx = getelementptr i8, ptr %i.yq, i64 20
  %i.yy = getelementptr i8, ptr %i.yr, i64 28
  %i.yz = fpext nsz <4 x float> %strided.vec523 to <4 x double>
  %i.za = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.yu, <4 x double> splat (double 8.829110e-01), <4 x double> %i.yz)
  %i.zb = fptrunc nsz <4 x double> %i.za to <4 x float> ; 4 uses
  %i.zc = extractelement <4 x float> %i.zb, i64 0
  store float %i.zc, ptr %i.yv, align 4, !tbaa !21
  %i.zd = extractelement <4 x float> %i.zb, i64 1
  store float %i.zd, ptr %i.yw, align 4, !tbaa !21
  %i.ze = extractelement <4 x float> %i.zb, i64 2
  store float %i.ze, ptr %i.yx, align 4, !tbaa !21
  %i.zf = extractelement <4 x float> %i.zb, i64 3
  store float %i.zf, ptr %i.yy, align 4, !tbaa !21
  %index.next525 = add nuw i64 %index519, 4       ; 2 uses
  %i.zg = icmp eq i64 %index.next525, %n.vec517
  br i1 %i.zg, label %.lr.ph63.i128.i.preheader738, label %vector.body518, !llvm.loop !55

.lr.ph61.i119.i:                                  ; preds = %.lr.ph61.i119.i.prol.loopexit, %.lr.ph61.i119.i
  %indvars.iv67.i120.i = phi i64 [ %indvars.iv.next68.i122.i.1, %.lr.ph61.i119.i ], [ %indvars.iv67.i120.i.unr, %.lr.ph61.i119.i.prol.loopexit ] ; 3 uses
  %.idx82.i121.i = shl i64 %indvars.iv67.i120.i, 3
  %i.zh = getelementptr i8, ptr %i.j, i64 %.idx82.i121.i ; 4 uses
  %i.zi = getelementptr i8, ptr %i.zh, i64 -4
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !21
  %i.zk = getelementptr i8, ptr %i.zh, i64 4
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !21 ; 2 uses
  %i.zm = fadd nsz float %i.zj, %i.zl
  %i.zn = fpext nsz float %i.zm to double
  %i.zo = load float, ptr %i.zh, align 4, !tbaa !21
  %i.zp = fpext nsz float %i.zo to double
  %i.zq = tail call nsz double @llvm.fmuladd.f64(double %i.zn, double -5.298000e-02, double %i.zp)
  %i.zr = fptrunc nsz double %i.zq to float
  store float %i.zr, ptr %i.zh, align 4, !tbaa !21
  %indvars.iv.next68.i122.i = shl i64 %indvars.iv67.i120.i, 3
  %i.zs = getelementptr i8, ptr %i.j, i64 %indvars.iv.next68.i122.i ; 2 uses
  %i.zt = getelementptr i8, ptr %i.zs, i64 8      ; 2 uses
  %i.zu = getelementptr i8, ptr %i.zs, i64 12
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !21
  %i.zw = fadd nsz float %i.zl, %i.zv
  %i.zx = fpext nsz float %i.zw to double
  %i.zy = load float, ptr %i.zt, align 4, !tbaa !21
  %i.zz = fpext nsz float %i.zy to double
  %i.aaa = tail call nsz double @llvm.fmuladd.f64(double %i.zx, double -5.298000e-02, double %i.zz)
  %i.aab = fptrunc nsz double %i.aaa to float
  store float %i.aab, ptr %i.zt, align 4, !tbaa !21
  %indvars.iv.next68.i122.i.1 = add nsw i64 %indvars.iv67.i120.i, 2 ; 2 uses
  %exitcond69.not.i123.i.1 = icmp eq i64 %indvars.iv.next68.i122.i.1, %wide.trip.count.i118.i
  br i1 %exitcond69.not.i123.i.1, label %.preheader55.i124.i, label %.lr.ph61.i119.i, !llvm.loop !56

.preheader.i133.i:                                ; preds = %.lr.ph63.i128.i, %.preheader55.i124.i
  br i1 %i.qr, label %.lr.ph65.i136.i.preheader, label %sd_1d97_float.exit141.i

.lr.ph65.i136.i.preheader:                        ; preds = %.preheader.i133.i
  %brmerge818 = select i1 %min.iters.check501, i1 true, i1 %i.tg
  br i1 %brmerge818, label %.lr.ph65.i136.i.preheader737, label %vector.body504

.lr.ph65.i136.i.preheader737:                     ; preds = %.lr.ph65.i136.i.preheader, %vector.body504
  %indvars.iv74.i137.i.ph = phi i64 [ %i.tk, %vector.body504 ], [ %i.qk, %.lr.ph65.i136.i.preheader ] ; 5 uses
  %i.aac = sub i64 %wide.trip.count72.i127.i, %indvars.iv74.i137.i.ph
  %xtraiter796 = and i64 %i.aac, 1
  %lcmp.mod797.not = icmp eq i64 %xtraiter796, 0
  br i1 %lcmp.mod797.not, label %.lr.ph65.i136.i.prol.loopexit, label %.lr.ph65.i136.i.prol

.lr.ph65.i136.i.prol:                             ; preds = %.lr.ph65.i136.i.preheader737
  %.idx84.i138.i.prol = shl i64 %indvars.iv74.i137.i.ph, 3
  %i.aad = getelementptr i8, ptr %i.j, i64 %.idx84.i138.i.prol ; 4 uses
  %i.aae = getelementptr i8, ptr %i.aad, i64 -4
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !21
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aad, i64 4
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !21
  %i.aai = fadd nsz float %i.aaf, %i.aah
  %i.aaj = fpext nsz float %i.aai to double
  %i.aak = load float, ptr %i.aad, align 4, !tbaa !21
  %i.aal = fpext nsz float %i.aak to double
  %i.aam = tail call nsz double @llvm.fmuladd.f64(double %i.aaj, double 4.435060e-01, double %i.aal)
  %i.aan = fptrunc nsz double %i.aam to float
  store float %i.aan, ptr %i.aad, align 4, !tbaa !21
  %indvars.iv.next75.i139.i.prol = add nuw nsw i64 %indvars.iv74.i137.i.ph, 1
  br label %.lr.ph65.i136.i.prol.loopexit

.lr.ph65.i136.i.prol.loopexit:                    ; preds = %.lr.ph65.i136.i.prol, %.lr.ph65.i136.i.preheader737
  %indvars.iv74.i137.i.unr = phi i64 [ %indvars.iv74.i137.i.ph, %.lr.ph65.i136.i.preheader737 ], [ %indvars.iv.next75.i139.i.prol, %.lr.ph65.i136.i.prol ]
  %i.aao = icmp eq i64 %indvars.iv74.i137.i.ph, %i.tl
  br i1 %i.aao, label %sd_1d97_float.exit141.i, label %.lr.ph65.i136.i

vector.body504:                                   ; preds = %.lr.ph65.i136.i.preheader, %vector.body504
  %index505 = phi i64 [ %index.next511, %vector.body504 ], [ 0, %.lr.ph65.i136.i.preheader ] ; 2 uses
  %i.aap = add nuw i64 %i.qk, %index505           ; 4 uses
  %i.aaq = shl i64 %i.aap, 3
  %i.aar = shl i64 %i.aap, 3
  %i.aas = shl i64 %i.aap, 3
  %i.aat = shl i64 %i.aap, 3
  %i.aau = getelementptr i8, ptr %i.j, i64 %i.aaq ; 3 uses
  %i.aav = getelementptr i8, ptr %i.j, i64 %i.aar
  %i.aaw = getelementptr i8, ptr %i.aav, i64 8
  %i.aax = getelementptr i8, ptr %i.j, i64 %i.aas
  %i.aay = getelementptr i8, ptr %i.aax, i64 16
  %i.aaz = getelementptr i8, ptr %i.j, i64 %i.aat
  %i.aba = getelementptr i8, ptr %i.aaz, i64 24
  %i.abb = getelementptr i8, ptr %i.aau, i64 -4
  %wide.vec506 = load <8 x float>, ptr %i.abb, align 4, !tbaa !21
  %strided.vec507 = shufflevector <8 x float> %wide.vec506, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec508 = load <8 x float>, ptr %i.aau, align 4, !tbaa !21 ; 2 uses
  %strided.vec509 = shufflevector <8 x float> %wide.vec508, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec510 = shufflevector <8 x float> %wide.vec508, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.abc = fadd nsz <4 x float> %strided.vec507, %strided.vec510
  %i.abd = fpext nsz <4 x float> %i.abc to <4 x double>
  %i.abe = fpext nsz <4 x float> %strided.vec509 to <4 x double>
  %i.abf = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.abd, <4 x double> splat (double 4.435060e-01), <4 x double> %i.abe)
  %i.abg = fptrunc nsz <4 x double> %i.abf to <4 x float> ; 4 uses
  %i.abh = extractelement <4 x float> %i.abg, i64 0
  store float %i.abh, ptr %i.aau, align 4, !tbaa !21
  %i.abi = extractelement <4 x float> %i.abg, i64 1
  store float %i.abi, ptr %i.aaw, align 4, !tbaa !21
  %i.abj = extractelement <4 x float> %i.abg, i64 2
  store float %i.abj, ptr %i.aay, align 4, !tbaa !21
  %i.abk = extractelement <4 x float> %i.abg, i64 3
  store float %i.abk, ptr %i.aba, align 4, !tbaa !21
  %index.next511 = add nuw i64 %index505, 4       ; 2 uses
  %i.abl = icmp eq i64 %index.next511, %n.vec503
  br i1 %i.abl, label %.lr.ph65.i136.i.preheader737, label %vector.body504, !llvm.loop !57

.lr.ph63.i128.i:                                  ; preds = %.lr.ph63.i128.i.preheader738, %.lr.ph63.i128.i
  %indvars.iv70.i129.i = phi i64 [ %indvars.iv.next71.i131.i, %.lr.ph63.i128.i ], [ %indvars.iv70.i129.i.ph, %.lr.ph63.i128.i.preheader738 ] ; 2 uses
  %.idx83.i130.i = shl nsw i64 %indvars.iv70.i129.i, 3
  %i.abm = getelementptr inbounds i8, ptr %i.j, i64 %.idx83.i130.i ; 3 uses
  %i.abn = load float, ptr %i.abm, align 4, !tbaa !21
  %i.abo = getelementptr i8, ptr %i.abm, i64 8
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !21
  %i.abq = fadd nsz float %i.abn, %i.abp
  %i.abr = fpext nsz float %i.abq to double
  %i.abs = getelementptr i8, ptr %i.abm, i64 4    ; 2 uses
  %i.abt = load float, ptr %i.abs, align 4, !tbaa !21
  %i.abu = fpext nsz float %i.abt to double
  %i.abv = tail call nsz double @llvm.fmuladd.f64(double %i.abr, double 8.829110e-01, double %i.abu)
  %i.abw = fptrunc nsz double %i.abv to float
  store float %i.abw, ptr %i.abs, align 4, !tbaa !21
  %indvars.iv.next71.i131.i = add nsw i64 %indvars.iv70.i129.i, 1 ; 2 uses
  %exitcond73.not.i132.i = icmp eq i64 %indvars.iv.next71.i131.i, %wide.trip.count72.i127.i
  br i1 %exitcond73.not.i132.i, label %.preheader.i133.i, label %.lr.ph63.i128.i, !llvm.loop !58

.lr.ph65.i136.i:                                  ; preds = %.lr.ph65.i136.i.prol.loopexit, %.lr.ph65.i136.i
  %indvars.iv74.i137.i = phi i64 [ %indvars.iv.next75.i139.i.1, %.lr.ph65.i136.i ], [ %indvars.iv74.i137.i.unr, %.lr.ph65.i136.i.prol.loopexit ] ; 3 uses
  %.idx84.i138.i = shl i64 %indvars.iv74.i137.i, 3
  %i.abx = getelementptr i8, ptr %i.j, i64 %.idx84.i138.i ; 4 uses
  %i.aby = getelementptr i8, ptr %i.abx, i64 -4
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !21
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abx, i64 4
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !21 ; 2 uses
  %i.acc = fadd nsz float %i.abz, %i.acb
  %i.acd = fpext nsz float %i.acc to double
  %i.ace = load float, ptr %i.abx, align 4, !tbaa !21
  %i.acf = fpext nsz float %i.ace to double
  %i.acg = tail call nsz double @llvm.fmuladd.f64(double %i.acd, double 4.435060e-01, double %i.acf)
  %i.ach = fptrunc nsz double %i.acg to float
  store float %i.ach, ptr %i.abx, align 4, !tbaa !21
  %indvars.iv.next75.i139.i = shl i64 %indvars.iv74.i137.i, 3
  %i.aci = getelementptr i8, ptr %i.j, i64 %indvars.iv.next75.i139.i ; 2 uses
  %i.acj = getelementptr i8, ptr %i.aci, i64 8    ; 2 uses
  %i.ack = getelementptr i8, ptr %i.aci, i64 12
  %i.acl = load float, ptr %i.ack, align 4, !tbaa !21
  %i.acm = fadd nsz float %i.acb, %i.acl
  %i.acn = fpext nsz float %i.acm to double
  %i.aco = load float, ptr %i.acj, align 4, !tbaa !21
  %i.acp = fpext nsz float %i.aco to double
  %i.acq = tail call nsz double @llvm.fmuladd.f64(double %i.acn, double 4.435060e-01, double %i.acp)
  %i.acr = fptrunc nsz double %i.acq to float
  store float %i.acr, ptr %i.acj, align 4, !tbaa !21
  %indvars.iv.next75.i139.i.1 = add nuw nsw i64 %indvars.iv74.i137.i, 2 ; 2 uses
  %exitcond77.not.i140.i.1 = icmp eq i64 %indvars.iv.next75.i139.i.1, %wide.trip.count72.i127.i
  br i1 %exitcond77.not.i140.i.1, label %sd_1d97_float.exit141.i, label %.lr.ph65.i136.i, !llvm.loop !59

sd_1d97_float.exit141.i:                          ; preds = %.lr.ph65.i136.i.prol.loopexit, %.lr.ph65.i136.i, %.preheader.i133.i, %bb.h, %bb.g
  br i1 %i.qs, label %.lr.ph161.preheader.i, label %._crit_edge162.i

.lr.ph161.preheader.i:                            ; preds = %sd_1d97_float.exit141.i
  %invariant.gep239.i = getelementptr [4 x i8], ptr %1, i64 %indvars.iv222.i ; 6 uses
  %or.cond722.not = xor i1 %or.cond722, true
  %brmerge819 = select i1 %or.cond722.not, i1 true, i1 %found.conflict477
  br i1 %brmerge819, label %.lr.ph161.i.preheader, label %vector.body482

vector.body482:                                   ; preds = %.lr.ph161.preheader.i, %vector.body482
  %index483 = phi i64 [ %index.next488, %vector.body482 ], [ 0, %.lr.ph161.preheader.i ] ; 3 uses
  %i.acs = shl nuw i64 %index483, 1
  %i.act = add nuw i64 %i.acs, %i.pi              ; 2 uses
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %i.act
  %i.acv = getelementptr [4 x i8], ptr %i.pj, i64 %i.act
  %i.acw = getelementptr i8, ptr %i.acv, i64 32
  %wide.vec484 = load <8 x float>, ptr %i.acu, align 4, !tbaa !21, !alias.scope !151
  %strided.vec485 = shufflevector <8 x float> %wide.vec484, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec486 = load <8 x float>, ptr %i.acw, align 4, !tbaa !21, !alias.scope !151
  %strided.vec487 = shufflevector <8 x float> %wide.vec486, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.acx = getelementptr [4 x i8], ptr %invariant.gep239.i, i64 %index483 ; 2 uses
  %i.acy = getelementptr i8, ptr %i.acx, i64 16
  store <4 x float> %strided.vec485, ptr %i.acx, align 4, !tbaa !21, !alias.scope !152, !noalias !151
  store <4 x float> %strided.vec487, ptr %i.acy, align 4, !tbaa !21, !alias.scope !152, !noalias !151
  %index.next488 = add nuw i64 %index483, 8       ; 2 uses
  %i.acz = icmp eq i64 %index.next488, %n.vec481
  br i1 %i.acz, label %.lr.ph161.i.preheader, label %vector.body482, !llvm.loop !63

.lr.ph161.i.preheader:                            ; preds = %vector.body482, %.lr.ph161.preheader.i
  %indvars.iv208.i.ph = phi i64 [ %i.pi, %.lr.ph161.preheader.i ], [ %i.tq, %vector.body482 ] ; 2 uses
  %indvars.iv206.i.ph = phi i64 [ 0, %.lr.ph161.preheader.i ], [ %n.vec481, %vector.body482 ] ; 4 uses
  %i.ada = sub nsw i64 %i.ru, %indvars.iv206.i.ph
  %i.adb = sub nsw i64 %i.rt, %indvars.iv206.i.ph
  %xtraiter799 = and i64 %i.ada, 3                ; 2 uses
  %lcmp.mod800.not = icmp eq i64 %xtraiter799, 0
  br i1 %lcmp.mod800.not, label %.lr.ph161.i.prol.loopexit, label %.lr.ph161.i.prol

.lr.ph161.i.prol:                                 ; preds = %.lr.ph161.i.preheader, %.lr.ph161.i.prol
  %indvars.iv208.i.prol = phi i64 [ %indvars.iv.next209.i.prol, %.lr.ph161.i.prol ], [ %indvars.iv208.i.ph, %.lr.ph161.i.preheader ] ; 2 uses
  %indvars.iv206.i.prol = phi i64 [ %indvars.iv.next207.i.prol, %.lr.ph161.i.prol ], [ %indvars.iv206.i.ph, %.lr.ph161.i.preheader ] ; 2 uses
  %prol.iter801 = phi i64 [ %prol.iter801.next, %.lr.ph161.i.prol ], [ 0, %.lr.ph161.i.preheader ]
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %indvars.iv208.i.prol
  %i.add = load float, ptr %i.adc, align 4, !tbaa !21
  %i.ade = mul nsw i64 %indvars.iv206.i.prol, %i.q
  %gep240.i.prol = getelementptr [4 x i8], ptr %invariant.gep239.i, i64 %i.ade
  store float %i.add, ptr %gep240.i.prol, align 4, !tbaa !21
  %indvars.iv.next209.i.prol = add nuw nsw i64 %indvars.iv208.i.prol, 2 ; 2 uses
  %indvars.iv.next207.i.prol = add nuw nsw i64 %indvars.iv206.i.prol, 1 ; 2 uses
  %prol.iter801.next = add i64 %prol.iter801, 1   ; 2 uses
  %prol.iter801.cmp.not = icmp eq i64 %prol.iter801.next, %xtraiter799
  br i1 %prol.iter801.cmp.not, label %.lr.ph161.i.prol.loopexit, label %.lr.ph161.i.prol, !llvm.loop !64

.lr.ph161.i.prol.loopexit:                        ; preds = %.lr.ph161.i.prol, %.lr.ph161.i.preheader
  %indvars.iv208.i.unr = phi i64 [ %indvars.iv208.i.ph, %.lr.ph161.i.preheader ], [ %indvars.iv.next209.i.prol, %.lr.ph161.i.prol ]
  %indvars.iv206.i.unr = phi i64 [ %indvars.iv206.i.ph, %.lr.ph161.i.preheader ], [ %indvars.iv.next207.i.prol, %.lr.ph161.i.prol ]
  %i.adf = icmp ult i64 %i.adb, 3
  br i1 %i.adf, label %._crit_edge162.i, label %.lr.ph161.i

.lr.ph161.i:                                      ; preds = %.lr.ph161.i.prol.loopexit, %.lr.ph161.i
  %indvars.iv208.i = phi i64 [ %indvars.iv.next209.i.3, %.lr.ph161.i ], [ %indvars.iv208.i.unr, %.lr.ph161.i.prol.loopexit ] ; 5 uses
  %indvars.iv206.i = phi i64 [ %indvars.iv.next207.i.3, %.lr.ph161.i ], [ %indvars.iv206.i.unr, %.lr.ph161.i.prol.loopexit ] ; 5 uses
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %indvars.iv208.i
  %i.adh = load float, ptr %i.adg, align 4, !tbaa !21
  %i.adi = mul nsw i64 %indvars.iv206.i, %i.q
  %gep240.i = getelementptr [4 x i8], ptr %invariant.gep239.i, i64 %i.adi
  store float %i.adh, ptr %gep240.i, align 4, !tbaa !21
  %indvars.iv.next207.i = add nuw nsw i64 %indvars.iv206.i, 1
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %indvars.iv208.i
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 8
  %i.adl = load float, ptr %i.adk, align 4, !tbaa !21
  %i.adm = mul nsw i64 %indvars.iv.next207.i, %i.q
  %gep240.i.1 = getelementptr [4 x i8], ptr %invariant.gep239.i, i64 %i.adm
  store float %i.adl, ptr %gep240.i.1, align 4, !tbaa !21
  %indvars.iv.next207.i.1 = add nuw nsw i64 %indvars.iv206.i, 2
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %indvars.iv208.i
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 16
  %i.adp = load float, ptr %i.ado, align 4, !tbaa !21
  %i.adq = mul nsw i64 %indvars.iv.next207.i.1, %i.q
  %gep240.i.2 = getelementptr [4 x i8], ptr %invariant.gep239.i, i64 %i.adq
  store float %i.adp, ptr %gep240.i.2, align 4, !tbaa !21
  %indvars.iv.next207.i.2 = add nuw nsw i64 %indvars.iv206.i, 3
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %indvars.iv208.i
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 24
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !21
  %i.adu = mul nsw i64 %indvars.iv.next207.i.2, %i.q
  %gep240.i.3 = getelementptr [4 x i8], ptr %invariant.gep239.i, i64 %i.adu
  store float %i.adt, ptr %gep240.i.3, align 4, !tbaa !21
end_hunk_0
begin_hunk_1_@ff_dwt_encode:bb.a
  %indvars.iv199.i.prol = phi i64 [ %indvars.iv.next200.i.prol, %scalar.ph334.prol ], [ %indvars.iv199.i.ph, %scalar.ph334.preheader ] ; 2 uses
  %prol.iter777 = phi i64 [ %prol.iter777.next, %scalar.ph334.prol ], [ 0, %scalar.ph334.preheader ]
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %i.akt, i64 %indvars.iv201.i20.prol
  %i.anx = load i32, ptr %i.anw, align 4, !tbaa !15
  %gep240.i21.prol = getelementptr [4 x i8], ptr %invariant.gep239.i19, i64 %indvars.iv199.i.prol
  store i32 %i.anx, ptr %gep240.i21.prol, align 4, !tbaa !15
  %indvars.iv.next202.i22.prol = add nuw nsw i64 %indvars.iv201.i20.prol, 2 ; 2 uses
  %indvars.iv.next200.i.prol = add nuw nsw i64 %indvars.iv199.i.prol, 1 ; 2 uses
  %prol.iter777.next = add i64 %prol.iter777, 1   ; 2 uses
  %prol.iter777.cmp.not = icmp eq i64 %prol.iter777.next, %xtraiter775
  br i1 %prol.iter777.cmp.not, label %scalar.ph334.prol.loopexit, label %scalar.ph334.prol, !llvm.loop !99

scalar.ph334.prol.loopexit:                       ; preds = %scalar.ph334.prol, %scalar.ph334.preheader
  %indvars.iv201.i20.unr = phi i64 [ %indvars.iv201.i20.ph, %scalar.ph334.preheader ], [ %indvars.iv.next202.i22.prol, %scalar.ph334.prol ]
  %indvars.iv199.i.unr = phi i64 [ %indvars.iv199.i.ph, %scalar.ph334.preheader ], [ %indvars.iv.next200.i.prol, %scalar.ph334.prol ]
  %i.any = icmp ult i64 %i.anv, 3
  br i1 %i.any, label %._crit_edge151.i, label %scalar.ph334

scalar.ph334:                                     ; preds = %scalar.ph334.prol.loopexit, %scalar.ph334
  %indvars.iv201.i20 = phi i64 [ %indvars.iv.next202.i22.3, %scalar.ph334 ], [ %indvars.iv201.i20.unr, %scalar.ph334.prol.loopexit ] ; 5 uses
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i.3, %scalar.ph334 ], [ %indvars.iv199.i.unr, %scalar.ph334.prol.loopexit ] ; 5 uses
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %i.akt, i64 %indvars.iv201.i20
  %i.aoa = load i32, ptr %i.anz, align 4, !tbaa !15
  %gep240.i21 = getelementptr [4 x i8], ptr %invariant.gep239.i19, i64 %indvars.iv199.i
  store i32 %i.aoa, ptr %gep240.i21, align 4, !tbaa !15
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.akt, i64 %indvars.iv201.i20
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 8
  %i.aod = load i32, ptr %i.aoc, align 4, !tbaa !15
  %i.aoe = getelementptr [4 x i8], ptr %invariant.gep239.i19, i64 %indvars.iv199.i
  %gep240.i21.1 = getelementptr i8, ptr %i.aoe, i64 4
  store i32 %i.aod, ptr %gep240.i21.1, align 4, !tbaa !15
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %i.akt, i64 %indvars.iv201.i20
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 16
  %i.aoh = load i32, ptr %i.aog, align 4, !tbaa !15
  %i.aoi = getelementptr [4 x i8], ptr %invariant.gep239.i19, i64 %indvars.iv199.i
  %gep240.i21.2 = getelementptr i8, ptr %i.aoi, i64 8
  store i32 %i.aoh, ptr %gep240.i21.2, align 4, !tbaa !15
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %i.akt, i64 %indvars.iv201.i20
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 24
  %i.aol = load i32, ptr %i.aok, align 4, !tbaa !15
  %i.aom = getelementptr [4 x i8], ptr %invariant.gep239.i19, i64 %indvars.iv199.i
  %gep240.i21.3 = getelementptr i8, ptr %i.aom, i64 12
  store i32 %i.aol, ptr %gep240.i21.3, align 4, !tbaa !15
  %indvars.iv.next202.i22.3 = add nuw nsw i64 %indvars.iv201.i20, 8
  %indvars.iv.next200.i.3 = add nuw nsw i64 %indvars.iv199.i, 4 ; 2 uses
  %exitcond207.not.i.3 = icmp eq i64 %indvars.iv.next200.i.3, %wide.trip.count206.i
  br i1 %exitcond207.not.i.3, label %._crit_edge151.i, label %scalar.ph334, !llvm.loop !100

._crit_edge151.i:                                 ; preds = %scalar.ph334.prol.loopexit, %scalar.ph334, %._crit_edge146.i
  %.0.lcssa.i13 = phi i64 [ 0, %._crit_edge146.i ], [ %wide.trip.count206.i, %scalar.ph334 ], [ %wide.trip.count206.i, %scalar.ph334.prol.loopexit ] ; 5 uses
  br i1 %i.aky, label %.lr.ph156.i, label %._crit_edge157.i

.lr.ph156.i:                                      ; preds = %._crit_edge151.i
  %i.aon = mul nsw i64 %indvars.iv215.i12, %i.afg
  %invariant.gep241.i15 = getelementptr [4 x i8], ptr %1, i64 %i.aon ; 3 uses
  br i1 %min.iters.check310, label %scalar.ph309.preheader, label %vector.memcheck298

vector.memcheck298:                               ; preds = %.lr.ph156.i
  %i.aoo = shl nuw nsw i64 %.0.lcssa.i13, 2       ; 2 uses
  %scevgep299 = getelementptr i8, ptr %invariant.gep241.i15, i64 %i.aoo
  %scevgep302 = getelementptr i8, ptr %scevgep301, i64 %i.aoo
  %bound0306 = icmp ult ptr %scevgep299, %scevgep305
  %bound1307 = icmp ult ptr %scevgep303, %scevgep302
  %found.conflict308 = and i1 %bound0306, %bound1307
  br i1 %found.conflict308, label %scalar.ph309.preheader, label %vector.ph311

vector.ph311:                                     ; preds = %vector.memcheck298
  %i.aop = add i64 %.0.lcssa.i13, %n.vec312
  %i.aoq = getelementptr [4 x i8], ptr %invariant.gep241.i15, i64 %.0.lcssa.i13
  br label %vector.body313

vector.body313:                                   ; preds = %vector.body313, %vector.ph311
  %index314 = phi i64 [ 0, %vector.ph311 ], [ %index.next319, %vector.body313 ] ; 3 uses
  %i.aor = shl i64 %index314, 1
  %i.aos = add i64 %i.aor, %i.ald                 ; 2 uses
  %i.aot = getelementptr inbounds [4 x i8], ptr %i.akt, i64 %i.aos
  %i.aou = getelementptr [4 x i8], ptr %i.akt, i64 %i.aos
  %i.aov = getelementptr i8, ptr %i.aou, i64 32
  %wide.vec315 = load <8 x i32>, ptr %i.aot, align 4, !tbaa !15, !alias.scope !161
  %strided.vec316 = shufflevector <8 x i32> %wide.vec315, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec317 = load <8 x i32>, ptr %i.aov, align 4, !tbaa !15, !alias.scope !161
  %strided.vec318 = shufflevector <8 x i32> %wide.vec317, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aow = getelementptr [4 x i8], ptr %i.aoq, i64 %index314 ; 2 uses
  %i.aox = getelementptr i8, ptr %i.aow, i64 16
  store <4 x i32> %strided.vec316, ptr %i.aow, align 4, !tbaa !15, !alias.scope !162, !noalias !161
  store <4 x i32> %strided.vec318, ptr %i.aox, align 4, !tbaa !15, !alias.scope !162, !noalias !161
  %index.next319 = add nuw i64 %index314, 8       ; 2 uses
  %i.aoy = icmp eq i64 %index.next319, %n.vec312
  br i1 %i.aoy, label %scalar.ph309.preheader, label %vector.body313, !llvm.loop !104

scalar.ph309.preheader:                           ; preds = %vector.body313, %vector.memcheck298, %.lr.ph156.i
  %indvars.iv210.i.ph = phi i64 [ %i.ald, %vector.memcheck298 ], [ %i.ald, %.lr.ph156.i ], [ %i.amq, %vector.body313 ]
  %indvars.iv208.i16.ph = phi i64 [ %.0.lcssa.i13, %vector.memcheck298 ], [ %.0.lcssa.i13, %.lr.ph156.i ], [ %i.aop, %vector.body313 ]
  br label %scalar.ph309

scalar.ph309:                                     ; preds = %scalar.ph309.preheader, %scalar.ph309
  %indvars.iv210.i = phi i64 [ %indvars.iv.next211.i, %scalar.ph309 ], [ %indvars.iv210.i.ph, %scalar.ph309.preheader ] ; 2 uses
  %indvars.iv208.i16 = phi i64 [ %indvars.iv.next209.i18, %scalar.ph309 ], [ %indvars.iv208.i16.ph, %scalar.ph309.preheader ] ; 2 uses
  %i.aoz = getelementptr inbounds [4 x i8], ptr %i.akt, i64 %indvars.iv210.i
  %i.apa = load i32, ptr %i.aoz, align 4, !tbaa !15
  %gep242.i17 = getelementptr [4 x i8], ptr %invariant.gep241.i15, i64 %indvars.iv208.i16
  store i32 %i.apa, ptr %gep242.i17, align 4, !tbaa !15
  %indvars.iv.next211.i = add nsw i64 %indvars.iv210.i, 2 ; 2 uses
  %indvars.iv.next209.i18 = add nuw nsw i64 %indvars.iv208.i16, 1
  %i.apb = icmp slt i64 %indvars.iv.next211.i, %i.ale
  br i1 %i.apb, label %scalar.ph309, label %._crit_edge157.i, !llvm.loop !105

._crit_edge157.i:                                 ; preds = %scalar.ph309, %._crit_edge151.i
  %indvars.iv.next216.i14 = add nuw nsw i64 %indvars.iv215.i12, 1 ; 2 uses
  %exitcond219.not.i = icmp eq i64 %indvars.iv.next216.i14, %wide.trip.count218.i
  br i1 %exitcond219.not.i, label %.loopexit.i, label %.preheader125.i, !llvm.loop !106

.lr.ph164.i:                                      ; preds = %.lr.ph164.i.preheader, %.lr.ph164.i
  %indvars.iv223.i = phi i64 [ %indvars.iv.next224.i, %.lr.ph164.i ], [ %indvars.iv223.i.ph, %.lr.ph164.i.preheader ] ; 2 uses
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv223.i ; 2 uses
  %i.apd = load i32, ptr %i.apc, align 4, !tbaa !15
  %i.ape = add nsw i32 %i.apd, 128
  %i.apf = ashr i32 %i.ape, 8
  store i32 %i.apf, ptr %i.apc, align 4, !tbaa !15
  %indvars.iv.next224.i = add nuw nsw i64 %indvars.iv223.i, 1 ; 2 uses
  %exitcond227.not.i = icmp eq i64 %indvars.iv.next224.i, %wide.trip.count226.i
  br i1 %exitcond227.not.i, label %dwt_encode97_float.exit, label %.lr.ph164.i, !llvm.loop !107

.lr.ph155.i:                                      ; preds = %bb.b
  %i.apg = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !19 ; 13 uses
  %i.api = ptrtoaddr ptr %i.aph to i64            ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aph, i64 12 ; 28 uses
  %i.apk = zext i8 %i.c to i64
  %i.apl = add nsw i64 %i.apk, -1                 ; 2 uses
  %i.apm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.apl
  %i.apn = load i32, ptr %i.apm, align 8, !tbaa !15 ; 5 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.app = getelementptr i8, ptr %i.aph, i64 16   ; 5 uses
  %i.apq = sext i32 %i.apn to i64                 ; 17 uses
  %i.apr = shl nsw i64 %i.apq, 2
  %scevgep112 = getelementptr i8, ptr %i.aph, i64 20
  %scevgep118 = getelementptr i8, ptr %1, i64 4
  %i.aps = shl nsw i64 %i.apq, 2
  %scevgep120 = getelementptr i8, ptr %i.aph, i64 12
  %scevgep122 = getelementptr i8, ptr %i.aph, i64 16 ; 2 uses
  %scevgep141 = getelementptr i8, ptr %i.aph, i64 12
  %scevgep143 = getelementptr i8, ptr %i.aph, i64 8
  %i.apt = add i64 %i.api, 12
  %i.apu = sub i64 %i.apt, %i.a
  %i.apv = mul nsw i64 %i.apq, -4
  %scevgep190 = getelementptr i8, ptr %i.aph, i64 20
  %scevgep213 = getelementptr i8, ptr %i.aph, i64 12
  %scevgep215 = getelementptr i8, ptr %i.aph, i64 16
  %scevgep235 = getelementptr i8, ptr %i.aph, i64 12
  %scevgep240 = getelementptr i8, ptr %i.aph, i64 8
  %i.apw = add i64 %i.api, 12
  %ident.check271.not = icmp ne i32 %i.apn, 1
  %ident.check210.not = icmp eq i32 %i.apn, 1
  %ident.check.not = icmp eq i32 %i.apn, 1
  %invariant.op804 = add i64 %i.apu, -1
  %stride.check = icmp slt i32 %i.apn, 0
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge152.i, %.lr.ph155.i
  %indvars.iv206.i42 = phi i64 [ %i.apl, %.lr.ph155.i ], [ %indvars.iv.next207.i43, %._crit_edge152.i ] ; 4 uses
  %i.apx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv206.i42 ; 2 uses
  %i.apy = load i32, ptr %i.apx, align 8, !tbaa !15 ; 10 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apx, i64 4
  %i.aqa = load i32, ptr %i.apz, align 4, !tbaa !15 ; 11 uses
  %i.aqb = getelementptr inbounds nuw [2 x i8], ptr %i.apo, i64 %indvars.iv206.i42 ; 2 uses
  %i.aqc = load i8, ptr %i.aqb, align 2, !tbaa !16 ; 3 uses
  %i.aqd = zext i8 %i.aqc to i32                  ; 5 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqb, i64 1
  %i.aqf = load i8, ptr %i.aqe, align 1, !tbaa !16 ; 3 uses
  %i.aqg = zext i8 %i.aqf to i64                  ; 12 uses
  %i.aqh = getelementptr inbounds nuw [4 x i8], ptr %i.apj, i64 %i.aqg ; 20 uses
  %i.aqi = icmp sgt i32 %i.apy, 0                 ; 2 uses
  br i1 %i.aqi, label %.preheader125.lr.ph.i61, label %._crit_edge137.i

.preheader125.lr.ph.i61:                          ; preds = %bb.l
  %i.aqj = zext i8 %i.aqf to i32                  ; 5 uses
  %i.aqk = icmp sgt i32 %i.aqa, 0
  %.not.i.i62 = icmp samesign ugt i32 %i.aqa, 1
  %i.aql = icmp eq i8 %i.aqf, 1
  %i.aqm = add nuw nsw i32 %i.aqj, 1
  %i.aqn = add i32 %i.aqa, %i.aqj                 ; 2 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqh, i64 4
  %i.aqp = getelementptr i8, ptr %i.aqh, i64 -4
  %i.aqq = zext nneg i32 %i.aqn to i64
  %i.aqr = getelementptr [4 x i8], ptr %i.apj, i64 %i.aqq ; 4 uses
  %i.aqs = getelementptr i8, ptr %i.aqr, i64 -8
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqh, i64 8
  %i.aqu = getelementptr i8, ptr %i.aqh, i64 -8
  %i.aqv = getelementptr i8, ptr %i.aqr, i64 -12
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqr, i64 4
  %i.aqx = lshr i32 %i.aqm, 1                     ; 3 uses
  %i.aqy = add i32 %i.aqn, 1
  %i.aqz = lshr i32 %i.aqy, 1                     ; 3 uses
  %.not32.i.i = icmp samesign ugt i32 %i.aqx, %i.aqz
  %i.ara = add nuw nsw i64 %i.aqg, 1
  %i.arb = lshr i64 %i.ara, 1                     ; 10 uses
  %i.arc = add nsw i64 %i.arb, -1                 ; 3 uses
  %i.ard = trunc nuw nsw i64 %i.arb to i32
  %i.are = sub nsw i32 %i.ard, %i.aqx
  %i.arf = add i32 %i.are, %i.aqz
  %wide.trip.count.i.i63 = zext i32 %i.arf to i64 ; 7 uses
  %i.arg = icmp samesign ult i32 %i.aqx, %i.aqz
  %i.arh = icmp sgt i32 %i.aqa, %i.aqj
  %i.ari = sub nsw i32 1, %i.aqj                  ; 2 uses
  %i.arj = icmp slt i32 %i.ari, %i.aqa
  %i.ark = xor i32 %i.aqj, -1
  %i.arl = add i32 %i.aqa, %i.ark                 ; 4 uses
  %i.arm = lshr i32 %i.arl, 1
  %i.arn = add nuw i32 %i.arm, 1
  %i.aro = sext i32 %i.ari to i64                 ; 4 uses
  %i.arp = sext i32 %i.aqa to i64                 ; 3 uses
  %wide.trip.count178.i = zext nneg i32 %i.apy to i64 ; 2 uses
  %wide.trip.count.i65 = zext i32 %i.aqa to i64   ; 5 uses
  %wide.trip.count166.i = zext i32 %i.arn to i64  ; 5 uses
  %i.arq = sub nsw i64 3, %i.aqg
  %smax187 = tail call i64 @llvm.smax.i64(i64 %i.arq, i64 %i.arp)
  %i.arr = add i64 %smax187, -2
  %i.ars = add i64 %i.arr, %i.aqg
  %i.art = lshr i64 %i.ars, 1                     ; 2 uses
  %i.aru = shl i64 %i.art, 3
  %scevgep191 = getelementptr i8, ptr %scevgep190, i64 %i.aru
  %i.arv = lshr i32 %i.arl, 1
  %i.arw = zext nneg i32 %i.arv to i64            ; 2 uses
  %i.arx = add nuw nsw i64 %i.arw, %wide.trip.count178.i
  %i.ary = shl nuw nsw i64 %i.arx, 2
  %scevgep212 = getelementptr i8, ptr %1, i64 %i.ary
  %i.arz = shl nuw nsw i64 %i.aqg, 3
  %scevgep214 = getelementptr i8, ptr %scevgep213, i64 %i.arz
  %i.asa = add nuw nsw i64 %i.arw, %i.aqg
  %i.asb = shl nuw nsw i64 %i.asa, 3
  %scevgep216 = getelementptr i8, ptr %scevgep215, i64 %i.asb
  %i.asc = xor i64 %i.arb, -1
  %i.asd = add nsw i64 %i.asc, %wide.trip.count.i.i63 ; 2 uses
  %i.ase = shl nuw nsw i64 %i.arb, 3              ; 2 uses
  %scevgep236 = getelementptr i8, ptr %scevgep235, i64 %i.ase ; 2 uses
  %scevgep241 = getelementptr i8, ptr %scevgep240, i64 %i.ase ; 2 uses
  %i.asf = shl nuw nsw i64 %i.aqg, 2
  %i.asg = lshr i32 %i.arl, 1
  %i.ash = zext nneg i32 %i.asg to i64            ; 2 uses
  %i.asi = add nuw nsw i64 %i.ash, 1
  %i.asj = add i64 %i.apw, %i.asf
  %min.iters.check275 = icmp ult i32 %i.aqa, 8
  %or.cond729.not734 = select i1 %min.iters.check275, i1 true, i1 %ident.check271.not
  %invariant.op = sub i64 %i.a, %i.asj
  %n.vec277 = and i64 %wide.trip.count.i65, 2147483640 ; 3 uses
  %cmp.n284 = icmp eq i64 %n.vec277, %wide.trip.count.i65
  %xtraiter = and i64 %wide.trip.count.i65, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ask = add nuw nsw i64 %wide.trip.count.i.i63, 1
  %i.asl = sub nsw i64 %i.ask, %i.arb             ; 3 uses
  %min.iters.check257 = icmp ult i64 %i.asl, 5
  %i.asm = and i64 %i.asl, 3                      ; 2 uses
  %i.asn = icmp eq i64 %i.asm, 0
  %i.aso = select i1 %i.asn, i64 4, i64 %i.asm
  %n.vec259 = sub nsw i64 %i.asl, %i.aso          ; 2 uses
  %i.asp = add nsw i64 %i.arc, %n.vec259
  %i.asq = sub nsw i64 %wide.trip.count.i.i63, %i.arb ; 3 uses
  %min.iters.check243 = icmp ult i64 %i.asq, 13
  %mul.result238 = shl nsw i64 %i.asd, 3          ; 2 uses
  %mul.overflow239 = icmp ugt i64 %i.asd, 2305843009213693951
  %i.asr = getelementptr i8, ptr %scevgep236, i64 %mul.result238
  %i.ass = icmp ult ptr %i.asr, %scevgep236
  %i.ast = getelementptr i8, ptr %scevgep241, i64 %mul.result238
  %i.asu = icmp ult ptr %i.ast, %scevgep241
  %i.asv = or i1 %i.asu, %mul.overflow239
  %i.asw = or i1 %i.ass, %i.asv
  %i.asx = and i64 %i.asq, 3                      ; 2 uses
  %i.asy = icmp eq i64 %i.asx, 0
  %i.asz = select i1 %i.asy, i64 4, i64 %i.asx
  %n.vec245 = sub nsw i64 %i.asq, %i.asz          ; 2 uses
  %i.ata = add nsw i64 %i.arb, %n.vec245
  %i.atb = add nsw i64 %wide.trip.count.i.i63, -1
  %min.iters.check221 = icmp ugt i32 %i.arl, 15
  %or.cond731 = select i1 %min.iters.check221, i1 %ident.check210.not, i1 false
  %bound0217 = icmp ult ptr %1, %scevgep216
  %bound1218 = icmp ult ptr %scevgep214, %scevgep212
  %found.conflict219 = and i1 %bound0217, %bound1218
  %i.atc = and i64 %wide.trip.count166.i, 7       ; 2 uses
  %i.atd = icmp eq i64 %i.atc, 0
  %i.ate = select i1 %i.atd, i64 8, i64 %i.atc
  %n.vec223 = sub nsw i64 %wide.trip.count166.i, %i.ate ; 3 uses
  %i.atf = shl nsw i64 %n.vec223, 1
  %i.atg = add nsw i64 %i.atf, %i.aqg
  %i.ath = sub nsw i64 3, %i.aqg
  %i.ati = tail call i64 @llvm.smax.i64(i64 %i.ath, i64 %i.arp)
  %i.atj = add i64 %i.ati, %i.aqg
  %i.atk = add i64 %i.atj, -2                     ; 2 uses
  %i.atl = lshr i64 %i.atk, 1
  %i.atm = add nuw i64 %i.atl, 1                  ; 2 uses
  %min.iters.check196 = icmp ugt i64 %i.atk, 15
  %or.cond732 = select i1 %min.iters.check196, i1 %ident.check.not, i1 false
  %i.atn = and i64 %i.atm, 7                      ; 2 uses
  %i.ato = icmp eq i64 %i.atn, 0
  %i.atp = select i1 %i.ato, i64 8, i64 %i.atn
  %n.vec198 = sub i64 %i.atm, %i.atp              ; 3 uses
  %i.atq = shl i64 %n.vec198, 1
  %i.atr = add i64 %i.atq, %i.aro
  br label %.preheader125.i66

.preheader125.i66:                                ; preds = %._crit_edge135.i71, %.preheader125.lr.ph.i61
  %indvars.iv175.i67 = phi i64 [ 0, %.preheader125.lr.ph.i61 ], [ %indvars.iv.next176.i72, %._crit_edge135.i71 ] ; 6 uses
  %i.ats = add nuw i64 %i.art, %indvars.iv175.i67
  %i.att = shl i64 %i.ats, 2
  %i.atu = getelementptr i8, ptr %1, i64 %i.att
  %scevgep188 = getelementptr i8, ptr %i.atu, i64 4
  br i1 %i.aqk, label %.lr.ph.preheader.i79, label %._crit_edge.thread.i68

.lr.ph.preheader.i79:                             ; preds = %.preheader125.i66
  %i.atv = shl i64 %indvars.iv175.i67, 2
  %invariant.gep.i80 = getelementptr [4 x i8], ptr %1, i64 %indvars.iv175.i67 ; 6 uses
  %.reass = add i64 %i.atv, %invariant.op
  %diff.check273 = icmp ugt i64 %.reass, -32
  %or.cond730 = select i1 %or.cond729.not734, i1 true, i1 %diff.check273
  br i1 %or.cond730, label %.lr.ph.i81.preheader, label %vector.body278

vector.body278:                                   ; preds = %.lr.ph.preheader.i79, %vector.body278
  %index279 = phi i64 [ %index.next282, %vector.body278 ], [ 0, %.lr.ph.preheader.i79 ] ; 3 uses
  %i.atw = getelementptr [4 x i8], ptr %invariant.gep.i80, i64 %index279 ; 2 uses
  %i.atx = getelementptr i8, ptr %i.atw, i64 16
  %wide.load280 = load <4 x i32>, ptr %i.atw, align 4, !tbaa !15
  %wide.load281 = load <4 x i32>, ptr %i.atx, align 4, !tbaa !15
  %i.aty = getelementptr inbounds nuw [4 x i8], ptr %i.aqh, i64 %index279 ; 2 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 16
  store <4 x i32> %wide.load280, ptr %i.aty, align 4, !tbaa !15
  store <4 x i32> %wide.load281, ptr %i.atz, align 4, !tbaa !15
  %index.next282 = add nuw i64 %index279, 8       ; 2 uses
  %i.aua = icmp eq i64 %index.next282, %n.vec277
  br i1 %i.aua, label %middle.block283, label %vector.body278, !llvm.loop !108

middle.block283:                                  ; preds = %vector.body278
  br i1 %cmp.n284, label %._crit_edge.i86, label %.lr.ph.i81.preheader

.lr.ph.i81.preheader:                             ; preds = %.lr.ph.preheader.i79, %middle.block283
  %indvars.iv.i82.ph = phi i64 [ 0, %.lr.ph.preheader.i79 ], [ %n.vec277, %middle.block283 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i81.prol.loopexit, label %.lr.ph.i81.prol

.lr.ph.i81.prol:                                  ; preds = %.lr.ph.i81.preheader, %.lr.ph.i81.prol
  %indvars.iv.i82.prol = phi i64 [ %indvars.iv.next.i84.prol, %.lr.ph.i81.prol ], [ %indvars.iv.i82.ph, %.lr.ph.i81.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i81.prol ], [ 0, %.lr.ph.i81.preheader ]
  %i.aub = mul nsw i64 %indvars.iv.i82.prol, %i.apq
  %gep.i83.prol = getelementptr [4 x i8], ptr %invariant.gep.i80, i64 %i.aub
  %i.auc = load i32, ptr %gep.i83.prol, align 4, !tbaa !15
  %i.aud = getelementptr inbounds nuw [4 x i8], ptr %i.aqh, i64 %indvars.iv.i82.prol
  store i32 %i.auc, ptr %i.aud, align 4, !tbaa !15
  %indvars.iv.next.i84.prol = add nuw nsw i64 %indvars.iv.i82.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i81.prol.loopexit, label %.lr.ph.i81.prol, !llvm.loop !109

.lr.ph.i81.prol.loopexit:                         ; preds = %.lr.ph.i81.prol, %.lr.ph.i81.preheader
  %indvars.iv.i82.unr = phi i64 [ %indvars.iv.i82.ph, %.lr.ph.i81.preheader ], [ %indvars.iv.next.i84.prol, %.lr.ph.i81.prol ]
  %i.aue = sub nsw i64 %indvars.iv.i82.ph, %wide.trip.count.i65
  %i.auf = icmp ugt i64 %i.aue, -4
  br i1 %i.auf, label %._crit_edge.i86, label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %.lr.ph.i81.prol.loopexit, %.lr.ph.i81
  %indvars.iv.i82 = phi i64 [ %indvars.iv.next.i84.3, %.lr.ph.i81 ], [ %indvars.iv.i82.unr, %.lr.ph.i81.prol.loopexit ] ; 6 uses
  %i.aug = mul nsw i64 %indvars.iv.i82, %i.apq
  %gep.i83 = getelementptr [4 x i8], ptr %invariant.gep.i80, i64 %i.aug
  %i.auh = load i32, ptr %gep.i83, align 4, !tbaa !15
  %i.aui = getelementptr inbounds nuw [4 x i8], ptr %i.aqh, i64 %indvars.iv.i82
  store i32 %i.auh, ptr %i.aui, align 4, !tbaa !15
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i82, 1 ; 2 uses
  %i.auj = mul nsw i64 %indvars.iv.next.i84, %i.apq
  %gep.i83.1 = getelementptr [4 x i8], ptr %invariant.gep.i80, i64 %i.auj
  %i.auk = load i32, ptr %gep.i83.1, align 4, !tbaa !15
  %i.aul = getelementptr inbounds nuw [4 x i8], ptr %i.aqh, i64 %indvars.iv.next.i84
  store i32 %i.auk, ptr %i.aul, align 4, !tbaa !15
  %indvars.iv.next.i84.1 = add nuw nsw i64 %indvars.iv.i82, 2 ; 2 uses
  %i.aum = mul nsw i64 %indvars.iv.next.i84.1, %i.apq
  %gep.i83.2 = getelementptr [4 x i8], ptr %invariant.gep.i80, i64 %i.aum
  %i.aun = load i32, ptr %gep.i83.2, align 4, !tbaa !15
  %i.auo = getelementptr inbounds nuw [4 x i8], ptr %i.aqh, i64 %indvars.iv.next.i84.1
  store i32 %i.aun, ptr %i.auo, align 4, !tbaa !15
  %indvars.iv.next.i84.2 = add nuw nsw i64 %indvars.iv.i82, 3 ; 2 uses
  %i.aup = mul nsw i64 %indvars.iv.next.i84.2, %i.apq
  %gep.i83.3 = getelementptr [4 x i8], ptr %invariant.gep.i80, i64 %i.aup
  %i.auq = load i32, ptr %gep.i83.3, align 4, !tbaa !15
  %i.aur = getelementptr inbounds nuw [4 x i8], ptr %i.aqh, i64 %indvars.iv.next.i84.2
  store i32 %i.auq, ptr %i.aur, align 4, !tbaa !15
  %indvars.iv.next.i84.3 = add nuw nsw i64 %indvars.iv.i82, 4 ; 2 uses
  %exitcond.not.i85.3 = icmp eq i64 %indvars.iv.next.i84.3, %wide.trip.count.i65
  br i1 %exitcond.not.i85.3, label %._crit_edge.i86, label %.lr.ph.i81, !llvm.loop !110

._crit_edge.i86:                                  ; preds = %.lr.ph.i81.prol.loopexit, %.lr.ph.i81, %middle.block283
  br i1 %.not.i.i62, label %bb.n, label %._crit_edge.thread.i68

._crit_edge.thread.i68:                           ; preds = %._crit_edge.i86, %.preheader125.i66
  br i1 %i.aql, label %bb.m, label %sd_1d53.exit.i

bb.m:                                             ; preds = %._crit_edge.thread.i68
  %i.aus = load i32, ptr %i.app, align 4, !tbaa !15
  %i.aut = shl nsw i32 %i.aus, 1
  store i32 %i.aut, ptr %i.app, align 4, !tbaa !15
  br label %sd_1d53.exit.i

bb.n:                                             ; preds = %._crit_edge.i86
  %i.auu = load i32, ptr %i.aqo, align 4, !tbaa !15
  store i32 %i.auu, ptr %i.aqp, align 4, !tbaa !15
  %i.auv = load i32, ptr %i.aqs, align 4, !tbaa !15
  store i32 %i.auv, ptr %i.aqr, align 4, !tbaa !15
  %i.auw = load i32, ptr %i.aqt, align 4, !tbaa !15
  store i32 %i.auw, ptr %i.aqu, align 4, !tbaa !15
  %i.aux = load i32, ptr %i.aqv, align 4, !tbaa !15
  store i32 %i.aux, ptr %i.aqw, align 4, !tbaa !15
  br i1 %.not32.i.i, label %.preheader.i.i92, label %.lr.ph.i.i87.preheader

.lr.ph.i.i87.preheader:                           ; preds = %bb.n
  br i1 %min.iters.check257, label %.lr.ph.i.i87.preheader749, label %vector.body260

.lr.ph.i.i87.preheader749:                        ; preds = %vector.body260, %.lr.ph.i.i87.preheader
  %indvars.iv.i.i88.ph = phi i64 [ %i.arc, %.lr.ph.i.i87.preheader ], [ %i.asp, %vector.body260 ]
  br label %.lr.ph.i.i87

vector.body260:                                   ; preds = %.lr.ph.i.i87.preheader, %vector.body260
  %index261 = phi i64 [ %index.next267, %vector.body260 ], [ 0, %.lr.ph.i.i87.preheader ] ; 3 uses
  %i.auy = add i64 %i.arc, %index261              ; 3 uses
  %i.auz = add i64 %i.arb, %index261
  %i.ava = shl nsw i64 %i.auy, 3
  %i.avb = shl nsw i64 %i.auz, 3
  %i.avc = shl i64 %i.auy, 3
  %i.avd = shl i64 %i.auy, 3
  %i.ave = getelementptr inbounds i8, ptr %i.apj, i64 %i.ava ; 3 uses
  %i.avf = getelementptr inbounds i8, ptr %i.apj, i64 %i.avb
  %i.avg = getelementptr i8, ptr %i.apj, i64 %i.avc
  %i.avh = getelementptr i8, ptr %i.apj, i64 %i.avd
  %wide.vec262 = load <8 x i32>, ptr %i.ave, align 4, !tbaa !15
  %strided.vec263 = shufflevector <8 x i32> %wide.vec262, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.avi = getelementptr i8, ptr %i.ave, i64 4
  %wide.vec264 = load <8 x i32>, ptr %i.avi, align 4, !tbaa !15 ; 2 uses
  %strided.vec265 = shufflevector <8 x i32> %wide.vec264, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec266 = shufflevector <8 x i32> %wide.vec264, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.avj = add nsw <4 x i32> %strided.vec266, %strided.vec263
  %i.avk = ashr <4 x i32> %i.avj, splat (i32 1)
  %i.avl = getelementptr i8, ptr %i.ave, i64 4
  %i.avm = getelementptr i8, ptr %i.avf, i64 4
  %i.avn = getelementptr i8, ptr %i.avg, i64 20
  %i.avo = getelementptr i8, ptr %i.avh, i64 28
  %i.avp = sub nsw <4 x i32> %strided.vec265, %i.avk ; 4 uses
  %i.avq = extractelement <4 x i32> %i.avp, i64 0
  store i32 %i.avq, ptr %i.avl, align 4, !tbaa !15
  %i.avr = extractelement <4 x i32> %i.avp, i64 1
  store i32 %i.avr, ptr %i.avm, align 4, !tbaa !15
  %i.avs = extractelement <4 x i32> %i.avp, i64 2
  store i32 %i.avs, ptr %i.avn, align 4, !tbaa !15
  %i.avt = extractelement <4 x i32> %i.avp, i64 3
  store i32 %i.avt, ptr %i.avo, align 4, !tbaa !15
  %index.next267 = add nuw i64 %index261, 4       ; 2 uses
  %i.avu = icmp eq i64 %index.next267, %n.vec259
  br i1 %i.avu, label %.lr.ph.i.i87.preheader749, label %vector.body260, !llvm.loop !111

.preheader.i.i92:                                 ; preds = %.lr.ph.i.i87, %bb.n
  br i1 %i.arg, label %.lr.ph31.i.i.preheader, label %sd_1d53.exit.i

.lr.ph31.i.i.preheader:                           ; preds = %.preheader.i.i92
  %brmerge822 = select i1 %min.iters.check243, i1 true, i1 %i.asw
  br i1 %brmerge822, label %.lr.ph31.i.i.preheader748, label %vector.body246

.lr.ph31.i.i.preheader748:                        ; preds = %.lr.ph31.i.i.preheader, %vector.body246
  %indvars.iv33.i.i.ph = phi i64 [ %i.ata, %vector.body246 ], [ %i.arb, %.lr.ph31.i.i.preheader ] ; 5 uses
  %i.avv = sub i64 %wide.trip.count.i.i63, %indvars.iv33.i.i.ph
  %xtraiter751 = and i64 %i.avv, 1
  %lcmp.mod752.not = icmp eq i64 %xtraiter751, 0
  br i1 %lcmp.mod752.not, label %.lr.ph31.i.i.prol.loopexit, label %.lr.ph31.i.i.prol

.lr.ph31.i.i.prol:                                ; preds = %.lr.ph31.i.i.preheader748
  %.idx41.i.i.prol = shl i64 %indvars.iv33.i.i.ph, 3
  %i.avw = getelementptr i8, ptr %i.apj, i64 %.idx41.i.i.prol ; 4 uses
  %i.avx = getelementptr i8, ptr %i.avw, i64 -4
  %i.avy = load i32, ptr %i.avx, align 4, !tbaa !15
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avw, i64 4
  %i.awa = load i32, ptr %i.avz, align 4, !tbaa !15
  %i.awb = add i32 %i.avy, 2
  %i.awc = add i32 %i.awb, %i.awa
  %i.awd = ashr i32 %i.awc, 2
  %i.awe = load i32, ptr %i.avw, align 4, !tbaa !15
  %i.awf = add nsw i32 %i.awd, %i.awe
  store i32 %i.awf, ptr %i.avw, align 4, !tbaa !15
  %indvars.iv.next34.i.i.prol = add nuw nsw i64 %indvars.iv33.i.i.ph, 1
  br label %.lr.ph31.i.i.prol.loopexit

.lr.ph31.i.i.prol.loopexit:                       ; preds = %.lr.ph31.i.i.prol, %.lr.ph31.i.i.preheader748
  %indvars.iv33.i.i.unr = phi i64 [ %indvars.iv33.i.i.ph, %.lr.ph31.i.i.preheader748 ], [ %indvars.iv.next34.i.i.prol, %.lr.ph31.i.i.prol ]
  %i.awg = icmp eq i64 %indvars.iv33.i.i.ph, %i.atb
  br i1 %i.awg, label %sd_1d53.exit.i, label %.lr.ph31.i.i

vector.body246:                                   ; preds = %.lr.ph31.i.i.preheader, %vector.body246
  %index247 = phi i64 [ %index.next253, %vector.body246 ], [ 0, %.lr.ph31.i.i.preheader ] ; 2 uses
  %i.awh = add nuw i64 %i.arb, %index247          ; 4 uses
  %i.awi = shl i64 %i.awh, 3
  %i.awj = shl i64 %i.awh, 3
  %i.awk = shl i64 %i.awh, 3
  %i.awl = shl i64 %i.awh, 3
  %i.awm = getelementptr i8, ptr %i.apj, i64 %i.awi ; 3 uses
  %i.awn = getelementptr i8, ptr %i.apj, i64 %i.awj
  %i.awo = getelementptr i8, ptr %i.awn, i64 8
  %i.awp = getelementptr i8, ptr %i.apj, i64 %i.awk
  %i.awq = getelementptr i8, ptr %i.awp, i64 16
  %i.awr = getelementptr i8, ptr %i.apj, i64 %i.awl
  %i.aws = getelementptr i8, ptr %i.awr, i64 24
  %i.awt = getelementptr i8, ptr %i.awm, i64 -4
  %wide.vec248 = load <8 x i32>, ptr %i.awt, align 4, !tbaa !15
  %strided.vec249 = shufflevector <8 x i32> %wide.vec248, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec250 = load <8 x i32>, ptr %i.awm, align 4, !tbaa !15 ; 2 uses
  %strided.vec251 = shufflevector <8 x i32> %wide.vec250, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec252 = shufflevector <8 x i32> %wide.vec250, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.awu = add <4 x i32> %strided.vec249, splat (i32 2)
  %i.awv = add <4 x i32> %i.awu, %strided.vec252
  %i.aww = ashr <4 x i32> %i.awv, splat (i32 2)
  %i.awx = add nsw <4 x i32> %i.aww, %strided.vec251 ; 4 uses
  %i.awy = extractelement <4 x i32> %i.awx, i64 0
  store i32 %i.awy, ptr %i.awm, align 4, !tbaa !15
  %i.awz = extractelement <4 x i32> %i.awx, i64 1
  store i32 %i.awz, ptr %i.awo, align 4, !tbaa !15
  %i.axa = extractelement <4 x i32> %i.awx, i64 2
  store i32 %i.axa, ptr %i.awq, align 4, !tbaa !15
  %i.axb = extractelement <4 x i32> %i.awx, i64 3
  store i32 %i.axb, ptr %i.aws, align 4, !tbaa !15
  %index.next253 = add nuw i64 %index247, 4       ; 2 uses
  %i.axc = icmp eq i64 %index.next253, %n.vec245
  br i1 %i.axc, label %.lr.ph31.i.i.preheader748, label %vector.body246, !llvm.loop !112

.lr.ph.i.i87:                                     ; preds = %.lr.ph.i.i87.preheader749, %.lr.ph.i.i87
  %indvars.iv.i.i88 = phi i64 [ %indvars.iv.next.i.i90, %.lr.ph.i.i87 ], [ %indvars.iv.i.i88.ph, %.lr.ph.i.i87.preheader749 ] ; 2 uses
  %.idx.i.i89 = shl nsw i64 %indvars.iv.i.i88, 3
  %i.axd = getelementptr inbounds i8, ptr %i.apj, i64 %.idx.i.i89 ; 3 uses
  %i.axe = load i32, ptr %i.axd, align 4, !tbaa !15
  %i.axf = getelementptr i8, ptr %i.axd, i64 8
  %i.axg = load i32, ptr %i.axf, align 4, !tbaa !15
  %i.axh = add nsw i32 %i.axg, %i.axe
  %i.axi = ashr i32 %i.axh, 1
  %i.axj = getelementptr i8, ptr %i.axd, i64 4    ; 2 uses
  %i.axk = load i32, ptr %i.axj, align 4, !tbaa !15
  %i.axl = sub nsw i32 %i.axk, %i.axi
  store i32 %i.axl, ptr %i.axj, align 4, !tbaa !15
  %indvars.iv.next.i.i90 = add nsw i64 %indvars.iv.i.i88, 1 ; 2 uses
  %exitcond.not.i.i91 = icmp eq i64 %indvars.iv.next.i.i90, %wide.trip.count.i.i63
  br i1 %exitcond.not.i.i91, label %.preheader.i.i92, label %.lr.ph.i.i87, !llvm.loop !113

.lr.ph31.i.i:                                     ; preds = %.lr.ph31.i.i.prol.loopexit, %.lr.ph31.i.i
  %indvars.iv33.i.i = phi i64 [ %indvars.iv.next34.i.i.1, %.lr.ph31.i.i ], [ %indvars.iv33.i.i.unr, %.lr.ph31.i.i.prol.loopexit ] ; 3 uses
  %.idx41.i.i = shl i64 %indvars.iv33.i.i, 3
  %i.axm = getelementptr i8, ptr %i.apj, i64 %.idx41.i.i ; 4 uses
  %i.axn = getelementptr i8, ptr %i.axm, i64 -4
  %i.axo = load i32, ptr %i.axn, align 4, !tbaa !15
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axm, i64 4
  %i.axq = load i32, ptr %i.axp, align 4, !tbaa !15 ; 2 uses
  %i.axr = add i32 %i.axo, 2
  %i.axs = add i32 %i.axr, %i.axq
  %i.axt = ashr i32 %i.axs, 2
  %i.axu = load i32, ptr %i.axm, align 4, !tbaa !15
  %i.axv = add nsw i32 %i.axt, %i.axu
  store i32 %i.axv, ptr %i.axm, align 4, !tbaa !15
  %indvars.iv.next34.i.i = shl i64 %indvars.iv33.i.i, 3
  %i.axw = getelementptr i8, ptr %i.apj, i64 %indvars.iv.next34.i.i ; 2 uses
  %i.axx = getelementptr i8, ptr %i.axw, i64 8    ; 2 uses
  %i.axy = getelementptr i8, ptr %i.axw, i64 12
  %i.axz = load i32, ptr %i.axy, align 4, !tbaa !15
  %i.aya = add i32 %i.axq, 2
  %i.ayb = add i32 %i.aya, %i.axz
  %i.ayc = ashr i32 %i.ayb, 2
  %i.ayd = load i32, ptr %i.axx, align 4, !tbaa !15
  %i.aye = add nsw i32 %i.ayc, %i.ayd
  store i32 %i.aye, ptr %i.axx, align 4, !tbaa !15
  %indvars.iv.next34.i.i.1 = add nuw nsw i64 %indvars.iv33.i.i, 2 ; 2 uses
  %exitcond36.not.i.i.1 = icmp eq i64 %indvars.iv.next34.i.i.1, %wide.trip.count.i.i63
  br i1 %exitcond36.not.i.i.1, label %sd_1d53.exit.i, label %.lr.ph31.i.i, !llvm.loop !114

sd_1d53.exit.i:                                   ; preds = %.lr.ph31.i.i.prol.loopexit, %.lr.ph31.i.i, %.preheader.i.i92, %bb.m, %._crit_edge.thread.i68
  br i1 %i.arh, label %.lr.ph129.preheader.i77, label %._crit_edge130.i69

.lr.ph129.preheader.i77:                          ; preds = %sd_1d53.exit.i
  %invariant.gep212.i = getelementptr [4 x i8], ptr %1, i64 %indvars.iv175.i67 ; 6 uses
  %or.cond731.not = xor i1 %or.cond731, true
  %brmerge823 = select i1 %or.cond731.not, i1 true, i1 %found.conflict219
  br i1 %brmerge823, label %.lr.ph129.i78.preheader, label %vector.body224

vector.body224:                                   ; preds = %.lr.ph129.preheader.i77, %vector.body224
  %index225 = phi i64 [ %index.next230, %vector.body224 ], [ 0, %.lr.ph129.preheader.i77 ] ; 3 uses
  %i.ayf = shl nuw i64 %index225, 1
  %i.ayg = add nuw i64 %i.ayf, %i.aqg             ; 2 uses
  %i.ayh = getelementptr inbounds nuw [4 x i8], ptr %i.aqh, i64 %i.ayg
  %i.ayi = getelementptr [4 x i8], ptr %i.aqh, i64 %i.ayg
  %i.ayj = getelementptr i8, ptr %i.ayi, i64 32
  %wide.vec226 = load <8 x i32>, ptr %i.ayh, align 4, !tbaa !15, !alias.scope !163
  %strided.vec227 = shufflevector <8 x i32> %wide.vec226, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec228 = load <8 x i32>, ptr %i.ayj, align 4, !tbaa !15, !alias.scope !163
  %strided.vec229 = shufflevector <8 x i32> %wide.vec228, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ayk = getelementptr [4 x i8], ptr %invariant.gep212.i, i64 %index225 ; 2 uses
  %i.ayl = getelementptr i8, ptr %i.ayk, i64 16
  store <4 x i32> %strided.vec227, ptr %i.ayk, align 4, !tbaa !15, !alias.scope !164, !noalias !163
  store <4 x i32> %strided.vec229, ptr %i.ayl, align 4, !tbaa !15, !alias.scope !164, !noalias !163
  %index.next230 = add nuw i64 %index225, 8       ; 2 uses
  %i.aym = icmp eq i64 %index.next230, %n.vec223
  br i1 %i.aym, label %.lr.ph129.i78.preheader, label %vector.body224, !llvm.loop !118

.lr.ph129.i78.preheader:                          ; preds = %vector.body224, %.lr.ph129.preheader.i77
  %indvars.iv161.i.ph = phi i64 [ %i.aqg, %.lr.ph129.preheader.i77 ], [ %i.atg, %vector.body224 ] ; 2 uses
  %indvars.iv159.i.ph = phi i64 [ 0, %.lr.ph129.preheader.i77 ], [ %n.vec223, %vector.body224 ] ; 4 uses
  %i.ayn = sub nsw i64 %i.asi, %indvars.iv159.i.ph
  %i.ayo = sub nsw i64 %i.ash, %indvars.iv159.i.ph
  %xtraiter754 = and i64 %i.ayn, 3                ; 2 uses
  %lcmp.mod755.not = icmp eq i64 %xtraiter754, 0
  br i1 %lcmp.mod755.not, label %.lr.ph129.i78.prol.loopexit, label %.lr.ph129.i78.prol

.lr.ph129.i78.prol:                               ; preds = %.lr.ph129.i78.preheader, %.lr.ph129.i78.prol
  %indvars.iv161.i.prol = phi i64 [ %indvars.iv.next162.i.prol, %.lr.ph129.i78.prol ], [ %indvars.iv161.i.ph, %.lr.ph129.i78.preheader ] ; 2 uses
  %indvars.iv159.i.prol = phi i64 [ %indvars.iv.next160.i.prol, %.lr.ph129.i78.prol ], [ %indvars.iv159.i.ph, %.lr.ph129.i78.preheader ] ; 2 uses
  %prol.iter756 = phi i64 [ %prol.iter756.next, %.lr.ph129.i78.prol ], [ 0, %.lr.ph129.i78.preheader ]
  %i.ayp = getelementptr inbounds nuw [4 x i8], ptr %i.aqh, i64 %indvars.iv161.i.prol
  %i.ayq = load i32, ptr %i.ayp, align 4, !tbaa !15
  %i.ayr = mul nsw i64 %indvars.iv159.i.prol, %i.apq
  %gep213.i.prol = getelementptr [4 x i8], ptr %invariant.gep212.i, i64 %i.ayr
  store i32 %i.ayq, ptr %gep213.i.prol, align 4, !tbaa !15
  %indvars.iv.next162.i.prol = add nuw nsw i64 %indvars.iv161.i.prol, 2 ; 2 uses
  %indvars.iv.next160.i.prol = add nuw nsw i64 %indvars.iv159.i.prol, 1 ; 2 uses
  %prol.iter756.next = add i64 %prol.iter756, 1   ; 2 uses
  %prol.iter756.cmp.not = icmp eq i64 %prol.iter756.next, %xtraiter754
  br i1 %prol.iter756.cmp.not, label %.lr.ph129.i78.prol.loopexit, label %.lr.ph129.i78.prol, !llvm.loop !119

.lr.ph129.i78.prol.loopexit:                      ; preds = %.lr.ph129.i78.prol, %.lr.ph129.i78.preheader
  %indvars.iv161.i.unr = phi i64 [ %indvars.iv161.i.ph, %.lr.ph129.i78.preheader ], [ %indvars.iv.next162.i.prol, %.lr.ph129.i78.prol ]
  %indvars.iv159.i.unr = phi i64 [ %indvars.iv159.i.ph, %.lr.ph129.i78.preheader ], [ %indvars.iv.next160.i.prol, %.lr.ph129.i78.prol ]
  %i.ays = icmp ult i64 %i.ayo, 3
  br i1 %i.ays, label %._crit_edge130.i69, label %.lr.ph129.i78

.lr.ph129.i78:                                    ; preds = %.lr.ph129.i78.prol.loopexit, %.lr.ph129.i78
  %indvars.iv161.i = phi i64 [ %indvars.iv.next162.i.3, %.lr.ph129.i78 ], [ %indvars.iv161.i.unr, %.lr.ph129.i78.prol.loopexit ] ; 5 uses
  %indvars.iv159.i = phi i64 [ %indvars.iv.next160.i.3, %.lr.ph129.i78 ], [ %indvars.iv159.i.unr, %.lr.ph129.i78.prol.loopexit ] ; 5 uses
  %i.ayt = getelementptr inbounds nuw [4 x i8], ptr %i.aqh, i64 %indvars.iv161.i
  %i.ayu = load i32, ptr %i.ayt, align 4, !tbaa !15
  %i.ayv = mul nsw i64 %indvars.iv159.i, %i.apq
  %gep213.i = getelementptr [4 x i8], ptr %invariant.gep212.i, i64 %i.ayv
  store i32 %i.ayu, ptr %gep213.i, align 4, !tbaa !15
  %indvars.iv.next160.i = add nuw nsw i64 %indvars.iv159.i, 1
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %i.aqh, i64 %indvars.iv161.i
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 8
  %i.ayy = load i32, ptr %i.ayx, align 4, !tbaa !15
  %i.ayz = mul nsw i64 %indvars.iv.next160.i, %i.apq
  %gep213.i.1 = getelementptr [4 x i8], ptr %invariant.gep212.i, i64 %i.ayz
  store i32 %i.ayy, ptr %gep213.i.1, align 4, !tbaa !15
  %indvars.iv.next160.i.1 = add nuw nsw i64 %indvars.iv159.i, 2
  %i.aza = getelementptr inbounds nuw [4 x i8], ptr %i.aqh, i64 %indvars.iv161.i
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 16
  %i.azc = load i32, ptr %i.azb, align 4, !tbaa !15
  %i.azd = mul nsw i64 %indvars.iv.next160.i.1, %i.apq
  %gep213.i.2 = getelementptr [4 x i8], ptr %invariant.gep212.i, i64 %i.azd
  store i32 %i.azc, ptr %gep213.i.2, align 4, !tbaa !15
  %indvars.iv.next160.i.2 = add nuw nsw i64 %indvars.iv159.i, 3
  %i.aze = getelementptr inbounds nuw [4 x i8], ptr %i.aqh, i64 %indvars.iv161.i
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 24
  %i.azg = load i32, ptr %i.azf, align 4, !tbaa !15
  %i.azh = mul nsw i64 %indvars.iv.next160.i.2, %i.apq
  %gep213.i.3 = getelementptr [4 x i8], ptr %invariant.gep212.i, i64 %i.azh
  store i32 %i.azg, ptr %gep213.i.3, align 4, !tbaa !15
  %indvars.iv.next162.i.3 = add nuw nsw i64 %indvars.iv161.i, 8
  %indvars.iv.next160.i.3 = add nuw nsw i64 %indvars.iv159.i, 4 ; 2 uses
  %exitcond167.not.i.3 = icmp eq i64 %indvars.iv.next160.i.3, %wide.trip.count166.i
  br i1 %exitcond167.not.i.3, label %._crit_edge130.i69, label %.lr.ph129.i78, !llvm.loop !120

._crit_edge130.i69:                               ; preds = %.lr.ph129.i78.prol.loopexit, %.lr.ph129.i78, %sd_1d53.exit.i
  %.096.lcssa.i70 = phi i64 [ 0, %sd_1d53.exit.i ], [ %wide.trip.count166.i, %.lr.ph129.i78 ], [ %wide.trip.count166.i, %.lr.ph129.i78.prol.loopexit ] ; 5 uses
  br i1 %i.arj, label %.lr.ph134.preheader.i73, label %._crit_edge135.i71

.lr.ph134.preheader.i73:                          ; preds = %._crit_edge130.i69
  %invariant.gep214.i = getelementptr [4 x i8], ptr %1, i64 %indvars.iv175.i67 ; 3 uses
  br i1 %or.cond732, label %vector.memcheck185, label %.lr.ph134.i74.preheader

vector.memcheck185:                               ; preds = %.lr.ph134.preheader.i73
  %i.azi = shl nuw nsw i64 %.096.lcssa.i70, 2     ; 2 uses
  %scevgep186 = getelementptr i8, ptr %invariant.gep214.i, i64 %i.azi
  %scevgep189 = getelementptr i8, ptr %scevgep188, i64 %i.azi
  %bound0192 = icmp ult ptr %scevgep186, %scevgep191
  %bound1193 = icmp ult ptr %scevgep122, %scevgep189
  %found.conflict194 = and i1 %bound0192, %bound1193
  br i1 %found.conflict194, label %.lr.ph134.i74.preheader, label %vector.ph197

vector.ph197:                                     ; preds = %vector.memcheck185
  %i.azj = add i64 %.096.lcssa.i70, %n.vec198
  %i.azk = getelementptr [4 x i8], ptr %invariant.gep214.i, i64 %.096.lcssa.i70
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph197
  %index200 = phi i64 [ 0, %vector.ph197 ], [ %index.next205, %vector.body199 ] ; 3 uses
  %i.azl = shl i64 %index200, 1
  %i.azm = add i64 %i.azl, %i.aro                 ; 2 uses
  %i.azn = getelementptr inbounds [4 x i8], ptr %i.aqh, i64 %i.azm
  %i.azo = getelementptr [4 x i8], ptr %i.aqh, i64 %i.azm
  %i.azp = getelementptr i8, ptr %i.azo, i64 32
  %wide.vec201 = load <8 x i32>, ptr %i.azn, align 4, !tbaa !15, !alias.scope !165
  %strided.vec202 = shufflevector <8 x i32> %wide.vec201, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec203 = load <8 x i32>, ptr %i.azp, align 4, !tbaa !15, !alias.scope !165
  %strided.vec204 = shufflevector <8 x i32> %wide.vec203, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.azq = getelementptr [4 x i8], ptr %i.azk, i64 %index200 ; 2 uses
  %i.azr = getelementptr i8, ptr %i.azq, i64 16
  store <4 x i32> %strided.vec202, ptr %i.azq, align 4, !tbaa !15, !alias.scope !166, !noalias !165
  store <4 x i32> %strided.vec204, ptr %i.azr, align 4, !tbaa !15, !alias.scope !166, !noalias !165
  %index.next205 = add nuw i64 %index200, 8       ; 2 uses
  %i.azs = icmp eq i64 %index.next205, %n.vec198
  br i1 %i.azs, label %.lr.ph134.i74.preheader, label %vector.body199, !llvm.loop !124

.lr.ph134.i74.preheader:                          ; preds = %vector.body199, %vector.memcheck185, %.lr.ph134.preheader.i73
  %indvars.iv170.i.ph = phi i64 [ %i.aro, %vector.memcheck185 ], [ %i.aro, %.lr.ph134.preheader.i73 ], [ %i.atr, %vector.body199 ]
  %indvars.iv168.i75.ph = phi i64 [ %.096.lcssa.i70, %vector.memcheck185 ], [ %.096.lcssa.i70, %.lr.ph134.preheader.i73 ], [ %i.azj, %vector.body199 ]
  br label %.lr.ph134.i74

.lr.ph134.i74:                                    ; preds = %.lr.ph134.i74.preheader, %.lr.ph134.i74
  %indvars.iv170.i = phi i64 [ %indvars.iv.next171.i, %.lr.ph134.i74 ], [ %indvars.iv170.i.ph, %.lr.ph134.i74.preheader ] ; 2 uses
  %indvars.iv168.i75 = phi i64 [ %indvars.iv.next169.i76, %.lr.ph134.i74 ], [ %indvars.iv168.i75.ph, %.lr.ph134.i74.preheader ] ; 2 uses
  %i.azt = getelementptr inbounds [4 x i8], ptr %i.aqh, i64 %indvars.iv170.i
  %i.azu = load i32, ptr %i.azt, align 4, !tbaa !15
  %i.azv = mul nsw i64 %indvars.iv168.i75, %i.apq
  %gep215.i = getelementptr [4 x i8], ptr %invariant.gep214.i, i64 %i.azv
  store i32 %i.azu, ptr %gep215.i, align 4, !tbaa !15
  %indvars.iv.next171.i = add nsw i64 %indvars.iv170.i, 2 ; 2 uses
  %indvars.iv.next169.i76 = add nuw nsw i64 %indvars.iv168.i75, 1
  %i.azw = icmp slt i64 %indvars.iv.next171.i, %i.arp
  br i1 %i.azw, label %.lr.ph134.i74, label %._crit_edge135.i71, !llvm.loop !125

._crit_edge135.i71:                               ; preds = %.lr.ph134.i74, %._crit_edge130.i69
  %indvars.iv.next176.i72 = add nuw nsw i64 %indvars.iv175.i67, 1 ; 2 uses
  %exitcond179.not.i = icmp eq i64 %indvars.iv.next176.i72, %wide.trip.count178.i
  br i1 %exitcond179.not.i, label %._crit_edge137.i, label %.preheader125.i66, !llvm.loop !126

._crit_edge137.i:                                 ; preds = %._crit_edge135.i71, %bb.l
  %i.azx = zext i8 %i.aqc to i64                  ; 12 uses
  %i.azy = getelementptr inbounds nuw [4 x i8], ptr %i.apj, i64 %i.azx ; 20 uses
  %i.azz = icmp sgt i32 %i.aqa, 0
  br i1 %i.azz, label %.preheader.lr.ph.i44, label %._crit_edge152.i

.preheader.lr.ph.i44:                             ; preds = %._crit_edge137.i
  %.not.i106.i45 = icmp samesign ugt i32 %i.apy, 1
  %i.baa = icmp eq i8 %i.aqc, 1
  %i.bab = add nuw nsw i32 %i.aqd, 1
  %i.bac = add i32 %i.apy, %i.aqd                 ; 2 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %i.azy, i64 4
  %i.bae = getelementptr i8, ptr %i.azy, i64 -4
  %i.baf = zext nneg i32 %i.bac to i64
  %i.bag = getelementptr [4 x i8], ptr %i.apj, i64 %i.baf ; 4 uses
  %i.bah = getelementptr i8, ptr %i.bag, i64 -8
  %i.bai = getelementptr inbounds nuw i8, ptr %i.azy, i64 8
  %i.baj = getelementptr i8, ptr %i.azy, i64 -8
  %i.bak = getelementptr i8, ptr %i.bag, i64 -12
  %i.bal = getelementptr inbounds nuw i8, ptr %i.bag, i64 4
  %i.bam = lshr i32 %i.bab, 1                     ; 3 uses
  %i.ban = add i32 %i.bac, 1
  %i.bao = lshr i32 %i.ban, 1                     ; 3 uses
  %.not32.i107.i = icmp samesign ugt i32 %i.bam, %i.bao
  %i.bap = add nuw nsw i64 %i.azx, 1
  %i.baq = lshr i64 %i.bap, 1                     ; 10 uses
  %i.bar = add nsw i64 %i.baq, -1                 ; 3 uses
  %i.bas = trunc nuw nsw i64 %i.baq to i32
  %i.bat = sub nsw i32 %i.bas, %i.bam
  %i.bau = add i32 %i.bat, %i.bao
  %wide.trip.count.i109.i = zext i32 %i.bau to i64 ; 7 uses
  %i.bav = icmp samesign ult i32 %i.bam, %i.bao
  %i.baw = icmp sgt i32 %i.apy, %i.aqd
  %i.bax = sub nsw i32 1, %i.aqd                  ; 2 uses
  %i.bay = icmp slt i32 %i.bax, %i.apy
  %i.baz = xor i32 %i.aqd, -1
  %i.bba = add i32 %i.apy, %i.baz                 ; 4 uses
  %i.bbb = lshr i32 %i.bba, 1
  %i.bbc = add nuw i32 %i.bbb, 1
  %i.bbd = sext i32 %i.bax to i64                 ; 4 uses
  %i.bbe = sext i32 %i.apy to i64                 ; 3 uses
  %wide.trip.count204.i46 = zext nneg i32 %i.aqa to i64 ; 2 uses
  %wide.trip.count183.i = zext i32 %i.apy to i64  ; 5 uses
  %wide.trip.count192.i47 = zext i32 %i.bbc to i64 ; 5 uses
  %i.bbf = sub nsw i64 3, %i.azx
  %smax = tail call i64 @llvm.smax.i64(i64 %i.bbf, i64 %i.bbe)
  %i.bbg = add i64 %smax, -2
  %i.bbh = add i64 %i.bbg, %i.azx
  %i.bbi = lshr i64 %i.bbh, 1                     ; 2 uses
  %i.bbj = shl i64 %i.bbi, 2
  %i.bbk = shl i64 %i.bbi, 3
  %scevgep113 = getelementptr i8, ptr %scevgep112, i64 %i.bbk
  %i.bbl = add nsw i64 %wide.trip.count204.i46, -1
  %i.bbm = mul i64 %i.aps, %i.bbl
  %i.bbn = lshr i32 %i.bba, 1
  %i.bbo = zext nneg i32 %i.bbn to i64            ; 2 uses
  %i.bbp = shl nuw nsw i64 %i.bbo, 2
  %i.bbq = getelementptr i8, ptr %scevgep118, i64 %i.bbm
  %scevgep119 = getelementptr i8, ptr %i.bbq, i64 %i.bbp
  %i.bbr = shl nuw nsw i64 %i.azx, 3
  %scevgep121 = getelementptr i8, ptr %scevgep120, i64 %i.bbr
  %i.bbs = add nuw nsw i64 %i.bbo, %i.azx
  %i.bbt = shl nuw nsw i64 %i.bbs, 3
  %scevgep123 = getelementptr i8, ptr %scevgep122, i64 %i.bbt
  %i.bbu = xor i64 %i.baq, -1
  %i.bbv = add nsw i64 %i.bbu, %wide.trip.count.i109.i ; 2 uses
  %i.bbw = shl nuw nsw i64 %i.baq, 3              ; 2 uses
  %scevgep142 = getelementptr i8, ptr %scevgep141, i64 %i.bbw ; 2 uses
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.bbw ; 2 uses
  %i.bbx = shl nuw nsw i64 %i.azx, 2
  %i.bby = lshr i32 %i.bba, 1
  %i.bbz = zext nneg i32 %i.bby to i64            ; 2 uses
  %i.bca = add nuw nsw i64 %i.bbz, 1
  %i.bcb = getelementptr i8, ptr %1, i64 %i.bbj
  %i.bcc = getelementptr i8, ptr %i.bcb, i64 4
  %min.iters.check175 = icmp ult i32 %i.apy, 8
  %invariant.op802.reass = add i64 %i.bbx, %invariant.op804
  %n.vec177 = and i64 %wide.trip.count183.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec177, %wide.trip.count183.i
  %xtraiter757 = and i64 %wide.trip.count183.i, 3 ; 2 uses
  %lcmp.mod758.not = icmp eq i64 %xtraiter757, 0
  %i.bcd = add nuw nsw i64 %wide.trip.count.i109.i, 1
  %i.bce = sub nsw i64 %i.bcd, %i.baq             ; 3 uses
  %min.iters.check160 = icmp ult i64 %i.bce, 5
  %i.bcf = and i64 %i.bce, 3                      ; 2 uses
  %i.bcg = icmp eq i64 %i.bcf, 0
  %i.bch = select i1 %i.bcg, i64 4, i64 %i.bcf
  %n.vec162 = sub nsw i64 %i.bce, %i.bch          ; 2 uses
  %i.bci = add nsw i64 %i.bar, %n.vec162
  %i.bcj = sub nsw i64 %wide.trip.count.i109.i, %i.baq ; 3 uses
  %min.iters.check146 = icmp ult i64 %i.bcj, 13
  %mul.result = shl nsw i64 %i.bbv, 3             ; 2 uses
  %mul.overflow = icmp ugt i64 %i.bbv, 2305843009213693951
  %i.bck = getelementptr i8, ptr %scevgep142, i64 %mul.result
  %i.bcl = icmp ult ptr %i.bck, %scevgep142
  %i.bcm = getelementptr i8, ptr %scevgep144, i64 %mul.result
  %i.bcn = icmp ult ptr %i.bcm, %scevgep144
  %i.bco = or i1 %i.bcn, %mul.overflow
  %i.bcp = or i1 %i.bcl, %i.bco
  %i.bcq = and i64 %i.bcj, 3                      ; 2 uses
  %i.bcr = icmp eq i64 %i.bcq, 0
  %i.bcs = select i1 %i.bcr, i64 4, i64 %i.bcq
  %n.vec148 = sub nsw i64 %i.bcj, %i.bcs          ; 2 uses
  %i.bct = add nsw i64 %i.baq, %n.vec148
  %i.bcu = add nsw i64 %wide.trip.count.i109.i, -1
  %min.iters.check128 = icmp ult i32 %i.bba, 16
  %bound0124 = icmp ult ptr %1, %scevgep123
  %bound1125 = icmp ult ptr %scevgep121, %scevgep119
  %found.conflict126 = and i1 %bound0124, %bound1125
  %i.bcv = or i1 %found.conflict126, %stride.check
  %i.bcw = and i64 %wide.trip.count192.i47, 7     ; 2 uses
  %i.bcx = icmp eq i64 %i.bcw, 0
  %i.bcy = select i1 %i.bcx, i64 8, i64 %i.bcw
  %n.vec130 = sub nsw i64 %wide.trip.count192.i47, %i.bcy ; 3 uses
  %i.bcz = shl nsw i64 %n.vec130, 1
  %i.bda = add nsw i64 %i.bcz, %i.azx
  %i.bdb = sub nsw i64 3, %i.azx
  %i.bdc = tail call i64 @llvm.smax.i64(i64 %i.bdb, i64 %i.bbe)
  %i.bdd = add i64 %i.bdc, %i.azx
  %i.bde = add i64 %i.bdd, -2                     ; 2 uses
  %i.bdf = lshr i64 %i.bde, 1
  %i.bdg = add nuw i64 %i.bdf, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bde, 16
  %i.bdh = and i64 %i.bdg, 7                      ; 2 uses
  %i.bdi = icmp eq i64 %i.bdh, 0
  %i.bdj = select i1 %i.bdi, i64 8, i64 %i.bdh
  %n.vec = sub i64 %i.bdg, %i.bdj                 ; 3 uses
  %i.bdk = shl i64 %n.vec, 1
  %i.bdl = add i64 %i.bdk, %i.bbd
  br label %.preheader.i48

.preheader.i48:                                   ; preds = %._crit_edge150.i, %.preheader.lr.ph.i44
  %indvars.iv201.i49 = phi i64 [ 0, %.preheader.lr.ph.i44 ], [ %indvars.iv.next202.i51, %._crit_edge150.i ] ; 6 uses
  %i.bdm = mul i64 %i.apr, %indvars.iv201.i49
  %scevgep110 = getelementptr i8, ptr %i.bcc, i64 %i.bdm
  br i1 %i.aqi, label %.lr.ph139.i, label %._crit_edge140.thread.i

.lr.ph139.i:                                      ; preds = %.preheader.i48
  %i.bdn = mul i64 %i.apv, %indvars.iv201.i49
  %i.bdo = mul nsw i64 %indvars.iv201.i49, %i.apq
  %invariant.gep216.i = getelementptr [4 x i8], ptr %1, i64 %i.bdo ; 6 uses
  %.reass803 = add i64 %i.bdn, %invariant.op802.reass
  %diff.check = icmp ult i64 %.reass803, 31
  %or.cond733 = select i1 %min.iters.check175, i1 true, i1 %diff.check
  br i1 %or.cond733, label %scalar.ph174.preheader, label %vector.body178

vector.body178:                                   ; preds = %.lr.ph139.i, %vector.body178
  %index179 = phi i64 [ %index.next181, %vector.body178 ], [ 0, %.lr.ph139.i ] ; 3 uses
  %i.bdp = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %index179 ; 2 uses
  %i.bdq = getelementptr i8, ptr %i.bdp, i64 16
  %wide.load = load <4 x i32>, ptr %i.bdp, align 4, !tbaa !15
  %wide.load180 = load <4 x i32>, ptr %i.bdq, align 4, !tbaa !15
  %i.bdr = getelementptr inbounds nuw [4 x i8], ptr %i.azy, i64 %index179 ; 2 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 16
  store <4 x i32> %wide.load, ptr %i.bdr, align 4, !tbaa !15
  store <4 x i32> %wide.load180, ptr %i.bds, align 4, !tbaa !15
  %index.next181 = add nuw i64 %index179, 8       ; 2 uses
  %i.bdt = icmp eq i64 %index.next181, %n.vec177
  br i1 %i.bdt, label %middle.block182, label %vector.body178, !llvm.loop !127

middle.block182:                                  ; preds = %vector.body178
  br i1 %cmp.n, label %._crit_edge140.i, label %scalar.ph174.preheader

scalar.ph174.preheader:                           ; preds = %.lr.ph139.i, %middle.block182
  %indvars.iv180.i58.ph = phi i64 [ 0, %.lr.ph139.i ], [ %n.vec177, %middle.block182 ] ; 3 uses
  br i1 %lcmp.mod758.not, label %scalar.ph174.prol.loopexit, label %scalar.ph174.prol

scalar.ph174.prol:                                ; preds = %scalar.ph174.preheader, %scalar.ph174.prol
  %indvars.iv180.i58.prol = phi i64 [ %indvars.iv.next181.i59.prol, %scalar.ph174.prol ], [ %indvars.iv180.i58.ph, %scalar.ph174.preheader ] ; 3 uses
  %prol.iter759 = phi i64 [ %prol.iter759.next, %scalar.ph174.prol ], [ 0, %scalar.ph174.preheader ]
  %gep217.i.prol = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %indvars.iv180.i58.prol
  %i.bdu = load i32, ptr %gep217.i.prol, align 4, !tbaa !15
  %i.bdv = getelementptr inbounds nuw [4 x i8], ptr %i.azy, i64 %indvars.iv180.i58.prol
  store i32 %i.bdu, ptr %i.bdv, align 4, !tbaa !15
  %indvars.iv.next181.i59.prol = add nuw nsw i64 %indvars.iv180.i58.prol, 1 ; 2 uses
  %prol.iter759.next = add i64 %prol.iter759, 1   ; 2 uses
  %prol.iter759.cmp.not = icmp eq i64 %prol.iter759.next, %xtraiter757
  br i1 %prol.iter759.cmp.not, label %scalar.ph174.prol.loopexit, label %scalar.ph174.prol, !llvm.loop !128

scalar.ph174.prol.loopexit:                       ; preds = %scalar.ph174.prol, %scalar.ph174.preheader
  %indvars.iv180.i58.unr = phi i64 [ %indvars.iv180.i58.ph, %scalar.ph174.preheader ], [ %indvars.iv.next181.i59.prol, %scalar.ph174.prol ]
  %i.bdw = sub nsw i64 %indvars.iv180.i58.ph, %wide.trip.count183.i
  %i.bdx = icmp ugt i64 %i.bdw, -4
  br i1 %i.bdx, label %._crit_edge140.i, label %scalar.ph174

scalar.ph174:                                     ; preds = %scalar.ph174.prol.loopexit, %scalar.ph174
  %indvars.iv180.i58 = phi i64 [ %indvars.iv.next181.i59.3, %scalar.ph174 ], [ %indvars.iv180.i58.unr, %scalar.ph174.prol.loopexit ] ; 6 uses
  %gep217.i = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %indvars.iv180.i58
  %i.bdy = load i32, ptr %gep217.i, align 4, !tbaa !15
  %i.bdz = getelementptr inbounds nuw [4 x i8], ptr %i.azy, i64 %indvars.iv180.i58
  store i32 %i.bdy, ptr %i.bdz, align 4, !tbaa !15
  %indvars.iv.next181.i59 = add nuw nsw i64 %indvars.iv180.i58, 1 ; 2 uses
  %gep217.i.1 = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %indvars.iv.next181.i59
  %i.bea = load i32, ptr %gep217.i.1, align 4, !tbaa !15
  %i.beb = getelementptr inbounds nuw [4 x i8], ptr %i.azy, i64 %indvars.iv.next181.i59
  store i32 %i.bea, ptr %i.beb, align 4, !tbaa !15
  %indvars.iv.next181.i59.1 = add nuw nsw i64 %indvars.iv180.i58, 2 ; 2 uses
  %gep217.i.2 = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %indvars.iv.next181.i59.1
  %i.bec = load i32, ptr %gep217.i.2, align 4, !tbaa !15
  %i.bed = getelementptr inbounds nuw [4 x i8], ptr %i.azy, i64 %indvars.iv.next181.i59.1
  store i32 %i.bec, ptr %i.bed, align 4, !tbaa !15
  %indvars.iv.next181.i59.2 = add nuw nsw i64 %indvars.iv180.i58, 3 ; 2 uses
  %gep217.i.3 = getelementptr [4 x i8], ptr %invariant.gep216.i, i64 %indvars.iv.next181.i59.2
  %i.bee = load i32, ptr %gep217.i.3, align 4, !tbaa !15
  %i.bef = getelementptr inbounds nuw [4 x i8], ptr %i.azy, i64 %indvars.iv.next181.i59.2
  store i32 %i.bee, ptr %i.bef, align 4, !tbaa !15
  %indvars.iv.next181.i59.3 = add nuw nsw i64 %indvars.iv180.i58, 4 ; 2 uses
  %exitcond184.not.i.3 = icmp eq i64 %indvars.iv.next181.i59.3, %wide.trip.count183.i
  br i1 %exitcond184.not.i.3, label %._crit_edge140.i, label %scalar.ph174, !llvm.loop !129

._crit_edge140.i:                                 ; preds = %scalar.ph174.prol.loopexit, %scalar.ph174, %middle.block182
  br i1 %.not.i106.i45, label %bb.p, label %._crit_edge140.thread.i

._crit_edge140.thread.i:                          ; preds = %._crit_edge140.i, %.preheader.i48
  br i1 %i.baa, label %bb.o, label %sd_1d53.exit123.i

bb.o:                                             ; preds = %._crit_edge140.thread.i
  %i.beg = load i32, ptr %i.app, align 4, !tbaa !15
  %i.beh = shl nsw i32 %i.beg, 1
  store i32 %i.beh, ptr %i.app, align 4, !tbaa !15
  br label %sd_1d53.exit123.i

bb.p:                                             ; preds = %._crit_edge140.i
  %i.bei = load i32, ptr %i.bad, align 4, !tbaa !15
  store i32 %i.bei, ptr %i.bae, align 4, !tbaa !15
  %i.bej = load i32, ptr %i.bah, align 4, !tbaa !15
  store i32 %i.bej, ptr %i.bag, align 4, !tbaa !15
  %i.bek = load i32, ptr %i.bai, align 4, !tbaa !15
  store i32 %i.bek, ptr %i.baj, align 4, !tbaa !15
  %i.bel = load i32, ptr %i.bak, align 4, !tbaa !15
  store i32 %i.bel, ptr %i.bal, align 4, !tbaa !15
  br i1 %.not32.i107.i, label %.preheader.i115.i, label %.lr.ph.i110.i.preheader

.lr.ph.i110.i.preheader:                          ; preds = %bb.p
  br i1 %min.iters.check160, label %.lr.ph.i110.i.preheader747, label %vector.body163

.lr.ph.i110.i.preheader747:                       ; preds = %vector.body163, %.lr.ph.i110.i.preheader
  %indvars.iv.i111.i.ph = phi i64 [ %i.bar, %.lr.ph.i110.i.preheader ], [ %i.bci, %vector.body163 ]
  br label %.lr.ph.i110.i

vector.body163:                                   ; preds = %.lr.ph.i110.i.preheader, %vector.body163
  %index164 = phi i64 [ %index.next170, %vector.body163 ], [ 0, %.lr.ph.i110.i.preheader ] ; 3 uses
  %i.bem = add i64 %i.bar, %index164              ; 3 uses
  %i.ben = add i64 %i.baq, %index164
  %i.beo = shl nsw i64 %i.bem, 3
  %i.bep = shl nsw i64 %i.ben, 3
  %i.beq = shl i64 %i.bem, 3
  %i.ber = shl i64 %i.bem, 3
  %i.bes = getelementptr inbounds i8, ptr %i.apj, i64 %i.beo ; 3 uses
  %i.bet = getelementptr inbounds i8, ptr %i.apj, i64 %i.bep
  %i.beu = getelementptr i8, ptr %i.apj, i64 %i.beq
  %i.bev = getelementptr i8, ptr %i.apj, i64 %i.ber
  %wide.vec165 = load <8 x i32>, ptr %i.bes, align 4, !tbaa !15
  %strided.vec166 = shufflevector <8 x i32> %wide.vec165, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bew = getelementptr i8, ptr %i.bes, i64 4
  %wide.vec167 = load <8 x i32>, ptr %i.bew, align 4, !tbaa !15 ; 2 uses
  %strided.vec168 = shufflevector <8 x i32> %wide.vec167, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec169 = shufflevector <8 x i32> %wide.vec167, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bex = add nsw <4 x i32> %strided.vec169, %strided.vec166
  %i.bey = ashr <4 x i32> %i.bex, splat (i32 1)
  %i.bez = getelementptr i8, ptr %i.bes, i64 4
  %i.bfa = getelementptr i8, ptr %i.bet, i64 4
  %i.bfb = getelementptr i8, ptr %i.beu, i64 20
  %i.bfc = getelementptr i8, ptr %i.bev, i64 28
  %i.bfd = sub nsw <4 x i32> %strided.vec168, %i.bey ; 4 uses
  %i.bfe = extractelement <4 x i32> %i.bfd, i64 0
  store i32 %i.bfe, ptr %i.bez, align 4, !tbaa !15
  %i.bff = extractelement <4 x i32> %i.bfd, i64 1
  store i32 %i.bff, ptr %i.bfa, align 4, !tbaa !15
  %i.bfg = extractelement <4 x i32> %i.bfd, i64 2
  store i32 %i.bfg, ptr %i.bfb, align 4, !tbaa !15
  %i.bfh = extractelement <4 x i32> %i.bfd, i64 3
  store i32 %i.bfh, ptr %i.bfc, align 4, !tbaa !15
  %index.next170 = add nuw i64 %index164, 4       ; 2 uses
  %i.bfi = icmp eq i64 %index.next170, %n.vec162
  br i1 %i.bfi, label %.lr.ph.i110.i.preheader747, label %vector.body163, !llvm.loop !130

.preheader.i115.i:                                ; preds = %.lr.ph.i110.i, %bb.p
  br i1 %i.bav, label %.lr.ph31.i118.i.preheader, label %sd_1d53.exit123.i

.lr.ph31.i118.i.preheader:                        ; preds = %.preheader.i115.i
  %brmerge824 = select i1 %min.iters.check146, i1 true, i1 %i.bcp
  br i1 %brmerge824, label %.lr.ph31.i118.i.preheader746, label %vector.body149

.lr.ph31.i118.i.preheader746:                     ; preds = %.lr.ph31.i118.i.preheader, %vector.body149
  %indvars.iv33.i119.i.ph = phi i64 [ %i.bct, %vector.body149 ], [ %i.baq, %.lr.ph31.i118.i.preheader ] ; 5 uses
  %i.bfj = sub i64 %wide.trip.count.i109.i, %indvars.iv33.i119.i.ph
  %xtraiter760 = and i64 %i.bfj, 1
  %lcmp.mod761.not = icmp eq i64 %xtraiter760, 0
  br i1 %lcmp.mod761.not, label %.lr.ph31.i118.i.prol.loopexit, label %.lr.ph31.i118.i.prol

.lr.ph31.i118.i.prol:                             ; preds = %.lr.ph31.i118.i.preheader746
  %.idx41.i120.i.prol = shl i64 %indvars.iv33.i119.i.ph, 3
  %i.bfk = getelementptr i8, ptr %i.apj, i64 %.idx41.i120.i.prol ; 4 uses
  %i.bfl = getelementptr i8, ptr %i.bfk, i64 -4
  %i.bfm = load i32, ptr %i.bfl, align 4, !tbaa !15
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfk, i64 4
  %i.bfo = load i32, ptr %i.bfn, align 4, !tbaa !15
  %i.bfp = add i32 %i.bfm, 2
  %i.bfq = add i32 %i.bfp, %i.bfo
  %i.bfr = ashr i32 %i.bfq, 2
  %i.bfs = load i32, ptr %i.bfk, align 4, !tbaa !15
  %i.bft = add nsw i32 %i.bfr, %i.bfs
  store i32 %i.bft, ptr %i.bfk, align 4, !tbaa !15
  %indvars.iv.next34.i121.i.prol = add nuw nsw i64 %indvars.iv33.i119.i.ph, 1
  br label %.lr.ph31.i118.i.prol.loopexit

.lr.ph31.i118.i.prol.loopexit:                    ; preds = %.lr.ph31.i118.i.prol, %.lr.ph31.i118.i.preheader746
  %indvars.iv33.i119.i.unr = phi i64 [ %indvars.iv33.i119.i.ph, %.lr.ph31.i118.i.preheader746 ], [ %indvars.iv.next34.i121.i.prol, %.lr.ph31.i118.i.prol ]
  %i.bfu = icmp eq i64 %indvars.iv33.i119.i.ph, %i.bcu
  br i1 %i.bfu, label %sd_1d53.exit123.i, label %.lr.ph31.i118.i

vector.body149:                                   ; preds = %.lr.ph31.i118.i.preheader, %vector.body149
  %index150 = phi i64 [ %index.next156, %vector.body149 ], [ 0, %.lr.ph31.i118.i.preheader ] ; 2 uses
  %i.bfv = add nuw i64 %i.baq, %index150          ; 4 uses
  %i.bfw = shl i64 %i.bfv, 3
  %i.bfx = shl i64 %i.bfv, 3
  %i.bfy = shl i64 %i.bfv, 3
  %i.bfz = shl i64 %i.bfv, 3
  %i.bga = getelementptr i8, ptr %i.apj, i64 %i.bfw ; 3 uses
  %i.bgb = getelementptr i8, ptr %i.apj, i64 %i.bfx
  %i.bgc = getelementptr i8, ptr %i.bgb, i64 8
  %i.bgd = getelementptr i8, ptr %i.apj, i64 %i.bfy
  %i.bge = getelementptr i8, ptr %i.bgd, i64 16
  %i.bgf = getelementptr i8, ptr %i.apj, i64 %i.bfz
  %i.bgg = getelementptr i8, ptr %i.bgf, i64 24
  %i.bgh = getelementptr i8, ptr %i.bga, i64 -4
  %wide.vec151 = load <8 x i32>, ptr %i.bgh, align 4, !tbaa !15
  %strided.vec152 = shufflevector <8 x i32> %wide.vec151, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec153 = load <8 x i32>, ptr %i.bga, align 4, !tbaa !15 ; 2 uses
  %strided.vec154 = shufflevector <8 x i32> %wide.vec153, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec155 = shufflevector <8 x i32> %wide.vec153, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bgi = add <4 x i32> %strided.vec152, splat (i32 2)
  %i.bgj = add <4 x i32> %i.bgi, %strided.vec155
  %i.bgk = ashr <4 x i32> %i.bgj, splat (i32 2)
  %i.bgl = add nsw <4 x i32> %i.bgk, %strided.vec154 ; 4 uses
  %i.bgm = extractelement <4 x i32> %i.bgl, i64 0
  store i32 %i.bgm, ptr %i.bga, align 4, !tbaa !15
  %i.bgn = extractelement <4 x i32> %i.bgl, i64 1
  store i32 %i.bgn, ptr %i.bgc, align 4, !tbaa !15
  %i.bgo = extractelement <4 x i32> %i.bgl, i64 2
  store i32 %i.bgo, ptr %i.bge, align 4, !tbaa !15
  %i.bgp = extractelement <4 x i32> %i.bgl, i64 3
  store i32 %i.bgp, ptr %i.bgg, align 4, !tbaa !15
  %index.next156 = add nuw i64 %index150, 4       ; 2 uses
  %i.bgq = icmp eq i64 %index.next156, %n.vec148
  br i1 %i.bgq, label %.lr.ph31.i118.i.preheader746, label %vector.body149, !llvm.loop !131

.lr.ph.i110.i:                                    ; preds = %.lr.ph.i110.i.preheader747, %.lr.ph.i110.i
  %indvars.iv.i111.i = phi i64 [ %indvars.iv.next.i113.i, %.lr.ph.i110.i ], [ %indvars.iv.i111.i.ph, %.lr.ph.i110.i.preheader747 ] ; 2 uses
  %.idx.i112.i = shl nsw i64 %indvars.iv.i111.i, 3
  %i.bgr = getelementptr inbounds i8, ptr %i.apj, i64 %.idx.i112.i ; 3 uses
  %i.bgs = load i32, ptr %i.bgr, align 4, !tbaa !15
  %i.bgt = getelementptr i8, ptr %i.bgr, i64 8
  %i.bgu = load i32, ptr %i.bgt, align 4, !tbaa !15
  %i.bgv = add nsw i32 %i.bgu, %i.bgs
  %i.bgw = ashr i32 %i.bgv, 1
  %i.bgx = getelementptr i8, ptr %i.bgr, i64 4    ; 2 uses
  %i.bgy = load i32, ptr %i.bgx, align 4, !tbaa !15
  %i.bgz = sub nsw i32 %i.bgy, %i.bgw
  store i32 %i.bgz, ptr %i.bgx, align 4, !tbaa !15
  %indvars.iv.next.i113.i = add nsw i64 %indvars.iv.i111.i, 1 ; 2 uses
  %exitcond.not.i114.i60 = icmp eq i64 %indvars.iv.next.i113.i, %wide.trip.count.i109.i
  br i1 %exitcond.not.i114.i60, label %.preheader.i115.i, label %.lr.ph.i110.i, !llvm.loop !132

.lr.ph31.i118.i:                                  ; preds = %.lr.ph31.i118.i.prol.loopexit, %.lr.ph31.i118.i
  %indvars.iv33.i119.i = phi i64 [ %indvars.iv.next34.i121.i.1, %.lr.ph31.i118.i ], [ %indvars.iv33.i119.i.unr, %.lr.ph31.i118.i.prol.loopexit ] ; 3 uses
  %.idx41.i120.i = shl i64 %indvars.iv33.i119.i, 3
  %i.bha = getelementptr i8, ptr %i.apj, i64 %.idx41.i120.i ; 4 uses
  %i.bhb = getelementptr i8, ptr %i.bha, i64 -4
  %i.bhc = load i32, ptr %i.bhb, align 4, !tbaa !15
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bha, i64 4
  %i.bhe = load i32, ptr %i.bhd, align 4, !tbaa !15 ; 2 uses
  %i.bhf = add i32 %i.bhc, 2
  %i.bhg = add i32 %i.bhf, %i.bhe
  %i.bhh = ashr i32 %i.bhg, 2
  %i.bhi = load i32, ptr %i.bha, align 4, !tbaa !15
  %i.bhj = add nsw i32 %i.bhh, %i.bhi
  store i32 %i.bhj, ptr %i.bha, align 4, !tbaa !15
  %indvars.iv.next34.i121.i = shl i64 %indvars.iv33.i119.i, 3
  %i.bhk = getelementptr i8, ptr %i.apj, i64 %indvars.iv.next34.i121.i ; 2 uses
  %i.bhl = getelementptr i8, ptr %i.bhk, i64 8    ; 2 uses
  %i.bhm = getelementptr i8, ptr %i.bhk, i64 12
  %i.bhn = load i32, ptr %i.bhm, align 4, !tbaa !15
  %i.bho = add i32 %i.bhe, 2
  %i.bhp = add i32 %i.bho, %i.bhn
  %i.bhq = ashr i32 %i.bhp, 2
  %i.bhr = load i32, ptr %i.bhl, align 4, !tbaa !15
  %i.bhs = add nsw i32 %i.bhq, %i.bhr
  store i32 %i.bhs, ptr %i.bhl, align 4, !tbaa !15
  %indvars.iv.next34.i121.i.1 = add nuw nsw i64 %indvars.iv33.i119.i, 2 ; 2 uses
  %exitcond36.not.i122.i.1 = icmp eq i64 %indvars.iv.next34.i121.i.1, %wide.trip.count.i109.i
  br i1 %exitcond36.not.i122.i.1, label %sd_1d53.exit123.i, label %.lr.ph31.i118.i, !llvm.loop !133

sd_1d53.exit123.i:                                ; preds = %.lr.ph31.i118.i.prol.loopexit, %.lr.ph31.i118.i, %.preheader.i115.i, %bb.o, %._crit_edge140.thread.i
  br i1 %i.baw, label %.lr.ph143.i, label %._crit_edge144.i

.lr.ph143.i:                                      ; preds = %sd_1d53.exit123.i
  %i.bht = mul nsw i64 %indvars.iv201.i49, %i.apq
  %invariant.gep218.i = getelementptr [4 x i8], ptr %1, i64 %i.bht ; 6 uses
  %brmerge825 = select i1 %min.iters.check128, i1 true, i1 %i.bcv
  br i1 %brmerge825, label %scalar.ph127.preheader, label %vector.body131

vector.body131:                                   ; preds = %.lr.ph143.i, %vector.body131
  %index132 = phi i64 [ %index.next137, %vector.body131 ], [ 0, %.lr.ph143.i ] ; 3 uses
  %i.bhu = shl nuw i64 %index132, 1
  %i.bhv = add nuw i64 %i.bhu, %i.azx             ; 2 uses
  %i.bhw = getelementptr inbounds nuw [4 x i8], ptr %i.azy, i64 %i.bhv
  %i.bhx = getelementptr [4 x i8], ptr %i.azy, i64 %i.bhv
  %i.bhy = getelementptr i8, ptr %i.bhx, i64 32
  %wide.vec133 = load <8 x i32>, ptr %i.bhw, align 4, !tbaa !15, !alias.scope !167
  %strided.vec134 = shufflevector <8 x i32> %wide.vec133, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec135 = load <8 x i32>, ptr %i.bhy, align 4, !tbaa !15, !alias.scope !167
  %strided.vec136 = shufflevector <8 x i32> %wide.vec135, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bhz = getelementptr [4 x i8], ptr %invariant.gep218.i, i64 %index132 ; 2 uses
  %i.bia = getelementptr i8, ptr %i.bhz, i64 16
  store <4 x i32> %strided.vec134, ptr %i.bhz, align 4, !tbaa !15, !alias.scope !168, !noalias !167
  store <4 x i32> %strided.vec136, ptr %i.bia, align 4, !tbaa !15, !alias.scope !168, !noalias !167
  %index.next137 = add nuw i64 %index132, 8       ; 2 uses
  %i.bib = icmp eq i64 %index.next137, %n.vec130
  br i1 %i.bib, label %scalar.ph127.preheader, label %vector.body131, !llvm.loop !137

scalar.ph127.preheader:                           ; preds = %vector.body131, %.lr.ph143.i
  %indvars.iv187.i.ph = phi i64 [ %i.azx, %.lr.ph143.i ], [ %i.bda, %vector.body131 ] ; 2 uses
  %indvars.iv185.i.ph = phi i64 [ 0, %.lr.ph143.i ], [ %n.vec130, %vector.body131 ] ; 4 uses
  %i.bic = sub nsw i64 %i.bca, %indvars.iv185.i.ph
  %i.bid = sub nsw i64 %i.bbz, %indvars.iv185.i.ph
  %xtraiter763 = and i64 %i.bic, 3                ; 2 uses
  %lcmp.mod764.not = icmp eq i64 %xtraiter763, 0
  br i1 %lcmp.mod764.not, label %scalar.ph127.prol.loopexit, label %scalar.ph127.prol

scalar.ph127.prol:                                ; preds = %scalar.ph127.preheader, %scalar.ph127.prol
  %indvars.iv187.i.prol = phi i64 [ %indvars.iv.next188.i.prol, %scalar.ph127.prol ], [ %indvars.iv187.i.ph, %scalar.ph127.preheader ] ; 2 uses
  %indvars.iv185.i.prol = phi i64 [ %indvars.iv.next186.i.prol, %scalar.ph127.prol ], [ %indvars.iv185.i.ph, %scalar.ph127.preheader ] ; 2 uses
  %prol.iter765 = phi i64 [ %prol.iter765.next, %scalar.ph127.prol ], [ 0, %scalar.ph127.preheader ]
  %i.bie = getelementptr inbounds nuw [4 x i8], ptr %i.azy, i64 %indvars.iv187.i.prol
  %i.bif = load i32, ptr %i.bie, align 4, !tbaa !15
  %gep219.i.prol = getelementptr [4 x i8], ptr %invariant.gep218.i, i64 %indvars.iv185.i.prol
  store i32 %i.bif, ptr %gep219.i.prol, align 4, !tbaa !15
  %indvars.iv.next188.i.prol = add nuw nsw i64 %indvars.iv187.i.prol, 2 ; 2 uses
  %indvars.iv.next186.i.prol = add nuw nsw i64 %indvars.iv185.i.prol, 1 ; 2 uses
  %prol.iter765.next = add i64 %prol.iter765, 1   ; 2 uses
  %prol.iter765.cmp.not = icmp eq i64 %prol.iter765.next, %xtraiter763
  br i1 %prol.iter765.cmp.not, label %scalar.ph127.prol.loopexit, label %scalar.ph127.prol, !llvm.loop !138

scalar.ph127.prol.loopexit:                       ; preds = %scalar.ph127.prol, %scalar.ph127.preheader
  %indvars.iv187.i.unr = phi i64 [ %indvars.iv187.i.ph, %scalar.ph127.preheader ], [ %indvars.iv.next188.i.prol, %scalar.ph127.prol ]
  %indvars.iv185.i.unr = phi i64 [ %indvars.iv185.i.ph, %scalar.ph127.preheader ], [ %indvars.iv.next186.i.prol, %scalar.ph127.prol ]
  %i.big = icmp ult i64 %i.bid, 3
  br i1 %i.big, label %._crit_edge144.i, label %scalar.ph127

scalar.ph127:                                     ; preds = %scalar.ph127.prol.loopexit, %scalar.ph127
  %indvars.iv187.i = phi i64 [ %indvars.iv.next188.i.3, %scalar.ph127 ], [ %indvars.iv187.i.unr, %scalar.ph127.prol.loopexit ] ; 5 uses
  %indvars.iv185.i = phi i64 [ %indvars.iv.next186.i.3, %scalar.ph127 ], [ %indvars.iv185.i.unr, %scalar.ph127.prol.loopexit ] ; 5 uses
  %i.bih = getelementptr inbounds nuw [4 x i8], ptr %i.azy, i64 %indvars.iv187.i
  %i.bii = load i32, ptr %i.bih, align 4, !tbaa !15
  %gep219.i = getelementptr [4 x i8], ptr %invariant.gep218.i, i64 %indvars.iv185.i
  store i32 %i.bii, ptr %gep219.i, align 4, !tbaa !15
  %i.bij = getelementptr inbounds nuw [4 x i8], ptr %i.azy, i64 %indvars.iv187.i
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bij, i64 8
  %i.bil = load i32, ptr %i.bik, align 4, !tbaa !15
  %i.bim = getelementptr [4 x i8], ptr %invariant.gep218.i, i64 %indvars.iv185.i
  %gep219.i.1 = getelementptr i8, ptr %i.bim, i64 4
  store i32 %i.bil, ptr %gep219.i.1, align 4, !tbaa !15
  %i.bin = getelementptr inbounds nuw [4 x i8], ptr %i.azy, i64 %indvars.iv187.i
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bin, i64 16
  %i.bip = load i32, ptr %i.bio, align 4, !tbaa !15
  %i.biq = getelementptr [4 x i8], ptr %invariant.gep218.i, i64 %indvars.iv185.i
  %gep219.i.2 = getelementptr i8, ptr %i.biq, i64 8
  store i32 %i.bip, ptr %gep219.i.2, align 4, !tbaa !15
  %i.bir = getelementptr inbounds nuw [4 x i8], ptr %i.azy, i64 %indvars.iv187.i
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bir, i64 24
  %i.bit = load i32, ptr %i.bis, align 4, !tbaa !15
  %i.biu = getelementptr [4 x i8], ptr %invariant.gep218.i, i64 %indvars.iv185.i
  %gep219.i.3 = getelementptr i8, ptr %i.biu, i64 12
  store i32 %i.bit, ptr %gep219.i.3, align 4, !tbaa !15
  %indvars.iv.next188.i.3 = add nuw nsw i64 %indvars.iv187.i, 8
  %indvars.iv.next186.i.3 = add nuw nsw i64 %indvars.iv185.i, 4 ; 2 uses
  %exitcond193.not.i57.3 = icmp eq i64 %indvars.iv.next186.i.3, %wide.trip.count192.i47
  br i1 %exitcond193.not.i57.3, label %._crit_edge144.i, label %scalar.ph127, !llvm.loop !139

._crit_edge144.i:                                 ; preds = %scalar.ph127.prol.loopexit, %scalar.ph127, %sd_1d53.exit123.i
  %.0.lcssa.i50 = phi i64 [ 0, %sd_1d53.exit123.i ], [ %wide.trip.count192.i47, %scalar.ph127 ], [ %wide.trip.count192.i47, %scalar.ph127.prol.loopexit ] ; 5 uses
  br i1 %i.bay, label %.lr.ph149.i, label %._crit_edge150.i

.lr.ph149.i:                                      ; preds = %._crit_edge144.i
  %i.biv = mul nsw i64 %indvars.iv201.i49, %i.apq
end_hunk_1
