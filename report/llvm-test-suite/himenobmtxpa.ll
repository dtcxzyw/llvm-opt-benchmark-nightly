Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/himenobmtxpa?download=true
inline.NumInlined: 28
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Mat = type { ptr, i32, i32, i32, i32 }
%struct.timeval = type { i64, i64 }

@omega = dso_local local_unnamed_addr global float 8.000000e-01, align 4
@.str = private unnamed_addr constant [34 x i8] c"mimax = %d mjmax = %d mkmax = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"imax = %d jmax = %d kmax =%d\0A\00", align 1
@p = dso_local global %struct.Mat zeroinitializer, align 8
@bnd = dso_local global %struct.Mat zeroinitializer, align 8
@wrk1 = dso_local global %struct.Mat zeroinitializer, align 8
@wrk2 = dso_local global %struct.Mat zeroinitializer, align 8
@a = dso_local global %struct.Mat zeroinitializer, align 8
@b = dso_local global %struct.Mat zeroinitializer, align 8
@c = dso_local global %struct.Mat zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c" Loop executed for %d times\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" Gosa : %e \0A\00", align 1
@second.base_sec = internal unnamed_addr global i32 0, align 4
@second.base_usec = internal unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [27 x i8] c"Invalid input character !!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
.preheader25.lr.ph.split.split.i:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 64, i32 noundef 64, i32 noundef 128) ; 0 uses
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 63, i32 noundef 63, i32 noundef 127) ; 0 uses
  store <4 x i32> <i32 1, i32 64, i32 64, i32 128>, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 8, !tbaa !4
  %i.c = tail call noalias dereferenceable_or_null(2097152) ptr @malloc(i64 noundef 2097152) #15 ; 2 uses
  store ptr %i.c, ptr @p, align 8, !tbaa !8
  store <4 x i32> <i32 1, i32 64, i32 64, i32 128>, ptr getelementptr inbounds nuw (i8, ptr @bnd, i64 8), align 8, !tbaa !4
  %i.d = tail call noalias dereferenceable_or_null(2097152) ptr @malloc(i64 noundef 2097152) #15 ; 2 uses
  store ptr %i.d, ptr @bnd, align 8, !tbaa !8
  store <4 x i32> <i32 1, i32 64, i32 64, i32 128>, ptr getelementptr inbounds nuw (i8, ptr @wrk1, i64 8), align 8, !tbaa !4
  %i.e = tail call noalias dereferenceable_or_null(2097152) ptr @malloc(i64 noundef 2097152) #15 ; 2 uses
  store ptr %i.e, ptr @wrk1, align 8, !tbaa !8
  store <4 x i32> <i32 1, i32 64, i32 64, i32 128>, ptr getelementptr inbounds nuw (i8, ptr @wrk2, i64 8), align 8, !tbaa !4
  %i.f = tail call noalias dereferenceable_or_null(2097152) ptr @malloc(i64 noundef 2097152) #15 ; 2 uses
  store ptr %i.f, ptr @wrk2, align 8, !tbaa !8
  store <4 x i32> <i32 4, i32 64, i32 64, i32 128>, ptr getelementptr inbounds nuw (i8, ptr @a, i64 8), align 8, !tbaa !4
  %i.g = tail call noalias dereferenceable_or_null(8388608) ptr @malloc(i64 noundef 8388608) #15 ; 5 uses
  store ptr %i.g, ptr @a, align 8, !tbaa !8
  store <4 x i32> <i32 3, i32 64, i32 64, i32 128>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 8), align 8, !tbaa !4
  %i.h = tail call noalias dereferenceable_or_null(6291456) ptr @malloc(i64 noundef 6291456) #15 ; 2 uses
  store ptr %i.h, ptr @b, align 8, !tbaa !8
  store <4 x i32> <i32 3, i32 64, i32 64, i32 128>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 8), align 8, !tbaa !4
  %i.i = tail call noalias dereferenceable_or_null(6291456) ptr @malloc(i64 noundef 6291456) #15 ; 4 uses
  store ptr %i.i, ptr @c, align 8, !tbaa !8
  br label %.preheader25.i

.preheader25.i:                                   ; preds = %._crit_edge28.i, %.preheader25.lr.ph.split.split.i
  %indvars.iv38.i = phi i64 [ 0, %.preheader25.lr.ph.split.split.i ], [ %indvars.iv.next39.i, %._crit_edge28.i ] ; 4 uses
  %i.j = mul nuw nsw i64 %indvars.iv38.i, %indvars.iv38.i
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = uitofp nneg i32 %i.k to float
  %i.m = fdiv float %i.l, 3.969000e+03
  %i.n = shl nuw nsw i64 %indvars.iv38.i, 6
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.m, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 32 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader25.i
  %indvars.iv33.i = phi i64 [ 0, %.preheader25.i ], [ %indvars.iv.next34.i, %.preheader.i ] ; 2 uses
  %i.o = add nuw nsw i64 %indvars.iv33.i, %i.n
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = shl i32 %i.p, 7
  %i.r = sext i32 %i.q to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.c, i64 %i.r ; 32 uses
  %i.s = getelementptr i8, ptr %invariant.gep.i, i64 16
  store <4 x float> %broadcast.splat, ptr %invariant.gep.i, align 4, !tbaa !12
  store <4 x float> %broadcast.splat, ptr %i.s, align 4, !tbaa !12
  %i.t = getelementptr i8, ptr %invariant.gep.i, i64 32
  %i.u = getelementptr i8, ptr %invariant.gep.i, i64 48
  store <4 x float> %broadcast.splat, ptr %i.t, align 4, !tbaa !12
  store <4 x float> %broadcast.splat, ptr %i.u, align 4, !tbaa !12
  %i.v = getelementptr i8, ptr %invariant.gep.i, i64 64
  %i.w = getelementptr i8, ptr %invariant.gep.i, i64 80
  store <4 x float> %broadcast.splat, ptr %i.v, align 4, !tbaa !12
  store <4 x float> %broadcast.splat, ptr %i.w, align 4, !tbaa !12
  %i.x = getelementptr i8, ptr %invariant.gep.i, i64 96
  %i.y = getelementptr i8, ptr %invariant.gep.i, i64 112
  store <4 x float> %broadcast.splat, ptr %i.x, align 4, !tbaa !12
  store <4 x float> %broadcast.splat, ptr %i.y, align 4, !tbaa !12
  %i.z = getelementptr i8, ptr %invariant.gep.i, i64 128
  %i.aa = getelementptr i8, ptr %invariant.gep.i, i64 144
  store <4 x float> %broadcast.splat, ptr %i.z, align 4, !tbaa !12
  store <4 x float> %broadcast.splat, ptr %i.aa, align 4, !tbaa !12
  %i.ab = getelementptr i8, ptr %invariant.gep.i, i64 160
  %i.ac = getelementptr i8, ptr %invariant.gep.i, i64 176
  store <4 x float> %broadcast.splat, ptr %i.ab, align 4, !tbaa !12
  store <4 x float> %broadcast.splat, ptr %i.ac, align 4, !tbaa !12
  %i.ad = getelementptr i8, ptr %invariant.gep.i, i64 192
  %i.ae = getelementptr i8, ptr %invariant.gep.i, i64 208
  store <4 x float> %broadcast.splat, ptr %i.ad, align 4, !tbaa !12
  store <4 x float> %broadcast.splat, ptr %i.ae, align 4, !tbaa !12
  %i.af = getelementptr i8, ptr %invariant.gep.i, i64 224
  %i.ag = getelementptr i8, ptr %invariant.gep.i, i64 240
  store <4 x float> %broadcast.splat, ptr %i.af, align 4, !tbaa !12
  store <4 x float> %broadcast.splat, ptr %i.ag, align 4, !tbaa !12
  %i.ah = getelementptr i8, ptr %invariant.gep.i, i64 256
  %i.ai = getelementptr i8, ptr %invariant.gep.i, i64 272
  store <4 x float> %broadcast.splat, ptr %i.ah, align 4, !tbaa !12
  store <4 x float> %broadcast.splat, ptr %i.ai, align 4, !tbaa !12
  %i.aj = getelementptr i8, ptr %invariant.gep.i, i64 288
  %i.ak = getelementptr i8, ptr %invariant.gep.i, i64 304
  store <4 x float> %broadcast.splat, ptr %i.aj, align 4, !tbaa !12
  store <4 x float> %broadcast.splat, ptr %i.ak, align 4, !tbaa !12
  %i.al = getelementptr i8, ptr %invariant.gep.i, i64 320
  %i.am = getelementptr i8, ptr %invariant.gep.i, i64 336
  store <4 x float> %broadcast.splat, ptr %i.al, align 4, !tbaa !12
  store <4 x float> %broadcast.splat, ptr %i.am, align 4, !tbaa !12
  %i.an = getelementptr i8, ptr %invariant.gep.i, i64 352
  %i.ao = getelementptr i8, ptr %invariant.gep.i, i64 368
  store <4 x float> %broadcast.splat, ptr %i.an, align 4, !tbaa !12
  store <4 x float> %broadcast.splat, ptr %i.ao, align 4, !tbaa !12
  %i.ap = getelementptr i8, ptr %invariant.gep.i, i64 384
  %i.aq = getelementptr i8, ptr %invariant.gep.i, i64 400
  store <4 x float> %broadcast.splat, ptr %i.ap, align 4, !tbaa !12
  store <4 x float> %broadcast.splat, ptr %i.aq, align 4, !tbaa !12
  %i.ar = getelementptr i8, ptr %invariant.gep.i, i64 416
  %i.as = getelementptr i8, ptr %invariant.gep.i, i64 432
  store <4 x float> %broadcast.splat, ptr %i.ar, align 4, !tbaa !12
  store <4 x float> %broadcast.splat, ptr %i.as, align 4, !tbaa !12
  %i.at = getelementptr i8, ptr %invariant.gep.i, i64 448
  %i.au = getelementptr i8, ptr %invariant.gep.i, i64 464
  store <4 x float> %broadcast.splat, ptr %i.at, align 4, !tbaa !12
  store <4 x float> %broadcast.splat, ptr %i.au, align 4, !tbaa !12
  %i.av = getelementptr i8, ptr %invariant.gep.i, i64 480
  %i.aw = getelementptr i8, ptr %invariant.gep.i, i64 496
  store <4 x float> %broadcast.splat, ptr %i.av, align 4, !tbaa !12
  store <4 x float> %broadcast.splat, ptr %i.aw, align 4, !tbaa !12
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %exitcond37.not.i = icmp eq i64 %indvars.iv.next34.i, 64
  br i1 %exitcond37.not.i, label %._crit_edge28.i, label %.preheader.i, !llvm.loop !14

._crit_edge28.i:                                  ; preds = %.preheader.i
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next39.i, 64
  br i1 %exitcond42.not.i, label %.preheader23.i, label %.preheader25.i, !llvm.loop !16

.preheader23.i:                                   ; preds = %._crit_edge28.i, %._crit_edge26.i
  %.02127.i = phi i32 [ %i.cg, %._crit_edge26.i ], [ 0, %._crit_edge28.i ] ; 2 uses
  %i.ax = shl nuw nsw i32 %.02127.i, 13
  br label %.preheader.i39

.preheader.i39:                                   ; preds = %.preheader.i39, %.preheader23.i
  %indvars.iv31.i = phi i64 [ 0, %.preheader23.i ], [ %indvars.iv.next32.i, %.preheader.i39 ] ; 2 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv31.i to i32
  %i.az = shl i32 %i.ay, 7
  %i.ba = add nuw nsw i32 %i.az, %i.ax
  %2 = sext i32 %i.ba to i64
  %invariant.gep.i40 = getelementptr [4 x i8], ptr %i.d, i64 %2 ; 32 uses
  %i.bb = getelementptr i8, ptr %invariant.gep.i40, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %invariant.gep.i40, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.bb, align 4, !tbaa !12
  %i.bc = getelementptr i8, ptr %invariant.gep.i40, i64 32
  %i.bd = getelementptr i8, ptr %invariant.gep.i40, i64 48
  store <4 x float> splat (float 1.000000e+00), ptr %i.bc, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.bd, align 4, !tbaa !12
  %i.be = getelementptr i8, ptr %invariant.gep.i40, i64 64
  %i.bf = getelementptr i8, ptr %invariant.gep.i40, i64 80
  store <4 x float> splat (float 1.000000e+00), ptr %i.be, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.bf, align 4, !tbaa !12
  %i.bg = getelementptr i8, ptr %invariant.gep.i40, i64 96
  %i.bh = getelementptr i8, ptr %invariant.gep.i40, i64 112
  store <4 x float> splat (float 1.000000e+00), ptr %i.bg, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.bh, align 4, !tbaa !12
  %i.bi = getelementptr i8, ptr %invariant.gep.i40, i64 128
  %i.bj = getelementptr i8, ptr %invariant.gep.i40, i64 144
  store <4 x float> splat (float 1.000000e+00), ptr %i.bi, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.bj, align 4, !tbaa !12
  %i.bk = getelementptr i8, ptr %invariant.gep.i40, i64 160
  %i.bl = getelementptr i8, ptr %invariant.gep.i40, i64 176
  store <4 x float> splat (float 1.000000e+00), ptr %i.bk, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.bl, align 4, !tbaa !12
  %i.bm = getelementptr i8, ptr %invariant.gep.i40, i64 192
  %i.bn = getelementptr i8, ptr %invariant.gep.i40, i64 208
  store <4 x float> splat (float 1.000000e+00), ptr %i.bm, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.bn, align 4, !tbaa !12
  %i.bo = getelementptr i8, ptr %invariant.gep.i40, i64 224
  %i.bp = getelementptr i8, ptr %invariant.gep.i40, i64 240
  store <4 x float> splat (float 1.000000e+00), ptr %i.bo, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.bp, align 4, !tbaa !12
  %i.bq = getelementptr i8, ptr %invariant.gep.i40, i64 256
  %i.br = getelementptr i8, ptr %invariant.gep.i40, i64 272
  store <4 x float> splat (float 1.000000e+00), ptr %i.bq, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.br, align 4, !tbaa !12
  %i.bs = getelementptr i8, ptr %invariant.gep.i40, i64 288
  %i.bt = getelementptr i8, ptr %invariant.gep.i40, i64 304
  store <4 x float> splat (float 1.000000e+00), ptr %i.bs, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.bt, align 4, !tbaa !12
  %i.bu = getelementptr i8, ptr %invariant.gep.i40, i64 320
  %i.bv = getelementptr i8, ptr %invariant.gep.i40, i64 336
  store <4 x float> splat (float 1.000000e+00), ptr %i.bu, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.bv, align 4, !tbaa !12
  %i.bw = getelementptr i8, ptr %invariant.gep.i40, i64 352
  %i.bx = getelementptr i8, ptr %invariant.gep.i40, i64 368
  store <4 x float> splat (float 1.000000e+00), ptr %i.bw, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.bx, align 4, !tbaa !12
  %i.by = getelementptr i8, ptr %invariant.gep.i40, i64 384
  %i.bz = getelementptr i8, ptr %invariant.gep.i40, i64 400
  store <4 x float> splat (float 1.000000e+00), ptr %i.by, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.bz, align 4, !tbaa !12
  %i.ca = getelementptr i8, ptr %invariant.gep.i40, i64 416
  %i.cb = getelementptr i8, ptr %invariant.gep.i40, i64 432
  store <4 x float> splat (float 1.000000e+00), ptr %i.ca, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.cb, align 4, !tbaa !12
  %i.cc = getelementptr i8, ptr %invariant.gep.i40, i64 448
  %i.cd = getelementptr i8, ptr %invariant.gep.i40, i64 464
  store <4 x float> splat (float 1.000000e+00), ptr %i.cc, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.cd, align 4, !tbaa !12
  %i.ce = getelementptr i8, ptr %invariant.gep.i40, i64 480
  %i.cf = getelementptr i8, ptr %invariant.gep.i40, i64 496
  store <4 x float> splat (float 1.000000e+00), ptr %i.ce, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.cf, align 4, !tbaa !12
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, 64
  br i1 %exitcond35.not.i, label %._crit_edge26.i, label %.preheader.i39, !llvm.loop !17

._crit_edge26.i:                                  ; preds = %.preheader.i39
  %i.cg = add nuw nsw i32 %.02127.i, 1            ; 2 uses
  %exitcond36.not.i = icmp eq i32 %i.cg, 64
  br i1 %exitcond36.not.i, label %.preheader23.i51.preheader, label %.preheader23.i, !llvm.loop !18

.preheader23.i51.preheader:                       ; preds = %._crit_edge26.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2097152) %i.e, i8 0, i64 2097152, i1 false), !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2097152) %i.f, i8 0, i64 2097152, i1 false), !tbaa !12
  br label %.preheader23.i91

.preheader23.i91:                                 ; preds = %.preheader23.i51.preheader, %._crit_edge26.i103
  %.02127.i92 = phi i32 [ %i.dq, %._crit_edge26.i103 ], [ 0, %.preheader23.i51.preheader ] ; 2 uses
  %i.ch = shl nuw nsw i32 %.02127.i92, 13
  br label %.preheader.i93

.preheader.i93:                                   ; preds = %.preheader.i93, %.preheader23.i91
  %indvars.iv31.i94 = phi i64 [ 0, %.preheader23.i91 ], [ %indvars.iv.next32.i101, %.preheader.i93 ] ; 2 uses
  %i.ci = trunc nuw nsw i64 %indvars.iv31.i94 to i32
  %i.cj = shl i32 %i.ci, 7
  %i.ck = add nuw nsw i32 %i.cj, %i.ch
  %3 = sext i32 %i.ck to i64
  %invariant.gep.i95 = getelementptr [4 x i8], ptr %i.g, i64 %3 ; 32 uses
  %i.cl = getelementptr i8, ptr %invariant.gep.i95, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %invariant.gep.i95, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.cl, align 4, !tbaa !12
  %i.cm = getelementptr i8, ptr %invariant.gep.i95, i64 32
  %i.cn = getelementptr i8, ptr %invariant.gep.i95, i64 48
  store <4 x float> splat (float 1.000000e+00), ptr %i.cm, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.cn, align 4, !tbaa !12
  %i.co = getelementptr i8, ptr %invariant.gep.i95, i64 64
  %i.cp = getelementptr i8, ptr %invariant.gep.i95, i64 80
  store <4 x float> splat (float 1.000000e+00), ptr %i.co, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.cp, align 4, !tbaa !12
  %i.cq = getelementptr i8, ptr %invariant.gep.i95, i64 96
  %i.cr = getelementptr i8, ptr %invariant.gep.i95, i64 112
  store <4 x float> splat (float 1.000000e+00), ptr %i.cq, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.cr, align 4, !tbaa !12
  %i.cs = getelementptr i8, ptr %invariant.gep.i95, i64 128
  %i.ct = getelementptr i8, ptr %invariant.gep.i95, i64 144
  store <4 x float> splat (float 1.000000e+00), ptr %i.cs, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.ct, align 4, !tbaa !12
  %i.cu = getelementptr i8, ptr %invariant.gep.i95, i64 160
  %i.cv = getelementptr i8, ptr %invariant.gep.i95, i64 176
  store <4 x float> splat (float 1.000000e+00), ptr %i.cu, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.cv, align 4, !tbaa !12
  %i.cw = getelementptr i8, ptr %invariant.gep.i95, i64 192
  %i.cx = getelementptr i8, ptr %invariant.gep.i95, i64 208
  store <4 x float> splat (float 1.000000e+00), ptr %i.cw, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.cx, align 4, !tbaa !12
  %i.cy = getelementptr i8, ptr %invariant.gep.i95, i64 224
  %i.cz = getelementptr i8, ptr %invariant.gep.i95, i64 240
  store <4 x float> splat (float 1.000000e+00), ptr %i.cy, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.cz, align 4, !tbaa !12
  %i.da = getelementptr i8, ptr %invariant.gep.i95, i64 256
  %i.db = getelementptr i8, ptr %invariant.gep.i95, i64 272
  store <4 x float> splat (float 1.000000e+00), ptr %i.da, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.db, align 4, !tbaa !12
  %i.dc = getelementptr i8, ptr %invariant.gep.i95, i64 288
  %i.dd = getelementptr i8, ptr %invariant.gep.i95, i64 304
  store <4 x float> splat (float 1.000000e+00), ptr %i.dc, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.dd, align 4, !tbaa !12
  %i.de = getelementptr i8, ptr %invariant.gep.i95, i64 320
  %i.df = getelementptr i8, ptr %invariant.gep.i95, i64 336
  store <4 x float> splat (float 1.000000e+00), ptr %i.de, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.df, align 4, !tbaa !12
  %i.dg = getelementptr i8, ptr %invariant.gep.i95, i64 352
  %i.dh = getelementptr i8, ptr %invariant.gep.i95, i64 368
  store <4 x float> splat (float 1.000000e+00), ptr %i.dg, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.dh, align 4, !tbaa !12
  %i.di = getelementptr i8, ptr %invariant.gep.i95, i64 384
  %i.dj = getelementptr i8, ptr %invariant.gep.i95, i64 400
  store <4 x float> splat (float 1.000000e+00), ptr %i.di, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.dj, align 4, !tbaa !12
  %i.dk = getelementptr i8, ptr %invariant.gep.i95, i64 416
  %i.dl = getelementptr i8, ptr %invariant.gep.i95, i64 432
  store <4 x float> splat (float 1.000000e+00), ptr %i.dk, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.dl, align 4, !tbaa !12
  %i.dm = getelementptr i8, ptr %invariant.gep.i95, i64 448
  %i.dn = getelementptr i8, ptr %invariant.gep.i95, i64 464
  store <4 x float> splat (float 1.000000e+00), ptr %i.dm, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.dn, align 4, !tbaa !12
  %i.do = getelementptr i8, ptr %invariant.gep.i95, i64 480
  %i.dp = getelementptr i8, ptr %invariant.gep.i95, i64 496
  store <4 x float> splat (float 1.000000e+00), ptr %i.do, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.dp, align 4, !tbaa !12
  %indvars.iv.next32.i101 = add nuw nsw i64 %indvars.iv31.i94, 1 ; 2 uses
  %exitcond35.not.i102 = icmp eq i64 %indvars.iv.next32.i101, 64
  br i1 %exitcond35.not.i102, label %._crit_edge26.i103, label %.preheader.i93, !llvm.loop !17

._crit_edge26.i103:                               ; preds = %.preheader.i93
  %i.dq = add nuw nsw i32 %.02127.i92, 1          ; 2 uses
  %exitcond36.not.i104 = icmp eq i32 %i.dq, 64
  br i1 %exitcond36.not.i104, label %.preheader23.i111, label %.preheader23.i91, !llvm.loop !18

.preheader23.i111:                                ; preds = %._crit_edge26.i103, %._crit_edge26.i123
  %.02127.i112 = phi i32 [ %i.fc, %._crit_edge26.i123 ], [ 0, %._crit_edge26.i103 ] ; 2 uses
  %i.dr = shl nuw nsw i32 %.02127.i112, 6
  %i.ds = add nuw nsw i32 %i.dr, 4096
  br label %.preheader.i113

.preheader.i113:                                  ; preds = %.preheader.i113, %.preheader23.i111
  %indvars.iv31.i114 = phi i64 [ 0, %.preheader23.i111 ], [ %indvars.iv.next32.i121, %.preheader.i113 ] ; 2 uses
  %i.dt = trunc nuw nsw i64 %indvars.iv31.i114 to i32
  %i.du = add nuw nsw i32 %i.ds, %i.dt
  %i.dv = shl i32 %i.du, 7
  %i.dw = sext i32 %i.dv to i64
  %invariant.gep.i115 = getelementptr [4 x i8], ptr %i.g, i64 %i.dw ; 32 uses
  %i.dx = getelementptr i8, ptr %invariant.gep.i115, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %invariant.gep.i115, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.dx, align 4, !tbaa !12
  %i.dy = getelementptr i8, ptr %invariant.gep.i115, i64 32
  %i.dz = getelementptr i8, ptr %invariant.gep.i115, i64 48
  store <4 x float> splat (float 1.000000e+00), ptr %i.dy, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.dz, align 4, !tbaa !12
  %i.ea = getelementptr i8, ptr %invariant.gep.i115, i64 64
  %i.eb = getelementptr i8, ptr %invariant.gep.i115, i64 80
  store <4 x float> splat (float 1.000000e+00), ptr %i.ea, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.eb, align 4, !tbaa !12
  %i.ec = getelementptr i8, ptr %invariant.gep.i115, i64 96
  %i.ed = getelementptr i8, ptr %invariant.gep.i115, i64 112
  store <4 x float> splat (float 1.000000e+00), ptr %i.ec, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.ed, align 4, !tbaa !12
  %i.ee = getelementptr i8, ptr %invariant.gep.i115, i64 128
  %i.ef = getelementptr i8, ptr %invariant.gep.i115, i64 144
  store <4 x float> splat (float 1.000000e+00), ptr %i.ee, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.ef, align 4, !tbaa !12
  %i.eg = getelementptr i8, ptr %invariant.gep.i115, i64 160
  %i.eh = getelementptr i8, ptr %invariant.gep.i115, i64 176
  store <4 x float> splat (float 1.000000e+00), ptr %i.eg, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.eh, align 4, !tbaa !12
  %i.ei = getelementptr i8, ptr %invariant.gep.i115, i64 192
  %i.ej = getelementptr i8, ptr %invariant.gep.i115, i64 208
  store <4 x float> splat (float 1.000000e+00), ptr %i.ei, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.ej, align 4, !tbaa !12
  %i.ek = getelementptr i8, ptr %invariant.gep.i115, i64 224
  %i.el = getelementptr i8, ptr %invariant.gep.i115, i64 240
  store <4 x float> splat (float 1.000000e+00), ptr %i.ek, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.el, align 4, !tbaa !12
  %i.em = getelementptr i8, ptr %invariant.gep.i115, i64 256
  %i.en = getelementptr i8, ptr %invariant.gep.i115, i64 272
  store <4 x float> splat (float 1.000000e+00), ptr %i.em, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.en, align 4, !tbaa !12
  %i.eo = getelementptr i8, ptr %invariant.gep.i115, i64 288
  %i.ep = getelementptr i8, ptr %invariant.gep.i115, i64 304
  store <4 x float> splat (float 1.000000e+00), ptr %i.eo, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.ep, align 4, !tbaa !12
  %i.eq = getelementptr i8, ptr %invariant.gep.i115, i64 320
  %i.er = getelementptr i8, ptr %invariant.gep.i115, i64 336
  store <4 x float> splat (float 1.000000e+00), ptr %i.eq, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.er, align 4, !tbaa !12
  %i.es = getelementptr i8, ptr %invariant.gep.i115, i64 352
  %i.et = getelementptr i8, ptr %invariant.gep.i115, i64 368
  store <4 x float> splat (float 1.000000e+00), ptr %i.es, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.et, align 4, !tbaa !12
  %i.eu = getelementptr i8, ptr %invariant.gep.i115, i64 384
  %i.ev = getelementptr i8, ptr %invariant.gep.i115, i64 400
  store <4 x float> splat (float 1.000000e+00), ptr %i.eu, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.ev, align 4, !tbaa !12
  %i.ew = getelementptr i8, ptr %invariant.gep.i115, i64 416
  %i.ex = getelementptr i8, ptr %invariant.gep.i115, i64 432
  store <4 x float> splat (float 1.000000e+00), ptr %i.ew, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.ex, align 4, !tbaa !12
  %i.ey = getelementptr i8, ptr %invariant.gep.i115, i64 448
  %i.ez = getelementptr i8, ptr %invariant.gep.i115, i64 464
  store <4 x float> splat (float 1.000000e+00), ptr %i.ey, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.ez, align 4, !tbaa !12
  %i.fa = getelementptr i8, ptr %invariant.gep.i115, i64 480
  %i.fb = getelementptr i8, ptr %invariant.gep.i115, i64 496
  store <4 x float> splat (float 1.000000e+00), ptr %i.fa, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.fb, align 4, !tbaa !12
  %indvars.iv.next32.i121 = add nuw nsw i64 %indvars.iv31.i114, 1 ; 2 uses
  %exitcond35.not.i122 = icmp eq i64 %indvars.iv.next32.i121, 64
  br i1 %exitcond35.not.i122, label %._crit_edge26.i123, label %.preheader.i113, !llvm.loop !17

._crit_edge26.i123:                               ; preds = %.preheader.i113
  %i.fc = add nuw nsw i32 %.02127.i112, 1         ; 2 uses
  %exitcond36.not.i124 = icmp eq i32 %i.fc, 64
  br i1 %exitcond36.not.i124, label %.preheader23.i131, label %.preheader23.i111, !llvm.loop !18

.preheader23.i131:                                ; preds = %._crit_edge26.i123, %._crit_edge26.i143
  %.02127.i132 = phi i32 [ %i.go, %._crit_edge26.i143 ], [ 0, %._crit_edge26.i123 ] ; 2 uses
  %i.fd = shl nuw nsw i32 %.02127.i132, 6
  %i.fe = add nuw nsw i32 %i.fd, 8192
  br label %.preheader.i133

.preheader.i133:                                  ; preds = %.preheader.i133, %.preheader23.i131
  %indvars.iv31.i134 = phi i64 [ 0, %.preheader23.i131 ], [ %indvars.iv.next32.i141, %.preheader.i133 ] ; 2 uses
  %i.ff = trunc nuw nsw i64 %indvars.iv31.i134 to i32
  %i.fg = add nuw nsw i32 %i.fe, %i.ff
  %i.fh = shl i32 %i.fg, 7
  %i.fi = sext i32 %i.fh to i64
  %invariant.gep.i135 = getelementptr [4 x i8], ptr %i.g, i64 %i.fi ; 32 uses
  %i.fj = getelementptr i8, ptr %invariant.gep.i135, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %invariant.gep.i135, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.fj, align 4, !tbaa !12
  %i.fk = getelementptr i8, ptr %invariant.gep.i135, i64 32
  %i.fl = getelementptr i8, ptr %invariant.gep.i135, i64 48
  store <4 x float> splat (float 1.000000e+00), ptr %i.fk, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.fl, align 4, !tbaa !12
  %i.fm = getelementptr i8, ptr %invariant.gep.i135, i64 64
  %i.fn = getelementptr i8, ptr %invariant.gep.i135, i64 80
  store <4 x float> splat (float 1.000000e+00), ptr %i.fm, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.fn, align 4, !tbaa !12
  %i.fo = getelementptr i8, ptr %invariant.gep.i135, i64 96
  %i.fp = getelementptr i8, ptr %invariant.gep.i135, i64 112
  store <4 x float> splat (float 1.000000e+00), ptr %i.fo, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.fp, align 4, !tbaa !12
  %i.fq = getelementptr i8, ptr %invariant.gep.i135, i64 128
  %i.fr = getelementptr i8, ptr %invariant.gep.i135, i64 144
  store <4 x float> splat (float 1.000000e+00), ptr %i.fq, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.fr, align 4, !tbaa !12
  %i.fs = getelementptr i8, ptr %invariant.gep.i135, i64 160
  %i.ft = getelementptr i8, ptr %invariant.gep.i135, i64 176
  store <4 x float> splat (float 1.000000e+00), ptr %i.fs, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.ft, align 4, !tbaa !12
  %i.fu = getelementptr i8, ptr %invariant.gep.i135, i64 192
  %i.fv = getelementptr i8, ptr %invariant.gep.i135, i64 208
  store <4 x float> splat (float 1.000000e+00), ptr %i.fu, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.fv, align 4, !tbaa !12
  %i.fw = getelementptr i8, ptr %invariant.gep.i135, i64 224
  %i.fx = getelementptr i8, ptr %invariant.gep.i135, i64 240
  store <4 x float> splat (float 1.000000e+00), ptr %i.fw, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.fx, align 4, !tbaa !12
  %i.fy = getelementptr i8, ptr %invariant.gep.i135, i64 256
  %i.fz = getelementptr i8, ptr %invariant.gep.i135, i64 272
  store <4 x float> splat (float 1.000000e+00), ptr %i.fy, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.fz, align 4, !tbaa !12
  %i.ga = getelementptr i8, ptr %invariant.gep.i135, i64 288
  %i.gb = getelementptr i8, ptr %invariant.gep.i135, i64 304
  store <4 x float> splat (float 1.000000e+00), ptr %i.ga, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.gb, align 4, !tbaa !12
  %i.gc = getelementptr i8, ptr %invariant.gep.i135, i64 320
  %i.gd = getelementptr i8, ptr %invariant.gep.i135, i64 336
  store <4 x float> splat (float 1.000000e+00), ptr %i.gc, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.gd, align 4, !tbaa !12
  %i.ge = getelementptr i8, ptr %invariant.gep.i135, i64 352
  %i.gf = getelementptr i8, ptr %invariant.gep.i135, i64 368
  store <4 x float> splat (float 1.000000e+00), ptr %i.ge, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.gf, align 4, !tbaa !12
  %i.gg = getelementptr i8, ptr %invariant.gep.i135, i64 384
  %i.gh = getelementptr i8, ptr %invariant.gep.i135, i64 400
  store <4 x float> splat (float 1.000000e+00), ptr %i.gg, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.gh, align 4, !tbaa !12
  %i.gi = getelementptr i8, ptr %invariant.gep.i135, i64 416
  %i.gj = getelementptr i8, ptr %invariant.gep.i135, i64 432
  store <4 x float> splat (float 1.000000e+00), ptr %i.gi, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.gj, align 4, !tbaa !12
  %i.gk = getelementptr i8, ptr %invariant.gep.i135, i64 448
  %i.gl = getelementptr i8, ptr %invariant.gep.i135, i64 464
  store <4 x float> splat (float 1.000000e+00), ptr %i.gk, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.gl, align 4, !tbaa !12
  %i.gm = getelementptr i8, ptr %invariant.gep.i135, i64 480
  %i.gn = getelementptr i8, ptr %invariant.gep.i135, i64 496
  store <4 x float> splat (float 1.000000e+00), ptr %i.gm, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.gn, align 4, !tbaa !12
  %indvars.iv.next32.i141 = add nuw nsw i64 %indvars.iv31.i134, 1 ; 2 uses
  %exitcond35.not.i142 = icmp eq i64 %indvars.iv.next32.i141, 64
  br i1 %exitcond35.not.i142, label %._crit_edge26.i143, label %.preheader.i133, !llvm.loop !17

._crit_edge26.i143:                               ; preds = %.preheader.i133
  %i.go = add nuw nsw i32 %.02127.i132, 1         ; 2 uses
  %exitcond36.not.i144 = icmp eq i32 %i.go, 64
  br i1 %exitcond36.not.i144, label %.preheader23.i151, label %.preheader23.i131, !llvm.loop !18

.preheader23.i151:                                ; preds = %._crit_edge26.i143, %._crit_edge26.i163
  %.02127.i152 = phi i32 [ %i.ia, %._crit_edge26.i163 ], [ 0, %._crit_edge26.i143 ] ; 2 uses
  %i.gp = shl nuw nsw i32 %.02127.i152, 6
  %i.gq = add nuw nsw i32 %i.gp, 12288
  br label %.preheader.i153

.preheader.i153:                                  ; preds = %.preheader.i153, %.preheader23.i151
  %indvars.iv31.i154 = phi i64 [ 0, %.preheader23.i151 ], [ %indvars.iv.next32.i161, %.preheader.i153 ] ; 2 uses
  %i.gr = trunc nuw nsw i64 %indvars.iv31.i154 to i32
  %i.gs = add nuw nsw i32 %i.gq, %i.gr
  %i.gt = shl i32 %i.gs, 7
  %i.gu = sext i32 %i.gt to i64
  %invariant.gep.i155 = getelementptr [4 x i8], ptr %i.g, i64 %i.gu ; 32 uses
  %i.gv = getelementptr i8, ptr %invariant.gep.i155, i64 16
  store <4 x float> splat (float f0x3E2AAAAB), ptr %invariant.gep.i155, align 4, !tbaa !12
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.gv, align 4, !tbaa !12
  %i.gw = getelementptr i8, ptr %invariant.gep.i155, i64 32
  %i.gx = getelementptr i8, ptr %invariant.gep.i155, i64 48
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.gw, align 4, !tbaa !12
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.gx, align 4, !tbaa !12
  %i.gy = getelementptr i8, ptr %invariant.gep.i155, i64 64
  %i.gz = getelementptr i8, ptr %invariant.gep.i155, i64 80
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.gy, align 4, !tbaa !12
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.gz, align 4, !tbaa !12
  %i.ha = getelementptr i8, ptr %invariant.gep.i155, i64 96
  %i.hb = getelementptr i8, ptr %invariant.gep.i155, i64 112
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.ha, align 4, !tbaa !12
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hb, align 4, !tbaa !12
  %i.hc = getelementptr i8, ptr %invariant.gep.i155, i64 128
  %i.hd = getelementptr i8, ptr %invariant.gep.i155, i64 144
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hc, align 4, !tbaa !12
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hd, align 4, !tbaa !12
  %i.he = getelementptr i8, ptr %invariant.gep.i155, i64 160
  %i.hf = getelementptr i8, ptr %invariant.gep.i155, i64 176
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.he, align 4, !tbaa !12
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hf, align 4, !tbaa !12
  %i.hg = getelementptr i8, ptr %invariant.gep.i155, i64 192
  %i.hh = getelementptr i8, ptr %invariant.gep.i155, i64 208
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hg, align 4, !tbaa !12
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hh, align 4, !tbaa !12
  %i.hi = getelementptr i8, ptr %invariant.gep.i155, i64 224
  %i.hj = getelementptr i8, ptr %invariant.gep.i155, i64 240
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hi, align 4, !tbaa !12
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hj, align 4, !tbaa !12
  %i.hk = getelementptr i8, ptr %invariant.gep.i155, i64 256
  %i.hl = getelementptr i8, ptr %invariant.gep.i155, i64 272
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hk, align 4, !tbaa !12
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hl, align 4, !tbaa !12
  %i.hm = getelementptr i8, ptr %invariant.gep.i155, i64 288
  %i.hn = getelementptr i8, ptr %invariant.gep.i155, i64 304
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hm, align 4, !tbaa !12
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hn, align 4, !tbaa !12
  %i.ho = getelementptr i8, ptr %invariant.gep.i155, i64 320
  %i.hp = getelementptr i8, ptr %invariant.gep.i155, i64 336
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.ho, align 4, !tbaa !12
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hp, align 4, !tbaa !12
  %i.hq = getelementptr i8, ptr %invariant.gep.i155, i64 352
  %i.hr = getelementptr i8, ptr %invariant.gep.i155, i64 368
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hq, align 4, !tbaa !12
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hr, align 4, !tbaa !12
  %i.hs = getelementptr i8, ptr %invariant.gep.i155, i64 384
  %i.ht = getelementptr i8, ptr %invariant.gep.i155, i64 400
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hs, align 4, !tbaa !12
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.ht, align 4, !tbaa !12
  %i.hu = getelementptr i8, ptr %invariant.gep.i155, i64 416
  %i.hv = getelementptr i8, ptr %invariant.gep.i155, i64 432
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hu, align 4, !tbaa !12
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hv, align 4, !tbaa !12
  %i.hw = getelementptr i8, ptr %invariant.gep.i155, i64 448
  %i.hx = getelementptr i8, ptr %invariant.gep.i155, i64 464
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hw, align 4, !tbaa !12
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hx, align 4, !tbaa !12
  %i.hy = getelementptr i8, ptr %invariant.gep.i155, i64 480
  %i.hz = getelementptr i8, ptr %invariant.gep.i155, i64 496
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hy, align 4, !tbaa !12
  store <4 x float> splat (float f0x3E2AAAAB), ptr %i.hz, align 4, !tbaa !12
  %indvars.iv.next32.i161 = add nuw nsw i64 %indvars.iv31.i154, 1 ; 2 uses
  %exitcond35.not.i162 = icmp eq i64 %indvars.iv.next32.i161, 64
  br i1 %exitcond35.not.i162, label %._crit_edge26.i163, label %.preheader.i153, !llvm.loop !17

._crit_edge26.i163:                               ; preds = %.preheader.i153
  %i.ia = add nuw nsw i32 %.02127.i152, 1         ; 2 uses
  %exitcond36.not.i164 = icmp eq i32 %i.ia, 64
  br i1 %exitcond36.not.i164, label %.preheader23.i171.preheader, label %.preheader23.i151, !llvm.loop !18

.preheader23.i171.preheader:                      ; preds = %._crit_edge26.i163
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6291456) %i.h, i8 0, i64 6291456, i1 false)
  br label %.preheader23.i231

.preheader23.i231:                                ; preds = %.preheader23.i171.preheader, %._crit_edge26.i243
  %.02127.i232 = phi i32 [ %i.jk, %._crit_edge26.i243 ], [ 0, %.preheader23.i171.preheader ] ; 2 uses
  %i.ib = shl nuw nsw i32 %.02127.i232, 13
  br label %.preheader.i233

.preheader.i233:                                  ; preds = %.preheader.i233, %.preheader23.i231
  %indvars.iv31.i234 = phi i64 [ 0, %.preheader23.i231 ], [ %indvars.iv.next32.i241, %.preheader.i233 ] ; 2 uses
  %i.ic = trunc nuw nsw i64 %indvars.iv31.i234 to i32
  %i.id = shl i32 %i.ic, 7
  %i.ie = add nuw nsw i32 %i.id, %i.ib
  %4 = sext i32 %i.ie to i64
  %invariant.gep.i235 = getelementptr [4 x i8], ptr %i.i, i64 %4 ; 32 uses
  %i.if = getelementptr i8, ptr %invariant.gep.i235, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %invariant.gep.i235, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.if, align 4, !tbaa !12
  %i.ig = getelementptr i8, ptr %invariant.gep.i235, i64 32
  %i.ih = getelementptr i8, ptr %invariant.gep.i235, i64 48
  store <4 x float> splat (float 1.000000e+00), ptr %i.ig, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.ih, align 4, !tbaa !12
  %i.ii = getelementptr i8, ptr %invariant.gep.i235, i64 64
  %i.ij = getelementptr i8, ptr %invariant.gep.i235, i64 80
  store <4 x float> splat (float 1.000000e+00), ptr %i.ii, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.ij, align 4, !tbaa !12
  %i.ik = getelementptr i8, ptr %invariant.gep.i235, i64 96
  %i.il = getelementptr i8, ptr %invariant.gep.i235, i64 112
  store <4 x float> splat (float 1.000000e+00), ptr %i.ik, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.il, align 4, !tbaa !12
  %i.im = getelementptr i8, ptr %invariant.gep.i235, i64 128
  %i.in = getelementptr i8, ptr %invariant.gep.i235, i64 144
  store <4 x float> splat (float 1.000000e+00), ptr %i.im, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.in, align 4, !tbaa !12
  %i.io = getelementptr i8, ptr %invariant.gep.i235, i64 160
  %i.ip = getelementptr i8, ptr %invariant.gep.i235, i64 176
  store <4 x float> splat (float 1.000000e+00), ptr %i.io, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.ip, align 4, !tbaa !12
  %i.iq = getelementptr i8, ptr %invariant.gep.i235, i64 192
  %i.ir = getelementptr i8, ptr %invariant.gep.i235, i64 208
  store <4 x float> splat (float 1.000000e+00), ptr %i.iq, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.ir, align 4, !tbaa !12
  %i.is = getelementptr i8, ptr %invariant.gep.i235, i64 224
  %i.it = getelementptr i8, ptr %invariant.gep.i235, i64 240
  store <4 x float> splat (float 1.000000e+00), ptr %i.is, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.it, align 4, !tbaa !12
  %i.iu = getelementptr i8, ptr %invariant.gep.i235, i64 256
  %i.iv = getelementptr i8, ptr %invariant.gep.i235, i64 272
  store <4 x float> splat (float 1.000000e+00), ptr %i.iu, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.iv, align 4, !tbaa !12
  %i.iw = getelementptr i8, ptr %invariant.gep.i235, i64 288
  %i.ix = getelementptr i8, ptr %invariant.gep.i235, i64 304
  store <4 x float> splat (float 1.000000e+00), ptr %i.iw, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.ix, align 4, !tbaa !12
  %i.iy = getelementptr i8, ptr %invariant.gep.i235, i64 320
  %i.iz = getelementptr i8, ptr %invariant.gep.i235, i64 336
  store <4 x float> splat (float 1.000000e+00), ptr %i.iy, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.iz, align 4, !tbaa !12
  %i.ja = getelementptr i8, ptr %invariant.gep.i235, i64 352
  %i.jb = getelementptr i8, ptr %invariant.gep.i235, i64 368
  store <4 x float> splat (float 1.000000e+00), ptr %i.ja, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.jb, align 4, !tbaa !12
  %i.jc = getelementptr i8, ptr %invariant.gep.i235, i64 384
  %i.jd = getelementptr i8, ptr %invariant.gep.i235, i64 400
  store <4 x float> splat (float 1.000000e+00), ptr %i.jc, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.jd, align 4, !tbaa !12
  %i.je = getelementptr i8, ptr %invariant.gep.i235, i64 416
  %i.jf = getelementptr i8, ptr %invariant.gep.i235, i64 432
  store <4 x float> splat (float 1.000000e+00), ptr %i.je, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.jf, align 4, !tbaa !12
  %i.jg = getelementptr i8, ptr %invariant.gep.i235, i64 448
  %i.jh = getelementptr i8, ptr %invariant.gep.i235, i64 464
  store <4 x float> splat (float 1.000000e+00), ptr %i.jg, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.jh, align 4, !tbaa !12
  %i.ji = getelementptr i8, ptr %invariant.gep.i235, i64 480
  %i.jj = getelementptr i8, ptr %invariant.gep.i235, i64 496
  store <4 x float> splat (float 1.000000e+00), ptr %i.ji, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.jj, align 4, !tbaa !12
  %indvars.iv.next32.i241 = add nuw nsw i64 %indvars.iv31.i234, 1 ; 2 uses
  %exitcond35.not.i242 = icmp eq i64 %indvars.iv.next32.i241, 64
  br i1 %exitcond35.not.i242, label %._crit_edge26.i243, label %.preheader.i233, !llvm.loop !17

._crit_edge26.i243:                               ; preds = %.preheader.i233
  %i.jk = add nuw nsw i32 %.02127.i232, 1         ; 2 uses
  %exitcond36.not.i244 = icmp eq i32 %i.jk, 64
  br i1 %exitcond36.not.i244, label %.preheader23.i251, label %.preheader23.i231, !llvm.loop !18

.preheader23.i251:                                ; preds = %._crit_edge26.i243, %._crit_edge26.i263
  %.02127.i252 = phi i32 [ %i.kw, %._crit_edge26.i263 ], [ 0, %._crit_edge26.i243 ] ; 2 uses
  %i.jl = shl nuw nsw i32 %.02127.i252, 6
  %i.jm = add nuw nsw i32 %i.jl, 4096
  br label %.preheader.i253

.preheader.i253:                                  ; preds = %.preheader.i253, %.preheader23.i251
  %indvars.iv31.i254 = phi i64 [ 0, %.preheader23.i251 ], [ %indvars.iv.next32.i261, %.preheader.i253 ] ; 2 uses
  %i.jn = trunc nuw nsw i64 %indvars.iv31.i254 to i32
  %i.jo = add nuw nsw i32 %i.jm, %i.jn
  %i.jp = shl i32 %i.jo, 7
  %i.jq = sext i32 %i.jp to i64
  %invariant.gep.i255 = getelementptr [4 x i8], ptr %i.i, i64 %i.jq ; 32 uses
  %i.jr = getelementptr i8, ptr %invariant.gep.i255, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %invariant.gep.i255, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.jr, align 4, !tbaa !12
  %i.js = getelementptr i8, ptr %invariant.gep.i255, i64 32
  %i.jt = getelementptr i8, ptr %invariant.gep.i255, i64 48
  store <4 x float> splat (float 1.000000e+00), ptr %i.js, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.jt, align 4, !tbaa !12
  %i.ju = getelementptr i8, ptr %invariant.gep.i255, i64 64
  %i.jv = getelementptr i8, ptr %invariant.gep.i255, i64 80
  store <4 x float> splat (float 1.000000e+00), ptr %i.ju, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.jv, align 4, !tbaa !12
  %i.jw = getelementptr i8, ptr %invariant.gep.i255, i64 96
  %i.jx = getelementptr i8, ptr %invariant.gep.i255, i64 112
  store <4 x float> splat (float 1.000000e+00), ptr %i.jw, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.jx, align 4, !tbaa !12
  %i.jy = getelementptr i8, ptr %invariant.gep.i255, i64 128
  %i.jz = getelementptr i8, ptr %invariant.gep.i255, i64 144
  store <4 x float> splat (float 1.000000e+00), ptr %i.jy, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.jz, align 4, !tbaa !12
  %i.ka = getelementptr i8, ptr %invariant.gep.i255, i64 160
  %i.kb = getelementptr i8, ptr %invariant.gep.i255, i64 176
  store <4 x float> splat (float 1.000000e+00), ptr %i.ka, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.kb, align 4, !tbaa !12
  %i.kc = getelementptr i8, ptr %invariant.gep.i255, i64 192
  %i.kd = getelementptr i8, ptr %invariant.gep.i255, i64 208
  store <4 x float> splat (float 1.000000e+00), ptr %i.kc, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.kd, align 4, !tbaa !12
  %i.ke = getelementptr i8, ptr %invariant.gep.i255, i64 224
  %i.kf = getelementptr i8, ptr %invariant.gep.i255, i64 240
  store <4 x float> splat (float 1.000000e+00), ptr %i.ke, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.kf, align 4, !tbaa !12
  %i.kg = getelementptr i8, ptr %invariant.gep.i255, i64 256
  %i.kh = getelementptr i8, ptr %invariant.gep.i255, i64 272
  store <4 x float> splat (float 1.000000e+00), ptr %i.kg, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.kh, align 4, !tbaa !12
  %i.ki = getelementptr i8, ptr %invariant.gep.i255, i64 288
  %i.kj = getelementptr i8, ptr %invariant.gep.i255, i64 304
  store <4 x float> splat (float 1.000000e+00), ptr %i.ki, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.kj, align 4, !tbaa !12
  %i.kk = getelementptr i8, ptr %invariant.gep.i255, i64 320
  %i.kl = getelementptr i8, ptr %invariant.gep.i255, i64 336
  store <4 x float> splat (float 1.000000e+00), ptr %i.kk, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.kl, align 4, !tbaa !12
  %i.km = getelementptr i8, ptr %invariant.gep.i255, i64 352
  %i.kn = getelementptr i8, ptr %invariant.gep.i255, i64 368
  store <4 x float> splat (float 1.000000e+00), ptr %i.km, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.kn, align 4, !tbaa !12
  %i.ko = getelementptr i8, ptr %invariant.gep.i255, i64 384
  %i.kp = getelementptr i8, ptr %invariant.gep.i255, i64 400
  store <4 x float> splat (float 1.000000e+00), ptr %i.ko, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.kp, align 4, !tbaa !12
  %i.kq = getelementptr i8, ptr %invariant.gep.i255, i64 416
  %i.kr = getelementptr i8, ptr %invariant.gep.i255, i64 432
  store <4 x float> splat (float 1.000000e+00), ptr %i.kq, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.kr, align 4, !tbaa !12
  %i.ks = getelementptr i8, ptr %invariant.gep.i255, i64 448
  %i.kt = getelementptr i8, ptr %invariant.gep.i255, i64 464
  store <4 x float> splat (float 1.000000e+00), ptr %i.ks, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.kt, align 4, !tbaa !12
  %i.ku = getelementptr i8, ptr %invariant.gep.i255, i64 480
  %i.kv = getelementptr i8, ptr %invariant.gep.i255, i64 496
  store <4 x float> splat (float 1.000000e+00), ptr %i.ku, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.kv, align 4, !tbaa !12
  %indvars.iv.next32.i261 = add nuw nsw i64 %indvars.iv31.i254, 1 ; 2 uses
  %exitcond35.not.i262 = icmp eq i64 %indvars.iv.next32.i261, 64
  br i1 %exitcond35.not.i262, label %._crit_edge26.i263, label %.preheader.i253, !llvm.loop !17

._crit_edge26.i263:                               ; preds = %.preheader.i253
  %i.kw = add nuw nsw i32 %.02127.i252, 1         ; 2 uses
  %exitcond36.not.i264 = icmp eq i32 %i.kw, 64
  br i1 %exitcond36.not.i264, label %.preheader23.i271, label %.preheader23.i251, !llvm.loop !18

.preheader23.i271:                                ; preds = %._crit_edge26.i263, %._crit_edge26.i283
  %.02127.i272 = phi i32 [ %i.mi, %._crit_edge26.i283 ], [ 0, %._crit_edge26.i263 ] ; 2 uses
  %i.kx = shl nuw nsw i32 %.02127.i272, 6
  %i.ky = add nuw nsw i32 %i.kx, 8192
  br label %.preheader.i273

.preheader.i273:                                  ; preds = %.preheader.i273, %.preheader23.i271
  %indvars.iv31.i274 = phi i64 [ 0, %.preheader23.i271 ], [ %indvars.iv.next32.i281, %.preheader.i273 ] ; 2 uses
  %i.kz = trunc nuw nsw i64 %indvars.iv31.i274 to i32
  %i.la = add nuw nsw i32 %i.ky, %i.kz
  %i.lb = shl i32 %i.la, 7
  %i.lc = sext i32 %i.lb to i64
  %invariant.gep.i275 = getelementptr [4 x i8], ptr %i.i, i64 %i.lc ; 32 uses
  %i.ld = getelementptr i8, ptr %invariant.gep.i275, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %invariant.gep.i275, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.ld, align 4, !tbaa !12
  %i.le = getelementptr i8, ptr %invariant.gep.i275, i64 32
  %i.lf = getelementptr i8, ptr %invariant.gep.i275, i64 48
  store <4 x float> splat (float 1.000000e+00), ptr %i.le, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.lf, align 4, !tbaa !12
  %i.lg = getelementptr i8, ptr %invariant.gep.i275, i64 64
  %i.lh = getelementptr i8, ptr %invariant.gep.i275, i64 80
  store <4 x float> splat (float 1.000000e+00), ptr %i.lg, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.lh, align 4, !tbaa !12
  %i.li = getelementptr i8, ptr %invariant.gep.i275, i64 96
  %i.lj = getelementptr i8, ptr %invariant.gep.i275, i64 112
  store <4 x float> splat (float 1.000000e+00), ptr %i.li, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.lj, align 4, !tbaa !12
  %i.lk = getelementptr i8, ptr %invariant.gep.i275, i64 128
  %i.ll = getelementptr i8, ptr %invariant.gep.i275, i64 144
  store <4 x float> splat (float 1.000000e+00), ptr %i.lk, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.ll, align 4, !tbaa !12
  %i.lm = getelementptr i8, ptr %invariant.gep.i275, i64 160
  %i.ln = getelementptr i8, ptr %invariant.gep.i275, i64 176
  store <4 x float> splat (float 1.000000e+00), ptr %i.lm, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.ln, align 4, !tbaa !12
  %i.lo = getelementptr i8, ptr %invariant.gep.i275, i64 192
  %i.lp = getelementptr i8, ptr %invariant.gep.i275, i64 208
  store <4 x float> splat (float 1.000000e+00), ptr %i.lo, align 4, !tbaa !12
  store <4 x float> splat (float 1.000000e+00), ptr %i.lp, align 4, !tbaa !12
  %i.lq = getelementptr i8, ptr %invariant.gep.i275, i64 224
  %i.lr = getelementptr i8, ptr %invariant.gep.i275, i64 240
end_hunk_0
