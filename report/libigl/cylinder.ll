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
  %i.x = shl nuw nsw i64 %i.r, 3                  ; 3 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %.idx.us
  %i.z = getelementptr i8, ptr %i.y, i64 %i.u
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.x
  %scevgep = getelementptr i8, ptr %i.aa, i64 -8  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.p, i64 %.idx.us
  %scevgep182 = getelementptr i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ac = shl i64 %i.q, 3                         ; 2 uses
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.u
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.x
  %scevgep183 = getelementptr i8, ptr %i.af, i64 -8 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.p, i64 %i.ac
  %scevgep184 = getelementptr i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.p, i64 %i.u
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.x
  %scevgep185 = getelementptr i8, ptr %i.ai, i64 -8 ; 2 uses
  %scevgep186 = getelementptr i8, ptr %i.p, i64 8 ; 2 uses
  %i.aj = add nsw i64 %wide.trip.count, -1        ; 3 uses
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
  %n.vec = and i64 %i.aj, -2                      ; 3 uses
  %i.ak = or i64 %i.aj, 1
  %i.al = trunc nsw i64 %n.vec to i32
  %i.am = shl i32 %i.al, 1
  %broadcast.splatinsert254 = insertelement <2 x double> poison, double %i.l, i64 0
  %broadcast.splat255 = shufflevector <2 x double> %broadcast.splatinsert254, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph78.split.us, %._crit_edge.us
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %._crit_edge.us ], [ 0, %.lr.ph78.split.us ] ; 8 uses
  %.07276.us = phi i32 [ %.2.us.lcssa, %._crit_edge.us ], [ 0, %.lr.ph78.split.us ] ; 6 uses
  %i.an = trunc nuw i64 %indvars.iv85 to i32
  %i.ao = uitofp nneg i32 %i.an to double
  %i.ap = fmul nnan double %i.ao, f0x401921FB54442D18
  %i.aq = fdiv double %i.ap, %i.j                 ; 2 uses
  %i.ar = tail call double @cos(double noundef %i.aq) #7 ; 3 uses
  %i.as = tail call double @sin(double noundef %i.aq) #7 ; 3 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 4 uses
  %i.at = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv85 ; 3 uses
  store double %i.ar, ptr %i.at, align 8, !tbaa !30
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.q
  store double %i.as, ptr %i.au, align 8, !tbaa !30
  %i.av = getelementptr i8, ptr %i.at, i64 %.idx.us
  store double %i.t, ptr %i.av, align 8, !tbaa !30
  br i1 %exitcond82.peel.not, label %._crit_edge.us, label %.peel.next

.peel.next:                                       ; preds = %bb.a
  %i.aw = load ptr, ptr %3, align 8, !tbaa !17    ; 14 uses
  %i.ax = icmp eq i64 %indvars.iv.next86, %i.r
  %i.ay = trunc nuw nsw i64 %indvars.iv.next86 to i32
  %iv.rem = select i1 %i.ax, i32 0, i32 %i.ay     ; 3 uses
  %i.az = load i64, ptr %i.m, align 8, !tbaa !18  ; 6 uses
  %i.ba = shl nsw i64 %i.az, 1                    ; 3 uses
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.peel.next
  %i.bb = sext i32 %.07276.us to i64              ; 2 uses
  %i.bc = shl nsw i64 %i.bb, 2                    ; 5 uses
  %i.bd = getelementptr i8, ptr %i.aw, i64 %i.bc  ; 5 uses
  %i.be = getelementptr i8, ptr %i.aw, i64 %i.w
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.bc  ; 5 uses
  %i.bg = add i64 %i.az, %i.bb
  %i.bh = shl i64 %i.bg, 2                        ; 4 uses
  %i.bi = getelementptr i8, ptr %i.aw, i64 %i.bh  ; 5 uses
  %i.bj = getelementptr i8, ptr %i.aw, i64 %i.w
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.bh  ; 5 uses
  %i.bl = shl i64 %i.az, 3
  %i.bm = add i64 %i.bl, %i.bc                    ; 4 uses
  %i.bn = getelementptr i8, ptr %i.aw, i64 %i.bm  ; 5 uses
  %i.bo = getelementptr i8, ptr %i.aw, i64 %i.w
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.bm  ; 5 uses
  %i.bq = getelementptr i8, ptr %i.aw, i64 %i.bc
  %i.br = getelementptr i8, ptr %i.bq, i64 4      ; 5 uses
  %i.bs = getelementptr i8, ptr %i.aw, i64 %i.v
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.bc  ; 5 uses
  %i.bu = getelementptr i8, ptr %i.aw, i64 %i.bh
  %i.bv = getelementptr i8, ptr %i.bu, i64 4      ; 5 uses
  %i.bw = getelementptr i8, ptr %i.aw, i64 %i.v
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.bh  ; 5 uses
  %i.by = getelementptr i8, ptr %i.aw, i64 %i.bm
  %i.bz = getelementptr i8, ptr %i.by, i64 4      ; 5 uses
  %i.ca = getelementptr i8, ptr %i.aw, i64 %i.v
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.bm  ; 5 uses
  %bound0194 = icmp ult ptr %i.bd, %i.bk
  %bound1195 = icmp ult ptr %i.bi, %i.bf
  %found.conflict196 = and i1 %bound0194, %bound1195
  %conflict.rdx197 = or i1 %conflict.rdx193, %found.conflict196
  %bound0198 = icmp ult ptr %i.bd, %i.bp
  %bound1199 = icmp ult ptr %i.bn, %i.bf
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx201 = or i1 %conflict.rdx197, %found.conflict200
  %bound0202 = icmp ult ptr %i.bd, %i.bt
  %bound1203 = icmp ult ptr %i.br, %i.bf
  %found.conflict204 = and i1 %bound0202, %bound1203
  %conflict.rdx205 = or i1 %conflict.rdx201, %found.conflict204
  %bound0206 = icmp ult ptr %i.bd, %i.bx
  %bound1207 = icmp ult ptr %i.bv, %i.bf
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx209 = or i1 %conflict.rdx205, %found.conflict208
  %bound0210 = icmp ult ptr %i.bd, %i.cb
  %bound1211 = icmp ult ptr %i.bz, %i.bf
  %found.conflict212 = and i1 %bound0210, %bound1211
  %conflict.rdx213 = or i1 %conflict.rdx209, %found.conflict212
  %bound0214 = icmp ult ptr %i.bi, %i.bp
  %bound1215 = icmp ult ptr %i.bn, %i.bk
  %found.conflict216 = and i1 %bound0214, %bound1215
  %conflict.rdx217 = or i1 %conflict.rdx213, %found.conflict216
  %bound0218 = icmp ult ptr %i.bi, %i.bt
  %bound1219 = icmp ult ptr %i.br, %i.bk
  %found.conflict220 = and i1 %bound0218, %bound1219
  %conflict.rdx221 = or i1 %conflict.rdx217, %found.conflict220
  %bound0222 = icmp ult ptr %i.bi, %i.bx
  %bound1223 = icmp ult ptr %i.bv, %i.bk
  %found.conflict224 = and i1 %bound0222, %bound1223
  %conflict.rdx225 = or i1 %conflict.rdx221, %found.conflict224
  %bound0226 = icmp ult ptr %i.bi, %i.cb
  %bound1227 = icmp ult ptr %i.bz, %i.bk
  %found.conflict228 = and i1 %bound0226, %bound1227
  %conflict.rdx229 = or i1 %conflict.rdx225, %found.conflict228
  %bound0230 = icmp ult ptr %i.bn, %i.bt
  %bound1231 = icmp ult ptr %i.br, %i.bp
  %found.conflict232 = and i1 %bound0230, %bound1231
  %conflict.rdx233 = or i1 %conflict.rdx229, %found.conflict232
  %bound0234 = icmp ult ptr %i.bn, %i.bx
  %bound1235 = icmp ult ptr %i.bv, %i.bp
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx237 = or i1 %conflict.rdx233, %found.conflict236
  %bound0238 = icmp ult ptr %i.bn, %i.cb
  %bound1239 = icmp ult ptr %i.bz, %i.bp
  %found.conflict240 = and i1 %bound0238, %bound1239
  %conflict.rdx241 = or i1 %conflict.rdx237, %found.conflict240
  %bound0242 = icmp ult ptr %i.br, %i.bx
  %bound1243 = icmp ult ptr %i.bv, %i.bt
  %found.conflict244 = and i1 %bound0242, %bound1243
  %conflict.rdx245 = or i1 %conflict.rdx241, %found.conflict244
  %bound0246 = icmp ult ptr %i.br, %i.cb
  %bound1247 = icmp ult ptr %i.bz, %i.bt
  %found.conflict248 = and i1 %bound0246, %bound1247
  %conflict.rdx249 = or i1 %conflict.rdx245, %found.conflict248
  %bound0250 = icmp ult ptr %i.bv, %i.cb
  %bound1251 = icmp ult ptr %i.bz, %i.bx
  %found.conflict252 = and i1 %bound0250, %bound1251
  %conflict.rdx253 = or i1 %conflict.rdx249, %found.conflict252
  br i1 %conflict.rdx253, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cc = add i32 %.07276.us, %i.am               ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %iv.rem, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert258 = insertelement <2 x double> poison, double %i.ar, i64 0
  %broadcast.splat259 = shufflevector <2 x double> %broadcast.splatinsert258, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert260 = insertelement <2 x double> poison, double %i.as, i64 0
  %broadcast.splat261 = shufflevector <2 x double> %broadcast.splatinsert260, <2 x double> poison, <2 x i32> zeroinitializer
  %4 = trunc i64 %indvars.iv85 to i32
  %5 = add i32 %4, 1
  %broadcast.splatinsert262 = insertelement <2 x i32> poison, i32 %5, i64 0
  %broadcast.splat263 = shufflevector <2 x i32> %broadcast.splatinsert262, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction = add <2 x i32> %broadcast.splat263, <i32 0, i32 1>
  %.scalar = add nsw i64 %indvars.iv85, -1
  %i.cd = insertelement <2 x i64> poison, i64 %.scalar, i64 0
  %i.ce = shufflevector <2 x i64> %i.cd, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 1, i64 2>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind264 = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph ], [ %vec.ind.next270, %vector.body ] ; 2 uses
  %vec.ind265 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next271, %vector.body ] ; 2 uses
  %vec.ind266 = phi <2 x i32> [ %induction, %vector.ph ], [ %vec.ind.next272, %vector.body ] ; 2 uses
  %vec.ind267 = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph ], [ %vec.ind.next273, %vector.body ] ; 2 uses
  %i.cf = trunc i64 %index to i32
  %i.cg = shl i32 %i.cf, 1
  %i.ch = add i32 %.07276.us, %i.cg
  %i.ci = uitofp nneg <2 x i32> %vec.ind264 to <2 x double>
  %i.cj = fdiv <2 x double> %i.ci, %broadcast.splat255
  %i.ck = getelementptr [8 x i8], ptr %i.p, i64 %index
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %i.cm = getelementptr [8 x i8], ptr %i.cl, i64 %indvars.iv85 ; 3 uses
  store <2 x double> %broadcast.splat259, ptr %i.cm, align 8, !tbaa !30, !alias.scope !31, !noalias !32
  %i.cn = getelementptr [8 x i8], ptr %i.cm, i64 %i.q
  store <2 x double> %broadcast.splat261, ptr %i.cn, align 8, !tbaa !30, !alias.scope !33, !noalias !34
  %i.co = getelementptr i8, ptr %i.cm, i64 %.idx.us
  store <2 x double> %i.cj, ptr %i.co, align 8, !tbaa !30, !alias.scope !34
  %i.cp = add <2 x i64> %i.ce, %vec.ind
  %i.cq = sext i32 %i.ch to i64
  %i.cr = getelementptr [4 x i8], ptr %i.aw, i64 %i.cq ; 3 uses
  %i.cs = trunc nsw <2 x i64> %i.cp to <2 x i32>
  %i.ct = getelementptr [4 x i8], ptr %i.cr, i64 %i.az
  %i.cu = add <2 x i32> %broadcast.splat, %vec.ind265 ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %i.cr, i64 %i.ba
  %interleaved.vec = shufflevector <2 x i32> %i.cs, <2 x i32> %i.cu, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.cr, align 4, !tbaa !35
  %6 = add <2 x i32> %broadcast.splat, %vec.ind267
  %interleaved.vec268 = shufflevector <2 x i32> %i.cu, <2 x i32> %6, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec268, ptr %i.ct, align 4, !tbaa !35
  %interleaved.vec269 = shufflevector <2 x i32> %vec.ind266, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %interleaved.vec269, ptr %i.cv, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %vec.ind.next270 = add <2 x i32> %vec.ind264, splat (i32 2)
  %vec.ind.next271 = add <2 x i32> %vec.ind265, splat (i32 2)
  %vec.ind.next272 = add <2 x i32> %vec.ind266, splat (i32 2)
  %vec.ind.next273 = add <2 x i32> %vec.ind267, splat (i32 2)
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.peel.next, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.peel.next ], [ %i.ak, %middle.block ]
  %.174.us.ph = phi i32 [ %.07276.us, %vector.memcheck ], [ %.07276.us, %.peel.next ], [ %i.cc, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %.174.us = phi i32 [ %i.dv, %scalar.ph ], [ %.174.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cx = trunc nuw nsw i64 %indvars.iv to i32
  %i.cy = uitofp nneg i32 %i.cx to double
  %i.cz = fdiv double %i.cy, %i.l
  %i.da = mul nuw nsw i64 %indvars.iv, %i.r       ; 2 uses
  %i.db = add nuw nsw i64 %i.da, %indvars.iv85    ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %i.p, i64 %i.db ; 3 uses
  store double %i.ar, ptr %i.dc, align 8, !tbaa !30
  %i.dd = getelementptr [8 x i8], ptr %i.dc, i64 %i.q
  store double %i.as, ptr %i.dd, align 8, !tbaa !30
  %i.de = getelementptr i8, ptr %i.dc, i64 %.idx.us
  store double %i.cz, ptr %i.de, align 8, !tbaa !30
  %i.df = add nsw i64 %indvars.iv, -1
  %i.dg = mul nuw nsw i64 %i.df, %i.s             ; 2 uses
  %i.dh = add nsw i64 %indvars.iv85, %i.dg
  %i.di = sext i32 %.174.us to i64
  %i.dj = getelementptr [4 x i8], ptr %i.aw, i64 %i.di ; 4 uses
  %i.dk = trunc nsw i64 %i.dh to i32
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !35
  %i.dl = getelementptr [4 x i8], ptr %i.dj, i64 %i.az
  %i.dm = trunc i64 %i.dg to i32
  %i.dn = add i32 %iv.rem, %i.dm                  ; 2 uses
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !35
  %i.do = getelementptr [4 x i8], ptr %i.dj, i64 %i.ba
  %i.dp = trunc nuw i64 %i.db to i32              ; 2 uses
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !35
  %i.dq = getelementptr i8, ptr %i.dj, i64 4      ; 3 uses
  store i32 %i.dn, ptr %i.dq, align 4, !tbaa !35
  %i.dr = getelementptr [4 x i8], ptr %i.dq, i64 %i.az
  %i.ds = trunc i64 %i.da to i32
  %i.dt = add i32 %iv.rem, %i.ds
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !35
  %i.du = getelementptr [4 x i8], ptr %i.dq, i64 %i.ba
  store i32 %i.dp, ptr %i.du, align 4, !tbaa !35
  %i.dv = add nsw i32 %.174.us, 2                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond82.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !26

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block, %bb.a
  %.2.us.lcssa = phi i32 [ %.07276.us, %bb.a ], [ %i.cc, %middle.block ], [ %i.dv, %scalar.ph ]
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %i.r
  br i1 %exitcond89.not, label %._crit_edge79, label %bb.a, !llvm.loop !27

._crit_edge79.loopexit275.unr-lcssa:              ; preds = %.lr.ph78.split
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge79, label %.lr.ph78.split.epil.preheader

.lr.ph78.split.epil.preheader:                    ; preds = %._crit_edge79.loopexit275.unr-lcssa, %.lr.ph78.split.preheader
  %.07177.epil.init = phi i32 [ 0, %.lr.ph78.split.preheader ], [ %i.ez, %._crit_edge79.loopexit275.unr-lcssa ]
  %lcmp.mod276 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod276)
  br label %.lr.ph78.split.epil

.lr.ph78.split.epil:                              ; preds = %.lr.ph78.split.epil, %.lr.ph78.split.epil.preheader
  %.07177.epil = phi i32 [ %i.eb, %.lr.ph78.split.epil ], [ %.07177.epil.init, %.lr.ph78.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph78.split.epil ], [ 0, %.lr.ph78.split.epil.preheader ]
  %i.dw = uitofp nneg i32 %.07177.epil to double
  %i.dx = fmul nnan double %i.dw, f0x401921FB54442D18
  %i.dy = fdiv double %i.dx, %i.j                 ; 2 uses
  %i.dz = tail call double @cos(double noundef %i.dy) #7 ; 0 uses
  %i.ea = tail call double @sin(double noundef %i.dy) #7 ; 0 uses
  %i.eb = add nuw nsw i32 %.07177.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge79, label %.lr.ph78.split.epil, !llvm.loop !28

._crit_edge79:                                    ; preds = %._crit_edge79.loopexit275.unr-lcssa, %.lr.ph78.split.epil, %._crit_edge.us, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void

.lr.ph78.split:                                   ; preds = %.lr.ph78.split, %.lr.ph78.split.preheader.new
  %.07177 = phi i32 [ 0, %.lr.ph78.split.preheader.new ], [ %i.ez, %.lr.ph78.split ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph78.split.preheader.new ], [ %niter.next.3, %.lr.ph78.split ]
  %i.ec = uitofp nneg i32 %.07177 to double
  %i.ed = fmul nnan double %i.ec, f0x401921FB54442D18
  %i.ee = fdiv double %i.ed, %i.j                 ; 2 uses
  %i.ef = tail call double @cos(double noundef %i.ee) #7 ; 0 uses
  %i.eg = tail call double @sin(double noundef %i.ee) #7 ; 0 uses
  %i.eh = or disjoint i32 %.07177, 1
  %i.ei = uitofp nneg i32 %i.eh to double
  %i.ej = fmul nnan double %i.ei, f0x401921FB54442D18
  %i.ek = fdiv double %i.ej, %i.j                 ; 2 uses
  %i.el = tail call double @cos(double noundef %i.ek) #7 ; 0 uses
  %i.em = tail call double @sin(double noundef %i.ek) #7 ; 0 uses
  %i.en = or disjoint i32 %.07177, 2
  %i.eo = uitofp nneg i32 %i.en to double
  %i.ep = fmul nnan double %i.eo, f0x401921FB54442D18
  %i.eq = fdiv double %i.ep, %i.j                 ; 2 uses
  %i.er = tail call double @cos(double noundef %i.eq) #7 ; 0 uses
  %i.es = tail call double @sin(double noundef %i.eq) #7 ; 0 uses
  %i.et = or disjoint i32 %.07177, 3
  %i.eu = uitofp nneg i32 %i.et to double
  %i.ev = fmul nnan double %i.eu, f0x401921FB54442D18
  %i.ew = fdiv double %i.ev, %i.j                 ; 2 uses
  %i.ex = tail call double @cos(double noundef %i.ew) #7 ; 0 uses
  %i.ey = tail call double @sin(double noundef %i.ew) #7 ; 0 uses
  %i.ez = add nuw nsw i32 %.07177, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge79.loopexit275.unr-lcssa, label %.lr.ph78.split, !llvm.loop !27
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
end_hunk_0
