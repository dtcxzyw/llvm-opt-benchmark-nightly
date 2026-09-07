Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/thinplate?download=true
inline.NumInlined: 11
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 26
begin_hunk_0_@thinplate_match:bb.a

vec.epilog.iter.check1357:                        ; preds = %middle.block1351
  %min.epilog.iters.check1358 = icmp eq i64 %i.ajx, 0
  br i1 %min.epilog.iters.check1358, label %.lr.ph812.i.i.preheader, label %vec.epilog.ph1359, !prof !121

vec.epilog.ph1359:                                ; preds = %vector.main.loop.iter.check1338, %vec.epilog.iter.check1357
  %vec.epilog.resume.val1353 = phi i64 [ %n.vec1341, %vec.epilog.iter.check1357 ], [ 0, %vector.main.loop.iter.check1338 ]
  %n.vec1360 = and i64 %i.px, -4                  ; 3 uses
  %i.akj = add i64 %indvars.iv942.i.i, %n.vec1360
  %broadcast.splatinsert1361 = insertelement <4 x double> poison, double %.lcssa783, i64 0
  %broadcast.splat1362 = shufflevector <4 x double> %broadcast.splatinsert1361, <4 x double> poison, <4 x i32> zeroinitializer
  %i.akk = getelementptr [8 x i8], ptr %invariant.gep1177.i.i, i64 %indvars.iv942.i.i
  br label %vec.epilog.vector.body1363

vec.epilog.vector.body1363:                       ; preds = %vec.epilog.vector.body1363, %vec.epilog.ph1359
  %index1364 = phi i64 [ %vec.epilog.resume.val1353, %vec.epilog.ph1359 ], [ %index.next1366, %vec.epilog.vector.body1363 ] ; 2 uses
  %i.akl = getelementptr [8 x i8], ptr %i.akk, i64 %index1364 ; 2 uses
  %wide.load1365 = load <4 x double>, ptr %i.akl, align 8, !tbaa !117
  %i.akm = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1365, %broadcast.splat1362
  store <4 x double> %i.akm, ptr %i.akl, align 8, !tbaa !117
  %index.next1366 = add nuw i64 %index1364, 4     ; 2 uses
  %i.akn = icmp eq i64 %index.next1366, %n.vec1360
  br i1 %i.akn, label %vec.epilog.middle.block1367, label %vec.epilog.vector.body1363, !llvm.loop !65

vec.epilog.middle.block1367:                      ; preds = %vec.epilog.vector.body1363
  %cmp.n1368 = icmp eq i64 %i.px, %n.vec1360
  br i1 %cmp.n1368, label %.loopexit753.i.loopexit.i, label %.lr.ph812.i.i.preheader

.lr.ph812.i.i.preheader:                          ; preds = %iter.check1355, %vec.epilog.iter.check1357, %vec.epilog.middle.block1367
  %indvars.iv984.i.i.ph = phi i64 [ %indvars.iv942.i.i, %iter.check1355 ], [ %i.ajy, %vec.epilog.iter.check1357 ], [ %i.akj, %vec.epilog.middle.block1367 ]
  br label %.lr.ph812.i.i

.lr.ph807.i.i:                                    ; preds = %.lr.ph807.i.i.preheader, %.lr.ph807.i.i
  %indvars.iv974.i.i = phi i64 [ %indvars.iv.next975.i.i, %.lr.ph807.i.i ], [ %indvars.iv974.i.i.ph, %.lr.ph807.i.i.preheader ] ; 3 uses
  %i.ako = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %indvars.iv974.i.i
  %i.akp = load double, ptr %i.ako, align 8, !tbaa !117
  %i.akq = fmul reassoc nsz arcp contract afn double %i.akp, %.lcssa785
  %gep1188.i.i = getelementptr [8 x i8], ptr %invariant.gep1183.i.i, i64 %indvars.iv974.i.i ; 2 uses
  %i.akr = load double, ptr %gep1188.i.i, align 8, !tbaa !117
  %i.aks = fadd reassoc nsz arcp contract afn double %i.akr, %i.akq
  store double %i.aks, ptr %gep1188.i.i, align 8, !tbaa !117
  %indvars.iv.next975.i.i = add nuw nsw i64 %indvars.iv974.i.i, 1 ; 2 uses
  %exitcond978.not.i.i = icmp eq i64 %indvars.iv.next975.i.i, %wide.trip.count990.i.i
  br i1 %exitcond978.not.i.i, label %._crit_edge808.i.i, label %.lr.ph807.i.i, !llvm.loop !66

.lr.ph812.i.i:                                    ; preds = %.lr.ph812.i.i.preheader, %.lr.ph812.i.i
  %indvars.iv984.i.i = phi i64 [ %indvars.iv.next985.i.i, %.lr.ph812.i.i ], [ %indvars.iv984.i.i.ph, %.lr.ph812.i.i.preheader ] ; 2 uses
  %gep1190.i.i = getelementptr [8 x i8], ptr %invariant.gep1177.i.i, i64 %indvars.iv984.i.i ; 2 uses
  %i.akt = load double, ptr %gep1190.i.i, align 8, !tbaa !117
  %i.aku = fmul reassoc nsz arcp contract afn double %i.akt, %.lcssa783
  store double %i.aku, ptr %gep1190.i.i, align 8, !tbaa !117
  %indvars.iv.next985.i.i = add nuw nsw i64 %indvars.iv984.i.i, 1 ; 2 uses
  %exitcond988.not.i.i = icmp eq i64 %indvars.iv.next985.i.i, %wide.trip.count990.i.i
  br i1 %exitcond988.not.i.i, label %.loopexit753.i.loopexit.i, label %.lr.ph812.i.i, !llvm.loop !67

.loopexit753.i.loopexit.i:                        ; preds = %.lr.ph812.i.i, %vec.epilog.middle.block1367, %middle.block1351
  %.pre147.i = load double, ptr %i.pz, align 8, !tbaa !117
  br label %.loopexit753.i.i

.loopexit753.i.i:                                 ; preds = %.loopexit753.i.loopexit.i, %._crit_edge791.i.i, %.loopexit758.i.i
  %i.akv = phi double [ %i.py, %.loopexit758.i.i ], [ %i.py, %._crit_edge791.i.i ], [ %.pre147.i, %.loopexit753.i.loopexit.i ]
  %.2670.i.i = phi nsz double [ 0.000000e+00, %.loopexit758.i.i ], [ 0.000000e+00, %._crit_edge791.i.i ], [ %i.aga, %.loopexit753.i.loopexit.i ] ; 2 uses
  %.4.i.i = phi nsz double [ 0.000000e+00, %.loopexit758.i.i ], [ %.lcssa783, %._crit_edge791.i.i ], [ %.lcssa783, %.loopexit753.i.loopexit.i ]
  %i.akw = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.adg)
  %i.akx = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.akv)
  %i.aky = fadd reassoc nsz arcp contract afn double %i.akx, %i.akw ; 2 uses
  %i.akz = fcmp reassoc nsz arcp contract afn ogt double %.0672813.i.i, %i.aky
  %.0672..i.i = select reassoc nsz arcp contract afn i1 %i.akz, double %.0672813.i.i, double %i.aky ; 11 uses
  %indvars.iv.next943.i.i = add nuw nsw i64 %indvars.iv942.i.i, 1
  %exitcond991.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count990.i.i
  br i1 %exitcond991.not.i.i, label %._crit_edge818.i.i, label %iter.check1784

._crit_edge818.i.i:                               ; preds = %.loopexit753.i.i, %.loopexit745.i.i
  %indvar1197 = phi i32 [ %indvar.next1198, %.loopexit745.i.i ], [ 0, %.loopexit753.i.i ] ; 3 uses
  %indvars.iv1017.in.i.i = phi i64 [ %indvars.iv1017.i.i, %.loopexit745.i.i ], [ %i.oa, %.loopexit753.i.i ] ; 6 uses
  %.3671835.i.i = phi double [ %i.apg, %.loopexit745.i.i ], [ %.2670.i.i, %.loopexit753.i.i ] ; 2 uses
  %i.ala = sub i32 %i.kq, %indvar1197
  %i.alb = sext i32 %i.ala to i64
  %i.alc = sub i64 %smin1196, %i.alb
  %i.ald = sub i32 %i.kq, %indvar1197
  %i.ale = sext i32 %i.ald to i64
  %i.alf = sub nsw i64 %i.oj, %i.ale              ; 18 uses
  %indvars116.i = trunc i64 %indvars.iv1017.in.i.i to i32 ; 3 uses
  %indvars.iv1017.i.i = add nsw i64 %indvars.iv1017.in.i.i, -1 ; 6 uses
  %indvars.i = trunc i64 %indvars.iv1017.i.i to i32 ; 2 uses
  %.not.i.i = icmp sgt i64 %indvars.iv1017.in.i.i, %i.od
  br i1 %.not.i.i, label %.loopexit745.i.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge818.i.i
  %i.alg = fcmp reassoc nsz arcp contract afn une double %.3671835.i.i, 0.000000e+00
  %i.alh = icmp sge i32 %i.ny, %indvars116.i      ; 2 uses
  %or.cond1231.i.i = and i1 %i.alh, %i.alg
  br i1 %or.cond1231.i.i, label %.lr.ph823.i.i, label %.loopexit747.i.i

.lr.ph823.i.i:                                    ; preds = %bb.r
  %i.ali = mul nsw i64 %indvars.iv1017.i.i, %i.ih
  %sext.i = shl i64 %indvars.iv1017.in.i.i, 32
  %i.alj = ashr exact i64 %sext.i, 32             ; 15 uses
  %i.alk = getelementptr [8 x i8], ptr %i.in, i64 %i.ali ; 6 uses
  %i.all = getelementptr [8 x i8], ptr %i.alk, i64 %i.alj
  %invariant.gep1193.i.i = getelementptr [8 x i8], ptr %i.il, i64 %indvars.iv1017.i.i ; 7 uses
  %i.alm = load double, ptr %i.all, align 8, !tbaa !117
  %i.aln = fmul reassoc nsz arcp contract afn double %i.alm, %.3671835.i.i ; 2 uses
  %min.iters.check1314 = icmp ult i64 %i.alf, 4
  br i1 %min.iters.check1314, label %scalar.ph1313.preheader, label %vector.ph1315

vector.ph1315:                                    ; preds = %.lr.ph823.i.i
  %n.vec1316 = and i64 %i.alf, -4                 ; 3 uses
  %i.alo = add nsw i64 %i.alj, %n.vec1316
  %broadcast.splatinsert1317 = insertelement <4 x double> poison, double %i.aln, i64 0
  %broadcast.splat1318 = shufflevector <4 x double> %broadcast.splatinsert1317, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1321 = insertelement <4 x i64> poison, i64 %i.alj, i64 0
  %broadcast.splat1322 = shufflevector <4 x i64> %broadcast.splatinsert1321, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1323 = add nuw nsw <4 x i64> %broadcast.splat1322, <i64 0, i64 1, i64 2, i64 3>
  %i.alp = getelementptr [8 x i8], ptr %i.alk, i64 %i.alj
  %i.alq = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat1318
  br label %vector.body1324

vector.body1324:                                  ; preds = %vector.body1324, %vector.ph1315
  %index1325 = phi i64 [ 0, %vector.ph1315 ], [ %index.next1329, %vector.body1324 ] ; 2 uses
  %vec.ind1326 = phi <4 x i64> [ %induction1323, %vector.ph1315 ], [ %vec.ind.next1330, %vector.body1324 ] ; 2 uses
  %i.alr = getelementptr [8 x i8], ptr %i.alp, i64 %index1325
  %wide.load1327 = load <4 x double>, ptr %i.alr, align 8, !tbaa !117
  %i.als = fmul reassoc nsz arcp contract afn <4 x double> %wide.load1327, %i.alq
  %i.alt = mul nsw <4 x i64> %vec.ind1326, %broadcast.splat1320
  %wide.gep1328 = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, <4 x i64> %i.alt
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.als, <4 x ptr> align 8 %wide.gep1328, <4 x i1> splat (i1 true)), !tbaa !117
  %index.next1329 = add nuw i64 %index1325, 4     ; 2 uses
  %vec.ind.next1330 = add nuw nsw <4 x i64> %vec.ind1326, splat (i64 4)
  %i.alu = icmp eq i64 %index.next1329, %n.vec1316
  br i1 %i.alu, label %middle.block1331, label %vector.body1324, !llvm.loop !68

middle.block1331:                                 ; preds = %vector.body1324
  %cmp.n1332 = icmp eq i64 %i.alf, %n.vec1316
  br i1 %cmp.n1332, label %iter.check1289.preheader, label %scalar.ph1313.preheader

scalar.ph1313.preheader:                          ; preds = %.lr.ph823.i.i, %middle.block1331
  %indvars.iv992.i.i.ph = phi i64 [ %i.alj, %.lr.ph823.i.i ], [ %i.alo, %middle.block1331 ]
  %i.alv = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aln
  br label %scalar.ph1313

scalar.ph1313:                                    ; preds = %scalar.ph1313.preheader, %scalar.ph1313
  %indvars.iv992.i.i = phi i64 [ %indvars.iv.next993.i.i, %scalar.ph1313 ], [ %indvars.iv992.i.i.ph, %scalar.ph1313.preheader ] ; 3 uses
  %gep1192.i.i = getelementptr [8 x i8], ptr %i.alk, i64 %indvars.iv992.i.i
  %i.alw = load double, ptr %gep1192.i.i, align 8, !tbaa !117
  %i.alx = fmul reassoc nsz arcp contract afn double %i.alw, %i.alv
  %i.aly = mul nsw i64 %indvars.iv992.i.i, %i.oa
  %gep1194.i.i = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.aly
  store double %i.alx, ptr %gep1194.i.i, align 8, !tbaa !117
  %indvars.iv.next993.i.i = add nuw nsw i64 %indvars.iv992.i.i, 1 ; 2 uses
  %exitcond996.not.i.i = icmp eq i64 %indvars.iv.next993.i.i, %i.oa
  br i1 %exitcond996.not.i.i, label %iter.check1289.preheader, label %scalar.ph1313, !llvm.loop !69

iter.check1289.preheader:                         ; preds = %scalar.ph1313, %middle.block1331
  %min.iters.check1247 = icmp ult i64 %i.alf, 4
  %min.iters.check1249 = icmp ult i64 %i.alf, 16
  %i.alz = and i64 %i.alf, 12
  %n.vec1251 = and i64 %i.alf, -16                ; 4 uses
  %i.ama = add nsw i64 %i.alj, %n.vec1251         ; 2 uses
  %broadcast.splatinsert1254 = insertelement <4 x i64> poison, i64 %i.alj, i64 0
  %broadcast.splat1255 = shufflevector <4 x i64> %broadcast.splatinsert1254, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1256 = add nuw nsw <4 x i64> %broadcast.splat1255, <i64 0, i64 1, i64 2, i64 3>
  %i.amb = getelementptr [8 x i8], ptr %i.alk, i64 %i.alj
  %cmp.n1285 = icmp eq i64 %i.alf, %n.vec1251
  %min.epilog.iters.check1292 = icmp eq i64 %i.alz, 0
  %n.vec1294 = and i64 %i.alf, -4                 ; 3 uses
  %i.amc = add nsw i64 %i.alj, %n.vec1294
  %i.amd = getelementptr [8 x i8], ptr %i.alk, i64 %i.alj
  %cmp.n1310 = icmp eq i64 %i.alf, %n.vec1294
  %xtraiter2077 = and i64 %i.alf, 3               ; 2 uses
  %lcmp.mod2078.not = icmp eq i64 %xtraiter2077, 0
  %i.ame = icmp ult i64 %i.alc, 3
  br label %iter.check1289

iter.check1289:                                   ; preds = %iter.check1289.preheader, %._crit_edge830.i.i
  %indvars.iv1007.i.i = phi i64 [ %indvars.iv.next1008.i.i, %._crit_edge830.i.i ], [ %i.alj, %iter.check1289.preheader ] ; 2 uses
  %invariant.gep1197.i.i = getelementptr [8 x i8], ptr %i.il, i64 %indvars.iv1007.i.i ; 11 uses
  br i1 %min.iters.check1247, label %vec.epilog.scalar.ph1290.preheader, label %vector.main.loop.iter.check1248

vector.main.loop.iter.check1248:                  ; preds = %iter.check1289
  br i1 %min.iters.check1249, label %vec.epilog.ph1293, label %vector.body1257

vector.body1257:                                  ; preds = %vector.main.loop.iter.check1248, %vector.body1257
  %index1258 = phi i64 [ %index.next1279, %vector.body1257 ], [ 0, %vector.main.loop.iter.check1248 ] ; 2 uses
  %vec.ind1259 = phi <4 x i64> [ %vec.ind.next1280, %vector.body1257 ], [ %induction1256, %vector.main.loop.iter.check1248 ] ; 5 uses
  %vec.phi1260 = phi <4 x double> [ %i.amr, %vector.body1257 ], [ zeroinitializer, %vector.main.loop.iter.check1248 ]
  %vec.phi1261 = phi <4 x double> [ %i.ams, %vector.body1257 ], [ zeroinitializer, %vector.main.loop.iter.check1248 ]
  %vec.phi1262 = phi <4 x double> [ %i.amt, %vector.body1257 ], [ zeroinitializer, %vector.main.loop.iter.check1248 ]
  %vec.phi1263 = phi <4 x double> [ %i.amu, %vector.body1257 ], [ zeroinitializer, %vector.main.loop.iter.check1248 ]
  %step.add1264 = add nuw nsw <4 x i64> %vec.ind1259, splat (i64 4)
  %step.add.21265 = add nuw nsw <4 x i64> %vec.ind1259, splat (i64 8)
  %step.add.31266 = add nuw nsw <4 x i64> %vec.ind1259, splat (i64 12)
  %i.amf = getelementptr [8 x i8], ptr %i.amb, i64 %index1258 ; 4 uses
  %i.amg = getelementptr i8, ptr %i.amf, i64 32
  %i.amh = getelementptr i8, ptr %i.amf, i64 64
  %i.ami = getelementptr i8, ptr %i.amf, i64 96
  %wide.load1267 = load <4 x double>, ptr %i.amf, align 8, !tbaa !117
  %wide.load1268 = load <4 x double>, ptr %i.amg, align 8, !tbaa !117
  %wide.load1269 = load <4 x double>, ptr %i.amh, align 8, !tbaa !117
  %wide.load1270 = load <4 x double>, ptr %i.ami, align 8, !tbaa !117
  %i.amj = mul nuw nsw <4 x i64> %vec.ind1259, %broadcast.splat1253
  %i.amk = mul nuw nsw <4 x i64> %step.add1264, %broadcast.splat1253
  %i.aml = mul nuw nsw <4 x i64> %step.add.21265, %broadcast.splat1253
  %i.amm = mul nuw nsw <4 x i64> %step.add.31266, %broadcast.splat1253
  %wide.gep1271 = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, <4 x i64> %i.amj
  %wide.gep1272 = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, <4 x i64> %i.amk
  %wide.gep1273 = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, <4 x i64> %i.aml
  %wide.gep1274 = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, <4 x i64> %i.amm
  %wide.masked.gather1275 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1271, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather1276 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1272, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather1277 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1273, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %wide.masked.gather1278 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1274, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %i.amn = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1275, %wide.load1267
  %i.amo = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1276, %wide.load1268
  %i.amp = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1277, %wide.load1269
  %i.amq = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1278, %wide.load1270
  %i.amr = fadd reassoc nsz arcp contract afn <4 x double> %i.amn, %vec.phi1260 ; 2 uses
  %i.ams = fadd reassoc nsz arcp contract afn <4 x double> %i.amo, %vec.phi1261 ; 2 uses
  %i.amt = fadd reassoc nsz arcp contract afn <4 x double> %i.amp, %vec.phi1262 ; 2 uses
  %i.amu = fadd reassoc nsz arcp contract afn <4 x double> %i.amq, %vec.phi1263 ; 2 uses
  %index.next1279 = add nuw i64 %index1258, 16    ; 2 uses
  %vec.ind.next1280 = add nuw nsw <4 x i64> %vec.ind1259, splat (i64 16)
  %i.amv = icmp eq i64 %index.next1279, %n.vec1251
  br i1 %i.amv, label %middle.block1281, label %vector.body1257, !llvm.loop !70

middle.block1281:                                 ; preds = %vector.body1257
  %bin.rdx1282 = fadd reassoc nsz arcp contract afn <4 x double> %i.ams, %i.amr
  %bin.rdx1283 = fadd reassoc nsz arcp contract afn <4 x double> %i.amt, %bin.rdx1282
  %bin.rdx1284 = fadd reassoc nsz arcp contract afn <4 x double> %i.amu, %bin.rdx1283
  %i.amw = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx1284) ; 3 uses
  br i1 %cmp.n1285, label %.lr.ph829.i.i.preheader, label %vec.epilog.iter.check1291

vec.epilog.iter.check1291:                        ; preds = %middle.block1281
  br i1 %min.epilog.iters.check1292, label %vec.epilog.scalar.ph1290.preheader, label %vec.epilog.ph1293, !prof !121

vec.epilog.ph1293:                                ; preds = %vector.main.loop.iter.check1248, %vec.epilog.iter.check1291
  %vec.epilog.resume.val1286 = phi i64 [ %n.vec1251, %vec.epilog.iter.check1291 ], [ 0, %vector.main.loop.iter.check1248 ]
  %bc.resume.val1287 = phi i64 [ %i.ama, %vec.epilog.iter.check1291 ], [ %i.alj, %vector.main.loop.iter.check1248 ]
  %bc.merge.rdx1288 = phi double [ %i.amw, %vec.epilog.iter.check1291 ], [ 0.000000e+00, %vector.main.loop.iter.check1248 ]
  %i.amx = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx1288, i64 0
  %broadcast.splatinsert1297 = insertelement <4 x i64> poison, i64 %bc.resume.val1287, i64 0
  %broadcast.splat1298 = shufflevector <4 x i64> %broadcast.splatinsert1297, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1299 = add nuw nsw <4 x i64> %broadcast.splat1298, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1300

vec.epilog.vector.body1300:                       ; preds = %vec.epilog.vector.body1300, %vec.epilog.ph1293
  %index1301 = phi i64 [ %vec.epilog.resume.val1286, %vec.epilog.ph1293 ], [ %index.next1307, %vec.epilog.vector.body1300 ] ; 2 uses
  %vec.ind1302 = phi <4 x i64> [ %induction1299, %vec.epilog.ph1293 ], [ %vec.ind.next1308, %vec.epilog.vector.body1300 ] ; 2 uses
  %vec.phi1303 = phi <4 x double> [ %i.amx, %vec.epilog.ph1293 ], [ %i.anb, %vec.epilog.vector.body1300 ]
  %i.amy = getelementptr [8 x i8], ptr %i.amd, i64 %index1301
  %wide.load1304 = load <4 x double>, ptr %i.amy, align 8, !tbaa !117
  %i.amz = mul nuw nsw <4 x i64> %vec.ind1302, %broadcast.splat1296
  %wide.gep1305 = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, <4 x i64> %i.amz
  %wide.masked.gather1306 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1305, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !117
  %i.ana = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather1306, %wide.load1304
  %i.anb = fadd reassoc nsz arcp contract afn <4 x double> %i.ana, %vec.phi1303 ; 2 uses
  %index.next1307 = add nuw i64 %index1301, 4     ; 2 uses
  %vec.ind.next1308 = add nuw nsw <4 x i64> %vec.ind1302, splat (i64 4)
  %i.anc = icmp eq i64 %index.next1307, %n.vec1294
  br i1 %i.anc, label %vec.epilog.middle.block1309, label %vec.epilog.vector.body1300, !llvm.loop !71

vec.epilog.middle.block1309:                      ; preds = %vec.epilog.vector.body1300
  %i.and = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.anb) ; 2 uses
  br i1 %cmp.n1310, label %.lr.ph829.i.i.preheader, label %vec.epilog.scalar.ph1290.preheader

vec.epilog.scalar.ph1290.preheader:               ; preds = %iter.check1289, %vec.epilog.iter.check1291, %vec.epilog.middle.block1309
  %indvars.iv997.i.i.ph = phi i64 [ %i.alj, %iter.check1289 ], [ %i.ama, %vec.epilog.iter.check1291 ], [ %i.amc, %vec.epilog.middle.block1309 ]
  %.4678824.i.i.ph = phi double [ 0.000000e+00, %iter.check1289 ], [ %i.amw, %vec.epilog.iter.check1291 ], [ %i.and, %vec.epilog.middle.block1309 ]
  br label %vec.epilog.scalar.ph1290

vec.epilog.scalar.ph1290:                         ; preds = %vec.epilog.scalar.ph1290.preheader, %vec.epilog.scalar.ph1290
  %indvars.iv997.i.i = phi i64 [ %indvars.iv.next998.i.i, %vec.epilog.scalar.ph1290 ], [ %indvars.iv997.i.i.ph, %vec.epilog.scalar.ph1290.preheader ] ; 3 uses
  %.4678824.i.i = phi double [ %i.ani, %vec.epilog.scalar.ph1290 ], [ %.4678824.i.i.ph, %vec.epilog.scalar.ph1290.preheader ]
  %gep1196.i.i = getelementptr [8 x i8], ptr %i.alk, i64 %indvars.iv997.i.i
  %i.ane = load double, ptr %gep1196.i.i, align 8, !tbaa !117
  %i.anf = mul nuw nsw i64 %indvars.iv997.i.i, %i.oa
  %gep1198.i.i = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.anf
  %i.ang = load double, ptr %gep1198.i.i, align 8, !tbaa !117
  %i.anh = fmul reassoc nsz arcp contract afn double %i.ang, %i.ane
  %i.ani = fadd reassoc nsz arcp contract afn double %i.anh, %.4678824.i.i ; 2 uses
  %indvars.iv.next998.i.i = add nuw nsw i64 %indvars.iv997.i.i, 1 ; 2 uses
  %exitcond1001.not.i.i = icmp eq i64 %indvars.iv.next998.i.i, %i.oa
  br i1 %exitcond1001.not.i.i, label %.lr.ph829.i.i.preheader, label %vec.epilog.scalar.ph1290, !llvm.loop !72

.lr.ph829.i.i.preheader:                          ; preds = %vec.epilog.scalar.ph1290, %vec.epilog.middle.block1309, %middle.block1281
  %.lcssa786 = phi double [ %i.and, %vec.epilog.middle.block1309 ], [ %i.amw, %middle.block1281 ], [ %i.ani, %vec.epilog.scalar.ph1290 ] ; 5 uses
  br i1 %lcmp.mod2078.not, label %.lr.ph829.i.i.prol.loopexit, label %.lr.ph829.i.i.prol

.lr.ph829.i.i.prol:                               ; preds = %.lr.ph829.i.i.preheader, %.lr.ph829.i.i.prol
  %indvars.iv1002.i.i.prol = phi i64 [ %indvars.iv.next1003.i.i.prol, %.lr.ph829.i.i.prol ], [ %i.alj, %.lr.ph829.i.i.preheader ] ; 2 uses
  %prol.iter2079 = phi i64 [ %prol.iter2079.next, %.lr.ph829.i.i.prol ], [ 0, %.lr.ph829.i.i.preheader ]
  %i.anj = mul nuw nsw i64 %indvars.iv1002.i.i.prol, %i.oa ; 2 uses
  %gep1200.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.anj
  %i.ank = load double, ptr %gep1200.i.i.prol, align 8, !tbaa !117
  %i.anl = fmul reassoc nsz arcp contract afn double %i.ank, %.lcssa786
  %gep1202.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.anj ; 2 uses
  %i.anm = load double, ptr %gep1202.i.i.prol, align 8, !tbaa !117
  %i.ann = fadd reassoc nsz arcp contract afn double %i.anm, %i.anl
  store double %i.ann, ptr %gep1202.i.i.prol, align 8, !tbaa !117
  %indvars.iv.next1003.i.i.prol = add nuw nsw i64 %indvars.iv1002.i.i.prol, 1 ; 2 uses
  %prol.iter2079.next = add i64 %prol.iter2079, 1 ; 2 uses
  %prol.iter2079.cmp.not = icmp eq i64 %prol.iter2079.next, %xtraiter2077
  br i1 %prol.iter2079.cmp.not, label %.lr.ph829.i.i.prol.loopexit, label %.lr.ph829.i.i.prol, !llvm.loop !73

.lr.ph829.i.i.prol.loopexit:                      ; preds = %.lr.ph829.i.i.prol, %.lr.ph829.i.i.preheader
  %indvars.iv1002.i.i.unr = phi i64 [ %i.alj, %.lr.ph829.i.i.preheader ], [ %indvars.iv.next1003.i.i.prol, %.lr.ph829.i.i.prol ]
  br i1 %i.ame, label %._crit_edge830.i.i, label %.lr.ph829.i.i

._crit_edge830.i.i:                               ; preds = %.lr.ph829.i.i, %.lr.ph829.i.i.prol.loopexit
  %indvars.iv.next1008.i.i = add nuw nsw i64 %indvars.iv1007.i.i, 1 ; 2 uses
  %exitcond1011.not.i.i = icmp eq i64 %indvars.iv.next1008.i.i, %i.oa
  br i1 %exitcond1011.not.i.i, label %.loopexit747.i.i, label %iter.check1289

.lr.ph829.i.i:                                    ; preds = %.lr.ph829.i.i.prol.loopexit, %.lr.ph829.i.i
  %indvars.iv1002.i.i = phi i64 [ %indvars.iv.next1003.i.i.3, %.lr.ph829.i.i ], [ %indvars.iv1002.i.i.unr, %.lr.ph829.i.i.prol.loopexit ] ; 5 uses
  %i.ano = mul nuw nsw i64 %indvars.iv1002.i.i, %i.oa ; 2 uses
  %gep1200.i.i = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.ano
  %i.anp = load double, ptr %gep1200.i.i, align 8, !tbaa !117
  %i.anq = fmul reassoc nsz arcp contract afn double %i.anp, %.lcssa786
  %gep1202.i.i = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.ano ; 2 uses
  %i.anr = load double, ptr %gep1202.i.i, align 8, !tbaa !117
  %i.ans = fadd reassoc nsz arcp contract afn double %i.anr, %i.anq
  store double %i.ans, ptr %gep1202.i.i, align 8, !tbaa !117
  %indvars.iv.next1003.i.i = add nuw nsw i64 %indvars.iv1002.i.i, 1
  %i.ant = mul nuw nsw i64 %indvars.iv.next1003.i.i, %i.oa ; 2 uses
  %gep1200.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.ant
  %i.anu = load double, ptr %gep1200.i.i.1, align 8, !tbaa !117
  %i.anv = fmul reassoc nsz arcp contract afn double %i.anu, %.lcssa786
  %gep1202.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.ant ; 2 uses
  %i.anw = load double, ptr %gep1202.i.i.1, align 8, !tbaa !117
  %i.anx = fadd reassoc nsz arcp contract afn double %i.anw, %i.anv
  store double %i.anx, ptr %gep1202.i.i.1, align 8, !tbaa !117
  %indvars.iv.next1003.i.i.1 = add nuw nsw i64 %indvars.iv1002.i.i, 2
  %i.any = mul nuw nsw i64 %indvars.iv.next1003.i.i.1, %i.oa ; 2 uses
  %gep1200.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.any
  %i.anz = load double, ptr %gep1200.i.i.2, align 8, !tbaa !117
  %i.aoa = fmul reassoc nsz arcp contract afn double %i.anz, %.lcssa786
  %gep1202.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.any ; 2 uses
  %i.aob = load double, ptr %gep1202.i.i.2, align 8, !tbaa !117
  %i.aoc = fadd reassoc nsz arcp contract afn double %i.aob, %i.aoa
  store double %i.aoc, ptr %gep1202.i.i.2, align 8, !tbaa !117
  %indvars.iv.next1003.i.i.2 = add nuw nsw i64 %indvars.iv1002.i.i, 3
  %i.aod = mul nuw nsw i64 %indvars.iv.next1003.i.i.2, %i.oa ; 2 uses
  %gep1200.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1193.i.i, i64 %i.aod
  %i.aoe = load double, ptr %gep1200.i.i.3, align 8, !tbaa !117
  %i.aof = fmul reassoc nsz arcp contract afn double %i.aoe, %.lcssa786
  %gep1202.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep1197.i.i, i64 %i.aod ; 2 uses
  %i.aog = load double, ptr %gep1202.i.i.3, align 8, !tbaa !117
  %i.aoh = fadd reassoc nsz arcp contract afn double %i.aog, %i.aof
  store double %i.aoh, ptr %gep1202.i.i.3, align 8, !tbaa !117
  %indvars.iv.next1003.i.i.3 = add nuw nsw i64 %indvars.iv1002.i.i, 4 ; 2 uses
  %exitcond1006.not.i.i.3 = icmp eq i64 %indvars.iv.next1003.i.i.3, %i.oa
  br i1 %exitcond1006.not.i.i.3, label %._crit_edge830.i.i, label %.lr.ph829.i.i

.loopexit747.i.i:                                 ; preds = %._crit_edge830.i.i, %bb.r
  br i1 %i.alh, label %iter.check1226, label %.loopexit745.i.i

iter.check1226:                                   ; preds = %.loopexit747.i.i
  %i.aoi = mul i32 %i.nz, %indvars.i
  %i.aoj = add i32 %i.aoi, %indvars116.i
  %i.aok = sext i32 %i.aoj to i64
  %i.aol = shl nsw i64 %i.aok, 3
  %scevgep.i.i = getelementptr i8, ptr %i.il, i64 %i.aol
  %i.aom = sub i32 %i.ny, %indvars116.i
  %i.aon = zext i32 %i.aom to i64
  %i.aoo = shl nuw nsw i64 %i.aon, 3
  %i.aop = add nuw nsw i64 %i.aoo, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.aop, i1 false), !tbaa !117
  %sext172.i = shl i64 %indvars.iv1017.in.i.i, 32
  %i.aoq = ashr exact i64 %sext172.i, 32          ; 5 uses
  %invariant.gep1203.i.i = getelementptr [8 x i8], ptr %i.il, i64 %indvars.iv1017.i.i ; 6 uses
  %min.iters.check1200 = icmp ult i64 %i.alf, 4
  br i1 %min.iters.check1200, label %vec.epilog.scalar.ph1227.preheader, label %vector.main.loop.iter.check1201

vector.main.loop.iter.check1201:                  ; preds = %iter.check1226
  %min.iters.check1202 = icmp ult i64 %i.alf, 16
  br i1 %min.iters.check1202, label %vec.epilog.ph1230, label %vector.ph1203

vector.ph1203:                                    ; preds = %vector.main.loop.iter.check1201
  %i.aor = and i64 %i.alf, 12
  %n.vec1204 = and i64 %i.alf, -16                ; 4 uses
  %i.aos = add nsw i64 %i.aoq, %n.vec1204         ; 2 uses
  %broadcast.splatinsert1207 = insertelement <4 x i64> poison, i64 %i.aoq, i64 0
  %broadcast.splat1208 = shufflevector <4 x i64> %broadcast.splatinsert1207, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1209 = add nuw nsw <4 x i64> %broadcast.splat1208, <i64 0, i64 1, i64 2, i64 3>
  br label %vector.body1210

vector.body1210:                                  ; preds = %vector.body1210, %vector.ph1203
  %index1211 = phi i64 [ 0, %vector.ph1203 ], [ %index.next1220, %vector.body1210 ]
  %vec.ind1212 = phi <4 x i64> [ %induction1209, %vector.ph1203 ], [ %vec.ind.next1221, %vector.body1210 ] ; 5 uses
  %step.add1213 = add nuw nsw <4 x i64> %vec.ind1212, splat (i64 4)
  %step.add.21214 = add nuw nsw <4 x i64> %vec.ind1212, splat (i64 8)
  %step.add.31215 = add nuw nsw <4 x i64> %vec.ind1212, splat (i64 12)
  %i.aot = mul nsw <4 x i64> %vec.ind1212, %broadcast.splat1206
  %i.aou = mul nsw <4 x i64> %step.add1213, %broadcast.splat1206
  %i.aov = mul nsw <4 x i64> %step.add.21214, %broadcast.splat1206
  %i.aow = mul nsw <4 x i64> %step.add.31215, %broadcast.splat1206
  %wide.gep1216 = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, <4 x i64> %i.aot
  %wide.gep1217 = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, <4 x i64> %i.aou
  %wide.gep1218 = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, <4 x i64> %i.aov
  %wide.gep1219 = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, <4 x i64> %i.aow
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1216, <4 x i1> splat (i1 true)), !tbaa !117
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1217, <4 x i1> splat (i1 true)), !tbaa !117
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1218, <4 x i1> splat (i1 true)), !tbaa !117
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1219, <4 x i1> splat (i1 true)), !tbaa !117
  %index.next1220 = add nuw i64 %index1211, 16    ; 2 uses
  %vec.ind.next1221 = add nuw nsw <4 x i64> %vec.ind1212, splat (i64 16)
  %i.aox = icmp eq i64 %index.next1220, %n.vec1204
  br i1 %i.aox, label %middle.block1222, label %vector.body1210, !llvm.loop !74

middle.block1222:                                 ; preds = %vector.body1210
  %cmp.n1223 = icmp eq i64 %i.alf, %n.vec1204
  br i1 %cmp.n1223, label %.loopexit745.i.i, label %vec.epilog.iter.check1228

vec.epilog.iter.check1228:                        ; preds = %middle.block1222
  %min.epilog.iters.check1229 = icmp eq i64 %i.aor, 0
  br i1 %min.epilog.iters.check1229, label %vec.epilog.scalar.ph1227.preheader, label %vec.epilog.ph1230, !prof !121

vec.epilog.ph1230:                                ; preds = %vector.main.loop.iter.check1201, %vec.epilog.iter.check1228
  %vec.epilog.resume.val1224 = phi i64 [ %n.vec1204, %vec.epilog.iter.check1228 ], [ 0, %vector.main.loop.iter.check1201 ]
  %bc.resume.val1225 = phi i64 [ %i.aos, %vec.epilog.iter.check1228 ], [ %i.aoq, %vector.main.loop.iter.check1201 ]
  %n.vec1231 = and i64 %i.alf, -4                 ; 3 uses
  %i.aoy = add nsw i64 %i.aoq, %n.vec1231
  %broadcast.splatinsert1234 = insertelement <4 x i64> poison, i64 %bc.resume.val1225, i64 0
  %broadcast.splat1235 = shufflevector <4 x i64> %broadcast.splatinsert1234, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1236 = add nuw nsw <4 x i64> %broadcast.splat1235, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1237

vec.epilog.vector.body1237:                       ; preds = %vec.epilog.vector.body1237, %vec.epilog.ph1230
  %index1238 = phi i64 [ %vec.epilog.resume.val1224, %vec.epilog.ph1230 ], [ %index.next1241, %vec.epilog.vector.body1237 ]
  %vec.ind1239 = phi <4 x i64> [ %induction1236, %vec.epilog.ph1230 ], [ %vec.ind.next1242, %vec.epilog.vector.body1237 ] ; 2 uses
  %i.aoz = mul nsw <4 x i64> %vec.ind1239, %broadcast.splat1233
  %wide.gep1240 = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, <4 x i64> %i.aoz
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep1240, <4 x i1> splat (i1 true)), !tbaa !117
  %index.next1241 = add nuw i64 %index1238, 4     ; 2 uses
  %vec.ind.next1242 = add nuw nsw <4 x i64> %vec.ind1239, splat (i64 4)
  %i.apa = icmp eq i64 %index.next1241, %n.vec1231
  br i1 %i.apa, label %vec.epilog.middle.block1243, label %vec.epilog.vector.body1237, !llvm.loop !75

vec.epilog.middle.block1243:                      ; preds = %vec.epilog.vector.body1237
  %cmp.n1244 = icmp eq i64 %i.alf, %n.vec1231
  br i1 %cmp.n1244, label %.loopexit745.i.i, label %vec.epilog.scalar.ph1227.preheader

vec.epilog.scalar.ph1227.preheader:               ; preds = %iter.check1226, %vec.epilog.iter.check1228, %vec.epilog.middle.block1243
  %indvars.iv1012.i.i.ph = phi i64 [ %i.aoq, %iter.check1226 ], [ %i.aos, %vec.epilog.iter.check1228 ], [ %i.aoy, %vec.epilog.middle.block1243 ]
  br label %vec.epilog.scalar.ph1227

vec.epilog.scalar.ph1227:                         ; preds = %vec.epilog.scalar.ph1227.preheader, %vec.epilog.scalar.ph1227
  %indvars.iv1012.i.i = phi i64 [ %indvars.iv.next1013.i.i, %vec.epilog.scalar.ph1227 ], [ %indvars.iv1012.i.i.ph, %vec.epilog.scalar.ph1227.preheader ] ; 2 uses
  %i.apb = mul nsw i64 %indvars.iv1012.i.i, %i.oa
  %gep1204.i.i = getelementptr [8 x i8], ptr %invariant.gep1203.i.i, i64 %i.apb
  store double 0.000000e+00, ptr %gep1204.i.i, align 8, !tbaa !117
  %indvars.iv.next1013.i.i = add nuw nsw i64 %indvars.iv1012.i.i, 1 ; 2 uses
  %exitcond1016.not.i.i = icmp eq i64 %indvars.iv.next1013.i.i, %i.oa
  br i1 %exitcond1016.not.i.i, label %.loopexit745.i.i, label %vec.epilog.scalar.ph1227, !llvm.loop !76

.loopexit745.i.i:                                 ; preds = %vec.epilog.scalar.ph1227, %middle.block1222, %vec.epilog.middle.block1243, %.loopexit747.i.i, %._crit_edge818.i.i
  %i.apc = mul i32 %.0645699.i.i, %indvars.i
  %i.apd = sext i32 %i.apc to i64
  %i.ape = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.apd
  store double 1.000000e+00, ptr %i.ape, align 8, !tbaa !117
  %i.apf = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %indvars.iv1017.i.i
  %i.apg = load double, ptr %i.apf, align 8, !tbaa !117
  %i.aph = icmp sgt i64 %indvars.iv1017.in.i.i, 1
  %indvar.next1198 = add i32 %indvar1197, 1
  br i1 %i.aph, label %._crit_edge818.i.i, label %.preheader742.i.i

.preheader742.i.i:                                ; preds = %.loopexit745.i.i, %.loopexit735.i.i
  %indvars.iv1052.i.i = phi i64 [ %indvars.iv.next1053.i.i, %.loopexit735.i.i ], [ 0, %.loopexit745.i.i ] ; 8 uses
  %indvars.iv1026.in.i.i = phi i64 [ %indvars.iv1026.i.i, %.loopexit735.i.i ], [ %i.oa, %.loopexit745.i.i ] ; 8 uses
  %i.api = trunc i64 %indvars.iv1052.i.i to i32
  %i.apj = add i32 %i.iy, %i.api                  ; 3 uses
  %i.apk = zext i32 %i.apj to i64
  %i.apl = add nuw nsw i64 %i.apk, 1              ; 5 uses
  %i.apm = mul nsw i64 %indvars.iv1052.i.i, -16   ; 2 uses
  %i.apn = getelementptr i8, ptr %i.in, i64 %i.apm
  %scevgep1067 = getelementptr i8, ptr %i.apn, i64 8
  %i.apo = mul nsw i64 %indvars.iv1052.i.i, -8    ; 2 uses
  %scevgep1069 = getelementptr i8, ptr %i.ok, i64 %i.apo
  %i.app = trunc i64 %indvars.iv1052.i.i to i32
  %i.apq = add i32 %i.kw, %i.app
  %i.apr = zext i32 %i.apq to i64
  %i.aps = shl nuw nsw i64 %i.apr, 3
  %scevgep1072 = getelementptr i8, ptr %scevgep1069, i64 %i.aps
  %scevgep1073 = getelementptr i8, ptr %i.in, i64 %i.apm
  %scevgep1074 = getelementptr i8, ptr %i.ol, i64 %i.apo
  %i.apt = add i64 %indvars.iv1052.i.i, %i.b      ; 21 uses
  %indvars.iv1026.i.i = add nsw i64 %indvars.iv1026.in.i.i, -1 ; 23 uses
  %i.apu = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv1026.i.i
  %i.apv = load double, ptr %i.apu, align 8, !tbaa !117 ; 2 uses
  %i.apw = icmp slt i64 %indvars.iv1026.in.i.i, %i.oa
  br i1 %i.apw, label %.lr.ph841.i.i, label %.loopexit741.i.i

.lr.ph841.i.i:                                    ; preds = %.preheader742.i.i
  %i.apx = shl nuw nsw i64 %indvars.iv1052.i.i, 3
  %i.apy = add nuw nsw i64 %i.apx, 34359738360
  %i.apz = and i64 %i.apy, 34359738360
  %i.aqa = add nuw nsw i64 %i.apz, 8
  %i.aqb = trunc nuw nsw i64 %indvars.iv1052.i.i to i32
  %i.aqc = mul i32 %i.aqb, %i.iq
  %i.aqd = add i32 %i.of, %i.aqc
  %i.aqe = sext i32 %i.aqd to i64
  %i.aqf = shl nsw i64 %i.aqe, 3
  %scevgep1020.i.i = getelementptr i8, ptr %i.in, i64 %i.aqf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep1020.i.i, i8 0, i64 %i.aqa, i1 false), !tbaa !117
  br label %.loopexit741.i.i

.loopexit741.i.i:                                 ; preds = %.lr.ph841.i.i, %.preheader742.i.i
  %i.aqg = fcmp reassoc nsz arcp contract afn une double %i.apv, 0.000000e+00
  br i1 %i.aqg, label %bb.s, label %iter.check1183

iter.check1183:                                   ; preds = %.loopexit741.i.i
  %invariant.gep1205.i.i = getelementptr [8 x i8], ptr %i.in, i64 %indvars.iv1026.i.i ; 11 uses
  %min.iters.check1171 = icmp ugt i64 %i.apt, 3
  %or.cond1920 = and i1 %min.iters.check1171, %ident.check1169.not
  br i1 %or.cond1920, label %vector.main.loop.iter.check1172, label %.lr.ph843.i.i.preheader

vector.main.loop.iter.check1172:                  ; preds = %iter.check1183
  %min.iters.check1173 = icmp ult i64 %i.apt, 16
  br i1 %min.iters.check1173, label %vec.epilog.ph1187, label %vector.ph1174

vector.ph1174:                                    ; preds = %vector.main.loop.iter.check1172
  %i.aqh = and i64 %i.apt, 12
  %n.vec1175 = and i64 %i.apt, -16                ; 4 uses
  %i.aqi = add i64 %indvars.iv1026.i.i, %n.vec1175
  %i.aqj = getelementptr [8 x i8], ptr %invariant.gep1205.i.i, i64 %indvars.iv1026.i.i
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %vector.ph1174
  %index1177 = phi i64 [ 0, %vector.ph1174 ], [ %index.next1178, %vector.body1176 ] ; 2 uses
  %i.aqk = getelementptr [8 x i8], ptr %i.aqj, i64 %index1177 ; 4 uses
  %i.aql = getelementptr i8, ptr %i.aqk, i64 32
  %i.aqm = getelementptr i8, ptr %i.aqk, i64 64
  %i.aqn = getelementptr i8, ptr %i.aqk, i64 96
  store <4 x double> zeroinitializer, ptr %i.aqk, align 8, !tbaa !117
  store <4 x double> zeroinitializer, ptr %i.aql, align 8, !tbaa !117
  store <4 x double> zeroinitializer, ptr %i.aqm, align 8, !tbaa !117
  store <4 x double> zeroinitializer, ptr %i.aqn, align 8, !tbaa !117
  %index.next1178 = add nuw i64 %index1177, 16    ; 2 uses
  %i.aqo = icmp eq i64 %index.next1178, %n.vec1175
  br i1 %i.aqo, label %middle.block1179, label %vector.body1176, !llvm.loop !77

middle.block1179:                                 ; preds = %vector.body1176
end_hunk_0
