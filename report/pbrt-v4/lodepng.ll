Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lodepng?download=true
inline.NumInlined: 863
inline.NumDeleted: 192
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 142
begin_hunk_0_@_ZL8unfilterPhPKhjjj:bb.a
  %i.yo = add <32 x i8> %i.yk, %wide.load961
  %i.yp = add <32 x i8> %i.yl, %wide.load962
  %i.yq = add <32 x i8> %i.ym, %wide.load963
  %i.yr = getelementptr inbounds nuw i8, ptr %i.mn, i64 %index959 ; 4 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 32
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yr, i64 64
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yr, i64 96
  store <32 x i8> %i.yn, ptr %i.yr, align 1, !tbaa !29, !alias.scope !978, !noalias !979
  store <32 x i8> %i.yo, ptr %i.ys, align 1, !tbaa !29, !alias.scope !978, !noalias !979
  store <32 x i8> %i.yp, ptr %i.yt, align 1, !tbaa !29, !alias.scope !978, !noalias !979
  store <32 x i8> %i.yq, ptr %i.yu, align 1, !tbaa !29, !alias.scope !978, !noalias !979
  %index.next968 = add nuw i64 %index959, 128     ; 2 uses
  %i.yv = icmp eq i64 %index.next968, %n.vec957
  br i1 %i.yv, label %middle.block969, label %vector.body958, !llvm.loop !898

middle.block969:                                  ; preds = %vector.body958
  br i1 %cmp.n970, label %._crit_edge521.i, label %vec.epilog.iter.check972

vec.epilog.iter.check972:                         ; preds = %middle.block969
  br i1 %min.epilog.iters.check974, label %.lr.ph520.i.preheader, label %vec.epilog.ph975, !prof !93

vec.epilog.ph975:                                 ; preds = %vector.main.loop.iter.check954, %vec.epilog.iter.check972
  %vec.epilog.resume.val976 = phi i64 [ %n.vec957, %vec.epilog.iter.check972 ], [ 0, %vector.main.loop.iter.check954 ]
  br label %vec.epilog.vector.body978

vec.epilog.vector.body978:                        ; preds = %vec.epilog.vector.body978, %vec.epilog.ph975
  %index979 = phi i64 [ %vec.epilog.resume.val976, %vec.epilog.ph975 ], [ %index.next982, %vec.epilog.vector.body978 ] ; 4 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.mo, i64 %index979
  %wide.load980 = load <8 x i8>, ptr %i.yw, align 1, !tbaa !29, !alias.scope !976
  %i.yx = getelementptr inbounds nuw i8, ptr %.02771, i64 %index979
  %wide.load981 = load <8 x i8>, ptr %i.yx, align 1, !tbaa !29, !alias.scope !977
  %i.yy = lshr <8 x i8> %wide.load981, splat (i8 1)
  %i.yz = add <8 x i8> %i.yy, %wide.load980
  %i.za = getelementptr inbounds nuw i8, ptr %i.mn, i64 %index979
  store <8 x i8> %i.yz, ptr %i.za, align 1, !tbaa !29, !alias.scope !978, !noalias !979
  %index.next982 = add nuw i64 %index979, 8       ; 2 uses
  %i.zb = icmp eq i64 %index.next982, %n.vec977
  br i1 %i.zb, label %vec.epilog.middle.block983, label %vec.epilog.vector.body978, !llvm.loop !899

vec.epilog.middle.block983:                       ; preds = %vec.epilog.vector.body978
  br i1 %cmp.n984, label %._crit_edge521.i, label %.lr.ph520.i.preheader

.lr.ph520.i.preheader:                            ; preds = %iter.check971, %vector.memcheck946, %vec.epilog.iter.check972, %vec.epilog.middle.block983
  %.5519.i.ph = phi i64 [ 0, %iter.check971 ], [ 0, %vector.memcheck946 ], [ %n.vec957, %vec.epilog.iter.check972 ], [ %n.vec977, %vec.epilog.middle.block983 ] ; 3 uses
  br i1 %lcmp.mod1837.not, label %.lr.ph520.i.prol.loopexit, label %.lr.ph520.i.prol

.lr.ph520.i.prol:                                 ; preds = %.lr.ph520.i.preheader, %.lr.ph520.i.prol
  %.5519.i.prol = phi i64 [ %i.zj, %.lr.ph520.i.prol ], [ %.5519.i.ph, %.lr.ph520.i.preheader ] ; 4 uses
  %prol.iter1838 = phi i64 [ %prol.iter1838.next, %.lr.ph520.i.prol ], [ 0, %.lr.ph520.i.preheader ]
  %i.zc = getelementptr inbounds nuw i8, ptr %i.mo, i64 %.5519.i.prol
  %i.zd = load i8, ptr %i.zc, align 1, !tbaa !29
  %i.ze = getelementptr inbounds nuw i8, ptr %.02771, i64 %.5519.i.prol
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !29
  %i.zg = lshr i8 %i.zf, 1
  %i.zh = add i8 %i.zg, %i.zd
  %i.zi = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.5519.i.prol
  store i8 %i.zh, ptr %i.zi, align 1, !tbaa !29
  %i.zj = add nuw nsw i64 %.5519.i.prol, 1        ; 2 uses
  %prol.iter1838.next = add i64 %prol.iter1838, 1 ; 2 uses
  %prol.iter1838.cmp.not = icmp eq i64 %prol.iter1838.next, %xtraiter1836
  br i1 %prol.iter1838.cmp.not, label %.lr.ph520.i.prol.loopexit, label %.lr.ph520.i.prol, !llvm.loop !900

.lr.ph520.i.prol.loopexit:                        ; preds = %.lr.ph520.i.prol, %.lr.ph520.i.preheader
  %.5519.i.unr = phi i64 [ %.5519.i.ph, %.lr.ph520.i.preheader ], [ %i.zj, %.lr.ph520.i.prol ]
  %i.zk = sub nsw i64 %.5519.i.ph, %i.d
  %i.zl = icmp ugt i64 %i.zk, -4
  br i1 %i.zl, label %._crit_edge521.i, label %.lr.ph520.i

.preheader469.i:                                  ; preds = %bb.d
  br i1 %.not409511.i, label %.preheader467.i, label %iter.check442

iter.check442:                                    ; preds = %.preheader469.i
  %brmerge1902 = select i1 %min.iters.check424, i1 true, i1 %found.conflict428
  br i1 %brmerge1902, label %.lr.ph545.i.preheader, label %vector.main.loop.iter.check429

vector.main.loop.iter.check429:                   ; preds = %iter.check442
  br i1 %min.iters.check430, label %vec.epilog.ph446, label %vector.body433

vector.body433:                                   ; preds = %vector.main.loop.iter.check429, %vector.body433
  %index434 = phi i64 [ %index.next439, %vector.body433 ], [ 0, %vector.main.loop.iter.check429 ] ; 3 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.mo, i64 %index434 ; 4 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 32
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zm, i64 64
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zm, i64 96
  %wide.load435 = load <32 x i8>, ptr %i.zm, align 1, !tbaa !29, !alias.scope !980
  %wide.load436 = load <32 x i8>, ptr %i.zn, align 1, !tbaa !29, !alias.scope !980
  %wide.load437 = load <32 x i8>, ptr %i.zo, align 1, !tbaa !29, !alias.scope !980
  %wide.load438 = load <32 x i8>, ptr %i.zp, align 1, !tbaa !29, !alias.scope !980
  %i.zq = getelementptr inbounds nuw i8, ptr %i.mn, i64 %index434 ; 4 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 32
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zq, i64 64
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zq, i64 96
  store <32 x i8> %wide.load435, ptr %i.zq, align 1, !tbaa !29, !alias.scope !981, !noalias !980
  store <32 x i8> %wide.load436, ptr %i.zr, align 1, !tbaa !29, !alias.scope !981, !noalias !980
  store <32 x i8> %wide.load437, ptr %i.zs, align 1, !tbaa !29, !alias.scope !981, !noalias !980
  store <32 x i8> %wide.load438, ptr %i.zt, align 1, !tbaa !29, !alias.scope !981, !noalias !980
  %index.next439 = add nuw i64 %index434, 128     ; 2 uses
  %i.zu = icmp eq i64 %index.next439, %n.vec432
  br i1 %i.zu, label %middle.block440, label %vector.body433, !llvm.loop !904

middle.block440:                                  ; preds = %vector.body433
  br i1 %cmp.n441, label %.preheader467.i, label %vec.epilog.iter.check443

vec.epilog.iter.check443:                         ; preds = %middle.block440
  br i1 %min.epilog.iters.check445, label %.lr.ph545.i.preheader, label %vec.epilog.ph446, !prof !93

vec.epilog.ph446:                                 ; preds = %vector.main.loop.iter.check429, %vec.epilog.iter.check443
  %vec.epilog.resume.val447 = phi i64 [ %n.vec432, %vec.epilog.iter.check443 ], [ 0, %vector.main.loop.iter.check429 ]
  br label %vec.epilog.vector.body449

vec.epilog.vector.body449:                        ; preds = %vec.epilog.vector.body449, %vec.epilog.ph446
  %index450 = phi i64 [ %vec.epilog.resume.val447, %vec.epilog.ph446 ], [ %index.next452, %vec.epilog.vector.body449 ] ; 3 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.mo, i64 %index450
  %wide.load451 = load <8 x i8>, ptr %i.zv, align 1, !tbaa !29, !alias.scope !980
  %i.zw = getelementptr inbounds nuw i8, ptr %i.mn, i64 %index450
  store <8 x i8> %wide.load451, ptr %i.zw, align 1, !tbaa !29, !alias.scope !981, !noalias !980
  %index.next452 = add nuw i64 %index450, 8       ; 2 uses
  %i.zx = icmp eq i64 %index.next452, %n.vec448
  br i1 %i.zx, label %vec.epilog.middle.block453, label %vec.epilog.vector.body449, !llvm.loop !905

vec.epilog.middle.block453:                       ; preds = %vec.epilog.vector.body449
  br i1 %cmp.n454, label %.preheader467.i, label %.lr.ph545.i.preheader

.lr.ph545.i.preheader:                            ; preds = %iter.check442, %vec.epilog.iter.check443, %vec.epilog.middle.block453
  %.11544.i.ph = phi i64 [ 0, %iter.check442 ], [ %n.vec448, %vec.epilog.middle.block453 ], [ %n.vec432, %vec.epilog.iter.check443 ] ; 3 uses
  br i1 %lcmp.mod1843.not, label %.lr.ph545.i.prol.loopexit, label %.lr.ph545.i.prol

.lr.ph545.i.prol:                                 ; preds = %.lr.ph545.i.preheader, %.lr.ph545.i.prol
  %.11544.i.prol = phi i64 [ %i.aab, %.lr.ph545.i.prol ], [ %.11544.i.ph, %.lr.ph545.i.preheader ] ; 3 uses
  %prol.iter1844 = phi i64 [ %prol.iter1844.next, %.lr.ph545.i.prol ], [ 0, %.lr.ph545.i.preheader ]
  %i.zy = getelementptr inbounds nuw i8, ptr %i.mo, i64 %.11544.i.prol
  %i.zz = load i8, ptr %i.zy, align 1, !tbaa !29
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.11544.i.prol
  store i8 %i.zz, ptr %i.aaa, align 1, !tbaa !29
  %i.aab = add nuw nsw i64 %.11544.i.prol, 1      ; 2 uses
  %prol.iter1844.next = add i64 %prol.iter1844, 1 ; 2 uses
  %prol.iter1844.cmp.not = icmp eq i64 %prol.iter1844.next, %xtraiter1842
  br i1 %prol.iter1844.cmp.not, label %.lr.ph545.i.prol.loopexit, label %.lr.ph545.i.prol, !llvm.loop !906

.lr.ph545.i.prol.loopexit:                        ; preds = %.lr.ph545.i.prol, %.lr.ph545.i.preheader
  %.11544.i.unr = phi i64 [ %.11544.i.ph, %.lr.ph545.i.preheader ], [ %i.aab, %.lr.ph545.i.prol ]
  %i.aac = sub nsw i64 %.11544.i.ph, %i.d
  %i.aad = icmp ugt i64 %i.aac, -8
  br i1 %i.aad, label %.preheader467.i, label %.lr.ph545.i

.lr.ph520.i:                                      ; preds = %.lr.ph520.i.prol.loopexit, %.lr.ph520.i
  %.5519.i = phi i64 [ %i.abj, %.lr.ph520.i ], [ %.5519.i.unr, %.lr.ph520.i.prol.loopexit ] ; 7 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.mo, i64 %.5519.i
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !29
  %i.aag = getelementptr inbounds nuw i8, ptr %.02771, i64 %.5519.i
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !29
  %i.aai = lshr i8 %i.aah, 1
  %i.aaj = add i8 %i.aai, %i.aaf
  %i.aak = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.5519.i
  store i8 %i.aaj, ptr %i.aak, align 1, !tbaa !29
  %i.aal = add nuw nsw i64 %.5519.i, 1            ; 3 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.aal
  %i.aan = load i8, ptr %i.aam, align 1, !tbaa !29
  %i.aao = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.aal
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !29
  %i.aaq = lshr i8 %i.aap, 1
  %i.aar = add i8 %i.aaq, %i.aan
  %i.aas = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.aal
  store i8 %i.aar, ptr %i.aas, align 1, !tbaa !29
  %i.aat = add nuw nsw i64 %.5519.i, 2            ; 3 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.aat
  %i.aav = load i8, ptr %i.aau, align 1, !tbaa !29
  %i.aaw = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.aat
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !29
  %i.aay = lshr i8 %i.aax, 1
  %i.aaz = add i8 %i.aay, %i.aav
  %i.aba = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.aat
  store i8 %i.aaz, ptr %i.aba, align 1, !tbaa !29
  %i.abb = add nuw nsw i64 %.5519.i, 3            ; 3 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.abb
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !29
  %i.abe = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.abb
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !29
  %i.abg = lshr i8 %i.abf, 1
  %i.abh = add i8 %i.abg, %i.abd
  %i.abi = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.abb
  store i8 %i.abh, ptr %i.abi, align 1, !tbaa !29
  %i.abj = add nuw nsw i64 %.5519.i, 4            ; 2 uses
  %.not416.i.3 = icmp eq i64 %i.abj, %i.d
  br i1 %.not416.i.3, label %._crit_edge521.i, label %.lr.ph520.i, !llvm.loop !907

._crit_edge521.i:                                 ; preds = %.lr.ph520.i.prol.loopexit, %.lr.ph520.i, %vec.epilog.middle.block983, %middle.block969
  br i1 %i.q, label %.preheader471.i, label %bb.e

.preheader471.i:                                  ; preds = %._crit_edge521.i
  br i1 %i.y, label %iter.check899, label %.loopexit472.i

iter.check899:                                    ; preds = %.preheader471.i
  br i1 %min.iters.check708, label %.lr.ph535.i.preheader, label %vector.memcheck709

vector.memcheck709:                               ; preds = %iter.check899
  %i.abk = getelementptr i8, ptr %.02771, i64 %i.d ; 4 uses
  %i.abl = getelementptr i8, ptr %.02771, i64 %i.ck
  %i.abm = getelementptr i8, ptr %i.abl, i64 %i.d
  %i.abn = getelementptr i8, ptr %i.abm, i64 1    ; 4 uses
  %5 = getelementptr i8, ptr %.02771, i64 %i.t    ; 4 uses
  %6 = getelementptr i8, ptr %.02771, i64 %i.cp
  %7 = getelementptr i8, ptr %6, i64 2            ; 4 uses
  %i.abo = getelementptr i8, ptr %.02771, i64 %i.v ; 4 uses
  %i.abp = getelementptr i8, ptr %.02771, i64 %i.cp
  %i.abq = getelementptr i8, ptr %i.abp, i64 3    ; 4 uses
  %8 = getelementptr i8, ptr %.02771, i64 %i.x    ; 4 uses
  %9 = getelementptr i8, ptr %.02771, i64 %i.ck
  %10 = getelementptr i8, ptr %9, i64 %i.d
  %11 = getelementptr i8, ptr %10, i64 4          ; 4 uses
  %bound0729 = icmp ult ptr %scevgep707, %i.abn
  %bound1730 = icmp ult ptr %i.abk, %scevgep706
  %found.conflict731 = and i1 %bound0729, %bound1730
  %conflict.rdx736.reass = or i1 %found.conflict731, %invariant.op1890
  %bound0737.a = icmp ult ptr %scevgep707, %7
  %bound1738.a = icmp ult ptr %5, %scevgep706
  %found.conflict739.a = and i1 %bound0737.a, %bound1738.a
  %conflict.rdx740.a = or i1 %conflict.rdx736.reass, %found.conflict739.a
  %conflict.rdx744.a = or i1 %conflict.rdx740.a, %found.conflict743
  %bound0745 = icmp ult ptr %scevgep707, %i.abq
  %bound1746 = icmp ult ptr %i.abo, %scevgep706
  %found.conflict747 = and i1 %bound0745, %bound1746
  %conflict.rdx748 = or i1 %conflict.rdx744.a, %found.conflict747
  %conflict.rdx752 = or i1 %conflict.rdx748, %found.conflict751
  %bound0753 = icmp ult ptr %scevgep707, %11
  %bound1754 = icmp ult ptr %8, %scevgep706
  %found.conflict755 = and i1 %bound0753, %bound1754
  %conflict.rdx756 = or i1 %conflict.rdx752, %found.conflict755
  %conflict.rdx772.reass = or i1 %conflict.rdx756, %invariant.op1893
  %bound0773 = icmp ult ptr %scevgep705, %i.abn
  %bound1774 = icmp ult ptr %i.abk, %scevgep704
  %found.conflict775 = and i1 %bound0773, %bound1774
  %conflict.rdx776 = or i1 %conflict.rdx772.reass, %found.conflict775
  %conflict.rdx780 = or i1 %conflict.rdx776, %found.conflict779
  %bound0781 = icmp ult ptr %scevgep705, %7
  %bound1782 = icmp ult ptr %5, %scevgep704
  %found.conflict783 = and i1 %bound0781, %bound1782
  %conflict.rdx784 = or i1 %conflict.rdx780, %found.conflict783
  %conflict.rdx788 = or i1 %conflict.rdx784, %found.conflict787
  %bound0789 = icmp ult ptr %scevgep705, %i.abq
  %bound1790 = icmp ult ptr %i.abo, %scevgep704
  %found.conflict791 = and i1 %bound0789, %bound1790
  %conflict.rdx792 = or i1 %conflict.rdx788, %found.conflict791
  %conflict.rdx796 = or i1 %conflict.rdx792, %found.conflict795
  %bound0797 = icmp ult ptr %scevgep705, %11
  %bound1798 = icmp ult ptr %8, %scevgep704
  %found.conflict799 = and i1 %bound0797, %bound1798
  %conflict.rdx800 = or i1 %conflict.rdx796, %found.conflict799
  %conflict.rdx812.reass = or i1 %conflict.rdx800, %invariant.op1895
  %bound0813 = icmp ult ptr %scevgep703, %i.abn
  %bound1814 = icmp ult ptr %i.abk, %scevgep702
  %found.conflict815 = and i1 %bound0813, %bound1814
  %conflict.rdx816 = or i1 %conflict.rdx812.reass, %found.conflict815
  %conflict.rdx820 = or i1 %conflict.rdx816, %found.conflict819
  %bound0821 = icmp ult ptr %scevgep703, %7
  %bound1822 = icmp ult ptr %5, %scevgep702
  %found.conflict823 = and i1 %bound0821, %bound1822
  %conflict.rdx824 = or i1 %conflict.rdx820, %found.conflict823
  %conflict.rdx828 = or i1 %conflict.rdx824, %found.conflict827
  %bound0829 = icmp ult ptr %scevgep703, %i.abq
  %bound1830 = icmp ult ptr %i.abo, %scevgep702
  %found.conflict831 = and i1 %bound0829, %bound1830
  %conflict.rdx832 = or i1 %conflict.rdx828, %found.conflict831
  %conflict.rdx836 = or i1 %conflict.rdx832, %found.conflict835
  %bound0837 = icmp ult ptr %scevgep703, %11
  %bound1838 = icmp ult ptr %8, %scevgep702
  %found.conflict839 = and i1 %bound0837, %bound1838
  %conflict.rdx840 = or i1 %conflict.rdx836, %found.conflict839
  %conflict.rdx848.reass = or i1 %conflict.rdx840, %invariant.op1896
  %bound0849 = icmp ult ptr %scevgep701, %i.abn
  %bound1850 = icmp ult ptr %i.abk, %scevgep700
  %found.conflict851 = and i1 %bound0849, %bound1850
  %conflict.rdx852 = or i1 %conflict.rdx848.reass, %found.conflict851
  %conflict.rdx856 = or i1 %conflict.rdx852, %found.conflict855
  %bound0857 = icmp ult ptr %scevgep701, %7
  %bound1858 = icmp ult ptr %5, %scevgep700
  %found.conflict859 = and i1 %bound0857, %bound1858
  %conflict.rdx860 = or i1 %conflict.rdx856, %found.conflict859
  %conflict.rdx864 = or i1 %conflict.rdx860, %found.conflict863
  %bound0865 = icmp ult ptr %scevgep701, %i.abq
  %bound1866 = icmp ult ptr %i.abo, %scevgep700
  %found.conflict867 = and i1 %bound0865, %bound1866
  %conflict.rdx868 = or i1 %conflict.rdx864, %found.conflict867
  %conflict.rdx872 = or i1 %conflict.rdx868, %found.conflict871
  %bound0873 = icmp ult ptr %scevgep701, %11
  %bound1874 = icmp ult ptr %8, %scevgep700
  %found.conflict875 = and i1 %bound0873, %bound1874
  %conflict.rdx876 = or i1 %conflict.rdx872, %found.conflict875
  br i1 %conflict.rdx876, label %.lr.ph535.i.preheader, label %vector.main.loop.iter.check877

vector.main.loop.iter.check877:                   ; preds = %vector.memcheck709
  br i1 %min.iters.check878, label %vec.epilog.ph903, label %vector.body881

vector.body881:                                   ; preds = %vector.main.loop.iter.check877, %vector.body881
  %index882 = phi i64 [ %index.next896, %vector.body881 ], [ 0, %vector.main.loop.iter.check877 ] ; 2 uses
  %i.abr = shl nuw i64 %index882, 2               ; 2 uses
  %i.abs = add nuw i64 %i.abr, %i.d               ; 3 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.abs
  %wide.vec = load <64 x i8>, ptr %i.abt, align 1, !tbaa !29, !alias.scope !982
  %i.abu = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.abr
  %wide.vec886 = load <64 x i8>, ptr %i.abu, align 1, !tbaa !29
  %i.abv = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.abs
  %wide.vec891 = load <64 x i8>, ptr %i.abv, align 1, !tbaa !29
  %i.abw = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.abs
  %i.abx = zext <64 x i8> %wide.vec891 to <64 x i16>
  %i.aby = zext <64 x i8> %wide.vec886 to <64 x i16>
  %i.abz = add nuw nsw <64 x i16> %i.abx, %i.aby
  %i.aca = lshr <64 x i16> %i.abz, splat (i16 1)
  %i.acb = trunc nuw <64 x i16> %i.aca to <64 x i8>
  %interleaved.vec = add <64 x i8> %wide.vec, %i.acb
  store <64 x i8> %interleaved.vec, ptr %i.abw, align 1, !tbaa !29
  %index.next896 = add nuw i64 %index882, 16      ; 2 uses
  %i.acc = icmp eq i64 %index.next896, %n.vec880
  br i1 %i.acc, label %middle.block897, label %vector.body881, !llvm.loop !910

middle.block897:                                  ; preds = %vector.body881
  br i1 %cmp.n898, label %.loopexit472.i, label %vec.epilog.iter.check900

vec.epilog.iter.check900:                         ; preds = %middle.block897
  br i1 %min.epilog.iters.check902, label %.lr.ph535.i.preheader, label %vec.epilog.ph903, !prof !50

vec.epilog.ph903:                                 ; preds = %vector.main.loop.iter.check877, %vec.epilog.iter.check900
  %vec.epilog.resume.val904 = phi i64 [ %n.vec880, %vec.epilog.iter.check900 ], [ 0, %vector.main.loop.iter.check877 ]
  br label %vec.epilog.vector.body906

vec.epilog.vector.body906:                        ; preds = %vec.epilog.vector.body906, %vec.epilog.ph903
  %index907 = phi i64 [ %vec.epilog.resume.val904, %vec.epilog.ph903 ], [ %index.next924, %vec.epilog.vector.body906 ] ; 2 uses
  %i.acd = shl nuw i64 %index907, 2               ; 2 uses
  %i.ace = add nuw i64 %i.acd, %i.d               ; 3 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.ace
  %wide.vec908 = load <16 x i8>, ptr %i.acf, align 1, !tbaa !29, !alias.scope !982
  %i.acg = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.acd
  %wide.vec913 = load <16 x i8>, ptr %i.acg, align 1, !tbaa !29
  %i.ach = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.ace
  %wide.vec918 = load <16 x i8>, ptr %i.ach, align 1, !tbaa !29
  %i.aci = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.ace
  %i.acj = zext <16 x i8> %wide.vec918 to <16 x i16>
  %i.ack = zext <16 x i8> %wide.vec913 to <16 x i16>
  %i.acl = add nuw nsw <16 x i16> %i.acj, %i.ack
  %i.acm = lshr <16 x i16> %i.acl, splat (i16 1)
  %i.acn = trunc nuw <16 x i16> %i.acm to <16 x i8>
  %interleaved.vec923 = add <16 x i8> %wide.vec908, %i.acn
  store <16 x i8> %interleaved.vec923, ptr %i.aci, align 1, !tbaa !29
  %index.next924 = add nuw i64 %index907, 4       ; 2 uses
  %i.aco = icmp eq i64 %index.next924, %n.vec905
  br i1 %i.aco, label %vec.epilog.middle.block925, label %vec.epilog.vector.body906, !llvm.loop !911

vec.epilog.middle.block925:                       ; preds = %vec.epilog.vector.body906
  br i1 %cmp.n926, label %.loopexit472.i, label %.lr.ph535.i.preheader

.lr.ph535.i.preheader:                            ; preds = %iter.check899, %vector.memcheck709, %vec.epilog.iter.check900, %vec.epilog.middle.block925
  %.ph = phi i64 [ %i.x, %iter.check899 ], [ %i.x, %vector.memcheck709 ], [ %i.ls, %vec.epilog.iter.check900 ], [ %i.lv, %vec.epilog.middle.block925 ]
  %.6534.i.ph = phi i64 [ %i.d, %iter.check899 ], [ %i.d, %vector.memcheck709 ], [ %i.lt, %vec.epilog.iter.check900 ], [ %i.lw, %vec.epilog.middle.block925 ]
  %.0384533.i.ph = phi i64 [ 0, %iter.check899 ], [ 0, %vector.memcheck709 ], [ %i.lr, %vec.epilog.iter.check900 ], [ %i.lu, %vec.epilog.middle.block925 ]
  br label %.lr.ph535.i

.lr.ph535.i:                                      ; preds = %.lr.ph535.i.preheader, %.lr.ph535.i
  %i.acp = phi i64 [ %i.aeu, %.lr.ph535.i ], [ %.ph, %.lr.ph535.i.preheader ] ; 3 uses
  %.6534.i = phi i64 [ %i.aes, %.lr.ph535.i ], [ %.6534.i.ph, %.lr.ph535.i.preheader ] ; 7 uses
  %.0384533.i = phi i64 [ %i.aet, %.lr.ph535.i ], [ %.0384533.i.ph, %.lr.ph535.i.preheader ] ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.mo, i64 %.6534.i
  %i.acr = load i8, ptr %i.acq, align 1, !tbaa !29
  %i.acs = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.0384533.i ; 4 uses
  %i.act = load i8, ptr %i.acs, align 1, !tbaa !29
  %i.acu = getelementptr inbounds nuw i8, ptr %.02771, i64 %.6534.i
  %i.acv = load i8, ptr %i.acu, align 1, !tbaa !29
  %i.acw = add nuw nsw i64 %.6534.i, 1            ; 3 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.acw
  %i.acy = load i8, ptr %i.acx, align 1, !tbaa !29
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acs, i64 1
  %i.ada = load i8, ptr %i.acz, align 1, !tbaa !29
  %i.adb = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.acw
  %i.adc = load i8, ptr %i.adb, align 1, !tbaa !29
  %i.add = add nuw nsw i64 %.6534.i, 2            ; 3 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.add
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !29
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acs, i64 2
  %i.adh = load i8, ptr %i.adg, align 1, !tbaa !29
  %i.adi = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.add
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !29
  %i.adk = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.acp
  %i.adl = load i8, ptr %i.adk, align 1, !tbaa !29
  %i.adm = getelementptr inbounds nuw i8, ptr %i.acs, i64 3
  %i.adn = load i8, ptr %i.adm, align 1, !tbaa !29
  %i.ado = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.acp
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !29
  %i.adq = zext i8 %i.act to i16
  %i.adr = zext i8 %i.acv to i16
  %i.ads = add nuw nsw i16 %i.adr, %i.adq
  %i.adt = lshr i16 %i.ads, 1
  %i.adu = trunc nuw i16 %i.adt to i8
  %i.adv = add i8 %i.acr, %i.adu
  %i.adw = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.6534.i
  store i8 %i.adv, ptr %i.adw, align 1, !tbaa !29
  %i.adx = zext i8 %i.ada to i16
  %i.ady = zext i8 %i.adc to i16
  %i.adz = add nuw nsw i16 %i.ady, %i.adx
  %i.aea = lshr i16 %i.adz, 1
  %i.aeb = trunc nuw i16 %i.aea to i8
  %i.aec = add i8 %i.acy, %i.aeb
  %i.aed = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.acw
  store i8 %i.aec, ptr %i.aed, align 1, !tbaa !29
  %i.aee = zext i8 %i.adh to i16
  %i.aef = zext i8 %i.adj to i16
  %i.aeg = add nuw nsw i16 %i.aef, %i.aee
  %i.aeh = lshr i16 %i.aeg, 1
  %i.aei = trunc nuw i16 %i.aeh to i8
  %i.aej = add i8 %i.adf, %i.aei
  %i.aek = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.add
  store i8 %i.aej, ptr %i.aek, align 1, !tbaa !29
  %i.ael = zext i8 %i.adn to i16
  %i.aem = zext i8 %i.adp to i16
  %i.aen = add nuw nsw i16 %i.aem, %i.ael
  %i.aeo = lshr i16 %i.aen, 1
  %i.aep = trunc nuw i16 %i.aeo to i8
  %i.aeq = add i8 %i.adl, %i.aep
  %i.aer = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.acp
  store i8 %i.aeq, ptr %i.aer, align 1, !tbaa !29
  %i.aes = add nuw nsw i64 %.6534.i, 4            ; 2 uses
  %i.aet = add nuw nsw i64 %.0384533.i, 4         ; 2 uses
  %i.aeu = add nuw nsw i64 %.6534.i, 7            ; 2 uses
  %i.aev = icmp samesign ult i64 %i.aeu, %i.n
  br i1 %i.aev, label %.lr.ph535.i, label %.loopexit472.i, !llvm.loop !912

bb.e:                                             ; preds = %._crit_edge521.i
  br i1 %i.r, label %.preheader473.i, label %bb.f

.preheader473.i:                                  ; preds = %bb.e
  br i1 %i.w, label %.lr.ph530.i, label %.loopexit472.i

.lr.ph530.i:                                      ; preds = %.preheader473.i, %.lr.ph530.i
  %i.aew = phi i64 [ %i.agn, %.lr.ph530.i ], [ 5, %.preheader473.i ] ; 3 uses
  %.7529.i = phi i64 [ %i.agl, %.lr.ph530.i ], [ 3, %.preheader473.i ] ; 6 uses
  %.1385528.i = phi i64 [ %i.agm, %.lr.ph530.i ], [ 0, %.preheader473.i ] ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.mo, i64 %.7529.i
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !29
  %i.aez = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.1385528.i ; 3 uses
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !29
  %i.afb = getelementptr inbounds nuw i8, ptr %.02771, i64 %.7529.i
  %i.afc = load i8, ptr %i.afb, align 1, !tbaa !29
  %i.afd = add nuw nsw i64 %.7529.i, 1            ; 3 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.afd
  %i.aff = load i8, ptr %i.afe, align 1, !tbaa !29
  %i.afg = getelementptr i8, ptr %i.aez, i64 1
  %i.afh = load i8, ptr %i.afg, align 1, !tbaa !29
  %i.afi = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.afd
  %i.afj = load i8, ptr %i.afi, align 1, !tbaa !29
  %i.afk = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.aew
  %i.afl = load i8, ptr %i.afk, align 1, !tbaa !29
  %i.afm = getelementptr i8, ptr %i.aez, i64 2
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !29
  %i.afo = getelementptr inbounds nuw i8, ptr %.02771, i64 %i.aew
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !29
  %i.afq = zext i8 %i.afa to i16
  %i.afr = zext i8 %i.afc to i16
  %i.afs = add nuw nsw i16 %i.afr, %i.afq
  %i.aft = lshr i16 %i.afs, 1
  %i.afu = trunc nuw i16 %i.aft to i8
  %i.afv = add i8 %i.aey, %i.afu
  %i.afw = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.7529.i
  store i8 %i.afv, ptr %i.afw, align 1, !tbaa !29
  %i.afx = zext i8 %i.afh to i16
  %i.afy = zext i8 %i.afj to i16
  %i.afz = add nuw nsw i16 %i.afy, %i.afx
  %i.aga = lshr i16 %i.afz, 1
  %i.agb = trunc nuw i16 %i.aga to i8
  %i.agc = add i8 %i.aff, %i.agb
  %i.agd = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.afd
  store i8 %i.agc, ptr %i.agd, align 1, !tbaa !29
  %i.age = zext i8 %i.afn to i16
  %i.agf = zext i8 %i.afp to i16
  %i.agg = add nuw nsw i16 %i.agf, %i.age
  %i.agh = lshr i16 %i.agg, 1
  %i.agi = trunc nuw i16 %i.agh to i8
  %i.agj = add i8 %i.afl, %i.agi
  %i.agk = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.aew
  store i8 %i.agj, ptr %i.agk, align 1, !tbaa !29
  %i.agl = add nuw nsw i64 %.7529.i, 3            ; 2 uses
  %i.agm = add nuw nsw i64 %.1385528.i, 3         ; 2 uses
  %i.agn = add nuw nsw i64 %.7529.i, 5            ; 2 uses
  %i.ago = icmp samesign ult i64 %i.agn, %i.n
end_hunk_0
