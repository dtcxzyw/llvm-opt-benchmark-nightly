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
  %i.v = add nsw i64 %i.u, -8                     ; 3 uses
  %i.w = add nsw i64 %i.u, -12                    ; 3 uses
  %4 = shl nuw nsw i64 %i.r, 3                    ; 3 uses
  %5 = getelementptr i8, ptr %i.p, i64 %.idx.us
  %6 = getelementptr i8, ptr %5, i64 %i.u
  %i.x = getelementptr i8, ptr %6, i64 %4
  %scevgep = getelementptr i8, ptr %i.x, i64 -8   ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %.idx.us
  %scevgep182 = getelementptr i8, ptr %i.y, i64 8 ; 2 uses
  %i.z = shl i64 %i.q, 3                          ; 2 uses
  %7 = getelementptr i8, ptr %i.p, i64 %i.z
  %8 = getelementptr i8, ptr %7, i64 %i.u
  %9 = getelementptr i8, ptr %8, i64 %4
  %scevgep183 = getelementptr i8, ptr %9, i64 -8  ; 2 uses
  %i.aa = getelementptr i8, ptr %i.p, i64 %i.z
  %scevgep184.a = getelementptr i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.p, i64 %i.u
  %i.ac = getelementptr i8, ptr %i.ab, i64 %4
  %scevgep185 = getelementptr i8, ptr %i.ac, i64 -8 ; 2 uses
  %scevgep186 = getelementptr i8, ptr %i.p, i64 8 ; 2 uses
  %i.ad = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ugt i32 %1, 8
  %ident.check.not = icmp eq i32 %0, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  %bound0 = icmp ult ptr %scevgep186, %scevgep183
  %bound1 = icmp ult ptr %scevgep184.a, %scevgep185
  %found.conflict = and i1 %bound0, %bound1
  %bound0187 = icmp ult ptr %scevgep186, %scevgep
  %bound1188 = icmp ult ptr %scevgep182, %scevgep185
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx = or i1 %found.conflict, %found.conflict189
  %bound0190 = icmp ult ptr %scevgep184.a, %scevgep
  %bound1191 = icmp ult ptr %scevgep182, %scevgep183
  %found.conflict192 = and i1 %bound0190, %bound1191
  %conflict.rdx193 = or i1 %conflict.rdx, %found.conflict192
  %n.vec = and i64 %i.ad, -2                      ; 3 uses
  %i.ae = or i64 %i.ad, 1
  %i.af = trunc nsw i64 %n.vec to i32
  %i.ag = shl i32 %i.af, 1
  %broadcast.splatinsert254 = insertelement <2 x double> poison, double %i.l, i64 0
  %broadcast.splat255 = shufflevector <2 x double> %broadcast.splatinsert254, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph78.split.us, %._crit_edge.us
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %._crit_edge.us ], [ 0, %.lr.ph78.split.us ] ; 8 uses
  %.07276.us = phi i32 [ %.2.us.lcssa, %._crit_edge.us ], [ 0, %.lr.ph78.split.us ] ; 6 uses
  %i.ah = trunc nuw i64 %indvars.iv85 to i32
  %i.ai = uitofp nneg i32 %i.ah to double
  %i.aj = fmul nnan double %i.ai, f0x401921FB54442D18
  %i.ak = fdiv double %i.aj, %i.j                 ; 2 uses
  %i.al = tail call double @cos(double noundef %i.ak) #7 ; 3 uses
  %i.am = tail call double @sin(double noundef %i.ak) #7 ; 3 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv85 ; 3 uses
  store double %i.al, ptr %i.an, align 8, !tbaa !30
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %i.q
  store double %i.am, ptr %i.ao, align 8, !tbaa !30
  %i.ap = getelementptr i8, ptr %i.an, i64 %.idx.us
  store double %i.t, ptr %i.ap, align 8, !tbaa !30
  br i1 %exitcond82.peel.not, label %._crit_edge.us, label %.peel.next

.peel.next:                                       ; preds = %bb.a
  %i.aq = load ptr, ptr %3, align 8, !tbaa !17    ; 14 uses
  %i.ar = icmp eq i64 %indvars.iv.next86, %i.r
  %i.as = trunc nuw nsw i64 %indvars.iv.next86 to i32
  %iv.rem = select i1 %i.ar, i32 0, i32 %i.as     ; 3 uses
  %i.at = load i64, ptr %i.m, align 8, !tbaa !18  ; 6 uses
  %i.au = shl nsw i64 %i.at, 1                    ; 3 uses
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.peel.next
  %i.av = sext i32 %.07276.us to i64              ; 2 uses
  %i.aw = shl nsw i64 %i.av, 2                    ; 5 uses
  %i.ax = getelementptr i8, ptr %i.aq, i64 %i.aw  ; 5 uses
  %i.ay = getelementptr i8, ptr %i.aq, i64 %i.w
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.aw  ; 5 uses
  %i.ba = add i64 %i.at, %i.av
  %i.bb = shl i64 %i.ba, 2                        ; 4 uses
  %i.bc = getelementptr i8, ptr %i.aq, i64 %i.bb  ; 5 uses
  %i.bd = getelementptr i8, ptr %i.aq, i64 %i.w
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.bb  ; 5 uses
  %bound0194 = icmp ult ptr %i.ax, %i.be
  %bound1195 = icmp ult ptr %i.bc, %i.az
  %found.conflict196 = and i1 %bound0194, %bound1195
  %conflict.rdx197 = or i1 %conflict.rdx193, %found.conflict196
  %i.bf = shl i64 %i.at, 3
  %i.bg = add i64 %i.bf, %i.aw                    ; 4 uses
  %i.bh = getelementptr i8, ptr %i.aq, i64 %i.bg  ; 5 uses
  %i.bi = getelementptr i8, ptr %i.aq, i64 %i.w
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.bg  ; 5 uses
  %bound0198 = icmp ult ptr %i.ax, %i.bj
  %bound1199 = icmp ult ptr %i.bh, %i.az
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx201 = or i1 %conflict.rdx197, %found.conflict200
  %i.bk = getelementptr i8, ptr %i.aq, i64 %i.aw
  %i.bl = getelementptr i8, ptr %i.bk, i64 4      ; 5 uses
  %i.bm = getelementptr i8, ptr %i.aq, i64 %i.v
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.aw  ; 5 uses
  %bound0202 = icmp ult ptr %i.ax, %i.bn
  %bound1203 = icmp ult ptr %i.bl, %i.az
  %found.conflict204 = and i1 %bound0202, %bound1203
  %conflict.rdx205 = or i1 %conflict.rdx201, %found.conflict204
  %i.bo = getelementptr i8, ptr %i.aq, i64 %i.bb
  %i.bp = getelementptr i8, ptr %i.bo, i64 4      ; 5 uses
  %i.bq = getelementptr i8, ptr %i.aq, i64 %i.v
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bb  ; 5 uses
  %bound0206 = icmp ult ptr %i.ax, %i.br
  %bound1207 = icmp ult ptr %i.bp, %i.az
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx209 = or i1 %conflict.rdx205, %found.conflict208
  %i.bs = getelementptr i8, ptr %i.aq, i64 %i.bg
  %i.bt = getelementptr i8, ptr %i.bs, i64 4      ; 5 uses
  %i.bu = getelementptr i8, ptr %i.aq, i64 %i.v
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bg  ; 5 uses
  %bound0210 = icmp ult ptr %i.ax, %i.bv
  %bound1211 = icmp ult ptr %i.bt, %i.az
  %found.conflict212 = and i1 %bound0210, %bound1211
  %conflict.rdx213 = or i1 %conflict.rdx209, %found.conflict212
  %bound0214 = icmp ult ptr %i.bc, %i.bj
  %bound1215 = icmp ult ptr %i.bh, %i.be
  %found.conflict216 = and i1 %bound0214, %bound1215
  %conflict.rdx217 = or i1 %conflict.rdx213, %found.conflict216
  %bound0218 = icmp ult ptr %i.bc, %i.bn
  %bound1219 = icmp ult ptr %i.bl, %i.be
  %found.conflict220 = and i1 %bound0218, %bound1219
  %conflict.rdx221 = or i1 %conflict.rdx217, %found.conflict220
  %bound0222 = icmp ult ptr %i.bc, %i.br
  %bound1223 = icmp ult ptr %i.bp, %i.be
  %found.conflict224 = and i1 %bound0222, %bound1223
  %conflict.rdx225 = or i1 %conflict.rdx221, %found.conflict224
  %bound0226 = icmp ult ptr %i.bc, %i.bv
  %bound1227 = icmp ult ptr %i.bt, %i.be
  %found.conflict228 = and i1 %bound0226, %bound1227
  %conflict.rdx229 = or i1 %conflict.rdx225, %found.conflict228
  %bound0230 = icmp ult ptr %i.bh, %i.bn
  %bound1231 = icmp ult ptr %i.bl, %i.bj
  %found.conflict232 = and i1 %bound0230, %bound1231
  %conflict.rdx233 = or i1 %conflict.rdx229, %found.conflict232
  %bound0234 = icmp ult ptr %i.bh, %i.br
  %bound1235 = icmp ult ptr %i.bp, %i.bj
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx237 = or i1 %conflict.rdx233, %found.conflict236
  %bound0238 = icmp ult ptr %i.bh, %i.bv
  %bound1239 = icmp ult ptr %i.bt, %i.bj
  %found.conflict240 = and i1 %bound0238, %bound1239
  %conflict.rdx241 = or i1 %conflict.rdx237, %found.conflict240
  %bound0242 = icmp ult ptr %i.bl, %i.br
  %bound1243 = icmp ult ptr %i.bp, %i.bn
  %found.conflict244 = and i1 %bound0242, %bound1243
  %conflict.rdx245 = or i1 %conflict.rdx241, %found.conflict244
  %bound0246 = icmp ult ptr %i.bl, %i.bv
  %bound1247 = icmp ult ptr %i.bt, %i.bn
  %found.conflict248 = and i1 %bound0246, %bound1247
  %conflict.rdx249 = or i1 %conflict.rdx245, %found.conflict248
  %bound0250 = icmp ult ptr %i.bp, %i.bv
  %bound1251 = icmp ult ptr %i.bt, %i.br
  %found.conflict252 = and i1 %bound0250, %bound1251
  %conflict.rdx253 = or i1 %conflict.rdx249, %found.conflict252
  br i1 %conflict.rdx253, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bw = add i32 %.07276.us, %i.ag               ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %iv.rem, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert256 = insertelement <2 x i64> poison, i64 %indvars.iv85, i64 0
  %broadcast.splat257 = shufflevector <2 x i64> %broadcast.splatinsert256, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert258 = insertelement <2 x double> poison, double %i.al, i64 0
  %broadcast.splat259 = shufflevector <2 x double> %broadcast.splatinsert258, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert260 = insertelement <2 x double> poison, double %i.am, i64 0
  %broadcast.splat261 = shufflevector <2 x double> %broadcast.splatinsert260, <2 x double> poison, <2 x i32> zeroinitializer
  %invariant.op = add i64 2, %indvars.iv85
  %invariant.op272 = add nsw <2 x i64> splat (i64 -1), %broadcast.splat257
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <2 x i64> [ <i64 1, i64 2>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind262 = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph ], [ %vec.ind.next266, %vector.body ] ; 2 uses
  %vec.ind263 = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph ], [ %vec.ind.next267, %vector.body ] ; 2 uses
  %i.bx = or disjoint i64 %index, 1
  %i.by = trunc i64 %index to i32
  %i.bz = shl i32 %i.by, 1
  %i.ca = add i32 %.07276.us, %i.bz
  %i.cb = uitofp nneg <2 x i32> %vec.ind262 to <2 x double>
  %i.cc = fdiv <2 x double> %i.cb, %broadcast.splat255
  %i.cd = add nuw nsw i64 %i.bx, %indvars.iv85    ; 2 uses
  %.reass = add i64 %index, %invariant.op
  %i.ce = insertelement <2 x i64> poison, i64 %i.cd, i64 0
  %i.cf = insertelement <2 x i64> %i.ce, i64 %.reass, i64 1
  %i.cg = getelementptr [8 x i8], ptr %i.p, i64 %i.cd ; 3 uses
  store <2 x double> %broadcast.splat259, ptr %i.cg, align 8, !tbaa !30, !alias.scope !31, !noalias !32
  %i.ch = getelementptr [8 x i8], ptr %i.cg, i64 %i.q
  store <2 x double> %broadcast.splat261, ptr %i.ch, align 8, !tbaa !30, !alias.scope !33, !noalias !34
  %i.ci = getelementptr i8, ptr %i.cg, i64 %.idx.us
  store <2 x double> %i.cc, ptr %i.ci, align 8, !tbaa !30, !alias.scope !34
  %i.cj = add nsw <2 x i64> %vec.ind, splat (i64 -1)
  %.reass273 = add nsw <2 x i64> %vec.ind, %invariant.op272
  %i.ck = sext i32 %i.ca to i64
  %i.cl = getelementptr [4 x i8], ptr %i.aq, i64 %i.ck ; 3 uses
  %i.cm = trunc nsw <2 x i64> %.reass273 to <2 x i32>
  %i.cn = getelementptr [4 x i8], ptr %i.cl, i64 %i.at
  %i.co = trunc <2 x i64> %i.cj to <2 x i32>
  %i.cp = add <2 x i32> %broadcast.splat, %i.co   ; 2 uses
  %i.cq = getelementptr [4 x i8], ptr %i.cl, i64 %i.au
  %interleaved.vec = shufflevector <2 x i32> %i.cm, <2 x i32> %i.cp, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.cl, align 4, !tbaa !35
  %i.cr = add <2 x i32> %broadcast.splat, %vec.ind263
  %interleaved.vec264 = shufflevector <2 x i32> %i.cp, <2 x i32> %i.cr, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec264, ptr %i.cn, align 4, !tbaa !35
  %i.cs = shufflevector <2 x i64> %i.cf, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ct = trunc nuw <4 x i64> %i.cs to <4 x i32>
  %interleaved.vec265 = shufflevector <4 x i32> %i.ct, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec265, ptr %i.cq, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %vec.ind.next266 = add <2 x i32> %vec.ind262, splat (i32 2)
  %vec.ind.next267 = add <2 x i32> %vec.ind263, splat (i32 2)
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.peel.next, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.peel.next ], [ %i.ae, %middle.block ]
  %.174.us.ph = phi i32 [ %.07276.us, %vector.memcheck ], [ %.07276.us, %.peel.next ], [ %i.bw, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %.174.us = phi i32 [ %i.dt, %scalar.ph ], [ %.174.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cv = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_0
