Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/distance_transform?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [62 x i8] c"[dt_image_distance_transform] called with unsupported mode %i\00", align 1

; Function Attrs: nounwind uwtable
define float @dt_image_distance_transform(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  switch i32 %5, label %bb.b [
    i32 0, label %.loopexit
    i32 1, label %.preheader86
  ]

.preheader86:                                     ; preds = %bb.a
  %i.b = mul i64 %3, %2                           ; 11 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader86
  %min.iters.check = icmp ult i64 %i.b, 4
  %6 = ptrtoaddr ptr %1 to i64
  %7 = ptrtoaddr ptr %0 to i64
  %i.c = sub i64 %7, %6
  %diff.check = icmp ugt i64 %i.c, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check138 = icmp ult i64 %i.b, 32
  br i1 %min.iters.check138, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %i.b, 28
  %n.vec = and i64 %i.b, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %4, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %wide.load = load <8 x float>, ptr %i.e, align 4, !tbaa !12
  %wide.load139 = load <8 x float>, ptr %i.f, align 4, !tbaa !12
  %wide.load140 = load <8 x float>, ptr %i.g, align 4, !tbaa !12
  %wide.load141 = load <8 x float>, ptr %i.h, align 4, !tbaa !12
  %i.i = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.load, %broadcast.splat
  %i.j = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.load139, %broadcast.splat
  %i.k = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.load140, %broadcast.splat
  %i.l = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.load141, %broadcast.splat
  %i.m = select <8 x i1> %i.i, <8 x float> zeroinitializer, <8 x float> splat (float 1.000000e+20)
  %i.n = select <8 x i1> %i.j, <8 x float> zeroinitializer, <8 x float> splat (float 1.000000e+20)
  %i.o = select <8 x i1> %i.k, <8 x float> zeroinitializer, <8 x float> splat (float 1.000000e+20)
  %i.p = select <8 x i1> %i.l, <8 x float> zeroinitializer, <8 x float> splat (float 1.000000e+20)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  store <8 x float> %i.m, ptr %i.q, align 4, !tbaa !12
  store <8 x float> %i.n, ptr %i.r, align 4, !tbaa !12
  store <8 x float> %i.o, ptr %i.s, align 4, !tbaa !12
  store <8 x float> %i.p, ptr %i.t, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec142 = and i64 %i.b, -4                    ; 3 uses
  %broadcast.splatinsert143 = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat144 = shufflevector <4 x float> %broadcast.splatinsert143, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index145 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next147, %vec.epilog.vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index145
  %wide.load146 = load <4 x float>, ptr %i.v, align 4, !tbaa !12
  %i.w = fcmp reassoc nsz arcp contract afn olt <4 x float> %wide.load146, %broadcast.splat144
  %i.x = select <4 x i1> %i.w, <4 x float> zeroinitializer, <4 x float> splat (float 1.000000e+20)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index145
  store <4 x float> %i.x, ptr %i.y, align 4, !tbaa !12
  %index.next147 = add nuw i64 %index145, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next147, %n.vec142
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !14

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n148 = icmp eq i64 %i.b, %n.vec142
  br i1 %cmp.n148, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08187.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec142, %vec.epilog.middle.block ] ; 4 uses
  %i.aa = sub i64 %i.b, %.08187.ph
  %xtraiter = and i64 %i.aa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.08187.prol = phi i64 [ %i.ag, %.lr.ph.prol ], [ %.08187.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.08187.prol
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !12
  %i.ad = fcmp reassoc nsz arcp contract afn olt float %i.ac, %4
  %i.ae = select i1 %i.ad, float 0.000000e+00, float 1.000000e+20
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.08187.prol
  store float %i.ae, ptr %i.af, align 4, !tbaa !12
  %i.ag = add nuw i64 %.08187.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !15

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.08187.unr = phi i64 [ %.08187.ph, %.lr.ph.preheader ], [ %i.ag, %.lr.ph.prol ]
  %i.ah = sub i64 %.08187.ph, %i.b
  %i.ai = icmp ugt i64 %i.ah, -8
  br i1 %i.ai, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.08187 = phi i64 [ %i.ce, %.lr.ph ], [ %.08187.unr, %.lr.ph.prol.loopexit ] ; 10 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.08187
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !12
  %i.al = fcmp reassoc nsz arcp contract afn olt float %i.ak, %4
  %i.am = select i1 %i.al, float 0.000000e+00, float 1.000000e+20
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.08187
  store float %i.am, ptr %i.an, align 4, !tbaa !12
  %i.ao = add nuw i64 %.08187, 1                  ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !12
  %i.ar = fcmp reassoc nsz arcp contract afn olt float %i.aq, %4
  %i.as = select i1 %i.ar, float 0.000000e+00, float 1.000000e+20
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ao
  store float %i.as, ptr %i.at, align 4, !tbaa !12
  %i.au = add nuw i64 %.08187, 2                  ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !12
  %i.ax = fcmp reassoc nsz arcp contract afn olt float %i.aw, %4
  %i.ay = select i1 %i.ax, float 0.000000e+00, float 1.000000e+20
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.au
  store float %i.ay, ptr %i.az, align 4, !tbaa !12
  %i.ba = add nuw i64 %.08187, 3                  ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12
  %i.bd = fcmp reassoc nsz arcp contract afn olt float %i.bc, %4
  %i.be = select i1 %i.bd, float 0.000000e+00, float 1.000000e+20
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ba
  store float %i.be, ptr %i.bf, align 4, !tbaa !12
  %i.bg = add nuw i64 %.08187, 4                  ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !12
  %i.bj = fcmp reassoc nsz arcp contract afn olt float %i.bi, %4
  %i.bk = select i1 %i.bj, float 0.000000e+00, float 1.000000e+20
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bg
  store float %i.bk, ptr %i.bl, align 4, !tbaa !12
  %i.bm = add nuw i64 %.08187, 5                  ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bm
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !12
  %i.bp = fcmp reassoc nsz arcp contract afn olt float %i.bo, %4
  %i.bq = select i1 %i.bp, float 0.000000e+00, float 1.000000e+20
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bm
  store float %i.bq, ptr %i.br, align 4, !tbaa !12
  %i.bs = add nuw i64 %.08187, 6                  ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !12
  %i.bv = fcmp reassoc nsz arcp contract afn olt float %i.bu, %4
  %i.bw = select i1 %i.bv, float 0.000000e+00, float 1.000000e+20
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bs
  store float %i.bw, ptr %i.bx, align 4, !tbaa !12
  %i.by = add nuw i64 %.08187, 7                  ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !12
  %i.cb = fcmp reassoc nsz arcp contract afn olt float %i.ca, %4
  %i.cc = select i1 %i.cb, float 0.000000e+00, float 1.000000e+20
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.by
  store float %i.cc, ptr %i.cd, align 4, !tbaa !12
  %i.ce = add nuw i64 %.08187, 8                  ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.ce, %i.b
  br i1 %exitcond.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !16

bb.b:                                             ; preds = %bb.a
  tail call void @dt_iop_image_fill(ptr noundef %1, float noundef 0.000000e+00, i64 noundef %2, i64 noundef %3, i64 noundef 1) #6
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str, i32 noundef %5) #6
  br label %bb.d

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader86, %bb.a
  %i.cf = tail call i64 @llvm.umax.i64(i64 %2, i64 %3)
  %i.cg = shl i64 %i.cf, 2                        ; 4 uses
  %i.ch = tail call ptr @dt_alloc_aligned(i64 noundef %i.cg) #6 ; 16 uses
  %i.ci = ptrtoaddr ptr %i.ch to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ch, i64 64) ]
  %i.cj = add i64 %i.cg, 4
  %i.ck = tail call ptr @dt_alloc_aligned(i64 noundef %i.cj) #6 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ck, i64 64) ]
  %i.cl = tail call ptr @dt_alloc_aligned(i64 noundef %i.cg) #6 ; 23 uses
  %i.cm = ptrtoaddr ptr %i.cl to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cl, i64 64) ]
  %i.cn = tail call ptr @dt_alloc_aligned(i64 noundef %i.cg) #6 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cn, i64 64) ]
  %.not113 = icmp eq i64 %2, 0
  %.not115 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not113, label %.preheader, label %.preheader85.lr.ph

.preheader85.lr.ph:                               ; preds = %.loopexit
  %i.co = trunc i64 %3 to i32                     ; 2 uses
  br i1 %.not115, label %.preheader85, label %.preheader85.us.us.preheader

.preheader85.us.us.preheader:                     ; preds = %.preheader85.lr.ph
  %i.cp = sub i64 %i.a, %i.cm
  %min.iters.check183 = icmp ult i64 %3, 4
  %ident.check180.not = icmp ne i64 %2, 1
  %or.cond211.not215 = or i1 %min.iters.check183, %ident.check180.not
  %invariant.op = sub i64 %i.a, %i.ci
  %min.iters.check185 = icmp ult i64 %3, 32
  %i.cq = and i64 %3, 28
  %n.vec187 = and i64 %3, -32                     ; 4 uses
end_hunk_0
