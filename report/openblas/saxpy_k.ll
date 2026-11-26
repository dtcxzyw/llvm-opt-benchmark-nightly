Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/saxpy_k?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @saxpy_k(i64 noundef %0, i64 noundef %1, i64 noundef %2, float noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef captures(none) %6, i64 noundef %7, ptr nofree noundef readnone captures(none) %8, i64 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %0, 1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %5, 1
  %i.c = icmp eq i64 %7, 1
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = and i64 %0, 9223372036854775776          ; 13 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %saxpy_kernel_16.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %3, i64 0 ; 2 uses
  %i.f = shufflevector <4 x float> %i.e, <4 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.g = shufflevector <4 x float> %i.e, <4 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.h = and i64 %0, 9223372036854775744          ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %.lr.ph3.i.preheader, label %.lr.ph.i

.lr.ph3.i.preheader:                              ; preds = %.preheader.i, %bb.d
  %.12.i.ph = phi i64 [ 0, %bb.d ], [ %i.ag, %.preheader.i ]
  br label %.lr.ph3.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.i = icmp samesign ult i64 %i.ag, %i.d
  br i1 %i.i, label %.lr.ph3.i.preheader, label %saxpy_kernel_16.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.01.i = phi i64 [ %i.ag, %.lr.ph.i ], [ 0, %bb.d ] ; 6 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.01.i ; 2 uses
  %i.k = load <16 x float>, ptr %i.j, align 1, !tbaa !23
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.01.i
  %i.m = load <16 x float>, ptr %i.l, align 1, !tbaa !23
  %i.n = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.g, <16 x float> %i.m, <16 x float> %i.k)
  store <16 x float> %i.n, ptr %i.j, align 1, !tbaa !23
  %i.o = or disjoint i64 %.01.i, 16               ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.o ; 2 uses
  %i.q = load <16 x float>, ptr %i.p, align 1, !tbaa !23
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.o
  %i.s = load <16 x float>, ptr %i.r, align 1, !tbaa !23
  %i.t = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.g, <16 x float> %i.s, <16 x float> %i.q)
  store <16 x float> %i.t, ptr %i.p, align 1, !tbaa !23
  %i.u = or disjoint i64 %.01.i, 32               ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.u ; 2 uses
  %i.w = load <16 x float>, ptr %i.v, align 1, !tbaa !23
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.u
  %i.y = load <16 x float>, ptr %i.x, align 1, !tbaa !23
  %i.z = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.g, <16 x float> %i.y, <16 x float> %i.w)
  store <16 x float> %i.z, ptr %i.v, align 1, !tbaa !23
  %i.aa = or disjoint i64 %.01.i, 48              ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.aa ; 2 uses
  %i.ac = load <16 x float>, ptr %i.ab, align 1, !tbaa !23
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aa
  %i.ae = load <16 x float>, ptr %i.ad, align 1, !tbaa !23
  %i.af = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.g, <16 x float> %i.ae, <16 x float> %i.ac)
  store <16 x float> %i.af, ptr %i.ab, align 1, !tbaa !23
  %i.ag = add nuw nsw i64 %.01.i, 64              ; 4 uses
  %i.ah = icmp samesign ult i64 %i.ag, %i.h
  br i1 %i.ah, label %.lr.ph.i, label %.preheader.i, !llvm.loop !8

.lr.ph3.i:                                        ; preds = %.lr.ph3.i.preheader, %.lr.ph3.i
  %.12.i = phi i64 [ %i.bf, %.lr.ph3.i ], [ %.12.i.ph, %.lr.ph3.i.preheader ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.12.i ; 2 uses
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !23
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.12.i
  %i.al = load <8 x float>, ptr %i.ak, align 1, !tbaa !23
  %i.am = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.f, <8 x float> %i.al, <8 x float> %i.aj)
  store <8 x float> %i.am, ptr %i.ai, align 1, !tbaa !23
  %i.an = or disjoint i64 %.12.i, 8               ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.an ; 2 uses
  %i.ap = load <8 x float>, ptr %i.ao, align 1, !tbaa !23
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.an
  %i.ar = load <8 x float>, ptr %i.aq, align 1, !tbaa !23
  %i.as = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.f, <8 x float> %i.ar, <8 x float> %i.ap)
  store <8 x float> %i.as, ptr %i.ao, align 1, !tbaa !23
  %i.at = or disjoint i64 %.12.i, 16              ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.at ; 2 uses
  %i.av = load <8 x float>, ptr %i.au, align 1, !tbaa !23
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.at
  %i.ax = load <8 x float>, ptr %i.aw, align 1, !tbaa !23
  %i.ay = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.f, <8 x float> %i.ax, <8 x float> %i.av)
  store <8 x float> %i.ay, ptr %i.au, align 1, !tbaa !23
  %i.az = or disjoint i64 %.12.i, 24              ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.az ; 2 uses
  %i.bb = load <8 x float>, ptr %i.ba, align 1, !tbaa !23
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.az
  %i.bd = load <8 x float>, ptr %i.bc, align 1, !tbaa !23
  %i.be = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.f, <8 x float> %i.bd, <8 x float> %i.bb)
  store <8 x float> %i.be, ptr %i.ba, align 1, !tbaa !23
  %i.bf = add nuw nsw i64 %.12.i, 32              ; 2 uses
  %i.bg = icmp samesign ult i64 %i.bf, %i.d
  br i1 %i.bg, label %.lr.ph3.i, label %saxpy_kernel_16.exit, !llvm.loop !9

saxpy_kernel_16.exit:                             ; preds = %.lr.ph3.i, %.preheader.i, %bb.c
  %.not97 = icmp eq i64 %i.d, %0
  br i1 %.not97, label %.loopexit, label %iter.check154

iter.check154:                                    ; preds = %saxpy_kernel_16.exit
  %i.bh = or disjoint i64 %i.d, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %0, i64 %i.bh) ; 3 uses
  %i.bi = sub nsw i64 %smax, %i.d                 ; 4 uses
  %min.iters.check130 = icmp ult i64 %i.bi, 8
  br i1 %min.iters.check130, label %.lr.ph84.preheader, label %vector.memcheck131

vector.memcheck131:                               ; preds = %iter.check154
  %i.bj = shl i64 %0, 2
  %i.bk = and i64 %i.bj, -128                     ; 2 uses
  %i.bl = getelementptr i8, ptr %6, i64 %i.bk
  %i.bm = or disjoint i64 %i.d, 1
  %i.bn = tail call i64 @llvm.smax.i64(i64 %0, i64 %i.bm)
  %i.bo = shl i64 %i.bn, 2                        ; 2 uses
  %i.bp = getelementptr i8, ptr %6, i64 %i.bo
  %i.bq = getelementptr i8, ptr %4, i64 %i.bk
  %i.br = getelementptr i8, ptr %4, i64 %i.bo
  %bound0132 = icmp ult ptr %i.bl, %i.br
  %bound1133 = icmp ult ptr %i.bq, %i.bp
  %found.conflict134 = and i1 %bound0132, %bound1133
  br i1 %found.conflict134, label %.lr.ph84.preheader, label %vector.main.loop.iter.check135

vector.main.loop.iter.check135:                   ; preds = %vector.memcheck131
  %min.iters.check136 = icmp ult i64 %i.bi, 32
  br i1 %min.iters.check136, label %vec.epilog.ph158, label %vector.ph137

vector.ph137:                                     ; preds = %vector.main.loop.iter.check135
  %i.bs = and i64 %smax, 31                       ; 3 uses
  %n.vec138 = sub nuw i64 %i.bi, %i.bs            ; 3 uses
  %i.bt = add i64 %i.d, %n.vec138
  %broadcast.splatinsert139 = insertelement <8 x float> poison, float %3, i64 0
  %broadcast.splat140 = shufflevector <8 x float> %broadcast.splatinsert139, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body141

vector.body141:                                   ; preds = %vector.ph137, %vector.body141
  %index142 = phi i64 [ 0, %vector.ph137 ], [ %index.next151, %vector.body141 ] ; 2 uses
  %i.bu = add nuw i64 %i.d, %index142             ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bu ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  %wide.load143 = load <8 x float>, ptr %i.bv, align 4, !tbaa !26, !alias.scope !27
  %wide.load144 = load <8 x float>, ptr %i.bw, align 4, !tbaa !26, !alias.scope !27
  %wide.load145 = load <8 x float>, ptr %i.bx, align 4, !tbaa !26, !alias.scope !27
  %wide.load146 = load <8 x float>, ptr %i.by, align 4, !tbaa !26, !alias.scope !27
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bu ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 64 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 96 ; 2 uses
  %wide.load147 = load <8 x float>, ptr %i.bz, align 4, !tbaa !26, !alias.scope !28, !noalias !27
  %wide.load148 = load <8 x float>, ptr %i.ca, align 4, !tbaa !26, !alias.scope !28, !noalias !27
  %wide.load149 = load <8 x float>, ptr %i.cb, align 4, !tbaa !26, !alias.scope !28, !noalias !27
  %wide.load150 = load <8 x float>, ptr %i.cc, align 4, !tbaa !26, !alias.scope !28, !noalias !27
  %i.cd = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat140, <8 x float> %wide.load143, <8 x float> %wide.load147)
  %i.ce = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat140, <8 x float> %wide.load144, <8 x float> %wide.load148)
  %i.cf = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat140, <8 x float> %wide.load145, <8 x float> %wide.load149)
  %i.cg = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat140, <8 x float> %wide.load146, <8 x float> %wide.load150)
  store <8 x float> %i.cd, ptr %i.bz, align 4, !tbaa !26, !alias.scope !28, !noalias !27
  store <8 x float> %i.ce, ptr %i.ca, align 4, !tbaa !26, !alias.scope !28, !noalias !27
  store <8 x float> %i.cf, ptr %i.cb, align 4, !tbaa !26, !alias.scope !28, !noalias !27
  store <8 x float> %i.cg, ptr %i.cc, align 4, !tbaa !26, !alias.scope !28, !noalias !27
  %index.next151 = add nuw i64 %index142, 32      ; 2 uses
  %i.ch = icmp eq i64 %index.next151, %n.vec138
  br i1 %i.ch, label %middle.block152, label %vector.body141, !llvm.loop !13

middle.block152:                                  ; preds = %vector.body141
  %cmp.n153 = icmp eq i64 %i.bs, 0
  br i1 %cmp.n153, label %.loopexit, label %vec.epilog.iter.check155

vec.epilog.iter.check155:                         ; preds = %middle.block152
  %min.epilog.iters.check157 = icmp samesign ult i64 %i.bs, 8
  br i1 %min.epilog.iters.check157, label %.lr.ph84.preheader, label %vec.epilog.ph158, !prof !31

vec.epilog.ph158:                                 ; preds = %vector.main.loop.iter.check135, %vec.epilog.iter.check155
  %vec.epilog.resume.val159 = phi i64 [ %n.vec138, %vec.epilog.iter.check155 ], [ 0, %vector.main.loop.iter.check135 ]
  %i.ci = and i64 %smax, 7                        ; 2 uses
  %n.vec160 = sub i64 %i.bi, %i.ci                ; 2 uses
  %i.cj = add i64 %i.d, %n.vec160
  %broadcast.splatinsert161 = insertelement <8 x float> poison, float %3, i64 0
  %broadcast.splat162 = shufflevector <8 x float> %broadcast.splatinsert161, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body163

vec.epilog.vector.body163:                        ; preds = %vec.epilog.vector.body163, %vec.epilog.ph158
  %index164 = phi i64 [ %vec.epilog.resume.val159, %vec.epilog.ph158 ], [ %index.next167, %vec.epilog.vector.body163 ] ; 2 uses
  %i.ck = add nuw i64 %i.d, %index164             ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ck
  %wide.load165 = load <8 x float>, ptr %i.cl, align 4, !tbaa !26, !alias.scope !27
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ck ; 2 uses
  %wide.load166 = load <8 x float>, ptr %i.cm, align 4, !tbaa !26, !alias.scope !28, !noalias !27
  %i.cn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat162, <8 x float> %wide.load165, <8 x float> %wide.load166)
  store <8 x float> %i.cn, ptr %i.cm, align 4, !tbaa !26, !alias.scope !28, !noalias !27
  %index.next167 = add nuw i64 %index164, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next167, %n.vec160
  br i1 %i.co, label %vec.epilog.middle.block168, label %vec.epilog.vector.body163, !llvm.loop !14

vec.epilog.middle.block168:                       ; preds = %vec.epilog.vector.body163
  %cmp.n169 = icmp eq i64 %i.ci, 0
  br i1 %cmp.n169, label %.loopexit, label %.lr.ph84.preheader

.lr.ph84.preheader:                               ; preds = %iter.check154, %vector.memcheck131, %vec.epilog.iter.check155, %vec.epilog.middle.block168
  %.06283.ph = phi i64 [ %i.d, %iter.check154 ], [ %i.d, %vector.memcheck131 ], [ %i.bt, %vec.epilog.iter.check155 ], [ %i.cj, %vec.epilog.middle.block168 ]
  br label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %.lr.ph84
  %.06283 = phi i64 [ %i.cu, %.lr.ph84 ], [ %.06283.ph, %.lr.ph84.preheader ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.06283
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !26
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.06283 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !26
  %i.ct = tail call float @llvm.fmuladd.f32(float %3, float %i.cq, float %i.cs)
  store float %i.ct, ptr %i.cr, align 4, !tbaa !26
  %i.cu = add nuw nsw i64 %.06283, 1              ; 2 uses
  %i.cv = icmp slt i64 %i.cu, %0
  br i1 %i.cv, label %.lr.ph84, label %.loopexit, !llvm.loop !15

bb.e:                                             ; preds = %bb.b
  %i.cw = and i64 %0, 9223372036854775804         ; 5 uses
  %.not85 = icmp eq i64 %i.cw, 0
  br i1 %.not85, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.idx = shl i64 %5, 3
  %.idx68 = mul i64 %5, 12
  %.idx69 = shl i64 %7, 3
  %.idx70 = mul i64 %7, 12
  %i.cx = shl nsw i64 %5, 2
  %i.cy = shl nsw i64 %7, 2
  %10 = add nsw i64 %i.cw, -1                     ; 2 uses
  %11 = lshr i64 %10, 2
  %12 = add nuw nsw i64 %11, 1                    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.cw, 61
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %ident.check = icmp ne i64 %7, 1
  %ident.check101 = icmp ne i64 %5, 1
  %13 = add nsw i64 %0, -4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %6, i64 4      ; 2 uses
  %14 = shl i64 %13, 2
  %mul.result = and i64 %14, -16                  ; 6 uses
  %mul.overflow = icmp ugt i64 %13, 4611686018427387903
  %15 = getelementptr i8, ptr %scevgep, i64 %mul.result
  %16 = icmp ult ptr %15, %scevgep
  %17 = or i1 %16, %mul.overflow
  %scevgep102 = getelementptr i8, ptr %6, i64 8   ; 2 uses
  %18 = getelementptr i8, ptr %scevgep102, i64 %mul.result
  %19 = icmp ult ptr %18, %scevgep102
  %scevgep103 = getelementptr i8, ptr %6, i64 12  ; 2 uses
  %20 = getelementptr i8, ptr %scevgep103, i64 %mul.result
  %21 = icmp ult ptr %20, %scevgep103
  %scevgep104 = getelementptr i8, ptr %4, i64 4   ; 2 uses
  %22 = getelementptr i8, ptr %scevgep104, i64 %mul.result
  %23 = icmp ult ptr %22, %scevgep104
  %scevgep105 = getelementptr i8, ptr %4, i64 8   ; 2 uses
  %24 = getelementptr i8, ptr %scevgep105, i64 %mul.result
  %25 = icmp ult ptr %24, %scevgep105
  %scevgep106 = getelementptr i8, ptr %4, i64 12  ; 2 uses
  %26 = getelementptr i8, ptr %scevgep106, i64 %mul.result
  %27 = icmp ult ptr %26, %scevgep106
  %28 = or i1 %ident.check, %ident.check101
  %29 = or i1 %28, %17
  %30 = or i1 %19, %29
  %31 = or i1 %21, %30
  %32 = or i1 %23, %31
  %33 = or i1 %25, %32
  %34 = or i1 %27, %33
  br i1 %34, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %35 = shl i64 %10, 2
  %36 = and i64 %35, -16
  %37 = add i64 %36, 16                           ; 2 uses
  %38 = getelementptr i8, ptr %6, i64 %37
  %39 = getelementptr i8, ptr %4, i64 %37
  %bound0 = icmp ult ptr %6, %39
  %bound1 = icmp ult ptr %4, %38
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %12, 9223372036854775804       ; 3 uses
  %40 = shl i64 %n.vec, 2                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %3, i64 0
  %41 = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %42 = shl i64 %index, 2                         ; 2 uses
  %43 = getelementptr inbounds [4 x i8], ptr %4, i64 %42
  %wide.vec = load <16 x float>, ptr %43, align 4, !tbaa !26, !alias.scope !32
  %44 = getelementptr inbounds [4 x i8], ptr %6, i64 %42 ; 2 uses
  %wide.vec112 = load <16 x float>, ptr %44, align 4, !tbaa !26, !alias.scope !33, !noalias !32
  %45 = fmul <16 x float> %41, %wide.vec
  %interleaved.vec = fadd <16 x float> %45, %wide.vec112
  store <16 x float> %interleaved.vec, ptr %44, align 4, !tbaa !26, !alias.scope !33, !noalias !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %46 = icmp eq i64 %index.next, %n.vec
  br i1 %46, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %12, %n.vec
  br i1 %cmp.n, label %.preheader.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %.06574.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %40, %middle.block ] ; 3 uses
  br label %bb.f

.preheader.loopexit:                              ; preds = %bb.f, %middle.block
  %.lcssa100 = phi i64 [ %40, %middle.block ], [ %i.ek, %bb.f ]
  %.lcssa99 = phi i64 [ %40, %middle.block ], [ %i.el, %bb.f ]
  %i.cz = and i64 %0, 9223372036854775804
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.e
  %.065.lcssa = phi i64 [ 0, %bb.e ], [ %.lcssa99, %.preheader.loopexit ] ; 2 uses
  %.063.lcssa = phi i64 [ 0, %bb.e ], [ %.lcssa100, %.preheader.loopexit ] ; 2 uses
  %.1.lcssa = phi i64 [ 0, %bb.e ], [ %i.cz, %.preheader.loopexit ] ; 3 uses
  %i.da = icmp samesign ult i64 %.1.lcssa, %0
  br i1 %i.da, label %.lr.ph82.preheader, label %.loopexit

.lr.ph82.preheader:                               ; preds = %.preheader
  %i.db = and i64 %0, 3                           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %i.db, 0
  br i1 %lcmp.mod.not, label %.lr.ph82.prol.loopexit, label %.lr.ph82.prol

.lr.ph82.prol:                                    ; preds = %.lr.ph82.preheader, %.lr.ph82.prol
  %.281.prol = phi i64 [ %i.dj, %.lr.ph82.prol ], [ %.1.lcssa, %.lr.ph82.preheader ]
  %.16480.prol = phi i64 [ %i.dh, %.lr.ph82.prol ], [ %.063.lcssa, %.lr.ph82.preheader ] ; 2 uses
  %.16679.prol = phi i64 [ %i.di, %.lr.ph82.prol ], [ %.065.lcssa, %.lr.ph82.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph82.prol ], [ 0, %.lr.ph82.preheader ]
  %i.dc = getelementptr inbounds [4 x i8], ptr %4, i64 %.16480.prol
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !26
  %i.de = getelementptr inbounds [4 x i8], ptr %6, i64 %.16679.prol ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !26
  %i.dg = tail call float @llvm.fmuladd.f32(float %3, float %i.dd, float %i.df)
  store float %i.dg, ptr %i.de, align 4, !tbaa !26
  %i.dh = add nsw i64 %.16480.prol, %5            ; 2 uses
  %i.di = add nsw i64 %.16679.prol, %7            ; 2 uses
  %i.dj = add nuw nsw i64 %.281.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.db
  br i1 %prol.iter.cmp.not, label %.lr.ph82.prol.loopexit, label %.lr.ph82.prol, !llvm.loop !20

.lr.ph82.prol.loopexit:                           ; preds = %.lr.ph82.prol, %.lr.ph82.preheader
  %.281.unr = phi i64 [ %.1.lcssa, %.lr.ph82.preheader ], [ %i.dj, %.lr.ph82.prol ]
  %.16480.unr = phi i64 [ %.063.lcssa, %.lr.ph82.preheader ], [ %i.dh, %.lr.ph82.prol ]
  %.16679.unr = phi i64 [ %.065.lcssa, %.lr.ph82.preheader ], [ %i.di, %.lr.ph82.prol ]
  %i.dk = sub nsw i64 %i.cw, %0
  %i.dl = icmp ugt i64 %i.dk, -4
  br i1 %i.dl, label %.loopexit, label %.lr.ph82

bb.f:                                             ; preds = %scalar.ph.preheader, %bb.f
  %.176 = phi i64 [ %i.em, %bb.f ], [ %.06574.ph, %scalar.ph.preheader ]
  %.06375 = phi i64 [ %i.ek, %bb.f ], [ %.06574.ph, %scalar.ph.preheader ] ; 2 uses
  %.06574 = phi i64 [ %i.el, %bb.f ], [ %.06574.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %4, i64 %.06375 ; 4 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !26
  %i.do = fmul float %3, %i.dn
  %i.dp = getelementptr [4 x i8], ptr %i.dm, i64 %5
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !26
  %i.dr = fmul float %3, %i.dq
  %i.ds = getelementptr i8, ptr %i.dm, i64 %.idx
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !26
  %i.du = fmul float %3, %i.dt
  %i.dv = getelementptr i8, ptr %i.dm, i64 %.idx68
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !26
  %i.dx = fmul float %3, %i.dw
  %i.dy = getelementptr inbounds [4 x i8], ptr %6, i64 %.06574 ; 5 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !26
  %i.ea = fadd float %i.do, %i.dz
  store float %i.ea, ptr %i.dy, align 4, !tbaa !26
  %i.eb = getelementptr [4 x i8], ptr %i.dy, i64 %7 ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !26
  %i.ed = fadd float %i.dr, %i.ec
  store float %i.ed, ptr %i.eb, align 4, !tbaa !26
  %i.ee = getelementptr i8, ptr %i.dy, i64 %.idx69 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !26
  %i.eg = fadd float %i.du, %i.ef
  store float %i.eg, ptr %i.ee, align 4, !tbaa !26
  %i.eh = getelementptr i8, ptr %i.dy, i64 %.idx70 ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !26
  %i.ej = fadd float %i.dx, %i.ei
  store float %i.ej, ptr %i.eh, align 4, !tbaa !26
  %i.ek = add nsw i64 %.06375, %i.cx              ; 2 uses
  %i.el = add nsw i64 %.06574, %i.cy              ; 2 uses
  %i.em = add nuw nsw i64 %.176, 4                ; 2 uses
  %i.en = icmp samesign ult i64 %i.em, %i.cw
  br i1 %i.en, label %bb.f, label %.preheader.loopexit, !llvm.loop !21

.lr.ph82:                                         ; preds = %.lr.ph82.prol.loopexit, %.lr.ph82
  %.281 = phi i64 [ %i.fq, %.lr.ph82 ], [ %.281.unr, %.lr.ph82.prol.loopexit ]
  %.16480 = phi i64 [ %i.fo, %.lr.ph82 ], [ %.16480.unr, %.lr.ph82.prol.loopexit ] ; 2 uses
  %.16679 = phi i64 [ %i.fp, %.lr.ph82 ], [ %.16679.unr, %.lr.ph82.prol.loopexit ] ; 2 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %4, i64 %.16480
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !26
  %i.eq = getelementptr inbounds [4 x i8], ptr %6, i64 %.16679 ; 2 uses
  %i.er = load float, ptr %i.eq, align 4, !tbaa !26
  %i.es = tail call float @llvm.fmuladd.f32(float %3, float %i.ep, float %i.er)
  store float %i.es, ptr %i.eq, align 4, !tbaa !26
  %i.et = add nsw i64 %.16480, %5                 ; 2 uses
  %i.eu = add nsw i64 %.16679, %7                 ; 2 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %4, i64 %i.et
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !26
  %i.ex = getelementptr inbounds [4 x i8], ptr %6, i64 %i.eu ; 2 uses
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !26
  %i.ez = tail call float @llvm.fmuladd.f32(float %3, float %i.ew, float %i.ey)
  store float %i.ez, ptr %i.ex, align 4, !tbaa !26
  %i.fa = add nsw i64 %i.et, %5                   ; 2 uses
  %i.fb = add nsw i64 %i.eu, %7                   ; 2 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %4, i64 %i.fa
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !26
  %i.fe = getelementptr inbounds [4 x i8], ptr %6, i64 %i.fb ; 2 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !26
  %i.fg = tail call float @llvm.fmuladd.f32(float %3, float %i.fd, float %i.ff)
  store float %i.fg, ptr %i.fe, align 4, !tbaa !26
  %i.fh = add nsw i64 %i.fa, %5                   ; 2 uses
  %i.fi = add nsw i64 %i.fb, %7                   ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %4, i64 %i.fh
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !26
  %i.fl = getelementptr inbounds [4 x i8], ptr %6, i64 %i.fi ; 2 uses
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !26
  %i.fn = tail call float @llvm.fmuladd.f32(float %3, float %i.fk, float %i.fm)
  store float %i.fn, ptr %i.fl, align 4, !tbaa !26
  %i.fo = add nsw i64 %i.fh, %5
  %i.fp = add nsw i64 %i.fi, %7
  %i.fq = add nuw nsw i64 %.281, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.fq, %0
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph82, !llvm.loop !22

.loopexit:                                        ; preds = %.lr.ph82.prol.loopexit, %.lr.ph82, %.lr.ph84, %middle.block152, %vec.epilog.middle.block168, %.preheader, %saxpy_kernel_16.exit, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!8 = distinct !{!8, !24}
!9 = distinct !{!9, !24}
!10 = distinct !{!10, i1 false, !"LVerDomain"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !24, !29, !30}
!14 = distinct !{!14, !24, !29, !30}
!15 = distinct !{!15, !24, !29}
!16 = distinct !{!16, i1 false, !"LVerDomain"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !24, !29, !30}
!20 = distinct !{!20, !34}
!21 = distinct !{!21, !24, !29}
!22 = distinct !{!22, !24, !29}
!23 = !{!4, !4, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"float", !4, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!11}
!28 = !{!12}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = !{!"branch_weights", i32 8, i32 24}
!32 = !{!17}
!33 = !{!18}
!34 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
