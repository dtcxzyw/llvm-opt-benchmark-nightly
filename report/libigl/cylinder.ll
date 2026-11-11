Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/cylinder?download=true
inline.NumInlined: 71
inline.NumDeleted: 52
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3igl8cylinderIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEviiRNS1_15PlainObjectBaseIT_EERNS5_IT0_EE:_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
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
  %vec.ind262.a = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph ], [ %vec.ind.next266, %vector.body ] ; 2 uses
  %vec.ind263 = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph ], [ %vec.ind.next267.a, %vector.body ] ; 2 uses
  %i.cd = or disjoint i64 %index, 1
  %i.ce = trunc i64 %index to i32
  %i.cf = shl i32 %i.ce, 1
  %i.cg = add i32 %.07276.us, %i.cf
  %i.ch = uitofp nneg <2 x i32> %vec.ind262.a to <2 x double>
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
  %4 = add nsw <2 x i64> %vec.ind, splat (i64 -1)
  %.reass273 = add nsw <2 x i64> %vec.ind, %invariant.op272
  %i.cp = sext i32 %i.cg to i64
  %i.cq = getelementptr [4 x i8], ptr %i.aw, i64 %i.cp ; 3 uses
  %i.cr = trunc nsw <2 x i64> %.reass273 to <2 x i32>
  %i.cs = getelementptr [4 x i8], ptr %i.cq, i64 %i.az
  %5 = trunc <2 x i64> %4 to <2 x i32>
  %i.ct = add <2 x i32> %broadcast.splat, %5      ; 2 uses
  %i.cu = getelementptr [4 x i8], ptr %i.cq, i64 %i.ba
  %interleaved.vec = shufflevector <2 x i32> %i.cr, <2 x i32> %i.ct, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.cq, align 4, !tbaa !35
  %i.cv = add <2 x i32> %broadcast.splat, %vec.ind263
  %interleaved.vec264 = shufflevector <2 x i32> %i.ct, <2 x i32> %i.cv, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec264, ptr %i.cs, align 4, !tbaa !35
  %i.cw = shufflevector <2 x i64> %i.cl, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cx = trunc nuw <4 x i64> %i.cw to <4 x i32>
  %interleaved.vec265 = shufflevector <4 x i32> %i.cx, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec265, ptr %i.cu, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %vec.ind.next266 = add <2 x i32> %vec.ind262.a, splat (i32 2)
  %vec.ind.next267.a = add <2 x i32> %vec.ind263, splat (i32 2)
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.peel.next, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.peel.next ], [ %i.ak, %middle.block ]
  %.174.us.ph = phi i32 [ %.07276.us, %vector.memcheck ], [ %.07276.us, %.peel.next ], [ %i.cc, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %.174.us = phi i32 [ %i.dx, %scalar.ph ], [ %.174.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cz = trunc nuw nsw i64 %indvars.iv to i32
  %i.da = uitofp nneg i32 %i.cz to double
  %i.db = fdiv double %i.da, %i.l
  %i.dc = mul nuw nsw i64 %indvars.iv, %i.r       ; 2 uses
  %i.dd = add nuw nsw i64 %i.dc, %indvars.iv85    ; 2 uses
  %i.de = getelementptr [8 x i8], ptr %i.p, i64 %i.dd ; 3 uses
  store double %i.ar, ptr %i.de, align 8, !tbaa !30
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.q
  store double %i.as, ptr %i.df, align 8, !tbaa !30
  %i.dg = getelementptr i8, ptr %i.de, i64 %.idx.us
  store double %i.db, ptr %i.dg, align 8, !tbaa !30
  %i.dh = add nsw i64 %indvars.iv, -1
  %i.di = mul nuw nsw i64 %i.dh, %i.s             ; 2 uses
  %i.dj = add nsw i64 %indvars.iv85, %i.di
  %i.dk = sext i32 %.174.us to i64
  %i.dl = getelementptr [4 x i8], ptr %i.aw, i64 %i.dk ; 4 uses
  %i.dm = trunc nsw i64 %i.dj to i32
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !35
  %i.dn = getelementptr [4 x i8], ptr %i.dl, i64 %i.az
  %i.do = trunc i64 %i.di to i32
  %i.dp = add i32 %iv.rem, %i.do                  ; 2 uses
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !35
  %i.dq = getelementptr [4 x i8], ptr %i.dl, i64 %i.ba
  %i.dr = trunc nuw i64 %i.dd to i32              ; 2 uses
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !35
  %i.ds = getelementptr i8, ptr %i.dl, i64 4      ; 3 uses
  store i32 %i.dp, ptr %i.ds, align 4, !tbaa !35
  %i.dt = getelementptr [4 x i8], ptr %i.ds, i64 %i.az
  %i.du = trunc i64 %i.dc to i32
  %i.dv = add i32 %iv.rem, %i.du
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !35
  %i.dw = getelementptr [4 x i8], ptr %i.ds, i64 %i.ba
  store i32 %i.dr, ptr %i.dw, align 4, !tbaa !35
  %i.dx = add nsw i32 %.174.us, 2                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond82.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !26

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block, %bb.a
  %.2.us.lcssa = phi i32 [ %.07276.us, %bb.a ], [ %i.cc, %middle.block ], [ %i.dx, %scalar.ph ]
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %i.r
  br i1 %exitcond89.not, label %._crit_edge79, label %bb.a, !llvm.loop !27

._crit_edge79.loopexit269.unr-lcssa:              ; preds = %.lr.ph78.split
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge79, label %.lr.ph78.split.epil.preheader

.lr.ph78.split.epil.preheader:                    ; preds = %._crit_edge79.loopexit269.unr-lcssa, %.lr.ph78.split.preheader
  %.07177.epil.init = phi i32 [ 0, %.lr.ph78.split.preheader ], [ %i.fb, %._crit_edge79.loopexit269.unr-lcssa ]
  %lcmp.mod270 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod270)
  br label %.lr.ph78.split.epil

.lr.ph78.split.epil:                              ; preds = %.lr.ph78.split.epil, %.lr.ph78.split.epil.preheader
  %.07177.epil = phi i32 [ %i.ed, %.lr.ph78.split.epil ], [ %.07177.epil.init, %.lr.ph78.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph78.split.epil ], [ 0, %.lr.ph78.split.epil.preheader ]
  %i.dy = uitofp nneg i32 %.07177.epil to double
  %i.dz = fmul nnan double %i.dy, f0x401921FB54442D18
  %i.ea = fdiv double %i.dz, %i.j                 ; 2 uses
  %i.eb = tail call double @cos(double noundef %i.ea) #7 ; 0 uses
  %i.ec = tail call double @sin(double noundef %i.ea) #7 ; 0 uses
  %i.ed = add nuw nsw i32 %.07177.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge79, label %.lr.ph78.split.epil, !llvm.loop !28

._crit_edge79:                                    ; preds = %._crit_edge79.loopexit269.unr-lcssa, %.lr.ph78.split.epil, %._crit_edge.us, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void

.lr.ph78.split:                                   ; preds = %.lr.ph78.split, %.lr.ph78.split.preheader.new
  %.07177 = phi i32 [ 0, %.lr.ph78.split.preheader.new ], [ %i.fb, %.lr.ph78.split ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph78.split.preheader.new ], [ %niter.next.3, %.lr.ph78.split ]
  %i.ee = uitofp nneg i32 %.07177 to double
  %i.ef = fmul nnan double %i.ee, f0x401921FB54442D18
  %i.eg = fdiv double %i.ef, %i.j                 ; 2 uses
  %i.eh = tail call double @cos(double noundef %i.eg) #7 ; 0 uses
  %i.ei = tail call double @sin(double noundef %i.eg) #7 ; 0 uses
  %i.ej = or disjoint i32 %.07177, 1
  %i.ek = uitofp nneg i32 %i.ej to double
  %i.el = fmul nnan double %i.ek, f0x401921FB54442D18
  %i.em = fdiv double %i.el, %i.j                 ; 2 uses
  %i.en = tail call double @cos(double noundef %i.em) #7 ; 0 uses
  %i.eo = tail call double @sin(double noundef %i.em) #7 ; 0 uses
  %i.ep = or disjoint i32 %.07177, 2
  %i.eq = uitofp nneg i32 %i.ep to double
  %i.er = fmul nnan double %i.eq, f0x401921FB54442D18
  %i.es = fdiv double %i.er, %i.j                 ; 2 uses
  %i.et = tail call double @cos(double noundef %i.es) #7 ; 0 uses
  %i.eu = tail call double @sin(double noundef %i.es) #7 ; 0 uses
  %i.ev = or disjoint i32 %.07177, 3
  %i.ew = uitofp nneg i32 %i.ev to double
  %i.ex = fmul nnan double %i.ew, f0x401921FB54442D18
  %i.ey = fdiv double %i.ex, %i.j                 ; 2 uses
  %i.ez = tail call double @cos(double noundef %i.ey) #7 ; 0 uses
  %i.fa = tail call double @sin(double noundef %i.ey) #7 ; 0 uses
  %i.fb = add nuw nsw i32 %.07177, 4              ; 2 uses
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
end_hunk_0
