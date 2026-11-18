Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/h5diff_dset?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@diff_datasetid:bb.a

bb.fb:                                            ; preds = %.loopexit1064
  %i.tg = zext nneg i32 %i.au to i64
  %i.th = call noalias ptr @calloc(i64 noundef %i.tg, i64 noundef 8) #17 ; 5 uses
  store ptr %i.th, ptr %i.te, align 8, !tbaa !93
  %i.ti = getelementptr inbounds nuw i8, ptr %i.se, i64 40
  store i32 %i.au, ptr %i.ti, align 8, !tbaa !97
  br i1 %.not1239, label %.loopexit1063.thread1605, label %.lr.ph1180.preheader

.lr.ph1180.preheader:                             ; preds = %bb.fb
  %wide.trip.count1382 = zext nneg i32 %i.au to i64 ; 3 uses
  %min.iters.check1837 = icmp ult i32 %i.au, 4
  br i1 %min.iters.check1837, label %.lr.ph1180.preheader2515, label %vector.ph1838

vector.ph1838:                                    ; preds = %.lr.ph1180.preheader
  %n.vec1839 = and i64 %wide.trip.count1382, 2147483644 ; 3 uses
  br label %vector.body1840

vector.body1840:                                  ; preds = %vector.body1840, %vector.ph1838
  %index1841 = phi i64 [ 0, %vector.ph1838 ], [ %index.next1842, %vector.body1840 ] ; 2 uses
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %index1841 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  store <2 x i64> splat (i64 1), ptr %i.tj, align 8, !tbaa !16
  store <2 x i64> splat (i64 1), ptr %i.tk, align 8, !tbaa !16
  %index.next1842 = add nuw i64 %index1841, 4     ; 2 uses
  %i.tl = icmp eq i64 %index.next1842, %n.vec1839
  br i1 %i.tl, label %middle.block1843, label %vector.body1840, !llvm.loop !42

middle.block1843:                                 ; preds = %vector.body1840
  %cmp.n1844 = icmp eq i64 %n.vec1839, %wide.trip.count1382
  br i1 %cmp.n1844, label %.loopexit1063.thread, label %.lr.ph1180.preheader2515

.lr.ph1180.preheader2515:                         ; preds = %.lr.ph1180.preheader, %middle.block1843
  %indvars.iv1378.ph = phi i64 [ 0, %.lr.ph1180.preheader ], [ %n.vec1839, %middle.block1843 ]
  br label %.lr.ph1180

.lr.ph1180:                                       ; preds = %.lr.ph1180.preheader2515, %.lr.ph1180
  %indvars.iv1378 = phi i64 [ %indvars.iv.next1379, %.lr.ph1180 ], [ %indvars.iv1378.ph, %.lr.ph1180.preheader2515 ] ; 2 uses
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %indvars.iv1378
  store i64 1, ptr %i.tm, align 8, !tbaa !16
  %indvars.iv.next1379 = add nuw nsw i64 %indvars.iv1378, 1 ; 2 uses
  %exitcond1383.not = icmp eq i64 %indvars.iv.next1379, %wide.trip.count1382
  br i1 %exitcond1383.not, label %.loopexit1063.thread, label %.lr.ph1180, !llvm.loop !43

.loopexit1063:                                    ; preds = %.loopexit1064
  %i.tn = getelementptr inbounds nuw i8, ptr %i.se, i64 48 ; 2 uses
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !94 ; 2 uses
  %.not881 = icmp eq ptr %i.to, null
  br i1 %.not881, label %bb.fc, label %.loopexit1062

.loopexit1063.thread1605:                         ; preds = %bb.fb
  %i.tp = getelementptr inbounds nuw i8, ptr %i.se, i64 48 ; 2 uses
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !94
  %.not8811606 = icmp eq ptr %i.tq, null
  br i1 %.not8811606, label %.thread1619, label %.loopexit1061.thread

.thread1619:                                      ; preds = %.loopexit1063.thread1605
  %i.tr = zext nneg i32 %i.au to i64
  %i.ts = call noalias ptr @calloc(i64 noundef %i.tr, i64 noundef 8) #17
  store ptr %i.ts, ptr %i.tp, align 8, !tbaa !94
  %i.tt = getelementptr inbounds nuw i8, ptr %i.se, i64 56
  store i32 %i.au, ptr %i.tt, align 8, !tbaa !98
  br label %.loopexit1061.thread

.loopexit1063.thread:                             ; preds = %.lr.ph1180, %middle.block1843
  %i.tu = getelementptr inbounds nuw i8, ptr %i.se, i64 48 ; 2 uses
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !94 ; 2 uses
  %.not8811603 = icmp eq ptr %i.tv, null
  br i1 %.not8811603, label %.thread1620, label %.lr.ph1186

.thread1620:                                      ; preds = %.loopexit1063.thread
  %i.tw = zext nneg i32 %i.au to i64
  %i.tx = call noalias ptr @calloc(i64 noundef %i.tw, i64 noundef 8) #17 ; 2 uses
  store ptr %i.tx, ptr %i.tu, align 8, !tbaa !94
  %i.ty = getelementptr inbounds nuw i8, ptr %i.se, i64 56
  store i32 %i.au, ptr %i.ty, align 8, !tbaa !98
  br label %.lr.ph1183.preheader

bb.fc:                                            ; preds = %.loopexit1063
  %i.tz = zext nneg i32 %i.au to i64
  %i.ua = call noalias ptr @calloc(i64 noundef %i.tz, i64 noundef 8) #17 ; 2 uses
  store ptr %i.ua, ptr %i.tn, align 8, !tbaa !94
  %i.ub = getelementptr inbounds nuw i8, ptr %i.se, i64 56
  store i32 %i.au, ptr %i.ub, align 8, !tbaa !98
  br i1 %.not1239, label %.loopexit1061.thread, label %.lr.ph1183.preheader

.lr.ph1183.preheader:                             ; preds = %.thread1620, %bb.fc
  %i.uc = phi ptr [ %i.tx, %.thread1620 ], [ %i.ua, %bb.fc ] ; 4 uses
  %i.ud = phi ptr [ %i.th, %.thread1620 ], [ %i.tf, %bb.fc ] ; 2 uses
  %wide.trip.count1388 = zext nneg i32 %i.au to i64 ; 3 uses
  %min.iters.check1847 = icmp ult i32 %i.au, 4
  br i1 %min.iters.check1847, label %.lr.ph1183.preheader2514, label %vector.ph1848

vector.ph1848:                                    ; preds = %.lr.ph1183.preheader
  %n.vec1849 = and i64 %wide.trip.count1388, 2147483644 ; 3 uses
  br label %vector.body1850

vector.body1850:                                  ; preds = %vector.body1850, %vector.ph1848
  %index1851 = phi i64 [ 0, %vector.ph1848 ], [ %index.next1852, %vector.body1850 ] ; 2 uses
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.uc, i64 %index1851 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  store <2 x i64> splat (i64 1), ptr %i.ue, align 8, !tbaa !16
  store <2 x i64> splat (i64 1), ptr %i.uf, align 8, !tbaa !16
  %index.next1852 = add nuw i64 %index1851, 4     ; 2 uses
  %i.ug = icmp eq i64 %index.next1852, %n.vec1849
  br i1 %i.ug, label %middle.block1853, label %vector.body1850, !llvm.loop !44

middle.block1853:                                 ; preds = %vector.body1850
  %cmp.n1854 = icmp eq i64 %n.vec1849, %wide.trip.count1388
  br i1 %cmp.n1854, label %.lr.ph1186, label %.lr.ph1183.preheader2514

.lr.ph1183.preheader2514:                         ; preds = %.lr.ph1183.preheader, %middle.block1853
  %indvars.iv1384.ph = phi i64 [ 0, %.lr.ph1183.preheader ], [ %n.vec1849, %middle.block1853 ]
  br label %.lr.ph1183

.lr.ph1183:                                       ; preds = %.lr.ph1183.preheader2514, %.lr.ph1183
  %indvars.iv1384 = phi i64 [ %indvars.iv.next1385, %.lr.ph1183 ], [ %indvars.iv1384.ph, %.lr.ph1183.preheader2514 ] ; 2 uses
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.uc, i64 %indvars.iv1384
  store i64 1, ptr %i.uh, align 8, !tbaa !16
  %indvars.iv.next1385 = add nuw nsw i64 %indvars.iv1384, 1 ; 2 uses
  %exitcond1389.not = icmp eq i64 %indvars.iv.next1385, %wide.trip.count1388
  br i1 %exitcond1389.not, label %.lr.ph1186, label %.lr.ph1183, !llvm.loop !45

.loopexit1062:                                    ; preds = %.loopexit1063
  br i1 %.not1239, label %.loopexit1061.thread, label %.lr.ph1186

.lr.ph1186:                                       ; preds = %.lr.ph1183, %middle.block1853, %.loopexit1063.thread, %.loopexit1062
  %i.ui = phi ptr [ %i.th, %.loopexit1063.thread ], [ %i.tf, %.loopexit1062 ], [ %i.ud, %middle.block1853 ], [ %i.ud, %.lr.ph1183 ] ; 2 uses
  %i.uj = phi ptr [ %i.tv, %.loopexit1063.thread ], [ %i.to, %.loopexit1062 ], [ %i.uc, %middle.block1853 ], [ %i.uc, %.lr.ph1183 ] ; 2 uses
  %wide.trip.count1394 = zext nneg i32 %i.au to i64
  br label %bb.fd

bb.fd:                                            ; preds = %.lr.ph1186, %bb.fj
  %i.uk = phi ptr [ %i.td, %.lr.ph1186 ], [ %i.vf, %bb.fj ]
  %indvars.iv1390 = phi i64 [ 0, %.lr.ph1186 ], [ %indvars.iv.next1391, %bb.fj ] ; 4 uses
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %indvars.iv1390
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !16
  %i.un = icmp ugt i64 %i.um, 1
  br i1 %i.un, label %bb.fe, label %bb.fj

bb.fe:                                            ; preds = %bb.fd
  %i.uo = load ptr, ptr %i.tb, align 8, !tbaa !92 ; 2 uses
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %indvars.iv1390
  %i.uq = load i64, ptr %i.up, align 8, !tbaa !16
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.uj, i64 %indvars.iv1390
  %i.us = load i64, ptr %i.ur, align 8, !tbaa !16
  %i.ut = icmp ult i64 %i.uq, %i.us
  br i1 %i.ut, label %bb.ff, label %bb.fj

bb.ff:                                            ; preds = %bb.fe
  %i.uu = load i32, ptr @enable_error_stack, align 4, !tbaa !15
  %i.uv = icmp sgt i32 %i.uu, 0
  br i1 %i.uv, label %bb.fg, label %.loopexit

bb.fg:                                            ; preds = %bb.ff
  %i.uw = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !16 ; 2 uses
  %i.ux = icmp sgt i64 %i.uw, -1
  %i.uy = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.uz = icmp sgt i64 %i.uy, -1
  %or.cond62 = select i1 %i.ux, i1 %i.uz, i1 false
  br i1 %or.cond62, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.va = load i64, ptr @H5E_tools_g, align 8, !tbaa !16
  %i.vb = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !16
  %i.vc = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.uw, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.diff_datasetid, i32 noundef 592, i64 noundef %i.uy, i64 noundef %i.va, i64 noundef %i.vb, ptr noundef nonnull @.str.24) #13 ; 0 uses
  br label %.loopexit

bb.fi:                                            ; preds = %bb.fg
  %i.vd = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite882 = call i64 @fwrite(ptr nonnull @.str.24, i64 41, i64 1, ptr %i.vd) #14 ; 0 uses
  %i.ve = load ptr, ptr @stderr, align 8, !tbaa !19
  %fputc884 = call i32 @fputc(i32 10, ptr %i.ve)  ; 0 uses
  br label %.loopexit

bb.fj:                                            ; preds = %bb.fd, %bb.fe
  %i.vf = phi ptr [ %i.uk, %bb.fd ], [ %i.uo, %bb.fe ] ; 2 uses
  %indvars.iv.next1391 = add nuw nsw i64 %indvars.iv1390, 1 ; 2 uses
  %exitcond1395.not = icmp eq i64 %indvars.iv.next1391, %wide.trip.count1394
  br i1 %exitcond1395.not, label %.loopexit1061, label %bb.fd, !llvm.loop !46

.loopexit1061.thread:                             ; preds = %.loopexit1062, %.loopexit1063.thread1605, %.thread1619, %bb.fc
  store i64 1, ptr %i.pe, align 8, !tbaa !84
  br label %.loopexit1060

.loopexit1061:                                    ; preds = %bb.fj, %bb.ez
  %i.vg = phi ptr [ %i.sm, %bb.ez ], [ %i.uj, %bb.fj ] ; 9 uses
  %i.vh = phi ptr [ %i.sk, %bb.ez ], [ %i.ui, %bb.fj ] ; 9 uses
  %i.vi = phi ptr [ %i.sh, %bb.ez ], [ %i.vf, %bb.fj ] ; 9 uses
  %i.vj = phi ptr [ %i.sf, %bb.ez ], [ %i.tc, %bb.fj ] ; 9 uses
  store i64 1, ptr %i.pe, align 8, !tbaa !84
  br i1 %.not1239, label %.loopexit1060, label %.lr.ph1189

.lr.ph1189:                                       ; preds = %.loopexit1061
  %wide.trip.count1400 = zext nneg i32 %i.au to i64 ; 4 uses
  %min.iters.check2016 = icmp ult i32 %i.au, 98
  br i1 %min.iters.check2016, label %scalar.ph2015.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1189
  %i.vk = shl nuw nsw i64 %wide.trip.count1400, 3 ; 9 uses
  %6 = getelementptr i8, ptr %i.l, i64 %i.vk      ; 9 uses
  %7 = getelementptr i8, ptr %i.o, i64 %i.vk      ; 9 uses
  %8 = getelementptr i8, ptr %i.m, i64 %i.vk      ; 9 uses
  %i.vl = getelementptr i8, ptr %i.n, i64 %i.vk   ; 9 uses
  %i.vm = getelementptr i8, ptr %i.p, i64 %i.vk   ; 9 uses
  %9 = getelementptr i8, ptr %i.vj, i64 %i.vk     ; 6 uses
  %10 = getelementptr i8, ptr %i.vi, i64 %i.vk    ; 6 uses
  %11 = getelementptr i8, ptr %i.vh, i64 %i.vk    ; 6 uses
  %i.vn = getelementptr i8, ptr %i.vg, i64 %i.vk  ; 6 uses
  %bound0.a = icmp ult ptr %i.l, %7
  %bound1.a = icmp ult ptr %i.o, %6
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %bound02017 = icmp ult ptr %i.l, %8
  %bound12018 = icmp ult ptr %i.m, %6
  %found.conflict2019 = and i1 %bound02017, %bound12018
  %conflict.rdx = or i1 %found.conflict.a, %found.conflict2019
  %bound02020 = icmp ult ptr %i.l, %i.vl
  %bound12021 = icmp ult ptr %i.n, %6
  %found.conflict2022 = and i1 %bound02020, %bound12021
  %conflict.rdx2023 = or i1 %conflict.rdx, %found.conflict2022
  %bound02024 = icmp ult ptr %i.l, %i.pf
  %bound12025 = icmp ult ptr %i.pe, %6
  %found.conflict2026 = and i1 %bound02024, %bound12025
  %conflict.rdx2027 = or i1 %conflict.rdx2023, %found.conflict2026
  %bound02028 = icmp ult ptr %i.l, %i.vm
  %bound12029 = icmp ult ptr %i.p, %6
  %found.conflict2030 = and i1 %bound02028, %bound12029
  %conflict.rdx2031 = or i1 %conflict.rdx2027, %found.conflict2030
  %bound02032 = icmp ult ptr %i.l, %9
  %bound12033 = icmp ult ptr %i.vj, %6
  %found.conflict2034 = and i1 %bound02032, %bound12033
  %conflict.rdx2035 = or i1 %conflict.rdx2031, %found.conflict2034
  %bound02036 = icmp ult ptr %i.l, %10
  %bound12037 = icmp ult ptr %i.vi, %6
  %found.conflict2038 = and i1 %bound02036, %bound12037
  %conflict.rdx2039 = or i1 %conflict.rdx2035, %found.conflict2038
  %bound02040 = icmp ult ptr %i.l, %11
  %bound12041 = icmp ult ptr %i.vh, %6
  %found.conflict2042 = and i1 %bound02040, %bound12041
  %conflict.rdx2043 = or i1 %conflict.rdx2039, %found.conflict2042
  %bound02044 = icmp ult ptr %i.l, %i.vn
  %bound12045 = icmp ult ptr %i.vg, %6
  %found.conflict2046 = and i1 %bound02044, %bound12045
  %conflict.rdx2047 = or i1 %conflict.rdx2043, %found.conflict2046
  %bound02048 = icmp ult ptr %i.o, %8
  %bound12049 = icmp ult ptr %i.m, %7
  %found.conflict2050 = and i1 %bound02048, %bound12049
  %conflict.rdx2051 = or i1 %conflict.rdx2047, %found.conflict2050
  %bound02052 = icmp ult ptr %i.o, %i.vl
  %bound12053 = icmp ult ptr %i.n, %7
  %found.conflict2054 = and i1 %bound02052, %bound12053
  %conflict.rdx2055 = or i1 %conflict.rdx2051, %found.conflict2054
  %bound02056 = icmp ult ptr %i.o, %i.pf
  %bound12057 = icmp ult ptr %i.pe, %7
  %found.conflict2058 = and i1 %bound02056, %bound12057
  %conflict.rdx2059 = or i1 %conflict.rdx2055, %found.conflict2058
  %bound02060 = icmp ult ptr %i.o, %i.vm
  %bound12061 = icmp ult ptr %i.p, %7
  %found.conflict2062 = and i1 %bound02060, %bound12061
  %conflict.rdx2063 = or i1 %conflict.rdx2059, %found.conflict2062
  %bound02064 = icmp ult ptr %i.o, %9
  %bound12065 = icmp ult ptr %i.vj, %7
  %found.conflict2066 = and i1 %bound02064, %bound12065
  %conflict.rdx2067 = or i1 %conflict.rdx2063, %found.conflict2066
  %bound02068 = icmp ult ptr %i.o, %10
  %bound12069 = icmp ult ptr %i.vi, %7
  %found.conflict2070 = and i1 %bound02068, %bound12069
  %conflict.rdx2071 = or i1 %conflict.rdx2067, %found.conflict2070
  %bound02072 = icmp ult ptr %i.o, %11
  %bound12073 = icmp ult ptr %i.vh, %7
  %found.conflict2074 = and i1 %bound02072, %bound12073
  %conflict.rdx2075 = or i1 %conflict.rdx2071, %found.conflict2074
  %bound02076 = icmp ult ptr %i.o, %i.vn
  %bound12077 = icmp ult ptr %i.vg, %7
  %found.conflict2078 = and i1 %bound02076, %bound12077
  %conflict.rdx2079 = or i1 %conflict.rdx2075, %found.conflict2078
  %bound02080 = icmp ult ptr %i.m, %i.vl
  %bound12081 = icmp ult ptr %i.n, %8
  %found.conflict2082 = and i1 %bound02080, %bound12081
  %conflict.rdx2083 = or i1 %conflict.rdx2079, %found.conflict2082
  %bound02084 = icmp ult ptr %i.m, %i.pf
  %bound12085 = icmp ult ptr %i.pe, %8
  %found.conflict2086 = and i1 %bound02084, %bound12085
  %conflict.rdx2087 = or i1 %conflict.rdx2083, %found.conflict2086
  %bound02088 = icmp ult ptr %i.m, %i.vm
  %bound12089 = icmp ult ptr %i.p, %8
  %found.conflict2090 = and i1 %bound02088, %bound12089
  %conflict.rdx2091 = or i1 %conflict.rdx2087, %found.conflict2090
  %bound02092 = icmp ult ptr %i.m, %9
  %bound12093 = icmp ult ptr %i.vj, %8
  %found.conflict2094 = and i1 %bound02092, %bound12093
  %conflict.rdx2095 = or i1 %conflict.rdx2091, %found.conflict2094
  %bound02096 = icmp ult ptr %i.m, %10
  %bound12097 = icmp ult ptr %i.vi, %8
  %found.conflict2098 = and i1 %bound02096, %bound12097
  %conflict.rdx2099 = or i1 %conflict.rdx2095, %found.conflict2098
  %bound02100 = icmp ult ptr %i.m, %11
  %bound12101 = icmp ult ptr %i.vh, %8
  %found.conflict2102 = and i1 %bound02100, %bound12101
  %conflict.rdx2103 = or i1 %conflict.rdx2099, %found.conflict2102
  %bound02104 = icmp ult ptr %i.m, %i.vn
  %bound12105 = icmp ult ptr %i.vg, %8
  %found.conflict2106 = and i1 %bound02104, %bound12105
  %conflict.rdx2107 = or i1 %conflict.rdx2103, %found.conflict2106
  %bound02108 = icmp ult ptr %i.n, %i.pf
  %bound12109 = icmp ult ptr %i.pe, %i.vl
  %found.conflict2110 = and i1 %bound02108, %bound12109
  %conflict.rdx2111 = or i1 %conflict.rdx2107, %found.conflict2110
  %bound02112 = icmp ult ptr %i.n, %i.vm
  %bound12113 = icmp ult ptr %i.p, %i.vl
  %found.conflict2114 = and i1 %bound02112, %bound12113
  %conflict.rdx2115 = or i1 %conflict.rdx2111, %found.conflict2114
  %bound02116 = icmp ult ptr %i.n, %9
  %bound12117 = icmp ult ptr %i.vj, %i.vl
  %found.conflict2118 = and i1 %bound02116, %bound12117
  %conflict.rdx2119 = or i1 %conflict.rdx2115, %found.conflict2118
  %bound02120 = icmp ult ptr %i.n, %10
  %bound12121 = icmp ult ptr %i.vi, %i.vl
  %found.conflict2122 = and i1 %bound02120, %bound12121
  %conflict.rdx2123 = or i1 %conflict.rdx2119, %found.conflict2122
  %bound02124 = icmp ult ptr %i.n, %11
  %bound12125 = icmp ult ptr %i.vh, %i.vl
  %found.conflict2126 = and i1 %bound02124, %bound12125
  %conflict.rdx2127 = or i1 %conflict.rdx2123, %found.conflict2126
  %bound02128 = icmp ult ptr %i.n, %i.vn
  %bound12129 = icmp ult ptr %i.vg, %i.vl
  %found.conflict2130 = and i1 %bound02128, %bound12129
  %conflict.rdx2131 = or i1 %conflict.rdx2127, %found.conflict2130
  %bound02132 = icmp ult ptr %i.pe, %i.vm
  %bound12133 = icmp ult ptr %i.p, %i.pf
  %found.conflict2134 = and i1 %bound02132, %bound12133
  %conflict.rdx2135 = or i1 %conflict.rdx2131, %found.conflict2134
  %bound02136 = icmp ult ptr %i.pe, %9
  %bound12137 = icmp ult ptr %i.vj, %i.pf
  %found.conflict2138 = and i1 %bound02136, %bound12137
  %conflict.rdx2139 = or i1 %conflict.rdx2135, %found.conflict2138
  %bound02140 = icmp ult ptr %i.pe, %10
  %bound12141 = icmp ult ptr %i.vi, %i.pf
  %found.conflict2142 = and i1 %bound02140, %bound12141
  %conflict.rdx2143 = or i1 %conflict.rdx2139, %found.conflict2142
  %bound02144 = icmp ult ptr %i.pe, %11
  %bound12145 = icmp ult ptr %i.vh, %i.pf
  %found.conflict2146 = and i1 %bound02144, %bound12145
  %conflict.rdx2147 = or i1 %conflict.rdx2143, %found.conflict2146
  %bound02148 = icmp ult ptr %i.pe, %i.vn
  %bound12149 = icmp ult ptr %i.vg, %i.pf
  %found.conflict2150 = and i1 %bound02148, %bound12149
  %conflict.rdx2151 = or i1 %conflict.rdx2147, %found.conflict2150
  %bound02152 = icmp ult ptr %i.p, %9
  %bound12153 = icmp ult ptr %i.vj, %i.vm
  %found.conflict2154 = and i1 %bound02152, %bound12153
  %conflict.rdx2155 = or i1 %conflict.rdx2151, %found.conflict2154
  %bound02156 = icmp ult ptr %i.p, %10
  %bound12157 = icmp ult ptr %i.vi, %i.vm
  %found.conflict2158 = and i1 %bound02156, %bound12157
  %conflict.rdx2159 = or i1 %conflict.rdx2155, %found.conflict2158
  %bound02160 = icmp ult ptr %i.p, %11
  %bound12161 = icmp ult ptr %i.vh, %i.vm
  %found.conflict2162 = and i1 %bound02160, %bound12161
  %conflict.rdx2163 = or i1 %conflict.rdx2159, %found.conflict2162
  %bound02164 = icmp ult ptr %i.p, %i.vn
  %bound12165 = icmp ult ptr %i.vg, %i.vm
  %found.conflict2166 = and i1 %bound02164, %bound12165
  %conflict.rdx2167 = or i1 %conflict.rdx2163, %found.conflict2166
  br i1 %conflict.rdx2167, label %scalar.ph2015.preheader, label %vector.ph2168

vector.ph2168:                                    ; preds = %vector.memcheck
  %n.vec2169 = and i64 %wide.trip.count1400, 2147483644 ; 3 uses
  br label %vector.body2170

vector.body2170:                                  ; preds = %vector.body2170, %vector.ph2168
  %index2171 = phi i64 [ 0, %vector.ph2168 ], [ %index.next2181, %vector.body2170 ] ; 10 uses
  %vec.phi = phi <2 x i64> [ splat (i64 1), %vector.ph2168 ], [ %i.wg, %vector.body2170 ]
  %vec.phi2172 = phi <2 x i64> [ splat (i64 1), %vector.ph2168 ], [ %i.wh, %vector.body2170 ]
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %index2171 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  %wide.load2173 = load <2 x i64>, ptr %i.vo, align 8, !tbaa !16, !alias.scope !99
  %wide.load2174 = load <2 x i64>, ptr %i.vp, align 8, !tbaa !16, !alias.scope !99
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index2171 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 16
  store <2 x i64> %wide.load2173, ptr %i.vq, align 16, !tbaa !16, !alias.scope !100, !noalias !101
  store <2 x i64> %wide.load2174, ptr %i.vr, align 16, !tbaa !16, !alias.scope !100, !noalias !101
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.vi, i64 %index2171 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %wide.load2175 = load <2 x i64>, ptr %i.vs, align 8, !tbaa !16, !alias.scope !102
  %wide.load2176 = load <2 x i64>, ptr %i.vt, align 8, !tbaa !16, !alias.scope !102
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index2171 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 16
  store <2 x i64> %wide.load2175, ptr %i.vu, align 16, !tbaa !16, !alias.scope !103, !noalias !104
  store <2 x i64> %wide.load2176, ptr %i.vv, align 16, !tbaa !16, !alias.scope !103, !noalias !104
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.vh, i64 %index2171 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 16
  %wide.load2177 = load <2 x i64>, ptr %i.vw, align 8, !tbaa !16, !alias.scope !105 ; 2 uses
  %wide.load2178 = load <2 x i64>, ptr %i.vx, align 8, !tbaa !16, !alias.scope !105 ; 2 uses
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index2171 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  store <2 x i64> %wide.load2177, ptr %i.vy, align 16, !tbaa !16, !alias.scope !106, !noalias !107
  store <2 x i64> %wide.load2178, ptr %i.vz, align 16, !tbaa !16, !alias.scope !106, !noalias !107
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.vg, i64 %index2171 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  %wide.load2179 = load <2 x i64>, ptr %i.wa, align 8, !tbaa !16, !alias.scope !108 ; 2 uses
  %wide.load2180 = load <2 x i64>, ptr %i.wb, align 8, !tbaa !16, !alias.scope !108 ; 2 uses
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index2171 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 16
  store <2 x i64> %wide.load2179, ptr %i.wc, align 16, !tbaa !16, !alias.scope !109, !noalias !110
  store <2 x i64> %wide.load2180, ptr %i.wd, align 16, !tbaa !16, !alias.scope !109, !noalias !110
  %i.we = mul <2 x i64> %wide.load2179, %wide.load2177
  %i.wf = mul <2 x i64> %wide.load2180, %wide.load2178
  %i.wg = mul <2 x i64> %i.we, %vec.phi           ; 2 uses
  %i.wh = mul <2 x i64> %i.wf, %vec.phi2172       ; 2 uses
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index2171 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  store <2 x i64> zeroinitializer, ptr %i.wi, align 16, !tbaa !16, !alias.scope !111, !noalias !112
  store <2 x i64> zeroinitializer, ptr %i.wj, align 16, !tbaa !16, !alias.scope !111, !noalias !112
  %index.next2181 = add nuw i64 %index2171, 4     ; 2 uses
  %i.wk = icmp eq i64 %index.next2181, %n.vec2169
  br i1 %i.wk, label %middle.block2182, label %vector.body2170, !llvm.loop !58

middle.block2182:                                 ; preds = %vector.body2170
  %bin.rdx = mul <2 x i64> %i.wh, %i.wg
  %i.wl = call i64 @llvm.vector.reduce.mul.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.wl, ptr %i.pe, align 8, !tbaa !84, !alias.scope !113, !noalias !114
  %cmp.n2183 = icmp eq i64 %n.vec2169, %wide.trip.count1400
  br i1 %cmp.n2183, label %.loopexit1060, label %scalar.ph2015.preheader

scalar.ph2015.preheader:                          ; preds = %vector.memcheck, %.lr.ph1189, %middle.block2182
  %indvars.iv1396.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph1189 ], [ %n.vec2169, %middle.block2182 ]
  %.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph1189 ], [ %i.wl, %middle.block2182 ]
  br label %scalar.ph2015

scalar.ph2015:                                    ; preds = %scalar.ph2015.preheader, %scalar.ph2015
  %indvars.iv1396 = phi i64 [ %indvars.iv.next1397, %scalar.ph2015 ], [ %indvars.iv1396.ph, %scalar.ph2015.preheader ] ; 10 uses
  %i.wm = phi i64 [ %i.xa, %scalar.ph2015 ], [ %.ph, %scalar.ph2015.preheader ]
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %indvars.iv1396
  %i.wo = load i64, ptr %i.wn, align 8, !tbaa !16
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv1396
  store i64 %i.wo, ptr %i.wp, align 8, !tbaa !16
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.vi, i64 %indvars.iv1396
  %i.wr = load i64, ptr %i.wq, align 8, !tbaa !16
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv1396
  store i64 %i.wr, ptr %i.ws, align 8, !tbaa !16
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.vh, i64 %indvars.iv1396
  %i.wu = load i64, ptr %i.wt, align 8, !tbaa !16 ; 2 uses
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv1396
  store i64 %i.wu, ptr %i.wv, align 8, !tbaa !16
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.vg, i64 %indvars.iv1396
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !16 ; 2 uses
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv1396
  store i64 %i.wx, ptr %i.wy, align 8, !tbaa !16
  %i.wz = mul i64 %i.wx, %i.wu
  %i.xa = mul i64 %i.wz, %i.wm                    ; 2 uses
  store i64 %i.xa, ptr %i.pe, align 8, !tbaa !84
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv1396
  store i64 0, ptr %i.xb, align 8, !tbaa !16
  %indvars.iv.next1397 = add nuw nsw i64 %indvars.iv1396, 1 ; 2 uses
  %exitcond1401.not = icmp eq i64 %indvars.iv.next1397, %wide.trip.count1400
  br i1 %exitcond1401.not, label %.loopexit1060, label %scalar.ph2015, !llvm.loop !59

.loopexit1060:                                    ; preds = %scalar.ph2015, %middle.block2182, %.loopexit1061.thread, %.loopexit1061, %bb.ev
  %i.xc = getelementptr inbounds nuw i8, ptr %4, i64 1744 ; 3 uses
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !87 ; 20 uses
  %.not885 = icmp eq ptr %i.xd, null              ; 2 uses
  br i1 %.not885, label %.loopexit1055, label %bb.fk

bb.fk:                                            ; preds = %.loopexit1060
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !91 ; 4 uses
  %.not886 = icmp eq ptr %i.xe, null
  br i1 %.not886, label %.thread1036, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !92 ; 3 uses
  %.not887 = icmp eq ptr %i.xg, null
  br i1 %.not887, label %.thread1036.thread1610, label %bb.fm

.thread1036.thread1610:                           ; preds = %bb.fl
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  br label %bb.fo

bb.fm:                                            ; preds = %bb.fl
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xd, i64 32
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !93 ; 2 uses
  %.not888 = icmp eq ptr %i.xj, null
  br i1 %.not888, label %.thread1036.thread, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xd, i64 48
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !94 ; 2 uses
  %.not889 = icmp eq ptr %i.xl, null
  br i1 %.not889, label %.thread1036.thread, label %.loopexit1056

.thread1036.thread:                               ; preds = %bb.fm, %bb.fn
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  br label %.loopexit1059

.thread1036:                                      ; preds = %bb.fk
  %i.xn = zext nneg i32 %i.bu to i64
  %i.xo = call noalias ptr @calloc(i64 noundef %i.xn, i64 noundef 8) #17 ; 3 uses
  store ptr %i.xo, ptr %i.xd, align 8, !tbaa !91
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  store i32 %i.bu, ptr %i.xp, align 8, !tbaa !95
  %.phi.trans.insert1468 = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  %.pre1469 = load ptr, ptr %.phi.trans.insert1468, align 8, !tbaa !92 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xd, i64 16 ; 2 uses
  %.not891 = icmp eq ptr %.pre1469, null
  br i1 %.not891, label %bb.fo, label %.loopexit1059

bb.fo:                                            ; preds = %.thread1036.thread1610, %.thread1036
  %i.xr = phi ptr [ %i.xh, %.thread1036.thread1610 ], [ %i.xq, %.thread1036 ] ; 4 uses
  %i.xs = phi ptr [ %i.xe, %.thread1036.thread1610 ], [ %i.xo, %.thread1036 ] ; 3 uses
  %i.xt = zext nneg i32 %i.bu to i64
  %i.xu = call noalias ptr @calloc(i64 noundef %i.xt, i64 noundef 8) #17 ; 6 uses
  store ptr %i.xu, ptr %i.xr, align 8, !tbaa !92
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xd, i64 24
  store i32 %i.bu, ptr %i.xv, align 8, !tbaa !96
  br i1 %.not1240, label %.loopexit1059, label %.lr.ph1192.preheader

.lr.ph1192.preheader:                             ; preds = %bb.fo
  %wide.trip.count1406 = zext nneg i32 %i.bu to i64 ; 3 uses
  %min.iters.check2186 = icmp ult i32 %i.bu, 4
  br i1 %min.iters.check2186, label %.lr.ph1192.preheader2510, label %vector.ph2187

vector.ph2187:                                    ; preds = %.lr.ph1192.preheader
  %n.vec2188 = and i64 %wide.trip.count1406, 2147483644 ; 3 uses
  br label %vector.body2189

vector.body2189:                                  ; preds = %vector.body2189, %vector.ph2187
  %index2190 = phi i64 [ 0, %vector.ph2187 ], [ %index.next2191, %vector.body2189 ] ; 2 uses
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %index2190 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 16
  store <2 x i64> splat (i64 1), ptr %i.xw, align 8, !tbaa !16
  store <2 x i64> splat (i64 1), ptr %i.xx, align 8, !tbaa !16
  %index.next2191 = add nuw i64 %index2190, 4     ; 2 uses
  %i.xy = icmp eq i64 %index.next2191, %n.vec2188
  br i1 %i.xy, label %middle.block2192, label %vector.body2189, !llvm.loop !60

middle.block2192:                                 ; preds = %vector.body2189
  %cmp.n2193 = icmp eq i64 %n.vec2188, %wide.trip.count1406
  br i1 %cmp.n2193, label %.loopexit1059, label %.lr.ph1192.preheader2510

.lr.ph1192.preheader2510:                         ; preds = %.lr.ph1192.preheader, %middle.block2192
  %indvars.iv1402.ph = phi i64 [ 0, %.lr.ph1192.preheader ], [ %n.vec2188, %middle.block2192 ]
  br label %.lr.ph1192

.lr.ph1192:                                       ; preds = %.lr.ph1192.preheader2510, %.lr.ph1192
  %indvars.iv1402 = phi i64 [ %indvars.iv.next1403, %.lr.ph1192 ], [ %indvars.iv1402.ph, %.lr.ph1192.preheader2510 ] ; 2 uses
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %indvars.iv1402
  store i64 1, ptr %i.xz, align 8, !tbaa !16
  %indvars.iv.next1403 = add nuw nsw i64 %indvars.iv1402, 1 ; 2 uses
  %exitcond1407.not = icmp eq i64 %indvars.iv.next1403, %wide.trip.count1406
  br i1 %exitcond1407.not, label %.loopexit1059, label %.lr.ph1192, !llvm.loop !61

.loopexit1059:                                    ; preds = %.lr.ph1192, %middle.block2192, %.thread1036.thread, %bb.fo, %.thread1036
  %i.ya = phi ptr [ %i.xm, %.thread1036.thread ], [ %i.xr, %bb.fo ], [ %i.xq, %.thread1036 ], [ %i.xr, %middle.block2192 ], [ %i.xr, %.lr.ph1192 ]
  %i.yb = phi ptr [ %i.xe, %.thread1036.thread ], [ %i.xs, %bb.fo ], [ %i.xo, %.thread1036 ], [ %i.xs, %middle.block2192 ], [ %i.xs, %.lr.ph1192 ]
  %i.yc = phi ptr [ %i.xg, %.thread1036.thread ], [ %i.xu, %bb.fo ], [ %.pre1469, %.thread1036 ], [ %i.xu, %middle.block2192 ], [ %i.xu, %.lr.ph1192 ]
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xd, i64 32 ; 2 uses
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !93 ; 3 uses
  %.not892 = icmp eq ptr %i.ye, null
  br i1 %.not892, label %bb.fp, label %.loopexit1058

bb.fp:                                            ; preds = %.loopexit1059
end_hunk_0
