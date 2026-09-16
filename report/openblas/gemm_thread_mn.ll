Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/gemm_thread_mn?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.blas_queue = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, %union.pthread_mutex_t, %union.pthread_cond_t, i32, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }

@divide_rule = internal unnamed_addr constant [65 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 3], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 1, i32 5], [2 x i32] [i32 2, i32 3], [2 x i32] [i32 1, i32 7], [2 x i32] [i32 2, i32 4], [2 x i32] [i32 3, i32 3], [2 x i32] [i32 2, i32 5], [2 x i32] [i32 1, i32 11], [2 x i32] [i32 2, i32 6], [2 x i32] [i32 1, i32 13], [2 x i32] [i32 2, i32 7], [2 x i32] [i32 3, i32 5], [2 x i32] [i32 4, i32 4], [2 x i32] [i32 1, i32 17], [2 x i32] [i32 3, i32 6], [2 x i32] [i32 1, i32 19], [2 x i32] [i32 4, i32 5], [2 x i32] [i32 3, i32 7], [2 x i32] [i32 2, i32 11], [2 x i32] [i32 1, i32 23], [2 x i32] [i32 4, i32 6], [2 x i32] [i32 5, i32 5], [2 x i32] [i32 2, i32 13], [2 x i32] [i32 3, i32 9], [2 x i32] [i32 4, i32 7], [2 x i32] [i32 1, i32 29], [2 x i32] [i32 5, i32 6], [2 x i32] [i32 1, i32 31], [2 x i32] [i32 4, i32 8], [2 x i32] [i32 3, i32 11], [2 x i32] [i32 2, i32 17], [2 x i32] [i32 5, i32 7], [2 x i32] [i32 6, i32 6], [2 x i32] [i32 1, i32 37], [2 x i32] [i32 2, i32 19], [2 x i32] [i32 3, i32 13], [2 x i32] [i32 5, i32 8], [2 x i32] [i32 1, i32 41], [2 x i32] [i32 6, i32 7], [2 x i32] [i32 1, i32 43], [2 x i32] [i32 4, i32 11], [2 x i32] [i32 5, i32 9], [2 x i32] [i32 2, i32 23], [2 x i32] [i32 1, i32 47], [2 x i32] [i32 6, i32 8], [2 x i32] [i32 7, i32 7], [2 x i32] [i32 5, i32 10], [2 x i32] [i32 3, i32 17], [2 x i32] [i32 4, i32 13], [2 x i32] [i32 1, i32 53], [2 x i32] [i32 6, i32 9], [2 x i32] [i32 5, i32 11], [2 x i32] [i32 7, i32 8], [2 x i32] [i32 3, i32 19], [2 x i32] [i32 2, i32 29], [2 x i32] [i32 1, i32 59], [2 x i32] [i32 6, i32 10], [2 x i32] [i32 1, i32 61], [2 x i32] [i32 2, i32 31], [2 x i32] [i32 7, i32 9], [2 x i32] [i32 8, i32 8]], align 16
@blas_quick_divide_table = external local_unnamed_addr global [0 x i32], align 4

; Function Attrs: nounwind uwtable
define noundef i32 @gemm_thread_mn(i32 noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %8 = alloca [64 x %struct.blas_queue], align 16 ; 16 uses
  %i.c = alloca [65 x i64], align 16              ; 9 uses
  %i.d = alloca [65 x i64], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.e = getelementptr inbounds [8 x i8], ptr @divide_rule, i64 %7 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = load i64, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !18
  %i.p = sub nsw i64 %i.o, %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 0, %bb.b ], [ %i.m, %bb.c ]  ; 2 uses
  %.067 = phi i64 [ %i.l, %bb.b ], [ %i.p, %bb.c ] ; 2 uses
  store i64 %.sink, ptr %i.c, align 16, !tbaa !18
  %i.q = icmp sgt i64 %.067, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %blas_quickdivide.exit
  %i.r = phi i64 [ %i.ah, %blas_quickdivide.exit ], [ %.sink, %bb.d ]
  %.184 = phi i64 [ %i.af, %blas_quickdivide.exit ], [ %.067, %bb.d ] ; 3 uses
  %.07183 = phi i64 [ %i.ai, %blas_quickdivide.exit ], [ 0, %bb.d ] ; 3 uses
  %i.s = xor i64 %.07183, -1
  %i.t = add nsw i64 %i.s, %i.g
  %i.u = add i64 %i.t, %.184
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = trunc i64 %.07183 to i32
  %i.x = sub i32 %i.f, %i.w                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.y = icmp ult i32 %i.x, 2
  br i1 %i.y, label %blas_quickdivide.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @blas_quick_divide_table, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !13
  %i.ac = tail call { i32, i32 } asm sideeffect "mull $0", "={dx},={ax},0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %i.ab, i32 %i.v) #6, !srcloc !19
  %i.ad = extractvalue { i32, i32 } %i.ac, 0
  store volatile i32 %i.ad, ptr %i.b, align 4, !tbaa !13
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.b, align 4, !tbaa !13
  br label %blas_quickdivide.exit

blas_quickdivide.exit:                            ; preds = %.lr.ph, %bb.e
  %.0.i = phi i32 [ %.0..0..0..0..0..0..i, %bb.e ], [ %i.v, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = zext i32 %.0.i to i64                   ; 2 uses
  %i.af = sub nsw i64 %.184, %i.ae                ; 3 uses
  %i.ag = icmp slt i64 %i.af, 0
  %spec.select = select i1 %i.ag, i64 %.184, i64 %i.ae
  %i.ah = add nsw i64 %spec.select, %i.r          ; 2 uses
  %i.ai = add nuw nsw i64 %.07183, 1              ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ai
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !18
  %i.ak = icmp sgt i64 %i.af, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %blas_quickdivide.exit, %bb.d
  %.071.lcssa = phi i64 [ 0, %bb.d ], [ %i.ai, %blas_quickdivide.exit ] ; 3 uses
  %.not76 = icmp eq ptr %3, null
  br i1 %.not76, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = load i64, ptr %i.al, align 8, !tbaa !21
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.an = load i64, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !18
  %i.aq = sub nsw i64 %i.ap, %i.an
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink105 = phi i64 [ 0, %bb.f ], [ %i.an, %bb.g ] ; 2 uses
  %.2 = phi i64 [ %i.am, %bb.f ], [ %i.aq, %bb.g ] ; 2 uses
  store i64 %.sink105, ptr %i.d, align 16, !tbaa !18
  %i.ar = icmp sgt i64 %.2, 0
  br i1 %i.ar, label %.lr.ph88, label %._crit_edge97.thread

.preheader.lr.ph:                                 ; preds = %blas_quickdivide.exit81
  %.not100 = icmp eq i64 %.071.lcssa, 0
  br i1 %.not100, label %._crit_edge97.thread, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %smax = tail call i64 @llvm.smax.i64(i64 %.071.lcssa, i64 1) ; 2 uses
  %xtraiter = and i64 %smax, 3                    ; 3 uses
  %9 = icmp slt i64 %.071.lcssa, 4
  %unroll_iter = and i64 %smax, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod121 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge93.us
  %.096.us = phi i64 [ %i.cw, %._crit_edge93.us ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %.07295.us = phi i64 [ %.lcssa, %._crit_edge93.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.096.us ; 5 uses
  br i1 %9, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %.491.us = phi i64 [ %i.ck, %.preheader.us.new ], [ 0, %.preheader.us ] ; 5 uses
  %.17390.us = phi i64 [ %i.ch, %.preheader.us.new ], [ %.07295.us, %.preheader.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.at = getelementptr inbounds [168 x i8], ptr %8, i64 %.17390.us ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 160
  store i32 %0, ptr %i.au, align 8, !tbaa !24
  store ptr %4, ptr %i.at, align 8, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %1, ptr %i.av, align 8, !tbaa !26
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.491.us
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store ptr %i.as, ptr %i.ay, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.ba = add nsw i64 %.17390.us, 1               ; 2 uses
  %i.bb = getelementptr inbounds [168 x i8], ptr %8, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !29
  %i.bd = getelementptr inbounds [168 x i8], ptr %8, i64 %i.ba ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 160
  store i32 %0, ptr %i.be, align 8, !tbaa !24
  store ptr %4, ptr %i.bd, align 8, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %1, ptr %i.bf, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.491.us
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !27
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store ptr %i.as, ptr %i.bj, align 8, !tbaa !28
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bl = add nsw i64 %.17390.us, 2               ; 2 uses
  %i.bm = getelementptr inbounds [168 x i8], ptr %8, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !29
  %i.bo = getelementptr inbounds [168 x i8], ptr %8, i64 %i.bl ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 160
  store i32 %0, ptr %i.bp, align 8, !tbaa !24
  store ptr %4, ptr %i.bo, align 8, !tbaa !25
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %1, ptr %i.bq, align 8, !tbaa !26
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.491.us
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store ptr %i.as, ptr %i.bu, align 8, !tbaa !28
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bw = add nsw i64 %.17390.us, 3               ; 2 uses
  %i.bx = getelementptr inbounds [168 x i8], ptr %8, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !29
  %i.bz = getelementptr inbounds [168 x i8], ptr %8, i64 %i.bw ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 160
  store i32 %0, ptr %i.ca, align 8, !tbaa !24
  store ptr %4, ptr %i.bz, align 8, !tbaa !25
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store ptr %1, ptr %i.cb, align 8, !tbaa !26
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.491.us
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !27
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  store ptr %i.as, ptr %i.cf, align 8, !tbaa !28
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.ch = add nsw i64 %.17390.us, 4               ; 4 uses
  %i.ci = getelementptr inbounds [168 x i8], ptr %8, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false)
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !29
  %i.ck = add nuw nsw i64 %.491.us, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge93.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !9

._crit_edge93.us.unr-lcssa:                       ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge93.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge93.us.unr-lcssa, %.preheader.us
  %.491.us.epil.init = phi i64 [ 0, %.preheader.us ], [ %i.ck, %._crit_edge93.us.unr-lcssa ]
  %.17390.us.epil.init = phi i64 [ %.07295.us, %.preheader.us ], [ %i.ch, %._crit_edge93.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod121)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.491.us.epil = phi i64 [ %.491.us.epil.init, %.epil.preheader ], [ %i.cv, %bb.i ] ; 2 uses
  %.17390.us.epil = phi i64 [ %.17390.us.epil.init, %.epil.preheader ], [ %i.cs, %bb.i ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.cl = getelementptr inbounds [168 x i8], ptr %8, i64 %.17390.us.epil ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 160
  store i32 %0, ptr %i.cm, align 8, !tbaa !24
  store ptr %4, ptr %i.cl, align 8, !tbaa !25
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %1, ptr %i.cn, align 8, !tbaa !26
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.491.us.epil
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !27
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store ptr %i.as, ptr %i.cq, align 8, !tbaa !28
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cs = add nsw i64 %.17390.us.epil, 1          ; 3 uses
  %i.ct = getelementptr inbounds [168 x i8], ptr %8, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i8 0, i64 16, i1 false)
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !29
  %i.cv = add nuw nsw i64 %.491.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge93.us, label %bb.i, !llvm.loop !10

._crit_edge93.us:                                 ; preds = %bb.i, %._crit_edge93.us.unr-lcssa
  %.lcssa = phi i64 [ %i.ch, %._crit_edge93.us.unr-lcssa ], [ %i.cs, %bb.i ] ; 4 uses
  %i.cw = add nuw nsw i64 %.096.us, 1
  %exitcond104.not = icmp eq i64 %.096.us, %.07085
  br i1 %exitcond104.not, label %._crit_edge97, label %.preheader.us, !llvm.loop !11

.lr.ph88:                                         ; preds = %bb.h, %blas_quickdivide.exit81
  %i.cx = phi i64 [ %i.dn, %blas_quickdivide.exit81 ], [ %.sink105, %bb.h ]
  %.386 = phi i64 [ %i.dl, %blas_quickdivide.exit81 ], [ %.2, %bb.h ] ; 3 uses
  %.07085 = phi i64 [ %i.do, %blas_quickdivide.exit81 ], [ 0, %bb.h ] ; 4 uses
  %i.cy = xor i64 %.07085, -1
  %i.cz = add nsw i64 %i.cy, %i.j
  %i.da = add i64 %i.cz, %.386
  %i.db = trunc i64 %i.da to i32                  ; 2 uses
  %i.dc = trunc i64 %.07085 to i32
  %i.dd = sub i32 %i.i, %i.dc                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.de = icmp ult i32 %i.dd, 2
  br i1 %i.de, label %blas_quickdivide.exit81, label %bb.j

bb.j:                                             ; preds = %.lr.ph88
  %i.df = zext i32 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr @blas_quick_divide_table, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !13
  %i.di = tail call { i32, i32 } asm sideeffect "mull $0", "={dx},={ax},0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %i.dh, i32 %i.db) #6, !srcloc !19
  %i.dj = extractvalue { i32, i32 } %i.di, 0
  store volatile i32 %i.dj, ptr %i.a, align 4, !tbaa !13
  %.0..0..0..0..0..0..i79 = load volatile i32, ptr %i.a, align 4, !tbaa !13
  br label %blas_quickdivide.exit81

blas_quickdivide.exit81:                          ; preds = %.lr.ph88, %bb.j
  %.0.i80 = phi i32 [ %.0..0..0..0..0..0..i79, %bb.j ], [ %i.db, %.lr.ph88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dk = zext i32 %.0.i80 to i64                 ; 2 uses
  %i.dl = sub nsw i64 %.386, %i.dk                ; 3 uses
  %i.dm = icmp slt i64 %i.dl, 0
  %spec.select78 = select i1 %i.dm, i64 %.386, i64 %i.dk
  %i.dn = add nsw i64 %spec.select78, %i.cx       ; 2 uses
  %i.do = add nuw nsw i64 %.07085, 1              ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.do
  store i64 %i.dn, ptr %i.dp, align 8, !tbaa !18
  %i.dq = icmp sgt i64 %i.dl, 0
  br i1 %i.dq, label %.lr.ph88, label %.preheader.lr.ph, !llvm.loop !12

._crit_edge97:                                    ; preds = %._crit_edge93.us
  %.not77 = icmp eq i64 %.lcssa, 0
  br i1 %.not77, label %._crit_edge97.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge97
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %5, ptr %i.dr, align 16, !tbaa !31
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr %6, ptr %i.ds, align 8, !tbaa !32
  %i.dt = getelementptr [168 x i8], ptr %8, i64 %.lcssa
  %i.du = getelementptr i8, ptr %i.dt, i64 -104
  store ptr null, ptr %i.du, align 8, !tbaa !29
  %i.dv = call i32 @exec_blas(i64 noundef %.lcssa, ptr noundef nonnull %8) #6 ; 0 uses
  br label %._crit_edge97.thread

._crit_edge97.thread:                             ; preds = %bb.h, %.preheader.lr.ph, %bb.k, %._crit_edge97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @exec_blas(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !20}
!9 = distinct !{!9, !20}
!10 = distinct !{!10, !30}
!11 = distinct !{!11, !20}
!12 = distinct !{!12, !20}
!13 = !{!5, !5, i64 0}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"long", !4, i64 0}
!16 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !14, i64 104, !15, i64 112, !14, i64 120, !5, i64 128}
!17 = !{!16, !15, i64 48}
!18 = !{!15, !15, i64 0}
!19 = !{i64 1070538}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!16, !15, i64 56}
!22 = !{!"p1 _ZTS10blas_queue", !14, i64 0}
!23 = !{!"blas_queue", !14, i64 0, !15, i64 8, !15, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !22, i64 64, !4, i64 72, !4, i64 112, !5, i64 160, !5, i64 164}
!24 = !{!23, !5, i64 160}
!25 = !{!23, !14, i64 0}
!26 = !{!23, !14, i64 24}
!27 = !{!23, !14, i64 32}
!28 = !{!23, !14, i64 40}
!29 = !{!23, !22, i64 64}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{!23, !14, i64 48}
!32 = !{!23, !14, i64 56}
end_hunk_0
