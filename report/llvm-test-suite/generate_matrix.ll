Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/generate_matrix?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress uwtable
define dso_local void @_Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((0, 8)) %3, ptr nofree noundef captures(none) initializes((0, 8)) %4, ptr nofree noundef captures(none) initializes((0, 8)) %5, ptr nofree noundef captures(none) initializes((0, 8)) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #2 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !14
  store ptr null, ptr %i.a, align 8, !tbaa !23
  %i.b = mul nsw i32 %1, %0
  %i.c = mul nsw i32 %i.b, %2                     ; 16 uses
  %i.d = mul nsw i32 %i.c, 27                     ; 2 uses
  %i.e = sext i32 %i.c to i64                     ; 3 uses
  %i.f = icmp slt i32 %i.c, 0                     ; 4 uses
  %i.g = shl nsw i64 %i.e, 2
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #2
  %i.j = load ptr, ptr %3, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.i, ptr %i.k, align 8, !tbaa !24
  %i.l = shl nsw i64 %i.e, 3
  %i.m = select i1 %i.f, i64 -1, i64 %i.l         ; 6 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #2
  %i.o = load ptr, ptr %3, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store ptr %i.n, ptr %i.p, align 8, !tbaa !25
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #2
  %i.r = load ptr, ptr %3, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store ptr %i.q, ptr %i.s, align 8, !tbaa !26
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #2
  %i.u = load ptr, ptr %3, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store ptr %i.t, ptr %i.v, align 8, !tbaa !27
  %i.w = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #2
  store ptr %i.w, ptr %4, align 8, !tbaa !28
  %i.x = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #2
  store ptr %i.x, ptr %5, align 8, !tbaa !28
  %i.y = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #2
  store ptr %i.y, ptr %6, align 8, !tbaa !28
  %i.z = sext i32 %i.d to i64                     ; 2 uses
  %i.aa = shl nsw i64 %i.z, 3
  %i.ab = select i1 %i.f, i64 -1, i64 %i.aa
  %i.ac = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #2
  %i.ad = load ptr, ptr %3, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !29
  %i.af = shl nsw i64 %i.z, 2
  %i.ag = select i1 %i.f, i64 -1, i64 %i.af
  %i.ah = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #2 ; 2 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !14    ; 13 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !29
  %i.am = icmp sgt i32 %2, 0
  br i1 %i.am, label %.preheader172.lr.ph, label %._crit_edge.split

.preheader172.lr.ph:                              ; preds = %bb.a
  %i.an = icmp sgt i32 %1, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 72 ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.aq = icmp sgt i32 %0, 0
  %or.cond = and i1 %i.an, %i.aq
  br i1 %or.cond, label %.preheader172.lr.ph.split.split.us, label %._crit_edge.split

.preheader172.lr.ph.split.split.us:               ; preds = %.preheader172.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !25
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !26
  %i.av = zext nneg i32 %0 to i64                 ; 4 uses
  br label %.preheader172.us

.preheader172.us:                                 ; preds = %._crit_edge201.split.us.us, %.preheader172.lr.ph.split.split.us
  %.0146219.us = phi i32 [ 0, %.preheader172.lr.ph.split.split.us ], [ %i.el, %._crit_edge201.split.us.us ] ; 2 uses
  %.0150217.us = phi ptr [ %i.ah, %.preheader172.lr.ph.split.split.us ], [ %.us-phi177.us.us.2, %._crit_edge201.split.us.us ]
  %.0154216.us = phi ptr [ %i.al, %.preheader172.lr.ph.split.split.us ], [ %.us-phi.us.us.2, %._crit_edge201.split.us.us ]
  %i.aw = mul i32 %.0146219.us, %1
  br label %.preheader171.us.us

.preheader171.us.us:                              ; preds = %._crit_edge.us.us, %.preheader172.us
  %.0145200.us.us = phi i32 [ 0, %.preheader172.us ], [ %i.ay, %._crit_edge.us.us ] ; 4 uses
  %.1151198.us.us = phi ptr [ %.0150217.us, %.preheader172.us ], [ %.us-phi177.us.us.2, %._crit_edge.us.us ]
  %.1155197.us.us = phi ptr [ %.0154216.us, %.preheader172.us ], [ %.us-phi.us.us.2, %._crit_edge.us.us ]
  %reass.add.us.us = add i32 %.0145200.us.us, %i.aw
  %reass.mul.us.us = mul i32 %reass.add.us.us, %0
  %7 = add i32 %.0145200.us.us, -1
  %i.ax = icmp slt i32 %.0145200.us.us, %1
  %i.ay = add i32 %.0145200.us.us, 1              ; 3 uses
  %brmerge.not = icmp ult i32 %7, %1
  %brmerge264.not = icmp ult i32 %i.ay, %1
  br label %bb.b

bb.b:                                             ; preds = %bb.ad, %.preheader171.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ad ], [ 0, %.preheader171.us.us ] ; 8 uses
  %.2152192.us.us = phi ptr [ %.us-phi177.us.us.2, %bb.ad ], [ %.1151198.us.us, %.preheader171.us.us ] ; 2 uses
  %.2156191.us.us = phi ptr [ %.us-phi.us.us.2, %bb.ad ], [ %.1155197.us.us, %.preheader171.us.us ] ; 2 uses
  %i.az = trunc nuw nsw i64 %indvars.iv to i32
  %i.ba = add i32 %reass.mul.us.us, %i.az         ; 10 uses
  %i.bb = sext i32 %i.ba to i64                   ; 15 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bb
  store ptr %.2156191.us.us, ptr %i.bc, align 8, !tbaa !28
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bb
  store ptr %.2152192.us.us, ptr %i.bd, align 8, !tbaa !31
  %i.be = trunc i64 %indvars.iv to i32
  %i.bf = add i32 %i.be, -1
  %or.cond166.us.us211.us = icmp ult i32 %i.bf, %0
  %i.bg = add nuw nsw i64 %indvars.iv, 1
  %or.cond166.us.us211.us.2 = icmp samesign ult i64 %i.bg, %i.av
  %i.bh = trunc i64 %indvars.iv to i32
  %i.bi = add i32 %i.bh, -1
  %or.cond166.us.us211.us.1225 = icmp ult i32 %i.bi, %0
  %i.bj = add nuw nsw i64 %indvars.iv, 1
  %or.cond166.us.us211.us.2.1 = icmp samesign ult i64 %i.bj, %i.av
  %i.bk = trunc i64 %indvars.iv to i32
  %i.bl = add i32 %i.bk, -1
  %or.cond166.us.us211.us.2232 = icmp ult i32 %i.bl, %0
  %i.bm = add nuw nsw i64 %indvars.iv, 1
  %or.cond166.us.us211.us.2.2 = icmp samesign ult i64 %i.bm, %i.av
  br label %.preheader170.us.us

.preheader170.us.us:                              ; preds = %.split.us208.us.2, %bb.b
  %.0142190.us.us = phi i32 [ -1, %bb.b ], [ %i.dz, %.split.us208.us.2 ] ; 2 uses
  %.0143189.us.us = phi i32 [ 0, %bb.b ], [ %.us-phi178.us.us.2, %.split.us208.us.2 ] ; 3 uses
  %.3153188.us.us = phi ptr [ %.2152192.us.us, %bb.b ], [ %.us-phi177.us.us.2, %.split.us208.us.2 ] ; 4 uses
  %.3157187.us.us = phi ptr [ %.2156191.us.us, %bb.b ], [ %.us-phi.us.us.2, %.split.us208.us.2 ] ; 5 uses
  %i.bn = mul nsw i32 %.0142190.us.us, %1         ; 3 uses
  %reass.add168.us.us = add nsw i32 %i.bn, -1
  %reass.mul169.us.us = mul i32 %reass.add168.us.us, %0 ; 2 uses
  %i.bo = add i32 %reass.mul169.us.us, %i.ba      ; 4 uses
  br i1 %brmerge.not, label %.preheader.split.us.split.us209.us.preheader, label %.preheader.split.us.us.us.1

.preheader.split.us.split.us209.us.preheader:     ; preds = %.preheader170.us.us
  %i.bp = add i32 %i.bo, -1                       ; 3 uses
  %i.bq = icmp ult i32 %i.bp, %i.c
  %or.cond258 = select i1 %or.cond166.us.us211.us, i1 %i.bq, i1 false
  br i1 %or.cond258, label %bb.c, label %.preheader.split.us.split.us209.us.1

bb.c:                                             ; preds = %.preheader.split.us.split.us209.us.preheader
  %i.br = icmp eq i32 %i.bp, %i.ba
  br i1 %i.br, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bs = load ptr, ptr %i.ao, align 8, !tbaa !27
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bb
  store ptr %.3157187.us.us, ptr %i.bt, align 8, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge.us.us.us = phi double [ 2.700000e+01, %bb.d ], [ -1.000000e+00, %bb.c ]
  %.6160.us.us.us = getelementptr inbounds nuw i8, ptr %.3157187.us.us, i64 8
  store double %storemerge.us.us.us, ptr %.3157187.us.us, align 8, !tbaa !33
  %i.bu = getelementptr inbounds nuw i8, ptr %.3153188.us.us, i64 4
  store i32 %i.bp, ptr %.3153188.us.us, align 4, !tbaa !7
  %i.bv = add nsw i32 %.0143189.us.us, 1
  br label %.preheader.split.us.split.us209.us.1

.preheader.split.us.split.us209.us.1:             ; preds = %.preheader.split.us.split.us209.us.preheader, %bb.e
  %.7.us.us.us = phi ptr [ %.6160.us.us.us, %bb.e ], [ %.3157187.us.us, %.preheader.split.us.split.us209.us.preheader ] ; 4 uses
  %.6.us.us.us = phi ptr [ %i.bu, %bb.e ], [ %.3153188.us.us, %.preheader.split.us.split.us209.us.preheader ] ; 3 uses
  %.3.us.us.us = phi i32 [ %i.bv, %bb.e ], [ %.0143189.us.us, %.preheader.split.us.split.us209.us.preheader ] ; 2 uses
  %i.bw = icmp ult i32 %i.bo, %i.c
  br i1 %i.bw, label %bb.f, label %.preheader.split.us.split.us209.us.2

bb.f:                                             ; preds = %.preheader.split.us.split.us209.us.1
  %i.bx = icmp eq i32 %reass.mul169.us.us, 0
  br i1 %i.bx, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.by = load ptr, ptr %i.ao, align 8, !tbaa !27
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bb
  store ptr %.7.us.us.us, ptr %i.bz, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge.us.us.us.1 = phi double [ 2.700000e+01, %bb.g ], [ -1.000000e+00, %bb.f ]
  %.6160.us.us.us.1 = getelementptr inbounds nuw i8, ptr %.7.us.us.us, i64 8
  store double %storemerge.us.us.us.1, ptr %.7.us.us.us, align 8, !tbaa !33
  %i.ca = getelementptr inbounds nuw i8, ptr %.6.us.us.us, i64 4
  store i32 %i.bo, ptr %.6.us.us.us, align 4, !tbaa !7
  %i.cb = add nsw i32 %.3.us.us.us, 1
  br label %.preheader.split.us.split.us209.us.2

.preheader.split.us.split.us209.us.2:             ; preds = %bb.h, %.preheader.split.us.split.us209.us.1
  %.7.us.us.us.1 = phi ptr [ %.6160.us.us.us.1, %bb.h ], [ %.7.us.us.us, %.preheader.split.us.split.us209.us.1 ] ; 4 uses
  %.6.us.us.us.1 = phi ptr [ %i.ca, %bb.h ], [ %.6.us.us.us, %.preheader.split.us.split.us209.us.1 ] ; 3 uses
  %.3.us.us.us.1 = phi i32 [ %i.cb, %bb.h ], [ %.3.us.us.us, %.preheader.split.us.split.us209.us.1 ] ; 2 uses
  %i.cc = add i32 %i.bo, 1                        ; 3 uses
  %i.cd = icmp ult i32 %i.cc, %i.c
  %or.cond259 = select i1 %or.cond166.us.us211.us.2, i1 %i.cd, i1 false
  br i1 %or.cond259, label %bb.i, label %.preheader.split.us.us.us.1

bb.i:                                             ; preds = %.preheader.split.us.split.us209.us.2
  %i.ce = icmp eq i32 %i.cc, %i.ba
  br i1 %i.ce, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cf = load ptr, ptr %i.ao, align 8, !tbaa !27
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.bb
  store ptr %.7.us.us.us.1, ptr %i.cg, align 8, !tbaa !28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge.us.us.us.2 = phi double [ 2.700000e+01, %bb.j ], [ -1.000000e+00, %bb.i ]
  %.6160.us.us.us.2 = getelementptr inbounds nuw i8, ptr %.7.us.us.us.1, i64 8
  store double %storemerge.us.us.us.2, ptr %.7.us.us.us.1, align 8, !tbaa !33
  %i.ch = getelementptr inbounds nuw i8, ptr %.6.us.us.us.1, i64 4
  store i32 %i.cc, ptr %.6.us.us.us.1, align 4, !tbaa !7
  %i.ci = add nsw i32 %.3.us.us.us.1, 1
  br label %.preheader.split.us.us.us.1

.preheader.split.us.us.us.1:                      ; preds = %.preheader170.us.us, %bb.k, %.preheader.split.us.split.us209.us.2
  %.us-phi.us.us = phi ptr [ %.3157187.us.us, %.preheader170.us.us ], [ %.7.us.us.us.1, %.preheader.split.us.split.us209.us.2 ], [ %.6160.us.us.us.2, %bb.k ] ; 5 uses
  %.us-phi177.us.us = phi ptr [ %.3153188.us.us, %.preheader170.us.us ], [ %.6.us.us.us.1, %.preheader.split.us.split.us209.us.2 ], [ %i.ch, %bb.k ] ; 4 uses
  %.us-phi178.us.us = phi i32 [ %.0143189.us.us, %.preheader170.us.us ], [ %.3.us.us.us.1, %.preheader.split.us.split.us209.us.2 ], [ %i.ci, %bb.k ] ; 3 uses
  %reass.mul169.us.us.1 = mul i32 %i.bn, %0       ; 2 uses
  %i.cj = add i32 %reass.mul169.us.us.1, %i.ba    ; 4 uses
  br i1 %i.ax, label %.preheader.split.us.split.us209.us.preheader.1, label %.split.us208.us.1

.preheader.split.us.split.us209.us.preheader.1:   ; preds = %.preheader.split.us.us.us.1
  %i.ck = add i32 %i.cj, -1                       ; 3 uses
  %i.cl = icmp ult i32 %i.ck, %i.c
  %or.cond260 = select i1 %or.cond166.us.us211.us.1225, i1 %i.cl, i1 false
  br i1 %or.cond260, label %bb.l, label %.preheader.split.us.split.us209.us.1.1

bb.l:                                             ; preds = %.preheader.split.us.split.us209.us.preheader.1
  %i.cm = icmp eq i32 %i.ck, %i.ba
  br i1 %i.cm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %i.ao, align 8, !tbaa !27
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.bb
  store ptr %.us-phi.us.us, ptr %i.co, align 8, !tbaa !28
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %storemerge.us.us.us.1227 = phi double [ 2.700000e+01, %bb.m ], [ -1.000000e+00, %bb.l ]
  %.6160.us.us.us.1228 = getelementptr inbounds nuw i8, ptr %.us-phi.us.us, i64 8
  store double %storemerge.us.us.us.1227, ptr %.us-phi.us.us, align 8, !tbaa !33
  %i.cp = getelementptr inbounds nuw i8, ptr %.us-phi177.us.us, i64 4
  store i32 %i.ck, ptr %.us-phi177.us.us, align 4, !tbaa !7
  %i.cq = add nsw i32 %.us-phi178.us.us, 1
  br label %.preheader.split.us.split.us209.us.1.1

.preheader.split.us.split.us209.us.1.1:           ; preds = %.preheader.split.us.split.us209.us.preheader.1, %bb.n
  %.7.us.us.us.1229 = phi ptr [ %.6160.us.us.us.1228, %bb.n ], [ %.us-phi.us.us, %.preheader.split.us.split.us209.us.preheader.1 ] ; 4 uses
  %.6.us.us.us.1230 = phi ptr [ %i.cp, %bb.n ], [ %.us-phi177.us.us, %.preheader.split.us.split.us209.us.preheader.1 ] ; 3 uses
  %.3.us.us.us.1231 = phi i32 [ %i.cq, %bb.n ], [ %.us-phi178.us.us, %.preheader.split.us.split.us209.us.preheader.1 ] ; 2 uses
  %i.cr = icmp ult i32 %i.cj, %i.c
  br i1 %i.cr, label %bb.o, label %.preheader.split.us.split.us209.us.2.1

bb.o:                                             ; preds = %.preheader.split.us.split.us209.us.1.1
  %i.cs = icmp eq i32 %reass.mul169.us.us.1, 0
  br i1 %i.cs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ct = load ptr, ptr %i.ao, align 8, !tbaa !27
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.bb
  store ptr %.7.us.us.us.1229, ptr %i.cu, align 8, !tbaa !28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %storemerge.us.us.us.1.1 = phi double [ 2.700000e+01, %bb.p ], [ -1.000000e+00, %bb.o ]
  %.6160.us.us.us.1.1 = getelementptr inbounds nuw i8, ptr %.7.us.us.us.1229, i64 8
  store double %storemerge.us.us.us.1.1, ptr %.7.us.us.us.1229, align 8, !tbaa !33
  %i.cv = getelementptr inbounds nuw i8, ptr %.6.us.us.us.1230, i64 4
  store i32 %i.cj, ptr %.6.us.us.us.1230, align 4, !tbaa !7
  %i.cw = add nsw i32 %.3.us.us.us.1231, 1
  br label %.preheader.split.us.split.us209.us.2.1

.preheader.split.us.split.us209.us.2.1:           ; preds = %bb.q, %.preheader.split.us.split.us209.us.1.1
  %.7.us.us.us.1.1 = phi ptr [ %.6160.us.us.us.1.1, %bb.q ], [ %.7.us.us.us.1229, %.preheader.split.us.split.us209.us.1.1 ] ; 4 uses
  %.6.us.us.us.1.1 = phi ptr [ %i.cv, %bb.q ], [ %.6.us.us.us.1230, %.preheader.split.us.split.us209.us.1.1 ] ; 3 uses
  %.3.us.us.us.1.1 = phi i32 [ %i.cw, %bb.q ], [ %.3.us.us.us.1231, %.preheader.split.us.split.us209.us.1.1 ] ; 2 uses
  %i.cx = add i32 %i.cj, 1                        ; 3 uses
  %i.cy = icmp ult i32 %i.cx, %i.c
  %or.cond261 = select i1 %or.cond166.us.us211.us.2.1, i1 %i.cy, i1 false
  br i1 %or.cond261, label %bb.r, label %.split.us208.us.1

bb.r:                                             ; preds = %.preheader.split.us.split.us209.us.2.1
  %i.cz = icmp eq i32 %i.cx, %i.ba
  br i1 %i.cz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.da = load ptr, ptr %i.ao, align 8, !tbaa !27
  %i.db = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.bb
  store ptr %.7.us.us.us.1.1, ptr %i.db, align 8, !tbaa !28
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %storemerge.us.us.us.2.1 = phi double [ 2.700000e+01, %bb.s ], [ -1.000000e+00, %bb.r ]
  %.6160.us.us.us.2.1 = getelementptr inbounds nuw i8, ptr %.7.us.us.us.1.1, i64 8
  store double %storemerge.us.us.us.2.1, ptr %.7.us.us.us.1.1, align 8, !tbaa !33
  %i.dc = getelementptr inbounds nuw i8, ptr %.6.us.us.us.1.1, i64 4
  store i32 %i.cx, ptr %.6.us.us.us.1.1, align 4, !tbaa !7
  %i.dd = add nsw i32 %.3.us.us.us.1.1, 1
  br label %.split.us208.us.1

.split.us208.us.1:                                ; preds = %.preheader.split.us.split.us209.us.2.1, %bb.t, %.preheader.split.us.us.us.1
  %.us-phi.us.us.1 = phi ptr [ %.us-phi.us.us, %.preheader.split.us.us.us.1 ], [ %.6160.us.us.us.2.1, %bb.t ], [ %.7.us.us.us.1.1, %.preheader.split.us.split.us209.us.2.1 ] ; 5 uses
  %.us-phi177.us.us.1 = phi ptr [ %.us-phi177.us.us, %.preheader.split.us.us.us.1 ], [ %i.dc, %bb.t ], [ %.6.us.us.us.1.1, %.preheader.split.us.split.us209.us.2.1 ] ; 4 uses
  %.us-phi178.us.us.1 = phi i32 [ %.us-phi178.us.us, %.preheader.split.us.us.us.1 ], [ %i.dd, %bb.t ], [ %.3.us.us.us.1.1, %.preheader.split.us.split.us209.us.2.1 ] ; 3 uses
  %reass.add168.us.us.2 = add i32 %i.bn, 1
  %reass.mul169.us.us.2 = mul i32 %reass.add168.us.us.2, %0 ; 2 uses
  %i.de = add i32 %reass.mul169.us.us.2, %i.ba    ; 4 uses
  br i1 %brmerge264.not, label %.preheader.split.us.split.us209.us.preheader.2, label %.split.us208.us.2

.preheader.split.us.split.us209.us.preheader.2:   ; preds = %.split.us208.us.1
  %i.df = add i32 %i.de, -1                       ; 3 uses
  %i.dg = icmp ult i32 %i.df, %i.c
  %or.cond265 = select i1 %or.cond166.us.us211.us.2232, i1 %i.dg, i1 false
  br i1 %or.cond265, label %bb.u, label %.preheader.split.us.split.us209.us.1.2

bb.u:                                             ; preds = %.preheader.split.us.split.us209.us.preheader.2
  %i.dh = icmp eq i32 %i.df, %i.ba
  br i1 %i.dh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.di = load ptr, ptr %i.ao, align 8, !tbaa !27
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.bb
  store ptr %.us-phi.us.us.1, ptr %i.dj, align 8, !tbaa !28
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %storemerge.us.us.us.2234 = phi double [ 2.700000e+01, %bb.v ], [ -1.000000e+00, %bb.u ]
  %.6160.us.us.us.2235 = getelementptr inbounds nuw i8, ptr %.us-phi.us.us.1, i64 8
  store double %storemerge.us.us.us.2234, ptr %.us-phi.us.us.1, align 8, !tbaa !33
  %i.dk = getelementptr inbounds nuw i8, ptr %.us-phi177.us.us.1, i64 4
  store i32 %i.df, ptr %.us-phi177.us.us.1, align 4, !tbaa !7
  %i.dl = add nsw i32 %.us-phi178.us.us.1, 1
  br label %.preheader.split.us.split.us209.us.1.2
end_hunk_0
