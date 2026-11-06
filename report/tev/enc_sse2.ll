Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_sse2?download=true
inline.NumInlined: 114
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@VP8CollectHistogram = external local_unnamed_addr global ptr, align 8
@VP8EncPredLuma16 = external local_unnamed_addr global ptr, align 8
@VP8EncPredChroma8 = external local_unnamed_addr global ptr, align 8
@VP8EncPredLuma4 = external local_unnamed_addr global ptr, align 8
@VP8EncQuantizeBlock = external local_unnamed_addr global ptr, align 8
@VP8EncQuantize2Blocks = external local_unnamed_addr global ptr, align 8
@VP8EncQuantizeBlockWHT = external local_unnamed_addr global ptr, align 8
@VP8ITransform = external local_unnamed_addr global ptr, align 8
@VP8FTransform = external local_unnamed_addr global ptr, align 8
@VP8FTransform2 = external local_unnamed_addr global ptr, align 8
@VP8FTransformWHT = external local_unnamed_addr global ptr, align 8
@VP8SSE16x16 = external local_unnamed_addr global ptr, align 8
@VP8SSE16x8 = external local_unnamed_addr global ptr, align 8
@VP8SSE8x8 = external local_unnamed_addr global ptr, align 8
@VP8SSE4x4 = external local_unnamed_addr global ptr, align 8
@VP8TDisto4x4 = external local_unnamed_addr global ptr, align 8
@VP8TDisto16x16 = external local_unnamed_addr global ptr, align 8
@VP8Mean16x4 = external local_unnamed_addr global ptr, align 8
@VP8DspScan = external local_unnamed_addr constant [24 x i32], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8EncDspInitSSE2() local_unnamed_addr #0 {
bb.a:
  store ptr @CollectHistogram_SSE2, ptr @VP8CollectHistogram, align 8, !tbaa !14
  store ptr @Intra16Preds_SSE2, ptr @VP8EncPredLuma16, align 8, !tbaa !14
  store ptr @IntraChromaPreds_SSE2, ptr @VP8EncPredChroma8, align 8, !tbaa !14
  store ptr @Intra4Preds_SSE2, ptr @VP8EncPredLuma4, align 8, !tbaa !14
  store ptr @QuantizeBlock_SSE2, ptr @VP8EncQuantizeBlock, align 8, !tbaa !14
  store ptr @Quantize2Blocks_SSE2, ptr @VP8EncQuantize2Blocks, align 8, !tbaa !14
  store ptr @QuantizeBlockWHT_SSE2, ptr @VP8EncQuantizeBlockWHT, align 8, !tbaa !14
  store ptr @ITransform_SSE2, ptr @VP8ITransform, align 8, !tbaa !14
  store ptr @FTransform_SSE2, ptr @VP8FTransform, align 8, !tbaa !14
  store ptr @FTransform2_SSE2, ptr @VP8FTransform2, align 8, !tbaa !14
  store ptr @FTransformWHT_SSE2, ptr @VP8FTransformWHT, align 8, !tbaa !14
  store ptr @SSE16x16_SSE2, ptr @VP8SSE16x16, align 8, !tbaa !14
  store ptr @SSE16x8_SSE2, ptr @VP8SSE16x8, align 8, !tbaa !14
  store ptr @SSE8x8_SSE2, ptr @VP8SSE8x8, align 8, !tbaa !14
  store ptr @SSE4x4_SSE2, ptr @VP8SSE4x4, align 8, !tbaa !14
  store ptr @Disto4x4_SSE2, ptr @VP8TDisto4x4, align 8, !tbaa !14
  store ptr @Disto16x16_SSE2, ptr @VP8TDisto16x16, align 8, !tbaa !14
  store ptr @Mean16x4_SSE2, ptr @VP8Mean16x4, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CollectHistogram_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noalias noundef %4) #1 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.b = icmp slt i32 %2, %3
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %wide.trip.count = sext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.c, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr @VP8DspScan, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.f ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.i = load i64, ptr %i.g, align 1, !tbaa !9, !alias.scope !19
  %i.j = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.l = load i64, ptr %i.k, align 1, !tbaa !9, !alias.scope !19
  %i.m = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.o = load i64, ptr %i.n, align 1, !tbaa !9, !alias.scope !19
  %i.p = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.r = load i64, ptr %i.q, align 1, !tbaa !9, !alias.scope !19
  %i.s = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %i.t = bitcast <2 x i64> %i.j to <8 x i16>
  %i.u = bitcast <2 x i64> %i.m to <8 x i16>
  %i.v = shufflevector <8 x i16> %i.t, <8 x i16> %i.u, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.w = bitcast <2 x i64> %i.p to <8 x i16>
  %i.x = bitcast <2 x i64> %i.s to <8 x i16>
  %i.y = shufflevector <8 x i16> %i.w, <8 x i16> %i.x, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.z = load i64, ptr %i.h, align 1, !tbaa !9, !alias.scope !20
  %i.aa = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ac = load i64, ptr %i.ab, align 1, !tbaa !9, !alias.scope !20
  %i.ad = insertelement <2 x i64> poison, i64 %i.ac, i64 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.af = load i64, ptr %i.ae, align 1, !tbaa !9, !alias.scope !20
  %i.ag = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.ai = load i64, ptr %i.ah, align 1, !tbaa !9, !alias.scope !20
  %i.aj = insertelement <2 x i64> poison, i64 %i.ai, i64 0
  %i.ak = bitcast <2 x i64> %i.aa to <8 x i16>
  %i.al = bitcast <2 x i64> %i.ad to <8 x i16>
  %i.am = shufflevector <8 x i16> %i.ak, <8 x i16> %i.al, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.an = bitcast <2 x i64> %i.ag to <8 x i16>
  %i.ao = bitcast <2 x i64> %i.aj to <8 x i16>
  %i.ap = shufflevector <8 x i16> %i.an, <8 x i16> %i.ao, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aq = bitcast <8 x i16> %i.v to <16 x i8>
  %i.ar = shufflevector <16 x i8> %i.aq, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.as = bitcast <8 x i16> %i.y to <16 x i8>
  %i.at = shufflevector <16 x i8> %i.as, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.au = bitcast <8 x i16> %i.am to <16 x i8>
  %i.av = shufflevector <16 x i8> %i.au, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.aw = bitcast <8 x i16> %i.ap to <16 x i8>
  %i.ax = shufflevector <16 x i8> %i.aw, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ay = bitcast <16 x i8> %i.ar to <8 x i16>
  %i.az = bitcast <16 x i8> %i.av to <8 x i16>
  %i.ba = sub nsw <8 x i16> %i.ay, %i.az
  %i.bb = bitcast <16 x i8> %i.at to <8 x i16>
  %i.bc = bitcast <16 x i8> %i.ax to <8 x i16>
  %i.bd = sub nsw <8 x i16> %i.bb, %i.bc
  %i.be = shufflevector <8 x i16> %i.ba, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 7, i32 6>
  %i.bf = bitcast <8 x i16> %i.be to <2 x i64>    ; 2 uses
  %i.bg = shufflevector <8 x i16> %i.bd, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 7, i32 6>
  %i.bh = bitcast <8 x i16> %i.bg to <2 x i64>    ; 2 uses
  %i.bi = shufflevector <2 x i64> %i.bf, <2 x i64> %i.bh, <2 x i32> <i32 0, i32 2>
  %i.bj = shufflevector <2 x i64> %i.bf, <2 x i64> %i.bh, <2 x i32> <i32 1, i32 3>
  %i.bk = bitcast <2 x i64> %i.bi to <8 x i16>    ; 2 uses
  %i.bl = bitcast <2 x i64> %i.bj to <8 x i16>    ; 2 uses
  %i.bm = add <8 x i16> %i.bk, %i.bl              ; 2 uses
  %i.bn = sub <8 x i16> %i.bk, %i.bl              ; 2 uses
  %i.bo = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bm, <8 x i16> splat (i16 8))
  %i.bp = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bm, <8 x i16> <i16 8, i16 -8, i16 8, i16 -8, i16 8, i16 -8, i16 8, i16 -8>)
  %i.bq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bn, <8 x i16> <i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217>)
  %i.br = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bn, <8 x i16> <i16 2217, i16 -5352, i16 2217, i16 -5352, i16 2217, i16 -5352, i16 2217, i16 -5352>)
  %i.bs = add <4 x i32> %i.bq, splat (i32 1812)
  %i.bt = add <4 x i32> %i.br, splat (i32 937)
  %i.bu = ashr <4 x i32> %i.bs, splat (i32 9)
  %i.bv = ashr <4 x i32> %i.bt, splat (i32 9)
  %i.bw = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bo, <4 x i32> %i.bp) ; 2 uses
  %i.bx = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bu, <4 x i32> %i.bv) ; 2 uses
  %i.by = shufflevector <8 x i16> %i.bw, <8 x i16> %i.bx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bz = shufflevector <8 x i16> %i.bw, <8 x i16> %i.bx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ca = bitcast <8 x i16> %i.by to <4 x i32>    ; 2 uses
  %i.cb = bitcast <8 x i16> %i.bz to <4 x i32>    ; 2 uses
  %i.cc = shufflevector <4 x i32> %i.ca, <4 x i32> %i.cb, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %5 = shufflevector <4 x i32> %i.ca, <4 x i32> %i.cb, <4 x i32> <i32 3, i32 7, i32 2, i32 6>
  %i.cd = bitcast <4 x i32> %i.cc to <8 x i16>    ; 3 uses
  %i.ce = bitcast <4 x i32> %5 to <8 x i16>       ; 3 uses
  %i.cf = sub <8 x i16> %i.cd, %i.ce              ; 2 uses
  %i.cg = bitcast <8 x i16> %i.cf to <2 x i64>
  %i.ch = shufflevector <2 x i64> %i.cg, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.ci = bitcast <2 x i64> %i.ch to <8 x i16>
  %i.cj = shufflevector <8 x i16> %i.ci, <8 x i16> %i.cf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ck = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cj, <8 x i16> <i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352>)
  %i.cl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cj, <8 x i16> <i16 -5352, i16 2217, i16 -5352, i16 2217, i16 -5352, i16 2217, i16 -5352, i16 2217>)
  %i.cm = add <4 x i32> %i.ck, splat (i32 77536)
  %i.cn = add <4 x i32> %i.cl, splat (i32 51000)
  %i.co = ashr <4 x i32> %i.cm, splat (i32 16)
  %i.cp = ashr <4 x i32> %i.cn, splat (i32 16)
  %i.cq = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.co, <4 x i32> poison)
  %i.cr = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cp, <4 x i32> poison)
  %i.cs = bitcast <8 x i16> %i.cr to <2 x i64>
  %i.ct = icmp eq <8 x i16> %i.cd, %i.ce
  %i.cu = sext <8 x i1> %i.ct to <8 x i16>
  %i.cv = add <8 x i16> %i.cq, %i.cu
  %i.cw = bitcast <8 x i16> %i.cv to <2 x i64>
  %i.cx = add <8 x i16> %i.ce, %i.cd              ; 2 uses
  %i.cy = bitcast <8 x i16> %i.cx to <2 x i64>
  %i.cz = add <8 x i16> %i.cx, splat (i16 7)      ; 2 uses
  %i.da = shufflevector <2 x i64> %i.cy, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.db = bitcast <2 x i64> %i.da to <8 x i16>    ; 2 uses
  %i.dc = add <8 x i16> %i.cz, %i.db
  %i.dd = sub <8 x i16> %i.cz, %i.db
  %i.de = ashr <8 x i16> %i.dc, splat (i16 4)
  %i.df = bitcast <8 x i16> %i.de to <2 x i64>
  %i.dg = ashr <8 x i16> %i.dd, splat (i16 4)
  %i.dh = bitcast <8 x i16> %i.dg to <2 x i64>
  %i.di = shufflevector <2 x i64> %i.df, <2 x i64> %i.cw, <2 x i32> <i32 0, i32 2>
  %i.dj = shufflevector <2 x i64> %i.dh, <2 x i64> %i.cs, <2 x i32> <i32 0, i32 2>
  %i.dk = bitcast <2 x i64> %i.di to <8 x i16>
  %i.dl = bitcast <2 x i64> %i.dj to <8 x i16>
  %i.dm = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.dk, i1 false)
  %i.dn = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.dl, i1 false)
  %i.do = ashr <8 x i16> %i.dm, splat (i16 3)
  %i.dp = ashr <8 x i16> %i.dn, splat (i16 3)
  %i.dq = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.do, <8 x i16> splat (i16 31)) ; 8 uses
  %i.dr = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.dp, <8 x i16> splat (i16 31)) ; 8 uses
  %.sroa.0.0.vec.extract = extractelement <8 x i16> %i.dq, i64 0
  %i.ds = sext i16 %.sroa.0.0.vec.extract to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !8
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !8
  %.sroa.0.2.vec.extract = extractelement <8 x i16> %i.dq, i64 1
  %i.dw = sext i16 %.sroa.0.2.vec.extract to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dw ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !8
  %i.dz = add nsw i32 %i.dy, 1
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !8
  %.sroa.0.4.vec.extract = extractelement <8 x i16> %i.dq, i64 2
  %i.ea = sext i16 %.sroa.0.4.vec.extract to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !8
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !8
  %.sroa.0.6.vec.extract = extractelement <8 x i16> %i.dq, i64 3
  %i.ee = sext i16 %.sroa.0.6.vec.extract to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ee ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !8
  %i.eh = add nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !8
  %.sroa.0.8.vec.extract = extractelement <8 x i16> %i.dq, i64 4
  %i.ei = sext i16 %.sroa.0.8.vec.extract to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ei ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !8
  %i.el = add nsw i32 %i.ek, 1
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !8
  %.sroa.0.10.vec.extract = extractelement <8 x i16> %i.dq, i64 5
  %i.em = sext i16 %.sroa.0.10.vec.extract to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !8
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !8
  %.sroa.0.12.vec.extract = extractelement <8 x i16> %i.dq, i64 6
  %i.eq = sext i16 %.sroa.0.12.vec.extract to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.eq ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !8
  %i.et = add nsw i32 %i.es, 1
  store i32 %i.et, ptr %i.er, align 4, !tbaa !8
  %.sroa.0.14.vec.extract = extractelement <8 x i16> %i.dq, i64 7
  %i.eu = sext i16 %.sroa.0.14.vec.extract to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.eu ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !8
  %i.ex = add nsw i32 %i.ew, 1
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !8
  %.sroa.12.16.vec.extract = extractelement <8 x i16> %i.dr, i64 0
  %i.ey = sext i16 %.sroa.12.16.vec.extract to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !8
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !8
  %.sroa.12.18.vec.extract = extractelement <8 x i16> %i.dr, i64 1
  %i.fc = sext i16 %.sroa.12.18.vec.extract to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fc ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !8
  %i.ff = add nsw i32 %i.fe, 1
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !8
  %.sroa.12.20.vec.extract = extractelement <8 x i16> %i.dr, i64 2
  %i.fg = sext i16 %.sroa.12.20.vec.extract to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fg ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !8
  %i.fj = add nsw i32 %i.fi, 1
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !8
  %.sroa.12.22.vec.extract = extractelement <8 x i16> %i.dr, i64 3
  %i.fk = sext i16 %.sroa.12.22.vec.extract to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fk ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !8
  %i.fn = add nsw i32 %i.fm, 1
  store i32 %i.fn, ptr %i.fl, align 4, !tbaa !8
  %.sroa.12.24.vec.extract = extractelement <8 x i16> %i.dr, i64 4
  %i.fo = sext i16 %.sroa.12.24.vec.extract to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fo ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !8
  %i.fr = add nsw i32 %i.fq, 1
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !8
  %.sroa.12.26.vec.extract = extractelement <8 x i16> %i.dr, i64 5
  %i.fs = sext i16 %.sroa.12.26.vec.extract to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fs ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !8
  %i.fv = add nsw i32 %i.fu, 1
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !8
  %.sroa.12.28.vec.extract = extractelement <8 x i16> %i.dr, i64 6
  %i.fw = sext i16 %.sroa.12.28.vec.extract to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !8
  %i.fz = add nsw i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !8
  %.sroa.12.30.vec.extract = extractelement <8 x i16> %i.dr, i64 7
  %i.ga = sext i16 %.sroa.12.30.vec.extract to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ga ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !8
  %i.gd = add nsw i32 %i.gc, 1
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !8
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @VP8SetHistogramData(ptr noundef nonnull %i.a, ptr noundef %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @Intra16Preds_SSE2(ptr noalias nofree noundef writeonly initializes((0, 1024)) %0, ptr noalias nofree noundef readonly captures(address_is_null) %1, ptr noalias nofree noundef readonly captures(address_is_null) %2) #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %.not.i = icmp eq ptr %2, null                  ; 4 uses
  %.not12.i = icmp eq ptr %1, null                ; 3 uses
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not12.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val17.i = load <16 x i8>, ptr %1, align 16, !tbaa !9, !alias.scope !52
  %.val1418.i = load <16 x i8>, ptr %2, align 16, !tbaa !9, !alias.scope !53
  %i.a = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.val1418.i, <16 x i8> zeroinitializer)
  %i.b = bitcast <2 x i64> %i.a to <4 x i32>      ; 2 uses
  %i.c = shufflevector <4 x i32> %i.b, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.d = add <4 x i32> %i.c, %i.b
  %i.e = extractelement <4 x i32> %i.d, i64 0
  %i.f = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.val17.i, <16 x i8> zeroinitializer)
  %i.g = bitcast <2 x i64> %i.f to <4 x i32>      ; 2 uses
  %i.h = shufflevector <4 x i32> %i.g, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.i = add <4 x i32> %i.h, %i.g
  %i.j = extractelement <4 x i32> %i.i, i64 0
  %i.k = add i32 %i.e, 16
  %i.l = add i32 %i.k, %i.j
  %i.m = lshr i32 %i.l, 5
  %i.n = trunc i32 %i.m to i8
  %i.o = insertelement <16 x i8> poison, i8 %i.n, i64 0
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %DC16Mode_SSE2.exit

bb.d:                                             ; preds = %bb.b
  %.val1519.i = load <16 x i8>, ptr %2, align 16, !tbaa !9, !alias.scope !53
  %i.q = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.val1519.i, <16 x i8> zeroinitializer)
  %i.r = bitcast <2 x i64> %i.q to <4 x i32>      ; 2 uses
  %i.s = shufflevector <4 x i32> %i.r, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.t = add <4 x i32> %i.s, %i.r
  %i.u = extractelement <4 x i32> %i.t, i64 0
  %i.v = add nsw i32 %i.u, 8
  %i.w = lshr i32 %i.v, 4
  %i.x = trunc i32 %i.w to i8
  %i.y = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %DC16Mode_SSE2.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not12.i, label %DC16Mode_SSE2.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1620.i = load <16 x i8>, ptr %1, align 16, !tbaa !9, !alias.scope !52
  %i.aa = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.val1620.i, <16 x i8> zeroinitializer)
  %i.ab = bitcast <2 x i64> %i.aa to <4 x i32>    ; 2 uses
end_hunk_0
begin_hunk_1_@QuantizeBlockWHT_SSE2:bb.a
  %i.bp = extractelement <8 x i16> %i.bd, i64 3
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !12, !noalias !239
  store i16 %i.bp, ptr %i.bm, align 2, !tbaa !12, !noalias !239
  %i.bq = icmp ne <16 x i8> %i.bl, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16
  %i.bs = icmp ne i16 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  ret i32 %i.bt
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @ITransform_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) initializes((0, 4), (32, 36), (64, 68), (96, 100)) %2, i32 noundef %3) #2 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.a = load <2 x i64>, ptr %1, align 1, !tbaa !9, !alias.scope !248 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <2 x i64>, ptr %i.b, align 1, !tbaa !9, !alias.scope !248 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 1, !tbaa !9, !alias.scope !248 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load <2 x i64>, ptr %i.f, align 1, !tbaa !9, !alias.scope !248 ; 2 uses
  %i.h = shufflevector <2 x i64> %i.a, <2 x i64> %i.e, <2 x i32> <i32 0, i32 2>
  %i.i = shufflevector <2 x i64> %i.a, <2 x i64> %i.e, <2 x i32> <i32 1, i32 3>
  %i.j = shufflevector <2 x i64> %i.c, <2 x i64> %i.g, <2 x i32> <i32 0, i32 2>
  %i.k = shufflevector <2 x i64> %i.c, <2 x i64> %i.g, <2 x i32> <i32 1, i32 3>
  %i.l = bitcast <2 x i64> %i.h to <8 x i16>      ; 2 uses
  %i.m = bitcast <2 x i64> %i.j to <8 x i16>      ; 2 uses
  %i.n = add <8 x i16> %i.m, %i.l                 ; 2 uses
  %i.o = sub <8 x i16> %i.l, %i.m                 ; 2 uses
  %i.p = bitcast <2 x i64> %i.i to <8 x i16>      ; 4 uses
  %i.q = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.p, <8 x i16> splat (i16 -30068))
  %i.r = bitcast <2 x i64> %i.k to <8 x i16>      ; 4 uses
  %i.s = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.r, <8 x i16> splat (i16 20091))
  %i.t = sub <8 x i16> %i.p, %i.r
  %i.u = sub <8 x i16> %i.q, %i.s
  %i.v = add <8 x i16> %i.u, %i.t                 ; 2 uses
  %i.w = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.p, <8 x i16> splat (i16 20091))
  %i.x = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.r, <8 x i16> splat (i16 -30068))
  %i.y = add <8 x i16> %i.r, %i.p
  %i.z = add <8 x i16> %i.y, %i.w
  %i.aa = add <8 x i16> %i.z, %i.x                ; 2 uses
  %i.ab = add <8 x i16> %i.aa, %i.n               ; 2 uses
  %i.ac = add <8 x i16> %i.v, %i.o                ; 2 uses
  %i.ad = sub <8 x i16> %i.o, %i.v                ; 2 uses
  %i.ae = sub <8 x i16> %i.n, %i.aa               ; 2 uses
  %i.af = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ag = shufflevector <8 x i16> %i.ad, <8 x i16> %i.ae, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ah = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ai = shufflevector <8 x i16> %i.ad, <8 x i16> %i.ae, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aj = bitcast <8 x i16> %i.af to <4 x i32>    ; 2 uses
  %i.ak = bitcast <8 x i16> %i.ag to <4 x i32>    ; 2 uses
  %i.al = shufflevector <4 x i32> %i.aj, <4 x i32> %i.ak, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.am = bitcast <4 x i32> %i.al to <2 x i64>    ; 2 uses
  %i.an = bitcast <8 x i16> %i.ah to <4 x i32>    ; 2 uses
  %i.ao = bitcast <8 x i16> %i.ai to <4 x i32>    ; 2 uses
  %i.ap = shufflevector <4 x i32> %i.an, <4 x i32> %i.ao, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.aq = bitcast <4 x i32> %i.ap to <2 x i64>    ; 2 uses
  %i.ar = shufflevector <4 x i32> %i.aj, <4 x i32> %i.ak, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.as = bitcast <4 x i32> %i.ar to <2 x i64>    ; 2 uses
  %i.at = shufflevector <4 x i32> %i.an, <4 x i32> %i.ao, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.au = bitcast <4 x i32> %i.at to <2 x i64>    ; 2 uses
  %i.av = shufflevector <2 x i64> %i.am, <2 x i64> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.aw = shufflevector <2 x i64> %i.am, <2 x i64> %i.aq, <2 x i32> <i32 1, i32 3>
  %i.ax = shufflevector <2 x i64> %i.as, <2 x i64> %i.au, <2 x i32> <i32 0, i32 2>
  %i.ay = shufflevector <2 x i64> %i.as, <2 x i64> %i.au, <2 x i32> <i32 1, i32 3>
  %i.az = bitcast <2 x i64> %i.av to <8 x i16>
  %i.ba = add <8 x i16> %i.az, splat (i16 4)      ; 2 uses
  %i.bb = bitcast <2 x i64> %i.ax to <8 x i16>    ; 2 uses
  %i.bc = add <8 x i16> %i.ba, %i.bb              ; 2 uses
  %i.bd = sub <8 x i16> %i.ba, %i.bb              ; 2 uses
  %i.be = bitcast <2 x i64> %i.aw to <8 x i16>    ; 4 uses
  %i.bf = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.be, <8 x i16> splat (i16 -30068))
  %i.bg = bitcast <2 x i64> %i.ay to <8 x i16>    ; 4 uses
  %i.bh = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.bg, <8 x i16> splat (i16 20091))
  %i.bi = sub <8 x i16> %i.be, %i.bg
  %i.bj = sub <8 x i16> %i.bf, %i.bh
  %i.bk = add <8 x i16> %i.bj, %i.bi              ; 2 uses
  %i.bl = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.be, <8 x i16> splat (i16 20091))
  %i.bm = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.bg, <8 x i16> splat (i16 -30068))
  %i.bn = add <8 x i16> %i.be, %i.bg
  %i.bo = add <8 x i16> %i.bn, %i.bm
  %i.bp = add <8 x i16> %i.bo, %i.bl              ; 2 uses
  %i.bq = add <8 x i16> %i.bp, %i.bc
  %i.br = add <8 x i16> %i.bk, %i.bd
  %i.bs = sub <8 x i16> %i.bd, %i.bk
  %i.bt = sub <8 x i16> %i.bc, %i.bp
  %i.bu = ashr <8 x i16> %i.bq, splat (i16 3)     ; 2 uses
  %i.bv = ashr <8 x i16> %i.br, splat (i16 3)     ; 2 uses
  %i.bw = ashr <8 x i16> %i.bs, splat (i16 3)     ; 2 uses
  %i.bx = ashr <8 x i16> %i.bt, splat (i16 3)     ; 2 uses
  %i.by = shufflevector <8 x i16> %i.bu, <8 x i16> %i.bv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bz = shufflevector <8 x i16> %i.bw, <8 x i16> %i.bx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ca = shufflevector <8 x i16> %i.bu, <8 x i16> %i.bv, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cb = shufflevector <8 x i16> %i.bw, <8 x i16> %i.bx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cc = bitcast <8 x i16> %i.by to <4 x i32>    ; 2 uses
  %i.cd = bitcast <8 x i16> %i.bz to <4 x i32>    ; 2 uses
  %i.ce = shufflevector <4 x i32> %i.cc, <4 x i32> %i.cd, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.cf = bitcast <4 x i32> %i.ce to <2 x i64>    ; 2 uses
  %i.cg = bitcast <8 x i16> %i.ca to <4 x i32>    ; 2 uses
  %i.ch = bitcast <8 x i16> %i.cb to <4 x i32>    ; 2 uses
  %i.ci = shufflevector <4 x i32> %i.cg, <4 x i32> %i.ch, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.cj = bitcast <4 x i32> %i.ci to <2 x i64>    ; 2 uses
  %i.ck = shufflevector <4 x i32> %i.cc, <4 x i32> %i.cd, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.cl = bitcast <4 x i32> %i.ck to <2 x i64>    ; 2 uses
  %i.cm = shufflevector <4 x i32> %i.cg, <4 x i32> %i.ch, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.cn = bitcast <4 x i32> %i.cm to <2 x i64>    ; 2 uses
  %i.co = shufflevector <2 x i64> %i.cf, <2 x i64> %i.cj, <2 x i32> <i32 0, i32 2>
  %i.cp = shufflevector <2 x i64> %i.cf, <2 x i64> %i.cj, <2 x i32> <i32 1, i32 3>
  %i.cq = shufflevector <2 x i64> %i.cl, <2 x i64> %i.cn, <2 x i32> <i32 0, i32 2>
  %i.cr = shufflevector <2 x i64> %i.cl, <2 x i64> %i.cn, <2 x i32> <i32 1, i32 3>
  %i.cs = load i64, ptr %0, align 1, !tbaa !9, !alias.scope !247
  %i.ct = insertelement <2 x i64> poison, i64 %i.cs, i64 0
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cv = load i64, ptr %i.cu, align 1, !tbaa !9, !alias.scope !247
  %i.cw = insertelement <2 x i64> poison, i64 %i.cv, i64 0
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cy = load i64, ptr %i.cx, align 1, !tbaa !9, !alias.scope !247
  %i.cz = insertelement <2 x i64> poison, i64 %i.cy, i64 0
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.db = load i64, ptr %i.da, align 1, !tbaa !9, !alias.scope !247
  %i.dc = insertelement <2 x i64> poison, i64 %i.db, i64 0
  %i.dd = bitcast <2 x i64> %i.ct to <16 x i8>
  %i.de = shufflevector <16 x i8> %i.dd, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.df = bitcast <2 x i64> %i.cw to <16 x i8>
  %i.dg = shufflevector <16 x i8> %i.df, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dh = bitcast <2 x i64> %i.cz to <16 x i8>
  %i.di = shufflevector <16 x i8> %i.dh, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dj = bitcast <2 x i64> %i.dc to <16 x i8>
  %i.dk = shufflevector <16 x i8> %i.dj, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dl = bitcast <16 x i8> %i.de to <8 x i16>
  %i.dm = bitcast <2 x i64> %i.co to <8 x i16>
  %i.dn = add <8 x i16> %i.dm, %i.dl
  %i.do = bitcast <16 x i8> %i.dg to <8 x i16>
  %i.dp = bitcast <2 x i64> %i.cp to <8 x i16>
  %i.dq = add <8 x i16> %i.dp, %i.do
  %i.dr = bitcast <16 x i8> %i.di to <8 x i16>
  %i.ds = bitcast <2 x i64> %i.cq to <8 x i16>
  %i.dt = add <8 x i16> %i.ds, %i.dr
  %i.du = bitcast <16 x i8> %i.dk to <8 x i16>
  %i.dv = bitcast <2 x i64> %i.cr to <8 x i16>
  %i.dw = add <8 x i16> %i.dv, %i.du
  %i.dx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dn, <8 x i16> poison)
  %i.dy = bitcast <16 x i8> %i.dx to <2 x i64>
  %i.dz = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dq, <8 x i16> poison)
  %i.ea = bitcast <16 x i8> %i.dz to <2 x i64>
  %i.eb = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dt, <8 x i16> poison)
  %i.ec = bitcast <16 x i8> %i.eb to <2 x i64>
  %i.ed = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dw, <8 x i16> poison)
  %i.ee = bitcast <16 x i8> %i.ed to <2 x i64>
  %i.ef = extractelement <2 x i64> %i.dy, i64 0
  store i64 %i.ef, ptr %2, align 1, !tbaa !9, !alias.scope !249
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.eh = extractelement <2 x i64> %i.ea, i64 0
  store i64 %i.eh, ptr %i.eg, align 1, !tbaa !9, !alias.scope !249
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ej = extractelement <2 x i64> %i.ec, i64 0
  store i64 %i.ej, ptr %i.ei, align 1, !tbaa !9, !alias.scope !249
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.el = extractelement <2 x i64> %i.ee, i64 0
  store i64 %i.el, ptr %i.ek, align 1, !tbaa !9, !alias.scope !249
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val = load <2 x i64>, ptr %1, align 1, !tbaa !9 ; 2 uses
  %i.em = getelementptr i8, ptr %1, i64 16
  %.val6 = load <2 x i64>, ptr %i.em, align 1, !tbaa !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.en = shufflevector <2 x i64> %.val, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.eo = shufflevector <2 x i64> %.val6, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.ep = bitcast <2 x i64> %.val to <8 x i16>    ; 2 uses
  %i.eq = bitcast <2 x i64> %.val6 to <8 x i16>   ; 2 uses
  %i.er = add <8 x i16> %i.eq, %i.ep              ; 2 uses
  %i.es = bitcast <8 x i16> %i.er to <2 x i64>
  %i.et = sub <8 x i16> %i.ep, %i.eq
  %i.eu = bitcast <8 x i16> %i.et to <2 x i64>    ; 2 uses
  %i.ev = bitcast <2 x i64> %i.en to <8 x i16>
  %i.ew = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.ev, <8 x i16> <i16 -30068, i16 -30068, i16 -30068, i16 -30068, i16 20091, i16 20091, i16 20091, i16 20091>) ; 2 uses
  %i.ex = bitcast <2 x i64> %i.eo to <8 x i16>
  %i.ey = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.ex, <8 x i16> <i16 20091, i16 20091, i16 20091, i16 20091, i16 -30068, i16 -30068, i16 -30068, i16 -30068>) ; 2 uses
  %i.ez = shufflevector <2 x i64> %i.eu, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.fa = sub <8 x i16> %i.ew, %i.ey
  %i.fb = bitcast <2 x i64> %i.ez to <8 x i16>
  %i.fc = add <8 x i16> %i.fa, %i.fb
  %i.fd = bitcast <8 x i16> %i.fc to <2 x i64>
  %i.fe = add <8 x i16> %i.er, %i.ew
  %i.ff = add <8 x i16> %i.fe, %i.ey
  %i.fg = bitcast <8 x i16> %i.ff to <2 x i64>
  %i.fh = shufflevector <2 x i64> %i.es, <2 x i64> %i.eu, <2 x i32> <i32 0, i32 2>
  %i.fi = shufflevector <2 x i64> %i.fg, <2 x i64> %i.fd, <2 x i32> <i32 1, i32 2>
  %i.fj = bitcast <2 x i64> %i.fh to <8 x i16>    ; 2 uses
  %i.fk = bitcast <2 x i64> %i.fi to <8 x i16>    ; 2 uses
  %i.fl = add <8 x i16> %i.fk, %i.fj              ; 2 uses
  %i.fm = sub <8 x i16> %i.fj, %i.fk
  %4 = bitcast <8 x i16> %i.fm to <4 x i32>
  %5 = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.fn = bitcast <4 x i32> %5 to <8 x i16>       ; 2 uses
  %i.fo = shufflevector <8 x i16> %i.fl, <8 x i16> %i.fn, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %i.fp = bitcast <8 x i16> %i.fo to <2 x i64>
  %i.fq = shufflevector <8 x i16> %i.fl, <8 x i16> %i.fn, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15> ; 3 uses
  %i.fr = bitcast <8 x i16> %i.fq to <2 x i64>
  %i.fs = shufflevector <2 x i64> %i.fp, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.ft = shufflevector <2 x i64> %i.fr, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.fu = add <8 x i16> %i.fo, <i16 4, i16 4, i16 4, i16 4, i16 0, i16 0, i16 0, i16 0> ; 2 uses
  %i.fv = add <8 x i16> %i.fu, %i.fq              ; 2 uses
  %i.fw = bitcast <8 x i16> %i.fv to <2 x i64>
  %i.fx = sub <8 x i16> %i.fu, %i.fq
  %i.fy = bitcast <8 x i16> %i.fx to <2 x i64>    ; 2 uses
  %i.fz = bitcast <2 x i64> %i.fs to <8 x i16>
  %i.ga = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.fz, <8 x i16> <i16 -30068, i16 -30068, i16 -30068, i16 -30068, i16 20091, i16 20091, i16 20091, i16 20091>) ; 2 uses
  %i.gb = bitcast <2 x i64> %i.ft to <8 x i16>
  %i.gc = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.gb, <8 x i16> <i16 20091, i16 20091, i16 20091, i16 20091, i16 -30068, i16 -30068, i16 -30068, i16 -30068>) ; 2 uses
  %i.gd = shufflevector <2 x i64> %i.fy, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.ge = sub <8 x i16> %i.ga, %i.gc
  %i.gf = bitcast <2 x i64> %i.gd to <8 x i16>
  %i.gg = add <8 x i16> %i.ge, %i.gf
  %i.gh = bitcast <8 x i16> %i.gg to <2 x i64>
  %i.gi = add <8 x i16> %i.gc, %i.fv
  %i.gj = add <8 x i16> %i.gi, %i.ga
  %i.gk = bitcast <8 x i16> %i.gj to <2 x i64>
  %i.gl = shufflevector <2 x i64> %i.fw, <2 x i64> %i.fy, <2 x i32> <i32 0, i32 2>
  %i.gm = shufflevector <2 x i64> %i.gk, <2 x i64> %i.gh, <2 x i32> <i32 1, i32 2>
  %i.gn = bitcast <2 x i64> %i.gl to <8 x i16>    ; 2 uses
  %i.go = bitcast <2 x i64> %i.gm to <8 x i16>    ; 2 uses
  %i.gp = add <8 x i16> %i.go, %i.gn
  %i.gq = sub <8 x i16> %i.gn, %i.go
  %6 = bitcast <8 x i16> %i.gq to <4 x i32>
  %7 = shufflevector <4 x i32> %6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.gr = ashr <8 x i16> %i.gp, splat (i16 3)     ; 2 uses
  %i.gs = bitcast <4 x i32> %7 to <8 x i16>
  %i.gt = ashr <8 x i16> %i.gs, splat (i16 3)     ; 2 uses
  %i.gu = shufflevector <8 x i16> %i.gr, <8 x i16> %i.gt, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.gv = shufflevector <8 x i16> %i.gr, <8 x i16> %i.gt, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %.val112.i = load i32, ptr %0, align 1, !alias.scope !250
  %i.gw = insertelement <4 x i32> poison, i32 %.val112.i, i64 0
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val111.i = load i32, ptr %i.gx, align 1, !alias.scope !250
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val110.i = load i32, ptr %i.gy, align 1, !alias.scope !250
  %i.gz = insertelement <4 x i32> poison, i32 %.val110.i, i64 0
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i = load i32, ptr %i.ha, align 1, !alias.scope !250
  %i.hb = insertelement <4 x i32> %i.gw, i32 %.val111.i, i64 1
  %i.hc = insertelement <4 x i32> %i.gz, i32 %.val.i, i64 1
  %i.hd = bitcast <4 x i32> %i.hb to <16 x i8>
  %i.he = shufflevector <16 x i8> %i.hd, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.hf = bitcast <4 x i32> %i.hc to <16 x i8>
  %i.hg = shufflevector <16 x i8> %i.hf, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.hh = bitcast <16 x i8> %i.he to <8 x i16>
  %i.hi = add nsw <8 x i16> %i.gu, %i.hh
  %i.hj = bitcast <16 x i8> %i.hg to <8 x i16>
  %i.hk = add nsw <8 x i16> %i.gv, %i.hj
  %i.hl = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hi, <8 x i16> %i.hk)
  %i.hm = bitcast <16 x i8> %i.hl to <4 x i32>    ; 4 uses
  %.sroa.0.0.vec.extract.i = extractelement <4 x i32> %i.hm, i64 0
  store i32 %.sroa.0.0.vec.extract.i, ptr %2, align 1, !alias.scope !251
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.0.4.vec.extract.i = extractelement <4 x i32> %i.hm, i64 1
  store i32 %.sroa.0.4.vec.extract.i, ptr %i.hn, align 1, !alias.scope !251
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.0.8.vec.extract.i = extractelement <4 x i32> %i.hm, i64 2
  store i32 %.sroa.0.8.vec.extract.i, ptr %i.ho, align 1, !alias.scope !251
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.0.12.vec.extract.i = extractelement <4 x i32> %i.hm, i64 3
  store i32 %.sroa.0.12.vec.extract.i, ptr %i.hp, align 1, !alias.scope !251
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @FTransform_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) initializes((0, 32)) %2) #4 {
bb.a:
  %i.a = load i64, ptr %0, align 1, !tbaa !9
  %i.b = insertelement <2 x i64> poison, i64 %i.a, i64 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 1, !tbaa !9
  %i.e = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 1, !tbaa !9
  %i.h = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load i64, ptr %i.i, align 1, !tbaa !9
  %i.k = insertelement <2 x i64> poison, i64 %i.j, i64 0
  %i.l = bitcast <2 x i64> %i.b to <8 x i16>
  %i.m = bitcast <2 x i64> %i.e to <8 x i16>
  %i.n = shufflevector <8 x i16> %i.l, <8 x i16> %i.m, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.o = bitcast <2 x i64> %i.h to <8 x i16>
  %i.p = bitcast <2 x i64> %i.k to <8 x i16>
  %i.q = shufflevector <8 x i16> %i.o, <8 x i16> %i.p, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.r = load i64, ptr %1, align 1, !tbaa !9
  %i.s = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 1, !tbaa !9
  %i.v = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i64, ptr %i.w, align 1, !tbaa !9
  %i.y = insertelement <2 x i64> poison, i64 %i.x, i64 0
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aa = load i64, ptr %i.z, align 1, !tbaa !9
  %i.ab = insertelement <2 x i64> poison, i64 %i.aa, i64 0
  %i.ac = bitcast <2 x i64> %i.s to <8 x i16>
  %i.ad = bitcast <2 x i64> %i.v to <8 x i16>
  %i.ae = shufflevector <8 x i16> %i.ac, <8 x i16> %i.ad, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.af = bitcast <2 x i64> %i.y to <8 x i16>
  %i.ag = bitcast <2 x i64> %i.ab to <8 x i16>
  %i.ah = shufflevector <8 x i16> %i.af, <8 x i16> %i.ag, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ai = bitcast <8 x i16> %i.n to <16 x i8>
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ak = bitcast <8 x i16> %i.q to <16 x i8>
  %i.al = shufflevector <16 x i8> %i.ak, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.am = bitcast <8 x i16> %i.ae to <16 x i8>
  %i.an = shufflevector <16 x i8> %i.am, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ao = bitcast <8 x i16> %i.ah to <16 x i8>
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.aq = bitcast <16 x i8> %i.aj to <8 x i16>
  %i.ar = bitcast <16 x i8> %i.an to <8 x i16>
  %i.as = sub nsw <8 x i16> %i.aq, %i.ar
  %i.at = bitcast <16 x i8> %i.al to <8 x i16>
  %i.au = bitcast <16 x i8> %i.ap to <8 x i16>
  %i.av = sub nsw <8 x i16> %i.at, %i.au
  %i.aw = shufflevector <8 x i16> %i.as, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 7, i32 6>
  %i.ax = bitcast <8 x i16> %i.aw to <2 x i64>    ; 2 uses
  %i.ay = shufflevector <8 x i16> %i.av, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 7, i32 6>
  %i.az = bitcast <8 x i16> %i.ay to <2 x i64>    ; 2 uses
  %i.ba = shufflevector <2 x i64> %i.ax, <2 x i64> %i.az, <2 x i32> <i32 0, i32 2>
  %i.bb = shufflevector <2 x i64> %i.ax, <2 x i64> %i.az, <2 x i32> <i32 1, i32 3>
  %i.bc = bitcast <2 x i64> %i.ba to <8 x i16>    ; 2 uses
  %i.bd = bitcast <2 x i64> %i.bb to <8 x i16>    ; 2 uses
  %i.be = add <8 x i16> %i.bc, %i.bd              ; 2 uses
  %i.bf = sub <8 x i16> %i.bc, %i.bd              ; 2 uses
  %i.bg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.be, <8 x i16> splat (i16 8))
  %i.bh = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.be, <8 x i16> <i16 8, i16 -8, i16 8, i16 -8, i16 8, i16 -8, i16 8, i16 -8>)
  %i.bi = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bf, <8 x i16> <i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217>)
  %i.bj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bf, <8 x i16> <i16 2217, i16 -5352, i16 2217, i16 -5352, i16 2217, i16 -5352, i16 2217, i16 -5352>)
  %i.bk = add <4 x i32> %i.bi, splat (i32 1812)
  %i.bl = add <4 x i32> %i.bj, splat (i32 937)
  %i.bm = ashr <4 x i32> %i.bk, splat (i32 9)
  %i.bn = ashr <4 x i32> %i.bl, splat (i32 9)
  %i.bo = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bg, <4 x i32> %i.bh) ; 2 uses
  %i.bp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bm, <4 x i32> %i.bn) ; 2 uses
  %i.bq = shufflevector <8 x i16> %i.bo, <8 x i16> %i.bp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.br = shufflevector <8 x i16> %i.bo, <8 x i16> %i.bp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bs = bitcast <8 x i16> %i.bq to <4 x i32>    ; 2 uses
  %i.bt = bitcast <8 x i16> %i.br to <4 x i32>    ; 2 uses
  %i.bu = shufflevector <4 x i32> %i.bs, <4 x i32> %i.bt, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %3 = shufflevector <4 x i32> %i.bs, <4 x i32> %i.bt, <4 x i32> <i32 3, i32 7, i32 2, i32 6>
  %i.bv = bitcast <4 x i32> %i.bu to <8 x i16>    ; 3 uses
  %i.bw = bitcast <4 x i32> %3 to <8 x i16>       ; 3 uses
  %i.bx = sub <8 x i16> %i.bv, %i.bw              ; 2 uses
  %i.by = bitcast <8 x i16> %i.bx to <2 x i64>
  %i.bz = shufflevector <2 x i64> %i.by, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.ca = bitcast <2 x i64> %i.bz to <8 x i16>
  %i.cb = shufflevector <8 x i16> %i.ca, <8 x i16> %i.bx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.cc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cb, <8 x i16> <i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352>)
  %i.cd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cb, <8 x i16> <i16 -5352, i16 2217, i16 -5352, i16 2217, i16 -5352, i16 2217, i16 -5352, i16 2217>)
  %i.ce = add <4 x i32> %i.cc, splat (i32 77536)
  %i.cf = add <4 x i32> %i.cd, splat (i32 51000)
  %i.cg = ashr <4 x i32> %i.ce, splat (i32 16)
  %i.ch = ashr <4 x i32> %i.cf, splat (i32 16)
  %i.ci = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cg, <4 x i32> poison)
  %i.cj = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ch, <4 x i32> poison)
  %i.ck = bitcast <8 x i16> %i.cj to <2 x i64>
  %i.cl = icmp eq <8 x i16> %i.bv, %i.bw
  %i.cm = sext <8 x i1> %i.cl to <8 x i16>
  %i.cn = add <8 x i16> %i.ci, %i.cm
  %i.co = bitcast <8 x i16> %i.cn to <2 x i64>
  %i.cp = add <8 x i16> %i.bw, %i.bv              ; 2 uses
  %i.cq = bitcast <8 x i16> %i.cp to <2 x i64>
  %i.cr = add <8 x i16> %i.cp, splat (i16 7)      ; 2 uses
  %i.cs = shufflevector <2 x i64> %i.cq, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.ct = bitcast <2 x i64> %i.cs to <8 x i16>    ; 2 uses
  %i.cu = add <8 x i16> %i.cr, %i.ct
  %i.cv = sub <8 x i16> %i.cr, %i.ct
  %i.cw = ashr <8 x i16> %i.cu, splat (i16 4)
  %i.cx = bitcast <8 x i16> %i.cw to <2 x i64>
  %i.cy = ashr <8 x i16> %i.cv, splat (i16 4)
  %i.cz = bitcast <8 x i16> %i.cy to <2 x i64>
  %i.da = shufflevector <2 x i64> %i.cx, <2 x i64> %i.co, <2 x i32> <i32 0, i32 2>
  %i.db = shufflevector <2 x i64> %i.cz, <2 x i64> %i.ck, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.da, ptr %2, align 1, !tbaa !9, !alias.scope !254
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x i64> %i.db, ptr %i.dc, align 1, !tbaa !9, !alias.scope !254
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @FTransform2_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) initializes((0, 64)) %2) #4 {
bb.a:
  %i.a = load i64, ptr %0, align 1, !tbaa !9
  %i.b = insertelement <2 x i64> poison, i64 %i.a, i64 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 1, !tbaa !9
  %i.e = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 1, !tbaa !9
  %i.h = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load i64, ptr %i.i, align 1, !tbaa !9
  %i.k = insertelement <2 x i64> poison, i64 %i.j, i64 0
  %i.l = bitcast <2 x i64> %i.b to <16 x i8>
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.n = bitcast <2 x i64> %i.e to <16 x i8>
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.p = bitcast <2 x i64> %i.h to <16 x i8>
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.r = bitcast <2 x i64> %i.k to <16 x i8>
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.t = load i64, ptr %1, align 1, !tbaa !9
  %i.u = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i64, ptr %i.v, align 1, !tbaa !9
  %i.x = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load i64, ptr %i.y, align 1, !tbaa !9
  %i.aa = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ac = load i64, ptr %i.ab, align 1, !tbaa !9
  %i.ad = insertelement <2 x i64> poison, i64 %i.ac, i64 0
  %i.ae = bitcast <2 x i64> %i.u to <16 x i8>
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ag = bitcast <2 x i64> %i.x to <16 x i8>
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ai = bitcast <2 x i64> %i.aa to <16 x i8>
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ak = bitcast <2 x i64> %i.ad to <16 x i8>
  %i.al = shufflevector <16 x i8> %i.ak, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.am = bitcast <16 x i8> %i.m to <8 x i16>
  %i.an = bitcast <16 x i8> %i.af to <8 x i16>
  %i.ao = sub nsw <8 x i16> %i.am, %i.an
  %i.ap = bitcast <16 x i8> %i.o to <8 x i16>
  %i.aq = bitcast <16 x i8> %i.ah to <8 x i16>
  %i.ar = sub nsw <8 x i16> %i.ap, %i.aq
  %i.as = bitcast <16 x i8> %i.q to <8 x i16>
  %i.at = bitcast <16 x i8> %i.aj to <8 x i16>
  %i.au = sub nsw <8 x i16> %i.as, %i.at
  %i.av = bitcast <16 x i8> %i.s to <8 x i16>
  %i.aw = bitcast <16 x i8> %i.al to <8 x i16>
  %i.ax = sub nsw <8 x i16> %i.av, %i.aw
  %i.ay = bitcast <8 x i16> %i.ao to <4 x i32>    ; 2 uses
  %i.az = bitcast <8 x i16> %i.ar to <4 x i32>    ; 2 uses
  %i.ba = shufflevector <4 x i32> %i.ay, <4 x i32> %i.az, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bb = bitcast <8 x i16> %i.au to <4 x i32>    ; 2 uses
  %i.bc = bitcast <8 x i16> %i.ax to <4 x i32>    ; 2 uses
  %i.bd = shufflevector <4 x i32> %i.bb, <4 x i32> %i.bc, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.be = shufflevector <4 x i32> %i.ay, <4 x i32> %i.az, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.bf = shufflevector <4 x i32> %i.bb, <4 x i32> %i.bc, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.bg = bitcast <4 x i32> %i.ba to <8 x i16>
  %i.bh = bitcast <4 x i32> %i.bd to <8 x i16>
  %i.bi = shufflevector <8 x i16> %i.bg, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 7, i32 6>
  %i.bj = bitcast <8 x i16> %i.bi to <2 x i64>    ; 2 uses
  %i.bk = shufflevector <8 x i16> %i.bh, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 7, i32 6>
  %i.bl = bitcast <8 x i16> %i.bk to <2 x i64>    ; 2 uses
  %i.bm = shufflevector <2 x i64> %i.bj, <2 x i64> %i.bl, <2 x i32> <i32 0, i32 2>
  %i.bn = shufflevector <2 x i64> %i.bj, <2 x i64> %i.bl, <2 x i32> <i32 1, i32 3>
  %i.bo = bitcast <2 x i64> %i.bm to <8 x i16>    ; 2 uses
  %i.bp = bitcast <2 x i64> %i.bn to <8 x i16>    ; 2 uses
  %i.bq = add <8 x i16> %i.bo, %i.bp              ; 2 uses
  %i.br = sub <8 x i16> %i.bo, %i.bp              ; 2 uses
  %i.bs = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bq, <8 x i16> splat (i16 8))
  %i.bt = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bq, <8 x i16> <i16 8, i16 -8, i16 8, i16 -8, i16 8, i16 -8, i16 8, i16 -8>)
  %i.bu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.br, <8 x i16> <i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217>)
  %i.bv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.br, <8 x i16> <i16 2217, i16 -5352, i16 2217, i16 -5352, i16 2217, i16 -5352, i16 2217, i16 -5352>)
  %i.bw = add <4 x i32> %i.bu, splat (i32 1812)
  %i.bx = add <4 x i32> %i.bv, splat (i32 937)
  %i.by = ashr <4 x i32> %i.bw, splat (i32 9)
  %i.bz = ashr <4 x i32> %i.bx, splat (i32 9)
  %i.ca = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bs, <4 x i32> %i.bt) ; 2 uses
  %i.cb = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.by, <4 x i32> %i.bz) ; 2 uses
  %i.cc = shufflevector <8 x i16> %i.ca, <8 x i16> %i.cb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cd = shufflevector <8 x i16> %i.ca, <8 x i16> %i.cb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ce = bitcast <8 x i16> %i.cc to <4 x i32>    ; 2 uses
  %i.cf = bitcast <8 x i16> %i.cd to <4 x i32>    ; 2 uses
  %i.cg = shufflevector <4 x i32> %i.ce, <4 x i32> %i.cf, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %3 = shufflevector <4 x i32> %i.ce, <4 x i32> %i.cf, <4 x i32> <i32 3, i32 7, i32 2, i32 6>
  %i.ch = bitcast <4 x i32> %i.be to <8 x i16>
  %i.ci = bitcast <4 x i32> %i.bf to <8 x i16>
  %i.cj = shufflevector <8 x i16> %i.ch, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 7, i32 6>
  %i.ck = bitcast <8 x i16> %i.cj to <2 x i64>    ; 2 uses
  %i.cl = shufflevector <8 x i16> %i.ci, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 7, i32 6>
  %i.cm = bitcast <8 x i16> %i.cl to <2 x i64>    ; 2 uses
  %i.cn = shufflevector <2 x i64> %i.ck, <2 x i64> %i.cm, <2 x i32> <i32 0, i32 2>
  %i.co = shufflevector <2 x i64> %i.ck, <2 x i64> %i.cm, <2 x i32> <i32 1, i32 3>
  %i.cp = bitcast <2 x i64> %i.cn to <8 x i16>    ; 2 uses
  %i.cq = bitcast <2 x i64> %i.co to <8 x i16>    ; 2 uses
  %i.cr = add <8 x i16> %i.cp, %i.cq              ; 2 uses
  %i.cs = sub <8 x i16> %i.cp, %i.cq              ; 2 uses
  %i.ct = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cr, <8 x i16> splat (i16 8))
  %i.cu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cr, <8 x i16> <i16 8, i16 -8, i16 8, i16 -8, i16 8, i16 -8, i16 8, i16 -8>)
  %i.cv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cs, <8 x i16> <i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217>)
  %i.cw = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cs, <8 x i16> <i16 2217, i16 -5352, i16 2217, i16 -5352, i16 2217, i16 -5352, i16 2217, i16 -5352>)
  %i.cx = add <4 x i32> %i.cv, splat (i32 1812)
  %i.cy = add <4 x i32> %i.cw, splat (i32 937)
  %i.cz = ashr <4 x i32> %i.cx, splat (i32 9)
  %i.da = ashr <4 x i32> %i.cy, splat (i32 9)
  %i.db = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ct, <4 x i32> %i.cu) ; 2 uses
  %i.dc = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cz, <4 x i32> %i.da) ; 2 uses
  %i.dd = shufflevector <8 x i16> %i.db, <8 x i16> %i.dc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.de = shufflevector <8 x i16> %i.db, <8 x i16> %i.dc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.df = bitcast <8 x i16> %i.dd to <4 x i32>    ; 2 uses
  %i.dg = bitcast <8 x i16> %i.de to <4 x i32>    ; 2 uses
  %i.dh = shufflevector <4 x i32> %i.df, <4 x i32> %i.dg, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %4 = shufflevector <4 x i32> %i.df, <4 x i32> %i.dg, <4 x i32> <i32 3, i32 7, i32 2, i32 6>
  %i.di = bitcast <4 x i32> %i.cg to <8 x i16>    ; 3 uses
  %i.dj = bitcast <4 x i32> %3 to <8 x i16>       ; 3 uses
  %i.dk = sub <8 x i16> %i.di, %i.dj              ; 2 uses
  %i.dl = bitcast <8 x i16> %i.dk to <2 x i64>
  %i.dm = shufflevector <2 x i64> %i.dl, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.dn = bitcast <2 x i64> %i.dm to <8 x i16>
  %i.do = shufflevector <8 x i16> %i.dn, <8 x i16> %i.dk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.dp = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.do, <8 x i16> <i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352>)
  %i.dq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.do, <8 x i16> <i16 -5352, i16 2217, i16 -5352, i16 2217, i16 -5352, i16 2217, i16 -5352, i16 2217>)
  %i.dr = add <4 x i32> %i.dp, splat (i32 77536)
  %i.ds = add <4 x i32> %i.dq, splat (i32 51000)
  %i.dt = ashr <4 x i32> %i.dr, splat (i32 16)
  %i.du = ashr <4 x i32> %i.ds, splat (i32 16)
  %i.dv = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dt, <4 x i32> poison)
  %i.dw = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.du, <4 x i32> poison)
  %i.dx = bitcast <8 x i16> %i.dw to <2 x i64>
  %i.dy = icmp eq <8 x i16> %i.di, %i.dj
  %i.dz = sext <8 x i1> %i.dy to <8 x i16>
  %i.ea = add <8 x i16> %i.dv, %i.dz
  %i.eb = bitcast <8 x i16> %i.ea to <2 x i64>
  %i.ec = add <8 x i16> %i.dj, %i.di              ; 2 uses
  %i.ed = bitcast <8 x i16> %i.ec to <2 x i64>
  %i.ee = add <8 x i16> %i.ec, splat (i16 7)      ; 2 uses
  %i.ef = shufflevector <2 x i64> %i.ed, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.eg = bitcast <2 x i64> %i.ef to <8 x i16>    ; 2 uses
  %i.eh = add <8 x i16> %i.ee, %i.eg
  %i.ei = sub <8 x i16> %i.ee, %i.eg
  %i.ej = ashr <8 x i16> %i.eh, splat (i16 4)
  %i.ek = bitcast <8 x i16> %i.ej to <2 x i64>
  %i.el = ashr <8 x i16> %i.ei, splat (i16 4)
  %i.em = bitcast <8 x i16> %i.el to <2 x i64>
  %i.en = shufflevector <2 x i64> %i.ek, <2 x i64> %i.eb, <2 x i32> <i32 0, i32 2>
  %i.eo = shufflevector <2 x i64> %i.em, <2 x i64> %i.dx, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.en, ptr %2, align 1, !tbaa !9, !alias.scope !259
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x i64> %i.eo, ptr %i.ep, align 1, !tbaa !9, !alias.scope !259
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.er = bitcast <4 x i32> %i.dh to <8 x i16>    ; 3 uses
  %i.es = bitcast <4 x i32> %4 to <8 x i16>       ; 3 uses
  %i.et = sub <8 x i16> %i.er, %i.es              ; 2 uses
  %i.eu = bitcast <8 x i16> %i.et to <2 x i64>
  %i.ev = shufflevector <2 x i64> %i.eu, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.ew = bitcast <2 x i64> %i.ev to <8 x i16>
  %i.ex = shufflevector <8 x i16> %i.ew, <8 x i16> %i.et, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ey = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ex, <8 x i16> <i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352>)
  %i.ez = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ex, <8 x i16> <i16 -5352, i16 2217, i16 -5352, i16 2217, i16 -5352, i16 2217, i16 -5352, i16 2217>)
  %i.fa = add <4 x i32> %i.ey, splat (i32 77536)
  %i.fb = add <4 x i32> %i.ez, splat (i32 51000)
  %i.fc = ashr <4 x i32> %i.fa, splat (i32 16)
  %i.fd = ashr <4 x i32> %i.fb, splat (i32 16)
  %i.fe = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.fc, <4 x i32> poison)
  %i.ff = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.fd, <4 x i32> poison)
  %i.fg = bitcast <8 x i16> %i.ff to <2 x i64>
  %i.fh = icmp eq <8 x i16> %i.er, %i.es
  %i.fi = sext <8 x i1> %i.fh to <8 x i16>
  %i.fj = add <8 x i16> %i.fe, %i.fi
  %i.fk = bitcast <8 x i16> %i.fj to <2 x i64>
  %i.fl = add <8 x i16> %i.es, %i.er              ; 2 uses
  %i.fm = bitcast <8 x i16> %i.fl to <2 x i64>
  %i.fn = add <8 x i16> %i.fl, splat (i16 7)      ; 2 uses
  %i.fo = shufflevector <2 x i64> %i.fm, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.fp = bitcast <2 x i64> %i.fo to <8 x i16>    ; 2 uses
  %i.fq = add <8 x i16> %i.fn, %i.fp
  %i.fr = sub <8 x i16> %i.fn, %i.fp
  %i.fs = ashr <8 x i16> %i.fq, splat (i16 4)
  %i.ft = bitcast <8 x i16> %i.fs to <2 x i64>
  %i.fu = ashr <8 x i16> %i.fr, splat (i16 4)
  %i.fv = bitcast <8 x i16> %i.fu to <2 x i64>
  %i.fw = shufflevector <2 x i64> %i.ft, <2 x i64> %i.fk, <2 x i32> <i32 0, i32 2>
  %i.fx = shufflevector <2 x i64> %i.fv, <2 x i64> %i.fg, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.fw, ptr %i.eq, align 1, !tbaa !9, !alias.scope !260
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x i64> %i.fx, ptr %i.fy, align 1, !tbaa !9, !alias.scope !260
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @FTransformWHT_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) initializes((0, 32)) %1) #4 {
bb.a:
  %i.a = load i64, ptr %0, align 1, !tbaa !9, !alias.scope !269
  %i.b = insertelement <2 x i64> poison, i64 %i.a, i64 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 1, !tbaa !9, !alias.scope !269
  %i.e = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 1, !tbaa !9, !alias.scope !269
  %i.h = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load i64, ptr %i.i, align 1, !tbaa !9, !alias.scope !269
  %i.k = insertelement <2 x i64> poison, i64 %i.j, i64 0
  %i.l = bitcast <2 x i64> %i.b to <8 x i16>
  %i.m = bitcast <2 x i64> %i.e to <8 x i16>
  %i.n = shufflevector <8 x i16> %i.l, <8 x i16> %i.m, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.o = bitcast <2 x i64> %i.h to <8 x i16>
  %i.p = bitcast <2 x i64> %i.k to <8 x i16>
  %i.q = shufflevector <8 x i16> %i.o, <8 x i16> %i.p, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.r = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.n, <8 x i16> %i.q)
  %i.s = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %i.n, <8 x i16> %i.q)
  %i.t = bitcast <8 x i16> %i.r to <4 x i32>      ; 2 uses
  %i.u = bitcast <8 x i16> %i.s to <4 x i32>      ; 2 uses
  %i.v = shufflevector <4 x i32> %i.t, <4 x i32> %i.u, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.w = bitcast <4 x i32> %i.v to <2 x i64>
  %i.x = shufflevector <4 x i32> %i.u, <4 x i32> %i.t, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.y = bitcast <4 x i32> %i.x to <2 x i64>
  %i.z = shufflevector <2 x i64> %i.w, <2 x i64> %i.y, <2 x i32> <i32 0, i32 2>
  %i.aa = bitcast <2 x i64> %i.z to <8 x i16>
  %i.ab = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aa, <8 x i16> <i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 1, i16 -1>) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ad = load i64, ptr %i.ac, align 1, !tbaa !9, !alias.scope !270
  %i.ae = insertelement <2 x i64> poison, i64 %i.ad, i64 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ag = load i64, ptr %i.af, align 1, !tbaa !9, !alias.scope !270
  %i.ah = insertelement <2 x i64> poison, i64 %i.ag, i64 0
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aj = load i64, ptr %i.ai, align 1, !tbaa !9, !alias.scope !270
  %i.ak = insertelement <2 x i64> poison, i64 %i.aj, i64 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.am = load i64, ptr %i.al, align 1, !tbaa !9, !alias.scope !270
  %i.an = insertelement <2 x i64> poison, i64 %i.am, i64 0
  %i.ao = bitcast <2 x i64> %i.ae to <8 x i16>
  %i.ap = bitcast <2 x i64> %i.ah to <8 x i16>
  %i.aq = shufflevector <8 x i16> %i.ao, <8 x i16> %i.ap, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ar = bitcast <2 x i64> %i.ak to <8 x i16>
  %i.as = bitcast <2 x i64> %i.an to <8 x i16>
  %i.at = shufflevector <8 x i16> %i.ar, <8 x i16> %i.as, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.au = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.aq, <8 x i16> %i.at)
  %i.av = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %i.aq, <8 x i16> %i.at)
  %i.aw = bitcast <8 x i16> %i.au to <4 x i32>    ; 2 uses
  %i.ax = bitcast <8 x i16> %i.av to <4 x i32>    ; 2 uses
  %i.ay = shufflevector <4 x i32> %i.aw, <4 x i32> %i.ax, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.az = bitcast <4 x i32> %i.ay to <2 x i64>
  %i.ba = shufflevector <4 x i32> %i.ax, <4 x i32> %i.aw, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bb = bitcast <4 x i32> %i.ba to <2 x i64>
  %i.bc = shufflevector <2 x i64> %i.az, <2 x i64> %i.bb, <2 x i32> <i32 0, i32 2>
  %i.bd = bitcast <2 x i64> %i.bc to <8 x i16>
  %i.be = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bd, <8 x i16> <i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 1, i16 -1>) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bg = load i64, ptr %i.bf, align 1, !tbaa !9, !alias.scope !271
  %i.bh = insertelement <2 x i64> poison, i64 %i.bg, i64 0
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bj = load i64, ptr %i.bi, align 1, !tbaa !9, !alias.scope !271
  %i.bk = insertelement <2 x i64> poison, i64 %i.bj, i64 0
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bm = load i64, ptr %i.bl, align 1, !tbaa !9, !alias.scope !271
  %i.bn = insertelement <2 x i64> poison, i64 %i.bm, i64 0
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bp = load i64, ptr %i.bo, align 1, !tbaa !9, !alias.scope !271
  %i.bq = insertelement <2 x i64> poison, i64 %i.bp, i64 0
  %i.br = bitcast <2 x i64> %i.bh to <8 x i16>
  %i.bs = bitcast <2 x i64> %i.bk to <8 x i16>
  %i.bt = shufflevector <8 x i16> %i.br, <8 x i16> %i.bs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.bu = bitcast <2 x i64> %i.bn to <8 x i16>
  %i.bv = bitcast <2 x i64> %i.bq to <8 x i16>
  %i.bw = shufflevector <8 x i16> %i.bu, <8 x i16> %i.bv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.bx = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.bt, <8 x i16> %i.bw)
  %i.by = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %i.bt, <8 x i16> %i.bw)
  %i.bz = bitcast <8 x i16> %i.bx to <4 x i32>    ; 2 uses
  %i.ca = bitcast <8 x i16> %i.by to <4 x i32>    ; 2 uses
  %i.cb = shufflevector <4 x i32> %i.bz, <4 x i32> %i.ca, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.cc = bitcast <4 x i32> %i.cb to <2 x i64>
  %i.cd = shufflevector <4 x i32> %i.ca, <4 x i32> %i.bz, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ce = bitcast <4 x i32> %i.cd to <2 x i64>
  %i.cf = shufflevector <2 x i64> %i.cc, <2 x i64> %i.ce, <2 x i32> <i32 0, i32 2>
  %i.cg = bitcast <2 x i64> %i.cf to <8 x i16>
  %i.ch = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cg, <8 x i16> <i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 1, i16 -1>) ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cj = load i64, ptr %i.ci, align 1, !tbaa !9, !alias.scope !272
  %i.ck = insertelement <2 x i64> poison, i64 %i.cj, i64 0
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.cm = load i64, ptr %i.cl, align 1, !tbaa !9, !alias.scope !272
  %i.cn = insertelement <2 x i64> poison, i64 %i.cm, i64 0
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cp = load i64, ptr %i.co, align 1, !tbaa !9, !alias.scope !272
  %i.cq = insertelement <2 x i64> poison, i64 %i.cp, i64 0
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cs = load i64, ptr %i.cr, align 1, !tbaa !9, !alias.scope !272
  %i.ct = insertelement <2 x i64> poison, i64 %i.cs, i64 0
  %i.cu = bitcast <2 x i64> %i.ck to <8 x i16>
  %i.cv = bitcast <2 x i64> %i.cn to <8 x i16>
  %i.cw = shufflevector <8 x i16> %i.cu, <8 x i16> %i.cv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.cx = bitcast <2 x i64> %i.cq to <8 x i16>
  %i.cy = bitcast <2 x i64> %i.ct to <8 x i16>
  %i.cz = shufflevector <8 x i16> %i.cx, <8 x i16> %i.cy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.da = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.cw, <8 x i16> %i.cz)
  %i.db = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %i.cw, <8 x i16> %i.cz)
  %i.dc = bitcast <8 x i16> %i.da to <4 x i32>    ; 2 uses
  %i.dd = bitcast <8 x i16> %i.db to <4 x i32>    ; 2 uses
  %i.de = shufflevector <4 x i32> %i.dc, <4 x i32> %i.dd, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.df = bitcast <4 x i32> %i.de to <2 x i64>
  %i.dg = shufflevector <4 x i32> %i.dd, <4 x i32> %i.dc, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.dh = bitcast <4 x i32> %i.dg to <2 x i64>
  %i.di = shufflevector <2 x i64> %i.df, <2 x i64> %i.dh, <2 x i32> <i32 0, i32 2>
  %i.dj = bitcast <2 x i64> %i.di to <8 x i16>
  %i.dk = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dj, <8 x i16> <i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 1, i16 -1>) ; 2 uses
  %i.dl = add <4 x i32> %i.ch, %i.ab
  %i.dm = add <4 x i32> %i.dk, %i.be
  %i.dn = sub <4 x i32> %i.be, %i.dk
  %i.do = sub <4 x i32> %i.ab, %i.ch
  %i.dp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dl, <4 x i32> %i.do) ; 2 uses
  %i.dq = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dm, <4 x i32> %i.dn) ; 2 uses
  %i.dr = add <8 x i16> %i.dq, %i.dp
  %i.ds = sub <8 x i16> %i.dp, %i.dq
  %i.dt = bitcast <8 x i16> %i.ds to <2 x i64>
  %i.du = shufflevector <2 x i64> %i.dt, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.dv = ashr <8 x i16> %i.dr, splat (i16 1)
  store <8 x i16> %i.dv, ptr %1, align 1, !tbaa !9
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dx = bitcast <2 x i64> %i.du to <8 x i16>
  %i.dy = ashr <8 x i16> %i.dx, splat (i16 1)
  store <8 x i16> %i.dy, ptr %i.dw, align 1, !tbaa !9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i32 @SSE16x16_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1) #5 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.023.i = phi ptr [ %0, %bb.a ], [ %i.ad, %bb.b ] ; 3 uses
  %.01422.i = phi ptr [ %1, %bb.a ], [ %i.ae, %bb.b ] ; 3 uses
  %i.a = phi <4 x i32> [ zeroinitializer, %bb.a ], [ %i.ac, %bb.b ]
  %.01621.i = phi i32 [ 0, %bb.a ], [ %i.af, %bb.b ]
  %i.b = load <16 x i8>, ptr %.023.i, align 1, !tbaa !9, !alias.scope !277 ; 2 uses
  %i.c = load <16 x i8>, ptr %.01422.i, align 1, !tbaa !9, !alias.scope !278 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.023.i, i64 32
  %i.e = load <16 x i8>, ptr %i.d, align 1, !tbaa !9, !alias.scope !277 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01422.i, i64 32
  %i.g = load <16 x i8>, ptr %i.f, align 1, !tbaa !9, !alias.scope !278 ; 2 uses
  %i.h = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.b, <16 x i8> %i.c)
  %i.i = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.c, <16 x i8> %i.b)
  %i.j = or <16 x i8> %i.h, %i.i                  ; 2 uses
  %i.k = shufflevector <16 x i8> %i.j, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.l = shufflevector <16 x i8> %i.j, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.m = bitcast <16 x i8> %i.k to <8 x i16>      ; 2 uses
  %i.n = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.m, <8 x i16> %i.m)
  %i.o = bitcast <16 x i8> %i.l to <8 x i16>      ; 2 uses
end_hunk_1
