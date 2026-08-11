inline.NumInlined: 491
inline.NumDeleted: 121
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@sat_solver2_reducedb:bb.a

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dz, i64 4 ; 3 uses
  %i.ev = lshr i32 %.pre448, 11
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !30
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !30
  %i.fc = sext i32 %.5208390507 to i64            ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.fc
  store i32 %i.fb, ptr %i.fd, align 4, !tbaa !30
  br i1 %.not246, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fe = load i32, ptr %i.dz, align 4
  %i.ff = lshr i32 %i.fe, 11
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !30
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !30
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.fc
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fn = load ptr, ptr %i.dp, align 8, !tbaa !61 ; 4 uses
  %.not247 = icmp eq ptr %i.fn, null
  br i1 %.not247, label %Prf_ManAddSaved.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fo = load i32, ptr %i.dz, align 4
  %i.fp = lshr i32 %i.fo, 11
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !30 ; 2 uses
  %i.ft = load i32, ptr %i.fn, align 8, !tbaa !75
  %i.fu = icmp slt i32 %i.fs, %i.ft
  br i1 %i.fu, label %Prf_ManAddSaved.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !128 ; 7 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 4      ; 3 uses
  %.val.i = load i32, ptr %i.fx, align 4, !tbaa !132 ; 8 uses
  %i.fy = icmp eq i32 %.val.i, 0
  br i1 %i.fy, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fz = load i32, ptr %i.fw, align 8, !tbaa !131
  %i.ga = icmp eq i32 %.val.i, %i.fz
  br i1 %i.ga, label %bb.w, label %Vec_IntPush.exit.i

.thread.i:                                        ; preds = %bb.u
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store i32 %.5208390507, ptr %i.gb, align 4, !tbaa !161
  %i.gc = load i32, ptr %i.fw, align 8, !tbaa !131
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %.thread6.i, label %Vec_IntPush.exit.i

bb.w:                                             ; preds = %bb.v
  %i.ge = icmp slt i32 %.val.i, 16
  br i1 %i.ge, label %.thread6.i, label %bb.z

.thread6.i:                                       ; preds = %bb.w, %.thread.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !86 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not9.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.thread6.i
  %i.gh = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gg, i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i.i

bb.y:                                             ; preds = %.thread6.i
  %i.gi = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.y, %bb.x
  %i.gj = phi ptr [ %i.gh, %bb.x ], [ %i.gi, %bb.y ]
  store ptr %i.gj, ptr %i.gf, align 8, !tbaa !86
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.z:                                             ; preds = %bb.w
  %i.gk = icmp samesign ult i32 %.val.i, 1073741823
  %i.gl = shl nuw nsw i32 %.val.i, 1
  %spec.select.i.i = select i1 %i.gk, i32 %i.gl, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %.val.i, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.aa, label %Vec_IntPush.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !86 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.gn, null
  %i.go = zext nneg i32 %spec.select.i.i to i64
  %i.gp = shl nuw nsw i64 %i.go, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gq = call ptr @realloc(ptr noundef nonnull %i.gn, i64 noundef %i.gp) #26
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.gr = call noalias ptr @malloc(i64 noundef %i.gp) #27
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gs = phi ptr [ %i.gq, %bb.ab ], [ %i.gr, %bb.ac ]
  store ptr %i.gs, ptr %i.gm, align 8, !tbaa !86
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.ad, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.ad ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.fw, align 8, !tbaa !131
  %.pre.i = load i32, ptr %i.fx, align 4, !tbaa !132
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.z, %.thread.i, %bb.v
  %i.gt = phi i32 [ 0, %.thread.i ], [ %.val.i, %bb.v ], [ %.val.i, %bb.z ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !86
  %i.gw = add nsw i32 %i.gt, 1
  store i32 %i.gw, ptr %i.fx, align 4, !tbaa !132
  %i.gx = sext i32 %i.gt to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.gx
  store i32 %i.fs, ptr %i.gy, align 4, !tbaa !30
  br label %Prf_ManAddSaved.exit

Prf_ManAddSaved.exit:                             ; preds = %Vec_IntPush.exit.i, %bb.t, %bb.s
  %i.gz = add nsw i32 %.5208390507, 1
  br label %bb.af

bb.ae:                                            ; preds = %bb.p
  %i.ha = or i32 %.pre448, 2
  store i32 %i.ha, ptr %i.dz, align 4
  %i.hb = load i64, ptr %i.dn, align 8, !tbaa !109
  %i.hc = sub nsw i64 %i.hb, %i.ef
  store i64 %i.hc, ptr %i.dn, align 8, !tbaa !109
  %i.hd = load i32, ptr %i.do, align 8, !tbaa !108
  %i.he = add i32 %i.hd, -1
  store i32 %i.he, ptr %i.do, align 8, !tbaa !108
  br label %bb.af

bb.af:                                            ; preds = %Prf_ManAddSaved.exit, %bb.ae
  %.6 = phi i32 [ %i.gz, %Prf_ManAddSaved.exit ], [ %.5208390507, %bb.ae ] ; 2 uses
  %.val265 = load i32, ptr %i.dz, align 4         ; 2 uses
  %i.hf = lshr i32 %.val265, 11
  %i.hg = and i32 %.val265, 1
  %i.hh = add nuw nsw i32 %i.hf, 2
  %i.hi = add nuw nsw i32 %i.hh, %i.hg
  %i.hj = and i32 %i.hi, 8388606
  %i.hk = add nuw nsw i32 %i.hj, %.2211388508     ; 3 uses
  %i.hl = load ptr, ptr %i.dk, align 8, !tbaa !37 ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv427
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !38 ; 2 uses
  %.val262 = load i32, ptr %i.hn, align 4, !tbaa !30
  %i.ho = icmp slt i32 %i.hk, %.val262
  br i1 %i.ho, label %bb.m, label %..critedge4.loopexit_crit_edge511, !llvm.loop !160

..critedge4.loopexit_crit_edge511:                ; preds = %bb.af
  br label %.critedge4.loopexit, !llvm.loop !160

.critedge4.loopexit:                              ; preds = %..critedge4.loopexit_crit_edge511, %.lr.ph395
  %.val259445 = phi ptr [ %i.hl, %..critedge4.loopexit_crit_edge511 ], [ %.val259443, %.lr.ph395 ] ; 2 uses
  %.5208.lcssa.ph = phi i32 [ %.6, %..critedge4.loopexit_crit_edge511 ], [ %.4207402, %.lr.ph395 ]
  %.4.lcssa.ph = phi i32 [ %i.ea, %..critedge4.loopexit_crit_edge511 ], [ %.3404, %.lr.ph395 ]
  %.pre449 = load i32, ptr %i.aa, align 4, !tbaa !30
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.preheader359
  %i.hp = phi i32 [ %i.dq, %.preheader359 ], [ %.pre449, %.critedge4.loopexit ] ; 2 uses
  %.val259444 = phi ptr [ %.val259443, %.preheader359 ], [ %.val259445, %.critedge4.loopexit ]
  %i.hq = phi ptr [ %i.dr, %.preheader359 ], [ %.val259445, %.critedge4.loopexit ]
  %.5208.lcssa = phi i32 [ %.4207402, %.preheader359 ], [ %.5208.lcssa.ph, %.critedge4.loopexit ] ; 2 uses
  %.4.lcssa = phi i32 [ %.3404, %.preheader359 ], [ %.4.lcssa.ph, %.critedge4.loopexit ]
  %indvars.iv.next428 = add nuw nsw i64 %indvars.iv427, 2 ; 2 uses
  %i.hr = sext i32 %i.hp to i64
  %.not229 = icmp sgt i64 %indvars.iv.next428, %i.hr
  br i1 %.not229, label %._crit_edge405, label %.preheader359, !llvm.loop !162

._crit_edge405:                                   ; preds = %.critedge4, %bb.l
  %.4207.lcssa = phi i32 [ 0, %bb.l ], [ %.5208.lcssa, %.critedge4 ] ; 3 uses
  %.not230 = icmp eq ptr %i.z, null
  br i1 %.not230, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge405
  call void @free(ptr noundef nonnull %i.z) #25
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge405, %bb.ag
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !61 ; 8 uses
  %.not231 = icmp eq ptr %i.ht, null
  br i1 %.not231, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hu = getelementptr i8, ptr %i.ht, i64 8
  %.val.i276 = load i32, ptr %i.hu, align 8, !tbaa !62 ; 4 uses
  %i.hv = getelementptr i8, ptr %i.ht, i64 24
  %.val29.i = load ptr, ptr %i.hv, align 8, !tbaa !67 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !128 ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 4      ; 2 uses
  %.val33.i = load i32, ptr %i.hy, align 4, !tbaa !132 ; 2 uses
  %i.hz = icmp sgt i32 %.val33.i, 0
  br i1 %i.hz, label %.lr.ph41.i, label %Prf_ManCompact.exit

.lr.ph41.i:                                       ; preds = %bb.ai
  %i.ia = getelementptr i8, ptr %i.hx, i64 8
  %.val32.i = load ptr, ptr %i.ia, align 8, !tbaa !86
  %i.ib = load i32, ptr %i.ht, align 8, !tbaa !75
  %i.ic = getelementptr i8, ptr %.val29.i, i64 8
  %.val31.val.i = load ptr, ptr %i.ic, align 8, !tbaa !71 ; 7 uses
  %i.id = icmp sgt i32 %.val.i276, 0
  br i1 %i.id, label %.lr.ph.us.preheader.i, label %Prf_ManCompact.exit

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph41.i
  %wide.trip.count58.i = zext nneg i32 %.val33.i to i64
  %wide.trip.count.i = zext nneg i32 %.val.i276 to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.val.i276, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv55.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next56.i, %._crit_edge.us.i ] ; 2 uses
  %.02738.us.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next51.i.lcssa, %._crit_edge.us.i ] ; 5 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.val32.i, i64 %indvars.iv55.i
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !30
  %i.ig = sub nsw i32 %i.if, %i.ib
  %i.ih = mul nsw i32 %i.ig, %.val.i276
  %i.ii = sext i32 %i.ih to i64                   ; 2 uses
  %i.ij = getelementptr inbounds [8 x i8], ptr %.val31.val.i, i64 %i.ii ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us.i
  %i.ik = sub i64 %.02738.us.i, %i.ii
  %i.il = shl i64 %i.ik, 3
  %i.im = add i64 %i.il, -1
  %diff.check = icmp ult i64 %i.im, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.in = add i64 %.02738.us.i, %n.vec            ; 2 uses
  %i.io = getelementptr [8 x i8], ptr %.val31.val.i, i64 %.02738.us.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %index ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %wide.load = load <2 x i64>, ptr %i.ip, align 8, !tbaa !72
  %wide.load515 = load <2 x i64>, ptr %i.iq, align 8, !tbaa !72
  %i.ir = getelementptr [8 x i8], ptr %i.io, i64 %index ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  store <2 x i64> %wide.load, ptr %i.ir, align 8, !tbaa !72
  store <2 x i64> %wide.load515, ptr %i.is, align 8, !tbaa !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.it = icmp eq i64 %index.next, %n.vec
  br i1 %i.it, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us.i, %middle.block
  %indvars.iv50.i.ph = phi i64 [ %.02738.us.i, %vector.memcheck ], [ %.02738.us.i, %.lr.ph.us.i ], [ %i.in, %middle.block ] ; 2 uses
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv50.i.prol = phi i64 [ %indvars.iv.next51.i.prol, %scalar.ph.prol ], [ %indvars.iv50.i.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %indvars.iv.next51.i.prol = add nsw i64 %indvars.iv50.i.prol, 1 ; 3 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.i.prol
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !72
  %i.iw = getelementptr inbounds [8 x i8], ptr %.val31.val.i, i64 %indvars.iv50.i.prol
  store i64 %i.iv, ptr %i.iw, align 8, !tbaa !72
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !164

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next51.i.lcssa523.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next51.i.prol, %scalar.ph.prol ]
  %indvars.iv50.i.unr = phi i64 [ %indvars.iv50.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next51.i.prol, %scalar.ph.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.ix = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.iy = icmp ugt i64 %i.ix, -4
  br i1 %i.iy, label %._crit_edge.us.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv50.i.a = phi i64 [ %indvars.iv.next51.i.3, %scalar.ph ], [ %indvars.iv50.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.i
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !72
  %i.jb = getelementptr inbounds [8 x i8], ptr %.val31.val.i, i64 %indvars.iv50.i.a
  store i64 %i.ja, ptr %i.jb, align 8, !tbaa !72
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !72
  %i.jf = getelementptr [8 x i8], ptr %.val31.val.i, i64 %indvars.iv50.i.a
  %i.jg = getelementptr i8, ptr %i.jf, i64 8
  store i64 %i.je, ptr %i.jg, align 8, !tbaa !72
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !72
  %i.jk = getelementptr [8 x i8], ptr %.val31.val.i, i64 %indvars.iv50.i.a
  %i.jl = getelementptr i8, ptr %i.jk, i64 16
  store i64 %i.jj, ptr %i.jl, align 8, !tbaa !72
  %indvars.iv.next51.i.3 = add nsw i64 %indvars.iv50.i.a, 4 ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !72
  %i.jp = getelementptr [8 x i8], ptr %.val31.val.i, i64 %indvars.iv50.i.a
  %i.jq = getelementptr i8, ptr %i.jp, i64 24
  store i64 %i.jo, ptr %i.jq, align 8, !tbaa !72
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !165

._crit_edge.us.i:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next51.i.lcssa = phi i64 [ %i.in, %middle.block ], [ %indvars.iv.next51.i.lcssa523.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next51.i.3, %scalar.ph ] ; 2 uses
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %..critedge_crit_edge.loopexit.i, label %.lr.ph.us.i, !llvm.loop !166

..critedge_crit_edge.loopexit.i:                  ; preds = %._crit_edge.us.i
  %3 = trunc nsw i64 %indvars.iv.next51.i.lcssa to i32
  br label %Prf_ManCompact.exit

Prf_ManCompact.exit:                              ; preds = %bb.ai, %.lr.ph41.i, %..critedge_crit_edge.loopexit.i
  %.027.lcssa.i = phi i32 [ 0, %bb.ai ], [ %3, %..critedge_crit_edge.loopexit.i ], [ 0, %.lr.ph41.i ]
  %i.jr = getelementptr i8, ptr %.val29.i, i64 4
  store i32 %.027.lcssa.i, ptr %i.jr, align 4, !tbaa !68
  store i32 0, ptr %i.hy, align 4, !tbaa !132
  %i.js = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store ptr null, ptr %i.js, align 8, !tbaa !74
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ht, i64 4 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !161 ; 2 uses
  %i.jv = icmp eq i32 %i.ju, -1
  %..i = select i1 %i.jv, i32 %.4207.lcssa, i32 %i.ju
  store i32 %..i, ptr %i.ht, align 8, !tbaa !75
  store i32 -1, ptr %i.jt, align 4, !tbaa !161
  br label %bb.aj

bb.aj:                                            ; preds = %Prf_ManCompact.exit, %bb.ah
  store i32 %.4207.lcssa, ptr %i.a, align 4, !tbaa !33
  %.val256 = load i32, ptr %i.dh, align 4, !tbaa !33
  %.not232 = icmp eq i32 %.val256, 0
  br i1 %.not232, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i32 %.4207.lcssa, ptr %i.dh, align 4, !tbaa !33
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.jw = load i32, ptr %i.aa, align 4, !tbaa !30 ; 4 uses
  %i.jx = getelementptr i8, ptr %0, i64 152       ; 10 uses
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !35 ; 2 uses
  %i.jz = shl i32 %i.jw, %i.jy
  %i.ka = getelementptr i8, ptr %0, i64 168       ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !37 ; 10 uses
  %i.kc = sext i32 %i.jw to i64
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.kb, i64 %i.kc
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !38
  %.val.i.i = load i32, ptr %i.ke, align 4, !tbaa !30
  %i.kf = or i32 %.val.i.i, %i.jz
  %i.kg = shl nuw i32 1, %i.jy
  %i.kh = or i32 %i.kg, 2
  %i.ki = icmp eq i32 %i.kf, %i.kh
  %.not110150.i = icmp slt i32 %i.jw, 1
  %or.cond = or i1 %.not110150.i, %i.ki
  br i1 %or.cond, label %Sat_MemCompactLearned.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.al, %.critedge.i
  %i.kj = phi i32 [ %i.mk, %.critedge.i ], [ %i.jw, %bb.al ]
  %indvars.iv.i277 = phi i64 [ %indvars.iv.next.i278, %.critedge.i ], [ 1, %bb.al ] ; 2 uses
  %.090154.i = phi i32 [ %.191.lcssa.i, %.critedge.i ], [ 2, %bb.al ] ; 4 uses
  %.094153.i = phi i32 [ %.195.lcssa.i, %.critedge.i ], [ 1, %bb.al ] ; 4 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %indvars.iv.i277
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !38 ; 4 uses
  %.val121132.i = load i32, ptr %i.kl, align 4, !tbaa !30 ; 3 uses
  %i.km = icmp sgt i32 %.val121132.i, 2
  br i1 %i.km, label %.lr.ph.preheader.i.preheader, label %.critedge.i

.lr.ph.preheader.i.preheader:                     ; preds = %.preheader.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.ko = load i32, ptr %i.kn, align 4            ; 5 uses
  %i.kp = and i32 %i.ko, 2
  %.not114.i.peel = icmp eq i32 %i.kp, 0
  br i1 %.not114.i.peel, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph.preheader.i.preheader
  %i.kq = lshr i32 %i.ko, 11                      ; 2 uses
  %i.kr = and i32 %i.ko, 1
  %i.ks = add nuw nsw i32 %i.kq, 2
  %i.kt = add nuw nsw i32 %i.ks, %i.kr
  %i.ku = and i32 %i.kt, 8388606                  ; 2 uses
  %i.kv = add nsw i32 %i.ku, %.090154.i
  %i.kw = load i32, ptr %i.jx, align 8, !tbaa !35 ; 2 uses
  %i.kx = shl nuw i32 1, %i.kw
  %.not116.i.peel = icmp slt i32 %i.kv, %i.kx     ; 2 uses
  %i.ky = add nsw i32 %.094153.i, 2
  %spec.select349.peel = select i1 %.not116.i.peel, i32 %.094153.i, i32 %i.ky ; 2 uses
  %spec.select350.peel = select i1 %.not116.i.peel, i32 %.090154.i, i32 2 ; 2 uses
  %i.kz = shl i32 %spec.select349.peel, %i.kw
  %i.la = or i32 %i.kz, %spec.select350.peel
  %.sink172.i.peel = getelementptr inbounds nuw i8, ptr %i.kl, i64 12
  %i.lb = zext nneg i32 %i.kq to i64
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.sink172.i.peel, i64 %i.lb
  store i32 %i.la, ptr %i.lc, align 4, !tbaa !30
  %i.ld = add nsw i32 %spec.select350.peel, %i.ku
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph.preheader.i.preheader, %bb.am
  %.397.i.peel = phi i32 [ %spec.select349.peel, %bb.am ], [ %.094153.i, %.lr.ph.preheader.i.preheader ] ; 2 uses
  %.393.i.peel = phi i32 [ %i.ld, %bb.am ], [ %.090154.i, %.lr.ph.preheader.i.preheader ] ; 2 uses
  %i.le = lshr i32 %i.ko, 11
  %i.lf = and i32 %i.ko, 1
  %i.lg = add nuw nsw i32 %i.le, 2
  %i.lh = add nuw nsw i32 %i.lg, %i.lf
  %i.li = and i32 %i.lh, 8388606
  %i.lj = add nuw nsw i32 %i.li, 2                ; 2 uses
  %i.lk = icmp samesign ult i32 %i.lj, %.val121132.i
  br i1 %i.lk, label %.lr.ph.preheader.i, label %.critedge.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.an, %bb.ap
  %.191137.i = phi i32 [ %.393.i, %bb.ap ], [ %.393.i.peel, %bb.an ] ; 3 uses
  %.195136.i = phi i32 [ %.397.i, %bb.ap ], [ %.397.i.peel, %bb.an ] ; 3 uses
  %.098134.i = phi i32 [ %i.mi, %bb.ap ], [ %i.lj, %bb.an ] ; 2 uses
  %i.ll = zext nneg i32 %.098134.i to i64
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %i.ll ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4            ; 5 uses
  %i.lo = and i32 %i.ln, 2
  %.not114.i = icmp eq i32 %i.lo, 0
  br i1 %.not114.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph.preheader.i
  %i.lp = lshr i32 %i.ln, 11                      ; 2 uses
  %i.lq = and i32 %i.ln, 1
  %i.lr = add nuw nsw i32 %i.lp, 2
  %i.ls = add nuw nsw i32 %i.lr, %i.lq
  %i.lt = and i32 %i.ls, 8388606                  ; 2 uses
  %i.lu = add nsw i32 %i.lt, %.191137.i
  %i.lv = load i32, ptr %i.jx, align 8, !tbaa !35 ; 2 uses
  %i.lw = shl nuw i32 1, %i.lv
  %.not116.i = icmp slt i32 %i.lu, %i.lw          ; 2 uses
  %i.lx = add nsw i32 %.195136.i, 2
  %spec.select349 = select i1 %.not116.i, i32 %.195136.i, i32 %i.lx ; 2 uses
  %spec.select350 = select i1 %.not116.i, i32 %.191137.i, i32 2 ; 2 uses
  %i.ly = shl i32 %spec.select349, %i.lv
  %i.lz = or i32 %i.ly, %spec.select350
  %.sink172.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.ma = zext nneg i32 %i.lp to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %.sink172.i, i64 %i.ma
  store i32 %i.lz, ptr %i.mb, align 4, !tbaa !30
  %i.mc = add nsw i32 %spec.select350, %i.lt
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.preheader.i, %bb.ao
  %.397.i = phi i32 [ %spec.select349, %bb.ao ], [ %.195136.i, %.lr.ph.preheader.i ] ; 2 uses
  %.393.i = phi i32 [ %i.mc, %bb.ao ], [ %.191137.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.md = lshr i32 %i.ln, 11
  %i.me = and i32 %i.ln, 1
  %i.mf = add nuw nsw i32 %i.md, 2
  %i.mg = add nuw nsw i32 %i.mf, %i.me
  %i.mh = and i32 %i.mg, 8388606
  %i.mi = add nuw nsw i32 %i.mh, %.098134.i       ; 2 uses
  %i.mj = icmp slt i32 %i.mi, %.val121132.i
  br i1 %i.mj, label %.lr.ph.preheader.i, label %.critedge.loopexit.i, !llvm.loop !167

.critedge.loopexit.i:                             ; preds = %bb.ap, %bb.an
  %.397.i.lcssa = phi i32 [ %.397.i.peel, %bb.an ], [ %.397.i, %bb.ap ]
  %.393.i.lcssa = phi i32 [ %.393.i.peel, %bb.an ], [ %.393.i, %bb.ap ]
  %.pre.i280 = load i32, ptr %i.aa, align 4, !tbaa !30
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.mk = phi i32 [ %i.kj, %.preheader.i ], [ %.pre.i280, %.critedge.loopexit.i ] ; 2 uses
  %.195.lcssa.i = phi i32 [ %.094153.i, %.preheader.i ], [ %.397.i.lcssa, %.critedge.loopexit.i ]
  %.191.lcssa.i = phi i32 [ %.090154.i, %.preheader.i ], [ %.393.i.lcssa, %.critedge.loopexit.i ]
  %indvars.iv.next.i278 = add nuw nsw i64 %indvars.iv.i277, 2 ; 2 uses
  %i.ml = sext i32 %i.mk to i64
  %.not110.i = icmp sgt i64 %indvars.iv.next.i278, %i.ml
  br i1 %.not110.i, label %Sat_MemCompactLearned.exit, label %.preheader.i, !llvm.loop !169

Sat_MemCompactLearned.exit:                       ; preds = %.critedge.i, %bb.al
  %i.mm = load i32, ptr %0, align 8, !tbaa !123   ; 3 uses
  %i.mn = icmp sgt i32 %i.mm, 0
  br i1 %i.mn, label %.lr.ph408, label %._crit_edge418

.lr.ph408:                                        ; preds = %Sat_MemCompactLearned.exit
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !51
  %i.mq = getelementptr i8, ptr %0, i64 160
  %i.mr = getelementptr i8, ptr %0, i64 156
  br label %bb.aq

.preheader358:                                    ; preds = %bb.as
  %i.ms = icmp sgt i32 %i.np, 0
  br i1 %i.ms, label %.lr.ph417, label %._crit_edge418

.lr.ph417:                                        ; preds = %.preheader358
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !31
  %i.mv = getelementptr i8, ptr %0, i64 160
  %i.mw = getelementptr i8, ptr %0, i64 156
  br label %bb.at

bb.aq:                                            ; preds = %.lr.ph408, %bb.as
  %i.mx = phi i32 [ %i.mm, %.lr.ph408 ], [ %i.np, %bb.as ] ; 2 uses
  %indvars.iv431 = phi i64 [ 0, %.lr.ph408 ], [ %indvars.iv.next432, %bb.as ] ; 2 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv431 ; 2 uses
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !30 ; 5 uses
  %.not241 = icmp ne i32 %i.mz, 0
  %i.na = and i32 %i.mz, 1
  %.not242 = icmp eq i32 %i.na, 0
  %or.cond351 = and i1 %.not241, %.not242
  br i1 %or.cond351, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %.val275 = load i32, ptr %i.mq, align 8, !tbaa !170
  %i.nb = and i32 %.val275, %i.mz
  %.not357 = icmp eq i32 %i.nb, 0
  br i1 %.not357, label %bb.as, label %clause2_read.exit

clause2_read.exit:                                ; preds = %bb.ar
  %.val.i.i281 = load i32, ptr %i.jx, align 8, !tbaa !35
  %i.nc = ashr i32 %i.mz, %.val.i.i281
  %.val5.i.i = load i32, ptr %i.mr, align 4, !tbaa !36
  %i.nd = and i32 %.val5.i.i, %i.mz
  %i.ne = sext i32 %i.nc to i64
end_hunk_0
