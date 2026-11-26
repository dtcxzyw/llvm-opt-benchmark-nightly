Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_equalizer?download=true
inline.NumInlined: 22
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 31
begin_hunk_0_@process:bb.a
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !131 ; 2 uses
  %i.ye = fcmp reassoc nsz arcp contract afn ogt float %.026.i, %i.yd
  %.026..i = select reassoc nsz arcp contract afn i1 %i.ye, float %.026.i, float %i.yd ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %i.yg = load float, ptr %i.yf, align 8, !tbaa !132 ; 2 uses
  %i.yh = fcmp reassoc nsz arcp contract afn olt float %.026..i, %i.yg
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.yh, float %.026..i, float %i.yg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.yi = fmul reassoc nsz arcp contract afn float %spec.select.i, 2.000000e+00 ; 4 uses
  br i1 %i.bp, label %.lr.ph210, label %._crit_edge211

.lr.ph210:                                        ; preds = %dt_draw_curve_calc_value.exit
  %invariant.gep212 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv266
  br i1 %i.vk, label %.lr.ph207.us, label %.lr.ph210.split

.lr.ph207.us:                                     ; preds = %.lr.ph210, %._crit_edge208.us
  %indvars.iv251 = phi i64 [ %indvars.iv.next252, %._crit_edge208.us ], [ 0, %.lr.ph210 ] ; 2 uses
  %i.yj = mul i64 %i.n, %indvars.iv251
  %gep213.us = getelementptr [4 x i8], ptr %invariant.gep212, i64 %i.yj
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph207.us, %bb.j
  %indvars.iv248 = phi i64 [ %i.vm, %.lr.ph207.us ], [ %indvars.iv.next249, %bb.j ] ; 2 uses
  %i.yk = mul nsw i64 %indvars.iv248, %i.m
  %gep.us = getelementptr [4 x i8], ptr %gep213.us, i64 %i.yk ; 2 uses
  %i.yl = load float, ptr %gep.us, align 4, !tbaa !30
  %i.ym = fmul reassoc nsz arcp contract afn float %i.yl, %i.yi
  store float %i.ym, ptr %gep.us, align 4, !tbaa !30
  %indvars.iv.next249 = add nsw i64 %indvars.iv248, %i.vn ; 2 uses
  %i.yn = icmp slt i64 %indvars.iv.next249, %i.k
  br i1 %i.yn, label %bb.j, label %._crit_edge208.us

._crit_edge208.us:                                ; preds = %bb.j
  %indvars.iv.next252 = add nsw i64 %indvars.iv251, %i.vn ; 2 uses
  %i.yo = icmp slt i64 %indvars.iv.next252, %i.l
  br i1 %i.yo, label %.lr.ph207.us, label %._crit_edge211

._crit_edge211:                                   ; preds = %.lr.ph210.split, %._crit_edge208.us, %dt_draw_curve_calc_value.exit
  br i1 %i.vl, label %.preheader185.lr.ph, label %._crit_edge225

.preheader185.lr.ph:                              ; preds = %._crit_edge211
  %invariant.gep218 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv266
  br i1 %i.bq, label %.preheader185.us, label %.preheader185

.preheader185.us:                                 ; preds = %.preheader185.lr.ph, %._crit_edge216.us
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %._crit_edge216.us ], [ %i.vm, %.preheader185.lr.ph ] ; 2 uses
  %i.yp = mul i64 %i.n, %indvars.iv257
  %gep219.us = getelementptr [4 x i8], ptr %invariant.gep218, i64 %i.yp
  br label %bb.k

bb.k:                                             ; preds = %.preheader185.us, %bb.k
  %indvars.iv254 = phi i64 [ 0, %.preheader185.us ], [ %indvars.iv.next255, %bb.k ] ; 2 uses
  %i.yq = mul nsw i64 %indvars.iv254, %i.m
  %gep.us220 = getelementptr [4 x i8], ptr %gep219.us, i64 %i.yq ; 2 uses
  %i.yr = load float, ptr %gep.us220, align 4, !tbaa !30
  %i.ys = fmul reassoc nsz arcp contract afn float %i.yr, %i.yi
  store float %i.ys, ptr %gep.us220, align 4, !tbaa !30
  %indvars.iv.next255 = add nsw i64 %indvars.iv254, %i.vn ; 2 uses
  %i.yt = icmp slt i64 %indvars.iv.next255, %i.k
  br i1 %i.yt, label %bb.k, label %._crit_edge216.us

._crit_edge216.us:                                ; preds = %bb.k
  %indvars.iv.next258 = add nsw i64 %indvars.iv257, %i.vn ; 2 uses
  %i.yu = icmp slt i64 %indvars.iv.next258, %i.l
  br i1 %i.yu, label %.preheader185.us, label %.preheader184.lr.ph

.lr.ph210.split:                                  ; preds = %.lr.ph210, %.lr.ph210.split
  %.0149209 = phi i32 [ %i.yv, %.lr.ph210.split ], [ 0, %.lr.ph210 ]
  %i.yv = add nsw i32 %.0149209, %i.vi            ; 2 uses
  %i.yw = icmp slt i32 %i.yv, %i.h
  br i1 %i.yw, label %.lr.ph210.split, label %._crit_edge211

.preheader184.lr.ph:                              ; preds = %.preheader185, %._crit_edge216.us
  %i.yx = fmul reassoc nsz arcp contract afn float %i.yi, %i.yi
  %invariant.gep226 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv266
  br i1 %i.vk, label %.preheader184.us, label %.preheader184

.preheader184.us:                                 ; preds = %.preheader184.lr.ph, %._crit_edge223.us
  %indvars.iv263 = phi i64 [ %indvars.iv.next264, %._crit_edge223.us ], [ %i.vm, %.preheader184.lr.ph ] ; 2 uses
  %i.yy = mul i64 %i.n, %indvars.iv263
  %gep227.us = getelementptr [4 x i8], ptr %invariant.gep226, i64 %i.yy
  br label %bb.l

bb.l:                                             ; preds = %.preheader184.us, %bb.l
  %indvars.iv260 = phi i64 [ %i.vm, %.preheader184.us ], [ %indvars.iv.next261, %bb.l ] ; 2 uses
  %i.yz = mul nsw i64 %indvars.iv260, %i.m
  %gep.us228 = getelementptr [4 x i8], ptr %gep227.us, i64 %i.yz ; 2 uses
  %i.za = load float, ptr %gep.us228, align 4, !tbaa !30
  %i.zb = fmul reassoc nsz arcp contract afn float %i.yx, %i.za
  store float %i.zb, ptr %gep.us228, align 4, !tbaa !30
  %indvars.iv.next261 = add nsw i64 %indvars.iv260, %i.vn ; 2 uses
  %i.zc = icmp slt i64 %indvars.iv.next261, %i.k
  br i1 %i.zc, label %bb.l, label %._crit_edge223.us

._crit_edge223.us:                                ; preds = %bb.l
  %indvars.iv.next264 = add nsw i64 %indvars.iv263, %i.vn ; 2 uses
  %i.zd = icmp slt i64 %indvars.iv.next264, %i.l
  br i1 %i.zd, label %.preheader184.us, label %._crit_edge225

.preheader185:                                    ; preds = %.preheader185.lr.ph, %.preheader185
  %.0147217 = phi i32 [ %i.ze, %.preheader185 ], [ %i.vj, %.preheader185.lr.ph ]
  %i.ze = add nsw i32 %.0147217, %i.vi            ; 2 uses
  %i.zf = icmp slt i32 %i.ze, %i.h
  br i1 %i.zf, label %.preheader185, label %.preheader184.lr.ph

.preheader184:                                    ; preds = %.preheader184.lr.ph, %.preheader184
  %.0145224 = phi i32 [ %i.zg, %.preheader184 ], [ %i.vj, %.preheader184.lr.ph ]
  %i.zg = add nsw i32 %.0145224, %i.vi            ; 2 uses
  %i.zh = icmp slt i32 %i.zg, %i.h
  br i1 %i.zh, label %.preheader184, label %._crit_edge225

._crit_edge225:                                   ; preds = %.preheader184, %._crit_edge223.us, %._crit_edge211
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond269.not = icmp eq i64 %indvars.iv.next267, 3
  br i1 %exitcond269.not, label %bb.g, label %bb.h

.lr.ph235.preheader:                              ; preds = %dt_iop_equalizer_iwtf.exit
  %wide.trip.count277 = zext nneg i32 %i.al to i64
  br label %.lr.ph235

bb.m:                                             ; preds = %.lr.ph233, %dt_iop_equalizer_iwtf.exit
  %indvars.iv271 = phi i64 [ %i.uk, %.lr.ph233 ], [ %indvars.iv.next272, %dt_iop_equalizer_iwtf.exit ] ; 3 uses
  %indvars.iv.next272 = add nsw i64 %indvars.iv271, -1 ; 6 uses
  %i.zi = trunc nuw nsw i64 %indvars.iv.next272 to i32
  %i.zj = shl nuw i32 1, %i.zi                    ; 7 uses
  %i.zk = sdiv i32 %i.zj, 2                       ; 12 uses
  %i.zl = trunc i64 %indvars.iv271 to i32
  %i.zm = add i32 %i.zl, -2                       ; 7 uses
  %i.zn = ashr i32 %i.f, %i.zm
  %i.zo = add nsw i32 %i.zn, 1                    ; 2 uses
  %i.zp = call ptr @dt_alloc_aligned(i64 noundef %i.ud) #19 ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.zp, i64 64) ]
  br i1 %i.ue, label %.preheader338.lr.ph.i, label %._crit_edge354.i

.preheader338.lr.ph.i:                            ; preds = %bb.m
  %i.zq = sub nsw i32 %i.h, %i.zk                 ; 4 uses
  %i.zr = icmp sgt i32 %i.zq, 0
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next272
  %i.zt = zext nneg i32 %i.zo to i64              ; 2 uses
  %i.zu = sext i32 %i.zk to i64                   ; 7 uses
  %i.zv = mul nsw i64 %i.zu, %i.uf
  %i.zw = icmp slt i32 %i.zj, %i.zq
  %i.zx = icmp slt i32 %i.zk, %i.zq
  %i.zy = sext i32 %i.zq to i64                   ; 3 uses
  %i.zz = sext i32 %i.zj to i64                   ; 3 uses
  br label %.preheader338.i

.preheader338.i:                                  ; preds = %.loopexit333.i, %.preheader338.lr.ph.i
  %indvars.iv395.i = phi i64 [ 0, %.preheader338.lr.ph.i ], [ %indvars.iv.next396.i, %.loopexit333.i ] ; 14 uses
  br i1 %i.zr, label %.lr.ph.i178, label %.preheader337.i

.lr.ph.i178:                                      ; preds = %.preheader338.i
  %i.aaa = load ptr, ptr %i.zs, align 8, !tbaa !122
  %i.aab = trunc nuw nsw i64 %indvars.iv395.i to i32
  %i.aac = lshr i32 %i.aab, %i.zm
  %i.aad = zext nneg i32 %i.aac to i64
  %invariant.gep.i179 = getelementptr [4 x i8], ptr %i.aaa, i64 %i.aad ; 2 uses
  br label %bb.n

._crit_edge354.i:                                 ; preds = %.loopexit333.i, %bb.m
  call void @free(ptr noundef %i.zp) #19
  %i.aae = call ptr @dt_alloc_aligned(i64 noundef %i.ui) #19 ; 20 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aae, i64 64) ]
  br i1 %i.uj, label %.preheader329.lr.ph.i, label %dt_iop_equalizer_iwtf.exit

.preheader329.lr.ph.i:                            ; preds = %._crit_edge354.i
  %i.aaf = sub i32 %i.f, %i.zk                    ; 5 uses
  %i.aag = icmp sgt i32 %i.aaf, 0
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next272
  %i.aai = sext i32 %i.zo to i64
  %i.aaj = sext i32 %i.zk to i64                  ; 18 uses
  %i.aak = icmp slt i32 %i.zj, %i.aaf
  %i.aal = icmp slt i32 %i.zk, %i.aaf
  %i.aam = sext i32 %i.aaf to i64                 ; 9 uses
  %i.aan = sext i32 %i.zj to i64                  ; 5 uses
  %i.aao = shl nsw i64 %i.aaj, 5                  ; 4 uses
  %scevgep1105 = getelementptr i8, ptr %scevgep1104, i64 %i.aao ; 3 uses
  %scevgep1107 = getelementptr i8, ptr %scevgep1106.a, i64 %i.aao ; 3 uses
  %scevgep1108 = getelementptr i8, ptr %3, i64 %i.aao ; 3 uses
  %i.aap = shl nsw i64 %i.aaj, 2                  ; 2 uses
  %scevgep1109 = getelementptr i8, ptr %i.aae, i64 %i.aap ; 3 uses
  %i.aaq = shl nsw i64 %i.aaj, 4                  ; 4 uses
  %scevgep1111 = getelementptr i8, ptr %scevgep1110.a, i64 %i.aaq ; 10 uses
  %scevgep1113 = getelementptr i8, ptr %scevgep1112.a, i64 %i.aaq ; 10 uses
  %i.aar = add nsw i64 %i.aan, %i.aaj             ; 3 uses
  %smax1114 = call i64 @llvm.smax.i64(i64 %i.aam, i64 %i.aar)
  %i.aas = icmp slt i64 %i.aar, %i.aam
  %umin1115 = zext i1 %i.aas to i64               ; 2 uses
  %i.aat = add nsw i64 %i.aar, %umin1115
  %i.aau = sub i64 %smax1114, %i.aat
  %scevgep1116 = getelementptr i8, ptr %3, i64 %i.aaq ; 10 uses
  %i.aav = shl nsw i64 %i.aaj, 4                  ; 7 uses
  %scevgep1416 = getelementptr i8, ptr %scevgep1415, i64 %i.aav ; 3 uses
  %i.aaw = mul nsw i64 %i.aaj, -16                ; 3 uses
  %scevgep1418 = getelementptr i8, ptr %scevgep1417, i64 %i.aaw ; 2 uses
  %scevgep1420 = getelementptr i8, ptr %scevgep1419, i64 %i.aav ; 2 uses
  %scevgep1422 = getelementptr i8, ptr %scevgep1421, i64 %i.aaw ; 2 uses
  %scevgep1424 = getelementptr i8, ptr %scevgep1423, i64 %i.aav ; 2 uses
  %scevgep1426 = getelementptr i8, ptr %scevgep1425, i64 %i.aaw ; 2 uses
  %6 = shl nsw i64 %i.aaj, 2
  %scevgep1427 = getelementptr i8, ptr %i.aae, i64 4 ; 3 uses
  %i.aax = mul nsw i64 %i.aaj, -4
  %scevgep1428 = getelementptr i8, ptr %scevgep1427, i64 %i.aax ; 2 uses
  %i.aay = shl nsw i64 %i.aan, 1                  ; 3 uses
  %smax1429 = call i64 @llvm.smax.i64(i64 %i.aay, i64 %i.aam)
  %i.aaz = icmp slt i64 %i.aay, %i.aam
  %umin1430 = zext i1 %i.aaz to i64               ; 2 uses
  %i.aba = or disjoint i64 %i.aay, %umin1430
  %i.abb = sub i64 %smax1429, %i.aba
  %i.abc = insertelement <8 x ptr> poison, ptr %scevgep1427, i64 1
  %i.abd = insertelement <8 x ptr> %i.abc, ptr %scevgep1428, i64 2
  %i.abe = insertelement <8 x ptr> %i.abd, ptr %scevgep1426, i64 3
  %i.abf = insertelement <8 x ptr> %i.abe, ptr %scevgep1424, i64 4
  %i.abg = insertelement <8 x ptr> %i.abf, ptr %scevgep1422, i64 5
  %i.abh = insertelement <8 x ptr> %i.abg, ptr %scevgep1420, i64 6
  %i.abi = insertelement <8 x ptr> %i.abh, ptr %scevgep1418, i64 7 ; 2 uses
  %i.abj = shufflevector <8 x ptr> %i.abi, <8 x ptr> %i.uo, <8 x i32> <i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abk = shufflevector <8 x ptr> %i.abi, <8 x ptr> %i.up, <8 x i32> <i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abl = insertelement <8 x ptr> poison, ptr %scevgep1427, i64 0
  %i.abm = insertelement <8 x ptr> %i.abl, ptr %scevgep1428, i64 1
  %i.abn = insertelement <8 x ptr> %i.abm, ptr %scevgep1426, i64 2
  %i.abo = insertelement <8 x ptr> %i.abn, ptr %scevgep1424, i64 3
  %i.abp = insertelement <8 x ptr> %i.abo, ptr %scevgep1422, i64 4
  %i.abq = insertelement <8 x ptr> %i.abp, ptr %scevgep1420, i64 5
  %i.abr = insertelement <8 x ptr> %i.abq, ptr %scevgep1418, i64 6
  %i.abs = insertelement <8 x ptr> %i.abr, ptr %scevgep1416, i64 7
  %i.abt = call i64 @llvm.smax.i64(i64 %i.aam, i64 2)
  %i.abu = add nsw i64 %i.abt, -1                 ; 2 uses
  %min.iters.check1432 = icmp sgt i32 %i.aaf, 9
  %ident.check1264.not = icmp eq i64 %indvars.iv.next272, 0
  %or.cond = select i1 %min.iters.check1432, i1 %ident.check1264.not, i1 false
  %i.abv = add i64 %i.abb, %umin1430              ; 2 uses
  %i.abw = add i64 %i.ur, %i.abv
  %i.abx = shl i64 %i.abw, 4                      ; 4 uses
  %i.aby = add i64 %i.abx, 20                     ; 2 uses
  %i.abz = getelementptr i8, ptr %3, i64 %i.aby   ; 4 uses
  %i.aca = add i64 %i.abx, 24                     ; 2 uses
  %i.acb = getelementptr i8, ptr %3, i64 %i.aca   ; 4 uses
  %i.acc = add i64 %i.abx, 28                     ; 2 uses
  %i.acd = getelementptr i8, ptr %3, i64 %i.acc   ; 3 uses
  %i.ace = shl i64 %i.abv, 2
  %i.acf = add i64 %i.ace, 8                      ; 2 uses
  %7 = getelementptr i8, ptr %i.aae, i64 %i.acf   ; 3 uses
  %8 = sub nuw nsw i64 %i.acf, %6
  %i.acg = getelementptr i8, ptr %i.aae, i64 %8   ; 3 uses
  %i.ach = sub nuw nsw i64 %i.aby, %i.aav
  %i.aci = getelementptr i8, ptr %3, i64 %i.ach   ; 3 uses
  %i.acj = or disjoint i64 %i.abx, %i.aav         ; 3 uses
  %i.ack = getelementptr i8, ptr %3, i64 %i.acj
  %i.acl = getelementptr i8, ptr %i.ack, i64 20   ; 3 uses
  %i.acm = sub nuw nsw i64 %i.aca, %i.aav
  %i.acn = getelementptr i8, ptr %3, i64 %i.acm   ; 3 uses
  %i.aco = getelementptr i8, ptr %3, i64 %i.acj
  %i.acp = getelementptr i8, ptr %i.aco, i64 24   ; 3 uses
  %i.acq = sub nuw nsw i64 %i.acc, %i.aav
  %i.acr = getelementptr i8, ptr %3, i64 %i.acq   ; 3 uses
  %i.acs = getelementptr i8, ptr %3, i64 %i.acj
  %i.act = getelementptr i8, ptr %i.acs, i64 28   ; 3 uses
  %bound01434 = icmp ult ptr %scevgep1425, %i.acb
  %bound11435 = icmp ult ptr %scevgep1421, %i.abz
  %found.conflict1436 = and i1 %bound01434, %bound11435
  %i.acu = insertelement <8 x ptr> poison, ptr %i.abz, i64 0 ; 2 uses
  %i.acv = insertelement <8 x ptr> %i.acu, ptr %7, i64 1
  %i.acw = insertelement <8 x ptr> %i.acv, ptr %i.acg, i64 2
  %i.acx = insertelement <8 x ptr> %i.acw, ptr %i.aci, i64 3
  %i.acy = insertelement <8 x ptr> %i.acx, ptr %i.acl, i64 4
  %i.acz = insertelement <8 x ptr> %i.acy, ptr %i.acn, i64 5
  %i.ada = insertelement <8 x ptr> %i.acz, ptr %i.acp, i64 6
  %i.adb = insertelement <8 x ptr> %i.ada, ptr %i.acr, i64 7
  %i.adc = icmp ult <8 x ptr> %i.uo, %i.adb
  %i.add = shufflevector <8 x ptr> %i.acu, <8 x ptr> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  %i.ade = insertelement <8 x ptr> %i.add, ptr %i.acd, i64 0
  %i.adf = insertelement <8 x ptr> %i.ade, ptr %i.abz, i64 1
  %i.adg = icmp ult <8 x ptr> %i.abj, %i.adf
  %i.adh = and <8 x i1> %i.adc, %i.adg
  %bound01470 = icmp ult ptr %scevgep1425, %i.act
  %bound11471 = icmp ult ptr %scevgep1416, %i.abz
  %found.conflict1472 = and i1 %bound01470, %bound11471
  %i.adi = insertelement <8 x ptr> poison, ptr %i.acb, i64 0 ; 2 uses
  %i.adj = insertelement <8 x ptr> %i.adi, ptr %7, i64 1
  %i.adk = insertelement <8 x ptr> %i.adj, ptr %i.acg, i64 2
  %i.adl = insertelement <8 x ptr> %i.adk, ptr %i.aci, i64 3
  %i.adm = insertelement <8 x ptr> %i.adl, ptr %i.acl, i64 4
  %i.adn = insertelement <8 x ptr> %i.adm, ptr %i.acn, i64 5
  %i.ado = insertelement <8 x ptr> %i.adn, ptr %i.acp, i64 6
  %i.adp = insertelement <8 x ptr> %i.ado, ptr %i.acr, i64 7
  %i.adq = icmp ult <8 x ptr> %i.up, %i.adp
  %i.adr = shufflevector <8 x ptr> %i.adi, <8 x ptr> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  %i.ads = insertelement <8 x ptr> %i.adr, ptr %i.acd, i64 0
  %i.adt = insertelement <8 x ptr> %i.ads, ptr %i.acb, i64 1
  %i.adu = icmp ult <8 x ptr> %i.abk, %i.adt
  %i.adv = and <8 x i1> %i.adq, %i.adu
  %bound01506 = icmp ult ptr %scevgep1421, %i.act
  %bound11507 = icmp ult ptr %scevgep1416, %i.acb
  %found.conflict1508 = and i1 %bound01506, %bound11507
  %i.adw = insertelement <8 x ptr> poison, ptr %7, i64 0
  %i.adx = insertelement <8 x ptr> %i.adw, ptr %i.acg, i64 1
  %i.ady = insertelement <8 x ptr> %i.adx, ptr %i.aci, i64 2
  %i.adz = insertelement <8 x ptr> %i.ady, ptr %i.acl, i64 3
  %i.aea = insertelement <8 x ptr> %i.adz, ptr %i.acn, i64 4
  %i.aeb = insertelement <8 x ptr> %i.aea, ptr %i.acp, i64 5
  %i.aec = insertelement <8 x ptr> %i.aeb, ptr %i.acr, i64 6
  %i.aed = insertelement <8 x ptr> %i.aec, ptr %i.act, i64 7
  %i.aee = icmp ult <8 x ptr> %i.ut, %i.aed
  %i.aef = insertelement <8 x ptr> poison, ptr %i.acd, i64 0
  %i.aeg = shufflevector <8 x ptr> %i.aef, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.aeh = icmp ult <8 x ptr> %i.abs, %i.aeg
  %i.aei = and <8 x i1> %i.aee, %i.aeh
  %rdx.op = or <8 x i1> %i.adh, %i.adv
  %rdx.op1575 = or <8 x i1> %rdx.op, %i.aei
  %i.aej = bitcast <8 x i1> %rdx.op1575 to i8
  %i.aek = icmp ne i8 %i.aej, 0
  %op.rdx = or i1 %i.aek, %found.conflict1436
  %op.rdx1576 = or i1 %found.conflict1472, %found.conflict1508
  %op.rdx1577 = or i1 %op.rdx, %op.rdx1576
  %op.rdx1578 = or i1 %op.rdx1577, %stride.check1437
  %i.ael = and i64 %i.abu, 3                      ; 2 uses
  %i.aem = icmp eq i64 %i.ael, 0
  %i.aen = select i1 %i.aem, i64 4, i64 %i.ael
  %n.vec1543 = sub nsw i64 %i.abu, %i.aen         ; 2 uses
  %i.aeo = add nsw i64 %n.vec1543, 1
  %i.aep = add nsw i64 %i.aaj, 1
  %i.aeq = call i64 @llvm.smax.i64(i64 %i.aam, i64 %i.aep)
  %i.aer = sub i64 %i.aeq, %i.aaj                 ; 3 uses
  %min.iters.check1118 = icmp ugt i64 %i.aer, 16
  %ident.check957.not = icmp eq i64 %indvars.iv.next272, 0
  %or.cond1574 = select i1 %min.iters.check1118, i1 %ident.check957.not, i1 false
  %i.aes = add i64 %i.aau, %umin1115              ; 2 uses
  %i.aet = shl i64 %i.aes, 4                      ; 2 uses
  %i.aeu = add i64 %i.un, %i.aet                  ; 4 uses
  %i.aev = or disjoint i64 %i.aeu, %i.aaq         ; 3 uses
  %i.aew = getelementptr i8, ptr %3, i64 %i.aev
  %i.aex = getelementptr i8, ptr %i.aew, i64 4    ; 10 uses
  %i.aey = getelementptr i8, ptr %3, i64 %i.aev
  %i.aez = getelementptr i8, ptr %i.aey, i64 8    ; 10 uses
  %i.afa = getelementptr i8, ptr %3, i64 %i.aev
  %i.afb = getelementptr i8, ptr %i.afa, i64 12   ; 10 uses
  %i.afc = shl i64 %i.aes, 2                      ; 2 uses
  %i.afd = getelementptr i8, ptr %i.aae, i64 %i.afc
  %i.afe = getelementptr i8, ptr %i.afd, i64 %i.aap
  %i.aff = getelementptr i8, ptr %i.afe, i64 4    ; 3 uses
  %i.afg = getelementptr i8, ptr %i.aae, i64 %i.afc
  %i.afh = getelementptr i8, ptr %i.afg, i64 4    ; 3 uses
  %i.afi = getelementptr i8, ptr %3, i64 %i.aeu
  %i.afj = getelementptr i8, ptr %i.afi, i64 4    ; 3 uses
  %i.afk = or disjoint i64 %i.un, %i.aao
  %i.afl = add i64 %i.afk, %i.aet                 ; 3 uses
  %i.afm = getelementptr i8, ptr %3, i64 %i.afl
  %i.afn = getelementptr i8, ptr %i.afm, i64 4    ; 3 uses
  %i.afo = getelementptr i8, ptr %3, i64 %i.aeu
  %i.afp = getelementptr i8, ptr %i.afo, i64 8    ; 3 uses
  %i.afq = getelementptr i8, ptr %3, i64 %i.afl
  %i.afr = getelementptr i8, ptr %i.afq, i64 8    ; 3 uses
  %i.afs = getelementptr i8, ptr %3, i64 %i.aeu
  %i.aft = getelementptr i8, ptr %i.afs, i64 12   ; 3 uses
  %i.afu = getelementptr i8, ptr %3, i64 %i.afl
  %i.afv = getelementptr i8, ptr %i.afu, i64 12   ; 3 uses
  %bound01120 = icmp ult ptr %scevgep1116, %i.aez
  %bound11121 = icmp ult ptr %scevgep1113, %i.aex
  %found.conflict1122 = and i1 %bound01120, %bound11121
  %i.afw = or i1 %found.conflict1122, %stride.check1123
  %bound01124 = icmp ult ptr %scevgep1116, %i.afb
  %bound11125 = icmp ult ptr %scevgep1111, %i.aex
  %found.conflict1126 = and i1 %bound01124, %bound11125
  %conflict.rdx1127 = or i1 %i.afw, %found.conflict1126
  %bound01128 = icmp ult ptr %scevgep1116, %i.aff
  %bound11129 = icmp ult ptr %scevgep1109, %i.aex
  %found.conflict1130 = and i1 %bound01128, %bound11129
  %conflict.rdx1131 = or i1 %conflict.rdx1127, %found.conflict1130
  %bound01132 = icmp ult ptr %scevgep1116, %i.afh
  %bound11133 = icmp ult ptr %i.aae, %i.aex
  %found.conflict1134 = and i1 %bound01132, %bound11133
  %conflict.rdx1135 = or i1 %conflict.rdx1131, %found.conflict1134
  %bound01136 = icmp ult ptr %scevgep1116, %i.afj
  %bound11137 = icmp ult ptr %3, %i.aex
  %found.conflict1138 = and i1 %bound01136, %bound11137
  %conflict.rdx1139 = or i1 %conflict.rdx1135, %found.conflict1138
  %bound01140 = icmp ult ptr %scevgep1116, %i.afn
  %bound11141 = icmp ult ptr %scevgep1108, %i.aex
  %found.conflict1142 = and i1 %bound01140, %bound11141
  %conflict.rdx1143 = or i1 %conflict.rdx1139, %found.conflict1142
  %bound01144 = icmp ult ptr %scevgep1116, %i.afp
  %bound11145 = icmp ult ptr %scevgep1106.a, %i.aex
  %found.conflict1146 = and i1 %bound01144, %bound11145
  %conflict.rdx1147 = or i1 %conflict.rdx1143, %found.conflict1146
  %bound01148 = icmp ult ptr %scevgep1116, %i.afr
  %bound11149 = icmp ult ptr %scevgep1107, %i.aex
  %found.conflict1150 = and i1 %bound01148, %bound11149
  %conflict.rdx1151 = or i1 %conflict.rdx1147, %found.conflict1150
  %bound01152 = icmp ult ptr %scevgep1116, %i.aft
  %bound11153 = icmp ult ptr %scevgep1104, %i.aex
  %found.conflict1154 = and i1 %bound01152, %bound11153
  %conflict.rdx1155 = or i1 %conflict.rdx1151, %found.conflict1154
  %bound01156 = icmp ult ptr %scevgep1116, %i.afv
  %bound11157 = icmp ult ptr %scevgep1105, %i.aex
  %found.conflict1158 = and i1 %bound01156, %bound11157
  %conflict.rdx1159 = or i1 %conflict.rdx1155, %found.conflict1158
  %bound01160 = icmp ult ptr %scevgep1113, %i.afb
  %bound11161 = icmp ult ptr %scevgep1111, %i.aez
  %found.conflict1162 = and i1 %bound01160, %bound11161
  %conflict.rdx1163 = or i1 %conflict.rdx1159, %found.conflict1162
  %bound01164 = icmp ult ptr %scevgep1113, %i.aff
  %bound11165 = icmp ult ptr %scevgep1109, %i.aez
  %found.conflict1166 = and i1 %bound01164, %bound11165
  %conflict.rdx1167 = or i1 %conflict.rdx1163, %found.conflict1166
  %bound01168 = icmp ult ptr %scevgep1113, %i.afh
  %bound11169 = icmp ult ptr %i.aae, %i.aez
  %found.conflict1170 = and i1 %bound01168, %bound11169
  %conflict.rdx1171 = or i1 %conflict.rdx1167, %found.conflict1170
  %bound01172 = icmp ult ptr %scevgep1113, %i.afj
  %bound11173 = icmp ult ptr %3, %i.aez
  %found.conflict1174 = and i1 %bound01172, %bound11173
  %conflict.rdx1175 = or i1 %conflict.rdx1171, %found.conflict1174
  %bound01176 = icmp ult ptr %scevgep1113, %i.afn
  %bound11177 = icmp ult ptr %scevgep1108, %i.aez
  %found.conflict1178 = and i1 %bound01176, %bound11177
  %conflict.rdx1179 = or i1 %conflict.rdx1175, %found.conflict1178
  %bound01180 = icmp ult ptr %scevgep1113, %i.afp
  %bound11181 = icmp ult ptr %scevgep1106.a, %i.aez
  %found.conflict1182 = and i1 %bound01180, %bound11181
  %conflict.rdx1183 = or i1 %conflict.rdx1179, %found.conflict1182
  %bound01184 = icmp ult ptr %scevgep1113, %i.afr
  %bound11185 = icmp ult ptr %scevgep1107, %i.aez
  %found.conflict1186 = and i1 %bound01184, %bound11185
  %conflict.rdx1187 = or i1 %conflict.rdx1183, %found.conflict1186
  %bound01188 = icmp ult ptr %scevgep1113, %i.aft
  %bound11189 = icmp ult ptr %scevgep1104, %i.aez
  %found.conflict1190 = and i1 %bound01188, %bound11189
  %conflict.rdx1191 = or i1 %conflict.rdx1187, %found.conflict1190
  %bound01192 = icmp ult ptr %scevgep1113, %i.afv
  %bound11193 = icmp ult ptr %scevgep1105, %i.aez
  %found.conflict1194 = and i1 %bound01192, %bound11193
  %conflict.rdx1195 = or i1 %conflict.rdx1191, %found.conflict1194
  %bound01196 = icmp ult ptr %scevgep1111, %i.aff
  %bound11197 = icmp ult ptr %scevgep1109, %i.afb
  %found.conflict1198 = and i1 %bound01196, %bound11197
  %conflict.rdx1199 = or i1 %conflict.rdx1195, %found.conflict1198
  %bound01200 = icmp ult ptr %scevgep1111, %i.afh
  %bound11201 = icmp ult ptr %i.aae, %i.afb
  %found.conflict1202 = and i1 %bound01200, %bound11201
  %conflict.rdx1203 = or i1 %conflict.rdx1199, %found.conflict1202
  %bound01204 = icmp ult ptr %scevgep1111, %i.afj
  %bound11205 = icmp ult ptr %3, %i.afb
  %found.conflict1206 = and i1 %bound01204, %bound11205
  %conflict.rdx1207 = or i1 %conflict.rdx1203, %found.conflict1206
  %bound01208 = icmp ult ptr %scevgep1111, %i.afn
  %bound11209 = icmp ult ptr %scevgep1108, %i.afb
  %found.conflict1210 = and i1 %bound01208, %bound11209
  %conflict.rdx1211 = or i1 %conflict.rdx1207, %found.conflict1210
  %bound01212 = icmp ult ptr %scevgep1111, %i.afp
  %bound11213 = icmp ult ptr %scevgep1106.a, %i.afb
  %found.conflict1214 = and i1 %bound01212, %bound11213
  %conflict.rdx1215 = or i1 %conflict.rdx1211, %found.conflict1214
  %bound01216 = icmp ult ptr %scevgep1111, %i.afr
  %bound11217 = icmp ult ptr %scevgep1107, %i.afb
  %found.conflict1218 = and i1 %bound01216, %bound11217
  %conflict.rdx1219 = or i1 %conflict.rdx1215, %found.conflict1218
  %bound01220 = icmp ult ptr %scevgep1111, %i.aft
  %bound11221 = icmp ult ptr %scevgep1104, %i.afb
  %found.conflict1222 = and i1 %bound01220, %bound11221
  %conflict.rdx1223 = or i1 %conflict.rdx1219, %found.conflict1222
  %bound01224 = icmp ult ptr %scevgep1111, %i.afv
  %bound11225 = icmp ult ptr %scevgep1105, %i.afb
  %found.conflict1226 = and i1 %bound01224, %bound11225
  %conflict.rdx1227 = or i1 %conflict.rdx1223, %found.conflict1226
  %i.afx = and i64 %i.aer, 7                      ; 2 uses
  %i.afy = icmp eq i64 %i.afx, 0
  %i.afz = select i1 %i.afy, i64 8, i64 %i.afx
  %n.vec1229 = sub i64 %i.aer, %i.afz             ; 2 uses
  %broadcast.splatinsert1232 = insertelement <8 x i64> poison, i64 %i.aaj, i64 0
  %broadcast.splat1233 = shufflevector <8 x i64> %broadcast.splatinsert1232, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction1234 = or disjoint <8 x i64> %broadcast.splat1233, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %.preheader329.i

.preheader337.i:                                  ; preds = %bb.n, %.preheader338.i
  %i.aga = add nsw i64 %indvars.iv395.i, %i.zv
  %.idx321.i = shl i64 %i.aga, 4
  %i.agb = getelementptr inbounds nuw i8, ptr %3, i64 %.idx321.i ; 2 uses
  %.idx322.i = shl nuw nsw i64 %indvars.iv395.i, 4
  %i.agc = getelementptr inbounds nuw i8, ptr %3, i64 %.idx322.i ; 3 uses
  %i.agd = load <2 x float>, ptr %i.agb, align 4, !tbaa !30
  %i.age = fmul reassoc nsz arcp contract afn <2 x float> %i.agd, splat (float 5.000000e-01)
  %i.agf = load <2 x float>, ptr %i.agc, align 4, !tbaa !30
  %i.agg = fsub reassoc nsz arcp contract afn <2 x float> %i.agf, %i.age
  store <2 x float> %i.agg, ptr %i.agc, align 4, !tbaa !30
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agb, i64 8
  %i.agi = load float, ptr %i.agh, align 4, !tbaa !30
  %i.agj = fmul reassoc nsz arcp contract afn float %i.agi, 5.000000e-01
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agc, i64 8 ; 2 uses
  %i.agl = load float, ptr %i.agk, align 4, !tbaa !30
  %i.agm = fsub reassoc nsz arcp contract afn float %i.agl, %i.agj
  store float %i.agm, ptr %i.agk, align 4, !tbaa !30
  br i1 %i.zw, label %.preheader331.i, label %._crit_edge.i176

bb.n:                                             ; preds = %bb.n, %.lr.ph.i178
  %indvars.iv.i180 = phi i64 [ 0, %.lr.ph.i178 ], [ %indvars.iv.next.i182, %bb.n ] ; 3 uses
  %i.agn = trunc nsw i64 %indvars.iv.i180 to i32
  %i.ago = ashr i32 %i.agn, %i.zm
  %i.agp = sext i32 %i.ago to i64
  %i.agq = mul nsw i64 %i.agp, %i.zt
  %gep.i181 = getelementptr [4 x i8], ptr %invariant.gep.i179, i64 %i.agq
  %i.agr = load float, ptr %gep.i181, align 4, !tbaa !30
  %indvars.iv.next.i182 = add nsw i64 %indvars.iv.i180, %i.zu ; 3 uses
  %i.ags = trunc nsw i64 %indvars.iv.next.i182 to i32
  %i.agt = ashr i32 %i.ags, %i.zm
  %i.agu = sext i32 %i.agt to i64
  %i.agv = mul nsw i64 %i.agu, %i.zt
  %gep342.i = getelementptr [4 x i8], ptr %invariant.gep.i179, i64 %i.agv
  %i.agw = load float, ptr %gep342.i, align 4, !tbaa !30
  %i.agx = fsub reassoc nsz arcp contract afn float %i.agr, %i.agw
  %i.agy = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.agx)
  %i.agz = fpext reassoc nsz arcp contract afn float %i.agy to double
  %i.aha = fadd reassoc nsz arcp contract afn double %i.agz, 1.000000e-05
  %i.ahb = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aha
  %i.ahc = fptrunc reassoc nsz arcp contract afn double %i.ahb to float
  %i.ahd = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %indvars.iv.i180
  store float %i.ahc, ptr %i.ahd, align 4, !tbaa !30
  %i.ahe = icmp slt i64 %indvars.iv.next.i182, %i.zy
  br i1 %i.ahe, label %bb.n, label %.preheader337.i

.preheader331.i:                                  ; preds = %.preheader337.i, %.preheader331.i
  %indvars.iv380.i = phi i64 [ %indvars.iv.next381.i, %.preheader331.i ], [ %i.zz, %.preheader337.i ] ; 5 uses
  %i.ahf = sub nsw i64 %indvars.iv380.i, %i.zu    ; 2 uses
  %i.ahg = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %i.ahf ; 3 uses
  %i.ahh = mul nsw i64 %i.ahf, %i.uf
  %i.ahi = add nsw i64 %i.ahh, %indvars.iv395.i
  %.idx318.i = shl i64 %i.ahi, 4
  %i.ahj = getelementptr inbounds nuw i8, ptr %3, i64 %.idx318.i ; 3 uses
  %i.ahk = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %indvars.iv380.i ; 3 uses
  %i.ahl = add nsw i64 %indvars.iv380.i, %i.zu
  %i.ahm = mul nsw i64 %i.ahl, %i.uf
  %i.ahn = add nsw i64 %i.ahm, %indvars.iv395.i
  %.idx319.i = shl i64 %i.ahn, 4
  %i.aho = getelementptr inbounds nuw i8, ptr %3, i64 %.idx319.i ; 3 uses
  %i.ahp = mul nsw i64 %indvars.iv380.i, %i.uf
  %i.ahq = add nsw i64 %i.ahp, %indvars.iv395.i
  %.idx320.i = shl i64 %i.ahq, 4
  %i.ahr = getelementptr inbounds nuw i8, ptr %3, i64 %.idx320.i ; 4 uses
  %i.ahs = load float, ptr %i.ahg, align 4, !tbaa !30 ; 2 uses
  %i.aht = load float, ptr %i.ahj, align 4, !tbaa !30
  %i.ahu = fmul reassoc nsz arcp contract afn float %i.aht, %i.ahs
  %i.ahv = load float, ptr %i.ahk, align 4, !tbaa !30 ; 2 uses
  %i.ahw = load float, ptr %i.aho, align 4, !tbaa !30
  %i.ahx = fmul reassoc nsz arcp contract afn float %i.ahw, %i.ahv
  %i.ahy = fadd reassoc nsz arcp contract afn float %i.ahx, %i.ahu
  %i.ahz = fpext reassoc nsz arcp contract afn float %i.ahy to double
  %i.aia = fadd reassoc nsz arcp contract afn float %i.ahv, %i.ahs
  %i.aib = fpext reassoc nsz arcp contract afn float %i.aia to double
  %i.aic = fmul reassoc nsz arcp contract afn double %i.aib, 2.000000e+00
  %i.aid = fdiv reassoc nsz arcp contract afn double %i.ahz, %i.aic
  %i.aie = load float, ptr %i.ahr, align 4, !tbaa !30
  %i.aif = fpext reassoc nsz arcp contract afn float %i.aie to double
  %i.aig = fsub reassoc nsz arcp contract afn double %i.aif, %i.aid
  %i.aih = fptrunc reassoc nsz arcp contract afn double %i.aig to float
  store float %i.aih, ptr %i.ahr, align 4, !tbaa !30
  %i.aii = load float, ptr %i.ahg, align 4, !tbaa !30 ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.ahj, i64 4
  %i.aik = load float, ptr %i.aij, align 4, !tbaa !30
  %i.ail = fmul reassoc nsz arcp contract afn float %i.aik, %i.aii
  %i.aim = load float, ptr %i.ahk, align 4, !tbaa !30 ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aho, i64 4
  %i.aio = load float, ptr %i.ain, align 4, !tbaa !30
  %i.aip = fmul reassoc nsz arcp contract afn float %i.aio, %i.aim
  %i.aiq = fadd reassoc nsz arcp contract afn float %i.aip, %i.ail
  %i.air = fpext reassoc nsz arcp contract afn float %i.aiq to double
  %i.ais = fadd reassoc nsz arcp contract afn float %i.aim, %i.aii
  %i.ait = fpext reassoc nsz arcp contract afn float %i.ais to double
  %i.aiu = fmul reassoc nsz arcp contract afn double %i.ait, 2.000000e+00
  %i.aiv = fdiv reassoc nsz arcp contract afn double %i.air, %i.aiu
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.ahr, i64 4 ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8
  %i.aiy = load float, ptr %i.aix, align 4, !tbaa !30
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aho, i64 8
  %i.aja = load float, ptr %i.aiz, align 4, !tbaa !30
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %i.ajc = load <2 x float>, ptr %i.aiw, align 4, !tbaa !30
  %i.ajd = fpext reassoc nsz arcp contract afn <2 x float> %i.ajc to <2 x double> ; 2 uses
  %i.aje = extractelement <2 x double> %i.ajd, i64 0
  %i.ajf = fsub reassoc nsz arcp contract afn double %i.aje, %i.aiv
  %i.ajg = fptrunc reassoc nsz arcp contract afn double %i.ajf to float
  store float %i.ajg, ptr %i.aiw, align 4, !tbaa !30
  %i.ajh = load float, ptr %i.ahg, align 4, !tbaa !30 ; 2 uses
  %i.aji = fmul reassoc nsz arcp contract afn float %i.aiy, %i.ajh
  %i.ajj = load float, ptr %i.ahk, align 4, !tbaa !30 ; 2 uses
  %i.ajk = fmul reassoc nsz arcp contract afn float %i.aja, %i.ajj
  %i.ajl = fadd reassoc nsz arcp contract afn float %i.ajk, %i.aji
  %i.ajm = fpext reassoc nsz arcp contract afn float %i.ajl to double
  %i.ajn = fadd reassoc nsz arcp contract afn float %i.ajj, %i.ajh
  %i.ajo = fpext reassoc nsz arcp contract afn float %i.ajn to double
  %i.ajp = fmul reassoc nsz arcp contract afn double %i.ajo, 2.000000e+00
  %i.ajq = fdiv reassoc nsz arcp contract afn double %i.ajm, %i.ajp
  %i.ajr = extractelement <2 x double> %i.ajd, i64 1
  %i.ajs = fsub reassoc nsz arcp contract afn double %i.ajr, %i.ajq
  %i.ajt = fptrunc reassoc nsz arcp contract afn double %i.ajs to float
  store float %i.ajt, ptr %i.ajb, align 4, !tbaa !30
  %indvars.iv.next381.i = add nsw i64 %indvars.iv380.i, %i.zz ; 3 uses
  %i.aju = icmp slt i64 %indvars.iv.next381.i, %i.zy
  br i1 %i.aju, label %.preheader331.i, label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %.preheader331.i
  %i.ajv = trunc nsw i64 %indvars.iv.next381.i to i32
  br label %._crit_edge.i176

._crit_edge.i176:                                 ; preds = %._crit_edge.loopexit.i, %.preheader337.i
  %.1294.lcssa.i = phi i32 [ %i.zj, %.preheader337.i ], [ %i.ajv, %._crit_edge.loopexit.i ] ; 3 uses
  %i.ajw = icmp slt i32 %.1294.lcssa.i, %i.h
  br i1 %i.ajw, label %.preheader334.i, label %.loopexit335.i

.preheader334.i:                                  ; preds = %._crit_edge.i176
  %i.ajx = sub nsw i32 %.1294.lcssa.i, %i.zk
  %i.ajy = sext i32 %i.ajx to i64
  %i.ajz = mul nsw i64 %i.ajy, %i.uf
  %i.aka = add nsw i64 %i.ajz, %indvars.iv395.i
  %.idx316.i = shl i64 %i.aka, 4
  %i.akb = getelementptr inbounds nuw i8, ptr %3, i64 %.idx316.i ; 2 uses
  %i.akc = sext i32 %.1294.lcssa.i to i64
  %i.akd = mul nsw i64 %i.akc, %i.uf
  %i.ake = add nsw i64 %i.akd, %indvars.iv395.i
  %.idx317.i = shl i64 %i.ake, 4
  %i.akf = getelementptr inbounds nuw i8, ptr %3, i64 %.idx317.i ; 3 uses
  %i.akg = load <2 x float>, ptr %i.akb, align 4, !tbaa !30
  %i.akh = fmul reassoc nsz arcp contract afn <2 x float> %i.akg, splat (float 5.000000e-01)
  %i.aki = load <2 x float>, ptr %i.akf, align 4, !tbaa !30
  %i.akj = fsub reassoc nsz arcp contract afn <2 x float> %i.aki, %i.akh
  store <2 x float> %i.akj, ptr %i.akf, align 4, !tbaa !30
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akb, i64 8
  %i.akl = load float, ptr %i.akk, align 4, !tbaa !30
  %i.akm = fmul reassoc nsz arcp contract afn float %i.akl, 5.000000e-01
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akf, i64 8 ; 2 uses
  %i.ako = load float, ptr %i.akn, align 4, !tbaa !30
  %i.akp = fsub reassoc nsz arcp contract afn float %i.ako, %i.akm
  store float %i.akp, ptr %i.akn, align 4, !tbaa !30
  br label %.loopexit335.i

.loopexit335.i:                                   ; preds = %.preheader334.i, %._crit_edge.i176
  br i1 %i.zx, label %.preheader330.i, label %._crit_edge350.i

.preheader330.i:                                  ; preds = %.loopexit335.i, %.preheader330.i
  %indvars.iv389.i = phi i64 [ %indvars.iv.next390.i, %.preheader330.i ], [ %i.zu, %.loopexit335.i ] ; 5 uses
end_hunk_0
begin_hunk_1_@llvm.log2.f32
declare float @llvm.log2.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #14

declare ptr @interpolate_set(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

declare float @interpolate_val(i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #14

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS15dt_iop_module_t", !11, i64 0}
!13 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !11, i64 0}
!14 = !{!"p1 _ZTS18dt_histogram_roi_t", !11, i64 0}
!15 = !{!"dt_dev_histogram_collection_params_t", !14, i64 0, !8, i64 8}
!16 = !{!"p1 int", !11, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !17, i64 8, !8, i64 16, !8, i64 20}
!19 = !{!"float", !7, i64 0}
!20 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !19, i64 16}
!21 = !{!"short", !7, i64 0}
!22 = !{!"", !21, i64 0, !21, i64 2}
!23 = !{!"", !8, i64 0, !7, i64 16}
!24 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !22, i64 48, !23, i64 64, !7, i64 96, !8, i64 112}
!25 = !{!"p1 _ZTS11_GHashTable", !11, i64 0}
!26 = !{!"p1 float", !11, i64 0}
!27 = !{!"dt_dev_distorted_mask_cache_t", !26, i64 0, !20, i64 8, !17, i64 32, !17, i64 40}
!28 = !{!"dt_dev_pixelpipe_iop_t", !12, i64 0, !13, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !15, i64 40, !16, i64 56, !18, i64 64, !7, i64 88, !19, i64 104, !8, i64 108, !8, i64 112, !17, i64 120, !8, i64 128, !8, i64 132, !20, i64 136, !20, i64 156, !20, i64 176, !20, i64 196, !8, i64 216, !8, i64 220, !24, i64 224, !24, i64 352, !7, i64 480, !8, i64 516, !25, i64 520, !27, i64 528, !27, i64 576}
!29 = !{!28, !11, i64 16}
!30 = !{!19, !19, i64 0}
!31 = !{!"dt_iop_equalizer_data_t", !7, i64 0, !8, i64 24}
!32 = !{!31, !8, i64 24}
!33 = !{!"p1 _ZTS15dt_draw_curve_t", !11, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"", !8, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !7, i64 20, !7, i64 24}
!36 = !{!"p1 short", !11, i64 0}
!37 = !{!"", !8, i64 0, !8, i64 4, !36, i64 8}
!38 = !{!"dt_draw_curve_t", !35, i64 0, !37, i64 184}
!39 = !{!38, !7, i64 20}
!40 = !{!"", !19, i64 0, !19, i64 4}
!41 = !{!40, !19, i64 0}
!42 = !{!40, !19, i64 4}
!43 = !{!38, !8, i64 0}
!44 = !{!"any p2 pointer", !11, i64 0}
!45 = !{!"p1 long", !11, i64 0}
!46 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !11, i64 0}
!47 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !17, i64 8, !17, i64 16, !44, i64 24, !45, i64 32, !46, i64 40, !45, i64 48, !16, i64 56, !16, i64 64, !17, i64 72, !8, i64 80, !17, i64 88, !17, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!48 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !11, i64 0}
!49 = !{!"p1 _ZTS6_GList", !11, i64 0}
!50 = !{!"p1 omnipotent char", !11, i64 0}
!51 = !{!"dt_pthread_mutex_t", !7, i64 0}
!52 = !{!"dt_dev_detail_mask_t", !20, i64 0, !17, i64 24, !26, i64 32}
!53 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!54 = !{!"double", !7, i64 0}
!55 = !{!"dt_image_geoloc_t", !54, i64 0, !54, i64 8, !54, i64 16}
!56 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!57 = !{!"p1 _ZTS16dt_cache_entry_t", !11, i64 0}
!58 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !17, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !19, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !17, i64 1448, !17, i64 1456, !17, i64 1464, !17, i64 1472, !8, i64 1480, !24, i64 1488, !7, i64 1616, !50, i64 1656, !8, i64 1664, !8, i64 1668, !53, i64 1672, !55, i64 1680, !56, i64 1704, !21, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !19, i64 1756, !19, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !49, i64 1856, !57, i64 1864, !8, i64 1872, !8, i64 1876}
!59 = !{!"dt_dev_pixelpipe_t", !47, i64 0, !8, i64 120, !17, i64 128, !26, i64 136, !8, i64 144, !8, i64 148, !19, i64 152, !8, i64 156, !8, i64 160, !24, i64 176, !48, i64 304, !48, i64 312, !48, i64 320, !48, i64 328, !49, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !50, i64 360, !17, i64 368, !8, i64 376, !8, i64 380, !19, i64 384, !7, i64 388, !17, i64 416, !51, i64 424, !51, i64 464, !51, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !52, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !7, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !58, i64 656, !8, i64 2544, !50, i64 2552, !8, i64 2560, !49, i64 2568, !49, i64 2576, !49, i64 2584, !8, i64 2592, !26, i64 2600, !17, i64 2608, !7, i64 2616, !7, i64 2632}
!60 = !{!59, !8, i64 144}
!61 = !{!59, !19, i64 152}
!62 = !{!59, !8, i64 148}
!63 = !{!"p1 _ZTS8_GModule", !11, i64 0}
!64 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!65 = !{!"p1 _ZTS25dt_develop_blend_params_t", !11, i64 0}
!66 = !{!"", !25, i64 0, !25, i64 8}
!67 = !{!"", !12, i64 0, !8, i64 8}
!68 = !{!"", !66, i64 0, !67, i64 16}
!69 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!70 = !{!"p1 _ZTS7_GSList", !11, i64 0}
!71 = !{!"p1 _ZTS18dt_iop_module_so_t", !11, i64 0}
!72 = !{!"dt_iop_module_t", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !63, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !16, i64 608, !18, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !64, i64 664, !8, i64 672, !8, i64 676, !11, i64 680, !11, i64 688, !8, i64 696, !11, i64 704, !51, i64 712, !11, i64 752, !11, i64 760, !65, i64 768, !65, i64 776, !11, i64 784, !68, i64 792, !69, i64 824, !69, i64 832, !69, i64 840, !69, i64 848, !69, i64 856, !69, i64 864, !69, i64 872, !8, i64 880, !69, i64 888, !69, i64 896, !69, i64 904, !70, i64 912, !70, i64 920, !69, i64 928, !69, i64 936, !8, i64 944, !71, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !69, i64 1096, !11, i64 1104, !8, i64 1112}
!73 = !{!72, !11, i64 688}
!74 = !{!38, !36, i64 192}
!75 = !{!72, !11, i64 704}
!76 = distinct !{!76, !123, !124}
!77 = distinct !{!77, !125}
!78 = distinct !{!78, !124, !123}
!79 = distinct !{!79, !123}
!80 = distinct !{!80, !123}
!81 = distinct !{!81, i1 false, !"LVerDomain"}
!82 = distinct !{!82, !81}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !81}
!85 = distinct !{!85, !123, !124}
!86 = distinct !{!86, !123, !124}
!87 = distinct !{!87, !125}
!88 = distinct !{!88, !123}
!89 = distinct !{!89, i1 false, !"LVerDomain"}
!90 = distinct !{!90, !89}
!91 = distinct !{!91, !89}
!92 = distinct !{!92, !89}
!93 = distinct !{!93, !89}
!94 = distinct !{!94, !89}
!95 = distinct !{!95, !89}
!96 = distinct !{!96, !89}
!97 = distinct !{!97, !89}
!98 = distinct !{!98, !89}
!99 = distinct !{!99, !89}
!100 = distinct !{!100, !89}
!101 = distinct !{!101, !123, !124}
!102 = distinct !{!102, !123}
!103 = distinct !{!103, i1 false, !"LVerDomain"}
!104 = distinct !{!104, !103}
!105 = distinct !{!105, !103}
!106 = distinct !{!106, !103}
!107 = distinct !{!107, !103}
!108 = distinct !{!108, !103}
!109 = distinct !{!109, !103}
!110 = distinct !{!110, !103}
!111 = distinct !{!111, !103}
!112 = distinct !{!112, !103}
!113 = distinct !{!113, !103}
!114 = distinct !{!114, !103}
!115 = distinct !{!115, !123, !124}
!116 = distinct !{!116, !123}
!117 = !{!28, !8, i64 132}
!118 = !{!20, !8, i64 8}
!119 = !{!20, !8, i64 12}
!120 = !{!20, !19, i64 16}
!121 = !{!28, !19, i64 104}
!122 = !{!26, !26, i64 0}
!123 = !{!"llvm.loop.isvectorized", i32 1}
!124 = !{!"llvm.loop.unroll.runtime.disable"}
!125 = !{!"llvm.loop.unroll.disable"}
!126 = !{!82}
!127 = !{!83}
!128 = !{!84, !82}
!129 = !{!84}
!130 = !{!"branch_weights", i32 4, i32 12}
!131 = !{!38, !19, i64 12}
!132 = !{!38, !19, i64 16}
!133 = !{!90}
!134 = !{!91}
!135 = !{!92}
!136 = !{!100, !99, !91, !90, !98, !97, !96, !95, !94, !93}
!137 = !{!100}
!138 = !{!99, !91, !90, !98, !97, !96, !95, !94, !93}
!139 = !{!99}
!140 = !{!91, !90, !98, !97, !96, !95, !94, !93}
!141 = !{!104}
!142 = !{!105}
!143 = !{!106}
!144 = !{!114, !113, !105, !104, !112, !111, !110, !109, !108, !107}
!145 = !{!114}
!146 = !{!113, !105, !104, !112, !111, !110, !109, !108, !107}
!147 = !{!113}
!148 = !{!105, !104, !112, !111, !110, !109, !108, !107}
!149 = !{!38, !8, i64 184}
!150 = !{!38, !8, i64 188}
!151 = !{!72, !11, i64 680}
!152 = !{!72, !8, i64 676}
!153 = !{!72, !8, i64 696}
!154 = !{!72, !69, i64 824}
!155 = !{!"p1 _ZTS24dt_introspection_field_t", !11, i64 0}
!156 = !{!"dt_introspection_t", !8, i64 0, !8, i64 4, !50, i64 8, !17, i64 16, !155, i64 24, !17, i64 32, !17, i64 40}
!157 = !{!156, !8, i64 0}
!158 = !{!7, !7, i64 0}
end_hunk_1
