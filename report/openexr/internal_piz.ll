Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_piz?download=true
inline.NumInlined: 43
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_apply_piz(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.d = tail call i64 @internal_exr_huf_compress_spare_bytes() #8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !42   ; 8 uses
  %i.g = lshr i64 %i.f, 1                         ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load i64, ptr %i.j, align 8, !tbaa !43
  %i.l = tail call i32 @internal_encode_alloc_buffer(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i64 noundef %i.k) #8 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.o = add i64 %i.d, 139264
  %i.p = tail call i32 @internal_encode_alloc_buffer(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, i64 noundef %i.o) #8 ; 2 uses
  %.not172 = icmp eq i32 %i.p, 0
  br i1 %.not172, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !44   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.d ; 12 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8192 ; 16 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !45   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %bb.c
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre = load i16, ptr %i.z, align 8, !tbaa !47  ; 2 uses
  br label %bb.g

._crit_edge207:                                   ; preds = %bb.h, %bb.c
  %.lcssa199205.lcssa = phi i64 [ undef, %bb.c ], [ %.lcssa199, %bb.h ]
  store i64 %.lcssa199205.lcssa, ptr %i.a, align 8
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !48  ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %i.r, i8 0, i64 8192, i1 false), !tbaa !16
  %.not38.i = icmp eq i64 %i.g, 0                 ; 2 uses
  br i1 %.not38.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge207
  %i.ac = icmp eq i64 %i.g, 1
  br i1 %i.ac, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.ad = and i64 %i.f, 2
  %lcmp.mod.not = icmp eq i64 %i.ad, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.02634.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bl, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod276 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod276)
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.02634.i.epil.init
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !17 ; 2 uses
  %i.ag = and i16 %i.af, 7
  %i.ah = shl nuw nsw i16 1, %i.ag
  %i.ai = lshr i16 %i.af, 3
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.aj ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16
  %i.am = trunc nuw i16 %i.ah to i8
  %i.an = or i8 %i.al, %i.am
  store i8 %i.an, ptr %i.ak, align 1, !tbaa !16
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.pre.i = load i8, ptr %i.r, align 1, !tbaa !16
  %i.ao = and i8 %.pre.i, -2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %._crit_edge207
  %i.ap = phi i8 [ %i.ao, %._crit_edge.loopexit.i ], [ 0, %._crit_edge207 ]
  store i8 %i.ap, ptr %i.r, align 1, !tbaa !16
  br label %bb.d

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.02634.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bl, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.02634.i
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !17 ; 2 uses
  %i.as = and i16 %i.ar, 7
  %i.at = shl nuw nsw i16 1, %i.as
  %i.au = lshr i16 %i.ar, 3
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.av ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !16
  %i.ay = trunc nuw i16 %i.at to i8
  %i.az = or i8 %i.ax, %i.ay
  store i8 %i.az, ptr %i.aw, align 1, !tbaa !16
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.02634.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !17 ; 2 uses
  %i.bd = and i16 %i.bc, 7
  %i.be = shl nuw nsw i16 1, %i.bd
  %i.bf = lshr i16 %i.bc, 3
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bg ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !16
  %i.bj = trunc nuw i16 %i.be to i8
  %i.bk = or i8 %i.bi, %i.bj
  store i8 %i.bk, ptr %i.bh, align 1, !tbaa !16
  %i.bl = add nuw nsw i64 %.02634.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !26

bb.d:                                             ; preds = %bb.d, %._crit_edge.i
  %indvars.iv.i = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.next.i.1, %bb.d ] ; 4 uses
  %.02836.i = phi i16 [ 0, %._crit_edge.i ], [ %.1.i.1, %bb.d ] ; 2 uses
  %.02935.i = phi i16 [ 8191, %._crit_edge.i ], [ %.2.i.1, %bb.d ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.i
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.bn, 0                   ; 2 uses
  %i.bo = trunc nuw nsw i64 %indvars.iv.i to i16  ; 2 uses
  %spec.select.i = tail call i16 @llvm.umin.i16(i16 %.02935.i, i16 %i.bo)
  %spec.select32.i = tail call i16 @llvm.umax.i16(i16 %.02836.i, i16 %i.bo)
  %.2.i = select i1 %.not.i, i16 %.02935.i, i16 %spec.select.i ; 2 uses
  %.1.i = select i1 %.not.i, i16 %.02836.i, i16 %spec.select32.i ; 2 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !16
  %.not.i.1 = icmp eq i8 %i.bq, 0                 ; 2 uses
  %i.br = trunc nuw nsw i64 %indvars.iv.next.i to i16 ; 2 uses
  %spec.select.i.1 = tail call i16 @llvm.umin.i16(i16 %.2.i, i16 %i.br)
  %spec.select32.i.1 = tail call i16 @llvm.umax.i16(i16 %.1.i, i16 %i.br)
  %.2.i.1 = select i1 %.not.i.1, i16 %.2.i, i16 %spec.select.i.1 ; 5 uses
  %.1.i.1 = select i1 %.not.i.1, i16 %.1.i, i16 %spec.select32.i.1 ; 4 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond41.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 8192
  br i1 %exitcond41.not.i.1, label %bitmapFromData.exit, label %bb.d, !llvm.loop !27

bitmapFromData.exit:                              ; preds = %bb.d
  store i16 0, ptr %i.s, align 2, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bitmapFromData.exit
  %indvars.iv.i179 = phi i64 [ 1, %bitmapFromData.exit ], [ %indvars.iv.next.i182.1, %bb.f ] ; 5 uses
  %.01112.i = phi i16 [ 1, %bitmapFromData.exit ], [ %.1.i181.1, %bb.f ] ; 2 uses
  %i.bs = trunc nuw nsw i64 %indvars.iv.i179 to i32
  %i.bt = lshr i64 %indvars.iv.i179, 3
  %i.bu = and i64 %i.bt, 536870911
  %i.bv = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !16
  %i.bx = zext i8 %i.bw to i32
  %i.by = and i32 %i.bs, 7
  %i.bz = shl nuw nsw i32 1, %i.by
  %i.ca = and i32 %i.bz, %i.bx
  %.not.i180 = icmp ne i32 %i.ca, 0               ; 2 uses
  %.01112.sink.i = select i1 %.not.i180, i16 %.01112.i, i16 0
  %i.cb = zext i1 %.not.i180 to i16
  %.1.i181 = add i16 %.01112.i, %i.cb             ; 3 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.i179
  store i16 %.01112.sink.i, ptr %i.cc, align 2, !tbaa !17
  %indvars.iv.next.i182 = add nuw nsw i64 %indvars.iv.i179, 1 ; 4 uses
  %exitcond.not.i183 = icmp eq i64 %indvars.iv.next.i182, 65536
  br i1 %exitcond.not.i183, label %forwardLutFromBitmap.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cd = trunc nuw nsw i64 %indvars.iv.next.i182 to i32
  %i.ce = lshr i64 %indvars.iv.next.i182, 3
  %i.cf = and i64 %i.ce, 536870911
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !16
  %i.ci = zext i8 %i.ch to i32
  %i.cj = and i32 %i.cd, 7
  %i.ck = shl nuw nsw i32 1, %i.cj
  %i.cl = and i32 %i.ck, %i.ci
  %.not.i180.1 = icmp ne i32 %i.cl, 0             ; 2 uses
  %.01112.sink.i.1 = select i1 %.not.i180.1, i16 %.1.i181, i16 0
  %i.cm = zext i1 %.not.i180.1 to i16
  %.1.i181.1 = add i16 %.1.i181, %i.cm
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.i182
  store i16 %.01112.sink.i.1, ptr %i.cn, align 2, !tbaa !17
  %indvars.iv.next.i182.1 = add nuw nsw i64 %indvars.iv.i179, 2
  br label %bb.e

forwardLutFromBitmap.exit:                        ; preds = %bb.e
  %i.co = add i16 %.1.i181, -1
  %i.cp = load ptr, ptr %i.h, align 8, !tbaa !48  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.cq = icmp ugt i64 %i.f, 17
  br i1 %i.cq, label %.lr.ph.i187, label %.preheader.i

.preheader.i:                                     ; preds = %forwardLutFromBitmap.exit
  br i1 %.not38.i, label %applyLut.exit, label %.lr.ph25.preheader.i

.lr.ph25.preheader.i:                             ; preds = %.lr.ph.i187, %.preheader.i
  %.018.lcssa48.i = phi i64 [ %i.g, %.preheader.i ], [ %i.ds, %.lr.ph.i187 ] ; 3 uses
  %.019.lcssa47.i = phi ptr [ %i.cp, %.preheader.i ], [ %i.dr, %.lr.ph.i187 ] ; 5 uses
  %i.cr = add nsw i64 %.018.lcssa48.i, -1
  %xtraiter277 = and i64 %.018.lcssa48.i, 3       ; 3 uses
  %i.cs = icmp ult i64 %i.cr, 3
  br i1 %i.cs, label %.lr.ph25.i.epil.preheader, label %.lr.ph25.preheader.i.new

.lr.ph25.preheader.i.new:                         ; preds = %.lr.ph25.preheader.i
  %unroll_iter280 = and i64 %.018.lcssa48.i, 9223372036854775804
  br label %.lr.ph25.i

.lr.ph.i187:                                      ; preds = %forwardLutFromBitmap.exit, %.lr.ph.i187
  %.01822.i = phi i64 [ %i.ds, %.lr.ph.i187 ], [ %i.g, %forwardLutFromBitmap.exit ]
  %.01921.i = phi ptr [ %i.dr, %.lr.ph.i187 ], [ %i.cp, %forwardLutFromBitmap.exit ] ; 10 uses
  %.sroa.0.0.copyload.i = load i16, ptr %.01921.i, align 2, !alias.scope !50
  %.sroa.6.0..01921.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.01921.i, i64 2 ; 2 uses
  %.sroa.6.0.copyload.i = load i16, ptr %.sroa.6.0..01921.sroa_idx.i, align 2, !alias.scope !50
  %.sroa.8.0..01921.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.01921.i, i64 4 ; 2 uses
  %.sroa.8.0.copyload.i = load i16, ptr %.sroa.8.0..01921.sroa_idx.i, align 2, !alias.scope !50
  %.sroa.10.0..01921.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.01921.i, i64 6 ; 2 uses
  %.sroa.10.0.copyload.i = load i16, ptr %.sroa.10.0..01921.sroa_idx.i, align 2, !alias.scope !50
  %.sroa.12.0..01921.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.01921.i, i64 8 ; 2 uses
  %.sroa.12.0.copyload.i = load i16, ptr %.sroa.12.0..01921.sroa_idx.i, align 2, !alias.scope !50
  %.sroa.14.0..01921.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.01921.i, i64 10 ; 2 uses
  %.sroa.14.0.copyload.i = load i16, ptr %.sroa.14.0..01921.sroa_idx.i, align 2, !alias.scope !50
  %.sroa.16.0..01921.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.01921.i, i64 12 ; 2 uses
  %.sroa.16.0.copyload.i = load i16, ptr %.sroa.16.0..01921.sroa_idx.i, align 2, !alias.scope !50
  %.sroa.18.0..01921.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.01921.i, i64 14 ; 2 uses
  %.sroa.18.0.copyload.i = load i16, ptr %.sroa.18.0..01921.sroa_idx.i, align 2, !alias.scope !50
  %i.ct = zext i16 %.sroa.0.0.copyload.i to i64
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !17, !alias.scope !49
  %i.cw = zext i16 %.sroa.6.0.copyload.i to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !17, !alias.scope !49
  %i.cz = zext i16 %.sroa.8.0.copyload.i to i64
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.cz
  %i.db = load i16, ptr %i.da, align 2, !tbaa !17, !alias.scope !49
  %i.dc = zext i16 %.sroa.10.0.copyload.i to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !17, !alias.scope !49
  %i.df = zext i16 %.sroa.12.0.copyload.i to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !17, !alias.scope !49
  %i.di = zext i16 %.sroa.14.0.copyload.i to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !17, !alias.scope !49
  %i.dl = zext i16 %.sroa.16.0.copyload.i to i64
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !17, !alias.scope !49
  %i.do = zext i16 %.sroa.18.0.copyload.i to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !17, !alias.scope !49
  store i16 %i.cv, ptr %.01921.i, align 2, !alias.scope !50
  store i16 %i.cy, ptr %.sroa.6.0..01921.sroa_idx.i, align 2, !alias.scope !50
  store i16 %i.db, ptr %.sroa.8.0..01921.sroa_idx.i, align 2, !alias.scope !50
  store i16 %i.de, ptr %.sroa.10.0..01921.sroa_idx.i, align 2, !alias.scope !50
  store i16 %i.dh, ptr %.sroa.12.0..01921.sroa_idx.i, align 2, !alias.scope !50
  store i16 %i.dk, ptr %.sroa.14.0..01921.sroa_idx.i, align 2, !alias.scope !50
  store i16 %i.dn, ptr %.sroa.16.0..01921.sroa_idx.i, align 2, !alias.scope !50
  store i16 %i.dq, ptr %.sroa.18.0..01921.sroa_idx.i, align 2, !alias.scope !50
  %i.dr = getelementptr inbounds nuw i8, ptr %.01921.i, i64 16 ; 2 uses
  %i.ds = add nsw i64 %.01822.i, -8               ; 3 uses
  %i.dt = icmp ugt i64 %i.ds, 8
  br i1 %i.dt, label %.lr.ph.i187, label %.lr.ph25.preheader.i, !llvm.loop !0

.lr.ph25.i:                                       ; preds = %.lr.ph25.i, %.lr.ph25.preheader.i.new
  %.024.i = phi i64 [ 0, %.lr.ph25.preheader.i.new ], [ %i.er, %.lr.ph25.i ] ; 5 uses
  %niter281 = phi i64 [ 0, %.lr.ph25.preheader.i.new ], [ %niter281.next.3, %.lr.ph25.i ]
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %.019.lcssa47.i, i64 %.024.i ; 2 uses
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !17, !alias.scope !50
  %i.dw = zext i16 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.dw
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !17, !alias.scope !49
  store i16 %i.dy, ptr %i.du, align 2, !tbaa !17, !alias.scope !50
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %.019.lcssa47.i, i64 %.024.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 2 ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !17, !alias.scope !50
  %i.ec = zext i16 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !17, !alias.scope !49
  store i16 %i.ee, ptr %i.ea, align 2, !tbaa !17, !alias.scope !50
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %.019.lcssa47.i, i64 %.024.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 2 uses
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !17, !alias.scope !50
  %i.ei = zext i16 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !17, !alias.scope !49
  store i16 %i.ek, ptr %i.eg, align 2, !tbaa !17, !alias.scope !50
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %.019.lcssa47.i, i64 %.024.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 6 ; 2 uses
  %i.en = load i16, ptr %i.em, align 2, !tbaa !17, !alias.scope !50
  %i.eo = zext i16 %i.en to i64
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.eo
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !17, !alias.scope !49
  store i16 %i.eq, ptr %i.em, align 2, !tbaa !17, !alias.scope !50
  %i.er = add nuw nsw i64 %.024.i, 4              ; 2 uses
  %niter281.next.3 = add i64 %niter281, 4         ; 2 uses
  %niter281.ncmp.3 = icmp eq i64 %niter281.next.3, %unroll_iter280
  br i1 %niter281.ncmp.3, label %applyLut.exit.loopexit.unr-lcssa, label %.lr.ph25.i, !llvm.loop !1

applyLut.exit.loopexit.unr-lcssa:                 ; preds = %.lr.ph25.i
  %lcmp.mod278.not = icmp eq i64 %xtraiter277, 0
  br i1 %lcmp.mod278.not, label %applyLut.exit, label %.lr.ph25.i.epil.preheader

.lr.ph25.i.epil.preheader:                        ; preds = %applyLut.exit.loopexit.unr-lcssa, %.lr.ph25.preheader.i
  %.024.i.epil.init = phi i64 [ 0, %.lr.ph25.preheader.i ], [ %i.er, %applyLut.exit.loopexit.unr-lcssa ]
  %lcmp.mod279 = icmp ne i64 %xtraiter277, 0
  tail call void @llvm.assume(i1 %lcmp.mod279)
  br label %.lr.ph25.i.epil

.lr.ph25.i.epil:                                  ; preds = %.lr.ph25.i.epil, %.lr.ph25.i.epil.preheader
  %.024.i.epil = phi i64 [ %i.ex, %.lr.ph25.i.epil ], [ %.024.i.epil.init, %.lr.ph25.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph25.i.epil ], [ 0, %.lr.ph25.i.epil.preheader ]
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %.019.lcssa47.i, i64 %.024.i.epil ; 2 uses
  %i.et = load i16, ptr %i.es, align 2, !tbaa !17, !alias.scope !50
  %i.eu = zext i16 %i.et to i64
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !17, !alias.scope !49
  store i16 %i.ew, ptr %i.es, align 2, !tbaa !17, !alias.scope !50
  %i.ex = add nuw nsw i64 %.024.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter277
  br i1 %epil.iter.cmp.not, label %applyLut.exit, label %.lr.ph25.i.epil, !llvm.loop !31

applyLut.exit:                                    ; preds = %applyLut.exit.loopexit.unr-lcssa, %.lr.ph25.i.epil, %.preheader.i
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !51
  %i.fa = icmp ult i64 %i.ez, 4
  br i1 %i.fa, label %.critedge, label %bb.n

bb.g:                                             ; preds = %.lr.ph206, %bb.h
  %i.fb = phi i32 [ %i.v, %.lr.ph206 ], [ %i.fi, %bb.h ]
  %i.fc = phi i16 [ %.pre, %.lr.ph206 ], [ %i.fj, %bb.h ] ; 2 uses
  %i.fd = phi i16 [ %.pre, %.lr.ph206 ], [ %i.fk, %bb.h ] ; 2 uses
  %.0142204 = phi i32 [ 0, %.lr.ph206 ], [ %i.fl, %bb.h ] ; 4 uses
  %.0146203 = phi ptr [ %i.x, %.lr.ph206 ], [ %.1147.lcssa, %bb.h ] ; 2 uses
  %.lcssa199205206 = phi i64 [ undef, %.lr.ph206 ], [ %.lcssa199, %bb.h ]
  %i.fe = load i32, ptr %i.y, align 8, !tbaa !52
  %i.ff = add nsw i32 %i.fe, %.0142204
  %i.fg = icmp sgt i16 %i.fd, 0
  br i1 %i.fg, label %.lr.ph.preheader, label %bb.h

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.fh = load ptr, ptr %i.h, align 8, !tbaa !48
  %.pre232 = load ptr, ptr %i.aa, align 8, !tbaa !53
  br label %.lr.ph

._crit_edge.a:                                    ; preds = %bb.m
  %.pre234 = load i32, ptr %i.u, align 4, !tbaa !45
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.a, %bb.g
  %i.fi = phi i32 [ %i.fb, %bb.g ], [ %.pre234, %._crit_edge.a ] ; 2 uses
  %i.fj = phi i16 [ %i.fc, %bb.g ], [ %i.gj, %._crit_edge.a ]
  %i.fk = phi i16 [ %i.fd, %bb.g ], [ %i.gj, %._crit_edge.a ]
  %.lcssa199 = phi i64 [ %.lcssa199205206, %bb.g ], [ %i.ga, %._crit_edge.a ] ; 2 uses
  %.1147.lcssa = phi ptr [ %.0146203, %bb.g ], [ %.2, %._crit_edge.a ]
  %i.fl = add nuw nsw i32 %.0142204, 1            ; 2 uses
  %i.fm = icmp slt i32 %i.fl, %i.fi
  br i1 %i.fm, label %bb.g, label %._crit_edge207, !llvm.loop !32

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %i.fn = phi i16 [ %i.fc, %.lr.ph.preheader ], [ %i.gj, %bb.m ] ; 2 uses
  %i.fo = phi ptr [ %.pre232, %.lr.ph.preheader ], [ %i.gk, %bb.m ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.1147200 = phi ptr [ %.0146203, %.lr.ph.preheader ], [ %.2, %bb.m ] ; 4 uses
  %.0149199 = phi ptr [ %i.fh, %.lr.ph.preheader ], [ %.1150, %bb.m ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [48 x i8], ptr %i.fo, i64 %indvars.iv ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !22
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !23
  %i.fu = sext i32 %i.fr to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 25
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !24
  %i.fx = sext i8 %i.fw to i64
  %i.fy = mul nsw i64 %i.fx, %i.fu                ; 4 uses
  %i.fz = sext i32 %i.ft to i64
  %i.ga = mul i64 %i.fy, %i.fz                    ; 3 uses
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.gc = getelementptr inbounds nuw i8, ptr %.0149199, i64 %i.ga ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fp, i64 20
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !25 ; 3 uses
  %i.gf = icmp sgt i32 %i.ge, 1
  br i1 %i.gf, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.gg = srem i32 %i.ff, %i.ge
  %.not176 = icmp eq i32 %i.gg, 0
  br i1 %.not176, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.gh = udiv i32 %.0142204, %i.ge
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.pn177.in = phi i32 [ %i.gh, %bb.k ], [ %.0142204, %bb.i ]
  %.pn177 = zext i32 %.pn177.in to i64
  %.pn = mul i64 %i.fy, %.pn177
  %.0148 = getelementptr inbounds nuw i8, ptr %.0149199, i64 %.pn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0148, ptr align 1 %.1147200, i64 %i.fy, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %.1147200, i64 %i.fy
  %.pre231 = load ptr, ptr %i.aa, align 8, !tbaa !53
  %.pre233 = load i16, ptr %i.z, align 8, !tbaa !47
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %.lr.ph, %bb.l
  %i.gj = phi i16 [ %.pre233, %bb.l ], [ %i.fn, %.lr.ph ], [ %i.fn, %bb.j ] ; 4 uses
  %i.gk = phi ptr [ %.pre231, %bb.l ], [ %i.fo, %.lr.ph ], [ %i.fo, %bb.j ]
  %.1150 = phi ptr [ %i.gc, %bb.l ], [ %.0149199, %.lr.ph ], [ %i.gc, %bb.j ]
  %.2 = phi ptr [ %i.gi, %bb.l ], [ %.1147200, %.lr.ph ], [ %.1147200, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gl = sext i16 %i.gj to i64
  %i.gm = icmp slt i64 %indvars.iv.next, %i.gl
  br i1 %i.gm, label %.lr.ph, label %._crit_edge.a, !llvm.loop !33

bb.n:                                             ; preds = %applyLut.exit
  store i16 %.2.i.1, ptr %i.c, align 1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %.1.i.1, ptr %i.gn, align 1
  %i.go = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %.not173 = icmp ugt i16 %.2.i.1, %.1.i.1
  br i1 %.not173, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %narrow = sub nuw i16 %.1.i.1, %.2.i.1
  %i.gp = zext i16 %narrow to i64                 ; 3 uses
  %i.gq = add nuw nsw i64 %i.gp, 5
  %i.gr = load i64, ptr %i.ey, align 8, !tbaa !51
  %i.gs = icmp ugt i64 %i.gq, %i.gr
  br i1 %i.gs, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gt = add nuw nsw i64 %i.gp, 1                ; 2 uses
  %i.gu = zext nneg i16 %.2.i.1 to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.gu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.go, ptr noundef nonnull align 1 dereferenceable(1) %i.gv, i64 %i.gt, i1 false)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gt
  %i.gx = add nuw nsw i64 %i.gp, 9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.0153 = phi ptr [ %i.gw, %bb.p ], [ %i.go, %bb.n ] ; 2 uses
  %.0151 = phi i64 [ %i.gx, %bb.p ], [ 8, %bb.n ] ; 4 uses
  %i.gy = load ptr, ptr %i.h, align 8, !tbaa !48  ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ha = load i16, ptr %i.gz, align 8, !tbaa !47 ; 2 uses
  %.not174212 = icmp sgt i16 %i.ha, 0
  br i1 %.not174212, label %.lr.ph217, label %.critedge178

.lr.ph217:                                        ; preds = %bb.q
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !53
  %i.hd = icmp ult i16 %i.co, 16384               ; 3 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph217, %._crit_edge211.split
  %i.he = phi i16 [ %i.ha, %.lr.ph217 ], [ %i.hu, %._crit_edge211.split ] ; 2 uses
  %indvars.iv228 = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next229, %._crit_edge211.split ] ; 2 uses
  %.0144213 = phi ptr [ %i.gy, %.lr.ph217 ], [ %i.ia, %._crit_edge211.split ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [48 x i8], ptr %i.hc, i64 %indvars.iv228 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !22 ; 7 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !23 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 25
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !24  ; 2 uses
  %i.hm = sdiv i8 %i.hl, 2                        ; 2 uses
  %i.hn = sext i8 %i.hm to i32                    ; 7 uses
  %i.ho = icmp sgt i8 %i.hl, 1
  br i1 %i.ho, label %bb.s, label %._crit_edge211.split

bb.s:                                             ; preds = %bb.r
  %i.hp = udiv i32 2147483647, %i.hn
  %i.hq = icmp sgt i32 %i.hh, %i.hp
  br i1 %i.hq, label %.critedge, label %.lr.ph210

.lr.ph210:                                        ; preds = %bb.s
  %i.hr = mul nsw i32 %i.hh, %i.hn
  %i.hs = tail call i32 @llvm.smin.i32(i32 %i.hh, i32 %i.hj) ; 2 uses
  %i.ht = sext i32 %i.hr to i64                   ; 3 uses
  %.not129.i = icmp slt i32 %i.hs, 2
  br i1 %.not129.i, label %._crit_edge211.split, label %.lr.ph133.i.preheader.preheader

.lr.ph133.i.preheader.preheader:                  ; preds = %.lr.ph210
  %wide.trip.count = zext nneg i32 %i.hn to i64
  br label %.lr.ph133.i.preheader

._crit_edge211.split.loopexit:                    ; preds = %wav_2D_encode.exit.loopexit
  %.pre235 = load i16, ptr %i.gz, align 8, !tbaa !47
  br label %._crit_edge211.split

._crit_edge211.split:                             ; preds = %bb.r, %._crit_edge211.split.loopexit, %.lr.ph210
  %i.hu = phi i16 [ %.pre235, %._crit_edge211.split.loopexit ], [ %i.he, %.lr.ph210 ], [ %i.he, %bb.r ] ; 2 uses
  %i.hv = sext i32 %i.hh to i64
  %i.hw = sext i32 %i.hj to i64
  %i.hx = mul nsw i64 %i.hw, %i.hv
  %i.hy = sext i8 %i.hm to i64
  %i.hz = mul i64 %i.hx, %i.hy
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %.0144213, i64 %i.hz
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %i.ib = sext i16 %i.hu to i64
  %.not174 = icmp slt i64 %indvars.iv.next229, %i.ib
  br i1 %.not174, label %bb.r, label %.critedge178, !llvm.loop !34

.lr.ph133.i.preheader:                            ; preds = %.lr.ph133.i.preheader.preheader, %wav_2D_encode.exit.loopexit
  %indvars.iv225 = phi i64 [ 0, %.lr.ph133.i.preheader.preheader ], [ %indvars.iv.next226, %wav_2D_encode.exit.loopexit ] ; 2 uses
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %.0144213, i64 %indvars.iv225 ; 3 uses
  br label %.lr.ph133.i

.lr.ph133.i:                                      ; preds = %.lr.ph133.i.preheader, %.loopexit.i
  %.095131.i = phi i32 [ %i.nw, %.loopexit.i ], [ 2, %.lr.ph133.i.preheader ] ; 7 uses
  %.096130.i = phi i32 [ %.095131.i, %.loopexit.i ], [ 1, %.lr.ph133.i.preheader ] ; 4 uses
  %i.id = sub nsw i32 %i.hj, %.095131.i
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = mul nsw i64 %i.ie, %i.ht                ; 2 uses
  %.idx.i = shl nsw i64 %i.if, 1
  %i.ig = getelementptr inbounds i8, ptr %i.ic, i64 %.idx.i
  %i.ih = sext i32 %.096130.i to i64
  %i.ii = mul nsw i64 %i.ih, %i.ht                ; 5 uses
  %i.ij = sext i32 %.095131.i to i64
  %i.ik = mul nsw i64 %i.ij, %i.ht
  %i.il = mul nsw i32 %.096130.i, %i.hn           ; 2 uses
  %i.im = mul nsw i32 %.095131.i, %i.hn           ; 2 uses
  %.not97118.i = icmp slt i64 %i.if, 0
  br i1 %.not97118.i, label %._crit_edge123.i, label %.lr.ph122.i

.lr.ph122.i:                                      ; preds = %.lr.ph133.i
  %i.in = sub nsw i32 %i.hh, %.095131.i
  %i.io = mul nsw i32 %i.in, %i.hn                ; 2 uses
  %i.ip = sext i32 %i.io to i64
  %i.iq = sext i32 %i.il to i64                   ; 4 uses
  %i.ir = sext i32 %i.im to i64                   ; 2 uses
  %i.is = and i32 %.096130.i, %i.hh
  %.not101.i = icmp eq i32 %i.is, 0               ; 3 uses
  %.idx135.i = shl nsw i64 %i.ip, 1
  %.not100116.i = icmp slt i32 %i.io, 0
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.lr.ph122.i
  %.094119.i = phi ptr [ %i.ic, %.lr.ph122.i ], [ %i.mq, %bb.x ] ; 7 uses
  %i.it = getelementptr inbounds i8, ptr %.094119.i, i64 %.idx135.i ; 2 uses
  br i1 %.not100116.i, label %._crit_edge.i190, label %.lr.ph.i188

.lr.ph.i188:                                      ; preds = %bb.t
  br i1 %i.hd, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i188, %.lr.ph.split.us.i
  %.093117.us.i = phi ptr [ %i.jz, %.lr.ph.split.us.i ], [ %.094119.i, %.lr.ph.i188 ] ; 5 uses
  %i.iu = getelementptr inbounds [2 x i8], ptr %.093117.us.i, i64 %i.iq ; 2 uses
  %i.iv = getelementptr inbounds [2 x i8], ptr %.093117.us.i, i64 %i.ii ; 3 uses
  %i.iw = getelementptr inbounds [2 x i8], ptr %i.iv, i64 %i.iq ; 2 uses
  %i.ix = load i16, ptr %.093117.us.i, align 2, !tbaa !17 ; 2 uses
  %i.iy = load i16, ptr %i.iu, align 2, !tbaa !17 ; 2 uses
end_hunk_0
