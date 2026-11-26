Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ReedSolomon?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@inited = internal unnamed_addr global i1 false, align 4
@recd = internal unnamed_addr global [255 x i32] zeroinitializer, align 16, !guid !9
@index_of = internal unnamed_addr global [256 x i32] zeroinitializer, align 16, !guid !10
@data = internal unnamed_addr global [239 x i32] zeroinitializer, align 16, !guid !11
@bb = internal unnamed_addr global [16 x i32] zeroinitializer, align 16, !guid !12
@alpha_to = internal unnamed_addr global [256 x i32] zeroinitializer, align 16, !guid !13
@gg = internal unnamed_addr global [17 x i32] zeroinitializer, align 16, !guid !14

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @rsdec_204(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 !guid !37 {
bb.a:
  %i.a = alloca [18 x [16 x i32]], align 16       ; 15 uses
  %i.b = alloca [18 x i32], align 16              ; 9 uses
  %i.c = alloca [18 x i32], align 16              ; 9 uses
  %i.d = alloca [18 x i32], align 16              ; 7 uses
  %i.e = alloca [17 x i32], align 16              ; 14 uses
  %i.f = alloca [8 x i32], align 16               ; 4 uses
  %i.g = alloca [8 x i32], align 16               ; 12 uses
  %i.h = alloca [9 x i32], align 16               ; 5 uses
  %.sroa.2 = alloca [8 x i32], align 4            ; 12 uses
  %.b = load i1, ptr @inited, align 4
  br i1 %.b, label %.preheader32.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @index_of, i64 4), align 4, !tbaa !8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @index_of, i64 8), align 8, !tbaa !8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @index_of, i64 16), align 16, !tbaa !8
  store <4 x i32> <i32 1, i32 2, i32 4, i32 8>, ptr @alpha_to, align 16, !tbaa !8
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @index_of, i64 32), align 16, !tbaa !8
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @index_of, i64 64), align 16, !tbaa !8
  store i32 29, ptr getelementptr inbounds nuw (i8, ptr @alpha_to, i64 32), align 16, !tbaa !8
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @index_of, i64 128), align 16, !tbaa !8
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @index_of, i64 256), align 16, !tbaa !8
  store <4 x i32> <i32 16, i32 32, i32 64, i32 128>, ptr getelementptr inbounds nuw (i8, ptr @alpha_to, i64 16), align 16, !tbaa !8
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @index_of, i64 512), align 16, !tbaa !8
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @index_of, i64 116), align 4, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %store_forwarded = phi i32 [ 29, %bb.b ], [ %storemerge.i, %bb.f ] ; 3 uses
  %indvars.iv.i = phi i64 [ 9, %bb.b ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.i = getelementptr [4 x i8], ptr @alpha_to, i64 %indvars.iv.i
  %.not.i = icmp slt i32 %store_forwarded, 128
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @alpha_to, i64 32), align 16, !tbaa !8
  %i.k = shl nuw i32 %store_forwarded, 1
  %i.l = xor i32 %i.k, %i.j
  %i.m = xor i32 %i.l, 256
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = shl i32 %store_forwarded, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i = phi i32 [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 3 uses
  store i32 %storemerge.i, ptr %i.i, align 4, !tbaa !8
  %i.o = sext i32 %storemerge.i to i64
  %i.p = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.o
  %i.q = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.q, ptr %i.p, align 4, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 255
  br i1 %exitcond.not.i, label %generate_gf.exit, label %bb.c, !llvm.loop !0

generate_gf.exit:                                 ; preds = %bb.f
  store i32 -1, ptr @index_of, align 16, !tbaa !8
  tail call fastcc void @gen_poly()
  store i1 true, ptr @inited, align 4
  br label %.preheader32.preheader

.preheader32.preheader:                           ; preds = %generate_gf.exit, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.s = load <4 x i8>, ptr %i.r, align 1, !tbaa !16
  %i.t = zext <4 x i8> %i.s to <4 x i32>
  store <4 x i32> %i.t, ptr @recd, align 16, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.v = load <4 x i8>, ptr %i.u, align 1, !tbaa !16
  %i.w = zext <4 x i8> %i.v to <4 x i32>
  store <4 x i32> %i.w, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 16), align 16, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.y = load <4 x i8>, ptr %i.x, align 1, !tbaa !16
  %i.z = zext <4 x i8> %i.y to <4 x i32>
  store <4 x i32> %i.z, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 32), align 16, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ab = load <4 x i8>, ptr %i.aa, align 1, !tbaa !16
  %i.ac = zext <4 x i8> %i.ab to <4 x i32>
  store <4 x i32> %i.ac, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 48), align 16, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(204) getelementptr inbounds nuw (i8, ptr @recd, i64 64), i8 0, i64 204, i1 false), !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %wide.load = load <4 x i8>, ptr %1, align 1, !tbaa !16
  %wide.load128 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !16
  %i.ae = zext <4 x i8> %wide.load to <4 x i32>
  %i.af = zext <4 x i8> %wide.load128 to <4 x i32>
  store <4 x i32> %i.ae, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 268), align 4, !tbaa !8
  store <4 x i32> %i.af, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 284), align 4, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12
  %wide.load.1 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !16
  %wide.load128.1 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !16
  %i.ai = zext <4 x i8> %wide.load.1 to <4 x i32>
  %i.aj = zext <4 x i8> %wide.load128.1 to <4 x i32>
  store <4 x i32> %i.ai, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 300), align 4, !tbaa !8
  store <4 x i32> %i.aj, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 316), align 4, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  %wide.load.2 = load <4 x i8>, ptr %i.ak, align 1, !tbaa !16
  %wide.load128.2 = load <4 x i8>, ptr %i.al, align 1, !tbaa !16
  %i.am = zext <4 x i8> %wide.load.2 to <4 x i32>
  %i.an = zext <4 x i8> %wide.load128.2 to <4 x i32>
  store <4 x i32> %i.am, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 332), align 4, !tbaa !8
  store <4 x i32> %i.an, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 348), align 4, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 28
  %wide.load.3 = load <4 x i8>, ptr %i.ao, align 1, !tbaa !16
  %wide.load128.3 = load <4 x i8>, ptr %i.ap, align 1, !tbaa !16
  %i.aq = zext <4 x i8> %wide.load.3 to <4 x i32>
  %i.ar = zext <4 x i8> %wide.load128.3 to <4 x i32>
  store <4 x i32> %i.aq, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 364), align 4, !tbaa !8
  store <4 x i32> %i.ar, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 380), align 4, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 36
  %wide.load.4 = load <4 x i8>, ptr %i.as, align 1, !tbaa !16
  %wide.load128.4 = load <4 x i8>, ptr %i.at, align 1, !tbaa !16
  %i.au = zext <4 x i8> %wide.load.4 to <4 x i32>
  %i.av = zext <4 x i8> %wide.load128.4 to <4 x i32>
  store <4 x i32> %i.au, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 396), align 4, !tbaa !8
  store <4 x i32> %i.av, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 412), align 4, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 44
  %wide.load.5 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !16
  %wide.load128.5 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !16
  %i.ay = zext <4 x i8> %wide.load.5 to <4 x i32>
  %i.az = zext <4 x i8> %wide.load128.5 to <4 x i32>
  store <4 x i32> %i.ay, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 428), align 4, !tbaa !8
  store <4 x i32> %i.az, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 444), align 4, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 52
  %wide.load.6 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !16
  %wide.load128.6 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !16
  %i.bc = zext <4 x i8> %wide.load.6 to <4 x i32>
  %i.bd = zext <4 x i8> %wide.load128.6 to <4 x i32>
  store <4 x i32> %i.bc, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 460), align 4, !tbaa !8
  store <4 x i32> %i.bd, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 476), align 4, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 60
  %wide.load.7 = load <4 x i8>, ptr %i.be, align 1, !tbaa !16
  %wide.load128.7 = load <4 x i8>, ptr %i.bf, align 1, !tbaa !16
  %i.bg = zext <4 x i8> %wide.load.7 to <4 x i32>
  %i.bh = zext <4 x i8> %wide.load128.7 to <4 x i32>
  store <4 x i32> %i.bg, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 492), align 4, !tbaa !8
  store <4 x i32> %i.bh, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 508), align 4, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 68
  %wide.load.8 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !16
  %wide.load128.8 = load <4 x i8>, ptr %i.bj, align 1, !tbaa !16
  %i.bk = zext <4 x i8> %wide.load.8 to <4 x i32>
  %i.bl = zext <4 x i8> %wide.load128.8 to <4 x i32>
  store <4 x i32> %i.bk, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 524), align 4, !tbaa !8
  store <4 x i32> %i.bl, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 540), align 4, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %wide.load.9 = load <4 x i8>, ptr %i.bm, align 1, !tbaa !16
  %wide.load128.9 = load <4 x i8>, ptr %i.bn, align 1, !tbaa !16
  %i.bo = zext <4 x i8> %wide.load.9 to <4 x i32>
  %i.bp = zext <4 x i8> %wide.load128.9 to <4 x i32>
  store <4 x i32> %i.bo, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 556), align 4, !tbaa !8
  store <4 x i32> %i.bp, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 572), align 4, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 84
  %wide.load.10 = load <4 x i8>, ptr %i.bq, align 1, !tbaa !16
  %wide.load128.10 = load <4 x i8>, ptr %i.br, align 1, !tbaa !16
  %i.bs = zext <4 x i8> %wide.load.10 to <4 x i32>
  %i.bt = zext <4 x i8> %wide.load128.10 to <4 x i32>
  store <4 x i32> %i.bs, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 588), align 4, !tbaa !8
  store <4 x i32> %i.bt, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 604), align 4, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 92
  %wide.load.11 = load <4 x i8>, ptr %i.bu, align 1, !tbaa !16
  %wide.load128.11 = load <4 x i8>, ptr %i.bv, align 1, !tbaa !16
  %i.bw = zext <4 x i8> %wide.load.11 to <4 x i32>
  %i.bx = zext <4 x i8> %wide.load128.11 to <4 x i32>
  store <4 x i32> %i.bw, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 620), align 4, !tbaa !8
  store <4 x i32> %i.bx, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 636), align 4, !tbaa !8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 100
  %wide.load.12 = load <4 x i8>, ptr %i.by, align 1, !tbaa !16
  %wide.load128.12 = load <4 x i8>, ptr %i.bz, align 1, !tbaa !16
  %i.ca = zext <4 x i8> %wide.load.12 to <4 x i32>
  %i.cb = zext <4 x i8> %wide.load128.12 to <4 x i32>
  store <4 x i32> %i.ca, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 652), align 4, !tbaa !8
  store <4 x i32> %i.cb, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 668), align 4, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 108
  %wide.load.13 = load <4 x i8>, ptr %i.cc, align 1, !tbaa !16
  %wide.load128.13 = load <4 x i8>, ptr %i.cd, align 1, !tbaa !16
  %i.ce = zext <4 x i8> %wide.load.13 to <4 x i32>
  %i.cf = zext <4 x i8> %wide.load128.13 to <4 x i32>
  store <4 x i32> %i.ce, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 684), align 4, !tbaa !8
  store <4 x i32> %i.cf, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 700), align 4, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 116
  %wide.load.14 = load <4 x i8>, ptr %i.cg, align 1, !tbaa !16
  %wide.load128.14 = load <4 x i8>, ptr %i.ch, align 1, !tbaa !16
  %i.ci = zext <4 x i8> %wide.load.14 to <4 x i32>
  %i.cj = zext <4 x i8> %wide.load128.14 to <4 x i32>
  store <4 x i32> %i.ci, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 716), align 4, !tbaa !8
  store <4 x i32> %i.cj, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 732), align 4, !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 124
  %wide.load.15 = load <4 x i8>, ptr %i.ck, align 1, !tbaa !16
  %wide.load128.15 = load <4 x i8>, ptr %i.cl, align 1, !tbaa !16
  %i.cm = zext <4 x i8> %wide.load.15 to <4 x i32>
  %i.cn = zext <4 x i8> %wide.load128.15 to <4 x i32>
  store <4 x i32> %i.cm, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 748), align 4, !tbaa !8
  store <4 x i32> %i.cn, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 764), align 4, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 132
  %wide.load.16 = load <4 x i8>, ptr %i.co, align 1, !tbaa !16
  %wide.load128.16 = load <4 x i8>, ptr %i.cp, align 1, !tbaa !16
  %i.cq = zext <4 x i8> %wide.load.16 to <4 x i32>
  %i.cr = zext <4 x i8> %wide.load128.16 to <4 x i32>
  store <4 x i32> %i.cq, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 780), align 4, !tbaa !8
  store <4 x i32> %i.cr, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 796), align 4, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 140
  %wide.load.17 = load <4 x i8>, ptr %i.cs, align 1, !tbaa !16
  %wide.load128.17 = load <4 x i8>, ptr %i.ct, align 1, !tbaa !16
  %i.cu = zext <4 x i8> %wide.load.17 to <4 x i32>
  %i.cv = zext <4 x i8> %wide.load128.17 to <4 x i32>
  store <4 x i32> %i.cu, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 812), align 4, !tbaa !8
  store <4 x i32> %i.cv, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 828), align 4, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 148
  %wide.load.18 = load <4 x i8>, ptr %i.cw, align 1, !tbaa !16
  %wide.load128.18 = load <4 x i8>, ptr %i.cx, align 1, !tbaa !16
  %i.cy = zext <4 x i8> %wide.load.18 to <4 x i32>
  %i.cz = zext <4 x i8> %wide.load128.18 to <4 x i32>
  store <4 x i32> %i.cy, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 844), align 4, !tbaa !8
  store <4 x i32> %i.cz, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 860), align 4, !tbaa !8
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 156
  %wide.load.19 = load <4 x i8>, ptr %i.da, align 1, !tbaa !16
  %wide.load128.19 = load <4 x i8>, ptr %i.db, align 1, !tbaa !16
  %i.dc = zext <4 x i8> %wide.load.19 to <4 x i32>
  %i.dd = zext <4 x i8> %wide.load128.19 to <4 x i32>
  store <4 x i32> %i.dc, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 876), align 4, !tbaa !8
  store <4 x i32> %i.dd, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 892), align 4, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 164
  %wide.load.20 = load <4 x i8>, ptr %i.de, align 1, !tbaa !16
  %wide.load128.20 = load <4 x i8>, ptr %i.df, align 1, !tbaa !16
  %i.dg = zext <4 x i8> %wide.load.20 to <4 x i32>
  %i.dh = zext <4 x i8> %wide.load128.20 to <4 x i32>
  store <4 x i32> %i.dg, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 908), align 4, !tbaa !8
  store <4 x i32> %i.dh, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 924), align 4, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 172
  %wide.load.21 = load <4 x i8>, ptr %i.di, align 1, !tbaa !16
  %wide.load128.21 = load <4 x i8>, ptr %i.dj, align 1, !tbaa !16
  %i.dk = zext <4 x i8> %wide.load.21 to <4 x i32>
  %i.dl = zext <4 x i8> %wide.load128.21 to <4 x i32>
  store <4 x i32> %i.dk, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 940), align 4, !tbaa !8
  store <4 x i32> %i.dl, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 956), align 4, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 180
  %wide.load.22 = load <4 x i8>, ptr %i.dm, align 1, !tbaa !16
  %wide.load128.22 = load <4 x i8>, ptr %i.dn, align 1, !tbaa !16
  %i.do = zext <4 x i8> %wide.load.22 to <4 x i32>
  %i.dp = zext <4 x i8> %wide.load128.22 to <4 x i32>
  store <4 x i32> %i.do, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 972), align 4, !tbaa !8
  store <4 x i32> %i.dp, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 988), align 4, !tbaa !8
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !16
  %i.ds = zext i8 %i.dr to i32
  store i32 %i.ds, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 1004), align 4, !tbaa !8
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !16
  %i.dv = zext i8 %i.du to i32
  store i32 %i.dv, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 1008), align 16, !tbaa !8
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 186
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !16
  %i.dy = zext i8 %i.dx to i32
  store i32 %i.dy, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 1012), align 4, !tbaa !8
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 187
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !16
  %i.eb = zext i8 %i.ea to i32
  store i32 %i.eb, ptr getelementptr inbounds nuw (i8, ptr @recd, i64 1016), align 8, !tbaa !8
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader32.preheader
  %indvars.iv58 = phi i64 [ 0, %.preheader32.preheader ], [ %indvars.iv.next59.4, %.preheader ] ; 6 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr @recd, i64 %indvars.iv58 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !8
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !8
  store i32 %i.eg, ptr %i.ec, align 4, !tbaa !8
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr @recd, i64 %indvars.iv58
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !8
  store i32 %i.em, ptr %i.ei, align 4, !tbaa !8
  %i.en = getelementptr inbounds nuw [4 x i8], ptr @recd, i64 %indvars.iv58
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !8
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !8
  store i32 %i.es, ptr %i.eo, align 4, !tbaa !8
  %i.et = getelementptr inbounds nuw [4 x i8], ptr @recd, i64 %indvars.iv58
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 12 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !8
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !8
  store i32 %i.ey, ptr %i.eu, align 4, !tbaa !8
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr @recd, i64 %indvars.iv58
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !8
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !8
  store i32 %i.fe, ptr %i.fa, align 4, !tbaa !8
  %indvars.iv.next59.4 = add nuw nsw i64 %indvars.iv58, 5 ; 2 uses
  %exitcond61.not.4 = icmp eq i64 %indvars.iv.next59.4, 255
  br i1 %exitcond61.not.4, label %bb.g, label %.preheader, !llvm.loop !17

bb.g:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2)
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %bb.g
  %indvars.iv392.i = phi i64 [ 1, %bb.g ], [ %indvars.iv.next393.i, %bb.l ] ; 3 uses
  %.0333.i = phi i32 [ 0, %bb.g ], [ %spec.select.i, %bb.l ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv392.i ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.fg = phi i32 [ 0, %bb.h ], [ %i.fr, %bb.k ]  ; 2 uses
  %indvars.iv.i21 = phi i64 [ 0, %bb.h ], [ %indvars.iv.next.i22, %bb.k ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr @recd, i64 %indvars.iv.i21
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !8  ; 2 uses
  %.not305.i = icmp eq i32 %i.fi, -1
  br i1 %.not305.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fj = mul nuw nsw i64 %indvars.iv.i21, %indvars.iv392.i
  %i.fk = trunc nuw nsw i64 %i.fj to i32
  %i.fl = add nsw i32 %i.fi, %i.fk
  %i.fm = srem i32 %i.fl, 255
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr @alpha_to, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !8
  %i.fq = xor i32 %i.fp, %i.fg                    ; 2 uses
  store i32 %i.fq, ptr %i.ff, align 4, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.fr = phi i32 [ %i.fg, %bb.i ], [ %i.fq, %bb.j ] ; 3 uses
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1 ; 2 uses
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, 255
  br i1 %exitcond.not.i23, label %bb.l, label %bb.i, !llvm.loop !18

bb.l:                                             ; preds = %bb.k
  %.not304.i = icmp eq i32 %i.fr, 0
  %spec.select.i = select i1 %.not304.i, i32 %.0333.i, i32 1 ; 2 uses
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !8
  store i32 %i.fu, ptr %i.ff, align 4, !tbaa !8
  %indvars.iv.next393.i = add nuw nsw i64 %indvars.iv392.i, 1 ; 2 uses
  %exitcond395.not.i = icmp eq i64 %indvars.iv.next393.i, 17
  br i1 %exitcond395.not.i, label %bb.m, label %bb.h, !llvm.loop !19

bb.m:                                             ; preds = %bb.l
  %.not.i24 = icmp eq i32 %spec.select.i, 0
  br i1 %.not.i24, label %.preheader.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.b, align 16, !tbaa !8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !8
  store i32 0, ptr %i.a, align 16, !tbaa !8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 1, ptr %i.fy, align 16, !tbaa !8
  %scevgep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %scevgep.i, i8 -1, i64 60, i1 false), !tbaa !8
  %scevgep396.i = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %scevgep396.i, i8 0, i64 60, i1 false), !tbaa !8
  store i32 0, ptr %i.c, align 16, !tbaa !8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.fz, align 4, !tbaa !8
  store i32 -1, ptr %i.d, align 16, !tbaa !8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.ga, align 4, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i, %bb.n
  %indvars.iv400.i = phi i64 [ %indvars.iv.next401.i, %._crit_edge.i ], [ 0, %bb.n ] ; 7 uses
  %indvars.iv.next401.i = add nuw nsw i64 %indvars.iv400.i, 1 ; 8 uses
  %2 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next401.i
  %3 = load i32, ptr %2, align 4, !tbaa !8        ; 2 uses
  %i.gb = icmp eq i32 %3, -1
  br i1 %i.gb, label %bb.p, label %.preheader328.i

bb.p:                                             ; preds = %bb.o
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next401.i
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !8  ; 7 uses
  %i.ge = add nuw nsw i64 %indvars.iv400.i, 2     ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ge
  store i32 %i.gd, ptr %i.gf, align 4, !tbaa !8
  %.not277341.i = icmp slt i32 %i.gd, 0
  br i1 %.not277341.i, label %.loopexit322.i, label %.lr.ph343.i

.lr.ph343.i:                                      ; preds = %bb.p
  %i.gg = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %indvars.iv.next401.i ; 3 uses
  %i.gh = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.ge ; 3 uses
  %i.gi = add nuw i32 %i.gd, 1                    ; 2 uses
  %wide.trip.count429.i = zext i32 %i.gi to i64   ; 2 uses
  %xtraiter149 = and i64 %wide.trip.count429.i, 1
  %i.gj = icmp eq i32 %i.gd, 0
  br i1 %i.gj, label %.epil.preheader148, label %.lr.ph343.i.new

.lr.ph343.i.new:                                  ; preds = %.lr.ph343.i
  %unroll_iter152 = and i64 %wide.trip.count429.i, 4294967294
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph343.i.new
  %indvars.iv425.i = phi i64 [ 0, %.lr.ph343.i.new ], [ %indvars.iv.next426.i.1, %bb.q ] ; 4 uses
  %niter153 = phi i64 [ 0, %.lr.ph343.i.new ], [ %niter153.next.1, %bb.q ]
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv425.i ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !8  ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv425.i
  store i32 %i.gl, ptr %i.gm, align 8, !tbaa !8
  %i.gn = sext i32 %i.gl to i64
  %i.go = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !8
  store i32 %i.gp, ptr %i.gk, align 8, !tbaa !8
  %indvars.iv.next426.i = or disjoint i64 %indvars.iv425.i, 1 ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next426.i ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !8  ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.next426.i
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !8
  %i.gt = sext i32 %i.gr to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !8
  store i32 %i.gv, ptr %i.gq, align 4, !tbaa !8
  %indvars.iv.next426.i.1 = add nuw nsw i64 %indvars.iv425.i, 2 ; 2 uses
  %niter153.next.1 = add i64 %niter153, 2         ; 2 uses
  %niter153.ncmp.1 = icmp eq i64 %niter153.next.1, %unroll_iter152
  br i1 %niter153.ncmp.1, label %.loopexit322.i.loopexit.unr-lcssa, label %bb.q, !llvm.loop !20

.preheader328.i:                                  ; preds = %bb.o, %.preheader328.i
  %indvars.iv402.i = phi i64 [ %indvars.iv.next403.i, %.preheader328.i ], [ %indvars.iv400.i, %bb.o ] ; 5 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv402.i
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !8
  %i.gy = icmp eq i32 %i.gx, -1
  %i.gz = icmp sgt i64 %indvars.iv402.i, 0        ; 2 uses
  %i.ha = and i1 %i.gz, %i.gy
  %indvars.iv.next403.i = add nsw i64 %indvars.iv402.i, -1
  br i1 %i.ha, label %.preheader328.i, label %bb.r, !llvm.loop !21

bb.r:                                             ; preds = %.preheader328.i
  br i1 %i.gz, label %.preheader326.preheader.i, label %.loopexit327.i

.preheader326.preheader.i:                        ; preds = %bb.r
  %indvars62.le = trunc i64 %indvars.iv402.i to i32
  %i.hb = and i64 %indvars.iv402.i, 4294967295
  br label %.preheader326.i

.preheader326.i:                                  ; preds = %bb.t, %.preheader326.preheader.i
  %indvars.iv407.i = phi i64 [ %i.hb, %.preheader326.preheader.i ], [ %indvars.iv.next408.i, %bb.t ] ; 2 uses
  %.1234.i = phi i32 [ %indvars62.le, %.preheader326.preheader.i ], [ %.2.i, %bb.t ] ; 3 uses
  %indvars.iv.next408.i = add nsw i64 %indvars.iv407.i, -1 ; 3 uses
  %i.hc = and i64 %indvars.iv.next408.i, 4294967295 ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !8
  %.not273.i = icmp eq i32 %i.he, -1
  br i1 %.not273.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.preheader326.i
  %indvars.i = trunc i64 %indvars.iv.next408.i to i32
  %i.hf = zext nneg i32 %.1234.i to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !8
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.hc
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !8
  %i.hk = icmp slt i32 %i.hh, %i.hj
  %spec.select306.i = select i1 %i.hk, i32 %indvars.i, i32 %.1234.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader326.i
  %.2.i = phi i32 [ %.1234.i, %.preheader326.i ], [ %spec.select306.i, %bb.s ] ; 2 uses
  %i.hl = icmp samesign ugt i64 %indvars.iv407.i, 1
  br i1 %i.hl, label %.preheader326.i, label %.loopexit327.i, !llvm.loop !22

.loopexit327.i:                                   ; preds = %bb.t, %bb.r
  %.3.i = phi i32 [ 0, %bb.r ], [ %.2.i, %bb.t ]  ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next401.i
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !8  ; 4 uses
  %i.ho = sext i32 %.3.i to i64                   ; 3 uses
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ho ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !8
  %i.hr = trunc nuw nsw i64 %indvars.iv.next401.i to i32
  %i.hs = sub i32 %i.hr, %.3.i                    ; 2 uses
  %i.ht = add i32 %i.hq, %i.hs
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv400.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %..i = tail call i32 @llvm.smax.i32(i32 %i.hn, i32 %i.ht) ; 4 uses
  store i32 %..i, ptr %i.hv, align 4, !tbaa !8
  %i.hw = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %indvars.iv400.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 128 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.hx, i8 0, i64 64, i1 false), !tbaa !8
  %i.hy = load i32, ptr %i.hp, align 4, !tbaa !8  ; 2 uses
  %.not274336.i = icmp slt i32 %i.hy, 0
  br i1 %.not274336.i, label %.preheader323.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit327.i
  %i.hz = getelementptr inbounds [64 x i8], ptr %i.a, i64 %i.ho
  %i.ia = add nsw i32 %3, 255
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ho
  %i.ic = add nuw i32 %i.hy, 1
  %wide.trip.count.i = zext i32 %i.ic to i64
  br label %bb.u

.preheader323.i:                                  ; preds = %bb.w, %.loopexit327.i
  %.not275338.i = icmp slt i32 %i.hn, 0
  br i1 %.not275338.i, label %.loopexit322.i, label %.lr.ph340.i

.lr.ph340.i:                                      ; preds = %.preheader323.i
  %i.id = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %indvars.iv.next401.i ; 3 uses
  %i.ie = add nuw i32 %i.hn, 1                    ; 2 uses
  %wide.trip.count423.i = zext i32 %i.ie to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count423.i, 1
  %i.if = icmp eq i32 %i.hn, 0
  br i1 %i.if, label %.epil.preheader, label %.lr.ph340.i.new

.lr.ph340.i.new:                                  ; preds = %.lr.ph340.i
  %unroll_iter = and i64 %wide.trip.count423.i, 4294967294
  br label %bb.x

bb.u:                                             ; preds = %bb.w, %.lr.ph.i
  %indvars.iv414.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next415.i, %bb.w ] ; 3 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %indvars.iv414.i
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !8  ; 2 uses
  %.not276.i = icmp eq i32 %i.ih, -1
  br i1 %.not276.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ii = load i32, ptr %i.ib, align 4, !tbaa !8
  %i.ij = add i32 %i.ia, %i.ih
  %i.ik = sub i32 %i.ij, %i.ii
  %i.il = srem i32 %i.ik, 255
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr @alpha_to, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !8
  %i.ip = trunc nuw nsw i64 %indvars.iv414.i to i32
  %i.iq = add i32 %i.hs, %i.ip
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.ir
  store i32 %i.io, ptr %i.is, align 4, !tbaa !8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next415.i = add nuw nsw i64 %indvars.iv414.i, 1 ; 2 uses
  %exitcond418.not.i = icmp eq i64 %indvars.iv.next415.i, %wide.trip.count.i
  br i1 %exitcond418.not.i, label %.preheader323.i, label %bb.u, !llvm.loop !23

bb.x:                                             ; preds = %bb.x, %.lr.ph340.i.new
  %indvars.iv419.i = phi i64 [ 0, %.lr.ph340.i.new ], [ %indvars.iv.next420.i.1, %bb.x ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph340.i.new ], [ %niter.next.1, %bb.x ]
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv419.i ; 2 uses
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !8  ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv419.i ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !8
  %i.ix = xor i32 %i.iw, %i.iu
  store i32 %i.ix, ptr %i.iv, align 8, !tbaa !8
  %i.iy = sext i32 %i.iu to i64
  %i.iz = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !8
  store i32 %i.ja, ptr %i.it, align 8, !tbaa !8
  %indvars.iv.next420.i = or disjoint i64 %indvars.iv419.i, 1 ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.next420.i ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !8  ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv.next420.i ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !8
  %i.jf = xor i32 %i.je, %i.jc
  store i32 %i.jf, ptr %i.jd, align 4, !tbaa !8
  %i.jg = sext i32 %i.jc to i64
  %i.jh = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !8
  store i32 %i.ji, ptr %i.jb, align 4, !tbaa !8
  %indvars.iv.next420.i.1 = add nuw nsw i64 %indvars.iv419.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit322.i.loopexit141.unr-lcssa, label %bb.x, !llvm.loop !24

.loopexit322.i.loopexit.unr-lcssa:                ; preds = %bb.q
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %.loopexit322.i, label %.epil.preheader148

.epil.preheader148:                               ; preds = %.loopexit322.i.loopexit.unr-lcssa, %.lr.ph343.i
  %indvars.iv425.i.epil.init = phi i64 [ 0, %.lr.ph343.i ], [ %indvars.iv.next426.i.1, %.loopexit322.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod151 = trunc i32 %i.gi to i1
  tail call void @llvm.assume(i1 %lcmp.mod151)
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv425.i.epil.init ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !8  ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv425.i.epil.init
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !8
  %i.jm = sext i32 %i.jk to i64
  %i.jn = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.jm
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !8
  store i32 %i.jo, ptr %i.jj, align 4, !tbaa !8
  br label %.loopexit322.i

.loopexit322.i.loopexit141.unr-lcssa:             ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit322.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit322.i.loopexit141.unr-lcssa, %.lr.ph340.i
  %indvars.iv419.i.epil.init = phi i64 [ 0, %.lr.ph340.i ], [ %indvars.iv.next420.i.1, %.loopexit322.i.loopexit141.unr-lcssa ] ; 2 uses
  %lcmp.mod147 = trunc i32 %i.ie to i1
  tail call void @llvm.assume(i1 %lcmp.mod147)
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv419.i.epil.init ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !8  ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv419.i.epil.init ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !8
  %i.jt = xor i32 %i.js, %i.jq
  store i32 %i.jt, ptr %i.jr, align 4, !tbaa !8
  %i.ju = sext i32 %i.jq to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !8
  store i32 %i.jw, ptr %i.jp, align 4, !tbaa !8
  br label %.loopexit322.i

.loopexit322.i:                                   ; preds = %.epil.preheader, %.loopexit322.i.loopexit141.unr-lcssa, %.epil.preheader148, %.loopexit322.i.loopexit.unr-lcssa, %.preheader323.i, %bb.p
  %i.jx = phi i32 [ %i.gd, %.epil.preheader148 ], [ %i.gd, %bb.p ], [ %..i, %.preheader323.i ], [ %i.gd, %.loopexit322.i.loopexit.unr-lcssa ], [ %..i, %.loopexit322.i.loopexit141.unr-lcssa ], [ %..i, %.epil.preheader ] ; 22 uses
  %i.jy = add nuw nsw i64 %indvars.iv400.i, 2     ; 5 uses
  %i.jz = trunc nuw nsw i64 %indvars.iv.next401.i to i32
  %i.ka = sub nsw i32 %i.jz, %i.jx
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.jy
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !8
  %exitcond439.not.i = icmp eq i64 %indvars.iv400.i, 15
  br i1 %exitcond439.not.i, label %.critedge.i, label %bb.y

bb.y:                                             ; preds = %.loopexit322.i
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.jy
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !8  ; 2 uses
  %.not278.i = icmp eq i32 %i.kd, -1
  br i1 %.not278.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [4 x i8], ptr @alpha_to, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink.i = phi i32 [ %i.kg, %bb.z ], [ 0, %bb.y ] ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jy ; 2 uses
  %.not279344.i = icmp slt i32 %i.jx, 1
  br i1 %.not279344.i, label %._crit_edge.i, label %.lr.ph346.i

.lr.ph346.i:                                      ; preds = %bb.aa
  %i.ki = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.jy
  %i.kj = add nuw i32 %i.jx, 1
  %wide.trip.count435.i = zext i32 %i.kj to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ae, %.lr.ph346.i
  %i.kk = phi i32 [ %.sink.i, %.lr.ph346.i ], [ %i.kz, %bb.ae ] ; 3 uses
  %indvars.iv431.i = phi i64 [ 1, %.lr.ph346.i ], [ %indvars.iv.next432.i, %bb.ae ] ; 3 uses
  %i.kl = sub nsw i64 %i.jy, %indvars.iv431.i
  %i.km = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.kl
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !8  ; 2 uses
  %.not302.i = icmp eq i32 %i.kn, -1
  br i1 %.not302.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %indvars.iv431.i
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !8  ; 2 uses
  %.not303.i = icmp eq i32 %i.kp, 0
  br i1 %.not303.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.kq
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !8
  %i.kt = add nsw i32 %i.ks, %i.kn
  %i.ku = srem i32 %i.kt, 255
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds [4 x i8], ptr @alpha_to, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !8
  %i.ky = xor i32 %i.kx, %i.kk                    ; 2 uses
  store i32 %i.ky, ptr %i.kh, align 4, !tbaa !8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.kz = phi i32 [ %i.kk, %bb.ab ], [ %i.kk, %bb.ac ], [ %i.ky, %bb.ad ] ; 2 uses
  %indvars.iv.next432.i = add nuw nsw i64 %indvars.iv431.i, 1 ; 2 uses
  %exitcond436.not.i = icmp eq i64 %indvars.iv.next432.i, %wide.trip.count435.i
  br i1 %exitcond436.not.i, label %._crit_edge.i, label %bb.ab, !llvm.loop !25

._crit_edge.i:                                    ; preds = %bb.ae, %bb.aa
  %i.la = phi i32 [ %.sink.i, %bb.aa ], [ %i.kz, %bb.ae ]
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.lb
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !8
  store i32 %i.ld, ptr %i.kh, align 4, !tbaa !8
  %i.le = icmp slt i32 %i.jx, 9
  br i1 %i.le, label %bb.o, label %.preheader320.i.preheader, !llvm.loop !26

.critedge.i:                                      ; preds = %.loopexit322.i
  %i.lf = icmp slt i32 %i.jx, 9
  br i1 %i.lf, label %.preheader319.i, label %.preheader320.i.preheader

.preheader320.i.preheader:                        ; preds = %._crit_edge.i, %.critedge.i
  br label %.preheader320.i

.preheader319.i:                                  ; preds = %.critedge.i
  %.not282348.i = icmp slt i32 %i.jx, 0
  br i1 %.not282348.i, label %.preheader319.i..preheader317.i_crit_edge, label %.lr.ph350.i

.preheader319.i..preheader317.i_crit_edge:        ; preds = %.preheader319.i
  %.pre = add nsw i32 %i.jx, 1
  %.pre67 = zext nneg i32 %.pre to i64
  br label %.split.us

.lr.ph350.i:                                      ; preds = %.preheader319.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.a, i64 1088 ; 5 uses
  %i.lh = add nuw nsw i32 %i.jx, 1                ; 8 uses
  %wide.trip.count450.i = zext nneg i32 %i.lh to i64 ; 4 uses
  %xtraiter155 = and i64 %wide.trip.count450.i, 3 ; 3 uses
  %i.li = icmp ult i32 %i.jx, 3
  br i1 %i.li, label %.epil.preheader154, label %.lr.ph350.i.new

.lr.ph350.i.new:                                  ; preds = %.lr.ph350.i
  %unroll_iter158 = and i64 %wide.trip.count450.i, 2147483644
  br label %bb.ag

.preheader318.i.unr-lcssa:                        ; preds = %bb.ag
  %lcmp.mod156.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod156.not, label %.preheader318.i, label %.epil.preheader154

.epil.preheader154:                               ; preds = %.preheader318.i.unr-lcssa, %.lr.ph350.i
  %indvars.iv445.i.epil.init = phi i64 [ 0, %.lr.ph350.i ], [ %indvars.iv.next446.i.3, %.preheader318.i.unr-lcssa ]
  %lcmp.mod157 = icmp ne i64 %xtraiter155, 0
  tail call void @llvm.assume(i1 %lcmp.mod157)
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.epil.preheader154
  %indvars.iv445.i.epil = phi i64 [ %indvars.iv445.i.epil.init, %.epil.preheader154 ], [ %indvars.iv.next446.i.epil, %bb.af ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader154 ], [ %epil.iter.next, %bb.af ]
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv445.i.epil ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !8
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.ll
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !8
  store i32 %i.ln, ptr %i.lj, align 4, !tbaa !8
  %indvars.iv.next446.i.epil = add nuw nsw i64 %indvars.iv445.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter155
  br i1 %epil.iter.cmp.not, label %.preheader318.i, label %bb.af, !llvm.loop !27

.preheader318.i:                                  ; preds = %bb.af, %.preheader318.i.unr-lcssa
  %.not283351.i = icmp eq i32 %i.jx, 0
  br i1 %.not283351.i, label %.split.us, label %.preheader316.i.preheader

bb.ag:                                            ; preds = %bb.ag, %.lr.ph350.i.new
  %indvars.iv445.i = phi i64 [ 0, %.lr.ph350.i.new ], [ %indvars.iv.next446.i.3, %bb.ag ] ; 5 uses
  %niter159 = phi i64 [ 0, %.lr.ph350.i.new ], [ %niter159.next.3, %bb.ag ]
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv445.i ; 2 uses
  %i.lp = load i32, ptr %i.lo, align 16, !tbaa !8
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.lq
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !8
  store i32 %i.ls, ptr %i.lo, align 16, !tbaa !8
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv445.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 4 ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !8
  %i.lw = sext i32 %i.lv to i64
  %i.lx = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.lw
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !8
  store i32 %i.ly, ptr %i.lu, align 4, !tbaa !8
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv445.i
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8 ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !8
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.mc
  %i.me = load i32, ptr %i.md, align 4, !tbaa !8
  store i32 %i.me, ptr %i.ma, align 8, !tbaa !8
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv445.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 12 ; 2 uses
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !8
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [4 x i8], ptr @index_of, i64 %i.mi
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !8
  store i32 %i.mk, ptr %i.mg, align 4, !tbaa !8
  %indvars.iv.next446.i.3 = add nuw nsw i64 %indvars.iv445.i, 4 ; 2 uses
  %niter159.next.3 = add i64 %niter159, 4         ; 2 uses
  %niter159.ncmp.3 = icmp eq i64 %niter159.next.3, %unroll_iter158
  br i1 %niter159.ncmp.3, label %.preheader318.i.unr-lcssa, label %bb.ag, !llvm.loop !28

.preheader316.i.preheader:                        ; preds = %.preheader318.i
  %scevgep453.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1092
  %i.ml = zext nneg i32 %i.jx to i64
  %i.mm = shl nuw nsw i64 %i.ml, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.2, ptr nonnull align 4 %scevgep453.i, i64 %i.mm, i1 false), !tbaa !8
  %exitcond465.not.i = icmp eq i32 %i.lh, 2
  %.sroa.2.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 4 ; 2 uses
  %exitcond465.not.i.1 = icmp eq i32 %i.lh, 3
  %.sroa.2.8..sroa_idx168 = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 8 ; 2 uses
  %exitcond465.not.i.2 = icmp eq i32 %i.lh, 4
  %.sroa.2.12..sroa_idx170 = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 12 ; 2 uses
  %exitcond465.not.i.3 = icmp eq i32 %i.lh, 5
  %.sroa.2.16..sroa_idx172 = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 16 ; 2 uses
  %exitcond465.not.i.4 = icmp eq i32 %i.lh, 6
  %.sroa.2.20..sroa_idx174 = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 20 ; 2 uses
  %exitcond465.not.i.5 = icmp eq i32 %i.lh, 7
  %.sroa.2.24..sroa_idx176 = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 24 ; 2 uses
  %exitcond465.not.i.6 = icmp eq i32 %i.lh, 8
  %.sroa.2.28..sroa_idx178 = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 28 ; 2 uses
  %.sroa.2.promoted = load i32, ptr %.sroa.2, align 4, !tbaa !8
  %.sroa.2.4..sroa_idx.promoted = load i32, ptr %.sroa.2.4..sroa_idx, align 4
  %.sroa.2.8..sroa_idx168.promoted = load i32, ptr %.sroa.2.8..sroa_idx168, align 4
  %.sroa.2.12..sroa_idx170.promoted = load i32, ptr %.sroa.2.12..sroa_idx170, align 4
  %.sroa.2.16..sroa_idx172.promoted = load i32, ptr %.sroa.2.16..sroa_idx172, align 4
  %.sroa.2.20..sroa_idx174.promoted = load i32, ptr %.sroa.2.20..sroa_idx174, align 4
  %.sroa.2.24..sroa_idx176.promoted = load i32, ptr %.sroa.2.24..sroa_idx176, align 4
  %.sroa.2.28..sroa_idx178.promoted = load i32, ptr %.sroa.2.28..sroa_idx178, align 4
  br label %.preheader316.i

.preheader316.i:                                  ; preds = %.preheader316.i.preheader, %._crit_edge358.thread.i
  %.sroa.2.28..sroa.2.32.206 = phi i32 [ %.sroa.2.28..sroa.2.32.205, %._crit_edge358.thread.i ], [ %.sroa.2.28..sroa_idx178.promoted, %.preheader316.i.preheader ] ; 9 uses
  %.sroa.2.24..sroa.2.28.203 = phi i32 [ %.sroa.2.24..sroa.2.28.202, %._crit_edge358.thread.i ], [ %.sroa.2.24..sroa_idx176.promoted, %.preheader316.i.preheader ] ; 9 uses
  %.sroa.2.20..sroa.2.24.200 = phi i32 [ %.sroa.2.20..sroa.2.24.199, %._crit_edge358.thread.i ], [ %.sroa.2.20..sroa_idx174.promoted, %.preheader316.i.preheader ] ; 8 uses
  %.sroa.2.16..sroa.2.20.197 = phi i32 [ %.sroa.2.16..sroa.2.20.196, %._crit_edge358.thread.i ], [ %.sroa.2.16..sroa_idx172.promoted, %.preheader316.i.preheader ] ; 7 uses
  %.sroa.2.12..sroa.2.16.194 = phi i32 [ %.sroa.2.12..sroa.2.16.193, %._crit_edge358.thread.i ], [ %.sroa.2.12..sroa_idx170.promoted, %.preheader316.i.preheader ] ; 6 uses
  %.sroa.2.8..sroa.2.12.191 = phi i32 [ %.sroa.2.8..sroa.2.12.190, %._crit_edge358.thread.i ], [ %.sroa.2.8..sroa_idx168.promoted, %.preheader316.i.preheader ] ; 5 uses
  %.sroa.2.4..sroa.2.8.188 = phi i32 [ %.sroa.2.4..sroa.2.8.187, %._crit_edge358.thread.i ], [ %.sroa.2.4..sroa_idx.promoted, %.preheader316.i.preheader ] ; 4 uses
  %i.mn = phi i32 [ %i.mu, %._crit_edge358.thread.i ], [ %.sroa.2.promoted, %.preheader316.i.preheader ] ; 3 uses
  %.0231360.i = phi i32 [ %.1232.i, %._crit_edge358.thread.i ], [ 0, %.preheader316.i.preheader ] ; 3 uses
  %.9359.i = phi i32 [ %i.or, %._crit_edge358.thread.i ], [ 1, %.preheader316.i.preheader ] ; 3 uses
  %.not301.i = icmp eq i32 %i.mn, -1
  br i1 %.not301.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.preheader316.i
  %i.mo = add nsw i32 %i.mn, 1
  %i.mp = srem i32 %i.mo, 255                     ; 2 uses
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds [4 x i8], ptr @alpha_to, i64 %i.mq
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !8
  %i.mt = xor i32 %i.ms, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.preheader316.i
  %i.mu = phi i32 [ %i.mp, %bb.ah ], [ %i.mn, %.preheader316.i ] ; 2 uses
  %.5.i = phi i32 [ %i.mt, %bb.ah ], [ 1, %.preheader316.i ] ; 3 uses
  br i1 %exitcond465.not.i, label %._crit_edge358.i, label %.lr.ph357.i.1

.lr.ph357.i.1:                                    ; preds = %bb.ai
  %.not301.i.1 = icmp eq i32 %.sroa.2.4..sroa.2.8.188, -1
  br i1 %.not301.i.1, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph357.i.1
  %i.mv = add nsw i32 %.sroa.2.4..sroa.2.8.188, 2
  %i.mw = srem i32 %i.mv, 255                     ; 2 uses
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds [4 x i8], ptr @alpha_to, i64 %i.mx
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !8
  %i.na = xor i32 %i.mz, %.5.i
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph357.i.1
  %.sroa.2.4..sroa.2.8.186 = phi i32 [ %i.mw, %bb.aj ], [ %.sroa.2.4..sroa.2.8.188, %.lr.ph357.i.1 ] ; 7 uses
  %.5.i.1 = phi i32 [ %i.na, %bb.aj ], [ %.5.i, %.lr.ph357.i.1 ] ; 3 uses
  br i1 %exitcond465.not.i.1, label %._crit_edge358.i, label %.lr.ph357.i.2

.lr.ph357.i.2:                                    ; preds = %bb.ak
  %.not301.i.2 = icmp eq i32 %.sroa.2.8..sroa.2.12.191, -1
  br i1 %.not301.i.2, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph357.i.2
  %i.nb = add nsw i32 %.sroa.2.8..sroa.2.12.191, 3
  %i.nc = srem i32 %i.nb, 255                     ; 2 uses
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [4 x i8], ptr @alpha_to, i64 %i.nd
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !8
  %i.ng = xor i32 %i.nf, %.5.i.1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph357.i.2
  %.sroa.2.8..sroa.2.12.189 = phi i32 [ %i.nc, %bb.al ], [ %.sroa.2.8..sroa.2.12.191, %.lr.ph357.i.2 ] ; 6 uses
  %.5.i.2 = phi i32 [ %i.ng, %bb.al ], [ %.5.i.1, %.lr.ph357.i.2 ] ; 3 uses
  br i1 %exitcond465.not.i.2, label %._crit_edge358.i, label %.lr.ph357.i.3

.lr.ph357.i.3:                                    ; preds = %bb.am
  %.not301.i.3 = icmp eq i32 %.sroa.2.12..sroa.2.16.194, -1
  br i1 %.not301.i.3, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph357.i.3
  %i.nh = add nsw i32 %.sroa.2.12..sroa.2.16.194, 4
  %i.ni = srem i32 %i.nh, 255                     ; 2 uses
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [4 x i8], ptr @alpha_to, i64 %i.nj
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !8
  %i.nm = xor i32 %i.nl, %.5.i.2
  br label %bb.ao
end_hunk_0
