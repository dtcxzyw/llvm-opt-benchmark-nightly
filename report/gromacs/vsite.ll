Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/vsite?download=true
inline.NumInlined: 3272
inline.NumDeleted: 881
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN3gmx13ThreadingInfo15setVirtualSitesEPKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEENS_8ArrayRefIK9t_iparamsEEiiNS7_IK12ParticleTypeEEb:bb.a
  store ptr %2, ptr %8, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %3, ptr %i.f, align 8
  store ptr %1, ptr %i.a, align 8, !tbaa !332
  store i32 %4, ptr %i.b, align 4, !tbaa !88
  %i.g = load i32, ptr %0, align 8, !tbaa !68     ; 3 uses
  %i.h = icmp slt i32 %i.g, 2
  br i1 %i.h, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  br i1 %7, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1776
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1784
  %scevgep = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %bb.e

bb.d:                                             ; preds = %.loopexit89
  %i.k = add nsw i32 %i.dz, 1                     ; 2 uses
  store i32 %i.k, ptr %i.c, align 4, !tbaa !88
  br label %bb.i

bb.e:                                             ; preds = %bb.c, %.loopexit89
  %.054.idx117 = phi i64 [ 0, %bb.c ], [ %.054.add, %.loopexit89 ] ; 2 uses
  %.promoted100112116 = phi i32 [ -1, %bb.c ], [ %i.dz, %.loopexit89 ] ; 5 uses
  %.054.ptr = getelementptr inbounds nuw i8, ptr @_ZN3gmxL18vSiteFunctionTypesE, i64 %.054.idx117
  %i.l = load i32, ptr %.054.ptr, align 4, !tbaa !83 ; 2 uses
  %.not68 = icmp eq i32 %i.l, 74
  br i1 %.not68, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !122
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 2                   ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.preheader.preheader, label %.loopexit89

.preheader.preheader:                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.m
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !86   ; 2 uses
  %i.aa = add i32 %i.z, 1
  %i.ab = sext i32 %i.aa to i64                   ; 4 uses
  %i.ac = and i64 %i.u, 2147483647
  %i.ad = icmp sgt i32 %i.z, 0
  br label %.preheader

.loopexit88:                                      ; preds = %.lr.ph, %middle.block231, %vec.epilog.middle.block250, %.preheader
  %.promoted100109 = phi i32 [ %.promoted100110, %.preheader ], [ %i.bc, %vec.epilog.middle.block250 ], [ %i.aw, %middle.block231 ], [ %i.bg, %.lr.ph ] ; 2 uses
  %.promoted94 = phi i32 [ %.promoted9596, %.preheader ], [ %i.bc, %vec.epilog.middle.block250 ], [ %i.aw, %middle.block231 ], [ %i.bg, %.lr.ph ]
  %i.ae = icmp slt i64 %indvars.iv.next139, %i.ac
  %indvars.iv.next = add i64 %indvars.iv, %i.ab
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ae, label %.preheader, label %.loopexit89, !llvm.loop !333

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit88
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %.loopexit88 ] ; 2 uses
  %indvars.iv138 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next139, %.loopexit88 ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next, %.loopexit88 ] ; 6 uses
  %.promoted100110 = phi i32 [ %.promoted100112116, %.preheader.preheader ], [ %.promoted100109, %.loopexit88 ]
  %.promoted9596 = phi i32 [ %.promoted100112116, %.preheader.preheader ], [ %.promoted94, %.loopexit88 ] ; 4 uses
  %i.af = add i64 %indvars.iv138, %i.ab
  %i.ag = add i64 %indvars.iv138, 2
  %smax213 = call i64 @llvm.smax.i64(i64 %i.af, i64 %i.ag)
  %i.ah = mul i64 %indvar, %i.ab
  %i.ai = xor i64 %i.ah, -1
  %i.aj = add i64 %smax213, %i.ai                 ; 7 uses
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, %i.ab ; 3 uses
  br i1 %i.ad, label %iter.check237, label %.loopexit88

iter.check237:                                    ; preds = %.preheader
  %min.iters.check214 = icmp ult i64 %i.aj, 8
  br i1 %min.iters.check214, label %.lr.ph.preheader, label %vector.main.loop.iter.check215

vector.main.loop.iter.check215:                   ; preds = %iter.check237
  %min.iters.check216 = icmp ult i64 %i.aj, 32
  br i1 %min.iters.check216, label %vec.epilog.ph241, label %vector.ph217

vector.ph217:                                     ; preds = %vector.main.loop.iter.check215
  %i.ak = and i64 %i.aj, 24
  %n.vec218 = and i64 %i.aj, -32                  ; 4 uses
  %i.al = add i64 %indvars.iv, %n.vec218
  %broadcast.splatinsert219 = insertelement <8 x i32> poison, i32 %.promoted9596, i64 0
  %broadcast.splat220 = shufflevector <8 x i32> %broadcast.splatinsert219, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.am = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph217
  %index222 = phi i64 [ 0, %vector.ph217 ], [ %index.next230, %vector.body221 ] ; 2 uses
  %vec.phi223.a = phi <8 x i32> [ %broadcast.splat220, %vector.ph217 ], [ %i.ar, %vector.body221 ]
  %vec.phi224.a = phi <8 x i32> [ %broadcast.splat220, %vector.ph217 ], [ %i.as, %vector.body221 ]
  %vec.phi225.a = phi <8 x i32> [ %broadcast.splat220, %vector.ph217 ], [ %i.at, %vector.body221 ]
  %vec.phi226 = phi <8 x i32> [ %broadcast.splat220, %vector.ph217 ], [ %i.au, %vector.body221 ]
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %index222 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %wide.load = load <8 x i32>, ptr %i.an, align 4, !tbaa !88
  %wide.load227.a = load <8 x i32>, ptr %i.ao, align 4, !tbaa !88
  %wide.load228.a = load <8 x i32>, ptr %i.ap, align 4, !tbaa !88
  %wide.load229 = load <8 x i32>, ptr %i.aq, align 4, !tbaa !88
  %i.ar = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi223.a, <8 x i32> %wide.load) ; 2 uses
  %i.as = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi224.a, <8 x i32> %wide.load227.a) ; 2 uses
  %i.at = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi225.a, <8 x i32> %wide.load228.a) ; 2 uses
  %i.au = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi226, <8 x i32> %wide.load229) ; 2 uses
  %index.next230 = add nuw i64 %index222, 32      ; 2 uses
  %i.av = icmp eq i64 %index.next230, %n.vec218
  br i1 %i.av, label %middle.block231, label %vector.body221, !llvm.loop !334

middle.block231:                                  ; preds = %vector.body221
  %rdx.minmax232.a = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ar, <8 x i32> %i.as)
  %rdx.minmax233.a = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax232.a, <8 x i32> %i.at)
  %rdx.minmax234 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax233.a, <8 x i32> %i.au)
  %i.aw = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax234) ; 4 uses
  %cmp.n = icmp eq i64 %i.aj, %n.vec218
  br i1 %cmp.n, label %.loopexit88, label %vec.epilog.iter.check239

vec.epilog.iter.check239:                         ; preds = %middle.block231
  %min.epilog.iters.check240 = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check240, label %.lr.ph.preheader, label %vec.epilog.ph241, !prof !216

vec.epilog.ph241:                                 ; preds = %vector.main.loop.iter.check215, %vec.epilog.iter.check239
  %vec.epilog.resume.val235 = phi i64 [ %n.vec218, %vec.epilog.iter.check239 ], [ 0, %vector.main.loop.iter.check215 ]
  %bc.merge.rdx236 = phi i32 [ %i.aw, %vec.epilog.iter.check239 ], [ %.promoted9596, %vector.main.loop.iter.check215 ]
  %n.vec242 = and i64 %i.aj, -8                   ; 3 uses
  %i.ax = add i64 %indvars.iv, %n.vec242
  %broadcast.splatinsert243 = insertelement <8 x i32> poison, i32 %bc.merge.rdx236, i64 0
  %broadcast.splat244 = shufflevector <8 x i32> %broadcast.splatinsert243, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ay = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv
  br label %vec.epilog.vector.body245

vec.epilog.vector.body245:                        ; preds = %vec.epilog.vector.body245, %vec.epilog.ph241
  %index246 = phi i64 [ %vec.epilog.resume.val235, %vec.epilog.ph241 ], [ %index.next249, %vec.epilog.vector.body245 ] ; 2 uses
  %vec.phi247 = phi <8 x i32> [ %broadcast.splat244, %vec.epilog.ph241 ], [ %i.ba, %vec.epilog.vector.body245 ]
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %index246
  %wide.load248 = load <8 x i32>, ptr %i.az, align 4, !tbaa !88
  %i.ba = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi247, <8 x i32> %wide.load248) ; 2 uses
  %index.next249 = add nuw i64 %index246, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next249, %n.vec242
  br i1 %i.bb, label %vec.epilog.middle.block250, label %vec.epilog.vector.body245, !llvm.loop !335

vec.epilog.middle.block250:                       ; preds = %vec.epilog.vector.body245
  %i.bc = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.ba) ; 3 uses
  %cmp.n251 = icmp eq i64 %i.aj, %n.vec242
  br i1 %cmp.n251, label %.loopexit88, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check237, %vec.epilog.iter.check239, %vec.epilog.middle.block250
  %indvars.iv135.ph = phi i64 [ %indvars.iv, %iter.check237 ], [ %i.al, %vec.epilog.iter.check239 ], [ %i.ax, %vec.epilog.middle.block250 ]
  %.ph282 = phi i32 [ %.promoted9596, %iter.check237 ], [ %i.aw, %vec.epilog.iter.check239 ], [ %i.bc, %vec.epilog.middle.block250 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %.lr.ph ], [ %indvars.iv135.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bd = phi i32 [ %i.bg, %.lr.ph ], [ %.ph282, %.lr.ph.preheader ]
  %i.be = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv135
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !88
  %i.bg = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 %i.bf) ; 3 uses
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, 1 ; 2 uses
  %i.bh = icmp slt i64 %indvars.iv.next136, %indvars.iv.next139
  br i1 %i.bh, label %.lr.ph, label %.loopexit88, !llvm.loop !336

bb.g:                                             ; preds = %bb.e
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !12  ; 10 uses
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !122
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = lshr exact i64 %i.bm, 2
  %i.bo = trunc i64 %i.bn to i32                  ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph106.preheader, label %.loopexit89

.lr.ph106.preheader:                              ; preds = %bb.g
  %scevgep185 = getelementptr i8, ptr %i.bi, i64 8
  %scevgep187 = getelementptr i8, ptr %i.bi, i64 12
  br label %.lr.ph106

.loopexit87.loopexit:                             ; preds = %.lr.ph99
  %i.bq = trunc nsw i64 %indvars.iv.next142 to i32
  br label %.loopexit87

.loopexit87:                                      ; preds = %.loopexit87.loopexit, %.lr.ph106
  %.promoted100113 = phi i32 [ %i.ca, %.lr.ph106 ], [ %i.dx, %.loopexit87.loopexit ] ; 2 uses
  %.161.lcssa = phi i32 [ %.060105, %.lr.ph106 ], [ %i.bq, %.loopexit87.loopexit ] ; 2 uses
  %i.br = icmp slt i32 %.161.lcssa, %i.bo
  br i1 %i.br, label %.lr.ph106, label %.loopexit89, !llvm.loop !337

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %.loopexit87
  %.060105 = phi i32 [ %.161.lcssa, %.loopexit87 ], [ 0, %.lr.ph106.preheader ] ; 3 uses
  %.promoted101104 = phi i32 [ %.promoted100113, %.loopexit87 ], [ %.promoted100112116, %.lr.ph106.preheader ]
  %i.bs = sext i32 %.060105 to i64                ; 12 uses
  %i.bt = getelementptr [4 x i8], ptr %i.bi, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !88
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [48 x i8], ptr %2, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !79 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bt, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !88
  %i.ca = tail call i32 @llvm.smax.i32(i32 %.promoted101104, i32 %i.bz) ; 5 uses
  %i.cb = icmp sgt i32 %i.bx, 0
  br i1 %i.cb, label %iter.check, label %.loopexit87

iter.check:                                       ; preds = %.lr.ph106
  %i.cc = mul nuw nsw i32 %i.bx, 3
  %i.cd = add nsw i32 %i.cc, %.060105
  %i.ce = sext i32 %i.cd to i64                   ; 3 uses
  %i.cf = add nsw i64 %i.bs, 3
  %smax189 = call i64 @llvm.smax.i64(i64 %i.cf, i64 %i.ce)
  %9 = xor i64 %i.bs, -1
  %i.cg = add i64 %smax189, %9                    ; 3 uses
  %i.ch = udiv i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.cg, 24
  br i1 %min.iters.check, label %.lr.ph99.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cj = shl nsw i64 %i.bs, 2                    ; 2 uses
  %scevgep186 = getelementptr i8, ptr %scevgep185, i64 %i.cj
  %i.ck = add nsw i64 %i.bs, 3
  %smax = call i64 @llvm.smax.i64(i64 %i.ck, i64 %i.ce)
  %10 = xor i64 %i.bs, -1
  %i.cl = add i64 %smax, %10
  %i.cm = udiv i64 %i.cl, 3
  %i.cn = mul i64 %i.cm, 12
  %i.co = getelementptr i8, ptr %scevgep187, i64 %i.cn
  %scevgep188 = getelementptr i8, ptr %i.co, i64 %i.cj
  %bound0 = icmp ult ptr %i.c, %scevgep188
  %bound1 = icmp ult ptr %scevgep186, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph99.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check191 = icmp ult i64 %i.cg, 96
  br i1 %min.iters.check191, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cp = and i64 %i.ci, 31                       ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0
  %i.cr = select i1 %i.cq, i64 32, i64 %i.cp      ; 2 uses
  %n.vec = sub nsw i64 %i.ci, %i.cr               ; 3 uses
  %i.cs = mul i64 %n.vec, 3
  %i.ct = add i64 %i.cs, %i.bs
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ca, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi192.a = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi193.a = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.dg, %vector.body ]
  %vec.phi194 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.dh, %vector.body ]
  %i.cu = mul i64 %index, 3
  %i.cv = add i64 %i.cu, %i.bs                    ; 4 uses
  %i.cw = getelementptr [4 x i8], ptr %i.bi, i64 %i.cv
  %i.cx = getelementptr [4 x i8], ptr %i.bi, i64 %i.cv
  %i.cy = getelementptr [4 x i8], ptr %i.bi, i64 %i.cv
  %i.cz = getelementptr [4 x i8], ptr %i.bi, i64 %i.cv
  %i.da = getelementptr i8, ptr %i.cw, i64 8
  %i.db = getelementptr i8, ptr %i.cx, i64 104
  %i.dc = getelementptr i8, ptr %i.cy, i64 200
  %i.dd = getelementptr i8, ptr %i.cz, i64 296
  %wide.vec = load <24 x i32>, ptr %i.da, align 4, !tbaa !88, !alias.scope !338
  %strided.vec = shufflevector <24 x i32> %wide.vec, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %wide.vec195 = load <24 x i32>, ptr %i.db, align 4, !tbaa !88, !alias.scope !338
  %strided.vec196 = shufflevector <24 x i32> %wide.vec195, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %wide.vec197 = load <24 x i32>, ptr %i.dc, align 4, !tbaa !88, !alias.scope !338
  %strided.vec198 = shufflevector <24 x i32> %wide.vec197, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %wide.vec199 = load <24 x i32>, ptr %i.dd, align 4, !tbaa !88, !alias.scope !338
  %strided.vec200 = shufflevector <24 x i32> %wide.vec199, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %i.de = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi, <8 x i32> %strided.vec) ; 2 uses
  %i.df = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi192.a, <8 x i32> %strided.vec196) ; 2 uses
  %i.dg = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi193.a, <8 x i32> %strided.vec198) ; 2 uses
  %i.dh = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi194, <8 x i32> %strided.vec200) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !341

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.de, <8 x i32> %i.df)
  %rdx.minmax201.a = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.dg)
  %rdx.minmax202 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax201.a, <8 x i32> %i.dh)
  %i.dj = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax202) ; 3 uses
  store i32 %i.dj, ptr %i.c, align 4, !tbaa !88, !alias.scope !342, !noalias !338
  %min.epilog.iters.check = icmp samesign ult i64 %i.cr, 9
  br i1 %min.epilog.iters.check, label %.lr.ph99.preheader, label %vec.epilog.ph, !prof !216

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %middle.block
  %vec.epilog.resume.val = phi i64 [ %n.vec, %middle.block ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.dj, %middle.block ], [ %i.ca, %vector.main.loop.iter.check ]
  %i.dk = and i64 %i.ci, 7                        ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  %i.dm = select i1 %i.dl, i64 8, i64 %i.dk
  %n.vec203 = sub nsw i64 %i.ci, %i.dm            ; 2 uses
  %i.dn = mul i64 %n.vec203, 3
  %i.do = add i64 %i.dn, %i.bs
  %broadcast.splatinsert204 = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat205 = shufflevector <8 x i32> %broadcast.splatinsert204, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.gep = getelementptr [4 x i8], ptr %i.bi, i64 %i.bs
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index206 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next210, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi207 = phi <8 x i32> [ %broadcast.splat205, %vec.epilog.ph ], [ %i.dq, %vec.epilog.vector.body ]
  %.idx = mul i64 %index206, 12
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx
  %i.dp = getelementptr i8, ptr %gep, i64 8
  %wide.vec208 = load <24 x i32>, ptr %i.dp, align 4, !tbaa !88, !alias.scope !338
  %strided.vec209 = shufflevector <24 x i32> %wide.vec208, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %i.dq = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi207, <8 x i32> %strided.vec209) ; 2 uses
  %index.next210 = add nuw i64 %index206, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next210, %n.vec203
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !344

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ds = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.dq) ; 2 uses
  store i32 %i.ds, ptr %i.c, align 4, !tbaa !88, !alias.scope !342, !noalias !338
  br label %.lr.ph99.preheader

.lr.ph99.preheader:                               ; preds = %vector.memcheck, %iter.check, %middle.block, %vec.epilog.middle.block
  %indvars.iv141.ph = phi i64 [ %i.bs, %iter.check ], [ %i.bs, %vector.memcheck ], [ %i.ct, %middle.block ], [ %i.do, %vec.epilog.middle.block ]
  %.ph = phi i32 [ %i.ca, %iter.check ], [ %i.ca, %vector.memcheck ], [ %i.dj, %middle.block ], [ %i.ds, %vec.epilog.middle.block ]
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %.lr.ph99
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %.lr.ph99 ], [ %indvars.iv141.ph, %.lr.ph99.preheader ] ; 2 uses
  %i.dt = phi i32 [ %i.dx, %.lr.ph99 ], [ %.ph, %.lr.ph99.preheader ]
  %i.du = getelementptr [4 x i8], ptr %i.bi, i64 %indvars.iv141
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !88
  %i.dx = tail call i32 @llvm.smax.i32(i32 %i.dt, i32 %i.dw) ; 3 uses
  store i32 %i.dx, ptr %i.c, align 4, !tbaa !88
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, 3 ; 3 uses
  %i.dy = icmp slt i64 %indvars.iv.next142, %i.ce
  br i1 %i.dy, label %.lr.ph99, label %.loopexit87.loopexit, !llvm.loop !345

.loopexit89:                                      ; preds = %.loopexit88, %.loopexit87, %bb.f, %bb.g
  %i.dz = phi i32 [ %.promoted100113, %.loopexit87 ], [ %.promoted100112116, %bb.g ], [ %.promoted100112116, %bb.f ], [ %.promoted100109, %.loopexit88 ] ; 3 uses
  %.054.add = add nuw nsw i64 %.054.idx117, 4     ; 2 uses
  %.not = icmp eq i64 %.054.add, 40
  br i1 %.not, label %bb.d, label %bb.e

bb.h:                                             ; preds = %bb.b
  store i32 %4, ptr %i.c, align 4, !tbaa !88
  %i.ea = add i32 %5, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %i.eb = phi i32 [ %i.k, %bb.d ], [ %4, %bb.h ]
  %.pn86 = phi i32 [ %i.dz, %bb.d ], [ %i.ea, %bb.h ]
  %.pn = add i32 %.pn86, %i.g
  %storemerge = sdiv i32 %.pn, %i.g               ; 2 uses
  store i32 %storemerge, ptr %i.d, align 4, !tbaa !88
  %i.ec = load ptr, ptr @debug, align 8, !tbaa !346 ; 2 uses
  %.not69 = icmp eq ptr %i.ec, null
  br i1 %.not69, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ed = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ec, ptr noundef nonnull @.str.70, i32 noundef %4, i32 noundef %i.eb, i32 noundef %storemerge) #12 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ef = sext i32 %4 to i64                      ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !122 ; 2 uses
  %i.ei = load ptr, ptr %i.ee, align 8, !tbaa !12 ; 2 uses
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = ashr exact i64 %i.el, 2                 ; 3 uses
  %i.en = icmp ult i64 %i.em, %i.ef
  br i1 %i.en, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.eo = sub nuw nsw i64 %i.ef, %i.em
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i64 noundef %i.eo)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.m:                                             ; preds = %bb.k
  %i.ep = icmp ugt i64 %i.em, %i.ef
  br i1 %i.ep, label %bb.n, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.n:                                             ; preds = %bb.m
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ef ; 2 uses
  %.not.i.i = icmp eq ptr %i.eh, %i.eq
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.n
  store ptr %i.eq, ptr %i.eg, align 8, !tbaa !122
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.l, %bb.m, %bb.n, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.er = icmp sgt i32 %4, 0
  br i1 %i.er, label %.lr.ph120.preheader, label %._crit_edge

.lr.ph120.preheader:                              ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.es = load ptr, ptr %i.ee, align 8, !tbaa !12
  br label %.lr.ph120

._crit_edge:                                      ; preds = %bb.ab, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.et = load i32, ptr %0, align 8, !tbaa !68
  tail call void @__kmpc_push_num_threads(ptr nonnull @1, i32 %i.e, i32 %i.et)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 7, ptr nonnull @_ZN3gmx13ThreadingInfo15setVirtualSitesEPKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEENS_8ArrayRefIK9t_iparamsEEiiNS7_IK12ParticleTypeEEb.omp_outlined, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %8, ptr nonnull %6)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ev = load i32, ptr %0, align 8, !tbaa !68    ; 2 uses
  %i.ew = sext i32 %i.ev to i64
  %i.ex = load ptr, ptr %i.eu, align 8, !tbaa !16
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ew
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !20 ; 2 uses
  %i.fa = shl nsw i32 %i.ev, 1
  %i.fb = load ptr, ptr %i.ee, align 8, !tbaa !12
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !332
  %i.fd = load ptr, ptr %8, align 8, !tbaa !69
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 2872
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i, %._crit_edge
  %.030.idx3.i = phi i64 [ 0, %._crit_edge ], [ %.030.add.i, %._crit_edge.i ] ; 2 uses
  %.030.ptr.i = getelementptr inbounds nuw i8, ptr @_ZN3gmxL18vSiteFunctionTypesE, i64 %.030.idx3.i
  %i.fg = load i32, ptr %.030.ptr.i, align 4, !tbaa !83 ; 2 uses
  %i.fh = sext i32 %i.fg to i64                   ; 4 uses
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %i.fh ; 4 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !12 ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 5 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !122 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fl, %i.fj
  br i1 %.not.i.i.i.i, label %_ZN15InteractionList5clearEv.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.o
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !122
  br label %_ZN15InteractionList5clearEv.exit.i
end_hunk_0
