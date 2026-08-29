Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaswp_ncopy?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef i32 @dlaswp_ncopy(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i64 %1, -1                       ; 6 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %5, i64 %i.a ; 6 uses
  %i.c = icmp slt i64 %0, 1
  br i1 %i.c, label %bb.ao, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %3, i64 -8 ; 5 uses
  %i.e = lshr i64 %0, 1                           ; 6 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.loopexit308, label %.preheader307

.preheader307:                                    ; preds = %bb.b
  %i.f = load i32, ptr %i.b, align 4, !tbaa !8
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !8
  %i.j = sub nsw i64 %2, %i.a                     ; 2 uses
  %i.k = ashr i64 %i.j, 1                         ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  %i.m = and i64 %i.j, 1
  %.not298 = icmp eq i64 %i.m, 0                  ; 2 uses
  %.idx = shl nsw i64 %4, 4                       ; 4 uses
  br i1 %i.l, label %.preheader305.us, label %.preheader307.split

.preheader305.us:                                 ; preds = %.preheader307, %bb.u
  %.0285.us = phi ptr [ %i.bo, %bb.u ], [ %i.d, %.preheader307 ] ; 5 uses
  %.0280.us = phi ptr [ %.3283.us, %bb.u ], [ %6, %.preheader307 ]
  %.0277.us = phi i64 [ %i.bp, %bb.u ], [ %i.e, %.preheader307 ] ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %.0285.us, i64 %i.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %4
  %i.q = getelementptr inbounds [8 x i8], ptr %.0285.us, i64 %i.g ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %4
  br label %bb.c

bb.c:                                             ; preds = %.preheader305.us, %bb.p
  %.1281.us = phi ptr [ %i.az, %bb.p ], [ %.0280.us, %.preheader305.us ] ; 19 uses
  %.0278.us = phi i64 [ %i.be, %bb.p ], [ %i.k, %.preheader305.us ] ; 2 uses
  %.pn.us = phi ptr [ %.0275.us, %bb.p ], [ %i.b, %.preheader305.us ] ; 2 uses
  %.0271.us = phi ptr [ %i.bc, %bb.p ], [ %i.o, %.preheader305.us ] ; 5 uses
  %.0269.us = phi ptr [ %i.bd, %bb.p ], [ %i.p, %.preheader305.us ] ; 4 uses
  %.0267.us = phi ptr [ %i.ba, %bb.p ], [ %i.q, %.preheader305.us ] ; 8 uses
  %.pn303.in.us = phi i32 [ %i.ah, %bb.p ], [ %i.i, %.preheader305.us ]
  %.0264.us = phi ptr [ %i.bb, %bb.p ], [ %i.r, %.preheader305.us ] ; 4 uses
  %.pn303.us = sext i32 %.pn303.in.us to i64
  %.0265.us = getelementptr inbounds [8 x i8], ptr %.0285.us, i64 %.pn303.us ; 9 uses
  %.0.us = getelementptr inbounds [8 x i8], ptr %.0265.us, i64 %4 ; 4 uses
  %.0275.us = getelementptr inbounds nuw i8, ptr %.pn.us, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0271.us, i64 96
  tail call void @llvm.prefetch.p0(ptr nonnull %i.s, i32 0, i32 0, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %.0269.us, i64 96
  tail call void @llvm.prefetch.p0(ptr nonnull %i.t, i32 0, i32 0, i32 1)
  %i.u = load double, ptr %.0271.us, align 8, !tbaa !9 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0271.us, i64 8 ; 4 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !9 ; 6 uses
  %i.x = load double, ptr %.0269.us, align 8, !tbaa !9 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0269.us, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !9 ; 6 uses
  %i.aa = load double, ptr %.0267.us, align 8, !tbaa !9 ; 2 uses
  %i.ab = load double, ptr %.0265.us, align 8, !tbaa !9 ; 3 uses
  %i.ac = load double, ptr %.0264.us, align 8, !tbaa !9 ; 2 uses
  %i.ad = load double, ptr %.0.us, align 8, !tbaa !9 ; 3 uses
  %i.ae = load i32, ptr %.0275.us, align 4, !tbaa !8
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.pn.us, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !8
  %i.ai = icmp eq ptr %.0267.us, %.0271.us
  br i1 %i.ai, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = icmp eq ptr %.0267.us, %i.v
  br i1 %i.aj, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = icmp eq ptr %.0265.us, %i.v
  %i.al = getelementptr inbounds nuw i8, ptr %.1281.us, i64 24 ; 3 uses
  br i1 %i.ak, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = icmp eq ptr %.0265.us, %.0267.us
  store double %i.aa, ptr %.1281.us, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %.1281.us, i64 8
  store double %i.ac, ptr %i.an, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %.1281.us, i64 16 ; 2 uses
  br i1 %i.am, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store double %i.ab, ptr %i.ao, align 8, !tbaa !9
  store double %i.ad, ptr %i.al, align 8, !tbaa !9
  store double %i.u, ptr %.0267.us, align 8, !tbaa !9
  store double %i.w, ptr %.0265.us, align 8, !tbaa !9
  store double %i.x, ptr %.0264.us, align 8, !tbaa !9
  store double %i.z, ptr %.0.us, align 8, !tbaa !9
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  store double %i.u, ptr %i.ao, align 8, !tbaa !9
  store double %i.x, ptr %i.al, align 8, !tbaa !9
  store double %i.w, ptr %.0267.us, align 8, !tbaa !9
  store double %i.z, ptr %.0264.us, align 8, !tbaa !9
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  store double %i.aa, ptr %.1281.us, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %.1281.us, i64 8
  store double %i.ac, ptr %i.ap, align 8, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %.1281.us, i64 16
  store double %i.w, ptr %i.aq, align 8, !tbaa !9
  store double %i.z, ptr %i.al, align 8, !tbaa !9
  store double %i.u, ptr %.0267.us, align 8, !tbaa !9
  store double %i.x, ptr %.0264.us, align 8, !tbaa !9
  br label %bb.p

bb.j:                                             ; preds = %bb.d
  %i.ar = icmp eq ptr %.0265.us, %.0267.us
  store double %i.w, ptr %.1281.us, align 8, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %.1281.us, i64 8
  store double %i.z, ptr %i.as, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %.1281.us, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.1281.us, i64 24 ; 2 uses
  br i1 %i.ar, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store double %i.ab, ptr %i.at, align 8, !tbaa !9
  store double %i.ad, ptr %i.au, align 8, !tbaa !9
  store double %i.u, ptr %.0265.us, align 8, !tbaa !9
  store double %i.x, ptr %.0.us, align 8, !tbaa !9
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  store double %i.u, ptr %i.at, align 8, !tbaa !9
  store double %i.x, ptr %i.au, align 8, !tbaa !9
  br label %bb.p

bb.m:                                             ; preds = %bb.c
  %i.av = icmp eq ptr %.0265.us, %i.v
  store double %i.u, ptr %.1281.us, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %.1281.us, i64 8
  store double %i.x, ptr %i.aw, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %.1281.us, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.1281.us, i64 24 ; 2 uses
  br i1 %i.av, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store double %i.ab, ptr %i.ax, align 8, !tbaa !9
  store double %i.ad, ptr %i.ay, align 8, !tbaa !9
  store double %i.w, ptr %.0265.us, align 8, !tbaa !9
  store double %i.z, ptr %.0.us, align 8, !tbaa !9
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store double %i.w, ptr %i.ax, align 8, !tbaa !9
  store double %i.z, ptr %i.ay, align 8, !tbaa !9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %.1281.us, i64 32 ; 4 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %.0285.us, i64 %i.af ; 5 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %4 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0271.us, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0269.us, i64 16 ; 2 uses
  %i.be = add nsw i64 %.0278.us, -1
  %i.bf = icmp sgt i64 %.0278.us, 1
  br i1 %i.bf, label %bb.c, label %.loopexit306.us, !llvm.loop !11

bb.q:                                             ; preds = %.loopexit306.us
  %i.bg = load double, ptr %i.bc, align 8, !tbaa !9 ; 2 uses
  %i.bh = load double, ptr %i.bd, align 8, !tbaa !9 ; 2 uses
  %i.bi = icmp eq ptr %i.bc, %i.ba
  br i1 %i.bi, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load double, ptr %i.bb, align 8, !tbaa !9
  %i.bk = load double, ptr %i.ba, align 8, !tbaa !9
  store double %i.bk, ptr %i.az, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %.1281.us, i64 40
  store double %i.bj, ptr %i.bl, align 8, !tbaa !9
  store double %i.bg, ptr %i.ba, align 8, !tbaa !9
  store double %i.bh, ptr %i.bb, align 8, !tbaa !9
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  store double %i.bg, ptr %i.az, align 8, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %.1281.us, i64 40
  store double %i.bh, ptr %i.bm, align 8, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %.1281.us, i64 48
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit306.us
  %.3283.us = phi ptr [ %i.bn, %bb.t ], [ %i.az, %.loopexit306.us ] ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.0285.us, i64 %.idx ; 2 uses
  %i.bp = add nsw i64 %.0277.us, -1
  %i.bq = icmp sgt i64 %.0277.us, 1
  br i1 %i.bq, label %.preheader305.us, label %.loopexit308, !llvm.loop !13

.loopexit306.us:                                  ; preds = %bb.p
  br i1 %.not298, label %bb.u, label %bb.q

.preheader307.split:                              ; preds = %.preheader307
  br i1 %.not298, label %.preheader307.split.split.us.preheader, label %.preheader307.split.split.preheader

.preheader307.split.split.preheader:              ; preds = %.preheader307.split
  %.idx326 = shl nsw i64 %i.a, 3                  ; 2 uses
  %i.br = add nsw i64 %.idx326, 8                 ; 3 uses
  %.idx327 = shl nsw i64 %i.g, 3                  ; 4 uses
  %7 = icmp eq i64 %i.br, %.idx327                ; 3 uses
  %8 = and i64 %0, 2
  %lcmp.mod.not = icmp eq i64 %8, 0
  br i1 %lcmp.mod.not, label %.preheader307.split.split.prol.loopexit, label %.preheader307.split.split.prol

.preheader307.split.split.prol:                   ; preds = %.preheader307.split.split.preheader
  %9 = getelementptr i8, ptr %3, i64 %.idx326     ; 2 uses
  %10 = getelementptr inbounds [8 x i8], ptr %9, i64 %4
  %11 = load double, ptr %9, align 8, !tbaa !9    ; 2 uses
  %12 = load double, ptr %10, align 8, !tbaa !9   ; 2 uses
  br i1 %7, label %19, label %13

13:                                               ; preds = %.preheader307.split.split.prol
  %14 = getelementptr inbounds i8, ptr %i.d, i64 %.idx327 ; 3 uses
  %15 = getelementptr inbounds [8 x i8], ptr %14, i64 %4 ; 2 uses
  %16 = load double, ptr %15, align 8, !tbaa !9
  %17 = load double, ptr %14, align 8, !tbaa !9
  store double %17, ptr %6, align 8, !tbaa !9
  %18 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %16, ptr %18, align 8, !tbaa !9
  store double %11, ptr %14, align 8, !tbaa !9
  store double %12, ptr %15, align 8, !tbaa !9
  br label %.preheader307.split.split.prol.loopexit.unr-lcssa

19:                                               ; preds = %.preheader307.split.split.prol
  store double %11, ptr %6, align 8, !tbaa !9
  %20 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %12, ptr %20, align 8, !tbaa !9
  br label %.preheader307.split.split.prol.loopexit.unr-lcssa

.preheader307.split.split.prol.loopexit.unr-lcssa: ; preds = %19, %13
  %21 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %22 = getelementptr inbounds i8, ptr %i.d, i64 %.idx ; 2 uses
  %23 = add nsw i64 %i.e, -1
  br label %.preheader307.split.split.prol.loopexit

.preheader307.split.split.prol.loopexit:          ; preds = %.preheader307.split.split.prol.loopexit.unr-lcssa, %.preheader307.split.split.preheader
  %.0285.unr = phi ptr [ %i.d, %.preheader307.split.split.preheader ], [ %22, %.preheader307.split.split.prol.loopexit.unr-lcssa ]
  %.0280.unr = phi ptr [ %6, %.preheader307.split.split.preheader ], [ %21, %.preheader307.split.split.prol.loopexit.unr-lcssa ]
  %.0277.unr = phi i64 [ %i.e, %.preheader307.split.split.preheader ], [ %23, %.preheader307.split.split.prol.loopexit.unr-lcssa ]
  %.lcssa379.unr = phi ptr [ poison, %.preheader307.split.split.preheader ], [ %21, %.preheader307.split.split.prol.loopexit.unr-lcssa ]
  %.lcssa378.unr = phi ptr [ poison, %.preheader307.split.split.preheader ], [ %22, %.preheader307.split.split.prol.loopexit.unr-lcssa ]
  %24 = icmp eq i64 %i.e, 1
  br i1 %24, label %.loopexit308, label %.preheader307.split.split

.preheader307.split.split.us.preheader:           ; preds = %.preheader307.split
  %25 = mul i64 %4, %i.e
  %26 = shl i64 %25, 4
  %i.bs = getelementptr i8, ptr %3, i64 %26
  %scevgep = getelementptr i8, ptr %i.bs, i64 -8
  br label %.loopexit308

.preheader307.split.split:                        ; preds = %.preheader307.split.split.prol.loopexit, %bb.x
  %.0285 = phi ptr [ %i.ce, %bb.x ], [ %.0285.unr, %.preheader307.split.split.prol.loopexit ] ; 3 uses
  %.0280 = phi ptr [ %i.cd, %bb.x ], [ %.0280.unr, %.preheader307.split.split.prol.loopexit ] ; 8 uses
  %.0277 = phi i64 [ %i.cf, %bb.x ], [ %.0277.unr, %.preheader307.split.split.prol.loopexit ] ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %.0285, i64 %i.br ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %4
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !9 ; 2 uses
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !9 ; 2 uses
  br i1 %7, label %27, label %bb.v

27:                                               ; preds = %.preheader307.split.split
  store double %i.bv, ptr %.0280, align 8, !tbaa !9
  %28 = getelementptr inbounds nuw i8, ptr %.0280, i64 8
  store double %i.bw, ptr %28, align 8, !tbaa !9
  br label %.preheader307.split.split.1

bb.v:                                             ; preds = %.preheader307.split.split
  %29 = getelementptr inbounds i8, ptr %.0285, i64 %.idx327 ; 3 uses
  %30 = getelementptr inbounds [8 x i8], ptr %29, i64 %4 ; 2 uses
  %31 = load double, ptr %30, align 8, !tbaa !9
  %32 = load double, ptr %29, align 8, !tbaa !9
  store double %32, ptr %.0280, align 8, !tbaa !9
  %i.bx = getelementptr inbounds nuw i8, ptr %.0280, i64 8
  store double %31, ptr %i.bx, align 8, !tbaa !9
  store double %i.bv, ptr %29, align 8, !tbaa !9
  store double %i.bw, ptr %30, align 8, !tbaa !9
  br label %.preheader307.split.split.1

.preheader307.split.split.1:                      ; preds = %bb.v, %27
  %33 = getelementptr inbounds nuw i8, ptr %.0280, i64 16 ; 2 uses
  %34 = getelementptr inbounds i8, ptr %.0285, i64 %.idx ; 3 uses
  %35 = getelementptr inbounds i8, ptr %34, i64 %i.br ; 2 uses
  %36 = getelementptr inbounds [8 x i8], ptr %35, i64 %4
  %37 = load double, ptr %35, align 8, !tbaa !9   ; 2 uses
  %38 = load double, ptr %36, align 8, !tbaa !9   ; 2 uses
  br i1 %7, label %39, label %bb.w

bb.w:                                             ; preds = %.preheader307.split.split.1
  %i.by = getelementptr inbounds i8, ptr %34, i64 %.idx327 ; 3 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.by, i64 %4 ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !9
  %i.cb = load double, ptr %i.by, align 8, !tbaa !9
  store double %i.cb, ptr %33, align 8, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %.0280, i64 24
  store double %i.ca, ptr %i.cc, align 8, !tbaa !9
  store double %37, ptr %i.by, align 8, !tbaa !9
  store double %38, ptr %i.bz, align 8, !tbaa !9
  br label %bb.x

39:                                               ; preds = %.preheader307.split.split.1
  store double %37, ptr %33, align 8, !tbaa !9
  %40 = getelementptr inbounds nuw i8, ptr %.0280, i64 24
  store double %38, ptr %40, align 8, !tbaa !9
  br label %bb.x

bb.x:                                             ; preds = %39, %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %.0280, i64 32 ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %34, i64 %.idx ; 2 uses
  %i.cf = add nsw i64 %.0277, -2
  %i.cg = icmp sgt i64 %.0277, 2
  br i1 %i.cg, label %.preheader307.split.split, label %.loopexit308, !llvm.loop !13

.loopexit308:                                     ; preds = %.preheader307.split.split.prol.loopexit, %bb.x, %bb.u, %.preheader307.split.split.us.preheader, %bb.b
  %.1286 = phi ptr [ %i.d, %bb.b ], [ %scevgep, %.preheader307.split.split.us.preheader ], [ %i.bo, %bb.u ], [ %.lcssa378.unr, %.preheader307.split.split.prol.loopexit ], [ %i.ce, %bb.x ] ; 4 uses
  %.4 = phi ptr [ %6, %bb.b ], [ %6, %.preheader307.split.split.us.preheader ], [ %.3283.us, %bb.u ], [ %.lcssa379.unr, %.preheader307.split.split.prol.loopexit ], [ %i.cd, %bb.x ] ; 2 uses
  %i.ch = and i64 %0, 1
  %.not299 = icmp eq i64 %i.ch, 0
  br i1 %.not299, label %bb.ao, label %bb.y

bb.y:                                             ; preds = %.loopexit308
  %i.ci = getelementptr inbounds [8 x i8], ptr %.1286, i64 %i.a
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.ck = load i32, ptr %i.b, align 4, !tbaa !8
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %.1286, i64 %i.cl ; 2 uses
  %i.cn = sub nsw i64 %2, %i.a                    ; 2 uses
  %i.co = ashr i64 %i.cn, 1                       ; 2 uses
  %i.cp = icmp sgt i64 %i.co, 0
  br i1 %i.cp, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.al
  %.5 = phi ptr [ %i.dl, %bb.al ], [ %.4, %.preheader.preheader ] ; 9 uses
  %.1279 = phi i64 [ %i.do, %bb.al ], [ %i.co, %.preheader.preheader ] ; 2 uses
  %.pn300 = phi ptr [ %.1276, %bb.al ], [ %i.b, %.preheader.preheader ] ; 2 uses
  %.2273 = phi ptr [ %i.dn, %bb.al ], [ %i.cj, %.preheader.preheader ] ; 4 uses
  %.2 = phi ptr [ %i.dm, %bb.al ], [ %i.cm, %.preheader.preheader ] ; 8 uses
  %.pn304.in = phi i32 [ %i.da, %bb.al ], [ %i.cr, %.preheader.preheader ]
  %.pn304 = sext i32 %.pn304.in to i64
  %.1266 = getelementptr inbounds [8 x i8], ptr %.1286, i64 %.pn304 ; 8 uses
  %.1276 = getelementptr inbounds nuw i8, ptr %.pn300, i64 8 ; 2 uses
  %i.cs = load double, ptr %.2273, align 8, !tbaa !9 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.2273, i64 8 ; 4 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !9 ; 6 uses
  %i.cv = load double, ptr %.2, align 8, !tbaa !9 ; 2 uses
  %i.cw = load double, ptr %.1266, align 8, !tbaa !9 ; 3 uses
  %i.cx = load i32, ptr %.1276, align 4, !tbaa !8
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn300, i64 12
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !8
  %i.db = icmp eq ptr %.2, %.2273
  br i1 %i.db, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %.preheader
  %i.dc = icmp eq ptr %.1266, %i.ct
  store double %i.cs, ptr %.5, align 8, !tbaa !9
  %i.dd = getelementptr inbounds nuw i8, ptr %.5, i64 8 ; 2 uses
  br i1 %i.dc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store double %i.cu, ptr %i.dd, align 8, !tbaa !9
  br label %bb.al

bb.ab:                                            ; preds = %bb.z
  store double %i.cw, ptr %i.dd, align 8, !tbaa !9
  store double %i.cu, ptr %.1266, align 8, !tbaa !9
  br label %bb.al

bb.ac:                                            ; preds = %.preheader
  %i.de = icmp eq ptr %.2, %i.ct
  br i1 %i.de, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.df = icmp eq ptr %.1266, %.2
  store double %i.cu, ptr %.5, align 8, !tbaa !9
  %i.dg = getelementptr inbounds nuw i8, ptr %.5, i64 8 ; 2 uses
  br i1 %i.df, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store double %i.cs, ptr %i.dg, align 8, !tbaa !9
  br label %bb.al

bb.af:                                            ; preds = %bb.ad
  store double %i.cw, ptr %i.dg, align 8, !tbaa !9
  store double %i.cs, ptr %.1266, align 8, !tbaa !9
  br label %bb.al

bb.ag:                                            ; preds = %bb.ac
  %i.dh = icmp eq ptr %.1266, %i.ct
  br i1 %i.dh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store double %i.cv, ptr %.5, align 8, !tbaa !9
  %i.di = getelementptr inbounds nuw i8, ptr %.5, i64 8
  store double %i.cu, ptr %i.di, align 8, !tbaa !9
  store double %i.cs, ptr %.2, align 8, !tbaa !9
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.dj = icmp eq ptr %.1266, %.2
  store double %i.cv, ptr %.5, align 8, !tbaa !9
  %i.dk = getelementptr inbounds nuw i8, ptr %.5, i64 8 ; 2 uses
  br i1 %i.dj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store double %i.cs, ptr %i.dk, align 8, !tbaa !9
  store double %i.cu, ptr %.2, align 8, !tbaa !9
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  store double %i.cw, ptr %i.dk, align 8, !tbaa !9
  store double %i.cs, ptr %.2, align 8, !tbaa !9
  store double %i.cu, ptr %.1266, align 8, !tbaa !9
  br label %bb.al

bb.al:                                            ; preds = %bb.af, %bb.ae, %bb.aj, %bb.ak, %bb.ah, %bb.aa, %bb.ab
  %i.dl = getelementptr inbounds nuw i8, ptr %.5, i64 16 ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %.1286, i64 %i.cy ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.2273, i64 16 ; 2 uses
  %i.do = add nsw i64 %.1279, -1
  %i.dp = icmp sgt i64 %.1279, 1
  br i1 %i.dp, label %.preheader, label %.loopexit, !llvm.loop !14

.loopexit:                                        ; preds = %bb.al, %bb.y
  %.6 = phi ptr [ %.4, %bb.y ], [ %i.dl, %bb.al ] ; 2 uses
  %.3274 = phi ptr [ %i.cj, %bb.y ], [ %i.dn, %bb.al ] ; 2 uses
  %.3 = phi ptr [ %i.cm, %bb.y ], [ %i.dm, %bb.al ] ; 3 uses
  %i.dq = and i64 %i.cn, 1
  %.not301 = icmp eq i64 %i.dq, 0
  br i1 %.not301, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %.loopexit
  %i.dr = load double, ptr %.3274, align 8, !tbaa !9
  %i.ds = icmp eq ptr %.3274, %.3
  br i1 %i.ds, label %.sink.split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dt = load double, ptr %.3, align 8, !tbaa !9
  store double %i.dt, ptr %.6, align 8, !tbaa !9
  br label %.sink.split

.sink.split:                                      ; preds = %bb.am, %bb.an
  %.6.sink = phi ptr [ %.3, %bb.an ], [ %.6, %bb.am ]
  store double %i.dr, ptr %.6.sink, align 8, !tbaa !9
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %.loopexit308, %.loopexit, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #1

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
end_hunk_0
