Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/wavpackenc?download=true
inline.NumInlined: 107
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 33
begin_hunk_0_@wavpack_encode_block:bb.a

bb.bm:                                            ; preds = %bb.bl
  store i32 1, ptr %i.sa, align 4, !tbaa !43
  %i.se = load i32, ptr %i.i, align 4, !tbaa !52
  %i.sf = and i32 %i.se, 1073741828
  %.not481 = icmp eq i32 %i.sf, 0
  br i1 %.not481, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.sg = tail call fastcc i32 @wv_mono(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef 0)
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.sh = tail call fastcc i32 @wv_stereo(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef 1, i32 noundef 0)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.0442 = phi i32 [ %i.sg, %bb.bn ], [ %i.sh, %bb.bo ]
  store i32 0, ptr %i.sa, align 4, !tbaa !43
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bl, %bb.bk
  %.1443 = phi i32 [ 0, %bb.bk ], [ 0, %bb.bl ], [ %.0442, %bb.bp ] ; 2 uses
  %i.si = load i32, ptr %i.i, align 4, !tbaa !52
  %i.sj = and i32 %i.si, 1073741828
  %.not482 = icmp eq i32 %i.sj, 0
  %i.sk = icmp sgt i32 %i.h, 0                    ; 2 uses
  br i1 %.not482, label %.preheader1434, label %.preheader1435

.preheader1435:                                   ; preds = %bb.bq
  br i1 %i.sk, label %.lr.ph1508.preheader, label %._crit_edge1509

.lr.ph1508.preheader:                             ; preds = %.preheader1435
  %wide.trip.count1697 = zext nneg i32 %i.h to i64 ; 2 uses
  %xtraiter2326 = and i64 %wide.trip.count1697, 3 ; 3 uses
  %i.sl = add nsw i32 %i.h, -1
  %i.sm = icmp ult i32 %i.sl, 3
  br i1 %i.sm, label %.lr.ph1508.epil.preheader, label %.lr.ph1508.preheader.new

.lr.ph1508.preheader.new:                         ; preds = %.lr.ph1508.preheader
  %unroll_iter = and i64 %wide.trip.count1697, 2147483644
  br label %.lr.ph1508

.preheader1434:                                   ; preds = %bb.bq
  br i1 %i.sk, label %.lr.ph1513.preheader, label %._crit_edge1514

.lr.ph1513.preheader:                             ; preds = %.preheader1434
  %wide.trip.count1703 = zext nneg i32 %i.h to i64 ; 2 uses
  %xtraiter2330 = and i64 %wide.trip.count1703, 1
  %i.sn = icmp eq i32 %i.h, 1
  br i1 %i.sn, label %.lr.ph1513.epil.preheader, label %.lr.ph1513.preheader.new

.lr.ph1513.preheader.new:                         ; preds = %.lr.ph1513.preheader
  %unroll_iter2335 = and i64 %wide.trip.count1703, 2147483646
  br label %.lr.ph1513

.lr.ph1508:                                       ; preds = %.lr.ph1508, %.lr.ph1508.preheader.new
  %indvars.iv1693 = phi i64 [ 0, %.lr.ph1508.preheader.new ], [ %indvars.iv.next1694.3, %.lr.ph1508 ] ; 5 uses
  %.04381507 = phi i32 [ -1, %.lr.ph1508.preheader.new ], [ %i.tg, %.lr.ph1508 ]
  %niter = phi i64 [ 0, %.lr.ph1508.preheader.new ], [ %niter.next.3, %.lr.ph1508 ]
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv1693
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !53
  %i.sq = mul i32 %.04381507, 3
  %i.sr = add i32 %i.sq, %i.sp
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv1693
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 4
  %i.su = load i32, ptr %i.st, align 4, !tbaa !53
  %i.sv = mul i32 %i.sr, 3
  %i.sw = add i32 %i.sv, %i.su
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv1693
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !53
  %i.ta = mul i32 %i.sw, 3
  %i.tb = add i32 %i.ta, %i.sz
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv1693
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 12
  %i.te = load i32, ptr %i.td, align 4, !tbaa !53
  %i.tf = mul i32 %i.tb, 3
  %i.tg = add i32 %i.tf, %i.te                    ; 3 uses
  %indvars.iv.next1694.3 = add nuw nsw i64 %indvars.iv1693, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge1509.loopexit.unr-lcssa, label %.lr.ph1508, !llvm.loop !192

._crit_edge1509.loopexit.unr-lcssa:               ; preds = %.lr.ph1508
  %lcmp.mod2327.not = icmp eq i64 %xtraiter2326, 0
  br i1 %lcmp.mod2327.not, label %._crit_edge1509, label %.lr.ph1508.epil.preheader

.lr.ph1508.epil.preheader:                        ; preds = %._crit_edge1509.loopexit.unr-lcssa, %.lr.ph1508.preheader
  %indvars.iv1693.epil.init = phi i64 [ 0, %.lr.ph1508.preheader ], [ %indvars.iv.next1694.3, %._crit_edge1509.loopexit.unr-lcssa ]
  %.04381507.epil.init = phi i32 [ -1, %.lr.ph1508.preheader ], [ %i.tg, %._crit_edge1509.loopexit.unr-lcssa ]
  %lcmp.mod2329 = icmp ne i64 %xtraiter2326, 0
  tail call void @llvm.assume(i1 %lcmp.mod2329)
  br label %.lr.ph1508.epil

.lr.ph1508.epil:                                  ; preds = %.lr.ph1508.epil, %.lr.ph1508.epil.preheader
  %indvars.iv1693.epil = phi i64 [ %indvars.iv1693.epil.init, %.lr.ph1508.epil.preheader ], [ %indvars.iv.next1694.epil, %.lr.ph1508.epil ] ; 2 uses
  %.04381507.epil = phi i32 [ %.04381507.epil.init, %.lr.ph1508.epil.preheader ], [ %i.tk, %.lr.ph1508.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph1508.epil.preheader ], [ %epil.iter.next, %.lr.ph1508.epil ]
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv1693.epil
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !53
  %i.tj = mul i32 %.04381507.epil, 3
  %i.tk = add i32 %i.tj, %i.ti                    ; 2 uses
  %indvars.iv.next1694.epil = add nuw nsw i64 %indvars.iv1693.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2326
  br i1 %epil.iter.cmp.not, label %._crit_edge1509, label %.lr.ph1508.epil, !llvm.loop !193

._crit_edge1509:                                  ; preds = %._crit_edge1509.loopexit.unr-lcssa, %.lr.ph1508.epil, %.preheader1435
  %.0438.lcssa = phi i32 [ -1, %.preheader1435 ], [ %i.tg, %._crit_edge1509.loopexit.unr-lcssa ], [ %i.tk, %.lr.ph1508.epil ] ; 2 uses
  br i1 %.not479, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %._crit_edge1509
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !59
  %.not486 = icmp eq i32 %i.tm, 0
  %i.tn = zext i1 %.not486 to i32
  %i.to = tail call fastcc i32 @wv_mono(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.tn, i32 noundef 1)
  br label %bb.bt

.lr.ph1513:                                       ; preds = %.lr.ph1513, %.lr.ph1513.preheader.new
  %indvars.iv1699 = phi i64 [ 0, %.lr.ph1513.preheader.new ], [ %indvars.iv.next1700.1, %.lr.ph1513 ] ; 4 uses
  %.14391512 = phi i32 [ -1, %.lr.ph1513.preheader.new ], [ %i.ug, %.lr.ph1513 ]
  %niter2336 = phi i64 [ 0, %.lr.ph1513.preheader.new ], [ %niter2336.next.1, %.lr.ph1513 ]
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv1699
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !53 ; 2 uses
  %i.tr = shl i32 %i.tq, 1
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv1699
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !53
  %i.tu = mul i32 %.14391512, 9
  %i.tv = add i32 %i.tu, %i.tq
  %i.tw = add i32 %i.tv, %i.tr
  %i.tx = add i32 %i.tw, %i.tt
  %indvars.iv.next1700 = or disjoint i64 %indvars.iv1699, 1 ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next1700
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !53 ; 2 uses
  %i.ua = shl i32 %i.tz, 1
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next1700
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !53
  %i.ud = mul i32 %i.tx, 9
  %i.ue = add i32 %i.ud, %i.tz
  %i.uf = add i32 %i.ue, %i.ua
  %i.ug = add i32 %i.uf, %i.uc                    ; 3 uses
  %indvars.iv.next1700.1 = add nuw nsw i64 %indvars.iv1699, 2 ; 2 uses
  %niter2336.next.1 = add i64 %niter2336, 2       ; 2 uses
  %niter2336.ncmp.1 = icmp eq i64 %niter2336.next.1, %unroll_iter2335
  br i1 %niter2336.ncmp.1, label %._crit_edge1514.loopexit.unr-lcssa, label %.lr.ph1513, !llvm.loop !194

._crit_edge1514.loopexit.unr-lcssa:               ; preds = %.lr.ph1513
  %lcmp.mod2332.not = icmp eq i64 %xtraiter2330, 0
  br i1 %lcmp.mod2332.not, label %._crit_edge1514, label %.lr.ph1513.epil.preheader

.lr.ph1513.epil.preheader:                        ; preds = %._crit_edge1514.loopexit.unr-lcssa, %.lr.ph1513.preheader
  %indvars.iv1699.epil.init = phi i64 [ 0, %.lr.ph1513.preheader ], [ %indvars.iv.next1700.1, %._crit_edge1514.loopexit.unr-lcssa ] ; 2 uses
  %.14391512.epil.init = phi i32 [ -1, %.lr.ph1513.preheader ], [ %i.ug, %._crit_edge1514.loopexit.unr-lcssa ]
  %lcmp.mod2334 = trunc i32 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod2334)
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv1699.epil.init
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !53 ; 2 uses
  %i.uj = shl i32 %i.ui, 1
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv1699.epil.init
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !53
  %i.um = mul i32 %.14391512.epil.init, 9
  %i.un = add i32 %i.um, %i.ui
  %i.uo = add i32 %i.un, %i.uj
  %i.up = add i32 %i.uo, %i.ul
  br label %._crit_edge1514

._crit_edge1514:                                  ; preds = %.lr.ph1513.epil.preheader, %._crit_edge1514.loopexit.unr-lcssa, %.preheader1434
  %.1439.lcssa = phi i32 [ -1, %.preheader1434 ], [ %i.ug, %._crit_edge1514.loopexit.unr-lcssa ], [ %i.up, %.lr.ph1513.epil.preheader ] ; 2 uses
  br i1 %.not479, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge1514
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.ur = load i32, ptr %i.uq, align 8, !tbaa !59
  %.not484 = icmp eq i32 %i.ur, 0
  %i.us = zext i1 %.not484 to i32
  %i.ut = tail call fastcc i32 @wv_stereo(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.us, i32 noundef 1)
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge1514, %bb.bs, %._crit_edge1509, %bb.br
  %.2444 = phi i32 [ %i.to, %bb.br ], [ %.1443, %._crit_edge1509 ], [ %i.ut, %bb.bs ], [ %.1443, %._crit_edge1514 ] ; 2 uses
  %.2 = phi i32 [ %.0438.lcssa, %bb.br ], [ %.0438.lcssa, %._crit_edge1509 ], [ %.1439.lcssa, %bb.bs ], [ %.1439.lcssa, %._crit_edge1514 ]
  %i.uu = icmp slt i32 %.2444, 0
  br i1 %i.uu, label %bb.nt, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !51 ; 2 uses
  %.not487 = icmp eq i32 %i.uw, 0
  %.pre1768 = load i32, ptr %i.i, align 4, !tbaa !52 ; 2 uses
  br i1 %.not487, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ux = or i32 %.pre1768, 2048                  ; 2 uses
  store i32 %i.ux, ptr %i.i, align 4, !tbaa !52
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.uy = phi i32 [ %i.ux, %bb.bv ], [ %.pre1768, %bb.bu ] ; 2 uses
  %5 = shl i32 %i.uy, 29
  %6 = ashr i32 %5, 31
  %7 = add i32 %i.uw, 2
  %i.uz = add i32 %7, %6                          ; 2 uses
  store i32 %i.uz, ptr %i.uv, align 4, !tbaa !51
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !38
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 356
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !39
  %i.ve = icmp eq i32 %i.uz, %i.vd
  br i1 %i.ve, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.vf = or i32 %i.uy, 4096
  store i32 %i.vf, ptr %i.i, align 4, !tbaa !52
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.vg = icmp ne ptr %3, null
  %i.vh = icmp sgt i32 %4, -1
  %or.cond.i = and i1 %i.vg, %i.vh
  br i1 %or.cond.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 151) #15
  tail call void @abort() #16
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.vi = zext nneg i32 %4 to i64
  %i.vj = getelementptr inbounds nuw i8, ptr %3, i64 %i.vi ; 13 uses
  %i.vk = icmp samesign ugt i32 %4, 3
  br i1 %i.vk, label %bb.cb, label %bytestream2_put_le32.exit533

bb.cb:                                            ; preds = %bb.ca
  store i32 1802532471, ptr %3, align 1, !tbaa !56
  %i.vl = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.vm = icmp samesign ugt i32 %4, 7
  br i1 %i.vm, label %bb.cc, label %bytestream2_put_le32.exit533

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.vl, align 1, !tbaa !56
  %i.vn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.vo = icmp samesign ugt i32 %4, 9
  br i1 %i.vo, label %bb.cd, label %bytestream2_put_le32.exit533

bb.cd:                                            ; preds = %bb.cc
  store i16 1040, ptr %i.vn, align 1, !tbaa !56
  %i.vp = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  %i.vq = icmp samesign ugt i32 %4, 11
  br i1 %i.vq, label %bb.ce, label %bytestream2_put_le32.exit533

bb.ce:                                            ; preds = %bb.cd
  store i16 0, ptr %i.vp, align 1, !tbaa !56
  %i.vr = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.vs = icmp samesign ugt i32 %4, 15
  br i1 %i.vs, label %bb.cf, label %bytestream2_put_le32.exit533

bb.cf:                                            ; preds = %bb.ce
  store i32 0, ptr %i.vr, align 1, !tbaa !56
  %i.vt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.vu = icmp samesign ugt i32 %4, 19
  br i1 %i.vu, label %bb.cg, label %bytestream2_put_le32.exit533

bb.cg:                                            ; preds = %bb.cf
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.vw = load i32, ptr %i.vv, align 8, !tbaa !58
  store i32 %i.vw, ptr %i.vt, align 1, !tbaa !56
  %i.vx = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.vy = icmp samesign ugt i32 %4, 23
  br i1 %i.vy, label %bb.ch, label %bytestream2_put_le32.exit533

bb.ch:                                            ; preds = %bb.cg
  store i32 %i.h, ptr %i.vx, align 1, !tbaa !56
  %i.vz = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.wa = icmp samesign ugt i32 %4, 27
  br i1 %i.wa, label %bb.ci, label %bytestream2_put_le32.exit533

bb.ci:                                            ; preds = %bb.ch
  %i.wb = load i32, ptr %i.i, align 4, !tbaa !52
  store i32 %i.wb, ptr %i.vz, align 1, !tbaa !56
  %i.wc = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.wd = icmp samesign ugt i32 %4, 31
  br i1 %i.wd, label %bb.cj, label %bytestream2_put_le32.exit533

bb.cj:                                            ; preds = %bb.ci
  store i32 %.2, ptr %i.wc, align 1, !tbaa !56
  %i.we = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bytestream2_put_le32.exit533

bytestream2_put_le32.exit533:                     ; preds = %bb.cb, %bb.ca, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.cj
  %.not.i5.i = phi i1 [ true, %bb.cj ], [ false, %bb.ci ], [ false, %bb.ch ], [ false, %bb.cg ], [ false, %bb.cf ], [ false, %bb.ce ], [ false, %bb.cd ], [ false, %bb.cc ], [ false, %bb.ca ], [ false, %bb.cb ] ; 2 uses
  %.sroa.292.23 = phi i32 [ 0, %bb.cj ], [ 1, %bb.ci ], [ 1, %bb.ch ], [ 1, %bb.cg ], [ 1, %bb.cf ], [ 1, %bb.ce ], [ 1, %bb.cd ], [ 1, %bb.cc ], [ 1, %bb.ca ], [ 1, %bb.cb ] ; 3 uses
  %.sroa.0.23 = phi ptr [ %i.we, %bb.cj ], [ %i.wc, %bb.ci ], [ %i.vz, %bb.ch ], [ %i.vx, %bb.cg ], [ %i.vt, %bb.cf ], [ %i.vr, %bb.ce ], [ %i.vp, %bb.cd ], [ %i.vn, %bb.cc ], [ %3, %bb.ca ], [ %i.vl, %bb.cb ] ; 18 uses
  %i.wf = load i32, ptr %i.i, align 4, !tbaa !52
  %i.wg = and i32 %i.wf, 2048
  %.not489 = icmp eq i32 %i.wg, 0
  br i1 %.not489, label %bytestream2_put_byte.exit617, label %bb.ck

bb.ck:                                            ; preds = %bytestream2_put_le32.exit533
  %i.wh = load ptr, ptr %i.va, align 8, !tbaa !38 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 352
  %i.wj = load i32, ptr %i.wi, align 8, !tbaa !247 ; 2 uses
  %i.wk = icmp eq i32 %i.wj, 1
  br i1 %i.wk, label %bb.cl, label %bb.cv

bb.cl:                                            ; preds = %bb.ck
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wh, i64 360
  %i.wm = load i64, ptr %i.wl, align 8, !tbaa !56
  %.off = add i64 %i.wm, -3
  %switch = icmp ult i64 %.off, 2
  br i1 %switch, label %bytestream2_put_byte.exit617, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  br i1 %.not.i5.i, label %bb.cn, label %bytestream2_put_byte.exit619

bb.cn:                                            ; preds = %bb.cm
  %i.wn = ptrtoint ptr %i.vj to i64               ; 3 uses
  %i.wo = ptrtoint ptr %.sroa.0.23 to i64
  %i.wp = sub i64 %i.wn, %i.wo
  %i.wq = icmp sgt i64 %i.wp, 0
  br i1 %i.wq, label %bb.co, label %bytestream2_put_byte.exit619

bb.co:                                            ; preds = %bb.cn
  store i8 77, ptr %.sroa.0.23, align 1, !tbaa !56
  %i.wr = getelementptr inbounds nuw i8, ptr %.sroa.0.23, i64 1 ; 3 uses
  %i.ws = ptrtoint ptr %i.wr to i64
  %i.wt = sub i64 %i.wn, %i.ws
  %i.wu = icmp sgt i64 %i.wt, 0
  br i1 %i.wu, label %bb.cp, label %bytestream2_put_byte.exit619

bb.cp:                                            ; preds = %bb.co
  store i8 3, ptr %i.wr, align 1, !tbaa !56
  %i.wv = getelementptr inbounds nuw i8, ptr %.sroa.0.23, i64 2 ; 3 uses
  %i.ww = ptrtoint ptr %i.wv to i64
  %i.wx = sub i64 %i.wn, %i.ww
  %i.wy = icmp sgt i64 %i.wx, 0
  br i1 %i.wy, label %bb.cq, label %bytestream2_put_byte.exit619

bb.cq:                                            ; preds = %bb.cp
  %i.wz = load ptr, ptr %i.va, align 8, !tbaa !38
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 356
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !39
  %i.xc = trunc i32 %i.xb to i8
  store i8 %i.xc, ptr %i.wv, align 1, !tbaa !56
  %i.xd = getelementptr inbounds nuw i8, ptr %.sroa.0.23, i64 3
  br label %bytestream2_put_byte.exit619

bytestream2_put_byte.exit619:                     ; preds = %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq
  %.not.i530 = phi i1 [ true, %bb.cq ], [ false, %bb.cp ], [ false, %bb.co ], [ false, %bb.cn ], [ false, %bb.cm ]
  %.sroa.0.67 = phi ptr [ %i.xd, %bb.cq ], [ %i.wv, %bb.cp ], [ %i.wr, %bb.co ], [ %.sroa.0.23, %bb.cn ], [ %.sroa.0.23, %bb.cm ] ; 6 uses
  %i.xe = load ptr, ptr %i.va, align 8, !tbaa !38
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 360
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !56 ; 2 uses
  %.not493 = icmp ult i64 %i.xg, 4294967296
  %i.xh = ptrtoint ptr %i.vj to i64               ; 2 uses
  %i.xi = ptrtoint ptr %.sroa.0.67 to i64
  %i.xj = sub i64 %i.xh, %i.xi
  %i.xk = icmp sgt i64 %i.xj, 3
  %or.cond1320 = select i1 %.not.i530, i1 %i.xk, i1 false ; 2 uses
  br i1 %.not493, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bytestream2_put_byte.exit619
  br i1 %or.cond1320, label %bytestream2_put_le32.exit531, label %bytestream2_put_byte.exit617

bb.cs:                                            ; preds = %bytestream2_put_byte.exit619
  br i1 %or.cond1320, label %bb.ct, label %bytestream2_put_byte.exit617

bb.ct:                                            ; preds = %bb.cs
  %i.xl = trunc nuw i64 %i.xg to i32
  br label %bytestream2_put_le32.exit531

bytestream2_put_le32.exit531:                     ; preds = %bb.cr, %bb.ct
  %storemerge1588 = phi i32 [ %i.xl, %bb.ct ], [ 0, %bb.cr ]
  store i32 %storemerge1588, ptr %.sroa.0.67, align 1, !tbaa !56
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.67, i64 4 ; 3 uses
  %i.xm = ptrtoint ptr %.sroa.0.0 to i64
  %i.xn = sub i64 %i.xh, %i.xm
  %i.xo = icmp sgt i64 %i.xn, 0
  br i1 %i.xo, label %bb.cu, label %bytestream2_put_byte.exit617

bb.cu:                                            ; preds = %bytestream2_put_le32.exit531
  store i8 0, ptr %.sroa.0.0, align 1, !tbaa !56
  %i.xp = getelementptr inbounds nuw i8, ptr %.sroa.0.67, i64 5
  br label %bytestream2_put_byte.exit617

bb.cv:                                            ; preds = %bb.ck
  %i.xq = icmp eq i32 %i.wj, 0                    ; 2 uses
  %brmerge.not = and i1 %i.xq, %.not.i5.i
  %.sroa.292.23.mux = select i1 %i.xq, i32 1, i32 %.sroa.292.23
  br i1 %brmerge.not, label %bb.cw, label %bytestream2_put_byte.exit617

bb.cw:                                            ; preds = %bb.cv
  %i.xr = ptrtoint ptr %i.vj to i64               ; 5 uses
  %i.xs = ptrtoint ptr %.sroa.0.23 to i64
  %i.xt = sub i64 %i.xr, %i.xs
  %i.xu = icmp sgt i64 %i.xt, 0
  br i1 %i.xu, label %bb.cx, label %bytestream2_put_byte.exit617

bb.cx:                                            ; preds = %bb.cw
  store i8 77, ptr %.sroa.0.23, align 1, !tbaa !56
  %i.xv = getelementptr inbounds nuw i8, ptr %.sroa.0.23, i64 1 ; 3 uses
  %i.xw = ptrtoint ptr %i.xv to i64
  %i.xx = sub i64 %i.xr, %i.xw
end_hunk_0
