inline.NumInlined: 399
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZL7do_shamPKcS0_S0_S0_S0_S0_S0_S0_iiPPfbiS2_fffPKfS4_ifPKiPibS1_bS1_:bb.a
  %bin.rdx1845 = mul <8 x i32> %i.apj, %bin.rdx1844
  %bin.rdx1846 = mul <8 x i32> %i.apk, %bin.rdx1845
  %i.apm = call i32 @llvm.vector.reduce.mul.v8i32(<8 x i32> %bin.rdx1846) ; 3 uses
  %cmp.n1847 = icmp eq i64 %i.aoy, %n.vec1831
  br i1 %cmp.n1847, label %.preheader.i, label %vec.epilog.iter.check1853

vec.epilog.iter.check1853:                        ; preds = %middle.block1843
  %min.epilog.iters.check1854 = icmp eq i64 %i.aoz, 0
  br i1 %min.epilog.iters.check1854, label %.lr.ph309.i.preheader, label %vec.epilog.ph1855, !prof !118

vec.epilog.ph1855:                                ; preds = %vector.main.loop.iter.check1828, %vec.epilog.iter.check1853
  %vec.epilog.resume.val1848 = phi i64 [ %n.vec1831, %vec.epilog.iter.check1853 ], [ 0, %vector.main.loop.iter.check1828 ]
  %bc.merge.rdx1850 = phi i32 [ %i.apm, %vec.epilog.iter.check1853 ], [ %i.aow, %vector.main.loop.iter.check1828 ]
  %n.vec1856 = and i64 %i.aoy, -8                 ; 3 uses
  %i.apn = or disjoint i64 %n.vec1856, 1
  %i.apo = insertelement <8 x i32> <i32 poison, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, i32 %bc.merge.rdx1850, i64 0
  br label %vec.epilog.vector.body1857

vec.epilog.vector.body1857:                       ; preds = %vec.epilog.vector.body1857, %vec.epilog.ph1855
  %index1858 = phi i64 [ %vec.epilog.resume.val1848, %vec.epilog.ph1855 ], [ %index.next1861, %vec.epilog.vector.body1857 ] ; 2 uses
  %vec.phi1859 = phi <8 x i32> [ %i.apo, %vec.epilog.ph1855 ], [ %i.apr, %vec.epilog.vector.body1857 ]
  %i.app = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %index1858
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 4
  %wide.load1860 = load <8 x i32>, ptr %i.apq, align 4, !tbaa !9
  %i.apr = mul <8 x i32> %wide.load1860, %vec.phi1859 ; 2 uses
  %index.next1861 = add nuw i64 %index1858, 8     ; 2 uses
  %i.aps = icmp eq i64 %index.next1861, %n.vec1856
  br i1 %i.aps, label %vec.epilog.middle.block1862, label %vec.epilog.vector.body1857, !llvm.loop !119

vec.epilog.middle.block1862:                      ; preds = %vec.epilog.vector.body1857
  %i.apt = call i32 @llvm.vector.reduce.mul.v8i32(<8 x i32> %i.apr) ; 2 uses
  %cmp.n1863 = icmp eq i64 %i.aoy, %n.vec1856
  br i1 %cmp.n1863, label %.preheader.i, label %.lr.ph309.i.preheader

.lr.ph309.i.preheader:                            ; preds = %iter.check1851, %vec.epilog.iter.check1853, %vec.epilog.middle.block1862
  %indvars.iv343.i.ph = phi i64 [ 1, %iter.check1851 ], [ %i.apa, %vec.epilog.iter.check1853 ], [ %i.apn, %vec.epilog.middle.block1862 ]
  %.0156306.i.ph = phi i32 [ %i.aow, %iter.check1851 ], [ %i.apm, %vec.epilog.iter.check1853 ], [ %i.apt, %vec.epilog.middle.block1862 ]
  br label %.lr.ph309.i

.preheader.i:                                     ; preds = %.lr.ph309.i, %middle.block1843, %vec.epilog.middle.block1862, %bb.bu
  %.0156.lcssa.i = phi i32 [ %i.aow, %bb.bu ], [ %i.apt, %vec.epilog.middle.block1862 ], [ %i.apm, %middle.block1843 ], [ %i.aqd, %.lr.ph309.i ] ; 3 uses
  %i.apu = icmp sgt i32 %.0156.lcssa.i, 0
  br i1 %i.apu, label %.lr.ph320.i, label %._crit_edge321.i

.lr.ph320.i:                                      ; preds = %.preheader.i
  %i.apv = zext i32 %9 to i64                     ; 10 uses
  %i.apw = add i32 %9, -1
  %i.apx = sext i32 %i.apw to i64                 ; 3 uses
  %i.apy = getelementptr inbounds [4 x i8], ptr %i.aov, i64 %i.apx ; 3 uses
  %i.apz = getelementptr inbounds [4 x i8], ptr %22, i64 %i.apx
  %i.aqa = add nsw i64 %i.apv, -1                 ; 3 uses
  br label %bb.bv

.lr.ph309.i:                                      ; preds = %.lr.ph309.i.preheader, %.lr.ph309.i
  %indvars.iv343.i = phi i64 [ %indvars.iv.next344.i, %.lr.ph309.i ], [ %indvars.iv343.i.ph, %.lr.ph309.i.preheader ] ; 2 uses
  %.0156306.i = phi i32 [ %i.aqd, %.lr.ph309.i ], [ %.0156306.i.ph, %.lr.ph309.i.preheader ]
  %i.aqb = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv343.i
  %i.aqc = load i32, ptr %i.aqb, align 4, !tbaa !9
  %i.aqd = mul nsw i32 %i.aqc, %.0156306.i        ; 2 uses
  %indvars.iv.next344.i = add nuw nsw i64 %indvars.iv343.i, 1 ; 2 uses
  %exitcond.not.i583 = icmp eq i64 %indvars.iv.next344.i, %wide.trip.count.i582
  br i1 %exitcond.not.i583, label %.preheader.i, label %.lr.ph309.i, !llvm.loop !120

bb.bv:                                            ; preds = %.loopexit.i, %.lr.ph320.i
  %.0155319.i = phi i32 [ 0, %.lr.ph320.i ], [ %i.avp, %.loopexit.i ]
  %.7318.i = phi i32 [ 0, %.lr.ph320.i ], [ %.8.i, %.loopexit.i ] ; 5 uses
  br i1 %i.y, label %.lr.ph23.i.i, label %_ZL6indexniPKiS0_.exit.thread.i

_ZL6indexniPKiS0_.exit.thread.i:                  ; preds = %bb.bv
  %i.aqe = load float, ptr %i.gd, align 4, !tbaa !28
  br label %.critedge.i

.lr.ph23.i.i:                                     ; preds = %bb.bv, %._crit_edge.i.i
  %indvars.iv30.i.i = phi i64 [ %indvars.iv.next31.i.i, %._crit_edge.i.i ], [ 0, %bb.bv ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %._crit_edge.i.i ], [ 1, %bb.bv ] ; 6 uses
  %.01620.i.i = phi i64 [ %i.aro, %._crit_edge.i.i ], [ 0, %bb.bv ]
  %i.aqf = sub i64 %i.aqa, %indvars.iv30.i.i      ; 7 uses
  %i.aqg = getelementptr inbounds nuw [4 x i8], ptr %i.aov, i64 %indvars.iv30.i.i
  %i.aqh = load i32, ptr %i.aqg, align 4, !tbaa !9
  %i.aqi = sext i32 %i.aqh to i64                 ; 4 uses
  %indvars.iv.next31.i.i = add nuw nsw i64 %indvars.iv30.i.i, 1 ; 3 uses
  %i.aqj = icmp samesign ult i64 %indvars.iv.next31.i.i, %i.apv
  br i1 %i.aqj, label %iter.check1968, label %._crit_edge.i.i

iter.check1968:                                   ; preds = %.lr.ph23.i.i
  %min.iters.check1944 = icmp ult i64 %i.aqf, 4
  br i1 %min.iters.check1944, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check1945

vector.main.loop.iter.check1945:                  ; preds = %iter.check1968
  %min.iters.check1946 = icmp ult i64 %i.aqf, 16
  br i1 %min.iters.check1946, label %vec.epilog.ph1972, label %vector.ph1947

vector.ph1947:                                    ; preds = %vector.main.loop.iter.check1945
  %i.aqk = and i64 %i.aqf, 12
  %n.vec1948 = and i64 %i.aqf, -16                ; 4 uses
  %i.aql = add i64 %indvars.iv.i.i, %n.vec1948
  %i.aqm = insertelement <4 x i64> <i64 poison, i64 1, i64 1, i64 1>, i64 %i.aqi, i64 0
  %i.aqn = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv.i.i
  br label %vector.body1949

vector.body1949:                                  ; preds = %vector.body1949, %vector.ph1947
  %index1950 = phi i64 [ 0, %vector.ph1947 ], [ %index.next1959, %vector.body1949 ] ; 2 uses
  %vec.phi1951 = phi <4 x i64> [ %i.aqm, %vector.ph1947 ], [ %i.aqw, %vector.body1949 ]
  %vec.phi1952 = phi <4 x i64> [ splat (i64 1), %vector.ph1947 ], [ %i.aqx, %vector.body1949 ]
  %vec.phi1953 = phi <4 x i64> [ splat (i64 1), %vector.ph1947 ], [ %i.aqy, %vector.body1949 ]
  %vec.phi1954 = phi <4 x i64> [ splat (i64 1), %vector.ph1947 ], [ %i.aqz, %vector.body1949 ]
  %i.aqo = getelementptr inbounds nuw [4 x i8], ptr %i.aqn, i64 %index1950 ; 4 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 16
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqo, i64 32
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqo, i64 48
  %wide.load1955 = load <4 x i32>, ptr %i.aqo, align 4, !tbaa !9
  %wide.load1956 = load <4 x i32>, ptr %i.aqp, align 4, !tbaa !9
  %wide.load1957 = load <4 x i32>, ptr %i.aqq, align 4, !tbaa !9
  %wide.load1958 = load <4 x i32>, ptr %i.aqr, align 4, !tbaa !9
  %i.aqs = sext <4 x i32> %wide.load1955 to <4 x i64>
  %i.aqt = sext <4 x i32> %wide.load1956 to <4 x i64>
  %i.aqu = sext <4 x i32> %wide.load1957 to <4 x i64>
  %i.aqv = sext <4 x i32> %wide.load1958 to <4 x i64>
  %i.aqw = mul <4 x i64> %vec.phi1951, %i.aqs     ; 2 uses
  %i.aqx = mul <4 x i64> %vec.phi1952, %i.aqt     ; 2 uses
  %i.aqy = mul <4 x i64> %vec.phi1953, %i.aqu     ; 2 uses
  %i.aqz = mul <4 x i64> %vec.phi1954, %i.aqv     ; 2 uses
  %index.next1959 = add nuw i64 %index1950, 16    ; 2 uses
  %i.ara = icmp eq i64 %index.next1959, %n.vec1948
  br i1 %i.ara, label %middle.block1960, label %vector.body1949, !llvm.loop !121

middle.block1960:                                 ; preds = %vector.body1949
  %bin.rdx1961 = mul <4 x i64> %i.aqx, %i.aqw
  %bin.rdx1962 = mul <4 x i64> %i.aqy, %bin.rdx1961
  %bin.rdx1963 = mul <4 x i64> %i.aqz, %bin.rdx1962
  %i.arb = call i64 @llvm.vector.reduce.mul.v4i64(<4 x i64> %bin.rdx1963) ; 3 uses
  %cmp.n1964 = icmp eq i64 %i.aqf, %n.vec1948
  br i1 %cmp.n1964, label %._crit_edge.i.i, label %vec.epilog.iter.check1970

vec.epilog.iter.check1970:                        ; preds = %middle.block1960
  %min.epilog.iters.check1971 = icmp eq i64 %i.aqk, 0
  br i1 %min.epilog.iters.check1971, label %.lr.ph.i.i.preheader, label %vec.epilog.ph1972, !prof !73

vec.epilog.ph1972:                                ; preds = %vector.main.loop.iter.check1945, %vec.epilog.iter.check1970
  %vec.epilog.resume.val1965 = phi i64 [ %n.vec1948, %vec.epilog.iter.check1970 ], [ 0, %vector.main.loop.iter.check1945 ]
  %bc.merge.rdx1967 = phi i64 [ %i.arb, %vec.epilog.iter.check1970 ], [ %i.aqi, %vector.main.loop.iter.check1945 ]
  %n.vec1973 = and i64 %i.aqf, -4                 ; 3 uses
  %i.arc = add i64 %indvars.iv.i.i, %n.vec1973
  %i.ard = insertelement <4 x i64> <i64 poison, i64 1, i64 1, i64 1>, i64 %bc.merge.rdx1967, i64 0
  %i.are = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv.i.i
  br label %vec.epilog.vector.body1974

vec.epilog.vector.body1974:                       ; preds = %vec.epilog.vector.body1974, %vec.epilog.ph1972
  %index1975 = phi i64 [ %vec.epilog.resume.val1965, %vec.epilog.ph1972 ], [ %index.next1978, %vec.epilog.vector.body1974 ] ; 2 uses
  %vec.phi1976 = phi <4 x i64> [ %i.ard, %vec.epilog.ph1972 ], [ %i.arh, %vec.epilog.vector.body1974 ]
  %i.arf = getelementptr inbounds nuw [4 x i8], ptr %i.are, i64 %index1975
  %wide.load1977 = load <4 x i32>, ptr %i.arf, align 4, !tbaa !9
  %i.arg = sext <4 x i32> %wide.load1977 to <4 x i64>
  %i.arh = mul <4 x i64> %vec.phi1976, %i.arg     ; 2 uses
  %index.next1978 = add nuw i64 %index1975, 4     ; 2 uses
  %i.ari = icmp eq i64 %index.next1978, %n.vec1973
  br i1 %i.ari, label %vec.epilog.middle.block1979, label %vec.epilog.vector.body1974, !llvm.loop !122

vec.epilog.middle.block1979:                      ; preds = %vec.epilog.vector.body1974
  %i.arj = call i64 @llvm.vector.reduce.mul.v4i64(<4 x i64> %i.arh) ; 2 uses
  %cmp.n1980 = icmp eq i64 %i.aqf, %n.vec1973
  br i1 %cmp.n1980, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check1968, %vec.epilog.iter.check1970, %vec.epilog.middle.block1979
  %indvars.iv27.i.i.ph = phi i64 [ %indvars.iv.i.i, %iter.check1968 ], [ %i.aql, %vec.epilog.iter.check1970 ], [ %i.arc, %vec.epilog.middle.block1979 ]
  %.01518.i.i.ph = phi i64 [ %i.aqi, %iter.check1968 ], [ %i.arb, %vec.epilog.iter.check1970 ], [ %i.arj, %vec.epilog.middle.block1979 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv27.i.i = phi i64 [ %indvars.iv.next28.i.i, %.lr.ph.i.i ], [ %indvars.iv27.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01518.i.i = phi i64 [ %i.arn, %.lr.ph.i.i ], [ %.01518.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.ark = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv27.i.i
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !9
  %i.arm = sext i32 %i.arl to i64
  %i.arn = mul nsw i64 %.01518.i.i, %i.arm        ; 2 uses
  %indvars.iv.next28.i.i = add nuw nsw i64 %indvars.iv27.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next28.i.i, %i.apv
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !123

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block1960, %vec.epilog.middle.block1979, %.lr.ph23.i.i
  %.015.lcssa.i.i = phi i64 [ %i.aqi, %.lr.ph23.i.i ], [ %i.arj, %vec.epilog.middle.block1979 ], [ %i.arb, %middle.block1960 ], [ %i.arn, %.lr.ph.i.i ]
  %i.aro = add nsw i64 %.015.lcssa.i.i, %.01620.i.i ; 4 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond34.not.i.i = icmp eq i64 %indvars.iv.next31.i.i, %i.apv
  br i1 %exitcond34.not.i.i, label %_ZL6indexniPKiS0_.exit.i, label %.lr.ph23.i.i, !llvm.loop !76

_ZL6indexniPKiS0_.exit.i:                         ; preds = %._crit_edge.i.i
  %i.arp = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.aro
  %i.arq = load float, ptr %i.arp, align 4, !tbaa !28 ; 4 uses
  br label %.lr.ph23.i213.preheader.i

.lr.ph23.i213.preheader.i:                        ; preds = %.lr.ph23.i213.preheader.i.backedge, %_ZL6indexniPKiS0_.exit.i
  %indvars.iv346.i = phi i64 [ 0, %_ZL6indexniPKiS0_.exit.i ], [ %indvars.iv346.i.be, %.lr.ph23.i213.preheader.i.backedge ] ; 4 uses
  %i.arr = getelementptr inbounds nuw [4 x i8], ptr %i.aov, i64 %indvars.iv346.i ; 8 uses
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !9 ; 10 uses
  %i.art = add nsw i32 %i.ars, -1
  store i32 %i.art, ptr %i.arr, align 4, !tbaa !9
  br label %.lr.ph23.i213.i

.lr.ph23.i213.i:                                  ; preds = %._crit_edge.i218.i, %.lr.ph23.i213.preheader.i
  %indvars.iv30.i214.i = phi i64 [ 0, %.lr.ph23.i213.preheader.i ], [ %indvars.iv.next31.i217.i, %._crit_edge.i218.i ] ; 3 uses
  %indvars.iv.i215.i = phi i64 [ 1, %.lr.ph23.i213.preheader.i ], [ %indvars.iv.next.i220.i, %._crit_edge.i218.i ] ; 6 uses
  %.01620.i216.i = phi i64 [ 0, %.lr.ph23.i213.preheader.i ], [ %i.atd, %._crit_edge.i218.i ]
  %i.aru = sub i64 %i.aqa, %indvars.iv30.i214.i   ; 7 uses
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %i.aov, i64 %indvars.iv30.i214.i
  %i.arw = load i32, ptr %i.arv, align 4, !tbaa !9
  %i.arx = zext i32 %i.arw to i64                 ; 4 uses
  %indvars.iv.next31.i217.i = add nuw nsw i64 %indvars.iv30.i214.i, 1 ; 3 uses
  %i.ary = icmp samesign ult i64 %indvars.iv.next31.i217.i, %i.apv
  br i1 %i.ary, label %iter.check1929, label %._crit_edge.i218.i

iter.check1929:                                   ; preds = %.lr.ph23.i213.i
  %min.iters.check1905 = icmp ult i64 %i.aru, 4
  br i1 %min.iters.check1905, label %.lr.ph.i222.i.preheader, label %vector.main.loop.iter.check1906

vector.main.loop.iter.check1906:                  ; preds = %iter.check1929
  %min.iters.check1907 = icmp ult i64 %i.aru, 16
  br i1 %min.iters.check1907, label %vec.epilog.ph1933, label %vector.ph1908

vector.ph1908:                                    ; preds = %vector.main.loop.iter.check1906
  %i.arz = and i64 %i.aru, 12
  %n.vec1909 = and i64 %i.aru, -16                ; 4 uses
  %i.asa = add i64 %indvars.iv.i215.i, %n.vec1909
  %i.asb = insertelement <4 x i64> <i64 poison, i64 1, i64 1, i64 1>, i64 %i.arx, i64 0
  %i.asc = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv.i215.i
  br label %vector.body1910

vector.body1910:                                  ; preds = %vector.body1910, %vector.ph1908
  %index1911 = phi i64 [ 0, %vector.ph1908 ], [ %index.next1920, %vector.body1910 ] ; 2 uses
  %vec.phi1912 = phi <4 x i64> [ %i.asb, %vector.ph1908 ], [ %i.asl, %vector.body1910 ]
  %vec.phi1913 = phi <4 x i64> [ splat (i64 1), %vector.ph1908 ], [ %i.asm, %vector.body1910 ]
  %vec.phi1914 = phi <4 x i64> [ splat (i64 1), %vector.ph1908 ], [ %i.asn, %vector.body1910 ]
  %vec.phi1915 = phi <4 x i64> [ splat (i64 1), %vector.ph1908 ], [ %i.aso, %vector.body1910 ]
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %i.asc, i64 %index1911 ; 4 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 16
  %i.asf = getelementptr inbounds nuw i8, ptr %i.asd, i64 32
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asd, i64 48
  %wide.load1916 = load <4 x i32>, ptr %i.asd, align 4, !tbaa !9
  %wide.load1917 = load <4 x i32>, ptr %i.ase, align 4, !tbaa !9
  %wide.load1918 = load <4 x i32>, ptr %i.asf, align 4, !tbaa !9
  %wide.load1919 = load <4 x i32>, ptr %i.asg, align 4, !tbaa !9
  %i.ash = zext <4 x i32> %wide.load1916 to <4 x i64>
  %i.asi = zext <4 x i32> %wide.load1917 to <4 x i64>
  %i.asj = zext <4 x i32> %wide.load1918 to <4 x i64>
  %i.ask = zext <4 x i32> %wide.load1919 to <4 x i64>
  %i.asl = mul <4 x i64> %vec.phi1912, %i.ash     ; 2 uses
  %i.asm = mul <4 x i64> %vec.phi1913, %i.asi     ; 2 uses
  %i.asn = mul <4 x i64> %vec.phi1914, %i.asj     ; 2 uses
  %i.aso = mul <4 x i64> %vec.phi1915, %i.ask     ; 2 uses
  %index.next1920 = add nuw i64 %index1911, 16    ; 2 uses
  %i.asp = icmp eq i64 %index.next1920, %n.vec1909
  br i1 %i.asp, label %middle.block1921, label %vector.body1910, !llvm.loop !124

middle.block1921:                                 ; preds = %vector.body1910
  %bin.rdx1922 = mul <4 x i64> %i.asm, %i.asl
  %bin.rdx1923 = mul <4 x i64> %i.asn, %bin.rdx1922
  %bin.rdx1924 = mul <4 x i64> %i.aso, %bin.rdx1923
  %i.asq = call i64 @llvm.vector.reduce.mul.v4i64(<4 x i64> %bin.rdx1924) ; 3 uses
  %cmp.n1925 = icmp eq i64 %i.aru, %n.vec1909
  br i1 %cmp.n1925, label %._crit_edge.i218.i, label %vec.epilog.iter.check1931

vec.epilog.iter.check1931:                        ; preds = %middle.block1921
  %min.epilog.iters.check1932 = icmp eq i64 %i.arz, 0
  br i1 %min.epilog.iters.check1932, label %.lr.ph.i222.i.preheader, label %vec.epilog.ph1933, !prof !73

vec.epilog.ph1933:                                ; preds = %vector.main.loop.iter.check1906, %vec.epilog.iter.check1931
  %vec.epilog.resume.val1926 = phi i64 [ %n.vec1909, %vec.epilog.iter.check1931 ], [ 0, %vector.main.loop.iter.check1906 ]
  %bc.merge.rdx1928 = phi i64 [ %i.asq, %vec.epilog.iter.check1931 ], [ %i.arx, %vector.main.loop.iter.check1906 ]
  %n.vec1934 = and i64 %i.aru, -4                 ; 3 uses
  %i.asr = add i64 %indvars.iv.i215.i, %n.vec1934
  %i.ass = insertelement <4 x i64> <i64 poison, i64 1, i64 1, i64 1>, i64 %bc.merge.rdx1928, i64 0
  %i.ast = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv.i215.i
  br label %vec.epilog.vector.body1935

vec.epilog.vector.body1935:                       ; preds = %vec.epilog.vector.body1935, %vec.epilog.ph1933
  %index1936 = phi i64 [ %vec.epilog.resume.val1926, %vec.epilog.ph1933 ], [ %index.next1939, %vec.epilog.vector.body1935 ] ; 2 uses
  %vec.phi1937 = phi <4 x i64> [ %i.ass, %vec.epilog.ph1933 ], [ %i.asw, %vec.epilog.vector.body1935 ]
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr %i.ast, i64 %index1936
  %wide.load1938 = load <4 x i32>, ptr %i.asu, align 4, !tbaa !9
  %i.asv = zext <4 x i32> %wide.load1938 to <4 x i64>
  %i.asw = mul <4 x i64> %vec.phi1937, %i.asv     ; 2 uses
  %index.next1939 = add nuw i64 %index1936, 4     ; 2 uses
  %i.asx = icmp eq i64 %index.next1939, %n.vec1934
  br i1 %i.asx, label %vec.epilog.middle.block1940, label %vec.epilog.vector.body1935, !llvm.loop !125

vec.epilog.middle.block1940:                      ; preds = %vec.epilog.vector.body1935
  %i.asy = call i64 @llvm.vector.reduce.mul.v4i64(<4 x i64> %i.asw) ; 2 uses
  %cmp.n1941 = icmp eq i64 %i.aru, %n.vec1934
  br i1 %cmp.n1941, label %._crit_edge.i218.i, label %.lr.ph.i222.i.preheader

.lr.ph.i222.i.preheader:                          ; preds = %iter.check1929, %vec.epilog.iter.check1931, %vec.epilog.middle.block1940
  %indvars.iv27.i223.i.ph = phi i64 [ %indvars.iv.i215.i, %iter.check1929 ], [ %i.asa, %vec.epilog.iter.check1931 ], [ %i.asr, %vec.epilog.middle.block1940 ]
  %.01518.i224.i.ph = phi i64 [ %i.arx, %iter.check1929 ], [ %i.asq, %vec.epilog.iter.check1931 ], [ %i.asy, %vec.epilog.middle.block1940 ]
  br label %.lr.ph.i222.i

.lr.ph.i222.i:                                    ; preds = %.lr.ph.i222.i.preheader, %.lr.ph.i222.i
  %indvars.iv27.i223.i = phi i64 [ %indvars.iv.next28.i225.i, %.lr.ph.i222.i ], [ %indvars.iv27.i223.i.ph, %.lr.ph.i222.i.preheader ] ; 2 uses
  %.01518.i224.i = phi i64 [ %i.atc, %.lr.ph.i222.i ], [ %.01518.i224.i.ph, %.lr.ph.i222.i.preheader ]
  %i.asz = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv27.i223.i
  %i.ata = load i32, ptr %i.asz, align 4, !tbaa !9
  %i.atb = zext i32 %i.ata to i64
  %i.atc = mul i64 %.01518.i224.i, %i.atb         ; 2 uses
  %indvars.iv.next28.i225.i = add nuw nsw i64 %indvars.iv27.i223.i, 1 ; 2 uses
  %exitcond.not.i226.i = icmp eq i64 %indvars.iv.next28.i225.i, %i.apv
  br i1 %exitcond.not.i226.i, label %._crit_edge.i218.i, label %.lr.ph.i222.i, !llvm.loop !126

._crit_edge.i218.i:                               ; preds = %.lr.ph.i222.i, %middle.block1921, %vec.epilog.middle.block1940, %.lr.ph23.i213.i
  %.015.lcssa.i219.i = phi i64 [ %i.arx, %.lr.ph23.i213.i ], [ %i.asy, %vec.epilog.middle.block1940 ], [ %i.asq, %middle.block1921 ], [ %i.atc, %.lr.ph.i222.i ]
  %i.atd = add i64 %.015.lcssa.i219.i, %.01620.i216.i ; 2 uses
  %indvars.iv.next.i220.i = add nuw nsw i64 %indvars.iv.i215.i, 1
  %exitcond34.not.i221.i = icmp eq i64 %indvars.iv.next31.i217.i, %i.apv
  br i1 %exitcond34.not.i221.i, label %_ZL6indexniPKiS0_.exit227.i, label %.lr.ph23.i213.i, !llvm.loop !76

_ZL6indexniPKiS0_.exit227.i:                      ; preds = %._crit_edge.i218.i
  %i.ate = icmp eq i32 %i.ars, 0
  br i1 %i.ate, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit228.thread.i, label %bb.bw

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit228.thread.i: ; preds = %_ZL6indexniPKiS0_.exit227.i
  store i32 1, ptr %i.arr, align 4, !tbaa !9
  br label %.lr.ph23.i232.preheader.i

bb.bw:                                            ; preds = %_ZL6indexniPKiS0_.exit227.i
  %i.atf = icmp sgt i32 %i.ars, 0
  br i1 %i.atf, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit228.i, label %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit228.thread270.i

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit228.thread270.i: ; preds = %bb.bw
  %i.atg = add nsw i32 %i.ars, 1
  store i32 %i.atg, ptr %i.arr, align 4, !tbaa !9
  br label %._crit_edge313.thread.i

_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit228.i: ; preds = %bb.bw
  %sext.i = shl i64 %i.atd, 32
  %i.ath = ashr exact i64 %sext.i, 30
  %i.ati = getelementptr inbounds i8, ptr %i.gd, i64 %i.ath
  %i.atj = load float, ptr %i.ati, align 4, !tbaa !28
  %i.atk = fcmp olt float %i.arq, %i.atj
  %i.atl = add nuw nsw i32 %i.ars, 1
  store i32 %i.atl, ptr %i.arr, align 4, !tbaa !9
  br i1 %i.atk, label %.lr.ph23.i232.preheader.i, label %._crit_edge313.thread.i

.lr.ph23.i232.preheader.i:                        ; preds = %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit228.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit228.thread.i
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv346.i
  %i.atn = load i32, ptr %i.atm, align 4, !tbaa !9
  br label %.lr.ph23.i232.i

.lr.ph23.i232.i:                                  ; preds = %._crit_edge.i237.i, %.lr.ph23.i232.preheader.i
  %indvars.iv30.i233.i = phi i64 [ 0, %.lr.ph23.i232.preheader.i ], [ %indvars.iv.next31.i236.i, %._crit_edge.i237.i ] ; 3 uses
  %indvars.iv.i234.i = phi i64 [ 1, %.lr.ph23.i232.preheader.i ], [ %indvars.iv.next.i239.i, %._crit_edge.i237.i ] ; 6 uses
  %.01620.i235.i = phi i64 [ 0, %.lr.ph23.i232.preheader.i ], [ %i.aux, %._crit_edge.i237.i ]
  %i.ato = sub i64 %i.aqa, %indvars.iv30.i233.i   ; 7 uses
  %i.atp = getelementptr inbounds nuw [4 x i8], ptr %i.aov, i64 %indvars.iv30.i233.i
  %i.atq = load i32, ptr %i.atp, align 4, !tbaa !9
  %i.atr = zext i32 %i.atq to i64                 ; 4 uses
  %indvars.iv.next31.i236.i = add nuw nsw i64 %indvars.iv30.i233.i, 1 ; 3 uses
  %i.ats = icmp samesign ult i64 %indvars.iv.next31.i236.i, %i.apv
  br i1 %i.ats, label %iter.check1890, label %._crit_edge.i237.i

iter.check1890:                                   ; preds = %.lr.ph23.i232.i
  %min.iters.check1866 = icmp ult i64 %i.ato, 4
  br i1 %min.iters.check1866, label %.lr.ph.i241.i.preheader, label %vector.main.loop.iter.check1867

vector.main.loop.iter.check1867:                  ; preds = %iter.check1890
  %min.iters.check1868 = icmp ult i64 %i.ato, 16
  br i1 %min.iters.check1868, label %vec.epilog.ph1894, label %vector.ph1869

vector.ph1869:                                    ; preds = %vector.main.loop.iter.check1867
  %i.att = and i64 %i.ato, 12
  %n.vec1870 = and i64 %i.ato, -16                ; 4 uses
  %i.atu = add i64 %indvars.iv.i234.i, %n.vec1870
  %i.atv = insertelement <4 x i64> <i64 poison, i64 1, i64 1, i64 1>, i64 %i.atr, i64 0
  %i.atw = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv.i234.i
  br label %vector.body1871

vector.body1871:                                  ; preds = %vector.body1871, %vector.ph1869
  %index1872 = phi i64 [ 0, %vector.ph1869 ], [ %index.next1881, %vector.body1871 ] ; 2 uses
  %vec.phi1873 = phi <4 x i64> [ %i.atv, %vector.ph1869 ], [ %i.auf, %vector.body1871 ]
  %vec.phi1874 = phi <4 x i64> [ splat (i64 1), %vector.ph1869 ], [ %i.aug, %vector.body1871 ]
  %vec.phi1875 = phi <4 x i64> [ splat (i64 1), %vector.ph1869 ], [ %i.auh, %vector.body1871 ]
  %vec.phi1876 = phi <4 x i64> [ splat (i64 1), %vector.ph1869 ], [ %i.aui, %vector.body1871 ]
  %i.atx = getelementptr inbounds nuw [4 x i8], ptr %i.atw, i64 %index1872 ; 4 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atx, i64 16
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atx, i64 32
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atx, i64 48
  %wide.load1877 = load <4 x i32>, ptr %i.atx, align 4, !tbaa !9
  %wide.load1878 = load <4 x i32>, ptr %i.aty, align 4, !tbaa !9
  %wide.load1879 = load <4 x i32>, ptr %i.atz, align 4, !tbaa !9
  %wide.load1880 = load <4 x i32>, ptr %i.aua, align 4, !tbaa !9
  %i.aub = zext <4 x i32> %wide.load1877 to <4 x i64>
  %i.auc = zext <4 x i32> %wide.load1878 to <4 x i64>
  %i.aud = zext <4 x i32> %wide.load1879 to <4 x i64>
  %i.aue = zext <4 x i32> %wide.load1880 to <4 x i64>
  %i.auf = mul <4 x i64> %vec.phi1873, %i.aub     ; 2 uses
  %i.aug = mul <4 x i64> %vec.phi1874, %i.auc     ; 2 uses
  %i.auh = mul <4 x i64> %vec.phi1875, %i.aud     ; 2 uses
  %i.aui = mul <4 x i64> %vec.phi1876, %i.aue     ; 2 uses
  %index.next1881 = add nuw i64 %index1872, 16    ; 2 uses
  %i.auj = icmp eq i64 %index.next1881, %n.vec1870
  br i1 %i.auj, label %middle.block1882, label %vector.body1871, !llvm.loop !127

middle.block1882:                                 ; preds = %vector.body1871
  %bin.rdx1883 = mul <4 x i64> %i.aug, %i.auf
  %bin.rdx1884 = mul <4 x i64> %i.auh, %bin.rdx1883
  %bin.rdx1885 = mul <4 x i64> %i.aui, %bin.rdx1884
  %i.auk = call i64 @llvm.vector.reduce.mul.v4i64(<4 x i64> %bin.rdx1885) ; 3 uses
  %cmp.n1886 = icmp eq i64 %i.ato, %n.vec1870
  br i1 %cmp.n1886, label %._crit_edge.i237.i, label %vec.epilog.iter.check1892

vec.epilog.iter.check1892:                        ; preds = %middle.block1882
  %min.epilog.iters.check1893 = icmp eq i64 %i.att, 0
  br i1 %min.epilog.iters.check1893, label %.lr.ph.i241.i.preheader, label %vec.epilog.ph1894, !prof !73

vec.epilog.ph1894:                                ; preds = %vector.main.loop.iter.check1867, %vec.epilog.iter.check1892
  %vec.epilog.resume.val1887 = phi i64 [ %n.vec1870, %vec.epilog.iter.check1892 ], [ 0, %vector.main.loop.iter.check1867 ]
  %bc.merge.rdx1889 = phi i64 [ %i.auk, %vec.epilog.iter.check1892 ], [ %i.atr, %vector.main.loop.iter.check1867 ]
  %n.vec1895 = and i64 %i.ato, -4                 ; 3 uses
  %i.aul = add i64 %indvars.iv.i234.i, %n.vec1895
  %i.aum = insertelement <4 x i64> <i64 poison, i64 1, i64 1, i64 1>, i64 %bc.merge.rdx1889, i64 0
  %i.aun = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv.i234.i
  br label %vec.epilog.vector.body1896

vec.epilog.vector.body1896:                       ; preds = %vec.epilog.vector.body1896, %vec.epilog.ph1894
  %index1897 = phi i64 [ %vec.epilog.resume.val1887, %vec.epilog.ph1894 ], [ %index.next1900, %vec.epilog.vector.body1896 ] ; 2 uses
  %vec.phi1898 = phi <4 x i64> [ %i.aum, %vec.epilog.ph1894 ], [ %i.auq, %vec.epilog.vector.body1896 ]
  %i.auo = getelementptr inbounds nuw [4 x i8], ptr %i.aun, i64 %index1897
  %wide.load1899 = load <4 x i32>, ptr %i.auo, align 4, !tbaa !9
  %i.aup = zext <4 x i32> %wide.load1899 to <4 x i64>
  %i.auq = mul <4 x i64> %vec.phi1898, %i.aup     ; 2 uses
  %index.next1900 = add nuw i64 %index1897, 4     ; 2 uses
  %i.aur = icmp eq i64 %index.next1900, %n.vec1895
  br i1 %i.aur, label %vec.epilog.middle.block1901, label %vec.epilog.vector.body1896, !llvm.loop !128

vec.epilog.middle.block1901:                      ; preds = %vec.epilog.vector.body1896
  %i.aus = call i64 @llvm.vector.reduce.mul.v4i64(<4 x i64> %i.auq) ; 2 uses
  %cmp.n1902 = icmp eq i64 %i.ato, %n.vec1895
  br i1 %cmp.n1902, label %._crit_edge.i237.i, label %.lr.ph.i241.i.preheader

.lr.ph.i241.i.preheader:                          ; preds = %iter.check1890, %vec.epilog.iter.check1892, %vec.epilog.middle.block1901
  %indvars.iv27.i242.i.ph = phi i64 [ %indvars.iv.i234.i, %iter.check1890 ], [ %i.atu, %vec.epilog.iter.check1892 ], [ %i.aul, %vec.epilog.middle.block1901 ]
  %.01518.i243.i.ph = phi i64 [ %i.atr, %iter.check1890 ], [ %i.auk, %vec.epilog.iter.check1892 ], [ %i.aus, %vec.epilog.middle.block1901 ]
  br label %.lr.ph.i241.i

.lr.ph.i241.i:                                    ; preds = %.lr.ph.i241.i.preheader, %.lr.ph.i241.i
  %indvars.iv27.i242.i = phi i64 [ %indvars.iv.next28.i244.i, %.lr.ph.i241.i ], [ %indvars.iv27.i242.i.ph, %.lr.ph.i241.i.preheader ] ; 2 uses
  %.01518.i243.i = phi i64 [ %i.auw, %.lr.ph.i241.i ], [ %.01518.i243.i.ph, %.lr.ph.i241.i.preheader ]
  %i.aut = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv27.i242.i
  %i.auu = load i32, ptr %i.aut, align 4, !tbaa !9
  %i.auv = zext i32 %i.auu to i64
  %i.auw = mul i64 %.01518.i243.i, %i.auv         ; 2 uses
  %indvars.iv.next28.i244.i = add nuw nsw i64 %indvars.iv27.i242.i, 1 ; 2 uses
  %exitcond.not.i245.i = icmp eq i64 %indvars.iv.next28.i244.i, %i.apv
  br i1 %exitcond.not.i245.i, label %._crit_edge.i237.i, label %.lr.ph.i241.i, !llvm.loop !129

._crit_edge.i237.i:                               ; preds = %.lr.ph.i241.i, %middle.block1882, %vec.epilog.middle.block1901, %.lr.ph23.i232.i
  %.015.lcssa.i238.i = phi i64 [ %i.atr, %.lr.ph23.i232.i ], [ %i.aus, %vec.epilog.middle.block1901 ], [ %i.auk, %middle.block1882 ], [ %i.auw, %.lr.ph.i241.i ]
  %i.aux = add i64 %.015.lcssa.i238.i, %.01620.i235.i ; 2 uses
  %indvars.iv.next.i239.i = add nuw nsw i64 %indvars.iv.i234.i, 1
  %exitcond34.not.i240.i = icmp eq i64 %indvars.iv.next31.i236.i, %i.apv
  br i1 %exitcond34.not.i240.i, label %_ZL6indexniPKiS0_.exit246.i, label %.lr.ph23.i232.i, !llvm.loop !76

_ZL6indexniPKiS0_.exit246.i:                      ; preds = %._crit_edge.i237.i
  %i.auy = add nsw i32 %i.atn, -1                 ; 2 uses
  %i.auz = icmp eq i32 %i.ars, %i.auy
  br i1 %i.auz, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit247.i.thread, label %bb.bx

bb.bx:                                            ; preds = %_ZL6indexniPKiS0_.exit246.i
  %i.ava = icmp slt i32 %i.ars, %i.auy
  br i1 %i.ava, label %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit247.i, label %._crit_edge313.thread.i

._crit_edge313.thread.i:                          ; preds = %bb.bx, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit228.i, %_ZL27is_local_minimum_from_belowPK9t_minimumiiiPKf.exit228.thread270.i
  store i32 %i.ars, ptr %i.arr, align 4, !tbaa !9
  br label %bb.by

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit247.i: ; preds = %bb.bx
  %sext271.i = shl i64 %i.aux, 32
  %i.avb = ashr exact i64 %sext271.i, 30
  %i.avc = getelementptr inbounds i8, ptr %i.gd, i64 %i.avb
  %i.avd = load float, ptr %i.avc, align 4, !tbaa !28
  %i.ave = fcmp olt float %i.arq, %i.avd          ; 2 uses
  store i32 %i.ars, ptr %i.arr, align 4, !tbaa !9
  %indvars.iv.next347.i = add nuw nsw i64 %indvars.iv346.i, 1 ; 2 uses
  %i.avf = icmp slt i64 %indvars.iv.next347.i, %i.s
  %i.avg = select i1 %i.ave, i1 %i.avf, i1 false
  br i1 %i.avg, label %.lr.ph23.i213.preheader.i.backedge, label %._crit_edge313.i

.lr.ph23.i213.preheader.i.backedge:               ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit247.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit247.i.thread
  %indvars.iv346.i.be = phi i64 [ %indvars.iv.next347.i, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit247.i ], [ %indvars.iv.next347.i1097, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit247.i.thread ]
  br label %.lr.ph23.i213.preheader.i, !llvm.loop !130

_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit247.i.thread: ; preds = %_ZL6indexniPKiS0_.exit246.i
  store i32 %i.ars, ptr %i.arr, align 4, !tbaa !9
  %indvars.iv.next347.i1097 = add nuw nsw i64 %indvars.iv346.i, 1 ; 2 uses
  %i.avh = icmp slt i64 %indvars.iv.next347.i1097, %i.s
  br i1 %i.avh, label %.lr.ph23.i213.preheader.i.backedge, label %.critedge.i

._crit_edge313.i:                                 ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit247.i
  br i1 %i.ave, label %.critedge.i, label %bb.by

.critedge.i:                                      ; preds = %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit247.i.thread, %._crit_edge313.i, %_ZL6indexniPKiS0_.exit.thread.i
  %i.avi = phi float [ %i.aqe, %_ZL6indexniPKiS0_.exit.thread.i ], [ %i.arq, %._crit_edge313.i ], [ %i.arq, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit247.i.thread ] ; 2 uses
  %.016.lcssa.i415.i = phi i64 [ 0, %_ZL6indexniPKiS0_.exit.thread.i ], [ %i.aro, %._crit_edge313.i ], [ %i.aro, %_ZL27is_local_minimum_from_abovePK9t_minimumiiiPKf.exit247.i.thread ] ; 2 uses
  %i.avj = fpext float %i.avi to double
  %i.avk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.act, ptr noundef nonnull @.str.175, i32 noundef %.7318.i, i64 noundef %.016.lcssa.i415.i, double noundef %i.avj) #18 ; 0 uses
  %i.avl = sext i32 %.7318.i to i64
  %i.avm = getelementptr inbounds [16 x i8], ptr %i.acs, i64 %i.avl ; 2 uses
  store i64 %.016.lcssa.i415.i, ptr %i.avm, align 8, !tbaa !106
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avm, i64 8
  store float %i.avi, ptr %i.avn, align 8, !tbaa !108
  %i.avo = add nsw i32 %.7318.i, 1
  br label %bb.by

bb.by:                                            ; preds = %.critedge.i, %._crit_edge313.i, %._crit_edge313.thread.i
  %.8.i = phi i32 [ %i.avo, %.critedge.i ], [ %.7318.i, %._crit_edge313.i ], [ %.7318.i, %._crit_edge313.thread.i ] ; 2 uses
  %i.avp = add nuw nsw i32 %.0155319.i, 1         ; 3 uses
  %i.avq = icmp sgt i32 %.0156.lcssa.i, %i.avp
  br i1 %i.avq, label %bb.bz, label %.loopexit.i

bb.bz:                                            ; preds = %bb.by
  %i.avr = load i32, ptr %i.apy, align 4, !tbaa !9
  %i.avs = add nsw i32 %i.avr, 1                  ; 2 uses
  store i32 %i.avs, ptr %i.apy, align 4, !tbaa !9
  %i.avt = load i32, ptr %i.apz, align 4, !tbaa !9
  %i.avu = icmp eq i32 %i.avt, %i.avs
  br i1 %i.avu, label %.lr.ph317.i, label %.loopexit.i

.lr.ph317.i:                                      ; preds = %bb.bz, %.lr.ph317.i
  %indvars.iv349.i = phi i64 [ %indvars.iv.next350.i, %.lr.ph317.i ], [ %i.apx, %bb.bz ]
  %i.avv = phi ptr [ %i.avw, %.lr.ph317.i ], [ %i.apy, %bb.bz ]
  store i32 0, ptr %i.avv, align 4, !tbaa !9
  %indvars.iv.next350.i = add nsw i64 %indvars.iv349.i, -1 ; 3 uses
  %i.avw = getelementptr inbounds [4 x i8], ptr %i.aov, i64 %indvars.iv.next350.i ; 3 uses
  %i.avx = load i32, ptr %i.avw, align 4, !tbaa !9
  %i.avy = add nsw i32 %i.avx, 1                  ; 2 uses
  store i32 %i.avy, ptr %i.avw, align 4, !tbaa !9
  %i.avz = getelementptr inbounds [4 x i8], ptr %22, i64 %indvars.iv.next350.i
  %i.awa = load i32, ptr %i.avz, align 4, !tbaa !9
  %i.awb = icmp eq i32 %i.awa, %i.avy
  br i1 %i.awb, label %.lr.ph317.i, label %.loopexit.i, !llvm.loop !131

.loopexit.i:                                      ; preds = %.lr.ph317.i, %bb.bz, %bb.by
  %exitcond352.not.i = icmp eq i32 %i.avp, %.0156.lcssa.i
  br i1 %exitcond352.not.i, label %._crit_edge321.i, label %bb.bv, !llvm.loop !132

._crit_edge321.i:                                 ; preds = %.loopexit.i, %.preheader.i
  %.7.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.8.i, %.loopexit.i ]
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.97, i32 noundef 429, ptr noundef %i.aov)
  br label %.loopexit274.i

.loopexit274.i:                                   ; preds = %._crit_edge288.i, %._crit_edge298.i, %._crit_edge321.i, %.preheader272.lr.ph.i, %.preheader273.i, %.preheader276.lr.ph.i, %.preheader277.i, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i
  %.9.i = phi i32 [ %.7.lcssa.i, %._crit_edge321.i ], [ %9, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i ], [ 0, %.preheader276.lr.ph.i ], [ 0, %.preheader273.i ], [ 0, %.preheader272.lr.ph.i ], [ 0, %.preheader277.i ], [ %.1158.lcssa.i, %._crit_edge298.i ], [ %.4161.lcssa.i, %._crit_edge288.i ] ; 3 uses
end_hunk_0
