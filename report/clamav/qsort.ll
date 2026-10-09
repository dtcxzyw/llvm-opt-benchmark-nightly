Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/qsort?download=true
inline.NumInlined: 24
inline.NumDeleted: 3
begin_hunk_0_@cli_qsort:bb.a
  %i.wv = tail call i32 %3(ptr noundef nonnull %i.wu, ptr noundef nonnull %.2355543) #2
  %i.ww = icmp sgt i32 %i.wv, 0
  br i1 %i.ww, label %iter.check1219, label %.critedge6

iter.check1219:                                   ; preds = %.lr.ph544
  br i1 %min.iters.check1199, label %.preheader473.preheader, label %vector.memcheck1188

vector.memcheck1188:                              ; preds = %iter.check1219
  %bound01195 = icmp ult ptr %.2355543, %scevgep1194
  %bound11196 = icmp ult ptr %i.wu, %scevgep1193
  %found.conflict1197 = and i1 %bound01195, %bound11196
  br i1 %found.conflict1197, label %.preheader473.preheader, label %vector.main.loop.iter.check1200

vector.main.loop.iter.check1200:                  ; preds = %vector.memcheck1188
  br i1 %min.iters.check1201, label %vec.epilog.ph1223, label %vector.ph1202

vector.ph1202:                                    ; preds = %vector.main.loop.iter.check1200
  %i.wx = getelementptr i8, ptr %.2355543, i64 %n.vec1203
  %i.wy = getelementptr i8, ptr %i.wu, i64 %n.vec1203
  br label %vector.body1204

vector.body1204:                                  ; preds = %vector.ph1202, %vector.body1204
  %index1205 = phi i64 [ 0, %vector.ph1202 ], [ %index.next1212, %vector.body1204 ] ; 3 uses
  %next.gep1206 = getelementptr i8, ptr %.2355543, i64 %index1205 ; 3 uses
  %next.gep1207 = getelementptr i8, ptr %i.wu, i64 %index1205 ; 3 uses
  %i.wz = getelementptr i8, ptr %next.gep1206, i64 16 ; 2 uses
  %wide.load1208 = load <16 x i8>, ptr %next.gep1206, align 1, !tbaa !13, !alias.scope !156, !noalias !157
  %wide.load1209 = load <16 x i8>, ptr %i.wz, align 1, !tbaa !13, !alias.scope !156, !noalias !157
  %i.xa = getelementptr i8, ptr %next.gep1207, i64 16 ; 2 uses
  %wide.load1210 = load <16 x i8>, ptr %next.gep1207, align 1, !tbaa !13, !alias.scope !157
  %wide.load1211 = load <16 x i8>, ptr %i.xa, align 1, !tbaa !13, !alias.scope !157
  store <16 x i8> %wide.load1210, ptr %next.gep1206, align 1, !tbaa !13, !alias.scope !156, !noalias !157
  store <16 x i8> %wide.load1211, ptr %i.wz, align 1, !tbaa !13, !alias.scope !156, !noalias !157
  store <16 x i8> %wide.load1208, ptr %next.gep1207, align 1, !tbaa !13, !alias.scope !157
  store <16 x i8> %wide.load1209, ptr %i.xa, align 1, !tbaa !13, !alias.scope !157
  %index.next1212 = add nuw i64 %index1205, 32    ; 2 uses
  %i.xb = icmp eq i64 %index.next1212, %n.vec1203
  br i1 %i.xb, label %middle.block1213, label %vector.body1204, !llvm.loop !101

middle.block1213:                                 ; preds = %vector.body1204
  br i1 %cmp.n1214, label %swapfunc.exit436.loopexit474, label %vec.epilog.iter.check1221

vec.epilog.iter.check1221:                        ; preds = %middle.block1213
  br i1 %min.epilog.iters.check1222, label %.preheader473.preheader, label %vec.epilog.ph1223, !prof !14

vec.epilog.ph1223:                                ; preds = %vector.main.loop.iter.check1200, %vec.epilog.iter.check1221
  %vec.epilog.resume.val1215 = phi i64 [ %n.vec1203, %vec.epilog.iter.check1221 ], [ 0, %vector.main.loop.iter.check1200 ]
  %i.xc = getelementptr i8, ptr %.2355543, i64 %n.vec1224
  %i.xd = getelementptr i8, ptr %i.wu, i64 %n.vec1224
  br label %vec.epilog.vector.body1225

vec.epilog.vector.body1225:                       ; preds = %vec.epilog.vector.body1225, %vec.epilog.ph1223
  %index1226 = phi i64 [ %vec.epilog.resume.val1215, %vec.epilog.ph1223 ], [ %index.next1231, %vec.epilog.vector.body1225 ] ; 3 uses
  %next.gep1227 = getelementptr i8, ptr %.2355543, i64 %index1226 ; 2 uses
  %next.gep1228 = getelementptr i8, ptr %i.wu, i64 %index1226 ; 2 uses
  %wide.load1229 = load <4 x i8>, ptr %next.gep1227, align 1, !tbaa !13, !alias.scope !156, !noalias !157
  %wide.load1230 = load <4 x i8>, ptr %next.gep1228, align 1, !tbaa !13, !alias.scope !157
  store <4 x i8> %wide.load1230, ptr %next.gep1227, align 1, !tbaa !13, !alias.scope !156, !noalias !157
  store <4 x i8> %wide.load1229, ptr %next.gep1228, align 1, !tbaa !13, !alias.scope !157
  %index.next1231 = add nuw i64 %index1226, 4     ; 2 uses
  %i.xe = icmp eq i64 %index.next1231, %n.vec1224
  br i1 %i.xe, label %vec.epilog.middle.block1232, label %vec.epilog.vector.body1225, !llvm.loop !102

vec.epilog.middle.block1232:                      ; preds = %vec.epilog.vector.body1225
  br i1 %cmp.n1233, label %swapfunc.exit436.loopexit474, label %.preheader473.preheader

.preheader473.preheader:                          ; preds = %iter.check1219, %vector.memcheck1188, %vec.epilog.iter.check1221, %vec.epilog.middle.block1232
  %.020.i430.ph = phi i64 [ %i.j, %iter.check1219 ], [ %i.j, %vector.memcheck1188 ], [ %i.vd, %vec.epilog.iter.check1221 ], [ %i.ve, %vec.epilog.middle.block1232 ]
  %.019.i431.ph = phi ptr [ %.2355543, %iter.check1219 ], [ %.2355543, %vector.memcheck1188 ], [ %i.wx, %vec.epilog.iter.check1221 ], [ %i.xc, %vec.epilog.middle.block1232 ]
  %.018.i432.ph = phi ptr [ %i.wu, %iter.check1219 ], [ %i.wu, %vector.memcheck1188 ], [ %i.wy, %vec.epilog.iter.check1221 ], [ %i.xd, %vec.epilog.middle.block1232 ]
  br label %.preheader473

.preheader473:                                    ; preds = %.preheader473.preheader, %.preheader473
  %.020.i430 = phi i64 [ %i.xj, %.preheader473 ], [ %.020.i430.ph, %.preheader473.preheader ] ; 2 uses
  %.019.i431 = phi ptr [ %i.xh, %.preheader473 ], [ %.019.i431.ph, %.preheader473.preheader ] ; 3 uses
  %.018.i432 = phi ptr [ %i.xi, %.preheader473 ], [ %.018.i432.ph, %.preheader473.preheader ] ; 3 uses
  %i.xf = load i8, ptr %.019.i431, align 1, !tbaa !13
  %i.xg = load i8, ptr %.018.i432, align 1, !tbaa !13
  %i.xh = getelementptr inbounds nuw i8, ptr %.019.i431, i64 1
  store i8 %i.xg, ptr %.019.i431, align 1, !tbaa !13
  %i.xi = getelementptr inbounds nuw i8, ptr %.018.i432, i64 1
  store i8 %i.xf, ptr %.018.i432, align 1, !tbaa !13
  %i.xj = add nsw i64 %.020.i430, -1
  %i.xk = icmp sgt i64 %.020.i430, 1
  br i1 %i.xk, label %.preheader473, label %swapfunc.exit436.loopexit474, !llvm.loop !103

swapfunc.exit436.loopexit474:                     ; preds = %.preheader473, %vec.epilog.middle.block1232, %middle.block1213
  %i.xl = icmp ugt ptr %i.wu, %.0535
  %indvar.next1192 = add i64 %indvar1191, 1
  br i1 %i.xl, label %.lr.ph544, label %.critedge6

.critedge6:                                       ; preds = %swapfunc.exit436.loopexit474, %.lr.ph544, %.preheader475
  %i.xm = getelementptr inbounds nuw i8, ptr %.3352549, i64 %2 ; 2 uses
  %i.xn = icmp ult ptr %i.xm, %i.rq
  %indvar.next1190 = add i64 %indvar1189, 1
  br i1 %i.xn, label %.preheader475, label %.loopexit

bb.bj:                                            ; preds = %.critedge2._crit_edge
  %i.xo = ptrtoint ptr %.1.lcssa to i64           ; 2 uses
  %i.xp = sub i64 %i.xo, %i.go
  %i.xq = ptrtoint ptr %.1339.lcssa to i64
  %i.xr = sub i64 %i.xq, %i.xo                    ; 2 uses
  %.397 = tail call i64 @llvm.smin.i64(i64 %i.xp, i64 %i.xr) ; 3 uses
  %i.xs = trunc i64 %.397 to i32
  %i.xt = icmp sgt i32 %i.xs, 0
  br i1 %i.xt, label %bb.bk, label %swapfunc.exit443

bb.bk:                                            ; preds = %bb.bj
  %i.xu = and i64 %.397, 2147483647               ; 14 uses
  %i.xv = sub nsw i64 0, %i.xu
  %i.xw = getelementptr i8, ptr %.1339.lcssa, i64 %i.xv ; 12 uses
  br i1 %or.cond536, label %bb.bl, label %iter.check887

iter.check887:                                    ; preds = %bb.bk
  %i.xx = tail call i64 @llvm.umax.i64(i64 %i.xu, i64 1) ; 3 uses
  %min.iters.check867 = icmp samesign ult i64 %i.xu, 4
  br i1 %min.iters.check867, label %.preheader486.preheader, label %vector.memcheck856

vector.memcheck856:                               ; preds = %iter.check887
  %scevgep859 = getelementptr i8, ptr %.0535, i64 %i.xu
  %bound0862 = icmp ult ptr %.0535, %.1339.lcssa
  %bound1863 = icmp ult ptr %i.xw, %scevgep859
  %found.conflict864 = and i1 %bound0862, %bound1863
  br i1 %found.conflict864, label %.preheader486.preheader, label %vector.main.loop.iter.check868

vector.main.loop.iter.check868:                   ; preds = %vector.memcheck856
  %min.iters.check869 = icmp samesign ult i64 %i.xu, 32
  br i1 %min.iters.check869, label %vec.epilog.ph891, label %vector.ph870

vector.ph870:                                     ; preds = %vector.main.loop.iter.check868
  %i.xy = and i64 %i.xx, 28
  %n.vec871 = and i64 %i.xx, 2147483616           ; 6 uses
  %i.xz = sub nsw i64 %i.xu, %n.vec871
  %i.ya = getelementptr i8, ptr %.0535, i64 %n.vec871
  %i.yb = getelementptr i8, ptr %i.xw, i64 %n.vec871
  br label %vector.body872

vector.body872:                                   ; preds = %vector.ph870, %vector.body872
  %index873 = phi i64 [ 0, %vector.ph870 ], [ %index.next880, %vector.body872 ] ; 3 uses
  %next.gep874 = getelementptr i8, ptr %.0535, i64 %index873 ; 3 uses
  %next.gep875 = getelementptr i8, ptr %i.xw, i64 %index873 ; 3 uses
  %i.yc = getelementptr i8, ptr %next.gep874, i64 16 ; 2 uses
  %wide.load876 = load <16 x i8>, ptr %next.gep874, align 1, !tbaa !13, !alias.scope !158, !noalias !159
  %wide.load877 = load <16 x i8>, ptr %i.yc, align 1, !tbaa !13, !alias.scope !158, !noalias !159
  %i.yd = getelementptr i8, ptr %next.gep875, i64 16 ; 2 uses
  %wide.load878 = load <16 x i8>, ptr %next.gep875, align 1, !tbaa !13, !alias.scope !159
  %wide.load879 = load <16 x i8>, ptr %i.yd, align 1, !tbaa !13, !alias.scope !159
  store <16 x i8> %wide.load878, ptr %next.gep874, align 1, !tbaa !13, !alias.scope !158, !noalias !159
  store <16 x i8> %wide.load879, ptr %i.yc, align 1, !tbaa !13, !alias.scope !158, !noalias !159
  store <16 x i8> %wide.load876, ptr %next.gep875, align 1, !tbaa !13, !alias.scope !159
  store <16 x i8> %wide.load877, ptr %i.yd, align 1, !tbaa !13, !alias.scope !159
  %index.next880 = add nuw i64 %index873, 32      ; 2 uses
  %i.ye = icmp eq i64 %index.next880, %n.vec871
  br i1 %i.ye, label %middle.block881, label %vector.body872, !llvm.loop !107

middle.block881:                                  ; preds = %vector.body872
  %cmp.n882 = icmp eq i64 %i.xu, %n.vec871
  br i1 %cmp.n882, label %swapfunc.exit443, label %vec.epilog.iter.check889

vec.epilog.iter.check889:                         ; preds = %middle.block881
  %min.epilog.iters.check890 = icmp eq i64 %i.xy, 0
  br i1 %min.epilog.iters.check890, label %.preheader486.preheader, label %vec.epilog.ph891, !prof !14

vec.epilog.ph891:                                 ; preds = %vector.main.loop.iter.check868, %vec.epilog.iter.check889
  %vec.epilog.resume.val883 = phi i64 [ %n.vec871, %vec.epilog.iter.check889 ], [ 0, %vector.main.loop.iter.check868 ]
  %n.vec892 = and i64 %i.xx, 2147483644           ; 5 uses
  %i.yf = sub nsw i64 %i.xu, %n.vec892
  %i.yg = getelementptr i8, ptr %.0535, i64 %n.vec892
  %i.yh = getelementptr i8, ptr %i.xw, i64 %n.vec892
  br label %vec.epilog.vector.body893

vec.epilog.vector.body893:                        ; preds = %vec.epilog.vector.body893, %vec.epilog.ph891
  %index894 = phi i64 [ %vec.epilog.resume.val883, %vec.epilog.ph891 ], [ %index.next899, %vec.epilog.vector.body893 ] ; 3 uses
  %next.gep895 = getelementptr i8, ptr %.0535, i64 %index894 ; 2 uses
  %next.gep896 = getelementptr i8, ptr %i.xw, i64 %index894 ; 2 uses
  %wide.load897 = load <4 x i8>, ptr %next.gep895, align 1, !tbaa !13, !alias.scope !158, !noalias !159
  %wide.load898 = load <4 x i8>, ptr %next.gep896, align 1, !tbaa !13, !alias.scope !159
  store <4 x i8> %wide.load898, ptr %next.gep895, align 1, !tbaa !13, !alias.scope !158, !noalias !159
  store <4 x i8> %wide.load897, ptr %next.gep896, align 1, !tbaa !13, !alias.scope !159
  %index.next899 = add nuw i64 %index894, 4       ; 2 uses
  %i.yi = icmp eq i64 %index.next899, %n.vec892
  br i1 %i.yi, label %vec.epilog.middle.block900, label %vec.epilog.vector.body893, !llvm.loop !108

vec.epilog.middle.block900:                       ; preds = %vec.epilog.vector.body893
  %cmp.n901 = icmp eq i64 %i.xu, %n.vec892
  br i1 %cmp.n901, label %swapfunc.exit443, label %.preheader486.preheader

.preheader486.preheader:                          ; preds = %iter.check887, %vector.memcheck856, %vec.epilog.iter.check889, %vec.epilog.middle.block900
  %.020.i437.ph = phi i64 [ %i.xu, %iter.check887 ], [ %i.xu, %vector.memcheck856 ], [ %i.xz, %vec.epilog.iter.check889 ], [ %i.yf, %vec.epilog.middle.block900 ]
  %.019.i438.ph = phi ptr [ %.0535, %iter.check887 ], [ %.0535, %vector.memcheck856 ], [ %i.ya, %vec.epilog.iter.check889 ], [ %i.yg, %vec.epilog.middle.block900 ]
  %.018.i439.ph = phi ptr [ %i.xw, %iter.check887 ], [ %i.xw, %vector.memcheck856 ], [ %i.yb, %vec.epilog.iter.check889 ], [ %i.yh, %vec.epilog.middle.block900 ]
  br label %.preheader486

bb.bl:                                            ; preds = %bb.bk
  %i.yj = lshr i64 %i.xu, 3                       ; 6 uses
  %min.iters.check839 = icmp samesign ult i64 %i.xu, 64
  br i1 %min.iters.check839, label %scalar.ph838.preheader, label %vector.memcheck829

vector.memcheck829:                               ; preds = %bb.bl
  %scevgep830 = getelementptr i8, ptr %.0535, i64 8
  %i.yk = and i64 %.397, 2147483640               ; 2 uses
  %.not1507 = icmp eq i64 %i.yj, 0
  %i.yl = select i1 %.not1507, i64 0, i64 8       ; 2 uses
  %4 = sub nsw i64 %i.yk, %i.yl
  %scevgep832 = getelementptr i8, ptr %scevgep830, i64 %4
  %scevgep833 = getelementptr i8, ptr %.1339.lcssa, i64 8
  %5 = add nuw nsw i64 %i.xu, %i.yl
  %i.ym = sub nsw i64 %i.yk, %5
  %scevgep834 = getelementptr i8, ptr %scevgep833, i64 %i.ym
  %bound0835 = icmp ult ptr %.0535, %scevgep834
  %bound1836 = icmp ult ptr %i.xw, %scevgep832
  %found.conflict837 = and i1 %bound0835, %bound1836
  br i1 %found.conflict837, label %scalar.ph838.preheader, label %vector.ph840

vector.ph840:                                     ; preds = %vector.memcheck829
  %n.vec841 = and i64 %i.yj, 268435452            ; 3 uses
  %i.yn = shl nuw nsw i64 %n.vec841, 3            ; 2 uses
  %i.yo = getelementptr i8, ptr %i.xw, i64 %i.yn
  %i.yp = getelementptr i8, ptr %.0535, i64 %i.yn
  %i.yq = and i64 %i.yj, 3
  br label %vector.body842

vector.body842:                                   ; preds = %vector.body842, %vector.ph840
  %index843 = phi i64 [ 0, %vector.ph840 ], [ %index.next850, %vector.body842 ] ; 2 uses
  %i.yr = shl i64 %index843, 3                    ; 2 uses
  %next.gep844 = getelementptr i8, ptr %i.xw, i64 %i.yr ; 3 uses
  %next.gep845 = getelementptr i8, ptr %.0535, i64 %i.yr ; 3 uses
  %i.ys = getelementptr i8, ptr %next.gep845, i64 16 ; 2 uses
  %wide.load846 = load <2 x i64>, ptr %next.gep845, align 8, !tbaa !10, !alias.scope !160, !noalias !161
  %wide.load847 = load <2 x i64>, ptr %i.ys, align 8, !tbaa !10, !alias.scope !160, !noalias !161
  %i.yt = getelementptr i8, ptr %next.gep844, i64 16 ; 2 uses
  %wide.load848 = load <2 x i64>, ptr %next.gep844, align 8, !tbaa !10, !alias.scope !161
  %wide.load849 = load <2 x i64>, ptr %i.yt, align 8, !tbaa !10, !alias.scope !161
  store <2 x i64> %wide.load848, ptr %next.gep845, align 8, !tbaa !10, !alias.scope !160, !noalias !161
  store <2 x i64> %wide.load849, ptr %i.ys, align 8, !tbaa !10, !alias.scope !160, !noalias !161
  store <2 x i64> %wide.load846, ptr %next.gep844, align 8, !tbaa !10, !alias.scope !161
  store <2 x i64> %wide.load847, ptr %i.yt, align 8, !tbaa !10, !alias.scope !161
  %index.next850 = add nuw i64 %index843, 4       ; 2 uses
  %i.yu = icmp eq i64 %index.next850, %n.vec841
  br i1 %i.yu, label %middle.block851, label %vector.body842, !llvm.loop !112

middle.block851:                                  ; preds = %vector.body842
  %cmp.n852 = icmp eq i64 %i.yj, %n.vec841
  br i1 %cmp.n852, label %swapfunc.exit443, label %scalar.ph838.preheader

scalar.ph838.preheader:                           ; preds = %vector.memcheck829, %bb.bl, %middle.block851
  %.022.i440.ph = phi ptr [ %i.xw, %vector.memcheck829 ], [ %i.xw, %bb.bl ], [ %i.yo, %middle.block851 ]
  %.021.i441.ph = phi ptr [ %.0535, %vector.memcheck829 ], [ %.0535, %bb.bl ], [ %i.yp, %middle.block851 ]
  %.0.i442.ph = phi i64 [ %i.yj, %vector.memcheck829 ], [ %i.yj, %bb.bl ], [ %i.yq, %middle.block851 ]
  br label %scalar.ph838

scalar.ph838:                                     ; preds = %scalar.ph838.preheader, %scalar.ph838
  %.022.i440 = phi ptr [ %i.yy, %scalar.ph838 ], [ %.022.i440.ph, %scalar.ph838.preheader ] ; 3 uses
  %.021.i441 = phi ptr [ %i.yx, %scalar.ph838 ], [ %.021.i441.ph, %scalar.ph838.preheader ] ; 3 uses
  %.0.i442 = phi i64 [ %i.yz, %scalar.ph838 ], [ %.0.i442.ph, %scalar.ph838.preheader ] ; 2 uses
  %i.yv = load i64, ptr %.021.i441, align 8, !tbaa !10
  %i.yw = load i64, ptr %.022.i440, align 8, !tbaa !10
  %i.yx = getelementptr inbounds nuw i8, ptr %.021.i441, i64 8
  store i64 %i.yw, ptr %.021.i441, align 8, !tbaa !10
  %i.yy = getelementptr inbounds nuw i8, ptr %.022.i440, i64 8
  store i64 %i.yv, ptr %.022.i440, align 8, !tbaa !10
  %i.yz = add nsw i64 %.0.i442, -1
  %i.za = icmp samesign ugt i64 %.0.i442, 1
  br i1 %i.za, label %scalar.ph838, label %swapfunc.exit443, !llvm.loop !113

.preheader486:                                    ; preds = %.preheader486.preheader, %.preheader486
  %.020.i437 = phi i64 [ %i.zf, %.preheader486 ], [ %.020.i437.ph, %.preheader486.preheader ] ; 2 uses
  %.019.i438 = phi ptr [ %i.zd, %.preheader486 ], [ %.019.i438.ph, %.preheader486.preheader ] ; 3 uses
  %.018.i439 = phi ptr [ %i.ze, %.preheader486 ], [ %.018.i439.ph, %.preheader486.preheader ] ; 3 uses
  %i.zb = load i8, ptr %.019.i438, align 1, !tbaa !13
  %i.zc = load i8, ptr %.018.i439, align 1, !tbaa !13
  %i.zd = getelementptr inbounds nuw i8, ptr %.019.i438, i64 1
  store i8 %i.zc, ptr %.019.i438, align 1, !tbaa !13
  %i.ze = getelementptr inbounds nuw i8, ptr %.018.i439, i64 1
  store i8 %i.zb, ptr %.018.i439, align 1, !tbaa !13
  %i.zf = add nsw i64 %.020.i437, -1
  %i.zg = icmp samesign ugt i64 %.020.i437, 1
  br i1 %i.zg, label %.preheader486, label %swapfunc.exit443, !llvm.loop !114

swapfunc.exit443:                                 ; preds = %.preheader486, %scalar.ph838, %middle.block881, %vec.epilog.middle.block900, %middle.block851, %bb.bj
  %i.zh = ptrtoint ptr %.1343.lcssa to i64        ; 2 uses
  %i.zi = ptrtoint ptr %.1341.lcssa to i64
  %i.zj = sub i64 %i.zh, %i.zi                    ; 2 uses
  %i.zk = ptrtoint ptr %i.rq to i64
  %i.zl = add i64 %2, %i.zh
  %i.zm = sub i64 %i.zk, %i.zl
  %.398 = tail call i64 @llvm.umin.i64(i64 %i.zj, i64 %i.zm) ; 3 uses
  %i.zn = trunc i64 %.398 to i32
  %i.zo = icmp sgt i32 %i.zn, 0
  br i1 %i.zo, label %bb.bm, label %swapfunc.exit450

bb.bm:                                            ; preds = %swapfunc.exit443
  %i.zp = and i64 %.398, 2147483647               ; 14 uses
  %i.zq = sub nsw i64 0, %i.zp
  %i.zr = getelementptr i8, ptr %i.rq, i64 %i.zq  ; 12 uses
  br i1 %or.cond536, label %bb.bn, label %iter.check

iter.check:                                       ; preds = %bb.bm
  %i.zs = tail call i64 @llvm.umax.i64(i64 %i.zp, i64 1) ; 3 uses
  %min.iters.check800 = icmp samesign ult i64 %i.zp, 4
  br i1 %min.iters.check800, label %.preheader484.preheader, label %vector.memcheck789

vector.memcheck789:                               ; preds = %iter.check
  %scevgep792 = getelementptr i8, ptr %.1339.lcssa, i64 %i.zp
  %scevgep794 = getelementptr i8, ptr %.0535, i64 %i.rp
  %bound0795 = icmp ult ptr %.1339.lcssa, %scevgep794
  %bound1796 = icmp ult ptr %i.zr, %scevgep792
  %found.conflict797 = and i1 %bound0795, %bound1796
  br i1 %found.conflict797, label %.preheader484.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck789
  %min.iters.check801 = icmp samesign ult i64 %i.zp, 32
  br i1 %min.iters.check801, label %vec.epilog.ph, label %vector.ph802

vector.ph802:                                     ; preds = %vector.main.loop.iter.check
  %i.zt = and i64 %i.zs, 28
  %n.vec803 = and i64 %i.zs, 2147483616           ; 6 uses
  %i.zu = sub nsw i64 %i.zp, %n.vec803
  %i.zv = getelementptr i8, ptr %.1339.lcssa, i64 %n.vec803
  %i.zw = getelementptr i8, ptr %i.zr, i64 %n.vec803
  br label %vector.body804

vector.body804:                                   ; preds = %vector.ph802, %vector.body804
  %index805 = phi i64 [ 0, %vector.ph802 ], [ %index.next812, %vector.body804 ] ; 3 uses
  %next.gep806 = getelementptr i8, ptr %.1339.lcssa, i64 %index805 ; 3 uses
  %next.gep807 = getelementptr i8, ptr %i.zr, i64 %index805 ; 3 uses
  %i.zx = getelementptr i8, ptr %next.gep806, i64 16 ; 2 uses
  %wide.load808 = load <16 x i8>, ptr %next.gep806, align 1, !tbaa !13, !alias.scope !162, !noalias !163
  %wide.load809 = load <16 x i8>, ptr %i.zx, align 1, !tbaa !13, !alias.scope !162, !noalias !163
  %i.zy = getelementptr i8, ptr %next.gep807, i64 16 ; 2 uses
  %wide.load810 = load <16 x i8>, ptr %next.gep807, align 1, !tbaa !13, !alias.scope !163
  %wide.load811 = load <16 x i8>, ptr %i.zy, align 1, !tbaa !13, !alias.scope !163
  store <16 x i8> %wide.load810, ptr %next.gep806, align 1, !tbaa !13, !alias.scope !162, !noalias !163
  store <16 x i8> %wide.load811, ptr %i.zx, align 1, !tbaa !13, !alias.scope !162, !noalias !163
  store <16 x i8> %wide.load808, ptr %next.gep807, align 1, !tbaa !13, !alias.scope !163
  store <16 x i8> %wide.load809, ptr %i.zy, align 1, !tbaa !13, !alias.scope !163
  %index.next812 = add nuw i64 %index805, 32      ; 2 uses
  %i.zz = icmp eq i64 %index.next812, %n.vec803
  br i1 %i.zz, label %middle.block813, label %vector.body804, !llvm.loop !118

middle.block813:                                  ; preds = %vector.body804
  %cmp.n814 = icmp eq i64 %i.zp, %n.vec803
  br i1 %cmp.n814, label %swapfunc.exit450, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block813
  %min.epilog.iters.check = icmp eq i64 %i.zt, 0
  br i1 %min.epilog.iters.check, label %.preheader484.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec803, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec818 = and i64 %i.zs, 2147483644           ; 5 uses
  %i.aaa = sub nsw i64 %i.zp, %n.vec818
  %i.aab = getelementptr i8, ptr %.1339.lcssa, i64 %n.vec818
  %i.aac = getelementptr i8, ptr %i.zr, i64 %n.vec818
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index819 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next824, %vec.epilog.vector.body ] ; 3 uses
  %next.gep820 = getelementptr i8, ptr %.1339.lcssa, i64 %index819 ; 2 uses
  %next.gep821 = getelementptr i8, ptr %i.zr, i64 %index819 ; 2 uses
  %wide.load822 = load <4 x i8>, ptr %next.gep820, align 1, !tbaa !13, !alias.scope !162, !noalias !163
  %wide.load823 = load <4 x i8>, ptr %next.gep821, align 1, !tbaa !13, !alias.scope !163
  store <4 x i8> %wide.load823, ptr %next.gep820, align 1, !tbaa !13, !alias.scope !162, !noalias !163
  store <4 x i8> %wide.load822, ptr %next.gep821, align 1, !tbaa !13, !alias.scope !163
  %index.next824 = add nuw i64 %index819, 4       ; 2 uses
  %i.aad = icmp eq i64 %index.next824, %n.vec818
  br i1 %i.aad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !119

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n825 = icmp eq i64 %i.zp, %n.vec818
  br i1 %cmp.n825, label %swapfunc.exit450, label %.preheader484.preheader

.preheader484.preheader:                          ; preds = %iter.check, %vector.memcheck789, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.020.i444.ph = phi i64 [ %i.zp, %iter.check ], [ %i.zp, %vector.memcheck789 ], [ %i.zu, %vec.epilog.iter.check ], [ %i.aaa, %vec.epilog.middle.block ]
  %.019.i445.ph = phi ptr [ %.1339.lcssa, %iter.check ], [ %.1339.lcssa, %vector.memcheck789 ], [ %i.zv, %vec.epilog.iter.check ], [ %i.aab, %vec.epilog.middle.block ]
  %.018.i446.ph = phi ptr [ %i.zr, %iter.check ], [ %i.zr, %vector.memcheck789 ], [ %i.zw, %vec.epilog.iter.check ], [ %i.aac, %vec.epilog.middle.block ]
  br label %.preheader484

bb.bn:                                            ; preds = %bb.bm
  %i.aae = lshr i64 %i.zp, 3                      ; 6 uses
  %min.iters.check = icmp samesign ult i64 %i.zp, 80
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.bn
  %scevgep = getelementptr i8, ptr %.1339.lcssa, i64 8
  %i.aaf = and i64 %.398, 2147483640              ; 2 uses
  %.not1508 = icmp eq i64 %i.aae, 0
  %i.aag = select i1 %.not1508, i64 0, i64 8      ; 2 uses
  %i.aah = sub nsw i64 %i.aaf, %i.aag
  %scevgep780 = getelementptr i8, ptr %scevgep, i64 %i.aah
  %scevgep781 = getelementptr i8, ptr %.0535, i64 8
  %i.aai = add i64 %i.rp, %i.aaf
  %i.aaj = add nuw nsw i64 %i.zp, %i.aag
  %i.aak = sub i64 %i.aai, %i.aaj
  %scevgep782 = getelementptr i8, ptr %scevgep781, i64 %i.aak
  %bound0 = icmp ult ptr %.1339.lcssa, %scevgep782
  %bound1 = icmp ult ptr %i.zr, %scevgep780
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aae, 268435452              ; 3 uses
  %i.aal = shl nuw nsw i64 %n.vec, 3              ; 2 uses
  %i.aam = getelementptr i8, ptr %i.zr, i64 %i.aal
  %i.aan = getelementptr i8, ptr %.1339.lcssa, i64 %i.aal
  %i.aao = and i64 %i.aae, 3
  br label %vector.body

end_hunk_0
begin_hunk_1_@cli_qsort_r:bb.a
  %i.wv = tail call i32 %3(ptr noundef %4, ptr noundef nonnull %i.wu, ptr noundef nonnull %.2364552) #2
  %i.ww = icmp sgt i32 %i.wv, 0
  br i1 %i.ww, label %iter.check1228, label %.critedge6

iter.check1228:                                   ; preds = %.lr.ph553
  br i1 %min.iters.check1208, label %.preheader482.preheader, label %vector.memcheck1197

vector.memcheck1197:                              ; preds = %iter.check1228
  %bound01204 = icmp ult ptr %.2364552, %scevgep1203
  %bound11205 = icmp ult ptr %i.wu, %scevgep1202
  %found.conflict1206 = and i1 %bound01204, %bound11205
  br i1 %found.conflict1206, label %.preheader482.preheader, label %vector.main.loop.iter.check1209

vector.main.loop.iter.check1209:                  ; preds = %vector.memcheck1197
  br i1 %min.iters.check1210, label %vec.epilog.ph1232, label %vector.ph1211

vector.ph1211:                                    ; preds = %vector.main.loop.iter.check1209
  %i.wx = getelementptr i8, ptr %.2364552, i64 %n.vec1212
  %i.wy = getelementptr i8, ptr %i.wu, i64 %n.vec1212
  br label %vector.body1213

vector.body1213:                                  ; preds = %vector.ph1211, %vector.body1213
  %index1214 = phi i64 [ 0, %vector.ph1211 ], [ %index.next1221, %vector.body1213 ] ; 3 uses
  %next.gep1215 = getelementptr i8, ptr %.2364552, i64 %index1214 ; 3 uses
  %next.gep1216 = getelementptr i8, ptr %i.wu, i64 %index1214 ; 3 uses
  %i.wz = getelementptr i8, ptr %next.gep1215, i64 16 ; 2 uses
  %wide.load1217 = load <16 x i8>, ptr %next.gep1215, align 1, !tbaa !13, !alias.scope !307, !noalias !308
  %wide.load1218 = load <16 x i8>, ptr %i.wz, align 1, !tbaa !13, !alias.scope !307, !noalias !308
  %i.xa = getelementptr i8, ptr %next.gep1216, i64 16 ; 2 uses
  %wide.load1219 = load <16 x i8>, ptr %next.gep1216, align 1, !tbaa !13, !alias.scope !308
  %wide.load1220 = load <16 x i8>, ptr %i.xa, align 1, !tbaa !13, !alias.scope !308
  store <16 x i8> %wide.load1219, ptr %next.gep1215, align 1, !tbaa !13, !alias.scope !307, !noalias !308
  store <16 x i8> %wide.load1220, ptr %i.wz, align 1, !tbaa !13, !alias.scope !307, !noalias !308
  store <16 x i8> %wide.load1217, ptr %next.gep1216, align 1, !tbaa !13, !alias.scope !308
  store <16 x i8> %wide.load1218, ptr %i.xa, align 1, !tbaa !13, !alias.scope !308
  %index.next1221 = add nuw i64 %index1214, 32    ; 2 uses
  %i.xb = icmp eq i64 %index.next1221, %n.vec1212
  br i1 %i.xb, label %middle.block1222, label %vector.body1213, !llvm.loop !252

middle.block1222:                                 ; preds = %vector.body1213
  br i1 %cmp.n1223, label %swapfunc.exit445.loopexit483, label %vec.epilog.iter.check1230

vec.epilog.iter.check1230:                        ; preds = %middle.block1222
  br i1 %min.epilog.iters.check1231, label %.preheader482.preheader, label %vec.epilog.ph1232, !prof !14

vec.epilog.ph1232:                                ; preds = %vector.main.loop.iter.check1209, %vec.epilog.iter.check1230
  %vec.epilog.resume.val1224 = phi i64 [ %n.vec1212, %vec.epilog.iter.check1230 ], [ 0, %vector.main.loop.iter.check1209 ]
  %i.xc = getelementptr i8, ptr %.2364552, i64 %n.vec1233
  %i.xd = getelementptr i8, ptr %i.wu, i64 %n.vec1233
  br label %vec.epilog.vector.body1234

vec.epilog.vector.body1234:                       ; preds = %vec.epilog.vector.body1234, %vec.epilog.ph1232
  %index1235 = phi i64 [ %vec.epilog.resume.val1224, %vec.epilog.ph1232 ], [ %index.next1240, %vec.epilog.vector.body1234 ] ; 3 uses
  %next.gep1236 = getelementptr i8, ptr %.2364552, i64 %index1235 ; 2 uses
  %next.gep1237 = getelementptr i8, ptr %i.wu, i64 %index1235 ; 2 uses
  %wide.load1238 = load <4 x i8>, ptr %next.gep1236, align 1, !tbaa !13, !alias.scope !307, !noalias !308
  %wide.load1239 = load <4 x i8>, ptr %next.gep1237, align 1, !tbaa !13, !alias.scope !308
  store <4 x i8> %wide.load1239, ptr %next.gep1236, align 1, !tbaa !13, !alias.scope !307, !noalias !308
  store <4 x i8> %wide.load1238, ptr %next.gep1237, align 1, !tbaa !13, !alias.scope !308
  %index.next1240 = add nuw i64 %index1235, 4     ; 2 uses
  %i.xe = icmp eq i64 %index.next1240, %n.vec1233
  br i1 %i.xe, label %vec.epilog.middle.block1241, label %vec.epilog.vector.body1234, !llvm.loop !253

vec.epilog.middle.block1241:                      ; preds = %vec.epilog.vector.body1234
  br i1 %cmp.n1242, label %swapfunc.exit445.loopexit483, label %.preheader482.preheader

.preheader482.preheader:                          ; preds = %iter.check1228, %vector.memcheck1197, %vec.epilog.iter.check1230, %vec.epilog.middle.block1241
  %.020.i439.ph = phi i64 [ %i.j, %iter.check1228 ], [ %i.j, %vector.memcheck1197 ], [ %i.vd, %vec.epilog.iter.check1230 ], [ %i.ve, %vec.epilog.middle.block1241 ]
  %.019.i440.ph = phi ptr [ %.2364552, %iter.check1228 ], [ %.2364552, %vector.memcheck1197 ], [ %i.wx, %vec.epilog.iter.check1230 ], [ %i.xc, %vec.epilog.middle.block1241 ]
  %.018.i441.ph = phi ptr [ %i.wu, %iter.check1228 ], [ %i.wu, %vector.memcheck1197 ], [ %i.wy, %vec.epilog.iter.check1230 ], [ %i.xd, %vec.epilog.middle.block1241 ]
  br label %.preheader482

.preheader482:                                    ; preds = %.preheader482.preheader, %.preheader482
  %.020.i439 = phi i64 [ %i.xj, %.preheader482 ], [ %.020.i439.ph, %.preheader482.preheader ] ; 2 uses
  %.019.i440 = phi ptr [ %i.xh, %.preheader482 ], [ %.019.i440.ph, %.preheader482.preheader ] ; 3 uses
  %.018.i441 = phi ptr [ %i.xi, %.preheader482 ], [ %.018.i441.ph, %.preheader482.preheader ] ; 3 uses
  %i.xf = load i8, ptr %.019.i440, align 1, !tbaa !13
  %i.xg = load i8, ptr %.018.i441, align 1, !tbaa !13
  %i.xh = getelementptr inbounds nuw i8, ptr %.019.i440, i64 1
  store i8 %i.xg, ptr %.019.i440, align 1, !tbaa !13
  %i.xi = getelementptr inbounds nuw i8, ptr %.018.i441, i64 1
  store i8 %i.xf, ptr %.018.i441, align 1, !tbaa !13
  %i.xj = add nsw i64 %.020.i439, -1
  %i.xk = icmp sgt i64 %.020.i439, 1
  br i1 %i.xk, label %.preheader482, label %swapfunc.exit445.loopexit483, !llvm.loop !254

swapfunc.exit445.loopexit483:                     ; preds = %.preheader482, %vec.epilog.middle.block1241, %middle.block1222
  %i.xl = icmp ugt ptr %i.wu, %.0544
  %indvar.next1201 = add i64 %indvar1200, 1
  br i1 %i.xl, label %.lr.ph553, label %.critedge6

.critedge6:                                       ; preds = %swapfunc.exit445.loopexit483, %.lr.ph553, %.preheader484
  %i.xm = getelementptr inbounds nuw i8, ptr %.3361558, i64 %2 ; 2 uses
  %i.xn = icmp ult ptr %i.xm, %i.rq
  %indvar.next1199 = add i64 %indvar1198, 1
  br i1 %i.xn, label %.preheader484, label %.loopexit

bb.bj:                                            ; preds = %.critedge2._crit_edge
  %i.xo = ptrtoint ptr %.1.lcssa to i64           ; 2 uses
  %i.xp = sub i64 %i.xo, %i.go
  %i.xq = ptrtoint ptr %.1348.lcssa to i64
  %i.xr = sub i64 %i.xq, %i.xo                    ; 2 uses
  %.406 = tail call i64 @llvm.smin.i64(i64 %i.xp, i64 %i.xr) ; 3 uses
  %i.xs = trunc i64 %.406 to i32
  %i.xt = icmp sgt i32 %i.xs, 0
  br i1 %i.xt, label %bb.bk, label %swapfunc.exit452

bb.bk:                                            ; preds = %bb.bj
  %i.xu = and i64 %.406, 2147483647               ; 14 uses
  %i.xv = sub nsw i64 0, %i.xu
  %i.xw = getelementptr i8, ptr %.1348.lcssa, i64 %i.xv ; 12 uses
  br i1 %or.cond545, label %bb.bl, label %iter.check896

iter.check896:                                    ; preds = %bb.bk
  %i.xx = tail call i64 @llvm.umax.i64(i64 %i.xu, i64 1) ; 3 uses
  %min.iters.check876 = icmp samesign ult i64 %i.xu, 4
  br i1 %min.iters.check876, label %.preheader495.preheader, label %vector.memcheck865

vector.memcheck865:                               ; preds = %iter.check896
  %scevgep868 = getelementptr i8, ptr %.0544, i64 %i.xu
  %bound0871 = icmp ult ptr %.0544, %.1348.lcssa
  %bound1872 = icmp ult ptr %i.xw, %scevgep868
  %found.conflict873 = and i1 %bound0871, %bound1872
  br i1 %found.conflict873, label %.preheader495.preheader, label %vector.main.loop.iter.check877

vector.main.loop.iter.check877:                   ; preds = %vector.memcheck865
  %min.iters.check878 = icmp samesign ult i64 %i.xu, 32
  br i1 %min.iters.check878, label %vec.epilog.ph900, label %vector.ph879

vector.ph879:                                     ; preds = %vector.main.loop.iter.check877
  %i.xy = and i64 %i.xx, 28
  %n.vec880 = and i64 %i.xx, 2147483616           ; 6 uses
  %i.xz = sub nsw i64 %i.xu, %n.vec880
  %i.ya = getelementptr i8, ptr %.0544, i64 %n.vec880
  %i.yb = getelementptr i8, ptr %i.xw, i64 %n.vec880
  br label %vector.body881

vector.body881:                                   ; preds = %vector.ph879, %vector.body881
  %index882 = phi i64 [ 0, %vector.ph879 ], [ %index.next889, %vector.body881 ] ; 3 uses
  %next.gep883 = getelementptr i8, ptr %.0544, i64 %index882 ; 3 uses
  %next.gep884 = getelementptr i8, ptr %i.xw, i64 %index882 ; 3 uses
  %i.yc = getelementptr i8, ptr %next.gep883, i64 16 ; 2 uses
  %wide.load885 = load <16 x i8>, ptr %next.gep883, align 1, !tbaa !13, !alias.scope !309, !noalias !310
  %wide.load886 = load <16 x i8>, ptr %i.yc, align 1, !tbaa !13, !alias.scope !309, !noalias !310
  %i.yd = getelementptr i8, ptr %next.gep884, i64 16 ; 2 uses
  %wide.load887 = load <16 x i8>, ptr %next.gep884, align 1, !tbaa !13, !alias.scope !310
  %wide.load888 = load <16 x i8>, ptr %i.yd, align 1, !tbaa !13, !alias.scope !310
  store <16 x i8> %wide.load887, ptr %next.gep883, align 1, !tbaa !13, !alias.scope !309, !noalias !310
  store <16 x i8> %wide.load888, ptr %i.yc, align 1, !tbaa !13, !alias.scope !309, !noalias !310
  store <16 x i8> %wide.load885, ptr %next.gep884, align 1, !tbaa !13, !alias.scope !310
  store <16 x i8> %wide.load886, ptr %i.yd, align 1, !tbaa !13, !alias.scope !310
  %index.next889 = add nuw i64 %index882, 32      ; 2 uses
  %i.ye = icmp eq i64 %index.next889, %n.vec880
  br i1 %i.ye, label %middle.block890, label %vector.body881, !llvm.loop !258

middle.block890:                                  ; preds = %vector.body881
  %cmp.n891 = icmp eq i64 %i.xu, %n.vec880
  br i1 %cmp.n891, label %swapfunc.exit452, label %vec.epilog.iter.check898

vec.epilog.iter.check898:                         ; preds = %middle.block890
  %min.epilog.iters.check899 = icmp eq i64 %i.xy, 0
  br i1 %min.epilog.iters.check899, label %.preheader495.preheader, label %vec.epilog.ph900, !prof !14

vec.epilog.ph900:                                 ; preds = %vector.main.loop.iter.check877, %vec.epilog.iter.check898
  %vec.epilog.resume.val892 = phi i64 [ %n.vec880, %vec.epilog.iter.check898 ], [ 0, %vector.main.loop.iter.check877 ]
  %n.vec901 = and i64 %i.xx, 2147483644           ; 5 uses
  %i.yf = sub nsw i64 %i.xu, %n.vec901
  %i.yg = getelementptr i8, ptr %.0544, i64 %n.vec901
  %i.yh = getelementptr i8, ptr %i.xw, i64 %n.vec901
  br label %vec.epilog.vector.body902

vec.epilog.vector.body902:                        ; preds = %vec.epilog.vector.body902, %vec.epilog.ph900
  %index903 = phi i64 [ %vec.epilog.resume.val892, %vec.epilog.ph900 ], [ %index.next908, %vec.epilog.vector.body902 ] ; 3 uses
  %next.gep904 = getelementptr i8, ptr %.0544, i64 %index903 ; 2 uses
  %next.gep905 = getelementptr i8, ptr %i.xw, i64 %index903 ; 2 uses
  %wide.load906 = load <4 x i8>, ptr %next.gep904, align 1, !tbaa !13, !alias.scope !309, !noalias !310
  %wide.load907 = load <4 x i8>, ptr %next.gep905, align 1, !tbaa !13, !alias.scope !310
  store <4 x i8> %wide.load907, ptr %next.gep904, align 1, !tbaa !13, !alias.scope !309, !noalias !310
  store <4 x i8> %wide.load906, ptr %next.gep905, align 1, !tbaa !13, !alias.scope !310
  %index.next908 = add nuw i64 %index903, 4       ; 2 uses
  %i.yi = icmp eq i64 %index.next908, %n.vec901
  br i1 %i.yi, label %vec.epilog.middle.block909, label %vec.epilog.vector.body902, !llvm.loop !259

vec.epilog.middle.block909:                       ; preds = %vec.epilog.vector.body902
  %cmp.n910 = icmp eq i64 %i.xu, %n.vec901
  br i1 %cmp.n910, label %swapfunc.exit452, label %.preheader495.preheader

.preheader495.preheader:                          ; preds = %iter.check896, %vector.memcheck865, %vec.epilog.iter.check898, %vec.epilog.middle.block909
  %.020.i446.ph = phi i64 [ %i.xu, %iter.check896 ], [ %i.xu, %vector.memcheck865 ], [ %i.xz, %vec.epilog.iter.check898 ], [ %i.yf, %vec.epilog.middle.block909 ]
  %.019.i447.ph = phi ptr [ %.0544, %iter.check896 ], [ %.0544, %vector.memcheck865 ], [ %i.ya, %vec.epilog.iter.check898 ], [ %i.yg, %vec.epilog.middle.block909 ]
  %.018.i448.ph = phi ptr [ %i.xw, %iter.check896 ], [ %i.xw, %vector.memcheck865 ], [ %i.yb, %vec.epilog.iter.check898 ], [ %i.yh, %vec.epilog.middle.block909 ]
  br label %.preheader495

bb.bl:                                            ; preds = %bb.bk
  %i.yj = lshr i64 %i.xu, 3                       ; 6 uses
  %min.iters.check848 = icmp samesign ult i64 %i.xu, 64
  br i1 %min.iters.check848, label %scalar.ph847.preheader, label %vector.memcheck838

vector.memcheck838:                               ; preds = %bb.bl
  %scevgep839 = getelementptr i8, ptr %.0544, i64 8
  %i.yk = and i64 %.406, 2147483640               ; 2 uses
  %.not1516 = icmp eq i64 %i.yj, 0
  %i.yl = select i1 %.not1516, i64 0, i64 8       ; 2 uses
  %5 = sub nsw i64 %i.yk, %i.yl
  %scevgep841 = getelementptr i8, ptr %scevgep839, i64 %5
  %scevgep842 = getelementptr i8, ptr %.1348.lcssa, i64 8
  %6 = add nuw nsw i64 %i.xu, %i.yl
  %i.ym = sub nsw i64 %i.yk, %6
  %scevgep843 = getelementptr i8, ptr %scevgep842, i64 %i.ym
  %bound0844 = icmp ult ptr %.0544, %scevgep843
  %bound1845 = icmp ult ptr %i.xw, %scevgep841
  %found.conflict846 = and i1 %bound0844, %bound1845
  br i1 %found.conflict846, label %scalar.ph847.preheader, label %vector.ph849

vector.ph849:                                     ; preds = %vector.memcheck838
  %n.vec850 = and i64 %i.yj, 268435452            ; 3 uses
  %i.yn = shl nuw nsw i64 %n.vec850, 3            ; 2 uses
  %i.yo = getelementptr i8, ptr %i.xw, i64 %i.yn
  %i.yp = getelementptr i8, ptr %.0544, i64 %i.yn
  %i.yq = and i64 %i.yj, 3
  br label %vector.body851

vector.body851:                                   ; preds = %vector.body851, %vector.ph849
  %index852 = phi i64 [ 0, %vector.ph849 ], [ %index.next859, %vector.body851 ] ; 2 uses
  %i.yr = shl i64 %index852, 3                    ; 2 uses
  %next.gep853 = getelementptr i8, ptr %i.xw, i64 %i.yr ; 3 uses
  %next.gep854 = getelementptr i8, ptr %.0544, i64 %i.yr ; 3 uses
  %i.ys = getelementptr i8, ptr %next.gep854, i64 16 ; 2 uses
  %wide.load855 = load <2 x i64>, ptr %next.gep854, align 8, !tbaa !10, !alias.scope !311, !noalias !312
  %wide.load856 = load <2 x i64>, ptr %i.ys, align 8, !tbaa !10, !alias.scope !311, !noalias !312
  %i.yt = getelementptr i8, ptr %next.gep853, i64 16 ; 2 uses
  %wide.load857 = load <2 x i64>, ptr %next.gep853, align 8, !tbaa !10, !alias.scope !312
  %wide.load858 = load <2 x i64>, ptr %i.yt, align 8, !tbaa !10, !alias.scope !312
  store <2 x i64> %wide.load857, ptr %next.gep854, align 8, !tbaa !10, !alias.scope !311, !noalias !312
  store <2 x i64> %wide.load858, ptr %i.ys, align 8, !tbaa !10, !alias.scope !311, !noalias !312
  store <2 x i64> %wide.load855, ptr %next.gep853, align 8, !tbaa !10, !alias.scope !312
  store <2 x i64> %wide.load856, ptr %i.yt, align 8, !tbaa !10, !alias.scope !312
  %index.next859 = add nuw i64 %index852, 4       ; 2 uses
  %i.yu = icmp eq i64 %index.next859, %n.vec850
  br i1 %i.yu, label %middle.block860, label %vector.body851, !llvm.loop !263

middle.block860:                                  ; preds = %vector.body851
  %cmp.n861 = icmp eq i64 %i.yj, %n.vec850
  br i1 %cmp.n861, label %swapfunc.exit452, label %scalar.ph847.preheader

scalar.ph847.preheader:                           ; preds = %vector.memcheck838, %bb.bl, %middle.block860
  %.022.i449.ph = phi ptr [ %i.xw, %vector.memcheck838 ], [ %i.xw, %bb.bl ], [ %i.yo, %middle.block860 ]
  %.021.i450.ph = phi ptr [ %.0544, %vector.memcheck838 ], [ %.0544, %bb.bl ], [ %i.yp, %middle.block860 ]
  %.0.i451.ph = phi i64 [ %i.yj, %vector.memcheck838 ], [ %i.yj, %bb.bl ], [ %i.yq, %middle.block860 ]
  br label %scalar.ph847

scalar.ph847:                                     ; preds = %scalar.ph847.preheader, %scalar.ph847
  %.022.i449 = phi ptr [ %i.yy, %scalar.ph847 ], [ %.022.i449.ph, %scalar.ph847.preheader ] ; 3 uses
  %.021.i450 = phi ptr [ %i.yx, %scalar.ph847 ], [ %.021.i450.ph, %scalar.ph847.preheader ] ; 3 uses
  %.0.i451 = phi i64 [ %i.yz, %scalar.ph847 ], [ %.0.i451.ph, %scalar.ph847.preheader ] ; 2 uses
  %i.yv = load i64, ptr %.021.i450, align 8, !tbaa !10
  %i.yw = load i64, ptr %.022.i449, align 8, !tbaa !10
  %i.yx = getelementptr inbounds nuw i8, ptr %.021.i450, i64 8
  store i64 %i.yw, ptr %.021.i450, align 8, !tbaa !10
  %i.yy = getelementptr inbounds nuw i8, ptr %.022.i449, i64 8
  store i64 %i.yv, ptr %.022.i449, align 8, !tbaa !10
  %i.yz = add nsw i64 %.0.i451, -1
  %i.za = icmp samesign ugt i64 %.0.i451, 1
  br i1 %i.za, label %scalar.ph847, label %swapfunc.exit452, !llvm.loop !264

.preheader495:                                    ; preds = %.preheader495.preheader, %.preheader495
  %.020.i446 = phi i64 [ %i.zf, %.preheader495 ], [ %.020.i446.ph, %.preheader495.preheader ] ; 2 uses
  %.019.i447 = phi ptr [ %i.zd, %.preheader495 ], [ %.019.i447.ph, %.preheader495.preheader ] ; 3 uses
  %.018.i448 = phi ptr [ %i.ze, %.preheader495 ], [ %.018.i448.ph, %.preheader495.preheader ] ; 3 uses
  %i.zb = load i8, ptr %.019.i447, align 1, !tbaa !13
  %i.zc = load i8, ptr %.018.i448, align 1, !tbaa !13
  %i.zd = getelementptr inbounds nuw i8, ptr %.019.i447, i64 1
  store i8 %i.zc, ptr %.019.i447, align 1, !tbaa !13
  %i.ze = getelementptr inbounds nuw i8, ptr %.018.i448, i64 1
  store i8 %i.zb, ptr %.018.i448, align 1, !tbaa !13
  %i.zf = add nsw i64 %.020.i446, -1
  %i.zg = icmp samesign ugt i64 %.020.i446, 1
  br i1 %i.zg, label %.preheader495, label %swapfunc.exit452, !llvm.loop !265

swapfunc.exit452:                                 ; preds = %.preheader495, %scalar.ph847, %middle.block890, %vec.epilog.middle.block909, %middle.block860, %bb.bj
  %i.zh = ptrtoint ptr %.1352.lcssa to i64        ; 2 uses
  %i.zi = ptrtoint ptr %.1350.lcssa to i64
  %i.zj = sub i64 %i.zh, %i.zi                    ; 2 uses
  %i.zk = ptrtoint ptr %i.rq to i64
  %i.zl = add i64 %2, %i.zh
  %i.zm = sub i64 %i.zk, %i.zl
  %.407 = tail call i64 @llvm.umin.i64(i64 %i.zj, i64 %i.zm) ; 3 uses
  %i.zn = trunc i64 %.407 to i32
  %i.zo = icmp sgt i32 %i.zn, 0
  br i1 %i.zo, label %bb.bm, label %swapfunc.exit459

bb.bm:                                            ; preds = %swapfunc.exit452
  %i.zp = and i64 %.407, 2147483647               ; 14 uses
  %i.zq = sub nsw i64 0, %i.zp
  %i.zr = getelementptr i8, ptr %i.rq, i64 %i.zq  ; 12 uses
  br i1 %or.cond545, label %bb.bn, label %iter.check

iter.check:                                       ; preds = %bb.bm
  %i.zs = tail call i64 @llvm.umax.i64(i64 %i.zp, i64 1) ; 3 uses
  %min.iters.check809 = icmp samesign ult i64 %i.zp, 4
  br i1 %min.iters.check809, label %.preheader493.preheader, label %vector.memcheck798

vector.memcheck798:                               ; preds = %iter.check
  %scevgep801 = getelementptr i8, ptr %.1348.lcssa, i64 %i.zp
  %scevgep803 = getelementptr i8, ptr %.0544, i64 %i.rp
  %bound0804 = icmp ult ptr %.1348.lcssa, %scevgep803
  %bound1805 = icmp ult ptr %i.zr, %scevgep801
  %found.conflict806 = and i1 %bound0804, %bound1805
  br i1 %found.conflict806, label %.preheader493.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck798
  %min.iters.check810 = icmp samesign ult i64 %i.zp, 32
  br i1 %min.iters.check810, label %vec.epilog.ph, label %vector.ph811

vector.ph811:                                     ; preds = %vector.main.loop.iter.check
  %i.zt = and i64 %i.zs, 28
  %n.vec812 = and i64 %i.zs, 2147483616           ; 6 uses
  %i.zu = sub nsw i64 %i.zp, %n.vec812
  %i.zv = getelementptr i8, ptr %.1348.lcssa, i64 %n.vec812
  %i.zw = getelementptr i8, ptr %i.zr, i64 %n.vec812
  br label %vector.body813

vector.body813:                                   ; preds = %vector.ph811, %vector.body813
  %index814 = phi i64 [ 0, %vector.ph811 ], [ %index.next821, %vector.body813 ] ; 3 uses
  %next.gep815 = getelementptr i8, ptr %.1348.lcssa, i64 %index814 ; 3 uses
  %next.gep816 = getelementptr i8, ptr %i.zr, i64 %index814 ; 3 uses
  %i.zx = getelementptr i8, ptr %next.gep815, i64 16 ; 2 uses
  %wide.load817 = load <16 x i8>, ptr %next.gep815, align 1, !tbaa !13, !alias.scope !313, !noalias !314
  %wide.load818 = load <16 x i8>, ptr %i.zx, align 1, !tbaa !13, !alias.scope !313, !noalias !314
  %i.zy = getelementptr i8, ptr %next.gep816, i64 16 ; 2 uses
  %wide.load819 = load <16 x i8>, ptr %next.gep816, align 1, !tbaa !13, !alias.scope !314
  %wide.load820 = load <16 x i8>, ptr %i.zy, align 1, !tbaa !13, !alias.scope !314
  store <16 x i8> %wide.load819, ptr %next.gep815, align 1, !tbaa !13, !alias.scope !313, !noalias !314
  store <16 x i8> %wide.load820, ptr %i.zx, align 1, !tbaa !13, !alias.scope !313, !noalias !314
  store <16 x i8> %wide.load817, ptr %next.gep816, align 1, !tbaa !13, !alias.scope !314
  store <16 x i8> %wide.load818, ptr %i.zy, align 1, !tbaa !13, !alias.scope !314
  %index.next821 = add nuw i64 %index814, 32      ; 2 uses
  %i.zz = icmp eq i64 %index.next821, %n.vec812
  br i1 %i.zz, label %middle.block822, label %vector.body813, !llvm.loop !269

middle.block822:                                  ; preds = %vector.body813
  %cmp.n823 = icmp eq i64 %i.zp, %n.vec812
  br i1 %cmp.n823, label %swapfunc.exit459, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block822
  %min.epilog.iters.check = icmp eq i64 %i.zt, 0
  br i1 %min.epilog.iters.check, label %.preheader493.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec812, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec827 = and i64 %i.zs, 2147483644           ; 5 uses
  %i.aaa = sub nsw i64 %i.zp, %n.vec827
  %i.aab = getelementptr i8, ptr %.1348.lcssa, i64 %n.vec827
  %i.aac = getelementptr i8, ptr %i.zr, i64 %n.vec827
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index828 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next833, %vec.epilog.vector.body ] ; 3 uses
  %next.gep829 = getelementptr i8, ptr %.1348.lcssa, i64 %index828 ; 2 uses
  %next.gep830 = getelementptr i8, ptr %i.zr, i64 %index828 ; 2 uses
  %wide.load831 = load <4 x i8>, ptr %next.gep829, align 1, !tbaa !13, !alias.scope !313, !noalias !314
  %wide.load832 = load <4 x i8>, ptr %next.gep830, align 1, !tbaa !13, !alias.scope !314
  store <4 x i8> %wide.load832, ptr %next.gep829, align 1, !tbaa !13, !alias.scope !313, !noalias !314
  store <4 x i8> %wide.load831, ptr %next.gep830, align 1, !tbaa !13, !alias.scope !314
  %index.next833 = add nuw i64 %index828, 4       ; 2 uses
  %i.aad = icmp eq i64 %index.next833, %n.vec827
  br i1 %i.aad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !270

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n834 = icmp eq i64 %i.zp, %n.vec827
  br i1 %cmp.n834, label %swapfunc.exit459, label %.preheader493.preheader

.preheader493.preheader:                          ; preds = %iter.check, %vector.memcheck798, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.020.i453.ph = phi i64 [ %i.zp, %iter.check ], [ %i.zp, %vector.memcheck798 ], [ %i.zu, %vec.epilog.iter.check ], [ %i.aaa, %vec.epilog.middle.block ]
  %.019.i454.ph = phi ptr [ %.1348.lcssa, %iter.check ], [ %.1348.lcssa, %vector.memcheck798 ], [ %i.zv, %vec.epilog.iter.check ], [ %i.aab, %vec.epilog.middle.block ]
  %.018.i455.ph = phi ptr [ %i.zr, %iter.check ], [ %i.zr, %vector.memcheck798 ], [ %i.zw, %vec.epilog.iter.check ], [ %i.aac, %vec.epilog.middle.block ]
  br label %.preheader493

bb.bn:                                            ; preds = %bb.bm
  %i.aae = lshr i64 %i.zp, 3                      ; 6 uses
  %min.iters.check = icmp samesign ult i64 %i.zp, 80
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.bn
  %scevgep = getelementptr i8, ptr %.1348.lcssa, i64 8
  %i.aaf = and i64 %.407, 2147483640              ; 2 uses
  %.not1517 = icmp eq i64 %i.aae, 0
  %i.aag = select i1 %.not1517, i64 0, i64 8      ; 2 uses
  %i.aah = sub nsw i64 %i.aaf, %i.aag
  %scevgep789 = getelementptr i8, ptr %scevgep, i64 %i.aah
  %scevgep790 = getelementptr i8, ptr %.0544, i64 8
  %i.aai = add i64 %i.rp, %i.aaf
  %i.aaj = add nuw nsw i64 %i.zp, %i.aag
  %i.aak = sub i64 %i.aai, %i.aaj
  %scevgep791 = getelementptr i8, ptr %scevgep790, i64 %i.aak
  %bound0 = icmp ult ptr %.1348.lcssa, %scevgep791
  %bound1 = icmp ult ptr %i.zr, %scevgep789
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aae, 268435452              ; 3 uses
  %i.aal = shl nuw nsw i64 %n.vec, 3              ; 2 uses
  %i.aam = getelementptr i8, ptr %i.zr, i64 %i.aal
  %i.aan = getelementptr i8, ptr %.1348.lcssa, i64 %i.aal
  %i.aao = and i64 %i.aae, 3
  br label %vector.body

end_hunk_1
