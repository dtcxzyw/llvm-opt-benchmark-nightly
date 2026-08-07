inline.NumInlined: 7
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@dt_heal:bb.a
.lr.ph.us.preheader.i:                            ; preds = %.lr.ph84.split.us.i
  %i.ac = shl nsw i64 %i.q, 3
  %.idx = shl nsw i64 %i.x, 3
  %i.ad = shl i64 %i.v, 4                         ; 5 uses
  %i.ae = add i64 %i.ad, -12                      ; 2 uses
  %i.af = add i64 %i.ad, -8                       ; 2 uses
  %i.ag = add i64 %i.ad, -4                       ; 2 uses
  %min.iters.check = icmp ult i32 %3, 32
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br label %.lr.ph.us.i

.lr.ph.us.us.i:                                   ; preds = %.lr.ph.us.us.i.preheader, %._crit_edge.us.us.i
  %.07382.us.us.i = phi i64 [ %i.ah, %._crit_edge.us.us.i ], [ 0, %.lr.ph.us.us.i.preheader ] ; 3 uses
  %i.ah = add nuw i64 %.07382.us.us.i, 1          ; 3 uses
  %i.ai = mul i64 %i.ah, %i.u                     ; 2 uses
  %i.aj = and i64 %.07382.us.us.i, 1
  %.not.us.us.i = icmp eq i64 %i.aj, 0            ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ai ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ai ; 2 uses
  %i.am = select i1 %.not.us.us.i, ptr %i.al, ptr %i.ak ; 19 uses
  %i.an = select i1 %.not.us.us.i, ptr %i.ak, ptr %i.al ; 19 uses
  %factor.op.mul.reass.us.us.i = mul i64 %.07382.us.us.i, %factor.op.mul81.i ; 2 uses
  br i1 %min.iters.check351, label %scalar.ph350.preheader, label %vector.memcheck224

vector.memcheck224:                               ; preds = %.lr.ph.us.us.i
  %scevgep225 = getelementptr i8, ptr %i.am, i64 %i.z ; 7 uses
  %scevgep226 = getelementptr i8, ptr %i.an, i64 %i.z ; 7 uses
  %scevgep227 = getelementptr nuw i8, ptr %i.am, i64 4 ; 7 uses
  %scevgep228 = getelementptr i8, ptr %i.am, i64 %i.aa ; 7 uses
  %scevgep229 = getelementptr nuw i8, ptr %i.an, i64 4 ; 7 uses
  %scevgep230 = getelementptr i8, ptr %i.an, i64 %i.aa ; 7 uses
  %scevgep231 = getelementptr nuw i8, ptr %i.am, i64 8 ; 7 uses
  %scevgep232 = getelementptr i8, ptr %i.am, i64 %i.ab ; 7 uses
  %scevgep233 = getelementptr nuw i8, ptr %i.an, i64 8 ; 7 uses
  %scevgep234 = getelementptr i8, ptr %i.an, i64 %i.ab ; 7 uses
  %scevgep235 = getelementptr nuw i8, ptr %i.am, i64 12 ; 7 uses
  %scevgep236 = getelementptr i8, ptr %i.am, i64 %i.y ; 7 uses
  %scevgep237 = getelementptr nuw i8, ptr %i.an, i64 12 ; 7 uses
  %scevgep238 = getelementptr i8, ptr %i.an, i64 %i.y ; 7 uses
  %bound0239 = icmp ult ptr %i.am, %scevgep226
  %bound1240 = icmp ult ptr %i.an, %scevgep225
  %found.conflict241 = and i1 %bound0239, %bound1240
  %bound0242 = icmp ult ptr %i.am, %scevgep228
  %bound1243 = icmp ult ptr %scevgep227, %scevgep225
  %found.conflict244 = and i1 %bound0242, %bound1243
  %conflict.rdx245 = or i1 %found.conflict241, %found.conflict244
  %bound0246 = icmp ult ptr %i.am, %scevgep230
  %bound1247 = icmp ult ptr %scevgep229, %scevgep225
  %found.conflict248 = and i1 %bound0246, %bound1247
  %conflict.rdx249 = or i1 %conflict.rdx245, %found.conflict248
  %bound0250 = icmp ult ptr %i.am, %scevgep232
  %bound1251 = icmp ult ptr %scevgep231, %scevgep225
  %found.conflict252 = and i1 %bound0250, %bound1251
  %conflict.rdx253 = or i1 %conflict.rdx249, %found.conflict252
  %bound0254 = icmp ult ptr %i.am, %scevgep234
  %bound1255 = icmp ult ptr %scevgep233, %scevgep225
  %found.conflict256 = and i1 %bound0254, %bound1255
  %conflict.rdx257 = or i1 %conflict.rdx253, %found.conflict256
  %bound0258 = icmp ult ptr %i.am, %scevgep236
  %bound1259 = icmp ult ptr %scevgep235, %scevgep225
  %found.conflict260 = and i1 %bound0258, %bound1259
  %conflict.rdx261 = or i1 %conflict.rdx257, %found.conflict260
  %bound0262 = icmp ult ptr %i.am, %scevgep238
  %bound1263 = icmp ult ptr %scevgep237, %scevgep225
  %found.conflict264 = and i1 %bound0262, %bound1263
  %conflict.rdx265 = or i1 %conflict.rdx261, %found.conflict264
  %bound0266 = icmp ult ptr %i.an, %scevgep228
  %bound1267 = icmp ult ptr %scevgep227, %scevgep226
  %found.conflict268 = and i1 %bound0266, %bound1267
  %conflict.rdx269 = or i1 %conflict.rdx265, %found.conflict268
  %bound0270 = icmp ult ptr %i.an, %scevgep230
  %bound1271 = icmp ult ptr %scevgep229, %scevgep226
  %found.conflict272 = and i1 %bound0270, %bound1271
  %conflict.rdx273 = or i1 %conflict.rdx269, %found.conflict272
  %bound0274 = icmp ult ptr %i.an, %scevgep232
  %bound1275 = icmp ult ptr %scevgep231, %scevgep226
  %found.conflict276 = and i1 %bound0274, %bound1275
  %conflict.rdx277 = or i1 %conflict.rdx273, %found.conflict276
  %bound0278 = icmp ult ptr %i.an, %scevgep234
  %bound1279 = icmp ult ptr %scevgep233, %scevgep226
  %found.conflict280 = and i1 %bound0278, %bound1279
  %conflict.rdx281 = or i1 %conflict.rdx277, %found.conflict280
  %bound0282 = icmp ult ptr %i.an, %scevgep236
  %bound1283 = icmp ult ptr %scevgep235, %scevgep226
  %found.conflict284 = and i1 %bound0282, %bound1283
  %conflict.rdx285 = or i1 %conflict.rdx281, %found.conflict284
  %bound0286 = icmp ult ptr %i.an, %scevgep238
  %bound1287 = icmp ult ptr %scevgep237, %scevgep226
  %found.conflict288 = and i1 %bound0286, %bound1287
  %conflict.rdx289 = or i1 %conflict.rdx285, %found.conflict288
  %bound0290 = icmp ult ptr %scevgep227, %scevgep230
  %bound1291 = icmp ult ptr %scevgep229, %scevgep228
  %found.conflict292 = and i1 %bound0290, %bound1291
  %conflict.rdx293 = or i1 %conflict.rdx289, %found.conflict292
  %bound0294 = icmp ult ptr %scevgep227, %scevgep232
  %bound1295 = icmp ult ptr %scevgep231, %scevgep228
  %found.conflict296 = and i1 %bound0294, %bound1295
  %conflict.rdx297 = or i1 %conflict.rdx293, %found.conflict296
  %bound0298 = icmp ult ptr %scevgep227, %scevgep234
  %bound1299 = icmp ult ptr %scevgep233, %scevgep228
  %found.conflict300 = and i1 %bound0298, %bound1299
  %conflict.rdx301 = or i1 %conflict.rdx297, %found.conflict300
  %bound0302 = icmp ult ptr %scevgep227, %scevgep236
  %bound1303 = icmp ult ptr %scevgep235, %scevgep228
  %found.conflict304 = and i1 %bound0302, %bound1303
  %conflict.rdx305 = or i1 %conflict.rdx301, %found.conflict304
  %bound0306 = icmp ult ptr %scevgep227, %scevgep238
  %bound1307 = icmp ult ptr %scevgep237, %scevgep228
  %found.conflict308 = and i1 %bound0306, %bound1307
  %conflict.rdx309 = or i1 %conflict.rdx305, %found.conflict308
  %bound0310 = icmp ult ptr %scevgep229, %scevgep232
  %bound1311 = icmp ult ptr %scevgep231, %scevgep230
  %found.conflict312 = and i1 %bound0310, %bound1311
  %conflict.rdx313 = or i1 %conflict.rdx309, %found.conflict312
  %bound0314 = icmp ult ptr %scevgep229, %scevgep234
  %bound1315 = icmp ult ptr %scevgep233, %scevgep230
  %found.conflict316 = and i1 %bound0314, %bound1315
  %conflict.rdx317 = or i1 %conflict.rdx313, %found.conflict316
  %bound0318 = icmp ult ptr %scevgep229, %scevgep236
  %bound1319 = icmp ult ptr %scevgep235, %scevgep230
  %found.conflict320 = and i1 %bound0318, %bound1319
  %conflict.rdx321 = or i1 %conflict.rdx317, %found.conflict320
  %bound0322 = icmp ult ptr %scevgep229, %scevgep238
  %bound1323 = icmp ult ptr %scevgep237, %scevgep230
  %found.conflict324 = and i1 %bound0322, %bound1323
  %conflict.rdx325 = or i1 %conflict.rdx321, %found.conflict324
  %bound0326 = icmp ult ptr %scevgep231, %scevgep234
  %bound1327 = icmp ult ptr %scevgep233, %scevgep232
  %found.conflict328 = and i1 %bound0326, %bound1327
  %conflict.rdx329 = or i1 %conflict.rdx325, %found.conflict328
  %bound0330 = icmp ult ptr %scevgep231, %scevgep236
  %bound1331 = icmp ult ptr %scevgep235, %scevgep232
  %found.conflict332 = and i1 %bound0330, %bound1331
  %conflict.rdx333 = or i1 %conflict.rdx329, %found.conflict332
  %bound0334 = icmp ult ptr %scevgep231, %scevgep238
  %bound1335 = icmp ult ptr %scevgep237, %scevgep232
  %found.conflict336 = and i1 %bound0334, %bound1335
  %conflict.rdx337 = or i1 %conflict.rdx333, %found.conflict336
  %bound0338 = icmp ult ptr %scevgep233, %scevgep236
  %bound1339 = icmp ult ptr %scevgep235, %scevgep234
  %found.conflict340 = and i1 %bound0338, %bound1339
  %conflict.rdx341 = or i1 %conflict.rdx337, %found.conflict340
  %bound0342 = icmp ult ptr %scevgep233, %scevgep238
  %bound1343 = icmp ult ptr %scevgep237, %scevgep234
  %found.conflict344 = and i1 %bound0342, %bound1343
  %conflict.rdx345 = or i1 %conflict.rdx341, %found.conflict344
  %bound0346 = icmp ult ptr %scevgep235, %scevgep238
  %bound1347 = icmp ult ptr %scevgep237, %scevgep236
  %found.conflict348 = and i1 %bound0346, %bound1347
  %conflict.rdx349 = or i1 %conflict.rdx345, %found.conflict348
  br i1 %conflict.rdx349, label %scalar.ph350.preheader, label %vector.ph352

vector.ph352:                                     ; preds = %vector.memcheck224
  %broadcast.splatinsert355 = insertelement <8 x i64> poison, i64 %factor.op.mul.reass.us.us.i, i64 0
  %broadcast.splat356 = shufflevector <8 x i64> %broadcast.splatinsert355, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body357

vector.body357:                                   ; preds = %vector.body357, %vector.ph352
  %index358 = phi i64 [ 0, %vector.ph352 ], [ %index.next394, %vector.body357 ] ; 2 uses
  %vec.ind359 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph352 ], [ %vec.ind.next395, %vector.body357 ] ; 2 uses
  %i.ao = shl <8 x i64> %vec.ind359, splat (i64 3)
  %i.ap = add <8 x i64> %i.ao, %broadcast.splat356 ; 9 uses
  %i.aq = shl i64 %index358, 2                    ; 2 uses
  %i.ar = or disjoint <8 x i64> %i.ap, splat (i64 4) ; 2 uses
  %wide.gep360 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.ap
  %wide.masked.gather361 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep360, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %wide.gep362 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.ap
  %wide.masked.gather363 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep362, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aq
  %wide.gep364 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.ar
  %wide.masked.gather365 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep364, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %wide.gep366 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.ar
  %wide.masked.gather367 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep366, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.aq
  %i.au = or disjoint <8 x i64> %i.ap, splat (i64 1) ; 2 uses
  %wide.gep368 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.au
  %wide.masked.gather369 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep368, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %wide.gep370 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.au
  %wide.masked.gather371 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep370, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %i.av = or disjoint <8 x i64> %i.ap, splat (i64 5) ; 2 uses
  %wide.gep372 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.av
  %wide.masked.gather373 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep372, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %wide.gep374 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.av
  %wide.masked.gather375 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep374, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %i.aw = or disjoint <8 x i64> %i.ap, splat (i64 2) ; 2 uses
  %wide.gep376 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.aw
  %wide.masked.gather377 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep376, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %wide.gep378 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.aw
  %wide.masked.gather379 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep378, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %i.ax = or disjoint <8 x i64> %i.ap, splat (i64 6) ; 2 uses
  %wide.gep380 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.ax
  %wide.masked.gather381 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep380, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %wide.gep382 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.ax
  %wide.masked.gather383 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep382, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %i.ay = or disjoint <8 x i64> %i.ap, splat (i64 3) ; 2 uses
  %wide.gep384 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.ay
  %wide.masked.gather385 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep384, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %wide.gep386 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.ay
  %wide.masked.gather387 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep386, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %7 = shufflevector <8 x float> %wide.masked.gather361, <8 x float> %wide.masked.gather369, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %8 = shufflevector <8 x float> %wide.masked.gather363, <8 x float> %wide.masked.gather371, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %9 = fsub reassoc nsz arcp contract afn <16 x float> %7, %8
  %10 = shufflevector <8 x float> %wide.masked.gather377, <8 x float> %wide.masked.gather385, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %11 = shufflevector <8 x float> %wide.masked.gather379, <8 x float> %wide.masked.gather387, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %12 = fsub reassoc nsz arcp contract afn <16 x float> %10, %11
  %interleaved.vec388 = shufflevector <16 x float> %9, <16 x float> %12, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec388, ptr %i.as, align 16, !tbaa !16, !alias.scope !18
  %i.az = or disjoint <8 x i64> %i.ap, splat (i64 7) ; 2 uses
  %wide.gep389 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.az
  %wide.masked.gather390 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep389, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %wide.gep391 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.az
  %wide.masked.gather392 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep391, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %13 = shufflevector <8 x float> %wide.masked.gather365, <8 x float> %wide.masked.gather373, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %14 = shufflevector <8 x float> %wide.masked.gather367, <8 x float> %wide.masked.gather375, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %15 = fsub reassoc nsz arcp contract afn <16 x float> %13, %14
  %16 = shufflevector <8 x float> %wide.masked.gather381, <8 x float> %wide.masked.gather390, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %17 = shufflevector <8 x float> %wide.masked.gather383, <8 x float> %wide.masked.gather392, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %18 = fsub reassoc nsz arcp contract afn <16 x float> %16, %17
  %interleaved.vec393 = shufflevector <16 x float> %15, <16 x float> %18, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec393, ptr %i.at, align 16, !tbaa !16, !alias.scope !18
  %index.next394 = add nuw i64 %index358, 8       ; 2 uses
  %vec.ind.next395 = add nuw nsw <8 x i64> %vec.ind359, splat (i64 8)
  %i.ba = icmp eq i64 %index.next394, %n.vec354
  br i1 %i.ba, label %middle.block396, label %vector.body357, !llvm.loop !19

middle.block396:                                  ; preds = %vector.body357
  br i1 %cmp.n397, label %._crit_edge.us.us.i, label %scalar.ph350.preheader

scalar.ph350.preheader:                           ; preds = %vector.memcheck224, %.lr.ph.us.us.i, %middle.block396
  %.07579.us.us.i.ph = phi i64 [ 0, %vector.memcheck224 ], [ 0, %.lr.ph.us.us.i ], [ %n.vec354, %middle.block396 ]
  br label %scalar.ph350

scalar.ph350:                                     ; preds = %scalar.ph350.preheader, %scalar.ph350
  %.07579.us.us.i = phi i64 [ %i.cc, %scalar.ph350 ], [ %.07579.us.us.i.ph, %scalar.ph350.preheader ] ; 3 uses
  %i.bb = shl i64 %.07579.us.us.i, 3
  %i.bc = add i64 %i.bb, %factor.op.mul.reass.us.us.i ; 2 uses
  %i.bd = shl i64 %.07579.us.us.i, 2              ; 5 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bc
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bc
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.bd
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bd
  %i.bi = or disjoint i64 %i.bd, 1                ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bi
  %i.bl = or disjoint i64 %i.bd, 2                ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bl
  %i.bo = or disjoint i64 %i.bd, 3                ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.bo
  %i.bq = load <8 x float>, ptr %i.be, align 4, !tbaa !16, !noalias !18
  %i.br = load <8 x float>, ptr %i.bf, align 4, !tbaa !16, !noalias !18
  %i.bs = fsub reassoc nsz arcp contract afn <8 x float> %i.bq, %i.br ; 8 uses
  %i.bt = extractelement <8 x float> %i.bs, i64 0
  store float %i.bt, ptr %i.bg, align 16, !tbaa !16, !alias.scope !18
  %i.bu = extractelement <8 x float> %i.bs, i64 4
  store float %i.bu, ptr %i.bh, align 16, !tbaa !16, !alias.scope !18
  %i.bv = extractelement <8 x float> %i.bs, i64 1
  store float %i.bv, ptr %i.bj, align 4, !tbaa !16, !alias.scope !18
  %i.bw = extractelement <8 x float> %i.bs, i64 5
  store float %i.bw, ptr %i.bk, align 4, !tbaa !16, !alias.scope !18
  %i.bx = extractelement <8 x float> %i.bs, i64 2
  store float %i.bx, ptr %i.bm, align 8, !tbaa !16, !alias.scope !18
  %i.by = extractelement <8 x float> %i.bs, i64 6
  store float %i.by, ptr %i.bn, align 8, !tbaa !16, !alias.scope !18
  %i.bz = extractelement <8 x float> %i.bs, i64 3
  store float %i.bz, ptr %i.bp, align 4, !tbaa !16, !alias.scope !18
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bo
  %i.cb = extractelement <8 x float> %i.bs, i64 7
  store float %i.cb, ptr %i.ca, align 4, !tbaa !16, !alias.scope !18
  %i.cc = add nuw nsw i64 %.07579.us.us.i, 1      ; 2 uses
  %exitcond93.not.i = icmp eq i64 %i.cc, %i.v
  br i1 %exitcond93.not.i, label %._crit_edge.us.us.i, label %scalar.ph350, !llvm.loop !22

._crit_edge.us.us.i:                              ; preds = %scalar.ph350, %middle.block396
  %exitcond94.not.i = icmp eq i64 %i.ah, %i.r
  br i1 %exitcond94.not.i, label %_heal_sub.exit, label %.lr.ph.us.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %.07382.us.i = phi i64 [ %i.cd, %._crit_edge.us.i ], [ 0, %.lr.ph.us.preheader.i ] ; 4 uses
  %i.cd = add nuw i64 %.07382.us.i, 1             ; 3 uses
  %i.ce = mul i64 %i.cd, %i.u                     ; 2 uses
  %i.cf = and i64 %.07382.us.i, 1
  %.not.us.i = icmp eq i64 %i.cf, 0               ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ce ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ce ; 2 uses
  %i.ci = select i1 %.not.us.i, ptr %i.ch, ptr %i.cg ; 20 uses
  %i.cj = select i1 %.not.us.i, ptr %i.cg, ptr %i.ch ; 20 uses
  %factor.op.mul.reass.us.i = mul i64 %.07382.us.i, %factor.op.mul81.i ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us.i
  %scevgep = getelementptr i8, ptr %i.ci, i64 %i.ae ; 7 uses
  %scevgep73 = getelementptr i8, ptr %i.cj, i64 %i.ae ; 7 uses
  %scevgep74 = getelementptr nuw i8, ptr %i.ci, i64 4 ; 7 uses
  %scevgep75 = getelementptr i8, ptr %i.ci, i64 %i.af ; 7 uses
  %scevgep76 = getelementptr nuw i8, ptr %i.cj, i64 4 ; 7 uses
  %scevgep77 = getelementptr i8, ptr %i.cj, i64 %i.af ; 7 uses
  %scevgep78 = getelementptr nuw i8, ptr %i.ci, i64 8 ; 7 uses
  %scevgep79 = getelementptr i8, ptr %i.ci, i64 %i.ag ; 7 uses
  %scevgep80 = getelementptr nuw i8, ptr %i.cj, i64 8 ; 7 uses
  %scevgep81 = getelementptr i8, ptr %i.cj, i64 %i.ag ; 7 uses
  %scevgep82 = getelementptr nuw i8, ptr %i.ci, i64 12 ; 7 uses
  %scevgep83 = getelementptr i8, ptr %i.ci, i64 %i.ad ; 7 uses
  %scevgep84 = getelementptr nuw i8, ptr %i.cj, i64 12 ; 7 uses
  %scevgep85 = getelementptr i8, ptr %i.cj, i64 %i.ad ; 7 uses
  %bound0 = icmp ult ptr %i.ci, %scevgep73
  %bound1 = icmp ult ptr %i.cj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound086 = icmp ult ptr %i.ci, %scevgep75
  %bound187 = icmp ult ptr %scevgep74, %scevgep
  %found.conflict88 = and i1 %bound086, %bound187
  %conflict.rdx = or i1 %found.conflict, %found.conflict88
  %bound089 = icmp ult ptr %i.ci, %scevgep77
  %bound190 = icmp ult ptr %scevgep76, %scevgep
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %conflict.rdx, %found.conflict91
  %bound093 = icmp ult ptr %i.ci, %scevgep79
  %bound194 = icmp ult ptr %scevgep78, %scevgep
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx96 = or i1 %conflict.rdx92, %found.conflict95
  %bound097 = icmp ult ptr %i.ci, %scevgep81
  %bound198 = icmp ult ptr %scevgep80, %scevgep
  %found.conflict99 = and i1 %bound097, %bound198
  %conflict.rdx100 = or i1 %conflict.rdx96, %found.conflict99
  %bound0101 = icmp ult ptr %i.ci, %scevgep83
  %bound1102 = icmp ult ptr %scevgep82, %scevgep
  %found.conflict103 = and i1 %bound0101, %bound1102
  %conflict.rdx104 = or i1 %conflict.rdx100, %found.conflict103
  %bound0105 = icmp ult ptr %i.ci, %scevgep85
  %bound1106 = icmp ult ptr %scevgep84, %scevgep
  %found.conflict107 = and i1 %bound0105, %bound1106
  %conflict.rdx108 = or i1 %conflict.rdx104, %found.conflict107
  %bound0109 = icmp ult ptr %i.cj, %scevgep75
  %bound1110 = icmp ult ptr %scevgep74, %scevgep73
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %conflict.rdx108, %found.conflict111
  %bound0113 = icmp ult ptr %i.cj, %scevgep77
  %bound1114 = icmp ult ptr %scevgep76, %scevgep73
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx116 = or i1 %conflict.rdx112, %found.conflict115
  %bound0117 = icmp ult ptr %i.cj, %scevgep79
  %bound1118 = icmp ult ptr %scevgep78, %scevgep73
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx120 = or i1 %conflict.rdx116, %found.conflict119
  %bound0121 = icmp ult ptr %i.cj, %scevgep81
  %bound1122 = icmp ult ptr %scevgep80, %scevgep73
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx124 = or i1 %conflict.rdx120, %found.conflict123
  %bound0125 = icmp ult ptr %i.cj, %scevgep83
  %bound1126 = icmp ult ptr %scevgep82, %scevgep73
  %found.conflict127 = and i1 %bound0125, %bound1126
  %conflict.rdx128 = or i1 %conflict.rdx124, %found.conflict127
  %bound0129 = icmp ult ptr %i.cj, %scevgep85
  %bound1130 = icmp ult ptr %scevgep84, %scevgep73
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx132 = or i1 %conflict.rdx128, %found.conflict131
  %bound0133 = icmp ult ptr %scevgep74, %scevgep77
  %bound1134 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx136 = or i1 %conflict.rdx132, %found.conflict135
  %bound0137 = icmp ult ptr %scevgep74, %scevgep79
  %bound1138 = icmp ult ptr %scevgep78, %scevgep75
  %found.conflict139 = and i1 %bound0137, %bound1138
  %conflict.rdx140 = or i1 %conflict.rdx136, %found.conflict139
  %bound0141 = icmp ult ptr %scevgep74, %scevgep81
  %bound1142 = icmp ult ptr %scevgep80, %scevgep75
  %found.conflict143 = and i1 %bound0141, %bound1142
  %conflict.rdx144 = or i1 %conflict.rdx140, %found.conflict143
  %bound0145 = icmp ult ptr %scevgep74, %scevgep83
  %bound1146 = icmp ult ptr %scevgep82, %scevgep75
  %found.conflict147 = and i1 %bound0145, %bound1146
  %conflict.rdx148 = or i1 %conflict.rdx144, %found.conflict147
  %bound0149 = icmp ult ptr %scevgep74, %scevgep85
  %bound1150 = icmp ult ptr %scevgep84, %scevgep75
  %found.conflict151 = and i1 %bound0149, %bound1150
  %conflict.rdx152 = or i1 %conflict.rdx148, %found.conflict151
  %bound0153 = icmp ult ptr %scevgep76, %scevgep79
  %bound1154 = icmp ult ptr %scevgep78, %scevgep77
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %conflict.rdx152, %found.conflict155
  %bound0157 = icmp ult ptr %scevgep76, %scevgep81
  %bound1158 = icmp ult ptr %scevgep80, %scevgep77
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %conflict.rdx156, %found.conflict159
  %bound0161 = icmp ult ptr %scevgep76, %scevgep83
  %bound1162 = icmp ult ptr %scevgep82, %scevgep77
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx164 = or i1 %conflict.rdx160, %found.conflict163
  %bound0165 = icmp ult ptr %scevgep76, %scevgep85
  %bound1166 = icmp ult ptr %scevgep84, %scevgep77
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx168 = or i1 %conflict.rdx164, %found.conflict167
  %bound0169 = icmp ult ptr %scevgep78, %scevgep81
  %bound1170 = icmp ult ptr %scevgep80, %scevgep79
  %found.conflict171 = and i1 %bound0169, %bound1170
  %conflict.rdx172 = or i1 %conflict.rdx168, %found.conflict171
  %bound0173 = icmp ult ptr %scevgep78, %scevgep83
  %bound1174 = icmp ult ptr %scevgep82, %scevgep79
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx176 = or i1 %conflict.rdx172, %found.conflict175
  %bound0177 = icmp ult ptr %scevgep78, %scevgep85
  %bound1178 = icmp ult ptr %scevgep84, %scevgep79
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %conflict.rdx176, %found.conflict179
  %bound0181 = icmp ult ptr %scevgep80, %scevgep83
  %bound1182 = icmp ult ptr %scevgep82, %scevgep81
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %conflict.rdx180, %found.conflict183
  %bound0185 = icmp ult ptr %scevgep80, %scevgep85
  %bound1186 = icmp ult ptr %scevgep84, %scevgep81
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx188 = or i1 %conflict.rdx184, %found.conflict187
  %bound0189 = icmp ult ptr %scevgep82, %scevgep85
  %bound1190 = icmp ult ptr %scevgep84, %scevgep83
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx192 = or i1 %conflict.rdx188, %found.conflict191
  br i1 %conflict.rdx192, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %factor.op.mul.reass.us.i, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ck = shl <8 x i64> %vec.ind, splat (i64 3)
  %i.cl = add <8 x i64> %i.ck, %broadcast.splat   ; 9 uses
  %i.cm = shl i64 %index, 2                       ; 2 uses
  %i.cn = add <8 x i64> %i.cl, splat (i64 4)      ; 2 uses
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.cl
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %wide.gep193 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.cl
  %wide.masked.gather194 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep193, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cm
  %wide.gep195 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.cn
  %wide.masked.gather196 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep195, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %wide.gep197 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.cn
  %wide.masked.gather198 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep197, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cm
  %i.cq = or disjoint <8 x i64> %i.cl, splat (i64 1) ; 2 uses
  %wide.gep199 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.cq
  %wide.masked.gather200 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep199, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %wide.gep201 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.cq
  %wide.masked.gather202 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep201, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %i.cr = add <8 x i64> %i.cl, splat (i64 5)      ; 2 uses
  %wide.gep203 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.cr
  %wide.masked.gather204 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep203, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %wide.gep205 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.cr
  %wide.masked.gather206 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep205, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %i.cs = or disjoint <8 x i64> %i.cl, splat (i64 2) ; 2 uses
  %wide.gep207 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.cs
  %wide.masked.gather208 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep207, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %wide.gep209 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.cs
  %wide.masked.gather210 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep209, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %i.ct = add <8 x i64> %i.cl, splat (i64 6)      ; 2 uses
  %wide.gep211 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.ct
  %wide.masked.gather212 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep211, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %wide.gep213 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.ct
  %wide.masked.gather214 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep213, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %i.cu = or disjoint <8 x i64> %i.cl, splat (i64 3) ; 2 uses
  %wide.gep215 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.cu
  %wide.masked.gather216 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep215, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %wide.gep217 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.cu
  %wide.masked.gather218 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep217, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %19 = shufflevector <8 x float> %wide.masked.gather, <8 x float> %wide.masked.gather200, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %20 = shufflevector <8 x float> %wide.masked.gather194, <8 x float> %wide.masked.gather202, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %21 = fsub reassoc nsz arcp contract afn <16 x float> %19, %20
  %22 = shufflevector <8 x float> %wide.masked.gather208, <8 x float> %wide.masked.gather216, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %23 = shufflevector <8 x float> %wide.masked.gather210, <8 x float> %wide.masked.gather218, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %24 = fsub reassoc nsz arcp contract afn <16 x float> %22, %23
  %interleaved.vec = shufflevector <16 x float> %21, <16 x float> %24, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.co, align 16, !tbaa !16, !alias.scope !18
  %i.cv = add <8 x i64> %i.cl, splat (i64 7)      ; 2 uses
  %wide.gep219 = getelementptr inbounds nuw [4 x i8], ptr %1, <8 x i64> %i.cv
  %wide.masked.gather220 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep219, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %wide.gep221 = getelementptr inbounds nuw [4 x i8], ptr %0, <8 x i64> %i.cv
  %wide.masked.gather222 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep221, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !16, !noalias !18
  %25 = shufflevector <8 x float> %wide.masked.gather196, <8 x float> %wide.masked.gather204, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %26 = shufflevector <8 x float> %wide.masked.gather198, <8 x float> %wide.masked.gather206, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %27 = fsub reassoc nsz arcp contract afn <16 x float> %25, %26
  %28 = shufflevector <8 x float> %wide.masked.gather212, <8 x float> %wide.masked.gather220, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %29 = shufflevector <8 x float> %wide.masked.gather214, <8 x float> %wide.masked.gather222, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %30 = fsub reassoc nsz arcp contract afn <16 x float> %28, %29
  %interleaved.vec223 = shufflevector <16 x float> %27, <16 x float> %30, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec223, ptr %i.cp, align 16, !tbaa !16, !alias.scope !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us.i, %middle.block
  %.07579.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07579.us.i = phi i64 [ %i.dy, %scalar.ph ], [ %.07579.us.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cx = shl i64 %.07579.us.i, 3
  %i.cy = add i64 %i.cx, %factor.op.mul.reass.us.i ; 2 uses
  %i.cz = shl i64 %.07579.us.i, 2                 ; 5 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cy
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cy
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cz
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cz
  %i.de = or disjoint i64 %i.cz, 1                ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.de
  %i.dh = or disjoint i64 %i.cz, 2                ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.dh
  %i.dk = or disjoint i64 %i.cz, 3                ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.dk
  %i.dm = load <8 x float>, ptr %i.da, align 4, !tbaa !16, !noalias !18
  %i.dn = load <8 x float>, ptr %i.db, align 4, !tbaa !16, !noalias !18
  %i.do = fsub reassoc nsz arcp contract afn <8 x float> %i.dm, %i.dn ; 8 uses
  %i.dp = extractelement <8 x float> %i.do, i64 0
  store float %i.dp, ptr %i.dc, align 16, !tbaa !16, !alias.scope !18
  %i.dq = extractelement <8 x float> %i.do, i64 4
  store float %i.dq, ptr %i.dd, align 16, !tbaa !16, !alias.scope !18
  %i.dr = extractelement <8 x float> %i.do, i64 1
  store float %i.dr, ptr %i.df, align 4, !tbaa !16, !alias.scope !18
  %i.ds = extractelement <8 x float> %i.do, i64 5
  store float %i.ds, ptr %i.dg, align 4, !tbaa !16, !alias.scope !18
  %i.dt = extractelement <8 x float> %i.do, i64 2
  store float %i.dt, ptr %i.di, align 8, !tbaa !16, !alias.scope !18
  %i.du = extractelement <8 x float> %i.do, i64 6
  store float %i.du, ptr %i.dj, align 8, !tbaa !16, !alias.scope !18
  %i.dv = extractelement <8 x float> %i.do, i64 3
  store float %i.dv, ptr %i.dl, align 4, !tbaa !16, !alias.scope !18
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.dk
  %i.dx = extractelement <8 x float> %i.do, i64 7
  store float %i.dx, ptr %i.dw, align 4, !tbaa !16, !alias.scope !18
  %i.dy = add nuw nsw i64 %.07579.us.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dy, %i.v
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !24

._crit_edge.us.i:                                 ; preds = %scalar.ph, %middle.block
  %i.dz = mul i64 %.07382.us.i, %i.q
  %i.ea = add i64 %i.dz, %i.x
  %i.eb = shl i64 %i.ea, 2                        ; 2 uses
  %i.ec = getelementptr i8, ptr %i.cj, i64 %i.ac
  %scevgep.i = getelementptr i8, ptr %i.ec, i64 -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep.i, i8 0, i64 16, i1 false), !tbaa !16, !alias.scope !18
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eb
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eb
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx
  %i.eg = load <4 x float>, ptr %i.ed, align 4, !tbaa !16, !noalias !18
  %i.eh = load <4 x float>, ptr %i.ee, align 4, !tbaa !16, !noalias !18
  %i.ei = fsub reassoc nsz arcp contract afn <4 x float> %i.eg, %i.eh
  store <4 x float> %i.ei, ptr %i.ef, align 8, !tbaa !16, !alias.scope !18
  %exitcond91.not.i = icmp eq i64 %i.cd, %i.r
  br i1 %exitcond91.not.i, label %_heal_sub.exit, label %.lr.ph.us.i

.lr.ph84.split.i:                                 ; preds = %.lr.ph84.i
  br i1 %.not77.i, label %_heal_sub.exit, label %.lr.ph84.split.split.i.preheader

.lr.ph84.split.split.i.preheader:                 ; preds = %.lr.ph84.split.i
  %xtraiter = and i64 %i.r, 3
  %i.ej = icmp ult i32 %4, 4
  br i1 %i.ej, label %.lr.ph84.split.split.i.epil.preheader, label %.lr.ph84.split.split.i.preheader.new

.lr.ph84.split.split.i.preheader.new:             ; preds = %.lr.ph84.split.split.i.preheader
  %unroll_iter = and i64 %i.r, -4
  br label %.lr.ph84.split.split.i

.lr.ph84.split.split.i:                           ; preds = %.lr.ph84.split.split.i, %.lr.ph84.split.split.i.preheader.new
  %.07382.i = phi i64 [ 0, %.lr.ph84.split.split.i.preheader.new ], [ %i.fo, %.lr.ph84.split.split.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph84.split.split.i.preheader.new ], [ %niter.next.3, %.lr.ph84.split.split.i ]
  %i.ek = or disjoint i64 %.07382.i, 1            ; 2 uses
  %i.el = mul i64 %i.ek, %i.u                     ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.el
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.el
  %i.eo = shl i64 %.07382.i, 2                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.em, i8 0, i64 16, i1 false), !tbaa !16, !alias.scope !18
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eo
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eo
  %i.er = load <4 x float>, ptr %i.ep, align 4, !tbaa !16, !noalias !18
  %i.es = load <4 x float>, ptr %i.eq, align 4, !tbaa !16, !noalias !18
  %i.et = fsub reassoc nsz arcp contract afn <4 x float> %i.er, %i.es
  store <4 x float> %i.et, ptr %i.en, align 16, !tbaa !16, !alias.scope !18
  %i.eu = or disjoint i64 %.07382.i, 2            ; 2 uses
  %i.ev = mul i64 %i.eu, %i.u                     ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ev
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ev
  %i.ey = shl i64 %i.ek, 2                        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(16) %i.ex, i8 0, i64 16, i1 false), !tbaa !16, !alias.scope !18
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ey
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ey
  %i.fb = load <4 x float>, ptr %i.ez, align 4, !tbaa !16, !noalias !18
  %i.fc = load <4 x float>, ptr %i.fa, align 4, !tbaa !16, !noalias !18
  %i.fd = fsub reassoc nsz arcp contract afn <4 x float> %i.fb, %i.fc
  store <4 x float> %i.fd, ptr %i.ew, align 32, !tbaa !16, !alias.scope !18
  %i.fe = or disjoint i64 %.07382.i, 3            ; 2 uses
  %i.ff = mul i64 %i.fe, %i.u                     ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ff
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ff
  %i.fi = shl i64 %i.eu, 2                        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fg, i8 0, i64 16, i1 false), !tbaa !16, !alias.scope !18
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fi
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fi
  %i.fl = load <4 x float>, ptr %i.fj, align 4, !tbaa !16, !noalias !18
  %i.fm = load <4 x float>, ptr %i.fk, align 4, !tbaa !16, !noalias !18
  %i.fn = fsub reassoc nsz arcp contract afn <4 x float> %i.fl, %i.fm
  store <4 x float> %i.fn, ptr %i.fh, align 16, !tbaa !16, !alias.scope !18
  %i.fo = add nuw i64 %.07382.i, 4                ; 3 uses
  %i.fp = mul i64 %i.fo, %i.u                     ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.fp
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.fp
  %i.fs = shl i64 %i.fe, 2                        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.fr, i8 0, i64 16, i1 false), !tbaa !16, !alias.scope !18
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fs
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fs
  %i.fv = load <4 x float>, ptr %i.ft, align 4, !tbaa !16, !noalias !18
  %i.fw = load <4 x float>, ptr %i.fu, align 4, !tbaa !16, !noalias !18
  %i.fx = fsub reassoc nsz arcp contract afn <4 x float> %i.fv, %i.fw
  store <4 x float> %i.fx, ptr %i.fq, align 64, !tbaa !16, !alias.scope !18
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_heal_sub.exit.loopexit.unr-lcssa, label %.lr.ph84.split.split.i

_heal_sub.exit.loopexit.unr-lcssa:                ; preds = %.lr.ph84.split.split.i
  %i.fy = and i32 %4, 3
  %lcmp.mod.not = icmp eq i32 %i.fy, 0
  br i1 %lcmp.mod.not, label %_heal_sub.exit, label %.lr.ph84.split.split.i.epil.preheader

.lr.ph84.split.split.i.epil.preheader:            ; preds = %_heal_sub.exit.loopexit.unr-lcssa, %.lr.ph84.split.split.i.preheader
  %.07382.i.epil.init = phi i64 [ 0, %.lr.ph84.split.split.i.preheader ], [ %i.fo, %_heal_sub.exit.loopexit.unr-lcssa ]
  %i.fz = and i32 %4, 3
  %lcmp.mod534 = icmp ne i32 %i.fz, 0
  tail call void @llvm.assume(i1 %lcmp.mod534)
  br label %.lr.ph84.split.split.i.epil

.lr.ph84.split.split.i.epil:                      ; preds = %.lr.ph84.split.split.i.epil, %.lr.ph84.split.split.i.epil.preheader
  %.07382.i.epil = phi i64 [ %i.ga, %.lr.ph84.split.split.i.epil ], [ %.07382.i.epil.init, %.lr.ph84.split.split.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph84.split.split.i.epil ], [ 0, %.lr.ph84.split.split.i.epil.preheader ]
  %i.ga = add nuw i64 %.07382.i.epil, 1           ; 2 uses
  %i.gb = mul i64 %i.ga, %i.u                     ; 2 uses
  %i.gc = and i64 %.07382.i.epil, 1
  %.not.i.epil = icmp eq i64 %i.gc, 0             ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.gb ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.gb ; 2 uses
  %i.gf = select i1 %.not.i.epil, ptr %i.ge, ptr %i.gd
  %i.gg = select i1 %.not.i.epil, ptr %i.gd, ptr %i.ge
  %i.gh = shl i64 %.07382.i.epil, 2               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gg, i8 0, i64 16, i1 false), !tbaa !16, !alias.scope !18
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gh
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gh
  %i.gk = load <4 x float>, ptr %i.gi, align 4, !tbaa !16, !noalias !18
  %i.gl = load <4 x float>, ptr %i.gj, align 4, !tbaa !16, !noalias !18
  %i.gm = fsub reassoc nsz arcp contract afn <4 x float> %i.gk, %i.gl
  store <4 x float> %i.gm, ptr %i.gf, align 16, !tbaa !16, !alias.scope !18
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_heal_sub.exit, label %.lr.ph84.split.split.i.epil, !llvm.loop !25

_heal_sub.exit:                                   ; preds = %._crit_edge.us.i, %._crit_edge.us.us.i, %_heal_sub.exit.loopexit.unr-lcssa, %.lr.ph84.split.split.i.epil, %bb.e, %.lr.ph84.split.i
  %i.gn = shl nsw i64 %i.u, 2                     ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.m, i8 0, i64 %i.gn, i1 false), !alias.scope !11, !noalias !14
  %i.go = add nsw i64 %i.r, 1
  %i.gp = mul i64 %i.u, %i.go                     ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.gp
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.gq, i8 0, i64 %i.gn, i1 false), !alias.scope !11, !noalias !14
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.n, i8 0, i64 %i.gn, i1 false), !alias.scope !14, !noalias !11
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.gp
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.gr, i8 0, i64 %i.gn, i1 false), !alias.scope !14, !noalias !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.gs = add nsw i64 %i.q, 1
  %i.gt = lshr i64 %i.gs, 1                       ; 5 uses
  %i.gu = shl nsw i64 %i.r, 2
  %i.gv = add nsw i64 %i.gu, 8
  %i.gw = mul i64 %i.gv, %i.gt                    ; 2 uses
  %i.gx = tail call ptr @dt_alloc_aligned(i64 noundef %i.gw) #13, !noalias !27 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gx, i64 64) ]
  %i.gy = tail call ptr @dt_alloc_aligned(i64 noundef %i.gw) #13, !noalias !27 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gy, i64 64) ]
  %i.gz = icmp ne ptr %i.gx, null                 ; 2 uses
  %i.ha = icmp ne ptr %i.gy, null                 ; 2 uses
  %or.cond.i = select i1 %i.gz, i1 %i.ha, i1 false
end_hunk_0
