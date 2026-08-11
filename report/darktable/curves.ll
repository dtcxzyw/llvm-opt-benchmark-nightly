loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6LibRaw12cubic_splineEPKiS1_i:bb.a

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check321 = icmp slt i32 %3, 9
  br i1 %min.iters.check321, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.k, 12
  %n.vec = and i64 %i.k, -16                      ; 3 uses
  %i.m = or disjoint i64 %n.vec, 1                ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.j, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 1, i64 2, i64 3, i64 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw nsw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw nsw <4 x i64> %vec.ind, splat (i64 12)
  %i.n = mul nuw nsw <4 x i64> %vec.ind, %broadcast.splat
  %i.o = mul nuw nsw <4 x i64> %step.add, %broadcast.splat
  %i.p = mul nuw nsw <4 x i64> %step.add.2, %broadcast.splat
  %i.q = mul nuw nsw <4 x i64> %step.add.3, %broadcast.splat
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.h, <4 x i64> %i.n
  %wide.gep322 = getelementptr inbounds nuw [4 x i8], ptr %i.h, <4 x i64> %i.o
  %wide.gep323 = getelementptr inbounds nuw [4 x i8], ptr %i.h, <4 x i64> %i.p
  %wide.gep324 = getelementptr inbounds nuw [4 x i8], ptr %i.h, <4 x i64> %i.q
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  store <4 x ptr> %wide.gep, ptr %i.s, align 8, !tbaa !11
  store <4 x ptr> %wide.gep322, ptr %i.t, align 8, !tbaa !11
  store <4 x ptr> %wide.gep323, ptr %i.u, align 8, !tbaa !11
  store <4 x ptr> %wide.gep324, ptr %i.v, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 16)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !14

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.m, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec325 = and i64 %i.k, -4                    ; 2 uses
  %i.x = or disjoint i64 %n.vec325, 1
  %broadcast.splatinsert326 = insertelement <4 x i64> poison, i64 %i.j, i64 0
  %broadcast.splat327 = shufflevector <4 x i64> %broadcast.splatinsert326, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert328 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat329 = shufflevector <4 x i64> %broadcast.splatinsert328, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat329, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index330 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next333, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind331 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next334, %vec.epilog.vector.body ] ; 2 uses
  %i.y = mul nuw nsw <4 x i64> %vec.ind331, %broadcast.splat327
  %wide.gep332 = getelementptr inbounds nuw [4 x i8], ptr %i.h, <4 x i64> %i.y
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index330
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store <4 x ptr> %wide.gep332, ptr %i.aa, align 8, !tbaa !11
  %index.next333 = add nuw i64 %index330, 4       ; 2 uses
  %vec.ind.next334 = add nuw nsw <4 x i64> %vec.ind331, splat (i64 4)
  %i.ab = icmp eq i64 %index.next333, %n.vec325
  br i1 %i.ab, label %.lr.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !19

.lr.ph.preheader:                                 ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.ac = mul nuw nsw i64 %indvars.iv, %i.j
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %iter.check351, label %.lr.ph, !llvm.loop !20

iter.check351:                                    ; preds = %.lr.ph
  %i.af = mul nuw nsw i32 %smax, %smax
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ag ; 11 uses
  %i.ai = zext nneg i32 %smax to i64              ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ai ; 9 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ai ; 13 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai ; 12 uses
  %i.am = zext nneg i32 %3 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am ; 11 uses
  %wide.trip.count228 = zext nneg i32 %3 to i64   ; 12 uses
  %min.iters.check337 = icmp ult i32 %3, 4
  br i1 %min.iters.check337, label %.lr.ph194.preheader, label %vector.main.loop.iter.check338

vector.main.loop.iter.check338:                   ; preds = %iter.check351
  %min.iters.check339 = icmp ult i32 %3, 16
  br i1 %min.iters.check339, label %vec.epilog.ph355, label %vector.ph340

vector.ph340:                                     ; preds = %vector.main.loop.iter.check338
  %i.ao = and i64 %wide.trip.count228, 12
  %n.vec341 = and i64 %wide.trip.count228, 2147483632 ; 4 uses
  br label %vector.body342

vector.body342:                                   ; preds = %vector.body342, %vector.ph340
  %index343 = phi i64 [ 0, %vector.ph340 ], [ %index.next347, %vector.body342 ] ; 5 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index343 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %wide.load = load <8 x i32>, ptr %i.ap, align 4, !tbaa !21
  %wide.load344 = load <8 x i32>, ptr %i.aq, align 4, !tbaa !21
  %i.ar = sitofp reassoc nsz arcp contract afn <8 x i32> %wide.load to <8 x float>
  %i.as = sitofp reassoc nsz arcp contract afn <8 x i32> %wide.load344 to <8 x float>
  %i.at = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ar, splat (float f0x37800080)
  %i.au = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.as, splat (float f0x37800080)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index343 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store <8 x float> %i.at, ptr %i.av, align 4, !tbaa !22
  store <8 x float> %i.au, ptr %i.aw, align 4, !tbaa !22
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index343 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %wide.load345 = load <8 x i32>, ptr %i.ax, align 4, !tbaa !21
  %wide.load346 = load <8 x i32>, ptr %i.ay, align 4, !tbaa !21
  %i.az = sitofp reassoc nsz arcp contract afn <8 x i32> %wide.load345 to <8 x float>
  %i.ba = sitofp reassoc nsz arcp contract afn <8 x i32> %wide.load346 to <8 x float>
  %i.bb = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.az, splat (float f0x37800080)
  %i.bc = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ba, splat (float f0x37800080)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index343 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store <8 x float> %i.bb, ptr %i.bd, align 4, !tbaa !22
  store <8 x float> %i.bc, ptr %i.be, align 4, !tbaa !22
  %index.next347 = add nuw i64 %index343, 16      ; 2 uses
  %i.bf = icmp eq i64 %index.next347, %n.vec341
  br i1 %i.bf, label %middle.block348, label %vector.body342, !llvm.loop !24

middle.block348:                                  ; preds = %vector.body342
  %cmp.n349 = icmp eq i64 %n.vec341, %wide.trip.count228
  br i1 %cmp.n349, label %._crit_edge195, label %vec.epilog.iter.check353

vec.epilog.iter.check353:                         ; preds = %middle.block348
  %min.epilog.iters.check354 = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check354, label %.lr.ph194.preheader, label %vec.epilog.ph355, !prof !18

vec.epilog.ph355:                                 ; preds = %vector.main.loop.iter.check338, %vec.epilog.iter.check353
  %vec.epilog.resume.val350 = phi i64 [ %n.vec341, %vec.epilog.iter.check353 ], [ 0, %vector.main.loop.iter.check338 ]
  %n.vec356 = and i64 %wide.trip.count228, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body357

vec.epilog.vector.body357:                        ; preds = %vec.epilog.vector.body357, %vec.epilog.ph355
  %index358 = phi i64 [ %vec.epilog.resume.val350, %vec.epilog.ph355 ], [ %index.next361, %vec.epilog.vector.body357 ] ; 5 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index358
  %wide.load359 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !21
  %i.bh = sitofp reassoc nsz arcp contract afn <4 x i32> %wide.load359 to <4 x float>
  %i.bi = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bh, splat (float f0x37800080)
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index358
  store <4 x float> %i.bi, ptr %i.bj, align 4, !tbaa !22
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index358
  %wide.load360 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !21
  %i.bl = sitofp reassoc nsz arcp contract afn <4 x i32> %wide.load360 to <4 x float>
  %i.bm = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bl, splat (float f0x37800080)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index358
  store <4 x float> %i.bm, ptr %i.bn, align 4, !tbaa !22
  %index.next361 = add nuw i64 %index358, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next361, %n.vec356
  br i1 %i.bo, label %vec.epilog.middle.block362, label %vec.epilog.vector.body357, !llvm.loop !25

vec.epilog.middle.block362:                       ; preds = %vec.epilog.vector.body357
  %cmp.n363 = icmp eq i64 %n.vec356, %wide.trip.count228
  br i1 %cmp.n363, label %._crit_edge195, label %.lr.ph194.preheader

.lr.ph194.preheader:                              ; preds = %iter.check351, %vec.epilog.iter.check353, %vec.epilog.middle.block362
  %indvars.iv225.ph = phi i64 [ 0, %iter.check351 ], [ %n.vec341, %vec.epilog.iter.check353 ], [ %n.vec356, %vec.epilog.middle.block362 ]
  br label %.lr.ph194

.lr.ph194:                                        ; preds = %.lr.ph194.preheader, %.lr.ph194
  %indvars.iv225 = phi i64 [ %indvars.iv.next226, %.lr.ph194 ], [ %indvars.iv225.ph, %.lr.ph194.preheader ] ; 5 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv225
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !21
  %i.br = sitofp reassoc nsz arcp contract afn i32 %i.bq to float
  %i.bs = fmul reassoc nnan nsz arcp contract afn float %i.br, f0x37800080
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv225
  store float %i.bs, ptr %i.bt, align 4, !tbaa !22
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv225
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !21
  %i.bw = sitofp reassoc nsz arcp contract afn i32 %i.bv to float
  %i.bx = fmul reassoc nnan nsz arcp contract afn float %i.bw, f0x37800080
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv225
  store float %i.bx, ptr %i.by, align 4, !tbaa !22
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next226, %wide.trip.count228
  br i1 %exitcond229.not, label %._crit_edge195, label %.lr.ph194, !llvm.loop !26

._crit_edge195:                                   ; preds = %.lr.ph194, %vec.epilog.middle.block362, %middle.block348
  %i.bz = add nsw i32 %3, -1                      ; 8 uses
  %.not320 = icmp eq i32 %3, 1
  br i1 %.not320, label %.preheader.split.preheader, label %.lr.ph198.preheader

.lr.ph198.preheader:                              ; preds = %._crit_edge195
  %i.ca = zext i32 %i.bz to i64                   ; 6 uses
  %i.cb = icmp ne i32 %i.bz, 0
  %.neg = sext i1 %i.cb to i64
  %4 = zext nneg i32 %3 to i64
  %i.cc = add nsw i64 %.neg, %4                   ; 3 uses
  %min.iters.check380 = icmp ult i64 %i.cc, 24
  br i1 %min.iters.check380, label %.lr.ph198.preheader515, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph198.preheader
  %i.cd = mul nuw nsw i64 %wide.trip.count, 12    ; 2 uses
  %i.ce = add nsw i64 %i.cd, -5
  %diff.check366 = icmp ult i64 %i.ce, 31
  %i.cf = shl nuw nsw i64 %wide.trip.count228, 2
  %i.cg = add nuw nsw i64 %i.cd, %i.cf
  %i.ch = icmp samesign ult i64 %i.cg, 36
  %conflict.rdx371 = or i1 %diff.check366, %i.ch
  %i.ci = shl nuw nsw i64 %wide.trip.count, 2
  %i.cj = or disjoint i64 %i.ci, 3
  %diff.check372 = icmp samesign ult i64 %i.cj, 31
  %conflict.rdx373 = or i1 %conflict.rdx371, %diff.check372
  %diff.check374 = icmp slt i32 %3, 4
  %conflict.rdx375 = or i1 %conflict.rdx373, %diff.check374
  %i.ck = add nuw nsw i64 %wide.trip.count228, %wide.trip.count ; 2 uses
  %i.cl = shl nuw nsw i64 %i.ck, 2
  %i.cm = or disjoint i64 %i.cl, 3
  %diff.check376 = icmp samesign ult i64 %i.cm, 31
  %conflict.rdx377 = or i1 %conflict.rdx375, %diff.check376
  %diff.check378 = icmp samesign ult i64 %i.ck, 8
  %conflict.rdx379 = or i1 %conflict.rdx377, %diff.check378
  br i1 %conflict.rdx379, label %.lr.ph198.preheader515, label %vector.ph381

vector.ph381:                                     ; preds = %vector.memcheck
  %n.vec382 = and i64 %i.cc, -8                   ; 3 uses
  %i.cn = sub nsw i64 %i.ca, %n.vec382
  br label %vector.body383

vector.body383:                                   ; preds = %vector.body383, %vector.ph381
  %index384 = phi i64 [ 0, %vector.ph381 ], [ %index.next392, %vector.body383 ] ; 2 uses
  %i.co = sub i64 %i.ca, %index384                ; 4 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.co
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -28
  %wide.load385 = load <8 x float>, ptr %i.cq, align 4, !tbaa !22
  %i.cr = add nsw i64 %i.co, -1                   ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cr
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -28
  %wide.load386 = load <8 x float>, ptr %i.ct, align 4, !tbaa !22
  %i.cu = fsub reassoc nsz arcp contract afn <8 x float> %wide.load385, %wide.load386
  %reverse = shufflevector <8 x float> %i.cu, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.cv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %reverse)
  %i.cw = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cv, splat (float 1.000000e-15)
  %i.cx = select nsz <8 x i1> %i.cw, <8 x float> splat (float 1.000000e+00), <8 x float> %reverse ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.co
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -28
  %wide.load387 = load <8 x float>, ptr %i.cz, align 4, !tbaa !22
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.cr
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -28
  %wide.load388 = load <8 x float>, ptr %i.db, align 4, !tbaa !22
  %i.dc = fsub reassoc nsz arcp contract afn <8 x float> %wide.load387, %wide.load388
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.co
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -28
  %i.df = shufflevector <8 x float> %i.cx, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse390 = fdiv reassoc nsz arcp contract afn <8 x float> %i.dc, %i.df
  store <8 x float> %reverse390, ptr %i.de, align 4, !tbaa !22
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.cr
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -28
  %reverse391 = shufflevector <8 x float> %i.cx, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x float> %reverse391, ptr %i.dh, align 4, !tbaa !22
  %index.next392 = add nuw i64 %index384, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next392, %n.vec382
  br i1 %i.di, label %middle.block393, label %vector.body383, !llvm.loop !27

middle.block393:                                  ; preds = %vector.body383
  %cmp.n394 = icmp eq i64 %i.cc, %n.vec382
  br i1 %cmp.n394, label %.preheader190, label %.lr.ph198.preheader515

.lr.ph198.preheader515:                           ; preds = %vector.memcheck, %.lr.ph198.preheader, %middle.block393
  %indvars.iv230.ph = phi i64 [ %i.ca, %vector.memcheck ], [ %i.ca, %.lr.ph198.preheader ], [ %i.cn, %middle.block393 ]
  br label %.lr.ph198

.preheader190:                                    ; preds = %.lr.ph198, %middle.block393
  %i.dj = icmp samesign ugt i32 %3, 2
  br i1 %i.dj, label %bb.c, label %.lr.ph218.us.preheader

bb.c:                                             ; preds = %.preheader190
  %i.dk = zext nneg i32 %i.bz to i64              ; 4 uses
  %i.dl = load float, ptr %i.ak, align 4, !tbaa !22
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !22
  %i.do = fadd reassoc nsz arcp contract afn float %i.dn, %i.dl
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, 2.000000e+00
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !11 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store float %i.dp, ptr %i.ds, align 4, !tbaa !22
  %.phi.trans.insert267 = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.pre268 = load float, ptr %.phi.trans.insert267, align 4, !tbaa !22
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !22
  %i.dt = fsub reassoc nsz arcp contract afn float %.pre, %.pre268
  %i.du = fmul reassoc nsz arcp contract afn float %i.dt, 6.000000e+00
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dk
  store float %i.du, ptr %i.dv, align 4, !tbaa !22
  %exitcond237.peel.not = icmp eq i32 %i.bz, 2
  br i1 %exitcond237.peel.not, label %.preheader189, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.c
  %xtraiter = and i64 %i.ca, 1
  %i.dw = icmp eq i32 %i.bz, 3
  br i1 %i.dw, label %.peel.next.epil.preheader, label %.peel.next.preheader.new

.peel.next.preheader.new:                         ; preds = %.peel.next.preheader
  %i.dx = and i64 %i.ca, 4294967294
  %i.dy = add nsw i64 %i.dx, -4
  br label %.peel.next

.lr.ph198:                                        ; preds = %.lr.ph198.preheader515, %.lr.ph198
  %indvars.iv230 = phi i64 [ %indvars.iv.next231, %.lr.ph198 ], [ %indvars.iv230.ph, %.lr.ph198.preheader515 ] ; 5 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv230
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !22
  %indvars.iv.next231 = add nsw i64 %indvars.iv230, -1 ; 4 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next231
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !22
  %i.ed = fsub reassoc nsz arcp contract afn float %i.ea, %i.ec ; 2 uses
  %i.ee = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ed)
  %i.ef = fcmp reassoc nsz arcp contract afn olt float %i.ee, 1.000000e-15
  %.0175 = select nsz i1 %i.ef, float 1.000000e+00, float %i.ed ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv230
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !22
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next231
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !22
  %i.ek = fsub reassoc nsz arcp contract afn float %i.eh, %i.ej
  %i.el = fdiv reassoc nsz arcp contract afn float %i.ek, %.0175
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv230
  store float %i.el, ptr %i.em, align 4, !tbaa !22
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next231
  store float %.0175, ptr %i.en, align 4, !tbaa !22
  %i.eo = icmp samesign ugt i64 %indvars.iv230, 1
  br i1 %i.eo, label %.lr.ph198, label %.preheader190, !llvm.loop !28

.preheader189.loopexit.unr-lcssa:                 ; preds = %.peel.next
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader189, label %.peel.next.epil.preheader

.peel.next.epil.preheader:                        ; preds = %.preheader189.loopexit.unr-lcssa, %.peel.next.preheader
  %indvars.iv233.epil.init = phi i64 [ 2, %.peel.next.preheader ], [ %indvars.iv.next234.1, %.preheader189.loopexit.unr-lcssa ] ; 7 uses
  %lcmp.mod516 = trunc i32 %i.bz to i1
  tail call void @llvm.assume(i1 %lcmp.mod516)
  %i.ep = add nsw i64 %indvars.iv233.epil.init, -1 ; 3 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ep ; 2 uses
  %i.er = load float, ptr %i.eq, align 4, !tbaa !22
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv233.epil.init
  %i.et = load float, ptr %i.es, align 4, !tbaa !22
  %i.eu = fadd reassoc nsz arcp contract afn float %i.et, %i.er
  %i.ev = fmul reassoc nsz arcp contract afn float %i.eu, 2.000000e+00
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv233.epil.init
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !11 ; 3 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv233.epil.init
  store float %i.ev, ptr %i.ey, align 4, !tbaa !22
  %i.ez = load float, ptr %i.eq, align 4, !tbaa !22 ; 2 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.ep
  store float %i.ez, ptr %i.fa, align 4, !tbaa !22
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ep
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !11
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv233.epil.init
  store float %i.ez, ptr %i.fd, align 4, !tbaa !22
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv233.epil.init
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !22
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv233.epil.init
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !22
  %i.fj = fsub reassoc nsz arcp contract afn float %i.fg, %i.fi
  %i.fk = fmul reassoc nsz arcp contract afn float %i.fj, 6.000000e+00
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.dk
  store float %i.fk, ptr %i.fl, align 4, !tbaa !22
  br label %.preheader189

.preheader189:                                    ; preds = %.peel.next.epil.preheader, %.preheader189.loopexit.unr-lcssa, %bb.c
  %i.fm = phi i32 [ 2, %bb.c ], [ %i.bz, %.preheader189.loopexit.unr-lcssa ], [ %i.bz, %.peel.next.epil.preheader ] ; 2 uses
  %i.fn = add nsw i32 %3, -2                      ; 6 uses
  %i.fo = icmp sgt i32 %3, 3
  br i1 %i.fo, label %.lr.ph204.preheader, label %.preheader187.lr.ph

.lr.ph204.preheader:                              ; preds = %.preheader189
  %wide.trip.count247 = zext nneg i32 %i.fn to i64
  %.phi.trans.insert270 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre271 = load ptr, ptr %.phi.trans.insert270, align 8, !tbaa !11
  %wide.trip.count242 = zext nneg i32 %3 to i64
  %i.fp = shl nuw nsw i64 %wide.trip.count228, 2  ; 2 uses
  %i.fq = add nsw i64 %wide.trip.count228, -1     ; 5 uses
  %min.iters.check401 = icmp eq i32 %3, 4
  %min.iters.check403 = icmp ult i32 %3, 33
  %i.fr = and i64 %i.fq, 28
  %n.vec405 = and i64 %i.fq, -32                  ; 4 uses
  %i.fs = or disjoint i64 %n.vec405, 1
  %cmp.n422 = icmp eq i64 %i.fq, %n.vec405
  %min.epilog.iters.check428 = icmp eq i64 %i.fr, 0
  %n.vec430 = and i64 %i.fq, -4                   ; 3 uses
  %i.ft = or disjoint i64 %n.vec430, 1
  %cmp.n441 = icmp eq i64 %i.fq, %n.vec430
  br label %iter.check425

.peel.next:                                       ; preds = %.peel.next, %.peel.next.preheader.new
  %indvars.iv233 = phi i64 [ 2, %.peel.next.preheader.new ], [ %indvars.iv.next234.1, %.peel.next ] ; 10 uses
  %niter = phi i64 [ 0, %.peel.next.preheader.new ], [ %niter.next.1, %.peel.next ] ; 2 uses
  %i.fu = add nsw i64 %indvars.iv233, -1          ; 3 uses
end_hunk_0
