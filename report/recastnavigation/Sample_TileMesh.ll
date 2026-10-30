Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/Sample_TileMesh?download=true
inline.NumInlined: 159
inline.NumDeleted: 76
begin_hunk_0_@_ZN15Sample_TileMesh13buildTileMeshEiiPKfS1_Ri:bb.a
  %i.ie = load ptr, ptr %i.eq, align 8, !tbaa !170 ; 2 uses
  br i1 %.not69, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.ie, i32 noundef 3, ptr noundef nonnull @.str.46) #11
  br label %thread-pre-split

bb.v:                                             ; preds = %bb.t
  %i.if = load i32, ptr %i.bm, align 4, !tbaa !271
  %i.ig = load i32, ptr %i.bp, align 8, !tbaa !268
  %i.ih = load ptr, ptr %i.ac, align 8, !tbaa !49
  %i.ii = call noundef zeroext i1 @_Z25rcBuildCompactHeightfieldP9rcContextiiRK13rcHeightfieldR20rcCompactHeightfield(ptr noundef %i.ie, i32 noundef %i.if, i32 noundef %i.ig, ptr noundef nonnull align 8 dereferenceable(64) %i.ih, ptr noundef nonnull align 8 dereferenceable(96) %i.id) #11
  %i.ij = load ptr, ptr %i.eq, align 8, !tbaa !170 ; 2 uses
  br i1 %i.ii, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.ij, i32 noundef 3, ptr noundef nonnull @.str.47) #11
  br label %thread-pre-split

bb.x:                                             ; preds = %bb.v
  %i.ik = load i32, ptr %i.bq, align 4, !tbaa !273
  %i.il = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.im = call noundef zeroext i1 @_Z19rcErodeWalkableAreaP9rcContextiR20rcCompactHeightfield(ptr noundef %i.ij, i32 noundef %i.ik, ptr noundef nonnull align 8 dereferenceable(96) %i.il) #11
  br i1 %i.im, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.in = load ptr, ptr %i.eq, align 8, !tbaa !170
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.in, i32 noundef 3, ptr noundef nonnull @.str.48) #11
  br label %thread-pre-split

bb.z:                                             ; preds = %bb.x
  %i.io = load ptr, ptr %i.e, align 8, !tbaa !56  ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 424
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !274 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 432
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !274 ; 2 uses
  %i.it = icmp eq ptr %i.iq, %i.is
  br i1 %i.it, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.z
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.iv = load i8, ptr %i.iu, align 8, !tbaa !275
  %i.iw = load ptr, ptr %i.eq, align 8, !tbaa !170 ; 3 uses
  %i.ix = load ptr, ptr %i.ae, align 8, !tbaa !50 ; 3 uses
  switch i8 %i.iv, label %bb.ag [
    i8 0, label %bb.aa
    i8 1, label %bb.ae
  ]

.lr.ph:                                           ; preds = %bb.z, %.lr.ph
  %.sroa.076.085 = phi ptr [ %i.jj, %.lr.ph ], [ %i.iq, %bb.z ] ; 6 uses
  %i.iy = load ptr, ptr %i.eq, align 8, !tbaa !170
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.076.085, i64 144
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !277
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.076.085, i64 148
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !278
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.076.085, i64 152
  %i.je = load float, ptr %i.jd, align 4, !tbaa !279
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.076.085, i64 156
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !280
  %i.jh = trunc i32 %i.jg to i8
  %i.ji = load ptr, ptr %i.ae, align 8, !tbaa !50
  call void @_Z20rcMarkConvexPolyAreaP9rcContextPKfiffhR20rcCompactHeightfield(ptr noundef %i.iy, ptr noundef nonnull %.sroa.076.085, i32 noundef %i.ja, float noundef %i.jc, float noundef %i.je, i8 noundef zeroext %i.jh, ptr noundef nonnull align 8 dereferenceable(96) %i.ji) #11
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.076.085, i64 160 ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.is
  br i1 %i.jk, label %._crit_edge, label %.lr.ph

bb.aa:                                            ; preds = %._crit_edge
  %i.jl = call noundef zeroext i1 @_Z20rcBuildDistanceFieldP9rcContextR20rcCompactHeightfield(ptr noundef %i.iw, ptr noundef nonnull align 8 dereferenceable(96) %i.ix) #11
  %i.jm = load ptr, ptr %i.eq, align 8, !tbaa !170 ; 2 uses
  br i1 %i.jl, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.jm, i32 noundef 3, ptr noundef nonnull @.str.49) #11
  br label %thread-pre-split

bb.ac:                                            ; preds = %bb.aa
  %i.jn = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.jo = load i32, ptr %i.dc, align 4, !tbaa !255
  %i.jp = load i32, ptr %i.cp, align 8, !tbaa !281
  %i.jq = load i32, ptr %i.cq, align 4, !tbaa !282
  %i.jr = call noundef zeroext i1 @_Z14rcBuildRegionsP9rcContextR20rcCompactHeightfieldiii(ptr noundef %i.jm, ptr noundef nonnull align 8 dereferenceable(96) %i.jn, i32 noundef %i.jo, i32 noundef %i.jp, i32 noundef %i.jq) #11
  br i1 %i.jr, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.js = load ptr, ptr %i.eq, align 8, !tbaa !170
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.js, i32 noundef 3, ptr noundef nonnull @.str.50) #11
  br label %thread-pre-split

bb.ae:                                            ; preds = %._crit_edge
  %i.jt = load i32, ptr %i.dc, align 4, !tbaa !255
  %i.ju = load i32, ptr %i.cp, align 8, !tbaa !281
  %i.jv = load i32, ptr %i.cq, align 4, !tbaa !282
  %i.jw = call noundef zeroext i1 @_Z22rcBuildRegionsMonotoneP9rcContextR20rcCompactHeightfieldiii(ptr noundef %i.iw, ptr noundef nonnull align 8 dereferenceable(96) %i.ix, i32 noundef %i.jt, i32 noundef %i.ju, i32 noundef %i.jv) #11
  br i1 %i.jw, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jx = load ptr, ptr %i.eq, align 8, !tbaa !170
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.jx, i32 noundef 3, ptr noundef nonnull @.str.51) #11
  br label %thread-pre-split

bb.ag:                                            ; preds = %._crit_edge
  %i.jy = load i32, ptr %i.dc, align 4, !tbaa !255
  %i.jz = load i32, ptr %i.cp, align 8, !tbaa !281
  %i.ka = call noundef zeroext i1 @_Z19rcBuildLayerRegionsP9rcContextR20rcCompactHeightfieldii(ptr noundef %i.iw, ptr noundef nonnull align 8 dereferenceable(96) %i.ix, i32 noundef %i.jy, i32 noundef %i.jz) #11
  br i1 %i.ka, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kb = load ptr, ptr %i.eq, align 8, !tbaa !170
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.kb, i32 noundef 3, ptr noundef nonnull @.str.52) #11
  br label %thread-pre-split

bb.ai:                                            ; preds = %bb.ae, %bb.ag, %bb.ac
  %i.kc = call noundef ptr @_Z17rcAllocContourSetv() #11 ; 3 uses
  store ptr %i.kc, ptr %i.ag, align 8, !tbaa !51
  %.not70 = icmp eq ptr %i.kc, null
  %i.kd = load ptr, ptr %i.eq, align 8, !tbaa !170 ; 2 uses
  br i1 %.not70, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.kd, i32 noundef 3, ptr noundef nonnull @.str.53) #11
  br label %thread-pre-split

bb.ak:                                            ; preds = %bb.ai
  %i.ke = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.kf = load float, ptr %i.cn, align 4, !tbaa !251
  %i.kg = load i32, ptr %i.cf, align 8, !tbaa !283
  %i.kh = call noundef zeroext i1 @_Z15rcBuildContoursP9rcContextRK20rcCompactHeightfieldfiR12rcContourSeti(ptr noundef %i.kd, ptr noundef nonnull align 8 dereferenceable(96) %i.ke, float noundef %i.kf, i32 noundef %i.kg, ptr noundef nonnull align 8 dereferenceable(60) %i.kc, i32 noundef 1) #11
  br i1 %i.kh, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ki = load ptr, ptr %i.eq, align 8, !tbaa !170
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.ki, i32 noundef 3, ptr noundef nonnull @.str.54) #11
  br label %thread-pre-split

bb.am:                                            ; preds = %bb.ak
  %i.kj = load ptr, ptr %i.ag, align 8, !tbaa !51
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !286
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %thread-pre-split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kn = call noundef ptr @_Z15rcAllocPolyMeshv() #11 ; 3 uses
  store ptr %i.kn, ptr %i.ai, align 8, !tbaa !52
  %.not71 = icmp eq ptr %i.kn, null
  %i.ko = load ptr, ptr %i.eq, align 8, !tbaa !170 ; 2 uses
  br i1 %.not71, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.ko, i32 noundef 3, ptr noundef nonnull @.str.55) #11
  br label %thread-pre-split

bb.ap:                                            ; preds = %bb.an
  %i.kp = load ptr, ptr %i.ag, align 8, !tbaa !51
  %i.kq = load i32, ptr %i.cw, align 8, !tbaa !253
  %i.kr = call noundef zeroext i1 @_Z15rcBuildPolyMeshP9rcContextRK12rcContourSetiR10rcPolyMesh(ptr noundef %i.ko, ptr noundef nonnull align 8 dereferenceable(60) %i.kp, i32 noundef %i.kq, ptr noundef nonnull align 8 dereferenceable(96) %i.kn) #11
  br i1 %i.kr, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ks = load ptr, ptr %i.eq, align 8, !tbaa !170
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.ks, i32 noundef 3, ptr noundef nonnull @.str.56) #11
  br label %thread-pre-split

bb.ar:                                            ; preds = %bb.ap
  %i.kt = call noundef ptr @_Z21rcAllocPolyMeshDetailv() #11 ; 3 uses
  store ptr %i.kt, ptr %i.ak, align 8, !tbaa !53
  %.not72 = icmp eq ptr %i.kt, null
  %i.ku = load ptr, ptr %i.eq, align 8, !tbaa !170 ; 2 uses
  br i1 %.not72, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.ku, i32 noundef 3, ptr noundef nonnull @.str.57) #11
  br label %thread-pre-split

bb.at:                                            ; preds = %bb.ar
  %i.kv = load ptr, ptr %i.ai, align 8, !tbaa !52
  %i.kw = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.kx = load float, ptr %i.dh, align 4, !tbaa !258
  %i.ky = load float, ptr %i.do, align 8, !tbaa !259
  %i.kz = call noundef zeroext i1 @_Z21rcBuildPolyMeshDetailP9rcContextRK10rcPolyMeshRK20rcCompactHeightfieldffR16rcPolyMeshDetail(ptr noundef %i.ku, ptr noundef nonnull align 8 dereferenceable(96) %i.kv, ptr noundef nonnull align 8 dereferenceable(96) %i.kw, float noundef %i.kx, float noundef %i.ky, ptr noundef nonnull align 8 dereferenceable(36) %i.kt) #11
  br i1 %i.kz, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.la = load ptr, ptr %i.eq, align 8, !tbaa !170
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.la, i32 noundef 3, ptr noundef nonnull @.str.58) #11
  br label %thread-pre-split

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store ptr null, ptr %i.c, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !47
  %i.lb = load i32, ptr %i.cw, align 8, !tbaa !253
  %i.lc = icmp slt i32 %i.lb, 7
  br i1 %i.lc, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %bb.av
  %i.ld = load ptr, ptr %i.ai, align 8, !tbaa !52 ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !288 ; 2 uses
  %i.lg = icmp sgt i32 %i.lf, 65534
  br i1 %i.lg, label %bb.ax, label %.preheader

.preheader:                                       ; preds = %bb.aw
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 44
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !289
  %i.lj = icmp sgt i32 %i.li, 0
  br i1 %i.lj, label %.lr.ph88, label %._crit_edge89

bb.ax:                                            ; preds = %bb.aw
  %i.lk = load ptr, ptr %i.eq, align 8, !tbaa !170
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.lk, i32 noundef 3, ptr noundef nonnull @.str.59, i32 noundef %i.lf, i32 noundef 65535) #11
  br label %bb.bf

._crit_edge89:                                    ; preds = %bb.ba, %.preheader
  %.lcssa86 = phi ptr [ %i.ld, %.preheader ], [ %i.or, %bb.ba ] ; 12 uses
  %8 = getelementptr inbounds nuw i8, ptr %.lcssa86, i64 44
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %7, i8 0, i64 208, i1 false)
  %9 = load ptr, ptr %.lcssa86, align 8, !tbaa !290
  store ptr %9, ptr %7, align 8, !tbaa !292
  %10 = getelementptr inbounds nuw i8, ptr %.lcssa86, i64 40
  %11 = load i32, ptr %10, align 8, !tbaa !288
  %i.ll = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %11, ptr %i.ll, align 8, !tbaa !293
  %i.lm = getelementptr inbounds nuw i8, ptr %.lcssa86, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !294
  %i.lo = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.ln, ptr %i.lo, align 8, !tbaa !295
  %i.lp = getelementptr inbounds nuw i8, ptr %.lcssa86, i64 24
  %i.lq = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.lr = load <2 x ptr>, ptr %i.lp, align 8, !tbaa !296
  store <2 x ptr> %i.lr, ptr %i.lq, align 8, !tbaa !296
  %12 = load i32, ptr %8, align 4, !tbaa !289
  %i.ls = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 %12, ptr %i.ls, align 8, !tbaa !297
  %i.lt = getelementptr inbounds nuw i8, ptr %.lcssa86, i64 52
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !298
  %i.lv = getelementptr inbounds nuw i8, ptr %7, i64 44
  store i32 %i.lu, ptr %i.lv, align 4, !tbaa !299
  %i.lw = load ptr, ptr %i.ak, align 8, !tbaa !53 ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ly = load <2 x ptr>, ptr %i.lw, align 8, !tbaa !296
  store <2 x ptr> %i.ly, ptr %i.lx, align 8, !tbaa !296
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 28
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !301
  %i.mb = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 %i.ma, ptr %i.mb, align 8, !tbaa !302
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !303
  %i.me = getelementptr inbounds nuw i8, ptr %7, i64 72
  store ptr %i.md, ptr %i.me, align 8, !tbaa !304
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !305
  %i.mh = getelementptr inbounds nuw i8, ptr %7, i64 80
  store i32 %i.mg, ptr %i.mh, align 8, !tbaa !306
  %i.mi = load ptr, ptr %i.e, align 8, !tbaa !56  ; 7 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 280
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !159
  %i.ml = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr %i.mk, ptr %i.ml, align 8, !tbaa !307
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 304
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !159
  %i.mo = getelementptr inbounds nuw i8, ptr %7, i64 96
  store ptr %i.mn, ptr %i.mo, align 8, !tbaa !308
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mi, i64 328
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !309
  %i.mr = getelementptr inbounds nuw i8, ptr %7, i64 120
  store ptr %i.mq, ptr %i.mr, align 8, !tbaa !310
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mi, i64 352
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !309 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %7, i64 112
  store ptr %i.mt, ptr %i.mu, align 8, !tbaa !311
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mi, i64 376
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !312
  %i.mx = getelementptr inbounds nuw i8, ptr %7, i64 104
  store ptr %i.mw, ptr %i.mx, align 8, !tbaa !313
  %i.my = getelementptr inbounds nuw i8, ptr %i.mi, i64 400
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !314
  %i.na = getelementptr inbounds nuw i8, ptr %7, i64 128
  store ptr %i.mz, ptr %i.na, align 8, !tbaa !315
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mi, i64 360
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !316
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = ptrtoint ptr %i.mt to i64
  %i.nf = sub i64 %i.nd, %i.ne
  %i.ng = trunc i64 %i.nf to i32
  %i.nh = getelementptr inbounds nuw i8, ptr %7, i64 136
  store i32 %i.ng, ptr %i.nh, align 8, !tbaa !317
  %i.ni = getelementptr inbounds nuw i8, ptr %7, i64 180
  %i.nj = load <2 x float>, ptr %i.bl, align 4, !tbaa !101
  store <2 x float> %i.nj, ptr %i.ni, align 4, !tbaa !101
  %i.nk = load float, ptr %i.bn, align 4, !tbaa !248
  %i.nl = getelementptr inbounds nuw i8, ptr %7, i64 188
  store float %i.nk, ptr %i.nl, align 4, !tbaa !318
  %i.nm = getelementptr inbounds nuw i8, ptr %7, i64 144
  store i32 %1, ptr %i.nm, align 8, !tbaa !319
  %i.nn = getelementptr inbounds nuw i8, ptr %7, i64 148
  store i32 %2, ptr %i.nn, align 4, !tbaa !320
  %i.no = getelementptr inbounds nuw i8, ptr %7, i64 156
  %i.np = getelementptr inbounds nuw i8, ptr %.lcssa86, i64 56
  %i.nq = load float, ptr %i.np, align 8, !tbaa !101
  store float %i.nq, ptr %i.no, align 4, !tbaa !101
  %i.nr = getelementptr inbounds nuw i8, ptr %.lcssa86, i64 60
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !101
  %i.nt = getelementptr inbounds nuw i8, ptr %7, i64 160
  store float %i.ns, ptr %i.nt, align 8, !tbaa !101
  %i.nu = getelementptr inbounds nuw i8, ptr %.lcssa86, i64 64
  %i.nv = load float, ptr %i.nu, align 8, !tbaa !101
  %i.nw = getelementptr inbounds nuw i8, ptr %7, i64 164
  store float %i.nv, ptr %i.nw, align 4, !tbaa !101
  %i.nx = getelementptr inbounds nuw i8, ptr %7, i64 168
  %i.ny = getelementptr inbounds nuw i8, ptr %.lcssa86, i64 68
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !101
  store float %i.nz, ptr %i.nx, align 8, !tbaa !101
  %i.oa = getelementptr inbounds nuw i8, ptr %.lcssa86, i64 72
  %i.ob = load float, ptr %i.oa, align 8, !tbaa !101
  %i.oc = getelementptr inbounds nuw i8, ptr %7, i64 172
  store float %i.ob, ptr %i.oc, align 4, !tbaa !101
  %i.od = getelementptr inbounds nuw i8, ptr %.lcssa86, i64 76
  %i.oe = load float, ptr %i.od, align 4, !tbaa !101
  %i.of = getelementptr inbounds nuw i8, ptr %7, i64 176
  store float %i.oe, ptr %i.of, align 8, !tbaa !101
  %i.og = getelementptr inbounds nuw i8, ptr %7, i64 192
  %i.oh = load <2 x float>, ptr %i.be, align 8, !tbaa !101
  store <2 x float> %i.oh, ptr %i.og, align 8, !tbaa !101
  %i.oi = getelementptr inbounds nuw i8, ptr %7, i64 200
  store i8 1, ptr %i.oi, align 8, !tbaa !321
  %i.oj = call noundef zeroext i1 @_Z19dtCreateNavMeshDataP21dtNavMeshCreateParamsPPhPi(ptr noundef nonnull %7, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #11
  br i1 %i.oj, label %.critedge74, label %bb.bb

.lr.ph88:                                         ; preds = %.preheader, %bb.ba
  %i.ok = phi ptr [ %i.or, %bb.ba ], [ %i.ld, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ba ], [ 0, %.preheader ] ; 4 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 32
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !322
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 %indvars.iv ; 2 uses
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !323 ; 2 uses
  %i.op = icmp eq i8 %i.oo, 63
  br i1 %i.op, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.lr.ph88
  store i8 0, ptr %i.on, align 1, !tbaa !323
  %.pre94 = load ptr, ptr %i.ai, align 8, !tbaa !52 ; 2 uses
  %.phi.trans.insert95 = getelementptr inbounds nuw i8, ptr %.pre94, i64 32
  %.pre96 = load ptr, ptr %.phi.trans.insert95, align 8, !tbaa !322
  %.phi.trans.insert97 = getelementptr inbounds nuw i8, ptr %.pre96, i64 %indvars.iv
  %.pre98 = load i8, ptr %.phi.trans.insert97, align 1, !tbaa !323
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.lr.ph88
  %i.oq = phi i8 [ %.pre98, %bb.ay ], [ %i.oo, %.lr.ph88 ] ; 2 uses
  %i.or = phi ptr [ %.pre94, %bb.ay ], [ %i.ok, %.lr.ph88 ] ; 4 uses
  %i.os = icmp ult i8 %i.oq, 5
  br i1 %i.os, label %switch.lookup, label %bb.ba

switch.lookup:                                    ; preds = %bb.az
  %i.ot = zext nneg i8 %i.oq to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN15Sample_TileMesh13buildTileMeshEiiPKfS1_Ri, i64 %i.ot
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !324
  %i.ow = getelementptr inbounds nuw [2 x i8], ptr %i.ov, i64 %indvars.iv
  store i16 %switch.ext, ptr %i.ow, align 2, !tbaa !326
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %switch.lookup
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.or, i64 44
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !289
  %i.oz = sext i32 %i.oy to i64
  %i.pa = icmp slt i64 %indvars.iv.next, %i.oz
  br i1 %i.pa, label %.lr.ph88, label %._crit_edge89, !llvm.loop !244

bb.bb:                                            ; preds = %._crit_edge89
  %i.pb = load ptr, ptr %i.eq, align 8, !tbaa !170
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.pb, i32 noundef 3, ptr noundef nonnull @.str.60) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.bf

.critedge74:                                      ; preds = %._crit_edge89
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %.pre99 = load i32, ptr %i.d, align 4, !tbaa !47
  %i.pc = sitofp i32 %.pre99 to float
  %i.pd = fmul nnan float %i.pc, f0x3A800000
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge74, %bb.av
  %i.pe = phi float [ %i.pd, %.critedge74 ], [ 0.000000e+00, %bb.av ]
  store float %i.pe, ptr %i.x, align 8, !tbaa !165
  %i.pf = load ptr, ptr %i.eq, align 8, !tbaa !170 ; 4 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 9
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !172, !range !98, !noundef !99
  %i.pi = trunc nuw i8 %i.ph to i1
  br i1 %i.pi, label %_ZN9rcContext9stopTimerE12rcTimerLabel.exit, label %_ZNK9rcContext18getAccumulatedTimeE12rcTimerLabel.exit

_ZN9rcContext9stopTimerE12rcTimerLabel.exit:      ; preds = %bb.bc
  %i.pj = load ptr, ptr %i.pf, align 8, !tbaa !21
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 48
  %i.pl = load ptr, ptr %i.pk, align 8
  call void %i.pl(ptr noundef nonnull align 8 dereferenceable(10) %i.pf, i32 noundef 0) #11, !call_target !210, !inline_history !6
  %.pre100.a = load ptr, ptr %i.eq, align 8, !tbaa !170 ; 5 uses
  %.phi.trans.insert101 = getelementptr inbounds nuw i8, ptr %.pre100.a, i64 9
  %.pre102 = load i8, ptr %.phi.trans.insert101, align 1, !tbaa !172, !range !98
  %i.pm = trunc nuw i8 %.pre102 to i1
  br i1 %i.pm, label %bb.bd, label %_ZNK9rcContext18getAccumulatedTimeE12rcTimerLabel.exit

bb.bd:                                            ; preds = %_ZN9rcContext9stopTimerE12rcTimerLabel.exit
  %i.pn = load ptr, ptr %.pre100.a, align 8, !tbaa !21
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 56
  %i.pp = load ptr, ptr %i.po, align 8
  %i.pq = call noundef i32 %i.pp(ptr noundef nonnull align 8 dereferenceable(10) %.pre100.a, i32 noundef 0) #11, !call_target !215, !inline_history !7
  br label %_ZNK9rcContext18getAccumulatedTimeE12rcTimerLabel.exit

_ZNK9rcContext18getAccumulatedTimeE12rcTimerLabel.exit: ; preds = %bb.bc, %_ZN9rcContext9stopTimerE12rcTimerLabel.exit, %bb.bd
  %i.pr = phi ptr [ %.pre100.a, %bb.bd ], [ %.pre100.a, %_ZN9rcContext9stopTimerE12rcTimerLabel.exit ], [ %i.pf, %bb.bc ]
  %i.ps = phi i32 [ %i.pq, %bb.bd ], [ -1, %_ZN9rcContext9stopTimerE12rcTimerLabel.exit ], [ -1, %bb.bc ]
  call void @_Z15duLogBuildTimesR9rcContexti(ptr noundef nonnull align 8 dereferenceable(10) %i.pr, i32 noundef %i.ps) #11
  %i.pt = load ptr, ptr %i.eq, align 8, !tbaa !170
  %i.pu = load ptr, ptr %i.ai, align 8, !tbaa !52 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 40
  %i.pw = load i32, ptr %i.pv, align 8, !tbaa !288
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 44
  %i.py = load i32, ptr %i.px, align 4, !tbaa !289
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %i.pt, i32 noundef 1, ptr noundef nonnull @.str.61, i32 noundef %i.pw, i32 noundef %i.py) #11
  %i.pz = load ptr, ptr %i.eq, align 8, !tbaa !170 ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 9
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !172, !range !98, !noundef !99
  %i.qc = trunc nuw i8 %i.qb to i1
  br i1 %i.qc, label %bb.be, label %_ZNK9rcContext18getAccumulatedTimeE12rcTimerLabel.exit75

bb.be:                                            ; preds = %_ZNK9rcContext18getAccumulatedTimeE12rcTimerLabel.exit
  %i.qd = load ptr, ptr %i.pz, align 8, !tbaa !21
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 56
  %i.qf = load ptr, ptr %i.qe, align 8
  %i.qg = call noundef i32 %i.qf(ptr noundef nonnull align 8 dereferenceable(10) %i.pz, i32 noundef 0) #11, !call_target !215, !inline_history !7
  %i.qh = sitofp i32 %i.qg to float
  br label %_ZNK9rcContext18getAccumulatedTimeE12rcTimerLabel.exit75

_ZNK9rcContext18getAccumulatedTimeE12rcTimerLabel.exit75: ; preds = %_ZNK9rcContext18getAccumulatedTimeE12rcTimerLabel.exit, %bb.be
  %i.qi = phi float [ %i.qh, %bb.be ], [ -1.000000e+00, %_ZNK9rcContext18getAccumulatedTimeE12rcTimerLabel.exit ]
  %i.qj = fdiv float %i.qi, 1.000000e+03
  store float %i.qj, ptr %i.y, align 4, !tbaa !163
  %i.qk = load i32, ptr %i.d, align 4, !tbaa !47
  store i32 %i.qk, ptr %5, align 4, !tbaa !47
  %i.ql = load ptr, ptr %i.c, align 8, !tbaa !156
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bb, %_ZNK9rcContext18getAccumulatedTimeE12rcTimerLabel.exit75, %bb.ax
  %.4 = phi ptr [ null, %bb.ax ], [ %i.ql, %_ZNK9rcContext18getAccumulatedTimeE12rcTimerLabel.exit75 ], [ null, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.n, %bb.u, %bb.w, %bb.y, %bb.ab, %bb.ad, %bb.af, %bb.ah, %bb.aj, %bb.al, %bb.ao, %bb.aq, %bb.as, %bb.au, %bb.bf, %bb.am
  %.5.ph = phi ptr [ null, %bb.am ], [ null, %bb.u ], [ null, %bb.w ], [ null, %bb.y ], [ null, %bb.ah ], [ null, %bb.af ], [ null, %bb.ab ], [ null, %bb.ad ], [ null, %bb.aj ], [ null, %bb.al ], [ null, %bb.ao ], [ null, %bb.aq ], [ null, %bb.as ], [ null, %bb.au ], [ %.4, %bb.bf ], [ null, %bb.n ]
  %.pr = load ptr, ptr %6, align 8, !tbaa !160
  br label %bb.bg

bb.bg:                                            ; preds = %thread-pre-split, %bb.k
  %i.qm = phi ptr [ %.pr, %thread-pre-split ], [ %i.ge, %bb.k ] ; 3 uses
  %.5 = phi ptr [ %.5.ph, %thread-pre-split ], [ null, %bb.k ]
  %.not.i.i.i = icmp eq ptr %i.qm, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !327
  %i.qp = ptrtoint ptr %i.qo to i64
  %i.qq = ptrtoint ptr %i.qm to i64
  %i.qr = sub i64 %i.qp, %i.qq
  call void @_ZdlPvm(ptr noundef nonnull %i.qm, i64 noundef %i.qr) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.bi

bb.bi:                                            ; preds = %bb.h, %bb.j, %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.d
  %.7 = phi ptr [ null, %bb.d ], [ %.5, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ null, %bb.h ], [ null, %bb.j ]
  ret ptr %.7
}

declare noundef i32 @_ZN9dtNavMesh10removeTileEjPPhPi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK9dtNavMesh12getTileRefAtEiii(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN9dtNavMesh7addTileEPhiijPj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z6dtFreePv(ptr noundef) local_unnamed_addr #1

declare void @_ZN12BuildContext7dumpLogEPKcz(ptr noundef nonnull align 8 dereferenceable(488), ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK15Sample_TileMesh10getTilePosEPKfRiS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.d = load i8, ptr %i.c, align 4, !tbaa !97, !range !98, !noundef !99
  %i.e = trunc nuw i8 %i.d to i1
  %.v.i = select i1 %i.e, i64 56, i64 192
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.v.i ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.h = load i32, ptr %i.g, align 4, !tbaa !55
  %i.i = sitofp i32 %i.h to float
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = load float, ptr %i.j, align 4, !tbaa !100
  %i.l = fmul float %i.k, %i.i
  %i.m = load float, ptr %1, align 4, !tbaa !101
  %i.n = load float, ptr %i.f, align 4, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !101
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !101
  %i.s = insertelement <2 x float> poison, float %i.m, i64 0
  %i.t = insertelement <2 x float> %i.s, float %i.p, i64 1
  %i.u = insertelement <2 x float> poison, float %i.n, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.r, i64 1
  %i.w = fsub <2 x float> %i.t, %i.v
  %i.x = insertelement <2 x float> poison, float %i.l, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fdiv <2 x float> %i.w, %i.y
  %i.aa = fptosi <2 x float> %i.z to <2 x i32>    ; 2 uses
  %i.ab = extractelement <2 x i32> %i.aa, i64 0
  store i32 %i.ab, ptr %2, align 4, !tbaa !47
  %i.ac = extractelement <2 x i32> %i.aa, i64 1
  store i32 %i.ac, ptr %3, align 4, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN15Sample_TileMesh10removeTileEPKf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 3 uses
  %.not22 = icmp eq ptr %i.d, null
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.f = load i8, ptr %i.e, align 4, !tbaa !97, !range !98, !noundef !99
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %.v.i = select i1 %i.g, i64 56, i64 192
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %.v.i ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.j = load i32, ptr %i.i, align 4, !tbaa !55
  %i.k = sitofp i32 %i.j to float
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = load float, ptr %i.l, align 4, !tbaa !100
  %i.n = fmul float %i.m, %i.k                    ; 5 uses
  %i.o = load float, ptr %1, align 4, !tbaa !101
  %i.p = load float, ptr %i.h, align 4, !tbaa !101 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !101
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !101
  %i.u = insertelement <2 x float> poison, float %i.o, i64 0
end_hunk_0
