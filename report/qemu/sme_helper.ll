Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sme_helper?download=true
inline.NumInlined: 2089
inline.NumDeleted: 222
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 184
loop-unroll.NumUnrolled: 297
begin_hunk_0_@helper_sme2_sel_h:bb.a
  br i1 %i.do, label %.loopexit199.sink.split, label %bb.e

bb.e:                                             ; preds = %.lr.ph237
  %.not = icmp slt i32 %i.dn, %i.l
  br i1 %.not, label %iter.check537, label %.loopexit199.sink.split

iter.check537:                                    ; preds = %bb.e
  %min.iters.check524 = icmp ult i32 %indvars.iv279, 4
  %or.cond551.a = or i1 %min.iters.check524, %diff.check523
  br i1 %or.cond551.a, label %.lr.ph233.preheader, label %vector.main.loop.iter.check525

vector.main.loop.iter.check525:                   ; preds = %iter.check537
  %min.iters.check526 = icmp ult i32 %indvars.iv279, 16
  br i1 %min.iters.check526, label %vec.epilog.ph541, label %vector.ph527

vector.ph527:                                     ; preds = %vector.main.loop.iter.check525
  %i.dp = and i64 %i.dg, 12
  %n.vec528 = and i64 %i.dg, 4294967280           ; 4 uses
  br label %vector.body529

vector.body529:                                   ; preds = %vector.body529, %vector.ph527
  %index530 = phi i64 [ 0, %vector.ph527 ], [ %index.next533, %vector.body529 ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %index530 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load531.a = load <8 x i16>, ptr %i.dq, align 2
  %wide.load532 = load <8 x i16>, ptr %i.dr, align 2
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %index530 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <8 x i16> %wide.load531.a, ptr %i.ds, align 2
  store <8 x i16> %wide.load532, ptr %i.dt, align 2
  %index.next533 = add nuw i64 %index530, 16      ; 2 uses
  %i.du = icmp eq i64 %index.next533, %n.vec528
  br i1 %i.du, label %middle.block534, label %vector.body529, !llvm.loop !982

middle.block534:                                  ; preds = %vector.body529
  %cmp.n535 = icmp eq i64 %n.vec528, %i.dg
  br i1 %cmp.n535, label %iter.check509, label %vec.epilog.iter.check539

vec.epilog.iter.check539:                         ; preds = %middle.block534
  %min.epilog.iters.check540 = icmp eq i64 %i.dp, 0
  br i1 %min.epilog.iters.check540, label %.lr.ph233.preheader, label %vec.epilog.ph541, !prof !299

vec.epilog.ph541:                                 ; preds = %vector.main.loop.iter.check525, %vec.epilog.iter.check539
  %vec.epilog.resume.val536 = phi i64 [ %n.vec528, %vec.epilog.iter.check539 ], [ 0, %vector.main.loop.iter.check525 ]
  %n.vec542 = and i64 %i.dg, 4294967292           ; 3 uses
  br label %vec.epilog.vector.body543

vec.epilog.vector.body543:                        ; preds = %vec.epilog.vector.body543, %vec.epilog.ph541
  %index544 = phi i64 [ %vec.epilog.resume.val536, %vec.epilog.ph541 ], [ %index.next546, %vec.epilog.vector.body543 ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %index544
  %wide.load545 = load <4 x i16>, ptr %i.dv, align 2
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %index544
  store <4 x i16> %wide.load545, ptr %i.dw, align 2
  %index.next546 = add nuw i64 %index544, 4       ; 2 uses
  %i.dx = icmp eq i64 %index.next546, %n.vec542
  br i1 %i.dx, label %vec.epilog.middle.block547, label %vec.epilog.vector.body543, !llvm.loop !983

vec.epilog.middle.block547:                       ; preds = %vec.epilog.vector.body543
  %cmp.n548 = icmp eq i64 %n.vec542, %i.dg
  br i1 %cmp.n548, label %iter.check509, label %.lr.ph233.preheader

.lr.ph233.preheader:                              ; preds = %iter.check537, %vec.epilog.iter.check539, %vec.epilog.middle.block547
  %indvars.iv276.ph = phi i64 [ 0, %iter.check537 ], [ %n.vec528, %vec.epilog.iter.check539 ], [ %n.vec542, %vec.epilog.middle.block547 ] ; 3 uses
  %xtraiter570 = and i64 %i.dg, 3                 ; 2 uses
  %lcmp.mod571.not = icmp eq i64 %xtraiter570, 0
  br i1 %lcmp.mod571.not, label %.lr.ph233.prol.loopexit, label %.lr.ph233.prol

.lr.ph233.prol:                                   ; preds = %.lr.ph233.preheader, %.lr.ph233.prol
  %indvars.iv276.prol = phi i64 [ %indvars.iv.next277.prol, %.lr.ph233.prol ], [ %indvars.iv276.ph, %.lr.ph233.preheader ] ; 3 uses
  %prol.iter572 = phi i64 [ %prol.iter572.next, %.lr.ph233.prol ], [ 0, %.lr.ph233.preheader ]
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv276.prol
  %i.dz = load i16, ptr %i.dy, align 2
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv276.prol
  store i16 %i.dz, ptr %i.ea, align 2
  %indvars.iv.next277.prol = add nuw nsw i64 %indvars.iv276.prol, 1 ; 2 uses
  %prol.iter572.next = add i64 %prol.iter572, 1   ; 2 uses
  %prol.iter572.cmp.not = icmp eq i64 %prol.iter572.next, %xtraiter570
  br i1 %prol.iter572.cmp.not, label %.lr.ph233.prol.loopexit, label %.lr.ph233.prol, !llvm.loop !984

.lr.ph233.prol.loopexit:                          ; preds = %.lr.ph233.prol, %.lr.ph233.preheader
  %indvars.iv276.unr = phi i64 [ %indvars.iv276.ph, %.lr.ph233.preheader ], [ %indvars.iv.next277.prol, %.lr.ph233.prol ]
  %i.eb = sub nsw i64 %indvars.iv276.ph, %i.dg
  %i.ec = icmp ugt i64 %i.eb, -4
  br i1 %i.ec, label %iter.check509, label %.lr.ph233

.lr.ph233:                                        ; preds = %.lr.ph233.prol.loopexit, %.lr.ph233
  %indvars.iv276 = phi i64 [ %indvars.iv.next277.3, %.lr.ph233 ], [ %indvars.iv276.unr, %.lr.ph233.prol.loopexit ] ; 6 uses
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv276
  %i.ee = load i16, ptr %i.ed, align 2
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv276
  store i16 %i.ee, ptr %i.ef, align 2
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv.next277
  %i.eh = load i16, ptr %i.eg, align 2
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv.next277
  store i16 %i.eh, ptr %i.ei, align 2
  %indvars.iv.next277.1 = add nuw nsw i64 %indvars.iv276, 2 ; 2 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv.next277.1
  %i.ek = load i16, ptr %i.ej, align 2
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv.next277.1
  store i16 %i.ek, ptr %i.el, align 2
  %indvars.iv.next277.2 = add nuw nsw i64 %indvars.iv276, 3 ; 2 uses
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv.next277.2
  %i.en = load i16, ptr %i.em, align 2
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv.next277.2
  store i16 %i.en, ptr %i.eo, align 2
  %indvars.iv.next277.3 = add nuw nsw i64 %indvars.iv276, 4 ; 2 uses
  %exitcond282.not.3 = icmp eq i64 %indvars.iv.next277.3, %i.dg
  br i1 %exitcond282.not.3, label %iter.check509, label %.lr.ph233, !llvm.loop !985

iter.check509:                                    ; preds = %.lr.ph233.prol.loopexit, %.lr.ph233, %vec.epilog.middle.block547, %middle.block534
  %min.iters.check495 = icmp ult i32 %i.dd, 3
  %or.cond552.a = or i1 %min.iters.check495, %diff.check494
  br i1 %or.cond552.a, label %.lr.ph235.preheader, label %vector.main.loop.iter.check496

vector.main.loop.iter.check496:                   ; preds = %iter.check509
  %min.iters.check497 = icmp ult i32 %i.dd, 15
  br i1 %min.iters.check497, label %vec.epilog.ph513, label %vector.ph498

vector.ph498:                                     ; preds = %vector.main.loop.iter.check496
  %i.ep = and i64 %i.df, 12
  %n.vec499 = and i64 %i.df, 8589934576           ; 4 uses
  %i.eq = add nuw nsw i64 %n.vec499, %i.dg
  br label %vector.body500

vector.body500:                                   ; preds = %vector.body500, %vector.ph498
  %index501 = phi i64 [ 0, %vector.ph498 ], [ %index.next504, %vector.body500 ] ; 2 uses
  %i.er = add nuw i64 %index501, %i.dg            ; 2 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load502.a = load <8 x i16>, ptr %i.es, align 2
  %wide.load503 = load <8 x i16>, ptr %i.et, align 2
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.er ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <8 x i16> %wide.load502.a, ptr %i.eu, align 2
  store <8 x i16> %wide.load503, ptr %i.ev, align 2
  %index.next504 = add nuw i64 %index501, 16      ; 2 uses
  %i.ew = icmp eq i64 %index.next504, %n.vec499
  br i1 %i.ew, label %middle.block505, label %vector.body500, !llvm.loop !986

middle.block505:                                  ; preds = %vector.body500
  %cmp.n506 = icmp eq i64 %i.df, %n.vec499
  br i1 %cmp.n506, label %.loopexit199, label %vec.epilog.iter.check511

vec.epilog.iter.check511:                         ; preds = %middle.block505
  %min.epilog.iters.check512 = icmp eq i64 %i.ep, 0
  br i1 %min.epilog.iters.check512, label %.lr.ph235.preheader, label %vec.epilog.ph513, !prof !299

vec.epilog.ph513:                                 ; preds = %vector.main.loop.iter.check496, %vec.epilog.iter.check511
  %vec.epilog.resume.val507 = phi i64 [ %n.vec499, %vec.epilog.iter.check511 ], [ 0, %vector.main.loop.iter.check496 ]
  %n.vec514 = and i64 %i.df, 8589934588           ; 3 uses
  %i.ex = add nuw nsw i64 %n.vec514, %i.dg
  br label %vec.epilog.vector.body515

vec.epilog.vector.body515:                        ; preds = %vec.epilog.vector.body515, %vec.epilog.ph513
  %index516 = phi i64 [ %vec.epilog.resume.val507, %vec.epilog.ph513 ], [ %index.next518, %vec.epilog.vector.body515 ] ; 2 uses
  %i.ey = add nuw i64 %index516, %i.dg            ; 2 uses
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.ey
  %wide.load517 = load <4 x i16>, ptr %i.ez, align 2
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.ey
  store <4 x i16> %wide.load517, ptr %i.fa, align 2
  %index.next518 = add nuw i64 %index516, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next518, %n.vec514
  br i1 %i.fb, label %vec.epilog.middle.block519, label %vec.epilog.vector.body515, !llvm.loop !987

vec.epilog.middle.block519:                       ; preds = %vec.epilog.vector.body515
  %cmp.n520 = icmp eq i64 %i.df, %n.vec514
  br i1 %cmp.n520, label %.loopexit199, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %iter.check509, %vec.epilog.iter.check511, %vec.epilog.middle.block519
  %indvars.iv286.ph = phi i64 [ %i.dg, %iter.check509 ], [ %i.eq, %vec.epilog.iter.check511 ], [ %i.ex, %vec.epilog.middle.block519 ]
  br label %.lr.ph235

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %.lr.ph235
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %.lr.ph235 ], [ %indvars.iv286.ph, %.lr.ph235.preheader ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %indvars.iv286
  %i.fd = load i16, ptr %i.fc, align 2
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv286
  store i16 %i.fd, ptr %i.fe, align 2
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %i.ff = trunc nuw i64 %indvars.iv.next287 to i32
  %i.fg = icmp sgt i32 %i.l, %i.ff
  br i1 %i.fg, label %.lr.ph235, label %.loopexit199, !llvm.loop !988

.loopexit199.sink.split:                          ; preds = %bb.e, %.lr.ph237
  %.sink336 = phi ptr [ %i.dk, %.lr.ph237 ], [ %i.dj, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.di, ptr noundef nonnull align 1 dereferenceable(1) %.sink336, i64 noundef %i.j, i1 noundef false) #15
  br label %.loopexit199

.loopexit199:                                     ; preds = %.lr.ph235, %middle.block505, %vec.epilog.middle.block519, %.loopexit199.sink.split
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %indvars.iv.next280 = sub i32 %indvars.iv279, %i.l
  %exitcond293.not = icmp eq i64 %indvars.iv.next290, %wide.trip.count292
  br i1 %exitcond293.not, label %.loopexit197, label %.lr.ph237, !llvm.loop !989

.preheader207:                                    ; preds = %decode_counter.exit
  br i1 %i.ai, label %.lr.ph215.split.us.preheader, label %.loopexit197

.lr.ph215.split.us.preheader:                     ; preds = %.preheader207
  %wide.trip.count260 = zext nneg i32 %i.k to i64
  %wide.trip.count = zext nneg i32 %i.ah to i64   ; 5 uses
  %wide.trip.count255 = zext nneg i32 %i.l to i64 ; 4 uses
  %i.fh = sub i64 %i.c, %i.a                      ; 2 uses
  %5 = add nsw i64 %wide.trip.count, -2           ; 2 uses
  %i.fi = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %min.iters.check466 = icmp ult i32 %i.af, 3
  %6 = trunc i64 %5 to i32
  %7 = icmp ugt i64 %5, 4294967295
  %i.fj = add i64 %i.fh, -1
  %diff.check465 = icmp ult i64 %i.fj, 31
  %invariant.op585 = or i1 %7, %diff.check465
  %min.iters.check468 = icmp ult i32 %i.af, 5
  %i.fk = and i64 %i.fi, 12
  %n.vec470 = and i64 %i.fi, -16                  ; 4 uses
  %i.fl = or disjoint i64 %n.vec470, 1
  %cmp.n477 = icmp eq i64 %i.fi, %n.vec470
  %min.epilog.iters.check483 = icmp eq i64 %i.fk, 0
  %n.vec485 = and i64 %i.fi, -4                   ; 3 uses
  %i.fm = or disjoint i64 %n.vec485, 1
  %cmp.n491 = icmp eq i64 %i.fi, %n.vec485
  %i.fn = add i64 %i.fh, -1
  %diff.check435 = icmp ult i64 %i.fn, 31
  br label %.lr.ph215.split.us

.lr.ph215.split.us:                               ; preds = %.lr.ph215.split.us.preheader, %._crit_edge.us217
  %indvars.iv257 = phi i64 [ 0, %.lr.ph215.split.us.preheader ], [ %indvars.iv.next258, %._crit_edge.us217 ] ; 3 uses
  %i.fo = shl nuw nsw i64 %indvars.iv257, 8       ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 %i.fo ; 15 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 %i.fo
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 %i.fo ; 14 uses
  %i.fs = trunc i64 %indvars.iv257 to i32
  %i.ft = mul i32 %i.l, %i.fs
  %i.fu = sub i32 %i.ag, %i.ft                    ; 2 uses
  %i.fv = tail call i32 @llvm.smin.i32(i32 %i.fu, i32 %i.l)
  %i.fw = icmp sgt i32 %i.fu, 0
  br i1 %i.fw, label %iter.check480, label %iter.check450

.lr.ph.us216:                                     ; preds = %.lr.ph.us216.prol.loopexit, %.lr.ph.us216
  %indvars.iv252 = phi i64 [ %indvars.iv.next253.3, %.lr.ph.us216 ], [ %indvars.iv252.unr, %.lr.ph.us216.prol.loopexit ] ; 6 uses
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %indvars.iv252
  %i.fy = load i16, ptr %i.fx, align 2
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %indvars.iv252
  store i16 %i.fy, ptr %i.fz, align 2
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %indvars.iv.next253
  %i.gb = load i16, ptr %i.ga, align 2
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %indvars.iv.next253
  store i16 %i.gb, ptr %i.gc, align 2
  %indvars.iv.next253.1 = add nuw nsw i64 %indvars.iv252, 2 ; 2 uses
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %indvars.iv.next253.1
  %i.ge = load i16, ptr %i.gd, align 2
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %indvars.iv.next253.1
  store i16 %i.ge, ptr %i.gf, align 2
  %indvars.iv.next253.2 = add nuw nsw i64 %indvars.iv252, 3 ; 2 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %indvars.iv.next253.2
  %i.gh = load i16, ptr %i.gg, align 2
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %indvars.iv.next253.2
  store i16 %i.gh, ptr %i.gi, align 2
  %indvars.iv.next253.3 = add nuw nsw i64 %indvars.iv252, 4 ; 2 uses
  %exitcond256.not.3 = icmp eq i64 %indvars.iv.next253.3, %wide.trip.count255
  br i1 %exitcond256.not.3, label %._crit_edge.us217, label %.lr.ph.us216, !llvm.loop !990

._crit_edge.us217:                                ; preds = %.lr.ph.us216.prol.loopexit, %.lr.ph.us216, %middle.block446, %vec.epilog.middle.block460, %.preheader206.us
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond261.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count260
  br i1 %exitcond261.not, label %.loopexit197, label %.lr.ph215.split.us, !llvm.loop !991

.preheader206.us:                                 ; preds = %._crit_edge.us.us
  %i.gj = icmp samesign ult i32 %i.jd, %i.l
  br i1 %i.gj, label %iter.check450, label %._crit_edge.us217

iter.check450:                                    ; preds = %.lr.ph215.split.us, %.preheader206.us
  %.0168.lcssa.us329 = phi i32 [ %i.jd, %.preheader206.us ], [ 0, %.lr.ph215.split.us ]
  %i.gk = zext i32 %.0168.lcssa.us329 to i64      ; 6 uses
  %i.gl = sub nsw i64 %wide.trip.count255, %i.gk  ; 7 uses
  %min.iters.check436 = icmp ult i64 %i.gl, 4
  %or.cond553 = or i1 %min.iters.check436, %diff.check435
  br i1 %or.cond553, label %.lr.ph.us216.preheader, label %vector.main.loop.iter.check437

vector.main.loop.iter.check437:                   ; preds = %iter.check450
  %min.iters.check438 = icmp ult i64 %i.gl, 16
  br i1 %min.iters.check438, label %vec.epilog.ph454, label %vector.ph439

vector.ph439:                                     ; preds = %vector.main.loop.iter.check437
  %i.gm = and i64 %i.gl, 12
  %n.vec440 = and i64 %i.gl, -16                  ; 4 uses
  %i.gn = add nsw i64 %n.vec440, %i.gk
  br label %vector.body441

vector.body441:                                   ; preds = %vector.body441, %vector.ph439
  %index442 = phi i64 [ 0, %vector.ph439 ], [ %index.next445, %vector.body441 ] ; 2 uses
  %i.go = add nuw i64 %index442, %i.gk            ; 2 uses
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %i.go ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %wide.load443 = load <8 x i16>, ptr %i.gp, align 2
  %wide.load444 = load <8 x i16>, ptr %i.gq, align 2
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %i.go ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store <8 x i16> %wide.load443, ptr %i.gr, align 2
  store <8 x i16> %wide.load444, ptr %i.gs, align 2
  %index.next445 = add nuw i64 %index442, 16      ; 2 uses
  %i.gt = icmp eq i64 %index.next445, %n.vec440
  br i1 %i.gt, label %middle.block446, label %vector.body441, !llvm.loop !992

middle.block446:                                  ; preds = %vector.body441
  %cmp.n447 = icmp eq i64 %i.gl, %n.vec440
  br i1 %cmp.n447, label %._crit_edge.us217, label %vec.epilog.iter.check452

vec.epilog.iter.check452:                         ; preds = %middle.block446
  %min.epilog.iters.check453 = icmp eq i64 %i.gm, 0
  br i1 %min.epilog.iters.check453, label %.lr.ph.us216.preheader, label %vec.epilog.ph454, !prof !299

vec.epilog.ph454:                                 ; preds = %vector.main.loop.iter.check437, %vec.epilog.iter.check452
  %vec.epilog.resume.val448 = phi i64 [ %n.vec440, %vec.epilog.iter.check452 ], [ 0, %vector.main.loop.iter.check437 ]
  %n.vec455 = and i64 %i.gl, -4                   ; 3 uses
  %i.gu = add nsw i64 %n.vec455, %i.gk
  br label %vec.epilog.vector.body456

vec.epilog.vector.body456:                        ; preds = %vec.epilog.vector.body456, %vec.epilog.ph454
  %index457 = phi i64 [ %vec.epilog.resume.val448, %vec.epilog.ph454 ], [ %index.next459, %vec.epilog.vector.body456 ] ; 2 uses
  %i.gv = add nuw i64 %index457, %i.gk            ; 2 uses
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %i.gv
  %wide.load458 = load <4 x i16>, ptr %i.gw, align 2
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %i.gv
  store <4 x i16> %wide.load458, ptr %i.gx, align 2
  %index.next459 = add nuw i64 %index457, 4       ; 2 uses
  %i.gy = icmp eq i64 %index.next459, %n.vec455
  br i1 %i.gy, label %vec.epilog.middle.block460, label %vec.epilog.vector.body456, !llvm.loop !993

vec.epilog.middle.block460:                       ; preds = %vec.epilog.vector.body456
  %cmp.n461 = icmp eq i64 %i.gl, %n.vec455
  br i1 %cmp.n461, label %._crit_edge.us217, label %.lr.ph.us216.preheader

.lr.ph.us216.preheader:                           ; preds = %iter.check450, %vec.epilog.iter.check452, %vec.epilog.middle.block460
  %indvars.iv252.ph = phi i64 [ %i.gk, %iter.check450 ], [ %i.gn, %vec.epilog.iter.check452 ], [ %i.gu, %vec.epilog.middle.block460 ] ; 4 uses
  %i.gz = sub nsw i64 %wide.trip.count255, %indvars.iv252.ph
  %xtraiter567 = and i64 %i.gz, 3                 ; 2 uses
  %lcmp.mod568.not = icmp eq i64 %xtraiter567, 0
  br i1 %lcmp.mod568.not, label %.lr.ph.us216.prol.loopexit, label %.lr.ph.us216.prol

.lr.ph.us216.prol:                                ; preds = %.lr.ph.us216.preheader, %.lr.ph.us216.prol
  %indvars.iv252.prol = phi i64 [ %indvars.iv.next253.prol, %.lr.ph.us216.prol ], [ %indvars.iv252.ph, %.lr.ph.us216.preheader ] ; 3 uses
  %prol.iter569 = phi i64 [ %prol.iter569.next, %.lr.ph.us216.prol ], [ 0, %.lr.ph.us216.preheader ]
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %indvars.iv252.prol
  %i.hb = load i16, ptr %i.ha, align 2
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %indvars.iv252.prol
  store i16 %i.hb, ptr %i.hc, align 2
  %indvars.iv.next253.prol = add nuw nsw i64 %indvars.iv252.prol, 1 ; 2 uses
  %prol.iter569.next = add i64 %prol.iter569, 1   ; 2 uses
  %prol.iter569.cmp.not = icmp eq i64 %prol.iter569.next, %xtraiter567
  br i1 %prol.iter569.cmp.not, label %.lr.ph.us216.prol.loopexit, label %.lr.ph.us216.prol, !llvm.loop !994

.lr.ph.us216.prol.loopexit:                       ; preds = %.lr.ph.us216.prol, %.lr.ph.us216.preheader
  %indvars.iv252.unr = phi i64 [ %indvars.iv252.ph, %.lr.ph.us216.preheader ], [ %indvars.iv.next253.prol, %.lr.ph.us216.prol ]
  %i.hd = sub nsw i64 %indvars.iv252.ph, %wide.trip.count255
  %i.he = icmp ugt i64 %i.hd, -4
  br i1 %i.he, label %._crit_edge.us217, label %.lr.ph.us216

iter.check480:                                    ; preds = %.lr.ph215.split.us, %._crit_edge.us.us
  %.0168210.us.us = phi i32 [ %i.jd, %._crit_edge.us.us ], [ 0, %.lr.ph215.split.us ] ; 10 uses
  %i.hf = zext nneg i32 %.0168210.us.us to i64    ; 2 uses
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.hf
  %i.hh = load i16, ptr %i.hg, align 2
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %i.hf
  store i16 %i.hh, ptr %i.hi, align 2
  br i1 %min.iters.check466, label %vec.epilog.scalar.ph481.preheader, label %vector.scevcheck463

vector.scevcheck463:                              ; preds = %iter.check480
  %8 = add nuw i32 %.0168210.us.us, 1             ; 2 uses
  %9 = add i32 %8, %6
  %10 = icmp slt i32 %9, %8
  %or.cond554.reass = or i1 %10, %invariant.op585
  br i1 %or.cond554.reass, label %vec.epilog.scalar.ph481.preheader, label %vector.main.loop.iter.check467

vector.main.loop.iter.check467:                   ; preds = %vector.scevcheck463
  br i1 %min.iters.check468, label %vec.epilog.ph484, label %vector.body471

vector.body471:                                   ; preds = %vector.main.loop.iter.check467, %vector.body471
  %index472 = phi i64 [ %index.next475, %vector.body471 ], [ 0, %vector.main.loop.iter.check467 ] ; 2 uses
  %i.hj = trunc i64 %index472 to i32
  %i.hk = or disjoint i32 %i.hj, 1
  %i.hl = add i32 %.0168210.us.us, %i.hk
  %i.hm = sext i32 %i.hl to i64                   ; 2 uses
  %i.hn = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.hm ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %wide.load473.a = load <8 x i16>, ptr %i.hn, align 2
  %wide.load474 = load <8 x i16>, ptr %i.ho, align 2
  %i.hp = getelementptr inbounds [2 x i8], ptr %i.fp, i64 %i.hm ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store <8 x i16> %wide.load473.a, ptr %i.hp, align 2
  store <8 x i16> %wide.load474, ptr %i.hq, align 2
  %index.next475 = add nuw i64 %index472, 16      ; 2 uses
  %i.hr = icmp eq i64 %index.next475, %n.vec470
  br i1 %i.hr, label %middle.block476, label %vector.body471, !llvm.loop !995

middle.block476:                                  ; preds = %vector.body471
  br i1 %cmp.n477, label %._crit_edge.us.us, label %vec.epilog.iter.check482

vec.epilog.iter.check482:                         ; preds = %middle.block476
  br i1 %min.epilog.iters.check483, label %vec.epilog.scalar.ph481.preheader, label %vec.epilog.ph484, !prof !299

vec.epilog.ph484:                                 ; preds = %vector.main.loop.iter.check467, %vec.epilog.iter.check482
  %vec.epilog.resume.val478 = phi i64 [ %n.vec470, %vec.epilog.iter.check482 ], [ 0, %vector.main.loop.iter.check467 ]
  br label %vec.epilog.vector.body486

vec.epilog.vector.body486:                        ; preds = %vec.epilog.vector.body486, %vec.epilog.ph484
  %index487 = phi i64 [ %vec.epilog.resume.val478, %vec.epilog.ph484 ], [ %index.next489, %vec.epilog.vector.body486 ] ; 2 uses
  %i.hs = trunc i64 %index487 to i32
  %i.ht = or disjoint i32 %i.hs, 1
  %i.hu = add i32 %.0168210.us.us, %i.ht
  %i.hv = sext i32 %i.hu to i64                   ; 2 uses
  %i.hw = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.hv
  %wide.load488 = load <4 x i16>, ptr %i.hw, align 2
  %i.hx = getelementptr inbounds [2 x i8], ptr %i.fp, i64 %i.hv
  store <4 x i16> %wide.load488, ptr %i.hx, align 2
  %index.next489 = add nuw i64 %index487, 4       ; 2 uses
  %i.hy = icmp eq i64 %index.next489, %n.vec485
  br i1 %i.hy, label %vec.epilog.middle.block490, label %vec.epilog.vector.body486, !llvm.loop !996

vec.epilog.middle.block490:                       ; preds = %vec.epilog.vector.body486
  br i1 %cmp.n491, label %._crit_edge.us.us, label %vec.epilog.scalar.ph481.preheader

vec.epilog.scalar.ph481.preheader:                ; preds = %vector.scevcheck463, %iter.check480, %vec.epilog.iter.check482, %vec.epilog.middle.block490
  %indvars.iv.ph = phi i64 [ 1, %vector.scevcheck463 ], [ 1, %iter.check480 ], [ %i.fl, %vec.epilog.iter.check482 ], [ %i.fm, %vec.epilog.middle.block490 ] ; 4 uses
  %i.hz = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter564 = and i64 %i.hz, 3                 ; 2 uses
  %lcmp.mod565.not = icmp eq i64 %xtraiter564, 0
  br i1 %lcmp.mod565.not, label %vec.epilog.scalar.ph481.prol.loopexit, label %vec.epilog.scalar.ph481.prol

vec.epilog.scalar.ph481.prol:                     ; preds = %vec.epilog.scalar.ph481.preheader, %vec.epilog.scalar.ph481.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph481.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph481.preheader ] ; 2 uses
  %prol.iter566 = phi i64 [ %prol.iter566.next, %vec.epilog.scalar.ph481.prol ], [ 0, %vec.epilog.scalar.ph481.preheader ]
  %i.ia = trunc nuw nsw i64 %indvars.iv.prol to i32
  %i.ib = add i32 %.0168210.us.us, %i.ia
  %i.ic = sext i32 %i.ib to i64                   ; 2 uses
  %i.id = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.ic
  %i.ie = load i16, ptr %i.id, align 2
  %i.if = getelementptr inbounds [2 x i8], ptr %i.fp, i64 %i.ic
  store i16 %i.ie, ptr %i.if, align 2
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter566.next = add i64 %prol.iter566, 1   ; 2 uses
  %prol.iter566.cmp.not = icmp eq i64 %prol.iter566.next, %xtraiter564
  br i1 %prol.iter566.cmp.not, label %vec.epilog.scalar.ph481.prol.loopexit, label %vec.epilog.scalar.ph481.prol, !llvm.loop !997

vec.epilog.scalar.ph481.prol.loopexit:            ; preds = %vec.epilog.scalar.ph481.prol, %vec.epilog.scalar.ph481.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph481.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph481.prol ]
  %i.ig = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ih = icmp ugt i64 %i.ig, -4
  br i1 %i.ih, label %._crit_edge.us.us, label %vec.epilog.scalar.ph481.preheader.new

vec.epilog.scalar.ph481.preheader.new:            ; preds = %vec.epilog.scalar.ph481.prol.loopexit
  %invariant.op579 = add i32 1, %.0168210.us.us
  %invariant.op581 = add i32 2, %.0168210.us.us
  %invariant.op583 = add i32 3, %.0168210.us.us
  br label %vec.epilog.scalar.ph481

vec.epilog.scalar.ph481:                          ; preds = %vec.epilog.scalar.ph481, %vec.epilog.scalar.ph481.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %vec.epilog.scalar.ph481.preheader.new ], [ %indvars.iv.next.3, %vec.epilog.scalar.ph481 ] ; 5 uses
  %i.ii = trunc nuw nsw i64 %indvars.iv to i32
  %i.ij = add i32 %.0168210.us.us, %i.ii
  %i.ik = sext i32 %i.ij to i64                   ; 2 uses
  %i.il = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.ik
  %i.im = load i16, ptr %i.il, align 2
  %i.in = getelementptr inbounds [2 x i8], ptr %i.fp, i64 %i.ik
  store i16 %i.im, ptr %i.in, align 2
  %i.io = trunc i64 %indvars.iv to i32
  %.reass580 = add i32 %i.io, %invariant.op579
  %i.ip = sext i32 %.reass580 to i64              ; 2 uses
  %i.iq = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.ip
  %i.ir = load i16, ptr %i.iq, align 2
  %i.is = getelementptr inbounds [2 x i8], ptr %i.fp, i64 %i.ip
  store i16 %i.ir, ptr %i.is, align 2
  %i.it = trunc i64 %indvars.iv to i32
  %.reass582 = add i32 %i.it, %invariant.op581
  %i.iu = sext i32 %.reass582 to i64              ; 2 uses
  %i.iv = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.iu
  %i.iw = load i16, ptr %i.iv, align 2
  %i.ix = getelementptr inbounds [2 x i8], ptr %i.fp, i64 %i.iu
  store i16 %i.iw, ptr %i.ix, align 2
  %i.iy = trunc i64 %indvars.iv to i32
  %.reass584 = add i32 %i.iy, %invariant.op583
  %i.iz = sext i32 %.reass584 to i64              ; 2 uses
  %i.ja = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.iz
  %i.jb = load i16, ptr %i.ja, align 2
  %i.jc = getelementptr inbounds [2 x i8], ptr %i.fp, i64 %i.iz
  store i16 %i.jb, ptr %i.jc, align 2
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us.us, label %vec.epilog.scalar.ph481, !llvm.loop !998

._crit_edge.us.us:                                ; preds = %vec.epilog.scalar.ph481.prol.loopexit, %vec.epilog.scalar.ph481, %vec.epilog.middle.block490, %middle.block476
  %i.jd = add nuw nsw i32 %.0168210.us.us, %i.ah  ; 4 uses
  %i.je = icmp slt i32 %i.jd, %i.fv
  br i1 %i.je, label %iter.check480, label %.preheader206.us, !llvm.loop !999

.preheader204:                                    ; preds = %decode_counter.exit
  br i1 %i.ai, label %.lr.ph230.split.us.preheader, label %.loopexit197

.lr.ph230.split.us.preheader:                     ; preds = %.preheader204
  %wide.trip.count274 = zext nneg i32 %i.k to i64
  %wide.trip.count269 = zext nneg i32 %i.ah to i64 ; 5 uses
  %i.jf = add nsw i64 %wide.trip.count269, -2     ; 2 uses
  %i.jg = sub i64 %i.c, %i.a                      ; 2 uses
  %i.jh = add nsw i64 %wide.trip.count269, -1     ; 5 uses
  %i.ji = add i64 %i.jg, -1
  %diff.check407 = icmp ult i64 %i.ji, 31
  %min.iters.check379 = icmp ult i32 %i.af, 3
  %i.jj = trunc i64 %i.jf to i32
  %i.jk = icmp ugt i64 %i.jf, 4294967295
  %i.jl = add i64 %i.jg, -1
  %diff.check378 = icmp ult i64 %i.jl, 31
  %invariant.op578 = or i1 %i.jk, %diff.check378
  %min.iters.check381 = icmp ult i32 %i.af, 5
  %i.jm = and i64 %i.jh, 12
  %n.vec383 = and i64 %i.jh, -16                  ; 4 uses
  %i.jn = or disjoint i64 %n.vec383, 1
  %cmp.n390 = icmp eq i64 %i.jh, %n.vec383
  %min.epilog.iters.check396 = icmp eq i64 %i.jm, 0
  %n.vec398 = and i64 %i.jh, -4                   ; 3 uses
  %i.jo = or disjoint i64 %n.vec398, 1
  %cmp.n404 = icmp eq i64 %i.jh, %n.vec398
  br label %.lr.ph230.split.us

.lr.ph230.split.us:                               ; preds = %.lr.ph230.split.us.preheader, %._crit_edge228.split.us.us
  %indvars.iv271 = phi i64 [ 0, %.lr.ph230.split.us.preheader ], [ %indvars.iv.next272, %._crit_edge228.split.us.us ] ; 4 uses
  %i.jp = trunc i64 %indvars.iv271 to i32
  %i.jq = mul i32 %i.l, %i.jp
  %i.jr = sub i32 %i.ag, %i.jq
  %smin = tail call i32 @llvm.smin.i32(i32 %i.jr, i32 %i.l) ; 3 uses
  %i.js = tail call i32 @llvm.umax.i32(i32 %smin, i32 1)
  %umax = zext i32 %i.js to i64                   ; 5 uses
  %i.jt = shl nuw nsw i64 %indvars.iv271, 8       ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 %i.jt ; 11 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 %i.jt
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 %i.jt ; 10 uses
  %i.jx = trunc i64 %indvars.iv271 to i32
  %i.jy = mul i32 %i.l, %i.jx
  %i.jz = sub i32 %i.ag, %i.jy                    ; 2 uses
  %i.ka = icmp sgt i32 %i.jz, 0
  br i1 %i.ka, label %iter.check421, label %.lr.ph224.us.us.preheader

iter.check421:                                    ; preds = %.lr.ph230.split.us
  %i.kb = tail call i32 @llvm.smin.i32(i32 %i.jz, i32 %i.l)
  %i.kc = zext nneg i32 %i.kb to i64
  %min.iters.check408 = icmp ult i32 %smin, 4
  %or.cond555 = or i1 %min.iters.check408, %diff.check407
  br i1 %or.cond555, label %.lr.ph220.us.preheader, label %vector.main.loop.iter.check409

vector.main.loop.iter.check409:                   ; preds = %iter.check421
  %min.iters.check410 = icmp ult i32 %smin, 16
  br i1 %min.iters.check410, label %vec.epilog.ph425, label %vector.ph411

vector.ph411:                                     ; preds = %vector.main.loop.iter.check409
  %i.kd = and i64 %umax, 12
  %n.vec412 = and i64 %umax, 4294967280           ; 5 uses
  br label %vector.body413

vector.body413:                                   ; preds = %vector.body413, %vector.ph411
  %index414 = phi i64 [ 0, %vector.ph411 ], [ %index.next417, %vector.body413 ] ; 3 uses
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %i.jw, i64 %index414 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %wide.load415 = load <8 x i16>, ptr %i.ke, align 2
  %wide.load416 = load <8 x i16>, ptr %i.kf, align 2
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.ju, i64 %index414 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store <8 x i16> %wide.load415, ptr %i.kg, align 2
  store <8 x i16> %wide.load416, ptr %i.kh, align 2
  %index.next417 = add nuw i64 %index414, 16      ; 2 uses
  %i.ki = icmp eq i64 %index.next417, %n.vec412
  br i1 %i.ki, label %middle.block418, label %vector.body413, !llvm.loop !1000

middle.block418:                                  ; preds = %vector.body413
  %cmp.n419 = icmp eq i64 %n.vec412, %umax
  br i1 %cmp.n419, label %.preheader203.us, label %vec.epilog.iter.check423

vec.epilog.iter.check423:                         ; preds = %middle.block418
  %min.epilog.iters.check424 = icmp eq i64 %i.kd, 0
  br i1 %min.epilog.iters.check424, label %.lr.ph220.us.preheader, label %vec.epilog.ph425, !prof !299

vec.epilog.ph425:                                 ; preds = %vector.main.loop.iter.check409, %vec.epilog.iter.check423
  %vec.epilog.resume.val420 = phi i64 [ %n.vec412, %vec.epilog.iter.check423 ], [ 0, %vector.main.loop.iter.check409 ]
  %n.vec426 = and i64 %umax, 4294967292           ; 4 uses
  br label %vec.epilog.vector.body427

vec.epilog.vector.body427:                        ; preds = %vec.epilog.vector.body427, %vec.epilog.ph425
  %index428 = phi i64 [ %vec.epilog.resume.val420, %vec.epilog.ph425 ], [ %index.next430, %vec.epilog.vector.body427 ] ; 3 uses
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.jw, i64 %index428
  %wide.load429 = load <4 x i16>, ptr %i.kj, align 2
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.ju, i64 %index428
  store <4 x i16> %wide.load429, ptr %i.kk, align 2
  %index.next430 = add nuw i64 %index428, 4       ; 2 uses
  %i.kl = icmp eq i64 %index.next430, %n.vec426
  br i1 %i.kl, label %vec.epilog.middle.block431, label %vec.epilog.vector.body427, !llvm.loop !1001

vec.epilog.middle.block431:                       ; preds = %vec.epilog.vector.body427
  %cmp.n432 = icmp eq i64 %n.vec426, %umax
  br i1 %cmp.n432, label %.preheader203.us, label %.lr.ph220.us.preheader

.lr.ph220.us.preheader:                           ; preds = %iter.check421, %vec.epilog.iter.check423, %vec.epilog.middle.block431
  %indvars.iv262.ph = phi i64 [ 0, %iter.check421 ], [ %n.vec412, %vec.epilog.iter.check423 ], [ %n.vec426, %vec.epilog.middle.block431 ]
  br label %.lr.ph220.us

.lr.ph220.us:                                     ; preds = %.lr.ph220.us.preheader, %.lr.ph220.us
  %indvars.iv262 = phi i64 [ %indvars.iv.next263, %.lr.ph220.us ], [ %indvars.iv262.ph, %.lr.ph220.us.preheader ] ; 3 uses
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %i.jw, i64 %indvars.iv262
  %i.kn = load i16, ptr %i.km, align 2
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.ju, i64 %indvars.iv262
  store i16 %i.kn, ptr %i.ko, align 2
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 3 uses
  %i.kp = icmp samesign ult i64 %indvars.iv.next263, %i.kc
  br i1 %i.kp, label %.lr.ph220.us, label %.preheader203.us, !llvm.loop !1002

._crit_edge228.split.us.us:                       ; preds = %._crit_edge225.us.us, %.preheader203.us
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond275.not = icmp eq i64 %indvars.iv.next272, %wide.trip.count274
  br i1 %exitcond275.not, label %.loopexit197, label %.lr.ph230.split.us, !llvm.loop !1003

.preheader203.us:                                 ; preds = %.lr.ph220.us, %vec.epilog.middle.block431, %middle.block418
  %indvars.iv.next263.lcssa = phi i64 [ %n.vec426, %vec.epilog.middle.block431 ], [ %n.vec412, %middle.block418 ], [ %indvars.iv.next263, %.lr.ph220.us ]
  %i.kq = trunc nuw nsw i64 %indvars.iv.next263.lcssa to i32 ; 2 uses
  %i.kr = icmp sgt i32 %i.l, %i.kq
  br i1 %i.kr, label %.lr.ph224.us.us.preheader, label %._crit_edge228.split.us.us

.lr.ph224.us.us.preheader:                        ; preds = %.lr.ph230.split.us, %.preheader203.us
end_hunk_0
