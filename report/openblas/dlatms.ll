loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@dlatms_:bb.a
vector.scevcheck1892:                             ; preds = %iter.check1917
  %i.aqu = trunc i64 %i.aqh to i32
  %i.aqv = add i32 %i.aqj, %i.aqu
  %i.aqw = icmp slt i32 %i.aqv, %i.aqj
  %i.aqx = icmp ugt i64 %i.aqh, 4294967295
  %i.aqy = or i1 %i.aqw, %i.aqx
  %i.aqz = sub i64 %i.aqc, %i.aqa
  %diff.check1899 = icmp ugt i64 %i.aqz, -128
  %or.cond1932 = select i1 %i.aqy, i1 true, i1 %diff.check1899
  br i1 %or.cond1932, label %vec.epilog.scalar.ph1918.preheader, label %vector.main.loop.iter.check1903

vector.main.loop.iter.check1903:                  ; preds = %vector.scevcheck1892
  %min.iters.check1904 = icmp ult i64 %i.aps, 16
  br i1 %min.iters.check1904, label %vec.epilog.ph1921, label %vector.ph1905

vector.ph1905:                                    ; preds = %vector.main.loop.iter.check1903
  %i.ara = and i64 %i.aps, 12
  %n.vec1906 = and i64 %i.aps, -16                ; 4 uses
  %i.arb = add nsw i64 %n.vec1906, %i.aqo
  br label %vector.body1907

vector.body1907:                                  ; preds = %vector.body1907, %vector.ph1905
  %index1908 = phi i64 [ 0, %vector.ph1905 ], [ %index.next1913, %vector.body1907 ] ; 2 uses
  %i.arc = add i64 %index1908, %i.aqo             ; 2 uses
  %i.ard = getelementptr [8 x i8], ptr %invariant.gep1846, i64 %i.arc ; 4 uses
  %i.are = getelementptr i8, ptr %i.ard, i64 32
  %i.arf = getelementptr i8, ptr %i.ard, i64 64
  %i.arg = getelementptr i8, ptr %i.ard, i64 96
  %wide.load1909 = load <4 x double>, ptr %i.ard, align 8, !tbaa !9
  %wide.load1910 = load <4 x double>, ptr %i.are, align 8, !tbaa !9
  %wide.load1911 = load <4 x double>, ptr %i.arf, align 8, !tbaa !9
  %wide.load1912 = load <4 x double>, ptr %i.arg, align 8, !tbaa !9
  %i.arh = trunc nsw i64 %i.arc to i32
  %i.ari = add i32 %i.aqt, %i.arh
  %i.arj = sext i32 %i.ari to i64
  %i.ark = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.arj ; 4 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ark, i64 32
  %i.arm = getelementptr inbounds nuw i8, ptr %i.ark, i64 64
  %i.arn = getelementptr inbounds nuw i8, ptr %i.ark, i64 96
  store <4 x double> %wide.load1909, ptr %i.ark, align 8, !tbaa !9
  store <4 x double> %wide.load1910, ptr %i.arl, align 8, !tbaa !9
  store <4 x double> %wide.load1911, ptr %i.arm, align 8, !tbaa !9
  store <4 x double> %wide.load1912, ptr %i.arn, align 8, !tbaa !9
  %index.next1913 = add nuw i64 %index1908, 16    ; 2 uses
  %i.aro = icmp eq i64 %index.next1913, %n.vec1906
  br i1 %i.aro, label %middle.block1914, label %vector.body1907, !llvm.loop !56

middle.block1914:                                 ; preds = %vector.body1907
  %cmp.n1915 = icmp eq i64 %i.aps, %n.vec1906
  br i1 %cmp.n1915, label %._crit_edge1506, label %vec.epilog.iter.check1919

vec.epilog.iter.check1919:                        ; preds = %middle.block1914
  %min.epilog.iters.check1920 = icmp eq i64 %i.ara, 0
  br i1 %min.epilog.iters.check1920, label %vec.epilog.scalar.ph1918.preheader, label %vec.epilog.ph1921, !prof !52

vec.epilog.ph1921:                                ; preds = %vector.main.loop.iter.check1903, %vec.epilog.iter.check1919
  %vec.epilog.resume.val1916 = phi i64 [ %n.vec1906, %vec.epilog.iter.check1919 ], [ 0, %vector.main.loop.iter.check1903 ]
  %n.vec1922 = and i64 %i.aps, -4                 ; 3 uses
  %i.arp = add nsw i64 %n.vec1922, %i.aqo
  br label %vec.epilog.vector.body1923

vec.epilog.vector.body1923:                       ; preds = %vec.epilog.vector.body1923, %vec.epilog.ph1921
  %index1924 = phi i64 [ %vec.epilog.resume.val1916, %vec.epilog.ph1921 ], [ %index.next1926, %vec.epilog.vector.body1923 ] ; 2 uses
  %i.arq = add i64 %index1924, %i.aqo             ; 2 uses
  %i.arr = getelementptr [8 x i8], ptr %invariant.gep1846, i64 %i.arq
  %wide.load1925 = load <4 x double>, ptr %i.arr, align 8, !tbaa !9
  %i.ars = trunc nsw i64 %i.arq to i32
  %i.art = add i32 %i.aqt, %i.ars
  %i.aru = sext i32 %i.art to i64
  %i.arv = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.aru
  store <4 x double> %wide.load1925, ptr %i.arv, align 8, !tbaa !9
  %index.next1926 = add nuw i64 %index1924, 4     ; 2 uses
  %i.arw = icmp eq i64 %index.next1926, %n.vec1922
  br i1 %i.arw, label %vec.epilog.middle.block1927, label %vec.epilog.vector.body1923, !llvm.loop !57

vec.epilog.middle.block1927:                      ; preds = %vec.epilog.vector.body1923
  %cmp.n1928 = icmp eq i64 %i.aps, %n.vec1922
  br i1 %cmp.n1928, label %._crit_edge1506, label %vec.epilog.scalar.ph1918.preheader

vec.epilog.scalar.ph1918.preheader:               ; preds = %vector.scevcheck1892, %iter.check1917, %vec.epilog.iter.check1919, %vec.epilog.middle.block1927
  %indvars.iv1681.ph = phi i64 [ %i.aqo, %vector.scevcheck1892 ], [ %i.aqo, %iter.check1917 ], [ %i.arb, %vec.epilog.iter.check1919 ], [ %i.arp, %vec.epilog.middle.block1927 ]
  br label %vec.epilog.scalar.ph1918

vec.epilog.scalar.ph1918:                         ; preds = %vec.epilog.scalar.ph1918.preheader, %vec.epilog.scalar.ph1918
  %indvars.iv1681 = phi i64 [ %indvars.iv.next1682, %vec.epilog.scalar.ph1918 ], [ %indvars.iv1681.ph, %vec.epilog.scalar.ph1918.preheader ] ; 4 uses
  %gep1847 = getelementptr [8 x i8], ptr %invariant.gep1846, i64 %indvars.iv1681
  %i.arx = load double, ptr %gep1847, align 8, !tbaa !9
  %i.ary = trunc nsw i64 %indvars.iv1681 to i32
  %i.arz = add i32 %i.aqt, %i.ary
  %i.asa = sext i32 %i.arz to i64
  %i.asb = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.asa
  store double %i.arx, ptr %i.asb, align 8, !tbaa !9
  %indvars.iv.next1682 = add nsw i64 %indvars.iv1681, 1
  %.not1151.not = icmp slt i64 %indvars.iv1681, %i.aqn
  br i1 %.not1151.not, label %vec.epilog.scalar.ph1918, label %._crit_edge1506, !llvm.loop !58

._crit_edge1506:                                  ; preds = %vec.epilog.scalar.ph1918, %middle.block1914, %vec.epilog.middle.block1927, %bb.dy
  %indvars.iv.next1686 = add nsw i64 %indvars.iv1685, 1 ; 2 uses
  %indvars.iv.next1680 = add i32 %indvars.iv1679, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next1686 to i32
  %exitcond1690.not = icmp eq i32 %i.apd, %lftr.wideiv
  %indvar.next1894 = add i32 %indvar1893, 1
  %indvar.next1898 = add i64 %indvar1897, 1
  br i1 %exitcond1690.not, label %.loopexit1278, label %bb.dy, !llvm.loop !59

.loopexit1278.loopexit.unr-lcssa:                 ; preds = %.loopexit.1
  %lcmp.mod2000.not = icmp eq i64 %xtraiter1998, 0
  br i1 %lcmp.mod2000.not, label %.loopexit1278, label %.epil.preheader1997

.epil.preheader1997:                              ; preds = %.loopexit1278.loopexit.unr-lcssa, %.lr.ph1547
  %indvars.iv1741.epil.init = phi i64 [ 0, %.lr.ph1547 ], [ %indvars.iv.next1742.1, %.loopexit1278.loopexit.unr-lcssa ] ; 2 uses
  %.09821545.epil.init = phi i32 [ 1, %.lr.ph1547 ], [ %i.afq, %.loopexit1278.loopexit.unr-lcssa ]
  %lcmp.mod2001 = trunc i32 %i.afk to i1
  call void @llvm.assume(i1 %lcmp.mod2001)
  %.not11681540.not.epil = icmp slt i32 %.09821545.epil.init, %i.afk
  br i1 %.not11681540.not.epil, label %.lr.ph1543.epil, label %.loopexit1278

.lr.ph1543.epil:                                  ; preds = %.epil.preheader1997
  %i.asc = trunc i64 %indvars.iv1741.epil.init to i32
  %i.asd = sub i32 %i.afo, %i.asc
  %i.ase = zext i32 %i.asd to i64
  %i.asf = shl nuw nsw i64 %i.ase, 3
  %i.asg = add nuw nsw i64 %i.asf, 8
  %i.ash = trunc nuw nsw i64 %indvars.iv1741.epil.init to i32
  %i.asi = mul i32 %i.afn, %i.ash
  %i.asj = add i32 %i.afm, %i.asi
  %i.ask = sext i32 %i.asj to i64
  %i.asl = shl nsw i64 %i.ask, 3
  %scevgep1734.epil = getelementptr i8, ptr %scevgep1733, i64 %i.asl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1734.epil, i8 0, i64 %i.asg, i1 false), !tbaa !9
  br label %.loopexit1278

.loopexit1278.loopexit1935.unr-lcssa:             ; preds = %.lr.ph1538
  %lcmp.mod1993.not = icmp eq i64 %xtraiter1991, 0
  br i1 %lcmp.mod1993.not, label %.loopexit1278, label %.lr.ph1538.epil.preheader

.lr.ph1538.epil.preheader:                        ; preds = %.loopexit1278.loopexit1935.unr-lcssa, %.lr.ph1538.preheader
  %indvar1723.epil.init = phi i64 [ 0, %.lr.ph1538.preheader ], [ %indvar.next1724.3, %.loopexit1278.loopexit1935.unr-lcssa ]
  %lcmp.mod1994 = icmp ne i64 %xtraiter1991, 0
  call void @llvm.assume(i1 %lcmp.mod1994)
  br label %.lr.ph1538.epil

.lr.ph1538.epil:                                  ; preds = %.lr.ph1538.epil, %.lr.ph1538.epil.preheader
  %indvar1723.epil = phi i64 [ %indvar1723.epil.init, %.lr.ph1538.epil.preheader ], [ %indvar.next1724.epil, %.lr.ph1538.epil ] ; 3 uses
  %epil.iter1992 = phi i64 [ 0, %.lr.ph1538.epil.preheader ], [ %epil.iter1992.next, %.lr.ph1538.epil ]
  %i.asm = trunc nuw nsw i64 %indvar1723.epil to i32
  %i.asn = mul i32 %i.ab, %i.asm
  %i.aso = add i32 %i.agp, %i.asn
  %i.asp = sext i32 %i.aso to i64
  %i.asq = shl nsw i64 %i.asp, 3
  %scevgep1722.epil = getelementptr i8, ptr %scevgep1721, i64 %i.asq
  %i.asr = shl nuw nsw i64 %indvar1723.epil, 3
  %i.ass = add nuw nsw i64 %i.asr, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1722.epil, i8 0, i64 %i.ass, i1 false), !tbaa !9
  %indvar.next1724.epil = add nuw nsw i64 %indvar1723.epil, 1
  %epil.iter1992.next = add i64 %epil.iter1992, 1 ; 2 uses
  %epil.iter1992.cmp.not = icmp eq i64 %epil.iter1992.next, %xtraiter1991
  br i1 %epil.iter1992.cmp.not, label %.loopexit1278, label %.lr.ph1538.epil, !llvm.loop !60

.loopexit1278:                                    ; preds = %._crit_edge1506, %.unr-lcssa, %.epilog-lcssa, %.loopexit1278.loopexit1935.unr-lcssa, %.lr.ph1538.epil, %.loopexit1278.loopexit.unr-lcssa, %.lr.ph1543.epil, %.epil.preheader1997, %._crit_edge1500, %bb.di, %bb.df
  %.251032 = phi i32 [ %spec.select1182.lcssa, %.epilog-lcssa ], [ %.181025, %.loopexit1278.loopexit.unr-lcssa ], [ %.181025, %bb.df ], [ %.181025, %bb.di ], [ %.181025, %._crit_edge1500 ], [ %spec.select1184.lcssa, %.unr-lcssa ], [ %.181025, %.loopexit1278.loopexit1935.unr-lcssa ], [ %.181025, %.epil.preheader1997 ], [ %.181025, %.lr.ph1543.epil ], [ %.181025, %.lr.ph1538.epil ], [ %.181025, %._crit_edge1506 ]
  %.24 = phi i32 [ %spec.select1183.lcssa, %.epilog-lcssa ], [ %.17, %.loopexit1278.loopexit.unr-lcssa ], [ %.17, %bb.df ], [ %.17, %bb.di ], [ %.17, %._crit_edge1500 ], [ %spec.select1185.lcssa, %.unr-lcssa ], [ %.17, %.loopexit1278.loopexit1935.unr-lcssa ], [ %.17, %.epil.preheader1997 ], [ %.17, %.lr.ph1543.epil ], [ %.17, %.lr.ph1538.epil ], [ %.17, %._crit_edge1506 ]
  %or.cond19 = or i1 %i.bi, %i.bj
  br i1 %or.cond19, label %.loopexit1278.thread, label %bb.ea

.loopexit1278.thread:                             ; preds = %bb.dp, %bb.dk, %.loopexit1278
  %.241831 = phi i32 [ %.24, %.loopexit1278 ], [ 0, %bb.dk ], [ 0, %bb.dp ] ; 2 uses
  %.2510321830 = phi i32 [ %.251032, %.loopexit1278 ], [ 1, %bb.dk ], [ 1, %bb.dp ] ; 10 uses
  %i.ast = load i32, ptr %0, align 4, !tbaa !8    ; 4 uses
  %.not11661570 = icmp sgt i32 %.2510321830, %i.ast
  br i1 %.not11661570, label %.thread1196, label %.lr.ph1574

.lr.ph1574:                                       ; preds = %.loopexit1278.thread
  %i.asu = load i32, ptr %13, align 4, !tbaa !8   ; 4 uses
  %i.asv = shl nsw i64 %i.ac, 3
  %scevgep1771 = getelementptr i8, ptr %12, i64 %i.asv ; 6 uses
  %i.asw = add i32 %i.ast, 1
  %i.asx = sub i32 %i.asw, %.2510321830
  %.not11671565.peel.not = icmp slt i32 %.241831, %i.asu
  br i1 %.not11671565.peel.not, label %.lr.ph1568.peel, label %._crit_edge1569.peel

.lr.ph1568.peel:                                  ; preds = %.lr.ph1574
  %i.asy = mul i32 %.2510321830, %i.ab
  %i.asz = add nsw i32 %.241831, 1                ; 2 uses
  %i.ata = add i32 %i.asz, %i.asy
  %i.atb = sext i32 %i.ata to i64
  %i.atc = shl nsw i64 %i.atb, 3
  %scevgep1772.peel = getelementptr i8, ptr %scevgep1771, i64 %i.atc
  %i.atd = sub i32 %i.asu, %i.asz
  %i.ate = zext i32 %i.atd to i64
  %i.atf = shl nuw nsw i64 %i.ate, 3
  %i.atg = add nuw nsw i64 %i.atf, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1772.peel, i8 0, i64 %i.atg, i1 false), !tbaa !9
  br label %._crit_edge1569.peel

._crit_edge1569.peel:                             ; preds = %.lr.ph1568.peel, %.lr.ph1574
  %exitcond1777.peel.not = icmp eq i32 %i.asx, 1
  br i1 %exitcond1777.peel.not, label %.thread1196, label %.peel.next

.peel.next:                                       ; preds = %._crit_edge1569.peel
  %.not11671565 = icmp slt i32 %i.asu, 1          ; 2 uses
  %i.ath = add nsw i32 %i.asu, -1
  %i.ati = zext nneg i32 %i.ath to i64
  %i.atj = shl nuw nsw i64 %i.ati, 3
  %i.atk = add nuw nsw i64 %i.atj, 8              ; 5 uses
  %16 = sub i32 %i.ast, %.2510321830              ; 2 uses
  %xtraiter2005 = and i32 %16, 3                  ; 3 uses
  %17 = sub i32 %.2510321830, %i.ast
  %18 = icmp ugt i32 %17, -4
  br i1 %18, label %.epil.preheader2004, label %.peel.next.new

.peel.next.new:                                   ; preds = %.peel.next
  %unroll_iter2009 = and i32 %16, -4
  %invariant.op = add i32 1, %.2510321830
  %invariant.op2026 = add i32 2, %.2510321830
  %invariant.op2028 = add i32 3, %.2510321830
  br label %bb.dz

bb.dz:                                            ; preds = %._crit_edge1569.3, %.peel.next.new
  %indvar = phi i32 [ 1, %.peel.next.new ], [ %indvar.next.3, %._crit_edge1569.3 ] ; 5 uses
  %niter2010 = phi i32 [ 0, %.peel.next.new ], [ %niter2010.next.3, %._crit_edge1569.3 ]
  br i1 %.not11671565, label %._crit_edge1569.3, label %.lr.ph1568

.lr.ph1568:                                       ; preds = %bb.dz
  %i.atl = add i32 %.2510321830, %indvar
  %i.atm = mul i32 %i.atl, %i.ab
  %i.atn = add i32 %i.atm, 1
  %i.ato = sext i32 %i.atn to i64
  %i.atp = shl nsw i64 %i.ato, 3
  %scevgep1772 = getelementptr i8, ptr %scevgep1771, i64 %i.atp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1772, i8 0, i64 %i.atk, i1 false), !tbaa !9
  %.reass = add i32 %indvar, %invariant.op
  %i.atq = mul i32 %.reass, %i.ab
  %i.atr = add i32 %i.atq, 1
  %i.ats = sext i32 %i.atr to i64
  %i.att = shl nsw i64 %i.ats, 3
  %scevgep1772.1 = getelementptr i8, ptr %scevgep1771, i64 %i.att
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1772.1, i8 0, i64 %i.atk, i1 false), !tbaa !9
  %.reass2027 = add i32 %indvar, %invariant.op2026
  %i.atu = mul i32 %.reass2027, %i.ab
  %i.atv = add i32 %i.atu, 1
  %i.atw = sext i32 %i.atv to i64
  %i.atx = shl nsw i64 %i.atw, 3
  %scevgep1772.2 = getelementptr i8, ptr %scevgep1771, i64 %i.atx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1772.2, i8 0, i64 %i.atk, i1 false), !tbaa !9
  %.reass2029 = add i32 %indvar, %invariant.op2028
  %i.aty = mul i32 %.reass2029, %i.ab
  %i.atz = add i32 %i.aty, 1
  %i.aua = sext i32 %i.atz to i64
  %i.aub = shl nsw i64 %i.aua, 3
  %scevgep1772.3 = getelementptr i8, ptr %scevgep1771, i64 %i.aub
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1772.3, i8 0, i64 %i.atk, i1 false), !tbaa !9
  br label %._crit_edge1569.3

._crit_edge1569.3:                                ; preds = %bb.dz, %.lr.ph1568
  %indvar.next.3 = add i32 %indvar, 4             ; 2 uses
  %niter2010.next.3 = add i32 %niter2010, 4       ; 2 uses
  %niter2010.ncmp.3 = icmp eq i32 %niter2010.next.3, %unroll_iter2009
  br i1 %niter2010.ncmp.3, label %.thread1196.loopexit.unr-lcssa, label %bb.dz, !llvm.loop !61

bb.ea:                                            ; preds = %.loopexit1278
  br i1 %i.bc, label %bb.eb, label %.thread1196

bb.eb:                                            ; preds = %bb.ea
  %i.auc = load i32, ptr %i.z, align 4, !tbaa !8  ; 4 uses
  %i.aud = load i32, ptr %i.y, align 4, !tbaa !8
  %i.aue = add i32 %i.auc, 2                      ; 2 uses
  %i.auf = add i32 %i.aue, %i.aud                 ; 2 uses
  %i.aug = load i32, ptr %1, align 4, !tbaa !8    ; 2 uses
  %.not11621558 = icmp slt i32 %i.aug, 1
  br i1 %.not11621558, label %.thread1196, label %.lr.ph1562

.lr.ph1562:                                       ; preds = %bb.eb
  %i.auh = load i32, ptr %0, align 4, !tbaa !8    ; 2 uses
  %i.aui = add nsw i32 %i.auc, 1
  %i.auj = add i32 %i.aue, %i.auh
  %i.auk = load i32, ptr %13, align 4, !tbaa !8   ; 2 uses
  %i.aul = shl nsw i64 %i.ac, 3
  %scevgep1747 = getelementptr i8, ptr %12, i64 %i.aul ; 2 uses
  %i.aum = add i32 %i.ab, 1
  %i.aun = add i32 %i.auc, %i.auh
  %i.auo = add i32 %i.aun, 1
  %wide.trip.count1769 = zext nneg i32 %i.aug to i64
  br label %bb.ec

bb.ec:                                            ; preds = %.lr.ph1562, %._crit_edge1557
  %indvars.iv1765 = phi i64 [ 0, %.lr.ph1562 ], [ %indvars.iv.next1766, %._crit_edge1557 ] ; 3 uses
  %.9.neg1560 = phi i32 [ -1, %.lr.ph1562 ], [ %.9.neg, %._crit_edge1557 ] ; 2 uses
  %.91559 = phi i32 [ 1, %.lr.ph1562 ], [ %i.avl, %._crit_edge1557 ] ; 2 uses
  %i.aup = trunc i64 %indvars.iv1765 to i32       ; 2 uses
  %i.auq = sub i32 %i.auo, %i.aup
  %smin1754 = call i32 @llvm.smin.i32(i32 %i.auq, i32 %i.auf)
  %smax1755 = call i32 @llvm.smax.i32(i32 %smin1754, i32 1) ; 2 uses
  %i.aur = trunc nuw nsw i64 %indvars.iv1765 to i32
  %i.aus = mul i32 %i.ab, %i.aur                  ; 2 uses
  %i.aut = add i32 %i.ab, %i.aus
  %i.auu = add i32 %smax1755, %i.aut
  %i.auv = sext i32 %i.auu to i64
  %i.auw = shl nsw i64 %i.auv, 3
  %scevgep1756 = getelementptr i8, ptr %scevgep1747, i64 %i.auw
  %i.aux = sub i32 %i.auk, %smax1755
  %i.auy = zext i32 %i.aux to i64
  %i.auz = shl nuw nsw i64 %i.auy, 3
  %i.ava = add nuw nsw i64 %i.auz, 8
  %i.avb = add i32 %i.aui, %.9.neg1560
  %.not11631548 = icmp slt i32 %i.avb, 1
  br i1 %.not11631548, label %._crit_edge1552, label %.lr.ph1551

.lr.ph1551:                                       ; preds = %bb.ec
  %i.avc = sub i32 %i.auc, %i.aup
  %i.avd = zext i32 %i.avc to i64
  %i.ave = shl nuw nsw i64 %i.avd, 3
  %i.avf = add i32 %i.aum, %i.aus
  %i.avg = sext i32 %i.avf to i64
  %i.avh = shl nsw i64 %i.avg, 3
  %scevgep1748 = getelementptr i8, ptr %scevgep1747, i64 %i.avh
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1748, i8 0, i64 %i.ave, i1 false), !tbaa !9
  br label %._crit_edge1552

._crit_edge1552:                                  ; preds = %.lr.ph1551, %bb.ec
  %i.avi = add i32 %i.auj, %.9.neg1560
  %i.avj = call i32 @llvm.smin.i32(i32 %i.auf, i32 %i.avi)
  %i.avk = call i32 @llvm.smax.i32(i32 %i.avj, i32 1)
  %.not11651553 = icmp sgt i32 %i.avk, %i.auk
  br i1 %.not11651553, label %._crit_edge1557, label %.lr.ph1556

.lr.ph1556:                                       ; preds = %._crit_edge1552
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1756, i8 0, i64 %i.ava, i1 false), !tbaa !9
  br label %._crit_edge1557

._crit_edge1557:                                  ; preds = %.lr.ph1556, %._crit_edge1552
  %i.avl = add nuw nsw i32 %.91559, 1
  %.9.neg = xor i32 %.91559, -1
  %indvars.iv.next1766 = add nuw nsw i64 %indvars.iv1765, 1 ; 2 uses
  %exitcond1770.not = icmp eq i64 %indvars.iv.next1766, %wide.trip.count1769
  br i1 %exitcond1770.not, label %.thread1196, label %bb.ec, !llvm.loop !63

.thread1196.loopexit.unr-lcssa:                   ; preds = %._crit_edge1569.3
  %lcmp.mod2007.not = icmp eq i32 %xtraiter2005, 0
  br i1 %lcmp.mod2007.not, label %.thread1196, label %.epil.preheader2004

.epil.preheader2004:                              ; preds = %.thread1196.loopexit.unr-lcssa, %.peel.next
  %indvar.epil.init = phi i32 [ 1, %.peel.next ], [ %indvar.next.3, %.thread1196.loopexit.unr-lcssa ]
  %lcmp.mod2008 = icmp ne i32 %xtraiter2005, 0
  call void @llvm.assume(i1 %lcmp.mod2008)
  br label %19

19:                                               ; preds = %._crit_edge1569.epil, %.epil.preheader2004
  %indvar.epil = phi i32 [ %indvar.epil.init, %.epil.preheader2004 ], [ %indvar.next.epil, %._crit_edge1569.epil ] ; 2 uses
  %epil.iter2006 = phi i32 [ 0, %.epil.preheader2004 ], [ %epil.iter2006.next, %._crit_edge1569.epil ]
  br i1 %.not11671565, label %._crit_edge1569.epil, label %.lr.ph1568.epil

.lr.ph1568.epil:                                  ; preds = %19
  %i.avm = add i32 %.2510321830, %indvar.epil
  %i.avn = mul i32 %i.avm, %i.ab
  %i.avo = add i32 %i.avn, 1
  %i.avp = sext i32 %i.avo to i64
  %i.avq = shl nsw i64 %i.avp, 3
  %scevgep1772.epil = getelementptr i8, ptr %scevgep1771, i64 %i.avq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1772.epil, i8 0, i64 %i.atk, i1 false), !tbaa !9
  br label %._crit_edge1569.epil

._crit_edge1569.epil:                             ; preds = %.lr.ph1568.epil, %19
  %indvar.next.epil = add i32 %indvar.epil, 1
  %epil.iter2006.next = add i32 %epil.iter2006, 1 ; 2 uses
  %epil.iter2006.cmp.not = icmp eq i32 %epil.iter2006.next, %xtraiter2005
  br i1 %epil.iter2006.cmp.not, label %.thread1196, label %19, !llvm.loop !64

.thread1196:                                      ; preds = %._crit_edge1557, %.thread1196.loopexit.unr-lcssa, %._crit_edge1569.epil, %._crit_edge1569.peel, %bb.eb, %.loopexit1278.thread, %bb.dr, %.loopexit1284, %bb.ea, %bb.a, %bb.b, %bb.dd, %bb.ar, %bb.am, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlatm1_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @dlarnd_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

declare void @dlarot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlartg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlagge_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlagsy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = distinct !{!49, !12, !50, !51}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = !{!"branch_weights", i32 4, i32 12}
!53 = distinct !{!53, !12, !50, !51}
!54 = distinct !{!54, !12, !50}
!55 = distinct !{!55, !12}
!56 = distinct !{!56, !12, !50, !51}
!57 = distinct !{!57, !12, !50, !51}
!58 = distinct !{!58, !12, !50}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !14}
!61 = distinct !{!61, !12, !62}
!62 = !{!"llvm.loop.peeled.count", i32 1}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !14}
end_hunk_0
