loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dlaqr5_:bb.a
  %i.aje = add i32 %i.ep, %i.ajd
  %i.ajf = add i32 %.013681550, %i.ajd
  %i.ajg = mul i64 %i.cs, %smin1609
  %scevgep1899 = getelementptr i8, ptr %scevgep1898.a, i64 %i.ajg ; 3 uses
  %smin1901.a = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.aja)
  %smin1902 = call i64 @llvm.smin.i64(i64 %smin1901.a, i64 %i.aiz)
  %i.ajh = mul i64 %i.cu, %smin1902
  %scevgep1903 = getelementptr i8, ptr %scevgep1900, i64 %i.ajh ; 3 uses
  %smax1887.a = call i64 @llvm.smax.i64(i64 %i.ajb, i64 %i.aiy)
  br label %bb.bv

bb.bv:                                            ; preds = %.lr.ph1531, %._crit_edge1527
  %indvar1884 = phi i32 [ 0, %.lr.ph1531 ], [ %indvar.next1885, %._crit_edge1527 ] ; 2 uses
  %indvars.iv1610 = phi i64 [ %smin1609, %.lr.ph1531 ], [ %indvars.iv.next1611, %._crit_edge1527 ] ; 4 uses
  %indvars.iv1604 = phi i32 [ %i.fe, %.lr.ph1531 ], [ %indvars.iv.next1605, %._crit_edge1527 ] ; 4 uses
  %i.aji = sext i32 %indvars.iv1604 to i64        ; 2 uses
  %smax1883 = call i64 @llvm.smax.i64(i64 %i.ajb, i64 %i.aji) ; 2 uses
  %i.ajj = mul i32 %indvar1884, -2                ; 2 uses
  %i.ajk = add i32 %i.aje, %i.ajj
  %i.ajl = sext i32 %i.ajk to i64                 ; 2 uses
  %i.ajm = add i64 %smax1883, %i.ajl
  %i.ajn = shl i64 %i.ajm, 3                      ; 2 uses
  %scevgep1886 = getelementptr i8, ptr %scevgep1882, i64 %i.ajn ; 3 uses
  %smax1888 = call i64 @llvm.smax.i64(i64 %smax1887.a, i64 %i.aji) ; 2 uses
  %i.ajo = add i64 %smax1888, %i.ajl
  %i.ajp = shl nsw i64 %i.ajo, 3                  ; 2 uses
  %scevgep1889 = getelementptr i8, ptr %9, i64 %i.ajp ; 3 uses
  %i.ajq = add i32 %i.ajf, %i.ajj
  %i.ajr = sext i32 %i.ajq to i64                 ; 2 uses
  %i.ajs = add i64 %smax1883, %i.ajr
  %i.ajt = shl i64 %i.ajs, 3
  %scevgep1891 = getelementptr i8, ptr %scevgep1890.a, i64 %i.ajt ; 3 uses
  %i.aju = add i64 %smax1888, %i.ajr
  %i.ajv = shl nsw i64 %i.aju, 3
  %scevgep1893 = getelementptr i8, ptr %scevgep1892.a, i64 %i.ajv ; 3 uses
  %scevgep1895 = getelementptr i8, ptr %scevgep1894.a, i64 %i.ajn ; 3 uses
  %scevgep1897 = getelementptr i8, ptr %scevgep1896.a, i64 %i.ajp ; 3 uses
  %i.ajw = trunc nsw i64 %indvars.iv1610 to i32
  %i.ajx = shl i32 %i.ajw, 1                      ; 2 uses
  %i.ajy = add i32 %i.ajx, %.013681550            ; 2 uses
  %i.ajz = call i32 @llvm.smax.i32(i32 %i.ait, i32 %i.ajy)
  %.not14681523 = icmp sgt i32 %i.ajz, %.113881695
  br i1 %.not14681523, label %._crit_edge1527, label %.lr.ph1526

.lr.ph1526:                                       ; preds = %bb.bv
  %i.aka = call i32 @llvm.smax.i32(i32 %i.ait, i32 %indvars.iv1604)
  %smax1606 = sext i32 %i.aka to i64              ; 5 uses
  %i.akb = add i32 %i.aix, %i.ajx                 ; 2 uses
  %i.akc = mul nsw i64 %indvars.iv1610, %i.bw
  %i.akd = getelementptr [8 x i8], ptr %i.s, i64 %i.akc ; 3 uses
  %i.ake = getelementptr i8, ptr %i.akd, i64 8    ; 2 uses
  %i.akf = getelementptr i8, ptr %i.akd, i64 16   ; 3 uses
  %i.akg = getelementptr i8, ptr %i.akd, i64 24   ; 3 uses
  %i.akh = sext i32 %i.ajy to i64
  %i.aki = sext i32 %i.akb to i64
  %invariant.gep1721 = getelementptr [8 x i8], ptr %i.m, i64 %i.aki ; 2 uses
  %invariant.gep1723 = getelementptr [8 x i8], ptr %i.m, i64 %i.akh ; 2 uses
  %i.akj = sext i32 %i.akb to i64
  %invariant.gep1725 = getelementptr [8 x i8], ptr %i.m, i64 %i.akj ; 2 uses
  %i.akk = call i32 @llvm.smax.i32(i32 %.113881695, i32 %indvars.iv1604)
  %i.akl = sext i32 %i.akk to i64
  %i.akm = sub nsw i64 %i.akl, %smax1606
  %i.akn = add nsw i64 %i.akm, 1                  ; 3 uses
  %min.iters.check1931 = icmp ugt i64 %i.akn, 7
  %or.cond2209 = select i1 %min.iters.check1931, i1 %ident.check.not, i1 false
  br i1 %or.cond2209, label %vector.memcheck1881, label %scalar.ph1930.preheader

vector.memcheck1881:                              ; preds = %.lr.ph1526
  %bound01904 = icmp ult ptr %scevgep1886, %scevgep1893
  %bound11905 = icmp ult ptr %scevgep1891, %scevgep1889
  %found.conflict1906 = and i1 %bound01904, %bound11905
  %bound01907 = icmp ult ptr %scevgep1886, %scevgep1897
  %bound11908 = icmp ult ptr %scevgep1895, %scevgep1889
  %found.conflict1909 = and i1 %bound01907, %bound11908
  %conflict.rdx1910 = or i1 %found.conflict1906, %found.conflict1909
  %bound01911 = icmp ult ptr %scevgep1886, %scevgep1903
  %bound11912 = icmp ult ptr %scevgep1899, %scevgep1889
  %found.conflict1913 = and i1 %bound01911, %bound11912
  %i.ako = or i1 %found.conflict1913, %stride.check1914
  %conflict.rdx1915 = or i1 %conflict.rdx1910, %i.ako
  %bound01916 = icmp ult ptr %scevgep1891, %scevgep1897
  %bound11917 = icmp ult ptr %scevgep1895, %scevgep1893
  %found.conflict1918 = and i1 %bound01916, %bound11917
  %conflict.rdx1919 = or i1 %conflict.rdx1915, %found.conflict1918
  %bound01920 = icmp ult ptr %scevgep1891, %scevgep1903
  %bound11921 = icmp ult ptr %scevgep1899, %scevgep1893
  %found.conflict1922 = and i1 %bound01920, %bound11921
  %conflict.rdx1924 = or i1 %found.conflict1922, %conflict.rdx1919
  %bound01925 = icmp ult ptr %scevgep1895, %scevgep1903
  %bound11926 = icmp ult ptr %scevgep1899, %scevgep1897
  %found.conflict1927 = and i1 %bound01925, %bound11926
  %conflict.rdx1929 = or i1 %found.conflict1927, %conflict.rdx1924
  br i1 %conflict.rdx1929, label %scalar.ph1930.preheader, label %vector.ph1932

vector.ph1932:                                    ; preds = %vector.memcheck1881
  %n.vec1933 = and i64 %i.akn, -2                 ; 3 uses
  %i.akp = add nsw i64 %n.vec1933, %smax1606
  %i.akq = load double, ptr %i.ake, align 8, !tbaa !9, !alias.scope !69
  %broadcast.splatinsert1943 = insertelement <2 x double> poison, double %i.akq, i64 0
  %broadcast.splat1944 = shufflevector <2 x double> %broadcast.splatinsert1943, <2 x double> poison, <2 x i32> zeroinitializer
  %i.akr = load double, ptr %i.akf, align 8, !tbaa !9, !alias.scope !69 ; 2 uses
  %broadcast.splatinsert1938 = insertelement <2 x double> poison, double %i.akr, i64 0
  %broadcast.splat1939 = shufflevector <2 x double> %broadcast.splatinsert1938, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aks = load double, ptr %i.akg, align 8, !tbaa !9, !alias.scope !69 ; 2 uses
  %broadcast.splatinsert1941 = insertelement <2 x double> poison, double %i.aks, i64 0
  %broadcast.splat1942 = shufflevector <2 x double> %broadcast.splatinsert1941, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1946 = insertelement <2 x double> poison, double %i.akr, i64 0
  %broadcast.splat1947 = shufflevector <2 x double> %broadcast.splatinsert1946, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1949 = insertelement <2 x double> poison, double %i.aks, i64 0
  %broadcast.splat1950 = shufflevector <2 x double> %broadcast.splatinsert1949, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1934

vector.body1934:                                  ; preds = %vector.body1934, %vector.ph1932
  %index1935 = phi i64 [ 0, %vector.ph1932 ], [ %index.next1951, %vector.body1934 ] ; 2 uses
  %i.akt = add i64 %index1935, %smax1606          ; 3 uses
  %i.aku = getelementptr [8 x i8], ptr %invariant.gep1721, i64 %i.akt
  %i.akv = getelementptr i8, ptr %i.aku, i64 8    ; 2 uses
  %wide.load1936.a = load <2 x double>, ptr %i.akv, align 8, !tbaa !9, !alias.scope !72, !noalias !74 ; 2 uses
  %i.akw = getelementptr [8 x i8], ptr %invariant.gep1723, i64 %i.akt ; 3 uses
  %wide.load1937 = load <2 x double>, ptr %i.akw, align 8, !tbaa !9, !alias.scope !77, !noalias !78
  %i.akx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1939, <2 x double> %wide.load1937, <2 x double> %wide.load1936.a)
  %i.aky = getelementptr [8 x i8], ptr %invariant.gep1725, i64 %i.akt
  %i.akz = getelementptr i8, ptr %i.aky, i64 24   ; 3 uses
  %wide.load1940 = load <2 x double>, ptr %i.akz, align 8, !tbaa !9, !alias.scope !79, !noalias !69
  %i.ala = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1942, <2 x double> %wide.load1940, <2 x double> %i.akx)
  %i.alb = fmul <2 x double> %broadcast.splat1944, %i.ala ; 2 uses
  %i.alc = fsub <2 x double> %wide.load1936.a, %i.alb
  store <2 x double> %i.alc, ptr %i.akv, align 8, !tbaa !9, !alias.scope !72, !noalias !74
  %wide.load1945 = load <2 x double>, ptr %i.akw, align 8, !tbaa !9, !alias.scope !77, !noalias !78
  %i.ald = fneg <2 x double> %i.alb               ; 2 uses
  %i.ale = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ald, <2 x double> %broadcast.splat1947, <2 x double> %wide.load1945)
  store <2 x double> %i.ale, ptr %i.akw, align 8, !tbaa !9, !alias.scope !77, !noalias !78
  %wide.load1948 = load <2 x double>, ptr %i.akz, align 8, !tbaa !9, !alias.scope !79, !noalias !69
  %i.alf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ald, <2 x double> %broadcast.splat1950, <2 x double> %wide.load1948)
  store <2 x double> %i.alf, ptr %i.akz, align 8, !tbaa !9, !alias.scope !79, !noalias !69
  %index.next1951 = add nuw i64 %index1935, 2     ; 2 uses
  %i.alg = icmp eq i64 %index.next1951, %n.vec1933
  br i1 %i.alg, label %middle.block1952, label %vector.body1934, !llvm.loop !80

middle.block1952:                                 ; preds = %vector.body1934
  %cmp.n1953 = icmp eq i64 %i.akn, %n.vec1933
  br i1 %cmp.n1953, label %._crit_edge1527, label %scalar.ph1930.preheader

scalar.ph1930.preheader:                          ; preds = %vector.memcheck1881, %.lr.ph1526, %middle.block1952
  %indvars.iv1607.ph = phi i64 [ %smax1606, %vector.memcheck1881 ], [ %smax1606, %.lr.ph1526 ], [ %i.akp, %middle.block1952 ]
  br label %scalar.ph1930

scalar.ph1930:                                    ; preds = %scalar.ph1930.preheader, %scalar.ph1930
  %indvars.iv1607 = phi i64 [ %indvars.iv.next1608, %scalar.ph1930 ], [ %indvars.iv1607.ph, %scalar.ph1930.preheader ] ; 3 uses
  %i.alh = load double, ptr %i.ake, align 8, !tbaa !9
  %i.ali = mul nsw i64 %indvars.iv1607, %i.bt     ; 3 uses
  %gep1722 = getelementptr [8 x i8], ptr %invariant.gep1721, i64 %i.ali
  %i.alj = getelementptr i8, ptr %gep1722, i64 8  ; 2 uses
  %i.alk = load double, ptr %i.alj, align 8, !tbaa !9 ; 2 uses
  %i.all = load double, ptr %i.akf, align 8, !tbaa !9
  %gep1724 = getelementptr [8 x i8], ptr %invariant.gep1723, i64 %i.ali ; 3 uses
  %i.alm = load double, ptr %gep1724, align 8, !tbaa !9
  %i.aln = call double @llvm.fmuladd.f64(double %i.all, double %i.alm, double %i.alk)
  %i.alo = load double, ptr %i.akg, align 8, !tbaa !9
  %gep1726 = getelementptr [8 x i8], ptr %invariant.gep1725, i64 %i.ali
  %i.alp = getelementptr i8, ptr %gep1726, i64 24 ; 3 uses
  %i.alq = load double, ptr %i.alp, align 8, !tbaa !9
  %i.alr = call double @llvm.fmuladd.f64(double %i.alo, double %i.alq, double %i.aln)
  %i.als = fmul double %i.alh, %i.alr             ; 2 uses
  %i.alt = fsub double %i.alk, %i.als
  store double %i.alt, ptr %i.alj, align 8, !tbaa !9
  %i.alu = load double, ptr %i.akf, align 8, !tbaa !9
  %i.alv = load double, ptr %gep1724, align 8, !tbaa !9
  %i.alw = fneg double %i.als                     ; 2 uses
  %i.alx = call double @llvm.fmuladd.f64(double %i.alw, double %i.alu, double %i.alv)
  store double %i.alx, ptr %gep1724, align 8, !tbaa !9
  %i.aly = load double, ptr %i.akg, align 8, !tbaa !9
  %i.alz = load double, ptr %i.alp, align 8, !tbaa !9
  %i.ama = call double @llvm.fmuladd.f64(double %i.alw, double %i.aly, double %i.alz)
  store double %i.ama, ptr %i.alp, align 8, !tbaa !9
  %indvars.iv.next1608 = add nsw i64 %indvars.iv1607, 1
  %.not1468.not = icmp slt i64 %indvars.iv1607, %i.aiy
  br i1 %.not1468.not, label %scalar.ph1930, label %._crit_edge1527, !llvm.loop !81

._crit_edge1527:                                  ; preds = %scalar.ph1930, %middle.block1952, %bb.bv
  %indvars.iv.next1611 = add nsw i64 %indvars.iv1610, -1
  %.not1458.not = icmp sgt i64 %indvars.iv1610, %i.aja
  %indvars.iv.next1605 = add i32 %indvars.iv1604, -2
  %indvar.next1885 = add i32 %indvar1884, 1
  br i1 %.not1458.not, label %bb.bv, label %._crit_edge1532, !llvm.loop !82

._crit_edge1532:                                  ; preds = %._crit_edge1527
  br i1 %i.bn, label %.preheader, label %bb.bx

.preheader:                                       ; preds = %._crit_edge1532
  br i1 %.not14551518, label %.loopexit, label %.lr.ph1548

.lr.ph1548:                                       ; preds = %.preheader
  %i.amb = add i32 %i.ee, %.013681550
  %i.amc = sub nsw i32 %i.aiu, %.013691572
  %i.amd = load i32, ptr %i.h, align 4, !tbaa !8
  %.reass = add i32 %i.ef, %i.fe
  %i.ame = call i32 @llvm.smin.i32(i32 %i.amd, i32 %.reass) ; 2 uses
  %i.amf = add i32 %i.fd, -1
  %i.amg = add i32 %indvars.iv1594, %i.aiu        ; 2 uses
  %25 = sext i32 %i.ame to i64                    ; 3 uses
  %i.amh = sext i32 %i.ez to i64
  %smin1627 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.amh)
  %i.ami = sext i32 %i.ew to i64
  %i.amj = trunc i64 %smin1609 to i32
  %i.amk = shl nsw i32 %i.amj, 1                  ; 3 uses
  %i.aml = add i32 %i.er, %i.amk
  %i.amm = mul i32 %i.t, %i.aml
  %i.amn = add i32 %indvar, %i.amk
  %i.amo = mul i32 %i.t, %i.amn
  %i.amp = add i32 %i.es, %i.amk
  %i.amq = mul i32 %i.t, %i.amp
  %i.amr = mul i64 %i.cb, %smin1609
  %scevgep1767 = getelementptr i8, ptr %scevgep1766.a, i64 %i.amr ; 3 uses
  %i.ams = mul i64 %i.cd, %i.aja
  %scevgep1769 = getelementptr i8, ptr %scevgep1768.a, i64 %i.ams ; 3 uses
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph1548, %._crit_edge1545
  %indvar1750 = phi i32 [ 0, %.lr.ph1548 ], [ %indvar.next1751, %._crit_edge1545 ] ; 2 uses
  %indvars.iv1628 = phi i64 [ %smin1627, %.lr.ph1548 ], [ %indvars.iv.next1629, %._crit_edge1545 ] ; 4 uses
  %indvars.iv1620 = phi i32 [ %i.amf, %.lr.ph1548 ], [ %indvars.iv.next1621, %._crit_edge1545 ] ; 3 uses
  %i.amt = mul i32 %i.by, %indvar1750             ; 3 uses
  %i.amu = add i32 %i.amm, %i.amt
  %i.amv = sext i32 %i.amu to i64                 ; 2 uses
  %smax1752 = call i32 @llvm.smax.i32(i32 %indvars.iv1620, i32 %i.amg)
  %smax1753 = call i32 @llvm.smax.i32(i32 %smax1752, i32 1)
  %i.amw = zext nneg i32 %smax1753 to i64         ; 4 uses
  %i.amx = add nsw i64 %i.amv, %i.amw
  %i.amy = shl nsw i64 %i.amx, 3
  %scevgep1754 = getelementptr i8, ptr %scevgep, i64 %i.amy ; 3 uses
  %smax1756 = call i64 @llvm.smax.i64(i64 %25, i64 %i.amw) ; 3 uses
  %i.amz = add i64 %smax1756, %i.u
  %i.ana = add i64 %i.amz, %i.amv
  %i.anb = shl nsw i64 %i.ana, 3
  %scevgep1757 = getelementptr i8, ptr %scevgep1755, i64 %i.anb ; 3 uses
  %i.anc = add i32 %i.amo, %i.amt
  %i.and = sext i32 %i.anc to i64                 ; 2 uses
  %i.ane = add nsw i64 %i.and, %i.amw
  %i.anf = shl nsw i64 %i.ane, 3
  %scevgep1759 = getelementptr i8, ptr %scevgep1758.a, i64 %i.anf ; 3 uses
  %i.ang = add i64 %smax1756, %i.u
  %i.anh = add i64 %i.ang, %i.and
  %i.ani = shl nsw i64 %i.anh, 3
  %scevgep1761 = getelementptr i8, ptr %scevgep1760.a, i64 %i.ani ; 3 uses
  %i.anj = add i32 %i.amq, %i.amt
  %i.ank = sext i32 %i.anj to i64                 ; 2 uses
  %i.anl = add nsw i64 %i.ank, %i.amw
  %i.anm = shl nsw i64 %i.anl, 3
  %scevgep1763 = getelementptr i8, ptr %scevgep1762.a, i64 %i.anm ; 3 uses
  %i.ann = add i64 %smax1756, %i.u
  %i.ano = add i64 %i.ann, %i.ank
  %i.anp = shl nsw i64 %i.ano, 3
  %scevgep1765 = getelementptr i8, ptr %scevgep1764.a, i64 %i.anp ; 3 uses
  %i.anq = trunc nsw i64 %indvars.iv1628 to i32
  %i.anr = shl i32 %i.anq, 1                      ; 2 uses
  %i.ans = add i32 %i.anr, -1
  %i.ant = call i32 @llvm.smax.i32(i32 %i.amc, i32 %i.ans)
  %i.anu = call i32 @llvm.smax.i32(i32 %i.ant, i32 1)
  %.not14661541 = icmp sgt i32 %i.anu, %i.ame
  br i1 %.not14661541, label %._crit_edge1545, label %.lr.ph1544

.lr.ph1544:                                       ; preds = %bb.bw
  %smax1622 = call i32 @llvm.smax.i32(i32 %indvars.iv1620, i32 %i.amg)
  %smax1623 = call i32 @llvm.smax.i32(i32 %smax1622, i32 1)
  %i.anv = zext nneg i32 %smax1623 to i64         ; 6 uses
  %i.anw = add i32 %i.amb, %i.anr                 ; 3 uses
  %i.anx = mul nsw i64 %indvars.iv1628, %i.bw
  %i.any = getelementptr [8 x i8], ptr %i.s, i64 %i.anx ; 3 uses
  %i.anz = getelementptr i8, ptr %i.any, i64 8    ; 2 uses
  %i.aoa = add nsw i32 %i.anw, 1
  %i.aob = mul nsw i32 %i.aoa, %i.t
  %i.aoc = getelementptr i8, ptr %i.any, i64 16   ; 3 uses
  %i.aod = add nsw i32 %i.anw, 2
  %i.aoe = mul nsw i32 %i.aod, %i.t
  %i.aof = getelementptr i8, ptr %i.any, i64 24   ; 3 uses
  %i.aog = add nsw i32 %i.anw, 3
  %i.aoh = mul nsw i32 %i.aog, %i.t
  %i.aoi = sext i32 %i.aob to i64
  %i.aoj = sext i32 %i.aoe to i64
  %i.aok = sext i32 %i.aoh to i64
  %invariant.gep1733 = getelementptr [8 x i8], ptr %i.v, i64 %i.aoi ; 2 uses
  %invariant.gep1735 = getelementptr [8 x i8], ptr %i.v, i64 %i.aoj ; 2 uses
  %invariant.gep1737 = getelementptr [8 x i8], ptr %i.v, i64 %i.aok ; 2 uses
  %i.aol = call i64 @llvm.smax.i64(i64 %25, i64 %i.anv)
  %26 = sub nsw i64 %i.aol, %i.anv
  %i.aom = add i64 %26, 1                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.aom, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1544
  %bound0 = icmp ult ptr %scevgep1754, %scevgep1761
  %bound1 = icmp ult ptr %scevgep1759, %scevgep1757
  %found.conflict = and i1 %bound0, %bound1
  %bound01770 = icmp ult ptr %scevgep1754, %scevgep1765
  %bound11771 = icmp ult ptr %scevgep1763, %scevgep1757
  %found.conflict1772 = and i1 %bound01770, %bound11771
  %conflict.rdx = or i1 %found.conflict, %found.conflict1772
  %bound01773 = icmp ult ptr %scevgep1754, %scevgep1769
  %bound11774 = icmp ult ptr %scevgep1767, %scevgep1757
  %found.conflict1775 = and i1 %bound01773, %bound11774
  %i.aon = or i1 %found.conflict1775, %stride.check
  %conflict.rdx1776 = or i1 %conflict.rdx, %i.aon
  %bound01777 = icmp ult ptr %scevgep1759, %scevgep1765
  %bound11778 = icmp ult ptr %scevgep1763, %scevgep1761
  %found.conflict1779 = and i1 %bound01777, %bound11778
  %conflict.rdx1780 = or i1 %conflict.rdx1776, %found.conflict1779
  %bound01781 = icmp ult ptr %scevgep1759, %scevgep1769
  %bound11782 = icmp ult ptr %scevgep1767, %scevgep1761
  %found.conflict1783 = and i1 %bound01781, %bound11782
  %conflict.rdx1785 = or i1 %found.conflict1783, %conflict.rdx1780
  %bound01786 = icmp ult ptr %scevgep1763, %scevgep1769
  %bound11787 = icmp ult ptr %scevgep1767, %scevgep1765
  %found.conflict1788 = and i1 %bound01786, %bound11787
  %conflict.rdx1790 = or i1 %found.conflict1788, %conflict.rdx1785
  br i1 %conflict.rdx1790, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aom, -4                     ; 3 uses
  %i.aoo = add i64 %n.vec, %i.anv
  %i.aop = load double, ptr %i.anz, align 8, !tbaa !9, !alias.scope !83
  %broadcast.splatinsert1795 = insertelement <4 x double> poison, double %i.aop, i64 0
  %broadcast.splat1796 = shufflevector <4 x double> %broadcast.splatinsert1795, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aoq = load double, ptr %i.aoc, align 8, !tbaa !9, !alias.scope !83 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.aoq, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aor = load double, ptr %i.aof, align 8, !tbaa !9, !alias.scope !83 ; 2 uses
  %broadcast.splatinsert1793 = insertelement <4 x double> poison, double %i.aor, i64 0
  %broadcast.splat1794 = shufflevector <4 x double> %broadcast.splatinsert1793, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1798 = insertelement <4 x double> poison, double %i.aoq, i64 0
  %broadcast.splat1799 = shufflevector <4 x double> %broadcast.splatinsert1798, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1801 = insertelement <4 x double> poison, double %i.aor, i64 0
  %broadcast.splat1802 = shufflevector <4 x double> %broadcast.splatinsert1801, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aos = add nuw i64 %index, %i.anv             ; 3 uses
  %i.aot = getelementptr [8 x i8], ptr %invariant.gep1733, i64 %i.aos ; 2 uses
  %wide.load = load <4 x double>, ptr %i.aot, align 8, !tbaa !9, !alias.scope !86, !noalias !88 ; 2 uses
  %i.aou = getelementptr [8 x i8], ptr %invariant.gep1735, i64 %i.aos ; 3 uses
  %wide.load1791.a = load <4 x double>, ptr %i.aou, align 8, !tbaa !9, !alias.scope !91, !noalias !92
  %i.aov = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load1791.a, <4 x double> %wide.load)
  %i.aow = getelementptr [8 x i8], ptr %invariant.gep1737, i64 %i.aos ; 3 uses
  %wide.load1792 = load <4 x double>, ptr %i.aow, align 8, !tbaa !9, !alias.scope !93, !noalias !83
  %i.aox = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1794, <4 x double> %wide.load1792, <4 x double> %i.aov)
  %i.aoy = fmul <4 x double> %broadcast.splat1796, %i.aox ; 2 uses
  %i.aoz = fsub <4 x double> %wide.load, %i.aoy
  store <4 x double> %i.aoz, ptr %i.aot, align 8, !tbaa !9, !alias.scope !86, !noalias !88
  %wide.load1797 = load <4 x double>, ptr %i.aou, align 8, !tbaa !9, !alias.scope !91, !noalias !92
  %i.apa = fneg <4 x double> %i.aoy               ; 2 uses
  %i.apb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.apa, <4 x double> %broadcast.splat1799, <4 x double> %wide.load1797)
  store <4 x double> %i.apb, ptr %i.aou, align 8, !tbaa !9, !alias.scope !91, !noalias !92
  %wide.load1800 = load <4 x double>, ptr %i.aow, align 8, !tbaa !9, !alias.scope !93, !noalias !83
  %i.apc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.apa, <4 x double> %broadcast.splat1802, <4 x double> %wide.load1800)
  store <4 x double> %i.apc, ptr %i.aow, align 8, !tbaa !9, !alias.scope !93, !noalias !83
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.apd = icmp eq i64 %index.next, %n.vec
  br i1 %i.apd, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aom, %n.vec
  br i1 %cmp.n, label %._crit_edge1545, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph1544, %middle.block
  %indvars.iv1624.ph = phi i64 [ %i.anv, %vector.memcheck ], [ %i.anv, %.lr.ph1544 ], [ %i.aoo, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv1624 = phi i64 [ %indvars.iv.next1625, %scalar.ph ], [ %indvars.iv1624.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ape = load double, ptr %i.anz, align 8, !tbaa !9
  %gep1734 = getelementptr [8 x i8], ptr %invariant.gep1733, i64 %indvars.iv1624 ; 2 uses
  %i.apf = load double, ptr %gep1734, align 8, !tbaa !9 ; 2 uses
  %i.apg = load double, ptr %i.aoc, align 8, !tbaa !9
  %gep1736 = getelementptr [8 x i8], ptr %invariant.gep1735, i64 %indvars.iv1624 ; 3 uses
  %i.aph = load double, ptr %gep1736, align 8, !tbaa !9
  %i.api = call double @llvm.fmuladd.f64(double %i.apg, double %i.aph, double %i.apf)
  %i.apj = load double, ptr %i.aof, align 8, !tbaa !9
  %gep1738 = getelementptr [8 x i8], ptr %invariant.gep1737, i64 %indvars.iv1624 ; 3 uses
  %i.apk = load double, ptr %gep1738, align 8, !tbaa !9
  %i.apl = call double @llvm.fmuladd.f64(double %i.apj, double %i.apk, double %i.api)
  %i.apm = fmul double %i.ape, %i.apl             ; 2 uses
  %i.apn = fsub double %i.apf, %i.apm
  store double %i.apn, ptr %gep1734, align 8, !tbaa !9
  %i.apo = load double, ptr %i.aoc, align 8, !tbaa !9
  %i.app = load double, ptr %gep1736, align 8, !tbaa !9
  %i.apq = fneg double %i.apm                     ; 2 uses
  %i.apr = call double @llvm.fmuladd.f64(double %i.apq, double %i.apo, double %i.app)
  store double %i.apr, ptr %gep1736, align 8, !tbaa !9
  %i.aps = load double, ptr %i.aof, align 8, !tbaa !9
  %i.apt = load double, ptr %gep1738, align 8, !tbaa !9
  %i.apu = call double @llvm.fmuladd.f64(double %i.apq, double %i.aps, double %i.apt)
  store double %i.apu, ptr %gep1738, align 8, !tbaa !9
  %indvars.iv.next1625 = add nuw nsw i64 %indvars.iv1624, 1
  %.not1466.not = icmp slt i64 %indvars.iv1624, %25
  br i1 %.not1466.not, label %scalar.ph, label %._crit_edge1545, !llvm.loop !95

._crit_edge1545:                                  ; preds = %scalar.ph, %middle.block, %bb.bw
  %indvars.iv.next1629 = add nsw i64 %indvars.iv1628, -1
  %.not1462.not = icmp sgt i64 %indvars.iv1628, %i.ami
  %indvars.iv.next1621 = add i32 %indvars.iv1620, -2
  %indvar.next1751 = add i32 %indvar1750, 1
  br i1 %.not1462.not, label %bb.bw, label %.loopexit, !llvm.loop !96

bb.bx:                                            ; preds = %._crit_edge1532
  %i.apv = load i32, ptr %1, align 4, !tbaa !8
  %.not1459 = icmp eq i32 %i.apv, 0
  %or.cond = or i1 %.not1459, %.not14551518
  br i1 %or.cond, label %.loopexit, label %.lr.ph1540

.lr.ph1540:                                       ; preds = %bb.bx
  %i.apw = add i32 %.013681550, -2
  %i.apx = load i32, ptr %12, align 4, !tbaa !8   ; 6 uses
  %i.apy = load i32, ptr %11, align 4, !tbaa !8   ; 4 uses
  %.not14611533 = icmp sgt i32 %i.apy, %i.apx
  br i1 %.not14611533, label %.loopexit, label %.lr.ph1536.preheader

.lr.ph1536.preheader:                             ; preds = %.lr.ph1540
  %i.apz = sext i32 %i.apy to i64                 ; 6 uses
  %i.aqa = add i32 %i.apx, 1
  %i.aqb = sext i32 %i.ez to i64
  %smin1617 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.aqb)
  %i.aqc = sext i32 %i.ew to i64
  %i.aqd = shl nsw i64 %i.apz, 3                  ; 3 uses
  %scevgep1805 = getelementptr i8, ptr %scevgep1804.a, i64 %i.aqd
  %i.aqe = trunc i64 %smin1609 to i32
  %i.aqf = shl nsw i32 %i.aqe, 1                  ; 3 uses
  %i.aqg = add i32 %i.eq, %i.aqf
  %i.aqh = mul i32 %i.n, %i.aqg
  %i.aqi = sub i32 %i.apx, %i.apy
  %i.aqj = zext i32 %i.aqi to i64
  %i.aqk = add nsw i64 %i.apz, %i.aqj
  %i.aql = shl nsw i64 %i.aqk, 3                  ; 3 uses
  %scevgep1812.a = getelementptr i8, ptr %scevgep1811.a, i64 %i.aql
  %scevgep1815.a = getelementptr i8, ptr %scevgep1814.a, i64 %i.aqd
  %i.aqm = add i32 %.013681550, %i.aqf
  %i.aqn = mul i32 %i.n, %i.aqm
  %scevgep1818.a = getelementptr i8, ptr %scevgep1817.a, i64 %i.aql
  %scevgep1821.a = getelementptr i8, ptr %scevgep1820.a, i64 %i.aqd
  %i.aqo = add i32 %indvars.iv1586, %i.aqf
  %i.aqp = mul i32 %i.n, %i.aqo
  %scevgep1824.a = getelementptr i8, ptr %scevgep1823.a, i64 %i.aql
  %i.aqq = mul i64 %i.ck, %smin1609
  %scevgep1827 = getelementptr i8, ptr %scevgep1826.a, i64 %i.aqq ; 3 uses
  %i.aqr = mul i64 %i.cm, %i.aja
  %scevgep1829 = getelementptr i8, ptr %scevgep1828.a, i64 %i.aqr ; 3 uses
  %i.aqs = sub i32 %i.apx, %i.apy                 ; 2 uses
  %i.aqt = zext i32 %i.aqs to i64
  %i.aqu = add nuw nsw i64 %i.aqt, 1              ; 2 uses
  %min.iters.check1857 = icmp ult i32 %i.aqs, 7
  %n.vec1859 = and i64 %i.aqu, 8589934588         ; 3 uses
  %i.aqv = add nsw i64 %n.vec1859, %i.apz
  %cmp.n1879 = icmp eq i64 %i.aqu, %n.vec1859
  br label %.lr.ph1536

.lr.ph1536:                                       ; preds = %.lr.ph1536.preheader, %._crit_edge1537
  %indvar1808 = phi i32 [ 0, %.lr.ph1536.preheader ], [ %indvar.next1809, %._crit_edge1537 ] ; 2 uses
  %indvars.iv1618 = phi i64 [ %smin1617, %.lr.ph1536.preheader ], [ %indvars.iv.next1619, %._crit_edge1537 ] ; 4 uses
  %i.aqw = trunc nsw i64 %indvars.iv1618 to i32
  %i.aqx = shl i32 %i.aqw, 1                      ; 2 uses
  %i.aqy = add i32 %i.apw, %i.aqx                 ; 2 uses
  %i.aqz = mul nsw i64 %indvars.iv1618, %i.bw
  %i.ara = getelementptr [8 x i8], ptr %i.s, i64 %i.aqz ; 3 uses
  %i.arb = getelementptr i8, ptr %i.ara, i64 8    ; 4 uses
  %i.arc = add nsw i32 %i.aqy, 1
  %i.ard = mul nsw i32 %i.arc, %i.n
  %i.are = getelementptr i8, ptr %i.ara, i64 16   ; 7 uses
  %i.arf = add i32 %i.aqx, %.013681550
  %i.arg = mul nsw i32 %i.arf, %i.n
  %i.arh = getelementptr i8, ptr %i.ara, i64 24   ; 7 uses
  %i.ari = add nsw i32 %i.aqy, 3
  %i.arj = mul nsw i32 %i.ari, %i.n
  %i.ark = sext i32 %i.ard to i64
  %i.arl = sext i32 %i.arg to i64
  %i.arm = sext i32 %i.arj to i64
  %invariant.gep1727 = getelementptr [8 x i8], ptr %i.p, i64 %i.ark ; 4 uses
  %invariant.gep1729 = getelementptr [8 x i8], ptr %i.p, i64 %i.arl ; 4 uses
  %invariant.gep1731 = getelementptr [8 x i8], ptr %i.p, i64 %i.arm ; 4 uses
  br i1 %min.iters.check1857, label %scalar.ph1856.preheader, label %vector.memcheck1803

vector.memcheck1803:                              ; preds = %.lr.ph1536
  %i.arn = mul i32 %i.cg, %indvar1808             ; 3 uses
  %i.aro = add i32 %i.aqp, %i.arn
  %i.arp = sext i32 %i.aro to i64
  %i.arq = shl nsw i64 %i.arp, 3                  ; 2 uses
  %scevgep1825 = getelementptr i8, ptr %scevgep1824.a, i64 %i.arq ; 3 uses
  %scevgep1822 = getelementptr i8, ptr %scevgep1821.a, i64 %i.arq ; 3 uses
  %i.arr = add i32 %i.aqn, %i.arn
  %i.ars = sext i32 %i.arr to i64
  %i.art = shl nsw i64 %i.ars, 3                  ; 2 uses
  %scevgep1819 = getelementptr i8, ptr %scevgep1818.a, i64 %i.art ; 3 uses
  %scevgep1816 = getelementptr i8, ptr %scevgep1815.a, i64 %i.art ; 3 uses
  %i.aru = add i32 %i.aqh, %i.arn
  %i.arv = sext i32 %i.aru to i64
  %i.arw = shl nsw i64 %i.arv, 3                  ; 2 uses
  %scevgep1813 = getelementptr i8, ptr %scevgep1812.a, i64 %i.arw ; 3 uses
  %scevgep1810 = getelementptr i8, ptr %scevgep1805, i64 %i.arw ; 3 uses
  %bound01830 = icmp ult ptr %scevgep1810, %scevgep1819
  %bound11831 = icmp ult ptr %scevgep1816, %scevgep1813
  %found.conflict1832 = and i1 %bound01830, %bound11831
  %bound01833 = icmp ult ptr %scevgep1810, %scevgep1825
  %bound11834 = icmp ult ptr %scevgep1822, %scevgep1813
  %found.conflict1835 = and i1 %bound01833, %bound11834
  %conflict.rdx1836 = or i1 %found.conflict1832, %found.conflict1835
  %bound01837 = icmp ult ptr %scevgep1810, %scevgep1829
  %bound11838 = icmp ult ptr %scevgep1827, %scevgep1813
  %found.conflict1839 = and i1 %bound01837, %bound11838
  %i.arx = or i1 %found.conflict1839, %stride.check1840
  %conflict.rdx1841 = or i1 %conflict.rdx1836, %i.arx
  %bound01842 = icmp ult ptr %scevgep1816, %scevgep1825
  %bound11843 = icmp ult ptr %scevgep1822, %scevgep1819
  %found.conflict1844 = and i1 %bound01842, %bound11843
  %conflict.rdx1845 = or i1 %conflict.rdx1841, %found.conflict1844
  %bound01846 = icmp ult ptr %scevgep1816, %scevgep1829
  %bound11847 = icmp ult ptr %scevgep1827, %scevgep1819
  %found.conflict1848 = and i1 %bound01846, %bound11847
  %conflict.rdx1850 = or i1 %found.conflict1848, %conflict.rdx1845
  %bound01851 = icmp ult ptr %scevgep1822, %scevgep1829
  %bound11852 = icmp ult ptr %scevgep1827, %scevgep1825
  %found.conflict1853 = and i1 %bound01851, %bound11852
  %conflict.rdx1855 = or i1 %found.conflict1853, %conflict.rdx1850
  br i1 %conflict.rdx1855, label %scalar.ph1856.preheader, label %vector.ph1858

vector.ph1858:                                    ; preds = %vector.memcheck1803
  %i.ary = load double, ptr %i.arb, align 8, !tbaa !9, !alias.scope !97
  %broadcast.splatinsert1869 = insertelement <4 x double> poison, double %i.ary, i64 0
  %broadcast.splat1870 = shufflevector <4 x double> %broadcast.splatinsert1869, <4 x double> poison, <4 x i32> zeroinitializer
  %i.arz = load double, ptr %i.are, align 8, !tbaa !9, !alias.scope !97 ; 2 uses
  %broadcast.splatinsert1864 = insertelement <4 x double> poison, double %i.arz, i64 0
  %broadcast.splat1865 = shufflevector <4 x double> %broadcast.splatinsert1864, <4 x double> poison, <4 x i32> zeroinitializer
  %i.asa = load double, ptr %i.arh, align 8, !tbaa !9, !alias.scope !97 ; 2 uses
  %broadcast.splatinsert1867 = insertelement <4 x double> poison, double %i.asa, i64 0
  %broadcast.splat1868 = shufflevector <4 x double> %broadcast.splatinsert1867, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1872 = insertelement <4 x double> poison, double %i.arz, i64 0
  %broadcast.splat1873 = shufflevector <4 x double> %broadcast.splatinsert1872, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1875 = insertelement <4 x double> poison, double %i.asa, i64 0
  %broadcast.splat1876 = shufflevector <4 x double> %broadcast.splatinsert1875, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1860

vector.body1860:                                  ; preds = %vector.body1860, %vector.ph1858
  %index1861 = phi i64 [ 0, %vector.ph1858 ], [ %index.next1877, %vector.body1860 ] ; 2 uses
  %i.asb = add i64 %index1861, %i.apz             ; 3 uses
  %i.asc = getelementptr [8 x i8], ptr %invariant.gep1727, i64 %i.asb ; 2 uses
  %wide.load1862.a = load <4 x double>, ptr %i.asc, align 8, !tbaa !9, !alias.scope !100, !noalias !102 ; 2 uses
  %i.asd = getelementptr [8 x i8], ptr %invariant.gep1729, i64 %i.asb ; 3 uses
  %wide.load1863 = load <4 x double>, ptr %i.asd, align 8, !tbaa !9, !alias.scope !105, !noalias !106
  %i.ase = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1865, <4 x double> %wide.load1863, <4 x double> %wide.load1862.a)
  %i.asf = getelementptr [8 x i8], ptr %invariant.gep1731, i64 %i.asb ; 3 uses
  %wide.load1866 = load <4 x double>, ptr %i.asf, align 8, !tbaa !9, !alias.scope !107, !noalias !97
  %i.asg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1868, <4 x double> %wide.load1866, <4 x double> %i.ase)
  %i.ash = fmul <4 x double> %broadcast.splat1870, %i.asg ; 2 uses
  %i.asi = fsub <4 x double> %wide.load1862.a, %i.ash
  store <4 x double> %i.asi, ptr %i.asc, align 8, !tbaa !9, !alias.scope !100, !noalias !102
  %wide.load1871 = load <4 x double>, ptr %i.asd, align 8, !tbaa !9, !alias.scope !105, !noalias !106
  %i.asj = fneg <4 x double> %i.ash               ; 2 uses
  %i.ask = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.asj, <4 x double> %broadcast.splat1873, <4 x double> %wide.load1871)
  store <4 x double> %i.ask, ptr %i.asd, align 8, !tbaa !9, !alias.scope !105, !noalias !106
  %wide.load1874 = load <4 x double>, ptr %i.asf, align 8, !tbaa !9, !alias.scope !107, !noalias !97
  %i.asl = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.asj, <4 x double> %broadcast.splat1876, <4 x double> %wide.load1874)
  store <4 x double> %i.asl, ptr %i.asf, align 8, !tbaa !9, !alias.scope !107, !noalias !97
  %index.next1877 = add nuw i64 %index1861, 4     ; 2 uses
  %i.asm = icmp eq i64 %index.next1877, %n.vec1859
  br i1 %i.asm, label %middle.block1878, label %vector.body1860, !llvm.loop !108

middle.block1878:                                 ; preds = %vector.body1860
  br i1 %cmp.n1879, label %._crit_edge1537, label %scalar.ph1856.preheader

scalar.ph1856.preheader:                          ; preds = %vector.memcheck1803, %.lr.ph1536, %middle.block1878
  %indvars.iv1612.ph = phi i64 [ %i.apz, %vector.memcheck1803 ], [ %i.apz, %.lr.ph1536 ], [ %i.aqv, %middle.block1878 ] ; 6 uses
  %i.asn = trunc i64 %indvars.iv1612.ph to i32    ; 2 uses
  %i.aso = add i32 %i.apx, %i.asn
  %i.asp = and i32 %i.aso, 1
  %lcmp.mod2215.not.not = icmp eq i32 %i.asp, 0
  br i1 %lcmp.mod2215.not.not, label %scalar.ph1856.prol, label %scalar.ph1856.prol.loopexit

scalar.ph1856.prol:                               ; preds = %scalar.ph1856.preheader
  %i.asq = load double, ptr %i.arb, align 8, !tbaa !9
  %gep1728.prol = getelementptr [8 x i8], ptr %invariant.gep1727, i64 %indvars.iv1612.ph ; 2 uses
  %i.asr = load double, ptr %gep1728.prol, align 8, !tbaa !9 ; 2 uses
  %i.ass = load double, ptr %i.are, align 8, !tbaa !9
  %gep1730.prol = getelementptr [8 x i8], ptr %invariant.gep1729, i64 %indvars.iv1612.ph ; 3 uses
  %i.ast = load double, ptr %gep1730.prol, align 8, !tbaa !9
  %i.asu = call double @llvm.fmuladd.f64(double %i.ass, double %i.ast, double %i.asr)
  %i.asv = load double, ptr %i.arh, align 8, !tbaa !9
  %gep1732.prol = getelementptr [8 x i8], ptr %invariant.gep1731, i64 %indvars.iv1612.ph ; 3 uses
  %i.asw = load double, ptr %gep1732.prol, align 8, !tbaa !9
  %i.asx = call double @llvm.fmuladd.f64(double %i.asv, double %i.asw, double %i.asu)
  %i.asy = fmul double %i.asq, %i.asx             ; 2 uses
  %i.asz = fsub double %i.asr, %i.asy
  store double %i.asz, ptr %gep1728.prol, align 8, !tbaa !9
  %i.ata = load double, ptr %i.are, align 8, !tbaa !9
  %i.atb = load double, ptr %gep1730.prol, align 8, !tbaa !9
  %i.atc = fneg double %i.asy                     ; 2 uses
  %i.atd = call double @llvm.fmuladd.f64(double %i.atc, double %i.ata, double %i.atb)
  store double %i.atd, ptr %gep1730.prol, align 8, !tbaa !9
end_hunk_0
begin_hunk_1_@dlaqr5_:bb.a
  %i.aux = load i32, ptr %0, align 4, !tbaa !8
  %.not1427 = icmp eq i32 %i.aux, 0               ; 2 uses
  %.pre1644 = load i32, ptr %4, align 4, !tbaa !8 ; 3 uses
  %spec.select = select i1 %.not1427, ptr %5, ptr %3
  %spec.select1745 = select i1 %.not1427, i32 %.pre1644, i32 1 ; 3 uses
  %.21389 = load i32, ptr %spec.select, align 4, !tbaa !8 ; 4 uses
  %i.auy = sub nsw i32 %.pre1644, %.013691572
  %i.auz = call i32 @llvm.smax.i32(i32 %i.auy, i32 1) ; 7 uses
  %i.ava = sub nsw i32 %i.dy, %.pre1645
  %i.avb = load i32, ptr %i.h, align 4, !tbaa !8
  %i.avc = call i32 @llvm.smax.i32(i32 %i.ava, i32 0)
  %i.avd = add i32 %i.avb, 1
  %i.ave = add nuw i32 %i.auz, %i.avc
  %i.avf = sub i32 %i.avd, %i.ave
  store i32 %i.avf, ptr %i.d, align 4, !tbaa !8
  %i.avg = load i32, ptr %22, align 4, !tbaa !8   ; 2 uses
  %.1478 = call i32 @llvm.smin.i32(i32 %i.dy, i32 %.pre1645) ; 2 uses
  %i.avh = add i32 %.1478, 1                      ; 2 uses
  %i.avi = icmp slt i32 %i.avg, 0                 ; 2 uses
  %i.avj = icmp sge i32 %i.avh, %.21389
  %i.avk = icmp slt i32 %.1478, %.21389
  %.in14291556 = select i1 %i.avi, i1 %i.avj, i1 %i.avk
  br i1 %.in14291556, label %.lr.ph1559, label %._crit_edge1560

.lr.ph1559:                                       ; preds = %bb.by
  %i.avl = add i32 %.21389, 1
  %i.avm = mul i32 %i.auz, %i.br
  %i.avn = sext i32 %i.avm to i64
  %i.avo = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.avn
  %i.avp = add nsw i32 %i.auz, %.013691572
  %i.avq = sext i32 %i.avh to i64
  %i.avr = sext i32 %i.avg to i64
  %i.avs = sext i32 %.21389 to i64                ; 2 uses
  %i.avt = sext i32 %i.avp to i64
  %invariant.gep1739 = getelementptr [8 x i8], ptr %i.m, i64 %i.avt
  br label %bb.bz

bb.bz:                                            ; preds = %.lr.ph1559, %bb.bz
  %indvars.iv1635 = phi i64 [ %i.avq, %.lr.ph1559 ], [ %indvars.iv.next1636, %bb.bz ] ; 3 uses
  %i.avu = load i32, ptr %22, align 4, !tbaa !8
  %i.avv = trunc nsw i64 %indvars.iv1635 to i32
  %i.avw = sub i32 %i.avl, %i.avv
  %i.avx = call i32 @llvm.smin.i32(i32 %i.avu, i32 %i.avw)
  store i32 %i.avx, ptr %i.b, align 4, !tbaa !8
  %i.avy = mul nsw i64 %indvars.iv1635, %i.bt
  %gep1740 = getelementptr [8 x i8], ptr %invariant.gep1739, i64 %i.avy ; 2 uses
  call void @dgemm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b8, ptr noundef %i.avo, ptr noundef nonnull %18, ptr noundef %gep1740, ptr noundef nonnull %10, ptr noundef nonnull @c_b7, ptr noundef %23, ptr noundef %24) #4
  call void @dlacpy_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef %23, ptr noundef %24, ptr noundef %gep1740, ptr noundef nonnull %10) #4
  %indvars.iv.next1636 = add nsw i64 %indvars.iv1635, %i.avr ; 3 uses
  %i.avz = icmp sge i64 %indvars.iv.next1636, %i.avs
  %i.awa = icmp sle i64 %indvars.iv.next1636, %i.avs
  %.in1429 = select i1 %i.avi, i1 %i.avz, i1 %i.awa
  br i1 %.in1429, label %bb.bz, label %._crit_edge1560.loopexit, !llvm.loop !112

._crit_edge1560.loopexit:                         ; preds = %bb.bz
  %.pre1646 = load i32, ptr %4, align 4, !tbaa !8
  br label %._crit_edge1560

._crit_edge1560:                                  ; preds = %._crit_edge1560.loopexit, %bb.by
  %i.awb = phi i32 [ %.pre1646, %._crit_edge1560.loopexit ], [ %.pre1644, %bb.by ]
  %.01369.1479 = call i32 @llvm.smax.i32(i32 %i.awb, i32 %.013691572) ; 3 uses
  %i.awc = add nsw i32 %.01369.1479, -1           ; 2 uses
  %i.awd = load i32, ptr %19, align 4, !tbaa !8   ; 2 uses
  %i.awe = icmp slt i32 %i.awd, 0                 ; 2 uses
  %i.awf = icmp sge i32 %spec.select1745, %i.awc
  %i.awg = icmp slt i32 %spec.select1745, %.01369.1479
  %.in14311561 = select i1 %i.awe, i1 %i.awf, i1 %i.awg
  br i1 %.in14311561, label %.lr.ph1564, label %._crit_edge1565

.lr.ph1564:                                       ; preds = %._crit_edge1560
  %i.awh = add nsw i32 %i.auz, %.013691572
  %i.awi = mul nsw i32 %i.awh, %i.k
  %i.awj = mul i32 %i.auz, %i.br
  %i.awk = sext i32 %i.awj to i64
  %i.awl = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.awk
  %i.awm = sext i32 %spec.select1745 to i64
  %i.awn = sext i32 %i.awd to i64
  %i.awo = sext i32 %.01369.1479 to i64
  %i.awp = sext i32 %i.awc to i64
  %i.awq = sext i32 %i.awi to i64
  %invariant.gep1741 = getelementptr [8 x i8], ptr %i.m, i64 %i.awq
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph1564, %bb.ca
  %indvars.iv1638 = phi i64 [ %i.awm, %.lr.ph1564 ], [ %indvars.iv.next1639, %bb.ca ] ; 3 uses
  %i.awr = load i32, ptr %19, align 4, !tbaa !8
  %i.aws = load i32, ptr %4, align 4, !tbaa !8
  %.01369.1480 = call i32 @llvm.smax.i32(i32 %i.aws, i32 %.013691572)
  %i.awt = trunc nsw i64 %indvars.iv1638 to i32
  %i.awu = sub nsw i32 %.01369.1480, %i.awt
  %i.awv = call i32 @llvm.smin.i32(i32 %i.awr, i32 %i.awu)
  store i32 %i.awv, ptr %i.b, align 4, !tbaa !8
  %gep1742 = getelementptr [8 x i8], ptr %invariant.gep1741, i64 %indvars.iv1638 ; 2 uses
  call void @dgemm_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b8, ptr noundef %gep1742, ptr noundef nonnull %10, ptr noundef %i.awl, ptr noundef nonnull %18, ptr noundef nonnull @c_b7, ptr noundef %20, ptr noundef %21) #4
  call void @dlacpy_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef %20, ptr noundef %21, ptr noundef %gep1742, ptr noundef nonnull %10) #4
  %indvars.iv.next1639 = add nsw i64 %indvars.iv1638, %i.awn ; 3 uses
  %i.aww = icmp sge i64 %indvars.iv.next1639, %i.awp
  %i.awx = icmp slt i64 %indvars.iv.next1639, %i.awo
  %.in1431 = select i1 %i.awe, i1 %i.aww, i1 %i.awx
  br i1 %.in1431, label %bb.ca, label %._crit_edge1565, !llvm.loop !113

._crit_edge1565:                                  ; preds = %bb.ca, %._crit_edge1560
  %i.awy = load i32, ptr %1, align 4, !tbaa !8
  %.not1432 = icmp eq i32 %i.awy, 0
  br i1 %.not1432, label %.loopexit1491, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge1565
  %i.awz = load i32, ptr %12, align 4, !tbaa !8   ; 3 uses
  %i.axa = load i32, ptr %19, align 4, !tbaa !8   ; 2 uses
  %i.axb = load i32, ptr %11, align 4, !tbaa !8   ; 3 uses
  %i.axc = icmp slt i32 %i.axa, 0                 ; 2 uses
  %i.axd = icmp sge i32 %i.axb, %i.awz
  %i.axe = icmp sle i32 %i.axb, %i.awz
  %.in14331566 = select i1 %i.axc, i1 %i.axd, i1 %i.axe
  br i1 %.in14331566, label %.lr.ph1569, label %.loopexit1491

.lr.ph1569:                                       ; preds = %bb.cb
  %i.axf = add nsw i32 %i.auz, %.013691572
  %i.axg = mul nsw i32 %i.axf, %i.n
  %i.axh = mul i32 %i.auz, %i.br
  %i.axi = sext i32 %i.axh to i64
  %i.axj = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.axi
  %i.axk = sext i32 %i.axb to i64
  %i.axl = sext i32 %i.axa to i64
  %i.axm = sext i32 %i.awz to i64                 ; 2 uses
  %i.axn = sext i32 %i.axg to i64
  %invariant.gep1743 = getelementptr [8 x i8], ptr %i.p, i64 %i.axn
  br label %bb.cc

bb.cc:                                            ; preds = %.lr.ph1569, %bb.cc
  %indvars.iv1641 = phi i64 [ %i.axk, %.lr.ph1569 ], [ %indvars.iv.next1642, %bb.cc ] ; 3 uses
  %i.axo = load i32, ptr %19, align 4, !tbaa !8
  %i.axp = load i32, ptr %12, align 4, !tbaa !8
  %i.axq = trunc nsw i64 %indvars.iv1641 to i32
  %reass.sub1577 = sub i32 %i.axp, %i.axq
  %i.axr = add i32 %reass.sub1577, 1
  %i.axs = call i32 @llvm.smin.i32(i32 %i.axo, i32 %i.axr)
  store i32 %i.axs, ptr %i.b, align 4, !tbaa !8
  %gep1744 = getelementptr [8 x i8], ptr %invariant.gep1743, i64 %indvars.iv1641 ; 2 uses
  call void @dgemm_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b8, ptr noundef %gep1744, ptr noundef nonnull %14, ptr noundef %i.axj, ptr noundef nonnull %18, ptr noundef nonnull @c_b7, ptr noundef %20, ptr noundef nonnull %21) #4
  call void @dlacpy_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef %20, ptr noundef nonnull %21, ptr noundef %gep1744, ptr noundef nonnull %14) #4
  %indvars.iv.next1642 = add nsw i64 %indvars.iv1641, %i.axl ; 3 uses
  %i.axt = icmp sge i64 %indvars.iv.next1642, %i.axm
  %i.axu = icmp sle i64 %indvars.iv.next1642, %i.axm
  %.in1433 = select i1 %i.axc, i1 %i.axt, i1 %i.axu
  br i1 %.in1433, label %bb.cc, label %.loopexit1491, !llvm.loop !114

.loopexit1491:                                    ; preds = %bb.cc, %bb.cb, %._crit_edge1555, %._crit_edge1565
  %indvars.iv.next1595 = sub i32 %indvars.iv1594, %i.bk
  %.not1483 = icmp sgt i32 %i.dz, %i.bj
  %indvars.iv.next1585 = add i32 %indvars.iv1584, %i.bk
  %indvars.iv.next1631 = add i32 %indvars.iv1630, %i.bk
  %indvar.next1807 = add i32 %indvar1806, 1
  br i1 %.not1483, label %.loopexit1492, label %bb.h, !llvm.loop !115

.loopexit1492:                                    ; preds = %.loopexit1491, %bb.g, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare void @dlabad_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlaqr1_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlarfg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!13 = !{!14}
!14 = distinct !{!14, !15}
!15 = distinct !{!15, !"LVerDomain"}
!16 = !{!17}
!17 = distinct !{!17, !15}
!18 = !{!19, !14}
!19 = distinct !{!19, !15}
!20 = !{!19}
!21 = distinct !{!21, !12, !22, !23}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !12, !22}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29}
!29 = distinct !{!29, !27}
!30 = !{!31, !26}
!31 = distinct !{!31, !27}
!32 = !{!31}
!33 = distinct !{!33, !12, !22, !23}
!34 = distinct !{!34, !12, !22}
!35 = !{!36}
!36 = distinct !{!36, !37}
!37 = distinct !{!37, !"LVerDomain"}
!38 = !{!39}
!39 = distinct !{!39, !37}
!40 = !{!41, !36}
!41 = distinct !{!41, !37}
!42 = !{!41}
!43 = distinct !{!43, !12, !22, !23}
!44 = distinct !{!44, !12, !22}
!45 = !{!46}
!46 = distinct !{!46, !47}
!47 = distinct !{!47, !"LVerDomain"}
!48 = !{!49}
!49 = distinct !{!49, !47}
!50 = !{!51, !46}
!51 = distinct !{!51, !47}
!52 = !{!51}
!53 = distinct !{!53, !12, !22, !23}
!54 = distinct !{!54, !12, !22}
!55 = !{!56}
!56 = distinct !{!56, !57}
!57 = distinct !{!57, !"LVerDomain"}
!58 = !{!59}
!59 = distinct !{!59, !57}
!60 = !{!61, !62, !56}
!61 = distinct !{!61, !57}
!62 = distinct !{!62, !57}
!63 = !{!61}
!64 = !{!62, !56}
!65 = !{!62}
!66 = distinct !{!66, !12, !22, !23}
!67 = distinct !{!67, !12, !22}
!68 = distinct !{!68, !12}
!69 = !{!70}
!70 = distinct !{!70, !71}
!71 = distinct !{!71, !"LVerDomain"}
!72 = !{!73}
!73 = distinct !{!73, !71}
!74 = !{!75, !76, !70}
!75 = distinct !{!75, !71}
!76 = distinct !{!76, !71}
!77 = !{!75}
!78 = !{!76, !70}
!79 = !{!76}
!80 = distinct !{!80, !12, !22, !23}
!81 = distinct !{!81, !12, !22}
!82 = distinct !{!82, !12}
!83 = !{!84}
!84 = distinct !{!84, !85}
!85 = distinct !{!85, !"LVerDomain"}
!86 = !{!87}
!87 = distinct !{!87, !85}
!88 = !{!89, !90, !84}
!89 = distinct !{!89, !85}
!90 = distinct !{!90, !85}
!91 = !{!89}
!92 = !{!90, !84}
!93 = !{!90}
!94 = distinct !{!94, !12, !22, !23}
!95 = distinct !{!95, !12, !22}
!96 = distinct !{!96, !12}
!97 = !{!98}
!98 = distinct !{!98, !99}
!99 = distinct !{!99, !"LVerDomain"}
!100 = !{!101}
!101 = distinct !{!101, !99}
!102 = !{!103, !104, !98}
!103 = distinct !{!103, !99}
!104 = distinct !{!104, !99}
!105 = !{!103}
!106 = !{!104, !98}
!107 = !{!104}
!108 = distinct !{!108, !12, !22, !23}
!109 = distinct !{!109, !12, !22}
!110 = distinct !{!110, !12}
!111 = distinct !{!111, !12}
!112 = distinct !{!112, !12}
!113 = distinct !{!113, !12}
!114 = distinct !{!114, !12}
!115 = distinct !{!115, !12}
end_hunk_1
