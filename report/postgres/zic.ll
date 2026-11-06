Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/zic?download=true
inline.NumInlined: 153
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@main:bb.a
  br label %.thread822.i.i

.thread822.i.i:                                   ; preds = %bb.nw, %bb.nv, %bb.nu, %._crit_edge632.i.i, %._crit_edge627._crit_edge.i.i
  %i.bgj = phi i64 [ %i.bbq, %._crit_edge627._crit_edge.i.i ], [ %i.bda, %bb.nu ], [ %i.bda, %bb.nv ], [ %i.bda, %bb.nw ], [ %i.bda, %._crit_edge632.i.i ]
  %.pre-phi751.i.i = phi i64 [ %.pre750.i.i, %._crit_edge627._crit_edge.i.i ], [ %i.bdb, %bb.nu ], [ %i.bdb, %bb.nv ], [ %i.bdb, %bb.nw ], [ %i.bdb, %._crit_edge632.i.i ] ; 16 uses
  %i.bgk = load i32, ptr @typecnt, align 4
  %i.bgl = sext i32 %i.bgk to i64                 ; 6 uses
  %i.bgm = icmp slt i64 %.pre-phi751.i.i, %i.bgl
  br i1 %i.bgm, label %.lr.ph646.preheader.i.i, label %.preheader588.thread830.i.i

.preheader588.thread830.i.i:                      ; preds = %.thread822.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.o, i8 -1, i64 200, i1 false)
  br label %._crit_edge664.i.i

.lr.ph646.preheader.i.i:                          ; preds = %.thread822.i.i
  %i.bgn = getelementptr inbounds i8, ptr %i.l, i64 %.pre-phi751.i.i
  %i.bgo = load i8, ptr %i.bgn, align 1
  %.not441.peel.i.i = icmp eq i8 %i.bgo, 0
  br i1 %.not441.peel.i.i, label %bb.nx, label %bb.ny

bb.nx:                                            ; preds = %.lr.ph646.preheader.i.i
  %i.bgp = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.baf
  store i32 0, ptr %i.bgp, align 4
  br label %bb.ny

bb.ny:                                            ; preds = %bb.nx, %.lr.ph646.preheader.i.i
  %.1374.peel.i.i = phi i32 [ 0, %.lr.ph646.preheader.i.i ], [ 1, %bb.nx ] ; 5 uses
  %i.bgq = add nsw i64 %.pre-phi751.i.i, 1        ; 5 uses
  %exitcond729.peel.not.i.i = icmp eq i64 %i.bgq, %i.bgl
  br i1 %exitcond729.peel.not.i.i, label %.lr.ph663.preheader.i.i, label %.lr.ph646.i.i.preheader

.lr.ph646.i.i.preheader:                          ; preds = %bb.ny
  %i.bgr = add nsw i64 %i.bgl, -2
  %i.bgs = sub i64 %.pre-phi751.i.i, %i.bgl
  %i.bgt = and i64 %i.bgs, 1
  %lcmp.mod840.not.not = icmp eq i64 %i.bgt, 0
  br i1 %lcmp.mod840.not.not, label %.lr.ph646.i.i.prol, label %.lr.ph646.i.i.prol.loopexit

.lr.ph646.i.i.prol:                               ; preds = %.lr.ph646.i.i.preheader
  %i.bgu = getelementptr inbounds i8, ptr %i.l, i64 %i.bgq
  %i.bgv = load i8, ptr %i.bgu, align 1
  %.not441.i.i.prol = icmp eq i8 %i.bgv, 0
  br i1 %.not441.i.i.prol, label %bb.nz, label %.lr.ph646.i.i.prol.loopexit.unr-lcssa

bb.nz:                                            ; preds = %.lr.ph646.i.i.prol
  %i.bgw = add nuw nsw i32 %.1374.peel.i.i, 1
  %i.bgx = icmp eq i64 %i.bgq, %i.baf
  %i.bgy = select i1 %i.bgx, i64 %.pre-phi751.i.i, i64 %i.bgq
  %i.bgz = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bgy
  store i32 %.1374.peel.i.i, ptr %i.bgz, align 4
  br label %.lr.ph646.i.i.prol.loopexit.unr-lcssa

.lr.ph646.i.i.prol.loopexit.unr-lcssa:            ; preds = %bb.nz, %.lr.ph646.i.i.prol
  %.1374.i.i.prol = phi i32 [ %.1374.peel.i.i, %.lr.ph646.i.i.prol ], [ %i.bgw, %bb.nz ] ; 2 uses
  %i.bha = add nsw i64 %.pre-phi751.i.i, 2
  br label %.lr.ph646.i.i.prol.loopexit

.lr.ph646.i.i.prol.loopexit:                      ; preds = %.lr.ph646.i.i.prol.loopexit.unr-lcssa, %.lr.ph646.i.i.preheader
  %.1374.i.i.lcssa.unr = phi i32 [ poison, %.lr.ph646.i.i.preheader ], [ %.1374.i.i.prol, %.lr.ph646.i.i.prol.loopexit.unr-lcssa ]
  %.5644.i.i.unr = phi i64 [ %i.bgq, %.lr.ph646.i.i.preheader ], [ %i.bha, %.lr.ph646.i.i.prol.loopexit.unr-lcssa ]
  %.0373643.i.i.unr = phi i32 [ %.1374.peel.i.i, %.lr.ph646.i.i.preheader ], [ %.1374.i.i.prol, %.lr.ph646.i.i.prol.loopexit.unr-lcssa ]
  %i.bhb = icmp eq i64 %i.bgr, %.pre-phi751.i.i
  br i1 %i.bhb, label %.lr.ph663.preheader.i.i, label %.lr.ph646.i.i

.lr.ph646.i.i:                                    ; preds = %.lr.ph646.i.i.prol.loopexit, %bb.oc
  %.5644.i.i = phi i64 [ %i.bhp, %bb.oc ], [ %.5644.i.i.unr, %.lr.ph646.i.i.prol.loopexit ] ; 5 uses
  %.0373643.i.i = phi i32 [ %.1374.i.i.1, %bb.oc ], [ %.0373643.i.i.unr, %.lr.ph646.i.i.prol.loopexit ] ; 3 uses
  %i.bhc = getelementptr inbounds i8, ptr %i.l, i64 %.5644.i.i
  %i.bhd = load i8, ptr %i.bhc, align 1
  %.not441.i.i = icmp eq i8 %i.bhd, 0
  br i1 %.not441.i.i, label %bb.oa, label %.lr.ph646.i.i.1

bb.oa:                                            ; preds = %.lr.ph646.i.i
  %i.bhe = add i32 %.0373643.i.i, 1
  %i.bhf = icmp eq i64 %.5644.i.i, %i.baf
  %i.bhg = select i1 %i.bhf, i64 %.pre-phi751.i.i, i64 %.5644.i.i
  %i.bhh = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bhg
  store i32 %.0373643.i.i, ptr %i.bhh, align 4
  br label %.lr.ph646.i.i.1

.lr.ph646.i.i.1:                                  ; preds = %bb.oa, %.lr.ph646.i.i
  %.1374.i.i = phi i32 [ %.0373643.i.i, %.lr.ph646.i.i ], [ %i.bhe, %bb.oa ] ; 3 uses
  %i.bhi = add nsw i64 %.5644.i.i, 1              ; 3 uses
  %i.bhj = getelementptr inbounds i8, ptr %i.l, i64 %i.bhi
  %i.bhk = load i8, ptr %i.bhj, align 1
  %.not441.i.i.1 = icmp eq i8 %i.bhk, 0
  br i1 %.not441.i.i.1, label %bb.ob, label %bb.oc

bb.ob:                                            ; preds = %.lr.ph646.i.i.1
  %i.bhl = add i32 %.1374.i.i, 1
  %i.bhm = icmp eq i64 %i.bhi, %i.baf
  %i.bhn = select i1 %i.bhm, i64 %.pre-phi751.i.i, i64 %i.bhi
  %i.bho = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bhn
  store i32 %.1374.i.i, ptr %i.bho, align 4
  br label %bb.oc

bb.oc:                                            ; preds = %bb.ob, %.lr.ph646.i.i.1
  %.1374.i.i.1 = phi i32 [ %.1374.i.i, %.lr.ph646.i.i.1 ], [ %i.bhl, %bb.ob ] ; 2 uses
  %i.bhp = add nsw i64 %.5644.i.i, 2              ; 2 uses
  %exitcond729.not.i.i.1 = icmp eq i64 %i.bhp, %i.bgl
  br i1 %exitcond729.not.i.i.1, label %.lr.ph663.preheader.i.i, label %.lr.ph646.i.i, !llvm.loop !47

.lr.ph663.preheader.i.i:                          ; preds = %.lr.ph646.i.i.prol.loopexit, %bb.oc, %bb.ny
  %.0373.lcssa829.i.i = phi i32 [ %.1374.peel.i.i, %bb.ny ], [ %.1374.i.i.lcssa.unr, %.lr.ph646.i.i.prol.loopexit ], [ %.1374.i.i.1, %bb.oc ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.o, i8 -1, i64 200, i1 false)
  br label %.lr.ph663.i.i

.lr.ph663.i.i:                                    ; preds = %bb.oh, %.lr.ph663.preheader.i.i
  %.7662.i.i = phi i64 [ %i.bit, %bb.oh ], [ %.pre-phi751.i.i, %.lr.ph663.preheader.i.i ] ; 5 uses
  %.0361661.i.i = phi i32 [ %.2363.i.i, %bb.oh ], [ 0, %.lr.ph663.preheader.i.i ] ; 6 uses
  %.0365660.i.i = phi i32 [ %.2367.i.i, %bb.oh ], [ 0, %.lr.ph663.preheader.i.i ] ; 2 uses
  %.0369659.i.i = phi i32 [ %.2371.i.i, %bb.oh ], [ 0, %.lr.ph663.preheader.i.i ] ; 2 uses
  %i.bhq = getelementptr inbounds i8, ptr %i.l, i64 %.7662.i.i
  %i.bhr = load i8, ptr %i.bhq, align 1
  %.not440.i.i = icmp eq i8 %i.bhr, 0
  br i1 %.not440.i.i, label %bb.od, label %bb.oh

bb.od:                                            ; preds = %.lr.ph663.i.i
  %i.bhs = getelementptr inbounds i8, ptr @ttisstds, i64 %.7662.i.i
  %i.bht = load i8, ptr %i.bhs, align 1, !range !6, !noundef !7
  %i.bhu = trunc nuw i8 %i.bht to i1
  %spec.select453.i.i = select i1 %i.bhu, i32 %.0373.lcssa829.i.i, i32 %.0369659.i.i ; 2 uses
  %i.bhv = getelementptr inbounds i8, ptr @ttisuts, i64 %.7662.i.i
  %i.bhw = load i8, ptr %i.bhv, align 1, !range !6, !noundef !7
  %i.bhx = trunc nuw i8 %i.bhw to i1
  %.1366.i.i = select i1 %i.bhx, i32 %.0373.lcssa829.i.i, i32 %.0365660.i.i ; 2 uses
  %i.bhy = getelementptr inbounds i8, ptr @desigidx, i64 %.7662.i.i
  %i.bhz = load i8, ptr %i.bhy, align 1
  %i.bia = zext i8 %i.bhz to i64                  ; 2 uses
  %i.bib = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bia ; 2 uses
  %i.bic = load i32, ptr %i.bib, align 4
  %i.bid = icmp sgt i32 %i.bic, -1
  br i1 %i.bid, label %bb.oh, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.bie = getelementptr inbounds nuw i8, ptr @chars, i64 %i.bia ; 3 uses
  %i.bif = sext i32 %.0361661.i.i to i64          ; 4 uses
  %i.big = icmp sgt i32 %.0361661.i.i, 0
  br i1 %i.big, label %.lr.ph652.i.i, label %._crit_edge653.i.i

.lr.ph652.i.i:                                    ; preds = %bb.oe, %bb.of
  %.1347650.i.i = phi i64 [ %i.bik, %bb.of ], [ 0, %bb.oe ] ; 3 uses
  %i.bih = getelementptr inbounds nuw i8, ptr %i.n, i64 %.1347650.i.i
  %i.bii = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bih, ptr noundef nonnull dereferenceable(1) %i.bie) #26
  %i.bij = icmp eq i32 %i.bii, 0
  br i1 %i.bij, label %._crit_edge653.i.i, label %bb.of

bb.of:                                            ; preds = %.lr.ph652.i.i
  %i.bik = add nuw nsw i64 %.1347650.i.i, 1       ; 2 uses
  %exitcond731.not.i.i = icmp eq i64 %i.bik, %i.bif
  br i1 %exitcond731.not.i.i, label %._crit_edge653.thread.i.i, label %.lr.ph652.i.i, !llvm.loop !48

._crit_edge653.i.i:                               ; preds = %.lr.ph652.i.i, %bb.oe
  %.1347.lcssa.i.i = phi i64 [ 0, %bb.oe ], [ %.1347650.i.i, %.lr.ph652.i.i ] ; 2 uses
  %i.bil = icmp eq i64 %.1347.lcssa.i.i, %i.bif
  br i1 %i.bil, label %._crit_edge653.thread.i.i, label %bb.og

._crit_edge653.thread.i.i:                        ; preds = %bb.of, %._crit_edge653.i.i
  %i.bim = getelementptr inbounds i8, ptr %i.n, i64 %i.bif
  %i.bin = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.bim, ptr noundef nonnull dereferenceable(1) %i.bie) #25 ; 0 uses
  %i.bio = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bie) #26
  %i.bip = trunc i64 %i.bio to i32
  %i.biq = add i32 %.0361661.i.i, 1
  %i.bir = add i32 %i.biq, %i.bip
  br label %bb.og

bb.og:                                            ; preds = %._crit_edge653.thread.i.i, %._crit_edge653.i.i
  %.1347.lcssa833.i.i = phi i64 [ %i.bif, %._crit_edge653.thread.i.i ], [ %.1347.lcssa.i.i, %._crit_edge653.i.i ]
  %.1362.i.i = phi i32 [ %i.bir, %._crit_edge653.thread.i.i ], [ %.0361661.i.i, %._crit_edge653.i.i ]
  %i.bis = trunc i64 %.1347.lcssa833.i.i to i32
  store i32 %i.bis, ptr %i.bib, align 4
  br label %bb.oh

bb.oh:                                            ; preds = %bb.og, %bb.od, %.lr.ph663.i.i
  %.2371.i.i = phi i32 [ %spec.select453.i.i, %bb.og ], [ %.0369659.i.i, %.lr.ph663.i.i ], [ %spec.select453.i.i, %bb.od ] ; 2 uses
  %.2367.i.i = phi i32 [ %.1366.i.i, %bb.og ], [ %.0365660.i.i, %.lr.ph663.i.i ], [ %.1366.i.i, %bb.od ] ; 2 uses
  %.2363.i.i = phi i32 [ %.1362.i.i, %bb.og ], [ %.0361661.i.i, %.lr.ph663.i.i ], [ %.0361661.i.i, %bb.od ] ; 2 uses
  %i.bit = add nsw i64 %.7662.i.i, 1              ; 2 uses
  %exitcond732.not.i.i = icmp eq i64 %i.bit, %i.bgl
  br i1 %exitcond732.not.i.i, label %._crit_edge664.i.i, label %.lr.ph663.i.i, !llvm.loop !49

._crit_edge664.i.i:                               ; preds = %bb.oh, %.preheader588.thread830.i.i
  %.0373.lcssa828.i.i = phi i32 [ 0, %.preheader588.thread830.i.i ], [ %.0373.lcssa829.i.i, %bb.oh ]
  %.0369.lcssa.i.i = phi i32 [ 0, %.preheader588.thread830.i.i ], [ %.2371.i.i, %bb.oh ]
  %.0365.lcssa.i.i = phi i32 [ 0, %.preheader588.thread830.i.i ], [ %.2367.i.i, %bb.oh ]
  %.0361.lcssa.i.i = phi i32 [ 0, %.preheader588.thread830.i.i ], [ %.2363.i.i, %bb.oh ]
  %i.biu = load i32, ptr @bloat, align 4
  %i.biv = icmp sgt i32 %i.biu, -1
  %or.cond575.i.i = select i1 %i.azb, i1 true, i1 %i.biv
  %.pre753.i.i = zext nneg i8 %.3381.i.i to i64   ; 2 uses
  br i1 %or.cond575.i.i, label %._crit_edge664._crit_edge.i.i, label %bb.oi

bb.oi:                                            ; preds = %._crit_edge664.i.i
  %.neg.i.i = sext i1 %.1377.shrunk.i.i to i64
  %.neg426.i.i = sub nsw i64 %.neg.i.i, %.pre753.i.i
  br label %._crit_edge664._crit_edge.i.i

._crit_edge664._crit_edge.i.i:                    ; preds = %bb.oi, %._crit_edge664.i.i
  %.2390.i.i = phi i64 [ %.neg426.i.i, %bb.oi ], [ %.1389.i.i, %._crit_edge664.i.i ]
  %.0387.i.i = phi i64 [ %.1392.i.i, %bb.oi ], [ %i.azr, %._crit_edge664.i.i ] ; 6 uses
  %.1385.i.i = phi i32 [ 0, %bb.oi ], [ %.0384556.i.i, %._crit_edge664.i.i ] ; 4 uses
  %.2375.i.i = phi i32 [ 1, %bb.oi ], [ %.0373.lcssa828.i.i, %._crit_edge664.i.i ] ; 4 uses
  %.3372.i.i = phi i32 [ 0, %bb.oi ], [ %.0369.lcssa.i.i, %._crit_edge664.i.i ] ; 5 uses
  %.3368.i.i = phi i32 [ 0, %bb.oi ], [ %.0365.lcssa.i.i, %._crit_edge664.i.i ] ; 5 uses
  %.3364.i.i = phi i32 [ 1, %bb.oi ], [ %.0361.lcssa.i.i, %._crit_edge664.i.i ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 5), i8 0, i64 15, i1 false)
  store i32 1718180436, ptr @writezone.tzh, align 4
  store i8 %i.apl, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 4), align 4
  %5 = lshr i32 %.3368.i.i, 24
  %6 = trunc nuw i32 %5 to i8
  store i8 %6, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 20), align 4
  %7 = lshr i32 %.3368.i.i, 16
  %8 = trunc i32 %7 to i8
  store i8 %8, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 21), align 1
  %9 = lshr i32 %.3368.i.i, 8
  %10 = trunc i32 %9 to i8
  store i8 %10, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 22), align 2
  %11 = trunc i32 %.3368.i.i to i8
  store i8 %11, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 23), align 1
  %12 = lshr i32 %.3372.i.i, 24
  %13 = trunc nuw i32 %12 to i8
  store i8 %13, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 24), align 4
  %14 = lshr i32 %.3372.i.i, 16
  %15 = trunc i32 %14 to i8
  store i8 %15, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 25), align 1
  %16 = lshr i32 %.3372.i.i, 8
  %17 = trunc i32 %16 to i8
  store i8 %17, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 26), align 2
  %18 = trunc i32 %.3372.i.i to i8
  store i8 %18, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 27), align 1
  %19 = lshr i32 %.1385.i.i, 24
  %20 = trunc nuw i32 %19 to i8
  store i8 %20, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 28), align 4
  %21 = lshr i32 %.1385.i.i, 16
  %22 = trunc i32 %21 to i8
  store i8 %22, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 29), align 1
  %23 = lshr i32 %.1385.i.i, 8
  %24 = trunc i32 %23 to i8
  store i8 %24, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 30), align 2
  %25 = trunc i32 %.1385.i.i to i8
  store i8 %25, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 31), align 1
  %i.biw = trunc nuw i8 %.3381.i.i to i1          ; 4 uses
  %i.bix = zext i1 %.1377.shrunk.i.i to i64
  %i.biy = add nuw nsw i64 %i.bix, %.pre753.i.i
  %i.biz = add i64 %i.biy, %.2390.i.i             ; 4 uses
  %i.bja = lshr i64 %i.biz, 24
  %i.bjb = trunc i64 %i.bja to i8
  store i8 %i.bjb, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 32), align 4
  %i.bjc = lshr i64 %i.biz, 16
  %i.bjd = trunc i64 %i.bjc to i8
  store i8 %i.bjd, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 33), align 1
  %i.bje = lshr i64 %i.biz, 8
  %26 = trunc i64 %i.bje to i8
  store i8 %26, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 34), align 2
  %27 = trunc i64 %i.biz to i8
  store i8 %27, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 35), align 1
  %28 = lshr i32 %.2375.i.i, 24
  %29 = trunc nuw i32 %28 to i8
  store i8 %29, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 36), align 4
  %30 = lshr i32 %.2375.i.i, 16
  %i.bjf = trunc i32 %30 to i8
  store i8 %i.bjf, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 37), align 1
  %31 = lshr i32 %.2375.i.i, 8
  %i.bjg = trunc i32 %31 to i8
  store i8 %i.bjg, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 38), align 2
  %32 = trunc i32 %.2375.i.i to i8
  store i8 %32, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 39), align 1
  %i.bjh = sext i32 %.3364.i.i to i64
  %33 = lshr i32 %.3364.i.i, 24
  %34 = trunc nuw i32 %33 to i8
  store i8 %34, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 40), align 4
  %35 = lshr i32 %.3364.i.i, 16
  %36 = trunc i32 %35 to i8
  store i8 %36, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 41), align 1
  %37 = lshr i32 %.3364.i.i, 8
  %38 = trunc i32 %37 to i8
  store i8 %38, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 42), align 2
  %39 = trunc i32 %.3364.i.i to i8
  store i8 %39, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 43), align 1
  %i.bji = call i64 @fwrite(ptr noundef nonnull @writezone.tzh, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %char.i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 4), align 4
  %chari.i.i = sext i8 %char.i.i to i32
  %fputc.i.i = call i32 @fputc(i32 %chari.i.i, ptr nonnull %.1.i403.i) ; 0 uses
  %i.bjj = call i64 @fwrite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 5), i64 noundef 15, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.bjk = call i64 @fwrite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 20), i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.bjl = call i64 @fwrite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 24), i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.bjm = call i64 @fwrite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 28), i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.bjn = call i64 @fwrite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 32), i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.bjo = call i64 @fwrite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 36), i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.bjp = call i64 @fwrite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @writezone.tzh, i64 40), i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  br i1 %i.azb, label %bb.ol, label %bb.oj

bb.oj:                                            ; preds = %._crit_edge664._crit_edge.i.i
  %i.bjq = load i32, ptr @bloat, align 4
  %i.bjr = icmp sgt i32 %i.bjq, -1
  br i1 %i.bjr, label %.thread569.i.i, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #25
  store i32 0, ptr %i.k, align 4
  %i.bjs = call i64 @fwrite(ptr noundef nonnull %i.k, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  %i.bjt = call i32 @putc(i32 noundef 0, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.bju = call i32 @putc(i32 noundef 0, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.bjv = call i32 @putc(i32 noundef 0, ptr noundef nonnull %.1.i403.i) ; 0 uses
  br label %.loopexit583.i.i

bb.ol:                                            ; preds = %._crit_edge664._crit_edge.i.i
  %.b414.i.i = load i1, ptr @print_abbrevs, align 1
  br i1 %.b414.i.i, label %.preheader586.i.i, label %.thread567.i.i

.preheader586.i.i:                                ; preds = %bb.ol
  %i.bjw = icmp slt i64 %.1392.i.i, %.0387.i.i
  br i1 %i.bjw, label %.lr.ph669.i.i, label %._crit_edge670.thread.i.i

.lr.ph669.i.i:                                    ; preds = %.preheader586.i.i
  %i.bjx = add nsw i64 %.0387.i.i, -1
  br label %bb.om

bb.om:                                            ; preds = %bb.op, %.lr.ph669.i.i
  %.8668.i.i = phi i64 [ %.1392.i.i, %.lr.ph669.i.i ], [ %i.bkv, %bb.op ] ; 4 uses
  %i.bjy = icmp eq i64 %.8668.i.i, %i.bjx
  br i1 %i.bjy, label %bb.oo, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.bjz = getelementptr [8 x i8], ptr %i.apt, i64 %.8668.i.i
  %i.bka = getelementptr i8, ptr %i.bjz, i64 8
  %i.bkb = load i64, ptr %i.bka, align 8
  %i.bkc = load i64, ptr @print_cutoff, align 8
  %i.bkd = icmp sgt i64 %i.bkb, %i.bkc
  br i1 %i.bkd, label %bb.oo, label %bb.op

bb.oo:                                            ; preds = %bb.on, %bb.om
  %i.bke = getelementptr inbounds i8, ptr %i.apy, i64 %.8668.i.i
  %i.bkf = load i8, ptr %i.bke, align 1
  %i.bkg = zext i8 %i.bkf to i64                  ; 3 uses
  %i.bkh = getelementptr inbounds nuw i8, ptr @desigidx, i64 %i.bkg
  %i.bki = load i8, ptr %i.bkh, align 1
  %i.bkj = zext i8 %i.bki to i64
  %i.bkk = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bkj
  %i.bkl = load i32, ptr %i.bkk, align 4
  %i.bkm = sext i32 %i.bkl to i64
  %i.bkn = getelementptr inbounds i8, ptr %i.n, i64 %i.bkm
  %i.bko = load ptr, ptr @stdout, align 8
  %i.bkp = getelementptr inbounds nuw [8 x i8], ptr @utoffs, i64 %i.bkg
  %i.bkq = load i64, ptr %i.bkp, align 8
  %i.bkr = getelementptr inbounds nuw i8, ptr @isdsts, i64 %i.bkg
  %i.bks = load i8, ptr %i.bkr, align 1
  %.not439.i.i = icmp eq i8 %i.bks, 0
  %i.bkt = select i1 %.not439.i.i, ptr @.str.26, ptr @.str.190
  %i.bku = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.bko, ptr noundef nonnull @.str.189, ptr noundef nonnull %i.bkn, i64 noundef %i.bkq, ptr noundef nonnull %i.bkt) #25 ; 0 uses
  br label %bb.op

bb.op:                                            ; preds = %bb.oo, %bb.on
  %i.bkv = add nsw i64 %.8668.i.i, 1              ; 2 uses
  %exitcond733.not.i.i = icmp eq i64 %i.bkv, %.0387.i.i
  br i1 %exitcond733.not.i.i, label %._crit_edge670.i.i, label %bb.om, !llvm.loop !50

._crit_edge670.thread.i.i:                        ; preds = %.preheader586.i.i
  %i.bkw = load i8, ptr %i.ayy, align 1
  %i.bkx = zext i8 %i.bkw to i64
  %i.bky = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bkx
  %i.bkz = load i32, ptr %i.bky, align 4
  %i.bla = sext i32 %i.bkz to i64
  %i.blb = getelementptr inbounds i8, ptr %i.n, i64 %i.bla
  %i.blc = load ptr, ptr @stdout, align 8
  %i.bld = load i64, ptr %i.ayz, align 8
  %i.ble = load i8, ptr %i.aza, align 1
  %.not428.i.i = icmp eq i8 %i.ble, 0
  %i.blf = select i1 %.not428.i.i, ptr @.str.26, ptr @.str.190
  %i.blg = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.blc, ptr noundef nonnull @.str.189, ptr noundef nonnull %i.blb, i64 noundef %i.bld, ptr noundef nonnull %i.blf) #25 ; 0 uses
  br label %._crit_edge670.i.i

._crit_edge670.i.i:                               ; preds = %bb.op, %._crit_edge670.thread.i.i
  %i.blh = load i64, ptr @lo_time, align 8        ; 2 uses
  br i1 %i.biw, label %.thread568.i.i, label %puttzcodepass.exit.i.i

.thread569.i.i:                                   ; preds = %bb.oj
  %i.bli = load i64, ptr @lo_time, align 8
  %i.blj = call i64 @llvm.smax.i64(i64 %i.bli, i64 -2147483648) ; 6 uses
  br i1 %i.biw, label %.thread570.i.i, label %puttzcodepass.exit.i.i

.thread567.i.i:                                   ; preds = %bb.ol
  %i.blk = load i64, ptr @lo_time, align 8        ; 2 uses
  br i1 %i.biw, label %.thread568.i.i, label %puttzcodepass.exit.i.i

.thread570.i.i:                                   ; preds = %.thread569.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.bll = lshr i64 %i.blj, 24
  %i.blm = trunc i64 %i.bll to i8
  store i8 %i.blm, ptr %i.i, align 1
  %i.bln = lshr i64 %i.blj, 16
  %i.blo = trunc i64 %i.bln to i8
  store i8 %i.blo, ptr %i.ng, align 1
  %i.blp = lshr i64 %i.blj, 8
  %i.blq = trunc i64 %i.blp to i8
  store i8 %i.blq, ptr %i.nh, align 1
  %i.blr = trunc i64 %i.blj to i8
  store i8 %i.blr, ptr %i.ni, align 1
  %i.bls = call i64 @fwrite(ptr noundef nonnull %i.i, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  br label %puttzcodepass.exit.i.i

.thread568.i.i:                                   ; preds = %.thread567.i.i, %._crit_edge670.i.i
  %i.blt = phi i64 [ %i.blk, %.thread567.i.i ], [ %i.blh, %._crit_edge670.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  %40 = bitcast i64 %i.blt to <8 x i8>
  %41 = shufflevector <8 x i8> %40, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %41, ptr %i.j, align 8
  %i.blu = call i64 @fwrite(ptr noundef nonnull %i.j, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  br label %puttzcodepass.exit.i.i

puttzcodepass.exit.i.i:                           ; preds = %.thread568.i.i, %.thread570.i.i, %.thread567.i.i, %.thread569.i.i, %._crit_edge670.i.i
  %i.blv = phi i64 [ %i.blk, %.thread567.i.i ], [ %i.blj, %.thread569.i.i ], [ %i.blh, %._crit_edge670.i.i ], [ %i.blj, %.thread570.i.i ], [ %i.blt, %.thread568.i.i ]
  %i.blw = icmp slt i64 %.1392.i.i, %.0387.i.i    ; 2 uses
  br i1 %i.blw, label %.lr.ph672.i.i, label %._crit_edge673.i.i

.lr.ph672.i.i:                                    ; preds = %puttzcodepass.exit.i.i, %puttzcodepass.exit480.i.i
  %.9671.i.i = phi i64 [ %i.bmi, %puttzcodepass.exit480.i.i ], [ %.1392.i.i, %puttzcodepass.exit.i.i ] ; 2 uses
  %i.blx = getelementptr inbounds [8 x i8], ptr %i.apt, i64 %.9671.i.i
  %i.bly = load i64, ptr %i.blx, align 8
  %..i.i = call i64 @llvm.smax.i64(i64 %i.bly, i64 %i.blv) ; 5 uses
  br i1 %i.azb, label %bb.or, label %bb.oq

bb.oq:                                            ; preds = %.lr.ph672.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.blz = lshr i64 %..i.i, 24
  %i.bma = trunc i64 %i.blz to i8
  store i8 %i.bma, ptr %i.g, align 1
  %i.bmb = lshr i64 %..i.i, 16
  %i.bmc = trunc i64 %i.bmb to i8
  store i8 %i.bmc, ptr %i.nj, align 1
  %i.bmd = lshr i64 %..i.i, 8
  %i.bme = trunc i64 %i.bmd to i8
  store i8 %i.bme, ptr %i.nk, align 1
  %i.bmf = trunc i64 %..i.i to i8
  store i8 %i.bmf, ptr %i.nl, align 1
  %i.bmg = call i64 @fwrite(ptr noundef nonnull %i.g, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br label %puttzcodepass.exit480.i.i

bb.or:                                            ; preds = %.lr.ph672.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %42 = bitcast i64 %..i.i to <8 x i8>
  %43 = shufflevector <8 x i8> %42, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %43, ptr %i.h, align 8
  %i.bmh = call i64 @fwrite(ptr noundef nonnull %i.h, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  br label %puttzcodepass.exit480.i.i

puttzcodepass.exit480.i.i:                        ; preds = %bb.or, %bb.oq
  %i.bmi = add nsw i64 %.9671.i.i, 1              ; 2 uses
  %exitcond734.not.i.i = icmp eq i64 %i.bmi, %.0387.i.i
  br i1 %exitcond734.not.i.i, label %._crit_edge673.i.i, label %.lr.ph672.i.i, !llvm.loop !51

._crit_edge673.i.i:                               ; preds = %puttzcodepass.exit480.i.i, %puttzcodepass.exit.i.i
  br i1 %.1377.shrunk.i.i, label %bb.os, label %puttzcodepass.exit481.i.i

bb.os:                                            ; preds = %._crit_edge673.i.i
  %i.bmj = load i64, ptr @hi_time, align 8
  %i.bmk = add i64 %i.bmj, 1                      ; 5 uses
  br i1 %i.azb, label %bb.ou, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.bml = lshr i64 %i.bmk, 24
  %i.bmm = trunc i64 %i.bml to i8
  store i8 %i.bmm, ptr %i.e, align 1
  %i.bmn = lshr i64 %i.bmk, 16
  %i.bmo = trunc i64 %i.bmn to i8
  store i8 %i.bmo, ptr %i.nm, align 1
  %i.bmp = lshr i64 %i.bmk, 8
  %i.bmq = trunc i64 %i.bmp to i8
  store i8 %i.bmq, ptr %i.nn, align 1
  %i.bmr = trunc i64 %i.bmk to i8
  store i8 %i.bmr, ptr %i.no, align 1
  %i.bms = call i64 @fwrite(ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %puttzcodepass.exit481.i.i

bb.ou:                                            ; preds = %bb.os
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %44 = bitcast i64 %i.bmk to <8 x i8>
  %45 = shufflevector <8 x i8> %44, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %45, ptr %i.f, align 8
  %i.bmt = call i64 @fwrite(ptr noundef nonnull %i.f, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %puttzcodepass.exit481.i.i

puttzcodepass.exit481.i.i:                        ; preds = %bb.ou, %bb.ot, %._crit_edge673.i.i
  br i1 %i.biw, label %bb.ov, label %bb.ow

bb.ov:                                            ; preds = %puttzcodepass.exit481.i.i
  %i.bmu = call i32 @putc(i32 noundef 0, ptr noundef nonnull %.1.i403.i) ; 0 uses
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %puttzcodepass.exit481.i.i
  br i1 %i.blw, label %.lr.ph676.i.i, label %._crit_edge677.i.i

.lr.ph676.i.i:                                    ; preds = %bb.ow, %.lr.ph676.i.i
  %.10674.i.i = phi i64 [ %i.bnb, %.lr.ph676.i.i ], [ %.1392.i.i, %bb.ow ] ; 2 uses
  %i.bmv = getelementptr inbounds i8, ptr %i.apy, i64 %.10674.i.i
  %i.bmw = load i8, ptr %i.bmv, align 1
  %i.bmx = zext i8 %i.bmw to i64
  %i.bmy = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bmx
  %i.bmz = load i32, ptr %i.bmy, align 4          ; 2 uses
  %i.bna = call i32 @putc(i32 noundef %i.bmz, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.bnb = add nsw i64 %.10674.i.i, 1             ; 2 uses
  %exitcond735.not.i.i = icmp eq i64 %i.bnb, %.0387.i.i
  br i1 %exitcond735.not.i.i, label %._crit_edge677.i.i, label %.lr.ph676.i.i, !llvm.loop !52

._crit_edge677.i.i:                               ; preds = %.lr.ph676.i.i, %bb.ow
  %.0383.lcssa.i.i = phi i32 [ 0, %bb.ow ], [ %i.bmz, %.lr.ph676.i.i ]
  br i1 %.1377.shrunk.i.i, label %bb.ox, label %bb.oy

bb.ox:                                            ; preds = %._crit_edge677.i.i
  %i.bnc = call i32 @putc(i32 noundef %.0383.lcssa.i.i, ptr noundef nonnull %.1.i403.i) ; 0 uses
  br label %bb.oy

bb.oy:                                            ; preds = %bb.ox, %._crit_edge677.i.i
  %i.bnd = load i32, ptr @typecnt, align 4        ; 2 uses
  %i.bne = sext i32 %i.bnd to i64                 ; 2 uses
  %i.bnf = icmp slt i64 %.pre-phi751.i.i, %i.bne
  br i1 %i.bnf, label %.lr.ph681.preheader.i.i, label %._crit_edge682.i.i

.lr.ph681.preheader.i.i:                          ; preds = %bb.oy
  %i.bng = load i8, ptr %i.bag, align 1
  %.not438.peel.i.i = icmp eq i8 %i.bng, 0
  br i1 %.not438.peel.i.i, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %.lr.ph681.preheader.i.i
  %i.bnh = getelementptr inbounds nuw [8 x i8], ptr @utoffs, i64 %i.baf
  %i.bni = load i64, ptr %i.bnh, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.bnj = lshr i64 %i.bni, 24
  %i.bnk = trunc i64 %i.bnj to i8
  store i8 %i.bnk, ptr %i.d, align 1
  %i.bnl = lshr i64 %i.bni, 16
  %i.bnm = trunc i64 %i.bnl to i8
  store i8 %i.bnm, ptr %i.np, align 1
  %i.bnn = lshr i64 %i.bni, 8
  %i.bno = trunc i64 %i.bnn to i8
  store i8 %i.bno, ptr %i.nq, align 1
  %i.bnp = trunc i64 %i.bni to i8
  store i8 %i.bnp, ptr %i.nr, align 1
  %i.bnq = call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.bnr = getelementptr inbounds nuw i8, ptr @isdsts, i64 %i.baf
  %i.bns = load i8, ptr %i.bnr, align 1
  %i.bnt = sext i8 %i.bns to i32
  %i.bnu = call i32 @putc(i32 noundef %i.bnt, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.bnv = getelementptr inbounds nuw i8, ptr @desigidx, i64 %i.baf
  %i.bnw = load i8, ptr %i.bnv, align 1
  %i.bnx = zext i8 %i.bnw to i64
  %i.bny = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bnx
  %i.bnz = load i32, ptr %i.bny, align 4
  %i.boa = call i32 @putc(i32 noundef %i.bnz, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %.pre741.i.i = load i32, ptr @typecnt, align 4  ; 2 uses
  %.pre746.i.i = sext i32 %.pre741.i.i to i64
  br label %bb.pa

bb.pa:                                            ; preds = %bb.oz, %.lr.ph681.preheader.i.i
  %.pre-phi.i.i = phi i64 [ %.pre746.i.i, %bb.oz ], [ %i.bne, %.lr.ph681.preheader.i.i ]
  %i.bob = phi i32 [ %.pre741.i.i, %bb.oz ], [ %i.bnd, %.lr.ph681.preheader.i.i ]
  %i.boc = add nsw i64 %.pre-phi751.i.i, 1        ; 2 uses
  %i.bod = icmp slt i64 %i.boc, %.pre-phi.i.i
  br i1 %i.bod, label %.lr.ph681.i.i, label %._crit_edge682.i.i

.lr.ph681.i.i:                                    ; preds = %bb.pa, %bb.pc
  %i.boe = phi i32 [ %i.bpf, %bb.pc ], [ %i.bob, %bb.pa ]
  %.11679.i.i = phi i64 [ %i.bpg, %bb.pc ], [ %i.boc, %bb.pa ] ; 3 uses
  %i.bof = icmp eq i64 %.11679.i.i, %i.baf
  %i.bog = select i1 %i.bof, i64 %i.bgj, i64 %.11679.i.i
  %i.boh = shl i64 %i.bog, 32
  %i.boi = ashr exact i64 %i.boh, 32              ; 4 uses
  %i.boj = getelementptr inbounds i8, ptr %i.l, i64 %i.boi
  %i.bok = load i8, ptr %i.boj, align 1
  %.not438.i.i = icmp eq i8 %i.bok, 0
  br i1 %.not438.i.i, label %bb.pb, label %bb.pc

bb.pb:                                            ; preds = %.lr.ph681.i.i
  %i.bol = getelementptr inbounds [8 x i8], ptr @utoffs, i64 %i.boi
  %i.bom = load i64, ptr %i.bol, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.bon = lshr i64 %i.bom, 24
  %i.boo = trunc i64 %i.bon to i8
  store i8 %i.boo, ptr %i.d, align 1
  %i.bop = lshr i64 %i.bom, 16
  %i.boq = trunc i64 %i.bop to i8
  store i8 %i.boq, ptr %i.np, align 1
  %i.bor = lshr i64 %i.bom, 8
  %i.bos = trunc i64 %i.bor to i8
  store i8 %i.bos, ptr %i.nq, align 1
  %i.bot = trunc i64 %i.bom to i8
  store i8 %i.bot, ptr %i.nr, align 1
  %i.bou = call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.bov = getelementptr inbounds i8, ptr @isdsts, i64 %i.boi
  %i.bow = load i8, ptr %i.bov, align 1
  %i.box = sext i8 %i.bow to i32
  %i.boy = call i32 @putc(i32 noundef %i.box, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %i.boz = getelementptr inbounds i8, ptr @desigidx, i64 %i.boi
  %i.bpa = load i8, ptr %i.boz, align 1
  %i.bpb = zext i8 %i.bpa to i64
  %i.bpc = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bpb
  %i.bpd = load i32, ptr %i.bpc, align 4
  %i.bpe = call i32 @putc(i32 noundef %i.bpd, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %.pre742.i.i = load i32, ptr @typecnt, align 4
  br label %bb.pc

bb.pc:                                            ; preds = %bb.pb, %.lr.ph681.i.i
  %i.bpf = phi i32 [ %.pre742.i.i, %bb.pb ], [ %i.boe, %.lr.ph681.i.i ] ; 2 uses
  %i.bpg = add nsw i64 %.11679.i.i, 1             ; 2 uses
  %i.bph = sext i32 %i.bpf to i64
  %i.bpi = icmp slt i64 %i.bpg, %i.bph
  br i1 %i.bpi, label %.lr.ph681.i.i, label %._crit_edge682.i.i, !llvm.loop !53

._crit_edge682.i.i:                               ; preds = %bb.pc, %bb.pa, %bb.oy
  %.not429.i.i = icmp eq i32 %.3364.i.i, 0
  br i1 %.not429.i.i, label %bb.pe, label %bb.pd

bb.pd:                                            ; preds = %._crit_edge682.i.i
  %i.bpj = call i64 @fwrite(ptr noundef nonnull %i.n, i64 noundef 1, i64 noundef %i.bjh, ptr noundef nonnull %.1.i403.i) ; 0 uses
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pd, %._crit_edge682.i.i
  %i.bpk = sext i32 %i.azs to i64
  %i.bpl = icmp slt i32 %.0386554.i.i, %i.azs
  br i1 %i.bpl, label %.lr.ph690.preheader.i.i, label %._crit_edge691.i.i

.lr.ph690.preheader.i.i:                          ; preds = %bb.pe
  %i.bpm = sext i32 %.0386554.i.i to i64
  br label %.lr.ph690.i.i

.lr.ph690.i.i:                                    ; preds = %puttzcodepass.exit486.i.i, %.lr.ph690.preheader.i.i
  %.12688.i.i = phi i64 [ %i.brn, %puttzcodepass.exit486.i.i ], [ %i.bpm, %.lr.ph690.preheader.i.i ] ; 6 uses
  %i.bpn = getelementptr inbounds i8, ptr @roll, i64 %.12688.i.i
  %i.bpo = load i8, ptr %i.bpn, align 1
  %.not434.i.i = icmp eq i8 %i.bpo, 0
  br i1 %.not434.i.i, label %bb.ps, label %bb.pf

bb.pf:                                            ; preds = %.lr.ph690.i.i
  %i.bpp = load i64, ptr @timecnt, align 8        ; 4 uses
  %i.bpq = icmp eq i64 %i.bpp, 0
  br i1 %i.bpq, label %bb.ph, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.bpr = getelementptr inbounds [8 x i8], ptr @trans, i64 %.12688.i.i
  %i.bps = load i64, ptr %i.bpr, align 8          ; 3 uses
  %i.bpt = load i64, ptr %i.apt, align 8
  %i.bpu = icmp slt i64 %i.bps, %i.bpt
  br i1 %i.bpu, label %bb.ph, label %.preheader.i404.i

.preheader.i404.i:                                ; preds = %bb.pg
  %i.bpv = icmp sgt i64 %i.bpp, 1
  br i1 %i.bpv, label %.lr.ph684.i.i, label %.critedge.i405.i

bb.ph:                                            ; preds = %bb.pg, %bb.pf
  %i.bpw = load i32, ptr @typecnt, align 4
  %i.bpx = call i32 @llvm.smax.i32(i32 %i.bpw, i32 1)
  %smax.i.i = zext nneg i32 %i.bpx to i64
  br label %bb.pi

bb.pi:                                            ; preds = %bb.pj, %bb.ph
  %.2348.i.i = phi i64 [ 0, %bb.ph ], [ %i.bqa, %bb.pj ] ; 3 uses
  %i.bpy = getelementptr inbounds nuw i8, ptr @isdsts, i64 %.2348.i.i
  %i.bpz = load i8, ptr %i.bpy, align 1
  %.not436.i.i = icmp eq i8 %i.bpz, 0
  br i1 %.not436.i.i, label %.loopexit.loopexit.i.i, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.bqa = add nuw nsw i64 %.2348.i.i, 1          ; 2 uses
  %exitcond738.not.i.i = icmp eq i64 %i.bqa, %smax.i.i
  br i1 %exitcond738.not.i.i, label %.loopexit.loopexit.i.i, label %bb.pi, !llvm.loop !54

.lr.ph684.i.i:                                    ; preds = %.preheader.i404.i, %bb.pk
  %.3349683.i.i = phi i64 [ %i.bqd, %bb.pk ], [ 1, %.preheader.i404.i ] ; 3 uses
  %i.bqb = getelementptr inbounds nuw [8 x i8], ptr %i.apt, i64 %.3349683.i.i
  %i.bqc = load i64, ptr %i.bqb, align 8
  %.not435.i.i = icmp slt i64 %i.bps, %i.bqc
  br i1 %.not435.i.i, label %.critedge.i405.i, label %bb.pk

bb.pk:                                            ; preds = %.lr.ph684.i.i
  %i.bqd = add nuw nsw i64 %.3349683.i.i, 1       ; 2 uses
  %exitcond737.not.i.i = icmp eq i64 %i.bqd, %i.bpp
  br i1 %exitcond737.not.i.i, label %.critedge.i405.i, label %.lr.ph684.i.i, !llvm.loop !55

.critedge.i405.i:                                 ; preds = %bb.pk, %.lr.ph684.i.i, %.preheader.i404.i
  %.3349.lcssa.i.i = phi i64 [ 1, %.preheader.i404.i ], [ %i.bpp, %bb.pk ], [ %.3349683.i.i, %.lr.ph684.i.i ]
  %i.bqe = getelementptr i8, ptr %i.apy, i64 %.3349.lcssa.i.i
  %i.bqf = getelementptr i8, ptr %i.bqe, i64 -1
  %i.bqg = load i8, ptr %i.bqf, align 1
  %i.bqh = zext i8 %i.bqg to i64
  br label %.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.pj, %bb.pi
  %.4350.ph.i.i = phi i64 [ %.2348.i.i, %bb.pi ], [ 0, %bb.pj ]
  %.phi.trans.insert.i.i = getelementptr inbounds [8 x i8], ptr @trans, i64 %.12688.i.i
  %.pre743.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %.critedge.i405.i
  %i.bqi = phi i64 [ %i.bps, %.critedge.i405.i ], [ %.pre743.i.i, %.loopexit.loopexit.i.i ] ; 6 uses
  %.4350.i.i = phi i64 [ %i.bqh, %.critedge.i405.i ], [ %.4350.ph.i.i, %.loopexit.loopexit.i.i ]
  %i.bqj = getelementptr inbounds nuw [8 x i8], ptr @utoffs, i64 %.4350.i.i
  %i.bqk = load i64, ptr %i.bqj, align 8          ; 2 uses
  %i.bql = sub i64 0, %i.bqk                      ; 2 uses
  %i.bqm = icmp slt i64 %i.bqi, 0
  br i1 %i.bqm, label %bb.pl, label %bb.po

bb.pl:                                            ; preds = %.loopexit.i.i
  %i.bqn = sub nsw i64 -9223372036854775808, %i.bqi
  %i.bqo = icmp sgt i64 %i.bqn, %i.bql
  br i1 %i.bqo, label %bb.pm, label %bb.pr

bb.pm:                                            ; preds = %bb.pl
  %.not11.i484.i.i = icmp eq i64 %i.bqi, -9223372036854775808
  br i1 %.not11.i484.i.i, label %tadd.exit485.i.i, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  call fastcc void @time_overflow() #29
  unreachable

bb.po:                                            ; preds = %.loopexit.i.i
  %i.bqp = sub nuw nsw i64 9223372036854775807, %i.bqi
  %i.bqq = icmp slt i64 %i.bqp, %i.bql
  br i1 %i.bqq, label %bb.pp, label %bb.pr

bb.pp:                                            ; preds = %bb.po
  %.not.i483.i.i = icmp eq i64 %i.bqi, 9223372036854775807
  br i1 %.not.i483.i.i, label %tadd.exit485.i.i, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  call fastcc void @time_overflow() #29
  unreachable

bb.pr:                                            ; preds = %bb.po, %bb.pl
  %i.bqr = sub i64 %i.bqi, %i.bqk
  br label %tadd.exit485.i.i

bb.ps:                                            ; preds = %.lr.ph690.i.i
  %i.bqs = getelementptr inbounds [8 x i8], ptr @trans, i64 %.12688.i.i
  %i.bqt = load i64, ptr %i.bqs, align 8
  br label %tadd.exit485.i.i

tadd.exit485.i.i:                                 ; preds = %bb.ps, %bb.pr, %bb.pp, %bb.pm
  %.0.i406.i = phi i64 [ %i.bqt, %bb.ps ], [ -9223372036854775808, %bb.pm ], [ %i.bqr, %bb.pr ], [ 9223372036854775807, %bb.pp ] ; 5 uses
  br i1 %i.azb, label %bb.pu, label %bb.pt

bb.pt:                                            ; preds = %tadd.exit485.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.bqu = lshr i64 %.0.i406.i, 24
  %i.bqv = trunc i64 %i.bqu to i8
  store i8 %i.bqv, ptr %i.b, align 1
  %i.bqw = lshr i64 %.0.i406.i, 16
  %i.bqx = trunc i64 %i.bqw to i8
  store i8 %i.bqx, ptr %i.ns, align 1
  %i.bqy = lshr i64 %.0.i406.i, 8
  %i.bqz = trunc i64 %i.bqy to i8
  store i8 %i.bqz, ptr %i.nt, align 1
  %i.bra = trunc i64 %.0.i406.i to i8
  store i8 %i.bra, ptr %i.nu, align 1
  %i.brb = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %puttzcodepass.exit486.i.i

bb.pu:                                            ; preds = %tadd.exit485.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %46 = bitcast i64 %.0.i406.i to <8 x i8>
  %47 = shufflevector <8 x i8> %46, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %47, ptr %i.c, align 8
  %i.brc = call i64 @fwrite(ptr noundef nonnull %i.c, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %puttzcodepass.exit486.i.i

puttzcodepass.exit486.i.i:                        ; preds = %bb.pu, %bb.pt
  %i.brd = getelementptr inbounds [8 x i8], ptr @corr, i64 %.12688.i.i
  %i.bre = load i64, ptr %i.brd, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.brf = lshr i64 %i.bre, 24
  %i.brg = trunc i64 %i.brf to i8
  store i8 %i.brg, ptr %i.a, align 1
  %i.brh = lshr i64 %i.bre, 16
  %i.bri = trunc i64 %i.brh to i8
  store i8 %i.bri, ptr %i.nv, align 1
  %i.brj = lshr i64 %i.bre, 8
  %i.brk = trunc i64 %i.brj to i8
  store i8 %i.brk, ptr %i.nw, align 1
  %i.brl = trunc i64 %i.bre to i8
  store i8 %i.brl, ptr %i.nx, align 1
  %i.brm = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %.1.i403.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.brn = add nsw i64 %.12688.i.i, 1             ; 2 uses
  %exitcond739.not.i.i = icmp eq i64 %i.brn, %i.bpk
  br i1 %exitcond739.not.i.i, label %._crit_edge691.i.i, label %.lr.ph690.i.i, !llvm.loop !56

._crit_edge691.i.i:                               ; preds = %puttzcodepass.exit486.i.i, %bb.pe
  %.not430.i.i = icmp ne i32 %.3372.i.i, 0
  %i.bro = load i32, ptr @typecnt, align 4        ; 3 uses
  %i.brp = sext i32 %i.bro to i64                 ; 2 uses
  %i.brq = icmp slt i64 %.pre-phi751.i.i, %i.brp
  %or.cond699.i.i = select i1 %.not430.i.i, i1 %i.brq, i1 false
  br i1 %or.cond699.i.i, label %.lr.ph693.i.i, label %.loopexit585.i.i

.lr.ph693.i.i:                                    ; preds = %._crit_edge691.i.i, %bb.pw
  %i.brr = phi i32 [ %i.bry, %bb.pw ], [ %i.bro, %._crit_edge691.i.i ]
  %.13692.i.i = phi i64 [ %i.brz, %bb.pw ], [ %.pre-phi751.i.i, %._crit_edge691.i.i ] ; 3 uses
  %i.brs = getelementptr inbounds i8, ptr %i.l, i64 %.13692.i.i
  %i.brt = load i8, ptr %i.brs, align 1
  %.not433.i.i = icmp eq i8 %i.brt, 0
  br i1 %.not433.i.i, label %bb.pv, label %bb.pw

bb.pv:                                            ; preds = %.lr.ph693.i.i
  %i.bru = getelementptr inbounds i8, ptr @ttisstds, i64 %.13692.i.i
  %i.brv = load i8, ptr %i.bru, align 1, !range !6, !noundef !7
  %i.brw = zext nneg i8 %i.brv to i32
  %i.brx = call i32 @putc(i32 noundef %i.brw, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %.pre744.i.i = load i32, ptr @typecnt, align 4
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %.lr.ph693.i.i
  %i.bry = phi i32 [ %i.brr, %.lr.ph693.i.i ], [ %.pre744.i.i, %bb.pv ] ; 3 uses
  %i.brz = add nsw i64 %.13692.i.i, 1             ; 2 uses
  %i.bsa = sext i32 %i.bry to i64                 ; 2 uses
  %i.bsb = icmp slt i64 %i.brz, %i.bsa
  br i1 %i.bsb, label %.lr.ph693.i.i, label %.loopexit585.i.i, !llvm.loop !57

.loopexit585.i.i:                                 ; preds = %bb.pw, %._crit_edge691.i.i
  %.pre-phi747.i.i = phi i64 [ %i.brp, %._crit_edge691.i.i ], [ %i.bsa, %bb.pw ]
  %i.bsc = phi i32 [ %i.bro, %._crit_edge691.i.i ], [ %i.bry, %bb.pw ]
  %.not431.i.i = icmp ne i32 %.3368.i.i, 0
  %i.bsd = icmp slt i64 %.pre-phi751.i.i, %.pre-phi747.i.i
  %or.cond702.i.i = select i1 %.not431.i.i, i1 %i.bsd, i1 false
  br i1 %or.cond702.i.i, label %.lr.ph695.i.i, label %.loopexit583.i.i

.lr.ph695.i.i:                                    ; preds = %.loopexit585.i.i, %bb.py
  %i.bse = phi i32 [ %i.bsl, %bb.py ], [ %i.bsc, %.loopexit585.i.i ]
  %.14694.i.i = phi i64 [ %i.bsm, %bb.py ], [ %.pre-phi751.i.i, %.loopexit585.i.i ] ; 3 uses
  %i.bsf = getelementptr inbounds i8, ptr %i.l, i64 %.14694.i.i
  %i.bsg = load i8, ptr %i.bsf, align 1
  %.not432.i.i = icmp eq i8 %i.bsg, 0
  br i1 %.not432.i.i, label %bb.px, label %bb.py

bb.px:                                            ; preds = %.lr.ph695.i.i
  %i.bsh = getelementptr inbounds i8, ptr @ttisuts, i64 %.14694.i.i
  %i.bsi = load i8, ptr %i.bsh, align 1, !range !6, !noundef !7
  %i.bsj = zext nneg i8 %i.bsi to i32
  %i.bsk = call i32 @putc(i32 noundef %i.bsj, ptr noundef nonnull %.1.i403.i) ; 0 uses
  %.pre745.i.i = load i32, ptr @typecnt, align 4
  br label %bb.py

bb.py:                                            ; preds = %bb.px, %.lr.ph695.i.i
  %i.bsl = phi i32 [ %i.bse, %.lr.ph695.i.i ], [ %.pre745.i.i, %bb.px ] ; 2 uses
  %i.bsm = add nsw i64 %.14694.i.i, 1             ; 2 uses
  %i.bsn = sext i32 %i.bsl to i64
  %i.bso = icmp slt i64 %i.bsm, %i.bsn
  br i1 %i.bso, label %.lr.ph695.i.i, label %.loopexit583.i.i, !llvm.loop !58

.loopexit583.i.i:                                 ; preds = %bb.py, %.loopexit585.i.i, %bb.ok
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #25
  br i1 %i.azb, label %outzone.exit, label %bb.nc, !llvm.loop !59

outzone.exit:                                     ; preds = %.loopexit583.i.i
  %i.bsp = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef nonnull %.1.i403.i, ptr noundef nonnull @.str.191, ptr noundef nonnull %i.pd) #25 ; 0 uses
  %i.bsq = load ptr, ptr @directory, align 8
  call fastcc void @close_file(ptr noundef nonnull %.1.i403.i, ptr noundef %i.bsq, ptr noundef %i.apn)
  call void @free(ptr noundef %i.apt) #25
  call void @free(ptr noundef %i.or) #25
  call void @free(ptr noundef %i.ow) #25
  call void @free(ptr noundef %i.pd) #25
  %i.bsr = load i64, ptr @nzones, align 8         ; 2 uses
  %i.bss = icmp slt i64 %.041.lcssa, %i.bsr
  br i1 %i.bss, label %.preheader85, label %.preheader84, !llvm.loop !60

.lr.ph187:                                        ; preds = %.preheader84, %.loopexit
  %.144185 = phi i64 [ %i.btt, %.loopexit ], [ 0, %.preheader84 ] ; 3 uses
  %i.bst = load ptr, ptr @links, align 8
  %i.bsu = getelementptr inbounds nuw [32 x i8], ptr %i.bst, i64 %.144185 ; 4 uses
  %i.bsv = load ptr, ptr %i.bsu, align 8
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.bsu, i64 8
  %i.bsx = load i64, ptr %i.bsw, align 8
  store ptr %i.bsv, ptr @filename, align 8
  store i64 %i.bsx, ptr @linenum, align 8
  store ptr null, ptr @rfilename, align 8
  store i64 -1, ptr @rlinenum, align 8
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bsu, i64 16
  %i.bsz = load ptr, ptr %i.bsy, align 8
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bsu, i64 24
  %i.btb = load ptr, ptr %i.bta, align 8
  call fastcc void @dolink(ptr noundef %i.bsz, ptr noundef %i.btb, i1 noundef zeroext false)
  %.b = load i1, ptr @noise, align 1
  %i.btc = load i64, ptr @nlinks, align 8         ; 3 uses
  %i.btd = icmp sgt i64 %i.btc, 0
  %or.cond190 = select i1 %.b, i1 %i.btd, i1 false
  br i1 %or.cond190, label %.lr.ph184.preheader, label %.loopexit

.lr.ph184.preheader:                              ; preds = %.lr.ph187
  %.pre291 = load ptr, ptr @links, align 8
  br label %.lr.ph184

.lr.ph184:                                        ; preds = %.lr.ph184.preheader, %bb.qa
  %i.bte = phi i64 [ %i.bto, %bb.qa ], [ %i.btc, %.lr.ph184.preheader ]
  %i.btf = phi ptr [ %i.btp, %bb.qa ], [ %.pre291, %.lr.ph184.preheader ] ; 3 uses
  %.142183 = phi i64 [ %i.btq, %bb.qa ], [ 0, %.lr.ph184.preheader ] ; 2 uses
  %i.btg = getelementptr inbounds nuw [32 x i8], ptr %i.btf, i64 %.144185
  %i.bth = getelementptr inbounds nuw i8, ptr %i.btg, i64 24
  %i.bti = load ptr, ptr %i.bth, align 8
  %i.btj = getelementptr inbounds nuw [32 x i8], ptr %i.btf, i64 %.142183
  %i.btk = getelementptr inbounds nuw i8, ptr %i.btj, i64 16
  %i.btl = load ptr, ptr %i.btk, align 8
  %i.btm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bti, ptr noundef nonnull dereferenceable(1) %i.btl) #26
  %i.btn = icmp eq i32 %i.btm, 0
  br i1 %i.btn, label %bb.pz, label %bb.qa

bb.pz:                                            ; preds = %.lr.ph184
  call void (ptr, ...) @warning(ptr noundef nonnull @.str.21)
  %.pre290 = load ptr, ptr @links, align 8
  %.pre292 = load i64, ptr @nlinks, align 8
  br label %bb.qa

bb.qa:                                            ; preds = %.lr.ph184, %bb.pz
  %i.bto = phi i64 [ %i.bte, %.lr.ph184 ], [ %.pre292, %bb.pz ] ; 3 uses
  %i.btp = phi ptr [ %i.btf, %.lr.ph184 ], [ %.pre290, %bb.pz ]
  %i.btq = add nuw nsw i64 %.142183, 1            ; 2 uses
  %i.btr = icmp slt i64 %i.btq, %i.bto
  br i1 %i.btr, label %.lr.ph184, label %.loopexit, !llvm.loop !61

.loopexit:                                        ; preds = %bb.qa, %.lr.ph187
  %i.bts = phi i64 [ %i.btc, %.lr.ph187 ], [ %i.bto, %bb.qa ]
  %i.btt = add nuw nsw i64 %.144185, 1            ; 2 uses
  %i.btu = icmp slt i64 %i.btt, %i.bts
  br i1 %i.btu, label %.lr.ph187, label %._crit_edge188, !llvm.loop !62

._crit_edge188:                                   ; preds = %.loopexit, %.preheader84
  %i.btv = load ptr, ptr @lcltime, align 8        ; 2 uses
  %.not54 = icmp eq ptr %i.btv, null
  br i1 %.not54, label %bb.qc, label %bb.qb

bb.qb:                                            ; preds = %._crit_edge188
  store ptr @.str.22, ptr @filename, align 8
  store i64 1, ptr @linenum, align 8
  store ptr null, ptr @rfilename, align 8
  store i64 -1, ptr @rlinenum, align 8
  %i.btw = load ptr, ptr @tzdefault, align 8
  call fastcc void @dolink(ptr noundef nonnull %i.btv, ptr noundef %i.btw, i1 noundef zeroext true)
  br label %bb.qc

bb.qc:                                            ; preds = %bb.qb, %._crit_edge188
  %i.btx = load ptr, ptr @psxrules, align 8       ; 2 uses
  %.not55 = icmp eq ptr %i.btx, null
  br i1 %.not55, label %bb.qe, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  store ptr @.str.22, ptr @filename, align 8
  store i64 1, ptr @linenum, align 8
  store ptr null, ptr @rfilename, align 8
  store i64 -1, ptr @rlinenum, align 8
  call fastcc void @dolink(ptr noundef nonnull %i.btx, ptr noundef nonnull @.str.23, i1 noundef zeroext true)
  br label %bb.qe

bb.qe:                                            ; preds = %bb.qd, %bb.qc
  %.b53 = load i1, ptr @warnings, align 1
  br i1 %.b53, label %bb.qf, label %bb.qh

bb.qf:                                            ; preds = %bb.qe
  %i.bty = load ptr, ptr @stderr, align 8         ; 2 uses
  %i.btz = call i32 @ferror(ptr noundef %i.bty) #25
  %.not56 = icmp eq i32 %i.btz, 0
end_hunk_0
begin_hunk_1_@stringrule:bb.a
  %i.ac = load i32, ptr %i.ab, align 8            ; 3 uses
  switch i32 %i.d, label %.critedge [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  %i.ag = srem i32 %i.af, 7                       ; 3 uses
  %.not86 = icmp eq i32 %i.ag, 0
  %spec.select = select i1 %.not86, i32 0, i32 2013
  %i.ah = sub i32 %i.ac, %i.ag
  %narrow87 = mul nsw i32 %i.ag, 86400
  %i.ai = sext i32 %narrow87 to i64
  %i.aj = add i64 %i.b, %i.ai
  %i.ak = sdiv i32 %i.af, 7
  %i.al = add nsw i32 %i.ak, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.an = load i32, ptr %i.am, align 4            ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ap = load i32, ptr %i.ao, align 4            ; 3 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @len_months, i64 48), i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = icmp eq i32 %i.an, %i.as
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = srem i32 %i.an, 7                       ; 3 uses
  %.not = icmp eq i32 %i.au, 0
  %spec.select90 = select i1 %.not, i32 0, i32 2013
  %i.av = sub i32 %i.ac, %i.au
  %narrow = mul nsw i32 %i.au, 86400
  %i.aw = sext i32 %narrow to i64
  %i.ax = add i64 %i.b, %i.aw
  %i.ay = sdiv i32 %i.an, 7
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.az = phi i32 [ %.pre, %bb.e ], [ %i.ap, %bb.g ], [ %i.ap, %bb.f ]
  %.071 = phi i64 [ %i.aj, %bb.e ], [ %i.ax, %bb.g ], [ %i.b, %bb.f ]
  %.2 = phi i32 [ %spec.select, %bb.e ], [ %spec.select90, %bb.g ], [ 0, %bb.f ]
  %.064 = phi i32 [ %i.al, %bb.e ], [ %i.ay, %bb.g ], [ 5, %bb.f ]
  %.0 = phi i32 [ %i.ah, %bb.e ], [ %i.av, %bb.g ], [ %i.ac, %bb.f ] ; 3 uses
  %i.ba = icmp slt i32 %.0, 0
  %i.bb = add nsw i32 %.0, 7
  %spec.select91 = select i1 %i.ba, i32 %i.bb, i32 %.0
  %i.bc = add i32 %i.az, 1
  %i.bd = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.172, i32 noundef %i.bc, i32 noundef %.064, i32 noundef %spec.select91) #25
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread, %bb.c, %bb.h
  %.pn.pn.in = phi i32 [ %i.bd, %bb.h ], [ %i.y, %._crit_edge.thread ], [ %i.aa, %bb.c ]
  %.273 = phi i64 [ %.071, %bb.h ], [ %i.b, %._crit_edge.thread ], [ %i.b, %bb.c ]
  %.4 = phi i32 [ %.2, %bb.h ], [ 0, %._crit_edge.thread ], [ 0, %bb.c ] ; 3 uses
  %.pn.pn = sext i32 %.pn.pn.in to i64
  %.382 = getelementptr inbounds i8, ptr %0, i64 %.pn.pn ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.bf = load i8, ptr %i.be, align 1, !range !6, !noundef !7
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = select i1 %i.bg, i64 %3, i64 0
  %spec.select94 = add i64 %i.bh, %.273           ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bj = load i8, ptr %i.bi, align 8, !range !6, !noundef !7
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.bm = load i8, ptr %i.bl, align 2, !range !6, !noundef !7
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = select i1 %i.bn, i64 0, i64 %2
  %spec.select95 = add i64 %i.bo, %spec.select94
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.475 = phi i64 [ %spec.select95, %bb.j ], [ %spec.select94, %bb.i ] ; 6 uses
  %.not88 = icmp eq i64 %.475, 7200
  br i1 %.not88, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %.382, i64 1 ; 5 uses
  store i8 47, ptr %.382, align 1
  %i.bq = icmp slt i64 %.475, 0                   ; 2 uses
  %.lobit.i = lshr i64 %.475, 63                  ; 2 uses
  %i.br = trunc nuw nsw i64 %.lobit.i to i32
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bs = sub i64 0, %.475
  store i8 45, ptr %i.bp, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.029.i = phi i64 [ %i.bs, %bb.m ], [ %.475, %bb.l ] ; 3 uses
  %i.bt = srem i64 %.029.i, 60                    ; 3 uses
  %i.bu = trunc nsw i64 %i.bt to i32
  %i.bv = sdiv i64 %.029.i, 60
  %i.bw = srem i64 %i.bv, 60                      ; 2 uses
  %i.bx = trunc nsw i64 %i.bw to i32
  %i.by = sdiv i64 %.029.i, 3600
  %i.bz = trunc i64 %i.by to i32                  ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, 167
  br i1 %i.ca, label %stringoffset.exit.thread, label %bb.o

stringoffset.exit.thread:                         ; preds = %bb.n
  store i8 0, ptr %i.bp, align 1
  br label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.lobit.i
  %i.cc = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.cb, ptr noundef nonnull @.str.169, i32 noundef %i.bz) #25
  %i.cd = add i32 %i.cc, %i.br                    ; 3 uses
  %i.ce = or i64 %i.bw, %i.bt
  %or.cond.not.i = icmp eq i64 %i.ce, 0
  br i1 %or.cond.not.i, label %stringoffset.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i = icmp eq i64 %i.bt, 0
  %i.cf = sext i32 %i.cd to i64
  %i.cg = getelementptr inbounds i8, ptr %i.bp, i64 %i.cf
  %i.ch = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.cg, ptr noundef nonnull @.str.170, i32 noundef %i.bx) #25
  %i.ci = add i32 %i.ch, %i.cd                    ; 3 uses
  br i1 %.not.i, label %stringoffset.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %i.bp, i64 %i.cj
  %i.cl = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.ck, ptr noundef nonnull @.str.170, i32 noundef %i.bu) #25
  %i.cm = add i32 %i.cl, %i.ci
  br label %stringoffset.exit

stringoffset.exit:                                ; preds = %bb.o, %bb.p, %bb.q
  %.030.i = phi i32 [ %i.cd, %bb.o ], [ %i.cm, %bb.q ], [ %i.ci, %bb.p ]
  %.not89 = icmp eq i32 %.030.i, 0                ; 2 uses
  %brmerge = or i1 %i.bq, %.not89
  %.mux = select i1 %.not89, i32 -1, i32 2013
  br i1 %brmerge, label %.critedge, label %bb.r

bb.r:                                             ; preds = %stringoffset.exit
  %i.cn = icmp samesign ugt i64 %.475, 86399
  br i1 %i.cn, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.co = tail call i32 @llvm.umax.i32(i32 %.4, i32 1994)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %stringoffset.exit, %stringoffset.exit.thread, %bb.d, %bb.k, %bb.r, %bb.s
  %.278 = phi i32 [ %.mux, %stringoffset.exit ], [ -1, %bb.b ], [ %.4, %bb.k ], [ -1, %stringoffset.exit.thread ], [ %i.co, %bb.s ], [ %.4, %bb.r ], [ -1, %bb.d ]
  ret i32 %.278
}

declare i32 @pg_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @atcomp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #18 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8
  %i.c = tail call i32 @llvm.scmp.i32.i64(i64 %i.a, i64 %i.b)
  ret i32 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.sadd.sat.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #20

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nounwind }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { nounwind willreturn memory(none) }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { nounwind allocsize(0) }
attributes #31 = { nounwind allocsize(1) }
attributes #32 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!"llvm.loop.unroll.disable"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = distinct !{!20, !4}
!21 = distinct !{!21, !4}
!22 = distinct !{!22, !4}
!23 = distinct !{!23, !4}
!24 = distinct !{!24, !4}
!25 = distinct !{!25, !4}
!26 = distinct !{!26, !4}
!27 = distinct !{!27, !4}
!28 = distinct !{!28, !4}
!29 = distinct !{!29, !4}
!30 = distinct !{!30, !4}
!31 = distinct !{!31, !4}
!32 = distinct !{!32, !4}
!33 = distinct !{!33, !4}
!34 = distinct !{!34, i1 true, !"limitrange"}
!35 = distinct !{!35, !34, !"limitrange: argument 0"}
!36 = distinct !{!36, !4}
!37 = distinct !{!37, !4}
!38 = distinct !{!38, !4}
!39 = distinct !{!39, !4}
!40 = distinct !{!40, i1 true, !"limitrange"}
!41 = distinct !{!41, !40, !"limitrange: argument 0"}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !4}
!44 = distinct !{!44, !4}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !4, !65}
!47 = distinct !{!47, !4, !65}
!48 = distinct !{!48, !4}
!49 = distinct !{!49, !4}
!50 = distinct !{!50, !4}
!51 = distinct !{!51, !4}
!52 = distinct !{!52, !4}
!53 = distinct !{!53, !4, !65}
!54 = distinct !{!54, !4}
!55 = distinct !{!55, !4}
!56 = distinct !{!56, !4}
!57 = distinct !{!57, !4}
!58 = distinct !{!58, !4}
!59 = distinct !{!59, !4}
!60 = distinct !{!60, !4}
!61 = distinct !{!61, !4}
!62 = distinct !{!62, !4}
!63 = !{!35}
!64 = !{!41}
!65 = !{!"llvm.loop.peeled.count", i32 1}
!66 = distinct !{!66, !4}
!67 = distinct !{!67, !4}
!68 = distinct !{!68, !4}
!69 = distinct !{!69, !4}
!70 = distinct !{!70, !4}
!71 = distinct !{!71, !4}
!72 = distinct !{!72, !4}
!73 = distinct !{!73, !4}
!74 = distinct !{!74, !5}
!75 = distinct !{!75, !4}
!76 = distinct !{!76, !4}
!77 = distinct !{!77, !4}
!78 = distinct !{!78, !4}
!79 = distinct !{!79, !4}
!80 = distinct !{!80, !4}
!81 = distinct !{!81, !4}
!82 = distinct !{!82, !4}
!83 = distinct !{!83, !4}
!84 = distinct !{!84, !4}
!85 = distinct !{!85, !4}
!86 = distinct !{!86, !4}
!87 = distinct !{!87, !4}
!88 = distinct !{!88, !4}
!89 = distinct !{!89, !4}
!90 = distinct !{!90, !4}
!91 = distinct !{!91, !4}
!92 = distinct !{!92, !4}
!93 = distinct !{!93, !4}
!94 = distinct !{!94, !4}
!95 = distinct !{!95, !4, !97, !98}
!96 = distinct !{!96, !4, !98, !97}
!97 = !{!"llvm.loop.isvectorized", i32 1}
!98 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_1
