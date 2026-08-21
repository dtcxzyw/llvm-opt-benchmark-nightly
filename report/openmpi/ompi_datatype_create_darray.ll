inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ompi_predefined_datatype_t = type { %struct.ompi_datatype_t, [208 x i8] }
%struct.ompi_datatype_t = type { %struct.opal_datatype_t, i32, i32, ptr, ptr, i64, i64, [64 x i8] }
%struct.opal_datatype_t = type { %struct.opal_object_t, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, [64 x i8], %struct.dt_type_desc_t, %struct.dt_type_desc_t, ptr }
%struct.opal_object_t = type { ptr, i32 }
%struct.dt_type_desc_t = type { i64, i64, ptr }

@ompi_mpi_datatype_null = external global %struct.ompi_predefined_datatype_t, align 8

; Function Attrs: nounwind uwtable
define i32 @ompi_datatype_create_darray(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = alloca [2 x i64], align 16               ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca [2 x ptr], align 16               ; 5 uses
  %i.e = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.f = icmp slt i32 %2, 1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @ompi_datatype_duplicate(ptr noundef nonnull @ompi_mpi_datatype_null, ptr noundef %9) #7
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %8, i64 48
  %.val = load i64, ptr %i.h, align 8, !tbaa !8
  %i.i = getelementptr i8, ptr %8, i64 56
  %.val127 = load i64, ptr %i.i, align 8, !tbaa !18
  %i.j = sub nsw i64 %.val127, %.val              ; 12 uses
  %i.k = zext nneg i32 %2 to i64                  ; 8 uses
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #8 ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.0105146 = phi i32 [ %0, %bb.c ], [ %i.p, %bb.d ]
  %.0106145 = phi i32 [ %1, %bb.c ], [ %i.s, %bb.d ] ; 2 uses
  %.sroa.8.0144 = phi i64 [ %i.j, %bb.c ], [ %i.w, %bb.d ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !19
  %i.p = sdiv i32 %.0105146, %i.o                 ; 3 uses
  %i.q = sdiv i32 %.0106145, %i.p
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  store i32 %i.q, ptr %i.r, align 4, !tbaa !19
  %i.s = srem i32 %.0106145, %i.p
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !19
  %i.v = sext i32 %i.u to i64
  %i.w = mul nsw i64 %.sroa.8.0144, %i.v          ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %exitcond.not, label %bb.e, label %bb.d, !llvm.loop !20

bb.e:                                             ; preds = %bb.d
  %i.x = shl nuw nsw i64 %i.k, 3
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #8 ; 6 uses
  %i.z = call i32 @ompi_datatype_duplicate(ptr noundef nonnull %8, ptr noundef nonnull %i.e) #7 ; 2 uses
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.f, label %.thread135

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp eq i32 %7, 0                       ; 6 uses
  %i.ab = add nsw i32 %2, -1                      ; 2 uses
  %.0113 = select i1 %i.aa, i32 %i.ab, i32 0      ; 5 uses
  %.0112 = select i1 %i.aa, i32 -1, i32 %2        ; 3 uses
  %.0111 = select i1 %i.aa, i64 -1, i64 1         ; 4 uses
  %i.ac = icmp eq i32 %7, 1                       ; 2 uses
  %i.ad = add nsw i64 %i.k, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ah = zext i32 %.0113 to i64                  ; 4 uses
  %i.ai = zext nneg i32 %2 to i64
  %i.aj = zext nneg i32 %i.ab to i64
  %i.ak = add nsw i64 %i.ah, -1
  %i.al = sub nsw i64 %i.k, %i.ah
  %10 = add nsw i32 %.0113, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.u
  %indvar = phi i64 [ 0, %bb.f ], [ %indvar.next, %bb.u ] ; 5 uses
  %indvars.iv166 = phi i64 [ %i.ah, %bb.f ], [ %indvars.iv.next167, %bb.u ] ; 24 uses
  %i.am = mul i64 %.0111, %indvar
  %i.an = trunc i64 %i.am to i32                  ; 2 uses
  %11 = add i32 %10, %i.an
  %12 = zext i32 %11 to i64                       ; 2 uses
  %i.ao = sub i64 0, %indvar
  %i.ap = select i1 %i.aa, i64 %indvar, i64 %i.ao ; 2 uses
  %i.aq = add i64 %i.al, %i.ap
  %i.ar = mul i64 %.0111, %indvar
  %i.as = add i64 %i.ak, %i.ar
  %i.at = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv166
  %i.au = load i32, ptr %i.at, align 4, !tbaa !19
  switch i32 %i.au, label %.thread [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.q
  ]

.thread:                                          ; preds = %bb.g
  %i.av = call i32 @ompi_datatype_destroy(ptr noundef nonnull %i.e) #7 ; 0 uses
  br label %.thread135

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv166
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !19
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv166
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !19
  %i.ba = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv166
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !19
  %i.bc = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.y, i64 %indvars.iv166
  %i.be = trunc nsw i64 %indvars.iv166 to i32
  %i.bf = call fastcc i32 @block(ptr noundef %3, i32 noundef %i.be, i32 noundef %2, i32 noundef %i.ax, i32 noundef %i.az, i32 noundef %i.bb, i32 noundef %7, i64 noundef %i.j, ptr noundef %i.bc, ptr noundef %9, ptr noundef %i.bd)
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv166
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !19 ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv166
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !19
  %i.bk = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv166
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !19 ; 2 uses
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !22  ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.y, i64 %indvars.iv166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.bo = icmp eq i32 %i.bl, -1
  %..i = select i1 %i.bo, i32 1, i32 %i.bl        ; 8 uses
  %i.bp = mul nsw i32 %..i, %i.bj                 ; 3 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv166
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !19 ; 2 uses
  %.not.i = icmp sgt i32 %i.br, %i.bp
  br i1 %.not.i, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i
  %.pre.i = mul nsw i32 %..i, %i.bh
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bs = sub i32 %i.br, %i.bp                    ; 2 uses
  %i.bt = mul nsw i32 %..i, %i.bh                 ; 3 uses
  %i.bu = sdiv i32 %i.bs, %i.bt
  %i.bv = mul nsw i32 %i.bu, %..i
  %i.bw = srem i32 %i.bs, %i.bt
  %i.bx = call i32 @llvm.smin.i32(i32 %i.bw, i32 %..i)
  %i.by = add nsw i32 %i.bx, %i.bv
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.bt, %bb.j ]
  %.081.i = phi i32 [ 0, %._crit_edge.i ], [ %i.by, %bb.j ] ; 3 uses
  %i.bz = sdiv i32 %.081.i, %..i                  ; 2 uses
  %i.ca = srem i32 %.081.i, %..i                  ; 2 uses
  %i.cb = sext i32 %.pre-phi.i to i64
  %i.cc = mul nsw i64 %i.j, %i.cb                 ; 5 uses
  br i1 %i.ac, label %.preheader102.i, label %.preheader104.i

.preheader104.i:                                  ; preds = %bb.k
  %i.cd = icmp slt i64 %indvars.iv166, %i.aj
  br i1 %i.cd, label %.lr.ph.i, label %.loopexit103.i

.preheader102.i:                                  ; preds = %bb.k
  %i.ce = icmp sgt i64 %indvars.iv166, 0
  br i1 %i.ce, label %.lr.ph111.i.preheader, label %.loopexit103.i

.lr.ph111.i.preheader:                            ; preds = %.preheader102.i
  %xtraiter = and i64 %indvars.iv166, 7           ; 3 uses
  %i.cf = icmp ult i64 %i.as, 7
  br i1 %i.cf, label %.lr.ph111.i.epil.preheader, label %.lr.ph111.i.preheader.new

.lr.ph111.i.preheader.new:                        ; preds = %.lr.ph111.i.preheader
  %unroll_iter = and i64 %indvars.iv166, 9223372036854775800
  br label %.lr.ph111.i

.lr.ph111.i:                                      ; preds = %.lr.ph111.i, %.lr.ph111.i.preheader.new
  %indvars.iv126.i = phi i64 [ 0, %.lr.ph111.i.preheader.new ], [ %indvars.iv.next127.i.7, %.lr.ph111.i ] ; 9 uses
  %.0110.i = phi i64 [ %i.cc, %.lr.ph111.i.preheader.new ], [ %i.ds, %.lr.ph111.i ]
  %niter = phi i64 [ 0, %.lr.ph111.i.preheader.new ], [ %niter.next.7, %.lr.ph111.i ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv126.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !19
  %i.ci = sext i32 %i.ch to i64
  %i.cj = mul nsw i64 %.0110.i, %i.ci
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv126.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !19
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %i.cj, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv126.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !19
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul nsw i64 %i.co, %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv126.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !19
  %i.cx = sext i32 %i.cw to i64
  %i.cy = mul nsw i64 %i.ct, %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv126.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load i32, ptr %i.da, align 4, !tbaa !19
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %i.cy, %i.dc
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv126.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !19
  %i.dh = sext i32 %i.dg to i64
  %i.di = mul nsw i64 %i.dd, %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv126.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !19
  %i.dm = sext i32 %i.dl to i64
  %i.dn = mul nsw i64 %i.di, %i.dm
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv126.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 28
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !19
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul nsw i64 %i.dn, %i.dr                ; 3 uses
  %indvars.iv.next127.i.7 = add nuw nsw i64 %indvars.iv126.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit103.i.loopexit.unr-lcssa, label %.lr.ph111.i, !llvm.loop !24

.lr.ph.i:                                         ; preds = %.preheader104.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %i.ad, %.preheader104.i ] ; 2 uses
  %.1107.i = phi i64 [ %i.dw, %.lr.ph.i ], [ %i.cc, %.preheader104.i ]
  %i.dt = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.i
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !19
  %i.dv = sext i32 %i.du to i64
  %i.dw = mul nsw i64 %.1107.i, %i.dv             ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.dx = icmp sgt i64 %indvars.iv.next.i, %indvars.iv166
  br i1 %i.dx, label %.lr.ph.i, label %.loopexit103.i, !llvm.loop !25

.loopexit103.i.loopexit.unr-lcssa:                ; preds = %.lr.ph111.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit103.i, label %.lr.ph111.i.epil.preheader

.lr.ph111.i.epil.preheader:                       ; preds = %.loopexit103.i.loopexit.unr-lcssa, %.lr.ph111.i.preheader
  %indvars.iv126.i.epil.init = phi i64 [ 0, %.lr.ph111.i.preheader ], [ %indvars.iv.next127.i.7, %.loopexit103.i.loopexit.unr-lcssa ]
  %.0110.i.epil.init = phi i64 [ %i.cc, %.lr.ph111.i.preheader ], [ %i.ds, %.loopexit103.i.loopexit.unr-lcssa ]
  %lcmp.mod210 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod210)
  br label %.lr.ph111.i.epil

.lr.ph111.i.epil:                                 ; preds = %.lr.ph111.i.epil, %.lr.ph111.i.epil.preheader
  %indvars.iv126.i.epil = phi i64 [ %indvars.iv.next127.i.epil, %.lr.ph111.i.epil ], [ %indvars.iv126.i.epil.init, %.lr.ph111.i.epil.preheader ] ; 2 uses
  %.0110.i.epil = phi i64 [ %i.eb, %.lr.ph111.i.epil ], [ %.0110.i.epil.init, %.lr.ph111.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph111.i.epil ], [ 0, %.lr.ph111.i.epil.preheader ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv126.i.epil
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !19
  %i.ea = sext i32 %i.dz to i64
  %i.eb = mul nsw i64 %.0110.i.epil, %i.ea        ; 2 uses
  %indvars.iv.next127.i.epil = add nuw nsw i64 %indvars.iv126.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit103.i, label %.lr.ph111.i.epil, !llvm.loop !26

.loopexit103.i:                                   ; preds = %.lr.ph.i, %.loopexit103.i.loopexit.unr-lcssa, %.lr.ph111.i.epil, %.preheader102.i, %.preheader104.i
  %.2.i = phi i64 [ %i.eb, %.lr.ph111.i.epil ], [ %i.cc, %.preheader102.i ], [ %i.cc, %.preheader104.i ], [ %i.ds, %.loopexit103.i.loopexit.unr-lcssa ], [ %i.dw, %.lr.ph.i ] ; 2 uses
  %i.ec = call i32 @ompi_datatype_create_hvector(i32 noundef %i.bz, i32 noundef %..i, i64 noundef %.2.i, ptr noundef %i.bm, ptr noundef %9) #7 ; 2 uses
  %.not94.i = icmp eq i32 %i.ec, 0
  br i1 %.not94.i, label %bb.l, label %cyclic.exit

bb.l:                                             ; preds = %.loopexit103.i
  %.not95.i = icmp eq i32 %i.ca, 0
  br i1 %.not95.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ed = load ptr, ptr %9, align 8, !tbaa !22
  store ptr %i.ed, ptr %i.d, align 16, !tbaa !22
  store ptr %i.bm, ptr %i.ae, align 8, !tbaa !22
  store i64 0, ptr %i.b, align 16, !tbaa !28
  %i.ee = sext i32 %i.bz to i64
  %i.ef = mul nsw i64 %.2.i, %i.ee
  store i64 %i.ef, ptr %i.af, align 8, !tbaa !28
  store i32 1, ptr %i.a, align 4, !tbaa !19
  store i32 %i.ca, ptr %i.ag, align 4, !tbaa !19
  %i.eg = call i32 @ompi_datatype_create_struct(i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #7 ; 2 uses
  %i.eh = call i32 @ompi_datatype_destroy(ptr noundef nonnull %9) #7 ; 0 uses
  %.not96.i = icmp eq i32 %i.eg, 0
  br i1 %.not96.i, label %bb.n, label %cyclic.exit

bb.n:                                             ; preds = %bb.m
  %i.ei = load ptr, ptr %i.c, align 8, !tbaa !22
  store ptr %i.ei, ptr %9, align 8, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  store i64 0, ptr %i.b, align 16, !tbaa !28
  store i64 %i.j, ptr %i.af, align 8, !tbaa !28
  br i1 %i.ac, label %.preheader.i, label %.preheader100.i

.preheader100.i:                                  ; preds = %bb.o
  %.not97.not113.i = icmp slt i64 %indvars.iv166, %i.ai
  br i1 %.not97.not113.i, label %.lr.ph115.i.preheader, label %.loopexit.i

.lr.ph115.i.preheader:                            ; preds = %.preheader100.i
  %xtraiter211 = and i64 %i.aq, 7                 ; 2 uses
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol

.lr.ph115.i.prol:                                 ; preds = %.lr.ph115.i.preheader, %.lr.ph115.i.prol
  %indvars.iv129.i.prol = phi i64 [ %indvars.iv.next130.i.prol, %.lr.ph115.i.prol ], [ %i.k, %.lr.ph115.i.preheader ]
  %i.ej = phi i64 [ %i.en, %.lr.ph115.i.prol ], [ %i.j, %.lr.ph115.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph115.i.prol ], [ 0, %.lr.ph115.i.preheader ]
  %indvars.iv.next130.i.prol = add nsw i64 %indvars.iv129.i.prol, -1 ; 3 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next130.i.prol
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !19
  %i.em = sext i32 %i.el to i64
  %i.en = mul nsw i64 %i.ej, %i.em                ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter211
  br i1 %prol.iter.cmp.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol, !llvm.loop !29

.lr.ph115.i.prol.loopexit:                        ; preds = %.lr.ph115.i.prol, %.lr.ph115.i.preheader
  %indvars.iv129.i.unr = phi i64 [ %i.k, %.lr.ph115.i.preheader ], [ %indvars.iv.next130.i.prol, %.lr.ph115.i.prol ]
  %.unr = phi i64 [ %i.j, %.lr.ph115.i.preheader ], [ %i.en, %.lr.ph115.i.prol ]
  %.lcssa204.unr = phi i64 [ poison, %.lr.ph115.i.preheader ], [ %i.en, %.lr.ph115.i.prol ]
  %i.eo = add i64 %i.ap, %i.k
  %i.ep = sub i64 %i.ah, %i.eo
  %i.eq = icmp ugt i64 %i.ep, -8
  br i1 %i.eq, label %.loopexit.sink.split.i, label %.lr.ph115.i

.preheader.i:                                     ; preds = %bb.o
  %.not98117.i = icmp slt i64 %indvars.iv166, 0
  br i1 %.not98117.i, label %.loopexit.i, label %.lr.ph119.preheader.i

.lr.ph119.preheader.i:                            ; preds = %.preheader.i
  %xtraiter213 = and i64 %12, 7                   ; 3 uses
  %i.er = add i32 %.0113, %i.an
  %i.es = icmp ult i32 %i.er, 7
  br i1 %i.es, label %.lr.ph119.i.epil.preheader, label %.lr.ph119.preheader.i.new

.lr.ph119.preheader.i.new:                        ; preds = %.lr.ph119.preheader.i
  %unroll_iter219 = and i64 %12, 4294967288
  br label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %.lr.ph119.i, %.lr.ph119.preheader.i.new
  %indvars.iv132.i = phi i64 [ 0, %.lr.ph119.preheader.i.new ], [ %indvars.iv.next133.i.7, %.lr.ph119.i ] ; 9 uses
  %i.et = phi i64 [ %i.j, %.lr.ph119.preheader.i.new ], [ %i.gg, %.lr.ph119.i ]
  %niter220 = phi i64 [ 0, %.lr.ph119.preheader.i.new ], [ %niter220.next.7, %.lr.ph119.i ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv132.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !19
  %i.ew = sext i32 %i.ev to i64
  %i.ex = mul nsw i64 %i.et, %i.ew
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv132.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !19
  %i.fb = sext i32 %i.fa to i64
  %i.fc = mul nsw i64 %i.ex, %i.fb
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv132.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !19
  %i.fg = sext i32 %i.ff to i64
  %i.fh = mul nsw i64 %i.fc, %i.fg
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv132.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !19
  %i.fl = sext i32 %i.fk to i64
  %i.fm = mul nsw i64 %i.fh, %i.fl
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv132.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !19
  %i.fq = sext i32 %i.fp to i64
  %i.fr = mul nsw i64 %i.fm, %i.fq
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv132.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 20
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !19
  %i.fv = sext i32 %i.fu to i64
  %i.fw = mul nsw i64 %i.fr, %i.fv
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv132.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !19
  %i.ga = sext i32 %i.fz to i64
  %i.gb = mul nsw i64 %i.fw, %i.ga
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv132.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 28
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !19
  %i.gf = sext i32 %i.ge to i64
  %i.gg = mul nsw i64 %i.gb, %i.gf                ; 3 uses
  %indvars.iv.next133.i.7 = add nuw nsw i64 %indvars.iv132.i, 8 ; 2 uses
  %niter220.next.7 = add i64 %niter220, 8         ; 2 uses
  %niter220.ncmp.7 = icmp eq i64 %niter220.next.7, %unroll_iter219
  br i1 %niter220.ncmp.7, label %.loopexit.sink.split.i.loopexit.unr-lcssa, label %.lr.ph119.i, !llvm.loop !30

.lr.ph115.i:                                      ; preds = %.lr.ph115.i.prol.loopexit, %.lr.ph115.i
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i.7, %.lr.ph115.i ], [ %indvars.iv129.i.unr, %.lr.ph115.i.prol.loopexit ] ; 8 uses
  %i.gh = phi i64 [ %i.hu, %.lr.ph115.i ], [ %.unr, %.lr.ph115.i.prol.loopexit ]
  %i.gi = getelementptr [4 x i8], ptr %3, i64 %indvars.iv129.i
  %i.gj = getelementptr i8, ptr %i.gi, i64 -4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !19
  %i.gl = sext i32 %i.gk to i64
  %i.gm = mul nsw i64 %i.gh, %i.gl
  %i.gn = getelementptr [4 x i8], ptr %3, i64 %indvars.iv129.i
  %i.go = getelementptr i8, ptr %i.gn, i64 -8
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !19
  %i.gq = sext i32 %i.gp to i64
  %i.gr = mul nsw i64 %i.gm, %i.gq
  %i.gs = getelementptr [4 x i8], ptr %3, i64 %indvars.iv129.i
  %i.gt = getelementptr i8, ptr %i.gs, i64 -12
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !19
  %i.gv = sext i32 %i.gu to i64
  %i.gw = mul nsw i64 %i.gr, %i.gv
  %i.gx = getelementptr [4 x i8], ptr %3, i64 %indvars.iv129.i
  %i.gy = getelementptr i8, ptr %i.gx, i64 -16
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !19
  %i.ha = sext i32 %i.gz to i64
  %i.hb = mul nsw i64 %i.gw, %i.ha
  %i.hc = getelementptr [4 x i8], ptr %3, i64 %indvars.iv129.i
  %i.hd = getelementptr i8, ptr %i.hc, i64 -20
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !19
  %i.hf = sext i32 %i.he to i64
  %i.hg = mul nsw i64 %i.hb, %i.hf
  %i.hh = getelementptr [4 x i8], ptr %3, i64 %indvars.iv129.i
  %i.hi = getelementptr i8, ptr %i.hh, i64 -24
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !19
  %i.hk = sext i32 %i.hj to i64
  %i.hl = mul nsw i64 %i.hg, %i.hk
  %i.hm = getelementptr [4 x i8], ptr %3, i64 %indvars.iv129.i
  %i.hn = getelementptr i8, ptr %i.hm, i64 -28
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !19
  %i.hp = sext i32 %i.ho to i64
  %i.hq = mul nsw i64 %i.hl, %i.hp
  %indvars.iv.next130.i.7 = add nsw i64 %indvars.iv129.i, -8 ; 3 uses
  %i.hr = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next130.i.7
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !19
  %i.ht = sext i32 %i.hs to i64
  %i.hu = mul nsw i64 %i.hq, %i.ht                ; 2 uses
  %.not97.not.i.7 = icmp sgt i64 %indvars.iv.next130.i.7, %indvars.iv166
  br i1 %.not97.not.i.7, label %.lr.ph115.i, label %.loopexit.sink.split.i, !llvm.loop !31

.loopexit.sink.split.i.loopexit.unr-lcssa:        ; preds = %.lr.ph119.i
  %lcmp.mod216.not = icmp eq i64 %xtraiter213, 0
  br i1 %lcmp.mod216.not, label %.loopexit.sink.split.i, label %.lr.ph119.i.epil.preheader

.lr.ph119.i.epil.preheader:                       ; preds = %.loopexit.sink.split.i.loopexit.unr-lcssa, %.lr.ph119.preheader.i
  %indvars.iv132.i.epil.init = phi i64 [ 0, %.lr.ph119.preheader.i ], [ %indvars.iv.next133.i.7, %.loopexit.sink.split.i.loopexit.unr-lcssa ]
  %.epil.init = phi i64 [ %i.j, %.lr.ph119.preheader.i ], [ %i.gg, %.loopexit.sink.split.i.loopexit.unr-lcssa ]
  %lcmp.mod218 = icmp ne i64 %xtraiter213, 0
  call void @llvm.assume(i1 %lcmp.mod218)
  br label %.lr.ph119.i.epil

.lr.ph119.i.epil:                                 ; preds = %.lr.ph119.i.epil, %.lr.ph119.i.epil.preheader
  %indvars.iv132.i.epil = phi i64 [ %indvars.iv132.i.epil.init, %.lr.ph119.i.epil.preheader ], [ %indvars.iv.next133.i.epil, %.lr.ph119.i.epil ] ; 2 uses
  %i.hv = phi i64 [ %.epil.init, %.lr.ph119.i.epil.preheader ], [ %i.hz, %.lr.ph119.i.epil ]
  %epil.iter214 = phi i64 [ 0, %.lr.ph119.i.epil.preheader ], [ %epil.iter214.next, %.lr.ph119.i.epil ]
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv132.i.epil
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !19
  %i.hy = sext i32 %i.hx to i64
  %i.hz = mul nsw i64 %i.hv, %i.hy                ; 2 uses
  %indvars.iv.next133.i.epil = add nuw nsw i64 %indvars.iv132.i.epil, 1
  %epil.iter214.next = add i64 %epil.iter214, 1   ; 2 uses
  %epil.iter214.cmp.not = icmp eq i64 %epil.iter214.next, %xtraiter213
  br i1 %epil.iter214.cmp.not, label %.loopexit.sink.split.i, label %.lr.ph119.i.epil, !llvm.loop !32

.loopexit.sink.split.i:                           ; preds = %.lr.ph115.i.prol.loopexit, %.lr.ph115.i, %.loopexit.sink.split.i.loopexit.unr-lcssa, %.lr.ph119.i.epil
  %.lcssa145.sink.i = phi i64 [ %i.hz, %.lr.ph119.i.epil ], [ %i.gg, %.loopexit.sink.split.i.loopexit.unr-lcssa ], [ %.lcssa204.unr, %.lr.ph115.i.prol.loopexit ], [ %i.hu, %.lr.ph115.i ] ; 2 uses
  store i64 %.lcssa145.sink.i, ptr %i.af, align 8, !tbaa !28
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.sink.split.i, %.preheader.i, %.preheader100.i
  %i.ia = phi i64 [ %i.j, %.preheader100.i ], [ %i.j, %.preheader.i ], [ %.lcssa145.sink.i, %.loopexit.sink.split.i ]
  %i.ib = load ptr, ptr %9, align 8, !tbaa !22
  %i.ic = call i32 @opal_datatype_resize(ptr noundef %i.ib, i64 noundef 0, i64 noundef %i.ia) #7 ; 2 uses
  %.not99.i = icmp eq i32 %i.ic, 0
  br i1 %.not99.i, label %bb.p, label %cyclic.exit

bb.p:                                             ; preds = %.loopexit.i
  %i.id = icmp eq i32 %.081.i, 0
  %narrow.i = select i1 %i.id, i32 0, i32 %i.bp
  %spec.select.i = sext i32 %narrow.i to i64
  store i64 %spec.select.i, ptr %i.bn, align 8, !tbaa !28
  br label %cyclic.exit

cyclic.exit:                                      ; preds = %.loopexit103.i, %bb.m, %.loopexit.i, %bb.p
  %.086.i = phi i32 [ 0, %bb.p ], [ %i.ec, %.loopexit103.i ], [ %i.eg, %bb.m ], [ %i.ic, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.t

bb.q:                                             ; preds = %bb.g
  br i1 %i.aa, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ie = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv166
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !19
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv166
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !19
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.0104 = phi i32 [ %i.if, %bb.r ], [ 1, %bb.q ]
  %.0 = phi i32 [ %i.ih, %bb.r ], [ 0, %bb.q ]
  %i.ii = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.y, i64 %indvars.iv166
  %i.ik = trunc nsw i64 %indvars.iv166 to i32
  %i.il = call fastcc i32 @block(ptr noundef %3, i32 noundef %i.ik, i32 noundef %2, i32 noundef %.0104, i32 noundef %.0, i32 noundef -1, i32 noundef %7, i64 noundef %i.j, ptr noundef %i.ii, ptr noundef %9, ptr noundef %i.ij)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %cyclic.exit, %bb.h
  %.0109 = phi i32 [ %i.il, %bb.s ], [ %i.bf, %bb.h ], [ %.086.i, %cyclic.exit ] ; 2 uses
  %i.im = call i32 @ompi_datatype_destroy(ptr noundef nonnull %i.e) #7 ; 0 uses
  %.not126 = icmp eq i32 %.0109, 0
  br i1 %.not126, label %bb.u, label %.thread135

bb.u:                                             ; preds = %bb.t
  %i.in = load ptr, ptr %9, align 8, !tbaa !22    ; 2 uses
  store ptr %i.in, ptr %i.e, align 8, !tbaa !22
  %indvars.iv.next167 = add nsw i64 %indvars.iv166, %.0111 ; 2 uses
  %i.io = trunc nsw i64 %indvars.iv.next167 to i32
  %.not123 = icmp eq i32 %.0112, %i.io
  %indvar.next = add i64 %indvar, 1
  br i1 %.not123, label %bb.v, label %bb.g, !llvm.loop !33

bb.v:                                             ; preds = %bb.u
  %i.ip = zext nneg i32 %.0113 to i64
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ip
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !28 ; 2 uses
  %i.is = add nsw i32 %2, -2
  %.2151 = select i1 %i.aa, i32 %i.is, i32 1      ; 2 uses
  %.not124152 = icmp eq i32 %.2151, %.0112
  br i1 %.not124152, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.v
  %i.it = sext i32 %.2151 to i64
  %i.iu = sext i32 %.0113 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv169 = phi i64 [ %i.it, %.lr.ph.preheader ], [ %indvars.iv.next170, %.lr.ph ] ; 3 uses
  %.0108155 = phi i64 [ 1, %.lr.ph.preheader ], [ %i.iy, %.lr.ph ]
  %.sroa.0.0154 = phi i64 [ %i.ir, %.lr.ph.preheader ], [ %i.jc, %.lr.ph ]
  %.0113.pn153 = phi i64 [ %i.iu, %.lr.ph.preheader ], [ %indvars.iv169, %.lr.ph ]
end_hunk_0
