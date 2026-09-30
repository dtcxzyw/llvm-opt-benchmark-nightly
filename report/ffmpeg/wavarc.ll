Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/wavarc?download=true
inline.NumInlined: 77
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 41
begin_hunk_0_@wavarc_decode:bb.a
  %i.ju = tail call i32 @llvm.umin.i32(i32 %.pre.i, i32 %i.jt) ; 2 uses
  store i32 %i.ju, ptr %i.bh, align 8, !tbaa !48
  %i.jv = tail call i32 @llvm.fshl.i32(i32 %.0.lcssa.i.i178.i, i32 %i.js, i32 2) ; 2 uses
  %i.jw = icmp ugt i32 %i.jv, 31                  ; 2 uses
  %spec.store.select152.i = select i1 %i.jw, i32 0, i32 %i.jv
  store i32 %spec.store.select152.i, ptr %i.bv, align 8
  br i1 %i.jw, label %get_urice.exit185.i.decode_2slp.exit.thread.thread.loopexit_crit_edge, label %do_stereo.exit.i, !llvm.loop !57

bb.aa:                                            ; preds = %bb.v
  %i.jx = load i32, ptr %i.bp, align 4, !tbaa !36
  %i.jy = icmp eq i32 %i.jx, 5                    ; 3 uses
  %i.jz = lshr i32 %.val.i166.i, 3
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 1, !tbaa !30
  %i.kd = tail call i32 @llvm.bswap.i32(i32 %i.kc)
  %i.ke = and i32 %.val.i166.i, 7
  %i.kf = shl i32 %i.kd, %i.ke
  %..i = select i1 %i.jy, i32 8, i32 16
  %.326.i = select i1 %i.jy, i32 24, i32 16
  %.327.i = select i1 %i.jy, i32 -128, i32 -32768
  %i.kg = add i32 %..i, %.val.i166.i
  %i.kh = tail call i32 @llvm.umin.i32(i32 %.pre.i, i32 %i.kg)
  %i.ki = ashr i32 %i.kf, %.326.i
  %i.kj = add nsw i32 %i.ki, %.327.i              ; 2 uses
  store i32 %i.kh, ptr %i.bh, align 8, !tbaa !48
  %i.kk = load i32, ptr %i.h, align 4, !tbaa !43  ; 3 uses
  %i.kl = icmp sgt i32 %i.kk, 0
  br i1 %i.kl, label %.lr.ph237.preheader.i, label %.loopexit.i

.lr.ph237.preheader.i:                            ; preds = %bb.aa
  %wide.trip.count281.i = zext nneg i32 %i.kk to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.kk, 8
  br i1 %min.iters.check, label %.lr.ph237.i.preheader, label %vector.ph287

vector.ph287:                                     ; preds = %.lr.ph237.preheader.i
  %n.vec = and i64 %wide.trip.count281.i, 2147483640 ; 3 uses
  %broadcast.splatinsert288 = insertelement <4 x i32> poison, i32 %i.kj, i64 0
  %broadcast.splat289 = shufflevector <4 x i32> %broadcast.splatinsert288, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body290

vector.body290:                                   ; preds = %vector.body290, %vector.ph287
  %index291 = phi i64 [ 0, %vector.ph287 ], [ %index.next292, %vector.body290 ] ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %index291 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 280
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 296
  store <4 x i32> %broadcast.splat289, ptr %i.kn, align 4, !tbaa !39
  store <4 x i32> %broadcast.splat289, ptr %i.ko, align 4, !tbaa !39
  %index.next292 = add nuw i64 %index291, 8       ; 2 uses
  %i.kp = icmp eq i64 %index.next292, %n.vec
  br i1 %i.kp, label %middle.block293, label %vector.body290, !llvm.loop !58

middle.block293:                                  ; preds = %vector.body290
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count281.i
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph237.i.preheader

.lr.ph237.i.preheader:                            ; preds = %.lr.ph237.preheader.i, %middle.block293
  %indvars.iv278.i.ph = phi i64 [ 0, %.lr.ph237.preheader.i ], [ %n.vec, %middle.block293 ]
  br label %.lr.ph237.i

.lr.ph237.i:                                      ; preds = %.lr.ph237.i.preheader, %.lr.ph237.i
  %indvars.iv278.i = phi i64 [ %indvars.iv.next279.i, %.lr.ph237.i ], [ %indvars.iv278.i.ph, %.lr.ph237.i.preheader ] ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv278.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 280
  store i32 %i.kj, ptr %i.kr, align 4, !tbaa !39
  %indvars.iv.next279.i = add nuw nsw i64 %indvars.iv278.i, 1 ; 2 uses
  %exitcond282.not.i = icmp eq i64 %indvars.iv.next279.i, %wide.trip.count281.i
  br i1 %exitcond282.not.i, label %.loopexit.i, label %.lr.ph237.i, !llvm.loop !59

.lr.ph232.i:                                      ; preds = %.preheader208.i, %.lr.ph232.i
  %indvars.iv271.i = phi i64 [ %indvars.iv.next272.i, %.lr.ph232.i ], [ 0, %.preheader208.i ] ; 2 uses
  %i.ks = tail call fastcc i32 @get_srice(ptr noundef nonnull %i.c, i32 noundef %.0133.i)
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv271.i ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 276
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !39
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 272
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !39
  %i.ky = sub i32 %i.kv, %i.kx
  %i.kz = mul i32 %i.ky, 3
  %i.la = getelementptr inbounds nuw i8, ptr %i.kt, i64 268
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !39
  %i.lc = add i32 %i.lb, %i.ks
  %i.ld = add i32 %i.lc, %i.kz
  %i.le = getelementptr inbounds nuw i8, ptr %i.kt, i64 280
  store i32 %i.ld, ptr %i.le, align 4, !tbaa !39
  %indvars.iv.next272.i = add nuw nsw i64 %indvars.iv271.i, 1 ; 2 uses
  %i.lf = load i32, ptr %i.h, align 4, !tbaa !43
  %i.lg = sext i32 %i.lf to i64
  %i.lh = icmp slt i64 %indvars.iv.next272.i, %i.lg
  br i1 %i.lh, label %.lr.ph232.i, label %.loopexit.i, !llvm.loop !60

.lr.ph230.i:                                      ; preds = %.preheader210.i, %.lr.ph230.i
  %indvars.iv268.i = phi i64 [ %indvars.iv.next269.i, %.lr.ph230.i ], [ 0, %.preheader210.i ] ; 2 uses
  %i.li = tail call fastcc i32 @get_srice(ptr noundef nonnull %i.c, i32 noundef %.0133.i)
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv268.i ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 276
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !39
  %i.lm = shl i32 %i.ll, 1
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 272
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !39
  %i.lp = sub i32 %i.li, %i.lo
  %i.lq = add i32 %i.lp, %i.lm
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lj, i64 280
  store i32 %i.lq, ptr %i.lr, align 4, !tbaa !39
  %indvars.iv.next269.i = add nuw nsw i64 %indvars.iv268.i, 1 ; 2 uses
  %i.ls = load i32, ptr %i.h, align 4, !tbaa !43
  %i.lt = sext i32 %i.ls to i64
  %i.lu = icmp slt i64 %indvars.iv.next269.i, %i.lt
  br i1 %i.lu, label %.lr.ph230.i, label %.loopexit.i, !llvm.loop !61

.lr.ph228.i:                                      ; preds = %.preheader212.i, %.lr.ph228.i
  %indvars.iv265.i = phi i64 [ %indvars.iv.next266.i, %.lr.ph228.i ], [ 0, %.preheader212.i ] ; 2 uses
  %i.lv = tail call fastcc i32 @get_srice(ptr noundef nonnull %i.c, i32 noundef %.0133.i)
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv265.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 280
  store i32 %i.lv, ptr %i.lx, align 4, !tbaa !39
  %indvars.iv.next266.i = add nuw nsw i64 %indvars.iv265.i, 1 ; 2 uses
  %i.ly = load i32, ptr %i.h, align 4, !tbaa !43
  %i.lz = sext i32 %i.ly to i64
  %i.ma = icmp slt i64 %indvars.iv.next266.i, %i.lz
  br i1 %i.ma, label %.lr.ph228.i, label %.loopexit.i, !llvm.loop !62

.lr.ph226.i:                                      ; preds = %.preheader214.i, %.lr.ph226.i
  %indvars.iv262.i = phi i64 [ %indvars.iv.next263.i, %.lr.ph226.i ], [ 0, %.preheader214.i ] ; 2 uses
  %i.mb = tail call fastcc i32 @get_srice(ptr noundef nonnull %i.c, i32 noundef %.0133.i)
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv262.i ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 276
  %i.me = load i32, ptr %i.md, align 4, !tbaa !39
  %i.mf = add i32 %i.me, %i.mb
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 280
  store i32 %i.mf, ptr %i.mg, align 4, !tbaa !39
  %indvars.iv.next263.i = add nuw nsw i64 %indvars.iv262.i, 1 ; 2 uses
  %i.mh = load i32, ptr %i.h, align 4, !tbaa !43
  %i.mi = sext i32 %i.mh to i64
  %i.mj = icmp slt i64 %indvars.iv.next263.i, %i.mi
  br i1 %i.mj, label %.lr.ph226.i, label %.loopexit.i, !llvm.loop !63

bb.ab:                                            ; preds = %bb.v
  %i.mk = sub nsw i32 %.val7.i.i.i, %.val.i166.i  ; 3 uses
  %i.ml = icmp sgt i32 %i.mk, 0
  br i1 %i.ml, label %.lr.ph.i.i189.i, label %get_urice.exit195.i

.lr.ph.i.i189.i:                                  ; preds = %bb.ab, %bb.ac
  %spec.select.i8.i.i190.i = phi i32 [ %spec.select.i.i.i192.i, %bb.ac ], [ %.val.i166.i, %bb.ab ] ; 4 uses
  %.05.i.i191.i = phi i32 [ %i.mw, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.mm = lshr i32 %spec.select.i8.i.i190.i, 3
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.mn
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !30
  %i.mq = icmp slt i32 %spec.select.i8.i.i190.i, %.pre.i
  %i.mr = zext i1 %i.mq to i32
  %spec.select.i.i.i192.i = add i32 %spec.select.i8.i.i190.i, %i.mr ; 4 uses
  %i.ms = zext i8 %i.mp to i32
  %i.mt = and i32 %spec.select.i8.i.i190.i, 7
  store i32 %spec.select.i.i.i192.i, ptr %i.bh, align 8, !tbaa !48
  %i.mu = lshr exact i32 128, %i.mt
  %i.mv = and i32 %i.mu, %i.ms
  %.not.not.i.i193.i = icmp eq i32 %i.mv, 0
  br i1 %.not.not.i.i193.i, label %bb.ac, label %get_urice.exit195.i

bb.ac:                                            ; preds = %.lr.ph.i.i189.i
  %i.mw = add nuw nsw i32 %.05.i.i191.i, 1        ; 2 uses
  %exitcond.not.i.i194.i = icmp eq i32 %i.mw, %i.mk
  br i1 %exitcond.not.i.i194.i, label %get_urice.exit195.i, label %.lr.ph.i.i189.i, !llvm.loop !0

get_urice.exit195.i:                              ; preds = %bb.ac, %.lr.ph.i.i189.i, %bb.ab
  %i.mx = phi i32 [ %.val.i166.i, %bb.ab ], [ %spec.select.i.i.i192.i, %.lr.ph.i.i189.i ], [ %spec.select.i.i.i192.i, %bb.ac ] ; 3 uses
  %.0.lcssa.i.i188.i = phi i32 [ 0, %bb.ab ], [ %i.mk, %bb.ac ], [ %.05.i.i191.i, %.lr.ph.i.i189.i ]
  %i.my = lshr i32 %i.mx, 3
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.mz
  %i.nb = load i32, ptr %i.na, align 1, !tbaa !30
  %i.nc = tail call i32 @llvm.bswap.i32(i32 %i.nb)
  %i.nd = and i32 %i.mx, 7
  %i.ne = shl i32 %i.nc, %i.nd
  %i.nf = add i32 %i.mx, 2
  %i.ng = tail call i32 @llvm.umin.i32(i32 %.pre.i, i32 %i.nf) ; 2 uses
  store i32 %i.ng, ptr %i.bh, align 8, !tbaa !48
  %i.nh = tail call i32 @llvm.fshl.i32(i32 %.0.lcssa.i.i188.i, i32 %i.ne, i32 2) ; 5 uses
  %i.ni = icmp ugt i32 %i.nh, 70
  br i1 %i.ni, label %decode_2slp.exit.thread.thread, label %.preheader218.i

.preheader218.i:                                  ; preds = %get_urice.exit195.i
  %.not242.i = icmp eq i32 %i.nh, 0               ; 2 uses
  br i1 %.not242.i, label %.preheader216.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader218.i
  %i.nj = getelementptr inbounds nuw [280 x i8], ptr %i.bq, i64 %i.fn
  %wide.trip.count.i = zext nneg i32 %i.nh to i64
  br label %bb.ad

.preheader216.i:                                  ; preds = %get_srice.exit.i, %.preheader218.i
  %i.nk = load i32, ptr %i.h, align 4, !tbaa !43
  %i.nl = icmp sgt i32 %i.nk, 0
  br i1 %i.nl, label %.preheader203.lr.ph.i, label %.loopexit.i

.preheader203.lr.ph.i:                            ; preds = %.preheader216.i
  %i.nm = getelementptr inbounds nuw [280 x i8], ptr %i.bq, i64 %i.fn ; 4 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.nh, i32 1)
  %wide.trip.count257.i = zext nneg i32 %smax.i to i64 ; 6 uses
  %i.nn = add nsw i64 %wide.trip.count257.i, -1   ; 2 uses
  %min.iters.check296 = icmp slt i32 %i.nh, 16
  %i.no = trunc nsw i64 %i.nn to i34
  %mul.result = shl nsw i34 %i.no, 2
  %mul.overflow = icmp ugt i64 %i.nn, 4294967295
  %n.vec298 = and i64 %wide.trip.count257.i, 120  ; 3 uses
  %cmp.n309 = icmp eq i64 %n.vec298, %wide.trip.count257.i
  %xtraiter = and i64 %wide.trip.count257.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.np = add nsw i64 %wide.trip.count257.i, -1
  br label %.preheader203.i

bb.ad:                                            ; preds = %get_srice.exit.i, %.lr.ph.i
  %spec.select.i.i.i.i.i159 = phi i32 [ %i.ng, %.lr.ph.i ], [ %i.om, %get_srice.exit.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %get_srice.exit.i ] ; 2 uses
  %i.nq = sub nsw i32 %.val7.i.i.i, %spec.select.i.i.i.i.i159 ; 3 uses
  %i.nr = icmp sgt i32 %i.nq, 0
  br i1 %i.nr, label %.lr.ph.i.i.i.i, label %get_srice.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ad, %bb.ae
  %spec.select.i8.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %bb.ae ], [ %spec.select.i.i.i.i.i159, %bb.ad ] ; 4 uses
  %.05.i.i.i.i = phi i32 [ %i.oc, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.ns = lshr i32 %spec.select.i8.i.i.i.i, 3
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.nt
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !30
  %i.nw = icmp slt i32 %spec.select.i8.i.i.i.i, %.pre.i
  %i.nx = zext i1 %i.nw to i32
  %spec.select.i.i.i.i.i = add i32 %spec.select.i8.i.i.i.i, %i.nx ; 4 uses
  %i.ny = zext i8 %i.nv to i32
  %i.nz = and i32 %spec.select.i8.i.i.i.i, 7
  store i32 %spec.select.i.i.i.i.i, ptr %i.bh, align 8, !tbaa !48
  %i.oa = lshr exact i32 128, %i.nz
  %i.ob = and i32 %i.oa, %i.ny
  %.not.not.i.i.i.i = icmp eq i32 %i.ob, 0
  br i1 %.not.not.i.i.i.i, label %bb.ae, label %get_srice.exit.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i
  %i.oc = add nuw nsw i32 %.05.i.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.oc, %i.nq
  br i1 %exitcond.not.i.i.i.i, label %get_srice.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

get_srice.exit.i:                                 ; preds = %bb.ae, %.lr.ph.i.i.i.i, %bb.ad
  %i.od = phi i32 [ %spec.select.i.i.i.i.i159, %bb.ad ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i.i, %bb.ae ] ; 3 uses
  %.0.lcssa.i.i.i.i = phi i32 [ 0, %bb.ad ], [ %i.nq, %bb.ae ], [ %.05.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.oe = lshr i32 %i.od, 3
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.of
  %i.oh = load i32, ptr %i.og, align 1, !tbaa !30
  %i.oi = tail call i32 @llvm.bswap.i32(i32 %i.oh)
  %i.oj = and i32 %i.od, 7
  %i.ok = shl i32 %i.oi, %i.oj
  %i.ol = add i32 %i.od, 2
  %i.om = tail call i32 @llvm.umin.i32(i32 %.pre.i, i32 %i.ol) ; 2 uses
  store i32 %i.om, ptr %i.bh, align 8, !tbaa !48
  %i.on = tail call i32 @llvm.fshl.i32(i32 %.0.lcssa.i.i.i.i, i32 %i.ok, i32 2) ; 2 uses
  %i.oo = lshr i32 %i.on, 1
  %i.op = and i32 %i.on, 1
  %sext.i.i = sub nsw i32 0, %i.op
  %i.oq = xor i32 %i.oo, %sext.i.i
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv.i
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !39
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader216.i, label %bb.ad, !llvm.loop !64

.preheader203.i:                                  ; preds = %._crit_edge.i, %.preheader203.lr.ph.i
  %indvars.iv259.i = phi i64 [ 0, %.preheader203.lr.ph.i ], [ %indvars.iv.next260.i, %._crit_edge.i ] ; 4 uses
  %i.os = shl nuw nsw i64 %indvars.iv259.i, 2
  %i.ot = add nuw i64 %i.os, 276
  %i.ou = trunc i64 %i.ot to i34                  ; 2 uses
  br i1 %.not242.i, label %._crit_edge.i, label %.lr.ph223.i

.lr.ph223.i:                                      ; preds = %.preheader203.i
  %4 = add nuw nsw i64 %indvars.iv259.i, 69       ; 4 uses
  br i1 %min.iters.check296, label %scalar.ph295.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph223.i
  %i.ov = sub i34 %i.ou, %mul.result
  %i.ow = icmp sgt i34 %i.ov, %i.ou
  %5 = or i1 %i.ow, %mul.overflow
  br i1 %5, label %scalar.ph295.preheader, label %vector.body299

vector.body299:                                   ; preds = %vector.scevcheck, %vector.body299
  %index300 = phi i64 [ %index.next307, %vector.body299 ], [ 0, %vector.scevcheck ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.ph, %vector.body299 ], [ <i32 15, i32 0, i32 0, i32 0>, %vector.scevcheck ]
  %vec.phi301 = phi <4 x i32> [ %i.pi, %vector.body299 ], [ zeroinitializer, %vector.scevcheck ]
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %index300 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %wide.load302 = load <4 x i32>, ptr %i.ox, align 4, !tbaa !39
  %wide.load303 = load <4 x i32>, ptr %i.oy, align 4, !tbaa !39
  %i.oz = sub nsw i64 %4, %index300
  %i.pa = shl i64 %i.oz, 32
  %i.pb = ashr exact i64 %i.pa, 30
  %i.pc = getelementptr inbounds i8, ptr %i.fm, i64 %i.pb ; 2 uses
  %i.pd = getelementptr inbounds i8, ptr %i.pc, i64 -12
  %i.pe = getelementptr inbounds i8, ptr %i.pc, i64 -28
  %wide.load304 = load <4 x i32>, ptr %i.pd, align 4, !tbaa !39
  %wide.load305 = load <4 x i32>, ptr %i.pe, align 4, !tbaa !39
  %reverse = shufflevector <4 x i32> %wide.load304, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse306 = shufflevector <4 x i32> %wide.load305, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.pf = mul <4 x i32> %reverse, %wide.load302
  %i.pg = mul <4 x i32> %reverse306, %wide.load303
  %i.ph = add <4 x i32> %i.pf, %vec.phi           ; 2 uses
  %i.pi = add <4 x i32> %i.pg, %vec.phi301        ; 2 uses
  %index.next307 = add nuw i64 %index300, 8       ; 2 uses
  %i.pj = icmp eq i64 %index.next307, %n.vec298
  br i1 %i.pj, label %middle.block308, label %vector.body299, !llvm.loop !65

middle.block308:                                  ; preds = %vector.body299
  %bin.rdx = add <4 x i32> %i.pi, %i.ph
  %i.pk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n309, label %._crit_edge.loopexit.i, label %scalar.ph295.preheader

scalar.ph295.preheader:                           ; preds = %vector.scevcheck, %.lr.ph223.i, %middle.block308
  %indvars.iv254.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph223.i ], [ %n.vec298, %middle.block308 ] ; 5 uses
  %.0123221.i.ph = phi i32 [ 15, %vector.scevcheck ], [ 15, %.lr.ph223.i ], [ %i.pk, %middle.block308 ] ; 2 uses
  br i1 %lcmp.mod.not, label %scalar.ph295.prol.loopexit, label %scalar.ph295.prol

scalar.ph295.prol:                                ; preds = %scalar.ph295.preheader
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %indvars.iv254.i.ph
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !39
  %i.pn = sub nsw i64 %4, %indvars.iv254.i.ph
  %sext.i.prol = shl i64 %i.pn, 32
  %i.po = ashr exact i64 %sext.i.prol, 30
  %i.pp = getelementptr inbounds i8, ptr %i.fm, i64 %i.po
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !39
  %i.pr = mul i32 %i.pq, %i.pm
  %i.ps = add i32 %i.pr, %.0123221.i.ph           ; 2 uses
  %indvars.iv.next255.i.prol = or disjoint i64 %indvars.iv254.i.ph, 1
  br label %scalar.ph295.prol.loopexit

scalar.ph295.prol.loopexit:                       ; preds = %scalar.ph295.prol, %scalar.ph295.preheader
  %.lcssa365.unr = phi i32 [ poison, %scalar.ph295.preheader ], [ %i.ps, %scalar.ph295.prol ]
  %indvars.iv254.i.unr = phi i64 [ %indvars.iv254.i.ph, %scalar.ph295.preheader ], [ %indvars.iv.next255.i.prol, %scalar.ph295.prol ]
  %.0123221.i.unr = phi i32 [ %.0123221.i.ph, %scalar.ph295.preheader ], [ %i.ps, %scalar.ph295.prol ]
  %i.pt = icmp eq i64 %indvars.iv254.i.ph, %i.np
  br i1 %i.pt, label %._crit_edge.loopexit.i, label %scalar.ph295

._crit_edge.loopexit.i:                           ; preds = %scalar.ph295.prol.loopexit, %scalar.ph295, %middle.block308
  %.lcssa258 = phi i32 [ %i.pk, %middle.block308 ], [ %.lcssa365.unr, %scalar.ph295.prol.loopexit ], [ %i.qr, %scalar.ph295 ]
  %i.pu = ashr i32 %.lcssa258, 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader203.i
  %.0123.lcssa.i = phi i32 [ 0, %.preheader203.i ], [ %i.pu, %._crit_edge.loopexit.i ]
  %i.pv = tail call fastcc i32 @get_srice(ptr noundef nonnull %i.c, i32 noundef %.0133.i)
  %i.pw = add i32 %i.pv, %.0123.lcssa.i
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv259.i
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 280
  store i32 %i.pw, ptr %i.py, align 4, !tbaa !39
  %indvars.iv.next260.i = add nuw nsw i64 %indvars.iv259.i, 1 ; 2 uses
  %i.pz = load i32, ptr %i.h, align 4, !tbaa !43
  %i.qa = sext i32 %i.pz to i64
  %i.qb = icmp slt i64 %indvars.iv.next260.i, %i.qa
  br i1 %i.qb, label %.preheader203.i, label %.loopexit.i, !llvm.loop !66

scalar.ph295:                                     ; preds = %scalar.ph295.prol.loopexit, %scalar.ph295
  %indvars.iv254.i = phi i64 [ %indvars.iv.next255.i.1, %scalar.ph295 ], [ %indvars.iv254.i.unr, %scalar.ph295.prol.loopexit ] ; 4 uses
  %.0123221.i = phi i32 [ %i.qr, %scalar.ph295 ], [ %.0123221.i.unr, %scalar.ph295.prol.loopexit ]
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %indvars.iv254.i
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !39
  %i.qe = sub nsw i64 %4, %indvars.iv254.i
  %sext.i = shl i64 %i.qe, 32
  %i.qf = ashr exact i64 %sext.i, 30
  %i.qg = getelementptr inbounds i8, ptr %i.fm, i64 %i.qf
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !39
  %i.qi = mul i32 %i.qh, %i.qd
  %i.qj = add i32 %i.qi, %.0123221.i
  %indvars.iv.next255.i = add nuw nsw i64 %indvars.iv254.i, 1 ; 2 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %indvars.iv.next255.i
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !39
  %i.qm = sub nsw i64 %4, %indvars.iv.next255.i
  %sext.i.1 = shl i64 %i.qm, 32
  %i.qn = ashr exact i64 %sext.i.1, 30
  %i.qo = getelementptr inbounds i8, ptr %i.fm, i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !39
  %i.qq = mul i32 %i.qp, %i.ql
  %i.qr = add i32 %i.qq, %i.qj                    ; 2 uses
  %indvars.iv.next255.i.1 = add nuw nsw i64 %indvars.iv254.i, 2 ; 2 uses
  %exitcond258.not.i.1 = icmp eq i64 %indvars.iv.next255.i.1, %wide.trip.count257.i
  br i1 %exitcond258.not.i.1, label %._crit_edge.loopexit.i, label %scalar.ph295, !llvm.loop !67

.loopexit.i:                                      ; preds = %._crit_edge.i, %.lr.ph226.i, %.lr.ph228.i, %.lr.ph230.i, %.lr.ph232.i, %.lr.ph237.i, %middle.block293, %.preheader216.i, %bb.aa, %.lr.ph234.preheader.i, %.preheader206.i, %.preheader208.i, %.preheader210.i, %.preheader212.i, %.preheader214.i
  %i.qs = load i32, ptr %i.br, align 4, !tbaa !31 ; 2 uses
  %i.qt = icmp eq i32 %i.qs, 2
  br i1 %i.qt, label %bb.af, label %.loopexit316.i

bb.af:                                            ; preds = %.loopexit.i
  %i.qu = icmp eq i32 %.0140238.i163, 0
  br i1 %i.qu, label %.split147.i, label %.split.i

.split.i:                                         ; preds = %bb.af
  %i.qv = load i32, ptr %i.h, align 4, !tbaa !43  ; 4 uses
  %.not.i.i = icmp ne i32 %.0134240.i162, 0
  %i.qw = icmp sgt i32 %i.qv, 0
  %or.cond.i.i134 = select i1 %.not.i.i, i1 %i.qw, i1 false
  br i1 %or.cond.i.i134, label %.lr.ph.i.i, label %.loopexit64.i.i

.lr.ph.i.i:                                       ; preds = %.split.i
  %wide.trip.count.i.i = zext nneg i32 %i.qv to i64 ; 3 uses
  %min.iters.check312 = icmp ult i32 %i.qv, 4
  br i1 %min.iters.check312, label %scalar.ph311.preheader, label %vector.ph313

vector.ph313:                                     ; preds = %.lr.ph.i.i
  %n.vec314 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph313
  %index316 = phi i64 [ 0, %vector.ph313 ], [ %index.next319, %vector.body315 ] ; 2 uses
  %i.qx = add nuw nsw i64 %index316, 70           ; 2 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.qx
  %wide.load317 = load <4 x i32>, ptr %i.qy, align 4, !tbaa !39
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.qx ; 2 uses
  %wide.load318 = load <4 x i32>, ptr %i.qz, align 4, !tbaa !39
  %i.ra = add <4 x i32> %wide.load318, %wide.load317
  store <4 x i32> %i.ra, ptr %i.qz, align 4, !tbaa !39
  %index.next319 = add nuw i64 %index316, 4       ; 2 uses
  %i.rb = icmp eq i64 %index.next319, %n.vec314
  br i1 %i.rb, label %middle.block320, label %vector.body315, !llvm.loop !68

middle.block320:                                  ; preds = %vector.body315
  %cmp.n321 = icmp eq i64 %n.vec314, %wide.trip.count.i.i
  br i1 %cmp.n321, label %.loopexit64.i.i, label %scalar.ph311.preheader

scalar.ph311.preheader:                           ; preds = %.lr.ph.i.i, %middle.block320
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec314, %middle.block320 ]
  br label %scalar.ph311

scalar.ph311:                                     ; preds = %scalar.ph311.preheader, %scalar.ph311
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph311 ], [ %indvars.iv.i.i.ph, %scalar.ph311.preheader ] ; 2 uses
  %i.rc = add nuw nsw i64 %indvars.iv.i.i, 70     ; 2 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.rc
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !39
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.rc ; 2 uses
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !39
  %i.rh = add i32 %i.rg, %i.re
  store i32 %i.rh, ptr %i.rf, align 4, !tbaa !39
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit64.i.i, label %scalar.ph311, !llvm.loop !69

.loopexit64.i.i:                                  ; preds = %scalar.ph311, %middle.block320, %.split.i
  %i.ri = sext i32 %i.qv to i64                   ; 12 uses
  %i.rj = shl nsw i64 %i.ri, 2                    ; 4 uses
  %i.rk = add nsw i64 %i.rj, 3711
  %diff.check324 = icmp ult i64 %i.rk, 31
  %i.rl = add nsw i64 %i.rj, 1119
  %diff.check325 = icmp ult i64 %i.rl, 31
  %conflict.rdx326 = or i1 %diff.check324, %diff.check325
  %i.rm = add nsw i64 %i.rj, 3431
  %diff.check327 = icmp ult i64 %i.rm, 31
  %conflict.rdx328 = or i1 %conflict.rdx326, %diff.check327
  %i.rn = add nsw i64 %i.rj, 871
  %diff.check329 = icmp ult i64 %i.rn, 31
  %conflict.rdx330 = or i1 %conflict.rdx328, %diff.check329
  br i1 %conflict.rdx330, label %scalar.ph331.preheader, label %vector.body333

vector.body333:                                   ; preds = %.loopexit64.i.i
  %i.ro = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.ri ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %wide.load335 = load <4 x i32>, ptr %i.ro, align 4, !tbaa !39 ; 2 uses
  %wide.load336 = load <4 x i32>, ptr %i.rp, align 4, !tbaa !39 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store <4 x i32> %wide.load335, ptr %i.bt, align 8, !tbaa !39
  store <4 x i32> %wide.load336, ptr %i.rq, align 8, !tbaa !39
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.ri ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 16
  %wide.load337 = load <4 x i32>, ptr %i.rr, align 4, !tbaa !39
  %wide.load338 = load <4 x i32>, ptr %i.rs, align 4, !tbaa !39
  %i.rt = sub <4 x i32> %wide.load335, %wide.load337
  %i.ru = sub <4 x i32> %wide.load336, %wide.load338
  %i.rv = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  store <4 x i32> %i.rt, ptr %i.bu, align 8, !tbaa !39
  store <4 x i32> %i.ru, ptr %i.rv, align 8, !tbaa !39
  %i.rw = add nsw i64 %i.ri, 8                    ; 2 uses
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.rw ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %wide.load335.1 = load <4 x i32>, ptr %i.rx, align 4, !tbaa !39 ; 2 uses
  %wide.load336.1 = load <4 x i32>, ptr %i.ry, align 4, !tbaa !39 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.sa = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store <4 x i32> %wide.load335.1, ptr %i.rz, align 8, !tbaa !39
  store <4 x i32> %wide.load336.1, ptr %i.sa, align 8, !tbaa !39
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.rw ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  %wide.load337.1 = load <4 x i32>, ptr %i.sb, align 4, !tbaa !39
  %wide.load338.1 = load <4 x i32>, ptr %i.sc, align 4, !tbaa !39
  %i.sd = sub <4 x i32> %wide.load335.1, %wide.load337.1
  %i.se = sub <4 x i32> %wide.load336.1, %wide.load338.1
  %i.sf = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.sg = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  store <4 x i32> %i.sd, ptr %i.sf, align 8, !tbaa !39
  store <4 x i32> %i.se, ptr %i.sg, align 8, !tbaa !39
  %i.sh = add nsw i64 %i.ri, 16                   ; 2 uses
  %i.si = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.sh ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %wide.load335.2 = load <4 x i32>, ptr %i.si, align 4, !tbaa !39 ; 2 uses
  %wide.load336.2 = load <4 x i32>, ptr %i.sj, align 4, !tbaa !39 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.sl = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store <4 x i32> %wide.load335.2, ptr %i.sk, align 8, !tbaa !39
  store <4 x i32> %wide.load336.2, ptr %i.sl, align 8, !tbaa !39
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.sh ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %wide.load337.2 = load <4 x i32>, ptr %i.sm, align 4, !tbaa !39
  %wide.load338.2 = load <4 x i32>, ptr %i.sn, align 4, !tbaa !39
  %i.so = sub <4 x i32> %wide.load335.2, %wide.load337.2
  %i.sp = sub <4 x i32> %wide.load336.2, %wide.load338.2
  %i.sq = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %i.sr = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  store <4 x i32> %i.so, ptr %i.sq, align 8, !tbaa !39
  store <4 x i32> %i.sp, ptr %i.sr, align 8, !tbaa !39
  %i.ss = add nsw i64 %i.ri, 24                   ; 2 uses
  %i.st = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.ss ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  %wide.load335.3 = load <4 x i32>, ptr %i.st, align 4, !tbaa !39 ; 2 uses
end_hunk_0
