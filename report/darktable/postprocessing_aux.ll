Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/postprocessing_aux?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 22
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZTI17LibRaw_exceptions = comdat any

$_ZTS17LibRaw_exceptions = comdat any

@_ZZN6LibRaw15wavelet_denoiseEvE5noise = internal unnamed_addr constant [8 x float] [float f0x3F4CD9E8, float 2.735000e-01, float 1.202000e-01, float 5.850000e-02, float 2.910000e-02, float 1.520000e-02, float 8.000000e-03, float 4.400000e-03], align 16
@_ZZN6LibRaw13median_filterEvE3opt = internal unnamed_addr constant [38 x i8] c"\01\02\04\05\07\08\00\01\03\04\06\07\01\02\04\05\07\08\00\03\05\08\04\07\03\06\01\04\02\05\04\07\04\02\06\04\04\02", align 16
@_ZTI17LibRaw_exceptions = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTS17LibRaw_exceptions }, comdat, align 8
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTS17LibRaw_exceptions = linkonce_odr constant [20 x i8] c"17LibRaw_exceptions\00", comdat, align 1
@_ZZN6LibRaw16blend_highlightsEvE5trans = internal unnamed_addr constant [2 x [4 x [4 x float]]] [[4 x [4 x float]] [[4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00], [4 x float] [float f0x3FDDB3D7, float f0xBFDDB3D7, float 0.000000e+00, float 0.000000e+00], [4 x float] [float -1.000000e+00, float -1.000000e+00, float 2.000000e+00, float 0.000000e+00], [4 x float] zeroinitializer], [4 x [4 x float]] [[4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], [4 x float] [float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00], [4 x float] [float 1.000000e+00, float 1.000000e+00, float -1.000000e+00, float -1.000000e+00], [4 x float] [float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00]]], align 16
@_ZZN6LibRaw16blend_highlightsEvE6itrans = internal unnamed_addr constant [2 x [4 x [4 x float]]] [[4 x [4 x float]] [[4 x float] [float 1.000000e+00, float f0x3F5DB3D7, float -5.000000e-01, float 0.000000e+00], [4 x float] [float 1.000000e+00, float f0xBF5DB3D7, float -5.000000e-01, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [4 x float] zeroinitializer], [4 x [4 x float]] [[4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], [4 x float] [float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00], [4 x float] [float 1.000000e+00, float 1.000000e+00, float -1.000000e+00, float -1.000000e+00], [4 x float] [float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00]]], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6LibRaw13hat_transformEPfS0_iii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = icmp sgt i32 %5, 0
  br i1 %i.c, label %iter.check, label %.preheader53

iter.check:                                       ; preds = %bb.a
  %i.d = sext i32 %3 to i64                       ; 9 uses
  %i.e = zext nneg i32 %5 to i64                  ; 10 uses
  %wide.trip.count = zext nneg i32 %5 to i64      ; 10 uses
  %min.iters.check = icmp ugt i32 %5, 7
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.f = shl nuw nsw i64 %wide.trip.count, 2      ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 %i.f       ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 %i.f
  %i.i = shl nuw nsw i64 %wide.trip.count, 3
  %i.j = getelementptr i8, ptr %2, i64 %i.i
  %i.k = getelementptr i8, ptr %2, i64 %i.f
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %bound0 = icmp ult ptr %1, %i.j
  %bound1 = icmp ult ptr %i.h, %i.g
  %found.conflict = and i1 %bound0, %bound1
  %bound081 = icmp ult ptr %1, %i.l
  %bound182 = icmp ult ptr %2, %i.g
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx = or i1 %found.conflict, %found.conflict83
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check84 = icmp ult i32 %5, 32
  br i1 %min.iters.check84, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %2, i64 %index ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %wide.load = load <8 x float>, ptr %i.n, align 4, !tbaa !12, !alias.scope !110
  %wide.load85 = load <8 x float>, ptr %i.o, align 4, !tbaa !12, !alias.scope !110
  %wide.load86 = load <8 x float>, ptr %i.p, align 4, !tbaa !12, !alias.scope !110
  %wide.load87 = load <8 x float>, ptr %i.q, align 4, !tbaa !12, !alias.scope !110
  %i.r = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, splat (float 2.000000e+00)
  %i.s = fmul reassoc nsz arcp contract afn <8 x float> %wide.load85, splat (float 2.000000e+00)
  %i.t = fmul reassoc nsz arcp contract afn <8 x float> %wide.load86, splat (float 2.000000e+00)
  %i.u = fmul reassoc nsz arcp contract afn <8 x float> %wide.load87, splat (float 2.000000e+00)
  %i.v = sub nuw nsw i64 %i.e, %index
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.v ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -28
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -60
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -92
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -124
  %wide.load88 = load <8 x float>, ptr %i.x, align 4, !tbaa !12, !alias.scope !110
  %wide.load89 = load <8 x float>, ptr %i.y, align 4, !tbaa !12, !alias.scope !110
  %wide.load90 = load <8 x float>, ptr %i.z, align 4, !tbaa !12, !alias.scope !110
  %wide.load91 = load <8 x float>, ptr %i.aa, align 4, !tbaa !12, !alias.scope !110
  %reverse = shufflevector <8 x float> %wide.load88, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse92 = shufflevector <8 x float> %wide.load89, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse93 = shufflevector <8 x float> %wide.load90, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse94 = shufflevector <8 x float> %wide.load91, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ab = fadd reassoc nsz arcp contract afn <8 x float> %i.r, %reverse
  %i.ac = fadd reassoc nsz arcp contract afn <8 x float> %i.s, %reverse92
  %i.ad = fadd reassoc nsz arcp contract afn <8 x float> %i.t, %reverse93
  %i.ae = fadd reassoc nsz arcp contract afn <8 x float> %i.u, %reverse94
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %gep, i64 96
  %wide.load95 = load <8 x float>, ptr %gep, align 4, !tbaa !12, !alias.scope !111
  %wide.load96 = load <8 x float>, ptr %i.af, align 4, !tbaa !12, !alias.scope !111
  %wide.load97 = load <8 x float>, ptr %i.ag, align 4, !tbaa !12, !alias.scope !111
  %wide.load98 = load <8 x float>, ptr %i.ah, align 4, !tbaa !12, !alias.scope !111
  %i.ai = fadd reassoc nsz arcp contract afn <8 x float> %i.ab, %wide.load95
  %i.aj = fadd reassoc nsz arcp contract afn <8 x float> %i.ac, %wide.load96
  %i.ak = fadd reassoc nsz arcp contract afn <8 x float> %i.ad, %wide.load97
  %i.al = fadd reassoc nsz arcp contract afn <8 x float> %i.ae, %wide.load98
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  store <8 x float> %i.ai, ptr %i.am, align 4, !tbaa !12, !alias.scope !112, !noalias !113
  store <8 x float> %i.aj, ptr %i.an, align 4, !tbaa !12, !alias.scope !112, !noalias !113
  store <8 x float> %i.ak, ptr %i.ao, align 4, !tbaa !12, !alias.scope !112, !noalias !113
  store <8 x float> %i.al, ptr %i.ap, align 4, !tbaa !12, !alias.scope !112, !noalias !113
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader53, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec99 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %invariant.gep231 = getelementptr [4 x i8], ptr %2, i64 %i.e
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index100 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next105, %vec.epilog.vector.body ] ; 5 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %2, i64 %index100
  %wide.load101 = load <8 x float>, ptr %i.ar, align 4, !tbaa !12, !alias.scope !110
  %i.as = fmul reassoc nsz arcp contract afn <8 x float> %wide.load101, splat (float 2.000000e+00)
  %i.at = sub nuw nsw i64 %i.e, %index100
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.at
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -28
  %wide.load102 = load <8 x float>, ptr %i.av, align 4, !tbaa !12, !alias.scope !110
  %reverse103 = shufflevector <8 x float> %wide.load102, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.aw = fadd reassoc nsz arcp contract afn <8 x float> %i.as, %reverse103
  %gep232 = getelementptr [4 x i8], ptr %invariant.gep231, i64 %index100
  %wide.load104 = load <8 x float>, ptr %gep232, align 4, !tbaa !12, !alias.scope !111
  %i.ax = fadd reassoc nsz arcp contract afn <8 x float> %i.aw, %wide.load104
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index100
  store <8 x float> %i.ax, ptr %i.ay, align 4, !tbaa !12, !alias.scope !112, !noalias !113
  %index.next105 = add nuw i64 %index100, 8       ; 2 uses
  %i.az = icmp eq i64 %index.next105, %n.vec99
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !97

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n106 = icmp eq i64 %n.vec99, %wide.trip.count
  br i1 %cmp.n106, label %.preheader53, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec99, %vec.epilog.middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ba = mul nsw i64 %indvars.iv.ph, %i.d
  %i.bb = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, 2.000000e+00
  %i.be = sub nuw nsw i64 %i.e, %indvars.iv.ph
  %i.bf = mul nsw i64 %i.be, %i.d
  %i.bg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !12
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bd, %i.bh
  %i.bj = add nuw nsw i64 %indvars.iv.ph, %i.e
  %i.bk = mul nsw i64 %i.bj, %i.d
  %i.bl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !12
  %i.bn = fadd reassoc nsz arcp contract afn float %i.bi, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  store float %i.bn, ptr %i.bo, align 4, !tbaa !12
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bp = add nsw i64 %wide.trip.count, -1
  %i.bq = icmp eq i64 %indvars.iv.ph, %i.bp
  br i1 %i.bq, label %.preheader53, label %.lr.ph

.preheader53:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %5, %middle.block ], [ %5, %vec.epilog.middle.block ], [ %5, %.lr.ph ], [ %5, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.br = add nsw i32 %.0.lcssa, %5
  %i.bs = icmp slt i32 %i.br, %4
  br i1 %i.bs, label %iter.check133, label %.preheader

iter.check133:                                    ; preds = %.preheader53
  %i.bt = sext i32 %5 to i64                      ; 6 uses
  %i.bu = zext nneg i32 %.0.lcssa to i64          ; 9 uses
  %i.bv = add nsw i64 %i.bt, %i.bu                ; 6 uses
  %i.bw = sext i32 %3 to i64                      ; 3 uses
  %i.bx = sext i32 %4 to i64
  %invariant.op = sub nsw i64 %i.bx, %i.bt        ; 2 uses
  %i.by = add nuw nsw i64 %i.bu, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op, i64 %i.by)
  %i.bz = sub nsw i64 %smax, %i.bu                ; 7 uses
  %min.iters.check114 = icmp ugt i64 %i.bz, 3
  %ident.check108.not = icmp eq i32 %3, 1
  %or.cond226 = and i1 %min.iters.check114, %ident.check108.not
  br i1 %or.cond226, label %vector.memcheck109, label %.lr.ph56.preheader

vector.memcheck109:                               ; preds = %iter.check133
  %i.ca = shl nsw i64 %i.bt, 2                    ; 2 uses
  %6 = add i64 %i.ca, %i.a
  %i.cb = sub i64 %6, %i.b
  %diff.check = icmp ugt i64 %i.cb, -64
  %i.cc = add i64 %i.ca, %i.b
  %i.cd = sub i64 %i.a, %i.cc
  %diff.check110 = icmp ugt i64 %i.cd, -64
  %conflict.rdx111 = or i1 %diff.check, %diff.check110
  %7 = sub i64 %i.a, %i.b
  %diff.check112 = icmp ugt i64 %7, -64
  %conflict.rdx113 = or i1 %conflict.rdx111, %diff.check112
  br i1 %conflict.rdx113, label %.lr.ph56.preheader, label %vector.main.loop.iter.check115

vector.main.loop.iter.check115:                   ; preds = %vector.memcheck109
  %min.iters.check116 = icmp ult i64 %i.bz, 16
  br i1 %min.iters.check116, label %vec.epilog.ph137, label %vector.ph117

vector.ph117:                                     ; preds = %vector.main.loop.iter.check115
  %i.ce = and i64 %i.bz, 12
  %n.vec118 = and i64 %i.bz, -16                  ; 5 uses
  %i.cf = add i64 %n.vec118, %i.bu                ; 2 uses
  %i.cg = add i64 %i.bv, %n.vec118
  %i.ch = getelementptr [4 x i8], ptr %2, i64 %i.bv
  br label %vector.body119

vector.body119:                                   ; preds = %vector.ph117, %vector.body119
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next127, %vector.body119 ] ; 3 uses
  %i.ci = add nuw i64 %index120, %i.bu            ; 3 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %wide.load121 = load <8 x float>, ptr %i.cj, align 4, !tbaa !12
  %wide.load122 = load <8 x float>, ptr %i.ck, align 4, !tbaa !12
  %i.cl = fmul reassoc nsz arcp contract afn <8 x float> %wide.load121, splat (float 2.000000e+00)
  %i.cm = fmul reassoc nsz arcp contract afn <8 x float> %wide.load122, splat (float 2.000000e+00)
  %i.cn = sub nsw i64 %i.ci, %i.bt
  %i.co = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %wide.load123 = load <8 x float>, ptr %i.co, align 4, !tbaa !12
  %wide.load124 = load <8 x float>, ptr %i.cp, align 4, !tbaa !12
  %i.cq = fadd reassoc nsz arcp contract afn <8 x float> %i.cl, %wide.load123
  %i.cr = fadd reassoc nsz arcp contract afn <8 x float> %i.cm, %wide.load124
  %i.cs = getelementptr [4 x i8], ptr %i.ch, i64 %index120 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %wide.load125 = load <8 x float>, ptr %i.cs, align 4, !tbaa !12
  %wide.load126 = load <8 x float>, ptr %i.ct, align 4, !tbaa !12
  %i.cu = fadd reassoc nsz arcp contract afn <8 x float> %i.cq, %wide.load125
  %i.cv = fadd reassoc nsz arcp contract afn <8 x float> %i.cr, %wide.load126
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ci ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store <8 x float> %i.cu, ptr %i.cw, align 4, !tbaa !12
  store <8 x float> %i.cv, ptr %i.cx, align 4, !tbaa !12
  %index.next127 = add nuw i64 %index120, 16      ; 2 uses
  %i.cy = icmp eq i64 %index.next127, %n.vec118
  br i1 %i.cy, label %middle.block128, label %vector.body119, !llvm.loop !98

middle.block128:                                  ; preds = %vector.body119
  %cmp.n129 = icmp eq i64 %i.bz, %n.vec118
  br i1 %cmp.n129, label %.preheader.loopexit, label %vec.epilog.iter.check135

vec.epilog.iter.check135:                         ; preds = %middle.block128
  %min.epilog.iters.check136 = icmp eq i64 %i.ce, 0
  br i1 %min.epilog.iters.check136, label %.lr.ph56.preheader, label %vec.epilog.ph137, !prof !17

vec.epilog.ph137:                                 ; preds = %vector.main.loop.iter.check115, %vec.epilog.iter.check135
  %vec.epilog.resume.val130 = phi i64 [ %n.vec118, %vec.epilog.iter.check135 ], [ 0, %vector.main.loop.iter.check115 ]
  %n.vec138 = and i64 %i.bz, -4                   ; 4 uses
  %i.cz = add i64 %n.vec138, %i.bu                ; 2 uses
  %i.da = add i64 %i.bv, %n.vec138
  %i.db = getelementptr [4 x i8], ptr %2, i64 %i.bv
  br label %vec.epilog.vector.body139

vec.epilog.vector.body139:                        ; preds = %vec.epilog.vector.body139, %vec.epilog.ph137
  %index140 = phi i64 [ %vec.epilog.resume.val130, %vec.epilog.ph137 ], [ %index.next144, %vec.epilog.vector.body139 ] ; 3 uses
  %i.dc = add nuw i64 %index140, %i.bu            ; 3 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dc
  %wide.load141 = load <4 x float>, ptr %i.dd, align 4, !tbaa !12
  %i.de = fmul reassoc nsz arcp contract afn <4 x float> %wide.load141, splat (float 2.000000e+00)
  %i.df = sub nsw i64 %i.dc, %i.bt
  %i.dg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.df
  %wide.load142 = load <4 x float>, ptr %i.dg, align 4, !tbaa !12
  %i.dh = fadd reassoc nsz arcp contract afn <4 x float> %i.de, %wide.load142
  %i.di = getelementptr [4 x i8], ptr %i.db, i64 %index140
  %wide.load143 = load <4 x float>, ptr %i.di, align 4, !tbaa !12
  %i.dj = fadd reassoc nsz arcp contract afn <4 x float> %i.dh, %wide.load143
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dc
  store <4 x float> %i.dj, ptr %i.dk, align 4, !tbaa !12
  %index.next144 = add nuw i64 %index140, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next144, %n.vec138
  br i1 %i.dl, label %vec.epilog.middle.block145, label %vec.epilog.vector.body139, !llvm.loop !99

vec.epilog.middle.block145:                       ; preds = %vec.epilog.vector.body139
  %cmp.n146 = icmp eq i64 %i.bz, %n.vec138
  br i1 %cmp.n146, label %.preheader.loopexit, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %iter.check133, %vector.memcheck109, %vec.epilog.iter.check135, %vec.epilog.middle.block145
  %indvars.iv64.ph = phi i64 [ %i.bu, %iter.check133 ], [ %i.bu, %vector.memcheck109 ], [ %i.cf, %vec.epilog.iter.check135 ], [ %i.cz, %vec.epilog.middle.block145 ]
  %indvars.iv62.ph = phi i64 [ %i.bv, %iter.check133 ], [ %i.bv, %vector.memcheck109 ], [ %i.cg, %vec.epilog.iter.check135 ], [ %i.da, %vec.epilog.middle.block145 ]
  br label %.lr.ph56

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.dm = mul nsw i64 %indvars.iv, %i.d
  %i.dn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dm
  %i.do = load float, ptr %i.dn, align 4, !tbaa !12
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, 2.000000e+00
  %i.dq = sub nuw nsw i64 %i.e, %indvars.iv
  %i.dr = mul nsw i64 %i.dq, %i.d
  %i.ds = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dr
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !12
  %i.du = fadd reassoc nsz arcp contract afn float %i.dp, %i.dt
  %i.dv = add nuw nsw i64 %indvars.iv, %i.e
  %i.dw = mul nsw i64 %i.dv, %i.d
  %i.dx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dw
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !12
  %i.dz = fadd reassoc nsz arcp contract afn float %i.du, %i.dy
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.dz, ptr %i.ea, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.eb = mul nsw i64 %indvars.iv.next, %i.d
  %i.ec = getelementptr inbounds [4 x i8], ptr %2, i64 %i.eb
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !12
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, 2.000000e+00
  %i.ef = sub nuw nsw i64 %i.e, %indvars.iv.next
  %i.eg = mul nsw i64 %i.ef, %i.d
  %i.eh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !12
  %i.ej = fadd reassoc nsz arcp contract afn float %i.ee, %i.ei
  %i.ek = add nuw nsw i64 %indvars.iv.next, %i.e
  %i.el = mul nsw i64 %i.ek, %i.d
  %i.em = getelementptr inbounds [4 x i8], ptr %2, i64 %i.el
  %i.en = load float, ptr %i.em, align 4, !tbaa !12
  %i.eo = fadd reassoc nsz arcp contract afn float %i.ej, %i.en
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store float %i.eo, ptr %i.ep, align 4, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader53, label %.lr.ph, !llvm.loop !100

.preheader.loopexit:                              ; preds = %.lr.ph56, %vec.epilog.middle.block145, %middle.block128
  %indvars.iv.next65.lcssa = phi i64 [ %i.cz, %vec.epilog.middle.block145 ], [ %i.cf, %middle.block128 ], [ %indvars.iv.next65, %.lr.ph56 ]
  %i.eq = trunc nsw i64 %indvars.iv.next65.lcssa to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader53
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader53 ], [ %i.eq, %.preheader.loopexit ] ; 4 uses
  %i.er = icmp slt i32 %.1.lcssa, %4
  br i1 %i.er, label %iter.check210, label %._crit_edge

iter.check210:                                    ; preds = %.preheader
  %i.es = shl nuw nsw i32 %4, 1                   ; 3 uses
  %.neg52 = add nsw i32 %i.es, -2                 ; 5 uses
  %i.et = sext i32 %.1.lcssa to i64               ; 11 uses
  %i.eu = sext i32 %3 to i64                      ; 6 uses
  %i.ev = sext i32 %5 to i64                      ; 6 uses
  %wide.trip.count72 = sext i32 %4 to i64         ; 6 uses
  %i.ew = sub nsw i64 %wide.trip.count72, %i.et   ; 7 uses
  %min.iters.check170 = icmp ult i64 %i.ew, 8
  br i1 %min.iters.check170, label %vec.epilog.scalar.ph211.preheader, label %vector.scevcheck149

vector.scevcheck149:                              ; preds = %iter.check210
  %ident.check150 = icmp ne i32 %3, 1
  %i.ex = xor i64 %i.et, -1
  %i.ey = add nsw i64 %i.ex, %wide.trip.count72   ; 2 uses
  %i.ez = add nsw i32 %i.es, -2
  %i.fa = add i32 %.1.lcssa, %5
  %i.fb = sub i32 %i.ez, %i.fa                    ; 2 uses
  %i.fc = trunc i64 %i.ey to i32
  %i.fd = sub i32 %i.fb, %i.fc
  %i.fe = icmp sgt i32 %i.fd, %i.fb
  %i.ff = icmp ugt i64 %i.ey, 4294967295
  %i.fg = or i1 %i.fe, %i.ff
  %i.fh = or i1 %ident.check150, %i.fg
  br i1 %i.fh, label %vec.epilog.scalar.ph211.preheader, label %vector.memcheck171

vector.memcheck171:                               ; preds = %vector.scevcheck149
  %i.fi = shl nsw i64 %i.et, 2                    ; 3 uses
  %i.fj = getelementptr i8, ptr %1, i64 %i.fi     ; 3 uses
  %i.fk = shl nsw i64 %wide.trip.count72, 2       ; 4 uses
  %i.fl = getelementptr i8, ptr %1, i64 %i.fk     ; 3 uses
  %i.fm = add i32 %.1.lcssa, %5
  %i.fn = add nsw i32 %i.es, -2
  %i.fo = sub i32 %i.fn, %i.fm
  %i.fp = sext i32 %i.fo to i64                   ; 2 uses
  %i.fq = add nsw i64 %i.et, %i.fp
  %i.fr = shl nsw i64 %i.fq, 2
  %i.fs = add nsw i64 %i.fr, 4
  %i.ft = sub nsw i64 %i.fs, %i.fk
  %i.fu = getelementptr i8, ptr %2, i64 %i.ft
  %i.fv = shl nsw i64 %i.fp, 2
  %i.fw = getelementptr i8, ptr %2, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fw, i64 4
  %i.fy = shl nsw i64 %i.ev, 2                    ; 2 uses
  %i.fz = sub nsw i64 %i.fi, %i.fy
  %i.ga = getelementptr i8, ptr %2, i64 %i.fz
  %i.gb = sub nsw i64 %i.fk, %i.fy
  %i.gc = getelementptr i8, ptr %2, i64 %i.gb
  %i.gd = getelementptr i8, ptr %2, i64 %i.fi
  %i.ge = getelementptr i8, ptr %2, i64 %i.fk
  %bound0172 = icmp ult ptr %i.fj, %i.fx
  %bound1173 = icmp ult ptr %i.fu, %i.fl
  %found.conflict174 = and i1 %bound0172, %bound1173
  %bound0175 = icmp ult ptr %i.fj, %i.gc
  %bound1176 = icmp ult ptr %i.ga, %i.fl
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx178 = or i1 %found.conflict174, %found.conflict177
  %bound0179 = icmp ult ptr %i.fj, %i.ge
  %bound1180 = icmp ult ptr %i.gd, %i.fl
  %found.conflict181 = and i1 %bound0179, %bound1180
  %conflict.rdx182 = or i1 %conflict.rdx178, %found.conflict181
  br i1 %conflict.rdx182, label %vec.epilog.scalar.ph211.preheader, label %vector.main.loop.iter.check183

end_hunk_0
