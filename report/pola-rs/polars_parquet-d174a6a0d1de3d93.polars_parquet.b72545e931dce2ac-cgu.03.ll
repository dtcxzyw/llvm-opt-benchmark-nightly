Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.03?download=true
inline.NumInlined: 2990
inline.NumDeleted: 909
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read10statistics15deserialize_all:bb.a

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.xn, ptr noundef nonnull align 8 dereferenceable(72) %i.fz, i64 72, i1 false), !dbg !40412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz), !dbg !40413
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array4null9NullArrayECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.te)
          to label %bb.bc unwind label %bb.av, !dbg !40398

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.te), !dbg !40398
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array4null9NullArrayECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.tg)
          to label %bb.bd unwind label %.loopexit.split-lp, !dbg !40398

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tg), !dbg !40398
  br label %bb.be, !dbg !40398

bb.be:                                            ; preds = %bb.bez, %bb.bbx, %bb.bag, %bb.aye, %bb.awr, %bb.avc, %bb.atb, %bb.arp, %bb.aqc, %bb.anb, %bb.aka, %bb.aik, %bb.ago, %bb.aey, %bb.acx, %bb.aax, %bb.zi, %bb.xt, %bb.wh, %bb.uo, %bb.sv, %bb.rg, %bb.pr, %bb.nn, %bb.ly, %bb.km, %bb.ja, %bb.hl, %bb.fw, %bb.eh, %bb.cs, %bb.bd
  %.sroa.33.0 = phi ptr [ @180, %bb.bd ], [ @25, %bb.cs ], [ @28, %bb.eh ], [ @29, %bb.fw ], [ @36, %bb.hl ], [ @30, %bb.ja ], [ @31, %bb.km ], [ @31, %bb.ly ], [ @32, %bb.nn ], [ @19, %bb.pr ], [ @20, %bb.rg ], [ @21, %bb.sv ], [ @33, %bb.uo ], [ @33, %bb.wh ], [ @33, %bb.xt ], [ @33, %bb.aax ], [ @34, %bb.zi ], [ @34, %bb.acx ], [ @35, %bb.aey ], [ @22, %bb.ago ], [ @24, %bb.aik ], [ @22, %bb.aka ], [ @23, %bb.anb ], [ @23, %bb.aqc ], [ @26, %bb.arp ], [ @26, %bb.atb ], [ @26, %bb.avc ], [ @27, %bb.awr ], [ @27, %bb.aye ], [ @27, %bb.bag ], [ @22, %bb.bbx ], [ @23, %bb.bez ], !dbg !40414 ; 4 uses
  %.sroa.01816.0 = phi ptr [ %i.xn, %bb.bd ], [ %i.yy, %bb.cs ], [ %i.abb, %bb.eh ], [ %i.adg, %bb.fw ], [ %i.afj, %bb.hl ], [ %i.aho, %bb.ja ], [ %i.ajl, %bb.km ], [ %i.alm, %bb.ly ], [ %i.ann, %bb.nn ], [ %i.aqb, %bb.pr ], [ %i.asa, %bb.rg ], [ %i.atz, %bb.sv ], [ %i.awi, %bb.uo ], [ %i.ayl, %bb.wh ], [ %i.bam, %bb.xt ], [ %i.bek, %bb.aax ], [ %i.bcl, %bb.zi ], [ %i.bgs, %bb.acx ], [ %i.biw, %bb.aey ], [ %i.bkp, %bb.ago ], [ %i.bmo, %bb.aik ], [ %i.boh, %bb.aka ], [ %i.bsd, %bb.anb ], [ %i.bvz, %bb.aqc ], [ %i.bya, %bb.arp ], [ %i.bzz, %bb.atb ], [ %i.ccl, %bb.avc ], [ %i.ceu, %bb.awr ], [ %i.cgz, %bb.aye ], [ %i.cjf, %bb.bag ], [ %i.ckz, %bb.bbx ], [ %i.cov, %bb.bez ], !dbg !40414 ; 2 uses
  %.sroa.02938.0 = phi ptr [ %i.xh, %bb.bd ], [ %i.ys, %bb.cs ], [ %i.aav, %bb.eh ], [ %i.ada, %bb.fw ], [ %i.afd, %bb.hl ], [ %i.ahi, %bb.ja ], [ %i.ajf, %bb.km ], [ %i.alg, %bb.ly ], [ %i.anh, %bb.nn ], [ %i.apv, %bb.pr ], [ %i.aru, %bb.rg ], [ %i.att, %bb.sv ], [ %i.awc, %bb.uo ], [ %i.ayf, %bb.wh ], [ %i.bag, %bb.xt ], [ %i.bee, %bb.aax ], [ %i.bcf, %bb.zi ], [ %i.bgm, %bb.acx ], [ %i.biq, %bb.aey ], [ %i.bkj, %bb.ago ], [ %i.bmi, %bb.aik ], [ %i.bob, %bb.aka ], [ %i.brx, %bb.anb ], [ %i.bvt, %bb.aqc ], [ %i.bxu, %bb.arp ], [ %i.bzt, %bb.atb ], [ %i.ccf, %bb.avc ], [ %i.ceo, %bb.awr ], [ %i.cgt, %bb.aye ], [ %i.ciz, %bb.bag ], [ %i.ckt, %bb.bbx ], [ %i.cop, %bb.bez ], !dbg !40414 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gg), !dbg !40415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gf), !dbg !40415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.gf, ptr noundef nonnull align 8 dereferenceable(88) %i.ti, i64 88, i1 false), !dbg !40415
  invoke void @_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB4_14PrimitiveArraymEINtNtCscgRAwXFJnXP_4core7convert4FromINtB2_21MutablePrimitiveArraymEE4fromCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.gg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.gf)
          to label %bb.bfc unwind label %bb.bfb, !dbg !40416

bb.bf:                                            ; preds = %bb.bef, %bb.azm, %bb.aui, %bb.apj, %bb.ami, %bb.aee, %bb.acd, %bb.oz, %.thread4709, %.thread4735, %.thread4773, %.thread4812, %.thread4851, %.thread4890, %.thread4925, %.thread4960, %.thread4999, %.thread5046, %.thread5085, %.thread5124, %.thread5159, %.thread5194, %.thread5229, %.thread5268, %.thread5307, %.thread5344, %.thread5381, %.thread5416, %.thread5455, %.thread5490, %.thread5561, %.thread5632, %.thread5667, %.thread5702, %.thread5739, %.thread5774, %.thread5809, %.thread5846, %.thread5881, %bb.bfa, %bb.bff, %.thread5952, %bb.bfh, %.thread4703, %bb.bfg, %.thread5892, %bb.bfd, %.body3411, %.body3413, %.thread5914, %.thread5930, %bb.beb, %bb.bby, %.thread5857, %.body3394, %.body3396, %bb.bbf, %bb.bah, %.thread5820, %.body3433, %.body3435, %bb.azp, %bb.ayf, %.thread5785, %.body3438, %.body3441, %bb.aws, %.thread5750, %.body3444, %.body3447, %bb.avd, %.thread5713, %.body3497, %.body3499, %bb.aul, %bb.atc, %.thread5678, %.body3502, %.body3505, %bb.arq, %.thread5643, %.body3508, %.body3511, %bb.aqd, %.thread5572, %.body3416, %.body3419, %.thread5594, %.thread5610, %bb.apf, %bb.anc, %.thread5501, %.body3422, %.body3425, %.thread5523, %.thread5539, %bb.ame, %bb.akb, %.thread5466, %.body3399, %.body3402, %bb.aji, %bb.ail, %.thread5427, %.body3552, %.body3554, %.body.thread, %bb.agp, %.thread5392, %.body3405, %.body3408, %bb.afw, %bb.aez, %.thread5355, %.body3450, %.body3452, %bb.aeh, %bb.acy, %.thread5318, %.body3475, %.body3477, %bb.acg, %bb.aay, %.thread5279, %.body3524, %.body3526, %bb.zj, %.thread5240, %.body3480, %.body3483, %bb.xu, %.thread5205, %.body3529, %.body3532, %bb.wi, %.thread5170, %.body3535, %.body3538, %bb.up, %.thread5135, %.body3541, %.body3544, %bb.sw, %.thread5096, %.body3460, %.body3462, %bb.rh, %.thread5057, %.body3465, %.body3467, %bb.ps, %.thread5010, %.body3428, %.body3430, %.body3769.thread, %bb.no, %.thread4971, %.body3547, %.body3549, %bb.lz, %.thread4936, %.body3486, %.body3488, %bb.kn, %.thread4901, %.body3491, %.body3494, %bb.jb, %.thread4862, %.body3519, %.body3521, %bb.hm, %.thread4823, %.body3470, %.body3472, %bb.fx, %.thread4784, %.body3514, %.body3516, %bb.ei, %.thread4746, %.body3455, %.body3457, %bb.ct, %.thread4720, %.body3562, %.body3564, %.body3557, %.body3559
  %i.xq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !40417
  unreachable, !dbg !40417

.thread4709:                                      ; preds = %.body3557, %.thread4713.a
  %.pn33814712 = phi { ptr, i32 } [ %i.xk, %.thread4713.a ], [ %eh.lpad-body3558, %.body3557 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfISxE4fmY1Y_14polars_parquet(ptr nonnull %i.xh, ptr nonnull @180) #30
          to label %.body3559 unwind label %bb.bf, !dbg !40398

bb.bg:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.tb), !dbg !40418
  invoke void @_RNvMs1_NtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean7mutableNtB5_19MutableBooleanArray13with_capacity(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.tb, i64 noundef %3)
          to label %.lr.ph7041.a unwind label %.thread4715, !dbg !40419

bb.bh:                                            ; preds = %.thread4720
  br i1 %.sroa.01976.14724, label %bb.ct, label %.thread4703, !dbg !40420

.thread4715:                                      ; preds = %bb.bg, %bb.ca
  %i.xr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct, !dbg !40420

.lr.ph7041.a:                                     ; preds = %bb.bg
  %.idx7106.a = mul nuw nsw i64 %3, 104, !dbg !40421
  %i.xs = getelementptr inbounds nuw i8, ptr %2, i64 %.idx7106.a, !dbg !40421
  %.sroa.51988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ta, i64 8 ; 2 uses
  %.sroa.61989.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ta, i64 40
  %i.xt = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %.sroa.54188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %.sroa.64189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sz, i64 24
  %.sroa.74190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sz, i64 32
  %.sroa.84191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sz, i64 40
  %.sroa.94192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sz, i64 41
  %.sroa.5.0..sroa_idx9808 = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %.sroa.69809.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sz, i64 40
  br label %bb.bj, !dbg !40422

._crit_edge7042.a:                                ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.sy), !dbg !40423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.sx), !dbg !40423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.sx, ptr noundef nonnull align 8 dereferenceable(96) %i.tc, i64 96, i1 false), !dbg !40423
  invoke void @_RNvMs1_NtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean7mutableNtB5_19MutableBooleanArray6freeze(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.sy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.sx)
          to label %bb.ce unwind label %.split.thread.loopexit.split-lp, !dbg !40424

bb.bi:                                            ; preds = %.body3564
  br i1 %.sroa.01975.2, label %.thread4720, label %.thread4703, !dbg !40425

.split.thread.loopexit:                           ; preds = %bb.bk
  %lpad.loopexit6086 = landingpad { ptr, i32 }
          cleanup
  br label %.thread4720

.split.thread.loopexit.split-lp:                  ; preds = %bb.bl, %._crit_edge7042.a
  %lpad.loopexit.split-lp6087 = landingpad { ptr, i32 }
          cleanup
  br label %.thread4720

.split:                                           ; preds = %bb.cr
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread4703, !dbg !40425

bb.bj:                                            ; preds = %.lr.ph7041.a, %bb.bz
  %.sroa.070.07039 = phi ptr [ %2, %.lr.ph7041.a ], [ %i.xu, %bb.bz ] ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.sroa.070.07039, i64 104, !dbg !40426 ; 2 uses
  %i.xv = getelementptr i8, ptr %.sroa.070.07039, i64 24, !dbg !40427
  %.sroa.070.0.val = load ptr, ptr %i.xv, align 8, !dbg !40427, !nonnull !1984, !noundef !1984 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %.sroa.070.0.val, i64 32, !dbg !40428
  %i.xx = load i64, ptr %i.xw, align 8, !dbg !40428, !noundef !1984 ; 2 uses
  %.not8426.not.not.a = icmp uge i64 %4, %i.xx, !dbg !40429 ; 2 uses
  br i1 %.not8426.not.not.a, label %bb.bl, label %bb.bk, !dbg !40429

bb.bk:                                            ; preds = %bb.bj
  %i.xy = getelementptr inbounds nuw i8, ptr %.sroa.070.0.val, i64 24, !dbg !40430
  %i.xz = load ptr, ptr %i.xy, align 8, !dbg !40430, !nonnull !1984, !noundef !1984
  %i.ya = getelementptr inbounds nuw [224 x i8], ptr %i.xz, i64 %4, !dbg !40431
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !40432
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69809), !dbg !40432
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !38772
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7), !dbg !38772
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9), !dbg !38772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ta), !dbg !38772
  invoke void @_RNvMNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata21column_chunk_metadataNtB2_19ColumnChunkMetadata10statistics(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.ta, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.ya, ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6)
          to label %bb.bm unwind label %.split.thread.loopexit, !dbg !40433

bb.bl:                                            ; preds = %bb.bj
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %4, i64 noundef %i.xx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #33
          to label %bb.l unwind label %.split.thread.loopexit.split-lp, !dbg !40429

bb.bm:                                            ; preds = %bb.bk
  %i.yb = load i64, ptr %i.ta, align 8, !dbg !40434, !range !38770, !noundef !1984 ; 2 uses
  switch i64 %i.yb, label %bb.bo [
    i64 9, label %bb.bn
    i64 8, label %bb.ca
  ], !dbg !40435

bb.bn:                                            ; preds = %bb.bm, %bb.bo
  %i.yc = phi i64 [ %i.yb, %bb.bo ], [ 8, %bb.bm ], !dbg !40436 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ta), !dbg !40437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, i64 32, i1 false), !dbg !40438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.69809, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.9, i64 152, i1 false), !dbg !40438
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7), !dbg !40439
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9), !dbg !40439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !dbg !38772
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !40440
  %.not3372 = icmp eq i64 %i.yc, 8, !dbg !40441
  br i1 %.not3372, label %bb.bu, label %bb.bp, !dbg !40442

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.51988.0..sroa_idx, i64 32, i1 false), !dbg !40443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.61989.0..sroa_idx, i64 152, i1 false), !dbg !40443
  br label %bb.bn, !dbg !40444

bb.bp:                                            ; preds = %bb.bn
  store i64 %i.yc, ptr %i.sz, align 8, !dbg !40445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx9808, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false), !dbg !40445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.69809.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.69809, i64 152, i1 false), !dbg !40445
  call void @llvm.experimental.noalias.scope.decl(metadata !38773), !dbg !40446
  call void @llvm.experimental.noalias.scope.decl(metadata !38774), !dbg !40446
  %i.yd = load i64, ptr %i.sz, align 8, !dbg !40447, !range !2209, !alias.scope !38774, !noalias !38775, !noundef !1984 ; 3 uses
  %i.ye = icmp eq i64 %i.yd, 1, !dbg !40448
  br i1 %i.ye, label %bb.bq, label %switch.lookup, !dbg !40448, !prof !2217

bb.bq:                                            ; preds = %bb.bp
  %.sroa.04187.0.copyload = load i64, ptr %i.xt, align 8, !dbg !40449, !alias.scope !38776, !noalias !38777 ; 2 uses
  %.sroa.54188.0.copyload = load i64, ptr %.sroa.54188.0..sroa_idx, align 8, !dbg !40449, !alias.scope !38776, !noalias !38777
  %.sroa.64189.0.copyload = load i64, ptr %.sroa.64189.0..sroa_idx, align 8, !dbg !40449, !alias.scope !38776, !noalias !38777 ; 2 uses
  %.sroa.74190.0.copyload = load i64, ptr %.sroa.74190.0..sroa_idx, align 8, !dbg !40449, !alias.scope !38776, !noalias !38777
  %.sroa.84191.0.copyload = load i8, ptr %.sroa.84191.0..sroa_idx, align 8, !dbg !40449, !alias.scope !38776, !noalias !38777
  %.sroa.94192.0.copyload = load i8, ptr %.sroa.94192.0..sroa_idx, align 1, !dbg !40449, !alias.scope !38776, !noalias !38777
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsEBM_(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.sz)
          to label %bb.bv unwind label %.body3664.thread4732, !dbg !40450

.body3664.thread4732:                             ; preds = %bb.bq
  %i.yf = landingpad { ptr, i32 }
          cleanup
  br label %.thread4720, !dbg !40451

switch.lookup:                                    ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !dbg !40452, !noalias !38778
  %i.yg = getelementptr inbounds nuw i8, ptr %i.bj, i64 8, !dbg !40453
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read10statistics15deserialize_all, i64 %i.yd, !dbg !40454
  %switch.load = load ptr, ptr %switch.gep, align 8, !dbg !40454
  %switch.gep9054 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read10statistics15deserialize_all.338, i64 %i.yd, !dbg !40454
  %switch.load9055 = load i8, ptr %switch.gep9054, align 1, !dbg !40454
  %switch.ext = zext i8 %switch.load9055 to i64, !dbg !40454
  store ptr %switch.load, ptr %i.bj, align 8, !dbg !40453, !noalias !38778
  store i64 %switch.ext, ptr %i.yg, align 8, !dbg !40453, !noalias !38778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !dbg !40455, !noalias !38778
  store ptr %i.bj, ptr %i.bi, align 8, !dbg !40455, !noalias !38778
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8, !dbg !40455
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfISxE4fmY1Y_14polars_parquet, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !40455, !noalias !38778
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @175, ptr noundef nonnull %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #33
          to label %bb.br unwind label %bb.bs, !dbg !40456, !noalias !38776

bb.br:                                            ; preds = %switch.lookup
  unreachable

bb.bs:                                            ; preds = %switch.lookup
  %i.yh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsEBM_(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.sz) #30
          to label %.thread4720 unwind label %bb.bt, !dbg !40450, !noalias !38773

bb.bt:                                            ; preds = %bb.bs
  %i.yi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !40457, !noalias !38773
  unreachable, !dbg !40457

bb.bu:                                            ; preds = %bb.bn, %bb.bv
  %.sroa.4113.0 = phi i32 [ %.sroa.4113.1, %bb.bv ], [ undef, %bb.bn ], !dbg !40458
  %.sroa.0112.0 = phi i32 [ %i.yp, %bb.bv ], [ 0, %bb.bn ], !dbg !40458
  %.sroa.4108.0 = phi i32 [ %spec.select, %bb.bv ], [ undef, %bb.bn ], !dbg !40458
  %.sroa.0107.0 = phi i32 [ %i.ym, %bb.bv ], [ 0, %bb.bn ], !dbg !40458
  %.sroa.0106.0 = phi i8 [ %.sroa.84191.0.copyload, %bb.bv ], [ 2, %bb.bn ], !dbg !40458
  %.sroa.095.0 = phi i8 [ %.sroa.94192.0.copyload, %bb.bv ], [ 2, %bb.bn ], !dbg !40458
  invoke fastcc void @_RNvMs1_NtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean7mutableNtB5_19MutableBooleanArray4push(ptr noalias noundef align 8 dereferenceable(96) %i.tc, i8 noundef %.sroa.095.0)
          to label %bb.bw unwind label %.body3664, !dbg !40459

.body3664:                                        ; preds = %bb.bu, %bb.bw, %bb.bx, %bb.by
  %i.yj = landingpad { ptr, i32 }
          cleanup
  br label %.thread4720, !dbg !40451

bb.bv:                                            ; preds = %bb.bq
  %i.yk = trunc nuw i64 %.sroa.04187.0.copyload to i1, !dbg !40460
  %i.yl = trunc i64 %.sroa.54188.0.copyload to i32
  %spec.select = select i1 %i.yk, i32 %i.yl, i32 undef, !dbg !40460
  %i.ym = trunc nuw i64 %.sroa.04187.0.copyload to i32, !dbg !40460
  %i.yn = trunc nuw i64 %.sroa.64189.0.copyload to i1, !dbg !40461
  %i.yo = trunc i64 %.sroa.74190.0.copyload to i32, !dbg !40461
  %.sroa.4113.1 = select i1 %i.yn, i32 %i.yo, i32 undef, !dbg !40461
  %i.yp = trunc nuw i64 %.sroa.64189.0.copyload to i32, !dbg !40461
  br label %bb.bu, !dbg !40462

bb.bw:                                            ; preds = %bb.bu
  invoke fastcc void @_RNvMs1_NtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean7mutableNtB5_19MutableBooleanArray4push(ptr noalias noundef align 8 dereferenceable(96) %i.tb, i8 noundef %.sroa.0106.0)
          to label %bb.bx unwind label %.body3664, !dbg !40463

bb.bx:                                            ; preds = %bb.bw
  invoke fastcc void @_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraymE4pushCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(88) %i.ti, i32 noundef %.sroa.0107.0, i32 %.sroa.4108.0)
          to label %bb.by unwind label %.body3664, !dbg !40464

bb.by:                                            ; preds = %bb.bx
  invoke fastcc void @_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraymE4pushCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(88) %i.th, i32 noundef %.sroa.0112.0, i32 %.sroa.4113.0)
          to label %bb.bz unwind label %.body3664, !dbg !40465

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !40451
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69809), !dbg !40451
  %.not7107.a = icmp eq ptr %i.xu, %i.xs, !dbg !40466
  br i1 %.not7107.a, label %._crit_edge7042.a, label %bb.bj, !dbg !40422

bb.ca:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.51988.0..sroa_idx, i64 32, i1 false), !dbg !40467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ta), !dbg !40437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, i64 32, i1 false), !dbg !40468
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7), !dbg !40439
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9), !dbg !40439
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !40469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yq, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !dbg !40439
  store i8 43, ptr %0, align 8, !dbg !40469
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !40440
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !40451
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69809), !dbg !40451
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean7mutable19MutableBooleanArrayECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(96) %i.tb)
          to label %bb.cb unwind label %.thread4715, !dbg !40425

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tb), !dbg !40425
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean7mutable19MutableBooleanArrayECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(96) %i.tc)
          to label %bb.cc unwind label %.loopexit.split-lp, !dbg !40420

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tc), !dbg !40420
  br label %bb.cd, !dbg !40470

bb.cd:                                            ; preds = %bb.bej, %bb.bbi, %bb.bai, %bb.azr, %bb.axp, %bb.awc, %bb.ave, %bb.aun, %bb.asm, %bb.ara, %bb.apn, %bb.amm, %bb.ajl, %bb.ahv, %bb.afz, %bb.aej, %bb.aci, %bb.aai, %bb.yt, %bb.xe, %bb.vs, %bb.tz, %bb.sg, %bb.qr, %bb.pc, %bb.my, %bb.lj, %bb.jx, %bb.il, %bb.gw, %bb.fh, %bb.ds, %bb.cc
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutable21MutablePrimitiveArraymEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(88) %i.th)
          to label %bb.bek unwind label %.thread, !dbg !40305

bb.ce:                                            ; preds = %._crit_edge7042.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.sx), !dbg !40471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy), !dbg !40472
  invoke fastcc void @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array7booleanNtB5_12BooleanArrayNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.fy, ptr noundef nonnull align 8 %i.sy)
          to label %bb.cg unwind label %bb.cf, !dbg !40473

.body3564:                                        ; preds = %bb.ck, %bb.ch, %bb.cf, %.thread4735
  %.sroa.01975.2 = phi i1 [ false, %.thread4735 ], [ false, %bb.ck ], [ true, %bb.cf ], [ true, %bb.ch ], !dbg !40474
  %.pn3375.pn = phi { ptr, i32 } [ %.pn33754738, %.thread4735 ], [ %i.yw, %bb.ck ], [ %i.yr, %bb.cf ], [ %i.yt, %bb.ch ] ; 2 uses
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.sy) #30
          to label %bb.bi unwind label %bb.bf, !dbg !40475

bb.cf:                                            ; preds = %bb.ce
  %i.yr = landingpad { ptr, i32 }
          cleanup
  br label %.body3564

bb.cg:                                            ; preds = %bb.ce
  %i.ys = invoke fastcc noundef ptr @_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 96)
          to label %bb.cj unwind label %bb.ch, !dbg !40476, !noalias !38786 ; 3 uses

bb.ch:                                            ; preds = %bb.cg
  %i.yt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.fy) #30
          to label %.body3564 unwind label %bb.ci, !dbg !40477

bb.ci:                                            ; preds = %bb.ch
  %i.yu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !40478
  unreachable, !dbg !40478

bb.cj:                                            ; preds = %bb.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ys, ptr noundef nonnull align 8 dereferenceable(96) %i.fy, i64 96, i1 false), !dbg !40479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy), !dbg !40480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.sw), !dbg !40481
  call void @llvm.lifetime.start.p0(ptr nonnull %i.sv), !dbg !40481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.sv, ptr noundef nonnull align 8 dereferenceable(96) %i.tb, i64 96, i1 false), !dbg !40481
  invoke void @_RNvMs1_NtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean7mutableNtB5_19MutableBooleanArray6freeze(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.sw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.sv)
          to label %bb.cl unwind label %.thread4739, !dbg !40482

.thread4739:                                      ; preds = %bb.cj
  %i.yv = landingpad { ptr, i32 }
          cleanup
  br label %.thread4735, !dbg !40475

bb.ck:                                            ; preds = %bb.cq
  %i.yw = landingpad { ptr, i32 }
          cleanup
  br label %.body3564, !dbg !40475

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.sv), !dbg !40483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx), !dbg !40484
  invoke fastcc void @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array7booleanNtB5_12BooleanArrayNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.fx, ptr noundef nonnull align 8 %i.sw)
          to label %bb.cn unwind label %bb.cm, !dbg !40485

bb.cm:                                            ; preds = %bb.cl
  %i.yx = landingpad { ptr, i32 }
          cleanup
  br label %.body3562, !dbg !40475

.body3562:                                        ; preds = %bb.co, %bb.cm
  %eh.lpad-body3563 = phi { ptr, i32 } [ %i.yx, %bb.cm ], [ %i.yz, %bb.co ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.sw) #30
          to label %.thread4735 unwind label %bb.bf, !dbg !40475

bb.cn:                                            ; preds = %bb.cl
  %i.yy = invoke fastcc noundef ptr @_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 96)
          to label %bb.cq unwind label %bb.co, !dbg !40486, !noalias !38788 ; 2 uses

bb.co:                                            ; preds = %bb.cn
  %i.yz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.fx) #30
          to label %.body3562 unwind label %bb.cp, !dbg !40487

bb.cp:                                            ; preds = %bb.co
  %i.za = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !40488
  unreachable, !dbg !40488

bb.cq:                                            ; preds = %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.yy, ptr noundef nonnull align 8 dereferenceable(96) %i.fx, i64 96, i1 false), !dbg !40489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx), !dbg !40490
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.sw)
          to label %bb.cr unwind label %bb.ck, !dbg !40475

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.sw), !dbg !40475
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.sy)
          to label %bb.cs unwind label %.split, !dbg !40475

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.sy), !dbg !40475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tb), !dbg !40425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.tc), !dbg !40420
  br label %bb.be, !dbg !40420

.thread4735:                                      ; preds = %.body3562, %.thread4739
  %.pn33754738 = phi { ptr, i32 } [ %i.yv, %.thread4739 ], [ %eh.lpad-body3563, %.body3562 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfISxE4fmY1Y_14polars_parquet(ptr nonnull %i.ys, ptr nonnull @25) #30
          to label %.body3564 unwind label %bb.bf, !dbg !40475

.thread4720:                                      ; preds = %.body3664, %.split.thread.loopexit, %.split.thread.loopexit.split-lp, %bb.bs, %.body3664.thread4732, %bb.bi
  %.pn33784725 = phi { ptr, i32 } [ %i.yh, %bb.bs ], [ %.pn3375.pn, %bb.bi ], [ %i.yf, %.body3664.thread4732 ], [ %i.yj, %.body3664 ], [ %lpad.loopexit.split-lp6087, %.split.thread.loopexit.split-lp ], [ %lpad.loopexit6086, %.split.thread.loopexit ] ; 2 uses
  %.sroa.01976.14724 = phi i1 [ true, %bb.bs ], [ false, %bb.bi ], [ true, %.body3664.thread4732 ], [ true, %.body3664 ], [ %.not8426.not.not.a, %.split.thread.loopexit.split-lp ], [ true, %.split.thread.loopexit ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean7mutable19MutableBooleanArrayECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(96) %i.tb) #30
          to label %bb.bh unwind label %bb.bf, !dbg !40425

bb.ct:                                            ; preds = %.thread4715, %bb.bh
  %.pn3378.pn4718 = phi { ptr, i32 } [ %i.xr, %.thread4715 ], [ %.pn33784725, %bb.bh ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean7mutable19MutableBooleanArrayECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(96) %i.tc) #30
          to label %.thread4703 unwind label %bb.bf, !dbg !40420

bb.cu:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.su), !dbg !40322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw), !dbg !40491
  store i8 2, ptr %i.fw, align 8, !dbg !40492, !alias.scope !38790
  invoke void @_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayaE18with_capacity_fromCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.su, i64 noundef %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.fw)
          to label %bb.cw unwind label %.loopexit.split-lp, !dbg !40493

bb.cv:                                            ; preds = %.thread4746
  br i1 %.sroa.01972.14750, label %bb.ei, label %.thread4703, !dbg !40420

.thread4741:                                      ; preds = %bb.cw, %bb.dq
  %i.zb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei, !dbg !40420

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw), !dbg !40494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.st), !dbg !40495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv), !dbg !40496
  store i8 2, ptr %i.fv, align 8, !dbg !40497, !alias.scope !38794
  invoke void @_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayaE18with_capacity_fromCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.st, i64 noundef %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.fv)
          to label %.lr.ph7036.a unwind label %.thread4741, !dbg !40498

.lr.ph7036.a:                                     ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv), !dbg !40499
  %.idx7104.a = mul nuw nsw i64 %3, 104, !dbg !40500
  %i.zc = getelementptr inbounds nuw i8, ptr %2, i64 %.idx7104.a, !dbg !40500
  %.sroa.52018.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ss, i64 8 ; 2 uses
  %.sroa.62019.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ss, i64 40
  %i.zd = getelementptr inbounds nuw i8, ptr %i.sq, i64 136
  %i.ze = getelementptr inbounds nuw i8, ptr %i.sq, i64 140
  %i.zf = getelementptr inbounds nuw i8, ptr %i.sq, i64 144
  %i.zg = getelementptr inbounds nuw i8, ptr %i.sq, i64 148
  %i.zh = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.zi = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
end_hunk_0
