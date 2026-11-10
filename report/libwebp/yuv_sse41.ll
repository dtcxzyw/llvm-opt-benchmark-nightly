Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/yuv_sse41?download=true
inline.NumInlined: 82
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@WebPSamplers = external local_unnamed_addr global [13 x ptr], align 16
@WebPConvertARGBToY = external local_unnamed_addr global ptr, align 8
@WebPConvertARGBToUV = external local_unnamed_addr global ptr, align 8
@WebPConvertRGBToY = external local_unnamed_addr global ptr, align 8
@WebPConvertBGRToY = external local_unnamed_addr global ptr, align 8
@WebPConvertRGBA32ToUV = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @VP8YuvToRgb32_SSE41(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) initializes((0, 96)) %3) local_unnamed_addr #0 {
bb.a:
  %.val21 = load i64, ptr %0, align 1, !tbaa !8
  %.val22 = load i64, ptr %1, align 1, !tbaa !8
  %.val23 = load i64, ptr %2, align 1, !tbaa !8
  %i.a = insertelement <2 x i64> poison, i64 %.val21, i64 0
  %i.b = bitcast <2 x i64> %i.a to <16 x i8>
  %4 = shufflevector <16 x i8> %i.b, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.c = insertelement <2 x i64> poison, i64 %.val22, i64 0
  %i.d = bitcast <2 x i64> %i.c to <16 x i8>
  %5 = shufflevector <16 x i8> %i.d, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.e = insertelement <2 x i64> poison, i64 %.val23, i64 0
  %i.f = bitcast <2 x i64> %i.e to <16 x i8>
  %6 = shufflevector <16 x i8> %i.f, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.g = bitcast <16 x i8> %4 to <8 x i16>
  %i.h = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.g, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.i = bitcast <16 x i8> %6 to <8 x i16>        ; 2 uses
  %i.j = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 26149))
  %i.k = add nsw <8 x i16> %i.h, splat (i16 -14234)
  %i.l = add <8 x i16> %i.k, %i.j
  %i.m = bitcast <16 x i8> %5 to <8 x i16>        ; 2 uses
  %i.n = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 6419))
  %i.o = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 13320))
  %.neg68 = add nuw <8 x i16> %i.h, splat (i16 8708)
  %i.p = add nuw nsw <8 x i16> %i.n, %i.o
  %i.q = sub <8 x i16> %.neg68, %i.p
  %i.r = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 -32486))
  %i.s = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.r, <8 x i16> %i.h)
  %i.t = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.s, <8 x i16> splat (i16 17685))
  %i.u = ashr <8 x i16> %i.l, splat (i16 6)
  %i.v = ashr <8 x i16> %i.q, splat (i16 6)
  %i.w = lshr <8 x i16> %i.t, splat (i16 6)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val18 = load i64, ptr %i.x, align 1, !tbaa !8
  %.val19 = load i64, ptr %i.y, align 1, !tbaa !8
  %.val20 = load i64, ptr %i.z, align 1, !tbaa !8
  %i.aa = insertelement <2 x i64> poison, i64 %.val18, i64 0
  %i.ab = bitcast <2 x i64> %i.aa to <16 x i8>
  %7 = shufflevector <16 x i8> %i.ab, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.ac = insertelement <2 x i64> poison, i64 %.val19, i64 0
  %i.ad = bitcast <2 x i64> %i.ac to <16 x i8>
  %8 = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.ae = insertelement <2 x i64> poison, i64 %.val20, i64 0
  %i.af = bitcast <2 x i64> %i.ae to <16 x i8>
  %9 = shufflevector <16 x i8> %i.af, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.ag = bitcast <16 x i8> %7 to <8 x i16>
  %i.ah = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ag, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.ai = bitcast <16 x i8> %9 to <8 x i16>       ; 2 uses
  %i.aj = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ai, <8 x i16> splat (i16 26149))
  %i.ak = add nsw <8 x i16> %i.ah, splat (i16 -14234)
  %i.al = add <8 x i16> %i.ak, %i.aj
  %i.am = bitcast <16 x i8> %8 to <8 x i16>       ; 2 uses
  %i.an = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.am, <8 x i16> splat (i16 6419))
  %i.ao = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ai, <8 x i16> splat (i16 13320))
  %.neg71 = add nuw <8 x i16> %i.ah, splat (i16 8708)
  %i.ap = add nuw nsw <8 x i16> %i.an, %i.ao
  %i.aq = sub <8 x i16> %.neg71, %i.ap
  %i.ar = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.am, <8 x i16> splat (i16 -32486))
  %i.as = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.ar, <8 x i16> %i.ah)
  %i.at = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.as, <8 x i16> splat (i16 17685))
  %i.au = ashr <8 x i16> %i.al, splat (i16 6)
  %i.av = ashr <8 x i16> %i.aq, splat (i16 6)
  %i.aw = lshr <8 x i16> %i.at, splat (i16 6)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val15 = load i64, ptr %i.ax, align 1, !tbaa !8
  %.val16 = load i64, ptr %i.ay, align 1, !tbaa !8
  %.val17 = load i64, ptr %i.az, align 1, !tbaa !8
  %i.ba = insertelement <2 x i64> poison, i64 %.val15, i64 0
  %i.bb = bitcast <2 x i64> %i.ba to <16 x i8>
  %10 = shufflevector <16 x i8> %i.bb, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.bc = insertelement <2 x i64> poison, i64 %.val16, i64 0
  %i.bd = bitcast <2 x i64> %i.bc to <16 x i8>
  %11 = shufflevector <16 x i8> %i.bd, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.be = insertelement <2 x i64> poison, i64 %.val17, i64 0
  %i.bf = bitcast <2 x i64> %i.be to <16 x i8>
  %12 = shufflevector <16 x i8> %i.bf, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.bg = bitcast <16 x i8> %10 to <8 x i16>
  %i.bh = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bg, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.bi = bitcast <16 x i8> %12 to <8 x i16>      ; 2 uses
  %i.bj = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bi, <8 x i16> splat (i16 26149))
  %i.bk = add nsw <8 x i16> %i.bh, splat (i16 -14234)
  %i.bl = add <8 x i16> %i.bk, %i.bj
  %i.bm = bitcast <16 x i8> %11 to <8 x i16>      ; 2 uses
  %i.bn = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bm, <8 x i16> splat (i16 6419))
  %i.bo = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bi, <8 x i16> splat (i16 13320))
  %.neg74 = add nuw <8 x i16> %i.bh, splat (i16 8708)
  %i.bp = add nuw nsw <8 x i16> %i.bn, %i.bo
  %i.bq = sub <8 x i16> %.neg74, %i.bp
  %i.br = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bm, <8 x i16> splat (i16 -32486))
  %i.bs = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.br, <8 x i16> %i.bh)
  %i.bt = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.bs, <8 x i16> splat (i16 17685))
  %i.bu = ashr <8 x i16> %i.bl, splat (i16 6)
  %i.bv = ashr <8 x i16> %i.bq, splat (i16 6)
  %i.bw = lshr <8 x i16> %i.bt, splat (i16 6)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val = load i64, ptr %i.bx, align 1, !tbaa !8
  %.val13 = load i64, ptr %i.by, align 1, !tbaa !8
  %.val14 = load i64, ptr %i.bz, align 1, !tbaa !8
  %i.ca = insertelement <2 x i64> poison, i64 %.val, i64 0
  %i.cb = bitcast <2 x i64> %i.ca to <16 x i8>
  %13 = shufflevector <16 x i8> %i.cb, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.cc = insertelement <2 x i64> poison, i64 %.val13, i64 0
  %i.cd = bitcast <2 x i64> %i.cc to <16 x i8>
  %14 = shufflevector <16 x i8> %i.cd, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.ce = insertelement <2 x i64> poison, i64 %.val14, i64 0
  %i.cf = bitcast <2 x i64> %i.ce to <16 x i8>
  %15 = shufflevector <16 x i8> %i.cf, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.cg = bitcast <16 x i8> %13 to <8 x i16>
  %i.ch = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cg, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.ci = bitcast <16 x i8> %15 to <8 x i16>      ; 2 uses
  %i.cj = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ci, <8 x i16> splat (i16 26149))
  %i.ck = add nsw <8 x i16> %i.ch, splat (i16 -14234)
  %i.cl = add <8 x i16> %i.ck, %i.cj
  %i.cm = bitcast <16 x i8> %14 to <8 x i16>      ; 2 uses
  %i.cn = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cm, <8 x i16> splat (i16 6419))
  %i.co = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ci, <8 x i16> splat (i16 13320))
  %.neg77 = add nuw <8 x i16> %i.ch, splat (i16 8708)
  %i.cp = add nuw nsw <8 x i16> %i.cn, %i.co
  %i.cq = sub <8 x i16> %.neg77, %i.cp
  %i.cr = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cm, <8 x i16> splat (i16 -32486))
  %i.cs = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.cr, <8 x i16> %i.ch)
  %i.ct = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.cs, <8 x i16> splat (i16 17685))
  %i.cu = ashr <8 x i16> %i.cl, splat (i16 6)
  %i.cv = ashr <8 x i16> %i.cq, splat (i16 6)
  %i.cw = lshr <8 x i16> %i.ct, splat (i16 6)
  %i.cx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.u, <8 x i16> %i.au) ; 3 uses
  %i.cy = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bu, <8 x i16> %i.cu) ; 3 uses
  %i.cz = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.v, <8 x i16> %i.av) ; 3 uses
  %i.da = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bv, <8 x i16> %i.cv) ; 3 uses
  %i.db = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.w, <8 x i16> %i.aw) ; 3 uses
  %i.dc = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bw, <8 x i16> %i.cw) ; 3 uses
  %i.dd = shufflevector <16 x i8> %i.cx, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16, i32 16, i32 5>
  %i.de = shufflevector <16 x i8> %i.cx, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16, i32 10, i32 16>
  %i.df = shufflevector <16 x i8> %i.cx, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15, i32 16, i32 16>
  %i.dg = shufflevector <16 x i8> %i.cy, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16, i32 16, i32 5>
  %i.dh = shufflevector <16 x i8> %i.cy, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16, i32 10, i32 16>
  %i.di = shufflevector <16 x i8> %i.cy, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15, i32 16, i32 16>
  %i.dj = shufflevector <16 x i8> %i.cz, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16, i32 16>
  %i.dk = shufflevector <16 x i8> %i.cz, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 5, i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16, i32 10>
  %i.dl = shufflevector <16 x i8> %i.cz, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15, i32 16>
  %i.dm = shufflevector <16 x i8> %i.da, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16, i32 16>
  %i.dn = shufflevector <16 x i8> %i.da, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 5, i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16, i32 10>
  %i.do = shufflevector <16 x i8> %i.da, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15, i32 16>
  %i.dp = shufflevector <16 x i8> %i.db, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16>
  %i.dq = shufflevector <16 x i8> %i.db, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 5, i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16>
  %i.dr = shufflevector <16 x i8> %i.db, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 16, i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15>
  %i.ds = shufflevector <16 x i8> %i.dc, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16>
  %i.dt = shufflevector <16 x i8> %i.dc, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 5, i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16>
  %i.du = shufflevector <16 x i8> %i.dc, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 16, i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15>
  %i.dv = or <16 x i8> %i.dj, %i.dd
  %i.dw = or <16 x i8> %i.dk, %i.de
  %i.dx = or <16 x i8> %i.dl, %i.df
  %i.dy = or <16 x i8> %i.dm, %i.dg
  %i.dz = or <16 x i8> %i.dn, %i.dh
  %i.ea = or <16 x i8> %i.do, %i.di
  %i.eb = or <16 x i8> %i.dv, %i.dp
  %i.ec = or <16 x i8> %i.dw, %i.dq
  %i.ed = or <16 x i8> %i.dx, %i.dr
  %i.ee = or <16 x i8> %i.dy, %i.ds
  %i.ef = or <16 x i8> %i.dz, %i.dt
  %i.eg = or <16 x i8> %i.ea, %i.du
  store <16 x i8> %i.eb, ptr %3, align 1, !tbaa !8, !alias.scope !14
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <16 x i8> %i.ec, ptr %i.eh, align 1, !tbaa !8, !alias.scope !14
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <16 x i8> %i.ed, ptr %i.ei, align 1, !tbaa !8, !alias.scope !14
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <16 x i8> %i.ee, ptr %i.ej, align 1, !tbaa !8, !alias.scope !14
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <16 x i8> %i.ef, ptr %i.ek, align 1, !tbaa !8, !alias.scope !14
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <16 x i8> %i.eg, ptr %i.el, align 1, !tbaa !8, !alias.scope !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @VP8YuvToBgr32_SSE41(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) initializes((0, 96)) %3) local_unnamed_addr #0 {
bb.a:
  %.val21 = load i64, ptr %0, align 1, !tbaa !8
  %.val22 = load i64, ptr %1, align 1, !tbaa !8
  %.val23 = load i64, ptr %2, align 1, !tbaa !8
  %i.a = insertelement <2 x i64> poison, i64 %.val21, i64 0
  %i.b = bitcast <2 x i64> %i.a to <16 x i8>
  %4 = shufflevector <16 x i8> %i.b, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.c = insertelement <2 x i64> poison, i64 %.val22, i64 0
  %i.d = bitcast <2 x i64> %i.c to <16 x i8>
  %5 = shufflevector <16 x i8> %i.d, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.e = insertelement <2 x i64> poison, i64 %.val23, i64 0
  %i.f = bitcast <2 x i64> %i.e to <16 x i8>
  %6 = shufflevector <16 x i8> %i.f, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.g = bitcast <16 x i8> %4 to <8 x i16>
  %i.h = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.g, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.i = bitcast <16 x i8> %6 to <8 x i16>        ; 2 uses
  %i.j = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 26149))
  %i.k = add nsw <8 x i16> %i.h, splat (i16 -14234)
  %i.l = add <8 x i16> %i.k, %i.j
  %i.m = bitcast <16 x i8> %5 to <8 x i16>        ; 2 uses
  %i.n = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 6419))
  %i.o = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 13320))
  %.neg68 = add nuw <8 x i16> %i.h, splat (i16 8708)
  %i.p = add nuw nsw <8 x i16> %i.n, %i.o
  %i.q = sub <8 x i16> %.neg68, %i.p
  %i.r = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 -32486))
  %i.s = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.r, <8 x i16> %i.h)
  %i.t = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.s, <8 x i16> splat (i16 17685))
  %i.u = ashr <8 x i16> %i.l, splat (i16 6)
  %i.v = ashr <8 x i16> %i.q, splat (i16 6)
  %i.w = lshr <8 x i16> %i.t, splat (i16 6)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val18 = load i64, ptr %i.x, align 1, !tbaa !8
  %.val19 = load i64, ptr %i.y, align 1, !tbaa !8
  %.val20 = load i64, ptr %i.z, align 1, !tbaa !8
  %i.aa = insertelement <2 x i64> poison, i64 %.val18, i64 0
  %i.ab = bitcast <2 x i64> %i.aa to <16 x i8>
  %7 = shufflevector <16 x i8> %i.ab, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.ac = insertelement <2 x i64> poison, i64 %.val19, i64 0
  %i.ad = bitcast <2 x i64> %i.ac to <16 x i8>
  %8 = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.ae = insertelement <2 x i64> poison, i64 %.val20, i64 0
  %i.af = bitcast <2 x i64> %i.ae to <16 x i8>
  %9 = shufflevector <16 x i8> %i.af, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.ag = bitcast <16 x i8> %7 to <8 x i16>
  %i.ah = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ag, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.ai = bitcast <16 x i8> %9 to <8 x i16>       ; 2 uses
  %i.aj = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ai, <8 x i16> splat (i16 26149))
  %i.ak = add nsw <8 x i16> %i.ah, splat (i16 -14234)
  %i.al = add <8 x i16> %i.ak, %i.aj
  %i.am = bitcast <16 x i8> %8 to <8 x i16>       ; 2 uses
  %i.an = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.am, <8 x i16> splat (i16 6419))
  %i.ao = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ai, <8 x i16> splat (i16 13320))
  %.neg71 = add nuw <8 x i16> %i.ah, splat (i16 8708)
  %i.ap = add nuw nsw <8 x i16> %i.an, %i.ao
  %i.aq = sub <8 x i16> %.neg71, %i.ap
  %i.ar = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.am, <8 x i16> splat (i16 -32486))
  %i.as = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.ar, <8 x i16> %i.ah)
  %i.at = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.as, <8 x i16> splat (i16 17685))
  %i.au = ashr <8 x i16> %i.al, splat (i16 6)
  %i.av = ashr <8 x i16> %i.aq, splat (i16 6)
  %i.aw = lshr <8 x i16> %i.at, splat (i16 6)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val15 = load i64, ptr %i.ax, align 1, !tbaa !8
  %.val16 = load i64, ptr %i.ay, align 1, !tbaa !8
  %.val17 = load i64, ptr %i.az, align 1, !tbaa !8
  %i.ba = insertelement <2 x i64> poison, i64 %.val15, i64 0
  %i.bb = bitcast <2 x i64> %i.ba to <16 x i8>
  %10 = shufflevector <16 x i8> %i.bb, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.bc = insertelement <2 x i64> poison, i64 %.val16, i64 0
  %i.bd = bitcast <2 x i64> %i.bc to <16 x i8>
  %11 = shufflevector <16 x i8> %i.bd, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.be = insertelement <2 x i64> poison, i64 %.val17, i64 0
  %i.bf = bitcast <2 x i64> %i.be to <16 x i8>
  %12 = shufflevector <16 x i8> %i.bf, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.bg = bitcast <16 x i8> %10 to <8 x i16>
  %i.bh = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bg, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.bi = bitcast <16 x i8> %12 to <8 x i16>      ; 2 uses
  %i.bj = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bi, <8 x i16> splat (i16 26149))
  %i.bk = add nsw <8 x i16> %i.bh, splat (i16 -14234)
  %i.bl = add <8 x i16> %i.bk, %i.bj
  %i.bm = bitcast <16 x i8> %11 to <8 x i16>      ; 2 uses
  %i.bn = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bm, <8 x i16> splat (i16 6419))
  %i.bo = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bi, <8 x i16> splat (i16 13320))
  %.neg74 = add nuw <8 x i16> %i.bh, splat (i16 8708)
  %i.bp = add nuw nsw <8 x i16> %i.bn, %i.bo
  %i.bq = sub <8 x i16> %.neg74, %i.bp
  %i.br = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bm, <8 x i16> splat (i16 -32486))
  %i.bs = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.br, <8 x i16> %i.bh)
  %i.bt = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.bs, <8 x i16> splat (i16 17685))
  %i.bu = ashr <8 x i16> %i.bl, splat (i16 6)
  %i.bv = ashr <8 x i16> %i.bq, splat (i16 6)
  %i.bw = lshr <8 x i16> %i.bt, splat (i16 6)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val = load i64, ptr %i.bx, align 1, !tbaa !8
  %.val13 = load i64, ptr %i.by, align 1, !tbaa !8
  %.val14 = load i64, ptr %i.bz, align 1, !tbaa !8
  %i.ca = insertelement <2 x i64> poison, i64 %.val, i64 0
  %i.cb = bitcast <2 x i64> %i.ca to <16 x i8>
  %13 = shufflevector <16 x i8> %i.cb, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.cc = insertelement <2 x i64> poison, i64 %.val13, i64 0
  %i.cd = bitcast <2 x i64> %i.cc to <16 x i8>
  %14 = shufflevector <16 x i8> %i.cd, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.ce = insertelement <2 x i64> poison, i64 %.val14, i64 0
  %i.cf = bitcast <2 x i64> %i.ce to <16 x i8>
  %15 = shufflevector <16 x i8> %i.cf, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.cg = bitcast <16 x i8> %13 to <8 x i16>
  %i.ch = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cg, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.ci = bitcast <16 x i8> %15 to <8 x i16>      ; 2 uses
  %i.cj = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ci, <8 x i16> splat (i16 26149))
  %i.ck = add nsw <8 x i16> %i.ch, splat (i16 -14234)
  %i.cl = add <8 x i16> %i.ck, %i.cj
  %i.cm = bitcast <16 x i8> %14 to <8 x i16>      ; 2 uses
  %i.cn = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cm, <8 x i16> splat (i16 6419))
  %i.co = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ci, <8 x i16> splat (i16 13320))
  %.neg77 = add nuw <8 x i16> %i.ch, splat (i16 8708)
  %i.cp = add nuw nsw <8 x i16> %i.cn, %i.co
  %i.cq = sub <8 x i16> %.neg77, %i.cp
  %i.cr = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cm, <8 x i16> splat (i16 -32486))
  %i.cs = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.cr, <8 x i16> %i.ch)
  %i.ct = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.cs, <8 x i16> splat (i16 17685))
  %i.cu = ashr <8 x i16> %i.cl, splat (i16 6)
  %i.cv = ashr <8 x i16> %i.cq, splat (i16 6)
  %i.cw = lshr <8 x i16> %i.ct, splat (i16 6)
  %i.cx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.w, <8 x i16> %i.aw) ; 3 uses
  %i.cy = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bw, <8 x i16> %i.cw) ; 3 uses
  %i.cz = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.v, <8 x i16> %i.av) ; 3 uses
  %i.da = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bv, <8 x i16> %i.cv) ; 3 uses
  %i.db = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.u, <8 x i16> %i.au) ; 3 uses
  %i.dc = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bu, <8 x i16> %i.cu) ; 3 uses
  %i.dd = shufflevector <16 x i8> %i.cx, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16, i32 16, i32 5>
  %i.de = shufflevector <16 x i8> %i.cx, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16, i32 10, i32 16>
  %i.df = shufflevector <16 x i8> %i.cx, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15, i32 16, i32 16>
  %i.dg = shufflevector <16 x i8> %i.cy, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16, i32 16, i32 5>
  %i.dh = shufflevector <16 x i8> %i.cy, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16, i32 10, i32 16>
  %i.di = shufflevector <16 x i8> %i.cy, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15, i32 16, i32 16>
  %i.dj = shufflevector <16 x i8> %i.cz, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16, i32 16>
  %i.dk = shufflevector <16 x i8> %i.cz, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 5, i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16, i32 10>
  %i.dl = shufflevector <16 x i8> %i.cz, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15, i32 16>
  %i.dm = shufflevector <16 x i8> %i.da, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16, i32 16>
  %i.dn = shufflevector <16 x i8> %i.da, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 5, i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16, i32 10>
  %i.do = shufflevector <16 x i8> %i.da, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15, i32 16>
  %i.dp = shufflevector <16 x i8> %i.db, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16>
  %i.dq = shufflevector <16 x i8> %i.db, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 5, i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16>
  %i.dr = shufflevector <16 x i8> %i.db, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 16, i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15>
  %i.ds = shufflevector <16 x i8> %i.dc, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16>
  %i.dt = shufflevector <16 x i8> %i.dc, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 5, i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16>
  %i.du = shufflevector <16 x i8> %i.dc, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 16, i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15>
  %i.dv = or <16 x i8> %i.dj, %i.dd
  %i.dw = or <16 x i8> %i.dk, %i.de
  %i.dx = or <16 x i8> %i.dl, %i.df
  %i.dy = or <16 x i8> %i.dm, %i.dg
  %i.dz = or <16 x i8> %i.dn, %i.dh
  %i.ea = or <16 x i8> %i.do, %i.di
  %i.eb = or <16 x i8> %i.dv, %i.dp
  %i.ec = or <16 x i8> %i.dw, %i.dq
  %i.ed = or <16 x i8> %i.dx, %i.dr
  %i.ee = or <16 x i8> %i.dy, %i.ds
  %i.ef = or <16 x i8> %i.dz, %i.dt
  %i.eg = or <16 x i8> %i.ea, %i.du
  store <16 x i8> %i.eb, ptr %3, align 1, !tbaa !8, !alias.scope !17
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <16 x i8> %i.ec, ptr %i.eh, align 1, !tbaa !8, !alias.scope !17
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <16 x i8> %i.ed, ptr %i.ei, align 1, !tbaa !8, !alias.scope !17
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <16 x i8> %i.ee, ptr %i.ej, align 1, !tbaa !8, !alias.scope !17
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <16 x i8> %i.ef, ptr %i.ek, align 1, !tbaa !8, !alias.scope !17
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <16 x i8> %i.eg, ptr %i.el, align 1, !tbaa !8, !alias.scope !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPInitSamplersSSE41() local_unnamed_addr #1 {
bb.a:
  store ptr @YuvToRgbRow_SSE41, ptr @WebPSamplers, align 16, !tbaa !10
  store ptr @YuvToBgrRow_SSE41, ptr getelementptr inbounds nuw (i8, ptr @WebPSamplers, i64 16), align 16, !tbaa !10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @YuvToRgbRow_SSE41(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %.not106 = icmp slt i32 %4, 32
  br i1 %.not106, label %.preheader, label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.a = and i32 %4, 2147483616
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.038.lcssa = phi ptr [ %1, %bb.a ], [ %i.ey, %.preheader.loopexit ]
  %.036.lcssa = phi ptr [ %2, %bb.a ], [ %i.ez, %.preheader.loopexit ]
  %.034.lcssa = phi ptr [ %3, %bb.a ], [ %i.fa, %.preheader.loopexit ]
  %.032.lcssa = phi ptr [ %0, %bb.a ], [ %i.ex, %.preheader.loopexit ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.a, %.preheader.loopexit ] ; 2 uses
  %i.b = icmp slt i32 %.0.lcssa, %4
  br i1 %i.b, label %.lr.ph120, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i32 [ %i.fb, %.lr.ph ], [ 32, %bb.a ]
  %.032110 = phi ptr [ %i.ex, %.lr.ph ], [ %0, %bb.a ] ; 5 uses
  %.034109 = phi ptr [ %i.fa, %.lr.ph ], [ %3, %bb.a ] ; 7 uses
  %.036108 = phi ptr [ %i.ez, %.lr.ph ], [ %2, %bb.a ] ; 5 uses
  %.038107 = phi ptr [ %i.ey, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.032.val = load i64, ptr %.032110, align 1, !tbaa !8
  %.038.val = load i32, ptr %.038107, align 1
  %.036.val = load i32, ptr %.036108, align 1
  %i.d = insertelement <2 x i64> poison, i64 %.032.val, i64 0
  %i.e = bitcast <2 x i64> %i.d to <16 x i8>
  %5 = shufflevector <16 x i8> %i.e, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.f = insertelement <4 x i32> poison, i32 %.038.val, i64 0
  %i.g = bitcast <4 x i32> %i.f to <16 x i8>
  %6 = shufflevector <16 x i8> %i.g, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.h = bitcast <16 x i8> %6 to <8 x i16>
  %i.i = shufflevector <8 x i16> %i.h, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.j = insertelement <4 x i32> poison, i32 %.036.val, i64 0
  %i.k = bitcast <4 x i32> %i.j to <16 x i8>
  %7 = shufflevector <16 x i8> %i.k, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.l = bitcast <16 x i8> %7 to <8 x i16>
  %i.m = shufflevector <8 x i16> %i.l, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.n = bitcast <16 x i8> %5 to <8 x i16>
  %i.o = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.n, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.p = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 26149))
  %i.q = add nsw <8 x i16> %i.o, splat (i16 -14234)
  %i.r = add <8 x i16> %i.q, %i.p
  %i.s = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 6419))
  %i.t = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 13320))
  %.neg93 = add nuw <8 x i16> %i.o, splat (i16 8708)
  %i.u = add nuw nsw <8 x i16> %i.s, %i.t
  %i.v = sub <8 x i16> %.neg93, %i.u
  %i.w = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 -32486))
  %i.x = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.w, <8 x i16> %i.o)
  %i.y = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.x, <8 x i16> splat (i16 17685))
  %i.z = ashr <8 x i16> %i.r, splat (i16 6)
  %i.aa = ashr <8 x i16> %i.v, splat (i16 6)
  %i.ab = lshr <8 x i16> %i.y, splat (i16 6)
  %i.ac = getelementptr inbounds nuw i8, ptr %.032110, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.038107, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.036108, i64 4
  %.val46 = load i64, ptr %i.ac, align 1, !tbaa !8
  %.val47 = load i32, ptr %i.ad, align 1
  %.val48 = load i32, ptr %i.ae, align 1
  %i.af = insertelement <2 x i64> poison, i64 %.val46, i64 0
  %i.ag = bitcast <2 x i64> %i.af to <16 x i8>
  %8 = shufflevector <16 x i8> %i.ag, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.ah = insertelement <4 x i32> poison, i32 %.val47, i64 0
  %i.ai = bitcast <4 x i32> %i.ah to <16 x i8>
  %9 = shufflevector <16 x i8> %i.ai, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aj = bitcast <16 x i8> %9 to <8 x i16>
  %i.ak = shufflevector <8 x i16> %i.aj, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.al = insertelement <4 x i32> poison, i32 %.val48, i64 0
  %i.am = bitcast <4 x i32> %i.al to <16 x i8>
  %10 = shufflevector <16 x i8> %i.am, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.an = bitcast <16 x i8> %10 to <8 x i16>
  %i.ao = shufflevector <8 x i16> %i.an, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.ap = bitcast <16 x i8> %8 to <8 x i16>
  %i.aq = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ap, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.ar = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ao, <8 x i16> splat (i16 26149))
  %i.as = add nsw <8 x i16> %i.aq, splat (i16 -14234)
  %i.at = add <8 x i16> %i.as, %i.ar
  %i.au = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ak, <8 x i16> splat (i16 6419))
  %i.av = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ao, <8 x i16> splat (i16 13320))
  %.neg96 = add nuw <8 x i16> %i.aq, splat (i16 8708)
  %i.aw = add nuw nsw <8 x i16> %i.au, %i.av
  %i.ax = sub <8 x i16> %.neg96, %i.aw
  %i.ay = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ak, <8 x i16> splat (i16 -32486))
  %i.az = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.ay, <8 x i16> %i.aq)
  %i.ba = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.az, <8 x i16> splat (i16 17685))
  %i.bb = ashr <8 x i16> %i.at, splat (i16 6)
  %i.bc = ashr <8 x i16> %i.ax, splat (i16 6)
  %i.bd = lshr <8 x i16> %i.ba, splat (i16 6)
  %i.be = getelementptr inbounds nuw i8, ptr %.032110, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.038107, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.036108, i64 8
  %.val43 = load i64, ptr %i.be, align 1, !tbaa !8
  %.val44 = load i32, ptr %i.bf, align 1
  %.val45 = load i32, ptr %i.bg, align 1
  %i.bh = insertelement <2 x i64> poison, i64 %.val43, i64 0
  %i.bi = bitcast <2 x i64> %i.bh to <16 x i8>
  %11 = shufflevector <16 x i8> %i.bi, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.bj = insertelement <4 x i32> poison, i32 %.val44, i64 0
  %i.bk = bitcast <4 x i32> %i.bj to <16 x i8>
  %12 = shufflevector <16 x i8> %i.bk, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bl = bitcast <16 x i8> %12 to <8 x i16>
  %i.bm = shufflevector <8 x i16> %i.bl, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.bn = insertelement <4 x i32> poison, i32 %.val45, i64 0
  %i.bo = bitcast <4 x i32> %i.bn to <16 x i8>
  %13 = shufflevector <16 x i8> %i.bo, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bp = bitcast <16 x i8> %13 to <8 x i16>
  %i.bq = shufflevector <8 x i16> %i.bp, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.br = bitcast <16 x i8> %11 to <8 x i16>
  %i.bs = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.br, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.bt = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bq, <8 x i16> splat (i16 26149))
  %i.bu = add nsw <8 x i16> %i.bs, splat (i16 -14234)
  %i.bv = add <8 x i16> %i.bu, %i.bt
  %i.bw = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bm, <8 x i16> splat (i16 6419))
  %i.bx = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bq, <8 x i16> splat (i16 13320))
  %.neg99 = add nuw <8 x i16> %i.bs, splat (i16 8708)
  %i.by = add nuw nsw <8 x i16> %i.bw, %i.bx
  %i.bz = sub <8 x i16> %.neg99, %i.by
  %i.ca = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bm, <8 x i16> splat (i16 -32486))
  %i.cb = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.ca, <8 x i16> %i.bs)
  %i.cc = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.cb, <8 x i16> splat (i16 17685))
  %i.cd = ashr <8 x i16> %i.bv, splat (i16 6)
  %i.ce = ashr <8 x i16> %i.bz, splat (i16 6)
  %i.cf = lshr <8 x i16> %i.cc, splat (i16 6)
  %i.cg = getelementptr inbounds nuw i8, ptr %.032110, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %.038107, i64 12
  %i.ci = getelementptr inbounds nuw i8, ptr %.036108, i64 12
  %.val = load i64, ptr %i.cg, align 1, !tbaa !8
  %.val41 = load i32, ptr %i.ch, align 1
  %.val42 = load i32, ptr %i.ci, align 1
  %i.cj = insertelement <2 x i64> poison, i64 %.val, i64 0
  %i.ck = bitcast <2 x i64> %i.cj to <16 x i8>
  %14 = shufflevector <16 x i8> %i.ck, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.cl = insertelement <4 x i32> poison, i32 %.val41, i64 0
  %i.cm = bitcast <4 x i32> %i.cl to <16 x i8>
  %15 = shufflevector <16 x i8> %i.cm, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cn = bitcast <16 x i8> %15 to <8 x i16>
  %i.co = shufflevector <8 x i16> %i.cn, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.cp = insertelement <4 x i32> poison, i32 %.val42, i64 0
  %i.cq = bitcast <4 x i32> %i.cp to <16 x i8>
  %16 = shufflevector <16 x i8> %i.cq, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cr = bitcast <16 x i8> %16 to <8 x i16>
  %i.cs = shufflevector <8 x i16> %i.cr, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.ct = bitcast <16 x i8> %14 to <8 x i16>
  %i.cu = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ct, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.cv = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cs, <8 x i16> splat (i16 26149))
  %i.cw = add nsw <8 x i16> %i.cu, splat (i16 -14234)
  %i.cx = add <8 x i16> %i.cw, %i.cv
  %i.cy = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.co, <8 x i16> splat (i16 6419))
  %i.cz = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cs, <8 x i16> splat (i16 13320))
  %.neg102 = add nuw <8 x i16> %i.cu, splat (i16 8708)
  %i.da = add nuw nsw <8 x i16> %i.cy, %i.cz
  %i.db = sub <8 x i16> %.neg102, %i.da
  %i.dc = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.co, <8 x i16> splat (i16 -32486))
  %i.dd = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.dc, <8 x i16> %i.cu)
  %i.de = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.dd, <8 x i16> splat (i16 17685))
  %i.df = ashr <8 x i16> %i.cx, splat (i16 6)
  %i.dg = ashr <8 x i16> %i.db, splat (i16 6)
  %i.dh = lshr <8 x i16> %i.de, splat (i16 6)
  %i.di = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.z, <8 x i16> %i.bb) ; 3 uses
  %i.dj = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cd, <8 x i16> %i.df) ; 3 uses
  %i.dk = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.aa, <8 x i16> %i.bc) ; 3 uses
  %i.dl = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ce, <8 x i16> %i.dg) ; 3 uses
  %i.dm = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ab, <8 x i16> %i.bd) ; 3 uses
  %i.dn = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cf, <8 x i16> %i.dh) ; 3 uses
  %i.do = shufflevector <16 x i8> %i.di, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16, i32 16, i32 5>
  %i.dp = shufflevector <16 x i8> %i.di, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16, i32 10, i32 16>
  %i.dq = shufflevector <16 x i8> %i.di, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15, i32 16, i32 16>
  %i.dr = shufflevector <16 x i8> %i.dj, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16, i32 16, i32 5>
  %i.ds = shufflevector <16 x i8> %i.dj, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16, i32 10, i32 16>
  %i.dt = shufflevector <16 x i8> %i.dj, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15, i32 16, i32 16>
  %i.du = shufflevector <16 x i8> %i.dk, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16, i32 16>
  %i.dv = shufflevector <16 x i8> %i.dk, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 5, i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16, i32 10>
  %i.dw = shufflevector <16 x i8> %i.dk, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15, i32 16>
  %i.dx = shufflevector <16 x i8> %i.dl, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16, i32 16>
  %i.dy = shufflevector <16 x i8> %i.dl, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 5, i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16, i32 10>
  %i.dz = shufflevector <16 x i8> %i.dl, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15, i32 16>
  %i.ea = shufflevector <16 x i8> %i.dm, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16>
  %i.eb = shufflevector <16 x i8> %i.dm, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 5, i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16>
  %i.ec = shufflevector <16 x i8> %i.dm, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 16, i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15>
  %i.ed = shufflevector <16 x i8> %i.dn, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16>
  %i.ee = shufflevector <16 x i8> %i.dn, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 5, i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16>
  %i.ef = shufflevector <16 x i8> %i.dn, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 16, i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15>
  %i.eg = or <16 x i8> %i.du, %i.do
  %i.eh = or <16 x i8> %i.dv, %i.dp
  %i.ei = or <16 x i8> %i.dw, %i.dq
  %i.ej = or <16 x i8> %i.dx, %i.dr
  %i.ek = or <16 x i8> %i.dy, %i.ds
  %i.el = or <16 x i8> %i.dz, %i.dt
  %i.em = or <16 x i8> %i.eg, %i.ea
  %i.en = or <16 x i8> %i.eh, %i.eb
  %i.eo = or <16 x i8> %i.ei, %i.ec
  %i.ep = or <16 x i8> %i.ej, %i.ed
  %i.eq = or <16 x i8> %i.ek, %i.ee
  %i.er = or <16 x i8> %i.el, %i.ef
  store <16 x i8> %i.em, ptr %.034109, align 1, !tbaa !8, !alias.scope !22
  %i.es = getelementptr inbounds nuw i8, ptr %.034109, i64 16
  store <16 x i8> %i.en, ptr %i.es, align 1, !tbaa !8, !alias.scope !22
  %i.et = getelementptr inbounds nuw i8, ptr %.034109, i64 32
  store <16 x i8> %i.eo, ptr %i.et, align 1, !tbaa !8, !alias.scope !22
  %i.eu = getelementptr inbounds nuw i8, ptr %.034109, i64 48
  store <16 x i8> %i.ep, ptr %i.eu, align 1, !tbaa !8, !alias.scope !22
  %i.ev = getelementptr inbounds nuw i8, ptr %.034109, i64 64
  store <16 x i8> %i.eq, ptr %i.ev, align 1, !tbaa !8, !alias.scope !22
  %i.ew = getelementptr inbounds nuw i8, ptr %.034109, i64 80
  store <16 x i8> %i.er, ptr %i.ew, align 1, !tbaa !8, !alias.scope !22
  %i.ex = getelementptr inbounds nuw i8, ptr %.032110, i64 32 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.038107, i64 16 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.036108, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.034109, i64 96 ; 2 uses
  %i.fb = add nuw nsw i32 %i.c, 32                ; 2 uses
  %.not = icmp sgt i32 %i.fb, %4
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !20

.lr.ph120:                                        ; preds = %.preheader, %.lr.ph120
  %.1119 = phi i32 [ %i.gz, %.lr.ph120 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.133118 = phi ptr [ %i.gu, %.lr.ph120 ], [ %.032.lcssa, %.preheader ] ; 2 uses
  %.135117 = phi ptr [ %i.gt, %.lr.ph120 ], [ %.034.lcssa, %.preheader ] ; 4 uses
  %.137116 = phi ptr [ %i.gy, %.lr.ph120 ], [ %.036.lcssa, %.preheader ] ; 2 uses
  %.139115 = phi ptr [ %i.gx, %.lr.ph120 ], [ %.038.lcssa, %.preheader ] ; 2 uses
  %i.fc = load i8, ptr %.133118, align 1, !tbaa !8
  %i.fd = zext i8 %i.fc to i32
  %i.fe = load i8, ptr %.139115, align 1, !tbaa !8
  %i.ff = zext i8 %i.fe to i32                    ; 2 uses
  %i.fg = load i8, ptr %.137116, align 1, !tbaa !8
  %i.fh = zext i8 %i.fg to i32                    ; 2 uses
  %i.fi = mul nuw nsw i32 %i.fd, 19077
  %i.fj = lshr i32 %i.fi, 8                       ; 3 uses
  %i.fk = mul nuw nsw i32 %i.fh, 26149
  %i.fl = lshr i32 %i.fk, 8
  %i.fm = add nuw nsw i32 %i.fl, %i.fj            ; 2 uses
  %i.fn = add nsw i32 %i.fm, -14234               ; 2 uses
  %i.fo = icmp ult i32 %i.fn, 16384
  %i.fp = lshr i32 %i.fn, 6
  %i.fq = icmp samesign ult i32 %i.fm, 14234
  %i.fr = select i1 %i.fq, i32 0, i32 255
  %i.fs = select i1 %i.fo, i32 %i.fp, i32 %i.fr
  %i.ft = trunc i32 %i.fs to i8
  store i8 %i.ft, ptr %.135117, align 1, !tbaa !8
  %i.fu = mul nuw nsw i32 %i.ff, 6419
  %i.fv = lshr i32 %i.fu, 8
  %i.fw = mul nuw nsw i32 %i.fh, 13320
  %i.fx = lshr i32 %i.fw, 8
  %i.fy = add nuw nsw i32 %i.fv, %i.fx
  %i.fz = sub nsw i32 %i.fj, %i.fy                ; 2 uses
  %i.ga = add nsw i32 %i.fz, 8708                 ; 2 uses
  %i.gb = icmp ult i32 %i.ga, 16384
  %i.gc = lshr i32 %i.ga, 6
  %i.gd = icmp slt i32 %i.fz, -8708
  %i.ge = select i1 %i.gd, i32 0, i32 255
  %i.gf = select i1 %i.gb, i32 %i.gc, i32 %i.ge
  %i.gg = trunc i32 %i.gf to i8
  %i.gh = getelementptr inbounds nuw i8, ptr %.135117, i64 1
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !8
  %i.gi = mul nuw nsw i32 %i.ff, 33050
  %i.gj = lshr i32 %i.gi, 8
  %i.gk = add nuw nsw i32 %i.gj, %i.fj            ; 2 uses
  %i.gl = add nsw i32 %i.gk, -17685               ; 2 uses
  %i.gm = icmp ult i32 %i.gl, 16384
  %i.gn = lshr i32 %i.gl, 6
  %i.go = icmp samesign ult i32 %i.gk, 17685
  %i.gp = select i1 %i.go, i32 0, i32 255
  %i.gq = select i1 %i.gm, i32 %i.gn, i32 %i.gp
  %i.gr = trunc i32 %i.gq to i8
  %i.gs = getelementptr inbounds nuw i8, ptr %.135117, i64 2
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !8
  %i.gt = getelementptr inbounds nuw i8, ptr %.135117, i64 3
  %i.gu = getelementptr inbounds nuw i8, ptr %.133118, i64 1
  %i.gv = and i32 %.1119, 1
  %i.gw = zext nneg i32 %i.gv to i64              ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.139115, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %.137116, i64 %i.gw
  %i.gz = add nuw nsw i32 %.1119, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gz, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph120, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph120, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @YuvToBgrRow_SSE41(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %.not106 = icmp slt i32 %4, 32
  br i1 %.not106, label %.preheader, label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.a = and i32 %4, 2147483616
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.038.lcssa = phi ptr [ %1, %bb.a ], [ %i.ey, %.preheader.loopexit ]
  %.036.lcssa = phi ptr [ %2, %bb.a ], [ %i.ez, %.preheader.loopexit ]
  %.034.lcssa = phi ptr [ %3, %bb.a ], [ %i.fa, %.preheader.loopexit ]
  %.032.lcssa = phi ptr [ %0, %bb.a ], [ %i.ex, %.preheader.loopexit ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.a, %.preheader.loopexit ] ; 2 uses
  %i.b = icmp slt i32 %.0.lcssa, %4
  br i1 %i.b, label %.lr.ph120, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i32 [ %i.fb, %.lr.ph ], [ 32, %bb.a ]
  %.032110 = phi ptr [ %i.ex, %.lr.ph ], [ %0, %bb.a ] ; 5 uses
  %.034109 = phi ptr [ %i.fa, %.lr.ph ], [ %3, %bb.a ] ; 7 uses
  %.036108 = phi ptr [ %i.ez, %.lr.ph ], [ %2, %bb.a ] ; 5 uses
  %.038107 = phi ptr [ %i.ey, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.032.val = load i64, ptr %.032110, align 1, !tbaa !8
  %.038.val = load i32, ptr %.038107, align 1
  %.036.val = load i32, ptr %.036108, align 1
  %i.d = insertelement <2 x i64> poison, i64 %.032.val, i64 0
  %i.e = bitcast <2 x i64> %i.d to <16 x i8>
  %5 = shufflevector <16 x i8> %i.e, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.f = insertelement <4 x i32> poison, i32 %.038.val, i64 0
  %i.g = bitcast <4 x i32> %i.f to <16 x i8>
  %6 = shufflevector <16 x i8> %i.g, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.h = bitcast <16 x i8> %6 to <8 x i16>
  %i.i = shufflevector <8 x i16> %i.h, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.j = insertelement <4 x i32> poison, i32 %.036.val, i64 0
  %i.k = bitcast <4 x i32> %i.j to <16 x i8>
  %7 = shufflevector <16 x i8> %i.k, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.l = bitcast <16 x i8> %7 to <8 x i16>
  %i.m = shufflevector <8 x i16> %i.l, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.n = bitcast <16 x i8> %5 to <8 x i16>
  %i.o = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.n, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.p = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 26149))
  %i.q = add nsw <8 x i16> %i.o, splat (i16 -14234)
  %i.r = add <8 x i16> %i.q, %i.p
  %i.s = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 6419))
  %i.t = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 13320))
  %.neg93 = add nuw <8 x i16> %i.o, splat (i16 8708)
  %i.u = add nuw nsw <8 x i16> %i.s, %i.t
  %i.v = sub <8 x i16> %.neg93, %i.u
  %i.w = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 -32486))
  %i.x = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.w, <8 x i16> %i.o)
  %i.y = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.x, <8 x i16> splat (i16 17685))
  %i.z = ashr <8 x i16> %i.r, splat (i16 6)
  %i.aa = ashr <8 x i16> %i.v, splat (i16 6)
  %i.ab = lshr <8 x i16> %i.y, splat (i16 6)
  %i.ac = getelementptr inbounds nuw i8, ptr %.032110, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.038107, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.036108, i64 4
  %.val46 = load i64, ptr %i.ac, align 1, !tbaa !8
  %.val47 = load i32, ptr %i.ad, align 1
  %.val48 = load i32, ptr %i.ae, align 1
  %i.af = insertelement <2 x i64> poison, i64 %.val46, i64 0
  %i.ag = bitcast <2 x i64> %i.af to <16 x i8>
  %8 = shufflevector <16 x i8> %i.ag, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.ah = insertelement <4 x i32> poison, i32 %.val47, i64 0
  %i.ai = bitcast <4 x i32> %i.ah to <16 x i8>
  %9 = shufflevector <16 x i8> %i.ai, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aj = bitcast <16 x i8> %9 to <8 x i16>
  %i.ak = shufflevector <8 x i16> %i.aj, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.al = insertelement <4 x i32> poison, i32 %.val48, i64 0
  %i.am = bitcast <4 x i32> %i.al to <16 x i8>
  %10 = shufflevector <16 x i8> %i.am, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.an = bitcast <16 x i8> %10 to <8 x i16>
  %i.ao = shufflevector <8 x i16> %i.an, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.ap = bitcast <16 x i8> %8 to <8 x i16>
  %i.aq = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ap, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.ar = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ao, <8 x i16> splat (i16 26149))
  %i.as = add nsw <8 x i16> %i.aq, splat (i16 -14234)
  %i.at = add <8 x i16> %i.as, %i.ar
  %i.au = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ak, <8 x i16> splat (i16 6419))
  %i.av = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ao, <8 x i16> splat (i16 13320))
  %.neg96 = add nuw <8 x i16> %i.aq, splat (i16 8708)
  %i.aw = add nuw nsw <8 x i16> %i.au, %i.av
  %i.ax = sub <8 x i16> %.neg96, %i.aw
  %i.ay = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ak, <8 x i16> splat (i16 -32486))
  %i.az = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.ay, <8 x i16> %i.aq)
  %i.ba = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.az, <8 x i16> splat (i16 17685))
  %i.bb = ashr <8 x i16> %i.at, splat (i16 6)
  %i.bc = ashr <8 x i16> %i.ax, splat (i16 6)
  %i.bd = lshr <8 x i16> %i.ba, splat (i16 6)
  %i.be = getelementptr inbounds nuw i8, ptr %.032110, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.038107, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.036108, i64 8
  %.val43 = load i64, ptr %i.be, align 1, !tbaa !8
  %.val44 = load i32, ptr %i.bf, align 1
  %.val45 = load i32, ptr %i.bg, align 1
  %i.bh = insertelement <2 x i64> poison, i64 %.val43, i64 0
  %i.bi = bitcast <2 x i64> %i.bh to <16 x i8>
  %11 = shufflevector <16 x i8> %i.bi, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.bj = insertelement <4 x i32> poison, i32 %.val44, i64 0
  %i.bk = bitcast <4 x i32> %i.bj to <16 x i8>
  %12 = shufflevector <16 x i8> %i.bk, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bl = bitcast <16 x i8> %12 to <8 x i16>
  %i.bm = shufflevector <8 x i16> %i.bl, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.bn = insertelement <4 x i32> poison, i32 %.val45, i64 0
  %i.bo = bitcast <4 x i32> %i.bn to <16 x i8>
  %13 = shufflevector <16 x i8> %i.bo, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bp = bitcast <16 x i8> %13 to <8 x i16>
  %i.bq = shufflevector <8 x i16> %i.bp, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.br = bitcast <16 x i8> %11 to <8 x i16>
  %i.bs = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.br, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.bt = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bq, <8 x i16> splat (i16 26149))
  %i.bu = add nsw <8 x i16> %i.bs, splat (i16 -14234)
  %i.bv = add <8 x i16> %i.bu, %i.bt
  %i.bw = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bm, <8 x i16> splat (i16 6419))
  %i.bx = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bq, <8 x i16> splat (i16 13320))
  %.neg99 = add nuw <8 x i16> %i.bs, splat (i16 8708)
  %i.by = add nuw nsw <8 x i16> %i.bw, %i.bx
  %i.bz = sub <8 x i16> %.neg99, %i.by
  %i.ca = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bm, <8 x i16> splat (i16 -32486))
  %i.cb = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.ca, <8 x i16> %i.bs)
  %i.cc = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.cb, <8 x i16> splat (i16 17685))
  %i.cd = ashr <8 x i16> %i.bv, splat (i16 6)
  %i.ce = ashr <8 x i16> %i.bz, splat (i16 6)
  %i.cf = lshr <8 x i16> %i.cc, splat (i16 6)
  %i.cg = getelementptr inbounds nuw i8, ptr %.032110, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %.038107, i64 12
  %i.ci = getelementptr inbounds nuw i8, ptr %.036108, i64 12
  %.val = load i64, ptr %i.cg, align 1, !tbaa !8
  %.val41 = load i32, ptr %i.ch, align 1
  %.val42 = load i32, ptr %i.ci, align 1
  %i.cj = insertelement <2 x i64> poison, i64 %.val, i64 0
  %i.ck = bitcast <2 x i64> %i.cj to <16 x i8>
  %14 = shufflevector <16 x i8> %i.ck, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7>
  %i.cl = insertelement <4 x i32> poison, i32 %.val41, i64 0
  %i.cm = bitcast <4 x i32> %i.cl to <16 x i8>
  %15 = shufflevector <16 x i8> %i.cm, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cn = bitcast <16 x i8> %15 to <8 x i16>
  %i.co = shufflevector <8 x i16> %i.cn, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.cp = insertelement <4 x i32> poison, i32 %.val42, i64 0
  %i.cq = bitcast <4 x i32> %i.cp to <16 x i8>
  %16 = shufflevector <16 x i8> %i.cq, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cr = bitcast <16 x i8> %16 to <8 x i16>
  %i.cs = shufflevector <8 x i16> %i.cr, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.ct = bitcast <16 x i8> %14 to <8 x i16>
  %i.cu = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ct, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.cv = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cs, <8 x i16> splat (i16 26149))
  %i.cw = add nsw <8 x i16> %i.cu, splat (i16 -14234)
  %i.cx = add <8 x i16> %i.cw, %i.cv
  %i.cy = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.co, <8 x i16> splat (i16 6419))
  %i.cz = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cs, <8 x i16> splat (i16 13320))
  %.neg102 = add nuw <8 x i16> %i.cu, splat (i16 8708)
  %i.da = add nuw nsw <8 x i16> %i.cy, %i.cz
  %i.db = sub <8 x i16> %.neg102, %i.da
  %i.dc = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.co, <8 x i16> splat (i16 -32486))
  %i.dd = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.dc, <8 x i16> %i.cu)
  %i.de = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.dd, <8 x i16> splat (i16 17685))
  %i.df = ashr <8 x i16> %i.cx, splat (i16 6)
  %i.dg = ashr <8 x i16> %i.db, splat (i16 6)
  %i.dh = lshr <8 x i16> %i.de, splat (i16 6)
  %i.di = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ab, <8 x i16> %i.bd) ; 3 uses
  %i.dj = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cf, <8 x i16> %i.dh) ; 3 uses
  %i.dk = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.aa, <8 x i16> %i.bc) ; 3 uses
  %i.dl = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ce, <8 x i16> %i.dg) ; 3 uses
  %i.dm = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.z, <8 x i16> %i.bb) ; 3 uses
  %i.dn = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cd, <8 x i16> %i.df) ; 3 uses
  %i.do = shufflevector <16 x i8> %i.di, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16, i32 16, i32 5>
  %i.dp = shufflevector <16 x i8> %i.di, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16, i32 10, i32 16>
  %i.dq = shufflevector <16 x i8> %i.di, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15, i32 16, i32 16>
  %i.dr = shufflevector <16 x i8> %i.dj, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16, i32 16, i32 5>
  %i.ds = shufflevector <16 x i8> %i.dj, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16, i32 10, i32 16>
  %i.dt = shufflevector <16 x i8> %i.dj, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15, i32 16, i32 16>
  %i.du = shufflevector <16 x i8> %i.dk, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16, i32 16>
  %i.dv = shufflevector <16 x i8> %i.dk, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 5, i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16, i32 10>
  %i.dw = shufflevector <16 x i8> %i.dk, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15, i32 16>
  %i.dx = shufflevector <16 x i8> %i.dl, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16, i32 16>
  %i.dy = shufflevector <16 x i8> %i.dl, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 5, i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16, i32 10>
  %i.dz = shufflevector <16 x i8> %i.dl, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15, i32 16>
  %i.ea = shufflevector <16 x i8> %i.dm, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16>
  %i.eb = shufflevector <16 x i8> %i.dm, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 5, i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16>
  %i.ec = shufflevector <16 x i8> %i.dm, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 16, i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15>
  %i.ed = shufflevector <16 x i8> %i.dn, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 0, i32 16, i32 16, i32 1, i32 16, i32 16, i32 2, i32 16, i32 16, i32 3, i32 16, i32 16, i32 4, i32 16>
  %i.ee = shufflevector <16 x i8> %i.dn, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 5, i32 16, i32 16, i32 6, i32 16, i32 16, i32 7, i32 16, i32 16, i32 8, i32 16, i32 16, i32 9, i32 16, i32 16>
  %i.ef = shufflevector <16 x i8> %i.dn, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 16, i32 16, i32 11, i32 16, i32 16, i32 12, i32 16, i32 16, i32 13, i32 16, i32 16, i32 14, i32 16, i32 16, i32 15>
  %i.eg = or <16 x i8> %i.du, %i.do
  %i.eh = or <16 x i8> %i.dv, %i.dp
  %i.ei = or <16 x i8> %i.dw, %i.dq
  %i.ej = or <16 x i8> %i.dx, %i.dr
  %i.ek = or <16 x i8> %i.dy, %i.ds
  %i.el = or <16 x i8> %i.dz, %i.dt
  %i.em = or <16 x i8> %i.eg, %i.ea
  %i.en = or <16 x i8> %i.eh, %i.eb
  %i.eo = or <16 x i8> %i.ei, %i.ec
  %i.ep = or <16 x i8> %i.ej, %i.ed
  %i.eq = or <16 x i8> %i.ek, %i.ee
  %i.er = or <16 x i8> %i.el, %i.ef
  store <16 x i8> %i.em, ptr %.034109, align 1, !tbaa !8, !alias.scope !27
  %i.es = getelementptr inbounds nuw i8, ptr %.034109, i64 16
  store <16 x i8> %i.en, ptr %i.es, align 1, !tbaa !8, !alias.scope !27
  %i.et = getelementptr inbounds nuw i8, ptr %.034109, i64 32
  store <16 x i8> %i.eo, ptr %i.et, align 1, !tbaa !8, !alias.scope !27
  %i.eu = getelementptr inbounds nuw i8, ptr %.034109, i64 48
  store <16 x i8> %i.ep, ptr %i.eu, align 1, !tbaa !8, !alias.scope !27
  %i.ev = getelementptr inbounds nuw i8, ptr %.034109, i64 64
  store <16 x i8> %i.eq, ptr %i.ev, align 1, !tbaa !8, !alias.scope !27
  %i.ew = getelementptr inbounds nuw i8, ptr %.034109, i64 80
  store <16 x i8> %i.er, ptr %i.ew, align 1, !tbaa !8, !alias.scope !27
  %i.ex = getelementptr inbounds nuw i8, ptr %.032110, i64 32 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.038107, i64 16 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.036108, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.034109, i64 96 ; 2 uses
  %i.fb = add nuw nsw i32 %i.c, 32                ; 2 uses
  %.not = icmp sgt i32 %i.fb, %4
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !25

.lr.ph120:                                        ; preds = %.preheader, %.lr.ph120
  %.1119 = phi i32 [ %i.gz, %.lr.ph120 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.133118 = phi ptr [ %i.gu, %.lr.ph120 ], [ %.032.lcssa, %.preheader ] ; 2 uses
  %.135117 = phi ptr [ %i.gt, %.lr.ph120 ], [ %.034.lcssa, %.preheader ] ; 4 uses
  %.137116 = phi ptr [ %i.gy, %.lr.ph120 ], [ %.036.lcssa, %.preheader ] ; 2 uses
  %.139115 = phi ptr [ %i.gx, %.lr.ph120 ], [ %.038.lcssa, %.preheader ] ; 2 uses
  %i.fc = load i8, ptr %.133118, align 1, !tbaa !8
  %i.fd = zext i8 %i.fc to i32
  %i.fe = load i8, ptr %.139115, align 1, !tbaa !8
  %i.ff = zext i8 %i.fe to i32                    ; 2 uses
  %i.fg = load i8, ptr %.137116, align 1, !tbaa !8
  %i.fh = zext i8 %i.fg to i32                    ; 2 uses
  %i.fi = mul nuw nsw i32 %i.fd, 19077
  %i.fj = lshr i32 %i.fi, 8                       ; 3 uses
  %i.fk = mul nuw nsw i32 %i.ff, 33050
  %i.fl = lshr i32 %i.fk, 8
  %i.fm = add nuw nsw i32 %i.fl, %i.fj            ; 2 uses
  %i.fn = add nsw i32 %i.fm, -17685               ; 2 uses
  %i.fo = icmp ult i32 %i.fn, 16384
  %i.fp = lshr i32 %i.fn, 6
  %i.fq = icmp samesign ult i32 %i.fm, 17685
  %i.fr = select i1 %i.fq, i32 0, i32 255
  %i.fs = select i1 %i.fo, i32 %i.fp, i32 %i.fr
  %i.ft = trunc i32 %i.fs to i8
  store i8 %i.ft, ptr %.135117, align 1, !tbaa !8
  %i.fu = mul nuw nsw i32 %i.ff, 6419
  %i.fv = lshr i32 %i.fu, 8
  %i.fw = mul nuw nsw i32 %i.fh, 13320
  %i.fx = lshr i32 %i.fw, 8
  %i.fy = add nuw nsw i32 %i.fv, %i.fx
  %i.fz = sub nsw i32 %i.fj, %i.fy                ; 2 uses
  %i.ga = add nsw i32 %i.fz, 8708                 ; 2 uses
  %i.gb = icmp ult i32 %i.ga, 16384
  %i.gc = lshr i32 %i.ga, 6
  %i.gd = icmp slt i32 %i.fz, -8708
  %i.ge = select i1 %i.gd, i32 0, i32 255
  %i.gf = select i1 %i.gb, i32 %i.gc, i32 %i.ge
  %i.gg = trunc i32 %i.gf to i8
  %i.gh = getelementptr inbounds nuw i8, ptr %.135117, i64 1
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !8
  %i.gi = mul nuw nsw i32 %i.fh, 26149
  %i.gj = lshr i32 %i.gi, 8
  %i.gk = add nuw nsw i32 %i.gj, %i.fj            ; 2 uses
  %i.gl = add nsw i32 %i.gk, -14234               ; 2 uses
  %i.gm = icmp ult i32 %i.gl, 16384
  %i.gn = lshr i32 %i.gl, 6
  %i.go = icmp samesign ult i32 %i.gk, 14234
  %i.gp = select i1 %i.go, i32 0, i32 255
  %i.gq = select i1 %i.gm, i32 %i.gn, i32 %i.gp
  %i.gr = trunc i32 %i.gq to i8
  %i.gs = getelementptr inbounds nuw i8, ptr %.135117, i64 2
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !8
  %i.gt = getelementptr inbounds nuw i8, ptr %.135117, i64 3
  %i.gu = getelementptr inbounds nuw i8, ptr %.133118, i64 1
  %i.gv = and i32 %.1119, 1
  %i.gw = zext nneg i32 %i.gv to i64              ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.139115, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %.137116, i64 %i.gw
  %i.gz = add nuw nsw i32 %.1119, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gz, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph120, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph120, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPInitConvertARGBToYUVSSE41() local_unnamed_addr #1 {
bb.a:
  store ptr @ConvertARGBToY_SSE41, ptr @WebPConvertARGBToY, align 8, !tbaa !10
  store ptr @ConvertARGBToUV_SSE41, ptr @WebPConvertARGBToUV, align 8, !tbaa !10
  store ptr @ConvertRGBToY_SSE41, ptr @WebPConvertRGBToY, align 8, !tbaa !10
  store ptr @ConvertBGRToY_SSE41, ptr @WebPConvertBGRToY, align 8, !tbaa !10
  store ptr @ConvertRGBA32ToUV_SSE41, ptr @WebPConvertRGBA32ToUV, align 8, !tbaa !10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ConvertARGBToY_SSE41(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i32 noundef %2) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 15
  br i1 %i.a, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = and i32 %2, 2147483632
  %i.c = zext nneg i32 %i.b to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.d = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %.preheader.loopexit ] ; 2 uses
  %i.e = icmp slt i32 %.0.lcssa, %2
  br i1 %i.e, label %.lr.ph33.preheader, label %._crit_edge

.lr.ph33.preheader:                               ; preds = %.preheader
  %i.f = zext i32 %.0.lcssa to i64                ; 4 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %i.g = sub nsw i64 %wide.trip.count, %i.f       ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph33.preheader38, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph33.preheader
  %n.vec = and i64 %i.g, -4                       ; 3 uses
  %i.h = add nsw i64 %n.vec, %i.f
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = add nuw i64 %index, %i.f                 ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i
  %wide.load = load <4 x i32>, ptr %i.j, align 4, !tbaa !33 ; 3 uses
  %i.k = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.l = and <4 x i32> %i.k, splat (i32 255)
  %i.m = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.n = and <4 x i32> %i.m, splat (i32 255)
  %i.o = and <4 x i32> %wide.load, splat (i32 255)
  %i.p = mul nuw nsw <4 x i32> %i.l, splat (i32 16839)
  %i.q = mul nuw nsw <4 x i32> %i.n, splat (i32 33059)
  %i.r = mul nuw nsw <4 x i32> %i.o, splat (i32 6420)
  %i.s = add nuw nsw <4 x i32> %i.r, splat (i32 1081344)
  %i.t = add nuw nsw <4 x i32> %i.s, %i.p
  %i.u = add nuw nsw <4 x i32> %i.t, %i.q
  %i.v = lshr <4 x i32> %i.u, splat (i32 16)
  %i.w = trunc nuw <4 x i32> %i.v to <4 x i8>
end_hunk_0
