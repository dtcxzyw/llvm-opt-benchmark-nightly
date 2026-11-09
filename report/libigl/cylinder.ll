Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/cylinder?download=true
inline.NumInlined: 71
inline.NumDeleted: 52
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3igl8cylinderIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEviiRNS1_15PlainObjectBaseIT_EERNS5_IT0_EE = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8cylinderIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEviiRNS1_15PlainObjectBaseIT_EERNS5_IT0_EE(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit:
  %i.a = mul nsw i32 %1, %0
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = mul nsw i64 %i.b, 3
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.c, i64 noundef %i.b, i64 noundef 3)
  %i.d = add nsw i32 %1, -1                       ; 2 uses
  %i.e = shl i32 %0, 1
  %i.f = mul i32 %i.e, %i.d
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = mul nsw i64 %i.g, 3
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.h, i64 noundef %i.g, i64 noundef 3)
  %i.i = icmp sgt i32 %0, 0
  br i1 %i.i, label %.lr.ph78, label %._crit_edge79

.lr.ph78:                                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.j = uitofp nneg i32 %0 to double             ; 6 uses
  %i.k = icmp sgt i32 %1, 0
  %i.l = sitofp i32 %i.d to double                ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  br i1 %i.k, label %.lr.ph78.split.us, label %.lr.ph78.split.preheader

.lr.ph78.split.preheader:                         ; preds = %.lr.ph78
  %xtraiter = and i32 %0, 3                       ; 3 uses
  %i.n = icmp ult i32 %0, 4
  br i1 %i.n, label %.lr.ph78.split.epil.preheader, label %.lr.ph78.split.preheader.new

.lr.ph78.split.preheader.new:                     ; preds = %.lr.ph78.split.preheader
  %unroll_iter = and i32 %0, 2147483644
  br label %.lr.ph78.split

.lr.ph78.split.us:                                ; preds = %.lr.ph78
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %2, align 8, !tbaa !13     ; 9 uses
  %i.q = load i64, ptr %i.o, align 8, !tbaa !14   ; 5 uses
  %.idx.us = shl i64 %i.q, 4                      ; 5 uses
  %i.r = zext nneg i32 %0 to i64                  ; 4 uses
  %i.s = zext nneg i32 %0 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %i.t = fdiv double 0.000000e+00, %i.l
  %exitcond82.peel.not = icmp eq i32 %1, 1
  %i.u = shl nuw nsw i64 %wide.trip.count, 3      ; 5 uses
  %4 = add nsw i64 %i.u, -8                       ; 3 uses
  %i.v = add nsw i64 %i.u, -12                    ; 3 uses
  %i.w = shl nuw nsw i64 %i.r, 3                  ; 3 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %.idx.us
  %i.y = getelementptr i8, ptr %i.x, i64 %i.u
  %i.z = getelementptr i8, ptr %i.y, i64 %i.w
  %scevgep = getelementptr i8, ptr %i.z, i64 -8   ; 2 uses
  %i.aa = getelementptr i8, ptr %i.p, i64 %.idx.us
  %scevgep182 = getelementptr i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ab = shl i64 %i.q, 3                         ; 2 uses
  %i.ac = getelementptr i8, ptr %i.p, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 %i.u
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.w
  %scevgep183 = getelementptr i8, ptr %i.ae, i64 -8 ; 2 uses
  %i.af = getelementptr i8, ptr %i.p, i64 %i.ab
  %scevgep184 = getelementptr i8, ptr %i.af, i64 8 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.p, i64 %i.u
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.w
  %scevgep185 = getelementptr i8, ptr %i.ah, i64 -8 ; 2 uses
  %scevgep186 = getelementptr i8, ptr %i.p, i64 8 ; 2 uses
  %i.ai = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ugt i32 %1, 8
  %ident.check.not = icmp eq i32 %0, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  %bound0 = icmp ult ptr %scevgep186, %scevgep183
  %bound1 = icmp ult ptr %scevgep184, %scevgep185
  %found.conflict = and i1 %bound0, %bound1
  %bound0187 = icmp ult ptr %scevgep186, %scevgep
  %bound1188 = icmp ult ptr %scevgep182, %scevgep185
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx = or i1 %found.conflict, %found.conflict189
  %bound0190 = icmp ult ptr %scevgep184, %scevgep
  %bound1191 = icmp ult ptr %scevgep182, %scevgep183
  %found.conflict192 = and i1 %bound0190, %bound1191
  %conflict.rdx193 = or i1 %conflict.rdx, %found.conflict192
  %n.vec = and i64 %i.ai, -2                      ; 3 uses
  %i.aj = or i64 %i.ai, 1
  %i.ak = trunc nsw i64 %n.vec to i32
  %i.al = shl i32 %i.ak, 1
  %broadcast.splatinsert254 = insertelement <2 x double> poison, double %i.l, i64 0
  %broadcast.splat255 = shufflevector <2 x double> %broadcast.splatinsert254, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph78.split.us, %._crit_edge.us
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %._crit_edge.us ], [ 0, %.lr.ph78.split.us ] ; 8 uses
  %.07276.us = phi i32 [ %.2.us.lcssa, %._crit_edge.us ], [ 0, %.lr.ph78.split.us ] ; 6 uses
  %i.am = trunc nuw i64 %indvars.iv85 to i32
  %i.an = uitofp nneg i32 %i.am to double
  %i.ao = fmul nnan double %i.an, f0x401921FB54442D18
  %i.ap = fdiv double %i.ao, %i.j                 ; 2 uses
  %i.aq = tail call double @cos(double noundef %i.ap) #7 ; 3 uses
  %i.ar = tail call double @sin(double noundef %i.ap) #7 ; 3 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 4 uses
  %i.as = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv85 ; 3 uses
  store double %i.aq, ptr %i.as, align 8, !tbaa !30
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %i.q
  store double %i.ar, ptr %i.at, align 8, !tbaa !30
  %i.au = getelementptr i8, ptr %i.as, i64 %.idx.us
  store double %i.t, ptr %i.au, align 8, !tbaa !30
  br i1 %exitcond82.peel.not, label %._crit_edge.us, label %.peel.next

.peel.next:                                       ; preds = %bb.a
  %i.av = load ptr, ptr %3, align 8, !tbaa !17    ; 14 uses
  %i.aw = icmp eq i64 %indvars.iv.next86, %i.r
  %i.ax = trunc nuw nsw i64 %indvars.iv.next86 to i32
  %iv.rem = select i1 %i.aw, i32 0, i32 %i.ax     ; 3 uses
  %i.ay = load i64, ptr %i.m, align 8, !tbaa !18  ; 6 uses
  %i.az = shl nsw i64 %i.ay, 1                    ; 3 uses
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.peel.next
  %i.ba = sext i32 %.07276.us to i64              ; 2 uses
  %i.bb = shl nsw i64 %i.ba, 2                    ; 5 uses
  %i.bc = getelementptr i8, ptr %i.av, i64 %i.bb  ; 5 uses
  %i.bd = getelementptr i8, ptr %i.av, i64 %i.v
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.bb  ; 5 uses
  %i.bf = add i64 %i.ay, %i.ba
  %i.bg = shl i64 %i.bf, 2                        ; 4 uses
  %i.bh = getelementptr i8, ptr %i.av, i64 %i.bg  ; 5 uses
  %i.bi = getelementptr i8, ptr %i.av, i64 %i.v
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.bg  ; 5 uses
  %i.bk = shl i64 %i.ay, 3
  %i.bl = add i64 %i.bk, %i.bb                    ; 4 uses
  %i.bm = getelementptr i8, ptr %i.av, i64 %i.bl  ; 5 uses
  %i.bn = getelementptr i8, ptr %i.av, i64 %i.v
  %5 = getelementptr i8, ptr %i.bn, i64 %i.bl     ; 5 uses
  %6 = getelementptr i8, ptr %i.av, i64 %i.bb
  %7 = getelementptr i8, ptr %6, i64 4            ; 5 uses
  %8 = getelementptr i8, ptr %i.av, i64 %4
  %9 = getelementptr i8, ptr %8, i64 %i.bb        ; 5 uses
  %10 = getelementptr i8, ptr %i.av, i64 %i.bg
  %11 = getelementptr i8, ptr %10, i64 4          ; 5 uses
  %12 = getelementptr i8, ptr %i.av, i64 %4
  %13 = getelementptr i8, ptr %12, i64 %i.bg      ; 5 uses
  %14 = getelementptr i8, ptr %i.av, i64 %i.bl
  %15 = getelementptr i8, ptr %14, i64 4          ; 5 uses
  %16 = getelementptr i8, ptr %i.av, i64 %4
  %i.bo = getelementptr i8, ptr %16, i64 %i.bl    ; 5 uses
  %bound0194 = icmp ult ptr %i.bc, %i.bj
  %bound1195 = icmp ult ptr %i.bh, %i.be
  %found.conflict196 = and i1 %bound0194, %bound1195
  %conflict.rdx197 = or i1 %conflict.rdx193, %found.conflict196
  %bound0198 = icmp ult ptr %i.bc, %5
  %bound1199 = icmp ult ptr %i.bm, %i.be
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx201 = or i1 %conflict.rdx197, %found.conflict200
  %bound0202 = icmp ult ptr %i.bc, %9
  %bound1203 = icmp ult ptr %7, %i.be
  %found.conflict204 = and i1 %bound0202, %bound1203
  %conflict.rdx205 = or i1 %conflict.rdx201, %found.conflict204
  %bound0206 = icmp ult ptr %i.bc, %13
  %bound1207 = icmp ult ptr %11, %i.be
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx209 = or i1 %conflict.rdx205, %found.conflict208
  %bound0210 = icmp ult ptr %i.bc, %i.bo
  %bound1211 = icmp ult ptr %15, %i.be
  %found.conflict212 = and i1 %bound0210, %bound1211
  %conflict.rdx213 = or i1 %conflict.rdx209, %found.conflict212
  %bound0214 = icmp ult ptr %i.bh, %5
  %bound1215 = icmp ult ptr %i.bm, %i.bj
  %found.conflict216 = and i1 %bound0214, %bound1215
  %conflict.rdx217 = or i1 %conflict.rdx213, %found.conflict216
  %bound0218 = icmp ult ptr %i.bh, %9
  %bound1219 = icmp ult ptr %7, %i.bj
  %found.conflict220 = and i1 %bound0218, %bound1219
  %conflict.rdx221 = or i1 %conflict.rdx217, %found.conflict220
  %bound0222 = icmp ult ptr %i.bh, %13
  %bound1223 = icmp ult ptr %11, %i.bj
  %found.conflict224 = and i1 %bound0222, %bound1223
  %conflict.rdx225 = or i1 %conflict.rdx221, %found.conflict224
  %bound0226 = icmp ult ptr %i.bh, %i.bo
  %bound1227 = icmp ult ptr %15, %i.bj
  %found.conflict228 = and i1 %bound0226, %bound1227
  %conflict.rdx229 = or i1 %conflict.rdx225, %found.conflict228
  %bound0230 = icmp ult ptr %i.bm, %9
  %bound1231 = icmp ult ptr %7, %5
  %found.conflict232 = and i1 %bound0230, %bound1231
  %conflict.rdx233 = or i1 %conflict.rdx229, %found.conflict232
  %bound0234 = icmp ult ptr %i.bm, %13
  %bound1235 = icmp ult ptr %11, %5
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx237 = or i1 %conflict.rdx233, %found.conflict236
  %bound0238 = icmp ult ptr %i.bm, %i.bo
  %bound1239 = icmp ult ptr %15, %5
  %found.conflict240 = and i1 %bound0238, %bound1239
  %conflict.rdx241 = or i1 %conflict.rdx237, %found.conflict240
  %bound0242 = icmp ult ptr %7, %13
  %bound1243 = icmp ult ptr %11, %9
  %found.conflict244 = and i1 %bound0242, %bound1243
  %conflict.rdx245 = or i1 %conflict.rdx241, %found.conflict244
  %bound0246 = icmp ult ptr %7, %i.bo
  %bound1247 = icmp ult ptr %15, %9
  %found.conflict248 = and i1 %bound0246, %bound1247
  %conflict.rdx249 = or i1 %conflict.rdx245, %found.conflict248
  %bound0250 = icmp ult ptr %11, %i.bo
  %bound1251 = icmp ult ptr %15, %13
  %found.conflict252 = and i1 %bound0250, %bound1251
  %conflict.rdx253 = or i1 %conflict.rdx249, %found.conflict252
  br i1 %conflict.rdx253, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bp = add i32 %.07276.us, %i.al               ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %iv.rem, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert256 = insertelement <2 x i64> poison, i64 %indvars.iv85, i64 0
  %broadcast.splat257 = shufflevector <2 x i64> %broadcast.splatinsert256, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert258 = insertelement <2 x double> poison, double %i.aq, i64 0
  %broadcast.splat259 = shufflevector <2 x double> %broadcast.splatinsert258, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert260 = insertelement <2 x double> poison, double %i.ar, i64 0
  %broadcast.splat261 = shufflevector <2 x double> %broadcast.splatinsert260, <2 x double> poison, <2 x i32> zeroinitializer
  %invariant.op = add i64 2, %indvars.iv85
  %invariant.op272 = add nsw <2 x i64> splat (i64 -1), %broadcast.splat257
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <2 x i64> [ <i64 1, i64 2>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind262 = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph ], [ %vec.ind.next266, %vector.body ] ; 2 uses
  %vec.ind263 = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph ], [ %vec.ind.next267, %vector.body ] ; 2 uses
  %i.bq = or disjoint i64 %index, 1
  %i.br = trunc i64 %index to i32
  %i.bs = shl i32 %i.br, 1
  %i.bt = add i32 %.07276.us, %i.bs
  %i.bu = uitofp nneg <2 x i32> %vec.ind262 to <2 x double>
  %i.bv = fdiv <2 x double> %i.bu, %broadcast.splat255
  %i.bw = add nuw nsw i64 %i.bq, %indvars.iv85    ; 2 uses
  %.reass = add i64 %index, %invariant.op
  %i.bx = insertelement <2 x i64> poison, i64 %i.bw, i64 0
  %i.by = insertelement <2 x i64> %i.bx, i64 %.reass, i64 1
  %i.bz = getelementptr [8 x i8], ptr %i.p, i64 %i.bw ; 3 uses
  store <2 x double> %broadcast.splat259, ptr %i.bz, align 8, !tbaa !30, !alias.scope !31, !noalias !32
  %i.ca = getelementptr [8 x i8], ptr %i.bz, i64 %i.q
  store <2 x double> %broadcast.splat261, ptr %i.ca, align 8, !tbaa !30, !alias.scope !33, !noalias !34
  %i.cb = getelementptr i8, ptr %i.bz, i64 %.idx.us
  store <2 x double> %i.bv, ptr %i.cb, align 8, !tbaa !30, !alias.scope !34
  %i.cc = add nsw <2 x i64> %vec.ind, splat (i64 -1)
  %.reass273 = add nsw <2 x i64> %vec.ind, %invariant.op272
  %i.cd = sext i32 %i.bt to i64
  %i.ce = getelementptr [4 x i8], ptr %i.av, i64 %i.cd ; 3 uses
  %i.cf = trunc nsw <2 x i64> %.reass273 to <2 x i32>
  %i.cg = getelementptr [4 x i8], ptr %i.ce, i64 %i.ay
  %i.ch = trunc <2 x i64> %i.cc to <2 x i32>
  %i.ci = add <2 x i32> %broadcast.splat, %i.ch   ; 2 uses
  %i.cj = getelementptr [4 x i8], ptr %i.ce, i64 %i.az
  %interleaved.vec = shufflevector <2 x i32> %i.cf, <2 x i32> %i.ci, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.ce, align 4, !tbaa !35
  %i.ck = add <2 x i32> %broadcast.splat, %vec.ind263
  %interleaved.vec264 = shufflevector <2 x i32> %i.ci, <2 x i32> %i.ck, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec264, ptr %i.cg, align 4, !tbaa !35
  %i.cl = shufflevector <2 x i64> %i.by, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cm = trunc nuw <4 x i64> %i.cl to <4 x i32>
  %interleaved.vec265 = shufflevector <4 x i32> %i.cm, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec265, ptr %i.cj, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %vec.ind.next266 = add <2 x i32> %vec.ind262, splat (i32 2)
  %vec.ind.next267 = add <2 x i32> %vec.ind263, splat (i32 2)
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.peel.next, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.peel.next ], [ %i.aj, %middle.block ]
  %.174.us.ph = phi i32 [ %.07276.us, %vector.memcheck ], [ %.07276.us, %.peel.next ], [ %i.bp, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %.174.us = phi i32 [ %i.dm, %scalar.ph ], [ %.174.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.co = trunc nuw nsw i64 %indvars.iv to i32
  %i.cp = uitofp nneg i32 %i.co to double
  %i.cq = fdiv double %i.cp, %i.l
  %i.cr = mul nuw nsw i64 %indvars.iv, %i.r       ; 2 uses
  %i.cs = add nuw nsw i64 %i.cr, %indvars.iv85    ; 2 uses
  %i.ct = getelementptr [8 x i8], ptr %i.p, i64 %i.cs ; 3 uses
  store double %i.aq, ptr %i.ct, align 8, !tbaa !30
  %i.cu = getelementptr [8 x i8], ptr %i.ct, i64 %i.q
  store double %i.ar, ptr %i.cu, align 8, !tbaa !30
  %i.cv = getelementptr i8, ptr %i.ct, i64 %.idx.us
  store double %i.cq, ptr %i.cv, align 8, !tbaa !30
  %i.cw = add nsw i64 %indvars.iv, -1
  %i.cx = mul nuw nsw i64 %i.cw, %i.s             ; 2 uses
  %i.cy = add nsw i64 %indvars.iv85, %i.cx
  %i.cz = sext i32 %.174.us to i64
  %i.da = getelementptr [4 x i8], ptr %i.av, i64 %i.cz ; 4 uses
  %i.db = trunc nsw i64 %i.cy to i32
  store i32 %i.db, ptr %i.da, align 4, !tbaa !35
  %i.dc = getelementptr [4 x i8], ptr %i.da, i64 %i.ay
  %i.dd = trunc i64 %i.cx to i32
  %i.de = add i32 %iv.rem, %i.dd                  ; 2 uses
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !35
  %i.df = getelementptr [4 x i8], ptr %i.da, i64 %i.az
  %i.dg = trunc nuw i64 %i.cs to i32              ; 2 uses
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !35
  %i.dh = getelementptr i8, ptr %i.da, i64 4      ; 3 uses
  store i32 %i.de, ptr %i.dh, align 4, !tbaa !35
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.ay
  %i.dj = trunc i64 %i.cr to i32
  %i.dk = add i32 %iv.rem, %i.dj
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !35
  %i.dl = getelementptr [4 x i8], ptr %i.dh, i64 %i.az
  store i32 %i.dg, ptr %i.dl, align 4, !tbaa !35
  %i.dm = add nsw i32 %.174.us, 2                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond82.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !26

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block, %bb.a
  %.2.us.lcssa = phi i32 [ %.07276.us, %bb.a ], [ %i.bp, %middle.block ], [ %i.dm, %scalar.ph ]
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %i.r
  br i1 %exitcond89.not, label %._crit_edge79, label %bb.a, !llvm.loop !27

._crit_edge79.loopexit269.unr-lcssa:              ; preds = %.lr.ph78.split
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge79, label %.lr.ph78.split.epil.preheader

.lr.ph78.split.epil.preheader:                    ; preds = %._crit_edge79.loopexit269.unr-lcssa, %.lr.ph78.split.preheader
  %.07177.epil.init = phi i32 [ 0, %.lr.ph78.split.preheader ], [ %i.eq, %._crit_edge79.loopexit269.unr-lcssa ]
  %lcmp.mod270 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod270)
  br label %.lr.ph78.split.epil

.lr.ph78.split.epil:                              ; preds = %.lr.ph78.split.epil, %.lr.ph78.split.epil.preheader
  %.07177.epil = phi i32 [ %i.ds, %.lr.ph78.split.epil ], [ %.07177.epil.init, %.lr.ph78.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph78.split.epil ], [ 0, %.lr.ph78.split.epil.preheader ]
  %i.dn = uitofp nneg i32 %.07177.epil to double
  %i.do = fmul nnan double %i.dn, f0x401921FB54442D18
  %i.dp = fdiv double %i.do, %i.j                 ; 2 uses
  %i.dq = tail call double @cos(double noundef %i.dp) #7 ; 0 uses
  %i.dr = tail call double @sin(double noundef %i.dp) #7 ; 0 uses
  %i.ds = add nuw nsw i32 %.07177.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge79, label %.lr.ph78.split.epil, !llvm.loop !28

._crit_edge79:                                    ; preds = %._crit_edge79.loopexit269.unr-lcssa, %.lr.ph78.split.epil, %._crit_edge.us, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void

.lr.ph78.split:                                   ; preds = %.lr.ph78.split, %.lr.ph78.split.preheader.new
  %.07177 = phi i32 [ 0, %.lr.ph78.split.preheader.new ], [ %i.eq, %.lr.ph78.split ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph78.split.preheader.new ], [ %niter.next.3, %.lr.ph78.split ]
  %i.dt = uitofp nneg i32 %.07177 to double
  %i.du = fmul nnan double %i.dt, f0x401921FB54442D18
  %i.dv = fdiv double %i.du, %i.j                 ; 2 uses
  %i.dw = tail call double @cos(double noundef %i.dv) #7 ; 0 uses
  %i.dx = tail call double @sin(double noundef %i.dv) #7 ; 0 uses
  %i.dy = or disjoint i32 %.07177, 1
  %i.dz = uitofp nneg i32 %i.dy to double
  %i.ea = fmul nnan double %i.dz, f0x401921FB54442D18
  %i.eb = fdiv double %i.ea, %i.j                 ; 2 uses
  %i.ec = tail call double @cos(double noundef %i.eb) #7 ; 0 uses
  %i.ed = tail call double @sin(double noundef %i.eb) #7 ; 0 uses
  %i.ee = or disjoint i32 %.07177, 2
  %i.ef = uitofp nneg i32 %i.ee to double
  %i.eg = fmul nnan double %i.ef, f0x401921FB54442D18
  %i.eh = fdiv double %i.eg, %i.j                 ; 2 uses
  %i.ei = tail call double @cos(double noundef %i.eh) #7 ; 0 uses
  %i.ej = tail call double @sin(double noundef %i.eh) #7 ; 0 uses
  %i.ek = or disjoint i32 %.07177, 3
  %i.el = uitofp nneg i32 %i.ek to double
  %i.em = fmul nnan double %i.el, f0x401921FB54442D18
  %i.en = fdiv double %i.em, %i.j                 ; 2 uses
  %i.eo = tail call double @cos(double noundef %i.en) #7 ; 0 uses
  %i.ep = tail call double @sin(double noundef %i.en) #7 ; 0 uses
  %i.eq = add nuw nsw i32 %.07177, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge79.loopexit269.unr-lcssa, label %.lr.ph78.split, !llvm.loop !27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !13
  tail call void @free(ptr noundef %i.f) #7
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #8
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #9 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #8
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !14
  store i64 %3, ptr %i.c, align 8, !tbaa !41
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !42
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.f) #7
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #8
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #9 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #8
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !18
  store i64 %3, ptr %i.c, align 8, !tbaa !42
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 double", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !10, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!12, !10, i64 0}
!14 = !{!12, !11, i64 8}
!15 = !{!"p1 int", !9, i64 0}
!16 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !15, i64 0, !11, i64 8, !11, i64 16}
!17 = !{!16, !15, i64 0}
!18 = !{!16, !11, i64 8}
!19 = !{!"vtable pointer", !4, i64 0}
!20 = !{!19, !19, i64 0}
!21 = distinct !{!21, i1 false, !"LVerDomain"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !21}
!25 = distinct !{!25, !36, !37, !38, !39}
!26 = distinct !{!26, !36, !37, !38}
!27 = distinct !{!27, !36}
!28 = distinct !{!28, !40}
!29 = !{!"double", !5, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!22}
!32 = !{!24, !23}
!33 = !{!24}
!34 = !{!23}
!35 = !{!6, !6, i64 0}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.peeled.count", i32 1}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!12, !11, i64 16}
!42 = !{!16, !11, i64 16}
end_hunk_0
