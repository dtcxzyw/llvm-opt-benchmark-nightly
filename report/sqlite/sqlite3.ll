Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 372
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3Pragma:bb.a
  %i.iv = icmp sgt i32 %i.iu, 0
  br i1 %i.iv, label %.lr.ph2480, label %.thread

.lr.ph2480:                                       ; preds = %.preheader, %.lr.ph2480
  %indvars.iv2657 = phi i64 [ %indvars.iv.next2658, %.lr.ph2480 ], [ 0, %.preheader ] ; 2 uses
  %i.iw = load ptr, ptr %i.bp, align 8, !tbaa !605
  %i.ix = getelementptr inbounds nuw [32 x i8], ptr %i.iw, i64 %indvars.iv2657
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !610
  %i.ja = call fastcc i32 @sqlite3BtreeSecureDelete(ptr noundef %i.iz, i32 noundef %.01496) ; 0 uses
  %indvars.iv.next2658 = add nuw nsw i64 %indvars.iv2657, 1 ; 2 uses
  %i.jb = load i32, ptr %i.it, align 8, !tbaa !604
  %i.jc = sext i32 %i.jb to i64
  %i.jd = icmp slt i64 %indvars.iv.next2658, %i.jc
  br i1 %i.jd, label %.lr.ph2480, label %.thread, !llvm.loop !4748

.thread:                                          ; preds = %.lr.ph2480, %.preheader, %bb.bm, %sqlite3_stricmp.exit.thread
  %.014962085 = phi i32 [ %.01496, %sqlite3_stricmp.exit.thread ], [ -1, %bb.bm ], [ %.01496, %.preheader ], [ %.01496, %.lr.ph2480 ]
  %i.je = call fastcc i32 @sqlite3BtreeSecureDelete(ptr noundef %i.ib, i32 noundef %.014962085)
  %i.jf = zext nneg i32 %i.je to i64
  call fastcc void @returnSingleInt(ptr noundef %.0.i2072, i64 noundef %i.jf)
  br label %sqlite3DbFree.exit2067

bb.bq:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #58
  store i64 0, ptr %i.i, align 8, !tbaa !565
  call fastcc void @sqlite3CodeVerifySchema(ptr noundef nonnull %0, i32 noundef %.015.i)
  %i.jg = load i32, ptr %i.be, align 4, !tbaa !1174
  %i.jh = add nsw i32 %i.jg, 1                    ; 4 uses
  store i32 %i.jh, ptr %i.be, align 4, !tbaa !1174
  %i.ji = load i8, ptr %i.ca, align 1, !tbaa !733
  %i.jj = and i8 %i.ji, -33
  %i.jk = icmp eq i8 %i.jj, 80
  br i1 %i.jk, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.jl = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i2072, i32 noundef 180, i32 noundef %.015.i, i32 noundef %i.jh) ; 0 uses
  br label %bb.bx

bb.bs:                                            ; preds = %bb.bq
  %.not1674 = icmp eq ptr %.01371, null
  br i1 %.not1674, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jm = call fastcc i32 @sqlite3DecOrHexToI64(ptr noundef nonnull %.01371, ptr noundef %i.i)
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.jo = load i64, ptr %i.i, align 8, !tbaa !565 ; 2 uses
  %i.jp = icmp slt i64 %i.jo, 0
  br i1 %i.jp, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %spec.select = call i64 @llvm.umin.i64(i64 %i.jo, i64 4294967294)
  %i.jq = trunc nuw i64 %spec.select to i32
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bs, %bb.bt, %bb.bu
  %i.jr = phi i32 [ 0, %bb.bs ], [ 0, %bb.bu ], [ %i.jq, %bb.bv ], [ 0, %bb.bt ]
  %i.js = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i2072, i32 noundef 181, i32 noundef %.015.i, i32 noundef %i.jh, i32 noundef %i.jr) ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.br
  %i.jt = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i2072, i32 noundef 86, i32 noundef %i.jh, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #58
  br label %sqlite3DbFree.exit2067

bb.by:                                            ; preds = %bb.bc
  %i.ju = call fastcc i32 @getLockingMode(ptr noundef %.01371) ; 6 uses
  %i.jv = load i32, ptr %i.bg, align 8, !tbaa !800
  %i.jw = icmp eq i32 %i.jv, 0                    ; 2 uses
  %i.jx = icmp eq i32 %i.ju, -1
  %or.cond5 = select i1 %i.jw, i1 %i.jx, i1 false
  br i1 %or.cond5, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.jy = getelementptr inbounds nuw i8, ptr %i.aa, i64 105
  br label %bb.cf

bb.ca:                                            ; preds = %bb.by
  br i1 %i.jw, label %.preheader2171, label %bb.cc

.preheader2171:                                   ; preds = %bb.ca
  %i.jz = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !604 ; 2 uses
  %i.kb = icmp sgt i32 %i.ka, 2
  br i1 %i.kb, label %.lr.ph2477, label %.preheader2171.._crit_edge2478.split_crit_edge

.preheader2171.._crit_edge2478.split_crit_edge:   ; preds = %.preheader2171
  %.pre2711 = trunc nsw i32 %i.ju to i8
  br label %._crit_edge2478.split

.lr.ph2477:                                       ; preds = %.preheader2171
  %i.kc = load ptr, ptr %i.bp, align 8, !tbaa !605
  %i.kd = icmp sgt i32 %i.ju, -1
  %i.ke = trunc nsw i32 %i.ju to i8               ; 3 uses
  br i1 %i.kd, label %.lr.ph2477.split.preheader, label %._crit_edge2478.split

.lr.ph2477.split.preheader:                       ; preds = %.lr.ph2477
  %wide.trip.count2655 = zext nneg i32 %i.ka to i64
  br label %.lr.ph2477.split

.lr.ph2477.split:                                 ; preds = %.lr.ph2477.split.preheader, %sqlite3PagerLockingMode.exit
  %indvars.iv2652 = phi i64 [ 2, %.lr.ph2477.split.preheader ], [ %indvars.iv.next2653, %sqlite3PagerLockingMode.exit ] ; 2 uses
  %i.kf = getelementptr inbounds nuw [32 x i8], ptr %i.kc, i64 %indvars.iv2652
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !610
  %i.ki = getelementptr i8, ptr %i.kh, i64 8
  %.val1708 = load ptr, ptr %i.ki, align 8, !tbaa !616
  %.val1708.val = load ptr, ptr %.val1708, align 8, !tbaa !622 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.val1708.val, i64 16
  %i.kk = load i8, ptr %i.kj, align 8, !tbaa !994
  %.not.i1736 = icmp eq i8 %i.kk, 0
  br i1 %.not.i1736, label %bb.cb, label %sqlite3PagerLockingMode.exit

bb.cb:                                            ; preds = %.lr.ph2477.split
  %i.kl = getelementptr inbounds nuw i8, ptr %.val1708.val, i64 296
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !938 ; 2 uses
  %.not.i.i1737 = icmp eq ptr %i.km, null
  br i1 %.not.i.i1737, label %sqlite3WalHeapMemory.exit.thread.i, label %sqlite3WalHeapMemory.exit.i

sqlite3WalHeapMemory.exit.i:                      ; preds = %bb.cb
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 63
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !1471
  %.not7.i = icmp eq i8 %i.ko, 2
  br i1 %.not7.i, label %sqlite3PagerLockingMode.exit, label %sqlite3WalHeapMemory.exit.thread.i

sqlite3WalHeapMemory.exit.thread.i:               ; preds = %sqlite3WalHeapMemory.exit.i, %bb.cb
  %i.kp = getelementptr inbounds nuw i8, ptr %.val1708.val, i64 8
  store i8 %i.ke, ptr %i.kp, align 8, !tbaa !1049
  br label %sqlite3PagerLockingMode.exit

sqlite3PagerLockingMode.exit:                     ; preds = %.lr.ph2477.split, %sqlite3WalHeapMemory.exit.i, %sqlite3WalHeapMemory.exit.thread.i
  %indvars.iv.next2653 = add nuw nsw i64 %indvars.iv2652, 1 ; 2 uses
  %exitcond2656.not = icmp eq i64 %indvars.iv.next2653, %wide.trip.count2655
  br i1 %exitcond2656.not, label %._crit_edge2478.split, label %.lr.ph2477.split, !llvm.loop !4749

._crit_edge2478.split:                            ; preds = %sqlite3PagerLockingMode.exit, %.preheader2171.._crit_edge2478.split_crit_edge, %.lr.ph2477
  %.pre-phi2712 = phi i8 [ %.pre2711, %.preheader2171.._crit_edge2478.split_crit_edge ], [ %i.ke, %.lr.ph2477 ], [ %i.ke, %sqlite3PagerLockingMode.exit ]
  %i.kq = getelementptr inbounds nuw i8, ptr %i.aa, i64 105
  store i8 %.pre-phi2712, ptr %i.kq, align 1, !tbaa !2193
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge2478.split, %bb.ca
  %i.kr = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !610
  %i.kt = getelementptr i8, ptr %i.ks, i64 8
  %.val1707 = load ptr, ptr %i.kt, align 8, !tbaa !616
  %.val1707.val = load ptr, ptr %.val1707, align 8, !tbaa !622 ; 4 uses
  %i.ku = icmp sgt i32 %i.ju, -1
  br i1 %i.ku, label %bb.cd, label %sqlite3PagerLockingMode.exit1743

bb.cd:                                            ; preds = %bb.cc
  %i.kv = getelementptr inbounds nuw i8, ptr %.val1707.val, i64 16
  %i.kw = load i8, ptr %i.kv, align 8, !tbaa !994
  %.not.i1738 = icmp eq i8 %i.kw, 0
  br i1 %.not.i1738, label %bb.ce, label %sqlite3PagerLockingMode.exit1743

bb.ce:                                            ; preds = %bb.cd
  %i.kx = getelementptr inbounds nuw i8, ptr %.val1707.val, i64 296
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !938 ; 2 uses
  %.not.i.i1739 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i1739, label %sqlite3WalHeapMemory.exit.thread.i1742, label %sqlite3WalHeapMemory.exit.i1740

sqlite3WalHeapMemory.exit.i1740:                  ; preds = %bb.ce
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 63
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !1471
  %.not7.i1741 = icmp eq i8 %i.la, 2
  br i1 %.not7.i1741, label %sqlite3PagerLockingMode.exit1743, label %sqlite3WalHeapMemory.exit.thread.i1742

sqlite3WalHeapMemory.exit.thread.i1742:           ; preds = %sqlite3WalHeapMemory.exit.i1740, %bb.ce
  %i.lb = trunc nuw nsw i32 %i.ju to i8
  %i.lc = getelementptr inbounds nuw i8, ptr %.val1707.val, i64 8
  store i8 %i.lb, ptr %i.lc, align 8, !tbaa !1049
  br label %sqlite3PagerLockingMode.exit1743

sqlite3PagerLockingMode.exit1743:                 ; preds = %bb.cc, %bb.cd, %sqlite3WalHeapMemory.exit.i1740, %sqlite3WalHeapMemory.exit.thread.i1742
  %i.ld = getelementptr inbounds nuw i8, ptr %.val1707.val, i64 8
  br label %bb.cf

bb.cf:                                            ; preds = %sqlite3PagerLockingMode.exit1743, %bb.bz
  %.01493.in.in = phi ptr [ %i.jy, %bb.bz ], [ %i.ld, %sqlite3PagerLockingMode.exit1743 ]
  %.01493.in = load i8, ptr %.01493.in.in, align 1, !tbaa !733
  %i.le = icmp eq i8 %.01493.in, 1
  br i1 %i.le, label %.split, label %.split1497

.split1497:                                       ; preds = %bb.cf
  call fastcc void @returnSingleText(ptr noundef %.0.i2072, ptr noundef nonnull @.str.1074)
  br label %sqlite3DbFree.exit2067

.split:                                           ; preds = %bb.cf
  call fastcc void @returnSingleText(ptr noundef %.0.i2072, ptr noundef nonnull @.str.1075)
  br label %sqlite3DbFree.exit2067

bb.cg:                                            ; preds = %bb.bc
  %i.lf = icmp eq ptr %.01371, null
  br i1 %i.lf, label %.thread2092, label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %bb.cg
  %i.lg = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.01371) #59 ; 2 uses
  %i.lh = trunc i64 %i.lg to i32
  %i.li = and i32 %i.lh, 1073741823               ; 2 uses
  %.not2170 = icmp eq i32 %i.li, 0
  br i1 %.not2170, label %select.unfold, label %.preheader.i1746.preheader

.preheader.i1746.preheader:                       ; preds = %sqlite3Strlen30.exit
  %5 = and i64 %i.lg, 1073741823
  %6 = getelementptr i8, ptr @.str.440, i64 %5
  %scevgep2647 = getelementptr i8, ptr %6, i64 -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i1746.preheader, %bb.ci
  %.023.i = phi ptr [ %i.lt, %bb.ci ], [ @.str.440, %.preheader.i1746.preheader ] ; 4 uses
  %.01422.i = phi ptr [ %i.ls, %bb.ci ], [ %.01371, %.preheader.i1746.preheader ] ; 2 uses
  %i.lj = load i8, ptr %.01422.i, align 1, !tbaa !733 ; 2 uses
  %.not.i1747 = icmp eq i8 %i.lj, 0
  br i1 %.not.i1747, label %sqlite3_strnicmp.exit.loopexit, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.i
  %i.lk = zext i8 %i.lj to i64
  %i.ll = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !733 ; 2 uses
  %i.ln = load i8, ptr %.023.i, align 1, !tbaa !733
  %i.lo = zext i8 %i.ln to i64
  %i.lp = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !733 ; 2 uses
  %i.lr = icmp eq i8 %i.lm, %i.lq
  br i1 %i.lr, label %bb.ci, label %split.i

bb.ci:                                            ; preds = %bb.ch
  %i.ls = getelementptr inbounds nuw i8, ptr %.01422.i, i64 1
  %i.lt = getelementptr inbounds nuw i8, ptr %.023.i, i64 1
  %exitcond2648.not = icmp eq ptr %.023.i, %scevgep2647
  br i1 %exitcond2648.not, label %select.unfold, label %.lr.ph.i, !llvm.loop !21

split.i:                                          ; preds = %bb.ch
  %i.lu = zext i8 %i.lm to i32
  br label %sqlite3_strnicmp.exit

sqlite3_strnicmp.exit.loopexit:                   ; preds = %.lr.ph.i
  %.pre2682 = load i8, ptr %.023.i, align 1, !tbaa !733
  %.phi.trans.insert2683 = zext i8 %.pre2682 to i64
  %.phi.trans.insert2684 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert2683
  %.pre2685 = load i8, ptr %.phi.trans.insert2684, align 1, !tbaa !733
  br label %sqlite3_strnicmp.exit

sqlite3_strnicmp.exit:                            ; preds = %sqlite3_strnicmp.exit.loopexit, %split.i
  %i.lv = phi i8 [ %i.lq, %split.i ], [ %.pre2685, %sqlite3_strnicmp.exit.loopexit ]
  %i.lw = phi i32 [ %i.lu, %split.i ], [ 0, %sqlite3_strnicmp.exit.loopexit ]
  %i.lx = zext i8 %i.lv to i32
  %i.ly = icmp eq i32 %i.lw, %i.lx
  br i1 %i.ly, label %select.unfold, label %.preheader.i1746.1

.preheader.i1746.1:                               ; preds = %sqlite3_strnicmp.exit
  %7 = add nsw i32 %i.li, -1
  %8 = zext nneg i32 %7 to i64                    ; 5 uses
  %scevgep2645 = getelementptr i8, ptr @.str.441, i64 %8
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.ck, %.preheader.i1746.1
  %.023.i.1 = phi ptr [ %i.mk, %bb.ck ], [ @.str.441, %.preheader.i1746.1 ] ; 4 uses
  %.01422.i.1 = phi ptr [ %i.mj, %bb.ck ], [ %.01371, %.preheader.i1746.1 ] ; 2 uses
  %i.lz = load i8, ptr %.01422.i.1, align 1, !tbaa !733 ; 2 uses
  %.not.i1747.1 = icmp eq i8 %i.lz, 0
  br i1 %.not.i1747.1, label %sqlite3_strnicmp.exit.loopexit.1, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.1
  %i.ma = zext i8 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ma
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !733 ; 2 uses
  %i.md = load i8, ptr %.023.i.1, align 1, !tbaa !733
  %i.me = zext i8 %i.md to i64
  %i.mf = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.me
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !733 ; 2 uses
  %i.mh = icmp eq i8 %i.mc, %i.mg
  br i1 %i.mh, label %bb.ck, label %split.i.1

split.i.1:                                        ; preds = %bb.cj
  %i.mi = zext i8 %i.mc to i32
  br label %sqlite3_strnicmp.exit.1

bb.ck:                                            ; preds = %bb.cj
  %i.mj = getelementptr inbounds nuw i8, ptr %.01422.i.1, i64 1
  %i.mk = getelementptr inbounds nuw i8, ptr %.023.i.1, i64 1
  %exitcond2646.not = icmp eq ptr %.023.i.1, %scevgep2645
  br i1 %exitcond2646.not, label %select.unfold, label %.lr.ph.i.1, !llvm.loop !21

sqlite3_strnicmp.exit.loopexit.1:                 ; preds = %.lr.ph.i.1
  %.pre2686 = load i8, ptr %.023.i.1, align 1, !tbaa !733
  %.phi.trans.insert2687 = zext i8 %.pre2686 to i64
  %.phi.trans.insert2688 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert2687
  %.pre2689 = load i8, ptr %.phi.trans.insert2688, align 1, !tbaa !733
  br label %sqlite3_strnicmp.exit.1

sqlite3_strnicmp.exit.1:                          ; preds = %sqlite3_strnicmp.exit.loopexit.1, %split.i.1
  %i.ml = phi i8 [ %i.mg, %split.i.1 ], [ %.pre2689, %sqlite3_strnicmp.exit.loopexit.1 ]
  %i.mm = phi i32 [ %i.mi, %split.i.1 ], [ 0, %sqlite3_strnicmp.exit.loopexit.1 ]
  %i.mn = zext i8 %i.ml to i32
  %i.mo = icmp eq i32 %i.mm, %i.mn
  br i1 %i.mo, label %select.unfold, label %.preheader.i1746.2

.preheader.i1746.2:                               ; preds = %sqlite3_strnicmp.exit.1
  %scevgep2642 = getelementptr i8, ptr @.str.442, i64 %8
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.cm, %.preheader.i1746.2
  %.023.i.2 = phi ptr [ %i.na, %bb.cm ], [ @.str.442, %.preheader.i1746.2 ] ; 4 uses
  %.01422.i.2 = phi ptr [ %i.mz, %bb.cm ], [ %.01371, %.preheader.i1746.2 ] ; 2 uses
  %i.mp = load i8, ptr %.01422.i.2, align 1, !tbaa !733 ; 2 uses
  %.not.i1747.2 = icmp eq i8 %i.mp, 0
  br i1 %.not.i1747.2, label %sqlite3_strnicmp.exit.loopexit.2, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i.2
  %i.mq = zext i8 %i.mp to i64
  %i.mr = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !733 ; 2 uses
  %i.mt = load i8, ptr %.023.i.2, align 1, !tbaa !733
  %i.mu = zext i8 %i.mt to i64
  %i.mv = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.mu
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !733 ; 2 uses
  %i.mx = icmp eq i8 %i.ms, %i.mw
  br i1 %i.mx, label %bb.cm, label %split.i.2

split.i.2:                                        ; preds = %bb.cl
  %i.my = zext i8 %i.ms to i32
  br label %sqlite3_strnicmp.exit.2

bb.cm:                                            ; preds = %bb.cl
  %i.mz = getelementptr inbounds nuw i8, ptr %.01422.i.2, i64 1
  %i.na = getelementptr inbounds nuw i8, ptr %.023.i.2, i64 1
  %exitcond2643.not = icmp eq ptr %.023.i.2, %scevgep2642
  br i1 %exitcond2643.not, label %sqlite3_strnicmp.exit.thread.thread, label %.lr.ph.i.2, !llvm.loop !21

sqlite3_strnicmp.exit.loopexit.2:                 ; preds = %.lr.ph.i.2
  %.pre2690 = load i8, ptr %.023.i.2, align 1, !tbaa !733
  %.phi.trans.insert2691 = zext i8 %.pre2690 to i64
  %.phi.trans.insert2692 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert2691
  %.pre2693 = load i8, ptr %.phi.trans.insert2692, align 1, !tbaa !733
  br label %sqlite3_strnicmp.exit.2

sqlite3_strnicmp.exit.2:                          ; preds = %sqlite3_strnicmp.exit.loopexit.2, %split.i.2
  %i.nb = phi i8 [ %i.mw, %split.i.2 ], [ %.pre2693, %sqlite3_strnicmp.exit.loopexit.2 ]
  %i.nc = phi i32 [ %i.my, %split.i.2 ], [ 0, %sqlite3_strnicmp.exit.loopexit.2 ]
  %i.nd = zext i8 %i.nb to i32
  %i.ne = icmp eq i32 %i.nc, %i.nd
  br i1 %i.ne, label %sqlite3_strnicmp.exit.thread.thread, label %.preheader.i1746.3

.preheader.i1746.3:                               ; preds = %sqlite3_strnicmp.exit.2
  %scevgep2639 = getelementptr i8, ptr @.str.443, i64 %8
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.co, %.preheader.i1746.3
  %.023.i.3 = phi ptr [ %i.nq, %bb.co ], [ @.str.443, %.preheader.i1746.3 ] ; 4 uses
  %.01422.i.3 = phi ptr [ %i.np, %bb.co ], [ %.01371, %.preheader.i1746.3 ] ; 2 uses
  %i.nf = load i8, ptr %.01422.i.3, align 1, !tbaa !733 ; 2 uses
  %.not.i1747.3 = icmp eq i8 %i.nf, 0
  br i1 %.not.i1747.3, label %sqlite3_strnicmp.exit.loopexit.3, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph.i.3
  %i.ng = zext i8 %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ng
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !733 ; 2 uses
  %i.nj = load i8, ptr %.023.i.3, align 1, !tbaa !733
  %i.nk = zext i8 %i.nj to i64
  %i.nl = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !733 ; 2 uses
  %i.nn = icmp eq i8 %i.ni, %i.nm
  br i1 %i.nn, label %bb.co, label %split.i.3

split.i.3:                                        ; preds = %bb.cn
  %i.no = zext i8 %i.ni to i32
  br label %sqlite3_strnicmp.exit.3

bb.co:                                            ; preds = %bb.cn
  %i.np = getelementptr inbounds nuw i8, ptr %.01422.i.3, i64 1
  %i.nq = getelementptr inbounds nuw i8, ptr %.023.i.3, i64 1
  %exitcond2640.not = icmp eq ptr %.023.i.3, %scevgep2639
  br i1 %exitcond2640.not, label %select.unfold, label %.lr.ph.i.3, !llvm.loop !21

sqlite3_strnicmp.exit.loopexit.3:                 ; preds = %.lr.ph.i.3
  %.pre2694 = load i8, ptr %.023.i.3, align 1, !tbaa !733
  %.phi.trans.insert2695 = zext i8 %.pre2694 to i64
  %.phi.trans.insert2696 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert2695
  %.pre2697 = load i8, ptr %.phi.trans.insert2696, align 1, !tbaa !733
  br label %sqlite3_strnicmp.exit.3

sqlite3_strnicmp.exit.3:                          ; preds = %sqlite3_strnicmp.exit.loopexit.3, %split.i.3
  %i.nr = phi i8 [ %i.nm, %split.i.3 ], [ %.pre2697, %sqlite3_strnicmp.exit.loopexit.3 ]
  %i.ns = phi i32 [ %i.no, %split.i.3 ], [ 0, %sqlite3_strnicmp.exit.loopexit.3 ]
  %i.nt = zext i8 %i.nr to i32
  %i.nu = icmp eq i32 %i.ns, %i.nt
  br i1 %i.nu, label %select.unfold, label %.preheader.i1746.4

.preheader.i1746.4:                               ; preds = %sqlite3_strnicmp.exit.3
  %scevgep2636 = getelementptr i8, ptr @.str.444, i64 %8
  br label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.cq, %.preheader.i1746.4
  %.023.i.4 = phi ptr [ %i.og, %bb.cq ], [ @.str.444, %.preheader.i1746.4 ] ; 4 uses
  %.01422.i.4 = phi ptr [ %i.of, %bb.cq ], [ %.01371, %.preheader.i1746.4 ] ; 2 uses
  %i.nv = load i8, ptr %.01422.i.4, align 1, !tbaa !733 ; 2 uses
  %.not.i1747.4 = icmp eq i8 %i.nv, 0
  br i1 %.not.i1747.4, label %sqlite3_strnicmp.exit.loopexit.4, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph.i.4
  %i.nw = zext i8 %i.nv to i64
  %i.nx = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.nw
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !733 ; 2 uses
  %i.nz = load i8, ptr %.023.i.4, align 1, !tbaa !733
  %i.oa = zext i8 %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !733 ; 2 uses
  %i.od = icmp eq i8 %i.ny, %i.oc
  br i1 %i.od, label %bb.cq, label %split.i.4

split.i.4:                                        ; preds = %bb.cp
  %i.oe = zext i8 %i.ny to i32
  br label %sqlite3_strnicmp.exit.4

bb.cq:                                            ; preds = %bb.cp
  %i.of = getelementptr inbounds nuw i8, ptr %.01422.i.4, i64 1
  %i.og = getelementptr inbounds nuw i8, ptr %.023.i.4, i64 1
  %exitcond2637.not = icmp eq ptr %.023.i.4, %scevgep2636
  br i1 %exitcond2637.not, label %select.unfold, label %.lr.ph.i.4, !llvm.loop !21

sqlite3_strnicmp.exit.loopexit.4:                 ; preds = %.lr.ph.i.4
  %.pre2698 = load i8, ptr %.023.i.4, align 1, !tbaa !733
  %.phi.trans.insert2699 = zext i8 %.pre2698 to i64
  %.phi.trans.insert2700 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert2699
  %.pre2701 = load i8, ptr %.phi.trans.insert2700, align 1, !tbaa !733
  br label %sqlite3_strnicmp.exit.4

sqlite3_strnicmp.exit.4:                          ; preds = %sqlite3_strnicmp.exit.loopexit.4, %split.i.4
  %i.oh = phi i8 [ %i.oc, %split.i.4 ], [ %.pre2701, %sqlite3_strnicmp.exit.loopexit.4 ]
  %i.oi = phi i32 [ %i.oe, %split.i.4 ], [ 0, %sqlite3_strnicmp.exit.loopexit.4 ]
  %i.oj = zext i8 %i.oh to i32
  %i.ok = icmp eq i32 %i.oi, %i.oj
  br i1 %i.ok, label %select.unfold, label %.preheader.i1746.5

.preheader.i1746.5:                               ; preds = %sqlite3_strnicmp.exit.4
  %scevgep = getelementptr i8, ptr @.str.445, i64 %8
  br label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.cs, %.preheader.i1746.5
  %.023.i.5 = phi ptr [ %i.ow, %bb.cs ], [ @.str.445, %.preheader.i1746.5 ] ; 4 uses
  %.01422.i.5 = phi ptr [ %i.ov, %bb.cs ], [ %.01371, %.preheader.i1746.5 ] ; 2 uses
  %i.ol = load i8, ptr %.01422.i.5, align 1, !tbaa !733 ; 2 uses
  %.not.i1747.5 = icmp eq i8 %i.ol, 0
  br i1 %.not.i1747.5, label %sqlite3_strnicmp.exit.loopexit.5, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.i.5
  %i.om = zext i8 %i.ol to i64
  %i.on = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !733 ; 2 uses
  %i.op = load i8, ptr %.023.i.5, align 1, !tbaa !733
  %i.oq = zext i8 %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !tbaa !733 ; 2 uses
  %i.ot = icmp eq i8 %i.oo, %i.os
  br i1 %i.ot, label %bb.cs, label %split.i.5

split.i.5:                                        ; preds = %bb.cr
  %i.ou = zext i8 %i.oo to i32
  br label %sqlite3_strnicmp.exit.5

bb.cs:                                            ; preds = %bb.cr
  %i.ov = getelementptr inbounds nuw i8, ptr %.01422.i.5, i64 1
  %i.ow = getelementptr inbounds nuw i8, ptr %.023.i.5, i64 1
  %exitcond2634.not = icmp eq ptr %.023.i.5, %scevgep
  br i1 %exitcond2634.not, label %select.unfold, label %.lr.ph.i.5, !llvm.loop !21

sqlite3_strnicmp.exit.loopexit.5:                 ; preds = %.lr.ph.i.5
  %.pre2702 = load i8, ptr %.023.i.5, align 1, !tbaa !733
  %.phi.trans.insert2703 = zext i8 %.pre2702 to i64
  %.phi.trans.insert2704 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert2703
  %.pre2705 = load i8, ptr %.phi.trans.insert2704, align 1, !tbaa !733
  br label %sqlite3_strnicmp.exit.5

sqlite3_strnicmp.exit.5:                          ; preds = %sqlite3_strnicmp.exit.loopexit.5, %split.i.5
  %i.ox = phi i8 [ %i.os, %split.i.5 ], [ %.pre2705, %sqlite3_strnicmp.exit.loopexit.5 ]
  %i.oy = phi i32 [ %i.ou, %split.i.5 ], [ 0, %sqlite3_strnicmp.exit.loopexit.5 ]
  %i.oz = zext i8 %i.ox to i32
  %i.pa = icmp eq i32 %i.oy, %i.oz
  br i1 %i.pa, label %select.unfold, label %.thread2092

sqlite3_strnicmp.exit.thread.thread:              ; preds = %bb.cm, %sqlite3_strnicmp.exit.2
  %i.pb = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !917
  %i.pd = and i64 %i.pc, 268435456
  %.not1672 = icmp eq i64 %i.pd, 0
  br i1 %.not1672, label %select.unfold, label %.thread2092

.thread2092:                                      ; preds = %sqlite3_strnicmp.exit.5, %bb.cg, %sqlite3_strnicmp.exit.thread.thread
  %i.pe = load i32, ptr %i.bg, align 8, !tbaa !800
  %i.pf = icmp eq i32 %i.pe, 0
  br i1 %i.pf, label %bb.ct, label %select.unfold

bb.ct:                                            ; preds = %.thread2092
  store i32 1, ptr %i.bg, align 8, !tbaa !800
  br label %select.unfold

select.unfold:                                    ; preds = %bb.ci, %bb.ck, %bb.co, %bb.cq, %bb.cs, %sqlite3_strnicmp.exit.5, %sqlite3_strnicmp.exit.4, %sqlite3_strnicmp.exit.3, %sqlite3_strnicmp.exit.1, %sqlite3_strnicmp.exit, %sqlite3Strlen30.exit, %sqlite3_strnicmp.exit.thread.thread, %bb.ct, %.thread2092
  %.314912096 = phi i32 [ -1, %bb.ct ], [ -1, %.thread2092 ], [ 2, %sqlite3_strnicmp.exit.thread.thread ], [ 5, %sqlite3_strnicmp.exit.5 ], [ 4, %sqlite3_strnicmp.exit.4 ], [ 3, %sqlite3_strnicmp.exit.3 ], [ 1, %sqlite3_strnicmp.exit.1 ], [ 0, %sqlite3_strnicmp.exit ], [ 1, %bb.ck ], [ 5, %bb.cs ], [ 4, %bb.cq ], [ 3, %bb.co ], [ 0, %sqlite3Strlen30.exit ], [ 0, %bb.ci ]
  %.01388 = phi i32 [ 0, %bb.ct ], [ %.015.i, %.thread2092 ], [ %.015.i, %sqlite3_strnicmp.exit.thread.thread ], [ %.015.i, %sqlite3_strnicmp.exit.5 ], [ %.015.i, %sqlite3_strnicmp.exit.4 ], [ %.015.i, %sqlite3_strnicmp.exit.3 ], [ %.015.i, %sqlite3_strnicmp.exit.1 ], [ %.015.i, %sqlite3_strnicmp.exit ], [ %.015.i, %bb.ck ], [ %.015.i, %bb.cs ], [ %.015.i, %bb.cq ], [ %.015.i, %bb.co ], [ %.015.i, %sqlite3Strlen30.exit ], [ %.015.i, %bb.ci ]
  %i.pg = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !604 ; 2 uses
  %i.pi = icmp sgt i32 %i.ph, 0
  br i1 %i.pi, label %.lr.ph2474.preheader, label %._crit_edge2475

.lr.ph2474.preheader:                             ; preds = %select.unfold
  %i.pj = zext nneg i32 %i.ph to i64
  %i.pk = zext nneg i32 %.01388 to i64
  br label %.lr.ph2474

.lr.ph2474:                                       ; preds = %.lr.ph2474.preheader, %bb.cx
  %indvars.iv2649 = phi i64 [ %i.pj, %.lr.ph2474.preheader ], [ %indvars.iv.next2650, %bb.cx ] ; 2 uses
  %indvars.iv.next2650 = add nsw i64 %indvars.iv2649, -1 ; 4 uses
  %i.pl = load ptr, ptr %i.bp, align 8, !tbaa !605
  %i.pm = getelementptr inbounds nuw [32 x i8], ptr %i.pl, i64 %indvars.iv.next2650
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !610
  %.not1673 = icmp eq ptr %i.po, null
  br i1 %.not1673, label %bb.cx, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph2474
  %i.pp = icmp eq i64 %indvars.iv.next2650, %i.pk
  br i1 %i.pp, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.pq = load i32, ptr %i.bg, align 8, !tbaa !800
  %i.pr = icmp eq i32 %i.pq, 0
  br i1 %i.pr, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.ps = trunc nuw nsw i64 %indvars.iv.next2650 to i32 ; 2 uses
  call fastcc void @sqlite3VdbeUsesBtree(ptr noundef nonnull %.0.i2072, i32 noundef %i.ps)
  %i.pt = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i2072, i32 noundef 4, i32 noundef %i.ps, i32 noundef 1, i32 noundef %.314912096) ; 0 uses
  br label %bb.cx

bb.cx:                                            ; preds = %.lr.ph2474, %bb.cv, %bb.cw
  %i.pu = icmp samesign ugt i64 %indvars.iv2649, 1
  br i1 %i.pu, label %.lr.ph2474, label %._crit_edge2475, !llvm.loop !4750

._crit_edge2475:                                  ; preds = %bb.cx, %select.unfold
  %i.pv = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i2072, i32 noundef 86, i32 noundef 1, i32 noundef 1) ; 0 uses
  br label %sqlite3DbFree.exit2067.thread

bb.cy:                                            ; preds = %bb.bc
  %i.pw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !610
  %i.py = getelementptr i8, ptr %i.px, i64 8
  %.val1706 = load ptr, ptr %i.py, align 8, !tbaa !616
  %.val1706.val = load ptr, ptr %.val1706, align 8, !tbaa !622 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #58
  store i64 -2, ptr %i.j, align 8, !tbaa !565
  %.not1670 = icmp eq ptr %.01371, null
  br i1 %.not1670, label %.sqlite3WalLimit.exit_crit_edge.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.pz = call fastcc i32 @sqlite3DecOrHexToI64(ptr noundef nonnull %.01371, ptr noundef %i.j) ; 0 uses
  %i.qa = load i64, ptr %i.j, align 8, !tbaa !565
  %spec.store.select = call i64 @llvm.smax.i64(i64 %i.qa, i64 -1) ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.val1706.val, i64 208
  store i64 %spec.store.select, ptr %i.qb, align 8, !tbaa !1540
  %i.qc = getelementptr inbounds nuw i8, ptr %.val1706.val, i64 296
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !938 ; 2 uses
  %.not.i.i1748 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i1748, label %sqlite3PagerJournalSizeLimit.exit, label %bb.da

.sqlite3WalLimit.exit_crit_edge.i:                ; preds = %bb.cy
  %i.qe = getelementptr inbounds nuw i8, ptr %.val1706.val, i64 208
  %.pre.i = load i64, ptr %i.qe, align 8, !tbaa !1540
  br label %sqlite3PagerJournalSizeLimit.exit

bb.da:                                            ; preds = %bb.cz
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 32
  store i64 %spec.store.select, ptr %i.qf, align 8, !tbaa !1586
  br label %sqlite3PagerJournalSizeLimit.exit

sqlite3PagerJournalSizeLimit.exit:                ; preds = %.sqlite3WalLimit.exit_crit_edge.i, %bb.cz, %bb.da
  %i.qg = phi i64 [ %.pre.i, %.sqlite3WalLimit.exit_crit_edge.i ], [ %spec.store.select, %bb.da ], [ %spec.store.select, %bb.cz ]
  call fastcc void @returnSingleInt(ptr noundef %.0.i2072, i64 noundef %i.qg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #58
  br label %sqlite3DbFree.exit2067

bb.db:                                            ; preds = %bb.bc
  %i.qh = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !610 ; 2 uses
  %.not1669 = icmp eq ptr %.01371, null
  br i1 %.not1669, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.qj = call fastcc i32 @sqlite3BtreeGetAutoVacuum(ptr noundef %i.qi)
  %i.qk = zext nneg i32 %i.qj to i64
  call fastcc void @returnSingleInt(ptr noundef %.0.i2072, i64 noundef %i.qk)
  br label %sqlite3DbFree.exit2067.thread2153

bb.dd:                                            ; preds = %bb.db
  %i.ql = call fastcc i32 @getAutoVacuum(ptr noundef %.01371) ; 3 uses
  %i.qm = trunc nuw i32 %i.ql to i8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.aa, i64 106
  store i8 %i.qm, ptr %i.qn, align 2, !tbaa !1349
  %i.qo = call fastcc i32 @sqlite3BtreeSetAutoVacuum(ptr noundef %i.qi, i32 noundef %i.ql)
  %i.qp = icmp eq i32 %i.qo, 0
  %i.qq = add nsw i32 %i.ql, -1                   ; 2 uses
  %or.cond7 = icmp ult i32 %i.qq, 2
  %or.cond1682 = select i1 %i.qp, i1 %or.cond7, i1 false
  br i1 %or.cond1682, label %bb.de, label %.thread3079

bb.de:                                            ; preds = %bb.dd
  %.val1704 = load i32, ptr %i.ap, align 8, !tbaa !703
  %i.qr = call fastcc ptr @sqlite3VdbeAddOpList(ptr noundef nonnull %.0.i2072, i32 noundef 5, ptr noundef nonnull @sqlite3Pragma.setMeta6) ; 5 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 4
  store i32 %.015.i, ptr %i.qs, align 4, !tbaa !926
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 36
  store i32 %.015.i, ptr %i.qt, align 4, !tbaa !926
  %i.qu = add nsw i32 %.val1704, 4
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qr, i64 72
  store i32 %i.qu, ptr %i.qv, align 8, !tbaa !927
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qr, i64 132
  store i32 %.015.i, ptr %i.qw, align 4, !tbaa !926
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qr, i64 140
  store i32 %i.qq, ptr %i.qx, align 4, !tbaa !928
  call fastcc void @sqlite3VdbeUsesBtree(ptr noundef nonnull %.0.i2072, i32 noundef %.015.i)
  br label %.thread3079

bb.df:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #58
  store i32 0, ptr %i.k, align 4, !tbaa !570
  %i.qy = icmp eq ptr %.01371, null
  br i1 %i.qy, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.qz = call fastcc i32 @sqlite3GetInt32(ptr noundef nonnull %.01371, ptr noundef %i.k)
  %i.ra = icmp eq i32 %i.qz, 0
  %i.rb = load i32, ptr %i.k, align 4             ; 2 uses
  %i.rc = icmp slt i32 %i.rb, 1
  %or.cond9 = select i1 %i.ra, i1 true, i1 %i.rc
  br i1 %or.cond9, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg, %bb.df
end_hunk_0
