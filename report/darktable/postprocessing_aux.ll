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
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
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
  %6 = sub i64 %i.a, %i.b                         ; 2 uses
  %i.cb = sub i64 %i.ca, %6
  %diff.check = icmp ugt i64 %i.cb, -64
  %i.cc = add i64 %i.ca, %i.a
  %i.cd = sub i64 %i.b, %i.cc
  %diff.check110 = icmp ugt i64 %i.cd, -64
  %conflict.rdx111 = or i1 %diff.check, %diff.check110
  %7 = add i64 %6, -1
  %diff.check118 = icmp ult i64 %7, 63
  %conflict.rdx113 = or i1 %conflict.rdx111, %diff.check118
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
begin_hunk_1_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  %i.bc = and i64 %wide.trip.count, 12
  %n.vec461 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n475 = icmp eq i64 %n.vec461, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  %n.vec476 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n488 = icmp eq i64 %n.vec476, %wide.trip.count
  %xtraiter984.a = and i64 %wide.trip.count, 1
  %lcmp.mod985.not.a = icmp eq i64 %xtraiter984.a, 0
  %i.bd = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp samesign ult i32 %i.aa, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %iter.check936

iter.check936:                                    ; preds = %.preheader295.lr.ph, %.loopexit952
  %indvars.iv381 = phi i64 [ 0, %.preheader295.lr.ph ], [ %indvars.iv.next382, %.loopexit952 ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv381 ; 8 uses
  br i1 %min.iters.check918, label %vec.epilog.scalar.ph937.preheader, label %vector.main.loop.iter.check919

vector.main.loop.iter.check919:                   ; preds = %iter.check936
  br i1 %min.iters.check920, label %vec.epilog.ph940, label %vector.body925

vector.body925:                                   ; preds = %vector.main.loop.iter.check919, %vector.body925
  %index926 = phi i64 [ %index.next933, %vector.body925 ], [ 0, %vector.main.loop.iter.check919 ] ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index926
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index926
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index926
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index926
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 192
  %wide.vec = load <32 x i16>, ptr %i.be, align 2, !tbaa !82
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec927 = load <32 x i16>, ptr %i.bg, align 2, !tbaa !82
  %strided.vec928 = shufflevector <32 x i16> %wide.vec927, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec929 = load <32 x i16>, ptr %i.bi, align 2, !tbaa !82
  %strided.vec930 = shufflevector <32 x i16> %wide.vec929, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec931 = load <32 x i16>, ptr %i.bk, align 2, !tbaa !82
  %strided.vec932 = shufflevector <32 x i16> %wide.vec931, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.bl = zext <8 x i16> %strided.vec to <8 x i32>
  %i.bm = zext <8 x i16> %strided.vec928 to <8 x i32>
  %i.bn = zext <8 x i16> %strided.vec930 to <8 x i32>
  %i.bo = zext <8 x i16> %strided.vec932 to <8 x i32>
  %i.bp = shl <8 x i32> %i.bl, %broadcast.splat924
  %i.bq = shl <8 x i32> %i.bm, %broadcast.splat924
  %i.br = shl <8 x i32> %i.bn, %broadcast.splat924
  %i.bs = shl <8 x i32> %i.bo, %broadcast.splat924
  %i.bt = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bp to <8 x float>
  %i.bu = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bq to <8 x float>
  %i.bv = sitofp reassoc nsz arcp contract afn <8 x i32> %i.br to <8 x float>
  %i.bw = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bs to <8 x float>
  %i.bx = tail call reassoc ninf nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bt)
  %i.by = tail call reassoc ninf nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bu)
  %i.bz = tail call reassoc ninf nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bv)
  %i.ca = tail call reassoc ninf nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bw)
  %i.cb = fmul reassoc nsz arcp contract afn <8 x float> %i.bx, splat (float 2.560000e+02)
  %i.cc = fmul reassoc nsz arcp contract afn <8 x float> %i.by, splat (float 2.560000e+02)
  %i.cd = fmul reassoc nsz arcp contract afn <8 x float> %i.bz, splat (float 2.560000e+02)
  %i.ce = fmul reassoc nsz arcp contract afn <8 x float> %i.ca, splat (float 2.560000e+02)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index926 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  store <8 x float> %i.cb, ptr %i.cf, align 4, !tbaa !12
  store <8 x float> %i.cc, ptr %i.cg, align 4, !tbaa !12
  store <8 x float> %i.cd, ptr %i.ch, align 4, !tbaa !12
  store <8 x float> %i.ce, ptr %i.ci, align 4, !tbaa !12
  %index.next933 = add nuw i64 %index926, 32      ; 2 uses
  %i.cj = icmp eq i64 %index.next933, %n.vec922
  br i1 %i.cj, label %vec.epilog.iter.check938, label %vector.body925, !llvm.loop !120

vec.epilog.iter.check938:                         ; preds = %vector.body925
  br i1 %min.epilog.iters.check939, label %vec.epilog.scalar.ph937.preheader, label %vec.epilog.ph940, !prof !83

vec.epilog.scalar.ph937.preheader:                ; preds = %vec.epilog.vector.body944, %iter.check936, %vec.epilog.iter.check938
  %indvars.iv.ph = phi i64 [ 0, %iter.check936 ], [ %n.vec922, %vec.epilog.iter.check938 ], [ %n.vec941, %vec.epilog.vector.body944 ]
  br label %vec.epilog.scalar.ph937

vec.epilog.ph940:                                 ; preds = %vector.main.loop.iter.check919, %vec.epilog.iter.check938
  %vec.epilog.resume.val935 = phi i64 [ %n.vec922, %vec.epilog.iter.check938 ], [ 0, %vector.main.loop.iter.check919 ]
  br label %vec.epilog.vector.body944

vec.epilog.vector.body944:                        ; preds = %vec.epilog.vector.body944, %vec.epilog.ph940
  %index945 = phi i64 [ %vec.epilog.resume.val935, %vec.epilog.ph940 ], [ %index.next948, %vec.epilog.vector.body944 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index945
  %wide.vec946 = load <16 x i16>, ptr %i.ck, align 2, !tbaa !82
  %strided.vec947 = shufflevector <16 x i16> %wide.vec946, <16 x i16> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.cl = zext <4 x i16> %strided.vec947 to <4 x i32>
  %i.cm = shl <4 x i32> %i.cl, %broadcast.splat943
  %i.cn = sitofp reassoc nsz arcp contract afn <4 x i32> %i.cm to <4 x float>
  %i.co = tail call reassoc ninf nsz arcp contract afn <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.cn)
  %i.cp = fmul reassoc nsz arcp contract afn <4 x float> %i.co, splat (float 2.560000e+02)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index945
  store <4 x float> %i.cp, ptr %i.cq, align 4, !tbaa !12
  %index.next948 = add nuw i64 %index945, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next948, %n.vec941
  br i1 %i.cr, label %vec.epilog.scalar.ph937.preheader, label %vec.epilog.vector.body944, !llvm.loop !121

.preheader294:                                    ; preds = %vec.epilog.scalar.ph937
  %i.cs = load i16, ptr %i.g, align 4, !tbaa !188 ; 7 uses
  %i.ct = zext i16 %i.cs to i32                   ; 3 uses
  %.not339 = icmp eq i16 %i.cs, 0                 ; 2 uses
  %i.cu = load i16, ptr %i.d, align 2, !tbaa !187 ; 12 uses
  %i.cv = zext i16 %i.cu to i32                   ; 6 uses
  %.not340 = icmp eq i16 %i.cu, 0                 ; 2 uses
  %i.cw = zext i16 %i.cu to i64                   ; 34 uses
  %i.cx = zext i16 %i.cs to i64                   ; 2 uses
  %i.cy = shl nuw nsw i32 %i.ct, 1                ; 3 uses
  %invariant.op = add nsw i32 %i.cy, -2           ; 5 uses
  %i.cz = zext i16 %i.cu to i64                   ; 10 uses
  %i.da = shl nuw nsw i32 %i.cv, 1                ; 3 uses
  %wide.trip.count355 = zext i16 %i.cs to i64     ; 16 uses
  %i.db = add nsw i32 %i.da, -2                   ; 5 uses
  %wide.trip.count350 = zext i16 %i.cu to i64
  %wide.trip.count365 = zext i16 %i.cu to i64
  %wide.trip.count360 = zext i16 %i.cs to i64
  %i.dc = add nsw i64 %wide.trip.count355, -1     ; 2 uses
  %i.dd = add nsw i32 %i.cy, -2
  %i.de = add nuw nsw i64 %i.aj, %wide.trip.count355
  %i.df = shl nuw nsw i64 %i.de, 2
  %scevgep525 = getelementptr i8, ptr %.0233, i64 %i.df ; 3 uses
  %i.dg = shl nuw nsw i64 %wide.trip.count355, 2  ; 2 uses
  %i.dh = add nsw i32 %i.cy, -2
  %i.di = shl nuw nsw i64 %i.cw, 2                ; 3 uses
  %scevgep640 = getelementptr i8, ptr %scevgep639, i64 %i.di
  %scevgep644.a = getelementptr i8, ptr %.0233, i64 %i.di
  %scevgep648 = getelementptr i8, ptr %scevgep647.a, i64 %i.di
  %i.dj = shl nuw nsw i64 %i.cw, 2
  %i.dk = add nsw i32 %i.da, -2
  %i.dl = add nuw nsw i64 %i.aj, %i.cw
  %i.dm = shl nuw nsw i64 %i.dl, 2
  %scevgep740 = getelementptr i8, ptr %.0233, i64 %i.dm ; 3 uses
  %i.dn = shl nuw nsw i64 %i.cw, 2                ; 2 uses
  %i.do = shl nuw nsw i64 %i.cw, 2
  %i.dp = add nsw i32 %i.da, -2
  %i.dq = mul nsw i64 %i.cw, -4
  %i.dr = shl nuw nsw i64 %wide.trip.count355, 2
  %i.ds = add nsw i64 %i.dr, -4
  %i.dt = mul nsw i64 %i.ds, %i.cw                ; 3 uses
  %scevgep852 = getelementptr i8, ptr %.0233, i64 %i.dt
  %scevgep857.a = getelementptr i8, ptr %scevgep856, i64 %i.dt
  %scevgep860 = getelementptr i8, ptr %.0233, i64 %i.dt
  %i.du = add nsw i64 %i.cz, -1
  %min.iters.check708 = icmp ult i16 %i.cu, 4
  %min.iters.check710 = icmp ult i16 %i.cu, 32
  %i.dv = and i64 %i.cw, 28
  %n.vec712 = and i64 %i.cw, 65504                ; 4 uses
  %cmp.n721 = icmp eq i64 %n.vec712, %i.cw
  %min.epilog.iters.check726 = icmp eq i64 %i.dv, 0
  %n.vec728 = and i64 %i.cw, 65532                ; 3 uses
  %cmp.n734 = icmp eq i64 %n.vec728, %i.cw
  %ident.check635.not = icmp eq i16 %i.cu, 1
  %ident.check591.not = icmp eq i16 %i.cu, 1
  %ident.check521 = icmp ne i16 %i.cu, 1
  %i.dw = add nsw i64 %wide.trip.count355, -1
  %min.iters.check492 = icmp ult i16 %i.cs, 4
  %ident.check = icmp ne i16 %i.cu, 1
  %i.dx = trunc nsw i64 %i.dc to i32
  %i.dy = icmp ugt i64 %i.dc, 4294967295
  %invariant.op1009.a = or i1 %i.dy, %ident.check
  %min.iters.check494 = icmp ult i16 %i.cs, 32
  %i.dz = and i64 %wide.trip.count355, 28
  %n.vec496 = and i64 %wide.trip.count355, 65504  ; 4 uses
  %cmp.n505 = icmp eq i64 %n.vec496, %wide.trip.count355
  %min.epilog.iters.check510 = icmp eq i64 %i.dz, 0
  %n.vec512 = and i64 %wide.trip.count355, 65532  ; 3 uses
  %cmp.n518 = icmp eq i64 %n.vec512, %wide.trip.count355
  %xtraiter981 = and i64 %wide.trip.count355, 3   ; 2 uses
  %lcmp.mod982.not = icmp eq i64 %xtraiter981, 0
  br label %bb.g

vec.epilog.scalar.ph937:                          ; preds = %vec.epilog.scalar.ph937.preheader, %vec.epilog.scalar.ph937
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph937 ], [ %indvars.iv.ph, %vec.epilog.scalar.ph937.preheader ] ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ea = load i16, ptr %gep, align 2, !tbaa !82
  %i.eb = zext i16 %i.ea to i32
  %i.ec = shl i32 %i.eb, %i.o
  %i.ed = sitofp reassoc nsz arcp contract afn i32 %i.ec to float
  %i.ee = tail call reassoc ninf nsz arcp contract afn float @llvm.sqrt.f32(float %i.ed)
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, 2.560000e+02
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv
  store float %i.ef, ptr %i.eg, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader294, label %vec.epilog.scalar.ph937, !llvm.loop !122

.preheader293:                                    ; preds = %.loopexit951
  %invariant.gep436.a = getelementptr [4 x i8], ptr %.0233, i64 %i.agv ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader293, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader293 ] ; 4 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %index
  %wide.load = load <8 x float>, ptr %i.eh, align 4, !tbaa !12
  %i.ei = getelementptr [4 x i8], ptr %invariant.gep436.a, i64 %index
  %wide.load446 = load <8 x float>, ptr %i.ei, align 4, !tbaa !12
  %i.ej = fadd reassoc nsz arcp contract afn <8 x float> %wide.load446, %wide.load ; 2 uses
  %i.ek = fmul reassoc nsz arcp contract afn <8 x float> %i.ej, %i.ej
  %i.el = fmul reassoc nsz arcp contract afn <8 x float> %i.ek, splat (float f0x37800000)
  %i.em = fptosi <8 x float> %i.el to <8 x i32>
  %1 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.em, <8 x i32> zeroinitializer)
  %i.en = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %1, <8 x i32> splat (i32 65535))
  %i.eo = trunc nuw <8 x i32> %i.en to <8 x i16>
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index
  %i.eq = shufflevector <8 x i16> %i.eo, <8 x i16> poison, <29 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 4, i32 poison, i32 poison, i32 poison, i32 5, i32 poison, i32 poison, i32 poison, i32 6, i32 poison, i32 poison, i32 poison, i32 7>
  tail call void @llvm.masked.store.v29i16.p0(<29 x i16> %i.eq, ptr align 2 %i.ep, <29 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>), !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit952, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader293, %middle.block
  %indvars.iv376.ph = phi i64 [ 0, %.preheader293 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.g:                                             ; preds = %.preheader294, %.loopexit951
  %indvars.iv372 = phi i64 [ 0, %.preheader294 ], [ %indvars.iv.next373, %.loopexit951 ] ; 10 uses
  %.0229318 = phi i32 [ 0, %.preheader294 ], [ %i.eu, %.loopexit951 ] ; 3 uses
  %i.es = trunc nuw nsw i64 %indvars.iv372 to i32 ; 5 uses
  %i.et = and i32 %i.es, 1
  %i.eu = shl nuw i32 %i.aa, %i.et                ; 6 uses
  br i1 %.not339, label %.preheader292, label %.lr.ph308

.lr.ph308:                                        ; preds = %bb.g
  %i.ev = zext i32 %.0229318 to i64               ; 5 uses
  %i.ew = getelementptr [4 x i8], ptr %.0233, i64 %i.ev ; 2 uses
  %i.ex = shl nuw nsw i32 1, %i.es                ; 9 uses
  %i.ey = zext nneg i32 %i.ex to i64              ; 32 uses
  %i.ez = shl nuw nsw i32 2, %i.es
  %i.fa = icmp samesign ult i32 %i.ez, %i.cv
  %i.fb = shl nuw nsw i64 %i.ey, 1                ; 6 uses
  %invariant.op.i = sub nsw i64 %i.cw, %i.ey      ; 2 uses
  %i.fc = sext i32 %i.eu to i64                   ; 2 uses
  %invariant.gep430 = getelementptr [4 x i8], ptr %.0233, i64 %i.fc
  %i.fd = shl nsw i64 %i.fc, 2
  %i.fe = shl nuw nsw i64 %i.ev, 2                ; 4 uses
  %i.ff = add nuw nsw i64 %i.dn, %i.fe            ; 2 uses
  %i.fg = shl nuw nsw i64 %i.ey, 2                ; 4 uses
  %i.fh = sub nsw i64 %i.fe, %i.fg
  %i.fi = sub nsw i64 %i.ff, %i.fg
  %reass.sub = sub nsw i64 %i.fe, %i.dn
  %i.fj = shl nuw nsw i64 %i.ev, 2                ; 4 uses
  %i.fk = sub nsw i64 %i.av, %i.fj
  %i.fl = add nuw nsw i64 %i.aj, %i.ey
  %i.fm = sub nsw i64 %i.fl, %i.ev
  %i.fn = shl nsw i64 %i.fm, 2
  %i.fo = add nuw nsw i64 %i.ev, %i.ey
  %i.fp = sub nsw i64 %i.aj, %i.fo
  %i.fq = shl nsw i64 %i.fp, 2
  %i.fr = add nuw nsw i64 %i.ey, 1
  %smax812 = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.fr)
  %i.fs = sub nsw i64 %smax812, %i.ey             ; 7 uses
  %scevgep851 = getelementptr i8, ptr %scevgep850, i64 %i.fg ; 3 uses
  %i.ft = add nuw nsw i64 %i.fj, %i.fg            ; 3 uses
  %scevgep853 = getelementptr i8, ptr %scevgep852, i64 %i.ft
  %scevgep855 = getelementptr i8, ptr %scevgep854, i64 %i.fj
  %scevgep858 = getelementptr i8, ptr %scevgep857.a, i64 %i.ft
  %scevgep859 = getelementptr i8, ptr %.0233, i64 %i.ft
  %i.fu = shl nuw nsw i64 %i.ey, 3
  %i.fv = getelementptr i8, ptr %scevgep860, i64 %i.fu
  %scevgep861 = getelementptr i8, ptr %i.fv, i64 %i.fj
  %i.fw = getelementptr i8, ptr %.0233, i64 %i.ff
  %i.fx = getelementptr i8, ptr %.0233, i64 %i.fh
  %i.fy = getelementptr i8, ptr %.0233, i64 %i.fi
  %i.fz = getelementptr i8, ptr %.0233, i64 %reass.sub
  %i.ga = getelementptr i8, ptr %i.fz, i64 4
  %i.gb = getelementptr i8, ptr %.0233, i64 %i.fe
  %i.gc = getelementptr i8, ptr %i.gb, i64 4
  %min.iters.check874 = icmp samesign ult i64 %indvars.iv372, 3
  %bound0862 = icmp ult ptr %i.ak, %scevgep853
  %bound1863 = icmp ult ptr %i.ew, %scevgep851
  %found.conflict864 = and i1 %bound0862, %bound1863
  %bound0865 = icmp ult ptr %i.ak, %scevgep858
  %bound1866 = icmp ult ptr %scevgep855, %scevgep851
  %found.conflict867 = and i1 %bound0865, %bound1866
  %conflict.rdx868 = or i1 %found.conflict864, %found.conflict867
  %bound0869 = icmp ult ptr %i.ak, %scevgep861
  %bound1870 = icmp ult ptr %scevgep859, %scevgep851
  %found.conflict871 = and i1 %bound0869, %bound1870
  %conflict.rdx872 = or i1 %conflict.rdx868, %found.conflict871
  %min.iters.check876 = icmp samesign ult i64 %indvars.iv372, 5
  %n.vec878 = and i64 %i.ey, 2147483616
  %n.vec906 = and i64 %i.ey, 248
  %xtraiter = and i64 %i.ey, 3                    ; 3 uses
  %i.gd = icmp samesign ult i64 %indvars.iv372, 2
  %unroll_iter = and i64 %i.ey, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod967 = icmp ne i64 %xtraiter, 0
  %min.iters.check814 = icmp ult i64 %i.fs, 4
  %invariant.op992 = add i64 %i.fk, -1
  %invariant.op993 = add i64 %i.fn, -1
  %invariant.op995 = add i64 %i.fq, -1
  %min.iters.check816 = icmp ult i64 %i.fs, 16
  %i.ge = and i64 %i.fs, 12
  %n.vec818 = and i64 %i.fs, -16                  ; 5 uses
  %i.gf = add i64 %n.vec818, %i.ey                ; 2 uses
  %i.gg = add i64 %i.fb, %n.vec818
  %cmp.n829 = icmp eq i64 %i.fs, %n.vec818
  %min.epilog.iters.check836 = icmp eq i64 %i.ge, 0
  %n.vec838 = and i64 %i.fs, -4                   ; 4 uses
  %i.gh = add i64 %n.vec838, %i.ey                ; 2 uses
  %i.gi = add i64 %i.fb, %n.vec838
  %cmp.n846 = icmp eq i64 %i.fs, %n.vec838
  %invariant.op997.reass = add i64 %i.fd, %invariant.op1013.a
  br label %iter.check901

.preheader292:                                    ; preds = %._crit_edge, %bb.g
  br i1 %.not340, label %iter.check, label %.lr.ph314

.lr.ph314:                                        ; preds = %.preheader292
  %i.gj = zext i32 %i.eu to i64                   ; 5 uses
  %i.gk = getelementptr [4 x i8], ptr %.0233, i64 %i.gj ; 2 uses
  %i.gl = shl nuw nsw i32 1, %i.es                ; 9 uses
  %i.gm = zext nneg i32 %i.gl to i64              ; 34 uses
  %i.gn = shl nuw nsw i32 2, %i.es
  %i.go = icmp samesign ult i32 %i.gn, %i.ct
  %i.gp = shl nuw nsw i64 %i.gm, 1                ; 6 uses
  %invariant.op.i266 = sub nsw i64 %i.cx, %i.gm   ; 2 uses
  %i.gq = shl nuw nsw i64 %i.gj, 2                ; 4 uses
  %i.gr = add nuw nsw i64 %i.dg, %i.gq            ; 2 uses
  %i.gs = shl nuw nsw i64 %i.gm, 2                ; 4 uses
  %i.gt = sub nsw i64 %i.gq, %i.gs
  %i.gu = sub nsw i64 %i.gr, %i.gs
  %reass.sub953 = sub nsw i64 %i.gq, %i.dg
  %i.gv = shl nuw nsw i64 %i.gj, 2                ; 4 uses
  %i.gw = sub nsw i64 %i.av, %i.gv
  %i.gx = add nuw nsw i64 %i.aj, %i.gm
  %i.gy = sub nsw i64 %i.gx, %i.gj
  %i.gz = shl nsw i64 %i.gy, 2
  %i.ha = add nuw nsw i64 %i.gj, %i.gm
  %i.hb = sub nsw i64 %i.aj, %i.ha
  %i.hc = shl nsw i64 %i.hb, 2
  %i.hd = add nuw nsw i64 %i.gm, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i266, i64 %i.hd)
  %i.he = sub nsw i64 %smax, %i.gm                ; 7 uses
  %scevgep638 = getelementptr i8, ptr %scevgep637, i64 %i.gs ; 3 uses
  %i.hf = add nuw nsw i64 %i.gv, %i.gs            ; 3 uses
  %scevgep641 = getelementptr i8, ptr %scevgep640, i64 %i.hf
  %scevgep643 = getelementptr i8, ptr %scevgep642, i64 %i.gv
  %scevgep645 = getelementptr i8, ptr %scevgep644.a, i64 %i.hf
  %scevgep646 = getelementptr i8, ptr %.0233, i64 %i.hf
  %i.hg = shl nuw nsw i64 %i.gm, 3
  %i.hh = getelementptr i8, ptr %scevgep648, i64 %i.hg
  %scevgep649 = getelementptr i8, ptr %i.hh, i64 %i.gv
  %i.hi = getelementptr i8, ptr %.0233, i64 %i.gr
  %i.hj = getelementptr i8, ptr %.0233, i64 %i.gt
  %i.hk = getelementptr i8, ptr %.0233, i64 %i.gu
  %i.hl = getelementptr i8, ptr %.0233, i64 %reass.sub953
  %i.hm = getelementptr i8, ptr %i.hl, i64 4
  %i.hn = getelementptr i8, ptr %.0233, i64 %i.gq
  %i.ho = getelementptr i8, ptr %i.hn, i64 4
  %min.iters.check662 = icmp samesign ugt i64 %indvars.iv372, 2
  %or.cond954 = select i1 %min.iters.check662, i1 %ident.check635.not, i1 false
  %bound0650 = icmp ult ptr %i.ak, %scevgep641
  %bound1651 = icmp ult ptr %i.gk, %scevgep638
  %found.conflict652 = and i1 %bound0650, %bound1651
  %bound0653 = icmp ult ptr %i.ak, %scevgep645
  %bound1654 = icmp ult ptr %scevgep643, %scevgep638
  %found.conflict655 = and i1 %bound0653, %bound1654
  %conflict.rdx656 = or i1 %found.conflict652, %found.conflict655
  %bound0657 = icmp ult ptr %i.ak, %scevgep649
  %bound1658 = icmp ult ptr %scevgep646, %scevgep638
  %found.conflict659 = and i1 %bound0657, %bound1658
  %conflict.rdx660 = or i1 %conflict.rdx656, %found.conflict659
  %min.iters.check664 = icmp samesign ult i64 %indvars.iv372, 5
  %n.vec666 = and i64 %i.gm, 2147483616
  %n.vec694 = and i64 %i.gm, 248
  %xtraiter972 = and i64 %i.gm, 1
  %i.hp = icmp eq i64 %indvars.iv372, 0
  %unroll_iter976 = and i64 %i.gm, 2147483646
  %lcmp.mod974.not = icmp eq i64 %xtraiter972, 0
  %lcmp.mod975 = icmp eq i64 %indvars.iv372, 0
  %min.iters.check599 = icmp ugt i64 %i.he, 3
  %or.cond955 = select i1 %min.iters.check599, i1 %ident.check591.not, i1 false
  %invariant.op1003 = add i64 %i.gw, -1
  %invariant.op1005 = add i64 %i.gz, -1
  %invariant.op1007 = add i64 %i.hc, -1
  %min.iters.check601 = icmp ult i64 %i.he, 16
  %i.hq = and i64 %i.he, 12
  %n.vec603 = and i64 %i.he, -16                  ; 5 uses
  %i.hr = add i64 %n.vec603, %i.gm                ; 2 uses
  %i.hs = add i64 %i.gp, %n.vec603
  %cmp.n614 = icmp eq i64 %i.he, %n.vec603
  %min.epilog.iters.check621 = icmp eq i64 %i.hq, 0
  %n.vec623 = and i64 %i.he, -4                   ; 4 uses
  %i.ht = add i64 %n.vec623, %i.gm                ; 2 uses
  %i.hu = add i64 %i.gp, %n.vec623
  %cmp.n631 = icmp eq i64 %i.he, %n.vec623
  br label %iter.check689

iter.check901:                                    ; preds = %.lr.ph308, %._crit_edge
  %indvars.iv352 = phi i64 [ 0, %.lr.ph308 ], [ %indvars.iv.next353, %._crit_edge ] ; 5 uses
  %i.hv = mul i64 %i.dq, %indvars.iv352           ; 3 uses
  %i.hw = mul i64 %i.do, %indvars.iv352           ; 5 uses
  %scevgep742 = getelementptr i8, ptr %i.fw, i64 %i.hw
  %scevgep743 = getelementptr i8, ptr %i.fx, i64 %i.hw
  %scevgep745.a = getelementptr i8, ptr %i.fy, i64 %i.hw
  %scevgep746 = getelementptr i8, ptr %i.ga, i64 %i.hw
  %scevgep748 = getelementptr i8, ptr %i.gc, i64 %i.hw
  %i.hx = mul i64 %i.dj, %indvars.iv352
end_hunk_1
begin_hunk_2_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  %found.conflict452 = and i1 %bound0450, %bound1451
  %conflict.rdx = or i1 %found.conflict, %found.conflict452
  %bound0453 = icmp ult ptr %.0233, %scevgep449
  %bound1454 = icmp ult ptr %invariant.gep432, %scevgep
  %found.conflict455 = and i1 %bound0453, %bound1454
  %conflict.rdx456 = or i1 %conflict.rdx, %found.conflict455
  br i1 %conflict.rdx456, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check459, label %vec.epilog.ph, label %vector.ph460

vector.ph460:                                     ; preds = %vector.main.loop.iter.check
  %i.agz = insertelement <8 x i1> poison, i1 %.not254, i64 0
  %i.aha = shufflevector <8 x i1> %i.agz, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert462 = insertelement <8 x float> poison, float %i.agt, i64 0
  %broadcast.splat463 = shufflevector <8 x float> %broadcast.splatinsert462, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert464 = insertelement <8 x float> poison, float %i.agu, i64 0
  %broadcast.splat465 = shufflevector <8 x float> %broadcast.splatinsert464, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body466

vector.body466:                                   ; preds = %vector.ph460, %vector.body466
  %index467 = phi i64 [ 0, %vector.ph460 ], [ %index.next473, %vector.body466 ] ; 4 uses
  %i.ahb = getelementptr [4 x i8], ptr %invariant.gep432, i64 %index467 ; 2 uses
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 32
  %wide.load468 = load <8 x float>, ptr %i.ahb, align 4, !tbaa !12, !alias.scope !213
  %wide.load469 = load <8 x float>, ptr %i.ahc, align 4, !tbaa !12, !alias.scope !213
  %i.ahd = getelementptr [4 x i8], ptr %invariant.gep434, i64 %index467 ; 3 uses
  %i.ahe = getelementptr i8, ptr %i.ahd, i64 32   ; 2 uses
  %wide.load470 = load <8 x float>, ptr %i.ahd, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %wide.load471 = load <8 x float>, ptr %i.ahe, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.ahf = fsub reassoc nsz arcp contract afn <8 x float> %wide.load470, %wide.load468 ; 4 uses
  %i.ahg = fsub reassoc nsz arcp contract afn <8 x float> %wide.load471, %wide.load469 ; 4 uses
  %i.ahh = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ahf, %broadcast.splat465
  %i.ahi = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ahg, %broadcast.splat465
  %i.ahj = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ahf, %broadcast.splat463
  %i.ahk = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ahg, %broadcast.splat463
  %i.ahl = fsub reassoc nsz arcp contract afn <8 x float> %i.ahf, %broadcast.splat463
  %i.ahm = fsub reassoc nsz arcp contract afn <8 x float> %i.ahg, %broadcast.splat463
  %i.ahn = select <8 x i1> %i.ahj, <8 x float> %i.ahl, <8 x float> zeroinitializer
  %i.aho = select <8 x i1> %i.ahk, <8 x float> %i.ahm, <8 x float> zeroinitializer
  %i.ahp = fadd reassoc nsz arcp contract afn <8 x float> %i.ahf, %broadcast.splat463
  %i.ahq = fadd reassoc nsz arcp contract afn <8 x float> %i.ahg, %broadcast.splat463
  %i.ahr = select <8 x i1> %i.ahh, <8 x float> %i.ahp, <8 x float> %i.ahn ; 2 uses
  %i.ahs = select <8 x i1> %i.ahi, <8 x float> %i.ahq, <8 x float> %i.aho ; 2 uses
  store <8 x float> %i.ahr, ptr %i.ahd, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  store <8 x float> %i.ahs, ptr %i.ahe, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.aht = getelementptr [4 x i8], ptr %.0233, i64 %index467 ; 3 uses
  %i.ahu = getelementptr i8, ptr %i.aht, i64 32   ; 2 uses
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aht, <8 x i1> %i.aha, <8 x float> poison), !tbaa !12, !alias.scope !216, !noalias !213
  %wide.masked.load472 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ahu, <8 x i1> %i.aha, <8 x float> poison), !tbaa !12, !alias.scope !216, !noalias !213
  %i.ahv = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load, %i.ahr
  %i.ahw = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load472, %i.ahs
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.ahv, ptr align 4 %i.aht, <8 x i1> %i.aha), !tbaa !12, !alias.scope !216, !noalias !213
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.ahw, ptr align 4 %i.ahu, <8 x i1> %i.aha), !tbaa !12, !alias.scope !216, !noalias !213
  %index.next473 = add nuw i64 %index467, 16      ; 2 uses
  %i.ahx = icmp eq i64 %index.next473, %n.vec461
  br i1 %i.ahx, label %middle.block474, label %vector.body466, !llvm.loop !177

middle.block474:                                  ; preds = %vector.body466
  br i1 %cmp.n475, label %.loopexit951, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block474
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec461, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ahy = insertelement <4 x i1> poison, i1 %.not254, i64 0
  %i.ahz = shufflevector <4 x i1> %i.ahy, <4 x i1> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert479 = insertelement <4 x float> poison, float %i.agt, i64 0
  %broadcast.splat480 = shufflevector <4 x float> %broadcast.splatinsert479, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert481 = insertelement <4 x float> poison, float %i.agu, i64 0
  %broadcast.splat482 = shufflevector <4 x float> %broadcast.splatinsert481, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index483 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next487, %vec.epilog.vector.body ] ; 4 uses
  %i.aia = getelementptr [4 x i8], ptr %invariant.gep432, i64 %index483
  %wide.load484 = load <4 x float>, ptr %i.aia, align 4, !tbaa !12, !alias.scope !213
  %i.aib = getelementptr [4 x i8], ptr %invariant.gep434, i64 %index483 ; 2 uses
  %wide.load485 = load <4 x float>, ptr %i.aib, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.aic = fsub reassoc nsz arcp contract afn <4 x float> %wide.load485, %wide.load484 ; 4 uses
  %i.aid = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.aic, %broadcast.splat482
  %i.aie = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.aic, %broadcast.splat480
  %i.aif = fsub reassoc nsz arcp contract afn <4 x float> %i.aic, %broadcast.splat480
  %i.aig = select <4 x i1> %i.aie, <4 x float> %i.aif, <4 x float> zeroinitializer
  %i.aih = fadd reassoc nsz arcp contract afn <4 x float> %i.aic, %broadcast.splat480
  %i.aii = select <4 x i1> %i.aid, <4 x float> %i.aih, <4 x float> %i.aig ; 2 uses
  store <4 x float> %i.aii, ptr %i.aib, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.aij = getelementptr [4 x i8], ptr %.0233, i64 %index483 ; 2 uses
  %wide.masked.load486 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.aij, <4 x i1> %i.ahz, <4 x float> poison), !tbaa !12, !alias.scope !216, !noalias !213
  %i.aik = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.load486, %i.aii
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %i.aik, ptr align 4 %i.aij, <4 x i1> %i.ahz), !tbaa !12, !alias.scope !216, !noalias !213
  %index.next487 = add nuw i64 %index483, 4       ; 2 uses
  %i.ail = icmp eq i64 %index.next487, %n.vec476
  br i1 %i.ail, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !178

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n488, label %.loopexit951, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv367.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec461, %vec.epilog.iter.check ], [ %n.vec476, %vec.epilog.middle.block ] ; 6 uses
  br i1 %lcmp.mod985.not.a, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %gep433.prol = getelementptr [4 x i8], ptr %invariant.gep432, i64 %indvars.iv367.ph
  %i.aim = load float, ptr %gep433.prol, align 4, !tbaa !12
  %gep435.prol = getelementptr [4 x i8], ptr %invariant.gep434, i64 %indvars.iv367.ph ; 2 uses
  %i.ain = load float, ptr %gep435.prol, align 4, !tbaa !12
  %i.aio = fsub reassoc nsz arcp contract afn float %i.ain, %i.aim ; 4 uses
  %i.aip = fcmp reassoc nsz arcp contract afn olt float %i.aio, %i.agu
  %i.aiq = fcmp reassoc nsz arcp contract afn ogt float %i.aio, %i.agt
  %i.air = fsub reassoc nsz arcp contract afn float %i.aio, %i.agt
  %spec.select442.prol = select i1 %i.aiq, float %i.air, float 0.000000e+00
  %i.ais = fadd reassoc nsz arcp contract afn float %i.aio, %i.agt
  %.sink.prol = select i1 %i.aip, float %i.ais, float %spec.select442.prol ; 2 uses
  store float %.sink.prol, ptr %gep435.prol, align 4, !tbaa !12
  br i1 %.not254, label %bb.h, label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

bb.h:                                             ; preds = %vec.epilog.scalar.ph.prol
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv367.ph ; 2 uses
  %i.aiu = load float, ptr %i.ait, align 4, !tbaa !12
  %i.aiv = fadd reassoc nsz arcp contract afn float %i.aiu, %.sink.prol
  store float %i.aiv, ptr %i.ait, align 4, !tbaa !12
  br label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

vec.epilog.scalar.ph.prol.loopexit.unr-lcssa:     ; preds = %bb.h, %vec.epilog.scalar.ph.prol
  %indvars.iv.next368.prol = or disjoint i64 %indvars.iv367.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa, %vec.epilog.scalar.ph.preheader
  %indvars.iv367.unr = phi i64 [ %indvars.iv367.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next368.prol, %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa ]
  %i.aiw = icmp eq i64 %indvars.iv367.ph, %i.bd
  br i1 %i.aiw, label %.loopexit951, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.k
  %indvars.iv367 = phi i64 [ %indvars.iv.next368.1, %bb.k ], [ %indvars.iv367.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %gep433 = getelementptr [4 x i8], ptr %invariant.gep432, i64 %indvars.iv367
  %i.aix = load float, ptr %gep433, align 4, !tbaa !12
  %gep435 = getelementptr [4 x i8], ptr %invariant.gep434, i64 %indvars.iv367 ; 2 uses
  %i.aiy = load float, ptr %gep435, align 4, !tbaa !12
  %i.aiz = fsub reassoc nsz arcp contract afn float %i.aiy, %i.aix ; 4 uses
  %i.aja = fcmp reassoc nsz arcp contract afn olt float %i.aiz, %i.agu
  %i.ajb = fcmp reassoc nsz arcp contract afn ogt float %i.aiz, %i.agt
  %i.ajc = fsub reassoc nsz arcp contract afn float %i.aiz, %i.agt
  %spec.select442 = select i1 %i.ajb, float %i.ajc, float 0.000000e+00
  %i.ajd = fadd reassoc nsz arcp contract afn float %i.aiz, %i.agt
  %.sink = select i1 %i.aja, float %i.ajd, float %spec.select442 ; 2 uses
  store float %.sink, ptr %gep435, align 4, !tbaa !12
  br i1 %.not254, label %bb.i, label %vec.epilog.scalar.ph.1

bb.i:                                             ; preds = %vec.epilog.scalar.ph
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv367 ; 2 uses
  %i.ajf = load float, ptr %i.aje, align 4, !tbaa !12
  %i.ajg = fadd reassoc nsz arcp contract afn float %i.ajf, %.sink
  store float %i.ajg, ptr %i.aje, align 4, !tbaa !12
  br label %vec.epilog.scalar.ph.1

vec.epilog.scalar.ph.1:                           ; preds = %vec.epilog.scalar.ph, %bb.i
  %indvars.iv.next368 = add nuw nsw i64 %indvars.iv367, 1 ; 3 uses
  %gep433.1 = getelementptr [4 x i8], ptr %invariant.gep432, i64 %indvars.iv.next368
  %i.ajh = load float, ptr %gep433.1, align 4, !tbaa !12
  %gep435.1 = getelementptr [4 x i8], ptr %invariant.gep434, i64 %indvars.iv.next368 ; 2 uses
  %i.aji = load float, ptr %gep435.1, align 4, !tbaa !12
  %i.ajj = fsub reassoc nsz arcp contract afn float %i.aji, %i.ajh ; 4 uses
  %i.ajk = fcmp reassoc nsz arcp contract afn olt float %i.ajj, %i.agu
  %i.ajl = fcmp reassoc nsz arcp contract afn ogt float %i.ajj, %i.agt
  %i.ajm = fsub reassoc nsz arcp contract afn float %i.ajj, %i.agt
  %spec.select442.1 = select i1 %i.ajl, float %i.ajm, float 0.000000e+00
  %i.ajn = fadd reassoc nsz arcp contract afn float %i.ajj, %i.agt
  %.sink.1 = select i1 %i.ajk, float %i.ajn, float %spec.select442.1 ; 2 uses
  store float %.sink.1, ptr %gep435.1, align 4, !tbaa !12
  br i1 %.not254, label %bb.j, label %bb.k

bb.j:                                             ; preds = %vec.epilog.scalar.ph.1
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv.next368 ; 2 uses
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !12
  %i.ajq = fadd reassoc nsz arcp contract afn float %i.ajp, %.sink.1
  store float %i.ajq, ptr %i.ajo, align 4, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %vec.epilog.scalar.ph.1
  %indvars.iv.next368.1 = add nuw nsw i64 %indvars.iv367, 2 ; 2 uses
  %exitcond371.not.1 = icmp eq i64 %indvars.iv.next368.1, %wide.trip.count
  br i1 %exitcond371.not.1, label %.loopexit951, label %vec.epilog.scalar.ph, !llvm.loop !179

.loopexit951:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.k, %vec.epilog.middle.block, %middle.block474
  %indvars.iv.next373 = add nuw nsw i64 %indvars.iv372, 1 ; 2 uses
  %exitcond375.not = icmp eq i64 %indvars.iv.next373, 5
  br i1 %exitcond375.not, label %.preheader293, label %bb.g, !llvm.loop !180

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv376 = phi i64 [ %indvars.iv.next377, %scalar.ph ], [ %indvars.iv376.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv376
  %i.ajs = load float, ptr %i.ajr, align 4, !tbaa !12
  %gep437 = getelementptr [4 x i8], ptr %invariant.gep436.a, i64 %indvars.iv376
  %i.ajt = load float, ptr %gep437, align 4, !tbaa !12
  %i.aju = fadd reassoc nsz arcp contract afn float %i.ajt, %i.ajs ; 2 uses
  %i.ajv = fmul reassoc nsz arcp contract afn float %i.aju, %i.aju
  %i.ajw = fmul reassoc nsz arcp contract afn float %i.ajv, f0x37800000
  %i.ajx = fptosi float %i.ajw to i32
  %2 = tail call i32 @llvm.smax.i32(i32 %i.ajx, i32 0)
  %i.ajy = tail call i32 @llvm.umin.i32(i32 %2, i32 65535)
  %i.ajz = trunc nuw i32 %i.ajy to i16
  %gep320 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv376
  store i16 %i.ajz, ptr %gep320, align 2, !tbaa !82
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count
  br i1 %exitcond380.not, label %.loopexit952, label %scalar.ph, !llvm.loop !181

.loopexit952:                                     ; preds = %scalar.ph, %middle.block
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1 ; 2 uses
  %exitcond385.not = icmp eq i64 %indvars.iv.next382, %wide.trip.count384
  br i1 %exitcond385.not, label %._crit_edge323, label %iter.check936, !llvm.loop !182

._crit_edge323:                                   ; preds = %.loopexit952
  %i.aka = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.akb = load i32, ptr %i.aka, align 8, !tbaa !191 ; 8 uses
  %.not252 = icmp eq i32 %i.akb, 0
  %brmerge = or i1 %i.an, %.not252
  br i1 %brmerge, label %.loopexit289, label %.preheader291

.preheader291:                                    ; preds = %._crit_edge323
  %i.akc = getelementptr inbounds nuw i8, ptr %0, i64 153268 ; 3 uses
  %i.akd = lshr i32 %i.akb, 4
  %i.ake = and i32 %i.akd, 2                      ; 2 uses
  %i.akf = zext nneg i32 %i.ake to i64
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.akf
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 4
  %i.aki = load float, ptr %i.akh, align 8, !tbaa !12 ; 2 uses
  %i.akj = and i32 %i.akb, 2
  %i.akk = or disjoint i32 %i.akj, 1
  %i.akl = zext nneg i32 %i.akk to i64            ; 2 uses
  %i.akm = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.akl
  %i.akn = load float, ptr %i.akm, align 8, !tbaa !12
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.akl
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !79
  store i32 %i.akp, ptr %i.b, align 4, !tbaa !79
  %i.akq = lshr i32 %i.akb, 8
  %i.akr = and i32 %i.akq, 2
  %i.aks = zext nneg i32 %i.akr to i64
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.aks
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 4
  %i.akv = load float, ptr %i.aku, align 8, !tbaa !12
  %i.akw = insertelement <2 x float> poison, float %i.aki, i64 0
  %i.akx = insertelement <2 x float> %i.akw, float %i.akv, i64 1
  %i.aky = fmul reassoc nsz arcp contract afn <2 x float> %i.akx, splat (float 1.250000e-01)
  %i.akz = insertelement <2 x float> poison, float %i.akn, i64 0
  %i.ala = insertelement <2 x float> %i.akz, float %i.aki, i64 1
  %i.alb = fdiv reassoc nsz arcp contract afn <2 x float> %i.aky, %i.ala
  store <2 x float> %i.alb, ptr %i.a, align 8, !tbaa !12
  %i.alc = zext nneg i32 %i.ake to i64
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.alc
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 4
  %i.alf = load i32, ptr %i.ale, align 4, !tbaa !79
  %i.alg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.alf, ptr %i.alg, align 4, !tbaa !79
  %i.alh = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.alj = load i16, ptr %i.ali, align 4, !tbaa !85
  %i.alk = icmp ugt i16 %i.alj, 2
  br i1 %i.alk, label %.preheader.lr.ph, label %.loopexit289

.preheader.lr.ph:                                 ; preds = %.preheader291
  %i.all = load i16, ptr %i.alh, align 2, !tbaa !86 ; 2 uses
  %i.alm = zext i16 %i.all to i64                 ; 2 uses
  %.idx = shl nuw nsw i64 %i.alm, 2
  %i.aln = getelementptr inbounds nuw i8, ptr %.0233, i64 %.idx
  %i.alo = getelementptr inbounds nuw [2 x i8], ptr %.0233, i64 %i.alm
  %i.alp = getelementptr inbounds nuw i8, ptr %0, i64 381668 ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %i.alr = load float, ptr %i.alq, align 4, !tbaa !212
  %i.als = fmul reassoc nsz arcp contract afn float %i.alr, f0x3B000000 ; 4 uses
  %i.alt = fneg reassoc nsz arcp contract afn float %i.als
  br label %.preheader

.loopexit287:                                     ; preds = %bb.m, %._crit_edge333
  %i.alu = phi i16 [ %i.ank, %._crit_edge333 ], [ %i.aqr, %bb.m ]
  %i.alv = load i16, ptr %i.ali, align 4, !tbaa !85
  %i.alw = zext i16 %i.alv to i32
  %i.alx = add nsw i32 %i.alw, -1
  %i.aly = icmp slt i32 %.pre409, %i.alx
  br i1 %i.aly, label %.preheader, label %.loopexit289, !llvm.loop !183

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit287
  %i.alz = phi i16 [ %i.all, %.preheader.lr.ph ], [ %i.alu, %.loopexit287 ] ; 3 uses
  %.sroa.10.0 = phi ptr [ %i.aln, %.preheader.lr.ph ], [ %.sroa.10.2, %.loopexit287 ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.alo, %.preheader.lr.ph ], [ %.sroa.6.2, %.loopexit287 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.0233, %.preheader.lr.ph ], [ %.sroa.0.2, %.loopexit287 ] ; 2 uses
  %.0338 = phi i32 [ -1, %.preheader.lr.ph ], [ %.1.lcssa, %.loopexit287 ] ; 3 uses
  %.3226337 = phi i32 [ 1, %.preheader.lr.ph ], [ %.pre409, %.loopexit287 ] ; 6 uses
  %.not253330 = icmp sgt i32 %.0338, %.3226337
  %.pre409 = add nuw i32 %.3226337, 1             ; 3 uses
  br i1 %.not253330, label %._crit_edge333, label %.lr.ph332

.loopexit:                                        ; preds = %bb.l, %.lr.ph332
  %i.ama = phi i16 [ %i.amc, %.lr.ph332 ], [ %i.anh, %bb.l ] ; 2 uses
  %i.amb = phi i16 [ %i.amd, %.lr.ph332 ], [ %i.anh, %bb.l ]
  %exitcond400.not = icmp eq i32 %.1331, %.3226337
  br i1 %exitcond400.not, label %._crit_edge333, label %.lr.ph332, !llvm.loop !184

.lr.ph332:                                        ; preds = %.preheader, %.loopexit
  %i.amc = phi i16 [ %i.ama, %.loopexit ], [ %i.alz, %.preheader ]
  %i.amd = phi i16 [ %i.amb, %.loopexit ], [ %i.alz, %.preheader ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %.sroa.0.1, %.loopexit ], [ %.sroa.10.0, %.preheader ] ; 2 uses
  %.sroa.6.1 = phi ptr [ %.sroa.10.1, %.loopexit ], [ %.sroa.6.0, %.preheader ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.6.1, %.loopexit ], [ %.sroa.0.0, %.preheader ] ; 3 uses
  %.1331 = phi i32 [ %i.ame, %.loopexit ], [ %.0338, %.preheader ] ; 2 uses
  %i.ame = add nsw i32 %.1331, 1                  ; 3 uses
  %i.amf = shl i32 %i.ame, 1
  %i.amg = and i32 %i.amf, 14                     ; 2 uses
  %i.amh = shl nuw nsw i32 %i.amg, 1
  %i.ami = or disjoint i32 %i.amh, 2
  %i.amj = lshr i32 %i.akb, %i.ami                ; 2 uses
  %i.amk = and i32 %i.amj, 1                      ; 2 uses
  %i.aml = zext i16 %i.amd to i32
  %i.amm = icmp samesign ult i32 %i.amk, %i.aml
  br i1 %i.amm, label %.lr.ph329, label %.loopexit

.lr.ph329:                                        ; preds = %.lr.ph332
  %i.amn = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.amo = and i32 %i.amj, 1
  %i.amp = zext nneg i32 %i.amo to i64
  %i.amq = or disjoint i32 %i.amk, %i.amg
  %i.amr = shl nuw nsw i32 %i.amq, 1
  %i.ams = lshr i32 %i.akb, %i.amr
  %i.amt = and i32 %i.ams, 3
  %i.amu = zext nneg i32 %i.amt to i64
  %invariant.gep438 = getelementptr [2 x i8], ptr %i.amn, i64 %i.amu
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph329, %bb.l
  %indvars.iv397 = phi i64 [ %i.amp, %.lr.ph329 ], [ %indvars.iv.next398, %bb.l ] ; 3 uses
  %i.amv = load i16, ptr %i.alp, align 4, !tbaa !87
  %i.amw = zext i16 %i.amv to i32                 ; 2 uses
  %i.amx = ashr i32 %i.ame, %i.amw
  %i.amy = load i16, ptr %i.d, align 2, !tbaa !187
  %i.amz = zext i16 %i.amy to i32
  %i.ana = mul nsw i32 %i.amx, %i.amz
  %i.anb = trunc nuw nsw i64 %indvars.iv397 to i32
  %i.anc = lshr i32 %i.anb, %i.amw
  %i.and = add nsw i32 %i.ana, %i.anc
  %i.ane = sext i32 %i.and to i64
  %gep439 = getelementptr [8 x i8], ptr %invariant.gep438, i64 %i.ane
  %i.anf = load i16, ptr %gep439, align 2, !tbaa !82
  %i.ang = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.1, i64 %indvars.iv397
  store i16 %i.anf, ptr %i.ang, align 2, !tbaa !82
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 2 ; 2 uses
  %i.anh = load i16, ptr %i.alh, align 2, !tbaa !86 ; 3 uses
  %i.ani = zext i16 %i.anh to i64
  %i.anj = icmp samesign ult i64 %indvars.iv.next398, %i.ani
  br i1 %i.anj, label %bb.l, label %.loopexit, !llvm.loop !185

._crit_edge333:                                   ; preds = %.loopexit, %.preheader
  %i.ank = phi i16 [ %i.alz, %.preheader ], [ %i.ama, %.loopexit ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.0, %.preheader ], [ %.sroa.0.1, %.loopexit ] ; 3 uses
  %.sroa.6.2 = phi ptr [ %.sroa.6.0, %.preheader ], [ %.sroa.10.1, %.loopexit ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %.preheader ], [ %.sroa.6.1, %.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0338, %.preheader ], [ %.pre409, %.loopexit ]
  %i.anl = shl nuw nsw i32 %.3226337, 1
  %i.anm = and i32 %i.anl, 14                     ; 2 uses
  %i.ann = shl nuw nsw i32 %i.anm, 1
  %i.ano = lshr i32 %i.akb, %i.ann                ; 3 uses
  %i.anp = and i32 %i.ano, 1
  %i.anq = add nuw nsw i32 %i.anp, 1
  %i.anr = zext i16 %i.ank to i32
  %i.ans = add nsw i32 %i.anr, -1
  %i.ant = icmp slt i32 %i.anq, %i.ans
  br i1 %i.ant, label %.lr.ph336, label %.loopexit287

.lr.ph336:                                        ; preds = %._crit_edge333
  %i.anu = and i32 %.3226337, 1                   ; 2 uses
  %i.anv = xor i32 %i.anu, 1
  %i.anw = zext nneg i32 %i.anv to i64
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.anw
  %i.any = load i32, ptr %i.anx, align 4, !tbaa !79
  %i.anz = zext nneg i32 %i.anu to i64            ; 2 uses
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.anz
  %i.aob = load float, ptr %i.aoa, align 4, !tbaa !12
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.anz
  %i.aod = load i32, ptr %i.aoc, align 4, !tbaa !79
  %i.aoe = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.aof = and i32 %i.ano, 1
  %i.aog = and i32 %i.ano, 1
  %narrow = add nuw nsw i32 %i.aog, 1
  %i.aoh = zext nneg i32 %narrow to i64
  %i.aoi = shl i32 %i.any, 2
  %i.aoj = or disjoint i32 %i.aof, %i.anm
  %i.aok = shl nuw nsw i32 %i.aoj, 1
  %i.aol = xor i32 %i.aok, 2
  %i.aom = lshr i32 %i.akb, %i.aol
  %i.aon = and i32 %i.aom, 3
  %i.aoo = zext nneg i32 %i.aon to i64
  %invariant.gep440 = getelementptr inbounds nuw [2 x i8], ptr %i.aoe, i64 %i.aoo
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph336, %bb.m
  %indvars.iv401 = phi i64 [ %i.aoh, %.lr.ph336 ], [ %indvars.iv.next402, %bb.m ] ; 5 uses
  %i.aop = add nsw i64 %indvars.iv401, -1         ; 2 uses
  %i.aoq = getelementptr inbounds [2 x i8], ptr %.sroa.0.2, i64 %i.aop
  %i.aor = load i16, ptr %i.aoq, align 2, !tbaa !82
  %i.aos = zext i16 %i.aor to i32
  %i.aot = add nuw nsw i64 %indvars.iv401, 1      ; 2 uses
  %i.aou = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.2, i64 %i.aot
  %i.aov = load i16, ptr %i.aou, align 2, !tbaa !82
  %i.aow = zext i16 %i.aov to i32
  %i.aox = add nuw nsw i32 %i.aow, %i.aos
  %i.aoy = getelementptr inbounds [2 x i8], ptr %.sroa.10.2, i64 %i.aop
  %i.aoz = load i16, ptr %i.aoy, align 2, !tbaa !82
  %i.apa = zext i16 %i.aoz to i32
  %i.apb = add nuw nsw i32 %i.aox, %i.apa
  %i.apc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.10.2, i64 %i.aot
  %i.apd = load i16, ptr %i.apc, align 2, !tbaa !82
  %i.ape = zext i16 %i.apd to i32
  %i.apf = add nuw nsw i32 %i.apb, %i.ape
  %i.apg = sub i32 %i.apf, %i.aoi
  %i.aph = sitofp reassoc nsz arcp contract afn i32 %i.apg to float
  %i.api = fmul reassoc nsz arcp contract afn float %i.aob, %i.aph
  %i.apj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6.2, i64 %indvars.iv401
  %i.apk = load i16, ptr %i.apj, align 2, !tbaa !82
  %i.apl = zext i16 %i.apk to i32
  %i.apm = add nsw i32 %i.aod, %i.apl
  %i.apn = sitofp reassoc nsz arcp contract afn i32 %i.apm to float
  %i.apo = fmul reassoc nnan nsz arcp contract afn float %i.apn, 5.000000e-01
  %i.app = fadd reassoc nsz arcp contract afn float %i.apo, %i.api ; 2 uses
  %i.apq = fcmp reassoc nsz arcp contract afn olt float %i.app, 0.000000e+00
  %i.apr = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.app)
  %spec.select280 = select reassoc nsz arcp contract afn i1 %i.apq, float 0.000000e+00, float %i.apr ; 2 uses
  %i.aps = load i16, ptr %i.alp, align 4, !tbaa !87
  %i.apt = zext i16 %i.aps to i32                 ; 2 uses
  %i.apu = lshr i32 %.3226337, %i.apt
  %i.apv = load i16, ptr %i.d, align 2, !tbaa !187
  %i.apw = zext i16 %i.apv to i32
  %i.apx = mul nuw nsw i32 %i.apu, %i.apw
  %i.apy = trunc nuw nsw i64 %indvars.iv401 to i32
  %i.apz = lshr i32 %i.apy, %i.apt
  %i.aqa = add nuw nsw i32 %i.apx, %i.apz
  %i.aqb = zext nneg i32 %i.aqa to i64
  %gep441 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep440, i64 %i.aqb ; 2 uses
  %i.aqc = load i16, ptr %gep441, align 2, !tbaa !82
  %i.aqd = uitofp reassoc nsz arcp contract afn i16 %i.aqc to float
  %i.aqe = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.aqd)
  %i.aqf = fsub reassoc nsz arcp contract afn float %i.aqe, %spec.select280 ; 4 uses
  %i.aqg = fcmp reassoc nsz arcp contract afn olt float %i.aqf, %i.alt
  %i.aqh = fadd reassoc nsz arcp contract afn float %i.aqf, %i.als
  %i.aqi = fcmp reassoc nsz arcp contract afn ogt float %i.aqf, %i.als
  %i.aqj = fsub reassoc nsz arcp contract afn float %i.aqf, %i.als
  %spec.select255 = select nsz i1 %i.aqi, float %i.aqj, float 0.000000e+00
  %.0232 = select nsz i1 %i.aqg, float %i.aqh, float %spec.select255
  %i.aqk = fadd reassoc nsz arcp contract afn float %.0232, %spec.select280 ; 2 uses
  %i.aql = fmul reassoc nsz arcp contract afn float %i.aqk, %i.aqk
  %i.aqm = fpext reassoc nsz arcp contract afn float %i.aql to double
  %i.aqn = fadd reassoc nsz arcp contract afn double %i.aqm, 5.000000e-01
  %i.aqo = fptosi double %i.aqn to i32
  %3 = tail call i32 @llvm.smax.i32(i32 %i.aqo, i32 0)
  %i.aqp = tail call i32 @llvm.umin.i32(i32 %3, i32 65535)
  %i.aqq = trunc nuw i32 %i.aqp to i16
  store i16 %i.aqq, ptr %gep441, align 2, !tbaa !82
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 2 ; 2 uses
  %i.aqr = load i16, ptr %i.alh, align 2, !tbaa !86 ; 2 uses
  %i.aqs = zext i16 %i.aqr to i64
  %i.aqt = add nsw i64 %i.aqs, -1
  %i.aqu = icmp slt i64 %indvars.iv.next402, %i.aqt
  br i1 %i.aqu, label %bb.m, label %.loopexit287, !llvm.loop !186

.loopexit289:                                     ; preds = %.loopexit287, %bb.f, %.preheader291, %._crit_edge323
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %.0233)
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.b, %.loopexit289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw13median_filterEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [9 x i32], align 16               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5484 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !221  ; 2 uses
  %.not79 = icmp slt i32 %i.d, 1
  br i1 %.not79, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 768264
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph82, %._crit_edge77.1
  %i.j = phi i32 [ %i.d, %.lr.ph82 ], [ %i.ix, %._crit_edge77.1 ]
  %.04880 = phi i32 [ 1, %.lr.ph82 ], [ %i.iw, %._crit_edge77.1 ] ; 3 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !88   ; 2 uses
  %.not57 = icmp eq ptr %i.k, null
  br i1 %.not57, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.m = add nsw i32 %.04880, -1
  %i.n = tail call noundef i32 %i.k(ptr noundef %i.l, i32 noundef 8192, i32 noundef %i.m, i32 noundef %i.j)
  %.not58 = icmp eq i32 %i.n, 0
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 4) #10 ; 2 uses
  store i32 6, ptr %i.o, align 16, !tbaa !91
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #11
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !81   ; 9 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = load i16, ptr %i.g, align 2, !tbaa !86   ; 2 uses
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = load i16, ptr %i.h, align 4, !tbaa !85   ; 2 uses
  %i.u = zext i16 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, %i.s
  %.not84 = icmp eq i64 %i.v, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.04965 = phi ptr [ %i.y, %.lr.ph ], [ %i.p, %bb.e ] ; 3 uses
  %i.w = load i16, ptr %.04965, align 2, !tbaa !82
  %i.x = getelementptr inbounds nuw i8, ptr %.04965, i64 6
  store i16 %i.w, ptr %i.x, align 2, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %.04965, i64 8 ; 2 uses
  %i.z = load i16, ptr %i.g, align 2, !tbaa !86   ; 2 uses
  %i.aa = zext i16 %i.z to i64                    ; 2 uses
  %i.ab = load i16, ptr %i.h, align 4, !tbaa !85  ; 2 uses
  %i.ac = zext i16 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ad
  %i.af = icmp ult ptr %i.y, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !217

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.pre-phi = phi i64 [ %i.s, %bb.e ], [ %i.aa, %.lr.ph ] ; 3 uses
  %i.ag = phi i16 [ %i.t, %bb.e ], [ %i.ab, %.lr.ph ] ; 3 uses
  %i.ah = phi i16 [ %i.r, %bb.e ], [ %i.z, %.lr.ph ] ; 3 uses
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = zext i16 %i.ag to i32
  %i.ak = add nsw i32 %i.aj, -1
  %i.al = mul nsw i32 %i.ak, %i.ai
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %.pre-phi, %i.am
  br i1 %i.an, label %.lr.ph76, label %._crit_edge77

.lr.ph76:                                         ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.pre-phi
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph76, %bb.l
  %i.ap = phi i16 [ %i.ag, %.lr.ph76 ], [ %i.dw, %bb.l ]
  %i.aq = phi i16 [ %i.ah, %.lr.ph76 ], [ %i.dx, %bb.l ] ; 2 uses
  %i.ar = phi i32 [ %i.ai, %.lr.ph76 ], [ %i.dz, %bb.l ] ; 4 uses
  %.15074 = phi ptr [ %i.ao, %.lr.ph76 ], [ %i.dy, %bb.l ] ; 7 uses
  %i.as = ptrtoint ptr %.15074 to i64
  %i.at = sub i64 %i.as, %i.q
  %i.au = ashr exact i64 %i.at, 3
  %i.av = add nsw i64 %i.au, 1
  %i.aw = zext i16 %i.aq to i64
  %i.ax = srem i64 %i.av, %i.aw
  %i.ay = icmp slt i64 %i.ax, 2
  br i1 %i.ay, label %bb.l, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %bb.f
  %i.az = sub nsw i32 0, %i.ar
  %narrow = xor i32 %i.ar, -1
  %i.ba = sext i32 %narrow to i64
  %i.bb = zext nneg i32 %i.ar to i64
  br label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %.lr.ph72
  %indvars.iv = phi i64 [ 0, %.lr.ph72.preheader ], [ %indvars.iv.next95, %.lr.ph72 ] ; 4 uses
  %indvars.iv86 = phi i64 [ %i.ba, %.lr.ph72.preheader ], [ %indvars.iv.next87, %.lr.ph72 ] ; 4 uses
  %.04569 = phi i32 [ %i.az, %.lr.ph72.preheader ], [ %i.cf, %.lr.ph72 ] ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.15074, i64 %indvars.iv86 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 6
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !82
  %i.bf = zext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !82
  %i.bi = zext i16 %i.bh to i32
  %i.bj = sub nsw i32 %i.bf, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !79
  %i.bl = getelementptr [8 x i8], ptr %.15074, i64 %indvars.iv86 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 14
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !82
  %i.bo = zext i16 %i.bn to i32
  %i.bp = getelementptr i8, ptr %i.bl, i64 10
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !82
  %i.br = zext i16 %i.bq to i32
  %i.bs = sub nsw i32 %i.bo, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !79
  %i.bv = getelementptr [8 x i8], ptr %.15074, i64 %indvars.iv86 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 22
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.by = zext i16 %i.bx to i32
  %i.bz = getelementptr i8, ptr %i.bv, i64 18
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !82
  %i.cb = zext i16 %i.ca to i32
  %i.cc = sub nsw i32 %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !79
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv, 3
  %i.cf = add nsw i32 %.04569, %i.ar
  %.not59 = icmp sgt i32 %.04569, 0
  %indvars.iv.next87 = add nsw i64 %indvars.iv86, %i.bb
  br i1 %.not59, label %.preheader, label %.lr.ph72, !llvm.loop !218

.preheader:                                       ; preds = %.lr.ph72, %bb.j
  %indvars.iv97 = phi i64 [ %indvars.iv.next98.1143, %bb.j ], [ 0, %.lr.ph72 ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw13median_filterEvE3opt, i64 %indvars.iv97 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !222
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ci ; 4 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !79 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !222
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cn ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !79 ; 2 uses
  %i.cq = icmp sgt i32 %i.ck, %i.cp
  br i1 %i.cq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader
  %i.cr = add nsw i32 %i.cp, %i.ck                ; 2 uses
  store i32 %i.cr, ptr %i.cj, align 4, !tbaa !79
  %i.cs = load i32, ptr %i.co, align 4, !tbaa !79
  %i.ct = sub nsw i32 %i.cr, %i.cs                ; 2 uses
  store i32 %i.ct, ptr %i.co, align 4, !tbaa !79
  %i.cu = load i32, ptr %i.cj, align 4, !tbaa !79
  %i.cv = sub nsw i32 %i.cu, %i.ct
  store i32 %i.cv, ptr %i.cj, align 4, !tbaa !79
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.g
  %i.cw = icmp samesign ult i64 %indvars.iv97, 36
  br i1 %i.cw, label %.preheader.1142, label %bb.k

end_hunk_2
begin_hunk_3_@_ZN6LibRaw18recover_highlightsEv:bb.a

middle.block487:                                  ; preds = %vector.body480
  br i1 %cmp.n488, label %.preheader206, label %vec.epilog.iter.check492

vec.epilog.iter.check492:                         ; preds = %middle.block487
  br i1 %min.epilog.iters.check493, label %.lr.ph262.preheader, label %vec.epilog.ph494, !prof !83

vec.epilog.ph494:                                 ; preds = %vector.main.loop.iter.check476, %vec.epilog.iter.check492
  %vec.epilog.resume.val489 = phi i64 [ %n.vec479, %vec.epilog.iter.check492 ], [ 0, %vector.main.loop.iter.check476 ]
  br label %vec.epilog.vector.body496

vec.epilog.vector.body496:                        ; preds = %vec.epilog.vector.body496, %vec.epilog.ph494
  %index497 = phi i64 [ %vec.epilog.resume.val489, %vec.epilog.ph494 ], [ %index.next499, %vec.epilog.vector.body496 ] ; 2 uses
  %i.le = getelementptr [4 x i8], ptr %i.dc, i64 %index497 ; 2 uses
  %wide.load498 = load <4 x float>, ptr %i.le, align 4, !tbaa !12
  %i.lf = fcmp reassoc nsz arcp contract afn oeq <4 x float> %wide.load498, zeroinitializer
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> splat (float 1.000000e+00), ptr align 4 %i.le, <4 x i1> %i.lf), !tbaa !12
  %index.next499 = add nuw i64 %index497, 4       ; 2 uses
  %i.lg = icmp eq i64 %index.next499, %n.vec495
  br i1 %i.lg, label %vec.epilog.middle.block500, label %vec.epilog.vector.body496, !llvm.loop !272

vec.epilog.middle.block500:                       ; preds = %vec.epilog.vector.body496
  br i1 %cmp.n501, label %.preheader206, label %.lr.ph262.preheader

.lr.ph262.preheader:                              ; preds = %iter.check490, %vec.epilog.iter.check492, %vec.epilog.middle.block500
  %indvars.iv354.ph = phi i64 [ 0, %iter.check490 ], [ %n.vec479, %vec.epilog.iter.check492 ], [ %n.vec495, %vec.epilog.middle.block500 ]
  br label %.lr.ph262

.preheader206:                                    ; preds = %.preheader203, %bb.aj, %middle.block487, %vec.epilog.middle.block500, %._crit_edge465
  br i1 %.not285, label %.loopexit, label %.preheader202.lr.ph

.preheader202.lr.ph:                              ; preds = %.preheader206
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv369
  br i1 %.not286, label %.loopexit, label %.preheader202.preheader

.preheader202.preheader:                          ; preds = %.preheader202.lr.ph
  %.pre372.pre = load i16, ptr %i.cq, align 4, !tbaa !87
  br label %.preheader202

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %bb.aj
  %indvars.iv354 = phi i64 [ %indvars.iv.next355, %bb.aj ], [ %indvars.iv354.ph, %.lr.ph262.preheader ] ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv354 ; 2 uses
  %i.lj = load float, ptr %i.li, align 4, !tbaa !12
  %i.lk = fcmp reassoc nsz arcp contract afn oeq float %i.lj, 0.000000e+00
  br i1 %i.lk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph262
  store float 1.000000e+00, ptr %i.li, align 4, !tbaa !12
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph262, %bb.ai
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %exitcond358.not = icmp eq i64 %indvars.iv.next355, %i.dh
  br i1 %exitcond358.not, label %.preheader206, label %.lr.ph262, !llvm.loop !273

.preheader202:                                    ; preds = %.preheader202.preheader, %._crit_edge273
  %.pre372 = phi i16 [ %.pre372.pre, %.preheader202.preheader ], [ %.pre372376, %._crit_edge273 ] ; 3 uses
  %indvars.iv364 = phi i64 [ 0, %.preheader202.preheader ], [ %indvars.iv.next365, %._crit_edge273 ] ; 3 uses
  %indvars366 = trunc i64 %indvars.iv364 to i32   ; 2 uses
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %i.ll = add nuw nsw i32 %indvars366, 1          ; 2 uses
  %i.lm = mul nuw nsw i64 %indvars.iv364, %i.dm
  %invariant.gep456 = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.lm
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader202, %._crit_edge270
  %.pre372381 = phi i16 [ %.pre372, %.preheader202 ], [ %.pre372376, %._crit_edge270 ] ; 2 uses
  %i.ln = phi i16 [ %.pre372, %.preheader202 ], [ %i.np, %._crit_edge270 ] ; 2 uses
  %i.lo = phi i16 [ %.pre372, %.preheader202 ], [ %i.nq, %._crit_edge270 ] ; 3 uses
  %indvars.iv359 = phi i64 [ 0, %.preheader202 ], [ %indvars.iv.next360, %._crit_edge270 ] ; 3 uses
  %indvars361 = trunc i64 %indvars.iv359 to i32   ; 2 uses
  %i.lp = zext nneg i16 %i.lo to i32
  %i.lq = lshr i32 4, %i.lp                       ; 3 uses
  %i.lr = mul i32 %i.lq, %indvars366              ; 2 uses
  %i.ls = mul i32 %i.lq, %i.ll
  %i.lt = icmp ult i32 %i.lr, %i.ls
  br i1 %i.lt, label %.lr.ph269, label %._crit_edge270

.lr.ph269:                                        ; preds = %bb.ak
  %i.lu = add nuw nsw i32 %indvars361, 1          ; 2 uses
  %gep457 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep456, i64 %indvars.iv359
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph269, %._crit_edge266
  %.pre372380 = phi i16 [ %.pre372381, %.lr.ph269 ], [ %.pre372377, %._crit_edge266 ] ; 2 uses
  %i.lv = phi i16 [ %i.ln, %.lr.ph269 ], [ %i.nj, %._crit_edge266 ] ; 2 uses
  %i.lw = phi i16 [ %i.lo, %.lr.ph269 ], [ %i.nj, %._crit_edge266 ] ; 2 uses
  %i.lx = phi i32 [ %i.lq, %.lr.ph269 ], [ %i.nm, %._crit_edge266 ]
  %.1161267 = phi i32 [ %i.lr, %.lr.ph269 ], [ %i.nk, %._crit_edge266 ] ; 2 uses
  %i.ly = mul i32 %i.lx, %indvars361              ; 2 uses
  %i.lz = zext nneg i16 %i.lw to i32
  %i.ma = lshr i32 4, %i.lz
  %i.mb = mul i32 %i.ma, %i.lu
  %i.mc = icmp ult i32 %i.ly, %i.mb
  br i1 %i.mc, label %.lr.ph265, label %._crit_edge266

.lr.ph265:                                        ; preds = %bb.al
  %i.md = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.me = load i32, ptr %i.lh, align 4, !tbaa !79
  %.pre374 = load i16, ptr %i.cv, align 2, !tbaa !86
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph265, %bb.ap
  %.pre372379 = phi i16 [ %.pre372380, %.lr.ph265 ], [ %.pre372378, %bb.ap ] ; 2 uses
  %i.mf = phi i16 [ %i.lv, %.lr.ph265 ], [ %i.nb, %bb.ap ] ; 2 uses
  %i.mg = phi i16 [ %i.lw, %.lr.ph265 ], [ %i.nc, %bb.ap ] ; 2 uses
  %i.mh = phi i16 [ %.pre374, %.lr.ph265 ], [ %i.nd, %bb.ap ] ; 3 uses
  %.1159263 = phi i32 [ %i.ly, %.lr.ph265 ], [ %i.ne, %bb.ap ] ; 2 uses
  %i.mi = zext i16 %i.mh to i32
  %i.mj = mul i32 %.1161267, %i.mi
  %i.mk = add i32 %i.mj, %.1159263
  %i.ml = zext i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.ml ; 2 uses
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.mm, i64 %indvars.iv369 ; 2 uses
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !82
  %i.mp = zext i16 %i.mo to i32                   ; 2 uses
  %i.mq = sdiv i32 %i.mp, %i.me
  %i.mr = icmp sgt i32 %i.mq, 1
  br i1 %i.mr, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.mm, i64 %.0156.lcssa
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !82
  %i.mu = uitofp i16 %i.mt to float
  %i.mv = load float, ptr %gep457, align 4, !tbaa !12
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mv, %i.mu
  %i.mx = fptosi float %i.mw to i32               ; 2 uses
  %i.my = icmp slt i32 %i.mp, %i.mx
  br i1 %i.my, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.mz = tail call i32 @llvm.umin.i32(i32 %i.mx, i32 65535)
  %i.na = trunc nuw i32 %i.mz to i16
  store i16 %i.na, ptr %i.mn, align 2, !tbaa !82
  %.pre373 = load i16, ptr %i.cv, align 2, !tbaa !86
  %.pre375 = load i16, ptr %i.cq, align 4, !tbaa !87 ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.am, %bb.ao, %bb.an
  %.pre372378 = phi i16 [ %.pre372379, %bb.am ], [ %.pre375, %bb.ao ], [ %.pre372379, %bb.an ] ; 2 uses
  %i.nb = phi i16 [ %i.mf, %bb.am ], [ %.pre375, %bb.ao ], [ %i.mf, %bb.an ] ; 2 uses
  %i.nc = phi i16 [ %i.mg, %bb.am ], [ %.pre375, %bb.ao ], [ %i.mg, %bb.an ] ; 2 uses
  %i.nd = phi i16 [ %i.mh, %bb.am ], [ %.pre373, %bb.ao ], [ %i.mh, %bb.an ]
  %i.ne = add nuw nsw i32 %.1159263, 1            ; 2 uses
  %i.nf = zext nneg i16 %i.nc to i32
  %i.ng = lshr i32 4, %i.nf
  %i.nh = mul i32 %i.ng, %i.lu
  %i.ni = icmp samesign ult i32 %i.ne, %i.nh
  br i1 %i.ni, label %bb.am, label %._crit_edge266, !llvm.loop !274

._crit_edge266:                                   ; preds = %bb.ap, %bb.al
  %.pre372377 = phi i16 [ %.pre372380, %bb.al ], [ %.pre372378, %bb.ap ] ; 2 uses
  %i.nj = phi i16 [ %i.lv, %bb.al ], [ %i.nb, %bb.ap ] ; 5 uses
  %i.nk = add nuw nsw i32 %.1161267, 1            ; 2 uses
  %i.nl = zext nneg i16 %i.nj to i32
  %i.nm = lshr i32 4, %i.nl                       ; 2 uses
  %i.nn = mul i32 %i.nm, %i.ll
  %i.no = icmp samesign ult i32 %i.nk, %i.nn
  br i1 %i.no, label %bb.al, label %._crit_edge270, !llvm.loop !275

._crit_edge270:                                   ; preds = %._crit_edge266, %bb.ak
  %.pre372376 = phi i16 [ %.pre372381, %bb.ak ], [ %.pre372377, %._crit_edge266 ] ; 2 uses
  %i.np = phi i16 [ %i.ln, %bb.ak ], [ %i.nj, %._crit_edge266 ]
  %i.nq = phi i16 [ %i.lo, %bb.ak ], [ %i.nj, %._crit_edge266 ]
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %i.dm
  br i1 %exitcond363.not, label %._crit_edge273, label %bb.ak, !llvm.loop !276

._crit_edge273:                                   ; preds = %._crit_edge270
  %exitcond368.not = icmp eq i64 %indvars.iv.next365, %i.cz
  br i1 %exitcond368.not, label %.loopexit, label %.preheader202, !llvm.loop !277

.loopexit:                                        ; preds = %._crit_edge273, %.preheader206, %.preheader202.lr.ph, %bb.e
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %i.nr = load i32, ptr %i.f, align 4, !tbaa !80  ; 2 uses
  %i.ns = zext i32 %i.nr to i64
  %i.nt = icmp samesign ult i64 %indvars.iv.next370, %i.ns
  br i1 %i.nt, label %bb.e, label %._crit_edge279, !llvm.loop !278

._crit_edge279:                                   ; preds = %.loopexit, %._crit_edge
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.dc)
  br label %.loopexit209

.loopexit209:                                     ; preds = %.lr.ph213, %._crit_edge279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ldexp.f32.i32(float, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v29i16.p0(<29 x i16>, ptr captures(none), <29 x i1>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v8i32(<8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.experimental.vector.extract.last.active.v8i32(<8 x i32>, <8 x i1>, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold noreturn }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"branch_weights", i32 8, i32 24}
!17 = !{!"branch_weights", i32 4, i32 12}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"p1 short", !18, i64 0}
!20 = !{!"short", !7, i64 0}
!21 = !{!"double", !7, i64 0}
!22 = !{!"_ZTS20libraw_image_sizes_t", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14, !8, i64 16, !21, i64 24, !8, i64 32, !7, i64 36, !20, i64 164, !7, i64 166}
!23 = !{!"p1 omnipotent char", !18, i64 0}
!24 = !{!"_ZTS16libraw_iparams_t", !7, i64 0, !7, i64 4, !7, i64 68, !7, i64 132, !7, i64 196, !7, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !7, i64 348, !7, i64 384, !7, i64 420, !8, i64 428, !23, i64 432}
!25 = !{!"_ZTS18libraw_nikonlens_t", !11, i64 0, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7}
!26 = !{!"_ZTS16libraw_dnglens_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!27 = !{!"long long", !7, i64 0}
!28 = !{!"_ZTS24libraw_makernotes_lens_t", !27, i64 0, !7, i64 8, !20, i64 136, !20, i64 138, !27, i64 144, !20, i64 152, !20, i64 154, !7, i64 156, !20, i64 220, !7, i64 222, !7, i64 238, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !11, i64 296, !11, i64 300, !11, i64 304, !11, i64 308, !11, i64 312, !27, i64 320, !7, i64 328, !27, i64 456, !7, i64 464, !27, i64 592, !7, i64 600, !20, i64 728, !11, i64 732}
!29 = !{!"_ZTS17libraw_lensinfo_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !7, i64 20, !7, i64 148, !7, i64 276, !7, i64 404, !20, i64 532, !25, i64 536, !26, i64 544, !28, i64 560}
!30 = !{!"_ZTS13libraw_area_t", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6}
!31 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16, !8, i64 32, !7, i64 36, !20, i64 52, !20, i64 54, !7, i64 56, !20, i64 58, !20, i64 60, !20, i64 62, !20, i64 64, !20, i64 66, !20, i64 68, !20, i64 70, !20, i64 72, !20, i64 74, !20, i64 76, !20, i64 78, !20, i64 80, !20, i64 82, !8, i64 84, !11, i64 88, !20, i64 92, !20, i64 94, !20, i64 96, !20, i64 98, !8, i64 100, !20, i64 104, !8, i64 108, !8, i64 112, !20, i64 116, !8, i64 120, !30, i64 124, !30, i64 132, !30, i64 140, !30, i64 148, !30, i64 156, !7, i64 164}
!32 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6}
!33 = !{!"_ZTS25libraw_nikon_makernotes_t", !21, i64 0, !20, i64 8, !20, i64 10, !7, i64 12, !7, i64 19, !7, i64 20, !7, i64 21, !7, i64 34, !7, i64 54, !7, i64 58, !7, i64 62, !7, i64 66, !7, i64 67, !7, i64 68, !7, i64 69, !7, i64 70, !7, i64 71, !7, i64 73, !7, i64 74, !7, i64 75, !7, i64 76, !7, i64 77, !7, i64 78, !7, i64 82, !7, i64 86, !20, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !7, i64 112, !7, i64 144, !7, i64 145, !7, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !7, i64 160, !7, i64 162, !20, i64 170, !32, i64 172, !20, i64 180, !20, i64 182, !20, i64 184, !8, i64 188, !7, i64 192, !7, i64 212, !8, i64 232, !7, i64 236, !8, i64 248, !23, i64 256, !20, i64 264, !20, i64 266, !7, i64 268, !20, i64 270, !21, i64 272, !21, i64 280, !21, i64 288}
!34 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !21, i64 8, !7, i64 16, !7, i64 24, !7, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !7, i64 168, !7, i64 200, !8, i64 264, !7, i64 268, !7, i64 276, !7, i64 288}
!35 = !{!"_ZTS18libraw_fuji_info_t", !11, i64 0, !20, i64 4, !20, i64 6, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14, !20, i64 16, !20, i64 18, !7, i64 20, !7, i64 53, !11, i64 88, !20, i64 92, !20, i64 94, !7, i64 96, !20, i64 100, !8, i64 104, !8, i64 108, !20, i64 112, !7, i64 114, !20, i64 120, !20, i64 122, !20, i64 124, !20, i64 126, !20, i64 128, !8, i64 132, !20, i64 136, !7, i64 138, !7, i64 151, !7, i64 156, !8, i64 164, !20, i64 168, !8, i64 172, !20, i64 176, !7, i64 178, !7, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !7, i64 336, !8, i64 344}
!36 = !{!"_ZTS27libraw_olympus_makernotes_t", !7, i64 0, !20, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !7, i64 64, !7, i64 72, !20, i64 82, !7, i64 84, !20, i64 88, !20, i64 90, !7, i64 92, !7, i64 352, !20, i64 392, !7, i64 394, !7, i64 396, !7, i64 404, !20, i64 416, !20, i64 418, !20, i64 420, !20, i64 422, !21, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !8, i64 452, !20, i64 456, !20, i64 458}
!37 = !{!"_ZTS18libraw_sony_info_t", !20, i64 0, !7, i64 2, !7, i64 3, !8, i64 4, !7, i64 8, !8, i64 12, !7, i64 16, !7, i64 17, !20, i64 18, !7, i64 20, !7, i64 24, !7, i64 25, !20, i64 26, !7, i64 28, !7, i64 38, !7, i64 39, !7, i64 40, !20, i64 48, !7, i64 50, !7, i64 51, !7, i64 52, !20, i64 54, !8, i64 56, !20, i64 60, !7, i64 62, !20, i64 66, !20, i64 68, !20, i64 70, !20, i64 72, !20, i64 74, !20, i64 76, !20, i64 78, !8, i64 80, !11, i64 84, !20, i64 88, !8, i64 92, !8, i64 96, !20, i64 100, !7, i64 102, !8, i64 124, !20, i64 128, !8, i64 132, !7, i64 136, !7, i64 137, !20, i64 138, !20, i64 140, !20, i64 142, !20, i64 144, !20, i64 146, !20, i64 148, !20, i64 150, !20, i64 152, !20, i64 154, !8, i64 156, !20, i64 160, !7, i64 162, !11, i64 180}
!38 = !{!"_ZTS25libraw_kodak_makernotes_t", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6, !20, i64 8, !20, i64 10, !7, i64 12, !7, i64 48, !7, i64 84, !7, i64 120, !7, i64 156, !7, i64 192, !20, i64 228, !20, i64 230, !20, i64 232, !20, i64 234, !11, i64 236, !11, i64 240}
!39 = !{!"_ZTS29libraw_panasonic_makernotes_t", !20, i64 0, !20, i64 2, !7, i64 4, !8, i64 36, !11, i64 40, !7, i64 44, !20, i64 56, !20, i64 58, !8, i64 60, !8, i64 64}
!40 = !{!"_ZTS26libraw_pentax_makernotes_t", !7, i64 0, !7, i64 4, !7, i64 8, !20, i64 12, !8, i64 16, !8, i64 20, !20, i64 24, !7, i64 26, !20, i64 30, !7, i64 32, !7, i64 33, !20, i64 34}
!41 = !{!"_ZTS22libraw_p1_makernotes_t", !7, i64 0, !7, i64 64, !7, i64 128, !7, i64 384}
!42 = !{!"_ZTS25libraw_ricoh_makernotes_t", !20, i64 0, !7, i64 4, !7, i64 12, !20, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !20, i64 40, !20, i64 42, !20, i64 44, !20, i64 46, !20, i64 48, !20, i64 50, !21, i64 56, !21, i64 64}
!43 = !{!"_ZTS27libraw_samsung_makernotes_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 40, !21, i64 88, !8, i64 96, !7, i64 100}
!44 = !{!"_ZTS24libraw_metadata_common_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !20, i64 64, !7, i64 66, !11, i64 196, !7, i64 200, !8, i64 296}
!45 = !{!"_ZTS19libraw_makernotes_t", !31, i64 0, !33, i64 168, !34, i64 464, !35, i64 848, !36, i64 1200, !37, i64 1664, !38, i64 1848, !39, i64 2092, !40, i64 2160, !41, i64 2196, !42, i64 2648, !43, i64 2720, !44, i64 2856}
!46 = !{!"_ZTS21libraw_shootinginfo_t", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6, !20, i64 8, !20, i64 10, !20, i64 12, !7, i64 14, !7, i64 78}
!47 = !{!"_ZTS22libraw_output_params_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 64, !7, i64 112, !11, i64 128, !11, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !23, i64 168, !23, i64 176, !23, i64 184, !23, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !7, i64 224, !8, i64 240, !8, i64 244, !11, i64 248, !11, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !11, i64 288, !11, i64 292, !8, i64 296, !8, i64 300}
!48 = !{!"any p2 pointer", !18, i64 0}
!49 = !{!"p2 omnipotent char", !48, i64 0}
!50 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !11, i64 28, !7, i64 32, !49, i64 40}
!51 = !{!"_ZTS5ph1_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !11, i64 32}
!52 = !{!"_ZTS19libraw_dng_levels_t", !8, i64 0, !7, i64 4, !8, i64 16420, !7, i64 16424, !11, i64 32840, !7, i64 32844, !7, i64 32860, !7, i64 32868, !8, i64 32884, !7, i64 32888, !7, i64 32904, !11, i64 32920, !11, i64 32924, !7, i64 32928}
!53 = !{!"_ZTS18libraw_colordata_t", !7, i64 0, !7, i64 131072, !8, i64 147488, !8, i64 147492, !8, i64 147496, !7, i64 147500, !11, i64 147516, !11, i64 147520, !7, i64 147524, !7, i64 147652, !7, i64 147668, !7, i64 147684, !7, i64 147732, !7, i64 147780, !7, i64 147828, !51, i64 147876, !11, i64 147912, !11, i64 147916, !7, i64 147920, !7, i64 147984, !7, i64 148048, !7, i64 148112, !7, i64 148176, !7, i64 148193, !18, i64 148264, !8, i64 148272, !7, i64 148276, !7, i64 148308, !52, i64 148648, !7, i64 181624, !7, i64 185720, !8, i64 187000, !7, i64 187004, !8, i64 187076, !8, i64 187080}
!54 = !{!"long", !7, i64 0}
!55 = !{!"_ZTS17libraw_gps_info_t", !7, i64 0, !7, i64 12, !7, i64 24, !11, i64 36, !7, i64 40, !7, i64 41, !7, i64 42, !7, i64 43, !7, i64 44}
!56 = !{!"_ZTS17libraw_imgother_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !54, i64 16, !8, i64 24, !7, i64 28, !55, i64 156, !7, i64 204, !7, i64 716, !7, i64 780}
!57 = !{!"_ZTS24LibRaw_thumbnail_formats", !7, i64 0}
!58 = !{!"_ZTS18libraw_thumbnail_t", !57, i64 0, !20, i64 4, !20, i64 6, !8, i64 8, !8, i64 12, !23, i64 16}
!59 = !{!"_ZTS23libraw_thumbnail_list_t", !8, i64 0, !7, i64 8}
!60 = !{!"p1 float", !18, i64 0}
!61 = !{!"_ZTS31libraw_internal_output_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !20, i64 12, !20, i64 14}
!62 = !{!"_ZTS16libraw_rawdata_t", !18, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !19, i64 56, !19, i64 64, !24, i64 72, !22, i64 512, !61, i64 696, !53, i64 712}
!63 = !{!"_ZTS13libraw_data_t", !19, i64 0, !22, i64 8, !24, i64 192, !29, i64 632, !45, i64 1928, !46, i64 5088, !47, i64 5232, !50, i64 5536, !8, i64 5584, !8, i64 5588, !53, i64 5592, !56, i64 192680, !58, i64 193480, !59, i64 193504, !62, i64 193768, !18, i64 381568}
!64 = !{!"p1 _ZTS10LibRaw_TLS", !18, i64 0}
!65 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !18, i64 0}
!66 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!67 = !{!"_ZTS15internal_data_t", !65, i64 0, !66, i64 8, !8, i64 16, !23, i64 24, !27, i64 32, !27, i64 40, !7, i64 48}
!68 = !{!"p1 int", !18, i64 0}
!69 = !{!"_ZTS13output_data_t", !68, i64 0, !68, i64 8}
!70 = !{!"_ZTS15identify_data_t", !8, i64 0, !27, i64 8, !27, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!71 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !7, i64 0}
!72 = !{!"_ZTS12pana8_tags_t", !7, i64 0, !7, i64 24, !20, i64 36, !7, i64 38, !7, i64 46, !7, i64 80, !7, i64 114, !20, i64 148, !20, i64 150, !7, i64 152, !7, i64 192, !7, i64 204, !7, i64 224, !7, i64 234}
!73 = !{!"_ZTS15unpacker_data_t", !20, i64 0, !7, i64 2, !7, i64 10, !8, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !27, i64 48, !27, i64 56, !27, i64 64, !27, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !71, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !27, i64 144, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !72, i64 192, !7, i64 440, !8, i64 2488, !8, i64 2492, !20, i64 2496, !20, i64 2498, !8, i64 2500, !8, i64 2504, !8, i64 2508, !8, i64 2512, !8, i64 2516, !8, i64 2520, !8, i64 2524, !7, i64 2528, !20, i64 2608}
!74 = !{!"_ZTS22libraw_internal_data_t", !67, i64 0, !61, i64 64, !69, i64 80, !70, i64 96, !73, i64 136}
!75 = !{!"p1 _ZTS6decode", !18, i64 0}
!76 = !{!"_ZTS13libraw_memmgr", !48, i64 0, !8, i64 8}
!77 = !{!"_ZTS18libraw_callbacks_t", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144}
!78 = !{!"_ZTS6LibRaw", !63, i64 8, !64, i64 381584, !74, i64 381592, !7, i64 384344, !75, i64 433496, !75, i64 433504, !7, i64 433512, !76, i64 768232, !77, i64 768248, !7, i64 768400, !7, i64 768416, !7, i64 768432, !18, i64 768448, !18, i64 768456, !18, i64 768464, !54, i64 768472, !18, i64 768480, !18, i64 768488, !18, i64 768496, !18, i64 768504}
!79 = !{!8, !8, i64 0}
!80 = !{!78, !8, i64 540}
!81 = !{!78, !19, i64 8}
!82 = !{!20, !20, i64 0}
!83 = !{!"branch_weights", i32 4, i32 28}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = !{!78, !20, i64 20}
!86 = !{!78, !20, i64 22}
!87 = !{!78, !20, i64 381668}
!88 = !{!78, !18, i64 768264}
!89 = !{!78, !18, i64 768272}
!90 = !{!"_ZTS17LibRaw_exceptions", !7, i64 0}
!91 = !{!90, !90, i64 0}
!92 = distinct !{!92, i1 false, !"LVerDomain"}
!93 = distinct !{!93, !92}
!94 = distinct !{!94, !92}
!95 = distinct !{!95, !92}
!96 = distinct !{!96, !13, !14, !15}
!97 = distinct !{!97, !13, !14, !15}
!98 = distinct !{!98, !13, !14, !15}
!99 = distinct !{!99, !13, !14, !15}
!100 = distinct !{!100, !13, !14}
!101 = distinct !{!101, i1 false, !"LVerDomain"}
!102 = distinct !{!102, !101}
!103 = distinct !{!103, !101}
!104 = distinct !{!104, !101}
!105 = distinct !{!105, !101}
!106 = distinct !{!106, !13, !14, !15}
!107 = distinct !{!107, !13, !14, !15}
!108 = distinct !{!108, !13, !14}
!109 = distinct !{!109, !13, !14}
!110 = !{!93}
!111 = !{!94}
!112 = !{!95}
!113 = !{!94, !93}
!114 = !{!102}
!115 = !{!103}
!116 = !{!104}
!117 = !{!105}
!118 = !{!104, !103, !102}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13, !14, !15}
!121 = distinct !{!121, !13, !14, !15}
!122 = distinct !{!122, !13, !15, !14}
!123 = distinct !{!123, !13, !14, !15}
!124 = distinct !{!124, i1 false, !"LVerDomain"}
!125 = distinct !{!125, !124}
!126 = distinct !{!126, !124}
!127 = distinct !{!127, !124}
!128 = distinct !{!128, !124}
!129 = distinct !{!129, !13, !14, !15}
!130 = distinct !{!130, !13, !14, !15}
!131 = distinct !{!131, !84}
!132 = distinct !{!132, !13, !14, !15}
!133 = distinct !{!133, !13, !14, !15}
!134 = distinct !{!134, !13, !14}
!135 = distinct !{!135, i1 false, !"LVerDomain"}
end_hunk_3
