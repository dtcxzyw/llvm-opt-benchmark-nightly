inline.NumInlined: 2109
inline.NumDeleted: 970
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZNK3gmx9BiasState23isSamplingRegionCoveredERKNS_10BiasParamsENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridE:bb.a
  br i1 %exitcond.not, label %.preheader173, label %.lr.ph187, !llvm.loop !253

.lr.ph196:                                        ; preds = %._crit_edge192, %.preheader173
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 112
  %wide.trip.count225 = zext nneg i32 %.lcssa176 to i64
  br label %bb.ab

.lr.ph191:                                        ; preds = %.lr.ph194, %._crit_edge192
  %.095193 = phi i64 [ %i.ek, %._crit_edge192 ], [ 0, %.lr.ph194 ] ; 4 uses
  %i.ef = getelementptr inbounds nuw [96 x i8], ptr %i.dj, i64 %.095193 ; 2 uses
  %i.eg = getelementptr inbounds nuw [72 x i8], ptr %i.dd, i64 %.095193
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  br label %bb.v

._crit_edge192:                                   ; preds = %_ZNSt14_Bit_referenceaSEb.exit146
  %i.ek = add nuw i64 %.095193, 1                 ; 2 uses
  %exitcond221.not = icmp eq i64 %i.ek, %i.dh
  br i1 %exitcond221.not, label %.lr.ph196, label %.lr.ph191, !llvm.loop !254

bb.v:                                             ; preds = %.lr.ph191, %_ZNSt14_Bit_referenceaSEb.exit146
  %indvars.iv216 = phi i64 [ 0, %.lr.ph191 ], [ %indvars.iv.next217, %_ZNSt14_Bit_referenceaSEb.exit146 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv216
  %i.em = load i32, ptr %i.el, align 4, !tbaa !54 ; 2 uses
  %i.en = getelementptr inbounds nuw [104 x i8], ptr %.val, i64 %indvars.iv216 ; 2 uses
  %i.eo = sext i32 %i.em to i64                   ; 2 uses
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !246
  %i.eq = sdiv i32 %i.em, 64
  %.sext167 = sext i32 %i.eq to i64               ; 2 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %.sext167
  %i.es = and i64 %i.eo, -9223372036854775745
  %i.et = icmp ugt i64 %i.es, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.et, i64 -8, i64 0 ; 2 uses
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.er, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.eu = and i64 %i.eo, 63
  %i.ev = shl nuw i64 1, %i.eu                    ; 6 uses
  %i.ew = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !93 ; 3 uses
  %i.ex = and i64 %i.ev, %i.ew
  %.not = icmp eq i64 %i.ex, 0
  br i1 %.not, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.ey = load ptr, ptr %i.dk, align 8, !tbaa !110
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %.095193
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !58
  %i.fb = fcmp ogt double %i.fa, %.198
  br i1 %i.fb, label %.thread, label %bb.x

.thread:                                          ; preds = %bb.v, %bb.w
  %i.fc = or i64 %i.ew, %i.ev
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fd = xor i64 %i.ev, -1
  %i.fe = and i64 %i.ew, %i.fd
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread
  %storemerge = phi i64 [ %i.fe, %bb.x ], [ %i.fc, %.thread ]
  store i64 %storemerge, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !93
  %i.ff = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !246
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %.sext167
  %storemerge.i.i.i.i.i139 = getelementptr inbounds i8, ptr %i.fh, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.fi = load i64, ptr %storemerge.i.i.i.i.i139, align 8, !tbaa !93 ; 3 uses
  %i.fj = and i64 %i.fi, %i.ev
  %.not168 = icmp eq i64 %i.fj, 0
  br i1 %.not168, label %bb.z, label %.thread162

bb.z:                                             ; preds = %bb.y
  %i.fk = load double, ptr %i.ei, align 8, !tbaa !14
  %i.fl = fcmp ogt double %i.fk, 0.000000e+00
  br i1 %i.fl, label %bb.aa, label %.thread163

bb.aa:                                            ; preds = %bb.z
  %i.fm = load double, ptr %i.ej, align 8, !tbaa !122
  %i.fn = fcmp olt double %i.fm, %.099
  br i1 %i.fn, label %.thread162, label %.thread163

.thread162:                                       ; preds = %bb.y, %bb.aa
  %i.fo = or i64 %i.fi, %i.ev
  br label %_ZNSt14_Bit_referenceaSEb.exit146

.thread163:                                       ; preds = %bb.z, %bb.aa
  %i.fp = xor i64 %i.ev, -1
  %i.fq = and i64 %i.fi, %i.fp
  br label %_ZNSt14_Bit_referenceaSEb.exit146

_ZNSt14_Bit_referenceaSEb.exit146:                ; preds = %.thread162, %.thread163
  %storemerge169 = phi i64 [ %i.fq, %.thread163 ], [ %i.fo, %.thread162 ]
  store i64 %storemerge169, ptr %storemerge.i.i.i.i.i139, align 8, !tbaa !93
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %exitcond220.not = icmp eq i64 %indvars.iv.next217, %wide.trip.count219
  br i1 %exitcond220.not, label %._crit_edge192, label %bb.v, !llvm.loop !255

._crit_edge197:                                   ; preds = %_ZN3gmx12_GLOBAL__N_118labelCoveredPointsERKSt6vectorIbSaIbEES5_iiiNS_8ArrayRefIiEE.exit, %bb.r
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !141
  %i.ft = icmp sgt i32 %i.fs, 1
  %i.fu = ptrtoint ptr %i.t to i64
  %i.fv = ptrtoint ptr %i.u to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = sdiv exact i64 %i.fw, 48
  %i.fy = trunc i64 %i.fx to i32                  ; 2 uses
  br i1 %i.ft, label %.preheader170, label %.loopexit

.preheader170:                                    ; preds = %._crit_edge197
  %i.fz = icmp sgt i32 %i.fy, 0
  br i1 %i.fz, label %.lr.ph199, label %._crit_edge205

.lr.ph199:                                        ; preds = %.preheader170
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 132
  br label %bb.ah

bb.ab:                                            ; preds = %.lr.ph196, %_ZN3gmx12_GLOBAL__N_118labelCoveredPointsERKSt6vectorIbSaIbEES5_iiiNS_8ArrayRefIiEE.exit
  %indvars.iv222 = phi i64 [ 0, %.lr.ph196 ], [ %indvars.iv.next223, %_ZN3gmx12_GLOBAL__N_118labelCoveredPointsERKSt6vectorIbSaIbEES5_iiiNS_8ArrayRefIiEE.exit ] ; 4 uses
  %i.gc = getelementptr inbounds nuw [104 x i8], ptr %.val, i64 %indvars.iv222 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.ge = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %indvars.iv222 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !184 ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 36
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !256 ; 3 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv222
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !54 ; 8 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gc, i64 80
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !178 ; 12 uses
  %.val122 = load ptr, ptr %i.gc, align 8
  %.val123 = load ptr, ptr %i.gd, align 8
  %i.gn = icmp sgt i32 %i.gg, 0
  br i1 %i.gn, label %.lr.ph15.i, label %_ZN3gmx12_GLOBAL__N_118labelCoveredPointsERKSt6vectorIbSaIbEES5_iiiNS_8ArrayRefIiEE.exit

.lr.ph15.i:                                       ; preds = %bb.ab
  %i.go = sext i32 %i.gk to i64
  %wide.trip.count.i = zext nneg i32 %i.gg to i64 ; 9 uses
  br label %bb.ac

._crit_edge.i:                                    ; preds = %.loopexit8.i
  %i.gp = trunc nuw i8 %.174.i to i1
  br i1 %i.gp, label %bb.ag, label %iter.check362

iter.check362:                                    ; preds = %._crit_edge.i
  %min.iters.check351 = icmp ult i32 %i.gg, 8
  br i1 %min.iters.check351, label %.preheader.i.preheader, label %vector.main.loop.iter.check352

vector.main.loop.iter.check352:                   ; preds = %iter.check362
  %min.iters.check353 = icmp ult i32 %i.gg, 32
  br i1 %min.iters.check353, label %vec.epilog.ph366, label %vector.ph354

vector.ph354:                                     ; preds = %vector.main.loop.iter.check352
  %i.gq = and i64 %wide.trip.count.i, 24
  %n.vec355 = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph354
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next358, %vector.body356 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %index357 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 96
  store <8 x i32> splat (i32 1), ptr %i.gr, align 4, !tbaa !54
  store <8 x i32> splat (i32 1), ptr %i.gs, align 4, !tbaa !54
  store <8 x i32> splat (i32 1), ptr %i.gt, align 4, !tbaa !54
  store <8 x i32> splat (i32 1), ptr %i.gu, align 4, !tbaa !54
  %index.next358 = add nuw i64 %index357, 32      ; 2 uses
  %i.gv = icmp eq i64 %index.next358, %n.vec355
  br i1 %i.gv, label %middle.block359, label %vector.body356, !llvm.loop !257

middle.block359:                                  ; preds = %vector.body356
  %cmp.n360 = icmp eq i64 %n.vec355, %wide.trip.count.i
  br i1 %cmp.n360, label %_ZN3gmx12_GLOBAL__N_118labelCoveredPointsERKSt6vectorIbSaIbEES5_iiiNS_8ArrayRefIiEE.exit, label %vec.epilog.iter.check364

vec.epilog.iter.check364:                         ; preds = %middle.block359
  %min.epilog.iters.check365 = icmp eq i64 %i.gq, 0
  br i1 %min.epilog.iters.check365, label %.preheader.i.preheader, label %vec.epilog.ph366, !prof !258

vec.epilog.ph366:                                 ; preds = %vector.main.loop.iter.check352, %vec.epilog.iter.check364
  %vec.epilog.resume.val361 = phi i64 [ %n.vec355, %vec.epilog.iter.check364 ], [ 0, %vector.main.loop.iter.check352 ]
  %n.vec367 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body368

vec.epilog.vector.body368:                        ; preds = %vec.epilog.vector.body368, %vec.epilog.ph366
  %index369 = phi i64 [ %vec.epilog.resume.val361, %vec.epilog.ph366 ], [ %index.next370, %vec.epilog.vector.body368 ] ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %index369
  store <8 x i32> splat (i32 1), ptr %i.gw, align 4, !tbaa !54
  %index.next370 = add nuw i64 %index369, 8       ; 2 uses
  %i.gx = icmp eq i64 %index.next370, %n.vec367
  br i1 %i.gx, label %vec.epilog.middle.block371, label %vec.epilog.vector.body368, !llvm.loop !259

vec.epilog.middle.block371:                       ; preds = %vec.epilog.vector.body368
  %cmp.n372 = icmp eq i64 %n.vec367, %wide.trip.count.i
  br i1 %cmp.n372, label %_ZN3gmx12_GLOBAL__N_118labelCoveredPointsERKSt6vectorIbSaIbEES5_iiiNS_8ArrayRefIiEE.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check362, %vec.epilog.iter.check364, %vec.epilog.middle.block371
  %indvars.iv36.i.ph = phi i64 [ 0, %iter.check362 ], [ %n.vec355, %vec.epilog.iter.check364 ], [ %n.vec367, %vec.epilog.middle.block371 ]
  br label %.preheader.i

bb.ac:                                            ; preds = %.loopexit8.i, %.lr.ph15.i
  %indvars.iv33.i = phi i64 [ 0, %.lr.ph15.i ], [ %indvars.iv.next34.i, %.loopexit8.i ] ; 6 uses
  %indvars.iv31.i = phi i32 [ 1, %.lr.ph15.i ], [ %indvars.iv.next32.i, %.loopexit8.i ] ; 2 uses
  %.07013.i = phi i32 [ -1, %.lr.ph15.i ], [ %.1.i147, %.loopexit8.i ] ; 5 uses
  %.07112.i = phi i32 [ -1, %.lr.ph15.i ], [ %.172.i, %.loopexit8.i ] ; 6 uses
  %.07311.i = phi i8 [ 0, %.lr.ph15.i ], [ %.174.i, %.loopexit8.i ] ; 3 uses
  %i.gy = trunc i64 %indvars.iv33.i to i32        ; 7 uses
  %i.gz = lshr i64 %indvars.iv33.i, 6
  %.zext.i = and i64 %i.gz, 67108863              ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.val123, i64 %.zext.i
  %i.hb = and i64 %indvars.iv33.i, 63
  %i.hc = shl nuw i64 1, %i.hb                    ; 2 uses
  %i.hd = load i64, ptr %i.ha, align 8, !tbaa !93
  %i.he = and i64 %i.hd, %i.hc
  %.not5.i = icmp eq i64 %i.he, 0
  br i1 %.not5.i, label %.loopexit8.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.val122, i64 %.zext.i
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !93
  %i.hh = and i64 %i.hg, %i.hc
  %.not6.i = icmp eq i64 %i.hh, 0
  br i1 %.not6.i, label %bb.ae, label %.loopexit8.i

bb.ae:                                            ; preds = %bb.ad
  %i.hi = trunc nuw i8 %.07311.i to i1
  br i1 %i.hi, label %bb.af, label %.loopexit8.i

bb.af:                                            ; preds = %bb.ae
  %i.hj = sub nsw i64 %indvars.iv33.i, %i.go      ; 3 uses
  %i.hk = sext i32 %.07013.i to i64               ; 8 uses
  %.not799.i = icmp slt i64 %indvars.iv33.i, %i.hk
  br i1 %.not799.i, label %.loopexit8.i, label %iter.check398

iter.check398:                                    ; preds = %bb.af
  %i.hl = add nsw i32 %.07013.i, %i.gk
  %i.hm = sext i32 %i.hl to i64                   ; 3 uses
  %i.hn = sub i32 %i.gy, %.07013.i                ; 3 uses
  %i.ho = zext i32 %i.hn to i64
  %i.hp = add nuw nsw i64 %i.ho, 1                ; 5 uses
  %min.iters.check374 = icmp ult i32 %i.hn, 3
  br i1 %min.iters.check374, label %.lr.ph.i148.preheader, label %vector.main.loop.iter.check375

vector.main.loop.iter.check375:                   ; preds = %iter.check398
  %min.iters.check376 = icmp ult i32 %i.hn, 31
  br i1 %min.iters.check376, label %vec.epilog.ph402, label %vector.ph377

vector.ph377:                                     ; preds = %vector.main.loop.iter.check375
  %i.hq = and i64 %i.hp, 28
  %n.vec378 = and i64 %i.hp, 8589934560           ; 4 uses
  %i.hr = add nsw i64 %n.vec378, %i.hk            ; 2 uses
  %broadcast.splatinsert379 = insertelement <8 x i64> poison, i64 %i.hm, i64 0
  %broadcast.splat380 = shufflevector <8 x i64> %broadcast.splatinsert379, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert381 = insertelement <8 x i64> poison, i64 %i.hj, i64 0
  %broadcast.splat382 = shufflevector <8 x i64> %broadcast.splatinsert381, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert383 = insertelement <8 x i64> poison, i64 %i.hk, i64 0
  %broadcast.splat384 = shufflevector <8 x i64> %broadcast.splatinsert383, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction385 = add nsw <8 x i64> %broadcast.splat384, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %invariant.gep = getelementptr [4 x i8], ptr %i.gm, i64 %i.hk
  br label %vector.body386

vector.body386:                                   ; preds = %vector.body386, %vector.ph377
  %index387 = phi i64 [ 0, %vector.ph377 ], [ %index.next392, %vector.body386 ] ; 2 uses
  %vec.ind388 = phi <8 x i64> [ %induction385, %vector.ph377 ], [ %vec.ind.next393, %vector.body386 ] ; 6 uses
  %step.add389 = add nsw <8 x i64> %vec.ind388, splat (i64 8) ; 2 uses
  %step.add.2390 = add nsw <8 x i64> %vec.ind388, splat (i64 16) ; 2 uses
  %step.add.3391 = add nsw <8 x i64> %vec.ind388, splat (i64 24) ; 2 uses
  %i.hs = icmp sgt <8 x i64> %vec.ind388, %broadcast.splat380
  %i.ht = icmp sgt <8 x i64> %step.add389, %broadcast.splat380
  %i.hu = icmp sgt <8 x i64> %step.add.2390, %broadcast.splat380
  %i.hv = icmp sgt <8 x i64> %step.add.3391, %broadcast.splat380
  %i.hw = icmp slt <8 x i64> %vec.ind388, %broadcast.splat382
  %i.hx = icmp slt <8 x i64> %step.add389, %broadcast.splat382
  %i.hy = icmp slt <8 x i64> %step.add.2390, %broadcast.splat382
  %i.hz = icmp slt <8 x i64> %step.add.3391, %broadcast.splat382
  %i.ia = select <8 x i1> %i.hs, <8 x i1> %i.hw, <8 x i1> zeroinitializer
  %i.ib = select <8 x i1> %i.ht, <8 x i1> %i.hx, <8 x i1> zeroinitializer
  %i.ic = select <8 x i1> %i.hu, <8 x i1> %i.hy, <8 x i1> zeroinitializer
  %i.id = select <8 x i1> %i.hv, <8 x i1> %i.hz, <8 x i1> zeroinitializer
  %i.ie = zext <8 x i1> %i.ia to <8 x i32>
  %i.if = zext <8 x i1> %i.ib to <8 x i32>
  %i.ig = zext <8 x i1> %i.ic to <8 x i32>
  %i.ih = zext <8 x i1> %i.id to <8 x i32>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index387 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.ij = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.ik = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <8 x i32> %i.ie, ptr %gep, align 4, !tbaa !54
  store <8 x i32> %i.if, ptr %i.ii, align 4, !tbaa !54
  store <8 x i32> %i.ig, ptr %i.ij, align 4, !tbaa !54
  store <8 x i32> %i.ih, ptr %i.ik, align 4, !tbaa !54
  %index.next392 = add nuw i64 %index387, 32      ; 2 uses
  %vec.ind.next393 = add nsw <8 x i64> %vec.ind388, splat (i64 32)
  %i.il = icmp eq i64 %index.next392, %n.vec378
  br i1 %i.il, label %middle.block394, label %vector.body386, !llvm.loop !260

middle.block394:                                  ; preds = %vector.body386
  %cmp.n395 = icmp eq i64 %i.hp, %n.vec378
  br i1 %cmp.n395, label %.loopexit8.i, label %vec.epilog.iter.check400

vec.epilog.iter.check400:                         ; preds = %middle.block394
  %min.epilog.iters.check401 = icmp eq i64 %i.hq, 0
  br i1 %min.epilog.iters.check401, label %.lr.ph.i148.preheader, label %vec.epilog.ph402, !prof !261

vec.epilog.ph402:                                 ; preds = %vector.main.loop.iter.check375, %vec.epilog.iter.check400
  %vec.epilog.resume.val396 = phi i64 [ %n.vec378, %vec.epilog.iter.check400 ], [ 0, %vector.main.loop.iter.check375 ]
  %bc.resume.val397 = phi i64 [ %i.hr, %vec.epilog.iter.check400 ], [ %i.hk, %vector.main.loop.iter.check375 ]
  %n.vec403 = and i64 %i.hp, 8589934588           ; 3 uses
  %i.im = add nsw i64 %n.vec403, %i.hk
  %broadcast.splatinsert404 = insertelement <4 x i64> poison, i64 %i.hm, i64 0
  %broadcast.splat405 = shufflevector <4 x i64> %broadcast.splatinsert404, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert406 = insertelement <4 x i64> poison, i64 %i.hj, i64 0
  %broadcast.splat407 = shufflevector <4 x i64> %broadcast.splatinsert406, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert408 = insertelement <4 x i64> poison, i64 %bc.resume.val397, i64 0
  %broadcast.splat409 = shufflevector <4 x i64> %broadcast.splatinsert408, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction410 = add nsw <4 x i64> %broadcast.splat409, <i64 0, i64 1, i64 2, i64 3>
  %invariant.gep433 = getelementptr [4 x i8], ptr %i.gm, i64 %i.hk
  br label %vec.epilog.vector.body411

vec.epilog.vector.body411:                        ; preds = %vec.epilog.vector.body411, %vec.epilog.ph402
  %index412 = phi i64 [ %vec.epilog.resume.val396, %vec.epilog.ph402 ], [ %index.next414, %vec.epilog.vector.body411 ] ; 2 uses
  %vec.ind413 = phi <4 x i64> [ %induction410, %vec.epilog.ph402 ], [ %vec.ind.next415, %vec.epilog.vector.body411 ] ; 3 uses
  %i.in = icmp sgt <4 x i64> %vec.ind413, %broadcast.splat405
  %i.io = icmp slt <4 x i64> %vec.ind413, %broadcast.splat407
  %i.ip = select <4 x i1> %i.in, <4 x i1> %i.io, <4 x i1> zeroinitializer
  %i.iq = zext <4 x i1> %i.ip to <4 x i32>
  %gep434 = getelementptr [4 x i8], ptr %invariant.gep433, i64 %index412
  store <4 x i32> %i.iq, ptr %gep434, align 4, !tbaa !54
  %index.next414 = add nuw i64 %index412, 4       ; 2 uses
  %vec.ind.next415 = add nsw <4 x i64> %vec.ind413, splat (i64 4)
  %i.ir = icmp eq i64 %index.next414, %n.vec403
  br i1 %i.ir, label %vec.epilog.middle.block416, label %vec.epilog.vector.body411, !llvm.loop !262

vec.epilog.middle.block416:                       ; preds = %vec.epilog.vector.body411
  %cmp.n417 = icmp eq i64 %i.hp, %n.vec403
  br i1 %cmp.n417, label %.loopexit8.i, label %.lr.ph.i148.preheader

.lr.ph.i148.preheader:                            ; preds = %iter.check398, %vec.epilog.iter.check400, %vec.epilog.middle.block416
  %indvars.iv.i.ph = phi i64 [ %i.hk, %iter.check398 ], [ %i.hr, %vec.epilog.iter.check400 ], [ %i.im, %vec.epilog.middle.block416 ]
  br label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %.lr.ph.i148.preheader, %.lr.ph.i148
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i148 ], [ %indvars.iv.i.ph, %.lr.ph.i148.preheader ] ; 4 uses
  %i.is = icmp sgt i64 %indvars.iv.i, %i.hm
  %i.it = icmp slt i64 %indvars.iv.i, %i.hj
  %i.iu = select i1 %i.is, i1 %i.it, i1 false
  %i.iv = zext i1 %i.iu to i32
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %indvars.iv.i
  store i32 %i.iv, ptr %i.iw, align 4, !tbaa !54
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %indvars.iv31.i, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.loopexit8.i, label %.lr.ph.i148, !llvm.loop !263

.loopexit8.i:                                     ; preds = %.lr.ph.i148, %middle.block394, %vec.epilog.middle.block416, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.174.i = phi i8 [ %.07311.i, %bb.ad ], [ 1, %bb.ae ], [ %.07311.i, %bb.ac ], [ 1, %bb.af ], [ 1, %middle.block394 ], [ 1, %vec.epilog.middle.block416 ], [ 1, %.lr.ph.i148 ] ; 2 uses
  %.172.i = phi i32 [ %.07112.i, %bb.ad ], [ %i.gy, %bb.ae ], [ %.07112.i, %bb.ac ], [ %.07112.i, %bb.af ], [ %.07112.i, %middle.block394 ], [ %.07112.i, %vec.epilog.middle.block416 ], [ %.07112.i, %.lr.ph.i148 ] ; 7 uses
  %.1.i147 = phi i32 [ %.07013.i, %bb.ad ], [ %i.gy, %bb.ae ], [ %.07013.i, %bb.ac ], [ %i.gy, %bb.af ], [ %i.gy, %middle.block394 ], [ %i.gy, %vec.epilog.middle.block416 ], [ %i.gy, %.lr.ph.i148 ] ; 5 uses
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %indvars.iv.next32.i = add nuw i32 %indvars.iv31.i, 1
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next34.i, %wide.trip.count.i
  br i1 %exitcond35.not.i, label %._crit_edge.i, label %bb.ac, !llvm.loop !264

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %.preheader.i ], [ %indvars.iv36.i.ph, %.preheader.i.preheader ] ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv36.i
  store i32 1, ptr %i.ix, align 4, !tbaa !54
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count.i
  br i1 %exitcond40.not.i, label %_ZN3gmx12_GLOBAL__N_118labelCoveredPointsERKSt6vectorIbSaIbEES5_iiiNS_8ArrayRefIiEE.exit, label %.preheader.i, !llvm.loop !265

bb.ag:                                            ; preds = %._crit_edge.i
  %i.iy = icmp sgt i32 %i.gi, 0                   ; 2 uses
  %.not20.i = icmp slt i32 %.172.i, 0
  br i1 %.not20.i, label %._crit_edge24.i, label %iter.check330

iter.check330:                                    ; preds = %bb.ag
  %i.iz = sub nsw i32 %.172.i, %i.gk
  %i.ja = sub nsw i32 %.1.i147, %i.gi
  %i.jb = xor i32 %i.gk, -1
  %i.jc = select i1 %i.iy, i32 %i.ja, i32 %i.jb
  %i.jd = add nsw i32 %i.jc, %i.gk
  %i.je = sext i32 %i.jd to i64                   ; 3 uses
  %i.jf = sext i32 %i.iz to i64                   ; 3 uses
  %i.jg = add nuw i32 %.172.i, 1
  %wide.trip.count44.i = zext i32 %i.jg to i64    ; 6 uses
  %min.iters.check310 = icmp ult i32 %.172.i, 3
  br i1 %min.iters.check310, label %vec.epilog.scalar.ph331.preheader, label %vector.main.loop.iter.check311

vector.main.loop.iter.check311:                   ; preds = %iter.check330
  %min.iters.check312 = icmp ult i32 %.172.i, 31
  br i1 %min.iters.check312, label %vec.epilog.ph334, label %vector.ph313

vector.ph313:                                     ; preds = %vector.main.loop.iter.check311
  %i.jh = and i64 %wide.trip.count44.i, 28
  %n.vec314 = and i64 %wide.trip.count44.i, 4294967264 ; 4 uses
  %broadcast.splatinsert315 = insertelement <8 x i64> poison, i64 %i.je, i64 0
  %broadcast.splat316 = shufflevector <8 x i64> %broadcast.splatinsert315, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert317 = insertelement <8 x i64> poison, i64 %i.jf, i64 0
  %broadcast.splat318 = shufflevector <8 x i64> %broadcast.splatinsert317, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body319

vector.body319:                                   ; preds = %vector.body319, %vector.ph313
  %index320 = phi i64 [ 0, %vector.ph313 ], [ %index.next325, %vector.body319 ] ; 2 uses
  %vec.ind321 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph313 ], [ %vec.ind.next326, %vector.body319 ] ; 6 uses
  %step.add322 = add nuw <8 x i64> %vec.ind321, splat (i64 8) ; 2 uses
  %step.add.2323 = add nuw <8 x i64> %vec.ind321, splat (i64 16) ; 2 uses
  %step.add.3324 = add nuw <8 x i64> %vec.ind321, splat (i64 24) ; 2 uses
  %i.ji = icmp sgt <8 x i64> %vec.ind321, %broadcast.splat316
  %i.jj = icmp sgt <8 x i64> %step.add322, %broadcast.splat316
  %i.jk = icmp sgt <8 x i64> %step.add.2323, %broadcast.splat316
  %i.jl = icmp sgt <8 x i64> %step.add.3324, %broadcast.splat316
  %i.jm = icmp slt <8 x i64> %vec.ind321, %broadcast.splat318
  %i.jn = icmp slt <8 x i64> %step.add322, %broadcast.splat318
  %i.jo = icmp slt <8 x i64> %step.add.2323, %broadcast.splat318
  %i.jp = icmp slt <8 x i64> %step.add.3324, %broadcast.splat318
  %i.jq = select <8 x i1> %i.ji, <8 x i1> %i.jm, <8 x i1> zeroinitializer
  %i.jr = select <8 x i1> %i.jj, <8 x i1> %i.jn, <8 x i1> zeroinitializer
  %i.js = select <8 x i1> %i.jk, <8 x i1> %i.jo, <8 x i1> zeroinitializer
  %i.jt = select <8 x i1> %i.jl, <8 x i1> %i.jp, <8 x i1> zeroinitializer
  %i.ju = zext <8 x i1> %i.jq to <8 x i32>
  %i.jv = zext <8 x i1> %i.jr to <8 x i32>
  %i.jw = zext <8 x i1> %i.js to <8 x i32>
  %i.jx = zext <8 x i1> %i.jt to <8 x i32>
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %index320 ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 32
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 96
  store <8 x i32> %i.ju, ptr %i.jy, align 4, !tbaa !54
  store <8 x i32> %i.jv, ptr %i.jz, align 4, !tbaa !54
  store <8 x i32> %i.jw, ptr %i.ka, align 4, !tbaa !54
  store <8 x i32> %i.jx, ptr %i.kb, align 4, !tbaa !54
  %index.next325 = add nuw i64 %index320, 32      ; 2 uses
  %vec.ind.next326 = add nuw <8 x i64> %vec.ind321, splat (i64 32)
  %i.kc = icmp eq i64 %index.next325, %n.vec314
  br i1 %i.kc, label %middle.block327, label %vector.body319, !llvm.loop !266

middle.block327:                                  ; preds = %vector.body319
end_hunk_0
