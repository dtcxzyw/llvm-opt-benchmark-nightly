Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/qsort?download=true
inline.NumInlined: 24
inline.NumDeleted: 3
begin_hunk_0_@cli_qsort:bb.a
  %next.gep1285 = getelementptr i8, ptr %i.wm, i64 %index1283 ; 3 uses
  %i.ww = getelementptr i8, ptr %next.gep1284, i64 16 ; 2 uses
  %wide.load1286 = load <16 x i8>, ptr %next.gep1284, align 1, !tbaa !13, !alias.scope !154, !noalias !155
  %wide.load1287 = load <16 x i8>, ptr %i.ww, align 1, !tbaa !13, !alias.scope !154, !noalias !155
  %i.wx = getelementptr i8, ptr %next.gep1285, i64 16 ; 2 uses
  %wide.load1288 = load <16 x i8>, ptr %next.gep1285, align 1, !tbaa !13, !alias.scope !155
  %wide.load1289 = load <16 x i8>, ptr %i.wx, align 1, !tbaa !13, !alias.scope !155
  store <16 x i8> %wide.load1288, ptr %next.gep1284, align 1, !tbaa !13, !alias.scope !154, !noalias !155
  store <16 x i8> %wide.load1289, ptr %i.ww, align 1, !tbaa !13, !alias.scope !154, !noalias !155
  store <16 x i8> %wide.load1286, ptr %next.gep1285, align 1, !tbaa !13, !alias.scope !155
  store <16 x i8> %wide.load1287, ptr %i.wx, align 1, !tbaa !13, !alias.scope !155
  %index.next1290 = add nuw i64 %index1283, 32    ; 2 uses
  %i.wy = icmp eq i64 %index.next1290, %n.vec1281
  br i1 %i.wy, label %middle.block1291, label %vector.body1282, !llvm.loop !95

middle.block1291:                                 ; preds = %vector.body1282
  br i1 %cmp.n1292, label %swapfunc.exit436.loopexit474.us.us, label %vec.epilog.iter.check1294

vec.epilog.iter.check1294:                        ; preds = %middle.block1291
  br i1 %min.epilog.iters.check1296, label %.preheader473.us.us.preheader, label %vec.epilog.ph1297, !prof !14

vec.epilog.ph1297:                                ; preds = %vector.main.loop.iter.check1278, %vec.epilog.iter.check1294
  %vec.epilog.resume.val1298 = phi i64 [ %n.vec1281, %vec.epilog.iter.check1294 ], [ 0, %vector.main.loop.iter.check1278 ]
  %i.wz = getelementptr i8, ptr %.2355543.us548.us, i64 %n.vec1299
  %i.xa = getelementptr i8, ptr %i.wm, i64 %n.vec1299
  br label %vec.epilog.vector.body1300

vec.epilog.vector.body1300:                       ; preds = %vec.epilog.vector.body1300, %vec.epilog.ph1297
  %index1301 = phi i64 [ %vec.epilog.resume.val1298, %vec.epilog.ph1297 ], [ %index.next1306, %vec.epilog.vector.body1300 ] ; 3 uses
  %next.gep1302 = getelementptr i8, ptr %.2355543.us548.us, i64 %index1301 ; 2 uses
  %next.gep1303 = getelementptr i8, ptr %i.wm, i64 %index1301 ; 2 uses
  %wide.load1304 = load <4 x i8>, ptr %next.gep1302, align 1, !tbaa !13, !alias.scope !154, !noalias !155
  %wide.load1305 = load <4 x i8>, ptr %next.gep1303, align 1, !tbaa !13, !alias.scope !155
  store <4 x i8> %wide.load1305, ptr %next.gep1302, align 1, !tbaa !13, !alias.scope !154, !noalias !155
  store <4 x i8> %wide.load1304, ptr %next.gep1303, align 1, !tbaa !13, !alias.scope !155
  %index.next1306 = add nuw i64 %index1301, 4     ; 2 uses
  %i.xb = icmp eq i64 %index.next1306, %n.vec1299
  br i1 %i.xb, label %vec.epilog.middle.block1307, label %vec.epilog.vector.body1300, !llvm.loop !96

vec.epilog.middle.block1307:                      ; preds = %vec.epilog.vector.body1300
  br i1 %cmp.n1308, label %swapfunc.exit436.loopexit474.us.us, label %.preheader473.us.us.preheader

.preheader473.us.us.preheader:                    ; preds = %iter.check1293, %vector.memcheck1274, %vec.epilog.iter.check1294, %vec.epilog.middle.block1307
  %.020.i430.us.us.ph = phi i64 [ %i.j, %iter.check1293 ], [ %i.j, %vector.memcheck1274 ], [ %i.wg, %vec.epilog.iter.check1294 ], [ %i.wh, %vec.epilog.middle.block1307 ]
  %.019.i431.us.us.ph = phi ptr [ %.2355543.us548.us, %iter.check1293 ], [ %.2355543.us548.us, %vector.memcheck1274 ], [ %i.wu, %vec.epilog.iter.check1294 ], [ %i.wz, %vec.epilog.middle.block1307 ]
  %.018.i432.us.us.ph = phi ptr [ %i.wm, %iter.check1293 ], [ %i.wm, %vector.memcheck1274 ], [ %i.wv, %vec.epilog.iter.check1294 ], [ %i.xa, %vec.epilog.middle.block1307 ]
  br label %.preheader473.us.us

.preheader473.us.us:                              ; preds = %.preheader473.us.us.preheader, %.preheader473.us.us
  %.020.i430.us.us = phi i64 [ %i.xg, %.preheader473.us.us ], [ %.020.i430.us.us.ph, %.preheader473.us.us.preheader ] ; 2 uses
  %.019.i431.us.us = phi ptr [ %i.xe, %.preheader473.us.us ], [ %.019.i431.us.us.ph, %.preheader473.us.us.preheader ] ; 3 uses
  %.018.i432.us.us = phi ptr [ %i.xf, %.preheader473.us.us ], [ %.018.i432.us.us.ph, %.preheader473.us.us.preheader ] ; 3 uses
  %i.xc = load i8, ptr %.019.i431.us.us, align 1, !tbaa !13
  %i.xd = load i8, ptr %.018.i432.us.us, align 1, !tbaa !13
  %i.xe = getelementptr inbounds nuw i8, ptr %.019.i431.us.us, i64 1
  store i8 %i.xd, ptr %.019.i431.us.us, align 1, !tbaa !13
  %i.xf = getelementptr inbounds nuw i8, ptr %.018.i432.us.us, i64 1
  store i8 %i.xc, ptr %.018.i432.us.us, align 1, !tbaa !13
  %i.xg = add nsw i64 %.020.i430.us.us, -1
  %i.xh = icmp sgt i64 %.020.i430.us.us, 1
  br i1 %i.xh, label %.preheader473.us.us, label %swapfunc.exit436.loopexit474.us.us, !llvm.loop !97

swapfunc.exit436.loopexit474.us.us:               ; preds = %.preheader473.us.us, %vec.epilog.middle.block1307, %middle.block1291
  %i.xi = icmp ugt ptr %i.wm, %.0535
  %indvar.next1271 = add i64 %indvar1270, 1
  br i1 %i.xi, label %.lr.ph544.us566, label %.critedge6.us567

.critedge6.us567:                                 ; preds = %swapfunc.exit436.loopexit474.us.us, %.lr.ph544.us566, %.preheader475.us564
  %i.xj = getelementptr inbounds nuw i8, ptr %.3352549.us565, i64 %2 ; 2 uses
  %i.xk = icmp ult ptr %i.xj, %i.sj
  %indvar.next1269 = add i64 %indvar1268, 1
  br i1 %i.xk, label %.preheader475.us564, label %.loopexit

.preheader475:                                    ; preds = %.preheader475.preheader, %.critedge6
  %indvar1215 = phi i64 [ %indvar.next1216, %.critedge6 ], [ 0, %.preheader475.preheader ] ; 2 uses
  %.3352549 = phi ptr [ %i.yk, %.critedge6 ], [ %i.nf, %.preheader475.preheader ] ; 3 uses
  %i.xl = mul i64 %2, %indvar1215                 ; 2 uses
  %i.xm = icmp ugt ptr %.3352549, %.0535
  br i1 %i.xm, label %.lr.ph544.preheader, label %.critedge6

.lr.ph544.preheader:                              ; preds = %.preheader475
  %i.xn = getelementptr i8, ptr %i.vy, i64 %i.xl
  %i.xo = getelementptr i8, ptr %i.vz, i64 %i.xl
  br label %.lr.ph544

.lr.ph544:                                        ; preds = %.lr.ph544.preheader, %swapfunc.exit436.loopexit474
  %indvar1217 = phi i64 [ %indvar.next1218, %swapfunc.exit436.loopexit474 ], [ 0, %.lr.ph544.preheader ] ; 2 uses
  %.2355543 = phi ptr [ %i.xp, %swapfunc.exit436.loopexit474 ], [ %.3352549, %.lr.ph544.preheader ] ; 9 uses
  %i.xp = getelementptr inbounds i8, ptr %.2355543, i64 %i.a ; 10 uses
  %i.xq = tail call i32 %3(ptr noundef nonnull %i.xp, ptr noundef nonnull %.2355543) #2
  %i.xr = icmp sgt i32 %i.xq, 0
  br i1 %i.xr, label %iter.check1240, label %.critedge6

iter.check1240:                                   ; preds = %.lr.ph544
  br i1 %min.iters.check1220, label %.preheader473.preheader, label %vector.memcheck1221

vector.memcheck1221:                              ; preds = %iter.check1240
  %i.xs = mul i64 %indvar1217, %i.a               ; 2 uses
  %i.xt = getelementptr i8, ptr %i.xn, i64 %i.xs
  %i.xu = getelementptr i8, ptr %i.xo, i64 %i.xs
  %bound01222 = icmp ult ptr %.2355543, %i.xu
  %bound11223 = icmp ult ptr %i.xp, %i.xt
  %found.conflict1224 = and i1 %bound01222, %bound11223
  br i1 %found.conflict1224, label %.preheader473.preheader, label %vector.main.loop.iter.check1225

vector.main.loop.iter.check1225:                  ; preds = %vector.memcheck1221
  br i1 %min.iters.check1226, label %vec.epilog.ph1244, label %vector.ph1227

vector.ph1227:                                    ; preds = %vector.main.loop.iter.check1225
  %i.xv = getelementptr i8, ptr %.2355543, i64 %n.vec1228
  %i.xw = getelementptr i8, ptr %i.xp, i64 %n.vec1228
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.ph1227, %vector.body1229
  %index1230 = phi i64 [ 0, %vector.ph1227 ], [ %index.next1237, %vector.body1229 ] ; 3 uses
  %next.gep1231 = getelementptr i8, ptr %.2355543, i64 %index1230 ; 3 uses
  %next.gep1232 = getelementptr i8, ptr %i.xp, i64 %index1230 ; 3 uses
  %i.xx = getelementptr i8, ptr %next.gep1231, i64 16 ; 2 uses
  %wide.load1233 = load <16 x i8>, ptr %next.gep1231, align 1, !tbaa !13, !alias.scope !156, !noalias !157
  %wide.load1234 = load <16 x i8>, ptr %i.xx, align 1, !tbaa !13, !alias.scope !156, !noalias !157
  %i.xy = getelementptr i8, ptr %next.gep1232, i64 16 ; 2 uses
  %wide.load1235 = load <16 x i8>, ptr %next.gep1232, align 1, !tbaa !13, !alias.scope !157
  %wide.load1236 = load <16 x i8>, ptr %i.xy, align 1, !tbaa !13, !alias.scope !157
  store <16 x i8> %wide.load1235, ptr %next.gep1231, align 1, !tbaa !13, !alias.scope !156, !noalias !157
  store <16 x i8> %wide.load1236, ptr %i.xx, align 1, !tbaa !13, !alias.scope !156, !noalias !157
  store <16 x i8> %wide.load1233, ptr %next.gep1232, align 1, !tbaa !13, !alias.scope !157
  store <16 x i8> %wide.load1234, ptr %i.xy, align 1, !tbaa !13, !alias.scope !157
  %index.next1237 = add nuw i64 %index1230, 32    ; 2 uses
  %i.xz = icmp eq i64 %index.next1237, %n.vec1228
  br i1 %i.xz, label %middle.block1238, label %vector.body1229, !llvm.loop !101

middle.block1238:                                 ; preds = %vector.body1229
  br i1 %cmp.n1239, label %swapfunc.exit436.loopexit474, label %vec.epilog.iter.check1241

vec.epilog.iter.check1241:                        ; preds = %middle.block1238
  br i1 %min.epilog.iters.check1243, label %.preheader473.preheader, label %vec.epilog.ph1244, !prof !14

vec.epilog.ph1244:                                ; preds = %vector.main.loop.iter.check1225, %vec.epilog.iter.check1241
  %vec.epilog.resume.val1245 = phi i64 [ %n.vec1228, %vec.epilog.iter.check1241 ], [ 0, %vector.main.loop.iter.check1225 ]
  %i.ya = getelementptr i8, ptr %.2355543, i64 %n.vec1246
  %i.yb = getelementptr i8, ptr %i.xp, i64 %n.vec1246
  br label %vec.epilog.vector.body1247

vec.epilog.vector.body1247:                       ; preds = %vec.epilog.vector.body1247, %vec.epilog.ph1244
  %index1248 = phi i64 [ %vec.epilog.resume.val1245, %vec.epilog.ph1244 ], [ %index.next1253, %vec.epilog.vector.body1247 ] ; 3 uses
  %next.gep1249 = getelementptr i8, ptr %.2355543, i64 %index1248 ; 2 uses
  %next.gep1250 = getelementptr i8, ptr %i.xp, i64 %index1248 ; 2 uses
  %wide.load1251 = load <4 x i8>, ptr %next.gep1249, align 1, !tbaa !13, !alias.scope !156, !noalias !157
  %wide.load1252 = load <4 x i8>, ptr %next.gep1250, align 1, !tbaa !13, !alias.scope !157
  store <4 x i8> %wide.load1252, ptr %next.gep1249, align 1, !tbaa !13, !alias.scope !156, !noalias !157
  store <4 x i8> %wide.load1251, ptr %next.gep1250, align 1, !tbaa !13, !alias.scope !157
  %index.next1253 = add nuw i64 %index1248, 4     ; 2 uses
  %i.yc = icmp eq i64 %index.next1253, %n.vec1246
  br i1 %i.yc, label %vec.epilog.middle.block1254, label %vec.epilog.vector.body1247, !llvm.loop !102

vec.epilog.middle.block1254:                      ; preds = %vec.epilog.vector.body1247
  br i1 %cmp.n1255, label %swapfunc.exit436.loopexit474, label %.preheader473.preheader

.preheader473.preheader:                          ; preds = %iter.check1240, %vector.memcheck1221, %vec.epilog.iter.check1241, %vec.epilog.middle.block1254
  %.020.i430.ph = phi i64 [ %i.j, %iter.check1240 ], [ %i.j, %vector.memcheck1221 ], [ %i.wb, %vec.epilog.iter.check1241 ], [ %i.wc, %vec.epilog.middle.block1254 ]
  %.019.i431.ph = phi ptr [ %.2355543, %iter.check1240 ], [ %.2355543, %vector.memcheck1221 ], [ %i.xv, %vec.epilog.iter.check1241 ], [ %i.ya, %vec.epilog.middle.block1254 ]
  %.018.i432.ph = phi ptr [ %i.xp, %iter.check1240 ], [ %i.xp, %vector.memcheck1221 ], [ %i.xw, %vec.epilog.iter.check1241 ], [ %i.yb, %vec.epilog.middle.block1254 ]
  br label %.preheader473

.preheader473:                                    ; preds = %.preheader473.preheader, %.preheader473
  %.020.i430 = phi i64 [ %i.yh, %.preheader473 ], [ %.020.i430.ph, %.preheader473.preheader ] ; 2 uses
  %.019.i431 = phi ptr [ %i.yf, %.preheader473 ], [ %.019.i431.ph, %.preheader473.preheader ] ; 3 uses
  %.018.i432 = phi ptr [ %i.yg, %.preheader473 ], [ %.018.i432.ph, %.preheader473.preheader ] ; 3 uses
  %i.yd = load i8, ptr %.019.i431, align 1, !tbaa !13
  %i.ye = load i8, ptr %.018.i432, align 1, !tbaa !13
  %i.yf = getelementptr inbounds nuw i8, ptr %.019.i431, i64 1
  store i8 %i.ye, ptr %.019.i431, align 1, !tbaa !13
  %i.yg = getelementptr inbounds nuw i8, ptr %.018.i432, i64 1
  store i8 %i.yd, ptr %.018.i432, align 1, !tbaa !13
  %i.yh = add nsw i64 %.020.i430, -1
  %i.yi = icmp sgt i64 %.020.i430, 1
  br i1 %i.yi, label %.preheader473, label %swapfunc.exit436.loopexit474, !llvm.loop !103

swapfunc.exit436.loopexit474:                     ; preds = %.preheader473, %vec.epilog.middle.block1254, %middle.block1238
  %i.yj = icmp ugt ptr %i.xp, %.0535
  %indvar.next1218 = add i64 %indvar1217, 1
  br i1 %i.yj, label %.lr.ph544, label %.critedge6

.critedge6:                                       ; preds = %swapfunc.exit436.loopexit474, %.lr.ph544, %.preheader475
  %i.yk = getelementptr inbounds nuw i8, ptr %.3352549, i64 %2 ; 2 uses
  %i.yl = icmp ult ptr %i.yk, %i.sj
  %indvar.next1216 = add i64 %indvar1215, 1
  br i1 %i.yl, label %.preheader475, label %.loopexit

bb.bj:                                            ; preds = %.critedge2._crit_edge
  %i.ym = ptrtoint ptr %.1.lcssa to i64           ; 2 uses
  %i.yn = sub i64 %i.ym, %i.gr
  %i.yo = ptrtoint ptr %.1339.lcssa to i64
  %i.yp = sub i64 %i.yo, %i.ym                    ; 2 uses
  %.397 = tail call i64 @llvm.smin.i64(i64 %i.yn, i64 %i.yp) ; 3 uses
  %i.yq = trunc i64 %.397 to i32
  %i.yr = icmp sgt i32 %i.yq, 0
  br i1 %i.yr, label %bb.bk, label %swapfunc.exit443

bb.bk:                                            ; preds = %bb.bj
  %i.ys = and i64 %.397, 2147483647               ; 14 uses
  %i.yt = sub nsw i64 0, %i.ys
  %i.yu = getelementptr i8, ptr %.1339.lcssa, i64 %i.yt ; 12 uses
  br i1 %or.cond536, label %bb.bl, label %iter.check887

iter.check887:                                    ; preds = %bb.bk
  %i.yv = tail call i64 @llvm.umax.i64(i64 %i.ys, i64 1) ; 3 uses
  %min.iters.check867 = icmp samesign ult i64 %i.ys, 4
  br i1 %min.iters.check867, label %.preheader486.preheader, label %vector.memcheck868

vector.memcheck868:                               ; preds = %iter.check887
  %i.yw = getelementptr i8, ptr %.0535, i64 %i.ys
  %bound0869 = icmp ult ptr %.0535, %.1339.lcssa
  %bound1870 = icmp ult ptr %i.yu, %i.yw
  %found.conflict871 = and i1 %bound0869, %bound1870
  br i1 %found.conflict871, label %.preheader486.preheader, label %vector.main.loop.iter.check872

vector.main.loop.iter.check872:                   ; preds = %vector.memcheck868
  %min.iters.check873 = icmp samesign ult i64 %i.ys, 32
  br i1 %min.iters.check873, label %vec.epilog.ph891, label %vector.ph874

vector.ph874:                                     ; preds = %vector.main.loop.iter.check872
  %i.yx = and i64 %i.yv, 28
  %n.vec875 = and i64 %i.yv, 2147483616           ; 6 uses
  %i.yy = sub nsw i64 %i.ys, %n.vec875
  %i.yz = getelementptr i8, ptr %.0535, i64 %n.vec875
  %i.za = getelementptr i8, ptr %i.yu, i64 %n.vec875
  br label %vector.body876

vector.body876:                                   ; preds = %vector.ph874, %vector.body876
  %index877 = phi i64 [ 0, %vector.ph874 ], [ %index.next884, %vector.body876 ] ; 3 uses
  %next.gep878 = getelementptr i8, ptr %.0535, i64 %index877 ; 3 uses
  %next.gep879 = getelementptr i8, ptr %i.yu, i64 %index877 ; 3 uses
  %i.zb = getelementptr i8, ptr %next.gep878, i64 16 ; 2 uses
  %wide.load880 = load <16 x i8>, ptr %next.gep878, align 1, !tbaa !13, !alias.scope !158, !noalias !159
  %wide.load881 = load <16 x i8>, ptr %i.zb, align 1, !tbaa !13, !alias.scope !158, !noalias !159
  %i.zc = getelementptr i8, ptr %next.gep879, i64 16 ; 2 uses
  %wide.load882 = load <16 x i8>, ptr %next.gep879, align 1, !tbaa !13, !alias.scope !159
  %wide.load883 = load <16 x i8>, ptr %i.zc, align 1, !tbaa !13, !alias.scope !159
  store <16 x i8> %wide.load882, ptr %next.gep878, align 1, !tbaa !13, !alias.scope !158, !noalias !159
  store <16 x i8> %wide.load883, ptr %i.zb, align 1, !tbaa !13, !alias.scope !158, !noalias !159
  store <16 x i8> %wide.load880, ptr %next.gep879, align 1, !tbaa !13, !alias.scope !159
  store <16 x i8> %wide.load881, ptr %i.zc, align 1, !tbaa !13, !alias.scope !159
  %index.next884 = add nuw i64 %index877, 32      ; 2 uses
  %i.zd = icmp eq i64 %index.next884, %n.vec875
  br i1 %i.zd, label %middle.block885, label %vector.body876, !llvm.loop !107

middle.block885:                                  ; preds = %vector.body876
  %cmp.n886 = icmp eq i64 %i.ys, %n.vec875
  br i1 %cmp.n886, label %swapfunc.exit443, label %vec.epilog.iter.check888

vec.epilog.iter.check888:                         ; preds = %middle.block885
  %min.epilog.iters.check890 = icmp eq i64 %i.yx, 0
  br i1 %min.epilog.iters.check890, label %.preheader486.preheader, label %vec.epilog.ph891, !prof !14

vec.epilog.ph891:                                 ; preds = %vector.main.loop.iter.check872, %vec.epilog.iter.check888
  %vec.epilog.resume.val892 = phi i64 [ %n.vec875, %vec.epilog.iter.check888 ], [ 0, %vector.main.loop.iter.check872 ]
  %n.vec893 = and i64 %i.yv, 2147483644           ; 5 uses
  %i.ze = sub nsw i64 %i.ys, %n.vec893
  %i.zf = getelementptr i8, ptr %.0535, i64 %n.vec893
  %i.zg = getelementptr i8, ptr %i.yu, i64 %n.vec893
  br label %vec.epilog.vector.body894

vec.epilog.vector.body894:                        ; preds = %vec.epilog.vector.body894, %vec.epilog.ph891
  %index895 = phi i64 [ %vec.epilog.resume.val892, %vec.epilog.ph891 ], [ %index.next900, %vec.epilog.vector.body894 ] ; 3 uses
  %next.gep896 = getelementptr i8, ptr %.0535, i64 %index895 ; 2 uses
  %next.gep897 = getelementptr i8, ptr %i.yu, i64 %index895 ; 2 uses
  %wide.load898 = load <4 x i8>, ptr %next.gep896, align 1, !tbaa !13, !alias.scope !158, !noalias !159
  %wide.load899 = load <4 x i8>, ptr %next.gep897, align 1, !tbaa !13, !alias.scope !159
  store <4 x i8> %wide.load899, ptr %next.gep896, align 1, !tbaa !13, !alias.scope !158, !noalias !159
  store <4 x i8> %wide.load898, ptr %next.gep897, align 1, !tbaa !13, !alias.scope !159
  %index.next900 = add nuw i64 %index895, 4       ; 2 uses
  %i.zh = icmp eq i64 %index.next900, %n.vec893
  br i1 %i.zh, label %vec.epilog.middle.block901, label %vec.epilog.vector.body894, !llvm.loop !108

vec.epilog.middle.block901:                       ; preds = %vec.epilog.vector.body894
  %cmp.n902 = icmp eq i64 %i.ys, %n.vec893
  br i1 %cmp.n902, label %swapfunc.exit443, label %.preheader486.preheader

.preheader486.preheader:                          ; preds = %iter.check887, %vector.memcheck868, %vec.epilog.iter.check888, %vec.epilog.middle.block901
  %.020.i437.ph = phi i64 [ %i.ys, %iter.check887 ], [ %i.ys, %vector.memcheck868 ], [ %i.yy, %vec.epilog.iter.check888 ], [ %i.ze, %vec.epilog.middle.block901 ]
  %.019.i438.ph = phi ptr [ %.0535, %iter.check887 ], [ %.0535, %vector.memcheck868 ], [ %i.yz, %vec.epilog.iter.check888 ], [ %i.zf, %vec.epilog.middle.block901 ]
  %.018.i439.ph = phi ptr [ %i.yu, %iter.check887 ], [ %i.yu, %vector.memcheck868 ], [ %i.za, %vec.epilog.iter.check888 ], [ %i.zg, %vec.epilog.middle.block901 ]
  br label %.preheader486

bb.bl:                                            ; preds = %bb.bk
  %i.zi = lshr i64 %i.ys, 3                       ; 6 uses
  %min.iters.check836 = icmp samesign ult i64 %i.ys, 64
  br i1 %min.iters.check836, label %scalar.ph835.preheader, label %vector.memcheck837

vector.memcheck837:                               ; preds = %bb.bl
  %.not1573 = icmp eq i64 %i.zi, 0
  %i.zj = and i64 %.397, 2147483640
  %i.zk = select i1 %.not1573, i64 0, i64 8       ; 2 uses
  %i.zl = add nuw nsw i64 %i.zj, 8                ; 2 uses
  %i.zm = sub nuw nsw i64 %i.zl, %i.zk
  %i.zn = getelementptr i8, ptr %.0535, i64 %i.zm
  %i.zo = add nuw nsw i64 %i.ys, %i.zk
  %i.zp = sub nsw i64 %i.zl, %i.zo
  %i.zq = getelementptr i8, ptr %.1339.lcssa, i64 %i.zp
  %bound0838 = icmp ult ptr %.0535, %i.zq
  %bound1839 = icmp ult ptr %i.yu, %i.zn
  %found.conflict840 = and i1 %bound0838, %bound1839
  br i1 %found.conflict840, label %scalar.ph835.preheader, label %vector.ph841

vector.ph841:                                     ; preds = %vector.memcheck837
  %n.vec842 = and i64 %i.zi, 268435452            ; 3 uses
  %i.zr = shl nuw nsw i64 %n.vec842, 3            ; 2 uses
  %i.zs = getelementptr i8, ptr %i.yu, i64 %i.zr
  %i.zt = getelementptr i8, ptr %.0535, i64 %i.zr
  %4 = and i64 %i.zi, 3
  br label %vector.body843

vector.body843:                                   ; preds = %vector.body843, %vector.ph841
  %index844 = phi i64 [ 0, %vector.ph841 ], [ %index.next851, %vector.body843 ] ; 2 uses
  %i.zu = shl i64 %index844, 3                    ; 2 uses
  %next.gep845 = getelementptr i8, ptr %i.yu, i64 %i.zu ; 3 uses
  %next.gep846 = getelementptr i8, ptr %.0535, i64 %i.zu ; 3 uses
  %i.zv = getelementptr i8, ptr %next.gep846, i64 16 ; 2 uses
  %wide.load847 = load <2 x i64>, ptr %next.gep846, align 8, !tbaa !10, !alias.scope !160, !noalias !161
  %wide.load848 = load <2 x i64>, ptr %i.zv, align 8, !tbaa !10, !alias.scope !160, !noalias !161
  %i.zw = getelementptr i8, ptr %next.gep845, i64 16 ; 2 uses
  %wide.load849 = load <2 x i64>, ptr %next.gep845, align 8, !tbaa !10, !alias.scope !161
  %wide.load850 = load <2 x i64>, ptr %i.zw, align 8, !tbaa !10, !alias.scope !161
  store <2 x i64> %wide.load849, ptr %next.gep846, align 8, !tbaa !10, !alias.scope !160, !noalias !161
  store <2 x i64> %wide.load850, ptr %i.zv, align 8, !tbaa !10, !alias.scope !160, !noalias !161
  store <2 x i64> %wide.load847, ptr %next.gep845, align 8, !tbaa !10, !alias.scope !161
  store <2 x i64> %wide.load848, ptr %i.zw, align 8, !tbaa !10, !alias.scope !161
  %index.next851 = add nuw i64 %index844, 4       ; 2 uses
  %i.zx = icmp eq i64 %index.next851, %n.vec842
  br i1 %i.zx, label %middle.block852, label %vector.body843, !llvm.loop !112

middle.block852:                                  ; preds = %vector.body843
  %cmp.n853 = icmp eq i64 %i.zi, %n.vec842
  br i1 %cmp.n853, label %swapfunc.exit443, label %scalar.ph835.preheader

scalar.ph835.preheader:                           ; preds = %vector.memcheck837, %bb.bl, %middle.block852
  %.022.i440.ph = phi ptr [ %i.yu, %vector.memcheck837 ], [ %i.yu, %bb.bl ], [ %i.zs, %middle.block852 ]
  %.021.i441.ph = phi ptr [ %.0535, %vector.memcheck837 ], [ %.0535, %bb.bl ], [ %i.zt, %middle.block852 ]
  %.0.i442.ph = phi i64 [ %i.zi, %vector.memcheck837 ], [ %i.zi, %bb.bl ], [ %4, %middle.block852 ]
  br label %scalar.ph835

scalar.ph835:                                     ; preds = %scalar.ph835.preheader, %scalar.ph835
  %.022.i440 = phi ptr [ %i.aab, %scalar.ph835 ], [ %.022.i440.ph, %scalar.ph835.preheader ] ; 3 uses
  %.021.i441 = phi ptr [ %i.aaa, %scalar.ph835 ], [ %.021.i441.ph, %scalar.ph835.preheader ] ; 3 uses
  %.0.i442 = phi i64 [ %i.aac, %scalar.ph835 ], [ %.0.i442.ph, %scalar.ph835.preheader ] ; 2 uses
  %i.zy = load i64, ptr %.021.i441, align 8, !tbaa !10
  %i.zz = load i64, ptr %.022.i440, align 8, !tbaa !10
  %i.aaa = getelementptr inbounds nuw i8, ptr %.021.i441, i64 8
  store i64 %i.zz, ptr %.021.i441, align 8, !tbaa !10
  %i.aab = getelementptr inbounds nuw i8, ptr %.022.i440, i64 8
  store i64 %i.zy, ptr %.022.i440, align 8, !tbaa !10
  %i.aac = add nsw i64 %.0.i442, -1
  %i.aad = icmp samesign ugt i64 %.0.i442, 1
  br i1 %i.aad, label %scalar.ph835, label %swapfunc.exit443, !llvm.loop !113

.preheader486:                                    ; preds = %.preheader486.preheader, %.preheader486
  %.020.i437 = phi i64 [ %i.aai, %.preheader486 ], [ %.020.i437.ph, %.preheader486.preheader ] ; 2 uses
  %.019.i438 = phi ptr [ %i.aag, %.preheader486 ], [ %.019.i438.ph, %.preheader486.preheader ] ; 3 uses
  %.018.i439 = phi ptr [ %i.aah, %.preheader486 ], [ %.018.i439.ph, %.preheader486.preheader ] ; 3 uses
  %i.aae = load i8, ptr %.019.i438, align 1, !tbaa !13
  %i.aaf = load i8, ptr %.018.i439, align 1, !tbaa !13
  %i.aag = getelementptr inbounds nuw i8, ptr %.019.i438, i64 1
  store i8 %i.aaf, ptr %.019.i438, align 1, !tbaa !13
  %i.aah = getelementptr inbounds nuw i8, ptr %.018.i439, i64 1
  store i8 %i.aae, ptr %.018.i439, align 1, !tbaa !13
  %i.aai = add nsw i64 %.020.i437, -1
  %i.aaj = icmp samesign ugt i64 %.020.i437, 1
  br i1 %i.aaj, label %.preheader486, label %swapfunc.exit443, !llvm.loop !114

swapfunc.exit443:                                 ; preds = %.preheader486, %scalar.ph835, %middle.block885, %vec.epilog.middle.block901, %middle.block852, %bb.bj
  %i.aak = ptrtoint ptr %.1343.lcssa to i64       ; 2 uses
  %i.aal = ptrtoint ptr %.1341.lcssa to i64
  %i.aam = sub i64 %i.aak, %i.aal                 ; 2 uses
  %i.aan = ptrtoint ptr %i.sj to i64
  %i.aao = add i64 %2, %i.aak
  %i.aap = sub i64 %i.aan, %i.aao
  %.398 = tail call i64 @llvm.umin.i64(i64 %i.aam, i64 %i.aap) ; 3 uses
  %i.aaq = trunc i64 %.398 to i32
  %i.aar = icmp sgt i32 %i.aaq, 0
  br i1 %i.aar, label %bb.bm, label %swapfunc.exit450

bb.bm:                                            ; preds = %swapfunc.exit443
  %i.aas = and i64 %.398, 2147483647              ; 14 uses
  %i.aat = sub nsw i64 0, %i.aas
  %i.aau = getelementptr i8, ptr %i.sj, i64 %i.aat ; 12 uses
  br i1 %or.cond536, label %bb.bn, label %iter.check

iter.check:                                       ; preds = %bb.bm
  %i.aav = tail call i64 @llvm.umax.i64(i64 %i.aas, i64 1) ; 3 uses
  %min.iters.check797 = icmp samesign ult i64 %i.aas, 4
  br i1 %min.iters.check797, label %.preheader484.preheader, label %vector.memcheck798

vector.memcheck798:                               ; preds = %iter.check
  %i.aaw = getelementptr i8, ptr %.1339.lcssa, i64 %i.aas
  %i.aax = getelementptr i8, ptr %.0535, i64 %i.si
  %bound0799 = icmp ult ptr %.1339.lcssa, %i.aax
  %bound1800 = icmp ult ptr %i.aau, %i.aaw
  %found.conflict801 = and i1 %bound0799, %bound1800
  br i1 %found.conflict801, label %.preheader484.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck798
  %min.iters.check802 = icmp samesign ult i64 %i.aas, 32
  br i1 %min.iters.check802, label %vec.epilog.ph, label %vector.ph803

vector.ph803:                                     ; preds = %vector.main.loop.iter.check
  %i.aay = and i64 %i.aav, 28
  %n.vec804 = and i64 %i.aav, 2147483616          ; 6 uses
  %i.aaz = sub nsw i64 %i.aas, %n.vec804
  %i.aba = getelementptr i8, ptr %.1339.lcssa, i64 %n.vec804
  %i.abb = getelementptr i8, ptr %i.aau, i64 %n.vec804
  br label %vector.body805

vector.body805:                                   ; preds = %vector.ph803, %vector.body805
  %index806 = phi i64 [ 0, %vector.ph803 ], [ %index.next813, %vector.body805 ] ; 3 uses
  %next.gep807 = getelementptr i8, ptr %.1339.lcssa, i64 %index806 ; 3 uses
  %next.gep808 = getelementptr i8, ptr %i.aau, i64 %index806 ; 3 uses
  %i.abc = getelementptr i8, ptr %next.gep807, i64 16 ; 2 uses
  %wide.load809 = load <16 x i8>, ptr %next.gep807, align 1, !tbaa !13, !alias.scope !162, !noalias !163
  %wide.load810 = load <16 x i8>, ptr %i.abc, align 1, !tbaa !13, !alias.scope !162, !noalias !163
  %i.abd = getelementptr i8, ptr %next.gep808, i64 16 ; 2 uses
  %wide.load811 = load <16 x i8>, ptr %next.gep808, align 1, !tbaa !13, !alias.scope !163
  %wide.load812 = load <16 x i8>, ptr %i.abd, align 1, !tbaa !13, !alias.scope !163
  store <16 x i8> %wide.load811, ptr %next.gep807, align 1, !tbaa !13, !alias.scope !162, !noalias !163
  store <16 x i8> %wide.load812, ptr %i.abc, align 1, !tbaa !13, !alias.scope !162, !noalias !163
  store <16 x i8> %wide.load809, ptr %next.gep808, align 1, !tbaa !13, !alias.scope !163
  store <16 x i8> %wide.load810, ptr %i.abd, align 1, !tbaa !13, !alias.scope !163
  %index.next813 = add nuw i64 %index806, 32      ; 2 uses
  %i.abe = icmp eq i64 %index.next813, %n.vec804
  br i1 %i.abe, label %middle.block814, label %vector.body805, !llvm.loop !118

middle.block814:                                  ; preds = %vector.body805
  %cmp.n815 = icmp eq i64 %i.aas, %n.vec804
  br i1 %cmp.n815, label %swapfunc.exit450, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block814
  %min.epilog.iters.check = icmp eq i64 %i.aay, 0
  br i1 %min.epilog.iters.check, label %.preheader484.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec804, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec816 = and i64 %i.aav, 2147483644          ; 5 uses
  %i.abf = sub nsw i64 %i.aas, %n.vec816
  %i.abg = getelementptr i8, ptr %.1339.lcssa, i64 %n.vec816
  %i.abh = getelementptr i8, ptr %i.aau, i64 %n.vec816
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index817 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next822, %vec.epilog.vector.body ] ; 3 uses
  %next.gep818 = getelementptr i8, ptr %.1339.lcssa, i64 %index817 ; 2 uses
  %next.gep819 = getelementptr i8, ptr %i.aau, i64 %index817 ; 2 uses
  %wide.load820 = load <4 x i8>, ptr %next.gep818, align 1, !tbaa !13, !alias.scope !162, !noalias !163
  %wide.load821 = load <4 x i8>, ptr %next.gep819, align 1, !tbaa !13, !alias.scope !163
  store <4 x i8> %wide.load821, ptr %next.gep818, align 1, !tbaa !13, !alias.scope !162, !noalias !163
  store <4 x i8> %wide.load820, ptr %next.gep819, align 1, !tbaa !13, !alias.scope !163
  %index.next822 = add nuw i64 %index817, 4       ; 2 uses
  %i.abi = icmp eq i64 %index.next822, %n.vec816
  br i1 %i.abi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !119

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n823 = icmp eq i64 %i.aas, %n.vec816
  br i1 %cmp.n823, label %swapfunc.exit450, label %.preheader484.preheader

.preheader484.preheader:                          ; preds = %iter.check, %vector.memcheck798, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.020.i444.ph = phi i64 [ %i.aas, %iter.check ], [ %i.aas, %vector.memcheck798 ], [ %i.aaz, %vec.epilog.iter.check ], [ %i.abf, %vec.epilog.middle.block ]
  %.019.i445.ph = phi ptr [ %.1339.lcssa, %iter.check ], [ %.1339.lcssa, %vector.memcheck798 ], [ %i.aba, %vec.epilog.iter.check ], [ %i.abg, %vec.epilog.middle.block ]
  %.018.i446.ph = phi ptr [ %i.aau, %iter.check ], [ %i.aau, %vector.memcheck798 ], [ %i.abb, %vec.epilog.iter.check ], [ %i.abh, %vec.epilog.middle.block ]
  br label %.preheader484

bb.bn:                                            ; preds = %bb.bm
  %i.abj = lshr i64 %i.aas, 3                     ; 6 uses
  %min.iters.check = icmp samesign ult i64 %i.aas, 80
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.bn
  %.not1574 = icmp eq i64 %i.abj, 0
  %i.abk = and i64 %.398, 2147483640              ; 2 uses
  %i.abl = select i1 %.not1574, i64 0, i64 8      ; 2 uses
  %i.abm = add nuw nsw i64 %i.abk, 8
  %i.abn = sub nuw nsw i64 %i.abm, %i.abl
  %i.abo = getelementptr i8, ptr %.1339.lcssa, i64 %i.abn
  %i.abp = add i64 %i.si, %i.abk
  %i.abq = add i64 %i.abp, 8
  %i.abr = add nuw nsw i64 %i.aas, %i.abl
  %i.abs = sub i64 %i.abq, %i.abr
  %i.abt = getelementptr i8, ptr %.0535, i64 %i.abs
  %bound0 = icmp ult ptr %.1339.lcssa, %i.abt
  %bound1 = icmp ult ptr %i.aau, %i.abo
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.abj, 268435452              ; 3 uses
  %i.abu = shl nuw nsw i64 %n.vec, 3              ; 2 uses
  %i.abv = getelementptr i8, ptr %i.aau, i64 %i.abu
  %i.abw = getelementptr i8, ptr %.1339.lcssa, i64 %i.abu
  %5 = and i64 %i.abj, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.abx = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aau, i64 %i.abx ; 3 uses
  %next.gep783 = getelementptr i8, ptr %.1339.lcssa, i64 %i.abx ; 3 uses
  %i.aby = getelementptr i8, ptr %next.gep783, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep783, align 8, !tbaa !10, !alias.scope !164, !noalias !165
  %wide.load784 = load <2 x i64>, ptr %i.aby, align 8, !tbaa !10, !alias.scope !164, !noalias !165
  %i.abz = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load785 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !10, !alias.scope !165
  %wide.load786 = load <2 x i64>, ptr %i.abz, align 8, !tbaa !10, !alias.scope !165
  store <2 x i64> %wide.load785, ptr %next.gep783, align 8, !tbaa !10, !alias.scope !164, !noalias !165
  store <2 x i64> %wide.load786, ptr %i.aby, align 8, !tbaa !10, !alias.scope !164, !noalias !165
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !10, !alias.scope !165
  store <2 x i64> %wide.load784, ptr %i.abz, align 8, !tbaa !10, !alias.scope !165
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aca = icmp eq i64 %index.next, %n.vec
  br i1 %i.aca, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abj, %n.vec
  br i1 %cmp.n, label %swapfunc.exit450, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.bn, %middle.block
  %.022.i447.ph = phi ptr [ %i.aau, %vector.memcheck ], [ %i.aau, %bb.bn ], [ %i.abv, %middle.block ]
  %.021.i448.ph = phi ptr [ %.1339.lcssa, %vector.memcheck ], [ %.1339.lcssa, %bb.bn ], [ %i.abw, %middle.block ]
  %.0.i449.ph = phi i64 [ %i.abj, %vector.memcheck ], [ %i.abj, %bb.bn ], [ %5, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.022.i447 = phi ptr [ %i.ace, %scalar.ph ], [ %.022.i447.ph, %scalar.ph.preheader ] ; 3 uses
  %.021.i448 = phi ptr [ %i.acd, %scalar.ph ], [ %.021.i448.ph, %scalar.ph.preheader ] ; 3 uses
  %.0.i449 = phi i64 [ %i.acf, %scalar.ph ], [ %.0.i449.ph, %scalar.ph.preheader ] ; 2 uses
  %i.acb = load i64, ptr %.021.i448, align 8, !tbaa !10
  %i.acc = load i64, ptr %.022.i447, align 8, !tbaa !10
  %i.acd = getelementptr inbounds nuw i8, ptr %.021.i448, i64 8
  store i64 %i.acc, ptr %.021.i448, align 8, !tbaa !10
  %i.ace = getelementptr inbounds nuw i8, ptr %.022.i447, i64 8
  store i64 %i.acb, ptr %.022.i447, align 8, !tbaa !10
  %i.acf = add nsw i64 %.0.i449, -1
  %i.acg = icmp samesign ugt i64 %.0.i449, 1
  br i1 %i.acg, label %scalar.ph, label %swapfunc.exit450, !llvm.loop !124

.preheader484:                                    ; preds = %.preheader484.preheader, %.preheader484
  %.020.i444 = phi i64 [ %i.acl, %.preheader484 ], [ %.020.i444.ph, %.preheader484.preheader ] ; 2 uses
  %.019.i445 = phi ptr [ %i.acj, %.preheader484 ], [ %.019.i445.ph, %.preheader484.preheader ] ; 3 uses
  %.018.i446 = phi ptr [ %i.ack, %.preheader484 ], [ %.018.i446.ph, %.preheader484.preheader ] ; 3 uses
  %i.ach = load i8, ptr %.019.i445, align 1, !tbaa !13
  %i.aci = load i8, ptr %.018.i446, align 1, !tbaa !13
  %i.acj = getelementptr inbounds nuw i8, ptr %.019.i445, i64 1
  store i8 %i.aci, ptr %.019.i445, align 1, !tbaa !13
  %i.ack = getelementptr inbounds nuw i8, ptr %.018.i446, i64 1
  store i8 %i.ach, ptr %.018.i446, align 1, !tbaa !13
  %i.acl = add nsw i64 %.020.i444, -1
  %i.acm = icmp samesign ugt i64 %.020.i444, 1
  br i1 %i.acm, label %.preheader484, label %swapfunc.exit450, !llvm.loop !125

swapfunc.exit450:                                 ; preds = %.preheader484, %scalar.ph, %middle.block814, %vec.epilog.middle.block, %middle.block, %swapfunc.exit443
  %i.acn = shl i64 %i.yp, 32
  %i.aco = ashr exact i64 %i.acn, 32              ; 2 uses
  %i.acp = icmp ugt i64 %i.aco, %2
  br i1 %i.acp, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %swapfunc.exit450
  %i.acq = udiv i64 %i.aco, %2
  tail call void @cli_qsort(ptr noundef %.0535, i64 noundef %i.acq, i64 noundef %2, ptr noundef %3)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %swapfunc.exit450
  %i.acr = shl i64 %i.aam, 32
  %i.acs = ashr exact i64 %i.acr, 32              ; 3 uses
  %i.act = icmp ugt i64 %i.acs, %2
  br i1 %i.act, label %bb.bq, label %.loopexit

bb.bq:                                            ; preds = %bb.bp
  %i.acu = sub nsw i64 0, %i.acs
  %i.acv = getelementptr inbounds i8, ptr %i.sj, i64 %i.acu
  %.fr687 = freeze ptr %i.acv                     ; 3 uses
  %i.acw = udiv i64 %i.acs, %2                    ; 3 uses
  %i.acx = ptrtoint ptr %.fr687 to i64            ; 2 uses
  %i.acy = or i64 %2, %i.acx
  %i.acz = and i64 %i.acy, 7
  %or.cond = icmp eq i64 %i.acz, 0                ; 3 uses
  %i.ada = select i1 %or.cond, i32 %i.c, i32 2    ; 2 uses
  %i.adb = icmp ult i64 %i.acw, 7
  br i1 %i.adb, label %.preheader472, label %bb.b

.loopexit:                                        ; preds = %bb.bp, %.critedge6, %.critedge6.us567, %.critedge6.us563, %.critedge6.us563.us, %.critedge6.us, %.critedge6.us.us, %.critedge, %.critedge.us594, %.critedge.us589, %.critedge.us589.us, %.critedge.us, %.critedge.us.us, %.preheader476, %.preheader472
  ret void
}

; Function Attrs: nounwind uwtable
define void @cli_qsort_r(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sub i64 0, %2                            ; 27 uses
  %i.b = icmp ne i64 %2, 8
  %i.c = zext i1 %i.b to i32                      ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = or i64 %2, %i.d
  %i.f = and i64 %i.e, 7
  %or.cond542 = icmp eq i64 %i.f, 0               ; 3 uses
  %i.g = select i1 %or.cond542, i32 %i.c, i32 2   ; 2 uses
  %i.h = icmp ult i64 %1, 7
  br i1 %i.h, label %.preheader481, label %.lr.ph547

.lr.ph547:                                        ; preds = %bb.a
  %.not396 = icmp eq ptr %3, null                 ; 7 uses
  %i.i = shl i64 %2, 32
  %i.j = ashr exact i64 %i.i, 32                  ; 50 uses
  %i.k = lshr i64 %i.j, 3                         ; 35 uses
  %i.l = and i64 %i.j, -8
  %.not = icmp eq i64 %i.k, 0
  %i.m = select i1 %.not, i64 8, i64 %i.l         ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.j, i64 1)
  %i.n = tail call i64 @llvm.smax.i64(i64 %i.j, i64 1) ; 40 uses
  %i.o = and i64 %i.j, -8                         ; 2 uses
  %.not1579 = icmp eq i64 %i.k, 0
  %i.p = select i1 %.not1579, i64 8, i64 %i.o     ; 2 uses
  %.not1580 = icmp eq i64 %i.k, 0
  %i.q = select i1 %.not1580, i64 8, i64 %i.o     ; 2 uses
  %i.r = and i64 %i.j, -8
  %.not1581 = icmp eq i64 %i.k, 0
  %i.s = select i1 %.not1581, i64 8, i64 %i.r     ; 2 uses
  %min.iters.check1176 = icmp slt i64 %i.j, 4
  %min.iters.check1182 = icmp slt i64 %i.j, 32
  %i.t = and i64 %i.n, 28
  %n.vec1184 = and i64 %i.n, 9223372036854775776  ; 6 uses
  %i.u = sub nsw i64 %i.j, %n.vec1184
  %cmp.n1195 = icmp eq i64 %i.n, %n.vec1184
  %min.epilog.iters.check1199 = icmp eq i64 %i.t, 0
  %n.vec1202 = and i64 %i.n, 9223372036854775804  ; 5 uses
  %i.v = sub nsw i64 %i.j, %n.vec1202
  %cmp.n1211 = icmp eq i64 %i.n, %n.vec1202
  %min.iters.check1149 = icmp ult i64 %i.j, 32
  %n.vec1155 = and i64 %i.k, 2305843009213693948  ; 3 uses
  %i.w = shl nuw i64 %n.vec1155, 3                ; 2 uses
  %i.x = and i64 %i.k, 3
  %cmp.n1166 = icmp eq i64 %i.k, %n.vec1155
  %min.iters.check1102 = icmp slt i64 %i.j, 4
  %min.iters.check1108 = icmp slt i64 %i.j, 32
  %i.y = and i64 %i.n, 28
  %n.vec1110 = and i64 %i.n, 9223372036854775776  ; 6 uses
  %i.z = sub nsw i64 %i.j, %n.vec1110
  %cmp.n1121 = icmp eq i64 %i.n, %n.vec1110
  %min.epilog.iters.check1125 = icmp eq i64 %i.y, 0
  %n.vec1128 = and i64 %i.n, 9223372036854775804  ; 5 uses
  %i.aa = sub nsw i64 %i.j, %n.vec1128
  %cmp.n1137 = icmp eq i64 %i.n, %n.vec1128
  %min.iters.check1075 = icmp ult i64 %i.j, 32
  %n.vec1081 = and i64 %i.k, 2305843009213693948  ; 3 uses
  %i.ab = shl nuw i64 %n.vec1081, 3               ; 2 uses
  %i.ac = and i64 %i.k, 3
  %cmp.n1092 = icmp eq i64 %i.k, %n.vec1081
  %min.iters.check1024 = icmp slt i64 %i.j, 4
  %min.iters.check1030 = icmp slt i64 %i.j, 32
  %i.ad = and i64 %i.n, 28
  %n.vec1032 = and i64 %i.n, 9223372036854775776  ; 6 uses
  %i.ae = sub nsw i64 %i.j, %n.vec1032
  %cmp.n1043 = icmp eq i64 %i.n, %n.vec1032
  %min.epilog.iters.check1047 = icmp eq i64 %i.ad, 0
  %n.vec1050 = and i64 %i.n, 9223372036854775804  ; 5 uses
  %i.af = sub nsw i64 %i.j, %n.vec1050
  %cmp.n1059 = icmp eq i64 %i.n, %n.vec1050
  %min.iters.check997 = icmp ult i64 %i.j, 32
  %n.vec1003 = and i64 %i.k, 2305843009213693948  ; 3 uses
  %i.ag = shl nuw i64 %n.vec1003, 3               ; 2 uses
  %i.ah = and i64 %i.k, 3
  %cmp.n1014 = icmp eq i64 %i.k, %n.vec1003
  %min.iters.check950 = icmp slt i64 %i.j, 4
  %min.iters.check956 = icmp slt i64 %i.j, 32
  %i.ai = and i64 %i.n, 28
  %n.vec958 = and i64 %i.n, 9223372036854775776   ; 6 uses
  %i.aj = sub nsw i64 %i.j, %n.vec958
  %cmp.n969 = icmp eq i64 %i.n, %n.vec958
  %min.epilog.iters.check973 = icmp eq i64 %i.ai, 0
  %n.vec976 = and i64 %i.n, 9223372036854775804   ; 5 uses
  %i.ak = sub nsw i64 %i.j, %n.vec976
  %cmp.n985 = icmp eq i64 %i.n, %n.vec976
  %min.iters.check923 = icmp ult i64 %i.j, 48
  %n.vec929 = and i64 %i.k, 2305843009213693948   ; 3 uses
  %i.al = shl nuw i64 %n.vec929, 3                ; 2 uses
  %i.am = and i64 %i.k, 3
  %cmp.n940 = icmp eq i64 %i.k, %n.vec929
  br label %bb.b

.preheader481:                                    ; preds = %bb.bq, %bb.a
  %.0345.lcssa = phi i64 [ %1, %bb.a ], [ %i.acw, %bb.bq ]
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.fr696, %bb.bq ] ; 22 uses
  %or.cond.lcssa = phi i1 [ %or.cond542, %bb.a ], [ %or.cond, %bb.bq ]
  %.lcssa = phi i32 [ %i.g, %bb.a ], [ %i.ada, %bb.bq ]
  %i.an = mul i64 %.0345.lcssa, %2                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %i.an ; 6 uses
  %.0358583 = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %2 ; 6 uses
  %i.ap = icmp samesign ult i64 %2, %i.an
  br i1 %i.ap, label %.preheader480.lr.ph, label %.loopexit

.preheader480.lr.ph:                              ; preds = %.preheader481
  %.not402 = icmp eq ptr %3, null                 ; 3 uses
  %i.aq = icmp eq i32 %.lcssa, 0
  %i.ar = shl i64 %2, 32
  %i.as = ashr exact i64 %i.ar, 32                ; 19 uses
  %i.at = lshr i64 %i.as, 3                       ; 11 uses
  br i1 %i.aq, label %.preheader480.lr.ph.split.us, label %.preheader480.lr.ph.split

.preheader480.lr.ph.split.us:                     ; preds = %.preheader480.lr.ph
  br i1 %.not402, label %.preheader480.us.us, label %.preheader480.us

.preheader480.us.us:                              ; preds = %.preheader480.lr.ph.split.us, %.critedge.us.us
  %.0358584.us.us = phi ptr [ %.0358.us.us, %.critedge.us.us ], [ %.0358583, %.preheader480.lr.ph.split.us ] ; 4 uses
  %i.au = icmp ugt ptr %.0358584.us.us, %.0.lcssa
  br i1 %i.au, label %.lr.ph578.us.us.preheader, label %.critedge.us.us

.lr.ph578.us.us.preheader:                        ; preds = %.preheader480.us.us
  %.pre658 = load i32, ptr %.0358584.us.us, align 4, !tbaa !8
  br label %.lr.ph578.us.us

.lr.ph578.us.us:                                  ; preds = %.lr.ph578.us.us.preheader, %swapfunc.exit.us.us.us.us
  %i.av = phi i32 [ %i.bd, %swapfunc.exit.us.us.us.us ], [ %.pre658, %.lr.ph578.us.us.preheader ]
  %.0362577.us.us.us.us = phi ptr [ %i.aw, %swapfunc.exit.us.us.us.us ], [ %.0358584.us.us, %.lr.ph578.us.us.preheader ] ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.0362577.us.us.us.us, i64 %i.a ; 5 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !8
  %i.ay = sub i32 %i.ax, %i.av
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %swapfunc.exit.us.us.us.us, label %.critedge.us.us

swapfunc.exit.us.us.us.us:                        ; preds = %.lr.ph578.us.us
  %i.ba = load i64, ptr %.0362577.us.us.us.us, align 8, !tbaa !10 ; 2 uses
end_hunk_0
begin_hunk_1_@cli_qsort_r:bb.a
  %next.gep1294 = getelementptr i8, ptr %i.wm, i64 %index1292 ; 3 uses
  %i.ww = getelementptr i8, ptr %next.gep1293, i64 16 ; 2 uses
  %wide.load1295 = load <16 x i8>, ptr %next.gep1293, align 1, !tbaa !13, !alias.scope !305, !noalias !306
  %wide.load1296 = load <16 x i8>, ptr %i.ww, align 1, !tbaa !13, !alias.scope !305, !noalias !306
  %i.wx = getelementptr i8, ptr %next.gep1294, i64 16 ; 2 uses
  %wide.load1297 = load <16 x i8>, ptr %next.gep1294, align 1, !tbaa !13, !alias.scope !306
  %wide.load1298 = load <16 x i8>, ptr %i.wx, align 1, !tbaa !13, !alias.scope !306
  store <16 x i8> %wide.load1297, ptr %next.gep1293, align 1, !tbaa !13, !alias.scope !305, !noalias !306
  store <16 x i8> %wide.load1298, ptr %i.ww, align 1, !tbaa !13, !alias.scope !305, !noalias !306
  store <16 x i8> %wide.load1295, ptr %next.gep1294, align 1, !tbaa !13, !alias.scope !306
  store <16 x i8> %wide.load1296, ptr %i.wx, align 1, !tbaa !13, !alias.scope !306
  %index.next1299 = add nuw i64 %index1292, 32    ; 2 uses
  %i.wy = icmp eq i64 %index.next1299, %n.vec1290
  br i1 %i.wy, label %middle.block1300, label %vector.body1291, !llvm.loop !246

middle.block1300:                                 ; preds = %vector.body1291
  br i1 %cmp.n1301, label %swapfunc.exit445.loopexit483.us.us, label %vec.epilog.iter.check1303

vec.epilog.iter.check1303:                        ; preds = %middle.block1300
  br i1 %min.epilog.iters.check1305, label %.preheader482.us.us.preheader, label %vec.epilog.ph1306, !prof !14

vec.epilog.ph1306:                                ; preds = %vector.main.loop.iter.check1287, %vec.epilog.iter.check1303
  %vec.epilog.resume.val1307 = phi i64 [ %n.vec1290, %vec.epilog.iter.check1303 ], [ 0, %vector.main.loop.iter.check1287 ]
  %i.wz = getelementptr i8, ptr %.2364552.us557.us, i64 %n.vec1308
  %i.xa = getelementptr i8, ptr %i.wm, i64 %n.vec1308
  br label %vec.epilog.vector.body1309

vec.epilog.vector.body1309:                       ; preds = %vec.epilog.vector.body1309, %vec.epilog.ph1306
  %index1310 = phi i64 [ %vec.epilog.resume.val1307, %vec.epilog.ph1306 ], [ %index.next1315, %vec.epilog.vector.body1309 ] ; 3 uses
  %next.gep1311 = getelementptr i8, ptr %.2364552.us557.us, i64 %index1310 ; 2 uses
  %next.gep1312 = getelementptr i8, ptr %i.wm, i64 %index1310 ; 2 uses
  %wide.load1313 = load <4 x i8>, ptr %next.gep1311, align 1, !tbaa !13, !alias.scope !305, !noalias !306
  %wide.load1314 = load <4 x i8>, ptr %next.gep1312, align 1, !tbaa !13, !alias.scope !306
  store <4 x i8> %wide.load1314, ptr %next.gep1311, align 1, !tbaa !13, !alias.scope !305, !noalias !306
  store <4 x i8> %wide.load1313, ptr %next.gep1312, align 1, !tbaa !13, !alias.scope !306
  %index.next1315 = add nuw i64 %index1310, 4     ; 2 uses
  %i.xb = icmp eq i64 %index.next1315, %n.vec1308
  br i1 %i.xb, label %vec.epilog.middle.block1316, label %vec.epilog.vector.body1309, !llvm.loop !247

vec.epilog.middle.block1316:                      ; preds = %vec.epilog.vector.body1309
  br i1 %cmp.n1317, label %swapfunc.exit445.loopexit483.us.us, label %.preheader482.us.us.preheader

.preheader482.us.us.preheader:                    ; preds = %iter.check1302, %vector.memcheck1283, %vec.epilog.iter.check1303, %vec.epilog.middle.block1316
  %.020.i439.us.us.ph = phi i64 [ %i.j, %iter.check1302 ], [ %i.j, %vector.memcheck1283 ], [ %i.wg, %vec.epilog.iter.check1303 ], [ %i.wh, %vec.epilog.middle.block1316 ]
  %.019.i440.us.us.ph = phi ptr [ %.2364552.us557.us, %iter.check1302 ], [ %.2364552.us557.us, %vector.memcheck1283 ], [ %i.wu, %vec.epilog.iter.check1303 ], [ %i.wz, %vec.epilog.middle.block1316 ]
  %.018.i441.us.us.ph = phi ptr [ %i.wm, %iter.check1302 ], [ %i.wm, %vector.memcheck1283 ], [ %i.wv, %vec.epilog.iter.check1303 ], [ %i.xa, %vec.epilog.middle.block1316 ]
  br label %.preheader482.us.us

.preheader482.us.us:                              ; preds = %.preheader482.us.us.preheader, %.preheader482.us.us
  %.020.i439.us.us = phi i64 [ %i.xg, %.preheader482.us.us ], [ %.020.i439.us.us.ph, %.preheader482.us.us.preheader ] ; 2 uses
  %.019.i440.us.us = phi ptr [ %i.xe, %.preheader482.us.us ], [ %.019.i440.us.us.ph, %.preheader482.us.us.preheader ] ; 3 uses
  %.018.i441.us.us = phi ptr [ %i.xf, %.preheader482.us.us ], [ %.018.i441.us.us.ph, %.preheader482.us.us.preheader ] ; 3 uses
  %i.xc = load i8, ptr %.019.i440.us.us, align 1, !tbaa !13
  %i.xd = load i8, ptr %.018.i441.us.us, align 1, !tbaa !13
  %i.xe = getelementptr inbounds nuw i8, ptr %.019.i440.us.us, i64 1
  store i8 %i.xd, ptr %.019.i440.us.us, align 1, !tbaa !13
  %i.xf = getelementptr inbounds nuw i8, ptr %.018.i441.us.us, i64 1
  store i8 %i.xc, ptr %.018.i441.us.us, align 1, !tbaa !13
  %i.xg = add nsw i64 %.020.i439.us.us, -1
  %i.xh = icmp sgt i64 %.020.i439.us.us, 1
  br i1 %i.xh, label %.preheader482.us.us, label %swapfunc.exit445.loopexit483.us.us, !llvm.loop !248

swapfunc.exit445.loopexit483.us.us:               ; preds = %.preheader482.us.us, %vec.epilog.middle.block1316, %middle.block1300
  %i.xi = icmp ugt ptr %i.wm, %.0544
  %indvar.next1280 = add i64 %indvar1279, 1
  br i1 %i.xi, label %.lr.ph553.us575, label %.critedge6.us576

.critedge6.us576:                                 ; preds = %swapfunc.exit445.loopexit483.us.us, %.lr.ph553.us575, %.preheader484.us573
  %i.xj = getelementptr inbounds nuw i8, ptr %.3361558.us574, i64 %2 ; 2 uses
  %i.xk = icmp ult ptr %i.xj, %i.sj
  %indvar.next1278 = add i64 %indvar1277, 1
  br i1 %i.xk, label %.preheader484.us573, label %.loopexit

.preheader484:                                    ; preds = %.preheader484.preheader, %.critedge6
  %indvar1224 = phi i64 [ %indvar.next1225, %.critedge6 ], [ 0, %.preheader484.preheader ] ; 2 uses
  %.3361558 = phi ptr [ %i.yk, %.critedge6 ], [ %i.nf, %.preheader484.preheader ] ; 3 uses
  %i.xl = mul i64 %2, %indvar1224                 ; 2 uses
  %i.xm = icmp ugt ptr %.3361558, %.0544
  br i1 %i.xm, label %.lr.ph553.preheader, label %.critedge6

.lr.ph553.preheader:                              ; preds = %.preheader484
  %i.xn = getelementptr i8, ptr %i.vy, i64 %i.xl
  %i.xo = getelementptr i8, ptr %i.vz, i64 %i.xl
  br label %.lr.ph553

.lr.ph553:                                        ; preds = %.lr.ph553.preheader, %swapfunc.exit445.loopexit483
  %indvar1226 = phi i64 [ %indvar.next1227, %swapfunc.exit445.loopexit483 ], [ 0, %.lr.ph553.preheader ] ; 2 uses
  %.2364552 = phi ptr [ %i.xp, %swapfunc.exit445.loopexit483 ], [ %.3361558, %.lr.ph553.preheader ] ; 9 uses
  %i.xp = getelementptr inbounds i8, ptr %.2364552, i64 %i.a ; 10 uses
  %i.xq = tail call i32 %3(ptr noundef %4, ptr noundef nonnull %i.xp, ptr noundef nonnull %.2364552) #2
  %i.xr = icmp sgt i32 %i.xq, 0
  br i1 %i.xr, label %iter.check1249, label %.critedge6

iter.check1249:                                   ; preds = %.lr.ph553
  br i1 %min.iters.check1229, label %.preheader482.preheader, label %vector.memcheck1230

vector.memcheck1230:                              ; preds = %iter.check1249
  %i.xs = mul i64 %indvar1226, %i.a               ; 2 uses
  %i.xt = getelementptr i8, ptr %i.xn, i64 %i.xs
  %i.xu = getelementptr i8, ptr %i.xo, i64 %i.xs
  %bound01231 = icmp ult ptr %.2364552, %i.xu
  %bound11232 = icmp ult ptr %i.xp, %i.xt
  %found.conflict1233 = and i1 %bound01231, %bound11232
  br i1 %found.conflict1233, label %.preheader482.preheader, label %vector.main.loop.iter.check1234

vector.main.loop.iter.check1234:                  ; preds = %vector.memcheck1230
  br i1 %min.iters.check1235, label %vec.epilog.ph1253, label %vector.ph1236

vector.ph1236:                                    ; preds = %vector.main.loop.iter.check1234
  %i.xv = getelementptr i8, ptr %.2364552, i64 %n.vec1237
  %i.xw = getelementptr i8, ptr %i.xp, i64 %n.vec1237
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.ph1236, %vector.body1238
  %index1239 = phi i64 [ 0, %vector.ph1236 ], [ %index.next1246, %vector.body1238 ] ; 3 uses
  %next.gep1240 = getelementptr i8, ptr %.2364552, i64 %index1239 ; 3 uses
  %next.gep1241 = getelementptr i8, ptr %i.xp, i64 %index1239 ; 3 uses
  %i.xx = getelementptr i8, ptr %next.gep1240, i64 16 ; 2 uses
  %wide.load1242 = load <16 x i8>, ptr %next.gep1240, align 1, !tbaa !13, !alias.scope !307, !noalias !308
  %wide.load1243 = load <16 x i8>, ptr %i.xx, align 1, !tbaa !13, !alias.scope !307, !noalias !308
  %i.xy = getelementptr i8, ptr %next.gep1241, i64 16 ; 2 uses
  %wide.load1244 = load <16 x i8>, ptr %next.gep1241, align 1, !tbaa !13, !alias.scope !308
  %wide.load1245 = load <16 x i8>, ptr %i.xy, align 1, !tbaa !13, !alias.scope !308
  store <16 x i8> %wide.load1244, ptr %next.gep1240, align 1, !tbaa !13, !alias.scope !307, !noalias !308
  store <16 x i8> %wide.load1245, ptr %i.xx, align 1, !tbaa !13, !alias.scope !307, !noalias !308
  store <16 x i8> %wide.load1242, ptr %next.gep1241, align 1, !tbaa !13, !alias.scope !308
  store <16 x i8> %wide.load1243, ptr %i.xy, align 1, !tbaa !13, !alias.scope !308
  %index.next1246 = add nuw i64 %index1239, 32    ; 2 uses
  %i.xz = icmp eq i64 %index.next1246, %n.vec1237
  br i1 %i.xz, label %middle.block1247, label %vector.body1238, !llvm.loop !252

middle.block1247:                                 ; preds = %vector.body1238
  br i1 %cmp.n1248, label %swapfunc.exit445.loopexit483, label %vec.epilog.iter.check1250

vec.epilog.iter.check1250:                        ; preds = %middle.block1247
  br i1 %min.epilog.iters.check1252, label %.preheader482.preheader, label %vec.epilog.ph1253, !prof !14

vec.epilog.ph1253:                                ; preds = %vector.main.loop.iter.check1234, %vec.epilog.iter.check1250
  %vec.epilog.resume.val1254 = phi i64 [ %n.vec1237, %vec.epilog.iter.check1250 ], [ 0, %vector.main.loop.iter.check1234 ]
  %i.ya = getelementptr i8, ptr %.2364552, i64 %n.vec1255
  %i.yb = getelementptr i8, ptr %i.xp, i64 %n.vec1255
  br label %vec.epilog.vector.body1256

vec.epilog.vector.body1256:                       ; preds = %vec.epilog.vector.body1256, %vec.epilog.ph1253
  %index1257 = phi i64 [ %vec.epilog.resume.val1254, %vec.epilog.ph1253 ], [ %index.next1262, %vec.epilog.vector.body1256 ] ; 3 uses
  %next.gep1258 = getelementptr i8, ptr %.2364552, i64 %index1257 ; 2 uses
  %next.gep1259 = getelementptr i8, ptr %i.xp, i64 %index1257 ; 2 uses
  %wide.load1260 = load <4 x i8>, ptr %next.gep1258, align 1, !tbaa !13, !alias.scope !307, !noalias !308
  %wide.load1261 = load <4 x i8>, ptr %next.gep1259, align 1, !tbaa !13, !alias.scope !308
  store <4 x i8> %wide.load1261, ptr %next.gep1258, align 1, !tbaa !13, !alias.scope !307, !noalias !308
  store <4 x i8> %wide.load1260, ptr %next.gep1259, align 1, !tbaa !13, !alias.scope !308
  %index.next1262 = add nuw i64 %index1257, 4     ; 2 uses
  %i.yc = icmp eq i64 %index.next1262, %n.vec1255
  br i1 %i.yc, label %vec.epilog.middle.block1263, label %vec.epilog.vector.body1256, !llvm.loop !253

vec.epilog.middle.block1263:                      ; preds = %vec.epilog.vector.body1256
  br i1 %cmp.n1264, label %swapfunc.exit445.loopexit483, label %.preheader482.preheader

.preheader482.preheader:                          ; preds = %iter.check1249, %vector.memcheck1230, %vec.epilog.iter.check1250, %vec.epilog.middle.block1263
  %.020.i439.ph = phi i64 [ %i.j, %iter.check1249 ], [ %i.j, %vector.memcheck1230 ], [ %i.wb, %vec.epilog.iter.check1250 ], [ %i.wc, %vec.epilog.middle.block1263 ]
  %.019.i440.ph = phi ptr [ %.2364552, %iter.check1249 ], [ %.2364552, %vector.memcheck1230 ], [ %i.xv, %vec.epilog.iter.check1250 ], [ %i.ya, %vec.epilog.middle.block1263 ]
  %.018.i441.ph = phi ptr [ %i.xp, %iter.check1249 ], [ %i.xp, %vector.memcheck1230 ], [ %i.xw, %vec.epilog.iter.check1250 ], [ %i.yb, %vec.epilog.middle.block1263 ]
  br label %.preheader482

.preheader482:                                    ; preds = %.preheader482.preheader, %.preheader482
  %.020.i439 = phi i64 [ %i.yh, %.preheader482 ], [ %.020.i439.ph, %.preheader482.preheader ] ; 2 uses
  %.019.i440 = phi ptr [ %i.yf, %.preheader482 ], [ %.019.i440.ph, %.preheader482.preheader ] ; 3 uses
  %.018.i441 = phi ptr [ %i.yg, %.preheader482 ], [ %.018.i441.ph, %.preheader482.preheader ] ; 3 uses
  %i.yd = load i8, ptr %.019.i440, align 1, !tbaa !13
  %i.ye = load i8, ptr %.018.i441, align 1, !tbaa !13
  %i.yf = getelementptr inbounds nuw i8, ptr %.019.i440, i64 1
  store i8 %i.ye, ptr %.019.i440, align 1, !tbaa !13
  %i.yg = getelementptr inbounds nuw i8, ptr %.018.i441, i64 1
  store i8 %i.yd, ptr %.018.i441, align 1, !tbaa !13
  %i.yh = add nsw i64 %.020.i439, -1
  %i.yi = icmp sgt i64 %.020.i439, 1
  br i1 %i.yi, label %.preheader482, label %swapfunc.exit445.loopexit483, !llvm.loop !254

swapfunc.exit445.loopexit483:                     ; preds = %.preheader482, %vec.epilog.middle.block1263, %middle.block1247
  %i.yj = icmp ugt ptr %i.xp, %.0544
  %indvar.next1227 = add i64 %indvar1226, 1
  br i1 %i.yj, label %.lr.ph553, label %.critedge6

.critedge6:                                       ; preds = %swapfunc.exit445.loopexit483, %.lr.ph553, %.preheader484
  %i.yk = getelementptr inbounds nuw i8, ptr %.3361558, i64 %2 ; 2 uses
  %i.yl = icmp ult ptr %i.yk, %i.sj
  %indvar.next1225 = add i64 %indvar1224, 1
  br i1 %i.yl, label %.preheader484, label %.loopexit

bb.bj:                                            ; preds = %.critedge2._crit_edge
  %i.ym = ptrtoint ptr %.1.lcssa to i64           ; 2 uses
  %i.yn = sub i64 %i.ym, %i.gr
  %i.yo = ptrtoint ptr %.1348.lcssa to i64
  %i.yp = sub i64 %i.yo, %i.ym                    ; 2 uses
  %.406 = tail call i64 @llvm.smin.i64(i64 %i.yn, i64 %i.yp) ; 3 uses
  %i.yq = trunc i64 %.406 to i32
  %i.yr = icmp sgt i32 %i.yq, 0
  br i1 %i.yr, label %bb.bk, label %swapfunc.exit452

bb.bk:                                            ; preds = %bb.bj
  %i.ys = and i64 %.406, 2147483647               ; 14 uses
  %i.yt = sub nsw i64 0, %i.ys
  %i.yu = getelementptr i8, ptr %.1348.lcssa, i64 %i.yt ; 12 uses
  br i1 %or.cond545, label %bb.bl, label %iter.check896

iter.check896:                                    ; preds = %bb.bk
  %i.yv = tail call i64 @llvm.umax.i64(i64 %i.ys, i64 1) ; 3 uses
  %min.iters.check876 = icmp samesign ult i64 %i.ys, 4
  br i1 %min.iters.check876, label %.preheader495.preheader, label %vector.memcheck877

vector.memcheck877:                               ; preds = %iter.check896
  %i.yw = getelementptr i8, ptr %.0544, i64 %i.ys
  %bound0878 = icmp ult ptr %.0544, %.1348.lcssa
  %bound1879 = icmp ult ptr %i.yu, %i.yw
  %found.conflict880 = and i1 %bound0878, %bound1879
  br i1 %found.conflict880, label %.preheader495.preheader, label %vector.main.loop.iter.check881

vector.main.loop.iter.check881:                   ; preds = %vector.memcheck877
  %min.iters.check882 = icmp samesign ult i64 %i.ys, 32
  br i1 %min.iters.check882, label %vec.epilog.ph900, label %vector.ph883

vector.ph883:                                     ; preds = %vector.main.loop.iter.check881
  %i.yx = and i64 %i.yv, 28
  %n.vec884 = and i64 %i.yv, 2147483616           ; 6 uses
  %i.yy = sub nsw i64 %i.ys, %n.vec884
  %i.yz = getelementptr i8, ptr %.0544, i64 %n.vec884
  %i.za = getelementptr i8, ptr %i.yu, i64 %n.vec884
  br label %vector.body885

vector.body885:                                   ; preds = %vector.ph883, %vector.body885
  %index886 = phi i64 [ 0, %vector.ph883 ], [ %index.next893, %vector.body885 ] ; 3 uses
  %next.gep887 = getelementptr i8, ptr %.0544, i64 %index886 ; 3 uses
  %next.gep888 = getelementptr i8, ptr %i.yu, i64 %index886 ; 3 uses
  %i.zb = getelementptr i8, ptr %next.gep887, i64 16 ; 2 uses
  %wide.load889 = load <16 x i8>, ptr %next.gep887, align 1, !tbaa !13, !alias.scope !309, !noalias !310
  %wide.load890 = load <16 x i8>, ptr %i.zb, align 1, !tbaa !13, !alias.scope !309, !noalias !310
  %i.zc = getelementptr i8, ptr %next.gep888, i64 16 ; 2 uses
  %wide.load891 = load <16 x i8>, ptr %next.gep888, align 1, !tbaa !13, !alias.scope !310
  %wide.load892 = load <16 x i8>, ptr %i.zc, align 1, !tbaa !13, !alias.scope !310
  store <16 x i8> %wide.load891, ptr %next.gep887, align 1, !tbaa !13, !alias.scope !309, !noalias !310
  store <16 x i8> %wide.load892, ptr %i.zb, align 1, !tbaa !13, !alias.scope !309, !noalias !310
  store <16 x i8> %wide.load889, ptr %next.gep888, align 1, !tbaa !13, !alias.scope !310
  store <16 x i8> %wide.load890, ptr %i.zc, align 1, !tbaa !13, !alias.scope !310
  %index.next893 = add nuw i64 %index886, 32      ; 2 uses
  %i.zd = icmp eq i64 %index.next893, %n.vec884
  br i1 %i.zd, label %middle.block894, label %vector.body885, !llvm.loop !258

middle.block894:                                  ; preds = %vector.body885
  %cmp.n895 = icmp eq i64 %i.ys, %n.vec884
  br i1 %cmp.n895, label %swapfunc.exit452, label %vec.epilog.iter.check897

vec.epilog.iter.check897:                         ; preds = %middle.block894
  %min.epilog.iters.check899 = icmp eq i64 %i.yx, 0
  br i1 %min.epilog.iters.check899, label %.preheader495.preheader, label %vec.epilog.ph900, !prof !14

vec.epilog.ph900:                                 ; preds = %vector.main.loop.iter.check881, %vec.epilog.iter.check897
  %vec.epilog.resume.val901 = phi i64 [ %n.vec884, %vec.epilog.iter.check897 ], [ 0, %vector.main.loop.iter.check881 ]
  %n.vec902 = and i64 %i.yv, 2147483644           ; 5 uses
  %i.ze = sub nsw i64 %i.ys, %n.vec902
  %i.zf = getelementptr i8, ptr %.0544, i64 %n.vec902
  %i.zg = getelementptr i8, ptr %i.yu, i64 %n.vec902
  br label %vec.epilog.vector.body903

vec.epilog.vector.body903:                        ; preds = %vec.epilog.vector.body903, %vec.epilog.ph900
  %index904 = phi i64 [ %vec.epilog.resume.val901, %vec.epilog.ph900 ], [ %index.next909, %vec.epilog.vector.body903 ] ; 3 uses
  %next.gep905 = getelementptr i8, ptr %.0544, i64 %index904 ; 2 uses
  %next.gep906 = getelementptr i8, ptr %i.yu, i64 %index904 ; 2 uses
  %wide.load907 = load <4 x i8>, ptr %next.gep905, align 1, !tbaa !13, !alias.scope !309, !noalias !310
  %wide.load908 = load <4 x i8>, ptr %next.gep906, align 1, !tbaa !13, !alias.scope !310
  store <4 x i8> %wide.load908, ptr %next.gep905, align 1, !tbaa !13, !alias.scope !309, !noalias !310
  store <4 x i8> %wide.load907, ptr %next.gep906, align 1, !tbaa !13, !alias.scope !310
  %index.next909 = add nuw i64 %index904, 4       ; 2 uses
  %i.zh = icmp eq i64 %index.next909, %n.vec902
  br i1 %i.zh, label %vec.epilog.middle.block910, label %vec.epilog.vector.body903, !llvm.loop !259

vec.epilog.middle.block910:                       ; preds = %vec.epilog.vector.body903
  %cmp.n911 = icmp eq i64 %i.ys, %n.vec902
  br i1 %cmp.n911, label %swapfunc.exit452, label %.preheader495.preheader

.preheader495.preheader:                          ; preds = %iter.check896, %vector.memcheck877, %vec.epilog.iter.check897, %vec.epilog.middle.block910
  %.020.i446.ph = phi i64 [ %i.ys, %iter.check896 ], [ %i.ys, %vector.memcheck877 ], [ %i.yy, %vec.epilog.iter.check897 ], [ %i.ze, %vec.epilog.middle.block910 ]
  %.019.i447.ph = phi ptr [ %.0544, %iter.check896 ], [ %.0544, %vector.memcheck877 ], [ %i.yz, %vec.epilog.iter.check897 ], [ %i.zf, %vec.epilog.middle.block910 ]
  %.018.i448.ph = phi ptr [ %i.yu, %iter.check896 ], [ %i.yu, %vector.memcheck877 ], [ %i.za, %vec.epilog.iter.check897 ], [ %i.zg, %vec.epilog.middle.block910 ]
  br label %.preheader495

bb.bl:                                            ; preds = %bb.bk
  %i.zi = lshr i64 %i.ys, 3                       ; 6 uses
  %min.iters.check845 = icmp samesign ult i64 %i.ys, 64
  br i1 %min.iters.check845, label %scalar.ph844.preheader, label %vector.memcheck846

vector.memcheck846:                               ; preds = %bb.bl
  %.not1582 = icmp eq i64 %i.zi, 0
  %i.zj = and i64 %.406, 2147483640
  %i.zk = select i1 %.not1582, i64 0, i64 8       ; 2 uses
  %i.zl = add nuw nsw i64 %i.zj, 8                ; 2 uses
  %i.zm = sub nuw nsw i64 %i.zl, %i.zk
  %i.zn = getelementptr i8, ptr %.0544, i64 %i.zm
  %i.zo = add nuw nsw i64 %i.ys, %i.zk
  %i.zp = sub nsw i64 %i.zl, %i.zo
  %i.zq = getelementptr i8, ptr %.1348.lcssa, i64 %i.zp
  %bound0847 = icmp ult ptr %.0544, %i.zq
  %bound1848 = icmp ult ptr %i.yu, %i.zn
  %found.conflict849 = and i1 %bound0847, %bound1848
  br i1 %found.conflict849, label %scalar.ph844.preheader, label %vector.ph850

vector.ph850:                                     ; preds = %vector.memcheck846
  %n.vec851 = and i64 %i.zi, 268435452            ; 3 uses
  %i.zr = shl nuw nsw i64 %n.vec851, 3            ; 2 uses
  %i.zs = getelementptr i8, ptr %i.yu, i64 %i.zr
  %i.zt = getelementptr i8, ptr %.0544, i64 %i.zr
  %5 = and i64 %i.zi, 3
  br label %vector.body852

vector.body852:                                   ; preds = %vector.body852, %vector.ph850
  %index853 = phi i64 [ 0, %vector.ph850 ], [ %index.next860, %vector.body852 ] ; 2 uses
  %i.zu = shl i64 %index853, 3                    ; 2 uses
  %next.gep854 = getelementptr i8, ptr %i.yu, i64 %i.zu ; 3 uses
  %next.gep855 = getelementptr i8, ptr %.0544, i64 %i.zu ; 3 uses
  %i.zv = getelementptr i8, ptr %next.gep855, i64 16 ; 2 uses
  %wide.load856 = load <2 x i64>, ptr %next.gep855, align 8, !tbaa !10, !alias.scope !311, !noalias !312
  %wide.load857 = load <2 x i64>, ptr %i.zv, align 8, !tbaa !10, !alias.scope !311, !noalias !312
  %i.zw = getelementptr i8, ptr %next.gep854, i64 16 ; 2 uses
  %wide.load858 = load <2 x i64>, ptr %next.gep854, align 8, !tbaa !10, !alias.scope !312
  %wide.load859 = load <2 x i64>, ptr %i.zw, align 8, !tbaa !10, !alias.scope !312
  store <2 x i64> %wide.load858, ptr %next.gep855, align 8, !tbaa !10, !alias.scope !311, !noalias !312
  store <2 x i64> %wide.load859, ptr %i.zv, align 8, !tbaa !10, !alias.scope !311, !noalias !312
  store <2 x i64> %wide.load856, ptr %next.gep854, align 8, !tbaa !10, !alias.scope !312
  store <2 x i64> %wide.load857, ptr %i.zw, align 8, !tbaa !10, !alias.scope !312
  %index.next860 = add nuw i64 %index853, 4       ; 2 uses
  %i.zx = icmp eq i64 %index.next860, %n.vec851
  br i1 %i.zx, label %middle.block861, label %vector.body852, !llvm.loop !263

middle.block861:                                  ; preds = %vector.body852
  %cmp.n862 = icmp eq i64 %i.zi, %n.vec851
  br i1 %cmp.n862, label %swapfunc.exit452, label %scalar.ph844.preheader

scalar.ph844.preheader:                           ; preds = %vector.memcheck846, %bb.bl, %middle.block861
  %.022.i449.ph = phi ptr [ %i.yu, %vector.memcheck846 ], [ %i.yu, %bb.bl ], [ %i.zs, %middle.block861 ]
  %.021.i450.ph = phi ptr [ %.0544, %vector.memcheck846 ], [ %.0544, %bb.bl ], [ %i.zt, %middle.block861 ]
  %.0.i451.ph = phi i64 [ %i.zi, %vector.memcheck846 ], [ %i.zi, %bb.bl ], [ %5, %middle.block861 ]
  br label %scalar.ph844

scalar.ph844:                                     ; preds = %scalar.ph844.preheader, %scalar.ph844
  %.022.i449 = phi ptr [ %i.aab, %scalar.ph844 ], [ %.022.i449.ph, %scalar.ph844.preheader ] ; 3 uses
  %.021.i450 = phi ptr [ %i.aaa, %scalar.ph844 ], [ %.021.i450.ph, %scalar.ph844.preheader ] ; 3 uses
  %.0.i451 = phi i64 [ %i.aac, %scalar.ph844 ], [ %.0.i451.ph, %scalar.ph844.preheader ] ; 2 uses
  %i.zy = load i64, ptr %.021.i450, align 8, !tbaa !10
  %i.zz = load i64, ptr %.022.i449, align 8, !tbaa !10
  %i.aaa = getelementptr inbounds nuw i8, ptr %.021.i450, i64 8
  store i64 %i.zz, ptr %.021.i450, align 8, !tbaa !10
  %i.aab = getelementptr inbounds nuw i8, ptr %.022.i449, i64 8
  store i64 %i.zy, ptr %.022.i449, align 8, !tbaa !10
  %i.aac = add nsw i64 %.0.i451, -1
  %i.aad = icmp samesign ugt i64 %.0.i451, 1
  br i1 %i.aad, label %scalar.ph844, label %swapfunc.exit452, !llvm.loop !264

.preheader495:                                    ; preds = %.preheader495.preheader, %.preheader495
  %.020.i446 = phi i64 [ %i.aai, %.preheader495 ], [ %.020.i446.ph, %.preheader495.preheader ] ; 2 uses
  %.019.i447 = phi ptr [ %i.aag, %.preheader495 ], [ %.019.i447.ph, %.preheader495.preheader ] ; 3 uses
  %.018.i448 = phi ptr [ %i.aah, %.preheader495 ], [ %.018.i448.ph, %.preheader495.preheader ] ; 3 uses
  %i.aae = load i8, ptr %.019.i447, align 1, !tbaa !13
  %i.aaf = load i8, ptr %.018.i448, align 1, !tbaa !13
  %i.aag = getelementptr inbounds nuw i8, ptr %.019.i447, i64 1
  store i8 %i.aaf, ptr %.019.i447, align 1, !tbaa !13
  %i.aah = getelementptr inbounds nuw i8, ptr %.018.i448, i64 1
  store i8 %i.aae, ptr %.018.i448, align 1, !tbaa !13
  %i.aai = add nsw i64 %.020.i446, -1
  %i.aaj = icmp samesign ugt i64 %.020.i446, 1
  br i1 %i.aaj, label %.preheader495, label %swapfunc.exit452, !llvm.loop !265

swapfunc.exit452:                                 ; preds = %.preheader495, %scalar.ph844, %middle.block894, %vec.epilog.middle.block910, %middle.block861, %bb.bj
  %i.aak = ptrtoint ptr %.1352.lcssa to i64       ; 2 uses
  %i.aal = ptrtoint ptr %.1350.lcssa to i64
  %i.aam = sub i64 %i.aak, %i.aal                 ; 2 uses
  %i.aan = ptrtoint ptr %i.sj to i64
  %i.aao = add i64 %2, %i.aak
  %i.aap = sub i64 %i.aan, %i.aao
  %.407 = tail call i64 @llvm.umin.i64(i64 %i.aam, i64 %i.aap) ; 3 uses
  %i.aaq = trunc i64 %.407 to i32
  %i.aar = icmp sgt i32 %i.aaq, 0
  br i1 %i.aar, label %bb.bm, label %swapfunc.exit459

bb.bm:                                            ; preds = %swapfunc.exit452
  %i.aas = and i64 %.407, 2147483647              ; 14 uses
  %i.aat = sub nsw i64 0, %i.aas
  %i.aau = getelementptr i8, ptr %i.sj, i64 %i.aat ; 12 uses
  br i1 %or.cond545, label %bb.bn, label %iter.check

iter.check:                                       ; preds = %bb.bm
  %i.aav = tail call i64 @llvm.umax.i64(i64 %i.aas, i64 1) ; 3 uses
  %min.iters.check806 = icmp samesign ult i64 %i.aas, 4
  br i1 %min.iters.check806, label %.preheader493.preheader, label %vector.memcheck807

vector.memcheck807:                               ; preds = %iter.check
  %i.aaw = getelementptr i8, ptr %.1348.lcssa, i64 %i.aas
  %i.aax = getelementptr i8, ptr %.0544, i64 %i.si
  %bound0808 = icmp ult ptr %.1348.lcssa, %i.aax
  %bound1809 = icmp ult ptr %i.aau, %i.aaw
  %found.conflict810 = and i1 %bound0808, %bound1809
  br i1 %found.conflict810, label %.preheader493.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck807
  %min.iters.check811 = icmp samesign ult i64 %i.aas, 32
  br i1 %min.iters.check811, label %vec.epilog.ph, label %vector.ph812

vector.ph812:                                     ; preds = %vector.main.loop.iter.check
  %i.aay = and i64 %i.aav, 28
  %n.vec813 = and i64 %i.aav, 2147483616          ; 6 uses
  %i.aaz = sub nsw i64 %i.aas, %n.vec813
  %i.aba = getelementptr i8, ptr %.1348.lcssa, i64 %n.vec813
  %i.abb = getelementptr i8, ptr %i.aau, i64 %n.vec813
  br label %vector.body814

vector.body814:                                   ; preds = %vector.ph812, %vector.body814
  %index815 = phi i64 [ 0, %vector.ph812 ], [ %index.next822, %vector.body814 ] ; 3 uses
  %next.gep816 = getelementptr i8, ptr %.1348.lcssa, i64 %index815 ; 3 uses
  %next.gep817 = getelementptr i8, ptr %i.aau, i64 %index815 ; 3 uses
  %i.abc = getelementptr i8, ptr %next.gep816, i64 16 ; 2 uses
  %wide.load818 = load <16 x i8>, ptr %next.gep816, align 1, !tbaa !13, !alias.scope !313, !noalias !314
  %wide.load819 = load <16 x i8>, ptr %i.abc, align 1, !tbaa !13, !alias.scope !313, !noalias !314
  %i.abd = getelementptr i8, ptr %next.gep817, i64 16 ; 2 uses
  %wide.load820 = load <16 x i8>, ptr %next.gep817, align 1, !tbaa !13, !alias.scope !314
  %wide.load821 = load <16 x i8>, ptr %i.abd, align 1, !tbaa !13, !alias.scope !314
  store <16 x i8> %wide.load820, ptr %next.gep816, align 1, !tbaa !13, !alias.scope !313, !noalias !314
  store <16 x i8> %wide.load821, ptr %i.abc, align 1, !tbaa !13, !alias.scope !313, !noalias !314
  store <16 x i8> %wide.load818, ptr %next.gep817, align 1, !tbaa !13, !alias.scope !314
  store <16 x i8> %wide.load819, ptr %i.abd, align 1, !tbaa !13, !alias.scope !314
  %index.next822 = add nuw i64 %index815, 32      ; 2 uses
  %i.abe = icmp eq i64 %index.next822, %n.vec813
  br i1 %i.abe, label %middle.block823, label %vector.body814, !llvm.loop !269

middle.block823:                                  ; preds = %vector.body814
  %cmp.n824 = icmp eq i64 %i.aas, %n.vec813
  br i1 %cmp.n824, label %swapfunc.exit459, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block823
  %min.epilog.iters.check = icmp eq i64 %i.aay, 0
  br i1 %min.epilog.iters.check, label %.preheader493.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec813, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec825 = and i64 %i.aav, 2147483644          ; 5 uses
  %i.abf = sub nsw i64 %i.aas, %n.vec825
  %i.abg = getelementptr i8, ptr %.1348.lcssa, i64 %n.vec825
  %i.abh = getelementptr i8, ptr %i.aau, i64 %n.vec825
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index826 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next831, %vec.epilog.vector.body ] ; 3 uses
  %next.gep827 = getelementptr i8, ptr %.1348.lcssa, i64 %index826 ; 2 uses
  %next.gep828 = getelementptr i8, ptr %i.aau, i64 %index826 ; 2 uses
  %wide.load829 = load <4 x i8>, ptr %next.gep827, align 1, !tbaa !13, !alias.scope !313, !noalias !314
  %wide.load830 = load <4 x i8>, ptr %next.gep828, align 1, !tbaa !13, !alias.scope !314
  store <4 x i8> %wide.load830, ptr %next.gep827, align 1, !tbaa !13, !alias.scope !313, !noalias !314
  store <4 x i8> %wide.load829, ptr %next.gep828, align 1, !tbaa !13, !alias.scope !314
  %index.next831 = add nuw i64 %index826, 4       ; 2 uses
  %i.abi = icmp eq i64 %index.next831, %n.vec825
  br i1 %i.abi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !270

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n832 = icmp eq i64 %i.aas, %n.vec825
  br i1 %cmp.n832, label %swapfunc.exit459, label %.preheader493.preheader

.preheader493.preheader:                          ; preds = %iter.check, %vector.memcheck807, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.020.i453.ph = phi i64 [ %i.aas, %iter.check ], [ %i.aas, %vector.memcheck807 ], [ %i.aaz, %vec.epilog.iter.check ], [ %i.abf, %vec.epilog.middle.block ]
  %.019.i454.ph = phi ptr [ %.1348.lcssa, %iter.check ], [ %.1348.lcssa, %vector.memcheck807 ], [ %i.aba, %vec.epilog.iter.check ], [ %i.abg, %vec.epilog.middle.block ]
  %.018.i455.ph = phi ptr [ %i.aau, %iter.check ], [ %i.aau, %vector.memcheck807 ], [ %i.abb, %vec.epilog.iter.check ], [ %i.abh, %vec.epilog.middle.block ]
  br label %.preheader493

bb.bn:                                            ; preds = %bb.bm
  %i.abj = lshr i64 %i.aas, 3                     ; 6 uses
  %min.iters.check = icmp samesign ult i64 %i.aas, 80
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.bn
  %.not1583 = icmp eq i64 %i.abj, 0
  %i.abk = and i64 %.407, 2147483640              ; 2 uses
  %i.abl = select i1 %.not1583, i64 0, i64 8      ; 2 uses
  %i.abm = add nuw nsw i64 %i.abk, 8
  %i.abn = sub nuw nsw i64 %i.abm, %i.abl
  %i.abo = getelementptr i8, ptr %.1348.lcssa, i64 %i.abn
  %i.abp = add i64 %i.si, %i.abk
  %i.abq = add i64 %i.abp, 8
  %i.abr = add nuw nsw i64 %i.aas, %i.abl
  %i.abs = sub i64 %i.abq, %i.abr
  %i.abt = getelementptr i8, ptr %.0544, i64 %i.abs
  %bound0 = icmp ult ptr %.1348.lcssa, %i.abt
  %bound1 = icmp ult ptr %i.aau, %i.abo
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.abj, 268435452              ; 3 uses
  %i.abu = shl nuw nsw i64 %n.vec, 3              ; 2 uses
  %i.abv = getelementptr i8, ptr %i.aau, i64 %i.abu
  %i.abw = getelementptr i8, ptr %.1348.lcssa, i64 %i.abu
  %6 = and i64 %i.abj, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.abx = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aau, i64 %i.abx ; 3 uses
  %next.gep792 = getelementptr i8, ptr %.1348.lcssa, i64 %i.abx ; 3 uses
  %i.aby = getelementptr i8, ptr %next.gep792, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep792, align 8, !tbaa !10, !alias.scope !315, !noalias !316
  %wide.load793 = load <2 x i64>, ptr %i.aby, align 8, !tbaa !10, !alias.scope !315, !noalias !316
  %i.abz = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load794 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !10, !alias.scope !316
  %wide.load795 = load <2 x i64>, ptr %i.abz, align 8, !tbaa !10, !alias.scope !316
  store <2 x i64> %wide.load794, ptr %next.gep792, align 8, !tbaa !10, !alias.scope !315, !noalias !316
  store <2 x i64> %wide.load795, ptr %i.aby, align 8, !tbaa !10, !alias.scope !315, !noalias !316
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !10, !alias.scope !316
  store <2 x i64> %wide.load793, ptr %i.abz, align 8, !tbaa !10, !alias.scope !316
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aca = icmp eq i64 %index.next, %n.vec
  br i1 %i.aca, label %middle.block, label %vector.body, !llvm.loop !274

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abj, %n.vec
  br i1 %cmp.n, label %swapfunc.exit459, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.bn, %middle.block
  %.022.i456.ph = phi ptr [ %i.aau, %vector.memcheck ], [ %i.aau, %bb.bn ], [ %i.abv, %middle.block ]
  %.021.i457.ph = phi ptr [ %.1348.lcssa, %vector.memcheck ], [ %.1348.lcssa, %bb.bn ], [ %i.abw, %middle.block ]
  %.0.i458.ph = phi i64 [ %i.abj, %vector.memcheck ], [ %i.abj, %bb.bn ], [ %6, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.022.i456 = phi ptr [ %i.ace, %scalar.ph ], [ %.022.i456.ph, %scalar.ph.preheader ] ; 3 uses
  %.021.i457 = phi ptr [ %i.acd, %scalar.ph ], [ %.021.i457.ph, %scalar.ph.preheader ] ; 3 uses
  %.0.i458 = phi i64 [ %i.acf, %scalar.ph ], [ %.0.i458.ph, %scalar.ph.preheader ] ; 2 uses
  %i.acb = load i64, ptr %.021.i457, align 8, !tbaa !10
  %i.acc = load i64, ptr %.022.i456, align 8, !tbaa !10
  %i.acd = getelementptr inbounds nuw i8, ptr %.021.i457, i64 8
  store i64 %i.acc, ptr %.021.i457, align 8, !tbaa !10
  %i.ace = getelementptr inbounds nuw i8, ptr %.022.i456, i64 8
  store i64 %i.acb, ptr %.022.i456, align 8, !tbaa !10
  %i.acf = add nsw i64 %.0.i458, -1
  %i.acg = icmp samesign ugt i64 %.0.i458, 1
  br i1 %i.acg, label %scalar.ph, label %swapfunc.exit459, !llvm.loop !275

.preheader493:                                    ; preds = %.preheader493.preheader, %.preheader493
  %.020.i453 = phi i64 [ %i.acl, %.preheader493 ], [ %.020.i453.ph, %.preheader493.preheader ] ; 2 uses
  %.019.i454 = phi ptr [ %i.acj, %.preheader493 ], [ %.019.i454.ph, %.preheader493.preheader ] ; 3 uses
  %.018.i455 = phi ptr [ %i.ack, %.preheader493 ], [ %.018.i455.ph, %.preheader493.preheader ] ; 3 uses
  %i.ach = load i8, ptr %.019.i454, align 1, !tbaa !13
  %i.aci = load i8, ptr %.018.i455, align 1, !tbaa !13
  %i.acj = getelementptr inbounds nuw i8, ptr %.019.i454, i64 1
  store i8 %i.aci, ptr %.019.i454, align 1, !tbaa !13
  %i.ack = getelementptr inbounds nuw i8, ptr %.018.i455, i64 1
  store i8 %i.ach, ptr %.018.i455, align 1, !tbaa !13
  %i.acl = add nsw i64 %.020.i453, -1
  %i.acm = icmp samesign ugt i64 %.020.i453, 1
  br i1 %i.acm, label %.preheader493, label %swapfunc.exit459, !llvm.loop !276

swapfunc.exit459:                                 ; preds = %.preheader493, %scalar.ph, %middle.block823, %vec.epilog.middle.block, %middle.block, %swapfunc.exit452
  %i.acn = shl i64 %i.yp, 32
  %i.aco = ashr exact i64 %i.acn, 32              ; 2 uses
  %i.acp = icmp ugt i64 %i.aco, %2
  br i1 %i.acp, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %swapfunc.exit459
  %i.acq = udiv i64 %i.aco, %2
  tail call void @cli_qsort_r(ptr noundef %.0544, i64 noundef %i.acq, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %swapfunc.exit459
  %i.acr = shl i64 %i.aam, 32
  %i.acs = ashr exact i64 %i.acr, 32              ; 3 uses
  %i.act = icmp ugt i64 %i.acs, %2
  br i1 %i.act, label %bb.bq, label %.loopexit

bb.bq:                                            ; preds = %bb.bp
  %i.acu = sub nsw i64 0, %i.acs
  %i.acv = getelementptr inbounds i8, ptr %i.sj, i64 %i.acu
  %.fr696 = freeze ptr %i.acv                     ; 3 uses
  %i.acw = udiv i64 %i.acs, %2                    ; 3 uses
  %i.acx = ptrtoint ptr %.fr696 to i64            ; 2 uses
  %i.acy = or i64 %2, %i.acx
  %i.acz = and i64 %i.acy, 7
  %or.cond = icmp eq i64 %i.acz, 0                ; 3 uses
  %i.ada = select i1 %or.cond, i32 %i.c, i32 2    ; 2 uses
  %i.adb = icmp ult i64 %i.acw, 7
  br i1 %i.adb, label %.preheader481, label %bb.b

.loopexit:                                        ; preds = %bb.bp, %.critedge6, %.critedge6.us576, %.critedge6.us572, %.critedge6.us572.us, %.critedge6.us, %.critedge6.us.us, %.critedge, %.critedge.us603, %.critedge.us598, %.critedge.us598.us, %.critedge.us, %.critedge.us.us, %.preheader485, %.preheader481
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!4, !4, i64 0}
!14 = !{!"branch_weights", i32 4, i32 28}
!15 = distinct !{!15, i1 false, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, i1 false, !"LVerDomain"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, i1 false, !"LVerDomain"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !11, !12}
!29 = distinct !{!29, !11, !12}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, i1 false, !"LVerDomain"}
!32 = distinct !{!32, !31}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !11, !12}
!35 = distinct !{!35, !11, !12}
!36 = distinct !{!36, !11}
!37 = distinct !{null}
!38 = distinct !{!38, i1 false, !"LVerDomain"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !11, !12}
!42 = distinct !{!42, !11, !12}
!43 = distinct !{!43, i1 false, !"LVerDomain"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !11, !12}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, i1 false, !"LVerDomain"}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = distinct !{!52, !11, !12}
!53 = distinct !{!53, !11, !12}
!54 = distinct !{!54, i1 false, !"LVerDomain"}
!55 = distinct !{!55, !54}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !11, !12}
!58 = distinct !{!58, !11}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, i1 false, !"LVerDomain"}
!61 = distinct !{!61, !60}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !11, !12}
!64 = distinct !{!64, !11, !12}
!65 = distinct !{!65, i1 false, !"LVerDomain"}
!66 = distinct !{!66, !65}
!67 = distinct !{!67, !65}
!68 = distinct !{!68, !11, !12}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !11}
!71 = distinct !{!71, i1 false, !"LVerDomain"}
!72 = distinct !{!72, !71}
!73 = distinct !{!73, !71}
!74 = distinct !{!74, !11, !12}
!75 = distinct !{!75, !11, !12}
!76 = distinct !{!76, i1 false, !"LVerDomain"}
!77 = distinct !{!77, !76}
!78 = distinct !{!78, !76}
!79 = distinct !{!79, !11, !12}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, i1 false, !"LVerDomain"}
!83 = distinct !{!83, !82}
!84 = distinct !{!84, !82}
!85 = distinct !{!85, !11, !12}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, i1 false, !"LVerDomain"}
!88 = distinct !{!88, !87}
!89 = distinct !{!89, !87}
!90 = distinct !{!90, !11, !12}
!91 = distinct !{!91, !11}
!92 = distinct !{!92, i1 false, !"LVerDomain"}
!93 = distinct !{!93, !92}
!94 = distinct !{!94, !92}
!95 = distinct !{!95, !11, !12}
!96 = distinct !{!96, !11, !12}
!97 = distinct !{!97, !11}
!98 = distinct !{!98, i1 false, !"LVerDomain"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !11, !12}
!102 = distinct !{!102, !11, !12}
!103 = distinct !{!103, !11}
!104 = distinct !{!104, i1 false, !"LVerDomain"}
!105 = distinct !{!105, !104}
!106 = distinct !{!106, !104}
!107 = distinct !{!107, !11, !12}
!108 = distinct !{!108, !11, !12}
!109 = distinct !{!109, i1 false, !"LVerDomain"}
!110 = distinct !{!110, !109}
!111 = distinct !{!111, !109}
!112 = distinct !{!112, !11, !12}
!113 = distinct !{!113, !11}
!114 = distinct !{!114, !11}
!115 = distinct !{!115, i1 false, !"LVerDomain"}
end_hunk_1
