Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/array?download=true
inline.NumInlined: 80
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@ArrowArrayFlushInternalPointers:bb.a
bb.d:                                             ; preds = %bb.c
  %i.q = shl nsw i64 %i.p, 1
  %..i.i = tail call i64 @llvm.smax.i64(i64 %i.q, i64 %i.n) ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70
  %i.t = tail call ptr %i.s(ptr noundef nonnull %i.r, ptr noundef null, i64 noundef %i.p, i64 noundef %..i.i) #16, !inline_history !2 ; 2 uses
  store ptr %i.t, ptr %i.f, align 8, !tbaa !34
  %i.u = icmp eq ptr %i.t, null
  %i.v = icmp sgt i64 %..i.i, 0
  %or.cond.i82 = and i1 %i.v, %i.u
  br i1 %or.cond.i82, label %.thread97, label %bb.e

.thread97:                                        ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %.thread103

bb.e:                                             ; preds = %bb.d
  store i64 %..i.i, ptr %i.o, align 8, !tbaa !35
  %.pre = load i32, ptr %i.l, align 4, !tbaa !37
  br label %ArrowBufferReserve.exit

ArrowBufferReserve.exit:                          ; preds = %bb.c, %bb.e
  %i.w = phi i32 [ %i.m, %bb.c ], [ %.pre, %bb.e ]
  %.not74106 = icmp sgt i32 %i.w, 0
  br i1 %.not74106, label %.lr.ph, label %.thread100

.lr.ph:                                           ; preds = %ArrowBufferReserve.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %.lr.ph
  %.058107 = phi i64 [ 0, %.lr.ph ], [ %i.ba, %bb.m ] ; 3 uses
  %i.y = add nuw nsw i64 %.058107, 2              ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !30  ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 3                   ; 2 uses
  %i.ac = add i64 %i.aa, -3
  %i.ad = icmp eq i64 %.058107, %i.ac
  %or.cond.i84 = and i1 %i.ab, %i.ad
  br i1 %or.cond.i84, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  br label %ArrowArrayBuffer.exit85

bb.h:                                             ; preds = %bb.f
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 232
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !38
  %i.ah = getelementptr [48 x i8], ptr %i.ag, i64 %i.y
  %i.ai = getelementptr i8, ptr %i.ah, i64 -96
  br label %ArrowArrayBuffer.exit85

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr [48 x i8], ptr %i.z, i64 %i.y
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  br label %ArrowArrayBuffer.exit85

ArrowArrayBuffer.exit85:                          ; preds = %bb.g, %bb.i, %bb.j
  %.0.i83 = phi ptr [ %i.ae, %bb.g ], [ %i.ai, %bb.i ], [ %i.ak, %bb.j ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i83, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !67
  %i.an = load i64, ptr %i.i, align 8, !tbaa !67  ; 2 uses
  %i.ao = add nsw i64 %i.an, 8                    ; 2 uses
  %i.ap = load i64, ptr %i.o, align 8, !tbaa !35  ; 3 uses
  %.not.i.i.i = icmp sgt i64 %i.ao, %i.ap
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !34 ; 2 uses
  br i1 %.not.i.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %ArrowArrayBuffer.exit85
  %i.aq = shl nsw i64 %i.ap, 1
  %..i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 %i.ao) ; 3 uses
  %i.ar = load ptr, ptr %i.x, align 8, !tbaa !70
  %i.as = tail call ptr %i.ar(ptr noundef nonnull %i.x, ptr noundef %.pre.i.i, i64 noundef %i.ap, i64 noundef %..i.i.i.i) #16, !inline_history !96 ; 3 uses
  store ptr %i.as, ptr %i.f, align 8, !tbaa !34
  %i.at = icmp eq ptr %i.as, null
  %i.au = icmp sgt i64 %..i.i.i.i, 0
  %or.cond.i.i.i = and i1 %i.au, %i.at
  br i1 %or.cond.i.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %..i.i.i.i, ptr %i.o, align 8, !tbaa !35
  %.pre3.i.i = load i64, ptr %i.i, align 8, !tbaa !67
  br label %bb.m

bb.m:                                             ; preds = %ArrowArrayBuffer.exit85, %bb.l
  %i.av = phi i64 [ %i.an, %ArrowArrayBuffer.exit85 ], [ %.pre3.i.i, %bb.l ]
  %i.aw = phi ptr [ %.pre.i.i, %ArrowArrayBuffer.exit85 ], [ %i.as, %bb.l ]
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.av
  store i64 %i.am, ptr %i.ax, align 1
  %i.ay = load i64, ptr %i.i, align 8, !tbaa !67
  %i.az = add nsw i64 %i.ay, 8
  store i64 %i.az, ptr %i.i, align 8, !tbaa !67
  %i.ba = add nuw nsw i64 %.058107, 1             ; 2 uses
  %i.bb = load i32, ptr %i.l, align 4, !tbaa !37
  %i.bc = sext i32 %i.bb to i64
  %.not74 = icmp slt i64 %i.ba, %i.bc
  br i1 %.not74, label %bb.f, label %.thread100

bb.n:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %.thread103

.thread100:                                       ; preds = %bb.m, %ArrowBufferReserve.exit, %ArrowArrayBuffer.exit, %bb.b, %bb.a
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !30
  %.fr115 = freeze i64 %i.bd                      ; 6 uses
  %i.be = icmp sgt i64 %.fr115, 0
  br i1 %i.be, label %.lr.ph109, label %._crit_edge

.lr.ph109:                                        ; preds = %.thread100
  %i.bf = icmp samesign ugt i64 %.fr115, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 7 uses
  br i1 %i.bf, label %.lr.ph109.split.us.preheader.split, label %.lr.ph109.split

.lr.ph109.split.us.preheader.split:               ; preds = %.lr.ph109
  %i.bh = add nsw i64 %.fr115, -1                 ; 3 uses
  %xtraiter = and i64 %i.bh, 1
  %unroll_iter = and i64 %i.bh, -2
  br label %.lr.ph109.split.us

.lr.ph109.split.us:                               ; preds = %ArrowArrayBuffer.exit88.us.1, %.lr.ph109.split.us.preheader.split
  %indvars.iv118 = phi i64 [ 0, %.lr.ph109.split.us.preheader.split ], [ %indvars.iv.next119.1, %ArrowArrayBuffer.exit88.us.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph109.split.us.preheader.split ], [ %niter.next.1, %ArrowArrayBuffer.exit88.us.1 ]
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.bj = trunc nuw nsw i64 %indvars.iv118 to i32
  %cond = icmp eq i32 %i.bj, 0
  br i1 %cond, label %ArrowArrayBuffer.exit88.us, label %bb.o

bb.o:                                             ; preds = %.lr.ph109.split.us
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 232
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !38
  %i.bm = getelementptr [48 x i8], ptr %i.bl, i64 %indvars.iv118
  %i.bn = getelementptr i8, ptr %i.bm, i64 -96
  br label %ArrowArrayBuffer.exit88.us

ArrowArrayBuffer.exit88.us:                       ; preds = %.lr.ph109.split.us, %bb.o
  %.0.i86.us = phi ptr [ %i.bi, %.lr.ph109.split.us ], [ %i.bn, %bb.o ]
  %i.bo = load ptr, ptr %.0.i86.us, align 8, !tbaa !34
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv118
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !19
  %indvars.iv.next119 = or disjoint i64 %indvars.iv118, 1 ; 4 uses
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.bs = trunc nuw nsw i64 %indvars.iv.next119 to i32
  %cond140.a = icmp eq i32 %i.bs, 1
  br i1 %cond140.a, label %bb.p, label %bb.q

bb.p:                                             ; preds = %ArrowArrayBuffer.exit88.us
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  br label %ArrowArrayBuffer.exit88.us.1

bb.q:                                             ; preds = %ArrowArrayBuffer.exit88.us
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 232
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !38
  %i.bw = getelementptr [48 x i8], ptr %i.bv, i64 %indvars.iv.next119
  %i.bx = getelementptr i8, ptr %i.bw, i64 -96
  br label %ArrowArrayBuffer.exit88.us.1

ArrowArrayBuffer.exit88.us.1:                     ; preds = %bb.q, %bb.p
  %.0.i86.us.1 = phi ptr [ %i.bt, %bb.p ], [ %i.bx, %bb.q ]
  %i.by = load ptr, ptr %.0.i86.us.1, align 8, !tbaa !34
  %i.bz = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next119
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !19
  %indvars.iv.next119.1 = add nuw nsw i64 %indvars.iv118, 2 ; 7 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.peel.begin.unr-lcssa, label %.lr.ph109.split.us, !llvm.loop !97

._crit_edge.loopexit.peel.begin.unr-lcssa:        ; preds = %ArrowArrayBuffer.exit88.us.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.peel.begin, label %.lr.ph109.split.us.epil.preheader

.lr.ph109.split.us.epil.preheader:                ; preds = %._crit_edge.loopexit.peel.begin.unr-lcssa
  %lcmp.mod138 = trunc i64 %i.bh to i1
  tail call void @llvm.assume(i1 %lcmp.mod138)
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.cc = trunc nuw nsw i64 %indvars.iv.next119.1 to i32
  %cond141 = icmp eq i32 %i.cc, 0
  br i1 %cond141, label %ArrowArrayBuffer.exit88.us.epil, label %bb.r

bb.r:                                             ; preds = %.lr.ph109.split.us.epil.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 232
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !38
  %i.cf = getelementptr [48 x i8], ptr %i.ce, i64 %indvars.iv.next119.1
  %i.cg = getelementptr i8, ptr %i.cf, i64 -96
  br label %ArrowArrayBuffer.exit88.us.epil

ArrowArrayBuffer.exit88.us.epil:                  ; preds = %.lr.ph109.split.us.epil.preheader, %bb.r
  %.0.i86.us.epil = phi ptr [ %i.cb, %.lr.ph109.split.us.epil.preheader ], [ %i.cg, %bb.r ]
  %i.ch = load ptr, ptr %.0.i86.us.epil, align 8, !tbaa !34
  %i.ci = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next119.1
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !19
  %indvars.iv.next119.epil = add nuw nsw i64 %indvars.iv.next119.1, 1
  br label %._crit_edge.loopexit.peel.begin

._crit_edge.loopexit.peel.begin:                  ; preds = %._crit_edge.loopexit.peel.begin.unr-lcssa, %ArrowArrayBuffer.exit88.us.epil
  %indvars.iv.next119.lcssa = phi i64 [ %indvars.iv.next119.1, %._crit_edge.loopexit.peel.begin.unr-lcssa ], [ %indvars.iv.next119.epil, %ArrowArrayBuffer.exit88.us.epil ] ; 3 uses
  %indvars.iv118.lcssa = phi i64 [ %indvars.iv.next119, %._crit_edge.loopexit.peel.begin.unr-lcssa ], [ %indvars.iv.next119.1, %ArrowArrayBuffer.exit88.us.epil ]
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !18  ; 4 uses
  %1 = trunc nuw nsw i64 %indvars.iv.next119.lcssa to i32
  switch i32 %1, label %4 [
    i32 0, label %ArrowArrayBuffer.exit88.us.peel
    i32 1, label %2
  ]

2:                                                ; preds = %._crit_edge.loopexit.peel.begin
  %3 = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  br label %ArrowArrayBuffer.exit88.us.peel

4:                                                ; preds = %._crit_edge.loopexit.peel.begin
  %5 = add nuw i64 %indvars.iv118.lcssa, 2
  %6 = icmp eq i64 %.fr115, %5
  br i1 %6, label %bb.t, label %bb.s

bb.s:                                             ; preds = %4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 232
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !38
  %i.cn = getelementptr [48 x i8], ptr %i.cm, i64 %indvars.iv.next119.lcssa
  %i.co = getelementptr i8, ptr %i.cn, i64 -96
  br label %ArrowArrayBuffer.exit88.us.peel

bb.t:                                             ; preds = %4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 104
  br label %ArrowArrayBuffer.exit88.us.peel

ArrowArrayBuffer.exit88.us.peel:                  ; preds = %bb.t, %bb.s, %2, %._crit_edge.loopexit.peel.begin
  %.0.i86.us.peel = phi ptr [ %i.cp, %bb.t ], [ %i.co, %bb.s ], [ %i.ck, %._crit_edge.loopexit.peel.begin ], [ %3, %2 ]
  %i.cq = load ptr, ptr %.0.i86.us.peel, align 8, !tbaa !34
  %i.cr = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.next119.lcssa
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph109.split, %.lr.ph109.split.1, %.lr.ph109.split.2, %ArrowArrayBuffer.exit88.us.peel, %.thread100
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !28
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !29
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !40 ; 2 uses
  %.not77110 = icmp sgt i64 %i.cx, 0
  br i1 %.not77110, label %.lr.ph113, label %._crit_edge114

.lr.ph113:                                        ; preds = %._crit_edge
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.u

.lr.ph109.split:                                  ; preds = %.lr.ph109
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !34
  %i.db = load ptr, ptr %i.bg, align 8, !tbaa !28
  store ptr %i.da, ptr %i.db, align 8, !tbaa !19
  %exitcond.not = icmp eq i64 %.fr115, 1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph109.split.1

.lr.ph109.split.1:                                ; preds = %.lr.ph109.split
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !34
  %i.df = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.de, ptr %i.dg, align 8, !tbaa !19
  %exitcond.not.1 = icmp eq i64 %.fr115, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph109.split.2

.lr.ph109.split.2:                                ; preds = %.lr.ph109.split.1
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.di = getelementptr i8, ptr %i.dh, i64 104
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !34
  %i.dk = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store ptr %i.dj, ptr %i.dl, align 8, !tbaa !19
  br label %._crit_edge

bb.u:                                             ; preds = %.lr.ph113, %bb.w
  %i.dm = phi i64 [ %i.cx, %.lr.ph113 ], [ %i.ds, %bb.w ]
  %.0111 = phi i64 [ 0, %.lr.ph113 ], [ %i.dt, %bb.w ] ; 2 uses
  %i.dn = load ptr, ptr %i.cy, align 8, !tbaa !39
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.0111
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !41 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 64
  %.val81 = load ptr, ptr %i.dq, align 8, !tbaa !17
  %.not105 = icmp eq ptr %.val81, @ArrowArrayReleaseInternal
  br i1 %.not105, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dr = tail call fastcc i32 @ArrowArrayFlushInternalPointers(ptr noundef nonnull %i.dp) ; 2 uses
  %.not76 = icmp eq i32 %i.dr, 0
  br i1 %.not76, label %._crit_edge122, label %.thread103

._crit_edge122:                                   ; preds = %bb.v
  %.pre123 = load i64, ptr %i.cw, align 8, !tbaa !40
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge122, %bb.u
  %i.ds = phi i64 [ %.pre123, %._crit_edge122 ], [ %i.dm, %bb.u ] ; 2 uses
  %i.dt = add nuw nsw i64 %.0111, 1               ; 2 uses
  %.not77 = icmp slt i64 %i.dt, %i.ds
  br i1 %.not77, label %bb.u, label %._crit_edge114

._crit_edge114:                                   ; preds = %bb.w, %._crit_edge
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !42 ; 3 uses
  %.not78 = icmp eq ptr %i.dv, null
  br i1 %.not78, label %bb.z, label %bb.x

bb.x:                                             ; preds = %._crit_edge114
  %i.dw = getelementptr i8, ptr %i.dv, i64 64
  %.val = load ptr, ptr %i.dw, align 8, !tbaa !17
  %.not = icmp eq ptr %.val, @ArrowArrayReleaseInternal
  br i1 %.not, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dx = tail call fastcc i32 @ArrowArrayFlushInternalPointers(ptr noundef nonnull %i.dv) ; 2 uses
  %.not80 = icmp eq i32 %i.dx, 0
  br i1 %.not80, label %bb.z, label %.thread103

bb.z:                                             ; preds = %bb.y, %bb.x, %._crit_edge114
  br label %.thread103

.thread103:                                       ; preds = %bb.v, %bb.n, %.thread97, %bb.y, %bb.z
  %.12 = phi i32 [ 0, %bb.z ], [ %i.dx, %bb.y ], [ 12, %.thread97 ], [ 12, %bb.n ], [ %i.dr, %bb.v ]
  ret i32 %.12
}

; Function Attrs: nounwind uwtable
define i32 @ArrowArrayViewValidate(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.f [
    i32 0, label %bb.g
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i32 @ArrowArrayViewValidateMinimal(ptr noundef %0, ptr noundef %2)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @ArrowArrayViewValidateDefault(ptr noundef %0, ptr noundef %2)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @ArrowArrayViewValidateDefault(ptr noundef %0, ptr noundef %2) ; 2 uses
  %.not.not = icmp eq i32 %i.c, 0
  br i1 %.not.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.d = tail call fastcc i32 @ArrowArrayViewValidateFull(ptr noundef %0, ptr noundef %2)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, ptr, ...) @ArrowErrorSet(ptr noundef %2, ptr noundef nonnull @.str.6) #16 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.a, %bb.f, %bb.e, %bb.c, %bb.b
  %.1 = phi i32 [ 22, %bb.f ], [ %i.c, %bb.d ], [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ %i.d, %bb.e ], [ %1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @ArrowArrayFinishBuildingDefault(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ArrowArrayFinishBuilding(ptr noundef %0, i32 noundef 2, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define void @ArrowArrayViewInitFromType(ptr noundef initializes((0, 200)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 0, i64 200, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %1, ptr %i.a, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @ArrowLayoutInit(ptr noundef nonnull %i.b, i32 noundef %1) #16
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 23) i32 @ArrowArrayViewAllocateChildren(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %.loopexit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = shl i64 %1, 3                            ; 2 uses
  %i.e = tail call ptr @ArrowMalloc(i64 noundef %i.d) #16 ; 3 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !52
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %.lr.ph32.preheader, label %.loopexit.sink.split

.lr.ph32.preheader:                               ; preds = %.preheader
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %i.d, i1 false), !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %1, ptr %i.h, align 8, !tbaa !51
  br label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %bb.d
  %.02330 = phi i64 [ %i.n, %bb.d ], [ 0, %.lr.ph32.preheader ] ; 2 uses
  %i.i = tail call ptr @ArrowMalloc(i64 noundef 200) #16 ; 4 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.02330
  store ptr %i.i, ptr %i.k, align 8, !tbaa !53
  %i.l = icmp eq ptr %i.i, null
  br i1 %i.l, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph32
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.i, i8 0, i64 200, i1 false)
  tail call void @ArrowLayoutInit(ptr noundef nonnull %i.m, i32 noundef 0) #16
  %i.n = add nuw nsw i64 %.02330, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph32

.loopexit.sink.split:                             ; preds = %.preheader, %bb.b
  %.sink = phi i64 [ 0, %bb.b ], [ %1, %.preheader ]
end_hunk_0
