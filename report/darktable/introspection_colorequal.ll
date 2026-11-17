Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorequal?download=true
inline.NumInlined: 278
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 67
begin_hunk_0_@process:bb.a
  %i.cab = icmp ult i64 %i.bzy, %i.arx
  %i.cac = select i1 %i.cab, i64 %i.bzy, i64 %i.bsg ; 3 uses
  %i.cad = add i64 %i.caa, %i.bxu
  %.idx434.i = shl i64 %i.cad, 3
  %i.cae = getelementptr inbounds nuw i8, ptr %i.bkj, i64 %.idx434.i
  %i.caf = add i64 %i.cac, %i.bxu
  %.idx435.i = shl i64 %i.caf, 3
  %i.cag = getelementptr inbounds nuw i8, ptr %i.bkj, i64 %.idx435.i
  %i.cah = add i64 %i.cac, %i.bxv
  %.idx436.i = shl i64 %i.cah, 3
  %i.cai = getelementptr inbounds nuw i8, ptr %i.bkj, i64 %.idx436.i
  %i.caj = add i64 %i.caa, %i.bxv
  %.idx437.i = shl i64 %i.caj, 3
  %i.cak = getelementptr inbounds nuw i8, ptr %i.bkj, i64 %.idx437.i
  %i.cal = uitofp reassoc nsz arcp contract afn i64 %i.cac to float
  %i.cam = fsub reassoc nsz arcp contract afn float %i.cal, %i.bzv ; 2 uses
  %i.can = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cam
  %i.cao = add i64 %.08388.i406.i, %i.bxy
  %.idx438.i = shl i64 %i.cao, 3
  %i.cap = getelementptr inbounds nuw i8, ptr %i.bsd, i64 %.idx438.i
  %i.caq = load <2 x float>, ptr %i.cak, align 8, !tbaa !12, !alias.scope !407, !noalias !374
  %i.car = insertelement <2 x float> poison, float %i.cam, i64 0
  %i.cas = shufflevector <2 x float> %i.car, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cat = fmul reassoc nsz arcp contract afn <2 x float> %i.cas, %i.caq
  %i.cau = load <2 x float>, ptr %i.cai, align 8, !tbaa !12, !alias.scope !407, !noalias !374
  %i.cav = insertelement <2 x float> poison, float %i.can, i64 0
  %i.caw = shufflevector <2 x float> %i.cav, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cax = fmul reassoc nsz arcp contract afn <2 x float> %i.caw, %i.cau
  %i.cay = fadd reassoc nsz arcp contract afn <2 x float> %i.cax, %i.cat ; 2 uses
  %i.caz = load <2 x float>, ptr %i.cae, align 8, !tbaa !12, !alias.scope !407, !noalias !374
  %i.cba = fmul reassoc nsz arcp contract afn <2 x float> %i.cas, %i.caz
  %i.cbb = load <2 x float>, ptr %i.cag, align 8, !tbaa !12, !alias.scope !407, !noalias !374
  %i.cbc = fmul reassoc nsz arcp contract afn <2 x float> %i.caw, %i.cbb
  %i.cbd = fsub reassoc nsz arcp contract afn <2 x float> %i.cba, %i.cay
  %i.cbe = fadd reassoc nsz arcp contract afn <2 x float> %i.cbd, %i.cbc
  %i.cbf = fmul reassoc nsz arcp contract afn <2 x float> %i.cbe, %i.bzr
  %i.cbg = fadd reassoc nsz arcp contract afn <2 x float> %i.cbf, %i.cay
  store <2 x float> %i.cbg, ptr %i.cap, align 8, !tbaa !12, !alias.scope !408, !noalias !374
  %i.cbh = add nuw i64 %.08388.i406.i, 1          ; 2 uses
  %exitcond92.not.i409.i = icmp eq i64 %i.cbh, %i.aq
  br i1 %exitcond92.not.i409.i, label %._crit_edge.i410.i, label %scalar.ph1212, !llvm.loop !325

interpolate_bilinear.exit412.i:                   ; preds = %._crit_edge.i410.i, %interpolate_bilinear.exit399.i, %.preheader.lr.ph.i388.i
  call void @free(ptr noundef %i.bkh) #32, !noalias !374
  call void @free(ptr noundef nonnull %i.bkj) #32, !noalias !374
  br label %bb.bh

.critedge.i:                                      ; preds = %._crit_edge479.i
  call void @free(ptr noundef %i.bef) #32, !noalias !374
  call void @free(ptr noundef nonnull %i.bdm) #32, !noalias !374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32, !noalias !390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.max, i64 16, i1 false), !noalias !390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32, !noalias !390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.min, i64 16, i1 false), !noalias !390
  %i.cbi = call ptr @dt_gaussian_init(i32 noundef %i.an, i32 noundef %i.ap, i32 noundef 4, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, float noundef %i.arq, i32 noundef 0) #32, !noalias !374 ; 3 uses
  %.not.i413.i = icmp eq ptr %i.cbi, null
  br i1 %.not.i413.i, label %dt_gaussian_mean_blur.exit414.i, label %bb.bf

bb.bf:                                            ; preds = %.critedge.i
  call void @dt_gaussian_blur_4c(ptr noundef nonnull %i.cbi, ptr noundef nonnull %i.bkh, ptr noundef nonnull %i.bkh) #32, !noalias !374
  call void @dt_gaussian_free(ptr noundef nonnull %i.cbi) #32, !noalias !374
  br label %dt_gaussian_mean_blur.exit414.i

dt_gaussian_mean_blur.exit414.i:                  ; preds = %bb.bf, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32, !noalias !390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32, !noalias !390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.max, i64 16, i1 false), !noalias !390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32, !noalias !390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.min, i64 16, i1 false), !noalias !390
  %i.cbj = call ptr @dt_gaussian_init(i32 noundef %i.an, i32 noundef %i.ap, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, float noundef %i.arq, i32 noundef 0) #32, !noalias !374 ; 3 uses
  %.not.i415.i = icmp eq ptr %i.cbj, null
  br i1 %.not.i415.i, label %dt_gaussian_mean_blur.exit416.i, label %bb.bg

bb.bg:                                            ; preds = %dt_gaussian_mean_blur.exit414.i
  call void @dt_gaussian_blur(ptr noundef nonnull %i.cbj, ptr noundef nonnull %i.bkj, ptr noundef nonnull %i.bkj) #32, !noalias !374
  call void @dt_gaussian_free(ptr noundef nonnull %i.cbj) #32, !noalias !374
  br label %dt_gaussian_mean_blur.exit416.i

dt_gaussian_mean_blur.exit416.i:                  ; preds = %bb.bg, %dt_gaussian_mean_blur.exit414.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32, !noalias !390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !390
  br label %bb.bh

bb.bh:                                            ; preds = %dt_gaussian_mean_blur.exit416.i, %interpolate_bilinear.exit412.i
  %.0323.i = phi ptr [ %i.bsb, %interpolate_bilinear.exit412.i ], [ %i.bkh, %dt_gaussian_mean_blur.exit416.i ] ; 8 uses
  %.0322.i = phi ptr [ %i.bsd, %interpolate_bilinear.exit412.i ], [ %i.bkj, %dt_gaussian_mean_blur.exit416.i ] ; 9 uses
  br i1 %.not436, label %_guide_with_chromaticity.exit.sink.split, label %.lr.ph490.i.preheader

.lr.ph490.i.preheader:                            ; preds = %bb.bh
  %min.iters.check1290 = icmp ult i64 %i.as, 8
  br i1 %min.iters.check1290, label %.lr.ph490.i.preheader1365, label %vector.memcheck1291

vector.memcheck1291:                              ; preds = %.lr.ph490.i.preheader
  %i.cbk = getelementptr i8, ptr %i.ard, i64 4    ; 4 uses
  %i.cbl = mul nsw i64 %i.aq, %i.ar               ; 3 uses
  %i.cbm = shl i64 %i.cbl, 3                      ; 3 uses
  %i.cbn = getelementptr i8, ptr %i.ard, i64 %i.cbm ; 4 uses
  %i.cbo = shl i64 %i.cbl, 2
  %i.cbp = getelementptr i8, ptr %i.arf, i64 %i.cbo ; 4 uses
  %i.cbq = getelementptr i8, ptr %i.arc, i64 %i.cbm ; 2 uses
  %i.cbr = shl i64 %i.cbl, 4
  %i.cbs = getelementptr i8, ptr %.0323.i, i64 %i.cbr ; 2 uses
  %i.cbt = getelementptr i8, ptr %.0322.i, i64 %i.cbm ; 2 uses
  %bound01292 = icmp ult ptr %i.cbk, %i.cbp
  %bound11293 = icmp ult ptr %i.arf, %i.cbn
  %found.conflict1294 = and i1 %bound01292, %bound11293
  %bound01295 = icmp ult ptr %i.cbk, %i.cbq
  %bound11296 = icmp ult ptr %i.arc, %i.cbn
  %found.conflict1297 = and i1 %bound01295, %bound11296
  %conflict.rdx1298 = or i1 %found.conflict1294, %found.conflict1297
  %bound01299 = icmp ult ptr %i.cbk, %i.cbs
  %bound11300 = icmp ult ptr %.0323.i, %i.cbn
  %found.conflict1301 = and i1 %bound01299, %bound11300
  %conflict.rdx1302 = or i1 %conflict.rdx1298, %found.conflict1301
  %bound01303 = icmp ult ptr %i.cbk, %i.cbt
  %bound11304 = icmp ult ptr %.0322.i, %i.cbn
  %found.conflict1305 = and i1 %bound01303, %bound11304
  %conflict.rdx1306 = or i1 %conflict.rdx1302, %found.conflict1305
  %bound01307 = icmp ult ptr %i.arf, %i.cbq
  %bound11308 = icmp ult ptr %i.arc, %i.cbp
  %found.conflict1309 = and i1 %bound01307, %bound11308
  %conflict.rdx1310 = or i1 %conflict.rdx1306, %found.conflict1309
  %bound01311 = icmp ult ptr %i.arf, %i.cbs
  %bound11312 = icmp ult ptr %.0323.i, %i.cbp
  %found.conflict1313 = and i1 %bound01311, %bound11312
  %conflict.rdx1314 = or i1 %conflict.rdx1310, %found.conflict1313
  %bound01315 = icmp ult ptr %i.arf, %i.cbt
  %bound11316 = icmp ult ptr %.0322.i, %i.cbp
  %found.conflict1317 = and i1 %bound01315, %bound11316
  %conflict.rdx1318 = or i1 %conflict.rdx1314, %found.conflict1317
  br i1 %conflict.rdx1318, label %.lr.ph490.i.preheader1365, label %vector.ph1319

vector.ph1319:                                    ; preds = %vector.memcheck1291
  %n.vec1320 = and i64 %i.as, -8                  ; 3 uses
  %broadcast.splatinsert1321 = insertelement <8 x float> poison, float %i.ey, i64 0
  %broadcast.splat1322 = shufflevector <8 x float> %broadcast.splatinsert1321, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1323 = insertelement <8 x float> poison, float %i.fh, i64 0
  %broadcast.splat1324 = shufflevector <8 x float> %broadcast.splatinsert1323, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %vector.ph1319
  %index1326 = phi i64 [ 0, %vector.ph1319 ], [ %index.next1350, %vector.body1325 ] ; 5 uses
  %vec.ind1327 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph1319 ], [ %vec.ind.next1351, %vector.body1325 ] ; 2 uses
  %i.cbu = shl <8 x i64> %vec.ind1327, splat (i64 1) ; 2 uses
  %i.cbv = extractelement <8 x i64> %i.cbu, i64 0 ; 2 uses
  %i.cbw = getelementptr inbounds nuw [4 x i8], ptr %i.arc, i64 %i.cbv
  %wide.vec1328 = load <16 x float>, ptr %i.cbw, align 4, !tbaa !12, !alias.scope !369 ; 2 uses
  %strided.vec1329 = shufflevector <16 x float> %wide.vec1328, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec1330 = shufflevector <16 x float> %wide.vec1328, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.cbx = or disjoint <8 x i64> %i.cbu, splat (i64 1)
  %i.cby = shl i64 %index1326, 4
  %i.cbz = getelementptr inbounds nuw i8, ptr %.0323.i, i64 %i.cby
  %wide.vec1331 = load <32 x float>, ptr %i.cbz, align 64, !tbaa !12, !alias.scope !409, !noalias !374 ; 4 uses
  %strided.vec1332 = shufflevector <32 x float> %wide.vec1331, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1333 = shufflevector <32 x float> %wide.vec1331, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1334 = shufflevector <32 x float> %wide.vec1331, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1335 = shufflevector <32 x float> %wide.vec1331, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.cca = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1332, %strided.vec1329
  %i.ccb = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1333, %strided.vec1330
  %i.ccc = getelementptr inbounds nuw [4 x i8], ptr %.0322.i, i64 %i.cbv
  %wide.vec1336 = load <16 x float>, ptr %i.ccc, align 64, !tbaa !12, !alias.scope !410, !noalias !374 ; 2 uses
  %strided.vec1337 = shufflevector <16 x float> %wide.vec1336, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1338 = shufflevector <16 x float> %wide.vec1336, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ccd = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1334, %strided.vec1329
  %i.cce = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec1335, %strided.vec1330
  %i.ccf = fadd reassoc nsz arcp contract afn <8 x float> %i.cce, %i.ccd
  %i.ccg = fadd reassoc nsz arcp contract afn <8 x float> %i.ccf, %strided.vec1338
  %i.cch = fadd reassoc nsz arcp contract afn <8 x float> %i.cca, splat (float -1.000000e+00)
  %i.cci = fadd reassoc nsz arcp contract afn <8 x float> %i.cch, %i.ccb
  %i.ccj = fadd reassoc nsz arcp contract afn <8 x float> %i.cci, %strided.vec1337
  %i.cck = getelementptr inbounds nuw [4 x i8], ptr %i.are, i64 %index1326
  %wide.load1339 = load <8 x float>, ptr %i.cck, align 4, !tbaa !12, !alias.scope !371 ; 2 uses
  %i.ccl = fsub reassoc nsz arcp contract afn <8 x float> %wide.load1339, %broadcast.splat1322 ; 3 uses
  %i.ccm = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ccl, splat (float f0x3F7FF000)
  %i.ccn = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ccl, splat (float -1.000000e+00)
  %i.cco = select reassoc nsz arcp contract afn <8 x i1> %i.ccn, <8 x float> splat (float -1.000000e+00), <8 x float> %i.ccl
  %i.ccp = fmul reassoc nsz arcp contract afn <8 x float> %i.cco, splat (float 4.096000e+03)
  %i.ccq = fadd reassoc nsz arcp contract afn <8 x float> %i.ccp, splat (float 4.096000e+03)
  %i.ccr = select <8 x i1> %i.ccm, <8 x float> splat (float 8.191000e+03), <8 x float> %i.ccq ; 2 uses
  %i.ccs = call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.ccr) ; 2 uses
  %i.cct = fptosi <8 x float> %i.ccs to <8 x i32>
  %i.ccu = sext <8 x i32> %i.cct to <8 x i64>
  %wide.gep1340 = getelementptr inbounds [4 x i8], ptr @satweights, <8 x i64> %i.ccu ; 2 uses
  %wide.masked.gather1341 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1340, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !390 ; 2 uses
  %i.ccv = fsub reassoc nsz arcp contract afn <8 x float> %i.ccr, %i.ccs
  %wide.gep1342 = getelementptr i8, <8 x ptr> %wide.gep1340, i64 4
  %wide.masked.gather1343 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1342, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !390
  %i.ccw = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather1343, %wide.masked.gather1341
  %i.ccx = fmul reassoc nsz arcp contract afn <8 x float> %i.ccv, %i.ccw
  %i.ccy = fadd reassoc nsz arcp contract afn <8 x float> %i.ccx, %wide.masked.gather1341
  %i.ccz = fmul reassoc nsz arcp contract afn <8 x float> %i.ccy, %i.ccj
  %i.cda = fadd reassoc nsz arcp contract afn <8 x float> %i.ccz, splat (float 1.000000e+00)
  %wide.gep1344 = getelementptr inbounds nuw [4 x i8], ptr %i.ard, <8 x i64> %i.cbx
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cda, <8 x ptr> align 4 %wide.gep1344, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !411, !noalias !412
  %i.cdb = getelementptr inbounds nuw [4 x i8], ptr %i.arg, i64 %index1326
  %wide.load1345 = load <8 x float>, ptr %i.cdb, align 4, !tbaa !12, !alias.scope !373 ; 3 uses
  %i.cdc = fcmp reassoc nsz arcp contract afn ult <8 x float> %wide.load1345, zeroinitializer
  %i.cdd = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.load1345, splat (float 1.000000e+00)
  %i.cde = select reassoc nsz arcp contract afn <8 x i1> %i.cdd, <8 x float> %wide.load1345, <8 x float> splat (float 1.000000e+00)
  %i.cdf = fsub fast <8 x float> splat (float 1.000000e+00), %i.cde
  %i.cdg = select <8 x i1> %i.cdc, <8 x float> splat (float 1.000000e+00), <8 x float> %i.cdf
  %i.cdh = fmul reassoc nsz arcp contract afn <8 x float> %i.cdg, %i.ccg
  %i.cdi = fsub reassoc nsz arcp contract afn <8 x float> %wide.load1339, %broadcast.splat1324 ; 3 uses
  %i.cdj = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.cdi, splat (float f0x3F7FF000)
  %i.cdk = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cdi, splat (float -1.000000e+00)
  %i.cdl = select reassoc nsz arcp contract afn <8 x i1> %i.cdk, <8 x float> splat (float -1.000000e+00), <8 x float> %i.cdi
  %i.cdm = fmul reassoc nsz arcp contract afn <8 x float> %i.cdl, splat (float 4.096000e+03)
  %i.cdn = fadd reassoc nsz arcp contract afn <8 x float> %i.cdm, splat (float 4.096000e+03)
  %i.cdo = select <8 x i1> %i.cdj, <8 x float> splat (float 8.191000e+03), <8 x float> %i.cdn ; 2 uses
  %i.cdp = call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.cdo) ; 2 uses
  %i.cdq = fptosi <8 x float> %i.cdp to <8 x i32>
  %i.cdr = sext <8 x i32> %i.cdq to <8 x i64>
  %wide.gep1346 = getelementptr inbounds [4 x i8], ptr @satweights, <8 x i64> %i.cdr ; 2 uses
  %wide.masked.gather1347 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1346, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !390 ; 2 uses
  %i.cds = fsub reassoc nsz arcp contract afn <8 x float> %i.cdo, %i.cdp
  %wide.gep1348 = getelementptr i8, <8 x ptr> %wide.gep1346, i64 4
  %wide.masked.gather1349 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1348, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !noalias !390
  %i.cdt = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather1349, %wide.masked.gather1347
  %i.cdu = fmul reassoc nsz arcp contract afn <8 x float> %i.cds, %i.cdt
  %i.cdv = fadd reassoc nsz arcp contract afn <8 x float> %i.cdu, %wide.masked.gather1347
  %i.cdw = fmul reassoc nsz arcp contract afn <8 x float> %i.cdh, %i.cdv
  %i.cdx = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %index1326
  store <8 x float> %i.cdw, ptr %i.cdx, align 4, !tbaa !12, !alias.scope !413, !noalias !414
  %index.next1350 = add nuw i64 %index1326, 8     ; 2 uses
  %vec.ind.next1351 = add nuw <8 x i64> %vec.ind1327, splat (i64 8)
  %i.cdy = icmp eq i64 %index.next1350, %n.vec1320
  br i1 %i.cdy, label %middle.block1352, label %vector.body1325, !llvm.loop !332

middle.block1352:                                 ; preds = %vector.body1325
  %cmp.n1353 = icmp eq i64 %i.as, %n.vec1320
  br i1 %cmp.n1353, label %_guide_with_chromaticity.exit.sink.split, label %.lr.ph490.i.preheader1365

.lr.ph490.i.preheader1365:                        ; preds = %vector.memcheck1291, %.lr.ph490.i.preheader, %middle.block1352
  %.0488.i.ph = phi i64 [ 0, %vector.memcheck1291 ], [ 0, %.lr.ph490.i.preheader ], [ %n.vec1320, %middle.block1352 ]
  %i.cdz = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.cea = insertelement <2 x float> %i.cdz, float %i.fh, i64 1
  br label %.lr.ph490.i

.lr.ph490.i:                                      ; preds = %.lr.ph490.i.preheader1365, %.lr.ph490.i
  %.0488.i = phi i64 [ %i.cgu, %.lr.ph490.i ], [ %.0488.i.ph, %.lr.ph490.i.preheader1365 ] ; 6 uses
  %i.ceb = shl i64 %.0488.i, 1                    ; 3 uses
  %i.cec = getelementptr inbounds nuw [4 x i8], ptr %i.arc, i64 %i.ceb
  %i.ced = load float, ptr %i.cec, align 4, !tbaa !12, !alias.scope !369 ; 2 uses
  %i.cee = or disjoint i64 %i.ceb, 1              ; 3 uses
  %i.cef = getelementptr inbounds nuw [4 x i8], ptr %i.arc, i64 %i.cee
  %i.ceg = load float, ptr %i.cef, align 4, !tbaa !12, !alias.scope !369 ; 2 uses
  %.idx439.i = shl i64 %.0488.i, 4
  %i.ceh = getelementptr inbounds nuw i8, ptr %.0323.i, i64 %.idx439.i ; 4 uses
  %i.cei = load float, ptr %i.ceh, align 16, !tbaa !12, !noalias !374
  %i.cej = fmul reassoc nsz arcp contract afn float %i.cei, %i.ced
  %i.cek = getelementptr inbounds nuw i8, ptr %i.ceh, i64 4
  %i.cel = load float, ptr %i.cek, align 4, !tbaa !12, !noalias !374
  %i.cem = fmul reassoc nsz arcp contract afn float %i.cel, %i.ceg
  %i.cen = getelementptr inbounds nuw [4 x i8], ptr %.0322.i, i64 %i.ceb
  %i.ceo = load float, ptr %i.cen, align 8, !tbaa !12, !noalias !374
  %i.cep = getelementptr inbounds nuw i8, ptr %i.ceh, i64 8
  %i.ceq = load float, ptr %i.cep, align 8, !tbaa !12, !noalias !374
  %i.cer = fmul reassoc nsz arcp contract afn float %i.ceq, %i.ced
  %i.ces = getelementptr inbounds nuw i8, ptr %i.ceh, i64 12
  %i.cet = load float, ptr %i.ces, align 4, !tbaa !12, !noalias !374
  %i.ceu = fmul reassoc nsz arcp contract afn float %i.cet, %i.ceg
  %i.cev = fadd reassoc nsz arcp contract afn float %i.ceu, %i.cer
  %i.cew = getelementptr inbounds nuw [4 x i8], ptr %.0322.i, i64 %i.cee
  %i.cex = load float, ptr %i.cew, align 4, !tbaa !12, !noalias !374
  %i.cey = fadd reassoc nsz arcp contract afn float %i.cev, %i.cex
  %i.cez = fadd reassoc nsz arcp contract afn float %i.cej, -1.000000e+00
  %i.cfa = fadd reassoc nsz arcp contract afn float %i.cez, %i.cem
  %i.cfb = fadd reassoc nsz arcp contract afn float %i.cfa, %i.ceo
  %i.cfc = getelementptr inbounds nuw [4 x i8], ptr %i.are, i64 %.0488.i
  %i.cfd = load float, ptr %i.cfc, align 4, !tbaa !12, !alias.scope !371
  %i.cfe = getelementptr inbounds nuw [4 x i8], ptr %i.ard, i64 %i.cee
  %i.cff = getelementptr inbounds nuw [4 x i8], ptr %i.arg, i64 %.0488.i
  %i.cfg = load float, ptr %i.cff, align 4, !tbaa !12, !alias.scope !373 ; 3 uses
  %i.cfh = fcmp reassoc nsz arcp contract afn ult float %i.cfg, 0.000000e+00
  %.inv.i = fcmp reassoc nsz arcp contract afn ole float %i.cfg, 1.000000e+00
  %spec.select.i277 = select reassoc nsz arcp contract afn i1 %.inv.i, float %i.cfg, float 1.000000e+00
  %i.cfi = fsub fast float 1.000000e+00, %spec.select.i277
  %i.cfj = select i1 %i.cfh, float 1.000000e+00, float %i.cfi
  %i.cfk = fmul reassoc nsz arcp contract afn float %i.cfj, %i.cey
  %i.cfl = insertelement <2 x float> poison, float %i.cfd, i64 0
  %i.cfm = shufflevector <2 x float> %i.cfl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cfn = fsub reassoc nsz arcp contract afn <2 x float> %i.cfm, %i.cea ; 3 uses
  %i.cfo = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.cfn, splat (float f0x3F7FF000)
  %i.cfp = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.cfn, splat (float -1.000000e+00)
  %i.cfq = select <2 x i1> %i.cfp, <2 x float> splat (float -1.000000e+00), <2 x float> %i.cfn
  %i.cfr = fmul reassoc nsz arcp contract afn <2 x float> %i.cfq, splat (float 4.096000e+03)
  %i.cfs = fadd reassoc nsz arcp contract afn <2 x float> %i.cfr, splat (float 4.096000e+03)
  %i.cft = select <2 x i1> %i.cfo, <2 x float> splat (float 8.191000e+03), <2 x float> %i.cfs ; 3 uses
  %i.cfu = call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.cft) ; 3 uses
  %i.cfv = fptosi <2 x float> %i.cfu to <2 x i32> ; 2 uses
  %i.cfw = extractelement <2 x i32> %i.cfv, i64 0
  %i.cfx = sext i32 %i.cfw to i64
  %i.cfy = getelementptr inbounds [4 x i8], ptr @satweights, i64 %i.cfx ; 2 uses
  %i.cfz = load float, ptr %i.cfy, align 4, !tbaa !12, !noalias !390 ; 2 uses
  %foldExtExtBinop1360 = fsub reassoc nsz arcp contract afn <2 x float> %i.cft, %i.cfu
  %i.cga = extractelement <2 x float> %foldExtExtBinop1360, i64 0
  %i.cgb = getelementptr i8, ptr %i.cfy, i64 4
  %i.cgc = load float, ptr %i.cgb, align 4, !tbaa !12, !noalias !390
  %i.cgd = fsub reassoc nsz arcp contract afn float %i.cgc, %i.cfz
  %i.cge = fmul reassoc nsz arcp contract afn float %i.cga, %i.cgd
  %i.cgf = fadd reassoc nsz arcp contract afn float %i.cge, %i.cfz
  %i.cgg = fmul reassoc nsz arcp contract afn float %i.cgf, %i.cfb
  %i.cgh = fadd reassoc nsz arcp contract afn float %i.cgg, 1.000000e+00
  store float %i.cgh, ptr %i.cfe, align 4, !tbaa !12, !alias.scope !370
  %i.cgi = extractelement <2 x i32> %i.cfv, i64 1
  %i.cgj = sext i32 %i.cgi to i64
  %i.cgk = getelementptr inbounds [4 x i8], ptr @satweights, i64 %i.cgj ; 2 uses
  %i.cgl = load float, ptr %i.cgk, align 4, !tbaa !12, !noalias !390 ; 2 uses
  %foldExtExtBinop1362 = fsub reassoc nsz arcp contract afn <2 x float> %i.cft, %i.cfu
  %i.cgm = extractelement <2 x float> %foldExtExtBinop1362, i64 1
  %i.cgn = getelementptr i8, ptr %i.cgk, i64 4
  %i.cgo = load float, ptr %i.cgn, align 4, !tbaa !12, !noalias !390
  %i.cgp = fsub reassoc nsz arcp contract afn float %i.cgo, %i.cgl
  %i.cgq = fmul reassoc nsz arcp contract afn float %i.cgm, %i.cgp
  %i.cgr = fadd reassoc nsz arcp contract afn float %i.cgq, %i.cgl
  %i.cgs = fmul reassoc nsz arcp contract afn float %i.cfk, %i.cgr
  %i.cgt = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %.0488.i
  store float %i.cgs, ptr %i.cgt, align 4, !tbaa !12, !alias.scope !372
  %i.cgu = add nuw i64 %.0488.i, 1                ; 2 uses
  %exitcond497.not.i = icmp eq i64 %i.cgu, %i.as
  br i1 %exitcond497.not.i, label %_guide_with_chromaticity.exit.sink.split, label %.lr.ph490.i, !llvm.loop !333

_guide_with_chromaticity.exit.sink.split.sink.split: ; preds = %bb.ax, %bb.ao, %bb.ar
  %.0327.i.sink = phi ptr [ %.0327.i, %bb.ar ], [ %i.ase, %bb.ao ], [ %.0328.i, %bb.ax ]
  %.0323.i.sink.ph = phi ptr [ %i.bdm, %bb.ar ], [ %i.asf, %bb.ao ], [ %.0327.i, %bb.ax ]
  %.0322.i.sink.ph = phi ptr [ %i.bef, %bb.ar ], [ %i.ash, %bb.ao ], [ %.0329.i, %bb.ax ]
  call void @free(ptr noundef %.0327.i.sink) #32, !noalias !374
  br label %_guide_with_chromaticity.exit.sink.split

_guide_with_chromaticity.exit.sink.split:         ; preds = %.lr.ph490.i, %middle.block1352, %_guide_with_chromaticity.exit.sink.split.sink.split, %bb.bh, %dt_gaussian_mean_blur.exit386.i, %bb.aq
  %.0323.i.sink = phi ptr [ %i.bkh, %dt_gaussian_mean_blur.exit386.i ], [ %i.bdm, %bb.aq ], [ %.0323.i, %bb.bh ], [ %.0323.i.sink.ph, %_guide_with_chromaticity.exit.sink.split.sink.split ], [ %.0323.i, %middle.block1352 ], [ %.0323.i, %.lr.ph490.i ]
  %.0322.i.sink = phi ptr [ %i.bkj, %dt_gaussian_mean_blur.exit386.i ], [ %i.bef, %bb.aq ], [ %.0322.i, %bb.bh ], [ %.0322.i.sink.ph, %_guide_with_chromaticity.exit.sink.split.sink.split ], [ %.0322.i, %middle.block1352 ], [ %.0322.i, %.lr.ph490.i ]
  call void @free(ptr noundef %.0323.i.sink) #32, !noalias !374
  call void @free(ptr noundef %.0322.i.sink) #32, !noalias !374
  br label %_guide_with_chromaticity.exit

_guide_with_chromaticity.exit:                    ; preds = %_guide_with_chromaticity.exit.sink.split, %bb.ax, %._crit_edge406.split
  %i.cgv = icmp eq i32 %i.bi, 0
  br i1 %i.cgv, label %.preheader, label %bb.bn

.preheader:                                       ; preds = %_guide_with_chromaticity.exit
  br i1 %.not436, label %.loopexit, label %.lr.ph435

.lr.ph435:                                        ; preds = %.preheader
  %i.cgw = load ptr, ptr %i.af, align 8, !tbaa !52
  %i.cgx = load ptr, ptr %i.ag, align 8, !tbaa !52
  %i.cgy = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.cgz = load ptr, ptr %i.cgy, align 8, !tbaa !89 ; 2 uses
  %i.cha = extractelement <4 x float> %i.el, i64 1
  %i.chb = extractelement <4 x float> %i.el, i64 2
  %i.chc = extractelement <4 x float> %i.el, i64 3
  %i.chd = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ew
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph435, %dt_UCS_HSB_to_XYZ.exit
  %.0229434 = phi i64 [ 0, %.lr.ph435 ], [ %i.cmq, %dt_UCS_HSB_to_XYZ.exit ] ; 4 uses
  %.idx251 = shl i64 %.0229434, 3
  %i.che = getelementptr inbounds nuw i8, ptr %i.cgw, i64 %.idx251 ; 2 uses
  %.idx252 = shl i64 %.0229434, 4
  %i.chf = getelementptr inbounds nuw i8, ptr %3, i64 %.idx252 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.chf, i64 16) ]
  %i.chg = load float, ptr %i.che, align 4, !tbaa !12
  %i.chh = load float, ptr %i.chf, align 16, !tbaa !12
  %i.chi = fadd reassoc nsz arcp contract afn float %i.chh, %i.chg ; 3 uses
  store float %i.chi, ptr %i.chf, align 16, !tbaa !12
  %i.chj = getelementptr inbounds nuw i8, ptr %i.chf, i64 4 ; 2 uses
  %i.chk = load float, ptr %i.chj, align 4, !tbaa !12
  %i.chl = getelementptr inbounds nuw i8, ptr %i.che, i64 4
  %i.chm = load float, ptr %i.chl, align 4, !tbaa !12
  %i.chn = fmul reassoc nsz arcp contract afn float %i.chm, 2.000000e+00
  %i.cho = fadd reassoc nsz arcp contract afn float %i.chn, -1.000000e+00
  %i.chp = fmul reassoc nsz arcp contract afn float %i.cho, %i.chk ; 2 uses
  %i.chq = fcmp reassoc nsz arcp contract afn olt float %i.chp, 0.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.chq, float 0.000000e+00, float %i.chp ; 4 uses
  store float %spec.select, ptr %i.chj, align 4, !tbaa !12
  %i.chr = getelementptr inbounds nuw i8, ptr %i.chf, i64 8 ; 3 uses
  %i.chs = load float, ptr %i.chr, align 8, !tbaa !12
  %i.cht = getelementptr inbounds nuw [4 x i8], ptr %i.cgx, i64 %.0229434
  %i.chu = load float, ptr %i.cht, align 4, !tbaa !12
  %i.chv = fmul reassoc nsz arcp contract afn float %i.chu, 8.000000e+00
  %i.chw = fadd reassoc nsz arcp contract afn float %i.chv, 1.000000e+00
  %i.chx = fmul reassoc nsz arcp contract afn float %i.chw, %i.chs ; 2 uses
  %i.chy = fcmp reassoc nsz arcp contract afn olt float %i.chx, 0.000000e+00
  %i.chz = select reassoc nsz arcp contract afn i1 %i.chy, float 0.000000e+00, float %i.chx ; 5 uses
  store float %i.chz, ptr %i.chr, align 8, !tbaa !12
  %i.cia = fmul reassoc nsz arcp contract afn float %i.chz, %spec.select ; 2 uses
  %i.cib = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cia, float f0x3FAB13D1)
  %i.cic = fadd reassoc nsz arcp contract afn float %i.cib, 1.000000e+00 ; 2 uses
  %i.cid = fdiv reassoc nsz arcp contract afn float %i.chz, %i.cic ; 2 uses
  %i.cie = fmul reassoc nsz arcp contract afn float %i.chi, f0x42A2F983
  %i.cif = fadd reassoc nsz arcp contract afn float %i.cie, 2.560000e+02 ; 2 uses
  %i.cig = fpext reassoc nsz arcp contract afn float %i.cif to double ; 2 uses
  %i.cih = call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.cig)
  %i.cii = fptrunc reassoc nsz arcp contract afn double %i.cih to float ; 2 uses
  %i.cij = call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.cig)
  %i.cik = fptrunc reassoc nsz arcp contract afn double %i.cij to float
  %i.cil = fptosi float %i.cii to i32
  %i.cim = and i32 %i.cil, 511                    ; 2 uses
  %i.cin = fptosi float %i.cik to i32
  %i.cio = and i32 %i.cin, 511                    ; 2 uses
  %i.cip = zext nneg i32 %i.cim to i64
  %i.ciq = getelementptr inbounds nuw [4 x i8], ptr %i.cgz, i64 %i.cip
  %i.cir = load float, ptr %i.ciq, align 4, !tbaa !12 ; 3 uses
  %.not.i.i297 = icmp eq i32 %i.cim, %i.cio
  br i1 %.not.i.i297, label %lookup_gamut.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.cis = fsub reassoc nsz arcp contract afn float %i.cif, %i.cii
  %i.cit = zext nneg i32 %i.cio to i64
  %i.ciu = getelementptr inbounds nuw [4 x i8], ptr %i.cgz, i64 %i.cit
  %i.civ = load float, ptr %i.ciu, align 4, !tbaa !12
  %i.ciw = fsub reassoc nsz arcp contract afn float %i.civ, %i.cir
  %i.cix = fmul reassoc nsz arcp contract afn float %i.ciw, %i.cis
  %i.ciy = fadd reassoc nsz arcp contract afn float %i.cix, %i.cir
  br label %lookup_gamut.exit.i

lookup_gamut.exit.i:                              ; preds = %bb.bj, %bb.bi
  %i.ciz = phi float [ %i.ciy, %bb.bj ], [ %i.cir, %bb.bi ]
  %i.cja = fmul reassoc nsz arcp contract afn float %i.cid, %i.ew
  %i.cjb = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cja, float f0x3F2703AC)
  %i.cjc = fmul reassoc nsz arcp contract afn float %i.cjb, f0x417EED8B
  %i.cjd = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ciz, float f0x3F19CB20)
  %i.cje = fmul reassoc nsz arcp contract afn float %i.cjc, %i.cjd
  %i.cjf = fmul reassoc nsz arcp contract afn float %i.cje, %i.chd ; 2 uses
  %i.cjg = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cjf, float f0x3FAB13D1)
  %i.cjh = fadd reassoc nsz arcp contract afn float %i.cjg, 1.000000e+00
  %i.cji = fmul reassoc nsz arcp contract afn float %i.cjh, %i.cid ; 2 uses
  %i.cjj = fcmp reassoc nsz arcp contract afn ogt float %i.cji, 0.000000e+00
  %i.cjk = fdiv reassoc nsz arcp contract afn float %i.cjf, %i.cji
  %spec.select.i298 = select reassoc nsz arcp contract afn i1 %i.cjj, float %i.cjk, float 0.000000e+00 ; 2 uses
  %i.cjl = fmul reassoc nsz arcp contract afn float %spec.select.i298, 8.000000e-01 ; 3 uses
  %i.cjm = fcmp reassoc nsz arcp contract afn ogt float %spec.select, %i.cjl
  br i1 %i.cjm, label %bb.bk, label %gamut_map_HSB.exit

bb.bk:                                            ; preds = %lookup_gamut.exit.i
  %i.cjn = fmul reassoc nsz arcp contract afn float %spec.select.i298, f0x3E4CCCCC ; 2 uses
  %i.cjo = fsub reassoc nsz arcp contract afn float %i.cjl, %spec.select
  %i.cjp = fdiv reassoc nsz arcp contract afn float %i.cjo, %i.cjn
  %i.cjq = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.cjp)
  %i.cjr = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cjq
  %i.cjs = fmul reassoc nsz arcp contract afn float %i.cjr, %i.cjn
  %i.cjt = fadd reassoc nsz arcp contract afn float %i.cjs, %i.cjl
  %.pre453 = fmul reassoc nsz arcp contract afn float %i.cjt, %i.chz ; 2 uses
  %.pre454 = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.pre453, float f0x3FAB13D1)
  %.pre456 = fadd reassoc nsz arcp contract afn float %.pre454, 1.000000e+00
  br label %gamut_map_HSB.exit

gamut_map_HSB.exit:                               ; preds = %lookup_gamut.exit.i, %bb.bk
  %.pre-phi457 = phi float [ %i.cic, %lookup_gamut.exit.i ], [ %.pre456, %bb.bk ]
  %.pre-phi = phi float [ %i.cia, %lookup_gamut.exit.i ], [ %.pre453, %bb.bk ]
  %i.cju = fmul reassoc nsz arcp contract afn float %i.chz, %i.ew
  %i.cjv = fdiv reassoc nsz arcp contract afn float %i.cju, %.pre-phi457 ; 3 uses
  %i.cjw = fcmp reassoc nsz arcp contract afn ult float %i.cjv, 0.000000e+00
  %.inv.i.i = fcmp reassoc nsz arcp contract afn ole float %i.cjv, 2.098850e+00
  %spec.select.i.i299 = select reassoc nsz arcp contract afn i1 %.inv.i.i, float %i.cjv, float 2.098850e+00
  %i.cjx = select reassoc nsz arcp contract afn i1 %i.cjw, float 0.000000e+00, float %spec.select.i.i299 ; 4 uses
  %i.cjy = fcmp reassoc nsz arcp contract afn une float %i.cjx, 0.000000e+00
  br i1 %i.cjy, label %bb.bl, label %dt_UCS_JCH_to_xyY.exit.i

bb.bl:                                            ; preds = %gamut_map_HSB.exit
  %i.cjz = fmul reassoc nsz arcp contract afn float %.pre-phi, %i.ew
  %i.cka = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cjx, float f0x3F2703AC)
  %i.ckb = fmul reassoc nnan nsz arcp contract afn float %i.cka, f0x417EED8B
  %i.ckc = fdiv reassoc nsz arcp contract afn float %i.cjz, %i.ckb
  %i.ckd = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ckc, float f0x3F5510A2)
  br label %dt_UCS_JCH_to_xyY.exit.i

dt_UCS_JCH_to_xyY.exit.i:                         ; preds = %bb.bl, %gamut_map_HSB.exit
  %i.cke = phi reassoc nsz arcp contract afn float [ %i.ckd, %bb.bl ], [ 0.000000e+00, %gamut_map_HSB.exit ] ; 2 uses
  %sincos.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.chi) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1
  %i.ckf = fmul reassoc nsz arcp contract afn float %i.cke, %cos.i.i ; 2 uses
  %i.ckg = fmul reassoc nsz arcp contract afn float %i.cke, %sin.i.i ; 2 uses
  %i.ckh = fmul reassoc nsz arcp contract afn float %i.ckf, f0xC0A13362
  %i.cki = fmul reassoc nsz arcp contract afn float %i.ckg, f0x40204F91
  %i.ckj = fsub reassoc nsz arcp contract afn float %i.ckh, %i.cki ; 2 uses
end_hunk_0
begin_hunk_1_@_iop_colorequalizer_draw:bb.a
  %.sroa.0186.0.copyload = load double, ptr %i.jz, align 8
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jy, i64 688
  %.sroa.4187.0.copyload = load double, ptr %.sroa.4187.0..sroa_idx, align 8
  %.sroa.5188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jy, i64 696
  %.sroa.5188.0.copyload = load double, ptr %.sroa.5188.0..sroa_idx, align 8
  %.sroa.6189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jy, i64 704
  %.sroa.6189.0.copyload = load double, ptr %.sroa.6189.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ag, double noundef %.sroa.0186.0.copyload, double noundef %.sroa.4187.0.copyload, double noundef %.sroa.5188.0.copyload, double noundef %.sroa.6189.0.copyload) #32
  %i.ka = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !158
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 1432
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !186
  call void @cairo_set_line_width(ptr noundef %i.ag, double noundef %i.kc) #32
  %i.kd = fmul reassoc nsz arcp contract afn float %i.bi, 5.000000e-01
  %i.ke = fpext reassoc nsz arcp contract afn float %i.kd to double ; 3 uses
  call void @cairo_move_to(ptr noundef %i.ag, double noundef 0.000000e+00, double noundef %i.ke) #32
  call void @cairo_line_to(ptr noundef %i.ag, double noundef %i.bm, double noundef %i.ke) #32
  call void @cairo_stroke(ptr noundef %i.ag) #32
  %i.kf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !593 ; 4 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 680
  %.sroa.0194.0.copyload = load double, ptr %i.kg, align 8, !tbaa !188
  %.sroa.4195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kf, i64 688
  %.sroa.4195.0.copyload = load double, ptr %.sroa.4195.0..sroa_idx, align 8, !tbaa !188
  %.sroa.5196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kf, i64 696
  %.sroa.5196.0.copyload = load double, ptr %.sroa.5196.0..sroa_idx, align 8, !tbaa !188
  %.sroa.6197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kf, i64 704
  %.sroa.6197.0.copyload = load double, ptr %.sroa.6197.0..sroa_idx, align 8, !tbaa !188
  %i.kh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !158
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1432
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !186
  %i.kk = fmul reassoc nsz arcp contract afn double %i.kj, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.ag, double noundef %i.kk) #32
  call void @cairo_set_source_rgba(ptr noundef %i.ag, double noundef %.sroa.0194.0.copyload, double noundef %.sroa.4195.0.copyload, double noundef %.sroa.5196.0.copyload, double noundef %.sroa.6197.0.copyload) #32
  %i.kl = call ptr @dt_alloc_aligned(i64 noundef 2048) #32 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kl, i64 64) ]
  %i.km = getelementptr inbounds nuw i8, ptr %i.h, i64 536 ; 5 uses
  store ptr %i.kl, ptr %i.km, align 8, !tbaa !608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  %i.kn = load i32, ptr %i.iv, align 8, !tbaa !169
  switch i32 %i.kn, label %bb.at [
    i32 1, label %bb.ar
    i32 0, label %bb.as
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.ko = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.kp = load <8 x float>, ptr %i.ko, align 4, !tbaa !12
  store <8 x float> %i.kp, ptr %i.f, align 64, !tbaa !12
  br label %.peel.begin

bb.as:                                            ; preds = %bb.aq
  %i.kq = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  %i.kr = load <8 x float>, ptr %i.kq, align 4, !tbaa !12
  %i.ks = fmul reassoc nsz arcp contract afn <8 x float> %i.kr, splat (float f0x3C8EFA36)
  store <8 x float> %i.ks, ptr %i.f, align 64, !tbaa !12
  %i.kt = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !94
  br label %.peel.begin

bb.at:                                            ; preds = %bb.aq
  %i.kv = getelementptr inbounds nuw i8, ptr %i.j, i64 92
  %i.kw = load <8 x float>, ptr %i.kv, align 4, !tbaa !12
  store <8 x float> %i.kw, ptr %i.f, align 64, !tbaa !12
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.at, %bb.as, %bb.ar
  %.0177 = phi nsz float [ 1.000000e+00, %bb.at ], [ 1.000000e+00, %bb.ar ], [ %i.ku, %bb.as ]
  %.0176 = phi nsz float [ 1.000000e+00, %bb.at ], [ 1.000000e+00, %bb.ar ], [ 5.000000e-01, %bb.as ] ; 3 uses
  %.0175 = phi nsz float [ 5.000000e-01, %bb.at ], [ 5.000000e-01, %bb.ar ], [ f0x3E22F983, %bb.as ] ; 3 uses
  %.0174 = phi i32 [ 1, %bb.at ], [ 1, %bb.ar ], [ 0, %bb.as ]
  %i.kx = fdiv reassoc nsz arcp contract afn float f0x40490FDB, %.0177
  call fastcc void @_periodic_RBF_interpolate(ptr noundef %i.f, float noundef %i.kx, ptr noundef %i.kl, float noundef 0.000000e+00, i32 noundef %.0174)
  %i.ky = getelementptr inbounds nuw i8, ptr %i.j, i64 124
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !48 ; 2 uses
  %i.la = fmul reassoc nsz arcp contract afn float %i.kz, f0x3B360B61 ; 3 uses
  %i.lb = fneg reassoc nsz arcp contract afn float %i.kz
  %i.lc = fptosi float %i.lb to i32               ; 3 uses
  %i.ld = sitofp reassoc nsz arcp contract afn i32 %i.lc to float ; 2 uses
  %i.le = fmul reassoc nnan nsz arcp contract afn float %i.ld, f0x3B368D31
  %i.lf = fadd reassoc nsz arcp contract afn float %i.le, %i.la
  %i.lg = fmul reassoc nsz arcp contract afn float %i.lf, %i.be
  %i.lh = fmul reassoc nnan nsz arcp contract afn float %i.ld, f0x3C8EFA36 ; 2 uses
  %i.li = fadd reassoc nsz arcp contract afn float %i.lh, f0x3EB2B8C4 ; 2 uses
  %i.lj = fcmp reassoc nsz arcp contract afn olt float %i.li, f0x40490FDB
  %i.lk = fadd reassoc nnan nsz arcp contract afn float %i.lh, f0xC0BDE44F
  %i.ll = select reassoc nsz arcp contract afn i1 %i.lj, float %i.li, float %i.lk
  %i.lm = load ptr, ptr %i.km, align 8, !tbaa !608 ; 2 uses
  %i.ln = fmul reassoc nnan nsz arcp contract afn float %i.ll, f0x42A2F983
  %i.lo = fadd reassoc nsz arcp contract afn float %i.ln, 2.560000e+02 ; 2 uses
  %i.lp = fpext reassoc nsz arcp contract afn float %i.lo to double ; 2 uses
  %i.lq = call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.lp)
  %i.lr = fptrunc reassoc nsz arcp contract afn double %i.lq to float ; 2 uses
  %i.ls = call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.lp)
  %i.lt = fptrunc reassoc nsz arcp contract afn double %i.ls to float
  %i.lu = fptosi float %i.lr to i32
  %i.lv = and i32 %i.lu, 511                      ; 2 uses
  %i.lw = fptosi float %i.lt to i32
  %i.lx = and i32 %i.lw, 511                      ; 2 uses
  %i.ly = zext nneg i32 %i.lv to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.ly
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !12 ; 3 uses
  %.not.i183.peel = icmp eq i32 %i.lv, %i.lx
  br i1 %.not.i183.peel, label %.peel.next, label %bb.au

bb.au:                                            ; preds = %.peel.begin
  %i.mb = fsub reassoc nsz arcp contract afn float %i.lo, %i.lr
  %i.mc = zext nneg i32 %i.lx to i64
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.mc
  %i.me = load float, ptr %i.md, align 4, !tbaa !12
  %i.mf = fsub reassoc nsz arcp contract afn float %i.me, %i.ma
  %i.mg = fmul reassoc nsz arcp contract afn float %i.mf, %i.mb
  %i.mh = fadd reassoc nsz arcp contract afn float %i.mg, %i.ma
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.begin, %bb.au
  %i.mi = phi float [ %i.mh, %bb.au ], [ %i.ma, %.peel.begin ]
  %i.mj = fmul reassoc nsz arcp contract afn float %i.mi, %.0175
  %i.mk = fsub reassoc nsz arcp contract afn float %.0176, %i.mj
  %i.ml = fmul reassoc nsz arcp contract afn float %i.mk, %i.bi
  %i.mm = fpext reassoc nsz arcp contract afn float %i.lg to double
  %i.mn = fpext reassoc nsz arcp contract afn float %i.ml to double
  call void @cairo_move_to(ptr noundef %i.ag, double noundef %i.mm, double noundef %i.mn) #32
  %i.mo = add nsw i32 %i.lc, 358
  br label %bb.av

.loopexit221:                                     ; preds = %bb.ax
  call void @cairo_stroke(ptr noundef %i.ag) #32
  %i.mp = getelementptr inbounds nuw i8, ptr %i.h, i64 656
  %i.mq = getelementptr inbounds nuw i8, ptr %i.h, i64 648
  %i.mr = getelementptr inbounds nuw i8, ptr %i.h, i64 652
  br label %bb.az

bb.av:                                            ; preds = %.peel.next, %bb.ax
  %.0173217.in = phi i32 [ %i.lc, %.peel.next ], [ %.0173217, %bb.ax ] ; 2 uses
  %.0173217 = add nsw i32 %.0173217.in, 1         ; 2 uses
  %i.ms = sitofp reassoc nsz arcp contract afn i32 %.0173217 to float ; 2 uses
  %i.mt = fmul reassoc nnan nsz arcp contract afn float %i.ms, f0x3B368D31
  %i.mu = fadd reassoc nsz arcp contract afn float %i.mt, %i.la
  %i.mv = fmul reassoc nsz arcp contract afn float %i.mu, %i.be
  %i.mw = fmul reassoc nnan nsz arcp contract afn float %i.ms, f0x3C8EFA36 ; 2 uses
  %i.mx = fadd reassoc nsz arcp contract afn float %i.mw, f0x3EB2B8C4 ; 2 uses
  %i.my = fcmp reassoc nsz arcp contract afn olt float %i.mx, f0x40490FDB
  %i.mz = fadd reassoc nnan nsz arcp contract afn float %i.mw, f0xC0BDE44F
  %i.na = select reassoc nsz arcp contract afn i1 %i.my, float %i.mx, float %i.mz
  %i.nb = load ptr, ptr %i.km, align 8, !tbaa !608 ; 2 uses
  %i.nc = fmul reassoc nnan nsz arcp contract afn float %i.na, f0x42A2F983
  %i.nd = fadd reassoc nsz arcp contract afn float %i.nc, 2.560000e+02 ; 2 uses
  %i.ne = fpext reassoc nsz arcp contract afn float %i.nd to double ; 2 uses
  %i.nf = call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.ne)
  %i.ng = fptrunc reassoc nsz arcp contract afn double %i.nf to float ; 2 uses
  %i.nh = call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.ne)
  %i.ni = fptrunc reassoc nsz arcp contract afn double %i.nh to float
  %i.nj = fptosi float %i.ng to i32
  %i.nk = and i32 %i.nj, 511                      ; 2 uses
  %i.nl = fptosi float %i.ni to i32
  %i.nm = and i32 %i.nl, 511                      ; 2 uses
  %i.nn = zext nneg i32 %i.nk to i64
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %i.nn
  %i.np = load float, ptr %i.no, align 4, !tbaa !12 ; 3 uses
  %.not.i183 = icmp eq i32 %i.nk, %i.nm
  br i1 %.not.i183, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.nq = fsub reassoc nsz arcp contract afn float %i.nd, %i.ng
  %i.nr = zext nneg i32 %i.nm to i64
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %i.nr
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !12
  %i.nu = fsub reassoc nsz arcp contract afn float %i.nt, %i.np
  %i.nv = fmul reassoc nsz arcp contract afn float %i.nu, %i.nq
  %i.nw = fadd reassoc nsz arcp contract afn float %i.nv, %i.np
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.nx = phi float [ %i.nw, %bb.aw ], [ %i.np, %bb.av ]
  %i.ny = fmul reassoc nsz arcp contract afn float %i.nx, %.0175
  %i.nz = fsub reassoc nsz arcp contract afn float %.0176, %i.ny
  %i.oa = fmul reassoc nsz arcp contract afn float %i.nz, %i.bi
  %i.ob = fpext reassoc nsz arcp contract afn float %i.mv to double
  %i.oc = fpext reassoc nsz arcp contract afn float %i.oa to double
  call void @cairo_line_to(ptr noundef %i.ag, double noundef %i.ob, double noundef %i.oc) #32
  %i.od = icmp slt i32 %.0173217.in, %i.mo
  br i1 %i.od, label %bb.av, label %.loopexit221, !llvm.loop !591

bb.ay:                                            ; preds = %bb.bd
  %i.oe = load ptr, ptr %i.km, align 8, !tbaa !608
  call void @free(ptr noundef %i.oe) #32
  %i.of = getelementptr inbounds nuw i8, ptr %2, i64 672
  %i.og = load i32, ptr %i.of, align 16, !tbaa !609
  %.not180 = icmp eq i32 %i.og, 0
  br i1 %.not180, label %_draw_color_picker.exit, label %bb.be

bb.az:                                            ; preds = %.loopexit221, %bb.bd
  %indvars.iv = phi i64 [ 0, %.loopexit221 ], [ %indvars.iv.next, %bb.bd ] ; 3 uses
  %i.oh = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.oi = uitofp nneg i32 %i.oh to float          ; 2 uses
  %i.oj = fmul reassoc nnan nsz arcp contract afn float %i.oi, f0x3F490FDC ; 2 uses
  %i.ok = fadd reassoc nsz arcp contract afn float %i.oj, f0x3EB2B8C4 ; 2 uses
  %i.ol = fmul reassoc nnan nsz arcp contract afn float %i.oi, 1.250000e-01
  %i.om = fadd reassoc nsz arcp contract afn float %i.ol, %i.la
  %i.on = fmul reassoc nsz arcp contract afn float %i.om, %i.be ; 2 uses
  %i.oo = fcmp reassoc nsz arcp contract afn olt float %i.ok, f0x40490FDB
  %i.op = fadd fast float %i.oj, f0xC0BDE44F
  %i.oq = select reassoc nsz arcp contract afn i1 %i.oo, float %i.ok, float %i.op
  %i.or = load ptr, ptr %i.km, align 8, !tbaa !608 ; 2 uses
  %i.os = fmul reassoc nnan nsz arcp contract afn float %i.oq, f0x42A2F983
  %i.ot = fadd reassoc nsz arcp contract afn float %i.os, 2.560000e+02 ; 2 uses
  %i.ou = fpext reassoc nsz arcp contract afn float %i.ot to double ; 2 uses
  %i.ov = call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.ou)
  %i.ow = fptrunc reassoc nsz arcp contract afn double %i.ov to float ; 2 uses
  %i.ox = call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.ou)
  %i.oy = fptrunc reassoc nsz arcp contract afn double %i.ox to float
  %i.oz = fptosi float %i.ow to i32
  %i.pa = and i32 %i.oz, 511                      ; 2 uses
  %i.pb = fptosi float %i.oy to i32
  %i.pc = and i32 %i.pb, 511                      ; 2 uses
  %i.pd = zext nneg i32 %i.pa to i64
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.pd
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !12 ; 3 uses
  %.not.i184 = icmp eq i32 %i.pa, %i.pc
  br i1 %.not.i184, label %lookup_gamut.exit185, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.pg = fsub reassoc nsz arcp contract afn float %i.ot, %i.ow
  %i.ph = zext nneg i32 %i.pc to i64
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.ph
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !12
  %i.pk = fsub reassoc nsz arcp contract afn float %i.pj, %i.pf
  %i.pl = fmul reassoc nsz arcp contract afn float %i.pk, %i.pg
  %i.pm = fadd reassoc nsz arcp contract afn float %i.pl, %i.pf
  br label %lookup_gamut.exit185

lookup_gamut.exit185:                             ; preds = %bb.az, %bb.ba
  %i.pn = phi float [ %i.pm, %bb.ba ], [ %i.pf, %bb.az ]
  %i.po = fmul reassoc nsz arcp contract afn float %i.pn, %.0175
  %i.pp = fsub reassoc nsz arcp contract afn float %.0176, %i.po
  %i.pq = fmul reassoc nsz arcp contract afn float %i.pp, %i.bi ; 2 uses
  %i.pr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !158
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 1432
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !186
  %i.pu = fmul reassoc nsz arcp contract afn double %i.pt, 6.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.ag, double noundef %i.pu) #32
  %i.pv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !593 ; 4 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 552
  %.sroa.0198.0.copyload = load double, ptr %i.pw, align 8
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pv, i64 560
  %.sroa.4199.0.copyload = load double, ptr %.sroa.4199.0..sroa_idx, align 8
  %.sroa.5200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pv, i64 568
  %.sroa.5200.0.copyload = load double, ptr %.sroa.5200.0..sroa_idx, align 8
  %.sroa.6201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pv, i64 576
  %.sroa.6201.0.copyload = load double, ptr %.sroa.6201.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ag, double noundef %.sroa.0198.0.copyload, double noundef %.sroa.4199.0.copyload, double noundef %.sroa.5200.0.copyload, double noundef %.sroa.6201.0.copyload) #32
  %i.px = fpext reassoc nsz arcp contract afn float %i.on to double ; 3 uses
  call void @cairo_move_to(ptr noundef %i.ag, double noundef %i.px, double noundef %i.ke) #32
  %i.py = fpext reassoc nsz arcp contract afn float %i.pq to double ; 2 uses
  call void @cairo_line_to(ptr noundef %i.ag, double noundef %i.px, double noundef %i.py) #32
  call void @cairo_stroke(ptr noundef %i.ag) #32
  %i.pz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !158
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 1432
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !186
  %i.qc = fmul reassoc nsz arcp contract afn double %i.qb, 3.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.ag, double noundef %i.qc) #32
  %i.qd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !158
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 1432
  %i.qf = load double, ptr %i.qe, align 8, !tbaa !186
  %i.qg = fmul reassoc nsz arcp contract afn double %i.qf, 4.000000e+00
  call void @cairo_arc(ptr noundef %i.ag, double noundef %i.px, double noundef %i.py, double noundef %i.qg, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #32
  %i.qh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !593 ; 4 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 680
  %.sroa.0202.0.copyload = load double, ptr %i.qi, align 8
  %.sroa.4203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qh, i64 688
  %.sroa.4203.0.copyload = load double, ptr %.sroa.4203.0..sroa_idx, align 8
  %.sroa.5204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qh, i64 696
  %.sroa.5204.0.copyload = load double, ptr %.sroa.5204.0..sroa_idx, align 8
  %.sroa.6205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qh, i64 704
  %.sroa.6205.0.copyload = load double, ptr %.sroa.6205.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ag, double noundef %.sroa.0202.0.copyload, double noundef %.sroa.4203.0.copyload, double noundef %.sroa.5204.0.copyload, double noundef %.sroa.6205.0.copyload) #32
  call void @cairo_stroke_preserve(ptr noundef %i.ag) #32
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %indvars.iv ; 2 uses
  store float %i.on, ptr %i.qj, align 8, !tbaa !12
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 4
  store float %i.pq, ptr %i.qk, align 4, !tbaa !12
  %i.ql = load i32, ptr %i.mq, align 8, !tbaa !181
  %.not181 = icmp eq i32 %i.ql, 0
  br i1 %.not181, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %lookup_gamut.exit185
  %i.qm = load i32, ptr %i.mr, align 4, !tbaa !189
  %i.qn = and i32 %i.oh, 7
  %i.qo = icmp eq i32 %i.qm, %i.qn
  br i1 %i.qo, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %lookup_gamut.exit185
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %.sink254 = phi i64 [ 584, %bb.bc ], [ 680, %bb.bb ]
  %.sink251 = phi i64 [ 592, %bb.bc ], [ 688, %bb.bb ]
  %.sink249 = phi i64 [ 600, %bb.bc ], [ 696, %bb.bb ]
  %.sink247 = phi i64 [ 608, %bb.bc ], [ 704, %bb.bb ]
  %i.qp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !593 ; 4 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 %.sink254
  %.sroa.0210.0.copyload = load double, ptr %i.qq, align 8
  %.sroa.4211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qp, i64 %.sink251
  %.sroa.4211.0.copyload = load double, ptr %.sroa.4211.0..sroa_idx, align 8
  %.sroa.5212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qp, i64 %.sink249
  %.sroa.5212.0.copyload = load double, ptr %.sroa.5212.0..sroa_idx, align 8
  %.sroa.6213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qp, i64 %.sink247
  %.sroa.6213.0.copyload = load double, ptr %.sroa.6213.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ag, double noundef %.sroa.0210.0.copyload, double noundef %.sroa.4211.0.copyload, double noundef %.sroa.5212.0.copyload, double noundef %.sroa.6213.0.copyload) #32
  call void @cairo_fill(ptr noundef %i.ag) #32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond223.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond223.not, label %bb.ay, label %bb.az

bb.be:                                            ; preds = %bb.ay
  %i.qr = getelementptr inbounds nuw i8, ptr %2, i64 492
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !172
  %i.qt = icmp eq i32 %i.qs, 1
  br i1 %i.qt, label %bb.bf, label %_draw_color_picker.exit

bb.bf:                                            ; preds = %bb.be
  %i.qu = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.qv = load float, ptr %i.qu, align 16, !tbaa !12
  %i.qw = fcmp reassoc nsz arcp contract afn olt float %i.qv, f0x38D1B717
  br i1 %i.qw, label %_draw_color_picker.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.qx = getelementptr inbounds nuw i8, ptr %2, i64 516
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !12
  %i.qz = fcmp reassoc nsz arcp contract afn olt float %i.qy, f0x38D1B717
  br i1 %i.qz, label %_draw_color_picker.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ra = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.rb = load float, ptr %i.ra, align 8, !tbaa !12
  %i.rc = getelementptr inbounds nuw i8, ptr %2, i64 552
  %i.rd = load float, ptr %i.rc, align 8, !tbaa !12 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %2, i64 536
  %i.rf = load float, ptr %i.re, align 8, !tbaa !12 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %2, i64 540
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !12 ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %2, i64 556
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !12 ; 3 uses
  %i.rk = fsub reassoc nsz arcp contract afn float %i.rd, %i.rf
  %i.rl = fsub reassoc nsz arcp contract afn float %i.rj, %i.rh
  %i.rm = fcmp reassoc nsz arcp contract afn ogt float %i.rk, %i.rl
  br i1 %i.rm, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.rn = getelementptr inbounds nuw i8, ptr %2, i64 524
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !12 ; 2 uses
  %i.rp = fcmp reassoc nsz arcp contract afn olt float %i.rj, 5.000000e-01
  %.v.i = select i1 %i.rp, float 5.000000e-01, float -5.000000e-01
  %i.rq = fadd reassoc nsz arcp contract afn float %.v.i, %i.rj
  %i.rr = fcmp reassoc nsz arcp contract afn olt float %i.rh, 5.000000e-01
  %.v60.i = select i1 %i.rr, float 5.000000e-01, float -5.000000e-01
  %i.rs = fadd reassoc nsz arcp contract afn float %.v60.i, %i.rh
  %i.rt = fcmp reassoc nsz arcp contract afn olt float %i.ro, 5.000000e-01
  %.v61.i = select i1 %i.rt, float 5.000000e-01, float -5.000000e-01
  %i.ru = fadd reassoc nsz arcp contract afn float %.v61.i, %i.ro
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.057.i = phi nsz float [ %i.ru, %bb.bi ], [ %i.rb, %bb.bh ] ; 2 uses
  %.056.i = phi nsz float [ %i.rq, %bb.bi ], [ %i.rd, %bb.bh ] ; 2 uses
  %.055.i = phi nsz float [ %i.rs, %bb.bi ], [ %i.rf, %bb.bh ] ; 2 uses
  %i.rv = fadd reassoc nsz arcp contract afn float %.055.i, f0xBD638E39 ; 2 uses
  %i.rw = fcmp reassoc nsz arcp contract afn olt float %i.rv, 0.000000e+00
  %i.rx = fadd reassoc nsz arcp contract afn float %.055.i, f0x3F71C71C
  %i.ry = select reassoc nsz arcp contract afn i1 %i.rw, float %i.rx, float %i.rv
  %i.rz = fmul reassoc nsz arcp contract afn float %i.ry, %i.be ; 5 uses
  %i.sa = fadd reassoc nsz arcp contract afn float %.056.i, f0xBD638E39 ; 2 uses
  %i.sb = fcmp reassoc nsz arcp contract afn olt float %i.sa, 0.000000e+00
  %i.sc = fadd reassoc nsz arcp contract afn float %.056.i, f0x3F71C71C
  %i.sd = select reassoc nsz arcp contract afn i1 %i.sb, float %i.sc, float %i.sa
  %i.se = fmul reassoc nsz arcp contract afn float %i.sd, %i.be ; 4 uses
  %i.sf = fcmp reassoc nsz arcp contract afn une float %i.se, %i.rz
  br i1 %i.sf, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  call void @cairo_set_source_rgba(ptr noundef %i.ag, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 3.000000e-01) #32
  %i.sg = fcmp reassoc nsz arcp contract afn ogt float %i.se, %i.rz
  br i1 %i.sg, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.sh = fpext reassoc nsz arcp contract afn float %i.rz to double
  %i.si = fsub reassoc nsz arcp contract afn float %i.se, %i.rz
  %i.sj = fpext reassoc nsz arcp contract afn float %i.si to double
  call void @cairo_rectangle(ptr noundef %i.ag, double noundef %i.sh, double noundef 0.000000e+00, double noundef %i.sj, double noundef %i.it) #32
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.sk = fpext reassoc nsz arcp contract afn float %i.se to double
  call void @cairo_rectangle(ptr noundef %i.ag, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.sk, double noundef %i.it) #32
  %i.sl = fpext reassoc nsz arcp contract afn float %i.rz to double ; 2 uses
  %i.sm = fsub reassoc nsz arcp contract afn double %i.bm, %i.sl
  call void @cairo_rectangle(ptr noundef %i.ag, double noundef %i.sl, double noundef 0.000000e+00, double noundef %i.sm, double noundef %i.it) #32
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  call void @cairo_fill(ptr noundef %i.ag) #32
  br label %bb.bo
end_hunk_1
begin_hunk_2_@_build_dt_UCS_HSB_gradients:bb.a
  %i.aq = fdiv reassoc nsz arcp contract afn float %i.al, %i.ao
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.ap, float %i.aq, float 0.000000e+00 ; 2 uses
  %i.ar = fmul reassoc nsz arcp contract afn float %spec.select.i, 8.000000e-01 ; 3 uses
  %i.as = fcmp reassoc nsz arcp contract afn ogt float %i.f, %i.ar
  br i1 %i.as, label %bb.c, label %gamut_map_HSB.exit

bb.c:                                             ; preds = %lookup_gamut.exit.i
  %i.at = fmul reassoc nsz arcp contract afn float %spec.select.i, f0x3E4CCCCC ; 2 uses
  %i.au = fsub reassoc nsz arcp contract afn float %i.ar, %i.f
  %i.av = fdiv reassoc nsz arcp contract afn float %i.au, %i.at
  %i.aw = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.av)
  %i.ax = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aw
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %i.at
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, %i.ar ; 2 uses
  %.pre = fmul reassoc nsz arcp contract afn float %i.az, %i.h ; 2 uses
  %.pre39 = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.pre, float f0x3FAB13D1)
  %.pre41 = fadd reassoc nsz arcp contract afn float %.pre39, 1.000000e+00
  %.pre43 = fdiv reassoc nsz arcp contract afn float %i.h, %.pre41
  br label %gamut_map_HSB.exit

gamut_map_HSB.exit:                               ; preds = %lookup_gamut.exit.i, %bb.c
  %.pre-phi44 = phi float [ %i.l, %lookup_gamut.exit.i ], [ %.pre43, %bb.c ] ; 3 uses
  %.pre-phi = phi float [ %i.i, %lookup_gamut.exit.i ], [ %.pre, %bb.c ]
  %i.ba = phi reassoc nsz arcp contract afn float [ %i.f, %lookup_gamut.exit.i ], [ %i.az, %bb.c ]
  store float %i.ba, ptr %i.e, align 4, !tbaa !12
  %i.bb = fcmp reassoc nsz arcp contract afn ult float %.pre-phi44, 0.000000e+00
  %.inv.i.i = fcmp reassoc nsz arcp contract afn ole float %.pre-phi44, 2.098850e+00
  %spec.select.i.i = select reassoc nsz arcp contract afn i1 %.inv.i.i, float %.pre-phi44, float 2.098850e+00
  %i.bc = select reassoc nsz arcp contract afn i1 %i.bb, float 0.000000e+00, float %spec.select.i.i ; 4 uses
  %i.bd = fcmp reassoc nsz arcp contract afn une float %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.d, label %dt_UCS_JCH_to_xyY.exit.i

bb.d:                                             ; preds = %gamut_map_HSB.exit
  %i.be = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bc, float f0x3F2703AC)
  %i.bf = fmul reassoc nnan nsz arcp contract afn float %i.be, f0x417EED8B
  %i.bg = fdiv reassoc nsz arcp contract afn float %.pre-phi, %i.bf
  %i.bh = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bg, float f0x3F5510A2)
  br label %dt_UCS_JCH_to_xyY.exit.i

dt_UCS_JCH_to_xyY.exit.i:                         ; preds = %bb.d, %gamut_map_HSB.exit
  %i.bi = phi reassoc nsz arcp contract afn float [ %i.bh, %bb.d ], [ 0.000000e+00, %gamut_map_HSB.exit ] ; 2 uses
  %sincos.i.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.d) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, %cos.i.i ; 2 uses
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bi, %sin.i.i ; 2 uses
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bj, f0xC0A13362
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bk, f0x40204F91
  %i.bn = fsub reassoc nsz arcp contract afn float %i.bl, %i.bm ; 2 uses
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bj, f0x40985229
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bk, f0x4037EFD4
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bo, %i.bp ; 2 uses
  %i.br = fmul reassoc nsz arcp contract afn float %i.bn, f0xBFBEFF8B
  %i.bs = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bn)
  %i.bt = fadd reassoc nsz arcp contract afn float %i.bs, f0xBFB2C28D
  %i.bu = fdiv reassoc nsz arcp contract afn float %i.br, %i.bt ; 3 uses
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bq, f0xBFC32F7A
  %i.bw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bq)
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, f0xBFB9C753
  %i.by = fdiv reassoc nsz arcp contract afn float %i.bv, %i.bx ; 3 uses
  %i.bz = fmul reassoc nsz arcp contract afn float %i.bu, f0xBE1A9505
  %i.ca = fmul reassoc nsz arcp contract afn float %i.by, f0xBE1EE8D5
  %i.cb = fadd reassoc nsz arcp contract afn float %i.bz, f0xBC0A2B16
  %i.cc = fadd reassoc nsz arcp contract afn float %i.cb, %i.ca
  %i.cd = fmul reassoc nsz arcp contract afn float %i.bu, f0x3F70B489
  %i.ce = fadd reassoc nsz arcp contract afn float %i.by, f0xBCD1FB74
  %i.cf = fadd reassoc nsz arcp contract afn float %i.ce, %i.cd ; 5 uses
  %i.cg = fcmp reassoc nsz arcp contract afn ult float %i.cf, 0.000000e+00
  %i.ch = fcmp reassoc nsz arcp contract afn olt float %i.cf, f0x00800000
  %i.ci = select reassoc nsz arcp contract afn i1 %i.ch, float f0x00800000, float %i.cf
  %i.cj = fcmp reassoc nsz arcp contract afn ogt float %i.cf, f0x80800000
  %i.ck = select reassoc nsz arcp contract afn i1 %i.cj, float f0x80800000, float %i.cf
  %i.cl = select reassoc nsz arcp contract afn i1 %i.cg, float %i.ck, float %i.ci ; 2 uses
  %i.cm = fdiv reassoc nsz arcp contract afn float %i.cc, %i.cl ; 4 uses
  %i.cn = fcmp reassoc nsz arcp contract afn oeq float %i.cm, 0.000000e+00
  br i1 %i.cn, label %dt_UCS_HSB_to_XYZ.exit, label %bb.e

bb.e:                                             ; preds = %dt_UCS_JCH_to_xyY.exit.i
  %i.co = fmul reassoc nsz arcp contract afn float %i.bc, f0x3F8FE801
  %i.cp = fsub reassoc nsz arcp contract afn float f0x4006541D, %i.bc
  %i.cq = fdiv reassoc nsz arcp contract afn float %i.co, %i.cp
  %i.cr = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.cq, float f0x3FCAA4B8) ; 4 uses
  %i.cs = fmul reassoc nsz arcp contract afn float %i.by, f0x3E10B0E5
  %i.ct = fmul reassoc nsz arcp contract afn float %i.bu, f0x3E2B2F00
  %i.cu = fadd reassoc nsz arcp contract afn float %i.ct, f0xBC0352A9
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cu, %i.cs
  %i.cw = fdiv reassoc nsz arcp contract afn float %i.cv, %i.cl ; 2 uses
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, %i.cr
  %i.cy = fdiv reassoc nsz arcp contract afn float %i.cx, %i.cm ; 2 uses
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cw, %i.cm
  %i.da = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cz
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, %i.cr
  %i.dc = fdiv reassoc nsz arcp contract afn float %i.db, %i.cm
  %i.dd = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.de = insertelement <2 x float> %i.dd, float %i.cr, i64 1
  br label %dt_UCS_HSB_to_XYZ.exit

dt_UCS_HSB_to_XYZ.exit:                           ; preds = %dt_UCS_JCH_to_xyY.exit.i, %bb.e
  %.sink10.i = phi float [ %i.cy, %bb.e ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i ] ; 7 uses
  %.sink.i = phi float [ %i.cr, %bb.e ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i ] ; 7 uses
  %i.df = phi reassoc nsz arcp contract afn float [ %i.dc, %bb.e ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i ] ; 8 uses
  %i.dg = phi <2 x float> [ %i.de, %bb.e ], [ zeroinitializer, %dt_UCS_JCH_to_xyY.exit.i ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %dt_UCS_HSB_to_XYZ.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 960 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 852
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !156
  %.not.i = icmp eq i32 %i.dj, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 980
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.dm = load i32, ptr %i.dl, align 64, !tbaa !157
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 816
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 976
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 992
  %i.dr = load <4 x float>, ptr %i.dh, align 64, !tbaa !12
  %i.ds = insertelement <4 x float> poison, float %.sink10.i, i64 0
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> zeroinitializer
  %i.du = fmul reassoc nsz arcp contract afn <4 x float> %i.dr, %i.dt
  %i.dv = load <4 x float>, ptr %i.dp, align 16, !tbaa !12
  %i.dw = insertelement <4 x float> poison, float %.sink.i, i64 0
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dy = fmul reassoc nsz arcp contract afn <4 x float> %i.dv, %i.dx
  %i.dz = fadd reassoc nsz arcp contract afn <4 x float> %i.dy, %i.du
  %i.ea = load <4 x float>, ptr %i.dq, align 32, !tbaa !12
  %i.eb = insertelement <4 x float> poison, float %i.df, i64 0
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ed = fmul reassoc nsz arcp contract afn <4 x float> %i.ea, %i.ec
  %i.ee = fadd reassoc nsz arcp contract afn <4 x float> %i.dz, %i.ed
  store <4 x float> %i.ee, ptr %i.c, align 16, !tbaa !12
  call fastcc void @dt_ioppr_apply_trc(ptr noundef nonnull %i.c, ptr noundef nonnull %1, ptr noundef nonnull readonly %i.do, ptr noundef nonnull readonly %i.dn, i32 noundef %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %dt_ioppr_xyz_to_rgb_matrix.exit

bb.h:                                             ; preds = %bb.f
  %i.ef = add i64 %i.b, 960
  %i.eg = add i64 %i.b, 1008
  %i.eh = add i64 %i.a, 16
  %rt.bound0 = icmp ugt i64 %i.eg, %i.a
  %rt.bound1 = icmp ult i64 %i.ef, %i.eh
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !620

bb.i:                                             ; preds = %dt_UCS_HSB_to_XYZ.exit
  %i.ei = fmul reassoc nsz arcp contract afn <2 x float> %i.dg, <float f0x3F8163AD, float f0x3F7E5B63>
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ek = fmul reassoc nsz arcp contract afn <2 x float> %i.dg, <float f0x3BB1DE8E, float f0x3D26BE12>
  %i.el = insertelement <2 x float> poison, float %i.df, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = fmul reassoc nsz arcp contract afn <2 x float> %i.em, <float f0x3A978241, float f0xBD0BDB31>
  %i.eo = fmul reassoc nsz arcp contract afn float %.sink10.i, f0x39837366
  %i.ep = fmul reassoc nsz arcp contract afn float %.sink.i, f0x3C3C486C
  %i.eq = fsub reassoc nsz arcp contract afn float %i.eo, %i.ep
  %i.er = fmul reassoc nsz arcp contract afn float %i.df, f0x3F44995A
  %i.es = fadd reassoc nsz arcp contract afn float %i.eq, %i.er ; 3 uses
  %i.et = fmul reassoc nsz arcp contract afn float %i.es, f0xBEFB31D6
  %i.eu = fadd reassoc nsz arcp contract afn <2 x float> %i.ek, %i.ej
  %i.ev = fadd reassoc nsz arcp contract afn <2 x float> %i.eu, %i.en ; 4 uses
  %i.ew = extractelement <2 x float> %i.ev, i64 1 ; 2 uses
  %i.ex = fmul reassoc nsz arcp contract afn float %i.ew, f0x40489119
  %i.ey = extractelement <2 x float> %i.ev, i64 0 ; 2 uses
  %i.ez = fmul reassoc nsz arcp contract afn float %i.ey, f0x3FCEF57D
  %i.fa = fsub reassoc nsz arcp contract afn float %i.ex, %i.ez
  %i.fb = fadd reassoc nsz arcp contract afn float %i.fa, %i.et ; 3 uses
  %i.fc = fmul reassoc nsz arcp contract afn <2 x float> %i.ev, <float f0x3FF54420, float 7.194530e-02>
  %i.fd = fmul reassoc nsz arcp contract afn <2 x float> %i.ev, <float f0x3E6A7CB9, float f0x3F7A9091>
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ff = fsub reassoc nsz arcp contract afn <2 x float> %i.fc, %i.fe
  %i.fg = insertelement <2 x float> poison, float %i.es, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = fmul reassoc nsz arcp contract afn <2 x float> %i.fh, <float 3.345400e-02, float f0x3FB3DEFE>
  %i.fj = fadd reassoc nsz arcp contract afn <2 x float> %i.ff, %i.fi ; 3 uses
  %i.fk = fadd reassoc nsz arcp contract afn float %i.ey, %i.ew
  %i.fl = fadd reassoc nsz arcp contract afn float %i.fk, %i.es
  %i.fm = fmul reassoc nsz arcp contract afn float %i.fl, 0.000000e+00 ; 3 uses
  %i.fn = shufflevector <2 x float> %i.fj, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.fo = insertelement <4 x float> %i.fn, float %i.fb, i64 0
  %i.fp = insertelement <4 x float> %i.fo, float %i.fm, i64 3
  %i.fq = bitcast <4 x float> %i.fp to <4 x i32>  ; 2 uses
  %i.fr = and <4 x i32> %i.fq, splat (i32 8388607)
  %i.fs = or disjoint <4 x i32> %i.fr, splat (i32 1065353216)
  %i.ft = bitcast <4 x i32> %i.fs to <4 x float>  ; 5 uses
  %i.fu = lshr <4 x i32> %i.fq, splat (i32 23)
  %i.fv = and <4 x i32> %i.fu, splat (i32 255)
  %i.fw = add nsw <4 x i32> %i.fv, splat (i32 -127)
  %i.fx = sitofp <4 x i32> %i.fw to <4 x float>
  %i.fy = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ft, splat (float f0x3D74552F)
  %i.fz = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.fy, splat (float f0xBEEE7397)
  %i.ga = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.fz, %i.ft
  %i.gb = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ga, splat (float f0x3FBD96DD)
  %i.gc = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.gb, %i.ft
  %i.gd = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.gc, splat (float f0xC02153F6)
  %i.ge = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.gd, %i.ft
  %i.gf = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ge, splat (float f0x4038D96C)
  %i.gg = fadd fast <4 x float> %i.ft, splat (float -1.000000e+00)
  %i.gh = fmul reassoc nsz arcp contract afn <4 x float> %i.gf, %i.gg
  %i.gi = fadd reassoc nsz arcp contract afn <4 x float> %i.gh, %i.fx
  %i.gj = fmul reassoc nsz arcp contract afn <4 x float> %i.gi, splat (float f0x3ED55555)
  %i.gk = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gj, <4 x float> splat (float 1.290000e+02))
  %i.gl = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gk, <4 x float> splat (float f0xC2FDFFFF)) ; 4 uses
  %i.gm = fadd reassoc nsz arcp contract afn <4 x float> %i.gl, splat (float -5.000000e-01)
  %i.gn = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.gm)
  %i.go = sitofp reassoc nsz arcp contract afn <4 x i32> %i.gn to <4 x float> ; 5 uses
  %i.gp = fcmp reassoc nsz arcp contract afn ugt float %i.fb, 3.130800e-03
  br i1 %i.gp, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.gq = fmul reassoc nnan nsz arcp contract afn float %i.fb, 1.292000e+01
  br label %dt_XYZ_to_sRGB.exit

bb.k:                                             ; preds = %bb.i
  %.sroa.014.0.vec.extract.i.i.i = extractelement <4 x float> %i.go, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.gl, %i.go
  %i.gr = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %i.gs = fmul reassoc nsz arcp contract afn float %i.gr, f0x3C5DBE69
  %i.gt = fadd reassoc nsz arcp contract afn float %i.gs, f0x3D5509F9
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gt, %i.gr
  %i.gv = fadd reassoc nsz arcp contract afn float %i.gu, f0x3E773CC5
  %i.gw = fmul reassoc nsz arcp contract afn float %i.gv, %i.gr
  %i.gx = fadd reassoc nsz arcp contract afn float %i.gw, f0x3F3168B3
  %i.gy = fmul reassoc nsz arcp contract afn float %i.gx, %i.gr
  %i.gz = fadd reassoc nsz arcp contract afn float %i.gy, f0x3F800016
  %i.ha = fptosi float %.sroa.014.0.vec.extract.i.i.i to i32
  %i.hb = shl i32 %i.ha, 23
  %i.hc = add i32 %i.hb, 1065353216
  %i.hd = bitcast i32 %i.hc to float
  %i.he = fmul reassoc nnan nsz arcp contract afn float %i.hd, 1.055000e+00
  %i.hf = fmul reassoc nsz arcp contract afn float %i.he, %i.gz
  %i.hg = fadd reassoc nsz arcp contract afn float %i.hf, -5.500000e-02
  br label %dt_XYZ_to_sRGB.exit

dt_XYZ_to_sRGB.exit:                              ; preds = %bb.j, %bb.k
  %i.hh = phi reassoc nsz arcp contract afn float [ %i.gq, %bb.j ], [ %i.hg, %bb.k ]
  %.sroa.014.12.vec.extract.i.i.i = extractelement <4 x float> %i.go, i64 3
  %foldExtExtBinop52 = fsub reassoc nsz arcp contract afn <4 x float> %i.gl, %i.go
  %i.hi = extractelement <4 x float> %foldExtExtBinop52, i64 3 ; 4 uses
  %i.hj = fmul reassoc nsz arcp contract afn float %i.hi, f0x3C5DBE69
  %i.hk = fadd reassoc nsz arcp contract afn float %i.hj, f0x3D5509F9
  %i.hl = fmul reassoc nsz arcp contract afn float %i.hk, %i.hi
  %i.hm = fadd reassoc nsz arcp contract afn float %i.hl, f0x3E773CC5
  %i.hn = fmul reassoc nsz arcp contract afn float %i.hm, %i.hi
  %i.ho = fadd reassoc nsz arcp contract afn float %i.hn, f0x3F3168B3
  %i.hp = fmul reassoc nsz arcp contract afn float %i.ho, %i.hi
  %i.hq = fadd reassoc nsz arcp contract afn float %i.hp, f0x3F800016
  %i.hr = fptosi float %.sroa.014.12.vec.extract.i.i.i to i32
  %i.hs = shl i32 %i.hr, 23
  %i.ht = add i32 %i.hs, 1065353216
  %i.hu = bitcast i32 %i.ht to float
  %i.hv = fmul reassoc nsz arcp contract afn <2 x float> %i.fj, splat (float 1.292000e+01)
  store float %i.hh, ptr %1, align 4, !tbaa !12
  %i.hw = fcmp reassoc nsz arcp contract afn ugt <2 x float> %i.fj, splat (float 3.130800e-03)
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.hy = shufflevector <4 x float> %i.gl, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.hz = shufflevector <4 x float> %i.go, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ia = fsub reassoc nsz arcp contract afn <2 x float> %i.hy, %i.hz ; 4 uses
  %i.ib = fmul reassoc nsz arcp contract afn <2 x float> %i.ia, splat (float f0x3C5DBE69)
  %i.ic = fadd reassoc nsz arcp contract afn <2 x float> %i.ib, splat (float f0x3D5509F9)
  %i.id = fmul reassoc nsz arcp contract afn <2 x float> %i.ic, %i.ia
  %i.ie = fadd reassoc nsz arcp contract afn <2 x float> %i.id, splat (float f0x3E773CC5)
  %i.if = fmul reassoc nsz arcp contract afn <2 x float> %i.ie, %i.ia
  %i.ig = fadd reassoc nsz arcp contract afn <2 x float> %i.if, splat (float f0x3F3168B3)
  %i.ih = fmul reassoc nsz arcp contract afn <2 x float> %i.ig, %i.ia
  %i.ii = fadd reassoc nsz arcp contract afn <2 x float> %i.ih, splat (float f0x3F800016)
  %i.ij = fptosi <2 x float> %i.hz to <2 x i32>
  %i.ik = shl <2 x i32> %i.ij, splat (i32 23)
  %i.il = add <2 x i32> %i.ik, splat (i32 1065353216)
  %i.im = bitcast <2 x i32> %i.il to <2 x float>
  %i.in = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.im, splat (float 1.055000e+00)
  %i.io = fmul reassoc nsz arcp contract afn <2 x float> %i.in, %i.ii
  %i.ip = fadd reassoc nsz arcp contract afn <2 x float> %i.io, splat (float -5.500000e-02)
  %i.iq = select <2 x i1> %i.hw, <2 x float> %i.ip, <2 x float> %i.hv
  store <2 x float> %i.iq, ptr %i.hx, align 4, !tbaa !12
  %i.ir = fcmp reassoc nsz arcp contract afn ugt float %i.fm, 3.130800e-03
  %i.is = fmul reassoc nnan nsz arcp contract afn float %i.hu, 1.055000e+00
  %i.it = fmul reassoc nsz arcp contract afn float %i.is, %i.hq
  %i.iu = fadd reassoc nsz arcp contract afn float %i.it, -5.500000e-02
  %i.iv = select reassoc nsz arcp contract afn i1 %i.ir, float %i.iu, float %i.fm
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.iv, ptr %i.iw, align 4, !tbaa !12
  br label %dt_ioppr_xyz_to_rgb_matrix.exit

dt_ioppr_xyz_to_rgb_matrix.exit:                  ; preds = %.rtvec, %.rtscalar, %bb.g, %dt_XYZ_to_sRGB.exit
  %.val.i = load <4 x float>, ptr %1, align 16, !tbaa !179
  %i.ix = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i, <4 x float> zeroinitializer)
  %i.iy = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ix, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.iy, ptr %1, align 16, !tbaa !179
  ret void

.rtvec:                                           ; preds = %bb.h
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 976
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 992
  %i.jb = load <4 x float>, ptr %i.dh, align 4, !tbaa !12
  %i.jc = insertelement <4 x float> poison, float %.sink10.i, i64 0
  %i.jd = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.je = fmul reassoc nsz arcp contract afn <4 x float> %i.jb, %i.jd
  %i.jf = load <4 x float>, ptr %i.iz, align 4, !tbaa !12
  %i.jg = insertelement <4 x float> poison, float %.sink.i, i64 0
  %i.jh = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ji = fmul reassoc nsz arcp contract afn <4 x float> %i.jf, %i.jh
  %i.jj = fadd reassoc nsz arcp contract afn <4 x float> %i.ji, %i.je
  %i.jk = load <4 x float>, ptr %i.ja, align 4, !tbaa !12
  %i.jl = insertelement <4 x float> poison, float %i.df, i64 0
  %i.jm = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jn = fmul reassoc nsz arcp contract afn <4 x float> %i.jk, %i.jm
  %i.jo = fadd reassoc nsz arcp contract afn <4 x float> %i.jj, %i.jn
  store <4 x float> %i.jo, ptr %1, align 4, !tbaa !12
  br label %dt_ioppr_xyz_to_rgb_matrix.exit

.rtscalar:                                        ; preds = %bb.h
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 976
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 992
  %i.jr = load float, ptr %i.dh, align 4, !tbaa !12
  %i.js = fmul reassoc nsz arcp contract afn float %i.jr, %.sink10.i
  %i.jt = load float, ptr %i.jp, align 4, !tbaa !12
  %i.ju = fmul reassoc nsz arcp contract afn float %i.jt, %.sink.i
  %i.jv = fadd reassoc nsz arcp contract afn float %i.ju, %i.js
  %i.jw = load float, ptr %i.jq, align 4, !tbaa !12
  %i.jx = fmul reassoc nsz arcp contract afn float %i.jw, %i.df
  %i.jy = fadd reassoc nsz arcp contract afn float %i.jv, %i.jx
  store float %i.jy, ptr %1, align 4, !tbaa !12
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 964
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !12
  %i.kb = fmul reassoc nsz arcp contract afn float %i.ka, %.sink10.i
  %i.kc = load float, ptr %i.dk, align 4, !tbaa !12
  %i.kd = fmul reassoc nsz arcp contract afn float %i.kc, %.sink.i
  %i.ke = fadd reassoc nsz arcp contract afn float %i.kd, %i.kb
  %i.kf = getelementptr inbounds nuw i8, ptr %2, i64 996
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !12
  %i.kh = fmul reassoc nsz arcp contract afn float %i.kg, %i.df
  %i.ki = fadd reassoc nsz arcp contract afn float %i.ke, %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.ki, ptr %i.kj, align 4, !tbaa !12
  %i.kk = getelementptr inbounds nuw i8, ptr %2, i64 968
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !12
  %i.km = fmul reassoc nsz arcp contract afn float %i.kl, %.sink10.i
  %i.kn = getelementptr inbounds nuw i8, ptr %2, i64 984
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !12
  %i.kp = fmul reassoc nsz arcp contract afn float %i.ko, %.sink.i
  %i.kq = fadd reassoc nsz arcp contract afn float %i.kp, %i.km
  %i.kr = getelementptr inbounds nuw i8, ptr %2, i64 1000
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !12
  %i.kt = fmul reassoc nsz arcp contract afn float %i.ks, %i.df
  %i.ku = fadd reassoc nsz arcp contract afn float %i.kq, %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.ku, ptr %i.kv, align 4, !tbaa !12
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 972
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !12
  %i.ky = fmul reassoc nsz arcp contract afn float %i.kx, %.sink10.i
  %i.kz = getelementptr inbounds nuw i8, ptr %2, i64 988
  %i.la = load float, ptr %i.kz, align 4, !tbaa !12
  %i.lb = fmul reassoc nsz arcp contract afn float %i.la, %.sink.i
  %i.lc = fadd reassoc nsz arcp contract afn float %i.lb, %i.ky
  %i.ld = getelementptr inbounds nuw i8, ptr %2, i64 1004
  %i.le = load float, ptr %i.ld, align 4, !tbaa !12
  %i.lf = fmul reassoc nsz arcp contract afn float %i.le, %i.df
  %i.lg = fadd reassoc nsz arcp contract afn float %i.lc, %i.lf
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.lg, ptr %i.lh, align 4, !tbaa !12
  br label %dt_ioppr_xyz_to_rgb_matrix.exit
}

declare void @dt_bauhaus_slider_set_stop(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #22

; Function Attrs: nounwind uwtable
define internal float @_action_process_colorequal(ptr noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3) #4 {
bb.a:
  %i.a = icmp sgt i32 %1, 7
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @g_object_get_data(ptr noundef %0, ptr noundef nonnull @.str.34) #32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !63  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 544
  %i.f = load i32, ptr %i.e, align 8, !tbaa !169  ; 2 uses
  %i.g = sext i32 %1 to i64
  %switch.selectcmp.i = icmp eq i32 %i.f, 0
  %switch.select.i = select i1 %switch.selectcmp.i, i64 320, i64 384
  %switch.selectcmp9.i = icmp eq i32 %i.f, 1
  %switch.select10.i = select i1 %switch.selectcmp9.i, i64 256, i64 %switch.select.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %switch.select10.i
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.g
  %.0.i = load ptr, ptr %i.i, align 8, !tbaa !171 ; 3 uses
  tail call void @gtk_widget_realize(ptr noundef %.0.i) #32
  %i.j = tail call ptr @dt_action_widget(ptr noundef %.0.i) #32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !621
  %i.l = add i32 %i.k, -15
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !196
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 584
end_hunk_2
