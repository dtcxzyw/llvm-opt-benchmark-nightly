Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/bzlib?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 19
begin_hunk_0_@nsis_BZ2_bzDecompress:bb.a
  %.phi.trans.insert140.i.i = getelementptr i8, ptr %i.arx, i64 60
  %.pre141.i.i = load i32, ptr %.phi.trans.insert140.i.i, align 4, !tbaa !58
  %.phi.trans.insert142.i.i = getelementptr i8, ptr %i.arx, i64 64
  %.pre143.i.i = load i32, ptr %.phi.trans.insert142.i.i, align 4, !tbaa !58
  %.phi.trans.insert144.i.i = getelementptr i8, ptr %i.arx, i64 68
  %.pre145.i.i = load i32, ptr %.phi.trans.insert144.i.i, align 4, !tbaa !58
  %.phi.trans.insert146.i.i = getelementptr i8, ptr %i.arx, i64 72
  %.pre147.i.i = load i32, ptr %.phi.trans.insert146.i.i, align 4, !tbaa !58
  %.phi.trans.insert148.i.i = getelementptr i8, ptr %i.arx, i64 76
  %.pre149.i.i = load i32, ptr %.phi.trans.insert148.i.i, align 4, !tbaa !58
  %.phi.trans.insert150.i.i = getelementptr i8, ptr %i.arx, i64 80
  %.pre151.i.i = load i32, ptr %.phi.trans.insert150.i.i, align 4, !tbaa !58
  %.phi.trans.insert1924.i = getelementptr i8, ptr %i.arx, i64 84
  %.pre1925.i = load i32, ptr %.phi.trans.insert1924.i, align 4, !tbaa !58
  %.phi.trans.insert1926.i = getelementptr i8, ptr %i.arx, i64 88
  %.pre1927.i = load i32, ptr %.phi.trans.insert1926.i, align 4, !tbaa !58
  br label %.preheader66.i.i

.preheader66.i.i:                                 ; preds = %.preheader66.loopexit.i.i, %.preheader68.i.thread2101.i
  %.0950.lcssa20932099.i = phi i32 [ %spec.select.i.lcssa, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ] ; 5 uses
  %.0948.lcssa20942097.i = phi i32 [ %.1949.i.lcssa, %.preheader66.loopexit.i.i ], [ 32, %.preheader68.i.thread2101.i ] ; 7 uses
  %i.ate = phi i32 [ %.pre1927.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ]
  %i.atf = phi i32 [ %.pre1925.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ]
  %i.atg = phi i32 [ %.pre151.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ]
  %i.ath = phi i32 [ %.pre149.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ]
  %i.ati = phi i32 [ %.pre147.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ]
  %i.atj = phi i32 [ %.pre145.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ]
  %i.atk = phi i32 [ %.pre143.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ]
  %i.atl = phi i32 [ %.pre141.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ]
  %i.atm = phi i32 [ %.pre139.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ]
  %i.atn = phi i32 [ %.pre137.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ]
  %i.ato = phi i32 [ %.pre135.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ]
  %i.atp = phi i32 [ %.pre133.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ]
  %i.atq = phi i32 [ %.pre131.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ]
  %i.atr = phi i32 [ %.pre129.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ]
  %i.ats = phi i32 [ %.pre127.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ]
  %i.att = phi i32 [ %.pre125.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ]
  %i.atu = phi i32 [ %.pre123.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ]
  %i.atv = phi i32 [ %.pre121.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ]
  %i.atw = phi i32 [ %.pre119.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ]
  %i.atx = phi i32 [ %.pre117.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ]
  %i.aty = phi i32 [ %.pre115.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ]
  %i.atz = phi i32 [ %.pre.i.i, %.preheader66.loopexit.i.i ], [ 0, %.preheader68.i.thread2101.i ] ; 2 uses
  %i.aua = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %indvars.iv1751.i ; 28 uses
  %i.aub = getelementptr inbounds nuw [1032 x i8], ptr %i.ad, i64 %indvars.iv1751.i ; 6 uses
  %i.auc = getelementptr i8, ptr %i.aua, i64 4
  store i32 %i.atz, ptr %i.auc, align 4, !tbaa !58
  %i.aud = getelementptr i8, ptr %i.aua, i64 8
  %i.aue = add nsw i32 %i.atz, %i.aty             ; 2 uses
  store i32 %i.aue, ptr %i.aud, align 4, !tbaa !58
  %i.auf = getelementptr i8, ptr %i.aua, i64 12
  %i.aug = add nsw i32 %i.aue, %i.atx             ; 2 uses
  store i32 %i.aug, ptr %i.auf, align 4, !tbaa !58
  %i.auh = getelementptr i8, ptr %i.aua, i64 16
  %i.aui = add nsw i32 %i.aug, %i.atw             ; 2 uses
  store i32 %i.aui, ptr %i.auh, align 4, !tbaa !58
  %i.auj = getelementptr i8, ptr %i.aua, i64 20
  %i.auk = add nsw i32 %i.aui, %i.atv             ; 2 uses
  store i32 %i.auk, ptr %i.auj, align 4, !tbaa !58
  %i.aul = getelementptr i8, ptr %i.aua, i64 24
  %i.aum = add nsw i32 %i.auk, %i.atu             ; 2 uses
  store i32 %i.aum, ptr %i.aul, align 4, !tbaa !58
  %i.aun = getelementptr i8, ptr %i.aua, i64 28
  %i.auo = add nsw i32 %i.aum, %i.att             ; 2 uses
  store i32 %i.auo, ptr %i.aun, align 4, !tbaa !58
  %i.aup = getelementptr i8, ptr %i.aua, i64 32
  %i.auq = add nsw i32 %i.auo, %i.ats             ; 2 uses
  store i32 %i.auq, ptr %i.aup, align 4, !tbaa !58
  %i.aur = getelementptr i8, ptr %i.aua, i64 36
  %i.aus = add nsw i32 %i.auq, %i.atr             ; 2 uses
  store i32 %i.aus, ptr %i.aur, align 4, !tbaa !58
  %i.aut = getelementptr i8, ptr %i.aua, i64 40
  %i.auu = add nsw i32 %i.aus, %i.atq             ; 2 uses
  store i32 %i.auu, ptr %i.aut, align 4, !tbaa !58
  %i.auv = getelementptr i8, ptr %i.aua, i64 44
  %i.auw = add nsw i32 %i.auu, %i.atp             ; 2 uses
  store i32 %i.auw, ptr %i.auv, align 4, !tbaa !58
  %i.aux = getelementptr i8, ptr %i.aua, i64 48
  %i.auy = add nsw i32 %i.auw, %i.ato             ; 2 uses
  store i32 %i.auy, ptr %i.aux, align 4, !tbaa !58
  %i.auz = getelementptr i8, ptr %i.aua, i64 52
  %i.ava = add nsw i32 %i.auy, %i.atn             ; 2 uses
  store i32 %i.ava, ptr %i.auz, align 4, !tbaa !58
  %i.avb = getelementptr i8, ptr %i.aua, i64 56
  %i.avc = add nsw i32 %i.ava, %i.atm             ; 2 uses
  store i32 %i.avc, ptr %i.avb, align 4, !tbaa !58
  %i.avd = getelementptr i8, ptr %i.aua, i64 60
  %i.ave = add nsw i32 %i.avc, %i.atl             ; 2 uses
  store i32 %i.ave, ptr %i.avd, align 4, !tbaa !58
  %i.avf = getelementptr i8, ptr %i.aua, i64 64
  %i.avg = add nsw i32 %i.ave, %i.atk             ; 2 uses
  store i32 %i.avg, ptr %i.avf, align 4, !tbaa !58
  %i.avh = getelementptr i8, ptr %i.aua, i64 68
  %i.avi = add nsw i32 %i.avg, %i.atj             ; 2 uses
  store i32 %i.avi, ptr %i.avh, align 4, !tbaa !58
  %i.avj = getelementptr i8, ptr %i.aua, i64 72
  %i.avk = add nsw i32 %i.avi, %i.ati             ; 2 uses
  store i32 %i.avk, ptr %i.avj, align 4, !tbaa !58
  %i.avl = getelementptr i8, ptr %i.aua, i64 76
  %i.avm = add nsw i32 %i.avk, %i.ath             ; 2 uses
  store i32 %i.avm, ptr %i.avl, align 4, !tbaa !58
  %i.avn = getelementptr i8, ptr %i.aua, i64 80
  %i.avo = add nsw i32 %i.avm, %i.atg             ; 2 uses
  store i32 %i.avo, ptr %i.avn, align 4, !tbaa !58
  %i.avp = getelementptr i8, ptr %i.aua, i64 84
  %i.avq = add nsw i32 %i.avo, %i.atf             ; 2 uses
  store i32 %i.avq, ptr %i.avp, align 4, !tbaa !58
  %i.avr = getelementptr i8, ptr %i.aua, i64 88
  %i.avs = add nsw i32 %i.avq, %i.ate
  store i32 %i.avs, ptr %i.avr, align 4, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.aub, i8 0, i64 92, i1 false), !tbaa !58
  %.not6279.i.i = icmp samesign ugt i32 %.0948.lcssa20942097.i, %.0950.lcssa20932099.i
  br i1 %.not6279.i.i, label %.preheader.i.i, label %.lr.ph82.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.preheader68.i.i, %.lr.ph.i.i
  %indvars.iv92.i.i = phi i64 [ %indvars.iv.next93.i.i.3, %.lr.ph.i.i ], [ 0, %.preheader68.i.i ] ; 5 uses
  %niter741 = phi i64 [ %niter741.next.3, %.lr.ph.i.i ], [ 0, %.preheader68.i.i ]
  %i.avt = getelementptr inbounds nuw i8, ptr %i.arh, i64 %indvars.iv92.i.i
  %i.avu = load i8, ptr %i.avt, align 1, !tbaa !52
  %i.avv = zext i8 %i.avu to i64
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %i.arx, i64 %i.avv
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avw, i64 4 ; 2 uses
  %i.avy = load i32, ptr %i.avx, align 4, !tbaa !58
  %i.avz = add nsw i32 %i.avy, 1
  store i32 %i.avz, ptr %i.avx, align 4, !tbaa !58
  %i.awa = getelementptr inbounds nuw i8, ptr %i.arh, i64 %indvars.iv92.i.i
  %i.awb = getelementptr inbounds nuw i8, ptr %i.awa, i64 1
  %i.awc = load i8, ptr %i.awb, align 1, !tbaa !52
  %i.awd = zext i8 %i.awc to i64
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %i.arx, i64 %i.awd
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 4 ; 2 uses
  %i.awg = load i32, ptr %i.awf, align 4, !tbaa !58
  %i.awh = add nsw i32 %i.awg, 1
  store i32 %i.awh, ptr %i.awf, align 4, !tbaa !58
  %i.awi = getelementptr inbounds nuw i8, ptr %i.arh, i64 %indvars.iv92.i.i
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awi, i64 2
  %i.awk = load i8, ptr %i.awj, align 1, !tbaa !52
  %i.awl = zext i8 %i.awk to i64
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %i.arx, i64 %i.awl
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awm, i64 4 ; 2 uses
  %i.awo = load i32, ptr %i.awn, align 4, !tbaa !58
  %i.awp = add nsw i32 %i.awo, 1
  store i32 %i.awp, ptr %i.awn, align 4, !tbaa !58
  %i.awq = getelementptr inbounds nuw i8, ptr %i.arh, i64 %indvars.iv92.i.i
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 3
  %i.aws = load i8, ptr %i.awr, align 1, !tbaa !52
  %i.awt = zext i8 %i.aws to i64
  %i.awu = getelementptr inbounds nuw [4 x i8], ptr %i.arx, i64 %i.awt
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 4 ; 2 uses
  %i.aww = load i32, ptr %i.awv, align 4, !tbaa !58
  %i.awx = add nsw i32 %i.aww, 1
  store i32 %i.awx, ptr %i.awv, align 4, !tbaa !58
  %indvars.iv.next93.i.i.3 = add nuw nsw i64 %indvars.iv92.i.i, 4 ; 2 uses
  %niter741.next.3 = add i64 %niter741, 4         ; 2 uses
  %niter741.ncmp.3 = icmp eq i64 %niter741.next.3, %unroll_iter740
  br i1 %niter741.ncmp.3, label %.preheader66.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i

.lr.ph82.preheader.i.i:                           ; preds = %.preheader66.i.i
  %i.awy = zext nneg i32 %.0948.lcssa20942097.i to i64 ; 3 uses
  %i.awz = add nuw nsw i32 %.0950.lcssa20932099.i, 1
  %.phi.trans.insert1928.i = getelementptr inbounds nuw [4 x i8], ptr %i.aua, i64 %i.awy
  %.pre1929.i = load i32, ptr %.phi.trans.insert1928.i, align 4, !tbaa !58 ; 2 uses
  %narrow = sub nuw i32 %i.awz, %.0948.lcssa20942097.i ; 2 uses
  %i.axa = zext i32 %narrow to i64                ; 2 uses
  %xtraiter742 = and i64 %i.axa, 1
  %i.axb = icmp eq i32 %.0950.lcssa20932099.i, %.0948.lcssa20942097.i
  br i1 %i.axb, label %.lr.ph82.i.i.epil.preheader, label %.lr.ph82.preheader.i.i.new

.lr.ph82.preheader.i.i.new:                       ; preds = %.lr.ph82.preheader.i.i
  %unroll_iter746 = and i64 %i.axa, 4294967294
  br label %.lr.ph82.i.i

.preheader.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph82.i.i
  %lcmp.mod744.not = icmp eq i64 %xtraiter742, 0
  br i1 %lcmp.mod744.not, label %.preheader.i.i, label %.lr.ph82.i.i.epil.preheader

.lr.ph82.i.i.epil.preheader:                      ; preds = %.preheader.i.i.loopexit.unr-lcssa, %.lr.ph82.preheader.i.i
  %.epil.init = phi i32 [ %.pre1929.i, %.lr.ph82.preheader.i.i ], [ %i.ayd, %.preheader.i.i.loopexit.unr-lcssa ]
  %indvars.iv104.i.i.epil.init = phi i64 [ %i.awy, %.lr.ph82.preheader.i.i ], [ %indvars.iv.next105.i.i.1, %.preheader.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.081.i.i.epil.init = phi i32 [ 0, %.lr.ph82.preheader.i.i ], [ %i.ayi, %.preheader.i.i.loopexit.unr-lcssa ]
  %lcmp.mod745 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod745)
  %i.axc = getelementptr inbounds nuw [4 x i8], ptr %i.aua, i64 %indvars.iv104.i.i.epil.init
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 4
  %i.axe = load i32, ptr %i.axd, align 4, !tbaa !58
  %i.axf = sub nsw i32 %i.axe, %.epil.init
  %i.axg = add nsw i32 %i.axf, %.081.i.i.epil.init
  %i.axh = add nsw i32 %i.axg, -1
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %indvars.iv104.i.i.epil.init
  store i32 %i.axh, ptr %i.axi, align 4, !tbaa !58
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph82.i.i.epil.preheader, %.preheader.i.i.loopexit.unr-lcssa, %.preheader66.i.i
  %.not63.not83.i.i = icmp samesign ult i32 %.0948.lcssa20942097.i, %.0950.lcssa20932099.i
  br i1 %.not63.not83.i.i, label %.lr.ph85.preheader.i.i, label %CreateDecodeTables.exit.i

.lr.ph85.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.axj = zext i32 %.0948.lcssa20942097.i to i64 ; 4 uses
  %wide.trip.count112.i.i = zext nneg i32 %.0950.lcssa20932099.i to i64 ; 2 uses
  %i.axk = sub nsw i64 %wide.trip.count112.i.i, %i.axj ; 3 uses
  %min.iters.check532 = icmp ult i64 %i.axk, 4
  br i1 %min.iters.check532, label %.lr.ph85.i.i.preheader, label %vector.ph533

vector.ph533:                                     ; preds = %.lr.ph85.preheader.i.i
  %n.vec534 = and i64 %i.axk, -4                  ; 3 uses
  %i.axl = add nsw i64 %n.vec534, %i.axj
  br label %vector.body535

vector.body535:                                   ; preds = %vector.body535, %vector.ph533
  %index536 = phi i64 [ 0, %vector.ph533 ], [ %index.next538, %vector.body535 ] ; 2 uses
  %i.axm = add nuw i64 %index536, %i.axj          ; 2 uses
  %i.axn = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %i.axm
  %wide.load.a = load <4 x i32>, ptr %i.axn, align 4, !tbaa !58
  %i.axo = shl <4 x i32> %wide.load.a, splat (i32 1)
  %i.axp = add <4 x i32> %i.axo, splat (i32 2)
  %i.axq = getelementptr inbounds nuw [4 x i8], ptr %i.aua, i64 %i.axm
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axq, i64 4 ; 2 uses
  %wide.load537 = load <4 x i32>, ptr %i.axr, align 4, !tbaa !58
  %i.axs = sub <4 x i32> %i.axp, %wide.load537
  store <4 x i32> %i.axs, ptr %i.axr, align 4, !tbaa !58
  %index.next538 = add nuw i64 %index536, 4       ; 2 uses
  %i.axt = icmp eq i64 %index.next538, %n.vec534
  br i1 %i.axt, label %middle.block539, label %vector.body535, !llvm.loop !42

middle.block539:                                  ; preds = %vector.body535
  %cmp.n540 = icmp eq i64 %i.axk, %n.vec534
  br i1 %cmp.n540, label %CreateDecodeTables.exit.i, label %.lr.ph85.i.i.preheader

.lr.ph85.i.i.preheader:                           ; preds = %.lr.ph85.preheader.i.i, %middle.block539
  %indvars.iv109.i.i.ph = phi i64 [ %i.axj, %.lr.ph85.preheader.i.i ], [ %i.axl, %middle.block539 ]
  br label %.lr.ph85.i.i

.lr.ph82.i.i:                                     ; preds = %.lr.ph82.i.i, %.lr.ph82.preheader.i.i.new
  %i.axu = phi i32 [ %.pre1929.i, %.lr.ph82.preheader.i.i.new ], [ %i.ayd, %.lr.ph82.i.i ]
  %indvars.iv104.i.i = phi i64 [ %i.awy, %.lr.ph82.preheader.i.i.new ], [ %indvars.iv.next105.i.i.1, %.lr.ph82.i.i ] ; 3 uses
  %.081.i.i = phi i32 [ 0, %.lr.ph82.preheader.i.i.new ], [ %i.ayi, %.lr.ph82.i.i ]
  %niter747 = phi i64 [ 0, %.lr.ph82.preheader.i.i.new ], [ %niter747.next.1, %.lr.ph82.i.i ]
  %indvars.iv.next105.i.i = add nuw nsw i64 %indvars.iv104.i.i, 1 ; 2 uses
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %i.aua, i64 %indvars.iv.next105.i.i
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !58 ; 2 uses
  %i.axx = sub nsw i32 %i.axw, %i.axu
  %i.axy = add nsw i32 %i.axx, %.081.i.i          ; 2 uses
  %i.axz = add nsw i32 %i.axy, -1
  %i.aya = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %indvars.iv104.i.i
  store i32 %i.axz, ptr %i.aya, align 4, !tbaa !58
  %i.ayb = shl i32 %i.axy, 1
  %indvars.iv.next105.i.i.1 = add nuw nsw i64 %indvars.iv104.i.i, 2 ; 3 uses
  %i.ayc = getelementptr inbounds nuw [4 x i8], ptr %i.aua, i64 %indvars.iv.next105.i.i.1
  %i.ayd = load i32, ptr %i.ayc, align 4, !tbaa !58 ; 3 uses
  %i.aye = sub nsw i32 %i.ayd, %i.axw
  %i.ayf = add nsw i32 %i.aye, %i.ayb             ; 2 uses
  %i.ayg = add nsw i32 %i.ayf, -1
  %i.ayh = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %indvars.iv.next105.i.i
  store i32 %i.ayg, ptr %i.ayh, align 4, !tbaa !58
  %i.ayi = shl i32 %i.ayf, 1                      ; 2 uses
  %niter747.next.1 = add i64 %niter747, 2         ; 2 uses
  %niter747.ncmp.1 = icmp eq i64 %niter747.next.1, %unroll_iter746
  br i1 %niter747.ncmp.1, label %.preheader.i.i.loopexit.unr-lcssa, label %.lr.ph82.i.i

.lr.ph85.i.i:                                     ; preds = %.lr.ph85.i.i.preheader, %.lr.ph85.i.i
  %indvars.iv109.i.i = phi i64 [ %indvars.iv.next110.i.i, %.lr.ph85.i.i ], [ %indvars.iv109.i.i.ph, %.lr.ph85.i.i.preheader ] ; 2 uses
  %indvars.iv.next110.i.i = add nuw nsw i64 %indvars.iv109.i.i, 1 ; 3 uses
  %i.ayj = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %indvars.iv109.i.i
  %i.ayk = load i32, ptr %i.ayj, align 4, !tbaa !58
  %i.ayl = shl i32 %i.ayk, 1
  %i.aym = add i32 %i.ayl, 2
  %i.ayn = getelementptr inbounds nuw [4 x i8], ptr %i.aua, i64 %indvars.iv.next110.i.i ; 2 uses
  %i.ayo = load i32, ptr %i.ayn, align 4, !tbaa !58
  %i.ayp = sub i32 %i.aym, %i.ayo
  store i32 %i.ayp, ptr %i.ayn, align 4, !tbaa !58
  %exitcond113.not.i.i = icmp eq i64 %indvars.iv.next110.i.i, %wide.trip.count112.i.i
  br i1 %exitcond113.not.i.i, label %CreateDecodeTables.exit.i, label %.lr.ph85.i.i, !llvm.loop !43

CreateDecodeTables.exit.i:                        ; preds = %.lr.ph85.i.i, %middle.block539, %.preheader.i.i
  %i.ayq = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv1751.i
  store i32 %.0948.lcssa20942097.i, ptr %i.ayq, align 4, !tbaa !58
  %indvars.iv.next1752.i = add nuw nsw i64 %indvars.iv1751.i, 1 ; 2 uses
  %exitcond1755.not.i = icmp eq i64 %indvars.iv.next1752.i, %wide.trip.count1754.i
  br i1 %exitcond1755.not.i, label %._crit_edge1556.i, label %.preheader1417.i

._crit_edge1556.i:                                ; preds = %CreateDecodeTables.exit.i, %.preheader1418.i
  %.6993.lcssa.i = phi i32 [ 0, %.preheader1418.i ], [ %.41035.i, %CreateDecodeTables.exit.i ] ; 2 uses
  %i.ayr = load i32, ptr %i.y, align 8, !tbaa !90
  %i.ays = load i32, ptr %i.o, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ah, i8 0, i64 1024, i1 false), !tbaa !58
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.d, i64 7804
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.ayt, align 4, !tbaa !52
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.d, i64 7880
  store i32 4080, ptr %i.ayu, align 8, !tbaa !58
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.d, i64 7788
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.ayv, align 4, !tbaa !52
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.d, i64 7876
  store i32 4064, ptr %i.ayw, align 4, !tbaa !58
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.d, i64 7772
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.ayx, align 4, !tbaa !52
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.d, i64 7872
  store i32 4048, ptr %i.ayy, align 8, !tbaa !58
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.d, i64 7756
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.ayz, align 4, !tbaa !52
  %i.aza = getelementptr inbounds nuw i8, ptr %i.d, i64 7868
  store i32 4032, ptr %i.aza, align 4, !tbaa !58
  %i.azb = getelementptr inbounds nuw i8, ptr %i.d, i64 7740
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.azb, align 4, !tbaa !52
  %i.azc = getelementptr inbounds nuw i8, ptr %i.d, i64 7864
  store i32 4016, ptr %i.azc, align 8, !tbaa !58
  %i.azd = getelementptr inbounds nuw i8, ptr %i.d, i64 7724
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.azd, align 4, !tbaa !52
  %i.aze = getelementptr inbounds nuw i8, ptr %i.d, i64 7860
  store i32 4000, ptr %i.aze, align 4, !tbaa !58
  %i.azf = getelementptr inbounds nuw i8, ptr %i.d, i64 7708
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.azf, align 4, !tbaa !52
  %i.azg = getelementptr inbounds nuw i8, ptr %i.d, i64 7856
  store i32 3984, ptr %i.azg, align 8, !tbaa !58
  %i.azh = getelementptr inbounds nuw i8, ptr %i.d, i64 7692
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.azh, align 4, !tbaa !52
  %i.azi = getelementptr inbounds nuw i8, ptr %i.d, i64 7852
  store i32 3968, ptr %i.azi, align 4, !tbaa !58
  %i.azj = getelementptr inbounds nuw i8, ptr %i.d, i64 7676
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.azj, align 4, !tbaa !52
  %i.azk = getelementptr inbounds nuw i8, ptr %i.d, i64 7848
  store i32 3952, ptr %i.azk, align 8, !tbaa !58
  %i.azl = getelementptr inbounds nuw i8, ptr %i.d, i64 7660
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.azl, align 4, !tbaa !52
  %i.azm = getelementptr inbounds nuw i8, ptr %i.d, i64 7844
  store i32 3936, ptr %i.azm, align 4, !tbaa !58
  %i.azn = getelementptr inbounds nuw i8, ptr %i.d, i64 7644
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.azn, align 4, !tbaa !52
  %i.azo = getelementptr inbounds nuw i8, ptr %i.d, i64 7840
  store i32 3920, ptr %i.azo, align 8, !tbaa !58
  %i.azp = getelementptr inbounds nuw i8, ptr %i.d, i64 7628
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.azp, align 4, !tbaa !52
  %i.azq = getelementptr inbounds nuw i8, ptr %i.d, i64 7836
  store i32 3904, ptr %i.azq, align 4, !tbaa !58
  %i.azr = getelementptr inbounds nuw i8, ptr %i.d, i64 7612
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.azr, align 4, !tbaa !52
  %i.azs = getelementptr inbounds nuw i8, ptr %i.d, i64 7832
  store i32 3888, ptr %i.azs, align 8, !tbaa !58
  %i.azt = getelementptr inbounds nuw i8, ptr %i.d, i64 7596
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.azt, align 4, !tbaa !52
  %i.azu = getelementptr inbounds nuw i8, ptr %i.d, i64 7828
  store i32 3872, ptr %i.azu, align 4, !tbaa !58
  %i.azv = getelementptr inbounds nuw i8, ptr %i.d, i64 7580
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.azv, align 4, !tbaa !52
  %i.azw = getelementptr inbounds nuw i8, ptr %i.d, i64 7824
  store i32 3856, ptr %i.azw, align 8, !tbaa !58
  %i.azx = getelementptr inbounds nuw i8, ptr %i.d, i64 7564
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.azx, align 4, !tbaa !52
  store i32 3840, ptr %i.aj, align 4, !tbaa !58
  %i.azy = add nsw i32 %i.ayr, 1                  ; 2 uses
  %i.azz = mul nsw i32 %i.ays, 100000             ; 2 uses
  %i.baa = icmp slt i32 %.31056.i, 1
  br i1 %i.baa, label %BZ2_decompress.exit, label %bb.ef

bb.ef:                                            ; preds = %._crit_edge1556.i
  %i.bab = load i8, ptr %i.ab, align 4, !tbaa !52 ; 2 uses
  %i.bac = zext i8 %i.bab to i64                  ; 4 uses
  %i.bad = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %i.bac
  %i.bae = getelementptr inbounds nuw [1032 x i8], ptr %i.af, i64 %i.bac
  %i.baf = getelementptr inbounds nuw [1032 x i8], ptr %i.ad, i64 %i.bac
  %i.bag = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bac
  %i.bah = load i32, ptr %i.bag, align 4, !tbaa !58 ; 2 uses
  %i.bai = zext i8 %i.bab to i32
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.aq
  %i.baj = phi i32 [ %i.ajp, %bb.ef ], [ %.pre1865.i, %bb.aq ] ; 3 uses
  %i.bak = phi i32 [ %i.ajs, %bb.ef ], [ %.pre1871.i, %bb.aq ] ; 3 uses
  %i.bal = phi i32 [ %i.ajt, %bb.ef ], [ %.pre1873.i, %bb.aq ] ; 3 uses
  %i.bam = phi i32 [ %i.aju, %bb.ef ], [ %.pre1877.i, %bb.aq ] ; 3 uses
  %i.ban = phi i32 [ %i.ajw, %bb.ef ], [ %.pre1881.i, %bb.aq ] ; 2 uses
  %i.bao = phi i32 [ %i.ajx, %bb.ef ], [ %.pre1883.i, %bb.aq ] ; 3 uses
  %.71281.i = phi i32 [ %.01274.i, %bb.ef ], [ %.pre1875.i, %bb.aq ] ; 3 uses
  %.01262.i = phi i32 [ %i.bah, %bb.ef ], [ %.pre1879.i, %bb.aq ] ; 7 uses
  %.11226.i = phi i32 [ %i.bai, %bb.ef ], [ %.pre1885.i, %bb.aq ] ; 3 uses
  %.11211.i = phi i32 [ %i.bah, %bb.ef ], [ %.pre1887.i, %bb.aq ] ; 3 uses
  %.11196.i = phi ptr [ %i.baf, %bb.ef ], [ %.pre1889.i, %bb.aq ] ; 3 uses
  %.11181.i = phi ptr [ %i.bad, %bb.ef ], [ %.pre1891.i, %bb.aq ] ; 3 uses
  %.11166.i = phi ptr [ %i.bae, %bb.ef ], [ %.pre1893.i, %bb.aq ] ; 3 uses
  %.01137.i = phi i32 [ 0, %bb.ef ], [ %.pre1869.i, %bb.aq ] ; 3 uses
  %.01125.i = phi i32 [ %i.azz, %bb.ef ], [ %.pre1867.i, %bb.aq ] ; 3 uses
  %.11102.i = phi i32 [ 49, %bb.ef ], [ %.pre1863.i, %bb.aq ] ; 3 uses
  %.11087.i = phi i32 [ 0, %bb.ef ], [ %.pre1861.i, %bb.aq ] ; 3 uses
  %.01074.i = phi i32 [ %i.azy, %bb.ef ], [ %.pre1859.i, %bb.aq ] ; 3 uses
  %.91062.i = phi i32 [ %.31056.i, %bb.ef ], [ %.pre1857.i, %bb.aq ] ; 3 uses
  %.101041.i = phi i32 [ %.41035.i, %bb.ef ], [ %.pre1855.i, %bb.aq ] ; 3 uses
  %.111017.i = phi i32 [ %.51011.i, %bb.ef ], [ %.pre1853.i, %bb.aq ] ; 3 uses
  %.7994.i = phi i32 [ %.6993.lcssa.i, %bb.ef ], [ %.pre1851.i, %bb.aq ] ; 3 uses
  %.15973.i = phi i32 [ %.9967.i, %bb.ef ], [ %.pre1849.i, %bb.aq ] ; 3 uses
  %.21.i = phi i32 [ 256, %bb.ef ], [ %.pre.i36, %bb.aq ] ; 3 uses
  store i32 36, ptr %i.g, align 8, !tbaa !19
  %i.bap = load i32, ptr %.phi.trans.insert1946.i, align 4, !tbaa !20 ; 3 uses
  %.not13481563.i = icmp slt i32 %i.bap, %.01262.i
  br i1 %.not13481563.i, label %.lr.ph1565.i, label %.._crit_edge1566_crit_edge.i

.._crit_edge1566_crit_edge.i:                     ; preds = %bb.eg
  %.pre1932.i = load i32, ptr %i.v, align 8, !tbaa !21
  br label %._crit_edge1566.i

.lr.ph1565.i:                                     ; preds = %bb.eg
  %i.baq = load ptr, ptr %i.d, align 8, !tbaa !17 ; 5 uses
  %i.bar = getelementptr inbounds nuw i8, ptr %i.baq, i64 8 ; 2 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %i.baq, i64 12 ; 2 uses
  %i.bat = getelementptr inbounds nuw i8, ptr %i.baq, i64 16 ; 2 uses
  %.pre1930.i = load i32, ptr %i.bar, align 8, !tbaa !87 ; 2 uses
  %i.bau = icmp eq i32 %.pre1930.i, 0
  br i1 %i.bau, label %BZ2_decompress.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph1565.i
  %.promoted = load ptr, ptr %i.baq, align 8, !tbaa !88
  %.promoted840 = load i32, ptr %i.bas, align 4, !tbaa !22
  br label %.lr.ph

._crit_edge1566.i:                                ; preds = %bb.ej, %.._crit_edge1566_crit_edge.i
  %i.bav = phi i32 [ %.pre1932.i, %.._crit_edge1566_crit_edge.i ], [ %i.bbj, %bb.ej ]
  %.lcssa1481.i = phi i32 [ %i.bap, %.._crit_edge1566_crit_edge.i ], [ %i.bbk, %bb.ej ]
  %i.baw = sub nsw i32 %.lcssa1481.i, %.01262.i   ; 3 uses
  %i.bax = lshr i32 %i.bav, %i.baw
  %notmask.i = shl nsw i32 -1, %.01262.i
  %i.bay = xor i32 %notmask.i, -1
  %i.baz = and i32 %i.bax, %i.bay
  store i32 %i.baw, ptr %.phi.trans.insert1946.i, align 4, !tbaa !20
end_hunk_0
