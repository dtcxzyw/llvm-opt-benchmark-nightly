Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlasdt?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define void @dlasdt_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 4)) %3, ptr nofree noundef captures(none) initializes((0, 4)) %4, ptr nofree noundef captures(none) initializes((0, 4)) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %5, i64 -4         ; 8 uses
  %i.b = getelementptr i8, ptr %4, i64 -4         ; 8 uses
  %i.c = getelementptr i8, ptr %3, i64 -4         ; 8 uses
  %i.d = load i32, ptr %0, align 4, !tbaa !21     ; 2 uses
  %i.e = icmp slt i32 %i.d, 2
  %i.f = uitofp nneg i32 %i.d to double
  %spec.select = select i1 %i.e, double 1.000000e+00, double %i.f
  %i.g = load i32, ptr %6, align 4, !tbaa !21
  %i.h = add nsw i32 %i.g, 1
  %i.i = sitofp i32 %i.h to double
  %i.j = fdiv double %spec.select, %i.i
  %i.k = tail call double @log(double noundef %i.j) #3
  %i.l = fdiv double %i.k, f0x3FE62E42FEFA39EF
  %i.m = fptosi double %i.l to i32
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %1, align 4, !tbaa !21
  %i.o = load i32, ptr %0, align 4, !tbaa !21
  %i.p = sdiv i32 %i.o, 2                         ; 3 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %3, align 4, !tbaa !21
  store i32 %i.p, ptr %4, align 4, !tbaa !21
  %i.r = load i32, ptr %0, align 4, !tbaa !21
  %i.s = xor i32 %i.p, -1
  %i.t = add i32 %i.r, %i.s
  store i32 %i.t, ptr %5, align 4, !tbaa !21
  %i.u = load i32, ptr %1, align 4, !tbaa !21     ; 2 uses
  %.not.not75 = icmp sgt i32 %i.u, 1
  br i1 %.not.not75, label %.preheader.preheader, label %._crit_edge80

.preheader.preheader:                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %3, i64 4      ; 2 uses
  %scevgep251 = getelementptr i8, ptr %5, i64 4   ; 2 uses
  %scevgep252 = getelementptr i8, ptr %4, i64 4   ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.079 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 1, %.preheader.preheader ] ; 2 uses
  %.06378 = phi i32 [ %.164.lcssa, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %.06677 = phi i32 [ %i.cx, %._crit_edge ], [ 1, %.preheader.preheader ] ; 5 uses
  %.06776 = phi i32 [ %i.cy, %._crit_edge ], [ 1, %.preheader.preheader ]
  %.not.not6970 = icmp sgt i32 %.06677, 0
  br i1 %.not.not6970, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.v = sext i32 %.079 to i64                    ; 5 uses
  %i.w = sext i32 %.06378 to i64                  ; 5 uses
  %i.x = zext nneg i32 %.06677 to i64             ; 7 uses
  %min.iters.check = icmp ult i32 %.06677, 25
  br i1 %min.iters.check, label %.lr.ph.preheader395, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.y = shl nsw i64 %i.w, 2                      ; 4 uses
  %i.z = getelementptr i8, ptr %scevgep252, i64 %i.y ; 8 uses
  %i.aa = shl nuw nsw i64 %i.x, 3                 ; 5 uses
  %i.ab = add nsw i64 %i.aa, %i.y                 ; 3 uses
  %i.ac = getelementptr i8, ptr %4, i64 %i.ab     ; 8 uses
  %i.ad = getelementptr i8, ptr %scevgep251, i64 %i.y ; 8 uses
  %i.ae = getelementptr i8, ptr %5, i64 %i.ab     ; 8 uses
  %i.af = getelementptr i8, ptr %scevgep, i64 %i.y ; 8 uses
  %i.ag = getelementptr i8, ptr %3, i64 %i.ab     ; 8 uses
  %i.ah = shl nsw i64 %i.v, 2                     ; 4 uses
  %i.ai = getelementptr i8, ptr %scevgep252, i64 %i.ah ; 8 uses
  %i.aj = add nsw i64 %i.aa, %i.ah                ; 3 uses
  %i.ak = getelementptr i8, ptr %4, i64 %i.aj     ; 8 uses
  %i.al = getelementptr i8, ptr %scevgep251, i64 %i.ah ; 8 uses
  %i.am = getelementptr i8, ptr %5, i64 %i.aj     ; 8 uses
  %i.an = getelementptr i8, ptr %scevgep, i64 %i.ah ; 8 uses
  %i.ao = getelementptr i8, ptr %3, i64 %i.aj     ; 8 uses
  %i.ap = shl nuw nsw i64 %i.x, 2                 ; 3 uses
  %i.aq = getelementptr i8, ptr %i.b, i64 %i.ap   ; 6 uses
  %i.ar = getelementptr i8, ptr %i.b, i64 %i.aa   ; 6 uses
  %i.as = getelementptr i8, ptr %i.c, i64 %i.ap   ; 6 uses
  %i.at = getelementptr i8, ptr %i.c, i64 %i.aa   ; 6 uses
  %i.au = getelementptr i8, ptr %i.a, i64 %i.ap   ; 6 uses
  %i.av = getelementptr i8, ptr %i.a, i64 %i.aa   ; 6 uses
  %bound0 = icmp ult ptr %i.z, %i.ae
  %bound1 = icmp ult ptr %i.ad, %i.ac
  %found.conflict = and i1 %bound0, %bound1
  %bound0251 = icmp ult ptr %i.z, %i.ag
  %bound1252 = icmp ult ptr %i.af, %i.ac
  %found.conflict253 = and i1 %bound0251, %bound1252
  %conflict.rdx = or i1 %found.conflict, %found.conflict253
  %bound0254 = icmp ult ptr %i.z, %i.ak
  %bound1255 = icmp ult ptr %i.ai, %i.ac
  %found.conflict256 = and i1 %bound0254, %bound1255
  %conflict.rdx257 = or i1 %conflict.rdx, %found.conflict256
  %bound0258 = icmp ult ptr %i.z, %i.am
  %bound1259 = icmp ult ptr %i.al, %i.ac
  %found.conflict260 = and i1 %bound0258, %bound1259
  %conflict.rdx261 = or i1 %conflict.rdx257, %found.conflict260
  %bound0262 = icmp ult ptr %i.z, %i.ao
  %bound1263 = icmp ult ptr %i.an, %i.ac
  %found.conflict264 = and i1 %bound0262, %bound1263
  %conflict.rdx265 = or i1 %conflict.rdx261, %found.conflict264
  %bound0266 = icmp ult ptr %i.z, %i.ar
  %bound1267 = icmp ult ptr %i.aq, %i.ac
  %found.conflict268 = and i1 %bound0266, %bound1267
  %conflict.rdx269 = or i1 %conflict.rdx265, %found.conflict268
  %bound0270 = icmp ult ptr %i.z, %i.at
  %bound1271 = icmp ult ptr %i.as, %i.ac
  %found.conflict272 = and i1 %bound0270, %bound1271
  %conflict.rdx273 = or i1 %conflict.rdx269, %found.conflict272
  %bound0274 = icmp ult ptr %i.z, %i.av
  %bound1275 = icmp ult ptr %i.au, %i.ac
  %found.conflict276 = and i1 %bound0274, %bound1275
  %conflict.rdx277 = or i1 %conflict.rdx273, %found.conflict276
  %bound0278 = icmp ult ptr %i.ad, %i.ag
  %bound1279 = icmp ult ptr %i.af, %i.ae
  %found.conflict280 = and i1 %bound0278, %bound1279
  %conflict.rdx281 = or i1 %conflict.rdx277, %found.conflict280
  %bound0282 = icmp ult ptr %i.ad, %i.ak
  %bound1283 = icmp ult ptr %i.ai, %i.ae
  %found.conflict284 = and i1 %bound0282, %bound1283
  %conflict.rdx285 = or i1 %conflict.rdx281, %found.conflict284
  %bound0286 = icmp ult ptr %i.ad, %i.am
  %bound1287 = icmp ult ptr %i.al, %i.ae
  %found.conflict288 = and i1 %bound0286, %bound1287
  %conflict.rdx289 = or i1 %conflict.rdx285, %found.conflict288
  %bound0290 = icmp ult ptr %i.ad, %i.ao
  %bound1291 = icmp ult ptr %i.an, %i.ae
  %found.conflict292 = and i1 %bound0290, %bound1291
  %conflict.rdx293 = or i1 %conflict.rdx289, %found.conflict292
  %bound0294 = icmp ult ptr %i.ad, %i.ar
  %bound1295 = icmp ult ptr %i.aq, %i.ae
  %found.conflict296 = and i1 %bound0294, %bound1295
  %conflict.rdx297 = or i1 %conflict.rdx293, %found.conflict296
  %bound0298 = icmp ult ptr %i.ad, %i.at
  %bound1299 = icmp ult ptr %i.as, %i.ae
  %found.conflict300 = and i1 %bound0298, %bound1299
  %conflict.rdx301 = or i1 %conflict.rdx297, %found.conflict300
  %bound0302 = icmp ult ptr %i.ad, %i.av
  %bound1303 = icmp ult ptr %i.au, %i.ae
  %found.conflict304 = and i1 %bound0302, %bound1303
  %conflict.rdx305 = or i1 %conflict.rdx301, %found.conflict304
  %bound0306 = icmp ult ptr %i.af, %i.ak
  %bound1307 = icmp ult ptr %i.ai, %i.ag
  %found.conflict308 = and i1 %bound0306, %bound1307
  %conflict.rdx309 = or i1 %conflict.rdx305, %found.conflict308
  %bound0310 = icmp ult ptr %i.af, %i.am
  %bound1311 = icmp ult ptr %i.al, %i.ag
  %found.conflict312 = and i1 %bound0310, %bound1311
  %conflict.rdx313 = or i1 %conflict.rdx309, %found.conflict312
  %bound0314 = icmp ult ptr %i.af, %i.ao
  %bound1315 = icmp ult ptr %i.an, %i.ag
  %found.conflict316 = and i1 %bound0314, %bound1315
  %conflict.rdx317 = or i1 %conflict.rdx313, %found.conflict316
  %bound0318 = icmp ult ptr %i.af, %i.ar
  %bound1319 = icmp ult ptr %i.aq, %i.ag
  %found.conflict320 = and i1 %bound0318, %bound1319
  %conflict.rdx321 = or i1 %conflict.rdx317, %found.conflict320
  %bound0322 = icmp ult ptr %i.af, %i.at
  %bound1323 = icmp ult ptr %i.as, %i.ag
  %found.conflict324 = and i1 %bound0322, %bound1323
  %conflict.rdx325 = or i1 %conflict.rdx321, %found.conflict324
  %bound0326 = icmp ult ptr %i.af, %i.av
  %bound1327 = icmp ult ptr %i.au, %i.ag
  %found.conflict328 = and i1 %bound0326, %bound1327
  %conflict.rdx329 = or i1 %conflict.rdx325, %found.conflict328
  %bound0330 = icmp ult ptr %i.ai, %i.am
  %bound1331 = icmp ult ptr %i.al, %i.ak
  %found.conflict332 = and i1 %bound0330, %bound1331
  %conflict.rdx333 = or i1 %conflict.rdx329, %found.conflict332
  %bound0334 = icmp ult ptr %i.ai, %i.ao
  %bound1335 = icmp ult ptr %i.an, %i.ak
  %found.conflict336 = and i1 %bound0334, %bound1335
  %conflict.rdx337 = or i1 %conflict.rdx333, %found.conflict336
  %bound0338 = icmp ult ptr %i.ai, %i.ar
  %bound1339 = icmp ult ptr %i.aq, %i.ak
  %found.conflict340 = and i1 %bound0338, %bound1339
  %conflict.rdx341 = or i1 %conflict.rdx337, %found.conflict340
  %bound0342 = icmp ult ptr %i.ai, %i.at
  %bound1343 = icmp ult ptr %i.as, %i.ak
  %found.conflict344 = and i1 %bound0342, %bound1343
  %conflict.rdx345 = or i1 %conflict.rdx341, %found.conflict344
  %bound0346 = icmp ult ptr %i.ai, %i.av
  %bound1347 = icmp ult ptr %i.au, %i.ak
  %found.conflict348 = and i1 %bound0346, %bound1347
  %conflict.rdx349 = or i1 %conflict.rdx345, %found.conflict348
  %bound0350 = icmp ult ptr %i.al, %i.ao
  %bound1351 = icmp ult ptr %i.an, %i.am
  %found.conflict352 = and i1 %bound0350, %bound1351
  %conflict.rdx353 = or i1 %conflict.rdx349, %found.conflict352
  %bound0354 = icmp ult ptr %i.al, %i.ar
  %bound1355 = icmp ult ptr %i.aq, %i.am
  %found.conflict356 = and i1 %bound0354, %bound1355
  %conflict.rdx357 = or i1 %conflict.rdx353, %found.conflict356
  %bound0358 = icmp ult ptr %i.al, %i.at
  %bound1359 = icmp ult ptr %i.as, %i.am
  %found.conflict360 = and i1 %bound0358, %bound1359
  %conflict.rdx361 = or i1 %conflict.rdx357, %found.conflict360
  %bound0362 = icmp ult ptr %i.al, %i.av
  %bound1363 = icmp ult ptr %i.au, %i.am
  %found.conflict364 = and i1 %bound0362, %bound1363
  %conflict.rdx365 = or i1 %conflict.rdx361, %found.conflict364
  %bound0366 = icmp ult ptr %i.an, %i.ar
  %bound1367 = icmp ult ptr %i.aq, %i.ao
  %found.conflict368 = and i1 %bound0366, %bound1367
  %conflict.rdx369 = or i1 %conflict.rdx365, %found.conflict368
  %bound0370 = icmp ult ptr %i.an, %i.at
  %bound1371 = icmp ult ptr %i.as, %i.ao
  %found.conflict372 = and i1 %bound0370, %bound1371
  %conflict.rdx373 = or i1 %conflict.rdx369, %found.conflict372
  %bound0374 = icmp ult ptr %i.an, %i.av
  %bound1375 = icmp ult ptr %i.au, %i.ao
  %found.conflict376 = and i1 %bound0374, %bound1375
  %conflict.rdx377 = or i1 %conflict.rdx373, %found.conflict376
  br i1 %conflict.rdx377, label %.lr.ph.preheader395, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aw = and i64 %i.x, 7                         ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = select i1 %i.ax, i64 8, i64 %i.aw
  %n.vec = sub nsw i64 %i.x, %i.ay                ; 3 uses
  %i.az = shl nsw i64 %n.vec, 1                   ; 2 uses
  %i.ba = add nsw i64 %i.az, %i.w
  %i.bb = add nsw i64 %i.az, %i.v
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.w, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %broadcast.splatinsert378 = insertelement <8 x i64> poison, i64 %i.v, i64 0
  %broadcast.splat379 = shufflevector <8 x i64> %broadcast.splatinsert378, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction380 = add nsw <8 x i64> %broadcast.splat379, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind381 = phi <8 x i64> [ %induction380, %vector.ph ], [ %vec.ind.next392, %vector.body ] ; 2 uses
  %i.bc = add nsw <8 x i64> %vec.ind, splat (i64 2) ; 3 uses
  %i.bd = add nsw <8 x i64> %vec.ind381, splat (i64 2) ; 3 uses
  %i.be = add nuw nsw i64 %index, %i.x            ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.be
  %wide.load = load <8 x i32>, ptr %i.bf, align 4, !tbaa !21, !alias.scope !22 ; 3 uses
  %i.bg = sdiv <8 x i32> %wide.load, splat (i32 2) ; 3 uses
  %wide.gep = getelementptr inbounds [4 x i8], ptr %i.b, <8 x i64> %i.bc
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.bg, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !21, !alias.scope !23, !noalias !24
  %i.bh = xor <8 x i32> %i.bg, splat (i32 -1)
  %i.bi = add <8 x i32> %wide.load, %i.bh
  %wide.gep383 = getelementptr inbounds [4 x i8], ptr %i.a, <8 x i64> %i.bc
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.bi, <8 x ptr> align 4 %wide.gep383, <8 x i1> splat (i1 true)), !tbaa !21, !alias.scope !25, !noalias !26
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.be ; 2 uses
  %wide.load384 = load <8 x i32>, ptr %i.bj, align 4, !tbaa !21, !alias.scope !27
  %i.bk = sub <8 x i32> %i.bg, %wide.load
  %i.bl = add <8 x i32> %i.bk, %wide.load384
  %wide.gep385 = getelementptr inbounds [4 x i8], ptr %i.c, <8 x i64> %i.bc
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.bl, <8 x ptr> align 4 %wide.gep385, <8 x i1> splat (i1 true)), !tbaa !21, !alias.scope !28, !noalias !29
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.be
  %wide.load386 = load <8 x i32>, ptr %i.bm, align 4, !tbaa !21, !alias.scope !30 ; 2 uses
  %i.bn = sdiv <8 x i32> %wide.load386, splat (i32 2) ; 2 uses
  %wide.gep387 = getelementptr inbounds [4 x i8], ptr %i.b, <8 x i64> %i.bd ; 2 uses
  %i.bo = extractelement <8 x ptr> %wide.gep387, i64 0
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.bn, <8 x ptr> align 4 %wide.gep387, <8 x i1> splat (i1 true)), !tbaa !21, !alias.scope !31, !noalias !32
  %i.bp = xor <8 x i32> %i.bn, splat (i32 -1)
  %i.bq = add <8 x i32> %wide.load386, %i.bp
  %wide.gep389 = getelementptr inbounds [4 x i8], ptr %i.a, <8 x i64> %i.bd
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.bq, <8 x ptr> align 4 %wide.gep389, <8 x i1> splat (i1 true)), !tbaa !21, !alias.scope !33, !noalias !34
  %wide.load390 = load <8 x i32>, ptr %i.bj, align 4, !tbaa !21, !alias.scope !27
  %wide.vec = load <16 x i32>, ptr %i.bo, align 4, !tbaa !21, !alias.scope !31, !noalias !32
  %strided.vec = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.br = add <8 x i32> %wide.load390, splat (i32 1)
  %i.bs = add <8 x i32> %i.br, %strided.vec
  %wide.gep391 = getelementptr inbounds [4 x i8], ptr %i.c, <8 x i64> %i.bd
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.bs, <8 x ptr> align 4 %wide.gep391, <8 x i1> splat (i1 true)), !tbaa !21, !alias.scope !35, !noalias !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 16)
  %vec.ind.next392 = add nsw <8 x i64> %vec.ind381, splat (i64 16)
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %.lr.ph.preheader395, label %vector.body, !llvm.loop !18

.lr.ph.preheader395:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv86.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %indvars.iv84.ph = phi i64 [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.preheader ], [ %i.ba, %vector.body ]
  %indvars.iv.ph = phi i64 [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.preheader ], [ %i.bb, %vector.body ]
  br label %.lr.ph

end_hunk_0
