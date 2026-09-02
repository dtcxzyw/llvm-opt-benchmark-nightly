Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/huf_compress?download=true
inline.NumInlined: 440
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 72
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @HUF_readCTableHeader(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  ret i64 %.sroa.0.0.copyload
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define range(i64 -119, 128) i64 @HUF_writeCTable_wksp(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.c = ptrtoint ptr %5 to i64
  %i.d = sub i64 0, %i.c
  %i.e = and i64 %i.d, 3                          ; 3 uses
  %.not.i = icmp ult i64 %6, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 %i.e ; 2 uses
  %storemerge.i = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %i.e)
  %.0.i = select i1 %.not.i, ptr null, ptr %i.f   ; 5 uses
  %i.g = icmp ult i64 %storemerge.i, 748
  br i1 %i.g, label %.thread69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i32 %3, 255
  br i1 %i.h, label %.thread69, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 480 ; 9 uses
  store i8 0, ptr %i.i, align 4, !tbaa !10
  %i.j = add i32 %4, 1                            ; 5 uses
  %i.k = icmp ugt i32 %i.j, 1
  br i1 %i.k, label %iter.check, label %.preheader

iter.check:                                       ; preds = %bb.c
  %i.l = zext i32 %i.j to i64                     ; 2 uses
  %7 = trunc i32 %i.j to i8                       ; 3 uses
  %i.m = add nsw i64 %i.l, -1                     ; 5 uses
  %min.iters.check = icmp ult i32 %i.j, 9
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check96 = icmp ult i32 %i.j, 33
  br i1 %min.iters.check96, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.m, 24
  %n.vec = and i64 %i.m, -32                      ; 4 uses
  %i.o = or disjoint i64 %n.vec, 1                ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %7, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, splat (i8 16)
  %8 = sub <16 x i8> %broadcast.splat, %vec.ind
  %9 = sub <16 x i8> %broadcast.splat, %step.add
  %10 = getelementptr inbounds nuw i8, ptr %i.i, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 17
  store <16 x i8> %8, ptr %i.p, align 1, !tbaa !10
  store <16 x i8> %9, ptr %i.q, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.o, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec97 = and i64 %i.m, -8                     ; 3 uses
  %i.s = or disjoint i64 %n.vec97, 1
  %broadcast.splatinsert98 = insertelement <8 x i8> poison, i8 %7, i64 0
  %broadcast.splat99 = shufflevector <8 x i8> %broadcast.splatinsert98, <8 x i8> poison, <8 x i32> zeroinitializer
  %11 = trunc i64 %bc.resume.val to i8
  %broadcast.splatinsert100 = insertelement <8 x i8> poison, i8 %11, i64 0
  %broadcast.splat101 = shufflevector <8 x i8> %broadcast.splatinsert100, <8 x i8> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i8> %broadcast.splat101, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next104, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind103 = phi <8 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next105, %vec.epilog.vector.body ] ; 2 uses
  %12 = sub <8 x i8> %broadcast.splat99, %vec.ind103
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %index102
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store <8 x i8> %12, ptr %i.u, align 1, !tbaa !10
  %index.next104 = add nuw i64 %index102, 8       ; 2 uses
  %vec.ind.next105 = add <8 x i8> %vec.ind103, splat (i8 8)
  %i.v = icmp eq i64 %index.next104, %n.vec97
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n106 = icmp eq i64 %i.m, %n.vec97
  br i1 %cmp.n106, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph74

.lr.ph74:                                         ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 493 ; 5 uses
  %wide.trip.count83 = zext nneg i32 %3 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count83, 3       ; 3 uses
  %i.x = icmp ult i32 %3, 4
  br i1 %i.x, label %.epil.preheader, label %.lr.ph74.new

.lr.ph74.new:                                     ; preds = %.lr.ph74
  %unroll_iter = and i64 %wide.trip.count83, 252
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %13 = trunc i64 %indvars.iv to i8
  %14 = sub i8 %7, %13
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  store i8 %14, ptr %i.y, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !24

bb.d:                                             ; preds = %bb.d, %.lr.ph74.new
  %indvars.iv80 = phi i64 [ 0, %.lr.ph74.new ], [ %indvars.iv.next81.3, %bb.d ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph74.new ], [ %niter.next.3, %bb.d ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv80
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !15
  %i.ab = and i64 %i.aa, 255
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv80
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !10
  %indvars.iv.next81 = or disjoint i64 %indvars.iv80, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next81
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !15
  %i.ah = and i64 %i.ag, 255
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next81
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !10
  %indvars.iv.next81.1 = or disjoint i64 %indvars.iv80, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next81.1
  %i.am = load i64, ptr %i.al, align 8, !tbaa !15
  %i.an = and i64 %i.am, 255
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next81.1
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !10
  %indvars.iv.next81.2 = or disjoint i64 %indvars.iv80, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next81.2
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !15
  %i.at = and i64 %i.as, 255
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next81.2
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !10
  %indvars.iv.next81.3 = add nuw nsw i64 %indvars.iv80, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !25

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph74
  %indvars.iv80.epil.init = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next81.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod134 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod134)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv80.epil = phi i64 [ %indvars.iv80.epil.init, %.epil.preheader ], [ %indvars.iv.next81.epil, %bb.e ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv80.epil
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !15
  %i.az = and i64 %i.ay, 255
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv80.epil
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !10
  %indvars.iv.next81.epil = add nuw nsw i64 %indvars.iv80.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.e, !llvm.loop !26

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %.preheader
  %i.bd = icmp eq i64 %1, 0
  br i1 %i.bd, label %.thread69, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.bf = add i64 %1, -1                          ; 2 uses
  %i.bg = getelementptr i8, ptr %.0.i, i64 493    ; 29 uses
  %i.bh = zext nneg i32 %3 to i64                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 12, ptr %i.a, align 4, !tbaa !17
  %i.bi = ptrtoint ptr %.0.i to i64
  %i.bj = sub i64 0, %i.bi
  %i.bk = and i64 %i.bj, 3                        ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.bk ; 5 uses
  %.not75.i = icmp eq i64 %i.bk, 0
  br i1 %.not75.i, label %bb.g, label %HUF_compressWeights.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bm = icmp samesign ult i32 %3, 2
  br i1 %i.bm, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 400 ; 2 uses
  %i.bo = call i32 @HIST_count_simple(ptr noundef nonnull %i.bn, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bg, i64 noundef range(i64 0, 256) %i.bh) #14 ; 2 uses
  %i.bp = icmp ne i32 %3, %i.bo
  %i.bq = icmp ne i32 %i.bo, 1
  %cond.i = and i1 %i.bq, %i.bp
  br i1 %cond.i, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.br = load i32, ptr %i.a, align 4, !tbaa !17
  %i.bs = call i32 @FSE_optimalTableLog(i32 noundef 6, i64 noundef range(i64 0, 256) %i.bh, i32 noundef %i.br) #14 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 452 ; 3 uses
  %i.bu = load i32, ptr %i.a, align 4, !tbaa !17
  %i.bv = call i64 @FSE_normalizeCount(ptr noundef nonnull %i.bt, i32 noundef %i.bs, ptr noundef nonnull %i.bn, i64 noundef range(i64 0, 256) %i.bh, i32 noundef %i.bu, i32 noundef 0) #14 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, -119
  br i1 %i.bw, label %bb.j, label %HUF_compressWeights.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bx = load i32, ptr %i.a, align 4, !tbaa !17
  %i.by = call i64 @FSE_writeNCount(ptr noundef nonnull %i.be, i64 noundef range(i64 0, -1) %i.bf, ptr noundef nonnull %i.bt, i32 noundef %i.bx, i32 noundef %i.bs) #14 ; 5 uses
  %i.bz = icmp ult i64 %i.by, -119
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.by
  br i1 %i.bz, label %bb.k, label %HUF_compressWeights.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !17
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 236
  %i.cd = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bt, i32 noundef %i.cb, i32 noundef %i.bs, ptr noundef nonnull %i.cc, i64 noundef 164) #14 ; 2 uses
  %i.ce = icmp ult i64 %i.cd, -119
  br i1 %i.ce, label %bb.l, label %HUF_compressWeights.exit.thread

bb.l:                                             ; preds = %bb.k
  %gepdiff.i = sub nsw i64 %i.bf, %i.by
  %i.cf = call i64 @FSE_compress_usingCTable(ptr noundef nonnull %i.ca, i64 noundef %gepdiff.i, ptr noundef nonnull %i.bg, i64 noundef range(i64 0, 256) %i.bh, ptr noundef nonnull %i.bl) #14 ; 4 uses
  %i.cg = icmp ult i64 %i.cf, -119
  br i1 %i.cg, label %HUF_compressWeights.exit, label %HUF_compressWeights.exit.thread

HUF_compressWeights.exit.thread:                  ; preds = %bb.f, %bb.l, %bb.k, %bb.j, %bb.i
  %.5.i.ph = phi i64 [ %i.bv, %bb.i ], [ %i.by, %bb.j ], [ %i.cd, %bb.k ], [ %i.cf, %bb.l ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.thread69

.thread:                                          ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.o

HUF_compressWeights.exit:                         ; preds = %bb.l
  %i.ch = icmp eq i64 %i.cf, 0
  %i.ci = add nuw nsw i64 %i.cf, %i.by            ; 2 uses
  %spec.select.i = select i1 %i.ch, i64 0, i64 %i.ci ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.cj = icmp ult i64 %spec.select.i, -119
  br i1 %i.cj, label %bb.m, label %.thread69

bb.m:                                             ; preds = %HUF_compressWeights.exit
  %i.ck = icmp ugt i64 %spec.select.i, 1
  %i.cl = lshr i32 %3, 1
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = icmp ult i64 %spec.select.i, %i.cm
  %i.co = and i1 %i.ck, %i.cn
  br i1 %i.co, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cp = trunc nuw nsw i64 %spec.select.i to i8
  store i8 %i.cp, ptr %0, align 1, !tbaa !10
  %i.cq = add nuw nsw i64 %spec.select.i, 1
  br label %.thread69

bb.o:                                             ; preds = %bb.m, %.thread
  %i.cr = icmp samesign ugt i32 %3, 128
  br i1 %i.cr, label %.thread69, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = add nuw nsw i32 %3, 1
  %i.ct = lshr i32 %i.cs, 1
  %i.cu = add nuw nsw i32 %i.ct, 1
  %i.cv = zext nneg i32 %i.cu to i64              ; 5 uses
  %i.cw = icmp ult i64 %1, %i.cv
  br i1 %i.cw, label %.thread69, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = trunc nuw i32 %3 to i8
  %i.cy = add nuw i8 %i.cx, 127
  store i8 %i.cy, ptr %0, align 1, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  store i8 0, ptr %i.cz, align 1, !tbaa !10
  br i1 %.not, label %.thread69, label %iter.check122

iter.check122:                                    ; preds = %bb.q
  %i.da = add nsw i64 %i.bh, -1
  %i.db = lshr i64 %i.da, 1
  %i.dc = add nuw i64 %i.db, 1                    ; 5 uses
  %min.iters.check110 = icmp ult i32 %3, 15
  br i1 %min.iters.check110, label %.lr.ph77.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check122
  %scevgep = getelementptr i8, ptr %0, i64 1
  %i.dd = add nsw i64 %i.bh, -1                   ; 2 uses
  %i.de = lshr i64 %i.dd, 1
  %i.df = getelementptr i8, ptr %0, i64 %i.de
  %scevgep108 = getelementptr i8, ptr %i.df, i64 2
  %i.dg = and i64 %i.dd, -2
  %i.dh = getelementptr i8, ptr %.0.i, i64 %i.dg
  %scevgep109 = getelementptr i8, ptr %i.dh, i64 495
  %bound0 = icmp ult ptr %scevgep, %scevgep109
  %bound1 = icmp ult ptr %i.bg, %scevgep108
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph77.preheader, label %vector.main.loop.iter.check111
end_hunk_0
begin_hunk_1_@HUF_compress1X_usingCTable_internal_bmi2:bb.a
  %i.bpq = getelementptr i8, ptr %i.bpp, i64 -16
  %i.bpr = load i8, ptr %i.bpq, align 1, !tbaa !10
  %i.bps = zext i8 %i.bpr to i64
  %i.bpt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bps
  %i.bpu = load i64, ptr %i.bpt, align 8, !tbaa !15 ; 3 uses
  %i.bpv = and i64 %i.bpu, 255
  %i.bpw = lshr i64 %i.bpn, %i.bpv
  %i.bpx = or i64 %i.bpw, %i.bpu
  %i.bpy = add i64 %i.bpu, %i.bpo
  %i.bpz = getelementptr i8, ptr %2, i64 %indvars.iv919
  %i.bqa = getelementptr i8, ptr %i.bpz, i64 -17
  %i.bqb = load i8, ptr %i.bqa, align 1, !tbaa !10
  %i.bqc = zext i8 %i.bqb to i64
  %i.bqd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bqc
  %i.bqe = load i64, ptr %i.bqd, align 8, !tbaa !15 ; 3 uses
  %i.bqf = and i64 %i.bqe, 255
  %i.bqg = lshr i64 %i.bpx, %i.bqf
  %i.bqh = or i64 %i.bqg, %i.bqe
  %i.bqi = add i64 %i.bqe, %i.bpy
  %i.bqj = lshr i64 %i.bni, 3
  %i.bqk = and i64 %i.bnh, 7
  %i.bql = getelementptr inbounds nuw i8, ptr %.sroa.458.6721, i64 %i.bqj ; 2 uses
  %i.bqm = getelementptr i8, ptr %2, i64 %indvars.iv919
  %i.bqn = getelementptr i8, ptr %i.bqm, i64 -18
  %i.bqo = load i8, ptr %i.bqn, align 1, !tbaa !10
  %i.bqp = zext i8 %i.bqo to i64
  %i.bqq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bqp
  %i.bqr = load i64, ptr %i.bqq, align 8, !tbaa !15 ; 3 uses
  %i.bqs = and i64 %i.bqr, 255
  %i.bqt = lshr i64 %i.bqh, %i.bqs
  %i.bqu = add i64 %i.bqr, %i.bqi                 ; 2 uses
  %i.bqv = and i64 %i.bqu, 255
  %i.bqw = lshr i64 %i.bng, %i.bqv
  %i.bqx = or i64 %i.bqt, %i.bqw
  %i.bqy = or i64 %i.bqx, %i.bqr                  ; 3 uses
  %i.bqz = add i64 %i.bqu, %i.bqk                 ; 2 uses
  %i.bra = and i64 %i.bqz, 255                    ; 2 uses
  %i.brb = lshr i64 %i.bra, 3
  %i.brc = sub nsw i64 64, %i.bra
  %i.brd = lshr i64 %i.bqy, %i.brc
  %i.bre = and i64 %i.bqz, 7                      ; 2 uses
  store i64 %i.brd, ptr %i.bql, align 1, !tbaa !15
  %i.brf = getelementptr inbounds nuw i8, ptr %i.bql, i64 %i.brb ; 2 uses
  %indvars.iv.next920 = add nsw i64 %indvars.iv919, -18
  %i.brg = icmp samesign ugt i64 %indvars.iv919, 18
  br i1 %i.brg, label %.preheader583, label %HUF_compress1X_usingCTable_internal_body_loop.exit, !llvm.loop !1

HUF_compress1X_usingCTable_internal_body_loop.exit: ; preds = %.preheader603, %.preheader599, %.preheader595, %.preheader591, %.preheader587, %.preheader583, %.preheader, %bb.z, %bb.v, %bb.r, %bb.n, %bb.j, %bb.ad, %HUF_flushBits.exit68
  %.sroa.0.0 = phi i64 [ %i.bqy, %.preheader583 ], [ %i.pd, %.preheader587 ], [ %i.xn, %.preheader591 ], [ %i.ahe, %.preheader595 ], [ %i.arz, %.preheader599 ], [ %i.gp, %.preheader ], [ %.sroa.0.3, %HUF_flushBits.exit68 ], [ %.sroa.0.9, %bb.ad ], [ %.sroa.0.15, %bb.j ], [ %.sroa.0.21, %bb.n ], [ %.sroa.0.27, %bb.r ], [ %.sroa.0.33, %bb.v ], [ %.sroa.0.39, %bb.z ], [ %i.bdy, %.preheader603 ]
  %.sroa.264.0 = phi i64 [ %i.bre, %.preheader583 ], [ %i.pj, %.preheader587 ], [ %i.xt, %.preheader591 ], [ %i.ahk, %.preheader595 ], [ %i.asf, %.preheader599 ], [ %i.gv, %.preheader ], [ %.sroa.264.3, %HUF_flushBits.exit68 ], [ %.sroa.264.9, %bb.ad ], [ %.sroa.264.15, %bb.j ], [ %.sroa.264.21, %bb.n ], [ %.sroa.264.27, %bb.r ], [ %.sroa.264.33, %bb.v ], [ %.sroa.264.39, %bb.z ], [ %i.bee, %.preheader603 ]
  %.sroa.458.0 = phi ptr [ %i.brf, %.preheader583 ], [ %i.pk, %.preheader587 ], [ %i.xu, %.preheader591 ], [ %i.ahl, %.preheader595 ], [ %i.asg, %.preheader599 ], [ %spec.select580, %.preheader ], [ %.sroa.458.2, %HUF_flushBits.exit68 ], [ %.sroa.458.5, %bb.ad ], [ %.sroa.458.8, %bb.j ], [ %.sroa.458.11, %bb.n ], [ %.sroa.458.14, %bb.r ], [ %.sroa.458.17, %bb.v ], [ %.sroa.458.20, %bb.z ], [ %i.bef, %.preheader603 ] ; 2 uses
  %i.brh = lshr i64 %.sroa.0.0, 1
  %i.bri = or disjoint i64 %i.brh, -9223372036854775808
  %i.brj = add nuw nsw i64 %.sroa.264.0, -9223372036854775807 ; 2 uses
  %i.brk = and i64 %i.brj, 255                    ; 2 uses
  %i.brl = lshr i64 %i.brk, 3
  %i.brm = sub nuw nsw i64 64, %i.brk
  %i.brn = lshr i64 %i.bri, %i.brm
  store i64 %i.brn, ptr %.sroa.458.0, align 1, !tbaa !15
  %i.bro = getelementptr inbounds nuw i8, ptr %.sroa.458.0, i64 %i.brl ; 2 uses
  %i.brp = icmp ugt ptr %i.bro, %i.e
  %spec.store.select.i = select i1 %i.brp, ptr %i.e, ptr %i.bro ; 2 uses
  %.not.i69 = icmp ult ptr %spec.store.select.i, %i.e
  br i1 %.not.i69, label %bb.ae, label %HUF_compress1X_usingCTable_internal_body.exit

bb.ae:                                            ; preds = %HUF_compress1X_usingCTable_internal_body_loop.exit
  %i.brq = and i64 %i.brj, 7
  %i.brr = ptrtoint ptr %spec.store.select.i to i64
  %i.brs = ptrtoint ptr %0 to i64
  %i.brt = icmp ne i64 %i.brq, 0
  %i.bru = zext i1 %i.brt to i64
  %i.brv = sub i64 %i.bru, %i.brs
  %i.brw = add i64 %i.brv, %i.brr
  br label %HUF_compress1X_usingCTable_internal_body.exit

HUF_compress1X_usingCTable_internal_body.exit:    ; preds = %bb.ae, %HUF_compress1X_usingCTable_internal_body_loop.exit, %bb.a, %bb.b
  %.1.i = phi i64 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.brw, %bb.ae ], [ 0, %HUF_compress1X_usingCTable_internal_body_loop.exit ]
  ret i64 %.1.i
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef range(i64 1, 131073) %4, i32 noundef range(i32 0, 2) %5, ptr noundef %6, i32 noundef %7) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i32 %5, 0
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef %1, i64 noundef %i.d, ptr noundef %3, i64 noundef %4, ptr noundef %6, i32 noundef %7)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call fastcc i64 @HUF_compress4X_usingCTable_internal(ptr noundef %1, i64 noundef %i.d, ptr noundef %3, i64 noundef %4, ptr noundef %6, i32 noundef %7)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i64 [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 4 uses
  %i.h = icmp ult i64 %i.g, -119
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %0 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = add nsw i64 %4, -1
  %.not27 = icmp ult i64 %i.m, %i.n
  %. = select i1 %.not27, i64 %i.m, i64 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ 0, %bb.e ], [ %i.g, %bb.d ], [ %., %bb.f ]
  ret i64 %.0
}

declare i64 @HIST_count_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v2i32(<2 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, !11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"long", !6, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!7, !7, i64 0}
!18 = !{!"short", !6, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"nodeElt_s", !7, i64 0, !18, i64 4, !6, i64 6, !6, i64 7}
!21 = !{!20, !7, i64 0}
!22 = distinct !{!22, !11, !12, !13}
!23 = distinct !{!23, !11, !12, !13}
!24 = distinct !{!24, !11, !13, !12}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !"LVerDomain"}
!28 = distinct !{!28, !27}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !11, !12, !13}
!31 = distinct !{!31, !11, !12, !13}
!32 = distinct !{!32, !11, !12}
!33 = !{!"branch_weights", i32 8, i32 24}
!34 = !{!28}
!35 = !{!29}
!36 = !{!"branch_weights", i32 8, i32 8}
!37 = distinct !{!37, !11, !12, !13}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11, !13, !12}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !16}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !16}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !11}
!57 = distinct !{!57, !11}
!58 = distinct !{!58, !11}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, !16}
!62 = distinct !{!62, !11}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !11}
!66 = distinct !{!66, !16}
!67 = distinct !{!67, !11}
!68 = !{!"", !18, i64 0, !18, i64 2}
!69 = !{!68, !18, i64 0}
!70 = !{!68, !18, i64 2}
!71 = !{!20, !6, i64 6}
!72 = !{!20, !18, i64 4}
!73 = !{!20, !6, i64 7}
!74 = distinct !{!74, !11, !12, !13}
!75 = distinct !{!75, !11, !13, !12}
!76 = distinct !{!76, !11, !12, !13}
!77 = distinct !{!77, !11, !13, !12}
!78 = distinct !{!78, !11, !12, !13}
!79 = distinct !{!79, !11, !13, !12}
!80 = distinct !{!80, !11, !12, !13}
!81 = distinct !{!81, !11, !13, !12}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11, !12, !13}
!84 = distinct !{!84, !11, !13, !12}
!85 = distinct !{!85, !11, !12, !13}
!86 = distinct !{!86, !11, !13, !12}
!87 = distinct !{!87, !11, !12, !13}
!88 = distinct !{!88, !11, !13, !12}
!89 = distinct !{!89, !11}
!90 = distinct !{!90, !11}
end_hunk_1
