Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/pair?download=true
inline.NumInlined: 21
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@set_pair1:bb.a
  br i1 %min.iters.check313, label %.lr.ph222.preheader353, label %vector.ph314

vector.ph314:                                     ; preds = %.lr.ph222.preheader
  %n.vec315 = and i64 %i.ep, 2147483640           ; 3 uses
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph314
  %index317 = phi i64 [ 0, %vector.ph314 ], [ %index.next318, %vector.body316 ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index317 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <4 x i32> splat (i32 4), ptr %i.eq, align 4, !tbaa !4
  store <4 x i32> splat (i32 4), ptr %i.er, align 4, !tbaa !4
  %index.next318 = add nuw i64 %index317, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next318, %n.vec315
  br i1 %i.es, label %middle.block319, label %vector.body316, !llvm.loop !36

middle.block319:                                  ; preds = %vector.body316
  %cmp.n320 = icmp eq i64 %n.vec315, %i.ep
  br i1 %cmp.n320, label %.preheader211, label %.lr.ph222.preheader353

.lr.ph222.preheader353:                           ; preds = %.lr.ph222.preheader, %middle.block319
  %indvars.iv251.ph = phi i64 [ 0, %.lr.ph222.preheader ], [ %n.vec315, %middle.block319 ]
  br label %.lr.ph222

.preheader211:                                    ; preds = %.lr.ph222, %middle.block319, %._crit_edge219
  %i.et = icmp sgt i32 %i.ef, 0
  br i1 %i.et, label %.lr.ph224, label %._crit_edge225

.lr.ph224:                                        ; preds = %.preheader211
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !26 ; 2 uses
  %i.ev = ptrtoaddr ptr %i.eu to i64
  %wide.trip.count257 = zext nneg i32 %i.ef to i64 ; 6 uses
  %invariant.gep302 = getelementptr [4 x i8], ptr %i.eu, i64 %i.dl ; 6 uses
  %invariant.op304 = add i32 %.0.lcssa, %i.em     ; 9 uses
  %min.iters.check323 = icmp ult i32 %i.ef, 24
  br i1 %min.iters.check323, label %scalar.ph322.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph224
  %i.ew = add nsw i64 %wide.trip.count257, -1     ; 2 uses
  %i.ex = trunc nsw i64 %i.ew to i32
  %i.ey = add i32 %invariant.op304, %i.ex
  %i.ez = icmp slt i32 %i.ey, %invariant.op304
  %i.fa = icmp ugt i64 %i.ew, 4294967295
  %i.fb = or i1 %i.ez, %i.fa
  br i1 %i.fb, label %scalar.ph322.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.fc = sext i32 %invariant.op304 to i64
  %i.fd = shl nsw i64 %i.fc, 2
  %i.fe = add i64 %i.fd, %i.el
  %i.ff = shl nsw i64 %i.dl, 2
  %i.fg = add i64 %i.ff, %i.ev
  %i.fh = sub i64 %i.fg, %i.fe
  %diff.check = icmp ugt i64 %i.fh, -32
  br i1 %diff.check, label %scalar.ph322.preheader, label %vector.ph324

vector.ph324:                                     ; preds = %vector.memcheck
  %n.vec325 = and i64 %wide.trip.count257, 2147483640 ; 3 uses
  br label %vector.body326

vector.body326:                                   ; preds = %vector.body326, %vector.ph324
  %index327 = phi i64 [ 0, %vector.ph324 ], [ %index.next330, %vector.body326 ] ; 3 uses
  %i.fi = getelementptr [4 x i8], ptr %invariant.gep302, i64 %index327 ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 16
  %wide.load328 = load <4 x i32>, ptr %i.fi, align 4, !tbaa !4
  %wide.load329 = load <4 x i32>, ptr %i.fj, align 4, !tbaa !4
  %i.fk = trunc i64 %index327 to i32
  %i.fl = add i32 %invariant.op304, %i.fk
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.fm ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store <4 x i32> %wide.load328, ptr %i.fn, align 4, !tbaa !4
  store <4 x i32> %wide.load329, ptr %i.fo, align 4, !tbaa !4
  %index.next330 = add nuw i64 %index327, 8       ; 2 uses
  %i.fp = icmp eq i64 %index.next330, %n.vec325
  br i1 %i.fp, label %middle.block331, label %vector.body326, !llvm.loop !37

middle.block331:                                  ; preds = %vector.body326
  %cmp.n332 = icmp eq i64 %n.vec325, %wide.trip.count257
  br i1 %cmp.n332, label %._crit_edge225, label %scalar.ph322.preheader

scalar.ph322.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph224, %middle.block331
  %indvars.iv254.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph224 ], [ %n.vec325, %middle.block331 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count257, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph322.prol.loopexit, label %scalar.ph322.prol

scalar.ph322.prol:                                ; preds = %scalar.ph322.preheader, %scalar.ph322.prol
  %indvars.iv254.prol = phi i64 [ %indvars.iv.next255.prol, %scalar.ph322.prol ], [ %indvars.iv254.ph, %scalar.ph322.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph322.prol ], [ 0, %scalar.ph322.preheader ]
  %gep303.prol = getelementptr [4 x i8], ptr %invariant.gep302, i64 %indvars.iv254.prol
  %i.fq = load i32, ptr %gep303.prol, align 4, !tbaa !4
  %i.fr = trunc i64 %indvars.iv254.prol to i32
  %.reass305.prol = add i32 %invariant.op304, %i.fr
  %i.fs = sext i32 %.reass305.prol to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.fs
  store i32 %i.fq, ptr %i.ft, align 4, !tbaa !4
  %indvars.iv.next255.prol = add nuw nsw i64 %indvars.iv254.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph322.prol.loopexit, label %scalar.ph322.prol, !llvm.loop !38

scalar.ph322.prol.loopexit:                       ; preds = %scalar.ph322.prol, %scalar.ph322.preheader
  %indvars.iv254.unr = phi i64 [ %indvars.iv254.ph, %scalar.ph322.preheader ], [ %indvars.iv.next255.prol, %scalar.ph322.prol ]
  %i.fu = sub nsw i64 %indvars.iv254.ph, %wide.trip.count257
  %i.fv = icmp ugt i64 %i.fu, -4
  br i1 %i.fv, label %._crit_edge225, label %scalar.ph322

.lr.ph222:                                        ; preds = %.lr.ph222.preheader353, %.lr.ph222
  %indvars.iv251 = phi i64 [ %indvars.iv.next252, %.lr.ph222 ], [ %indvars.iv251.ph, %.lr.ph222.preheader353 ] ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv251
  store i32 4, ptr %gep, align 4, !tbaa !4
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1 ; 2 uses
  %i.fw = icmp samesign ult i64 %indvars.iv.next252, %i.ep
  br i1 %i.fw, label %.lr.ph222, label %.preheader211, !llvm.loop !40

scalar.ph322:                                     ; preds = %scalar.ph322.prol.loopexit, %scalar.ph322
  %indvars.iv254 = phi i64 [ %indvars.iv.next255.3, %scalar.ph322 ], [ %indvars.iv254.unr, %scalar.ph322.prol.loopexit ] ; 6 uses
  %gep303 = getelementptr [4 x i8], ptr %invariant.gep302, i64 %indvars.iv254
  %i.fx = load i32, ptr %gep303, align 4, !tbaa !4
  %i.fy = trunc i64 %indvars.iv254 to i32
  %.reass305 = add i32 %invariant.op304, %i.fy
  %i.fz = sext i32 %.reass305 to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.fz
  store i32 %i.fx, ptr %i.ga, align 4, !tbaa !4
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %gep303.1 = getelementptr [4 x i8], ptr %invariant.gep302, i64 %indvars.iv.next255
  %i.gb = load i32, ptr %gep303.1, align 4, !tbaa !4
  %i.gc = trunc i64 %indvars.iv.next255 to i32
  %.reass305.1 = add i32 %invariant.op304, %i.gc
  %i.gd = sext i32 %.reass305.1 to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.gd
  store i32 %i.gb, ptr %i.ge, align 4, !tbaa !4
  %indvars.iv.next255.1 = add nuw nsw i64 %indvars.iv254, 2 ; 2 uses
  %gep303.2 = getelementptr [4 x i8], ptr %invariant.gep302, i64 %indvars.iv.next255.1
  %i.gf = load i32, ptr %gep303.2, align 4, !tbaa !4
  %i.gg = trunc i64 %indvars.iv.next255.1 to i32
  %.reass305.2 = add i32 %invariant.op304, %i.gg
  %i.gh = sext i32 %.reass305.2 to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.gh
  store i32 %i.gf, ptr %i.gi, align 4, !tbaa !4
  %indvars.iv.next255.2 = add nuw nsw i64 %indvars.iv254, 3 ; 2 uses
  %gep303.3 = getelementptr [4 x i8], ptr %invariant.gep302, i64 %indvars.iv.next255.2
  %i.gj = load i32, ptr %gep303.3, align 4, !tbaa !4
  %i.gk = trunc i64 %indvars.iv.next255.2 to i32
  %.reass305.3 = add i32 %invariant.op304, %i.gk
  %i.gl = sext i32 %.reass305.3 to i64
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.gl
  store i32 %i.gj, ptr %i.gm, align 4, !tbaa !4
  %indvars.iv.next255.3 = add nuw nsw i64 %indvars.iv254, 4 ; 2 uses
  %exitcond258.not.3 = icmp eq i64 %indvars.iv.next255.3, %wide.trip.count257
  br i1 %exitcond258.not.3, label %._crit_edge225, label %scalar.ph322, !llvm.loop !41

._crit_edge225:                                   ; preds = %scalar.ph322.prol.loopexit, %scalar.ph322, %middle.block331, %.preheader211
  tail call void (...) @setdown_cube() #14
  %i.gn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !26 ; 2 uses
  %.not166 = icmp eq ptr %i.gn, null
  br i1 %.not166, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge225
  tail call void @free(ptr noundef nonnull %i.gn) #14
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge225
  store i32 %i.eh, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !31
  store i32 %.0.lcssa, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  store ptr %i.ek, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !26
  tail call void (...) @cube_setup() #14
  br i1 %.not, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !42 ; 14 uses
  %i.gq = load i32, ptr @cube, align 8, !tbaa !30
  %i.gr = sext i32 %i.gq to i64
  %i.gs = shl nsw i64 %i.gr, 3
  %i.gt = tail call noalias ptr @malloc(i64 noundef %i.gs) #15 ; 2 uses
  store ptr %i.gt, ptr %i.go, align 8, !tbaa !42
  %i.gu = load i32, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %i.gv = icmp sgt i32 %i.gu, 0
  br i1 %i.gv, label %.lr.ph228, label %.preheader210

.lr.ph228:                                        ; preds = %bb.ag
  %i.gw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.ah

.preheader210:                                    ; preds = %bb.ah, %bb.ag
  %i.gy = phi ptr [ %i.gt, %bb.ag ], [ %i.ip, %bb.ah ] ; 7 uses
  %.lcssa = phi i32 [ %i.gu, %bb.ag ], [ %i.is, %bb.ah ]
  br i1 %i.do, label %.lr.ph232.preheader, label %._crit_edge233

.lr.ph232.preheader:                              ; preds = %.preheader210
  %wide.trip.count265 = zext nneg i32 %i.dh to i64
  br label %.lr.ph232

bb.ah:                                            ; preds = %.lr.ph228, %bb.ah
  %indvars.iv259 = phi i64 [ 0, %.lr.ph228 ], [ %indvars.iv.next260, %bb.ah ] ; 4 uses
  %i.gz = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  %i.ha = shl nsw i32 %i.gz, 1
  %indvars.iv259.tr = trunc i64 %indvars.iv259 to i32
  %2 = shl i32 %indvars.iv259.tr, 2
  %3 = add nsw i32 %i.ha, %2
  %i.hb = load ptr, ptr %i.gw, align 8, !tbaa !23
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv259
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !4
  %i.he = shl i32 %i.hd, 1                        ; 2 uses
  %i.hf = add i32 %i.he, -2
  %i.hg = add i32 %i.he, -1
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.hh
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !43 ; 2 uses
  %i.hk = load ptr, ptr %i.gx, align 8, !tbaa !24
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv259
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !4
  %i.hn = shl i32 %i.hm, 1                        ; 2 uses
  %i.ho = add i32 %i.hn, -2
  %i.hp = add i32 %i.hn, -1
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.hq
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !43 ; 2 uses
  %i.ht = sext i32 %i.hf to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !43 ; 2 uses
  %i.hw = sext i32 %i.ho to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.hw
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !43 ; 2 uses
  %i.hz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %i.hv, ptr noundef %i.hy) #14 ; 0 uses
  %i.ia = call ptr @util_strsav(ptr noundef nonnull %i.a) #14
  %i.ib = load ptr, ptr %i.go, align 8, !tbaa !42
  %4 = sext i32 %3 to i64                         ; 4 uses
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %4
  store ptr %i.ia, ptr %i.ic, align 8, !tbaa !43
  %i.id = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %i.hv, ptr noundef %i.hs) #14 ; 0 uses
  %i.ie = call ptr @util_strsav(ptr noundef nonnull %i.a) #14
  %i.if = load ptr, ptr %i.go, align 8, !tbaa !42
  %i.ig = getelementptr [8 x i8], ptr %i.if, i64 %4
  %i.ih = getelementptr i8, ptr %i.ig, i64 8
  store ptr %i.ie, ptr %i.ih, align 8, !tbaa !43
  %i.ii = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %i.hj, ptr noundef %i.hy) #14 ; 0 uses
  %i.ij = call ptr @util_strsav(ptr noundef nonnull %i.a) #14
  %i.ik = load ptr, ptr %i.go, align 8, !tbaa !42
  %i.il = getelementptr [8 x i8], ptr %i.ik, i64 %4
  %i.im = getelementptr i8, ptr %i.il, i64 16
  store ptr %i.ij, ptr %i.im, align 8, !tbaa !43
  %i.in = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %i.hj, ptr noundef %i.hs) #14 ; 0 uses
  %i.io = call ptr @util_strsav(ptr noundef nonnull %i.a) #14
  %i.ip = load ptr, ptr %i.go, align 8, !tbaa !42 ; 2 uses
  %i.iq = getelementptr [8 x i8], ptr %i.ip, i64 %4
  %i.ir = getelementptr i8, ptr %i.iq, i64 24
  store ptr %i.io, ptr %i.ir, align 8, !tbaa !43
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %i.is = load i32, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %i.it = sext i32 %i.is to i64
  %i.iu = icmp slt i64 %indvars.iv.next260, %i.it
  br i1 %i.iu, label %bb.ah, label %.preheader210

.lr.ph232:                                        ; preds = %.lr.ph232.preheader, %bb.aj
  %indvars.iv262 = phi i64 [ 0, %.lr.ph232.preheader ], [ %indvars.iv.next263, %bb.aj ] ; 3 uses
  %.1153230 = phi i32 [ 0, %.lr.ph232.preheader ], [ %.2154, %bb.aj ] ; 3 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv262
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !4
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph232
  %.idx = shl nuw nsw i64 %indvars.iv262, 4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx ; 3 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !43
  %i.ja = shl nsw i32 %.1153230, 1
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.jb ; 2 uses
  store ptr %i.iz, ptr %i.jc, align 8, !tbaa !43
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !43
  %i.jf = getelementptr i8, ptr %i.jc, i64 8
  store ptr %i.je, ptr %i.jf, align 8, !tbaa !43
  %i.jg = add nsw i32 %.1153230, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iy, i8 0, i64 16, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph232, %bb.ai
  %.2154 = phi i32 [ %i.jg, %bb.ai ], [ %.1153230, %.lr.ph232 ]
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %exitcond266.not = icmp eq i64 %indvars.iv.next263, %wide.trip.count265
  br i1 %exitcond266.not, label %._crit_edge233, label %.lr.ph232

._crit_edge233:                                   ; preds = %bb.aj, %.preheader210
  %i.jh = icmp slt i32 %i.dn, %i.di
  br i1 %i.jh, label %.lr.ph236, label %.preheader

.lr.ph236:                                        ; preds = %._crit_edge233
  %i.ji = shl nsw i32 %.lcssa, 2
  %i.jj = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  %i.jk = shl nsw i32 %i.jj, 1
  %invariant.op = add i32 %i.ji, %i.jk            ; 4 uses
  %.reass = sub i32 %invariant.op, %i.dn          ; 4 uses
  %i.jl = sext i32 %i.dn to i64                   ; 9 uses
  %wide.trip.count270 = sext i32 %i.di to i64     ; 7 uses
  %i.jm = sub nsw i64 %wide.trip.count270, %i.jl  ; 3 uses
  %min.iters.check340 = icmp ult i64 %i.jm, 24
  br i1 %min.iters.check340, label %scalar.ph339.preheader, label %vector.scevcheck334

vector.scevcheck334:                              ; preds = %.lr.ph236
  %i.jn = xor i64 %i.jl, -1
  %i.jo = add nsw i64 %i.jn, %wide.trip.count270  ; 2 uses
  %i.jp = trunc i64 %i.jo to i32
  %i.jq = add i32 %invariant.op, %i.jp
  %i.jr = icmp slt i32 %i.jq, %invariant.op
  %i.js = icmp ugt i64 %i.jo, 4294967295
  %i.jt = or i1 %i.jr, %i.js
  br i1 %i.jt, label %scalar.ph339.preheader, label %vector.memcheck335

vector.memcheck335:                               ; preds = %vector.scevcheck334
  %i.ju = shl nsw i64 %i.jl, 3
  %scevgep = getelementptr i8, ptr %i.gp, i64 %i.ju
  %i.jv = shl nsw i64 %wide.trip.count270, 3
  %scevgep336 = getelementptr i8, ptr %i.gp, i64 %i.jv
  %i.jw = sext i32 %invariant.op to i64           ; 2 uses
  %i.jx = shl nsw i64 %i.jw, 3
  %scevgep337 = getelementptr i8, ptr %i.gy, i64 %i.jx
  %i.jy = add nsw i64 %wide.trip.count270, %i.jw
  %i.jz = sub nsw i64 %i.jy, %i.jl
  %i.ka = shl nsw i64 %i.jz, 3
  %scevgep338 = getelementptr i8, ptr %i.gy, i64 %i.ka
  %bound0 = icmp ult ptr %scevgep, %scevgep338
  %bound1 = icmp ult ptr %scevgep337, %scevgep336
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph339.preheader, label %vector.ph341

vector.ph341:                                     ; preds = %vector.memcheck335
  %n.vec342 = and i64 %i.jm, -4                   ; 3 uses
  %i.kb = add nsw i64 %n.vec342, %i.jl
  br label %vector.body343

vector.body343:                                   ; preds = %vector.body343, %vector.ph341
  %index344 = phi i64 [ 0, %vector.ph341 ], [ %index.next347, %vector.body343 ] ; 2 uses
  %i.kc = add i64 %index344, %i.jl                ; 2 uses
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.kc ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16 ; 2 uses
  %wide.load345 = load <2 x ptr>, ptr %i.kd, align 8, !tbaa !43, !alias.scope !44, !noalias !47
  %wide.load346 = load <2 x ptr>, ptr %i.ke, align 8, !tbaa !43, !alias.scope !44, !noalias !47
  %i.kf = trunc nsw i64 %i.kc to i32
  %i.kg = add i32 %.reass, %i.kf
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.kh ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store <2 x ptr> %wide.load345, ptr %i.ki, align 8, !tbaa !43, !alias.scope !47
  store <2 x ptr> %wide.load346, ptr %i.kj, align 8, !tbaa !43, !alias.scope !47
  store <2 x ptr> splat (ptr null), ptr %i.kd, align 8, !tbaa !43, !alias.scope !44, !noalias !47
  store <2 x ptr> splat (ptr null), ptr %i.ke, align 8, !tbaa !43, !alias.scope !44, !noalias !47
  %index.next347 = add nuw i64 %index344, 4       ; 2 uses
  %i.kk = icmp eq i64 %index.next347, %n.vec342
  br i1 %i.kk, label %middle.block348, label %vector.body343, !llvm.loop !49

middle.block348:                                  ; preds = %vector.body343
  %cmp.n349 = icmp eq i64 %i.jm, %n.vec342
  br i1 %cmp.n349, label %.preheader, label %scalar.ph339.preheader

scalar.ph339.preheader:                           ; preds = %vector.memcheck335, %vector.scevcheck334, %.lr.ph236, %middle.block348
  %indvars.iv267.ph = phi i64 [ %i.jl, %vector.memcheck335 ], [ %i.jl, %vector.scevcheck334 ], [ %i.jl, %.lr.ph236 ], [ %i.kb, %middle.block348 ] ; 6 uses
  %i.kl = sub nsw i64 %wide.trip.count270, %indvars.iv267.ph
  %xtraiter359 = and i64 %i.kl, 1
  %lcmp.mod360.not = icmp eq i64 %xtraiter359, 0
  br i1 %lcmp.mod360.not, label %scalar.ph339.prol.loopexit, label %scalar.ph339.prol

scalar.ph339.prol:                                ; preds = %scalar.ph339.preheader
  %i.km = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %indvars.iv267.ph ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !43
  %i.ko = trunc nsw i64 %indvars.iv267.ph to i32
  %i.kp = add i32 %.reass, %i.ko
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.kq
  store ptr %i.kn, ptr %i.kr, align 8, !tbaa !43
  store ptr null, ptr %i.km, align 8, !tbaa !43
  %indvars.iv.next268.prol = add nsw i64 %indvars.iv267.ph, 1
  br label %scalar.ph339.prol.loopexit

scalar.ph339.prol.loopexit:                       ; preds = %scalar.ph339.prol, %scalar.ph339.preheader
  %indvars.iv267.unr = phi i64 [ %indvars.iv267.ph, %scalar.ph339.preheader ], [ %indvars.iv.next268.prol, %scalar.ph339.prol ]
  %i.ks = add nsw i64 %wide.trip.count270, -1
  %i.kt = icmp eq i64 %indvars.iv267.ph, %i.ks
  br i1 %i.kt, label %.preheader, label %scalar.ph339

.preheader:                                       ; preds = %scalar.ph339.prol.loopexit, %scalar.ph339, %middle.block348, %._crit_edge233
  %i.ku = icmp sgt i32 %i.di, 0
  br i1 %i.ku, label %.lr.ph238.preheader, label %._crit_edge239

.lr.ph238.preheader:                              ; preds = %.preheader
  %wide.trip.count275 = zext nneg i32 %i.di to i64
  br label %.lr.ph238

scalar.ph339:                                     ; preds = %scalar.ph339.prol.loopexit, %scalar.ph339
  %indvars.iv267 = phi i64 [ %indvars.iv.next268.1, %scalar.ph339 ], [ %indvars.iv267.unr, %scalar.ph339.prol.loopexit ] ; 4 uses
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %indvars.iv267 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !43
  %i.kx = trunc nsw i64 %indvars.iv267 to i32
  %i.ky = add i32 %.reass, %i.kx
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.kz
  store ptr %i.kw, ptr %i.la, align 8, !tbaa !43
  store ptr null, ptr %i.kv, align 8, !tbaa !43
  %indvars.iv.next268 = add nsw i64 %indvars.iv267, 1 ; 2 uses
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %indvars.iv.next268 ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !43
  %i.ld = trunc nsw i64 %indvars.iv.next268 to i32
  %i.le = add i32 %.reass, %i.ld
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.lf
  store ptr %i.lc, ptr %i.lg, align 8, !tbaa !43
  store ptr null, ptr %i.lb, align 8, !tbaa !43
  %indvars.iv.next268.1 = add nsw i64 %indvars.iv267, 2 ; 2 uses
  %exitcond271.not.1 = icmp eq i64 %indvars.iv.next268.1, %wide.trip.count270
  br i1 %exitcond271.not.1, label %.preheader, label %scalar.ph339, !llvm.loop !50

.lr.ph238:                                        ; preds = %.lr.ph238.preheader, %bb.al
  %indvars.iv272 = phi i64 [ 0, %.lr.ph238.preheader ], [ %indvars.iv.next273, %bb.al ] ; 2 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv272 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !43 ; 2 uses
  %.not169 = icmp eq ptr %i.li, null
  br i1 %.not169, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph238
  call void @free(ptr noundef nonnull %i.li) #14
  store ptr null, ptr %i.lh, align 8, !tbaa !43
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph238, %bb.ak
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %exitcond276.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count275
  br i1 %exitcond276.not, label %._crit_edge239.thread, label %.lr.ph238

._crit_edge239:                                   ; preds = %.preheader
  %.not167 = icmp eq ptr %i.gp, null
  br i1 %.not167, label %bb.am, label %._crit_edge239.thread

._crit_edge239.thread:                            ; preds = %bb.al, %._crit_edge239
  call void @free(ptr noundef nonnull %i.gp) #14
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge239, %._crit_edge239.thread, %bb.af
  %i.lj = load i32, ptr %i.c, align 8, !tbaa !21
  %i.lk = icmp sgt i32 %i.lj, 0
  br i1 %i.lk, label %.lr.ph242, label %._crit_edge243

.lr.ph242:                                        ; preds = %bb.am
  %i.ll = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 112), align 8, !tbaa !51
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph242, %bb.an
  %.6240 = phi i32 [ 0, %.lr.ph242 ], [ %i.lq, %bb.an ] ; 2 uses
  %i.lm = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  %i.ln = add nsw i32 %i.lm, %.6240
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.ll, i64 %i.lo
  store i32 0, ptr %i.lp, align 4, !tbaa !4
  %i.lq = add nuw nsw i32 %.6240, 1               ; 2 uses
  %i.lr = load i32, ptr %i.c, align 8, !tbaa !21
  %i.ls = icmp slt i32 %i.lq, %i.lr
  br i1 %i.ls, label %bb.an, label %._crit_edge243

._crit_edge243:                                   ; preds = %bb.an, %bb.am
  %.not168 = icmp eq ptr %i.h, null
  br i1 %.not168, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge243
  call void @free(ptr noundef nonnull %i.h) #14
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %._crit_edge243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @makeup_labels(...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare void @fatal(...) local_unnamed_addr #2

declare void @setdown_cube(...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare void @cube_setup(...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare ptr @util_strsav(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @pairvar(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !27
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !31
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [4 x i8], ptr %i.a, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4    ; 2 uses
  %i.g = load i32, ptr %1, align 8, !tbaa !21
  %i.h = mul nsw i32 %i.g, -4
  %i.i = tail call ptr (ptr, i32, i32, ...) @sf_delcol(ptr noundef %0, i32 noundef %i.f, i32 noundef %i.h) #14 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !54
  %i.n = load i32, ptr %i.i, align 8, !tbaa !55   ; 3 uses
  %i.o = mul nsw i32 %i.n, %i.m                   ; 2 uses
  %i.p = sext i32 %i.o to i64
  %.idx = shl nsw i64 %i.p, 2
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 %.idx ; 2 uses
  %i.r = icmp sgt i32 %i.o, 0
  br i1 %i.r, label %.preheader.lr.ph, label %._crit_edge56

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.preheader, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.x = sext i32 %i.n to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us, %.preheader.lr.ph.split.us
  %.04855.us = phi ptr [ %i.k, %.preheader.lr.ph.split.us ], [ %i.y, %.preheader.us ]
  %i.y = getelementptr inbounds [4 x i8], ptr %.04855.us, i64 %i.x ; 2 uses
  %i.z = icmp ult ptr %i.y, %i.q
  br i1 %i.z, label %.preheader.us, label %._crit_edge56

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.aa = phi i32 [ %i.dl, %._crit_edge ], [ %i.n, %.preheader.lr.ph ]
  %i.ab = phi i32 [ %i.dm, %._crit_edge ], [ %i.v, %.preheader.lr.ph ] ; 2 uses
  %.04855 = phi ptr [ %i.do, %._crit_edge ], [ %i.k, %.preheader.lr.ph ] ; 9 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [4 x i8], ptr %i.s, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4  ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [4 x i8], ptr %i.s, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4  ; 3 uses
  %i.ar = add nsw i32 %i.aq, 1                    ; 2 uses
  %i.as = ashr i32 %i.ar, 5
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr [4 x i8], ptr %.04855, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = and i32 %i.ar, 31
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = and i32 %i.ay, %i.aw                    ; 2 uses
  %i.ba = ashr i32 %i.aq, 5
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr [4 x i8], ptr %.04855, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = and i32 %i.aq, 31
  %i.bg = shl nuw i32 1, %i.bf
  %i.bh = and i32 %i.be, %i.bg                    ; 2 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %2 = shl i32 %indvars.iv.tr, 2
  %3 = add nsw i32 %2, %i.f                       ; 5 uses
  %i.bi = ashr i32 %i.ak, 5
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr [4 x i8], ptr %.04855, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bn = and i32 %i.ak, 31
  %i.bo = shl nuw i32 1, %i.bn
  %i.bp = and i32 %i.bm, %i.bo
  %.not = icmp eq i32 %i.bp, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not49 = icmp eq i32 %i.bh, 0
  br i1 %.not49, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = add nsw i32 %3, 3                       ; 2 uses
  %i.br = and i32 %i.bq, 31
  %i.bs = shl nuw i32 1, %i.br
  %i.bt = ashr i32 %i.bq, 5
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr [4 x i8], ptr %.04855, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 4      ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = or i32 %i.bx, %i.bs
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not50 = icmp eq i32 %i.az, 0
  br i1 %.not50, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bz = add nsw i32 %3, 2                       ; 2 uses
  %i.ca = and i32 %i.bz, 31
  %i.cb = shl nuw i32 1, %i.ca
  %i.cc = ashr i32 %i.bz, 5
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [4 x i8], ptr %.04855, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 4      ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !4
  %i.ch = or i32 %i.cg, %i.cb
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  %i.ci = add nsw i32 %i.ak, 1                    ; 2 uses
  %i.cj = ashr i32 %i.ci, 5
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr [4 x i8], ptr %.04855, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  %i.co = and i32 %i.ci, 31
  %i.cp = shl nuw i32 1, %i.co
  %i.cq = and i32 %i.cn, %i.cp
  %.not51 = icmp eq i32 %i.cq, 0
  br i1 %.not51, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not52 = icmp eq i32 %i.bh, 0
  br i1 %.not52, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cr = add nsw i32 %3, 1                       ; 2 uses
  %i.cs = and i32 %i.cr, 31
  %i.ct = shl nuw i32 1, %i.cs
  %i.cu = ashr i32 %i.cr, 5
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr [4 x i8], ptr %.04855, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 4      ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  %i.cz = or i32 %i.cy, %i.ct
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not53 = icmp eq i32 %i.az, 0
  br i1 %.not53, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.da = and i32 %3, 31
  %i.db = shl nuw i32 1, %i.da
  %i.dc = ashr i32 %3, 5
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr [4 x i8], ptr %.04855, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 4      ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !4
  %i.dh = or i32 %i.dg, %i.db
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !4
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.di = load i32, ptr %1, align 8, !tbaa !21    ; 2 uses
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i64 %indvars.iv.next, %i.dj
  br i1 %i.dk, label %bb.b, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i32, ptr %i.i, align 8, !tbaa !55
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.dl = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.aa, %.preheader ] ; 2 uses
  %i.dm = phi i32 [ %i.di, %._crit_edge.loopexit ], [ %i.ab, %.preheader ]
  %i.dn = sext i32 %i.dl to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %.04855, i64 %i.dn ; 2 uses
  %i.dp = icmp ult ptr %i.do, %i.q
  br i1 %i.dp, label %.preheader, label %._crit_edge56, !llvm.loop !56

._crit_edge56:                                    ; preds = %.preheader.us, %._crit_edge, %bb.a
  ret ptr %i.i
}

declare ptr @sf_delcol(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @delvar(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %i.c = phi i32 [ %i.s, %bb.g ], [ %i.a, %bb.a ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.a ] ; 5 uses
  %.038 = phi i32 [ %.1, %bb.g ], [ 0, %bb.a ]    ; 5 uses
  %.02236 = phi i32 [ %.123, %bb.g ], [ 0, %bb.a ] ; 5 uses
  %.02435 = phi i32 [ %.125, %bb.g ], [ undef, %bb.a ] ; 4 uses
  %.02634 = phi i32 [ %.127, %bb.g ], [ 0, %bb.a ]
  %.02833 = phi ptr [ %.129, %bb.g ], [ %0, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %.not30 = icmp eq i32 %i.e, 0                   ; 2 uses
  %.not31 = icmp eq i32 %.02634, 0                ; 2 uses
  br i1 %.not30, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  br i1 %.not31, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = add nsw i32 %i.h, %.02236
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = sub nsw i32 %.02435, %.038
  %i.q = tail call ptr (ptr, i32, i32, ...) @sf_delcol(ptr noundef %.02833, i32 noundef %i.p, i32 noundef %.02236) #14
  %i.r = add nsw i32 %.038, %.02236
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.f, %bb.e
  %i.s = phi i32 [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %.pre, %bb.f ], [ %i.c, %bb.e ] ; 2 uses
  %.129 = phi ptr [ %.02833, %bb.c ], [ %.02833, %bb.d ], [ %i.q, %bb.f ], [ %.02833, %bb.e ] ; 3 uses
  %.127 = phi i32 [ 1, %bb.c ], [ 1, %bb.d ], [ 0, %bb.f ], [ 0, %bb.e ]
  %.125 = phi i32 [ %.02435, %bb.c ], [ %i.l, %bb.d ], [ %.02435, %bb.f ], [ %.02435, %bb.e ] ; 2 uses
  %.123 = phi i32 [ %i.i, %bb.c ], [ %i.o, %bb.d ], [ %.02236, %bb.f ], [ %.02236, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %.038, %bb.c ], [ %.038, %bb.d ], [ %i.r, %bb.f ], [ %.038, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  br i1 %.not30, label %._crit_edge.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.v = sub nsw i32 %.125, %.1
  %i.w = tail call ptr (ptr, i32, i32, ...) @sf_delcol(ptr noundef %.129, i32 noundef %i.v, i32 noundef %.123) #14
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.h, %._crit_edge
  %.2 = phi ptr [ %i.w, %bb.h ], [ %.129, %._crit_edge ], [ %0, %bb.a ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local void @find_optimal_pairing(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @find_pairing_cost(ptr noundef %0, i32 noundef %1) ; 6 uses
  %i.b = load i32, ptr @summary, align 4, !tbaa !4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %thread-pre-split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) ; 0 uses
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.03441 = phi i32 [ %i.f, %.lr.ph ], [ 0, %bb.b ]
  %i.f = add nuw nsw i32 %.03441, 1               ; 3 uses
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.f) ; 0 uses
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph48, label %.loopexit.thread

.lr.ph48:                                         ; preds = %._crit_edge, %._crit_edge45
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %._crit_edge45 ], [ 0, %._crit_edge ] ; 2 uses
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 3 uses
  %i.l = trunc nuw nsw i64 %indvars.iv.next54 to i32
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.l) ; 0 uses
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %.lr.ph48
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv53
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph44, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.r) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %bb.c, label %._crit_edge45

._crit_edge45:                                    ; preds = %bb.c, %.lr.ph48
  %putchar40 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next54, %i.x
  br i1 %i.y, label %.lr.ph48, label %.loopexit

thread-pre-split:                                 ; preds = %bb.a
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge45, %thread-pre-split
  %i.z = phi i32 [ %.pr, %thread-pre-split ], [ %i.w, %._crit_edge45 ]
  %i.aa = icmp slt i32 %i.z, 15
  br i1 %i.aa, label %.loopexit.thread, label %bb.d

.loopexit.thread:                                 ; preds = %._crit_edge, %.loopexit
  %i.ab = tail call ptr @pair_best_cost(ptr noundef %i.a)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !8
  br label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = tail call i32 @greedy_best_cost(ptr noundef %i.a, ptr noundef nonnull %i.ad) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.thread
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !8  ; 4 uses
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  %i.aj = load i32, ptr %i.ah, align 8, !tbaa !21
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i, label %print_pair.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
end_hunk_0
