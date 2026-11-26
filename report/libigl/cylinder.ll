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
  %min.iters.check = icmp ugt i32 %1, 6
  %ident.check.not = icmp eq i32 %0, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  %bound0 = icmp ult ptr %scevgep186, %scevgep183
  %bound1 = icmp ult ptr %scevgep184, %scevgep185
  %found.conflict = and i1 %bound0, %bound1
  %bound0187 = icmp ult ptr %scevgep186, %scevgep
  %bound1188 = icmp ult ptr %scevgep182, %scevgep185
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx = or i1 %found.conflict, %found.conflict189
  %bound0190.a = icmp ult ptr %scevgep184, %scevgep
  %bound1191.a = icmp ult ptr %scevgep182, %scevgep183
  %found.conflict192.a = and i1 %bound0190.a, %bound1191.a
  %conflict.rdx193.a = or i1 %conflict.rdx, %found.conflict192.a
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
  %i.bd = getelementptr i8, ptr %i.aw, i64 %i.bc  ; 4 uses
  %i.be = getelementptr i8, ptr %i.aw, i64 %i.w
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.bc  ; 4 uses
  %i.bg = add i64 %i.az, %i.bb
  %i.bh = shl i64 %i.bg, 2                        ; 4 uses
  %i.bi = getelementptr i8, ptr %i.aw, i64 %i.bh  ; 4 uses
  %i.bj = getelementptr i8, ptr %i.aw, i64 %i.w
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.bh  ; 4 uses
  %i.bl = shl i64 %i.az, 3
  %i.bm = add i64 %i.bl, %i.bc                    ; 4 uses
  %i.bn = getelementptr i8, ptr %i.aw, i64 %i.bm  ; 4 uses
  %i.bo = getelementptr i8, ptr %i.aw, i64 %i.w
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.bm  ; 4 uses
  %i.bq = getelementptr i8, ptr %i.aw, i64 %i.bh
  %i.br = getelementptr i8, ptr %i.bq, i64 4      ; 4 uses
  %i.bs = getelementptr i8, ptr %i.aw, i64 %i.v
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.bh  ; 4 uses
  %i.bu = getelementptr i8, ptr %i.aw, i64 %i.bm
  %i.bv = getelementptr i8, ptr %i.bu, i64 4      ; 4 uses
  %i.bw = getelementptr i8, ptr %i.aw, i64 %i.v
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.bm  ; 4 uses
  %i.by = getelementptr i8, ptr %i.aw, i64 %i.bc
  %i.bz = getelementptr i8, ptr %i.by, i64 4      ; 4 uses
  %i.ca = getelementptr i8, ptr %i.aw, i64 %i.v
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.bc  ; 4 uses
  %bound0206.a = icmp ult ptr %i.bd, %i.bk
  %bound1207.a = icmp ult ptr %i.bi, %i.bf
  %found.conflict208.a = and i1 %bound0206.a, %bound1207.a
  %conflict.rdx209.a = or i1 %conflict.rdx193.a, %found.conflict208.a
  %bound0210.a = icmp ult ptr %i.bd, %i.bp
  %bound1211.a = icmp ult ptr %i.bn, %i.bf
  %found.conflict212.a = and i1 %bound0210.a, %bound1211.a
  %conflict.rdx213.a = or i1 %conflict.rdx209.a, %found.conflict212.a
  %bound0214.a = icmp ult ptr %i.bd, %i.bt
  %bound1215.a = icmp ult ptr %i.br, %i.bf
  %found.conflict216.a = and i1 %bound0214.a, %bound1215.a
  %conflict.rdx217.a = or i1 %conflict.rdx213.a, %found.conflict216.a
  %bound0218.a = icmp ult ptr %i.bd, %i.bx
  %bound1219.a = icmp ult ptr %i.bv, %i.bf
  %found.conflict220.a = and i1 %bound0218.a, %bound1219.a
  %conflict.rdx221.a = or i1 %conflict.rdx217.a, %found.conflict220.a
  %bound0222.a = icmp ult ptr %i.bi, %i.bp
  %bound1223.a = icmp ult ptr %i.bn, %i.bk
  %found.conflict224.a = and i1 %bound0222.a, %bound1223.a
  %conflict.rdx225.a = or i1 %conflict.rdx221.a, %found.conflict224.a
  %bound0226.a = icmp ult ptr %i.bi, %i.cb
  %bound1227.a = icmp ult ptr %i.bz, %i.bk
  %found.conflict228.a = and i1 %bound0226.a, %bound1227.a
  %conflict.rdx229.a = or i1 %conflict.rdx225.a, %found.conflict228.a
  %bound0230 = icmp ult ptr %i.bi, %i.bx
  %bound1231 = icmp ult ptr %i.bv, %i.bk
  %found.conflict232 = and i1 %bound0230, %bound1231
  %conflict.rdx233 = or i1 %conflict.rdx229.a, %found.conflict232
  %bound0234 = icmp ult ptr %i.bn, %i.cb
  %bound1235 = icmp ult ptr %i.bz, %i.bp
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx237 = or i1 %conflict.rdx233, %found.conflict236
  %bound0238 = icmp ult ptr %i.bn, %i.bt
  %bound1239 = icmp ult ptr %i.br, %i.bp
  %found.conflict240 = and i1 %bound0238, %bound1239
  %conflict.rdx241 = or i1 %conflict.rdx237, %found.conflict240
  %bound0242 = icmp ult ptr %i.bz, %i.bt
  %bound1243 = icmp ult ptr %i.br, %i.cb
  %found.conflict244 = and i1 %bound0242, %bound1243
  %conflict.rdx245 = or i1 %conflict.rdx241, %found.conflict244
  %bound0246 = icmp ult ptr %i.bz, %i.bx
  %bound1247 = icmp ult ptr %i.bv, %i.cb
  %found.conflict248 = and i1 %bound0246, %bound1247
  %conflict.rdx249 = or i1 %conflict.rdx245, %found.conflict248
  %bound0250 = icmp ult ptr %i.br, %i.bx
  %bound1251 = icmp ult ptr %i.bv, %i.bt
  %found.conflict252 = and i1 %bound0250, %bound1251
  %conflict.rdx253 = or i1 %conflict.rdx249, %found.conflict252
  br i1 %conflict.rdx253, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cc = add i32 %.07276.us, %i.am               ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %iv.rem, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert256 = insertelement <2 x i64> poison, i64 %indvars.iv85, i64 0
  %broadcast.splat257 = shufflevector <2 x i64> %broadcast.splatinsert256, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert258 = insertelement <2 x double> poison, double %i.ar, i64 0
  %broadcast.splat259 = shufflevector <2 x double> %broadcast.splatinsert258, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert260 = insertelement <2 x double> poison, double %i.as, i64 0
  %broadcast.splat261 = shufflevector <2 x double> %broadcast.splatinsert260, <2 x double> poison, <2 x i32> zeroinitializer
  %invariant.op = add i64 2, %indvars.iv85
  %invariant.op272 = add nsw <2 x i64> splat (i64 -1), %broadcast.splat257
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <2 x i64> [ <i64 1, i64 2>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind262 = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph ], [ %vec.ind.next266, %vector.body ] ; 2 uses
  %vec.ind263 = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph ], [ %vec.ind.next267, %vector.body ] ; 2 uses
  %i.cd = or disjoint i64 %index, 1
  %i.ce = trunc i64 %index to i32
  %i.cf = shl i32 %i.ce, 1
  %i.cg = add i32 %.07276.us, %i.cf
  %i.ch = uitofp nneg <2 x i32> %vec.ind262 to <2 x double>
  %i.ci = fdiv <2 x double> %i.ch, %broadcast.splat255
  %i.cj = add nuw nsw i64 %i.cd, %indvars.iv85    ; 2 uses
  %.reass = add i64 %index, %invariant.op
  %i.ck = insertelement <2 x i64> poison, i64 %i.cj, i64 0
  %i.cl = insertelement <2 x i64> %i.ck, i64 %.reass, i64 1
  %i.cm = getelementptr [8 x i8], ptr %i.p, i64 %i.cj ; 3 uses
  store <2 x double> %broadcast.splat259, ptr %i.cm, align 8, !tbaa !30, !alias.scope !31, !noalias !32
  %i.cn = getelementptr [8 x i8], ptr %i.cm, i64 %i.q
  store <2 x double> %broadcast.splat261, ptr %i.cn, align 8, !tbaa !30, !alias.scope !33, !noalias !34
  %i.co = getelementptr i8, ptr %i.cm, i64 %.idx.us
  store <2 x double> %i.ci, ptr %i.co, align 8, !tbaa !30, !alias.scope !34
  %i.cp = add nsw <2 x i64> %vec.ind, splat (i64 -1)
  %.reass273 = add nsw <2 x i64> %vec.ind, %invariant.op272
  %i.cq = sext i32 %i.cg to i64
  %i.cr = getelementptr [4 x i8], ptr %i.aw, i64 %i.cq ; 3 uses
  %i.cs = trunc nsw <2 x i64> %.reass273 to <2 x i32>
  %i.ct = getelementptr [4 x i8], ptr %i.cr, i64 %i.az
  %i.cu = trunc <2 x i64> %i.cp to <2 x i32>
  %i.cv = add <2 x i32> %broadcast.splat, %i.cu   ; 2 uses
  %i.cw = getelementptr [4 x i8], ptr %i.cr, i64 %i.ba
  %interleaved.vec = shufflevector <2 x i32> %i.cs, <2 x i32> %i.cv, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.cr, align 4, !tbaa !35
  %i.cx = add <2 x i32> %broadcast.splat, %vec.ind263
  %interleaved.vec264 = shufflevector <2 x i32> %i.cv, <2 x i32> %i.cx, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec264, ptr %i.ct, align 4, !tbaa !35
  %i.cy = shufflevector <2 x i64> %i.cl, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cz = trunc nuw <4 x i64> %i.cy to <4 x i32>
  %interleaved.vec265 = shufflevector <4 x i32> %i.cz, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec265, ptr %i.cw, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %vec.ind.next266 = add <2 x i32> %vec.ind262, splat (i32 2)
  %vec.ind.next267 = add <2 x i32> %vec.ind263, splat (i32 2)
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.peel.next, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.peel.next ], [ %i.ak, %middle.block ]
  %.174.us.ph = phi i32 [ %.07276.us, %vector.memcheck ], [ %.07276.us, %.peel.next ], [ %i.cc, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %.174.us = phi i32 [ %i.dz, %scalar.ph ], [ %.174.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.db = trunc nuw nsw i64 %indvars.iv to i32
  %i.dc = uitofp nneg i32 %i.db to double
  %i.dd = fdiv double %i.dc, %i.l
  %i.de = mul nuw nsw i64 %indvars.iv, %i.r       ; 2 uses
  %i.df = add nuw nsw i64 %i.de, %indvars.iv85    ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.p, i64 %i.df ; 3 uses
  store double %i.ar, ptr %i.dg, align 8, !tbaa !30
  %i.dh = getelementptr [8 x i8], ptr %i.dg, i64 %i.q
  store double %i.as, ptr %i.dh, align 8, !tbaa !30
  %i.di = getelementptr i8, ptr %i.dg, i64 %.idx.us
  store double %i.dd, ptr %i.di, align 8, !tbaa !30
  %i.dj = add nsw i64 %indvars.iv, -1
  %i.dk = mul nuw nsw i64 %i.dj, %i.s             ; 2 uses
  %i.dl = add nsw i64 %indvars.iv85, %i.dk
  %i.dm = sext i32 %.174.us to i64
  %i.dn = getelementptr [4 x i8], ptr %i.aw, i64 %i.dm ; 4 uses
  %i.do = trunc nsw i64 %i.dl to i32
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !35
  %i.dp = getelementptr [4 x i8], ptr %i.dn, i64 %i.az
  %i.dq = trunc i64 %i.dk to i32
  %i.dr = add i32 %iv.rem, %i.dq                  ; 2 uses
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !35
  %i.ds = getelementptr [4 x i8], ptr %i.dn, i64 %i.ba
  %i.dt = trunc nuw i64 %i.df to i32              ; 2 uses
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !35
  %i.du = getelementptr i8, ptr %i.dn, i64 4      ; 3 uses
  store i32 %i.dr, ptr %i.du, align 4, !tbaa !35
  %i.dv = getelementptr [4 x i8], ptr %i.du, i64 %i.az
  %i.dw = trunc i64 %i.de to i32
  %i.dx = add i32 %iv.rem, %i.dw
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !35
  %i.dy = getelementptr [4 x i8], ptr %i.du, i64 %i.ba
  store i32 %i.dt, ptr %i.dy, align 4, !tbaa !35
  %i.dz = add nsw i32 %.174.us, 2                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond82.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !26

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block, %bb.a
  %.2.us.lcssa = phi i32 [ %.07276.us, %bb.a ], [ %i.cc, %middle.block ], [ %i.dz, %scalar.ph ]
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %i.r
  br i1 %exitcond89.not, label %._crit_edge79, label %bb.a, !llvm.loop !27

._crit_edge79.loopexit269.unr-lcssa:              ; preds = %.lr.ph78.split
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge79, label %.lr.ph78.split.epil.preheader

.lr.ph78.split.epil.preheader:                    ; preds = %._crit_edge79.loopexit269.unr-lcssa, %.lr.ph78.split.preheader
  %.07177.epil.init = phi i32 [ 0, %.lr.ph78.split.preheader ], [ %i.fd, %._crit_edge79.loopexit269.unr-lcssa ]
  %lcmp.mod270 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod270)
  br label %.lr.ph78.split.epil

.lr.ph78.split.epil:                              ; preds = %.lr.ph78.split.epil, %.lr.ph78.split.epil.preheader
  %.07177.epil = phi i32 [ %i.ef, %.lr.ph78.split.epil ], [ %.07177.epil.init, %.lr.ph78.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph78.split.epil ], [ 0, %.lr.ph78.split.epil.preheader ]
  %i.ea = uitofp nneg i32 %.07177.epil to double
  %i.eb = fmul nnan double %i.ea, f0x401921FB54442D18
  %i.ec = fdiv double %i.eb, %i.j                 ; 2 uses
  %i.ed = tail call double @cos(double noundef %i.ec) #7 ; 0 uses
  %i.ee = tail call double @sin(double noundef %i.ec) #7 ; 0 uses
  %i.ef = add nuw nsw i32 %.07177.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge79, label %.lr.ph78.split.epil, !llvm.loop !28

._crit_edge79:                                    ; preds = %._crit_edge79.loopexit269.unr-lcssa, %.lr.ph78.split.epil, %._crit_edge.us, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void

.lr.ph78.split:                                   ; preds = %.lr.ph78.split, %.lr.ph78.split.preheader.new
  %.07177 = phi i32 [ 0, %.lr.ph78.split.preheader.new ], [ %i.fd, %.lr.ph78.split ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph78.split.preheader.new ], [ %niter.next.3, %.lr.ph78.split ]
  %i.eg = uitofp nneg i32 %.07177 to double
  %i.eh = fmul nnan double %i.eg, f0x401921FB54442D18
  %i.ei = fdiv double %i.eh, %i.j                 ; 2 uses
  %i.ej = tail call double @cos(double noundef %i.ei) #7 ; 0 uses
  %i.ek = tail call double @sin(double noundef %i.ei) #7 ; 0 uses
  %i.el = or disjoint i32 %.07177, 1
  %i.em = uitofp nneg i32 %i.el to double
  %i.en = fmul nnan double %i.em, f0x401921FB54442D18
  %i.eo = fdiv double %i.en, %i.j                 ; 2 uses
  %i.ep = tail call double @cos(double noundef %i.eo) #7 ; 0 uses
  %i.eq = tail call double @sin(double noundef %i.eo) #7 ; 0 uses
  %i.er = or disjoint i32 %.07177, 2
  %i.es = uitofp nneg i32 %i.er to double
  %i.et = fmul nnan double %i.es, f0x401921FB54442D18
  %i.eu = fdiv double %i.et, %i.j                 ; 2 uses
  %i.ev = tail call double @cos(double noundef %i.eu) #7 ; 0 uses
  %i.ew = tail call double @sin(double noundef %i.eu) #7 ; 0 uses
  %i.ex = or disjoint i32 %.07177, 3
  %i.ey = uitofp nneg i32 %i.ex to double
  %i.ez = fmul nnan double %i.ey, f0x401921FB54442D18
  %i.fa = fdiv double %i.ez, %i.j                 ; 2 uses
  %i.fb = tail call double @cos(double noundef %i.fa) #7 ; 0 uses
  %i.fc = tail call double @sin(double noundef %i.fa) #7 ; 0 uses
  %i.fd = add nuw nsw i32 %.07177, 4              ; 2 uses
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
end_hunk_0
