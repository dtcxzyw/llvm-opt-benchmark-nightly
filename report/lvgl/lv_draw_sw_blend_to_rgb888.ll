Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_rgb888?download=true
inline.NumInlined: 83
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@lv_draw_sw_blend_image_to_rgb888:bb.a
  %i.ajx = add i16 %i.ajw, %narrow.i64
  %i.ajy = lshr i16 %i.ajx, 8
  %i.ajz = trunc nuw i16 %i.ajy to i8
  store i8 %i.ajz, ptr %i.ajj, align 1, !tbaa !11
  %narrow212.i = mul nuw i16 %i.ajo, %i.ajc
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajj, i64 1 ; 2 uses
  %i.akb = load i8, ptr %i.aka, align 1, !tbaa !11
  %i.akc = zext i8 %i.akb to i16
  %i.akd = mul nuw i16 %i.ajt, %i.akc
  %i.ake = add i16 %i.akd, %narrow212.i
  %i.akf = lshr i16 %i.ake, 8
  %i.akg = trunc nuw i16 %i.akf to i8
  store i8 %i.akg, ptr %i.aka, align 1, !tbaa !11
  %narrow213.i = mul nuw i16 %i.ajo, %i.aiz
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ajj, i64 2 ; 2 uses
  %i.aki = load i8, ptr %i.akh, align 1, !tbaa !11
  %i.akj = zext i8 %i.aki to i16
  %i.akk = mul nuw i16 %i.ajt, %i.akj
  %i.akl = add i16 %i.akk, %narrow213.i
  %i.akm = lshr i16 %i.akl, 8
  %i.akn = trunc nuw i16 %i.akm to i8
  store i8 %i.akn, ptr %i.akh, align 1, !tbaa !11
  br label %lv_color_24_24_mix.exit181.i

lv_color_24_24_mix.exit181.i:                     ; preds = %bb.bx, %bb.bw, %bb.bu, %bb.bt
  %i.ako = add i32 %.2157240.i, %1
  %indvars.iv.next273.i = add nuw nsw i64 %indvars.iv272.i, 1 ; 2 uses
  %exitcond276.not.i = icmp eq i64 %indvars.iv.next273.i, %wide.trip.count275.i
  br i1 %exitcond276.not.i, label %._crit_edge242.i, label %bb.bt, !llvm.loop !82

._crit_edge242.i:                                 ; preds = %lv_color_24_24_mix.exit181.i
  %i.akp = getelementptr inbounds i8, ptr %.2246.i, i64 %i.aip
  %i.akq = getelementptr inbounds nuw i8, ptr %.2166243.i, i64 %i.aiq
  %i.akr = getelementptr inbounds i8, ptr %.0160244.i, i64 %i.air
  %i.aks = add nuw nsw i32 %.2147245.i, 1         ; 2 uses
  %exitcond277.not.i = icmp eq i32 %i.aks, %i.adg
  br i1 %exitcond277.not.i, label %rgb565_image_blend.exit, label %.preheader218.i, !llvm.loop !83

bb.by:                                            ; preds = %bb.bs
  %or.cond11.i63 = select i1 %i.aim, i1 %i.agd, i1 false
  %i.akt = icmp sgt i32 %i.adg, 0
  %or.cond259.i = select i1 %or.cond11.i63, i1 %i.akt, i1 false
  br i1 %or.cond259.i, label %.preheader221.lr.ph.i, label %rgb565_image_blend.exit

.preheader221.lr.ph.i:                            ; preds = %bb.by
  %i.aku = icmp sgt i32 %i.ade, 0
  %i.akv = sext i32 %i.adl to i64
  %i.akw = zext i32 %i.adp to i64
  %i.akx = sext i32 %i.adt to i64
  br i1 %i.aku, label %.preheader221.preheader.i, label %rgb565_image_blend.exit

.preheader221.preheader.i:                        ; preds = %.preheader221.lr.ph.i
  %wide.trip.count269.i = zext nneg i32 %i.ade to i64
  br label %.preheader221.i

.preheader221.i:                                  ; preds = %._crit_edge235.i, %.preheader221.preheader.i
  %.3239.i = phi ptr [ %i.and, %._crit_edge235.i ], [ %i.adj, %.preheader221.preheader.i ] ; 2 uses
  %.3148238.i = phi i32 [ %i.ang, %._crit_edge235.i ], [ 0, %.preheader221.preheader.i ]
  %.1161237.i = phi ptr [ %i.anf, %._crit_edge235.i ], [ %i.adr, %.preheader221.preheader.i ] ; 2 uses
  %.3167236.i = phi ptr [ %i.ane, %._crit_edge235.i ], [ %i.adn, %.preheader221.preheader.i ] ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %lv_color_24_24_mix.exit182.i, %.preheader221.i
  %indvars.iv266.i = phi i64 [ 0, %.preheader221.i ], [ %indvars.iv.next267.i, %lv_color_24_24_mix.exit182.i ] ; 3 uses
  %.3158233.i = phi i32 [ 0, %.preheader221.i ], [ %i.anc, %lv_color_24_24_mix.exit182.i ] ; 2 uses
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %.3167236.i, i64 %indvars.iv266.i
  %i.akz = load i32, ptr %i.aky, align 1          ; 3 uses
  %.sroa.15.0.extract.shift.i = lshr i32 %i.akz, 24 ; 3 uses
  %.not178.i = icmp eq i32 %.sroa.15.0.extract.shift.i, 0
  br i1 %.not178.i, label %lv_color_24_24_mix.exit182.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.sroa.11.0.extract.shift.i = lshr i32 %i.akz, 16
  %.sroa.11.0.extract.trunc.i = trunc nuw i32 %.sroa.11.0.extract.shift.i to i16
  %i.ala = trunc i32 %i.akz to i16                ; 2 uses
  %i.alb = lshr i16 %i.ala, 8
  %i.alc = trunc nuw nsw i32 %.sroa.15.0.extract.shift.i to i16
  %i.ald = udiv i16 -256, %i.alc                  ; 3 uses
  %i.ale = and i16 %.sroa.11.0.extract.trunc.i, 255
  %i.alf = mul i16 %i.ald, %i.ale
  %i.alg = lshr i16 %i.alf, 8                     ; 2 uses
  %i.alh = trunc nuw i16 %i.alg to i8
  %i.ali = mul i16 %i.ald, %i.alb
  %i.alj = lshr i16 %i.ali, 8                     ; 2 uses
  %i.alk = trunc nuw i16 %i.alj to i8
  %i.all = and i16 %i.ala, 255
  %i.alm = mul i16 %i.ald, %i.all
  %i.aln = lshr i16 %i.alm, 8                     ; 2 uses
  %i.alo = trunc nuw i16 %i.aln to i8
  %i.alp = sext i32 %.3158233.i to i64
  %i.alq = getelementptr inbounds i8, ptr %.3239.i, i64 %i.alp ; 7 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %.1161237.i, i64 %indvars.iv266.i
  %i.als = load i8, ptr %i.alr, align 1, !tbaa !11
  %i.alt = zext i8 %i.als to i32
  %i.alu = mul nuw nsw i32 %.sroa.15.0.extract.shift.i, %i.aee
  %i.alv = mul nuw nsw i32 %i.alu, %i.alt         ; 2 uses
  %i.alw = lshr i32 %i.alv, 16                    ; 5 uses
  %i.alx = icmp eq i32 %i.alw, 0
  br i1 %i.alx, label %lv_color_24_24_mix.exit182.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.aly = icmp samesign ugt i32 %i.alv, 16580607
  br i1 %i.aly, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i8 %i.alo, ptr %i.alq, align 1, !tbaa !11
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alq, i64 1
  store i8 %i.alk, ptr %i.alz, align 1, !tbaa !11
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alq, i64 2
  store i8 %i.alh, ptr %i.ama, align 1, !tbaa !11
  br label %lv_color_24_24_mix.exit182.i

bb.cd:                                            ; preds = %bb.cb
  %i.amb = xor i32 %i.alw, 255                    ; 3 uses
  %i.amc = zext nneg i16 %i.aln to i32
  %i.amd = mul nuw nsw i32 %i.alw, %i.amc
  %i.ame = load i8, ptr %i.alq, align 1, !tbaa !11
  %i.amf = zext i8 %i.ame to i32
  %i.amg = mul nuw nsw i32 %i.amb, %i.amf
  %i.amh = add nuw nsw i32 %i.amg, %i.amd
  %i.ami = lshr i32 %i.amh, 8
  %i.amj = trunc nuw i32 %i.ami to i8
  store i8 %i.amj, ptr %i.alq, align 1, !tbaa !11
  %i.amk = zext nneg i16 %i.alj to i32
  %i.aml = mul nuw nsw i32 %i.alw, %i.amk
  %i.amm = getelementptr inbounds nuw i8, ptr %i.alq, i64 1 ; 2 uses
  %i.amn = load i8, ptr %i.amm, align 1, !tbaa !11
  %i.amo = zext i8 %i.amn to i32
  %i.amp = mul nuw nsw i32 %i.amb, %i.amo
  %i.amq = add nuw nsw i32 %i.amp, %i.aml
  %i.amr = lshr i32 %i.amq, 8
  %i.ams = trunc nuw i32 %i.amr to i8
  store i8 %i.ams, ptr %i.amm, align 1, !tbaa !11
  %i.amt = zext nneg i16 %i.alg to i32
  %i.amu = mul nuw nsw i32 %i.alw, %i.amt
  %i.amv = getelementptr inbounds nuw i8, ptr %i.alq, i64 2 ; 2 uses
  %i.amw = load i8, ptr %i.amv, align 1, !tbaa !11
  %i.amx = zext i8 %i.amw to i32
  %i.amy = mul nuw nsw i32 %i.amb, %i.amx
  %i.amz = add nuw nsw i32 %i.amy, %i.amu
  %i.ana = lshr i32 %i.amz, 8
  %i.anb = trunc nuw i32 %i.ana to i8
  store i8 %i.anb, ptr %i.amv, align 1, !tbaa !11
  br label %lv_color_24_24_mix.exit182.i

lv_color_24_24_mix.exit182.i:                     ; preds = %bb.cd, %bb.cc, %bb.ca, %bb.bz
  %i.anc = add i32 %.3158233.i, %1
  %indvars.iv.next267.i = add nuw nsw i64 %indvars.iv266.i, 1 ; 2 uses
  %exitcond270.not.i = icmp eq i64 %indvars.iv.next267.i, %wide.trip.count269.i
  br i1 %exitcond270.not.i, label %._crit_edge235.i, label %bb.bz, !llvm.loop !84

._crit_edge235.i:                                 ; preds = %lv_color_24_24_mix.exit182.i
  %i.and = getelementptr inbounds i8, ptr %.3239.i, i64 %i.akv
  %i.ane = getelementptr inbounds nuw i8, ptr %.3167236.i, i64 %i.akw
  %i.anf = getelementptr inbounds i8, ptr %.1161237.i, i64 %i.akx
  %i.ang = add nuw nsw i32 %.3148238.i, 1         ; 2 uses
  %exitcond271.not.i = icmp eq i32 %i.ang, %i.adg
  br i1 %exitcond271.not.i, label %rgb565_image_blend.exit, label %.preheader221.i, !llvm.loop !85

.preheader224.i:                                  ; preds = %._crit_edge.i56, %.preheader224.preheader.i
  %.4232.i = phi ptr [ %i.arg, %._crit_edge.i56 ], [ %i.adj, %.preheader224.preheader.i ] ; 2 uses
  %.4149231.i = phi i32 [ %i.ari, %._crit_edge.i56 ], [ 0, %.preheader224.preheader.i ]
  %.2162230.i = phi ptr [ %.3163.i, %._crit_edge.i56 ], [ %i.adr, %.preheader224.preheader.i ] ; 3 uses
  %.4168229.i = phi ptr [ %i.arh, %._crit_edge.i56 ], [ %i.adn, %.preheader224.preheader.i ] ; 2 uses
  %i.anh = icmp eq ptr %.2162230.i, null          ; 2 uses
  br label %bb.ce

bb.ce:                                            ; preds = %blend_non_normal_pixel.exit.i53, %.preheader224.i
  %indvars.iv.i42 = phi i64 [ 0, %.preheader224.i ], [ %indvars.iv.next.i54, %blend_non_normal_pixel.exit.i53 ] ; 2 uses
  %.4159227.i = phi i32 [ 0, %.preheader224.i ], [ %i.are, %blend_non_normal_pixel.exit.i53 ] ; 3 uses
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr %.4168229.i, i64 %indvars.iv.i42 ; 4 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.ani, align 1, !tbaa !11 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ani, i64 1
  %.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !11 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ani, i64 2
  %.sroa.8.0.copyload.i = load i8, ptr %.sroa.8.0..sroa_idx.i, align 1, !tbaa !11 ; 2 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ani, i64 3
  %.sroa.10.0.copyload.i = load i8, ptr %.sroa.10.0..sroa_idx.i, align 1, !tbaa !11 ; 3 uses
  %i.anj = zext i8 %.sroa.10.0.copyload.i to i32  ; 2 uses
  %.not177.i = icmp eq i8 %.sroa.10.0.copyload.i, 0
  br i1 %.not177.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.rhs.trunc.i = zext i8 %.sroa.10.0.copyload.i to i16
  %i.ank = udiv i16 -256, %.rhs.trunc.i           ; 3 uses
  %i.anl = zext i8 %.sroa.8.0.copyload.i to i16
  %i.anm = mul i16 %i.ank, %i.anl
  %i.ann = lshr i16 %i.anm, 8
  %i.ano = trunc nuw i16 %i.ann to i8
  %i.anp = zext i8 %.sroa.6.0.copyload.i to i16
  %i.anq = mul i16 %i.ank, %i.anp
  %i.anr = lshr i16 %i.anq, 8
  %i.ans = trunc nuw i16 %i.anr to i8
  %i.ant = zext i8 %.sroa.0.0.copyload.i to i16
  %i.anu = mul i16 %i.ank, %i.ant
  %i.anv = lshr i16 %i.anu, 8
  %i.anw = trunc nuw i16 %i.anv to i8
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.sroa.8.0.i = phi i8 [ %i.ano, %bb.cf ], [ %.sroa.8.0.copyload.i, %bb.ce ] ; 2 uses
  %.sroa.6.0.i43 = phi i8 [ %i.ans, %bb.cf ], [ %.sroa.6.0.copyload.i, %bb.ce ] ; 2 uses
  %.sroa.0.0.i = phi i8 [ %i.anw, %bb.cf ], [ %.sroa.0.0.copyload.i, %bb.ce ] ; 2 uses
  br i1 %i.anh, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.anx = mul nuw nsw i32 %i.anj, %i.adz
  %i.any = lshr i32 %i.anx, 8
  %.pre.i59 = sext i32 %.4159227.i to i64
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %i.anz = sext i32 %.4159227.i to i64            ; 2 uses
  %i.aoa = getelementptr inbounds i8, ptr %.2162230.i, i64 %i.anz
  %i.aob = load i8, ptr %i.aoa, align 1, !tbaa !11
  %i.aoc = zext i8 %i.aob to i32
  %i.aod = mul nuw nsw i32 %i.anj, %i.adz
  %i.aoe = mul nuw nsw i32 %i.aod, %i.aoc
  %i.aof = lshr i32 %i.aoe, 16
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.pre-phi.i44 = phi i64 [ %i.anz, %bb.ci ], [ %.pre.i59, %bb.ch ]
  %.sroa.10.0.in.i = phi i32 [ %i.aof, %bb.ci ], [ %i.any, %bb.ch ] ; 6 uses
  %i.aog = getelementptr inbounds i8, ptr %.4232.i, i64 %.pre-phi.i44 ; 18 uses
  %i.aoh = load i32, ptr %i.adu, align 4, !tbaa !25
  %.sroa.8.0.insert.ext.i = zext i8 %.sroa.8.0.i to i32 ; 3 uses
  %.sroa.6.0.insert.ext.i45 = zext i8 %.sroa.6.0.i43 to i32 ; 3 uses
  %.sroa.0.0.insert.ext.i46 = zext i8 %.sroa.0.0.i to i32 ; 3 uses
  switch i32 %i.aoh, label %blend_non_normal_pixel.exit.i53 [
    i32 1, label %bb.ck
    i32 2, label %bb.cl
    i32 3, label %bb.cm
    i32 4, label %bb.cn
  ]

bb.ck:                                            ; preds = %bb.cj
  %i.aoi = load i8, ptr %i.aog, align 1, !tbaa !11 ; 2 uses
  %narrow.i59 = tail call i8 @llvm.uadd.sat.i8(i8 %.sroa.0.0.i, i8 %i.aoi)
  %spec.select63.i.i60 = zext i8 %narrow.i59 to i32
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aog, i64 1
  %i.aok = load i8, ptr %i.aoj, align 1, !tbaa !11 ; 2 uses
  %narrow261.i = tail call i8 @llvm.uadd.sat.i8(i8 %i.aok, i8 %.sroa.6.0.i43)
  %2 = zext i8 %narrow261.i to i32
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aog, i64 2
  %i.aom = load i8, ptr %i.aol, align 1, !tbaa !11 ; 2 uses
  %narrow262.i = tail call i8 @llvm.uadd.sat.i8(i8 %i.aom, i8 %.sroa.8.0.i)
  %3 = zext i8 %narrow262.i to i32
  br label %bb.co

bb.cl:                                            ; preds = %bb.cj
  %i.aon = load i8, ptr %i.aog, align 1, !tbaa !11 ; 2 uses
  %i.aoo = zext i8 %i.aon to i32
  %i.aop = sub nsw i32 %i.aoo, %.sroa.0.0.insert.ext.i46
  %spec.select5662.i.i57 = tail call i32 @llvm.smax.i32(i32 %i.aop, i32 0)
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aog, i64 1
  %i.aor = load i8, ptr %i.aoq, align 1, !tbaa !11 ; 2 uses
  %i.aos = zext i8 %i.aor to i32
  %i.aot = sub nsw i32 %i.aos, %.sroa.6.0.insert.ext.i45
  %i.aou = tail call i32 @llvm.smax.i32(i32 %i.aot, i32 0)
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aog, i64 2
  %i.aow = load i8, ptr %i.aov, align 1, !tbaa !11 ; 2 uses
  %i.aox = zext i8 %i.aow to i32
  %i.aoy = sub nsw i32 %i.aox, %.sroa.8.0.insert.ext.i
  %i.aoz = tail call i32 @llvm.smax.i32(i32 %i.aoy, i32 0)
  br label %bb.co

bb.cm:                                            ; preds = %bb.cj
  %i.apa = load i8, ptr %i.aog, align 1, !tbaa !11 ; 2 uses
  %i.apb = zext i8 %i.apa to i32
  %i.apc = mul nuw nsw i32 %i.apb, %.sroa.0.0.insert.ext.i46
  %i.apd = lshr i32 %i.apc, 8
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aog, i64 1
  %i.apf = load i8, ptr %i.ape, align 1, !tbaa !11 ; 2 uses
  %i.apg = zext i8 %i.apf to i32
  %i.aph = mul nuw nsw i32 %i.apg, %.sroa.6.0.insert.ext.i45
  %i.api = lshr i32 %i.aph, 8
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aog, i64 2
  %i.apk = load i8, ptr %i.apj, align 1, !tbaa !11 ; 2 uses
  %i.apl = zext i8 %i.apk to i32
  %i.apm = mul nuw nsw i32 %i.apl, %.sroa.8.0.insert.ext.i
  %i.apn = lshr i32 %i.apm, 8
  br label %bb.co

bb.cn:                                            ; preds = %bb.cj
  %i.apo = load i8, ptr %i.aog, align 1, !tbaa !11 ; 2 uses
  %i.app = zext i8 %i.apo to i32
  %i.apq = sub nsw i32 %i.app, %.sroa.0.0.insert.ext.i46
  %i.apr = tail call i32 @llvm.abs.i32(i32 %i.apq, i1 true)
  %i.aps = getelementptr inbounds nuw i8, ptr %i.aog, i64 1
  %i.apt = load i8, ptr %i.aps, align 1, !tbaa !11 ; 2 uses
  %i.apu = zext i8 %i.apt to i32
  %i.apv = sub nsw i32 %i.apu, %.sroa.6.0.insert.ext.i45
  %i.apw = tail call i32 @llvm.abs.i32(i32 %i.apv, i1 true)
  %i.apx = getelementptr inbounds nuw i8, ptr %i.aog, i64 2
  %i.apy = load i8, ptr %i.apx, align 1, !tbaa !11 ; 2 uses
  %i.apz = zext i8 %i.apy to i32
  %i.aqa = sub nsw i32 %i.apz, %.sroa.8.0.insert.ext.i
  %i.aqb = tail call i32 @llvm.abs.i32(i32 %i.aqa, i1 true)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.ck
  %i.aqc = phi i8 [ %i.aom, %bb.ck ], [ %i.aow, %bb.cl ], [ %i.apk, %bb.cm ], [ %i.apy, %bb.cn ]
  %i.aqd = phi i8 [ %i.aok, %bb.ck ], [ %i.aor, %bb.cl ], [ %i.apf, %bb.cm ], [ %i.apt, %bb.cn ]
  %i.aqe = phi i8 [ %i.aoi, %bb.ck ], [ %i.aon, %bb.cl ], [ %i.apa, %bb.cm ], [ %i.apo, %bb.cn ]
  %.sroa.0.0.in.i.i47 = phi i32 [ %spec.select63.i.i60, %bb.ck ], [ %spec.select5662.i.i57, %bb.cl ], [ %i.apd, %bb.cm ], [ %i.apr, %bb.cn ] ; 2 uses
  %.sroa.9.0.in.i.i48 = phi i32 [ %2, %bb.ck ], [ %i.aou, %bb.cl ], [ %i.api, %bb.cm ], [ %i.apw, %bb.cn ] ; 2 uses
  %.sroa.15.0.in.i.i49 = phi i32 [ %3, %bb.ck ], [ %i.aoz, %bb.cl ], [ %i.apn, %bb.cm ], [ %i.aqb, %bb.cn ] ; 2 uses
  %.sroa.15.0.i.i50 = trunc nuw i32 %.sroa.15.0.in.i.i49 to i8
  %.sroa.9.0.i.i51 = trunc nuw i32 %.sroa.9.0.in.i.i48 to i8
  %.sroa.0.0.i.i52 = trunc nuw i32 %.sroa.0.0.in.i.i47 to i8
  %i.aqf = icmp eq i32 %.sroa.10.0.in.i, 0
  br i1 %i.aqf, label %blend_non_normal_pixel.exit.i53, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aqg = icmp samesign ugt i32 %.sroa.10.0.in.i, 252
  br i1 %i.aqg, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store i8 %.sroa.0.0.i.i52, ptr %i.aog, align 1, !tbaa !11
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aog, i64 1
  store i8 %.sroa.9.0.i.i51, ptr %i.aqh, align 1, !tbaa !11
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aog, i64 2
  store i8 %.sroa.15.0.i.i50, ptr %i.aqi, align 1, !tbaa !11
  br label %blend_non_normal_pixel.exit.i53

bb.cr:                                            ; preds = %bb.cp
  %i.aqj = xor i32 %.sroa.10.0.in.i, 255          ; 3 uses
  %i.aqk = mul nuw nsw i32 %.sroa.0.0.in.i.i47, %.sroa.10.0.in.i
  %i.aql = zext i8 %i.aqe to i32
  %i.aqm = mul nuw nsw i32 %i.aqj, %i.aql
  %i.aqn = add nuw nsw i32 %i.aqm, %i.aqk
  %i.aqo = lshr i32 %i.aqn, 8
  %i.aqp = trunc nuw i32 %i.aqo to i8
  store i8 %i.aqp, ptr %i.aog, align 1, !tbaa !11
  %i.aqq = mul nuw nsw i32 %.sroa.9.0.in.i.i48, %.sroa.10.0.in.i
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aog, i64 1
  %i.aqs = zext i8 %i.aqd to i32
  %i.aqt = mul nuw nsw i32 %i.aqj, %i.aqs
  %i.aqu = add nuw nsw i32 %i.aqq, %i.aqt
  %i.aqv = lshr i32 %i.aqu, 8
  %i.aqw = trunc nuw i32 %i.aqv to i8
  store i8 %i.aqw, ptr %i.aqr, align 1, !tbaa !11
  %i.aqx = mul nuw nsw i32 %.sroa.15.0.in.i.i49, %.sroa.10.0.in.i
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aog, i64 2
  %i.aqz = zext i8 %i.aqc to i32
  %i.ara = mul nuw nsw i32 %i.aqj, %i.aqz
  %i.arb = add nuw nsw i32 %i.aqx, %i.ara
  %i.arc = lshr i32 %i.arb, 8
  %i.ard = trunc nuw i32 %i.arc to i8
  store i8 %i.ard, ptr %i.aqy, align 1, !tbaa !11
  br label %blend_non_normal_pixel.exit.i53

blend_non_normal_pixel.exit.i53:                  ; preds = %bb.cr, %bb.cq, %bb.co, %bb.cj
  %i.are = add i32 %.4159227.i, %1
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %exitcond.not.i55 = icmp eq i64 %indvars.iv.next.i54, %wide.trip.count.i41
  br i1 %exitcond.not.i55, label %._crit_edge.i56, label %bb.ce, !llvm.loop !86

._crit_edge.i56:                                  ; preds = %blend_non_normal_pixel.exit.i53
  %i.arf = getelementptr inbounds i8, ptr %.2162230.i, i64 %i.aea
  %.3163.i = select i1 %i.anh, ptr null, ptr %i.arf
  %i.arg = getelementptr inbounds i8, ptr %.4232.i, i64 %i.aeb
  %i.arh = getelementptr inbounds nuw i8, ptr %.4168229.i, i64 %i.aec
  %i.ari = add nuw nsw i32 %.4149231.i, 1         ; 2 uses
  %exitcond265.not.i = icmp eq i32 %i.ari, %i.adg
  br i1 %exitcond265.not.i, label %rgb565_image_blend.exit, label %.preheader224.i, !llvm.loop !87

bb.cs:                                            ; preds = %bb.a
  %i.arj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ark = load i32, ptr %i.arj, align 8, !tbaa !16 ; 12 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.arm = load i32, ptr %i.arl, align 4, !tbaa !17 ; 11 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aro = load i8, ptr %i.arn, align 8, !tbaa !18 ; 8 uses
  %i.arp = load ptr, ptr %0, align 8, !tbaa !19   ; 8 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.arr = load i32, ptr %i.arq, align 8, !tbaa !20 ; 6 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !21 ; 7 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.arv = load i32, ptr %i.aru, align 8, !tbaa !22 ; 5 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !23 ; 5 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.arz = load i32, ptr %i.ary, align 8, !tbaa !24 ; 3 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.asb = load i32, ptr %i.asa, align 4, !tbaa !25
  %i.asc = icmp eq i32 %i.asb, 0
  br i1 %i.asc, label %bb.ct, label %.preheader179.i

.preheader179.i:                                  ; preds = %bb.cs
  %i.asd = icmp sgt i32 %i.arm, 0
  br i1 %i.asd, label %.preheader178.lr.ph.i, label %rgb565_image_blend.exit

.preheader178.lr.ph.i:                            ; preds = %.preheader179.i
  %i.ase = icmp sgt i32 %i.ark, 0
  %i.asf = zext i8 %i.aro to i16
  %i.asg = sext i32 %i.arz to i64
  %i.ash = sext i32 %i.arr to i64
  %i.asi = zext i32 %i.arv to i64
  br i1 %i.ase, label %.preheader178.preheader.i, label %rgb565_image_blend.exit

.preheader178.preheader.i:                        ; preds = %.preheader178.lr.ph.i
  %wide.trip.count.i73 = zext nneg i32 %i.ark to i64
  br label %.preheader178.i74

bb.ct:                                            ; preds = %bb.cs
  %i.asj = icmp eq ptr %i.arx, null               ; 2 uses
  %i.ask = zext i8 %i.aro to i16
  %i.asl = icmp ugt i8 %i.aro, -4                 ; 2 uses
  %or.cond.i92 = select i1 %i.asj, i1 %i.asl, i1 false
  br i1 %or.cond.i92, label %.preheader168.i99, label %bb.cu

.preheader168.i99:                                ; preds = %bb.ct
  %i.asm = icmp sgt i32 %i.arm, 0
  br i1 %i.asm, label %.preheader.lr.ph.i100, label %rgb565_image_blend.exit

.preheader.lr.ph.i100:                            ; preds = %.preheader168.i99
  %i.asn = icmp sgt i32 %i.ark, 0
  %i.aso = sext i32 %i.arr to i64                 ; 2 uses
  %i.asp = zext i32 %i.arv to i64                 ; 2 uses
  br i1 %i.asn, label %.preheader.preheader.i101, label %rgb565_image_blend.exit

.preheader.preheader.i101:                        ; preds = %.preheader.lr.ph.i100
  %wide.trip.count243.i = zext nneg i32 %i.ark to i64 ; 10 uses
  %i.asq = add nsw i32 %i.arm, -1
  %i.asr = zext i32 %i.asq to i64                 ; 2 uses
  %i.ass = mul nsw i64 %i.aso, %i.asr
  %i.ast = getelementptr i8, ptr %i.arp, i64 %i.ass
  %i.asu = getelementptr i8, ptr %i.ast, i64 %wide.trip.count243.i
  %scevgep453 = getelementptr i8, ptr %i.asu, i64 2
  %i.asv = mul nuw i64 %i.asp, %i.asr
  %i.asw = getelementptr i8, ptr %i.art, i64 %i.asv
  %scevgep454 = getelementptr i8, ptr %i.asw, i64 %wide.trip.count243.i
  %min.iters.check459 = icmp ugt i32 %i.ark, 3
  %ident.check451.not = icmp eq i32 %1, 1
  %or.cond522 = and i1 %min.iters.check459, %ident.check451.not
  %bound0455 = icmp ult ptr %i.arp, %scevgep454
  %bound1456 = icmp ult ptr %i.art, %scevgep453
  %found.conflict457 = and i1 %bound0455, %bound1456
  %stride.check = icmp slt i32 %i.arr, 0
  %i.asx = or i1 %found.conflict457, %stride.check
  %min.iters.check460 = icmp ult i32 %i.ark, 32
  %i.asy = and i64 %wide.trip.count243.i, 28
  %n.vec462 = and i64 %wide.trip.count243.i, 2147483616 ; 5 uses
  %i.asz = trunc nuw nsw i64 %n.vec462 to i32
  %cmp.n470 = icmp eq i64 %n.vec462, %wide.trip.count243.i
  %min.epilog.iters.check = icmp eq i64 %i.asy, 0
  %n.vec472 = and i64 %wide.trip.count243.i, 2147483644 ; 4 uses
  %i.ata = trunc nuw nsw i64 %n.vec472 to i32
  %cmp.n477 = icmp eq i64 %n.vec472, %wide.trip.count243.i
  %xtraiter = and i64 %wide.trip.count243.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.atb = add nsw i64 %wide.trip.count243.i, -1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge210.i, %.preheader.preheader.i101
  %.0213.i = phi i32 [ %i.auu, %._crit_edge210.i ], [ 0, %.preheader.preheader.i101 ]
  %.0153212.i = phi ptr [ %i.aut, %._crit_edge210.i ], [ %i.art, %.preheader.preheader.i101 ] ; 6 uses
  %.0158211.i = phi ptr [ %i.aus, %._crit_edge210.i ], [ %i.arp, %.preheader.preheader.i101 ] ; 6 uses
  %or.cond522.not = xor i1 %or.cond522, true
  %brmerge556 = select i1 %or.cond522.not, i1 true, i1 %i.asx
  br i1 %brmerge556, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check460, label %vec.epilog.ph, label %vector.body463

vector.body463:                                   ; preds = %vector.main.loop.iter.check, %vector.body463
  %index464 = phi i64 [ %index.next468, %vector.body463 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %.0153212.i, i64 %index464 ; 3 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atc, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.atc, align 1, !tbaa !11, !alias.scope !132 ; 2 uses
  %wide.load465 = load <16 x i8>, ptr %i.atd, align 1, !tbaa !11, !alias.scope !132 ; 2 uses
  %sext = shl i64 %index464, 32
  %i.ate = ashr exact i64 %sext, 32
  %i.atf = getelementptr i8, ptr %.0158211.i, i64 %i.ate ; 6 uses
  %i.atg = getelementptr i8, ptr %i.atf, i64 2
  %i.ath = getelementptr i8, ptr %i.atf, i64 18
  store <16 x i8> %wide.load, ptr %i.atg, align 1, !tbaa !11, !alias.scope !133, !noalias !132
  store <16 x i8> %wide.load465, ptr %i.ath, align 1, !tbaa !11, !alias.scope !133, !noalias !132
  %i.ati = getelementptr i8, ptr %i.atf, i64 1
  %i.atj = getelementptr i8, ptr %i.atf, i64 17
  store <16 x i8> %wide.load, ptr %i.ati, align 1, !tbaa !11, !alias.scope !133, !noalias !132
  store <16 x i8> %wide.load465, ptr %i.atj, align 1, !tbaa !11, !alias.scope !133, !noalias !132
  %wide.load466 = load <16 x i8>, ptr %i.atc, align 1, !tbaa !11, !alias.scope !132
  %wide.load467 = load <16 x i8>, ptr %i.atd, align 1, !tbaa !11, !alias.scope !132
  %i.atk = getelementptr i8, ptr %i.atf, i64 16
  store <16 x i8> %wide.load466, ptr %i.atf, align 1, !tbaa !11, !alias.scope !133, !noalias !132
  store <16 x i8> %wide.load467, ptr %i.atk, align 1, !tbaa !11, !alias.scope !133, !noalias !132
  %index.next468 = add nuw i64 %index464, 32      ; 2 uses
  %i.atl = icmp eq i64 %index.next468, %n.vec462
  br i1 %i.atl, label %middle.block469, label %vector.body463, !llvm.loop !91

middle.block469:                                  ; preds = %vector.body463
  br i1 %cmp.n470, label %._crit_edge210.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block469
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !134

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec462, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index473 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next476, %vec.epilog.vector.body ] ; 3 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %.0153212.i, i64 %index473 ; 2 uses
  %wide.load474 = load <4 x i8>, ptr %i.atm, align 1, !tbaa !11, !alias.scope !132 ; 2 uses
end_hunk_0
begin_hunk_1_@lv_draw_sw_blend_image_to_rgb888:bb.a

.preheader173.i:                                  ; preds = %bb.cv
  %i.axl = icmp sgt i32 %i.arm, 0
  br i1 %i.axl, label %.preheader172.lr.ph.i, label %rgb565_image_blend.exit

.preheader172.lr.ph.i:                            ; preds = %.preheader173.i
  %i.axm = icmp sgt i32 %i.ark, 0
  %i.axn = sext i32 %i.arr to i64
  %i.axo = zext i32 %i.arv to i64
  %i.axp = sext i32 %i.arz to i64
  br i1 %i.axm, label %.preheader172.preheader.i, label %rgb565_image_blend.exit

.preheader172.preheader.i:                        ; preds = %.preheader172.lr.ph.i
  %wide.trip.count231.i = zext nneg i32 %i.ark to i64
  br label %.preheader172.i96

.preheader172.i96:                                ; preds = %._crit_edge196.i, %.preheader172.preheader.i
  %.2200.i = phi i32 [ %i.azd, %._crit_edge196.i ], [ 0, %.preheader172.preheader.i ]
  %.0149199.i = phi ptr [ %i.azc, %._crit_edge196.i ], [ %i.arx, %.preheader172.preheader.i ] ; 2 uses
  %.2155198.i = phi ptr [ %i.azb, %._crit_edge196.i ], [ %i.art, %.preheader172.preheader.i ] ; 2 uses
  %.2160197.i = phi ptr [ %i.aza, %._crit_edge196.i ], [ %i.arp, %.preheader172.preheader.i ] ; 2 uses
  br label %bb.cw

bb.cw:                                            ; preds = %lv_color_8_24_mix.exit166.i, %.preheader172.i96
  %indvars.iv228.i = phi i64 [ 0, %.preheader172.i96 ], [ %indvars.iv.next229.i, %lv_color_8_24_mix.exit166.i ] ; 3 uses
  %.2146194.i = phi i32 [ 0, %.preheader172.i96 ], [ %i.ayz, %lv_color_8_24_mix.exit166.i ] ; 2 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %.2155198.i, i64 %indvars.iv228.i
  %i.axr = load i8, ptr %i.axq, align 1, !tbaa !11 ; 4 uses
  %i.axs = sext i32 %.2146194.i to i64
  %i.axt = getelementptr inbounds i8, ptr %.2160197.i, i64 %i.axs ; 7 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %.0149199.i, i64 %indvars.iv228.i
  %i.axv = load i8, ptr %i.axu, align 1, !tbaa !11 ; 4 uses
  %i.axw = zext i8 %i.axv to i32
  %i.axx = icmp eq i8 %i.axv, 0
  br i1 %i.axx, label %lv_color_8_24_mix.exit166.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.axy = icmp ugt i8 %i.axv, -4
  br i1 %i.axy, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i8 %i.axr, ptr %i.axt, align 1, !tbaa !11
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axt, i64 1
  store i8 %i.axr, ptr %i.axz, align 1, !tbaa !11
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axt, i64 2
  store i8 %i.axr, ptr %i.aya, align 1, !tbaa !11
  br label %lv_color_8_24_mix.exit166.i

bb.cz:                                            ; preds = %bb.cx
  %i.ayb = xor i8 %i.axv, -1
  %i.ayc = zext i8 %i.axr to i32
  %i.ayd = mul nuw nsw i32 %i.axw, %i.ayc         ; 3 uses
  %i.aye = load i8, ptr %i.axt, align 1, !tbaa !11
  %i.ayf = zext i8 %i.aye to i32
  %i.ayg = zext i8 %i.ayb to i32                  ; 3 uses
  %i.ayh = mul nuw nsw i32 %i.ayf, %i.ayg
  %i.ayi = add nuw nsw i32 %i.ayh, %i.ayd
  %i.ayj = lshr i32 %i.ayi, 8
  %i.ayk = trunc i32 %i.ayj to i8
  store i8 %i.ayk, ptr %i.axt, align 1, !tbaa !11
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.axt, i64 1 ; 2 uses
  %i.aym = load i8, ptr %i.ayl, align 1, !tbaa !11
  %i.ayn = zext i8 %i.aym to i32
  %i.ayo = mul nuw nsw i32 %i.ayn, %i.ayg
  %i.ayp = add nuw nsw i32 %i.ayo, %i.ayd
  %i.ayq = lshr i32 %i.ayp, 8
  %i.ayr = trunc i32 %i.ayq to i8
  store i8 %i.ayr, ptr %i.ayl, align 1, !tbaa !11
  %i.ays = getelementptr inbounds nuw i8, ptr %i.axt, i64 2 ; 2 uses
  %i.ayt = load i8, ptr %i.ays, align 1, !tbaa !11
  %i.ayu = zext i8 %i.ayt to i32
  %i.ayv = mul nuw nsw i32 %i.ayu, %i.ayg
  %i.ayw = add nuw nsw i32 %i.ayv, %i.ayd
  %i.ayx = lshr i32 %i.ayw, 8
  %i.ayy = trunc i32 %i.ayx to i8
  store i8 %i.ayy, ptr %i.ays, align 1, !tbaa !11
  br label %lv_color_8_24_mix.exit166.i

lv_color_8_24_mix.exit166.i:                      ; preds = %bb.cz, %bb.cy, %bb.cw
  %i.ayz = add i32 %.2146194.i, %1
  %indvars.iv.next229.i = add nuw nsw i64 %indvars.iv228.i, 1 ; 2 uses
  %exitcond232.not.i = icmp eq i64 %indvars.iv.next229.i, %wide.trip.count231.i
  br i1 %exitcond232.not.i, label %._crit_edge196.i, label %bb.cw, !llvm.loop !97

._crit_edge196.i:                                 ; preds = %lv_color_8_24_mix.exit166.i
  %i.aza = getelementptr inbounds i8, ptr %.2160197.i, i64 %i.axn
  %i.azb = getelementptr inbounds nuw i8, ptr %.2155198.i, i64 %i.axo
  %i.azc = getelementptr inbounds i8, ptr %.0149199.i, i64 %i.axp
  %i.azd = add nuw nsw i32 %.2200.i, 1            ; 2 uses
  %exitcond233.not.i = icmp eq i32 %i.azd, %i.arm
  br i1 %exitcond233.not.i, label %rgb565_image_blend.exit, label %.preheader172.i96, !llvm.loop !98

bb.da:                                            ; preds = %bb.cv
  %or.cond11.i95 = select i1 %i.axk, i1 %i.auv, i1 false
  %i.aze = icmp sgt i32 %i.arm, 0
  %or.cond215.i = select i1 %or.cond11.i95, i1 %i.aze, i1 false
  br i1 %or.cond215.i, label %.preheader175.lr.ph.i, label %rgb565_image_blend.exit

.preheader175.lr.ph.i:                            ; preds = %bb.da
  %i.azf = icmp sgt i32 %i.ark, 0
  %i.azg = sext i32 %i.arr to i64
  %i.azh = zext i32 %i.arv to i64
  %i.azi = sext i32 %i.arz to i64
  br i1 %i.azf, label %.preheader175.preheader.i, label %rgb565_image_blend.exit

.preheader175.preheader.i:                        ; preds = %.preheader175.lr.ph.i
  %wide.trip.count225.i = zext nneg i32 %i.ark to i64
  br label %.preheader175.i

.preheader175.i:                                  ; preds = %._crit_edge189.i, %.preheader175.preheader.i
  %.3193.i = phi i32 [ %i.baz, %._crit_edge189.i ], [ 0, %.preheader175.preheader.i ]
  %.1150192.i = phi ptr [ %i.bay, %._crit_edge189.i ], [ %i.arx, %.preheader175.preheader.i ] ; 2 uses
  %.3156191.i = phi ptr [ %i.bax, %._crit_edge189.i ], [ %i.art, %.preheader175.preheader.i ] ; 2 uses
  %.3161190.i = phi ptr [ %i.baw, %._crit_edge189.i ], [ %i.arp, %.preheader175.preheader.i ] ; 2 uses
  br label %bb.db

bb.db:                                            ; preds = %lv_color_8_24_mix.exit167.i, %.preheader175.i
  %indvars.iv222.i = phi i64 [ 0, %.preheader175.i ], [ %indvars.iv.next223.i, %lv_color_8_24_mix.exit167.i ] ; 3 uses
  %.3147187.i = phi i32 [ 0, %.preheader175.i ], [ %i.bav, %lv_color_8_24_mix.exit167.i ] ; 2 uses
  %i.azj = getelementptr inbounds nuw i8, ptr %.3156191.i, i64 %indvars.iv222.i
  %i.azk = load i8, ptr %i.azj, align 1, !tbaa !11 ; 4 uses
  %i.azl = sext i32 %.3147187.i to i64
  %i.azm = getelementptr inbounds i8, ptr %.3161190.i, i64 %i.azl ; 7 uses
  %i.azn = getelementptr inbounds nuw i8, ptr %.1150192.i, i64 %indvars.iv222.i
  %i.azo = load i8, ptr %i.azn, align 1, !tbaa !11
  %i.azp = zext i8 %i.azo to i16
  %i.azq = mul nuw i16 %i.azp, %i.ask             ; 2 uses
  %i.azr = lshr i16 %i.azq, 8                     ; 3 uses
  %i.azs = zext nneg i16 %i.azr to i32
  %i.azt = icmp eq i16 %i.azr, 0
  br i1 %i.azt, label %lv_color_8_24_mix.exit167.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.azu = icmp ugt i16 %i.azq, -769
  br i1 %i.azu, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  store i8 %i.azk, ptr %i.azm, align 1, !tbaa !11
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azm, i64 1
  store i8 %i.azk, ptr %i.azv, align 1, !tbaa !11
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azm, i64 2
  store i8 %i.azk, ptr %i.azw, align 1, !tbaa !11
  br label %lv_color_8_24_mix.exit167.i

bb.de:                                            ; preds = %bb.dc
  %i.azx = xor i16 %i.azr, 255
  %i.azy = zext nneg i16 %i.azx to i32            ; 3 uses
  %i.azz = zext i8 %i.azk to i32
  %i.baa = mul nuw nsw i32 %i.azs, %i.azz         ; 3 uses
  %i.bab = load i8, ptr %i.azm, align 1, !tbaa !11
  %i.bac = zext i8 %i.bab to i32
  %i.bad = mul nuw nsw i32 %i.bac, %i.azy
  %i.bae = add nuw nsw i32 %i.bad, %i.baa
  %i.baf = lshr i32 %i.bae, 8
  %i.bag = trunc i32 %i.baf to i8
  store i8 %i.bag, ptr %i.azm, align 1, !tbaa !11
  %i.bah = getelementptr inbounds nuw i8, ptr %i.azm, i64 1 ; 2 uses
  %i.bai = load i8, ptr %i.bah, align 1, !tbaa !11
  %i.baj = zext i8 %i.bai to i32
  %i.bak = mul nuw nsw i32 %i.baj, %i.azy
  %i.bal = add nuw nsw i32 %i.bak, %i.baa
  %i.bam = lshr i32 %i.bal, 8
  %i.ban = trunc i32 %i.bam to i8
  store i8 %i.ban, ptr %i.bah, align 1, !tbaa !11
  %i.bao = getelementptr inbounds nuw i8, ptr %i.azm, i64 2 ; 2 uses
  %i.bap = load i8, ptr %i.bao, align 1, !tbaa !11
  %i.baq = zext i8 %i.bap to i32
  %i.bar = mul nuw nsw i32 %i.baq, %i.azy
  %i.bas = add nuw nsw i32 %i.bar, %i.baa
  %i.bat = lshr i32 %i.bas, 8
  %i.bau = trunc i32 %i.bat to i8
  store i8 %i.bau, ptr %i.bao, align 1, !tbaa !11
  br label %lv_color_8_24_mix.exit167.i

lv_color_8_24_mix.exit167.i:                      ; preds = %bb.de, %bb.dd, %bb.db
  %i.bav = add i32 %.3147187.i, %1
  %indvars.iv.next223.i = add nuw nsw i64 %indvars.iv222.i, 1 ; 2 uses
  %exitcond226.not.i = icmp eq i64 %indvars.iv.next223.i, %wide.trip.count225.i
  br i1 %exitcond226.not.i, label %._crit_edge189.i, label %bb.db, !llvm.loop !99

._crit_edge189.i:                                 ; preds = %lv_color_8_24_mix.exit167.i
  %i.baw = getelementptr inbounds i8, ptr %.3161190.i, i64 %i.azg
  %i.bax = getelementptr inbounds nuw i8, ptr %.3156191.i, i64 %i.azh
  %i.bay = getelementptr inbounds i8, ptr %.1150192.i, i64 %i.azi
  %i.baz = add nuw nsw i32 %.3193.i, 1            ; 2 uses
  %exitcond227.not.i = icmp eq i32 %i.baz, %i.arm
  br i1 %exitcond227.not.i, label %rgb565_image_blend.exit, label %.preheader175.i, !llvm.loop !100

.preheader178.i74:                                ; preds = %._crit_edge.i89, %.preheader178.preheader.i
  %.4186.i = phi i32 [ %i.bel, %._crit_edge.i89 ], [ 0, %.preheader178.preheader.i ]
  %.2151185.i = phi ptr [ %.3152.i, %._crit_edge.i89 ], [ %i.arx, %.preheader178.preheader.i ] ; 3 uses
  %.4157184.i = phi ptr [ %i.bek, %._crit_edge.i89 ], [ %i.art, %.preheader178.preheader.i ] ; 2 uses
  %.4162183.i = phi ptr [ %i.bej, %._crit_edge.i89 ], [ %i.arp, %.preheader178.preheader.i ] ; 2 uses
  %i.bba = icmp eq ptr %.2151185.i, null          ; 2 uses
  br label %bb.df

bb.df:                                            ; preds = %blend_non_normal_pixel.exit.i86, %.preheader178.i74
  %indvars.iv.i75 = phi i64 [ 0, %.preheader178.i74 ], [ %indvars.iv.next.i87, %blend_non_normal_pixel.exit.i86 ] ; 2 uses
  %.4148181.i = phi i32 [ 0, %.preheader178.i74 ], [ %i.beh, %blend_non_normal_pixel.exit.i86 ] ; 2 uses
  %i.bbb = getelementptr inbounds nuw i8, ptr %.4157184.i, i64 %indvars.iv.i75
  %i.bbc = load i8, ptr %i.bbb, align 1, !tbaa !11 ; 4 uses
  %.pre.i76 = sext i32 %.4148181.i to i64         ; 2 uses
  br i1 %i.bba, label %._crit_edge246.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.bbd = getelementptr inbounds i8, ptr %.2151185.i, i64 %.pre.i76
  %i.bbe = load i8, ptr %i.bbd, align 1, !tbaa !11
  %i.bbf = zext i8 %i.bbe to i16
  %i.bbg = mul nuw i16 %i.bbf, %i.asf
  %i.bbh = lshr i16 %i.bbg, 8
  %i.bbi = trunc nuw i16 %i.bbh to i8
  br label %._crit_edge246.i

._crit_edge246.i:                                 ; preds = %bb.dg, %bb.df
  %.sroa.6.0.i77 = phi i8 [ %i.bbi, %bb.dg ], [ %i.aro, %bb.df ] ; 3 uses
  %i.bbj = getelementptr inbounds i8, ptr %.4162183.i, i64 %.pre.i76 ; 18 uses
  %i.bbk = load i32, ptr %i.asa, align 4, !tbaa !25
  %.sroa.6.0.insert.ext.i78 = zext i8 %.sroa.6.0.i77 to i32 ; 4 uses
  %.sroa.5.0.insert.ext.i79 = zext i8 %i.bbc to i32 ; 9 uses
  switch i32 %i.bbk, label %blend_non_normal_pixel.exit.i86 [
    i32 1, label %bb.dh
    i32 2, label %bb.di
    i32 3, label %bb.dj
    i32 4, label %bb.dk
  ]

bb.dh:                                            ; preds = %._crit_edge246.i
  %i.bbl = load i8, ptr %i.bbj, align 1, !tbaa !11 ; 2 uses
  %narrow.i93 = tail call i8 @llvm.uadd.sat.i8(i8 %i.bbc, i8 %i.bbl)
  %spec.select63.i.i94 = zext i8 %narrow.i93 to i32
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbj, i64 1
  %i.bbn = load i8, ptr %i.bbm, align 1, !tbaa !11 ; 2 uses
  %narrow216.i = tail call i8 @llvm.uadd.sat.i8(i8 %i.bbn, i8 %i.bbc)
  %4 = zext i8 %narrow216.i to i32
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbj, i64 2
  %i.bbp = load i8, ptr %i.bbo, align 1, !tbaa !11 ; 2 uses
  %narrow217.i = tail call i8 @llvm.uadd.sat.i8(i8 %i.bbp, i8 %i.bbc)
  %5 = zext i8 %narrow217.i to i32
  br label %bb.dl

bb.di:                                            ; preds = %._crit_edge246.i
  %i.bbq = load i8, ptr %i.bbj, align 1, !tbaa !11 ; 2 uses
  %i.bbr = zext i8 %i.bbq to i32
  %i.bbs = sub nsw i32 %i.bbr, %.sroa.5.0.insert.ext.i79
  %spec.select5662.i.i90 = tail call i32 @llvm.smax.i32(i32 %i.bbs, i32 0)
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbj, i64 1
  %i.bbu = load i8, ptr %i.bbt, align 1, !tbaa !11 ; 2 uses
  %i.bbv = zext i8 %i.bbu to i32
  %i.bbw = sub nsw i32 %i.bbv, %.sroa.5.0.insert.ext.i79
  %i.bbx = tail call i32 @llvm.smax.i32(i32 %i.bbw, i32 0)
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbj, i64 2
  %i.bbz = load i8, ptr %i.bby, align 1, !tbaa !11 ; 2 uses
  %i.bca = zext i8 %i.bbz to i32
  %i.bcb = sub nsw i32 %i.bca, %.sroa.5.0.insert.ext.i79
  %i.bcc = tail call i32 @llvm.smax.i32(i32 %i.bcb, i32 0)
  br label %bb.dl

bb.dj:                                            ; preds = %._crit_edge246.i
  %i.bcd = load i8, ptr %i.bbj, align 1, !tbaa !11 ; 2 uses
  %i.bce = zext i8 %i.bcd to i32
  %i.bcf = mul nuw nsw i32 %i.bce, %.sroa.5.0.insert.ext.i79
  %i.bcg = lshr i32 %i.bcf, 8
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bbj, i64 1
  %i.bci = load i8, ptr %i.bch, align 1, !tbaa !11 ; 2 uses
  %i.bcj = zext i8 %i.bci to i32
  %i.bck = mul nuw nsw i32 %i.bcj, %.sroa.5.0.insert.ext.i79
  %i.bcl = lshr i32 %i.bck, 8
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bbj, i64 2
  %i.bcn = load i8, ptr %i.bcm, align 1, !tbaa !11 ; 2 uses
  %i.bco = zext i8 %i.bcn to i32
  %i.bcp = mul nuw nsw i32 %i.bco, %.sroa.5.0.insert.ext.i79
  %i.bcq = lshr i32 %i.bcp, 8
  br label %bb.dl

bb.dk:                                            ; preds = %._crit_edge246.i
  %i.bcr = load i8, ptr %i.bbj, align 1, !tbaa !11 ; 2 uses
  %i.bcs = zext i8 %i.bcr to i32
  %i.bct = sub nsw i32 %i.bcs, %.sroa.5.0.insert.ext.i79
  %i.bcu = tail call i32 @llvm.abs.i32(i32 %i.bct, i1 true)
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bbj, i64 1
  %i.bcw = load i8, ptr %i.bcv, align 1, !tbaa !11 ; 2 uses
  %i.bcx = zext i8 %i.bcw to i32
  %i.bcy = sub nsw i32 %i.bcx, %.sroa.5.0.insert.ext.i79
  %i.bcz = tail call i32 @llvm.abs.i32(i32 %i.bcy, i1 true)
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bbj, i64 2
  %i.bdb = load i8, ptr %i.bda, align 1, !tbaa !11 ; 2 uses
  %i.bdc = zext i8 %i.bdb to i32
  %i.bdd = sub nsw i32 %i.bdc, %.sroa.5.0.insert.ext.i79
  %i.bde = tail call i32 @llvm.abs.i32(i32 %i.bdd, i1 true)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dh
  %i.bdf = phi i8 [ %i.bbp, %bb.dh ], [ %i.bbz, %bb.di ], [ %i.bcn, %bb.dj ], [ %i.bdb, %bb.dk ]
  %i.bdg = phi i8 [ %i.bbn, %bb.dh ], [ %i.bbu, %bb.di ], [ %i.bci, %bb.dj ], [ %i.bcw, %bb.dk ]
  %i.bdh = phi i8 [ %i.bbl, %bb.dh ], [ %i.bbq, %bb.di ], [ %i.bcd, %bb.dj ], [ %i.bcr, %bb.dk ]
  %.sroa.0.0.in.i.i80 = phi i32 [ %spec.select63.i.i94, %bb.dh ], [ %spec.select5662.i.i90, %bb.di ], [ %i.bcg, %bb.dj ], [ %i.bcu, %bb.dk ] ; 2 uses
  %.sroa.9.0.in.i.i81 = phi i32 [ %4, %bb.dh ], [ %i.bbx, %bb.di ], [ %i.bcl, %bb.dj ], [ %i.bcz, %bb.dk ] ; 2 uses
  %.sroa.15.0.in.i.i82 = phi i32 [ %5, %bb.dh ], [ %i.bcc, %bb.di ], [ %i.bcq, %bb.dj ], [ %i.bde, %bb.dk ] ; 2 uses
  %.sroa.15.0.i.i83 = trunc nuw i32 %.sroa.15.0.in.i.i82 to i8
  %.sroa.9.0.i.i84 = trunc nuw i32 %.sroa.9.0.in.i.i81 to i8
  %.sroa.0.0.i.i85 = trunc nuw i32 %.sroa.0.0.in.i.i80 to i8
  %i.bdi = icmp eq i8 %.sroa.6.0.i77, 0
  br i1 %i.bdi, label %blend_non_normal_pixel.exit.i86, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.bdj = icmp ugt i8 %.sroa.6.0.i77, -4
  br i1 %i.bdj, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store i8 %.sroa.0.0.i.i85, ptr %i.bbj, align 1, !tbaa !11
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bbj, i64 1
  store i8 %.sroa.9.0.i.i84, ptr %i.bdk, align 1, !tbaa !11
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bbj, i64 2
  store i8 %.sroa.15.0.i.i83, ptr %i.bdl, align 1, !tbaa !11
  br label %blend_non_normal_pixel.exit.i86

bb.do:                                            ; preds = %bb.dm
  %i.bdm = xor i32 %.sroa.6.0.insert.ext.i78, 255 ; 3 uses
  %i.bdn = mul nuw nsw i32 %.sroa.0.0.in.i.i80, %.sroa.6.0.insert.ext.i78
  %i.bdo = zext i8 %i.bdh to i32
  %i.bdp = mul nuw nsw i32 %i.bdm, %i.bdo
  %i.bdq = add nuw nsw i32 %i.bdp, %i.bdn
  %i.bdr = lshr i32 %i.bdq, 8
  %i.bds = trunc nuw i32 %i.bdr to i8
  store i8 %i.bds, ptr %i.bbj, align 1, !tbaa !11
  %i.bdt = mul nuw nsw i32 %.sroa.9.0.in.i.i81, %.sroa.6.0.insert.ext.i78
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bbj, i64 1
  %i.bdv = zext i8 %i.bdg to i32
  %i.bdw = mul nuw nsw i32 %i.bdm, %i.bdv
  %i.bdx = add nuw nsw i32 %i.bdt, %i.bdw
  %i.bdy = lshr i32 %i.bdx, 8
  %i.bdz = trunc nuw i32 %i.bdy to i8
  store i8 %i.bdz, ptr %i.bdu, align 1, !tbaa !11
  %i.bea = mul nuw nsw i32 %.sroa.15.0.in.i.i82, %.sroa.6.0.insert.ext.i78
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bbj, i64 2
  %i.bec = zext i8 %i.bdf to i32
  %i.bed = mul nuw nsw i32 %i.bdm, %i.bec
  %i.bee = add nuw nsw i32 %i.bea, %i.bed
  %i.bef = lshr i32 %i.bee, 8
  %i.beg = trunc nuw i32 %i.bef to i8
  store i8 %i.beg, ptr %i.beb, align 1, !tbaa !11
  br label %blend_non_normal_pixel.exit.i86

blend_non_normal_pixel.exit.i86:                  ; preds = %bb.do, %bb.dn, %bb.dl, %._crit_edge246.i
  %i.beh = add i32 %.4148181.i, %1
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i75, 1 ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %indvars.iv.next.i87, %wide.trip.count.i73
  br i1 %exitcond.not.i88, label %._crit_edge.i89, label %bb.df, !llvm.loop !101

._crit_edge.i89:                                  ; preds = %blend_non_normal_pixel.exit.i86
  %i.bei = getelementptr inbounds i8, ptr %.2151185.i, i64 %i.asg
  %.3152.i = select i1 %i.bba, ptr null, ptr %i.bei
  %i.bej = getelementptr inbounds i8, ptr %.4162183.i, i64 %i.ash
  %i.bek = getelementptr inbounds nuw i8, ptr %.4157184.i, i64 %i.asi
  %i.bel = add nuw nsw i32 %.4186.i, 1            ; 2 uses
  %exitcond221.not.i = icmp eq i32 %i.bel, %i.arm
  br i1 %exitcond221.not.i, label %rgb565_image_blend.exit, label %.preheader178.i74, !llvm.loop !102

bb.dp:                                            ; preds = %bb.a
  %i.bem = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ben = load i32, ptr %i.bem, align 8, !tbaa !16 ; 10 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bep = load i32, ptr %i.beo, align 4, !tbaa !17 ; 10 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ber = load i8, ptr %i.beq, align 8, !tbaa !18 ; 4 uses
  %i.bes = load ptr, ptr %0, align 8, !tbaa !19   ; 5 uses
  %i.bet = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.beu = load i32, ptr %i.bet, align 8, !tbaa !20 ; 5 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bew = load ptr, ptr %i.bev, align 8, !tbaa !21 ; 5 uses
  %i.bex = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bey = load i32, ptr %i.bex, align 8, !tbaa !22 ; 5 uses
  %i.bez = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bfa = load ptr, ptr %i.bez, align 8, !tbaa !23 ; 5 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bfc = load i32, ptr %i.bfb, align 8, !tbaa !24 ; 3 uses
  %i.bfd = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bfe = load i32, ptr %i.bfd, align 4, !tbaa !25
  %i.bff = icmp eq i32 %i.bfe, 0
  br i1 %i.bff, label %bb.dq, label %.preheader181.i

.preheader181.i:                                  ; preds = %bb.dp
  %i.bfg = icmp sgt i32 %i.bep, 0
  br i1 %i.bfg, label %.preheader180.lr.ph.i, label %rgb565_image_blend.exit

.preheader180.lr.ph.i:                            ; preds = %.preheader181.i
  %i.bfh = icmp sgt i32 %i.ben, 0
  %i.bfi = zext i8 %i.ber to i32                  ; 2 uses
  %i.bfj = sext i32 %i.bfc to i64
  %i.bfk = sext i32 %i.beu to i64
  %i.bfl = zext i32 %i.bey to i64
  br i1 %i.bfh, label %.preheader180.preheader.i, label %rgb565_image_blend.exit

.preheader180.preheader.i:                        ; preds = %.preheader180.lr.ph.i
  %wide.trip.count.i103 = zext nneg i32 %i.ben to i64
  br label %.preheader180.i

bb.dq:                                            ; preds = %bb.dp
  %i.bfm = icmp eq ptr %i.bfa, null               ; 2 uses
  %i.bfn = zext i8 %i.ber to i32                  ; 2 uses
  %i.bfo = icmp ugt i8 %i.ber, -4                 ; 2 uses
  %or.cond.i123 = select i1 %i.bfm, i1 %i.bfo, i1 false
  br i1 %or.cond.i123, label %.preheader170.i155, label %bb.dv

.preheader170.i155:                               ; preds = %bb.dq
  %i.bfp = icmp sgt i32 %i.bep, 0
  br i1 %i.bfp, label %.preheader.lr.ph.i156, label %rgb565_image_blend.exit

.preheader.lr.ph.i156:                            ; preds = %.preheader170.i155
  %i.bfq = icmp sgt i32 %i.ben, 0
  %i.bfr = sext i32 %i.beu to i64
  %i.bfs = zext i32 %i.bey to i64
  br i1 %i.bfq, label %.preheader.preheader.i157, label %rgb565_image_blend.exit

.preheader.preheader.i157:                        ; preds = %.preheader.lr.ph.i156
  %wide.trip.count243.i158 = zext nneg i32 %i.ben to i64
  br label %.preheader.i159

.preheader.i159:                                  ; preds = %._crit_edge211.i, %.preheader.preheader.i157
  %.0214.i = phi i32 [ %i.bhf, %._crit_edge211.i ], [ 0, %.preheader.preheader.i157 ]
  %.0153213.i = phi ptr [ %i.bhe, %._crit_edge211.i ], [ %i.bew, %.preheader.preheader.i157 ] ; 2 uses
  %.0158212.i = phi ptr [ %i.bhd, %._crit_edge211.i ], [ %i.bes, %.preheader.preheader.i157 ] ; 2 uses
  br label %bb.dr

bb.dr:                                            ; preds = %lv_color_8_24_mix.exit.i161, %.preheader.i159
  %indvars.iv240.i160 = phi i64 [ 0, %.preheader.i159 ], [ %indvars.iv.next241.i162, %lv_color_8_24_mix.exit.i161 ] ; 2 uses
  %.0144209.i = phi i32 [ 0, %.preheader.i159 ], [ %i.bhc, %lv_color_8_24_mix.exit.i161 ] ; 2 uses
  %i.bft = getelementptr inbounds nuw [2 x i8], ptr %.0153213.i, i64 %indvars.iv240.i160 ; 2 uses
  %i.bfu = load i8, ptr %i.bft, align 1, !tbaa !136 ; 4 uses
  %i.bfv = sext i32 %.0144209.i to i64
  %i.bfw = getelementptr inbounds i8, ptr %.0158212.i, i64 %i.bfv ; 7 uses
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bft, i64 1
  %i.bfy = load i8, ptr %i.bfx, align 1, !tbaa !137 ; 4 uses
  %i.bfz = zext i8 %i.bfy to i32
  %i.bga = icmp eq i8 %i.bfy, 0
  br i1 %i.bga, label %lv_color_8_24_mix.exit.i161, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.bgb = icmp ugt i8 %i.bfy, -4
  br i1 %i.bgb, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i8 %i.bfu, ptr %i.bfw, align 1, !tbaa !11
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bfw, i64 1
  store i8 %i.bfu, ptr %i.bgc, align 1, !tbaa !11
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfw, i64 2
  store i8 %i.bfu, ptr %i.bgd, align 1, !tbaa !11
  br label %lv_color_8_24_mix.exit.i161

bb.du:                                            ; preds = %bb.ds
  %i.bge = xor i8 %i.bfy, -1
  %i.bgf = zext i8 %i.bfu to i32
  %i.bgg = mul nuw nsw i32 %i.bfz, %i.bgf         ; 3 uses
  %i.bgh = load i8, ptr %i.bfw, align 1, !tbaa !11
  %i.bgi = zext i8 %i.bgh to i32
  %i.bgj = zext i8 %i.bge to i32                  ; 3 uses
  %i.bgk = mul nuw nsw i32 %i.bgi, %i.bgj
  %i.bgl = add nuw nsw i32 %i.bgk, %i.bgg
  %i.bgm = lshr i32 %i.bgl, 8
  %i.bgn = trunc i32 %i.bgm to i8
  store i8 %i.bgn, ptr %i.bfw, align 1, !tbaa !11
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bfw, i64 1 ; 2 uses
  %i.bgp = load i8, ptr %i.bgo, align 1, !tbaa !11
  %i.bgq = zext i8 %i.bgp to i32
  %i.bgr = mul nuw nsw i32 %i.bgq, %i.bgj
  %i.bgs = add nuw nsw i32 %i.bgr, %i.bgg
  %i.bgt = lshr i32 %i.bgs, 8
  %i.bgu = trunc i32 %i.bgt to i8
  store i8 %i.bgu, ptr %i.bgo, align 1, !tbaa !11
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bfw, i64 2 ; 2 uses
  %i.bgw = load i8, ptr %i.bgv, align 1, !tbaa !11
  %i.bgx = zext i8 %i.bgw to i32
  %i.bgy = mul nuw nsw i32 %i.bgx, %i.bgj
  %i.bgz = add nuw nsw i32 %i.bgy, %i.bgg
  %i.bha = lshr i32 %i.bgz, 8
  %i.bhb = trunc i32 %i.bha to i8
  store i8 %i.bhb, ptr %i.bgv, align 1, !tbaa !11
  br label %lv_color_8_24_mix.exit.i161

lv_color_8_24_mix.exit.i161:                      ; preds = %bb.du, %bb.dt, %bb.dr
  %i.bhc = add i32 %.0144209.i, %1
  %indvars.iv.next241.i162 = add nuw nsw i64 %indvars.iv240.i160, 1 ; 2 uses
  %exitcond244.not.i163 = icmp eq i64 %indvars.iv.next241.i162, %wide.trip.count243.i158
  br i1 %exitcond244.not.i163, label %._crit_edge211.i, label %bb.dr, !llvm.loop !103

._crit_edge211.i:                                 ; preds = %lv_color_8_24_mix.exit.i161
  %i.bhd = getelementptr inbounds i8, ptr %.0158212.i, i64 %i.bfr
  %i.bhe = getelementptr inbounds nuw i8, ptr %.0153213.i, i64 %i.bfs
  %i.bhf = add nuw nsw i32 %.0214.i, 1            ; 2 uses
  %exitcond245.not.i164 = icmp eq i32 %i.bhf, %i.bep
  br i1 %exitcond245.not.i164, label %rgb565_image_blend.exit, label %.preheader.i159, !llvm.loop !104

bb.dv:                                            ; preds = %bb.dq
  %i.bhg = icmp ult i8 %i.ber, -3                 ; 2 uses
  %or.cond5.i124 = select i1 %i.bfm, i1 %i.bhg, i1 false
  br i1 %or.cond5.i124, label %.preheader172.i145, label %bb.ea

.preheader172.i145:                               ; preds = %bb.dv
end_hunk_1
begin_hunk_2_@lv_draw_sw_blend_image_to_rgb888:bb.a
  %i.bjd = zext i32 %i.bey to i64
  %i.bje = sext i32 %i.bfc to i64
  br i1 %i.bjb, label %.preheader174.preheader.i138, label %rgb565_image_blend.exit

.preheader174.preheader.i138:                     ; preds = %.preheader174.lr.ph.i137
  %wide.trip.count231.i139 = zext nneg i32 %i.ben to i64
  br label %.preheader174.i140

.preheader174.i140:                               ; preds = %._crit_edge198.i, %.preheader174.preheader.i138
  %.2202.i = phi i32 [ %i.bky, %._crit_edge198.i ], [ 0, %.preheader174.preheader.i138 ]
  %.0149201.i = phi ptr [ %i.bkx, %._crit_edge198.i ], [ %i.bfa, %.preheader174.preheader.i138 ] ; 2 uses
  %.2155200.i = phi ptr [ %i.bkw, %._crit_edge198.i ], [ %i.bew, %.preheader174.preheader.i138 ] ; 2 uses
  %.2160199.i = phi ptr [ %i.bkv, %._crit_edge198.i ], [ %i.bes, %.preheader174.preheader.i138 ] ; 2 uses
  br label %bb.eb

bb.eb:                                            ; preds = %lv_color_8_24_mix.exit168.i, %.preheader174.i140
  %indvars.iv228.i141 = phi i64 [ 0, %.preheader174.i140 ], [ %indvars.iv.next229.i142, %lv_color_8_24_mix.exit168.i ] ; 3 uses
  %.2146196.i = phi i32 [ 0, %.preheader174.i140 ], [ %i.bku, %lv_color_8_24_mix.exit168.i ] ; 2 uses
  %i.bjf = getelementptr inbounds nuw [2 x i8], ptr %.2155200.i, i64 %indvars.iv228.i141 ; 2 uses
  %i.bjg = load i8, ptr %i.bjf, align 1, !tbaa !136 ; 4 uses
  %i.bjh = sext i32 %.2146196.i to i64
  %i.bji = getelementptr inbounds i8, ptr %.2160199.i, i64 %i.bjh ; 7 uses
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bjf, i64 1
  %i.bjk = load i8, ptr %i.bjj, align 1, !tbaa !137
  %i.bjl = zext i8 %i.bjk to i16
  %i.bjm = getelementptr inbounds nuw i8, ptr %.0149201.i, i64 %indvars.iv228.i141
  %i.bjn = load i8, ptr %i.bjm, align 1, !tbaa !11
  %i.bjo = zext i8 %i.bjn to i16
  %i.bjp = mul nuw i16 %i.bjo, %i.bjl             ; 2 uses
  %i.bjq = lshr i16 %i.bjp, 8                     ; 3 uses
  %i.bjr = zext nneg i16 %i.bjq to i32
  %i.bjs = icmp eq i16 %i.bjq, 0
  br i1 %i.bjs, label %lv_color_8_24_mix.exit168.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.bjt = icmp ugt i16 %i.bjp, -769
  br i1 %i.bjt, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  store i8 %i.bjg, ptr %i.bji, align 1, !tbaa !11
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bji, i64 1
  store i8 %i.bjg, ptr %i.bju, align 1, !tbaa !11
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bji, i64 2
  store i8 %i.bjg, ptr %i.bjv, align 1, !tbaa !11
  br label %lv_color_8_24_mix.exit168.i

bb.ee:                                            ; preds = %bb.ec
  %i.bjw = xor i16 %i.bjq, 255
  %i.bjx = zext nneg i16 %i.bjw to i32            ; 3 uses
  %i.bjy = zext i8 %i.bjg to i32
  %i.bjz = mul nuw nsw i32 %i.bjr, %i.bjy         ; 3 uses
  %i.bka = load i8, ptr %i.bji, align 1, !tbaa !11
  %i.bkb = zext i8 %i.bka to i32
  %i.bkc = mul nuw nsw i32 %i.bkb, %i.bjx
  %i.bkd = add nuw nsw i32 %i.bkc, %i.bjz
  %i.bke = lshr i32 %i.bkd, 8
  %i.bkf = trunc i32 %i.bke to i8
  store i8 %i.bkf, ptr %i.bji, align 1, !tbaa !11
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bji, i64 1 ; 2 uses
  %i.bkh = load i8, ptr %i.bkg, align 1, !tbaa !11
  %i.bki = zext i8 %i.bkh to i32
  %i.bkj = mul nuw nsw i32 %i.bki, %i.bjx
  %i.bkk = add nuw nsw i32 %i.bkj, %i.bjz
  %i.bkl = lshr i32 %i.bkk, 8
  %i.bkm = trunc i32 %i.bkl to i8
  store i8 %i.bkm, ptr %i.bkg, align 1, !tbaa !11
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bji, i64 2 ; 2 uses
  %i.bko = load i8, ptr %i.bkn, align 1, !tbaa !11
  %i.bkp = zext i8 %i.bko to i32
  %i.bkq = mul nuw nsw i32 %i.bkp, %i.bjx
  %i.bkr = add nuw nsw i32 %i.bkq, %i.bjz
  %i.bks = lshr i32 %i.bkr, 8
  %i.bkt = trunc i32 %i.bks to i8
  store i8 %i.bkt, ptr %i.bkn, align 1, !tbaa !11
  br label %lv_color_8_24_mix.exit168.i

lv_color_8_24_mix.exit168.i:                      ; preds = %bb.ee, %bb.ed, %bb.eb
  %i.bku = add i32 %.2146196.i, %1
  %indvars.iv.next229.i142 = add nuw nsw i64 %indvars.iv228.i141, 1 ; 2 uses
  %exitcond232.not.i143 = icmp eq i64 %indvars.iv.next229.i142, %wide.trip.count231.i139
  br i1 %exitcond232.not.i143, label %._crit_edge198.i, label %bb.eb, !llvm.loop !107

._crit_edge198.i:                                 ; preds = %lv_color_8_24_mix.exit168.i
  %i.bkv = getelementptr inbounds i8, ptr %.2160199.i, i64 %i.bjc
  %i.bkw = getelementptr inbounds nuw i8, ptr %.2155200.i, i64 %i.bjd
  %i.bkx = getelementptr inbounds i8, ptr %.0149201.i, i64 %i.bje
  %i.bky = add nuw nsw i32 %.2202.i, 1            ; 2 uses
  %exitcond233.not.i144 = icmp eq i32 %i.bky, %i.bep
  br i1 %exitcond233.not.i144, label %rgb565_image_blend.exit, label %.preheader174.i140, !llvm.loop !108

bb.ef:                                            ; preds = %bb.ea
  %or.cond11.i126 = select i1 %i.biz, i1 %i.bhg, i1 false
  %i.bkz = icmp sgt i32 %i.bep, 0
  %or.cond215.i127 = select i1 %or.cond11.i126, i1 %i.bkz, i1 false
  br i1 %or.cond215.i127, label %.preheader177.lr.ph.i128, label %rgb565_image_blend.exit

.preheader177.lr.ph.i128:                         ; preds = %bb.ef
  %i.bla = icmp sgt i32 %i.ben, 0
  %i.blb = sext i32 %i.beu to i64
  %i.blc = zext i32 %i.bey to i64
  %i.bld = sext i32 %i.bfc to i64
  br i1 %i.bla, label %.preheader177.preheader.i129, label %rgb565_image_blend.exit

.preheader177.preheader.i129:                     ; preds = %.preheader177.lr.ph.i128
  %wide.trip.count225.i130 = zext nneg i32 %i.ben to i64
  br label %.preheader177.i131

.preheader177.i131:                               ; preds = %._crit_edge191.i, %.preheader177.preheader.i129
  %.3195.i = phi i32 [ %i.bmw, %._crit_edge191.i ], [ 0, %.preheader177.preheader.i129 ]
  %.1150194.i = phi ptr [ %i.bmv, %._crit_edge191.i ], [ %i.bfa, %.preheader177.preheader.i129 ] ; 2 uses
  %.3156193.i = phi ptr [ %i.bmu, %._crit_edge191.i ], [ %i.bew, %.preheader177.preheader.i129 ] ; 2 uses
  %.3161192.i = phi ptr [ %i.bmt, %._crit_edge191.i ], [ %i.bes, %.preheader177.preheader.i129 ] ; 2 uses
  br label %bb.eg

bb.eg:                                            ; preds = %lv_color_8_24_mix.exit169.i, %.preheader177.i131
  %indvars.iv222.i132 = phi i64 [ 0, %.preheader177.i131 ], [ %indvars.iv.next223.i133, %lv_color_8_24_mix.exit169.i ] ; 3 uses
  %.3147189.i = phi i32 [ 0, %.preheader177.i131 ], [ %i.bms, %lv_color_8_24_mix.exit169.i ] ; 2 uses
  %i.ble = getelementptr inbounds nuw [2 x i8], ptr %.3156193.i, i64 %indvars.iv222.i132 ; 2 uses
  %i.blf = load i8, ptr %i.ble, align 1, !tbaa !136 ; 4 uses
  %i.blg = sext i32 %.3147189.i to i64
  %i.blh = getelementptr inbounds i8, ptr %.3161192.i, i64 %i.blg ; 7 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %i.ble, i64 1
  %i.blj = load i8, ptr %i.bli, align 1, !tbaa !137
  %i.blk = zext i8 %i.blj to i32
  %i.bll = getelementptr inbounds nuw i8, ptr %.1150194.i, i64 %indvars.iv222.i132
  %i.blm = load i8, ptr %i.bll, align 1, !tbaa !11
  %i.bln = zext i8 %i.blm to i32
  %i.blo = mul nuw nsw i32 %i.blk, %i.bfn
  %i.blp = mul nuw nsw i32 %i.blo, %i.bln         ; 2 uses
  %i.blq = lshr i32 %i.blp, 16                    ; 3 uses
  %i.blr = icmp eq i32 %i.blq, 0
  br i1 %i.blr, label %lv_color_8_24_mix.exit169.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.bls = icmp samesign ugt i32 %i.blp, 16580607
  br i1 %i.bls, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  store i8 %i.blf, ptr %i.blh, align 1, !tbaa !11
  %i.blt = getelementptr inbounds nuw i8, ptr %i.blh, i64 1
  store i8 %i.blf, ptr %i.blt, align 1, !tbaa !11
  %i.blu = getelementptr inbounds nuw i8, ptr %i.blh, i64 2
  store i8 %i.blf, ptr %i.blu, align 1, !tbaa !11
  br label %lv_color_8_24_mix.exit169.i

bb.ej:                                            ; preds = %bb.eh
  %i.blv = xor i32 %i.blq, 255                    ; 3 uses
  %i.blw = zext i8 %i.blf to i32
  %i.blx = mul nuw nsw i32 %i.blq, %i.blw         ; 3 uses
  %i.bly = load i8, ptr %i.blh, align 1, !tbaa !11
  %i.blz = zext i8 %i.bly to i32
  %i.bma = mul nuw nsw i32 %i.blv, %i.blz
  %i.bmb = add nuw nsw i32 %i.bma, %i.blx
  %i.bmc = lshr i32 %i.bmb, 8
  %i.bmd = trunc nuw i32 %i.bmc to i8
  store i8 %i.bmd, ptr %i.blh, align 1, !tbaa !11
  %i.bme = getelementptr inbounds nuw i8, ptr %i.blh, i64 1 ; 2 uses
  %i.bmf = load i8, ptr %i.bme, align 1, !tbaa !11
  %i.bmg = zext i8 %i.bmf to i32
  %i.bmh = mul nuw nsw i32 %i.blv, %i.bmg
  %i.bmi = add nuw nsw i32 %i.bmh, %i.blx
  %i.bmj = lshr i32 %i.bmi, 8
  %i.bmk = trunc nuw i32 %i.bmj to i8
  store i8 %i.bmk, ptr %i.bme, align 1, !tbaa !11
  %i.bml = getelementptr inbounds nuw i8, ptr %i.blh, i64 2 ; 2 uses
  %i.bmm = load i8, ptr %i.bml, align 1, !tbaa !11
  %i.bmn = zext i8 %i.bmm to i32
  %i.bmo = mul nuw nsw i32 %i.blv, %i.bmn
  %i.bmp = add nuw nsw i32 %i.bmo, %i.blx
  %i.bmq = lshr i32 %i.bmp, 8
  %i.bmr = trunc nuw i32 %i.bmq to i8
  store i8 %i.bmr, ptr %i.bml, align 1, !tbaa !11
  br label %lv_color_8_24_mix.exit169.i

lv_color_8_24_mix.exit169.i:                      ; preds = %bb.ej, %bb.ei, %bb.eg
  %i.bms = add i32 %.3147189.i, %1
  %indvars.iv.next223.i133 = add nuw nsw i64 %indvars.iv222.i132, 1 ; 2 uses
  %exitcond226.not.i134 = icmp eq i64 %indvars.iv.next223.i133, %wide.trip.count225.i130
  br i1 %exitcond226.not.i134, label %._crit_edge191.i, label %bb.eg, !llvm.loop !109

._crit_edge191.i:                                 ; preds = %lv_color_8_24_mix.exit169.i
  %i.bmt = getelementptr inbounds i8, ptr %.3161192.i, i64 %i.blb
  %i.bmu = getelementptr inbounds nuw i8, ptr %.3156193.i, i64 %i.blc
  %i.bmv = getelementptr inbounds i8, ptr %.1150194.i, i64 %i.bld
  %i.bmw = add nuw nsw i32 %.3195.i, 1            ; 2 uses
  %exitcond227.not.i135 = icmp eq i32 %i.bmw, %i.bep
  br i1 %exitcond227.not.i135, label %rgb565_image_blend.exit, label %.preheader177.i131, !llvm.loop !110

.preheader180.i:                                  ; preds = %._crit_edge.i117, %.preheader180.preheader.i
  %.4188.i = phi i32 [ %i.bqo, %._crit_edge.i117 ], [ 0, %.preheader180.preheader.i ]
  %.2151187.i = phi ptr [ %.3152.i118, %._crit_edge.i117 ], [ %i.bfa, %.preheader180.preheader.i ] ; 3 uses
  %.4157186.i = phi ptr [ %i.bqn, %._crit_edge.i117 ], [ %i.bew, %.preheader180.preheader.i ] ; 2 uses
  %.4162185.i = phi ptr [ %i.bqm, %._crit_edge.i117 ], [ %i.bes, %.preheader180.preheader.i ] ; 2 uses
  %i.bmx = icmp eq ptr %.2151187.i, null          ; 2 uses
  br label %bb.ek

bb.ek:                                            ; preds = %blend_non_normal_pixel.exit.i114, %.preheader180.i
  %indvars.iv.i104 = phi i64 [ 0, %.preheader180.i ], [ %indvars.iv.next.i115, %blend_non_normal_pixel.exit.i114 ] ; 2 uses
  %.4148183.i = phi i32 [ 0, %.preheader180.i ], [ %i.bqk, %blend_non_normal_pixel.exit.i114 ] ; 3 uses
  %i.bmy = getelementptr inbounds nuw [2 x i8], ptr %.4157186.i, i64 %indvars.iv.i104 ; 2 uses
  %i.bmz = load i8, ptr %i.bmy, align 1, !tbaa !136 ; 4 uses
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmy, i64 1
  %i.bnb = load i8, ptr %i.bna, align 1, !tbaa !137
  %i.bnc = zext i8 %i.bnb to i32                  ; 2 uses
  br i1 %i.bmx, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.bnd = mul nuw nsw i32 %i.bnc, %i.bfi
  %i.bne = lshr i32 %i.bnd, 8
  %.pre.i122 = sext i32 %.4148183.i to i64
  br label %bb.en

bb.em:                                            ; preds = %bb.ek
  %i.bnf = sext i32 %.4148183.i to i64            ; 2 uses
  %i.bng = getelementptr inbounds i8, ptr %.2151187.i, i64 %i.bnf
  %i.bnh = load i8, ptr %i.bng, align 1, !tbaa !11
  %i.bni = zext i8 %i.bnh to i32
  %i.bnj = mul nuw nsw i32 %i.bnc, %i.bfi
  %i.bnk = mul nuw nsw i32 %i.bnj, %i.bni
  %i.bnl = lshr i32 %i.bnk, 16
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %.pre-phi.i105 = phi i64 [ %i.bnf, %bb.em ], [ %.pre.i122, %bb.el ]
  %.sroa.6.0.i106 = phi i32 [ %i.bnl, %bb.em ], [ %i.bne, %bb.el ] ; 6 uses
  %i.bnm = getelementptr inbounds i8, ptr %.4162185.i, i64 %.pre-phi.i105 ; 18 uses
  %i.bnn = load i32, ptr %i.bfd, align 4, !tbaa !25
  %.sroa.5.0.insert.ext.i107 = zext i8 %i.bmz to i32 ; 9 uses
  switch i32 %i.bnn, label %blend_non_normal_pixel.exit.i114 [
    i32 1, label %bb.eo
    i32 2, label %bb.ep
    i32 3, label %bb.eq
    i32 4, label %bb.er
  ]

bb.eo:                                            ; preds = %bb.en
  %i.bno = load i8, ptr %i.bnm, align 1, !tbaa !11 ; 2 uses
  %narrow.i127 = tail call i8 @llvm.uadd.sat.i8(i8 %i.bmz, i8 %i.bno)
  %spec.select63.i.i128 = zext i8 %narrow.i127 to i32
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bnm, i64 1
  %i.bnq = load i8, ptr %i.bnp, align 1, !tbaa !11 ; 2 uses
  %narrow216.i129 = tail call i8 @llvm.uadd.sat.i8(i8 %i.bnq, i8 %i.bmz)
  %6 = zext i8 %narrow216.i129 to i32
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bnm, i64 2
  %i.bns = load i8, ptr %i.bnr, align 1, !tbaa !11 ; 2 uses
  %narrow217.i130 = tail call i8 @llvm.uadd.sat.i8(i8 %i.bns, i8 %i.bmz)
  %7 = zext i8 %narrow217.i130 to i32
  br label %bb.es

bb.ep:                                            ; preds = %bb.en
  %i.bnt = load i8, ptr %i.bnm, align 1, !tbaa !11 ; 2 uses
  %i.bnu = zext i8 %i.bnt to i32
  %i.bnv = sub nsw i32 %i.bnu, %.sroa.5.0.insert.ext.i107
  %spec.select5662.i.i120 = tail call i32 @llvm.smax.i32(i32 %i.bnv, i32 0)
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnm, i64 1
  %i.bnx = load i8, ptr %i.bnw, align 1, !tbaa !11 ; 2 uses
  %i.bny = zext i8 %i.bnx to i32
  %i.bnz = sub nsw i32 %i.bny, %.sroa.5.0.insert.ext.i107
  %i.boa = tail call i32 @llvm.smax.i32(i32 %i.bnz, i32 0)
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bnm, i64 2
  %i.boc = load i8, ptr %i.bob, align 1, !tbaa !11 ; 2 uses
  %i.bod = zext i8 %i.boc to i32
  %i.boe = sub nsw i32 %i.bod, %.sroa.5.0.insert.ext.i107
  %i.bof = tail call i32 @llvm.smax.i32(i32 %i.boe, i32 0)
  br label %bb.es

bb.eq:                                            ; preds = %bb.en
  %i.bog = load i8, ptr %i.bnm, align 1, !tbaa !11 ; 2 uses
  %i.boh = zext i8 %i.bog to i32
  %i.boi = mul nuw nsw i32 %i.boh, %.sroa.5.0.insert.ext.i107
  %i.boj = lshr i32 %i.boi, 8
  %i.bok = getelementptr inbounds nuw i8, ptr %i.bnm, i64 1
  %i.bol = load i8, ptr %i.bok, align 1, !tbaa !11 ; 2 uses
  %i.bom = zext i8 %i.bol to i32
  %i.bon = mul nuw nsw i32 %i.bom, %.sroa.5.0.insert.ext.i107
  %i.boo = lshr i32 %i.bon, 8
  %i.bop = getelementptr inbounds nuw i8, ptr %i.bnm, i64 2
  %i.boq = load i8, ptr %i.bop, align 1, !tbaa !11 ; 2 uses
  %i.bor = zext i8 %i.boq to i32
  %i.bos = mul nuw nsw i32 %i.bor, %.sroa.5.0.insert.ext.i107
  %i.bot = lshr i32 %i.bos, 8
  br label %bb.es

bb.er:                                            ; preds = %bb.en
  %i.bou = load i8, ptr %i.bnm, align 1, !tbaa !11 ; 2 uses
  %i.bov = zext i8 %i.bou to i32
  %i.bow = sub nsw i32 %i.bov, %.sroa.5.0.insert.ext.i107
  %i.box = tail call i32 @llvm.abs.i32(i32 %i.bow, i1 true)
  %i.boy = getelementptr inbounds nuw i8, ptr %i.bnm, i64 1
  %i.boz = load i8, ptr %i.boy, align 1, !tbaa !11 ; 2 uses
  %i.bpa = zext i8 %i.boz to i32
  %i.bpb = sub nsw i32 %i.bpa, %.sroa.5.0.insert.ext.i107
  %i.bpc = tail call i32 @llvm.abs.i32(i32 %i.bpb, i1 true)
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bnm, i64 2
  %i.bpe = load i8, ptr %i.bpd, align 1, !tbaa !11 ; 2 uses
  %i.bpf = zext i8 %i.bpe to i32
  %i.bpg = sub nsw i32 %i.bpf, %.sroa.5.0.insert.ext.i107
  %i.bph = tail call i32 @llvm.abs.i32(i32 %i.bpg, i1 true)
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %bb.ep, %bb.eo
  %i.bpi = phi i8 [ %i.bns, %bb.eo ], [ %i.boc, %bb.ep ], [ %i.boq, %bb.eq ], [ %i.bpe, %bb.er ]
  %i.bpj = phi i8 [ %i.bnq, %bb.eo ], [ %i.bnx, %bb.ep ], [ %i.bol, %bb.eq ], [ %i.boz, %bb.er ]
  %i.bpk = phi i8 [ %i.bno, %bb.eo ], [ %i.bnt, %bb.ep ], [ %i.bog, %bb.eq ], [ %i.bou, %bb.er ]
  %.sroa.0.0.in.i.i108 = phi i32 [ %spec.select63.i.i128, %bb.eo ], [ %spec.select5662.i.i120, %bb.ep ], [ %i.boj, %bb.eq ], [ %i.box, %bb.er ] ; 2 uses
  %.sroa.9.0.in.i.i109 = phi i32 [ %6, %bb.eo ], [ %i.boa, %bb.ep ], [ %i.boo, %bb.eq ], [ %i.bpc, %bb.er ] ; 2 uses
  %.sroa.15.0.in.i.i110 = phi i32 [ %7, %bb.eo ], [ %i.bof, %bb.ep ], [ %i.bot, %bb.eq ], [ %i.bph, %bb.er ] ; 2 uses
  %.sroa.15.0.i.i111 = trunc nuw i32 %.sroa.15.0.in.i.i110 to i8
  %.sroa.9.0.i.i112 = trunc nuw i32 %.sroa.9.0.in.i.i109 to i8
  %.sroa.0.0.i.i113 = trunc nuw i32 %.sroa.0.0.in.i.i108 to i8
  %i.bpl = icmp eq i32 %.sroa.6.0.i106, 0
  br i1 %i.bpl, label %blend_non_normal_pixel.exit.i114, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.bpm = icmp samesign ugt i32 %.sroa.6.0.i106, 252
  br i1 %i.bpm, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  store i8 %.sroa.0.0.i.i113, ptr %i.bnm, align 1, !tbaa !11
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bnm, i64 1
  store i8 %.sroa.9.0.i.i112, ptr %i.bpn, align 1, !tbaa !11
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bnm, i64 2
  store i8 %.sroa.15.0.i.i111, ptr %i.bpo, align 1, !tbaa !11
  br label %blend_non_normal_pixel.exit.i114

bb.ev:                                            ; preds = %bb.et
  %i.bpp = xor i32 %.sroa.6.0.i106, 255           ; 3 uses
  %i.bpq = mul nuw nsw i32 %.sroa.0.0.in.i.i108, %.sroa.6.0.i106
  %i.bpr = zext i8 %i.bpk to i32
  %i.bps = mul nuw nsw i32 %i.bpp, %i.bpr
  %i.bpt = add nuw nsw i32 %i.bps, %i.bpq
  %i.bpu = lshr i32 %i.bpt, 8
  %i.bpv = trunc nuw i32 %i.bpu to i8
  store i8 %i.bpv, ptr %i.bnm, align 1, !tbaa !11
  %i.bpw = mul nuw nsw i32 %.sroa.9.0.in.i.i109, %.sroa.6.0.i106
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.bnm, i64 1
  %i.bpy = zext i8 %i.bpj to i32
  %i.bpz = mul nuw nsw i32 %i.bpp, %i.bpy
  %i.bqa = add nuw nsw i32 %i.bpw, %i.bpz
  %i.bqb = lshr i32 %i.bqa, 8
  %i.bqc = trunc nuw i32 %i.bqb to i8
  store i8 %i.bqc, ptr %i.bpx, align 1, !tbaa !11
  %i.bqd = mul nuw nsw i32 %.sroa.15.0.in.i.i110, %.sroa.6.0.i106
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bnm, i64 2
  %i.bqf = zext i8 %i.bpi to i32
  %i.bqg = mul nuw nsw i32 %i.bpp, %i.bqf
  %i.bqh = add nuw nsw i32 %i.bqd, %i.bqg
  %i.bqi = lshr i32 %i.bqh, 8
  %i.bqj = trunc nuw i32 %i.bqi to i8
  store i8 %i.bqj, ptr %i.bqe, align 1, !tbaa !11
  br label %blend_non_normal_pixel.exit.i114

blend_non_normal_pixel.exit.i114:                 ; preds = %bb.ev, %bb.eu, %bb.es, %bb.en
  %i.bqk = add i32 %.4148183.i, %1
  %indvars.iv.next.i115 = add nuw nsw i64 %indvars.iv.i104, 1 ; 2 uses
  %exitcond.not.i116 = icmp eq i64 %indvars.iv.next.i115, %wide.trip.count.i103
  br i1 %exitcond.not.i116, label %._crit_edge.i117, label %bb.ek, !llvm.loop !111

._crit_edge.i117:                                 ; preds = %blend_non_normal_pixel.exit.i114
  %i.bql = getelementptr inbounds i8, ptr %.2151187.i, i64 %i.bfj
  %.3152.i118 = select i1 %i.bmx, ptr null, ptr %i.bql
  %i.bqm = getelementptr inbounds i8, ptr %.4162185.i, i64 %i.bfk
  %i.bqn = getelementptr inbounds nuw i8, ptr %.4157186.i, i64 %i.bfl
  %i.bqo = add nuw nsw i32 %.4188.i, 1            ; 2 uses
  %exitcond221.not.i119 = icmp eq i32 %i.bqo, %i.bep
  br i1 %exitcond221.not.i119, label %rgb565_image_blend.exit, label %.preheader180.i, !llvm.loop !112

bb.ew:                                            ; preds = %bb.a
  %i.bqp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bqq = load i32, ptr %i.bqp, align 8, !tbaa !16 ; 15 uses
  %i.bqr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bqs = load i32, ptr %i.bqr, align 4, !tbaa !17 ; 11 uses
  %i.bqt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bqu = load i8, ptr %i.bqt, align 8, !tbaa !18 ; 8 uses
  %i.bqv = load ptr, ptr %0, align 8, !tbaa !19   ; 8 uses
  %i.bqw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bqx = load i32, ptr %i.bqw, align 8, !tbaa !20 ; 5 uses
  %i.bqy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bqz = load ptr, ptr %i.bqy, align 8, !tbaa !21 ; 7 uses
  %i.bra = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.brb = load i32, ptr %i.bra, align 8, !tbaa !22 ; 5 uses
  %i.brc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.brd = load ptr, ptr %i.brc, align 8, !tbaa !23 ; 5 uses
  %i.bre = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.brf = load i32, ptr %i.bre, align 8, !tbaa !24 ; 3 uses
  %i.brg = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.brh = load i32, ptr %i.brg, align 4, !tbaa !25
  %i.bri = icmp eq i32 %i.brh, 0
  br i1 %i.bri, label %bb.ex, label %.preheader182.i

.preheader182.i:                                  ; preds = %bb.ew
  %i.brj = icmp sgt i32 %i.bqs, 0
  br i1 %i.brj, label %.preheader181.lr.ph.i, label %rgb565_image_blend.exit

.preheader181.lr.ph.i:                            ; preds = %.preheader182.i
  %i.brk = icmp sgt i32 %i.bqq, 0
  %i.brl = zext i8 %i.bqu to i16
  %i.brm = sext i32 %i.brf to i64
  %i.brn = zext i32 %i.bqx to i64
  %i.bro = zext i32 %i.brb to i64
  br i1 %i.brk, label %.preheader181.preheader.i, label %rgb565_image_blend.exit

.preheader181.preheader.i:                        ; preds = %.preheader181.lr.ph.i
  %wide.trip.count.i165 = zext nneg i32 %i.bqq to i64
  br label %.preheader181.i166

bb.ex:                                            ; preds = %bb.ew
  %i.brp = icmp eq ptr %i.brd, null               ; 2 uses
  %i.brq = zext i8 %i.bqu to i16
  %i.brr = icmp ugt i8 %i.bqu, -4                 ; 2 uses
  %or.cond.i184 = select i1 %i.brp, i1 %i.brr, i1 false
  br i1 %or.cond.i184, label %.preheader171.i211, label %bb.ey

.preheader171.i211:                               ; preds = %bb.ex
  %i.brs = icmp sgt i32 %i.bqs, 0
  br i1 %i.brs, label %.preheader.lr.ph.i212, label %rgb565_image_blend.exit

.preheader.lr.ph.i212:                            ; preds = %.preheader171.i211
  %i.brt = icmp sgt i32 %i.bqq, 0
  %i.bru = zext i32 %i.bqx to i64                 ; 2 uses
  %i.brv = zext i32 %i.brb to i64                 ; 2 uses
  br i1 %i.brt, label %.preheader.i213.preheader, label %rgb565_image_blend.exit

.preheader.i213.preheader:                        ; preds = %.preheader.lr.ph.i212
  %i.brw = add nsw i32 %i.bqs, -1
  %i.brx = zext i32 %i.brw to i64                 ; 2 uses
  %i.bry = mul nuw i64 %i.bru, %i.brx
  %i.brz = add nsw i32 %i.bqq, -1
  %i.bsa = zext i32 %i.brz to i64                 ; 2 uses
  %i.bsb = getelementptr i8, ptr %i.bqv, i64 %i.bry
  %i.bsc = getelementptr i8, ptr %i.bsb, i64 %i.bsa
  %scevgep = getelementptr i8, ptr %i.bsc, i64 3
  %i.bsd = lshr i64 %i.bsa, 3
  %i.bse = mul nuw i64 %i.brv, %i.brx
  %i.bsf = getelementptr i8, ptr %i.bqz, i64 %i.bsd
  %i.bsg = getelementptr i8, ptr %i.bsf, i64 %i.bse
  %scevgep449 = getelementptr i8, ptr %i.bsg, i64 1
  %min.iters.check = icmp ugt i32 %i.bqq, 7
  %ident.check.not = icmp eq i32 %1, 1
  %or.cond523 = and i1 %min.iters.check, %ident.check.not
  %bound0 = icmp ult ptr %i.bqv, %scevgep449
  %bound1 = icmp ult ptr %i.bqz, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i32 %i.bqq, 2147483640             ; 3 uses
  %cmp.n = icmp eq i32 %i.bqq, %n.vec
  br label %.preheader.i213

.preheader.i213:                                  ; preds = %.preheader.i213.preheader, %._crit_edge213.i
  %.0216.i = phi ptr [ %i.btm, %._crit_edge213.i ], [ %i.bqv, %.preheader.i213.preheader ] ; 3 uses
  %.0138215.i = phi i32 [ %i.bto, %._crit_edge213.i ], [ 0, %.preheader.i213.preheader ]
  %.0157214.i = phi ptr [ %i.btn, %._crit_edge213.i ], [ %i.bqz, %.preheader.i213.preheader ] ; 3 uses
  %or.cond523.not = xor i1 %or.cond523, true
  %brmerge557 = select i1 %or.cond523.not, i1 true, i1 %found.conflict
  br i1 %brmerge557, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i213, %vector.body
  %index = phi i32 [ %index.next, %vector.body ], [ 0, %.preheader.i213 ] ; 3 uses
  %vec.ind = phi <8 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %.preheader.i213 ] ; 2 uses
  %i.bsh = lshr exact i32 %index, 3
  %i.bsi = zext nneg i32 %i.bsh to i64
  %i.bsj = getelementptr inbounds nuw i8, ptr %.0157214.i, i64 %i.bsi
  %i.bsk = load i8, ptr %i.bsj, align 1, !tbaa !11, !alias.scope !138
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.bsk, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bsl = trunc <8 x i32> %vec.ind to <8 x i8>
  %i.bsm = and <8 x i8> %i.bsl, splat (i8 7)
  %i.bsn = xor <8 x i8> %i.bsm, splat (i8 7)
  %i.bso = lshr <8 x i8> %broadcast.splat, %i.bsn
  %i.bsp = and <8 x i8> %i.bso, splat (i8 1)
  %i.bsq = sub nsw <8 x i8> zeroinitializer, %i.bsp ; 3 uses
  %i.bsr = sext i32 %index to i64
  %i.bss = getelementptr i8, ptr %.0216.i, i64 %i.bsr ; 3 uses
  %i.bst = getelementptr i8, ptr %i.bss, i64 2
  store <8 x i8> %i.bsq, ptr %i.bst, align 1, !tbaa !11, !alias.scope !139, !noalias !138
  %i.bsu = getelementptr i8, ptr %i.bss, i64 1
  store <8 x i8> %i.bsq, ptr %i.bsu, align 1, !tbaa !11, !alias.scope !139, !noalias !138
  store <8 x i8> %i.bsq, ptr %i.bss, align 1, !tbaa !11, !alias.scope !139, !noalias !138
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i32> %vec.ind, splat (i32 8)
  %i.bsv = icmp eq i32 %index.next, %n.vec
  br i1 %i.bsv, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge213.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i213, %middle.block
  %.0148211.i.ph = phi i32 [ %n.vec, %middle.block ], [ 0, %.preheader.i213 ] ; 2 uses
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0143212.i = phi i32 [ %i.btl, %scalar.ph ], [ %.0148211.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.0148211.i = phi i32 [ %i.btk, %scalar.ph ], [ %.0148211.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bsw = lshr i32 %.0143212.i, 3
  %i.bsx = zext nneg i32 %i.bsw to i64
  %i.bsy = getelementptr inbounds nuw i8, ptr %.0157214.i, i64 %i.bsx
  %i.bsz = load i8, ptr %i.bsy, align 1, !tbaa !11
  %i.bta = zext i8 %i.bsz to i32
  %i.btb = and i32 %.0143212.i, 7
  %i.btc = xor i32 %i.btb, 7
  %i.btd = lshr i32 %i.bta, %i.btc
  %i.bte = trunc nuw i32 %i.btd to i8
  %i.btf = and i8 %i.bte, 1
  %narrow168.i = sub nsw i8 0, %i.btf             ; 3 uses
  %i.btg = sext i32 %.0148211.i to i64
  %i.bth = getelementptr i8, ptr %.0216.i, i64 %i.btg ; 3 uses
  %i.bti = getelementptr i8, ptr %i.bth, i64 2
  store i8 %narrow168.i, ptr %i.bti, align 1, !tbaa !11
end_hunk_2
begin_hunk_3_@rgb888_image_blend:bb.a
  br i1 %i.dz, label %lv_color_24_24_mix.exit195.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ea = icmp ugt i8 %i.dx, -4
  br i1 %i.ea, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eb = xor i8 %i.dx, -1
  %i.ec = load i8, ptr %i.du, align 1, !tbaa !11
  %i.ed = zext i8 %i.ec to i32
  %i.ee = mul nuw nsw i32 %i.ed, %i.dy
  %i.ef = load i8, ptr %i.dv, align 1, !tbaa !11
  %i.eg = zext i8 %i.ef to i32
  %i.eh = zext i8 %i.eb to i32                    ; 3 uses
  %i.ei = mul nuw nsw i32 %i.eg, %i.eh
  %i.ej = add nuw nsw i32 %i.ei, %i.ee
  %i.ek = lshr i32 %i.ej, 8
  %i.el = trunc i32 %i.ek to i8
  store i8 %i.el, ptr %i.dv, align 1, !tbaa !11
  %i.em = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !11
  %i.eo = zext i8 %i.en to i32
  %i.ep = mul nuw nsw i32 %i.eo, %i.dy
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dv, i64 1 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !11
  %i.es = zext i8 %i.er to i32
  %i.et = mul nuw nsw i32 %i.es, %i.eh
  %i.eu = add nuw nsw i32 %i.et, %i.ep
  %i.ev = lshr i32 %i.eu, 8
  %i.ew = trunc i32 %i.ev to i8
  store i8 %i.ew, ptr %i.eq, align 1, !tbaa !11
  %i.ex = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !11
  %i.ez = zext i8 %i.ey to i32
  %i.fa = mul nuw nsw i32 %i.ez, %i.dy
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dv, i64 2 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !11
  %i.fd = zext i8 %i.fc to i32
  %i.fe = mul nuw nsw i32 %i.fd, %i.eh
  %i.ff = add nuw nsw i32 %i.fe, %i.fa
  %i.fg = lshr i32 %i.ff, 8
  %i.fh = trunc i32 %i.fg to i8
  store i8 %i.fh, ptr %i.fb, align 1, !tbaa !11
  br label %lv_color_24_24_mix.exit195.us

bb.i:                                             ; preds = %bb.g
  %i.fi = load i8, ptr %i.du, align 1, !tbaa !11
  store i8 %i.fi, ptr %i.dv, align 1, !tbaa !11
  %i.fj = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !11
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !11
  %i.fm = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !11
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !11
  br label %lv_color_24_24_mix.exit195.us

lv_color_24_24_mix.exit195.us:                    ; preds = %bb.i, %bb.h, %bb.f
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314.a, %i.dr ; 2 uses
  %i.fp = add i32 %.2163245.us, %2
  %i.fq = icmp samesign ult i64 %indvars.iv.next315, %i.ds
  br i1 %i.fq, label %bb.f, label %._crit_edge248.us, !llvm.loop !145

._crit_edge248.us:                                ; preds = %lv_color_24_24_mix.exit195.us
  %i.fr = getelementptr inbounds i8, ptr %.5187249.us, i64 %i.dk ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %.5181250.us, i64 %i.dl ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %.0171251.us, i64 %i.dm ; 2 uses
  %i.fu = add nuw nsw i32 %.3252.us, 1            ; 2 uses
  %exitcond319.not = icmp eq i32 %i.fu, %i.f
  br i1 %exitcond319.not, label %.loopexit200, label %.preheader198.us, !llvm.loop !146

.loopexit200:                                     ; preds = %._crit_edge248.us, %.preheader198.preheader, %.loopexit203
  %.6188 = phi ptr [ %.4186, %.loopexit203 ], [ %scevgep309, %.preheader198.preheader ], [ %i.fr, %._crit_edge248.us ]
  %.6 = phi ptr [ %.4180, %.loopexit203 ], [ %scevgep310, %.preheader198.preheader ], [ %i.fs, %._crit_edge248.us ]
  %.1172 = phi ptr [ %i.q, %.loopexit203 ], [ %scevgep311, %.preheader198.preheader ], [ %i.ft, %._crit_edge248.us ] ; 2 uses
  %i.fv = icmp ne ptr %.1172, null
  %or.cond11 = select i1 %i.fv, i1 %i.bk, i1 false
  %or.cond270 = select i1 %or.cond11, i1 %i.bl, i1 false
  br i1 %or.cond270, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.loopexit200
  %i.fw = icmp sgt i32 %i.d, 0
  %i.fx = sext i32 %i.k to i64
  %i.fy = sext i32 %i.o to i64
  %i.fz = sext i32 %i.s to i64
  br i1 %i.fw, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ga = zext i8 %1 to i64
  %i.gb = zext nneg i32 %i.d to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge263
  %.4267 = phi i32 [ %i.ie, %._crit_edge263 ], [ 0, %.preheader.preheader ]
  %.2173266 = phi ptr [ %i.id, %._crit_edge263 ], [ %.1172, %.preheader.preheader ] ; 2 uses
  %.7265 = phi ptr [ %i.ic, %._crit_edge263 ], [ %.6, %.preheader.preheader ] ; 2 uses
  %.7189264 = phi ptr [ %i.ib, %._crit_edge263 ], [ %.6188, %.preheader.preheader ] ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %lv_color_24_24_mix.exit196
  %indvars.iv322.a = phi i64 [ 0, %.preheader ], [ %indvars.iv.next323, %lv_color_24_24_mix.exit196 ] ; 2 uses
  %indvars.iv320 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next321, %lv_color_24_24_mix.exit196 ] ; 2 uses
  %.3164260 = phi i32 [ 0, %.preheader ], [ %i.hz, %lv_color_24_24_mix.exit196 ] ; 2 uses
  %i.gc = sext i32 %.3164260 to i64
  %i.gd = getelementptr inbounds i8, ptr %.7265, i64 %i.gc ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.7189264, i64 %indvars.iv322.a ; 7 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.2173266, i64 %indvars.iv320
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !11
  %i.gh = zext i8 %i.gg to i16
  %i.gi = mul nuw i16 %i.gh, %i.af                ; 2 uses
  %i.gj = lshr i16 %i.gi, 8                       ; 5 uses
  %i.gk = icmp eq i16 %i.gj, 0
  br i1 %i.gk, label %lv_color_24_24_mix.exit196, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gl = icmp ugt i16 %i.gi, -769
  br i1 %i.gl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.gm = load i8, ptr %i.gd, align 1, !tbaa !11
  store i8 %i.gm, ptr %i.ge, align 1, !tbaa !11
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !11
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !11
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !11
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !11
  br label %lv_color_24_24_mix.exit196

bb.m:                                             ; preds = %bb.k
  %i.gt = xor i16 %i.gj, 255                      ; 3 uses
  %i.gu = load i8, ptr %i.gd, align 1, !tbaa !11
  %i.gv = zext i8 %i.gu to i16
  %i.gw = mul nuw i16 %i.gj, %i.gv
  %i.gx = load i8, ptr %i.ge, align 1, !tbaa !11
  %i.gy = zext i8 %i.gx to i16
  %i.gz = mul nuw i16 %i.gt, %i.gy
  %i.ha = add i16 %i.gz, %i.gw
  %i.hb = lshr i16 %i.ha, 8
  %i.hc = trunc nuw i16 %i.hb to i8
  store i8 %i.hc, ptr %i.ge, align 1, !tbaa !11
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !11
  %i.hf = zext i8 %i.he to i16
  %i.hg = mul nuw i16 %i.gj, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ge, i64 1 ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !11
  %i.hj = zext i8 %i.hi to i16
  %i.hk = mul nuw i16 %i.gt, %i.hj
  %i.hl = add i16 %i.hk, %i.hg
  %i.hm = lshr i16 %i.hl, 8
  %i.hn = trunc nuw i16 %i.hm to i8
  store i8 %i.hn, ptr %i.hh, align 1, !tbaa !11
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !11
  %i.hq = zext i8 %i.hp to i16
  %i.hr = mul nuw i16 %i.gj, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ge, i64 2 ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !11
  %i.hu = zext i8 %i.ht to i16
  %i.hv = mul nuw i16 %i.gt, %i.hu
  %i.hw = add i16 %i.hv, %i.hr
  %i.hx = lshr i16 %i.hw, 8
  %i.hy = trunc nuw i16 %i.hx to i8
  store i8 %i.hy, ptr %i.hs, align 1, !tbaa !11
  br label %lv_color_24_24_mix.exit196

lv_color_24_24_mix.exit196:                       ; preds = %bb.j, %bb.l, %bb.m
  %indvars.iv.next321 = add nuw nsw i64 %indvars.iv320, 1
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322.a, %i.ga ; 2 uses
  %i.hz = add i32 %.3164260, %2
  %i.ia = icmp samesign ult i64 %indvars.iv.next323, %i.gb
  br i1 %i.ia, label %bb.j, label %._crit_edge263, !llvm.loop !147

._crit_edge263:                                   ; preds = %lv_color_24_24_mix.exit196
  %i.ib = getelementptr inbounds i8, ptr %.7189264, i64 %i.fx
  %i.ic = getelementptr inbounds i8, ptr %.7265, i64 %i.fy
  %i.id = getelementptr inbounds i8, ptr %.2173266, i64 %i.fz
  %i.ie = add nuw nsw i32 %.4267, 1               ; 2 uses
  %exitcond327.not = icmp eq i32 %i.ie, %i.f
  br i1 %exitcond327.not, label %.loopexit, label %.preheader, !llvm.loop !148

.preheader209:                                    ; preds = %.preheader209.preheader, %._crit_edge
  %.5217 = phi i32 [ %i.lw, %._crit_edge ], [ 0, %.preheader209.preheader ]
  %.3174216 = phi ptr [ %.4175, %._crit_edge ], [ %i.q, %.preheader209.preheader ] ; 3 uses
  %.8215 = phi ptr [ %i.lv, %._crit_edge ], [ %i.m, %.preheader209.preheader ] ; 2 uses
  %.8190214 = phi ptr [ %i.lu, %._crit_edge ], [ %i.i, %.preheader209.preheader ] ; 2 uses
  %i.if = icmp eq ptr %.3174216, null             ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader209, %blend_non_normal_pixel.exit
  %indvars.iv = phi i64 [ 0, %.preheader209 ], [ %indvars.iv.next, %blend_non_normal_pixel.exit ] ; 3 uses
  %.4165213 = phi i32 [ 0, %.preheader209 ], [ %i.lr, %blend_non_normal_pixel.exit ] ; 2 uses
  %i.ig = sext i32 %.4165213 to i64
  %i.ih = getelementptr i8, ptr %.8215, i64 %i.ig ; 3 uses
  %i.ii = getelementptr i8, ptr %i.ih, i64 2
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !11  ; 2 uses
  %i.ik = getelementptr i8, ptr %i.ih, i64 1
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !11  ; 2 uses
  %i.im = load i8, ptr %i.ih, align 1, !tbaa !11  ; 2 uses
  br i1 %i.if, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.in = getelementptr inbounds nuw i8, ptr %.3174216, i64 %indvars.iv
  %i.io = load i8, ptr %i.in, align 1, !tbaa !11
  %i.ip = zext i8 %i.io to i16
  %i.iq = mul nuw i16 %i.ip, %i.y
  %i.ir = lshr i16 %i.iq, 8
  %i.is = trunc nuw i16 %i.ir to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sroa.6.0 = phi i8 [ %i.is, %bb.o ], [ %i.h, %bb.n ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.8190214, i64 %indvars.iv ; 18 uses
  %i.iu = load i32, ptr %i.t, align 4, !tbaa !25
  %.sroa.6.0.insert.ext = zext i8 %.sroa.6.0 to i32 ; 4 uses
  %.sroa.5.0.insert.ext = zext i8 %i.ij to i32    ; 3 uses
  %.sroa.4.0.insert.ext = zext i8 %i.il to i32    ; 3 uses
  %.sroa.0.0.insert.ext = zext i8 %i.im to i32    ; 3 uses
  switch i32 %i.iu, label %blend_non_normal_pixel.exit [
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %i.iv = load i8, ptr %i.it, align 1, !tbaa !11  ; 2 uses
  %narrow = tail call i8 @llvm.uadd.sat.i8(i8 %i.im, i8 %i.iv)
  %spec.select63.i = zext i8 %narrow to i32
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !11  ; 2 uses
  %narrow271 = tail call i8 @llvm.uadd.sat.i8(i8 %i.ix, i8 %i.il)
  %3 = zext i8 %narrow271 to i32
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !11  ; 2 uses
  %narrow272 = tail call i8 @llvm.uadd.sat.i8(i8 %i.iz, i8 %i.ij)
  %4 = zext i8 %narrow272 to i32
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.ja = load i8, ptr %i.it, align 1, !tbaa !11  ; 2 uses
  %i.jb = zext i8 %i.ja to i32
  %i.jc = sub nsw i32 %i.jb, %.sroa.0.0.insert.ext
  %spec.select5662.i = tail call i32 @llvm.smax.i32(i32 %i.jc, i32 0)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !11  ; 2 uses
  %i.jf = zext i8 %i.je to i32
  %i.jg = sub nsw i32 %i.jf, %.sroa.4.0.insert.ext
  %i.jh = tail call i32 @llvm.smax.i32(i32 %i.jg, i32 0)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !11  ; 2 uses
  %i.jk = zext i8 %i.jj to i32
  %i.jl = sub nsw i32 %i.jk, %.sroa.5.0.insert.ext
  %i.jm = tail call i32 @llvm.smax.i32(i32 %i.jl, i32 0)
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.jn = load i8, ptr %i.it, align 1, !tbaa !11  ; 2 uses
  %i.jo = zext i8 %i.jn to i32
  %i.jp = mul nuw nsw i32 %i.jo, %.sroa.0.0.insert.ext
  %i.jq = lshr i32 %i.jp, 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !11  ; 2 uses
  %i.jt = zext i8 %i.js to i32
  %i.ju = mul nuw nsw i32 %i.jt, %.sroa.4.0.insert.ext
  %i.jv = lshr i32 %i.ju, 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !11  ; 2 uses
  %i.jy = zext i8 %i.jx to i32
  %i.jz = mul nuw nsw i32 %i.jy, %.sroa.5.0.insert.ext
  %i.ka = lshr i32 %i.jz, 8
  br label %bb.u

bb.t:                                             ; preds = %bb.p
  %i.kb = load i8, ptr %i.it, align 1, !tbaa !11  ; 2 uses
  %i.kc = zext i8 %i.kb to i32
  %i.kd = sub nsw i32 %i.kc, %.sroa.0.0.insert.ext
  %i.ke = tail call i32 @llvm.abs.i32(i32 %i.kd, i1 true)
  %i.kf = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !11  ; 2 uses
  %i.kh = zext i8 %i.kg to i32
  %i.ki = sub nsw i32 %i.kh, %.sroa.4.0.insert.ext
  %i.kj = tail call i32 @llvm.abs.i32(i32 %i.ki, i1 true)
  %i.kk = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !11  ; 2 uses
  %i.km = zext i8 %i.kl to i32
  %i.kn = sub nsw i32 %i.km, %.sroa.5.0.insert.ext
  %i.ko = tail call i32 @llvm.abs.i32(i32 %i.kn, i1 true)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.kp = phi i8 [ %i.iz, %bb.q ], [ %i.jj, %bb.r ], [ %i.jx, %bb.s ], [ %i.kl, %bb.t ]
  %i.kq = phi i8 [ %i.ix, %bb.q ], [ %i.je, %bb.r ], [ %i.js, %bb.s ], [ %i.kg, %bb.t ]
  %i.kr = phi i8 [ %i.iv, %bb.q ], [ %i.ja, %bb.r ], [ %i.jn, %bb.s ], [ %i.kb, %bb.t ]
  %.sroa.0.0.in.i = phi i32 [ %spec.select63.i, %bb.q ], [ %spec.select5662.i, %bb.r ], [ %i.jq, %bb.s ], [ %i.ke, %bb.t ] ; 2 uses
  %.sroa.9.0.in.i = phi i32 [ %3, %bb.q ], [ %i.jh, %bb.r ], [ %i.jv, %bb.s ], [ %i.kj, %bb.t ] ; 2 uses
  %.sroa.15.0.in.i = phi i32 [ %4, %bb.q ], [ %i.jm, %bb.r ], [ %i.ka, %bb.s ], [ %i.ko, %bb.t ] ; 2 uses
  %.sroa.15.0.i = trunc nuw i32 %.sroa.15.0.in.i to i8
  %.sroa.9.0.i = trunc nuw i32 %.sroa.9.0.in.i to i8
  %.sroa.0.0.i = trunc nuw i32 %.sroa.0.0.in.i to i8
  %i.ks = icmp eq i8 %.sroa.6.0, 0
  br i1 %i.ks, label %blend_non_normal_pixel.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.kt = icmp ugt i8 %.sroa.6.0, -4
  br i1 %i.kt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i8 %.sroa.0.0.i, ptr %i.it, align 1, !tbaa !11
  %i.ku = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  store i8 %.sroa.9.0.i, ptr %i.ku, align 1, !tbaa !11
  %i.kv = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  store i8 %.sroa.15.0.i, ptr %i.kv, align 1, !tbaa !11
  br label %blend_non_normal_pixel.exit

bb.x:                                             ; preds = %bb.v
  %i.kw = xor i32 %.sroa.6.0.insert.ext, 255      ; 3 uses
  %i.kx = mul nuw nsw i32 %.sroa.0.0.in.i, %.sroa.6.0.insert.ext
  %i.ky = zext i8 %i.kr to i32
  %i.kz = mul nuw nsw i32 %i.kw, %i.ky
  %i.la = add nuw nsw i32 %i.kz, %i.kx
  %i.lb = lshr i32 %i.la, 8
  %i.lc = trunc nuw i32 %i.lb to i8
  store i8 %i.lc, ptr %i.it, align 1, !tbaa !11
  %i.ld = mul nuw nsw i32 %.sroa.9.0.in.i, %.sroa.6.0.insert.ext
  %i.le = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.lf = zext i8 %i.kq to i32
  %i.lg = mul nuw nsw i32 %i.kw, %i.lf
  %i.lh = add nuw nsw i32 %i.ld, %i.lg
  %i.li = lshr i32 %i.lh, 8
  %i.lj = trunc nuw i32 %i.li to i8
  store i8 %i.lj, ptr %i.le, align 1, !tbaa !11
  %i.lk = mul nuw nsw i32 %.sroa.15.0.in.i, %.sroa.6.0.insert.ext
  %i.ll = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.lm = zext i8 %i.kp to i32
  %i.ln = mul nuw nsw i32 %i.kw, %i.lm
  %i.lo = add nuw nsw i32 %i.lk, %i.ln
  %i.lp = lshr i32 %i.lo, 8
  %i.lq = trunc nuw i32 %i.lp to i8
  store i8 %i.lq, ptr %i.ll, align 1, !tbaa !11
  br label %blend_non_normal_pixel.exit

blend_non_normal_pixel.exit:                      ; preds = %bb.p, %bb.u, %bb.w, %bb.x
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.ac ; 2 uses
  %i.lr = add i32 %.4165213, %2
  %i.ls = icmp samesign ult i64 %indvars.iv.next, %i.ad
  br i1 %i.ls, label %bb.n, label %._crit_edge, !llvm.loop !149

._crit_edge:                                      ; preds = %blend_non_normal_pixel.exit
  %i.lt = getelementptr inbounds i8, ptr %.3174216, i64 %i.z
  %.4175 = select i1 %i.if, ptr null, ptr %i.lt
  %i.lu = getelementptr inbounds i8, ptr %.8190214, i64 %i.aa
  %i.lv = getelementptr inbounds i8, ptr %.8215, i64 %i.ab
  %i.lw = add nuw nsw i32 %.5217, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.lw, %i.f
  br i1 %exitcond.not, label %.loopexit, label %.preheader209, !llvm.loop !150

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge263, %bb.e, %.preheader207, %.preheader204, %.preheader206.lr.ph, %.preheader201.lr.ph, %.preheader210, %.preheader209.lr.ph, %.preheader.lr.ph, %.loopexit200
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.uadd.sat.i8(i8, i8) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

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
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!11 = !{!4, !4, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"_lv_draw_sw_blend_image_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !8, i64 40, !5, i64 48, !5, i64 52, !4, i64 56, !5, i64 60, !10, i64 64, !10, i64 80}
!16 = !{!15, !5, i64 8}
!17 = !{!15, !5, i64 12}
!18 = !{!15, !4, i64 56}
!19 = !{!15, !8, i64 0}
!20 = !{!15, !5, i64 16}
!21 = !{!15, !8, i64 40}
!22 = !{!15, !5, i64 48}
!23 = !{!15, !9, i64 24}
!24 = !{!15, !5, i64 32}
!25 = !{!15, !5, i64 60}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !53}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12, !13, !14}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12, !14, !13}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!41 = !{!"_lv_draw_sw_blend_fill_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !40, i64 36, !4, i64 39, !10, i64 40}
!42 = !{!41, !5, i64 8}
!43 = !{!41, !5, i64 12}
!44 = !{!41, !4, i64 39}
!45 = !{!41, !9, i64 24}
!46 = !{!41, !5, i64 32}
!47 = !{!41, !5, i64 16}
!48 = !{!41, !8, i64 0}
!49 = !{!41, !4, i64 36}
!50 = !{!41, !4, i64 37}
!51 = !{!41, !4, i64 38}
!52 = !{!5, !5, i64 0}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = distinct !{!54, !"LVerDomain"}
!55 = distinct !{!55, !54}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !12, !13, !14}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !12}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !12}
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !12}
!75 = distinct !{!75, !12}
!76 = distinct !{!76, !12}
!77 = distinct !{!77, !12}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12}
!82 = distinct !{!82, !12}
!83 = distinct !{!83, !12}
!84 = distinct !{!84, !12}
!85 = distinct !{!85, !12}
!86 = distinct !{!86, !12}
!87 = distinct !{!87, !12}
!88 = distinct !{!88, !"LVerDomain"}
!89 = distinct !{!89, !88}
!90 = distinct !{!90, !88}
!91 = distinct !{!91, !12, !13, !14}
!92 = distinct !{!92, !12, !13, !14}
!93 = distinct !{!93, !12, !13}
!94 = distinct !{!94, !12}
!95 = distinct !{!95, !12}
!96 = distinct !{!96, !12}
!97 = distinct !{!97, !12}
!98 = distinct !{!98, !12}
!99 = distinct !{!99, !12}
!100 = distinct !{!100, !12}
!101 = distinct !{!101, !12}
!102 = distinct !{!102, !12}
!103 = distinct !{!103, !12}
!104 = distinct !{!104, !12}
!105 = distinct !{!105, !12}
!106 = distinct !{!106, !12}
!107 = distinct !{!107, !12}
!108 = distinct !{!108, !12}
!109 = distinct !{!109, !12}
!110 = distinct !{!110, !12}
!111 = distinct !{!111, !12}
!112 = distinct !{!112, !12}
!113 = distinct !{!113, !"LVerDomain"}
!114 = distinct !{!114, !113}
!115 = distinct !{!115, !113}
!116 = distinct !{!116, !12, !13, !14}
!117 = distinct !{!117, !12, !13}
!118 = distinct !{!118, !12}
!119 = distinct !{!119, !12}
!120 = distinct !{!120, !12}
!121 = distinct !{!121, !12}
!122 = distinct !{!122, !12}
!123 = distinct !{!123, !12}
!124 = distinct !{!124, !12}
!125 = distinct !{!125, !12}
!126 = distinct !{!126, !12}
!127 = !{!15, !5, i64 52}
!128 = !{!55}
!129 = !{!56}
!130 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!131 = !{!130, !4, i64 3}
!132 = !{!89}
!133 = !{!90}
!134 = !{!"branch_weights", i32 4, i32 28}
!135 = !{!"", !4, i64 0, !4, i64 1}
!136 = !{!135, !4, i64 0}
!137 = !{!135, !4, i64 1}
!138 = !{!114}
!139 = !{!115}
!140 = distinct !{!140, !12}
!141 = distinct !{!141, !12}
!142 = distinct !{!142, !12}
!143 = distinct !{!143, !12}
!144 = distinct !{!144, !12}
!145 = distinct !{!145, !12}
!146 = distinct !{!146, !12}
!147 = distinct !{!147, !12}
!148 = distinct !{!148, !12}
!149 = distinct !{!149, !12}
!150 = distinct !{!150, !12}
end_hunk_3
