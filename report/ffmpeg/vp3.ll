Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp3?download=true
inline.NumInlined: 159
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 41
begin_hunk_0_@vp3_decode_frame:bb.a
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahj, i64 160
  store <4 x i32> %i.ahl, ptr %i.ahv, align 4, !tbaa !29
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahj, i64 176
  store <4 x i32> %i.ahl, ptr %i.ahw, align 4, !tbaa !29
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahj, i64 192
  store <4 x i32> %i.ahl, ptr %i.ahx, align 4, !tbaa !29
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahj, i64 208
  store <4 x i32> %i.ahl, ptr %i.ahy, align 4, !tbaa !29
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahj, i64 224
  store <4 x i32> %i.ahl, ptr %i.ahz, align 4, !tbaa !29
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahj, i64 240
  store <4 x i32> %i.ahl, ptr %i.aia, align 4, !tbaa !29
  %.not234.i = icmp eq i64 %indvars.iv362.i, 2
  br i1 %.not234.i, label %unpack_superblocks.exit, label %bb.dy

bb.dy:                                            ; preds = %.critedge11.thread.i
  %spec.select239.i = select i1 %.not229.i, i32 %.7.i, i32 %.0174341.i
  %i.aib = getelementptr inbounds nuw [8 x i8], ptr %i.aai, i64 %indvars.iv362.i ; 2 uses
  %i.aic = load ptr, ptr %i.aib, align 8, !tbaa !98
  %i.aid = sext i32 %.7.i to i64
  %i.aie = getelementptr inbounds [4 x i8], ptr %i.aic, i64 %i.aid
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  store ptr %i.aie, ptr %i.aif, align 8, !tbaa !98
  %indvars.iv.next363.i = add nuw nsw i64 %indvars.iv362.i, 1 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next363.i
  %.pre495 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !29
  %.pre496 = load i32, ptr %i.ay, align 8, !tbaa !59
  br label %bb.ce

.critedge238.sink.split.i:                        ; preds = %bb.bp, %bb.by
  %.str.41.sink.i = phi ptr [ @.str.41, %bb.by ], [ @.str.40, %bb.bp ]
  %i.aig = load ptr, ptr %i.m, align 16, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aig, i32 noundef 16, ptr noundef nonnull %.str.41.sink.i) #11
  br label %.loopexit365

unpack_superblocks.exit:                          ; preds = %.critedge11.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  br label %vp4_unpack_macroblocks.exit

.loopexit365:                                     ; preds = %bb.dn, %.critedge238.sink.split.i
  %.10215.i.ph = phi i32 [ -1, %.critedge238.sink.split.i ], [ -1094995529, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  br label %.sink.split

bb.dz:                                            ; preds = %bb.be
  %i.aih = getelementptr inbounds nuw i8, ptr %i.m, i64 31944
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !96
  %i.aij = getelementptr inbounds nuw i8, ptr %i.m, i64 888
  %i.aik = load i32, ptr %i.aij, align 8, !tbaa !97
  %i.ail = sext i32 %i.aik to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aii, i8 8, i64 %i.ail, i1 false)
  %i.aim = load i32, ptr %i.ay, align 8, !tbaa !59
  %.not.i275 = icmp eq i32 %i.aim, 0
  br i1 %.not.i275, label %bb.ea, label %vp4_unpack_macroblocks.exit.thread346

vp4_unpack_macroblocks.exit.thread346:            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  br label %.preheader166.i

bb.ea:                                            ; preds = %bb.dz
  %i.ain = load i32, ptr %i.t, align 8, !tbaa !50 ; 4 uses
  %i.aio = lshr i32 %i.ain, 3
  %i.aip = zext nneg i32 %i.aio to i64
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.aip
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !51
  %i.ais = load i32, ptr %i.s, align 8, !tbaa !49
  %i.ait = icmp slt i32 %i.ain, %i.ais
  %i.aiu = zext i1 %i.ait to i32
  %spec.select.i.i277 = add i32 %i.ain, %i.aiu
  store i32 %spec.select.i.i277, ptr %i.t, align 8, !tbaa !50
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.m, i64 912 ; 5 uses
  %i.aiw = load i32, ptr %i.aiv, align 16, !tbaa !105
  %.not127156.i = icmp sgt i32 %i.aiw, 0
  br i1 %.not127156.i, label %.lr.ph.i282, label %._crit_edge.thread.i

.lr.ph.i282:                                      ; preds = %bb.ea
  %i.aix = zext i8 %i.air to i32
  %i.aiy = and i32 %i.ain, 7
  %i.aiz = shl nuw nsw i32 %i.aix, %i.aiy
  %i.aja = lshr i32 %i.aiz, 7
  %i.ajb = and i32 %i.aja, 1
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.m, i64 880 ; 3 uses
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ed, %.lr.ph.i282
  %.0108159.i = phi i32 [ 0, %.lr.ph.i282 ], [ %i.ajo, %bb.ed ] ; 3 uses
  %.0110158.i = phi i32 [ 0, %.lr.ph.i282 ], [ %i.ajn, %bb.ed ]
  %.0114157.i = phi i32 [ %i.ajb, %.lr.ph.i282 ], [ %i.ajm, %bb.ed ] ; 2 uses
  %.val141.i = load i32, ptr %i.t, align 8, !tbaa !50
  %.val142.i = load i32, ptr %i.q, align 4, !tbaa !48
  %.not151.i = icmp sgt i32 %.val142.i, %.val141.i
  br i1 %.not151.i, label %bb.ec, label %.sink.split

bb.ec:                                            ; preds = %bb.eb
  %i.ajd = call fastcc i32 @vp4_get_mb_count(ptr noundef nonnull readonly %i.m, ptr noundef nonnull %4) ; 3 uses
  %i.aje = load i32, ptr %i.aiv, align 16, !tbaa !105
  %i.ajf = sub nsw i32 %i.aje, %.0108159.i
  %i.ajg = icmp sgt i32 %i.ajd, %i.ajf
  br i1 %i.ajg, label %.sink.split, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ajh = load ptr, ptr %i.ajc, align 16, !tbaa !90
  %i.aji = sext i32 %.0108159.i to i64
  %i.ajj = getelementptr inbounds i8, ptr %i.ajh, i64 %i.aji
  %.0114.tr.i = trunc nuw nsw i32 %.0114157.i to i8
  %i.ajk = shl nuw nsw i8 %.0114.tr.i, 1
  %i.ajl = sext i32 %i.ajd to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ajj, i8 %i.ajk, i64 %i.ajl, i1 false)
  %i.ajm = xor i32 %.0114157.i, 1                 ; 2 uses
  %i.ajn = or i32 %i.ajm, %.0110158.i             ; 2 uses
  %i.ajo = add nsw i32 %i.ajd, %.0108159.i        ; 2 uses
  %i.ajp = load i32, ptr %i.aiv, align 16, !tbaa !105
  %.not127.i = icmp slt i32 %i.ajo, %i.ajp
  br i1 %.not127.i, label %bb.eb, label %._crit_edge.i283, !llvm.loop !106

._crit_edge.i283:                                 ; preds = %bb.ed
  %i.ajq = icmp eq i32 %i.ajn, 0
  br i1 %i.ajq, label %._crit_edge.thread.i, label %bb.ee

bb.ee:                                            ; preds = %._crit_edge.i283
  %.val.i = load i32, ptr %i.t, align 8, !tbaa !50 ; 5 uses
  %.val140.i = load i32, ptr %i.q, align 4, !tbaa !48
  %.not150.i = icmp sgt i32 %.val140.i, %.val.i
  br i1 %.not150.i, label %bb.ef, label %.sink.split

bb.ef:                                            ; preds = %bb.ee
  %i.ajr = load ptr, ptr %4, align 8, !tbaa !46
  %i.ajs = lshr i32 %.val.i, 3
  %i.ajt = zext nneg i32 %i.ajs to i64
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajr, i64 %i.ajt
  %i.ajv = load i8, ptr %i.aju, align 1, !tbaa !51
  %i.ajw = load i32, ptr %i.s, align 8, !tbaa !49
  %i.ajx = icmp slt i32 %.val.i, %i.ajw
  %i.ajy = zext i1 %i.ajx to i32
  %spec.select.i143.i = add nsw i32 %.val.i, %i.ajy
  store i32 %spec.select.i143.i, ptr %i.t, align 8, !tbaa !50
  %i.ajz = call fastcc i32 @vp4_get_mb_count(ptr noundef nonnull readonly %i.m, ptr noundef nonnull %4) ; 2 uses
  %i.aka = load i32, ptr %i.aiv, align 16, !tbaa !105 ; 2 uses
  %i.akb = icmp sgt i32 %i.aka, 0
  br i1 %i.akb, label %.lr.ph165.i, label %._crit_edge166.i

.lr.ph165.i:                                      ; preds = %bb.ef
  %i.akc = zext i8 %i.ajv to i32
  %i.akd = and i32 %.val.i, 7
  %i.ake = shl nuw nsw i32 %i.akc, %i.akd
  %i.akf = lshr i32 %i.ake, 7
  %i.akg = and i32 %i.akf, 1
  br label %bb.eg

._crit_edge166.i:                                 ; preds = %bb.ek, %bb.ef
  %.0111.lcssa.i = phi i32 [ %i.ajz, %bb.ef ], [ %.2113.i, %bb.ek ]
  %.not129.i = icmp eq i32 %.0111.lcssa.i, 0
  br i1 %.not129.i, label %._crit_edge.thread.i, label %.sink.split

bb.eg:                                            ; preds = %bb.ek, %.lr.ph165.i
  %i.akh = phi i32 [ %i.aka, %.lr.ph165.i ], [ %i.akr, %bb.ek ]
  %indvars.iv.i284 = phi i64 [ 0, %.lr.ph165.i ], [ %indvars.iv.next.i285, %bb.ek ] ; 3 uses
  %.0111162.i = phi i32 [ %i.ajz, %.lr.ph165.i ], [ %.2113.i, %bb.ek ] ; 3 uses
  %.1115161.i = phi i32 [ %i.akg, %.lr.ph165.i ], [ %.3117.i, %bb.ek ] ; 3 uses
  %i.aki = load ptr, ptr %i.ajc, align 16, !tbaa !90 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 %indvars.iv.i284
  %i.akk = load i8, ptr %i.akj, align 1, !tbaa !51
  %.not138.i = icmp eq i8 %i.akk, 0
  br i1 %.not138.i, label %bb.eh, label %bb.ek

bb.eh:                                            ; preds = %bb.eg
  %.not139.i = icmp eq i32 %.0111162.i, 0
  br i1 %.not139.i, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.akl = xor i32 %.1115161.i, 1
  %i.akm = call fastcc i32 @vp4_get_mb_count(ptr noundef nonnull readonly %i.m, ptr noundef nonnull %4)
  %.pre.i286 = load ptr, ptr %i.ajc, align 16, !tbaa !90
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.akn = phi ptr [ %i.aki, %bb.eh ], [ %.pre.i286, %bb.ei ]
  %.2116.i = phi i32 [ %.1115161.i, %bb.eh ], [ %i.akl, %bb.ei ] ; 2 uses
  %.1112.i = phi i32 [ %.0111162.i, %bb.eh ], [ %i.akm, %bb.ei ]
  %i.ako = trunc nuw nsw i32 %.2116.i to i8
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akn, i64 %indvars.iv.i284
  store i8 %i.ako, ptr %i.akp, align 1, !tbaa !51
  %i.akq = add nsw i32 %.1112.i, -1
  %.pre197.i = load i32, ptr %i.aiv, align 16, !tbaa !105
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.eg
  %i.akr = phi i32 [ %i.akh, %bb.eg ], [ %.pre197.i, %bb.ej ] ; 2 uses
  %.3117.i = phi i32 [ %.1115161.i, %bb.eg ], [ %.2116.i, %bb.ej ]
  %.2113.i = phi i32 [ %.0111162.i, %bb.eg ], [ %i.akq, %bb.ej ] ; 2 uses
  %indvars.iv.next.i285 = add nuw nsw i64 %indvars.iv.i284, 1 ; 2 uses
  %i.aks = sext i32 %i.akr to i64
  %i.akt = icmp slt i64 %indvars.iv.next.i285, %i.aks
  br i1 %i.akt, label %bb.eg, label %._crit_edge166.i, !llvm.loop !107

._crit_edge.thread.i:                             ; preds = %._crit_edge166.i, %._crit_edge.i283, %bb.ea
  %i.aku = getelementptr inbounds nuw i8, ptr %i.m, i64 920
  %i.akv = getelementptr inbounds nuw i8, ptr %i.m, i64 928
  %i.akw = getelementptr inbounds nuw i8, ptr %i.m, i64 880
  %i.akx = getelementptr inbounds nuw i8, ptr %i.m, i64 944
  %.promoted = load i32, ptr %i.t, align 8
  br label %bb.el

bb.el:                                            ; preds = %._crit_edge181.i, %._crit_edge.thread.i
  %5 = phi i32 [ %.promoted, %._crit_edge.thread.i ], [ %11, %._crit_edge181.i ] ; 3 uses
  %indvars.iv193.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %indvars.iv.next194.i, %._crit_edge181.i ] ; 3 uses
  %.0105187.i = phi i32 [ 0, %._crit_edge.thread.i ], [ %.1.lcssa.i, %._crit_edge181.i ] ; 3 uses
  %.0144185.i = phi i32 [ 0, %._crit_edge.thread.i ], [ %.1145.lcssa.i, %._crit_edge181.i ] ; 3 uses
  %i.aky = icmp ne i64 %indvars.iv193.i, 0        ; 5 uses
  %.in.v.i278 = select i1 %i.aky, i64 860, i64 848
  %.in.i279 = getelementptr inbounds nuw i8, ptr %i.m, i64 %.in.v.i278
  %i.akz = load i32, ptr %.in.i279, align 4, !tbaa !29 ; 2 uses
  %.in130.v.i = select i1 %i.aky, i64 864, i64 852
  %.in130.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %.in130.v.i
  %i.ala = load i32, ptr %.in130.i, align 4, !tbaa !29 ; 2 uses
  %.in131.v.i = select i1 %i.aky, i64 904, i64 892
  %.in131.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %.in131.v.i
  %i.alb = load i32, ptr %.in131.i, align 4, !tbaa !29
  %.in132.v.i = select i1 %i.aky, i64 908, i64 896
  %.in132.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %.in132.v.i
  %i.alc = load i32, ptr %.in132.i, align 4, !tbaa !29
  %i.ald = zext i1 %i.aky to i64                  ; 2 uses
  %i.ale = getelementptr inbounds nuw [4 x i8], ptr %i.aku, i64 %i.ald
  %i.alf = load i32, ptr %i.ale, align 4, !tbaa !29 ; 6 uses
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.akv, i64 %i.ald
  %i.alh = load i32, ptr %i.alg, align 4, !tbaa !29 ; 3 uses
  %i.ali = icmp sgt i32 %i.ala, 0
  br i1 %i.ali, label %.preheader152.lr.ph.i, label %._crit_edge181.i

.preheader152.lr.ph.i:                            ; preds = %bb.el
  %i.alj = icmp sgt i32 %i.akz, 0
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %i.akx, i64 %indvars.iv193.i ; 4 uses
  br i1 %i.alj, label %.preheader152.us.i, label %._crit_edge181.i

.preheader152.us.i:                               ; preds = %.preheader152.lr.ph.i, %._crit_edge175.us.i
  %6 = phi i32 [ %9, %._crit_edge175.us.i ], [ %5, %.preheader152.lr.ph.i ]
  %.0104180.us.i = phi i32 [ %i.aou, %._crit_edge175.us.i ], [ 0, %.preheader152.lr.ph.i ] ; 2 uses
  %.1179.us.i = phi i32 [ %.4.us.i, %._crit_edge175.us.i ], [ %.0105187.i, %.preheader152.lr.ph.i ]
  %.1145178.us.i = phi i32 [ %.5.us.i, %._crit_edge175.us.i ], [ %.0144185.i, %.preheader152.lr.ph.i ]
  %i.all = shl nuw nsw i32 %.0104180.us.i, 1
  br label %.preheader.us.i

bb.em:                                            ; preds = %.preheader.us.i, %.loopexit.us.i
  %7 = phi i32 [ %10, %.preheader.us.i ], [ %9, %.loopexit.us.i ] ; 6 uses
  %.0102171.us.i = phi i32 [ 0, %.preheader.us.i ], [ %i.aop, %.loopexit.us.i ] ; 3 uses
  %.3170.us.i = phi i32 [ %.2173.us.i, %.preheader.us.i ], [ %.4.us.i, %.loopexit.us.i ] ; 3 uses
  %.3147169.us.i = phi i32 [ %.2146172.us.i, %.preheader.us.i ], [ %.5.us.i, %.loopexit.us.i ] ; 4 uses
  %i.alm = lshr i32 %.0102171.us.i, 1             ; 2 uses
  %i.aln = add nuw nsw i32 %i.alm, %i.aor         ; 2 uses
  %i.alo = add nuw nsw i32 %i.alm, %i.all
  %i.alp = and i32 %.0102171.us.i, 1
  %i.alq = xor i32 %i.alo, %i.alp                 ; 2 uses
  %.not133.us.i = icmp slt i32 %i.aln, %i.alb
  %.not134.us.i = icmp slt i32 %i.alq, %i.alc
  %or.cond.us.i = select i1 %.not133.us.i, i1 %.not134.us.i, i1 false
  br i1 %or.cond.us.i, label %bb.en, label %.loopexit.us.i

bb.en:                                            ; preds = %bb.em
  %i.alr = load ptr, ptr %i.akw, align 16, !tbaa !90
  %i.als = add nsw i32 %.3170.us.i, 1             ; 3 uses
  %i.alt = sext i32 %.3170.us.i to i64
  %i.alu = getelementptr inbounds i8, ptr %i.alr, i64 %i.alt
  %i.alv = load i8, ptr %i.alu, align 1, !tbaa !51
  switch i8 %i.alv, label %bb.ep [
    i8 2, label %bb.eq
    i8 1, label %bb.eo
  ]

bb.eo:                                            ; preds = %bb.en
  %i.alw = zext nneg i32 %.3147169.us.i to i64
  %i.alx = getelementptr inbounds nuw [8 x i8], ptr @block_pattern_vlc, i64 %i.alw
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !108
  %i.alz = lshr i32 %7, 3
  %i.ama = zext nneg i32 %i.alz to i64
  %i.amb = getelementptr inbounds nuw i8, ptr %i.aot, i64 %i.ama
  %i.amc = load i32, ptr %i.amb, align 1, !tbaa !51
  %i.amd = tail call i32 @llvm.bswap.i32(i32 %i.amc)
  %i.ame = and i32 %7, 7
  %i.amf = shl i32 %i.amd, %i.ame
  %i.amg = lshr i32 %i.amf, 27
  %i.amh = zext nneg i32 %i.amg to i64
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %i.aly, i64 %i.amh ; 2 uses
  %i.amj = load i16, ptr %i.ami, align 2, !tbaa !51 ; 2 uses
  %i.amk = zext i16 %i.amj to i32
  %i.aml = getelementptr inbounds nuw i8, ptr %i.ami, i64 2
  %i.amm = load i16, ptr %i.aml, align 2, !tbaa !51
  %i.amn = sext i16 %i.amm to i32
  %i.amo = add i32 %7, %i.amn
  %i.amp = tail call i32 @llvm.umin.i32(i32 %i.aos, i32 %i.amo) ; 2 uses
  store i32 %i.amp, ptr %i.t, align 8, !tbaa !50
  %i.amq = sext i16 %i.amj to i64
  %i.amr = getelementptr inbounds i8, ptr @vp4_block_pattern_table_selector, i64 %i.amq
  %i.ams = load i8, ptr %i.amr, align 1, !tbaa !51
  %i.amt = zext i8 %i.ams to i32
  %i.amu = add nuw nsw i32 %i.amk, 1
  br label %bb.eq

bb.ep:                                            ; preds = %bb.en
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %bb.en
  %8 = phi i32 [ %7, %bb.ep ], [ %7, %bb.en ], [ %i.amp, %bb.eo ] ; 3 uses
  %.4148.us.i = phi i32 [ %.3147169.us.i, %bb.ep ], [ %.3147169.us.i, %bb.en ], [ %i.amt, %bb.eo ] ; 3 uses
  %.0101.us.i = phi i32 [ 0, %bb.ep ], [ 15, %bb.en ], [ %i.amu, %bb.eo ] ; 4 uses
  %i.amv = shl nuw nsw i32 %i.aln, 1              ; 4 uses
  %i.amw = shl nuw nsw i32 %i.alq, 1              ; 5 uses
  %.not135.us.i = icmp slt i32 %i.amv, %i.alf     ; 2 uses
  %.not136.us.i = icmp slt i32 %i.amw, %i.alh     ; 2 uses
  %or.cond.i281 = select i1 %.not135.us.i, i1 %.not136.us.i, i1 false
  br i1 %or.cond.i281, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.amx = load i32, ptr %i.alk, align 4, !tbaa !29
  %i.amy = mul nsw i32 %i.amw, %i.alf
  %i.amz = add i32 %i.amy, %i.amv
  %i.ana = add i32 %i.amz, %i.amx
  %i.anb = trunc i32 %.0101.us.i to i8
  %i.anc = and i8 %i.anb, 8
  %i.and = xor i8 %i.anc, 8
  %i.ane = load ptr, ptr %i.az, align 8, !tbaa !60
  %i.anf = sext i32 %i.ana to i64
  %i.ang = getelementptr inbounds [4 x i8], ptr %i.ane, i64 %i.anf
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 2
  store i8 %i.and, ptr %i.anh, align 2, !tbaa !102
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.ani = or disjoint i32 %i.amv, 1              ; 3 uses
  %.not135.us.1.i = icmp slt i32 %i.ani, %i.alf   ; 2 uses
  %or.cond218.i = select i1 %.not135.us.1.i, i1 %.not136.us.i, i1 false
  br i1 %or.cond218.i, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.anj = load i32, ptr %i.alk, align 4, !tbaa !29
  %i.ank = mul nsw i32 %i.amw, %i.alf
  %i.anl = add i32 %i.ank, %i.ani
  %i.anm = add i32 %i.anl, %i.anj
  %i.ann = and i32 %.0101.us.i, 4
  %.not137.us.1.i = icmp eq i32 %i.ann, 0
  %i.ano = select i1 %.not137.us.1.i, i8 8, i8 0
  %i.anp = load ptr, ptr %i.az, align 8, !tbaa !60
  %i.anq = sext i32 %i.anm to i64
  %i.anr = getelementptr inbounds [4 x i8], ptr %i.anp, i64 %i.anq
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 2
  store i8 %i.ano, ptr %i.ans, align 2, !tbaa !102
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  br i1 %.not135.us.i, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  %i.ant = or disjoint i32 %i.amw, 1              ; 2 uses
  %.not136.us.2.i = icmp slt i32 %i.ant, %i.alh
  br i1 %.not136.us.2.i, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.anu = load i32, ptr %i.alk, align 4, !tbaa !29
  %i.anv = mul nsw i32 %i.ant, %i.alf
  %i.anw = add i32 %i.anv, %i.amv
  %i.anx = add i32 %i.anw, %i.anu
  %i.any = and i32 %.0101.us.i, 2
  %.not137.us.2.i = icmp eq i32 %i.any, 0
  %i.anz = select i1 %.not137.us.2.i, i8 8, i8 0
  %i.aoa = load ptr, ptr %i.az, align 8, !tbaa !60
  %i.aob = sext i32 %i.anx to i64
  %i.aoc = getelementptr inbounds [4 x i8], ptr %i.aoa, i64 %i.aob
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 2
  store i8 %i.anz, ptr %i.aod, align 2, !tbaa !102
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %bb.eu
  br i1 %.not135.us.1.i, label %bb.ey, label %.loopexit.us.i

bb.ey:                                            ; preds = %bb.ex
  %i.aoe = or disjoint i32 %i.amw, 1              ; 2 uses
  %.not136.us.3.i = icmp slt i32 %i.aoe, %i.alh
  br i1 %.not136.us.3.i, label %bb.ez, label %.loopexit.us.i

bb.ez:                                            ; preds = %bb.ey
  %i.aof = load i32, ptr %i.alk, align 4, !tbaa !29
  %i.aog = mul nsw i32 %i.aoe, %i.alf
  %i.aoh = add i32 %i.aog, %i.ani
  %i.aoi = add i32 %i.aoh, %i.aof
  %i.aoj = and i32 %.0101.us.i, 1
  %.not137.us.3.i = icmp eq i32 %i.aoj, 0
  %i.aok = select i1 %.not137.us.3.i, i8 8, i8 0
  %i.aol = load ptr, ptr %i.az, align 8, !tbaa !60
  %i.aom = sext i32 %i.aoi to i64
  %i.aon = getelementptr inbounds [4 x i8], ptr %i.aol, i64 %i.aom
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 2
  store i8 %i.aok, ptr %i.aoo, align 2, !tbaa !102
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %bb.ez, %bb.ey, %bb.ex, %bb.em
  %9 = phi i32 [ %7, %bb.em ], [ %8, %bb.ez ], [ %8, %bb.ey ], [ %8, %bb.ex ] ; 4 uses
  %.5.us.i = phi i32 [ %.3147169.us.i, %bb.em ], [ %.4148.us.i, %bb.ez ], [ %.4148.us.i, %bb.ey ], [ %.4148.us.i, %bb.ex ] ; 4 uses
  %.4.us.i = phi i32 [ %.3170.us.i, %bb.em ], [ %i.als, %bb.ez ], [ %i.als, %bb.ey ], [ %i.als, %bb.ex ] ; 4 uses
  %i.aop = add nuw nsw i32 %.0102171.us.i, 1      ; 2 uses
  %exitcond.not.i280 = icmp eq i32 %i.aop, 4
  br i1 %exitcond.not.i280, label %bb.fa, label %bb.em, !llvm.loop !110

bb.fa:                                            ; preds = %.loopexit.us.i
  %i.aoq = add nuw nsw i32 %.0103174.us.i, 1      ; 2 uses
  %exitcond191.not.i = icmp eq i32 %i.aoq, %i.akz
  br i1 %exitcond191.not.i, label %._crit_edge175.us.i, label %.preheader.us.i, !llvm.loop !111

.preheader.us.i:                                  ; preds = %bb.fa, %.preheader152.us.i
  %10 = phi i32 [ %6, %.preheader152.us.i ], [ %9, %bb.fa ]
  %.0103174.us.i = phi i32 [ 0, %.preheader152.us.i ], [ %i.aoq, %bb.fa ] ; 2 uses
  %.2173.us.i = phi i32 [ %.1179.us.i, %.preheader152.us.i ], [ %.4.us.i, %bb.fa ]
  %.2146172.us.i = phi i32 [ %.1145178.us.i, %.preheader152.us.i ], [ %.5.us.i, %bb.fa ]
  %i.aor = shl nuw nsw i32 %.0103174.us.i, 1
  %i.aos = load i32, ptr %i.s, align 8
  %i.aot = load ptr, ptr %4, align 8
  br label %bb.em

._crit_edge175.us.i:                              ; preds = %bb.fa
  %i.aou = add nuw nsw i32 %.0104180.us.i, 1      ; 2 uses
  %exitcond192.not.i = icmp eq i32 %i.aou, %i.ala
  br i1 %exitcond192.not.i, label %._crit_edge181.i, label %.preheader152.us.i, !llvm.loop !112

._crit_edge181.i:                                 ; preds = %._crit_edge175.us.i, %.preheader152.lr.ph.i, %bb.el
  %11 = phi i32 [ %5, %bb.el ], [ %5, %.preheader152.lr.ph.i ], [ %9, %._crit_edge175.us.i ]
  %.1145.lcssa.i = phi i32 [ %.0144185.i, %bb.el ], [ %.0144185.i, %.preheader152.lr.ph.i ], [ %.5.us.i, %._crit_edge175.us.i ]
  %.1.lcssa.i = phi i32 [ %.0105187.i, %bb.el ], [ %.0105187.i, %.preheader152.lr.ph.i ], [ %.4.us.i, %._crit_edge175.us.i ]
  %indvars.iv.next194.i = add nuw nsw i64 %indvars.iv193.i, 1 ; 2 uses
  %exitcond196.not.i = icmp eq i64 %indvars.iv.next194.i, 3
  br i1 %exitcond196.not.i, label %vp4_unpack_macroblocks.exit, label %bb.el, !llvm.loop !113

vp4_unpack_macroblocks.exit:                      ; preds = %._crit_edge181.i, %unpack_superblocks.exit
  %.pr = load i32, ptr %i.ay, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %.not.i287 = icmp eq i32 %.pr, 0
  br i1 %.not.i287, label %bb.fc, label %.preheader166.i

.preheader166.i:                                  ; preds = %vp4_unpack_macroblocks.exit.thread346, %vp4_unpack_macroblocks.exit
  %i.aov = load i32, ptr %i.rf, align 4, !tbaa !89 ; 3 uses
  %i.aow = icmp sgt i32 %i.aov, 0
  br i1 %i.aow, label %.lr.ph.i288, label %.loopexit363

.lr.ph.i288:                                      ; preds = %.preheader166.i
  %i.aox = load ptr, ptr %i.az, align 8, !tbaa !60 ; 9 uses
  %wide.trip.count.i289 = zext nneg i32 %i.aov to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i289, 7    ; 3 uses
  %i.aoy = icmp ult i32 %i.aov, 8
  br i1 %i.aoy, label %.epil.preheader, label %.lr.ph.i288.new

.lr.ph.i288.new:                                  ; preds = %.lr.ph.i288
  %unroll_iter = and i64 %wide.trip.count.i289, 2147483640
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fb, %.lr.ph.i288.new
  %indvars.iv.i290 = phi i64 [ 0, %.lr.ph.i288.new ], [ %indvars.iv.next.i291.7, %bb.fb ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i288.new ], [ %niter.next.7, %bb.fb ]
  %i.aoz = getelementptr inbounds nuw [4 x i8], ptr %i.aox, i64 %indvars.iv.i290
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoz, i64 2
  store i8 1, ptr %i.apa, align 2, !tbaa !102
  %i.apb = getelementptr inbounds nuw [4 x i8], ptr %i.aox, i64 %indvars.iv.i290
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 6
  store i8 1, ptr %i.apc, align 2, !tbaa !102
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr %i.aox, i64 %indvars.iv.i290
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 10
  store i8 1, ptr %i.ape, align 2, !tbaa !102
  %i.apf = getelementptr inbounds nuw [4 x i8], ptr %i.aox, i64 %indvars.iv.i290
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apf, i64 14
  store i8 1, ptr %i.apg, align 2, !tbaa !102
  %i.aph = getelementptr inbounds nuw [4 x i8], ptr %i.aox, i64 %indvars.iv.i290
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 18
  store i8 1, ptr %i.api, align 2, !tbaa !102
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr %i.aox, i64 %indvars.iv.i290
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 22
  store i8 1, ptr %i.apk, align 2, !tbaa !102
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr %i.aox, i64 %indvars.iv.i290
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 26
  store i8 1, ptr %i.apm, align 2, !tbaa !102
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %i.aox, i64 %indvars.iv.i290
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 30
  store i8 1, ptr %i.apo, align 2, !tbaa !102
  %indvars.iv.next.i291.7 = add nuw nsw i64 %indvars.iv.i290, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit363.loopexit756.unr-lcssa, label %bb.fb, !llvm.loop !114

bb.fc:                                            ; preds = %vp4_unpack_macroblocks.exit
  %i.app = load i32, ptr %i.t, align 8, !tbaa !50 ; 3 uses
  %i.apq = load i32, ptr %i.s, align 8, !tbaa !49 ; 9 uses
  %i.apr = load ptr, ptr %4, align 8, !tbaa !46   ; 9 uses
  %i.aps = lshr i32 %i.app, 3
  %i.apt = zext nneg i32 %i.aps to i64
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apr, i64 %i.apt
  %i.apv = load i32, ptr %i.apu, align 1, !tbaa !51
  %i.apw = tail call i32 @llvm.bswap.i32(i32 %i.apv)
  %i.apx = and i32 %i.app, 7
  %i.apy = shl i32 %i.apw, %i.apx
  %i.apz = lshr i32 %i.apy, 29                    ; 3 uses
  %i.aqa = add i32 %i.app, 3
  %i.aqb = tail call i32 @llvm.umin.i32(i32 %i.apq, i32 %i.aqa) ; 4 uses
  store i32 %i.aqb, ptr %i.t, align 8, !tbaa !50
  %i.aqc = icmp eq i32 %i.apz, 0
  br i1 %i.aqc, label %.preheader165.preheader.i, label %bb.fd

.preheader165.preheader.i:                        ; preds = %bb.fc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, i8 0, i64 32, i1 false), !tbaa !29
  %i.aqd = lshr i32 %i.aqb, 3
  %i.aqe = zext nneg i32 %i.aqd to i64
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.apr, i64 %i.aqe
  %i.aqg = load i32, ptr %i.aqf, align 1, !tbaa !51
  %i.aqh = tail call i32 @llvm.bswap.i32(i32 %i.aqg)
  %i.aqi = and i32 %i.aqb, 7
  %i.aqj = shl i32 %i.aqh, %i.aqi
  %i.aqk = lshr i32 %i.aqj, 29
  %i.aql = add i32 %i.aqb, 3
  %i.aqm = tail call i32 @llvm.umin.i32(i32 %i.apq, i32 %i.aql) ; 4 uses
  store i32 %i.aqm, ptr %i.t, align 8, !tbaa !50
  %i.aqn = zext nneg i32 %i.aqk to i64
  %i.aqo = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aqn
  store i32 0, ptr %i.aqo, align 4, !tbaa !29
  %i.aqp = lshr i32 %i.aqm, 3
  %i.aqq = zext nneg i32 %i.aqp to i64
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.apr, i64 %i.aqq
  %i.aqs = load i32, ptr %i.aqr, align 1, !tbaa !51
  %i.aqt = tail call i32 @llvm.bswap.i32(i32 %i.aqs)
  %i.aqu = and i32 %i.aqm, 7
  %i.aqv = shl i32 %i.aqt, %i.aqu
  %i.aqw = lshr i32 %i.aqv, 29
  %i.aqx = add i32 %i.aqm, 3
  %i.aqy = tail call i32 @llvm.umin.i32(i32 %i.apq, i32 %i.aqx) ; 4 uses
  store i32 %i.aqy, ptr %i.t, align 8, !tbaa !50
  %i.aqz = zext nneg i32 %i.aqw to i64
  %i.ara = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aqz
  store i32 1, ptr %i.ara, align 4, !tbaa !29
  %i.arb = lshr i32 %i.aqy, 3
  %i.arc = zext nneg i32 %i.arb to i64
  %i.ard = getelementptr inbounds nuw i8, ptr %i.apr, i64 %i.arc
  %i.are = load i32, ptr %i.ard, align 1, !tbaa !51
  %i.arf = tail call i32 @llvm.bswap.i32(i32 %i.are)
  %i.arg = and i32 %i.aqy, 7
  %i.arh = shl i32 %i.arf, %i.arg
  %i.ari = lshr i32 %i.arh, 29
  %i.arj = add i32 %i.aqy, 3
  %i.ark = tail call i32 @llvm.umin.i32(i32 %i.apq, i32 %i.arj) ; 4 uses
  store i32 %i.ark, ptr %i.t, align 8, !tbaa !50
  %i.arl = zext nneg i32 %i.ari to i64
  %i.arm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.arl
  store i32 2, ptr %i.arm, align 4, !tbaa !29
  %i.arn = lshr i32 %i.ark, 3
  %i.aro = zext nneg i32 %i.arn to i64
  %i.arp = getelementptr inbounds nuw i8, ptr %i.apr, i64 %i.aro
  %i.arq = load i32, ptr %i.arp, align 1, !tbaa !51
  %i.arr = tail call i32 @llvm.bswap.i32(i32 %i.arq)
  %i.ars = and i32 %i.ark, 7
  %i.art = shl i32 %i.arr, %i.ars
  %i.aru = lshr i32 %i.art, 29
  %i.arv = add i32 %i.ark, 3
  %i.arw = tail call i32 @llvm.umin.i32(i32 %i.apq, i32 %i.arv) ; 4 uses
  store i32 %i.arw, ptr %i.t, align 8, !tbaa !50
  %i.arx = zext nneg i32 %i.aru to i64
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.arx
  store i32 3, ptr %i.ary, align 4, !tbaa !29
  %i.arz = lshr i32 %i.arw, 3
  %i.asa = zext nneg i32 %i.arz to i64
  %i.asb = getelementptr inbounds nuw i8, ptr %i.apr, i64 %i.asa
  %i.asc = load i32, ptr %i.asb, align 1, !tbaa !51
  %i.asd = tail call i32 @llvm.bswap.i32(i32 %i.asc)
  %i.ase = and i32 %i.arw, 7
  %i.asf = shl i32 %i.asd, %i.ase
  %i.asg = lshr i32 %i.asf, 29
  %i.ash = add i32 %i.arw, 3
  %i.asi = tail call i32 @llvm.umin.i32(i32 %i.apq, i32 %i.ash) ; 4 uses
  store i32 %i.asi, ptr %i.t, align 8, !tbaa !50
  %i.asj = zext nneg i32 %i.asg to i64
  %i.ask = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.asj
  store i32 4, ptr %i.ask, align 4, !tbaa !29
  %i.asl = lshr i32 %i.asi, 3
  %i.asm = zext nneg i32 %i.asl to i64
  %i.asn = getelementptr inbounds nuw i8, ptr %i.apr, i64 %i.asm
  %i.aso = load i32, ptr %i.asn, align 1, !tbaa !51
  %i.asp = tail call i32 @llvm.bswap.i32(i32 %i.aso)
  %i.asq = and i32 %i.asi, 7
  %i.asr = shl i32 %i.asp, %i.asq
  %i.ass = lshr i32 %i.asr, 29
  %i.ast = add i32 %i.asi, 3
  %i.asu = tail call i32 @llvm.umin.i32(i32 %i.apq, i32 %i.ast) ; 4 uses
  store i32 %i.asu, ptr %i.t, align 8, !tbaa !50
  %i.asv = zext nneg i32 %i.ass to i64
  %i.asw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.asv
  store i32 5, ptr %i.asw, align 4, !tbaa !29
  %i.asx = lshr i32 %i.asu, 3
  %i.asy = zext nneg i32 %i.asx to i64
  %i.asz = getelementptr inbounds nuw i8, ptr %i.apr, i64 %i.asy
  %i.ata = load i32, ptr %i.asz, align 1, !tbaa !51
  %i.atb = tail call i32 @llvm.bswap.i32(i32 %i.ata)
  %i.atc = and i32 %i.asu, 7
  %i.atd = shl i32 %i.atb, %i.atc
  %i.ate = lshr i32 %i.atd, 29
  %i.atf = add i32 %i.asu, 3
  %i.atg = tail call i32 @llvm.umin.i32(i32 %i.apq, i32 %i.atf) ; 4 uses
  store i32 %i.atg, ptr %i.t, align 8, !tbaa !50
  %i.ath = zext nneg i32 %i.ate to i64
  %i.ati = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ath
  store i32 6, ptr %i.ati, align 4, !tbaa !29
  %i.atj = lshr i32 %i.atg, 3
  %i.atk = zext nneg i32 %i.atj to i64
  %i.atl = getelementptr inbounds nuw i8, ptr %i.apr, i64 %i.atk
  %i.atm = load i32, ptr %i.atl, align 1, !tbaa !51
  %i.atn = tail call i32 @llvm.bswap.i32(i32 %i.atm)
  %i.ato = and i32 %i.atg, 7
  %i.atp = shl i32 %i.atn, %i.ato
  %i.atq = lshr i32 %i.atp, 29
  %i.atr = add i32 %i.atg, 3
  %i.ats = tail call i32 @llvm.umin.i32(i32 %i.apq, i32 %i.atr)
  store i32 %i.ats, ptr %i.t, align 8, !tbaa !50
  %i.att = zext nneg i32 %i.atq to i64
  %i.atu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.att
  store i32 7, ptr %i.atu, align 4, !tbaa !29
  br label %.loopexit164.i

bb.fd:                                            ; preds = %bb.fc
  %i.atv = zext nneg i32 %i.apz to i64
  %i.atw = getelementptr [32 x i8], ptr @ModeAlphabet, i64 %i.atv
  %i.atx = getelementptr i8, ptr %i.atw, i64 -32
  br label %.loopexit164.i

end_hunk_0
