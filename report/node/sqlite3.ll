Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 426
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3Pragma:bb.a
  %i.iw = icmp sgt i32 %i.iv, 0
  br i1 %i.iw, label %.lr.ph2450, label %.thread

.lr.ph2450:                                       ; preds = %.preheader, %.lr.ph2450
  %indvars.iv2626 = phi i64 [ %indvars.iv.next2627, %.lr.ph2450 ], [ 0, %.preheader ] ; 2 uses
  %i.ix = load ptr, ptr %i.bq, align 8, !tbaa !612
  %i.iy = getelementptr inbounds nuw [32 x i8], ptr %i.ix, i64 %indvars.iv2626
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !617
  %i.jb = call fastcc i32 @sqlite3BtreeSecureDelete(ptr noundef %i.ja, i32 noundef %.01481) ; 0 uses
  %indvars.iv.next2627 = add nuw nsw i64 %indvars.iv2626, 1 ; 2 uses
  %i.jc = load i32, ptr %i.iu, align 8, !tbaa !611
  %i.jd = sext i32 %i.jc to i64
  %i.je = icmp slt i64 %indvars.iv.next2627, %i.jd
  br i1 %i.je, label %.lr.ph2450, label %.thread, !llvm.loop !5398

.thread:                                          ; preds = %.lr.ph2450, %.preheader, %bb.bm, %sqlite3_stricmp.exit.thread
  %.014812056 = phi i32 [ %.01481, %sqlite3_stricmp.exit.thread ], [ -1, %bb.bm ], [ %.01481, %.preheader ], [ %.01481, %.lr.ph2450 ]
  %i.jf = call fastcc i32 @sqlite3BtreeSecureDelete(ptr noundef %i.ic, i32 noundef %.014812056)
  %i.jg = zext nneg i32 %i.jf to i64
  call fastcc void @returnSingleInt(ptr noundef %.0.i2043, i64 noundef %i.jg)
  br label %sqlite3DbFree.exit2038

bb.bq:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #58
  store i64 0, ptr %i.i, align 8, !tbaa !571
  call fastcc void @sqlite3CodeVerifySchema(ptr noundef nonnull %0, i32 noundef %.015.i)
  %i.jh = load i32, ptr %i.bf, align 4, !tbaa !1214
  %i.ji = add nsw i32 %i.jh, 1                    ; 4 uses
  store i32 %i.ji, ptr %i.bf, align 4, !tbaa !1214
  %i.jj = load i8, ptr %i.cb, align 1, !tbaa !741
  %i.jk = and i8 %i.jj, -33
  %i.jl = icmp eq i8 %i.jk, 80
  br i1 %i.jl, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.jm = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i2043, i32 noundef 179, i32 noundef %.015.i, i32 noundef %i.ji) ; 0 uses
  br label %bb.bx

bb.bs:                                            ; preds = %bb.bq
  %.not1659 = icmp eq ptr %.01356, null
  br i1 %.not1659, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jn = call fastcc i32 @sqlite3DecOrHexToI64(ptr noundef nonnull %.01356, ptr noundef %i.i)
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.jp = load i64, ptr %i.i, align 8, !tbaa !571 ; 2 uses
  %i.jq = icmp slt i64 %i.jp, 0
  br i1 %i.jq, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %spec.select = call i64 @llvm.umin.i64(i64 %i.jp, i64 4294967294)
  %i.jr = trunc nuw i64 %spec.select to i32
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bs, %bb.bt, %bb.bu
  %i.js = phi i32 [ 0, %bb.bs ], [ 0, %bb.bu ], [ %i.jr, %bb.bv ], [ 0, %bb.bt ]
  %i.jt = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i2043, i32 noundef 180, i32 noundef %.015.i, i32 noundef %i.ji, i32 noundef %i.js) ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.br
  %i.ju = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i2043, i32 noundef 85, i32 noundef %i.ji, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #58
  br label %sqlite3DbFree.exit2038

bb.by:                                            ; preds = %bb.bc
  %i.jv = call fastcc i32 @getLockingMode(ptr noundef %.01356) ; 6 uses
  %i.jw = load i32, ptr %i.bh, align 8, !tbaa !806
  %i.jx = icmp eq i32 %i.jw, 0                    ; 2 uses
  %i.jy = icmp eq i32 %i.jv, -1
  %or.cond5 = select i1 %i.jx, i1 %i.jy, i1 false
  br i1 %or.cond5, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.jz = getelementptr inbounds nuw i8, ptr %i.aa, i64 105
  br label %bb.cf

bb.ca:                                            ; preds = %bb.by
  br i1 %i.jx, label %.preheader2141, label %bb.cc

.preheader2141:                                   ; preds = %bb.ca
  %i.ka = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !611 ; 2 uses
  %i.kc = icmp sgt i32 %i.kb, 2
  br i1 %i.kc, label %.lr.ph2447, label %.preheader2141.._crit_edge2448.split_crit_edge

.preheader2141.._crit_edge2448.split_crit_edge:   ; preds = %.preheader2141
  %.pre2680 = trunc nsw i32 %i.jv to i8
  br label %._crit_edge2448.split

.lr.ph2447:                                       ; preds = %.preheader2141
  %i.kd = load ptr, ptr %i.bq, align 8, !tbaa !612
  %i.ke = icmp sgt i32 %i.jv, -1
  %i.kf = trunc nsw i32 %i.jv to i8               ; 3 uses
  br i1 %i.ke, label %.lr.ph2447.split.preheader, label %._crit_edge2448.split

.lr.ph2447.split.preheader:                       ; preds = %.lr.ph2447
  %wide.trip.count2624 = zext nneg i32 %i.kb to i64
  br label %.lr.ph2447.split

.lr.ph2447.split:                                 ; preds = %.lr.ph2447.split.preheader, %sqlite3PagerLockingMode.exit
  %indvars.iv2621 = phi i64 [ 2, %.lr.ph2447.split.preheader ], [ %indvars.iv.next2622, %sqlite3PagerLockingMode.exit ] ; 2 uses
  %i.kg = getelementptr inbounds nuw [32 x i8], ptr %i.kd, i64 %indvars.iv2621
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !617
  %i.kj = getelementptr i8, ptr %i.ki, i64 8
  %.val1686 = load ptr, ptr %i.kj, align 8, !tbaa !623
  %.val1686.val = load ptr, ptr %.val1686, align 8, !tbaa !629 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.val1686.val, i64 16
  %i.kl = load i8, ptr %i.kk, align 8, !tbaa !1015
  %.not.i1721 = icmp eq i8 %i.kl, 0
  br i1 %.not.i1721, label %bb.cb, label %sqlite3PagerLockingMode.exit

bb.cb:                                            ; preds = %.lr.ph2447.split
  %i.km = getelementptr inbounds nuw i8, ptr %.val1686.val, i64 296
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !965 ; 2 uses
  %.not.i.i1722 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i1722, label %sqlite3WalHeapMemory.exit.thread.i, label %sqlite3WalHeapMemory.exit.i

sqlite3WalHeapMemory.exit.i:                      ; preds = %bb.cb
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 63
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !1713
  %.not7.i = icmp eq i8 %i.kp, 2
  br i1 %.not7.i, label %sqlite3PagerLockingMode.exit, label %sqlite3WalHeapMemory.exit.thread.i

sqlite3WalHeapMemory.exit.thread.i:               ; preds = %sqlite3WalHeapMemory.exit.i, %bb.cb
  %i.kq = getelementptr inbounds nuw i8, ptr %.val1686.val, i64 8
  store i8 %i.kf, ptr %i.kq, align 8, !tbaa !1066
  br label %sqlite3PagerLockingMode.exit

sqlite3PagerLockingMode.exit:                     ; preds = %.lr.ph2447.split, %sqlite3WalHeapMemory.exit.i, %sqlite3WalHeapMemory.exit.thread.i
  %indvars.iv.next2622 = add nuw nsw i64 %indvars.iv2621, 1 ; 2 uses
  %exitcond2625.not = icmp eq i64 %indvars.iv.next2622, %wide.trip.count2624
  br i1 %exitcond2625.not, label %._crit_edge2448.split, label %.lr.ph2447.split, !llvm.loop !5399

._crit_edge2448.split:                            ; preds = %sqlite3PagerLockingMode.exit, %.preheader2141.._crit_edge2448.split_crit_edge, %.lr.ph2447
  %.pre-phi2681 = phi i8 [ %.pre2680, %.preheader2141.._crit_edge2448.split_crit_edge ], [ %i.kf, %.lr.ph2447 ], [ %i.kf, %sqlite3PagerLockingMode.exit ]
  %i.kr = getelementptr inbounds nuw i8, ptr %i.aa, i64 105
  store i8 %.pre-phi2681, ptr %i.kr, align 1, !tbaa !2383
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge2448.split, %bb.ca
  %i.ks = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !617
  %i.ku = getelementptr i8, ptr %i.kt, i64 8
  %.val1685 = load ptr, ptr %i.ku, align 8, !tbaa !623
  %.val1685.val = load ptr, ptr %.val1685, align 8, !tbaa !629 ; 4 uses
  %i.kv = icmp sgt i32 %i.jv, -1
  br i1 %i.kv, label %bb.cd, label %sqlite3PagerLockingMode.exit1728

bb.cd:                                            ; preds = %bb.cc
  %i.kw = getelementptr inbounds nuw i8, ptr %.val1685.val, i64 16
  %i.kx = load i8, ptr %i.kw, align 8, !tbaa !1015
  %.not.i1723 = icmp eq i8 %i.kx, 0
  br i1 %.not.i1723, label %bb.ce, label %sqlite3PagerLockingMode.exit1728

bb.ce:                                            ; preds = %bb.cd
  %i.ky = getelementptr inbounds nuw i8, ptr %.val1685.val, i64 296
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !965 ; 2 uses
  %.not.i.i1724 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i1724, label %sqlite3WalHeapMemory.exit.thread.i1727, label %sqlite3WalHeapMemory.exit.i1725

sqlite3WalHeapMemory.exit.i1725:                  ; preds = %bb.ce
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 63
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !1713
  %.not7.i1726 = icmp eq i8 %i.lb, 2
  br i1 %.not7.i1726, label %sqlite3PagerLockingMode.exit1728, label %sqlite3WalHeapMemory.exit.thread.i1727

sqlite3WalHeapMemory.exit.thread.i1727:           ; preds = %sqlite3WalHeapMemory.exit.i1725, %bb.ce
  %i.lc = trunc nuw nsw i32 %i.jv to i8
  %i.ld = getelementptr inbounds nuw i8, ptr %.val1685.val, i64 8
  store i8 %i.lc, ptr %i.ld, align 8, !tbaa !1066
  br label %sqlite3PagerLockingMode.exit1728

sqlite3PagerLockingMode.exit1728:                 ; preds = %bb.cc, %bb.cd, %sqlite3WalHeapMemory.exit.i1725, %sqlite3WalHeapMemory.exit.thread.i1727
  %i.le = getelementptr inbounds nuw i8, ptr %.val1685.val, i64 8
  br label %bb.cf

bb.cf:                                            ; preds = %sqlite3PagerLockingMode.exit1728, %bb.bz
  %.01478.in.in = phi ptr [ %i.jz, %bb.bz ], [ %i.le, %sqlite3PagerLockingMode.exit1728 ]
  %.01478.in = load i8, ptr %.01478.in.in, align 1, !tbaa !741
  %i.lf = icmp eq i8 %.01478.in, 1
  br i1 %i.lf, label %.split, label %.split1482

.split1482:                                       ; preds = %bb.cf
  call fastcc void @returnSingleText(ptr noundef %.0.i2043, ptr noundef nonnull @.str.982)
  br label %sqlite3DbFree.exit2038

.split:                                           ; preds = %bb.cf
  call fastcc void @returnSingleText(ptr noundef %.0.i2043, ptr noundef nonnull @.str.983)
  br label %sqlite3DbFree.exit2038

bb.cg:                                            ; preds = %bb.bc
  %i.lg = icmp eq ptr %.01356, null
  br i1 %i.lg, label %.thread2063, label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %bb.cg
  %i.lh = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.01356) #59
  %i.li = trunc i64 %i.lh to i32
  %i.lj = and i32 %i.li, 1073741823               ; 2 uses
  %.not2140 = icmp eq i32 %i.lj, 0
  br i1 %.not2140, label %select.unfold, label %.preheader.i1731.preheader

.preheader.i1731.preheader:                       ; preds = %sqlite3Strlen30.exit
  %5 = add nsw i32 %i.lj, -1
  %6 = zext nneg i32 %5 to i64                    ; 6 uses
  %scevgep2616 = getelementptr i8, ptr @.str.439, i64 %6
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i1731.preheader, %bb.ci
  %.023.i = phi ptr [ %i.lu, %bb.ci ], [ @.str.439, %.preheader.i1731.preheader ] ; 4 uses
  %.01422.i = phi ptr [ %i.lt, %bb.ci ], [ %.01356, %.preheader.i1731.preheader ] ; 2 uses
  %i.lk = load i8, ptr %.01422.i, align 1, !tbaa !741 ; 2 uses
  %.not.i1732 = icmp eq i8 %i.lk, 0
  br i1 %.not.i1732, label %sqlite3_strnicmp.exit.loopexit, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.i
  %i.ll = zext i8 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ll
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !741 ; 2 uses
  %i.lo = load i8, ptr %.023.i, align 1, !tbaa !741
  %i.lp = zext i8 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.lp
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !741 ; 2 uses
  %i.ls = icmp eq i8 %i.ln, %i.lr
  br i1 %i.ls, label %bb.ci, label %split.i

bb.ci:                                            ; preds = %bb.ch
  %i.lt = getelementptr inbounds nuw i8, ptr %.01422.i, i64 1
  %i.lu = getelementptr inbounds nuw i8, ptr %.023.i, i64 1
  %exitcond2617.not = icmp eq ptr %.023.i, %scevgep2616
  br i1 %exitcond2617.not, label %select.unfold, label %.lr.ph.i, !llvm.loop !21

split.i:                                          ; preds = %bb.ch
  %i.lv = zext i8 %i.ln to i32
  br label %sqlite3_strnicmp.exit

sqlite3_strnicmp.exit.loopexit:                   ; preds = %.lr.ph.i
  %.pre2651.a = load i8, ptr %.023.i, align 1, !tbaa !741
  %.phi.trans.insert2652.a = zext i8 %.pre2651.a to i64
  %.phi.trans.insert2653.a = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert2652.a
  %.pre2654.a = load i8, ptr %.phi.trans.insert2653.a, align 1, !tbaa !741
  br label %sqlite3_strnicmp.exit

sqlite3_strnicmp.exit:                            ; preds = %sqlite3_strnicmp.exit.loopexit, %split.i
  %i.lw = phi i8 [ %i.lr, %split.i ], [ %.pre2654.a, %sqlite3_strnicmp.exit.loopexit ]
  %i.lx = phi i32 [ %i.lv, %split.i ], [ 0, %sqlite3_strnicmp.exit.loopexit ]
  %i.ly = zext i8 %i.lw to i32
  %i.lz = icmp eq i32 %i.lx, %i.ly
  br i1 %i.lz, label %select.unfold, label %.preheader.i1731.1

.preheader.i1731.1:                               ; preds = %sqlite3_strnicmp.exit
  %scevgep2614 = getelementptr i8, ptr @.str.440, i64 %6
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.ck, %.preheader.i1731.1
  %.023.i.1 = phi ptr [ %i.ml, %bb.ck ], [ @.str.440, %.preheader.i1731.1 ] ; 4 uses
  %.01422.i.1 = phi ptr [ %i.mk, %bb.ck ], [ %.01356, %.preheader.i1731.1 ] ; 2 uses
  %i.ma = load i8, ptr %.01422.i.1, align 1, !tbaa !741 ; 2 uses
  %.not.i1732.1 = icmp eq i8 %i.ma, 0
  br i1 %.not.i1732.1, label %sqlite3_strnicmp.exit.loopexit.1, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.1
  %i.mb = zext i8 %i.ma to i64
  %i.mc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !741 ; 2 uses
  %i.me = load i8, ptr %.023.i.1, align 1, !tbaa !741
  %i.mf = zext i8 %i.me to i64
  %i.mg = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.mf
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !741 ; 2 uses
  %i.mi = icmp eq i8 %i.md, %i.mh
  br i1 %i.mi, label %bb.ck, label %split.i.1

split.i.1:                                        ; preds = %bb.cj
  %i.mj = zext i8 %i.md to i32
  br label %sqlite3_strnicmp.exit.1

bb.ck:                                            ; preds = %bb.cj
  %i.mk = getelementptr inbounds nuw i8, ptr %.01422.i.1, i64 1
  %i.ml = getelementptr inbounds nuw i8, ptr %.023.i.1, i64 1
  %exitcond2615.not = icmp eq ptr %.023.i.1, %scevgep2614
  br i1 %exitcond2615.not, label %select.unfold, label %.lr.ph.i.1, !llvm.loop !21

sqlite3_strnicmp.exit.loopexit.1:                 ; preds = %.lr.ph.i.1
  %.pre2655.a = load i8, ptr %.023.i.1, align 1, !tbaa !741
  %.phi.trans.insert2656.a = zext i8 %.pre2655.a to i64
  %.phi.trans.insert2657.a = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert2656.a
  %.pre2658.a = load i8, ptr %.phi.trans.insert2657.a, align 1, !tbaa !741
  br label %sqlite3_strnicmp.exit.1

sqlite3_strnicmp.exit.1:                          ; preds = %sqlite3_strnicmp.exit.loopexit.1, %split.i.1
  %i.mm = phi i8 [ %i.mh, %split.i.1 ], [ %.pre2658.a, %sqlite3_strnicmp.exit.loopexit.1 ]
  %i.mn = phi i32 [ %i.mj, %split.i.1 ], [ 0, %sqlite3_strnicmp.exit.loopexit.1 ]
  %i.mo = zext i8 %i.mm to i32
  %i.mp = icmp eq i32 %i.mn, %i.mo
  br i1 %i.mp, label %select.unfold, label %.preheader.i1731.2

.preheader.i1731.2:                               ; preds = %sqlite3_strnicmp.exit.1
  %scevgep2611 = getelementptr i8, ptr @.str.441, i64 %6
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.cm, %.preheader.i1731.2
  %.023.i.2 = phi ptr [ %i.nb, %bb.cm ], [ @.str.441, %.preheader.i1731.2 ] ; 4 uses
  %.01422.i.2 = phi ptr [ %i.na, %bb.cm ], [ %.01356, %.preheader.i1731.2 ] ; 2 uses
  %i.mq = load i8, ptr %.01422.i.2, align 1, !tbaa !741 ; 2 uses
  %.not.i1732.2 = icmp eq i8 %i.mq, 0
  br i1 %.not.i1732.2, label %sqlite3_strnicmp.exit.loopexit.2, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i.2
  %i.mr = zext i8 %i.mq to i64
  %i.ms = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.mr
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !741 ; 2 uses
  %i.mu = load i8, ptr %.023.i.2, align 1, !tbaa !741
  %i.mv = zext i8 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !741 ; 2 uses
  %i.my = icmp eq i8 %i.mt, %i.mx
  br i1 %i.my, label %bb.cm, label %split.i.2

split.i.2:                                        ; preds = %bb.cl
  %i.mz = zext i8 %i.mt to i32
  br label %sqlite3_strnicmp.exit.2

bb.cm:                                            ; preds = %bb.cl
  %i.na = getelementptr inbounds nuw i8, ptr %.01422.i.2, i64 1
  %i.nb = getelementptr inbounds nuw i8, ptr %.023.i.2, i64 1
  %exitcond2612.not = icmp eq ptr %.023.i.2, %scevgep2611
  br i1 %exitcond2612.not, label %sqlite3_strnicmp.exit.thread.thread, label %.lr.ph.i.2, !llvm.loop !21

sqlite3_strnicmp.exit.loopexit.2:                 ; preds = %.lr.ph.i.2
  %.pre2659.a = load i8, ptr %.023.i.2, align 1, !tbaa !741
  %.phi.trans.insert2660.a = zext i8 %.pre2659.a to i64
  %.phi.trans.insert2661.a = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert2660.a
  %.pre2662.a = load i8, ptr %.phi.trans.insert2661.a, align 1, !tbaa !741
  br label %sqlite3_strnicmp.exit.2

sqlite3_strnicmp.exit.2:                          ; preds = %sqlite3_strnicmp.exit.loopexit.2, %split.i.2
  %i.nc = phi i8 [ %i.mx, %split.i.2 ], [ %.pre2662.a, %sqlite3_strnicmp.exit.loopexit.2 ]
  %i.nd = phi i32 [ %i.mz, %split.i.2 ], [ 0, %sqlite3_strnicmp.exit.loopexit.2 ]
  %i.ne = zext i8 %i.nc to i32
  %i.nf = icmp eq i32 %i.nd, %i.ne
  br i1 %i.nf, label %sqlite3_strnicmp.exit.thread.thread, label %.preheader.i1731.3

.preheader.i1731.3:                               ; preds = %sqlite3_strnicmp.exit.2
  %scevgep2608 = getelementptr i8, ptr @.str.442, i64 %6
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.co, %.preheader.i1731.3
  %.023.i.3 = phi ptr [ %i.nr, %bb.co ], [ @.str.442, %.preheader.i1731.3 ] ; 4 uses
  %.01422.i.3 = phi ptr [ %i.nq, %bb.co ], [ %.01356, %.preheader.i1731.3 ] ; 2 uses
  %i.ng = load i8, ptr %.01422.i.3, align 1, !tbaa !741 ; 2 uses
  %.not.i1732.3 = icmp eq i8 %i.ng, 0
  br i1 %.not.i1732.3, label %sqlite3_strnicmp.exit.loopexit.3, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph.i.3
  %i.nh = zext i8 %i.ng to i64
  %i.ni = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.nh
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !741 ; 2 uses
  %i.nk = load i8, ptr %.023.i.3, align 1, !tbaa !741
  %i.nl = zext i8 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !741 ; 2 uses
  %i.no = icmp eq i8 %i.nj, %i.nn
  br i1 %i.no, label %bb.co, label %split.i.3

split.i.3:                                        ; preds = %bb.cn
  %i.np = zext i8 %i.nj to i32
  br label %sqlite3_strnicmp.exit.3

bb.co:                                            ; preds = %bb.cn
  %i.nq = getelementptr inbounds nuw i8, ptr %.01422.i.3, i64 1
  %i.nr = getelementptr inbounds nuw i8, ptr %.023.i.3, i64 1
  %exitcond2609.not = icmp eq ptr %.023.i.3, %scevgep2608
  br i1 %exitcond2609.not, label %select.unfold, label %.lr.ph.i.3, !llvm.loop !21

sqlite3_strnicmp.exit.loopexit.3:                 ; preds = %.lr.ph.i.3
  %.pre2663.a = load i8, ptr %.023.i.3, align 1, !tbaa !741
  %.phi.trans.insert2664.a = zext i8 %.pre2663.a to i64
  %.phi.trans.insert2665.a = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert2664.a
  %.pre2666.a = load i8, ptr %.phi.trans.insert2665.a, align 1, !tbaa !741
  br label %sqlite3_strnicmp.exit.3

sqlite3_strnicmp.exit.3:                          ; preds = %sqlite3_strnicmp.exit.loopexit.3, %split.i.3
  %i.ns = phi i8 [ %i.nn, %split.i.3 ], [ %.pre2666.a, %sqlite3_strnicmp.exit.loopexit.3 ]
  %i.nt = phi i32 [ %i.np, %split.i.3 ], [ 0, %sqlite3_strnicmp.exit.loopexit.3 ]
  %i.nu = zext i8 %i.ns to i32
  %i.nv = icmp eq i32 %i.nt, %i.nu
  br i1 %i.nv, label %select.unfold, label %.preheader.i1731.4

.preheader.i1731.4:                               ; preds = %sqlite3_strnicmp.exit.3
  %scevgep2605 = getelementptr i8, ptr @.str.443, i64 %6
  br label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.cq, %.preheader.i1731.4
  %.023.i.4 = phi ptr [ %i.oh, %bb.cq ], [ @.str.443, %.preheader.i1731.4 ] ; 4 uses
  %.01422.i.4 = phi ptr [ %i.og, %bb.cq ], [ %.01356, %.preheader.i1731.4 ] ; 2 uses
  %i.nw = load i8, ptr %.01422.i.4, align 1, !tbaa !741 ; 2 uses
  %.not.i1732.4 = icmp eq i8 %i.nw, 0
  br i1 %.not.i1732.4, label %sqlite3_strnicmp.exit.loopexit.4, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph.i.4
  %i.nx = zext i8 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.nx
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !741 ; 2 uses
  %i.oa = load i8, ptr %.023.i.4, align 1, !tbaa !741
  %i.ob = zext i8 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ob
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !741 ; 2 uses
  %i.oe = icmp eq i8 %i.nz, %i.od
  br i1 %i.oe, label %bb.cq, label %split.i.4

split.i.4:                                        ; preds = %bb.cp
  %i.of = zext i8 %i.nz to i32
  br label %sqlite3_strnicmp.exit.4

bb.cq:                                            ; preds = %bb.cp
  %i.og = getelementptr inbounds nuw i8, ptr %.01422.i.4, i64 1
  %i.oh = getelementptr inbounds nuw i8, ptr %.023.i.4, i64 1
  %exitcond2606.not = icmp eq ptr %.023.i.4, %scevgep2605
  br i1 %exitcond2606.not, label %select.unfold, label %.lr.ph.i.4, !llvm.loop !21

sqlite3_strnicmp.exit.loopexit.4:                 ; preds = %.lr.ph.i.4
  %.pre2667.a = load i8, ptr %.023.i.4, align 1, !tbaa !741
  %.phi.trans.insert2668.a = zext i8 %.pre2667.a to i64
  %.phi.trans.insert2669.a = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert2668.a
  %.pre2670.a = load i8, ptr %.phi.trans.insert2669.a, align 1, !tbaa !741
  br label %sqlite3_strnicmp.exit.4

sqlite3_strnicmp.exit.4:                          ; preds = %sqlite3_strnicmp.exit.loopexit.4, %split.i.4
  %i.oi = phi i8 [ %i.od, %split.i.4 ], [ %.pre2670.a, %sqlite3_strnicmp.exit.loopexit.4 ]
  %i.oj = phi i32 [ %i.of, %split.i.4 ], [ 0, %sqlite3_strnicmp.exit.loopexit.4 ]
  %i.ok = zext i8 %i.oi to i32
  %i.ol = icmp eq i32 %i.oj, %i.ok
  br i1 %i.ol, label %select.unfold, label %.preheader.i1731.5

.preheader.i1731.5:                               ; preds = %sqlite3_strnicmp.exit.4
  %scevgep = getelementptr i8, ptr @.str.444, i64 %6
  br label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.cs, %.preheader.i1731.5
  %.023.i.5 = phi ptr [ %i.ox, %bb.cs ], [ @.str.444, %.preheader.i1731.5 ] ; 4 uses
  %.01422.i.5 = phi ptr [ %i.ow, %bb.cs ], [ %.01356, %.preheader.i1731.5 ] ; 2 uses
  %i.om = load i8, ptr %.01422.i.5, align 1, !tbaa !741 ; 2 uses
  %.not.i1732.5 = icmp eq i8 %i.om, 0
  br i1 %.not.i1732.5, label %sqlite3_strnicmp.exit.loopexit.5, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.i.5
  %i.on = zext i8 %i.om to i64
  %i.oo = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.on
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !741 ; 2 uses
  %i.oq = load i8, ptr %.023.i.5, align 1, !tbaa !741
  %i.or = zext i8 %i.oq to i64
  %i.os = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.or
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !741 ; 2 uses
  %i.ou = icmp eq i8 %i.op, %i.ot
  br i1 %i.ou, label %bb.cs, label %split.i.5

split.i.5:                                        ; preds = %bb.cr
  %i.ov = zext i8 %i.op to i32
  br label %sqlite3_strnicmp.exit.5

bb.cs:                                            ; preds = %bb.cr
  %i.ow = getelementptr inbounds nuw i8, ptr %.01422.i.5, i64 1
  %i.ox = getelementptr inbounds nuw i8, ptr %.023.i.5, i64 1
  %exitcond2603.not = icmp eq ptr %.023.i.5, %scevgep
  br i1 %exitcond2603.not, label %select.unfold, label %.lr.ph.i.5, !llvm.loop !21

sqlite3_strnicmp.exit.loopexit.5:                 ; preds = %.lr.ph.i.5
  %.pre2671 = load i8, ptr %.023.i.5, align 1, !tbaa !741
  %.phi.trans.insert2672 = zext i8 %.pre2671 to i64
  %.phi.trans.insert2673 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert2672
  %.pre2674 = load i8, ptr %.phi.trans.insert2673, align 1, !tbaa !741
  br label %sqlite3_strnicmp.exit.5

sqlite3_strnicmp.exit.5:                          ; preds = %sqlite3_strnicmp.exit.loopexit.5, %split.i.5
  %i.oy = phi i8 [ %i.ot, %split.i.5 ], [ %.pre2674, %sqlite3_strnicmp.exit.loopexit.5 ]
  %i.oz = phi i32 [ %i.ov, %split.i.5 ], [ 0, %sqlite3_strnicmp.exit.loopexit.5 ]
  %i.pa = zext i8 %i.oy to i32
  %i.pb = icmp eq i32 %i.oz, %i.pa
  br i1 %i.pb, label %select.unfold, label %.thread2063

sqlite3_strnicmp.exit.thread.thread:              ; preds = %bb.cm, %sqlite3_strnicmp.exit.2
  %i.pc = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !924
  %i.pe = and i64 %i.pd, 268435456
  %.not1657 = icmp eq i64 %i.pe, 0
  br i1 %.not1657, label %select.unfold, label %.thread2063

.thread2063:                                      ; preds = %sqlite3_strnicmp.exit.5, %bb.cg, %sqlite3_strnicmp.exit.thread.thread
  %i.pf = load i32, ptr %i.bh, align 8, !tbaa !806
  %i.pg = icmp eq i32 %i.pf, 0
  br i1 %i.pg, label %bb.ct, label %select.unfold

bb.ct:                                            ; preds = %.thread2063
  store i32 1, ptr %i.bh, align 8, !tbaa !806
  br label %select.unfold

select.unfold:                                    ; preds = %bb.ci, %bb.ck, %bb.co, %bb.cq, %bb.cs, %sqlite3_strnicmp.exit.5, %sqlite3_strnicmp.exit.4, %sqlite3_strnicmp.exit.3, %sqlite3_strnicmp.exit.1, %sqlite3_strnicmp.exit, %sqlite3Strlen30.exit, %sqlite3_strnicmp.exit.thread.thread, %bb.ct, %.thread2063
  %.314762067 = phi i32 [ -1, %bb.ct ], [ -1, %.thread2063 ], [ 2, %sqlite3_strnicmp.exit.thread.thread ], [ 5, %sqlite3_strnicmp.exit.5 ], [ 4, %sqlite3_strnicmp.exit.4 ], [ 3, %sqlite3_strnicmp.exit.3 ], [ 1, %sqlite3_strnicmp.exit.1 ], [ 0, %sqlite3_strnicmp.exit ], [ 1, %bb.ck ], [ 5, %bb.cs ], [ 4, %bb.cq ], [ 3, %bb.co ], [ 0, %sqlite3Strlen30.exit ], [ 0, %bb.ci ]
  %.01373 = phi i32 [ 0, %bb.ct ], [ %.015.i, %.thread2063 ], [ %.015.i, %sqlite3_strnicmp.exit.thread.thread ], [ %.015.i, %sqlite3_strnicmp.exit.5 ], [ %.015.i, %sqlite3_strnicmp.exit.4 ], [ %.015.i, %sqlite3_strnicmp.exit.3 ], [ %.015.i, %sqlite3_strnicmp.exit.1 ], [ %.015.i, %sqlite3_strnicmp.exit ], [ %.015.i, %bb.ck ], [ %.015.i, %bb.cs ], [ %.015.i, %bb.cq ], [ %.015.i, %bb.co ], [ %.015.i, %sqlite3Strlen30.exit ], [ %.015.i, %bb.ci ]
  %i.ph = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !611 ; 2 uses
  %i.pj = icmp sgt i32 %i.pi, 0
  br i1 %i.pj, label %.lr.ph2444.preheader, label %._crit_edge2445

.lr.ph2444.preheader:                             ; preds = %select.unfold
  %i.pk = zext nneg i32 %i.pi to i64
  %i.pl = zext nneg i32 %.01373 to i64
  br label %.lr.ph2444

.lr.ph2444:                                       ; preds = %.lr.ph2444.preheader, %bb.cx
  %indvars.iv2618 = phi i64 [ %i.pk, %.lr.ph2444.preheader ], [ %indvars.iv.next2619, %bb.cx ] ; 2 uses
  %indvars.iv.next2619 = add nsw i64 %indvars.iv2618, -1 ; 4 uses
  %i.pm = load ptr, ptr %i.bq, align 8, !tbaa !612
  %i.pn = getelementptr inbounds nuw [32 x i8], ptr %i.pm, i64 %indvars.iv.next2619
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !617
  %.not1658 = icmp eq ptr %i.pp, null
  br i1 %.not1658, label %bb.cx, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph2444
  %i.pq = icmp eq i64 %indvars.iv.next2619, %i.pl
  br i1 %i.pq, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.pr = load i32, ptr %i.bh, align 8, !tbaa !806
  %i.ps = icmp eq i32 %i.pr, 0
  br i1 %i.ps, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.pt = trunc nuw nsw i64 %indvars.iv.next2619 to i32 ; 2 uses
  call fastcc void @sqlite3VdbeUsesBtree(ptr noundef nonnull %.0.i2043, i32 noundef %i.pt)
  %i.pu = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i2043, i32 noundef 4, i32 noundef %i.pt, i32 noundef 1, i32 noundef %.314762067) ; 0 uses
  br label %bb.cx

bb.cx:                                            ; preds = %.lr.ph2444, %bb.cv, %bb.cw
  %i.pv = icmp samesign ugt i64 %indvars.iv2618, 1
  br i1 %i.pv, label %.lr.ph2444, label %._crit_edge2445, !llvm.loop !5400

._crit_edge2445:                                  ; preds = %bb.cx, %select.unfold
  %i.pw = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i2043, i32 noundef 85, i32 noundef 1, i32 noundef 1) ; 0 uses
  br label %sqlite3DbFree.exit2038.thread

bb.cy:                                            ; preds = %bb.bc
  %i.px = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !617
  %i.pz = getelementptr i8, ptr %i.py, i64 8
  %.val = load ptr, ptr %i.pz, align 8, !tbaa !623
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !629 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #58
  store i64 -2, ptr %i.j, align 8, !tbaa !571
  %.not1655 = icmp eq ptr %.01356, null
  br i1 %.not1655, label %.sqlite3WalLimit.exit_crit_edge.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qa = call fastcc i32 @sqlite3DecOrHexToI64(ptr noundef nonnull %.01356, ptr noundef %i.j) ; 0 uses
  %i.qb = load i64, ptr %i.j, align 8, !tbaa !571
  %spec.store.select = call i64 @llvm.smax.i64(i64 %i.qb, i64 -1) ; 4 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.val.val, i64 208
  store i64 %spec.store.select, ptr %i.qc, align 8, !tbaa !1776
  %i.qd = getelementptr inbounds nuw i8, ptr %.val.val, i64 296
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !965 ; 2 uses
  %.not.i.i1733 = icmp eq ptr %i.qe, null
  br i1 %.not.i.i1733, label %sqlite3PagerJournalSizeLimit.exit, label %bb.da

.sqlite3WalLimit.exit_crit_edge.i:                ; preds = %bb.cy
  %i.qf = getelementptr inbounds nuw i8, ptr %.val.val, i64 208
  %.pre.i = load i64, ptr %i.qf, align 8, !tbaa !1776
  br label %sqlite3PagerJournalSizeLimit.exit

bb.da:                                            ; preds = %bb.cz
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qe, i64 32
  store i64 %spec.store.select, ptr %i.qg, align 8, !tbaa !1823
  br label %sqlite3PagerJournalSizeLimit.exit

sqlite3PagerJournalSizeLimit.exit:                ; preds = %.sqlite3WalLimit.exit_crit_edge.i, %bb.cz, %bb.da
  %i.qh = phi i64 [ %.pre.i, %.sqlite3WalLimit.exit_crit_edge.i ], [ %spec.store.select, %bb.da ], [ %spec.store.select, %bb.cz ]
  call fastcc void @returnSingleInt(ptr noundef %.0.i2043, i64 noundef %i.qh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #58
  br label %sqlite3DbFree.exit2038

bb.db:                                            ; preds = %bb.bc
  %i.qi = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !617 ; 2 uses
  %.not1654 = icmp eq ptr %.01356, null
  br i1 %.not1654, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.qk = call fastcc i32 @sqlite3BtreeGetAutoVacuum(ptr noundef %i.qj)
  %i.ql = zext nneg i32 %i.qk to i64
  call fastcc void @returnSingleInt(ptr noundef %.0.i2043, i64 noundef %i.ql)
  br label %sqlite3DbFree.exit2038.thread2123

bb.dd:                                            ; preds = %bb.db
  %i.qm = call fastcc i32 @getAutoVacuum(ptr noundef %.01356) ; 3 uses
  %i.qn = trunc nuw i32 %i.qm to i8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.aa, i64 106
  store i8 %i.qn, ptr %i.qo, align 2, !tbaa !1387
  %i.qp = call fastcc i32 @sqlite3BtreeSetAutoVacuum(ptr noundef %i.qj, i32 noundef %i.qm)
  %i.qq = icmp eq i32 %i.qp, 0
  %i.qr = add nsw i32 %i.qm, -1                   ; 2 uses
  %or.cond7 = icmp ult i32 %i.qr, 2
  %or.cond1667 = select i1 %i.qq, i1 %or.cond7, i1 false
  br i1 %or.cond1667, label %bb.de, label %.thread3044

bb.de:                                            ; preds = %bb.dd
  %.val1693 = load i32, ptr %i.ap, align 8, !tbaa !711
  %i.qs = call fastcc ptr @sqlite3VdbeAddOpList(ptr noundef nonnull %.0.i2043, i32 noundef 5, ptr noundef nonnull @sqlite3Pragma.setMeta6) ; 5 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 4
  store i32 %.015.i, ptr %i.qt, align 4, !tbaa !954
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 28
  store i32 %.015.i, ptr %i.qu, align 4, !tbaa !954
  %i.qv = add nsw i32 %.val1693, 4
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qs, i64 56
  store i32 %i.qv, ptr %i.qw, align 8, !tbaa !955
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qs, i64 100
  store i32 %.015.i, ptr %i.qx, align 4, !tbaa !954
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qs, i64 108
  store i32 %i.qr, ptr %i.qy, align 4, !tbaa !956
  call fastcc void @sqlite3VdbeUsesBtree(ptr noundef nonnull %.0.i2043, i32 noundef %.015.i)
  br label %.thread3044

bb.df:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #58
  store i32 0, ptr %i.k, align 4, !tbaa !576
  %i.qz = icmp eq ptr %.01356, null
  br i1 %i.qz, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ra = call fastcc i32 @sqlite3GetInt32(ptr noundef nonnull %.01356, ptr noundef %i.k)
  %i.rb = icmp eq i32 %i.ra, 0
  %i.rc = load i32, ptr %i.k, align 4             ; 2 uses
  %i.rd = icmp slt i32 %i.rc, 1
  %or.cond9 = select i1 %i.rb, i1 true, i1 %i.rd
  br i1 %or.cond9, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg, %bb.df
end_hunk_0
begin_hunk_1_@fts5UnicodeCreate:bb.a
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.aa:                                            ; preds = %bb.x
  store i8 1, ptr %i.bb, align 4, !tbaa !741
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.ab:                                            ; preds = %bb.x
  store i8 1, ptr %i.az, align 2, !tbaa !741
  store i8 1, ptr %i.ba, align 1, !tbaa !741
  store i8 1, ptr %i.bb, align 4, !tbaa !741
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.ac:                                            ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !741
  switch i8 %i.bx, label %.thread113 [
    i8 100, label %bb.ad
    i8 108, label %bb.ae
    i8 111, label %bb.af
    i8 42, label %bb.ag
  ]

bb.ad:                                            ; preds = %bb.ac
  store i8 1, ptr %i.aw, align 1, !tbaa !741
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.ae:                                            ; preds = %bb.ac
  store i8 1, ptr %i.ax, align 2, !tbaa !741
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.af:                                            ; preds = %bb.ac
  store i8 1, ptr %i.ay, align 1, !tbaa !741
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.ag:                                            ; preds = %bb.ac
  store i8 1, ptr %i.aw, align 1, !tbaa !741
  store i8 1, ptr %i.ax, align 2, !tbaa !741
  store i8 1, ptr %i.ay, align 1, !tbaa !741
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.ah:                                            ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !741
  switch i8 %i.bz, label %.thread113 [
    i8 99, label %bb.ai
    i8 100, label %bb.aj
    i8 101, label %bb.ak
    i8 102, label %bb.al
    i8 105, label %bb.am
    i8 111, label %bb.an
    i8 115, label %bb.ao
    i8 42, label %bb.ap
  ]

bb.ai:                                            ; preds = %bb.ah
  store i8 1, ptr %i.ap, align 8, !tbaa !741
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.aj:                                            ; preds = %bb.ah
  store i8 1, ptr %i.av, align 1, !tbaa !741
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.ak:                                            ; preds = %bb.ah
  store i8 1, ptr %i.au, align 2, !tbaa !741
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.al:                                            ; preds = %bb.ah
  store i8 1, ptr %i.at, align 1, !tbaa !741
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.am:                                            ; preds = %bb.ah
  store i8 1, ptr %i.as, align 4, !tbaa !741
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.an:                                            ; preds = %bb.ah
  store i8 1, ptr %i.ar, align 1, !tbaa !741
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.ao:                                            ; preds = %bb.ah
  store i8 1, ptr %i.aq, align 2, !tbaa !741
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.ap:                                            ; preds = %bb.ah
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ap, i8 1, i64 7, i1 false)
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.aq:                                            ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !741
  switch i8 %i.cb, label %.thread113 [
    i8 99, label %bb.ar
    i8 107, label %bb.as
    i8 109, label %bb.at
    i8 111, label %bb.au
    i8 42, label %bb.av
  ]

bb.ar:                                            ; preds = %bb.aq
  store i8 1, ptr %i.al, align 1, !tbaa !741
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.as:                                            ; preds = %bb.aq
  store i8 1, ptr %i.ao, align 8, !tbaa !741
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.at:                                            ; preds = %bb.aq
  store i8 1, ptr %i.an, align 1, !tbaa !741
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.au:                                            ; preds = %bb.aq
  store i8 1, ptr %i.am, align 2, !tbaa !741
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.av:                                            ; preds = %bb.aq
  store i32 16843009, ptr %i.al, align 1
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.aw:                                            ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !741
  switch i8 %i.cd, label %.thread113 [
    i8 108, label %bb.ax
    i8 112, label %bb.ay
    i8 115, label %bb.az
    i8 42, label %bb.ba
  ]

bb.ax:                                            ; preds = %bb.aw
  store i8 1, ptr %i.ai, align 1, !tbaa !741
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.ay:                                            ; preds = %bb.aw
  store i8 1, ptr %i.aj, align 4, !tbaa !741
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.az:                                            ; preds = %bb.aw
  store i8 1, ptr %i.ak, align 1, !tbaa !741
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

bb.ba:                                            ; preds = %bb.aw
  store i8 1, ptr %i.ai, align 1, !tbaa !741
  store i8 1, ptr %i.aj, align 4, !tbaa !741
  store i8 1, ptr %i.ak, align 1, !tbaa !741
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader

sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader: ; preds = %.preheader.i65, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i

sqlite3Fts5UnicodeCatParse.exit.thread.i:         ; preds = %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader, %bb.bb
  %.2.i = phi ptr [ %i.cf, %bb.bb ], [ %.1.i, %sqlite3Fts5UnicodeCatParse.exit.thread.i.preheader ] ; 4 uses
  %i.ce = load i8, ptr %.2.i, align 1, !tbaa !741 ; 3 uses
  switch i8 %i.ce, label %bb.bb [
    i8 0, label %._crit_edge.i
    i8 9, label %.preheader.i65.backedge
    i8 32, label %.preheader.i65.backedge
  ]

bb.bb:                                            ; preds = %sqlite3Fts5UnicodeCatParse.exit.thread.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  br label %sqlite3Fts5UnicodeCatParse.exit.thread.i, !llvm.loop !8005

._crit_edge.i:                                    ; preds = %sqlite3Fts5UnicodeCatParse.exit.thread.i, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge.i.i, %._crit_edge.i
  %indvars.iv18.i.i = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.next19.i.i, %._crit_edge.i.i ] ; 2 uses
  %.01315.i.i = phi i32 [ 0, %._crit_edge.i ], [ %.1.lcssa.i.i, %._crit_edge.i.i ] ; 5 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr @aFts5UnicodeData, i64 %indvars.iv18.i.i
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !789
  %i.cj = zext i16 %i.ci to i32                   ; 2 uses
  %i.ck = lshr i32 %i.cj, 5
  %i.cl = add nuw nsw i32 %i.ck, %.01315.i.i
  %.fr.i.i = freeze i32 %i.cl
  %invariant.smin.i.i = tail call i32 @llvm.smin.i32(i32 %.fr.i.i, i32 128) ; 3 uses
  %i.cm = icmp slt i32 %.01315.i.i, %invariant.smin.i.i
  br i1 %i.cm, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bc
  %i.cn = and i32 %i.cj, 31
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !741
  %i.cr = zext nneg i32 %.01315.i.i to i64
  %scevgep.i.i = getelementptr i8, ptr %i.c, i64 %i.cr
  %i.cs = xor i32 %.01315.i.i, -1
  %i.ct = add nsw i32 %invariant.smin.i.i, %i.cs
  %i.cu = zext i32 %i.ct to i64
  %i.cv = add nuw nsw i64 %i.cu, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i, i8 %i.cq, i64 %i.cv, i1 false), !tbaa !741
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %bb.bc
  %.1.lcssa.i.i = phi i32 [ %.01315.i.i, %bb.bc ], [ %invariant.smin.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %indvars.iv.next19.i.i = add nuw nsw i64 %indvars.iv18.i.i, 1
  %i.cw = icmp slt i32 %.1.lcssa.i.i, 128
  br i1 %i.cw, label %bb.bc, label %unicodeSetCategories.exit, !llvm.loop !8006

unicodeSetCategories.exit:                        ; preds = %._crit_edge.i.i
  store i8 0, ptr %i.c, align 8, !tbaa !741
  br i1 %i.l, label %.lr.ph127.preheader, label %._crit_edge128.thread170

.lr.ph127.preheader:                              ; preds = %unicodeSetCategories.exit
  %4 = zext nneg i32 %2 to i64
  br label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph127.preheader, %sqlite3_stricmp.exit90.thread
  %indvars.iv136 = phi i64 [ 0, %.lr.ph127.preheader ], [ %indvars.iv.next137, %sqlite3_stricmp.exit90.thread ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv136 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !747 ; 4 uses
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !747 ; 5 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %.thread113, label %.preheader.i67

.preheader.i67:                                   ; preds = %.lr.ph127, %bb.bf
  %.013.i.i68 = phi ptr [ %i.dm, %bb.bf ], [ %i.da, %.lr.ph127 ] ; 2 uses
  %.012.i.i69 = phi ptr [ %i.dn, %bb.bf ], [ @.str.1649, %.lr.ph127 ] ; 2 uses
  %i.dc = load i8, ptr %.013.i.i68, align 1, !tbaa !741 ; 3 uses
  %i.dd = load i8, ptr %.012.i.i69, align 1, !tbaa !741 ; 2 uses
  %i.de = icmp eq i8 %i.dc, %i.dd
  br i1 %i.de, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.preheader.i67
  %i.df = icmp eq i8 %i.dc, 0
  br i1 %i.df, label %sqlite3_stricmp.exit72.thread, label %bb.bf

bb.be:                                            ; preds = %.preheader.i67
  %i.dg = zext i8 %i.dc to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !741
  %i.dj = zext i8 %i.dd to i64
  %i.dk = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !741
  %.not.i.i70 = icmp eq i8 %i.di, %i.dl
  br i1 %.not.i.i70, label %bb.bf, label %.preheader.i73

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.dm = getelementptr inbounds nuw i8, ptr %.013.i.i68, i64 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.012.i.i69, i64 1
  br label %.preheader.i67

sqlite3_stricmp.exit72.thread:                    ; preds = %bb.bd
  %i.do = load i8, ptr %i.cz, align 1, !tbaa !741 ; 2 uses
  %.off = add i8 %i.do, -48
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.bg, label %.thread113

bb.bg:                                            ; preds = %sqlite3_stricmp.exit72.thread
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !741
  %.not59 = icmp eq i8 %i.dq, 0
  br i1 %.not59, label %bb.bh, label %.thread113

bb.bh:                                            ; preds = %bb.bg
  %i.dr = zext nneg i8 %i.do to i32
  %i.ds = add nsw i32 %i.dr, -48
  store i32 %i.ds, ptr %i.d, align 4, !tbaa !3478
  br label %sqlite3_stricmp.exit90.thread

.preheader.i73:                                   ; preds = %bb.be, %bb.bk
  %.013.i.i74 = phi ptr [ %i.ed, %bb.bk ], [ %i.da, %bb.be ] ; 2 uses
  %.012.i.i75 = phi ptr [ %i.ee, %bb.bk ], [ @.str.1759, %bb.be ] ; 2 uses
  %i.dt = load i8, ptr %.013.i.i74, align 1, !tbaa !741 ; 3 uses
  %i.du = load i8, ptr %.012.i.i75, align 1, !tbaa !741 ; 2 uses
  %i.dv = icmp eq i8 %i.dt, %i.du
  br i1 %i.dv, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.preheader.i73
  %i.dw = icmp eq i8 %i.dt, 0
  br i1 %i.dw, label %sqlite3_stricmp.exit78.thread101, label %bb.bk

bb.bj:                                            ; preds = %.preheader.i73
  %i.dx = zext i8 %i.dt to i64
  %i.dy = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !741
  %i.ea = zext i8 %i.du to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !741
  %.not.i.i76 = icmp eq i8 %i.dz, %i.ec
  br i1 %.not.i.i76, label %bb.bk, label %.preheader.i79

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.ed = getelementptr inbounds nuw i8, ptr %.013.i.i74, i64 1
  %i.ee = getelementptr inbounds nuw i8, ptr %.012.i.i75, i64 1
  br label %.preheader.i73

sqlite3_stricmp.exit78.thread101:                 ; preds = %bb.bi
  %i.ef = tail call fastcc i32 @fts5UnicodeAddExceptions(ptr noundef %i.c, ptr noundef %i.cz, i32 noundef 1)
  br label %sqlite3_stricmp.exit90.thread

.preheader.i79:                                   ; preds = %bb.bj, %bb.bn
  %.013.i.i80 = phi ptr [ %i.eq, %bb.bn ], [ %i.da, %bb.bj ] ; 2 uses
  %.012.i.i81 = phi ptr [ %i.er, %bb.bn ], [ @.str.1760, %bb.bj ] ; 2 uses
  %i.eg = load i8, ptr %.013.i.i80, align 1, !tbaa !741 ; 3 uses
  %i.eh = load i8, ptr %.012.i.i81, align 1, !tbaa !741 ; 2 uses
  %i.ei = icmp eq i8 %i.eg, %i.eh
  br i1 %i.ei, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.preheader.i79
  %i.ej = icmp eq i8 %i.eg, 0
  br i1 %i.ej, label %sqlite3_stricmp.exit84.thread105, label %bb.bn

bb.bm:                                            ; preds = %.preheader.i79
  %i.ek = zext i8 %i.eg to i64
  %i.el = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !741
  %i.en = zext i8 %i.eh to i64
  %i.eo = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !741
  %.not.i.i82 = icmp eq i8 %i.em, %i.ep
  br i1 %.not.i.i82, label %bb.bn, label %.preheader.i85

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.eq = getelementptr inbounds nuw i8, ptr %.013.i.i80, i64 1
  %i.er = getelementptr inbounds nuw i8, ptr %.012.i.i81, i64 1
  br label %.preheader.i79

sqlite3_stricmp.exit84.thread105:                 ; preds = %bb.bl
  %i.es = tail call fastcc i32 @fts5UnicodeAddExceptions(ptr noundef %i.c, ptr noundef %i.cz, i32 noundef 0)
  br label %sqlite3_stricmp.exit90.thread

.preheader.i85:                                   ; preds = %bb.bm, %bb.bq
  %.013.i.i86 = phi ptr [ %i.fd, %bb.bq ], [ %i.da, %bb.bm ] ; 2 uses
  %.012.i.i87 = phi ptr [ %i.fe, %bb.bq ], [ @.str.1758, %bb.bm ] ; 2 uses
  %i.et = load i8, ptr %.013.i.i86, align 1, !tbaa !741 ; 3 uses
  %i.eu = load i8, ptr %.012.i.i87, align 1, !tbaa !741 ; 2 uses
  %i.ev = icmp eq i8 %i.et, %i.eu
  br i1 %i.ev, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.preheader.i85
  %i.ew = icmp eq i8 %i.et, 0
  br i1 %i.ew, label %sqlite3_stricmp.exit90.thread, label %bb.bq

bb.bp:                                            ; preds = %.preheader.i85
  %i.ex = zext i8 %i.et to i64
  %i.ey = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !741
  %i.fa = zext i8 %i.eu to i64
  %i.fb = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !741
  %.not.i.i88 = icmp eq i8 %i.ez, %i.fc
  br i1 %.not.i.i88, label %bb.bq, label %.thread113

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.fd = getelementptr inbounds nuw i8, ptr %.013.i.i86, i64 1
  %i.fe = getelementptr inbounds nuw i8, ptr %.012.i.i87, i64 1
  br label %.preheader.i85

sqlite3_stricmp.exit90.thread:                    ; preds = %bb.bo, %sqlite3_stricmp.exit78.thread101, %sqlite3_stricmp.exit84.thread105, %bb.bh
  %.3 = phi i32 [ %i.es, %sqlite3_stricmp.exit84.thread105 ], [ 0, %bb.bh ], [ %i.ef, %sqlite3_stricmp.exit78.thread101 ], [ 0, %bb.bo ] ; 3 uses
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 2 ; 2 uses
  %i.ff = icmp eq i32 %.3, 0
  %5 = icmp samesign ult i64 %indvars.iv.next137, %4
  %i.fg = select i1 %i.ff, i1 %5, i1 false
  br i1 %i.fg, label %.lr.ph127, label %._crit_edge128, !llvm.loop !8007

._crit_edge128:                                   ; preds = %sqlite3_stricmp.exit90.thread
  %.not55 = icmp eq i32 %.3, 0
  br i1 %.not55, label %._crit_edge128.thread170, label %.thread113

.thread113:                                       ; preds = %bb.aw, %bb.aq, %bb.ah, %bb.ac, %bb.x, %bb.p, %bb.i, %bb.h, %.lr.ph127, %sqlite3_stricmp.exit72.thread, %bb.bg, %bb.bp, %._crit_edge.thread, %._crit_edge, %bb.b, %sqlite3_malloc64.exit, %._crit_edge128
  %.4118 = phi i32 [ %.3, %._crit_edge128 ], [ 7, %sqlite3_malloc64.exit ], [ 7, %bb.b ], [ 7, %._crit_edge ], [ 1, %bb.bp ], [ 1, %.lr.ph127 ], [ 7, %._crit_edge.thread ], [ 1, %bb.bg ], [ 1, %sqlite3_stricmp.exit72.thread ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.p ], [ 1, %bb.x ], [ 1, %bb.ac ], [ 1, %bb.ah ], [ 1, %bb.aq ], [ 1, %bb.aw ]
  %.0.i93117 = phi ptr [ %i.c, %._crit_edge128 ], [ null, %sqlite3_malloc64.exit ], [ null, %bb.b ], [ %i.c, %._crit_edge ], [ %i.c, %bb.bp ], [ %i.c, %.lr.ph127 ], [ %i.c, %._crit_edge.thread ], [ %i.c, %bb.bg ], [ %i.c, %sqlite3_stricmp.exit72.thread ], [ %i.c, %bb.h ], [ %i.c, %bb.i ], [ %i.c, %bb.p ], [ %i.c, %bb.x ], [ %i.c, %bb.ac ], [ %i.c, %bb.ah ], [ %i.c, %bb.aq ], [ %i.c, %bb.aw ]
  tail call void @fts5UnicodeDelete(ptr noundef %.0.i93117)
  br label %._crit_edge128.thread170

._crit_edge128.thread170:                         ; preds = %unicodeSetCategories.exit, %.thread113, %._crit_edge128
  %.4119 = phi i32 [ %.4118, %.thread113 ], [ 0, %._crit_edge128 ], [ 0, %unicodeSetCategories.exit ]
  %.049 = phi ptr [ null, %.thread113 ], [ %i.c, %._crit_edge128 ], [ %i.c, %unicodeSetCategories.exit ]
  store ptr %.049, ptr %3, align 8, !tbaa !3220
  br label %bb.br

bb.br:                                            ; preds = %bb.a, %._crit_edge128.thread170
  %.5 = phi i32 [ %.4119, %._crit_edge128.thread170 ], [ 1, %bb.a ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal void @fts5UnicodeDelete(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %sqlite3_free.exit14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3481 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sqlite3_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.f(ptr noundef nonnull %i.e) #58, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.e, %bb.d
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.h = tail call i32 %i.g(ptr noundef nonnull %i.b) #58, !inline_history !13
  %i.i = sext i32 %i.h to i64
  %i.j = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.k = sub nsw i64 %i.j, %i.i
  store i64 %i.k, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.m = add nsw i64 %i.l, -1
  store i64 %i.m, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.n(ptr noundef nonnull %i.b) #58, !inline_history !755
  %i.o = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.o, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.f

bb.f:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.p(ptr noundef nonnull %i.o) #58, !inline_history !756
  br label %sqlite3_free.exit

bb.g:                                             ; preds = %bb.c
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.q(ptr noundef nonnull %i.b) #58, !inline_history !755
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.b, %sqlite3_mutex_enter.exit.i, %bb.f, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3480 ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %sqlite3_free.exit9, label %bb.h

bb.h:                                             ; preds = %sqlite3_free.exit
  %i.u = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i5 = icmp eq i32 %i.u, 0
  br i1 %.not.i5, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.v, null
  br i1 %.not.i.i6, label %sqlite3_mutex_enter.exit.i7, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.w(ptr noundef nonnull %i.v) #58, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i7

sqlite3_mutex_enter.exit.i7:                      ; preds = %bb.j, %bb.i
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.y = tail call i32 %i.x(ptr noundef nonnull %i.s) #58, !inline_history !13
  %i.z = sext i32 %i.y to i64
  %i.aa = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.ab = sub nsw i64 %i.aa, %i.z
  store i64 %i.ab, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.ad = add nsw i64 %i.ac, -1
  store i64 %i.ad, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.ae(ptr noundef nonnull %i.s) #58, !inline_history !755
  %i.af = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i8 = icmp eq ptr %i.af, null
  br i1 %.not.i4.i8, label %sqlite3_free.exit9, label %bb.k

bb.k:                                             ; preds = %sqlite3_mutex_enter.exit.i7
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.ag(ptr noundef nonnull %i.af) #58, !inline_history !756
  br label %sqlite3_free.exit9

bb.l:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.ah(ptr noundef nonnull %i.s) #58, !inline_history !755
  br label %sqlite3_free.exit9

sqlite3_free.exit9:                               ; preds = %bb.l, %bb.k, %sqlite3_mutex_enter.exit.i7, %sqlite3_free.exit
  %i.ai = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i10 = icmp eq i32 %i.ai, 0
  br i1 %.not.i10, label %bb.p, label %bb.m

bb.m:                                             ; preds = %sqlite3_free.exit9
  %i.aj = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i11, label %sqlite3_mutex_enter.exit.i12, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.ak(ptr noundef nonnull %i.aj) #58, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i12

sqlite3_mutex_enter.exit.i12:                     ; preds = %bb.n, %bb.m
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.am = tail call i32 %i.al(ptr noundef nonnull %0) #58, !inline_history !13
  %i.an = sext i32 %i.am to i64
  %i.ao = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.ap = sub nsw i64 %i.ao, %i.an
  store i64 %i.ap, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.ar = add nsw i64 %i.aq, -1
  store i64 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.as(ptr noundef nonnull %0) #58, !inline_history !755
  %i.at = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i13 = icmp eq ptr %i.at, null
  br i1 %.not.i4.i13, label %sqlite3_free.exit14, label %bb.o

bb.o:                                             ; preds = %sqlite3_mutex_enter.exit.i12
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.au(ptr noundef nonnull %i.at) #58, !inline_history !756
  br label %sqlite3_free.exit14

bb.p:                                             ; preds = %sqlite3_free.exit9
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.av(ptr noundef nonnull %0) #58, !inline_history !755
  br label %sqlite3_free.exit14

sqlite3_free.exit14:                              ; preds = %bb.p, %bb.o, %sqlite3_mutex_enter.exit.i12, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 102, 101) i32 @fts5UnicodeTokenize(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = sext i32 %4 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %3, i64 %i.a ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3480 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3479 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr i8, ptr %i.d, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.m = ptrtoint ptr %3 to i64                   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.o = add i64 %i.m, %i.a                       ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %sqlite3Fts5UnicodeIsdiacritic.exit.thread
  %.0126266 = phi ptr [ %i.i, %bb.a ], [ %.5131, %sqlite3Fts5UnicodeIsdiacritic.exit.thread ] ; 2 uses
  %.0133265 = phi i32 [ %i.f, %bb.a ], [ %.5138, %sqlite3Fts5UnicodeIsdiacritic.exit.thread ] ; 2 uses
  %.0140264 = phi ptr [ %i.d, %bb.a ], [ %.5145, %sqlite3Fts5UnicodeIsdiacritic.exit.thread ] ; 4 uses
  %.0147263 = phi ptr [ %3, %bb.a ], [ %.10, %sqlite3Fts5UnicodeIsdiacritic.exit.thread ] ; 2 uses
  %.not252 = icmp ult ptr %.0147263, %i.b
  br i1 %.not252, label %.lr.ph254, label %.thread229.thread

.lr.ph254:                                        ; preds = %.preheader, %bb.n
  %.1148253 = phi ptr [ %.4151, %bb.n ], [ %.0147263, %.preheader ] ; 8 uses
  %.1148253270 = ptrtoaddr ptr %.1148253 to i64
end_hunk_1
