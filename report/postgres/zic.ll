Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/zic?download=true
inline.NumInlined: 153
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@main:bb.a
.lr.ph44.i.i.i:                                   ; preds = %bb.ms, %.lr.ph44.i.preheader.i.i
  %indvars.iv720.i.i = phi i64 [ %i.awv, %.lr.ph44.i.preheader.i.i ], [ %indvars.iv.next721.i.i, %bb.ms ] ; 3 uses
  %indvars.iv.next721.i.i = add nsw i64 %indvars.iv720.i.i, -1 ; 2 uses
  %i.aww = trunc nsw i64 %indvars.iv.next721.i.i to i32
  %i.awx = add i32 %i.awj, %i.aww
  %i.awy = sext i32 %i.awx to i64
  %i.awz = getelementptr inbounds [8 x i8], ptr @trans, i64 %i.awy
  %i.axa = load i64, ptr %i.awz, align 8, !noalias !34
  %i.axb = icmp slt i64 %i.awk, %i.axa
  br i1 %i.axb, label %bb.ms, label %limitrange.exit.loopexit.split.loop.exit862.i.i

bb.ms:                                            ; preds = %.lr.ph44.i.i.i
  %i.axc = icmp samesign ugt i64 %indvars.iv720.i.i, 1
  br i1 %i.axc, label %.lr.ph44.i.i.i, label %limitrange.exit.i.i, !llvm.loop !40

limitrange.exit.loopexit.split.loop.exit862.i.i:  ; preds = %.lr.ph44.i.i.i
  %i.axd = trunc nuw nsw i64 %indvars.iv720.i.i to i32
  br label %limitrange.exit.i.i

limitrange.exit.i.i:                              ; preds = %bb.ms, %limitrange.exit.loopexit.split.loop.exit862.i.i, %.critedge4.i.i.i, %.critedge2.i.i.i
  %.sroa.22.0.i.i = phi i32 [ %.pr15.i.i.i, %.critedge2.i.i.i ], [ %.pr15.i.i.i, %.critedge4.i.i.i ], [ %i.axd, %limitrange.exit.loopexit.split.loop.exit862.i.i ], [ 0, %bb.ms ] ; 6 uses
  %.sroa.12.1.i.i = phi i64 [ %.pr.i.i.i, %.critedge2.i.i.i ], [ %.sroa.12.0.i.i, %.critedge4.i.i.i ], [ %.sroa.12.0.i.i, %limitrange.exit.loopexit.split.loop.exit862.i.i ], [ %.sroa.12.0.i.i, %bb.ms ] ; 9 uses
  %i.axe = icmp sgt i64 %.sroa.12.1.i.i, 0
  br i1 %i.axe, label %.lr.ph.preheader.i478.i.i, label %.critedge.i459.i.i

.lr.ph.preheader.i478.i.i:                        ; preds = %limitrange.exit.i.i
  %i.axf = add i64 %.sroa.12.1.i.i, %i.awb        ; 2 uses
  %i.axg = getelementptr inbounds [8 x i8], ptr %i.aqv, i64 %i.awb
  %i.axh = load i64, ptr %i.axg, align 8, !noalias !41
  %i.axi = icmp slt i64 %i.axh, -2147483648
  br i1 %i.axi, label %.lr.ph618.i.preheader.i, label %.critedge.i459.i.i

.lr.ph618.i.preheader.i:                          ; preds = %.lr.ph.preheader.i478.i.i
  %i.axj = add i64 %i.axf, -1
  %.not690 = icmp eq i64 %.sroa.12.1.i.i, 1
  br i1 %.not690, label %..critedge.i459.loopexit_crit_edge.i.i, label %.lr.ph.i479.i.i.lr.ph, !llvm.loop !37

.lr.ph.i479.i.i.lr.ph:                            ; preds = %.lr.ph618.i.preheader.i
  br label %.lr.ph.i479.i.i, !llvm.loop !37

.lr.ph.i479.i.i:                                  ; preds = %.lr.ph.i479.i.i.lr.ph, %.lr.ph618.i.i
  %i.axk = phi i64 [ %.sroa.12.1.i.i, %.lr.ph.i479.i.i.lr.ph ], [ %i.axn, %.lr.ph618.i.i ] ; 2 uses
  %i.axl = phi i64 [ %i.awb, %.lr.ph.i479.i.i.lr.ph ], [ %i.axm, %.lr.ph618.i.i ] ; 2 uses
  %i.axm = add i64 %i.axl, 1                      ; 3 uses
  %i.axn = add nsw i64 %i.axk, -1                 ; 2 uses
  %i.axo = getelementptr inbounds [8 x i8], ptr %i.aqv, i64 %i.axm
  %i.axp = load i64, ptr %i.axo, align 8, !noalias !41
  %i.axq = icmp slt i64 %i.axp, -2147483648
  br i1 %i.axq, label %.lr.ph618.i.i, label %.critedge.i459.sink.split.i.i, !llvm.loop !37

.lr.ph618.i.i:                                    ; preds = %.lr.ph.i479.i.i
  %i.axr = icmp sgt i64 %i.axk, 2
  br i1 %i.axr, label %.lr.ph.i479.i.i, label %.lr.ph618.i.i...critedge.i459.loopexit_crit_edge.i.i_crit_edge, !llvm.loop !37

.lr.ph618.i.i...critedge.i459.loopexit_crit_edge.i.i_crit_edge: ; preds = %.lr.ph618.i.i
  br label %..critedge.i459.loopexit_crit_edge.i.i, !llvm.loop !37

..critedge.i459.loopexit_crit_edge.i.i:           ; preds = %.lr.ph618.i.i...critedge.i459.loopexit_crit_edge.i.i_crit_edge, %.lr.ph618.i.preheader.i
  br label %.critedge.i459.sink.split.i.i, !llvm.loop !37

.critedge.i459.sink.split.i.i:                    ; preds = %.lr.ph.i479.i.i, %..critedge.i459.loopexit_crit_edge.i.i
  %i.axs = phi i64 [ %i.axj, %..critedge.i459.loopexit_crit_edge.i.i ], [ %i.axl, %.lr.ph.i479.i.i ]
  %.ph872.i.i = phi i64 [ %i.axf, %..critedge.i459.loopexit_crit_edge.i.i ], [ %i.axm, %.lr.ph.i479.i.i ]
  %.pr.i461.ph.i.i = phi i64 [ 0, %..critedge.i459.loopexit_crit_edge.i.i ], [ %i.axn, %.lr.ph.i479.i.i ]
  %i.axt = getelementptr inbounds i8, ptr %i.ara, i64 %i.axs
  %i.axu = load i8, ptr %i.axt, align 1, !noalias !41
  %i.axv = zext i8 %i.axu to i32
  br label %.critedge.i459.i.i

.critedge.i459.i.i:                               ; preds = %.critedge.i459.sink.split.i.i, %.lr.ph.preheader.i478.i.i, %limitrange.exit.i.i
  %.lcssa21.i460.i.i = phi i32 [ %.lcssa21.i.i.i, %limitrange.exit.i.i ], [ %.lcssa21.i.i.i, %.lr.ph.preheader.i478.i.i ], [ %i.axv, %.critedge.i459.sink.split.i.i ]
  %i.axw = phi i64 [ %i.awb, %limitrange.exit.i.i ], [ %i.awb, %.lr.ph.preheader.i478.i.i ], [ %.ph872.i.i, %.critedge.i459.sink.split.i.i ] ; 3 uses
  %.pr.i461.i.i = phi i64 [ %.sroa.12.1.i.i, %limitrange.exit.i.i ], [ %.sroa.12.1.i.i, %.lr.ph.preheader.i478.i.i ], [ %.pr.i461.ph.i.i, %.critedge.i459.sink.split.i.i ] ; 3 uses
  %i.axx = icmp sgt i32 %.sroa.22.0.i.i, 0
  br i1 %i.axx, label %.lr.ph34.preheader.i476.i.i, label %.critedge2.i464.i.i

.lr.ph34.preheader.i476.i.i:                      ; preds = %.critedge.i459.i.i
  %i.axy = add i32 %.sroa.22.0.i.i, %i.awj
  br label %.lr.ph34.i477.i.i

.lr.ph34.i477.i.i:                                ; preds = %bb.mt, %.lr.ph34.preheader.i476.i.i
  %i.axz = phi i32 [ %i.ayf, %bb.mt ], [ %.sroa.22.0.i.i, %.lr.ph34.preheader.i476.i.i ] ; 3 uses
  %i.aya = phi i32 [ %i.ayg, %bb.mt ], [ %i.awj, %.lr.ph34.preheader.i476.i.i ] ; 3 uses
  %i.ayb = sext i32 %i.aya to i64
  %i.ayc = getelementptr inbounds [8 x i8], ptr @trans, i64 %i.ayb
  %i.ayd = load i64, ptr %i.ayc, align 8, !noalias !41
  %i.aye = icmp slt i64 %i.ayd, -2147483648
  br i1 %i.aye, label %bb.mt, label %.critedge2.i464.i.i

bb.mt:                                            ; preds = %.lr.ph34.i477.i.i
  %i.ayf = add nsw i32 %i.axz, -1
  %i.ayg = add i32 %i.aya, 1
  %i.ayh = icmp sgt i32 %i.axz, 1
  br i1 %i.ayh, label %.lr.ph34.i477.i.i, label %.critedge2.i464.i.i, !llvm.loop !38

.critedge2.i464.i.i:                              ; preds = %bb.mt, %.lr.ph34.i477.i.i, %.critedge.i459.i.i
  %i.ayi = phi i32 [ %i.awj, %.critedge.i459.i.i ], [ %i.aya, %.lr.ph34.i477.i.i ], [ %i.axy, %bb.mt ] ; 3 uses
  %.pr15.i465.i.i = phi i32 [ %.sroa.22.0.i.i, %.critedge.i459.i.i ], [ %i.axz, %.lr.ph34.i477.i.i ], [ 0, %bb.mt ] ; 3 uses
  %i.ayj = icmp sgt i64 %.pr.i461.i.i, 0
  br i1 %i.ayj, label %.lr.ph42.preheader.i472.i.i, label %.critedge4.i467.i.i

.lr.ph42.preheader.i472.i.i:                      ; preds = %.critedge2.i464.i.i
  %i.ayk = getelementptr [8 x i8], ptr %i.aqv, i64 %i.axw
  br label %.lr.ph42.i474.i.i

.lr.ph42.i474.i.i:                                ; preds = %bb.mu, %.lr.ph42.preheader.i472.i.i
  %i.ayl = phi i64 [ %i.ayq, %bb.mu ], [ %.pr.i461.i.i, %.lr.ph42.preheader.i472.i.i ] ; 4 uses
  %i.aym = getelementptr [8 x i8], ptr %i.ayk, i64 %i.ayl
  %i.ayn = getelementptr i8, ptr %i.aym, i64 -8
  %i.ayo = load i64, ptr %i.ayn, align 8, !noalias !41
  %i.ayp = icmp sgt i64 %i.ayo, 2147483648
  br i1 %i.ayp, label %bb.mu, label %.critedge4.i467.i.i

bb.mu:                                            ; preds = %.lr.ph42.i474.i.i
  %i.ayq = add nsw i64 %i.ayl, -1
  %i.ayr = icmp sgt i64 %i.ayl, 1
  br i1 %i.ayr, label %.lr.ph42.i474.i.i, label %.critedge4.i467.i.i, !llvm.loop !39

.critedge4.i467.i.i:                              ; preds = %bb.mu, %.lr.ph42.i474.i.i, %.critedge2.i464.i.i
  %.sroa.12539.0.i.i = phi i64 [ %.pr.i461.i.i, %.critedge2.i464.i.i ], [ %i.ayl, %.lr.ph42.i474.i.i ], [ 0, %bb.mu ] ; 3 uses
  %i.ays = icmp sgt i32 %.pr15.i465.i.i, 0
  br i1 %i.ays, label %.lr.ph44.i470.preheader.i.i, label %limitrange.exit480.i.i

.lr.ph44.i470.preheader.i.i:                      ; preds = %.critedge4.i467.i.i
  %i.ayt = zext nneg i32 %.pr15.i465.i.i to i64
  br label %.lr.ph44.i470.i.i

.lr.ph44.i470.i.i:                                ; preds = %bb.mv, %.lr.ph44.i470.preheader.i.i
  %indvars.iv723.i.i = phi i64 [ %i.ayt, %.lr.ph44.i470.preheader.i.i ], [ %indvars.iv.next724.i.i, %bb.mv ] ; 3 uses
  %indvars.iv.next724.i.i = add nsw i64 %indvars.iv723.i.i, -1 ; 2 uses
  %i.ayu = trunc nsw i64 %indvars.iv.next724.i.i to i32
  %i.ayv = add i32 %i.ayi, %i.ayu
  %i.ayw = sext i32 %i.ayv to i64
  %i.ayx = getelementptr inbounds [8 x i8], ptr @trans, i64 %i.ayw
  %i.ayy = load i64, ptr %i.ayx, align 8, !noalias !41
  %i.ayz = icmp sgt i64 %i.ayy, 2147483648
  br i1 %i.ayz, label %bb.mv, label %limitrange.exit480.loopexit.split.loop.exit870.i.i

bb.mv:                                            ; preds = %.lr.ph44.i470.i.i
  %i.aza = icmp samesign ugt i64 %indvars.iv723.i.i, 1
  br i1 %i.aza, label %.lr.ph44.i470.i.i, label %limitrange.exit480.i.i, !llvm.loop !40

limitrange.exit480.loopexit.split.loop.exit870.i.i: ; preds = %.lr.ph44.i470.i.i
  %i.azb = trunc nuw nsw i64 %indvars.iv723.i.i to i32
  br label %limitrange.exit480.i.i

limitrange.exit480.i.i:                           ; preds = %bb.mv, %limitrange.exit480.loopexit.split.loop.exit870.i.i, %.critedge4.i467.i.i
  %.sroa.22544.0.i.i = phi i32 [ %.pr15.i465.i.i, %.critedge4.i467.i.i ], [ %i.azb, %limitrange.exit480.loopexit.split.loop.exit870.i.i ], [ 0, %bb.mv ] ; 2 uses
  %i.azc = call i32 @remove(ptr noundef %i.aqp) #25
  %i.azd = icmp eq i32 %i.azc, 0                  ; 2 uses
  br i1 %i.azd, label %bb.my, label %bb.mw

bb.mw:                                            ; preds = %limitrange.exit480.i.i
  %i.aze = tail call ptr @__errno_location() #27
  %i.azf = load i32, ptr %i.aze, align 4          ; 2 uses
  %.not416.i.i = icmp eq i32 %i.azf, 2
  br i1 %.not416.i.i, label %bb.my, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.azg = call ptr @pg_strerror(i32 noundef %i.azf) #25
  %i.azh = load ptr, ptr @stderr, align 8
  %i.azi = load ptr, ptr @progname, align 8
  %i.azj = load ptr, ptr @directory, align 8
  %i.azk = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.azh, ptr noundef nonnull @.str.185, ptr noundef %i.azi, ptr noundef %i.azj, ptr noundef %i.aqp, ptr noundef %i.azg) #25 ; 0 uses
  call void @exit(i32 noundef 1) #28
  unreachable

bb.my:                                            ; preds = %bb.mw, %limitrange.exit480.i.i
  %i.azl = call noalias ptr @fopen(ptr noundef %i.aqp, ptr noundef nonnull @.str.45) ; 2 uses
  %.not417.i.i = icmp eq ptr %i.azl, null
  br i1 %.not417.i.i, label %bb.mz, label %bb.nb

bb.mz:                                            ; preds = %bb.my
  %i.azm = tail call ptr @__errno_location() #27  ; 2 uses
  %i.azn = load i32, ptr %i.azm, align 4          ; 2 uses
  %i.azo = icmp ne i32 %i.azn, 2
  %or.cond3.i.i = or i1 %i.azd, %i.azo
  br i1 %or.cond3.i.i, label %.thread.i.i, label %bb.na

bb.na:                                            ; preds = %bb.mz
  call fastcc void @mkdirs(ptr noundef %i.aqp, i1 noundef zeroext true)
  %i.azp = call noalias ptr @fopen(ptr noundef %i.aqp, ptr noundef nonnull @.str.45) ; 2 uses
  %i.azq = load i32, ptr %i.azm, align 4
  %.not418.i.i = icmp eq ptr %i.azp, null
  br i1 %.not418.i.i, label %.thread.i.i, label %bb.nb

.thread.i.i:                                      ; preds = %bb.na, %bb.mz
  %.0393550.i.i = phi i32 [ %i.azq, %bb.na ], [ %i.azn, %bb.mz ]
  %i.azr = load ptr, ptr @stderr, align 8
  %i.azs = load ptr, ptr @progname, align 8
  %i.azt = load ptr, ptr @directory, align 8
  %i.azu = call ptr @pg_strerror(i32 noundef %.0393550.i.i) #25
  %i.azv = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.azr, ptr noundef nonnull @.str.186, ptr noundef %i.azs, ptr noundef %i.azt, ptr noundef %i.aqp, ptr noundef %i.azu) #25 ; 0 uses
  call void @exit(i32 noundef 1) #28
  unreachable

bb.nb:                                            ; preds = %bb.na, %bb.my
  %.1.i403.i = phi ptr [ %i.azl, %bb.my ], [ %i.azp, %bb.na ] ; 36 uses
  %i.azw = icmp ugt i64 %.sroa.12539.0.i.i, 4294967295
  %i.azx = icmp slt i64 %.sroa.12.1.i.i, 0
  %i.azy = zext nneg i32 %.0275.lcssa1013.i to i64 ; 3 uses
  %i.azz = getelementptr inbounds nuw i8, ptr @desigidx, i64 %i.azy
  %i.baa = getelementptr inbounds nuw [8 x i8], ptr @utoffs, i64 %i.azy
  %i.bab = getelementptr inbounds nuw i8, ptr @isdsts, i64 %i.azy
  br label %bb.nc

bb.nc:                                            ; preds = %.loopexit584.i.i, %bb.nb
  %i.bac = phi i1 [ false, %bb.nb ], [ true, %.loopexit584.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #25
  %i.bad = load i64, ptr @lo_time, align 8        ; 3 uses
  br i1 %i.bac, label %bb.nd, label %.split.i.i

.split.i.i:                                       ; preds = %bb.nc
  %i.bae = icmp slt i64 %i.bad, -2147483647
  %i.baf = select i1 %i.bae, i32 %.lcssa21.i.i.i, i32 %.lcssa21.i460.i.i ; 2 uses
  %i.bag = icmp sgt i64 %i.bad, -2147483648       ; 2 uses
  %i.bah = load i64, ptr @hi_time, align 8
  %i.bai = icmp slt i64 %i.bah, 2147483647        ; 2 uses
  br i1 %i.azw, label %bb.ne, label %bb.nf

bb.nd:                                            ; preds = %bb.nc
  %i.baj = icmp ne i64 %i.bad, -9223372036854775808 ; 2 uses
  %i.bak = load i64, ptr @hi_time, align 8
  %i.bal = icmp ne i64 %i.bak, 9223372036854775807 ; 2 uses
  br i1 %i.azx, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %bb.nd, %.split.i.i
  %.0376.in564.i.i = phi i1 [ %i.bai, %.split.i.i ], [ %i.bal, %bb.nd ]
  %.0378.in562.i.i = phi i1 [ %i.bag, %.split.i.i ], [ %i.baj, %bb.nd ]
  %.0382560.i.i = phi i32 [ %i.baf, %.split.i.i ], [ %.lcssa21.i.i.i, %bb.nd ]
  %.0384558.i.i = phi i32 [ %.sroa.22544.0.i.i, %.split.i.i ], [ %.sroa.22.0.i.i, %bb.nd ]
  %.0386556.i.i = phi i32 [ %i.ayi, %.split.i.i ], [ %i.awj, %bb.nd ]
  %.0388554.i.i = phi i64 [ %.sroa.12539.0.i.i, %.split.i.i ], [ %.sroa.12.1.i.i, %bb.nd ]
  %.0391552.i.i = phi i64 [ %i.axw, %.split.i.i ], [ %i.awb, %bb.nd ]
  call void (ptr, ...) @error(ptr noundef nonnull @.str.187)
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.nd, %.split.i.i
  %.0376.in563.i.i = phi i1 [ %i.bai, %.split.i.i ], [ %.0376.in564.i.i, %bb.ne ], [ %i.bal, %bb.nd ] ; 3 uses
  %.0378.in561.i.i = phi i1 [ %i.bag, %.split.i.i ], [ %.0378.in562.i.i, %bb.ne ], [ %i.baj, %bb.nd ] ; 2 uses
  %.0382559.i.i = phi i32 [ %i.baf, %.split.i.i ], [ %.0382560.i.i, %bb.ne ], [ %.lcssa21.i.i.i, %bb.nd ]
  %.0384557.i.i = phi i32 [ %.sroa.22544.0.i.i, %.split.i.i ], [ %.0384558.i.i, %bb.ne ], [ %.sroa.22.0.i.i, %bb.nd ] ; 2 uses
  %.0386555.i.i = phi i32 [ %i.ayi, %.split.i.i ], [ %.0386556.i.i, %bb.ne ], [ %i.awj, %bb.nd ] ; 3 uses
  %.0388553.i.i = phi i64 [ %.sroa.12539.0.i.i, %.split.i.i ], [ %.0388554.i.i, %bb.ne ], [ %.sroa.12.1.i.i, %bb.nd ] ; 3 uses
  %.0391551.i.i = phi i64 [ %i.axw, %.split.i.i ], [ %.0391552.i.i, %bb.ne ], [ %i.awb, %bb.nd ] ; 5 uses
  %i.bam = icmp sgt i64 %.0391551.i.i, 0
  br i1 %i.bam, label %bb.ng, label %bb.ni

bb.ng:                                            ; preds = %bb.nf
  %i.ban = getelementptr inbounds nuw [8 x i8], ptr %i.aqv, i64 %.0391551.i.i
  %i.bao = load i64, ptr %i.ban, align 8
  %i.bap = load i64, ptr @lo_time, align 8
  %.not419.i.i = icmp eq i64 %i.bao, %i.bap
  br i1 %.not419.i.i, label %bb.ni, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.baq = add nsw i64 %.0391551.i.i, -1
  %i.bar = add i64 %.0388553.i.i, 1
  br label %bb.ni

bb.ni:                                            ; preds = %bb.nh, %bb.ng, %bb.nf
  %.1392.i.i = phi i64 [ %i.baq, %bb.nh ], [ %.0391551.i.i, %bb.ng ], [ %.0391551.i.i, %bb.nf ] ; 13 uses
  %.1389.i.i = phi i64 [ %i.bar, %bb.nh ], [ %.0388553.i.i, %bb.ng ], [ %.0388553.i.i, %bb.nf ] ; 7 uses
  %.1379.shrunk.i.i = phi i1 [ false, %bb.nh ], [ %.0378.in561.i.i, %bb.ng ], [ %.0378.in561.i.i, %bb.nf ]
  %.1379.i.i = zext i1 %.1379.shrunk.i.i to i8    ; 2 uses
  %i.bas = add i64 %.1389.i.i, %.1392.i.i         ; 4 uses
  %i.bat = add i32 %.0386555.i.i, %.0384557.i.i   ; 2 uses
  %.not420.i.i = icmp eq i64 %.1389.i.i, 0
  br i1 %.not420.i.i, label %bb.nl, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.bau = getelementptr inbounds [8 x i8], ptr %i.aqv, i64 %.1392.i.i
  %i.bav = load i64, ptr %i.bau, align 8
  %i.baw = load i64, ptr @lo_time, align 8
  %i.bax = icmp eq i64 %i.bav, %i.baw
  %spec.select.i.i = select i1 %i.bax, i8 0, i8 %.1379.i.i ; 2 uses
  %i.bay = load i64, ptr @hi_time, align 8        ; 2 uses
  %.not421.i.i = icmp eq i64 %i.bay, 9223372036854775807
  br i1 %.not421.i.i, label %bb.nl, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.baz = getelementptr [8 x i8], ptr %i.aqv, i64 %i.bas
  %i.bba = getelementptr i8, ptr %i.baz, i64 -8
  %i.bbb = load i64, ptr %i.bba, align 8
  %i.bbc = add nsw i64 %i.bay, 1
  %i.bbd = icmp ne i64 %i.bbb, %i.bbc
  %spec.select451.i.i = select i1 %i.bbd, i1 %.0376.in563.i.i, i1 false
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %bb.nj, %bb.ni
  %.3381.i.i = phi i8 [ %.1379.i.i, %bb.ni ], [ %spec.select.i.i, %bb.nk ], [ %spec.select.i.i, %bb.nj ] ; 2 uses
  %.1377.shrunk.i.i = phi i1 [ %.0376.in563.i.i, %bb.ni ], [ %spec.select451.i.i, %bb.nk ], [ %.0376.in563.i.i, %bb.nj ] ; 4 uses
  %i.bbe = load i32, ptr @typecnt, align 4
  %i.bbf = sext i32 %i.bbe to i64                 ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.l, i8 1, i64 %i.bbf, i1 false)
  %i.bbg = zext nneg i32 %.0382559.i.i to i64     ; 13 uses
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bbg ; 3 uses
  store i8 0, ptr %i.bbh, align 1
  %i.bbi = icmp slt i64 %.1392.i.i, %i.bas
  br i1 %i.bbi, label %.lr.ph627.i.i.preheader, label %._crit_edge628.thread.i.i

.lr.ph627.i.i.preheader:                          ; preds = %bb.nl
  %i.bbj = add i64 %.1389.i.i, -1                 ; 2 uses
  %xtraiter826 = and i64 %.1389.i.i, 3            ; 2 uses
  %lcmp.mod827.not = icmp eq i64 %xtraiter826, 0
  br i1 %lcmp.mod827.not, label %.lr.ph627.i.i.prol.loopexit, label %.lr.ph627.i.i.prol

.lr.ph627.i.i.prol:                               ; preds = %.lr.ph627.i.i.preheader, %.lr.ph627.i.i.prol
  %.2625.i.i.prol = phi i64 [ %i.bbo, %.lr.ph627.i.i.prol ], [ %.1392.i.i, %.lr.ph627.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph627.i.i.prol ], [ 0, %.lr.ph627.i.i.preheader ]
  %i.bbk = getelementptr inbounds i8, ptr %i.ara, i64 %.2625.i.i.prol
  %i.bbl = load i8, ptr %i.bbk, align 1
  %i.bbm = zext i8 %i.bbl to i64
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bbm
  store i8 0, ptr %i.bbn, align 1
  %i.bbo = add nsw i64 %.2625.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter826
  br i1 %prol.iter.cmp.not, label %.lr.ph627.i.i.prol.loopexit, label %.lr.ph627.i.i.prol, !llvm.loop !44

.lr.ph627.i.i.prol.loopexit:                      ; preds = %.lr.ph627.i.i.prol, %.lr.ph627.i.i.preheader
  %.2625.i.i.unr = phi i64 [ %.1392.i.i, %.lr.ph627.i.i.preheader ], [ %i.bbo, %.lr.ph627.i.i.prol ]
  %i.bbp = icmp ult i64 %i.bbj, 3
  br i1 %i.bbp, label %._crit_edge628.i.i, label %.lr.ph627.i.i

.lr.ph627.i.i:                                    ; preds = %.lr.ph627.i.i.prol.loopexit, %.lr.ph627.i.i
  %.2625.i.i = phi i64 [ %i.bcj, %.lr.ph627.i.i ], [ %.2625.i.i.unr, %.lr.ph627.i.i.prol.loopexit ] ; 5 uses
  %i.bbq = getelementptr inbounds i8, ptr %i.ara, i64 %.2625.i.i
  %i.bbr = load i8, ptr %i.bbq, align 1
  %i.bbs = zext i8 %i.bbr to i64
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bbs
  store i8 0, ptr %i.bbt, align 1
  %i.bbu = getelementptr i8, ptr %i.ara, i64 %.2625.i.i
  %i.bbv = getelementptr i8, ptr %i.bbu, i64 1
  %i.bbw = load i8, ptr %i.bbv, align 1
  %i.bbx = zext i8 %i.bbw to i64
  %i.bby = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bbx
  store i8 0, ptr %i.bby, align 1
  %i.bbz = getelementptr i8, ptr %i.ara, i64 %.2625.i.i
  %i.bca = getelementptr i8, ptr %i.bbz, i64 2
  %i.bcb = load i8, ptr %i.bca, align 1
  %i.bcc = zext i8 %i.bcb to i64
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bcc
  store i8 0, ptr %i.bcd, align 1
  %i.bce = getelementptr i8, ptr %i.ara, i64 %.2625.i.i
  %i.bcf = getelementptr i8, ptr %i.bce, i64 3
  %i.bcg = load i8, ptr %i.bcf, align 1
  %i.bch = zext i8 %i.bcg to i64
  %i.bci = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bch
  store i8 0, ptr %i.bci, align 1
  %i.bcj = add nsw i64 %.2625.i.i, 4              ; 2 uses
  %exitcond726.not.i.i.3 = icmp eq i64 %i.bcj, %i.bas
  br i1 %exitcond726.not.i.i.3, label %._crit_edge628.i.i, label %.lr.ph627.i.i, !llvm.loop !45

._crit_edge628.i.i:                               ; preds = %.lr.ph627.i.i, %.lr.ph627.i.i.prol.loopexit
  %i.bck = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #26 ; 3 uses
  %i.bcl = load i32, ptr @bloat, align 4
  %i.bcm = icmp sgt i32 %i.bcl, -1
  br i1 %i.bcm, label %.lr.ph632.i.i.preheader, label %._crit_edge628._crit_edge.i.i

.lr.ph632.i.i.preheader:                          ; preds = %._crit_edge628.i.i
  %xtraiter828 = and i64 %.1389.i.i, 3            ; 3 uses
  %i.bcn = icmp ult i64 %i.bbj, 3
  br i1 %i.bcn, label %.lr.ph632.i.i.epil.preheader, label %.lr.ph632.i.i.preheader.new

.lr.ph632.i.i.preheader.new:                      ; preds = %.lr.ph632.i.i.preheader
  %unroll_iter834 = and i64 %.1389.i.i, -4
  br label %.lr.ph632.i.i

._crit_edge628.thread.i.i:                        ; preds = %bb.nl
  %i.bco = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #26 ; 2 uses
  %i.bcp = load i32, ptr @bloat, align 4
  %i.bcq = icmp sgt i32 %i.bcp, -1
  br i1 %i.bcq, label %._crit_edge633.i.i, label %._crit_edge628._crit_edge.i.i

._crit_edge628._crit_edge.i.i:                    ; preds = %._crit_edge628.thread.i.i, %._crit_edge628.i.i
  %i.bcr = phi i64 [ %i.bco, %._crit_edge628.thread.i.i ], [ %i.bck, %._crit_edge628.i.i ] ; 2 uses
  %.pre749.i.i = shl i64 %i.bcr, 32
  %.pre750.i.i = ashr exact i64 %.pre749.i.i, 32
  br label %.thread824.i.i

.lr.ph632.i.i:                                    ; preds = %.lr.ph632.i.i, %.lr.ph632.i.i.preheader.new
  %.3631.i.i = phi i64 [ %.1392.i.i, %.lr.ph632.i.i.preheader.new ], [ %i.bdt, %.lr.ph632.i.i ] ; 5 uses
  %.0356630.i.i = phi i32 [ -1, %.lr.ph632.i.i.preheader.new ], [ %..0356.i.i.3, %.lr.ph632.i.i ]
  %.0358629.i.i = phi i32 [ -1, %.lr.ph632.i.i.preheader.new ], [ %.0358..i.i.3, %.lr.ph632.i.i ]
  %niter835 = phi i64 [ 0, %.lr.ph632.i.i.preheader.new ], [ %niter835.next.3, %.lr.ph632.i.i ]
  %i.bcs = getelementptr inbounds i8, ptr %i.ara, i64 %.3631.i.i
  %i.bct = load i8, ptr %i.bcs, align 1           ; 2 uses
  %i.bcu = zext i8 %i.bct to i64
  %i.bcv = getelementptr inbounds nuw i8, ptr @isdsts, i64 %i.bcu
  %i.bcw = load i8, ptr %i.bcv, align 1
  %.not445.i.i = icmp eq i8 %i.bcw, 0             ; 2 uses
  %i.bcx = zext i8 %i.bct to i32                  ; 2 uses
  %.0358..i.i = select i1 %.not445.i.i, i32 %.0358629.i.i, i32 %i.bcx
  %..0356.i.i = select i1 %.not445.i.i, i32 %i.bcx, i32 %.0356630.i.i
  %i.bcy = getelementptr i8, ptr %i.ara, i64 %.3631.i.i
  %i.bcz = getelementptr i8, ptr %i.bcy, i64 1
  %i.bda = load i8, ptr %i.bcz, align 1           ; 2 uses
end_hunk_0
begin_hunk_1_@getleapdatetime:bb.a
; Function Attrs: nounwind uwtable
define internal fastcc i64 @doabbr(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i1 noundef zeroext %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.c, i32 noundef 47) #26 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i8, ptr %i.f, align 8
  %i.h = icmp eq i8 %i.g, 122
  br i1 %i.h, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, %4                         ; 2 uses
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.k, i1 false) ; 5 uses
  %i.l = srem i64 %spec.select.i, 60              ; 3 uses
  %i.m = sdiv i64 %spec.select.i, 60
  %i.n = srem i64 %i.m, 60                        ; 2 uses
  %i.o = icmp sgt i64 %spec.select.i, 359999
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.173)
  br label %abbroffset.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp slt i64 %i.k, 0
  %spec.select34.i = select i1 %i.p, i8 45, i8 43
  %i.q = sdiv i64 %spec.select.i, 3600
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %spec.select34.i, ptr %i.a, align 1
  %i.s = sdiv i64 %spec.select.i, 36000
  %i.t = trunc i64 %i.s to i8
  %i.u = add i8 %i.t, 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.u, ptr %i.r, align 1
  %i.w = srem i64 %i.q, 10
  %i.x = trunc nsw i64 %i.w to i8
  %i.y = add nsw i8 %i.x, 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store i8 %i.y, ptr %i.v, align 1
  %i.aa = or i64 %i.n, %i.l
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.lhs.trunc.i = trunc nsw i64 %i.n to i8        ; 2 uses
  %i.ab = sdiv i8 %.lhs.trunc.i, 10
  %i.ac = add nsw i8 %i.ab, 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.ac, ptr %i.z, align 1
  %i.ae = srem i8 %.lhs.trunc.i, 10
  %i.af = add nsw i8 %i.ae, 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  store i8 %i.af, ptr %i.ad, align 1
  %.not33.i = icmp eq i64 %i.l, 0
  br i1 %.not33.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.lhs.trunc37.i = trunc nsw i64 %i.l to i8      ; 2 uses
  %i.ah = sdiv i8 %.lhs.trunc37.i, 10
  %i.ai = add nsw i8 %i.ah, 48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.ai, ptr %i.ag, align 1
  %i.ak = srem i8 %.lhs.trunc37.i, 10
  %i.al = add nsw i8 %i.ak, 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.al, ptr %i.aj, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0.i = phi ptr [ %i.am, %bb.g ], [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  store i8 0, ptr %.0.i, align 1
  br label %abbroffset.exit

bb.i:                                             ; preds = %bb.b
  %.not = icmp eq ptr %2, null
  %spec.store.select = select i1 %.not, ptr @.str.51, ptr %2
  br label %abbroffset.exit

abbroffset.exit:                                  ; preds = %bb.h, %bb.d, %bb.i
  %.039 = phi ptr [ %spec.store.select, %bb.i ], [ @.str.174, %bb.d ], [ %i.a, %bb.h ]
  %i.an = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %.039) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  br i1 %3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ap = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.ao) #25 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.aq = ptrtoint ptr %i.d to i64
  %i.ar = ptrtoint ptr %i.c to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %i.c, i64 %i.as, i1 false)
  %i.at = getelementptr inbounds i8, ptr %0, i64 %i.as
  store i8 0, ptr %i.at, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %abbroffset.exit
  %i.au = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26 ; 6 uses
  br i1 %5, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.m, %bb.n
  %.0 = phi ptr [ %i.aw, %bb.n ], [ %0, %bb.m ]   ; 2 uses
  %i.av = load i8, ptr %.0, align 1               ; 2 uses
  switch i8 %i.av, label %is_alpha.exit [
    i8 65, label %bb.n
    i8 66, label %bb.n
    i8 67, label %bb.n
    i8 68, label %bb.n
    i8 69, label %bb.n
    i8 70, label %bb.n
    i8 71, label %bb.n
    i8 72, label %bb.n
    i8 73, label %bb.n
    i8 74, label %bb.n
    i8 75, label %bb.n
    i8 76, label %bb.n
    i8 77, label %bb.n
    i8 78, label %bb.n
    i8 79, label %bb.n
    i8 80, label %bb.n
    i8 81, label %bb.n
    i8 82, label %bb.n
    i8 83, label %bb.n
    i8 84, label %bb.n
    i8 85, label %bb.n
    i8 86, label %bb.n
    i8 87, label %bb.n
    i8 88, label %bb.n
    i8 89, label %bb.n
    i8 90, label %bb.n
    i8 97, label %bb.n
    i8 98, label %bb.n
    i8 99, label %bb.n
    i8 100, label %bb.n
    i8 101, label %bb.n
    i8 102, label %bb.n
    i8 103, label %bb.n
    i8 104, label %bb.n
    i8 105, label %bb.n
    i8 106, label %bb.n
    i8 107, label %bb.n
    i8 108, label %bb.n
    i8 109, label %bb.n
    i8 110, label %bb.n
    i8 111, label %bb.n
    i8 112, label %bb.n
    i8 113, label %bb.n
    i8 114, label %bb.n
    i8 115, label %bb.n
    i8 116, label %bb.n
    i8 117, label %bb.n
    i8 118, label %bb.n
    i8 119, label %bb.n
    i8 120, label %bb.n
    i8 121, label %bb.n
    i8 122, label %bb.n
  ]

bb.n:                                             ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %.preheader, !llvm.loop !91

is_alpha.exit:                                    ; preds = %.preheader
  %.not42 = icmp ne i64 %i.au, 0
  %i.ax = icmp eq i8 %i.av, 0
  %or.cond = and i1 %.not42, %i.ax
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %is_alpha.exit
  %i.ay = add i64 %i.au, 2                        ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay
  store i8 0, ptr %i.az, align 1
  %i.ba = getelementptr i8, ptr %0, i64 %i.au
  %i.bb = getelementptr i8, ptr %i.ba, i64 1
  store i8 62, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull align 1 %0, i64 %i.au, i1 false)
  store i8 60, ptr %0, align 1
  br label %bb.p

bb.p:                                             ; preds = %is_alpha.exit, %bb.m, %bb.o
  %.038 = phi i64 [ %i.au, %bb.m ], [ %i.ay, %bb.o ], [ %i.au, %is_alpha.exit ]
  ret i64 %.038
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 256) i32 @addtype(i64 noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = add i64 %0, 2147483648
  %or.cond = icmp ult i64 %i.b, 4294967296
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.175)
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr @bloat, align 4
  %i.d = icmp sgt i32 %i.c, -1                    ; 2 uses
  %spec.select = and i1 %3, %i.d                  ; 2 uses
  %spec.select39 = and i1 %4, %i.d                ; 2 uses
  %i.e = load i32, ptr @charcnt, align 4          ; 6 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr @chars, i64 %indvars.iv
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) %1) #26
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %._crit_edge.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !92

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ %i.j, %._crit_edge.loopexit ] ; 5 uses
  %i.k = icmp eq i32 %.0.lcssa, %i.e
  br i1 %i.k, label %._crit_edge.thread, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.l = load i32, ptr @typecnt, align 4          ; 4 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph51, label %.loopexit.thread

.lr.ph51:                                         ; preds = %.preheader
  %i.n = zext i1 %2 to i32
  %i.o = zext i1 %spec.select to i8
  %i.p = zext i1 %spec.select39 to i8
  %wide.trip.count58 = zext nneg i32 %i.l to i64
  br label %bb.j

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %.0.lcssa66 = phi i32 [ %.0.lcssa, %._crit_edge ], [ %i.e, %bb.d ]
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(49) @.str.177) #26
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.thread, %.critedge.i
  %.019.i = phi ptr [ %i.t, %.critedge.i ], [ %1, %._crit_edge.thread ] ; 3 uses
  %i.r = load i8, ptr %.019.i, align 1            ; 4 uses
  switch i8 %i.r, label %is_alpha.exit.i [
    i8 65, label %.critedge.i
    i8 66, label %.critedge.i
    i8 67, label %.critedge.i
    i8 68, label %.critedge.i
    i8 69, label %.critedge.i
    i8 70, label %.critedge.i
    i8 71, label %.critedge.i
    i8 72, label %.critedge.i
    i8 73, label %.critedge.i
    i8 74, label %.critedge.i
    i8 75, label %.critedge.i
    i8 76, label %.critedge.i
    i8 77, label %.critedge.i
    i8 78, label %.critedge.i
    i8 79, label %.critedge.i
    i8 80, label %.critedge.i
    i8 81, label %.critedge.i
    i8 82, label %.critedge.i
    i8 83, label %.critedge.i
    i8 84, label %.critedge.i
    i8 85, label %.critedge.i
    i8 86, label %.critedge.i
    i8 87, label %.critedge.i
    i8 88, label %.critedge.i
    i8 89, label %.critedge.i
    i8 90, label %.critedge.i
    i8 97, label %.critedge.i
    i8 98, label %.critedge.i
    i8 99, label %.critedge.i
    i8 100, label %.critedge.i
    i8 101, label %.critedge.i
    i8 102, label %.critedge.i
    i8 103, label %.critedge.i
    i8 104, label %.critedge.i
    i8 105, label %.critedge.i
    i8 106, label %.critedge.i
    i8 107, label %.critedge.i
    i8 108, label %.critedge.i
    i8 109, label %.critedge.i
    i8 110, label %.critedge.i
    i8 111, label %.critedge.i
    i8 112, label %.critedge.i
    i8 113, label %.critedge.i
    i8 114, label %.critedge.i
    i8 115, label %.critedge.i
    i8 116, label %.critedge.i
    i8 117, label %.critedge.i
    i8 118, label %.critedge.i
    i8 119, label %.critedge.i
    i8 120, label %.critedge.i
    i8 121, label %.critedge.i
    i8 122, label %.critedge.i
  ]

is_alpha.exit.i:                                  ; preds = %.preheader.i
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %is_alpha.exit.i
  switch i8 %i.r, label %bb.f [
    i8 45, label %.critedge.i
    i8 43, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %bb.e, %bb.e, %is_alpha.exit.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  %i.t = getelementptr inbounds nuw i8, ptr %.019.i, i64 1
  br label %.preheader.i, !llvm.loop !93

bb.f:                                             ; preds = %bb.e
  %.b.i = load i1, ptr @noise, align 1
  %i.u = ptrtoint ptr %.019.i to i64
  %i.v = ptrtoint ptr %1 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp slt i64 %i.w, 3
  %or.cond27.i = and i1 %i.x, %.b.i
  %.0.i = select i1 %or.cond27.i, ptr @.str.178, ptr null
  %i.y = icmp sgt i64 %i.w, 6
  %.1.i = select i1 %i.y, ptr @.str.179, ptr %.0.i
  %.not22.i = icmp eq i8 %i.r, 0
  %.2.i = select i1 %.not22.i, ptr %.1.i, ptr @.str.180 ; 2 uses
  %.not23.i = icmp eq ptr %.2.i, null
  br i1 %.not23.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @warning(ptr noundef nonnull @.str.181, ptr noundef nonnull %.2.i, ptr noundef nonnull %1)
  %.pre = load i32, ptr @charcnt, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.thread
  %i.z = phi i32 [ %.pre, %bb.g ], [ %i.e, %bb.f ], [ %i.e, %._crit_edge.thread ] ; 2 uses
  %i.aa = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = add i32 %i.ab, 1
  %i.ad = add i32 %i.ac, %i.z                     ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 50
  br i1 %i.ae, label %bb.i, label %newabbr.exit

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.182)
  tail call void @exit(i32 noundef 1) #28
  unreachable

newabbr.exit:                                     ; preds = %bb.h
  %i.af = sext i32 %i.z to i64
  %i.ag = getelementptr inbounds i8, ptr @chars, i64 %i.af
  %i.ah = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(1) %1) #25 ; 0 uses
  store i32 %i.ad, ptr @charcnt, align 4
  %.pr = load i32, ptr @typecnt, align 4
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph51, %bb.o
  %indvars.iv55 = phi i64 [ 0, %.lr.ph51 ], [ %indvars.iv.next56, %bb.o ] ; 7 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @utoffs, i64 %indvars.iv55
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = icmp eq i64 %0, %i.aj
  br i1 %i.ak, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr @isdsts, i64 %indvars.iv55
  %i.am = load i8, ptr %i.al, align 1
  %i.an = sext i8 %i.am to i32
  %i.ao = icmp eq i32 %i.n, %i.an
  br i1 %i.ao, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr @desigidx, i64 %indvars.iv55
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = icmp eq i32 %.0.lcssa, %i.ar
  br i1 %i.as, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr @ttisstds, i64 %indvars.iv55
  %i.au = load i8, ptr %i.at, align 1, !range !19, !noundef !20
  %i.av = icmp eq i8 %i.au, %i.o
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr @ttisuts, i64 %indvars.iv55
  %i.ax = load i8, ptr %i.aw, align 1, !range !19, !noundef !20
  %i.ay = icmp eq i8 %i.ax, %i.p
  br i1 %i.ay, label %.loopexit40.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %.loopexit, label %bb.j, !llvm.loop !94

.loopexit:                                        ; preds = %bb.o, %newabbr.exit
  %.0.lcssa65 = phi i32 [ %.0.lcssa66, %newabbr.exit ], [ %.0.lcssa, %bb.o ]
  %i.az = phi i32 [ %.pr, %newabbr.exit ], [ %i.l, %bb.o ] ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 255
  br i1 %i.ba, label %bb.p, label %.loopexit.thread

bb.p:                                             ; preds = %.loopexit
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.176)
  tail call void @exit(i32 noundef 1) #28
  unreachable

.loopexit.thread:                                 ; preds = %.preheader, %.loopexit
  %i.bb = phi i32 [ %i.az, %.loopexit ], [ %i.l, %.preheader ] ; 3 uses
  %.0.lcssa6568 = phi i32 [ %.0.lcssa65, %.loopexit ], [ %.0.lcssa, %.preheader ]
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr @typecnt, align 4
  %i.bd = sext i32 %i.bb to i64                   ; 5 uses
  %i.be = getelementptr inbounds [8 x i8], ptr @utoffs, i64 %i.bd
  store i64 %0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds i8, ptr @isdsts, i64 %i.bd
  store i8 %i.a, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds i8, ptr @ttisstds, i64 %i.bd
  %i.bh = zext i1 %spec.select to i8
  store i8 %i.bh, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds i8, ptr @ttisuts, i64 %i.bd
  %i.bj = zext i1 %spec.select39 to i8
  store i8 %i.bj, ptr %i.bi, align 1
  %i.bk = trunc i32 %.0.lcssa6568 to i8
  %i.bl = getelementptr inbounds i8, ptr @desigidx, i64 %i.bd
  store i8 %i.bk, ptr %i.bl, align 1
  br label %.loopexit40

.loopexit40.loopexit:                             ; preds = %bb.n
  %i.bm = trunc nuw nsw i64 %indvars.iv55 to i32
  br label %.loopexit40

.loopexit40:                                      ; preds = %.loopexit40.loopexit, %.loopexit.thread
  %.036 = phi i32 [ %i.bb, %.loopexit.thread ], [ %i.bm, %.loopexit40.loopexit ]
  ret i32 %.036
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addtt(i64 noundef %0, i32 noundef range(i32 -2147483648, 256) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @attypes, align 8          ; 2 uses
  %i.b = load i64, ptr @timecnt, align 8          ; 3 uses
  %i.c = load i64, ptr @timecnt_alloc, align 8    ; 4 uses
  %i.d = icmp slt i64 %i.b, %i.c
  br i1 %i.d, label %growalloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i64 %i.c, 6148914691236517202
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @memory_exhausted(ptr noundef nonnull @.str.131) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = ashr i64 %i.c, 1
  %i.g = add nsw i64 %i.c, 1
  %i.h = add i64 %i.g, %i.f                       ; 3 uses
  store i64 %i.h, ptr @timecnt_alloc, align 8
  %mul.ov.i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %mul.ov.i.i, label %bb.e, label %size_product.exit.i

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @memory_exhausted(ptr noundef nonnull @.str.67) #29
  unreachable

size_product.exit.i:                              ; preds = %bb.d
  %i.i = shl nuw i64 %i.h, 4
  %i.j = tail call ptr @realloc(ptr noundef %i.a, i64 noundef %i.i) #31 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %growalloc.exit

bb.f:                                             ; preds = %size_product.exit.i
  %i.l = tail call ptr @__errno_location() #27
  %i.m = load i32, ptr %i.l, align 4
  %i.n = tail call ptr @pg_strerror(i32 noundef %i.m) #25
  tail call fastcc void @memory_exhausted(ptr noundef %i.n) #29
  unreachable

growalloc.exit:                                   ; preds = %bb.a, %size_product.exit.i
  %.0.i = phi ptr [ %i.a, %bb.a ], [ %i.j, %size_product.exit.i ] ; 2 uses
  store ptr %.0.i, ptr @attypes, align 8
  %i.o = getelementptr inbounds [16 x i8], ptr %.0.i, i64 %i.b ; 3 uses
  store i64 %0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i8 0, ptr %i.p, align 8
  %i.q = trunc i32 %1 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  store i8 %i.q, ptr %i.r, align 1
  %i.s = add i64 %i.b, 1
  store i64 %i.s, ptr @timecnt, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2014) i32 @stringrule(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = icmp eq i32 %i.g, 29
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.j = load i32, ptr %i.i, align 4              ; 5 uses
  %i.k = icmp eq i32 %i.j, 1
  %or.cond = select i1 %i.h, i1 %i.k, i1 false
  br i1 %or.cond, label %.critedge, label %._crit_edge102

._crit_edge102:                                   ; preds = %bb.b
  %i.l = icmp sgt i32 %i.j, 0
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %._crit_edge102
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.j, 8
  br i1 %min.iters.check, label %.lr.ph.preheader114, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi112 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @len_months, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <4 x i32>, ptr %i.m, align 16
  %wide.load113 = load <4 x i32>, ptr %i.n, align 16
  %i.o = add <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.p = add <4 x i32> %wide.load113, %vec.phi112 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.p, %i.o
  %i.r = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader114

.lr.ph.preheader114:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.06799.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader114, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader114 ] ; 2 uses
  %.06799 = phi i32 [ %i.u, %.lr.ph ], [ %.06799.ph, %.lr.ph.preheader114 ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @len_months, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4
  %i.u = add i32 %i.t, %.06799                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !98

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.r, %middle.block ], [ %i.u, %.lr.ph ] ; 2 uses
  %i.v = icmp eq i32 %i.j, 1
  br i1 %i.v, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %._crit_edge102, %._crit_edge
  %.067.lcssa111 = phi i32 [ %.lcssa, %._crit_edge ], [ 0, %._crit_edge102 ]
  %i.w = add i32 %i.g, -1
  %i.x = add i32 %i.w, %.067.lcssa111
  %i.y = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.169, i32 noundef %i.x) #25
  br label %bb.i

bb.c:                                             ; preds = %._crit_edge
  %i.z = add i32 %.lcssa, %i.g
  %i.aa = tail call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.171, i32 noundef %i.z) #25
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
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

end_hunk_1
