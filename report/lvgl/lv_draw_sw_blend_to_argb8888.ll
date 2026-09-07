Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_argb8888?download=true
inline.NumInlined: 160
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@lv_draw_sw_blend_image_to_argb8888:bb.a
  %.1281464.i = phi ptr [ %i.aob, %._crit_edge462.i ], [ %i.aee, %.preheader450.preheader.i ] ; 2 uses
  %.3287463.i = phi i32 [ %i.aoc, %._crit_edge462.i ], [ 0, %.preheader450.preheader.i ]
  br label %bb.ek

bb.ek:                                            ; preds = %lv_color_32_32_mix.exit391.i, %.preheader450.i
  %indvars.iv490.i = phi i64 [ 0, %.preheader450.i ], [ %indvars.iv.next491.i, %lv_color_32_32_mix.exit391.i ] ; 4 uses
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %.3278465.i, i64 %indvars.iv490.i ; 4 uses
  %.sroa.066.0.copyload82.i = load i8, ptr %i.ama, align 1, !tbaa !19 ; 2 uses
  %.sroa.22.0..sroa_idx106.i = getelementptr inbounds nuw i8, ptr %i.ama, i64 1
  %.sroa.22.0.copyload107.i = load i8, ptr %.sroa.22.0..sroa_idx106.i, align 1, !tbaa !19 ; 2 uses
  %.sroa.32.0..sroa_idx138.i = getelementptr inbounds nuw i8, ptr %i.ama, i64 2
  %.sroa.32.0.copyload139.i = load i8, ptr %.sroa.32.0..sroa_idx138.i, align 1, !tbaa !19 ; 2 uses
  %.sroa.42.0..sroa_idx170.i = getelementptr inbounds nuw i8, ptr %i.ama, i64 3
  %.sroa.42.0.copyload171.i = load i8, ptr %.sroa.42.0..sroa_idx170.i, align 1, !tbaa !19 ; 3 uses
  %.not304.i = icmp eq i8 %.sroa.42.0.copyload171.i, 0
  br i1 %.not304.i, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.amb = zext i8 %.sroa.42.0.copyload171.i to i32
  %.rhs.trunc424.i = zext i8 %.sroa.42.0.copyload171.i to i16
  %i.amc = udiv i16 -256, %.rhs.trunc424.i        ; 3 uses
  %i.amd = zext i8 %.sroa.32.0.copyload139.i to i16
  %i.ame = mul i16 %i.amc, %i.amd
  %i.amf = lshr i16 %i.ame, 8
  %i.amg = trunc nuw i16 %i.amf to i8
  %i.amh = zext i8 %.sroa.22.0.copyload107.i to i16
  %i.ami = mul i16 %i.amc, %i.amh
  %i.amj = lshr i16 %i.ami, 8
  %i.amk = trunc nuw i16 %i.amj to i8
  %i.aml = zext i8 %.sroa.066.0.copyload82.i to i16
  %i.amm = mul i16 %i.amc, %i.aml
  %i.amn = lshr i16 %i.amm, 8
  %i.amo = trunc nuw i16 %i.amn to i8
  %i.amp = getelementptr inbounds nuw i8, ptr %.1281464.i, i64 %indvars.iv490.i
  %i.amq = load i8, ptr %i.amp, align 1, !tbaa !19
  %i.amr = zext i8 %i.amq to i32
  %i.ams = mul nuw nsw i32 %i.alt, %i.amb
  %i.amt = mul nuw i32 %i.ams, %i.amr
  %i.amu = and i32 %i.amt, -16777216
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.sroa.42.2.i = phi i32 [ %i.amu, %bb.el ], [ 0, %bb.ek ] ; 4 uses
  %.sroa.32.2.i = phi i8 [ %i.amg, %bb.el ], [ %.sroa.32.0.copyload139.i, %bb.ek ]
  %.sroa.22.2.i = phi i8 [ %i.amk, %bb.el ], [ %.sroa.22.0.copyload107.i, %bb.ek ]
  %.sroa.066.2.i = phi i8 [ %i.amo, %bb.el ], [ %.sroa.066.0.copyload82.i, %bb.ek ]
  %i.amv = getelementptr inbounds nuw [4 x i8], ptr %.3466.i, i64 %indvars.iv490.i ; 2 uses
  %.sroa.32.0.insert.ext141.i = zext i8 %.sroa.32.2.i to i32
  %.sroa.32.0.insert.shift142.i = shl nuw nsw i32 %.sroa.32.0.insert.ext141.i, 16
  %.sroa.32.0.insert.insert144.i = or disjoint i32 %.sroa.32.0.insert.shift142.i, %.sroa.42.2.i
  %.sroa.22.0.insert.ext109.i = zext i8 %.sroa.22.2.i to i32
  %.sroa.22.0.insert.shift110.i = shl nuw nsw i32 %.sroa.22.0.insert.ext109.i, 8
  %.sroa.066.0.insert.ext84.i = zext i8 %.sroa.066.2.i to i32
  %i.amw = or disjoint i32 %.sroa.22.0.insert.shift110.i, %.sroa.066.0.insert.ext84.i
  %.sroa.066.0.insert.insert86.i = or disjoint i32 %i.amw, %.sroa.32.0.insert.insert144.i ; 5 uses
  %i.amx = load i32, ptr %i.amv, align 1          ; 7 uses
  %.sroa.045.0.extract.trunc.i364.i = trunc i32 %.sroa.066.0.insert.insert86.i to i24
  %.sroa.654.0.extract.shift.i365.i = lshr exact i32 %.sroa.42.2.i, 24 ; 4 uses
  %.sroa.6.0.extract.shift.i366.i = lshr i32 %i.amx, 24 ; 4 uses
  %i.amy = icmp ugt i32 %.sroa.42.2.i, -50331649
  %i.amz = icmp ult i32 %i.amx, 50331648
  %or.cond.i367.i = select i1 %i.amy, i1 true, i1 %i.amz
  br i1 %or.cond.i367.i, label %lv_color_32_32_mix.exit391.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %.sroa.018.0.extract.trunc.i368.i = trunc i32 %i.amx to i24
  %i.ana = icmp ult i32 %.sroa.42.2.i, 50331648
  br i1 %i.ana, label %lv_color_32_32_mix.exit391.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.anb = icmp eq i32 %.sroa.6.0.extract.shift.i366.i, 255
  br i1 %i.anb, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.anc = call i32 @lv_color_mix32(i32 %.sroa.066.0.insert.insert86.i, i32 %i.amx) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i389.i = trunc i32 %i.anc to i24
  %.sroa.5.0.extract.shift.i390.i = lshr i32 %i.anc, 24
  br label %lv_color_32_32_mix.exit391.i

bb.eq:                                            ; preds = %bb.eo
  %i.and = load i8, ptr %i.alu, align 1, !tbaa !18
  %i.ane = zext i8 %i.and to i32
  %.not.i369.i = icmp eq i32 %.sroa.6.0.extract.shift.i366.i, %i.ane
  %i.anf = load i8, ptr %i.alv, align 1
  %i.ang = zext i8 %i.anf to i32
  %.not77.i388.i = icmp eq i32 %.sroa.654.0.extract.shift.i365.i, %i.ang
  %or.cond439.i = select i1 %.not.i369.i, i1 %.not77.i388.i, i1 false
  br i1 %or.cond439.i, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.anh = xor i32 %.sroa.654.0.extract.shift.i365.i, 255
  %i.ani = xor i32 %.sroa.6.0.extract.shift.i366.i, 255
  %i.anj = mul nuw nsw i32 %i.ani, %i.anh
  %i.ank = lshr i32 %i.anj, 8
  %i.anl = trunc nuw i32 %i.ank to i8
  %i.anm = xor i8 %i.anl, -1                      ; 2 uses
  store i8 %i.anm, ptr %i.aej, align 4, !tbaa !13
  %i.ann = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i365.i to i16
  %.lhs.trunc.i370.i = mul nuw i16 %i.ann, 255
  %.rhs.trunc.i371.i = zext i8 %i.anm to i16
  %i.ano = udiv i16 %.lhs.trunc.i370.i, %.rhs.trunc.i371.i
  %i.anp = trunc i16 %i.ano to i8
  store i8 %i.anp, ptr %i.aek, align 1, !tbaa !14
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.anq = load i32, ptr %i.aeh, align 4
  %i.anr = call zeroext i1 @lv_color32_eq(i32 %i.amx, i32 %i.anq) #7
  br i1 %i.anr, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.ans = load i32, ptr %5, align 4
  %i.ant = call zeroext i1 @lv_color32_eq(i32 %.sroa.066.0.insert.insert86.i, i32 %i.ans) #7
  br i1 %i.ant, label %._crit_edge.i383.i, label %bb.eu

._crit_edge.i383.i:                               ; preds = %bb.et
  %.sroa.074.0.copyload.pre.i385.i = load i24, ptr %i.aei, align 4
  %.sroa.5.0.copyload.pre.i387.i = load i8, ptr %i.alw, align 1, !tbaa !19
  br label %bb.ev

bb.eu:                                            ; preds = %bb.et, %bb.es
  store i32 %.sroa.066.0.insert.insert86.i, ptr %5, align 4
  store i32 %i.amx, ptr %i.aeh, align 4
  %i.anu = load i8, ptr %i.aek, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i372.i = zext i8 %i.anu to i32
  %.sroa.654.0.insert.shift64.i373.i = shl nuw i32 %.sroa.654.0.insert.ext63.i372.i, 24
  %.sroa.045.0.insert.ext51.i374.i = and i32 %.sroa.066.0.insert.insert86.i, 16777215
  %.sroa.045.0.insert.insert53.i375.i = or disjoint i32 %.sroa.654.0.insert.shift64.i373.i, %.sroa.045.0.insert.ext51.i374.i
  %i.anv = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i375.i, i32 %i.amx) #7 ; 2 uses
  store i32 %i.anv, ptr %i.aei, align 4
  %i.anw = load i8, ptr %i.aej, align 4, !tbaa !13 ; 2 uses
  store i8 %i.anw, ptr %i.alw, align 1, !tbaa !20
  %i.anx = trunc i32 %i.anv to i24
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %._crit_edge.i383.i
  %.sroa.5.0.copyload.i376.i = phi i8 [ %.sroa.5.0.copyload.pre.i387.i, %._crit_edge.i383.i ], [ %i.anw, %bb.eu ]
  %.sroa.074.0.copyload.i377.i = phi i24 [ %.sroa.074.0.copyload.pre.i385.i, %._crit_edge.i383.i ], [ %i.anx, %bb.eu ]
  %i.any = zext i8 %.sroa.5.0.copyload.i376.i to i32
  br label %lv_color_32_32_mix.exit391.i

lv_color_32_32_mix.exit391.i:                     ; preds = %bb.ev, %bb.ep, %bb.en, %bb.em
  %.sroa.074.0.i378.i = phi i24 [ %.sroa.074.0.copyload.i377.i, %bb.ev ], [ %.sroa.045.0.extract.trunc.i364.i, %bb.em ], [ %.sroa.074.0.extract.trunc.i389.i, %bb.ep ], [ %.sroa.018.0.extract.trunc.i368.i, %bb.en ]
  %.sroa.5.0.i379.i = phi i32 [ %i.any, %bb.ev ], [ %.sroa.654.0.extract.shift.i365.i, %bb.em ], [ %.sroa.5.0.extract.shift.i390.i, %bb.ep ], [ %.sroa.6.0.extract.shift.i366.i, %bb.en ]
  %.sroa.5.0.insert.shift.i380.i = shl nuw i32 %.sroa.5.0.i379.i, 24
  %.sroa.074.0.insert.ext.i381.i = zext i24 %.sroa.074.0.i378.i to i32
  %.sroa.074.0.insert.insert.i382.i = or disjoint i32 %.sroa.5.0.insert.shift.i380.i, %.sroa.074.0.insert.ext.i381.i
  store i32 %.sroa.074.0.insert.insert.i382.i, ptr %i.amv, align 1
  %indvars.iv.next491.i = add nuw nsw i64 %indvars.iv490.i, 1 ; 2 uses
  %exitcond494.not.i = icmp eq i64 %indvars.iv.next491.i, %wide.trip.count493.i
  br i1 %exitcond494.not.i, label %._crit_edge462.i, label %bb.ek, !llvm.loop !105

._crit_edge462.i:                                 ; preds = %lv_color_32_32_mix.exit391.i
  %i.anz = getelementptr inbounds nuw i8, ptr %.3466.i, i64 %i.alx
  %i.aoa = getelementptr inbounds nuw i8, ptr %.3278465.i, i64 %i.aly
  %i.aob = getelementptr inbounds i8, ptr %.1281464.i, i64 %i.alz
  %i.aoc = add nuw nsw i32 %.3287463.i, 1         ; 2 uses
  %exitcond495.not.i = icmp eq i32 %i.aoc, %i.adt
  br i1 %exitcond495.not.i, label %argb8888_premultiplied_image_blend.exit, label %.preheader450.i, !llvm.loop !106

.preheader453.i:                                  ; preds = %._crit_edge.i96, %.preheader453.preheader.i
  %.4460.i = phi ptr [ %i.asa, %._crit_edge.i96 ], [ %i.adw, %.preheader453.preheader.i ] ; 2 uses
  %.4279459.i = phi ptr [ %i.asb, %._crit_edge.i96 ], [ %i.aea, %.preheader453.preheader.i ] ; 2 uses
  %.2282458.i = phi ptr [ %.3283.i, %._crit_edge.i96 ], [ %i.aee, %.preheader453.preheader.i ] ; 3 uses
  %.4288457.i = phi i32 [ %i.asc, %._crit_edge.i96 ], [ 0, %.preheader453.preheader.i ]
  %i.aod = icmp eq ptr %.2282458.i, null          ; 2 uses
  br label %bb.ew

bb.ew:                                            ; preds = %blend_non_normal_pixel.exit.i93, %.preheader453.i
  %indvars.iv.i84 = phi i64 [ 0, %.preheader453.i ], [ %indvars.iv.next.i94, %blend_non_normal_pixel.exit.i93 ] ; 4 uses
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %.4279459.i, i64 %indvars.iv.i84 ; 4 uses
  %.sroa.066.0.copyload87.i = load i8, ptr %i.aoe, align 1, !tbaa !19 ; 2 uses
  %.sroa.22.0..sroa_idx113.i = getelementptr inbounds nuw i8, ptr %i.aoe, i64 1
  %.sroa.22.0.copyload114.i = load i8, ptr %.sroa.22.0..sroa_idx113.i, align 1, !tbaa !19 ; 2 uses
  %.sroa.32.0..sroa_idx145.i = getelementptr inbounds nuw i8, ptr %i.aoe, i64 2
  %.sroa.32.0.copyload146.i = load i8, ptr %.sroa.32.0..sroa_idx145.i, align 1, !tbaa !19 ; 2 uses
  %.sroa.42.0..sroa_idx177.i = getelementptr inbounds nuw i8, ptr %i.aoe, i64 3
  %.sroa.42.0.copyload178.i = load i8, ptr %.sroa.42.0..sroa_idx177.i, align 1, !tbaa !19 ; 3 uses
  %i.aof = zext i8 %.sroa.42.0.copyload178.i to i32 ; 2 uses
  %.not303.i = icmp eq i8 %.sroa.42.0.copyload178.i, 0
  br i1 %.not303.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %.rhs.trunc426.i = zext i8 %.sroa.42.0.copyload178.i to i16
  %i.aog = udiv i16 -256, %.rhs.trunc426.i        ; 3 uses
  %i.aoh = zext i8 %.sroa.32.0.copyload146.i to i16
  %i.aoi = mul i16 %i.aog, %i.aoh
  %i.aoj = lshr i16 %i.aoi, 8
  %i.aok = trunc nuw i16 %i.aoj to i8
  %i.aol = zext i8 %.sroa.22.0.copyload114.i to i16
  %i.aom = mul i16 %i.aog, %i.aol
  %i.aon = lshr i16 %i.aom, 8
  %i.aoo = trunc nuw i16 %i.aon to i8
  %i.aop = zext i8 %.sroa.066.0.copyload87.i to i16
  %i.aoq = mul i16 %i.aog, %i.aop
  %i.aor = lshr i16 %i.aoq, 8
  %i.aos = trunc nuw i16 %i.aor to i8
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.sroa.32.3.i = phi i8 [ %i.aok, %bb.ex ], [ %.sroa.32.0.copyload146.i, %bb.ew ] ; 2 uses
  %.sroa.22.3.i = phi i8 [ %i.aoo, %bb.ex ], [ %.sroa.22.0.copyload114.i, %bb.ew ] ; 2 uses
  %.sroa.066.3.i = phi i8 [ %i.aos, %bb.ex ], [ %.sroa.066.0.copyload87.i, %bb.ew ] ; 2 uses
  br i1 %i.aod, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.aot = mul nuw nsw i32 %i.aof, %i.aeq
  %i.aou = lshr i32 %i.aot, 8
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ey
  %i.aov = getelementptr inbounds nuw i8, ptr %.2282458.i, i64 %indvars.iv.i84
  %i.aow = load i8, ptr %i.aov, align 1, !tbaa !19
  %i.aox = zext i8 %i.aow to i32
  %i.aoy = mul nuw nsw i32 %i.aof, %i.aeq
  %i.aoz = mul nuw nsw i32 %i.aoy, %i.aox
  %i.apa = lshr i32 %i.aoz, 16
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.sroa.42.3.in.i = phi i32 [ %i.aou, %bb.ez ], [ %i.apa, %bb.fa ]
  %i.apb = getelementptr inbounds nuw [4 x i8], ptr %.4460.i, i64 %indvars.iv.i84 ; 14 uses
  %i.apc = load i32, ptr %i.ael, align 4, !tbaa !31
  %.sroa.42.0.insert.ext180.i = shl nuw i32 %.sroa.42.3.in.i, 24
  %.sroa.32.0.insert.ext148.i = zext i8 %.sroa.32.3.i to i32 ; 3 uses
  %.sroa.22.0.insert.ext116.i = zext i8 %.sroa.22.3.i to i32 ; 3 uses
  %.sroa.066.0.insert.ext89.i = zext i8 %.sroa.066.3.i to i32 ; 3 uses
  switch i32 %i.apc, label %blend_non_normal_pixel.exit.i93 [
    i32 1, label %bb.fc
    i32 2, label %bb.fd
    i32 3, label %bb.fe
    i32 4, label %bb.ff
  ]

bb.fc:                                            ; preds = %bb.fb
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apb, i64 2
  %i.ape = load i8, ptr %i.apd, align 1, !tbaa !32
  %narrow484.i = call i8 @llvm.uadd.sat.i8(i8 %i.ape, i8 %.sroa.32.3.i)
  %spec.select.i.i98 = zext i8 %narrow484.i to i32
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apb, i64 1
  %i.apg = load i8, ptr %i.apf, align 1, !tbaa !33
  %narrow485.i = call i8 @llvm.uadd.sat.i8(i8 %i.apg, i8 %.sroa.22.3.i)
  %8 = zext i8 %narrow485.i to i32
  %i.aph = load i8, ptr %i.apb, align 1, !tbaa !34
  %narrow.i99 = call i8 @llvm.uadd.sat.i8(i8 %.sroa.066.3.i, i8 %i.aph)
  %9 = zext i8 %narrow.i99 to i32
  br label %bb.fg

bb.fd:                                            ; preds = %bb.fb
  %i.api = getelementptr inbounds nuw i8, ptr %i.apb, i64 2
  %i.apj = load i8, ptr %i.api, align 1, !tbaa !32
  %i.apk = zext i8 %i.apj to i32
  %i.apl = sub nsw i32 %i.apk, %.sroa.32.0.insert.ext148.i
  %spec.select60.i.i97 = call i32 @llvm.smax.i32(i32 %i.apl, i32 0)
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apb, i64 1
  %i.apn = load i8, ptr %i.apm, align 1, !tbaa !33
  %i.apo = zext i8 %i.apn to i32
  %i.app = sub nsw i32 %i.apo, %.sroa.22.0.insert.ext116.i
  %i.apq = call i32 @llvm.smax.i32(i32 %i.app, i32 0)
  %i.apr = load i8, ptr %i.apb, align 1, !tbaa !34
  %i.aps = zext i8 %i.apr to i32
  %i.apt = sub nsw i32 %i.aps, %.sroa.066.0.insert.ext89.i
  %i.apu = call i32 @llvm.smax.i32(i32 %i.apt, i32 0)
  br label %bb.fg

bb.fe:                                            ; preds = %bb.fb
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apb, i64 2
  %i.apw = load i8, ptr %i.apv, align 1, !tbaa !32
  %i.apx = zext i8 %i.apw to i32
  %i.apy = mul nuw nsw i32 %i.apx, %.sroa.32.0.insert.ext148.i
  %i.apz = lshr i32 %i.apy, 8
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apb, i64 1
  %i.aqb = load i8, ptr %i.aqa, align 1, !tbaa !33
  %i.aqc = zext i8 %i.aqb to i32
  %i.aqd = mul nuw nsw i32 %i.aqc, %.sroa.22.0.insert.ext116.i
  %i.aqe = lshr i32 %i.aqd, 8
  %i.aqf = load i8, ptr %i.apb, align 1, !tbaa !34
  %i.aqg = zext i8 %i.aqf to i32
  %i.aqh = mul nuw nsw i32 %i.aqg, %.sroa.066.0.insert.ext89.i
  %i.aqi = lshr i32 %i.aqh, 8
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fb
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.apb, i64 2
  %i.aqk = load i8, ptr %i.aqj, align 1, !tbaa !32
  %i.aql = zext i8 %i.aqk to i32
  %i.aqm = sub nsw i32 %i.aql, %.sroa.32.0.insert.ext148.i
  %i.aqn = call i32 @llvm.abs.i32(i32 %i.aqm, i1 true)
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.apb, i64 1
  %i.aqp = load i8, ptr %i.aqo, align 1, !tbaa !33
  %i.aqq = zext i8 %i.aqp to i32
  %i.aqr = sub nsw i32 %i.aqq, %.sroa.22.0.insert.ext116.i
  %i.aqs = call i32 @llvm.abs.i32(i32 %i.aqr, i1 true)
  %i.aqt = load i8, ptr %i.apb, align 1, !tbaa !34
  %i.aqu = zext i8 %i.aqt to i32
  %i.aqv = sub nsw i32 %i.aqu, %.sroa.066.0.insert.ext89.i
  %i.aqw = call i32 @llvm.abs.i32(i32 %i.aqv, i1 true)
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe, %bb.fd, %bb.fc
  %.sroa.11.0.i.i85 = phi i32 [ %spec.select.i.i98, %bb.fc ], [ %spec.select60.i.i97, %bb.fd ], [ %i.apz, %bb.fe ], [ %i.aqn, %bb.ff ]
  %.sroa.7.0.i.i86 = phi i32 [ %8, %bb.fc ], [ %i.apq, %bb.fd ], [ %i.aqe, %bb.fe ], [ %i.aqs, %bb.ff ]
  %.sroa.01.0.i.i87 = phi i32 [ %9, %bb.fc ], [ %i.apu, %bb.fd ], [ %i.aqi, %bb.fe ], [ %i.aqw, %bb.ff ]
  %.sroa.11.0.insert.ext.i.i88 = shl nuw nsw i32 %.sroa.11.0.i.i85, 16
  %.sroa.11.0.insert.shift.i.i89 = and i32 %.sroa.11.0.insert.ext.i.i88, 16711680
  %.sroa.11.0.insert.insert.i.i = or disjoint i32 %.sroa.11.0.insert.shift.i.i89, %.sroa.42.0.insert.ext180.i
  %.sroa.7.0.insert.ext.i.i90 = shl nuw nsw i32 %.sroa.7.0.i.i86, 8
  %.sroa.7.0.insert.shift.i.i91 = and i32 %.sroa.7.0.insert.ext.i.i90, 65280
  %.sroa.7.0.insert.insert.i.i = add nuw nsw i32 %.sroa.11.0.insert.insert.i.i, %.sroa.01.0.i.i87 ; 4 uses
  %.sroa.01.0.insert.insert.i.i92 = or disjoint i32 %.sroa.7.0.insert.insert.i.i, %.sroa.7.0.insert.shift.i.i91 ; 5 uses
  %i.aqx = load i32, ptr %i.apb, align 1          ; 7 uses
  %.sroa.045.0.extract.trunc.i392.i = trunc i32 %.sroa.01.0.insert.insert.i.i92 to i24
  %.sroa.654.0.extract.shift.i393.i = lshr i32 %.sroa.7.0.insert.insert.i.i, 24 ; 4 uses
  %.sroa.6.0.extract.shift.i394.i = lshr i32 %i.aqx, 24 ; 4 uses
  %i.aqy = icmp ugt i32 %.sroa.7.0.insert.insert.i.i, -50331649
  %i.aqz = icmp ult i32 %i.aqx, 50331648
  %or.cond.i395.i = select i1 %i.aqy, i1 true, i1 %i.aqz
  br i1 %or.cond.i395.i, label %lv_color_32_32_mix.exit419.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %.sroa.018.0.extract.trunc.i396.i = trunc i32 %i.aqx to i24
  %i.ara = icmp ult i32 %.sroa.7.0.insert.insert.i.i, 50331648
  br i1 %i.ara, label %lv_color_32_32_mix.exit419.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.arb = icmp eq i32 %.sroa.6.0.extract.shift.i394.i, 255
  br i1 %i.arb, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.arc = call i32 @lv_color_mix32(i32 %.sroa.01.0.insert.insert.i.i92, i32 %i.aqx) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i417.i = trunc i32 %i.arc to i24
  %.sroa.5.0.extract.shift.i418.i = lshr i32 %i.arc, 24
  br label %lv_color_32_32_mix.exit419.i

bb.fk:                                            ; preds = %bb.fi
  %i.ard = load i8, ptr %i.aer, align 1, !tbaa !18
  %i.are = zext i8 %i.ard to i32
  %.not.i397.i = icmp eq i32 %.sroa.6.0.extract.shift.i394.i, %i.are
  %i.arf = load i8, ptr %i.aes, align 1
  %i.arg = zext i8 %i.arf to i32
  %.not77.i416.i = icmp eq i32 %.sroa.654.0.extract.shift.i393.i, %i.arg
  %or.cond442.i = select i1 %.not.i397.i, i1 %.not77.i416.i, i1 false
  br i1 %or.cond442.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.arh = xor i32 %.sroa.654.0.extract.shift.i393.i, 255
  %i.ari = xor i32 %.sroa.6.0.extract.shift.i394.i, 255
  %i.arj = mul nuw nsw i32 %i.arh, %i.ari
  %i.ark = lshr i32 %i.arj, 8
  %i.arl = trunc nuw i32 %i.ark to i8
  %i.arm = xor i8 %i.arl, -1                      ; 2 uses
  store i8 %i.arm, ptr %i.aej, align 4, !tbaa !13
  %i.arn = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i393.i to i16
  %.lhs.trunc.i398.i = mul nuw i16 %i.arn, 255
  %.rhs.trunc.i399.i = zext i8 %i.arm to i16
  %i.aro = udiv i16 %.lhs.trunc.i398.i, %.rhs.trunc.i399.i
  %i.arp = trunc i16 %i.aro to i8
  store i8 %i.arp, ptr %i.aek, align 1, !tbaa !14
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.arq = load i32, ptr %i.aeh, align 4
  %i.arr = call zeroext i1 @lv_color32_eq(i32 %i.aqx, i32 %i.arq) #7
  br i1 %i.arr, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.ars = load i32, ptr %5, align 4
  %i.art = call zeroext i1 @lv_color32_eq(i32 %.sroa.01.0.insert.insert.i.i92, i32 %i.ars) #7
  br i1 %i.art, label %._crit_edge.i411.i, label %bb.fo

._crit_edge.i411.i:                               ; preds = %bb.fn
  %.sroa.074.0.copyload.pre.i413.i = load i24, ptr %i.aei, align 4
  %.sroa.5.0.copyload.pre.i415.i = load i8, ptr %i.aet, align 1, !tbaa !19
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  store i32 %.sroa.01.0.insert.insert.i.i92, ptr %5, align 4
  store i32 %i.aqx, ptr %i.aeh, align 4
  %i.aru = load i8, ptr %i.aek, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i400.i = zext i8 %i.aru to i32
  %.sroa.654.0.insert.shift64.i401.i = shl nuw i32 %.sroa.654.0.insert.ext63.i400.i, 24
  %.sroa.045.0.insert.ext51.i402.i = and i32 %.sroa.01.0.insert.insert.i.i92, 16777215
  %.sroa.045.0.insert.insert53.i403.i = or disjoint i32 %.sroa.654.0.insert.shift64.i401.i, %.sroa.045.0.insert.ext51.i402.i
  %i.arv = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i403.i, i32 %i.aqx) #7 ; 2 uses
  store i32 %i.arv, ptr %i.aei, align 4
  %i.arw = load i8, ptr %i.aej, align 4, !tbaa !13 ; 2 uses
  store i8 %i.arw, ptr %i.aet, align 1, !tbaa !20
  %i.arx = trunc i32 %i.arv to i24
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %._crit_edge.i411.i
  %.sroa.5.0.copyload.i404.i = phi i8 [ %.sroa.5.0.copyload.pre.i415.i, %._crit_edge.i411.i ], [ %i.arw, %bb.fo ]
  %.sroa.074.0.copyload.i405.i = phi i24 [ %.sroa.074.0.copyload.pre.i413.i, %._crit_edge.i411.i ], [ %i.arx, %bb.fo ]
  %i.ary = zext i8 %.sroa.5.0.copyload.i404.i to i32
  br label %lv_color_32_32_mix.exit419.i

lv_color_32_32_mix.exit419.i:                     ; preds = %bb.fp, %bb.fj, %bb.fh, %bb.fg
  %.sroa.074.0.i406.i = phi i24 [ %.sroa.074.0.copyload.i405.i, %bb.fp ], [ %.sroa.045.0.extract.trunc.i392.i, %bb.fg ], [ %.sroa.074.0.extract.trunc.i417.i, %bb.fj ], [ %.sroa.018.0.extract.trunc.i396.i, %bb.fh ]
  %.sroa.5.0.i407.i = phi i32 [ %i.ary, %bb.fp ], [ %.sroa.654.0.extract.shift.i393.i, %bb.fg ], [ %.sroa.5.0.extract.shift.i418.i, %bb.fj ], [ %.sroa.6.0.extract.shift.i394.i, %bb.fh ]
  %.sroa.5.0.insert.shift.i408.i = shl nuw i32 %.sroa.5.0.i407.i, 24
  %.sroa.074.0.insert.ext.i409.i = zext i24 %.sroa.074.0.i406.i to i32
  %.sroa.074.0.insert.insert.i410.i = or disjoint i32 %.sroa.5.0.insert.shift.i408.i, %.sroa.074.0.insert.ext.i409.i
  store i32 %.sroa.074.0.insert.insert.i410.i, ptr %i.apb, align 1
  br label %blend_non_normal_pixel.exit.i93

blend_non_normal_pixel.exit.i93:                  ; preds = %lv_color_32_32_mix.exit419.i, %bb.fb
  %indvars.iv.next.i94 = add nuw nsw i64 %indvars.iv.i84, 1 ; 2 uses
  %exitcond.not.i95 = icmp eq i64 %indvars.iv.next.i94, %wide.trip.count.i83
  br i1 %exitcond.not.i95, label %._crit_edge.i96, label %bb.ew, !llvm.loop !107

._crit_edge.i96:                                  ; preds = %blend_non_normal_pixel.exit.i93
  %i.arz = getelementptr inbounds i8, ptr %.2282458.i, i64 %i.aeu
  %.3283.i = select i1 %i.aod, ptr null, ptr %i.arz
  %i.asa = getelementptr inbounds nuw i8, ptr %.4460.i, i64 %i.aev
  %i.asb = getelementptr inbounds nuw i8, ptr %.4279459.i, i64 %i.aew
  %i.asc = add nuw nsw i32 %.4288457.i, 1         ; 2 uses
  %exitcond489.not.i = icmp eq i32 %i.asc, %i.adt
  br i1 %exitcond489.not.i, label %argb8888_premultiplied_image_blend.exit, label %.preheader453.i, !llvm.loop !108

argb8888_premultiplied_image_blend.exit:          ; preds = %._crit_edge.i96, %._crit_edge462.i, %._crit_edge468.i, %._crit_edge474.i, %._crit_edge479.i, %.preheader454.i, %.preheader453.lr.ph.i, %.preheader443.i, %.preheader.lr.ph.i100, %.preheader445.i, %.preheader444.lr.ph.i, %.preheader448.i, %.preheader447.lr.ph.i, %bb.ej, %.preheader450.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %l8_image_blend.exit

bb.fq:                                            ; preds = %bb.a
  %i.asd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ase = load i32, ptr %i.asd, align 8, !tbaa !22 ; 10 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.asg = load i32, ptr %i.asf, align 4, !tbaa !23 ; 10 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.asi = load i8, ptr %i.ash, align 8, !tbaa !24 ; 4 uses
  %i.asj = load ptr, ptr %0, align 8, !tbaa !25   ; 5 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.asl = load i32, ptr %i.ask, align 8, !tbaa !26 ; 5 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !27 ; 5 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.asp = load i32, ptr %i.aso, align 8, !tbaa !28 ; 5 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.asr = load ptr, ptr %i.asq, align 8, !tbaa !29 ; 5 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ast = load i32, ptr %i.ass, align 8, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @lv_memset(ptr noundef nonnull %4, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.asu = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 11 uses
  call void @lv_memset(ptr noundef nonnull %i.asu, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.asv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 11 uses
  call void @lv_memset(ptr noundef nonnull %i.asv, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.asw = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 11 uses
  store i8 -1, ptr %i.asw, align 4, !tbaa !13
  %i.asx = getelementptr inbounds nuw i8, ptr %4, i64 13 ; 11 uses
  store i8 -1, ptr %i.asx, align 1, !tbaa !14
  %i.asy = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.asz = load i32, ptr %i.asy, align 4, !tbaa !31
  %i.ata = icmp eq i32 %i.asz, 0
  br i1 %i.ata, label %bb.fr, label %.preheader333.i

.preheader333.i:                                  ; preds = %bb.fq
  %i.atb = icmp sgt i32 %i.asg, 0
  br i1 %i.atb, label %.preheader332.lr.ph.i, label %argb8888_image_blend.exit

.preheader332.lr.ph.i:                            ; preds = %.preheader333.i
  %i.atc = icmp sgt i32 %i.ase, 0
  %i.atd = zext i8 %i.asi to i32                  ; 2 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %4, i64 7
  %i.atf = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.atg = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.ath = sext i32 %i.ast to i64
  %i.ati = zext i32 %i.asl to i64
  %i.atj = zext i32 %i.asp to i64
  br i1 %i.atc, label %.preheader332.preheader.i, label %argb8888_image_blend.exit

.preheader332.preheader.i:                        ; preds = %.preheader332.lr.ph.i
  %wide.trip.count.i125 = zext nneg i32 %i.ase to i64
  br label %.preheader332.i

bb.fr:                                            ; preds = %bb.fq
  %i.atk = icmp eq ptr %i.asr, null               ; 2 uses
  %i.atl = zext i8 %i.asi to i32                  ; 2 uses
  %i.atm = icmp ugt i8 %i.asi, -4                 ; 2 uses
  %or.cond.i143 = select i1 %i.atk, i1 %i.atm, i1 false
  br i1 %or.cond.i143, label %.preheader322.i, label %bb.gc

.preheader322.i:                                  ; preds = %bb.fr
  %i.atn = icmp sgt i32 %i.asg, 0
  br i1 %i.atn, label %.preheader.lr.ph.i147, label %argb8888_image_blend.exit

.preheader.lr.ph.i147:                            ; preds = %.preheader322.i
  %i.ato = icmp sgt i32 %i.ase, 0
  %i.atp = getelementptr inbounds nuw i8, ptr %4, i64 7
  %i.atq = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.atr = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.ats = zext i32 %i.asl to i64
  %i.att = zext i32 %i.asp to i64
  br i1 %i.ato, label %.preheader.preheader.i148, label %argb8888_image_blend.exit

.preheader.preheader.i148:                        ; preds = %.preheader.lr.ph.i147
  %wide.trip.count390.i = zext nneg i32 %i.ase to i64
  br label %.preheader.i149

.preheader.i149:                                  ; preds = %._crit_edge358.i, %.preheader.preheader.i148
  %.0361.i = phi ptr [ %i.auz, %._crit_edge358.i ], [ %i.asj, %.preheader.preheader.i148 ] ; 2 uses
  %.0172360.i = phi i32 [ %i.avb, %._crit_edge358.i ], [ 0, %.preheader.preheader.i148 ]
  %.0186359.i = phi ptr [ %i.ava, %._crit_edge358.i ], [ %i.asn, %.preheader.preheader.i148 ] ; 2 uses
end_hunk_0
begin_hunk_1_@lv_draw_sw_blend_image_to_argb8888:bb.a
  br i1 %i.biv, label %lv_color_8_32_mix.exit165.i, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bir, i64 3
  store i8 -1, ptr %i.biw, align 1, !tbaa !35
  %i.bix = icmp ugt i8 %i.bit, -4
  br i1 %i.bix, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bir, i64 2
  store i8 %i.biq, ptr %i.biy, align 1, !tbaa !32
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bir, i64 1
  store i8 %i.biq, ptr %i.biz, align 1, !tbaa !33
  br label %.sink.split.i163.i

bb.ii:                                            ; preds = %bb.ig
  %i.bja = xor i8 %i.bit, -1
  %i.bjb = zext i8 %i.biq to i32
  %i.bjc = mul nuw nsw i32 %i.biu, %i.bjb         ; 3 uses
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bir, i64 2 ; 2 uses
  %i.bje = load i8, ptr %i.bjd, align 1, !tbaa !32
  %i.bjf = zext i8 %i.bje to i32
  %i.bjg = zext i8 %i.bja to i32                  ; 3 uses
  %i.bjh = mul nuw nsw i32 %i.bjf, %i.bjg
  %i.bji = add nuw nsw i32 %i.bjh, %i.bjc
  %i.bjj = lshr i32 %i.bji, 8
  %i.bjk = trunc i32 %i.bjj to i8
  store i8 %i.bjk, ptr %i.bjd, align 1, !tbaa !32
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bir, i64 1 ; 2 uses
  %i.bjm = load i8, ptr %i.bjl, align 1, !tbaa !33
  %i.bjn = zext i8 %i.bjm to i32
  %i.bjo = mul nuw nsw i32 %i.bjn, %i.bjg
  %i.bjp = add nuw nsw i32 %i.bjo, %i.bjc
  %i.bjq = lshr i32 %i.bjp, 8
  %i.bjr = trunc i32 %i.bjq to i8
  store i8 %i.bjr, ptr %i.bjl, align 1, !tbaa !33
  %i.bjs = load i8, ptr %i.bir, align 1, !tbaa !34
  %i.bjt = zext i8 %i.bjs to i32
  %i.bju = mul nuw nsw i32 %i.bjt, %i.bjg
  %i.bjv = add nuw nsw i32 %i.bju, %i.bjc
  %i.bjw = lshr i32 %i.bjv, 8
  %i.bjx = trunc i32 %i.bjw to i8
  br label %.sink.split.i163.i

.sink.split.i163.i:                               ; preds = %bb.ii, %bb.ih
  %.sink.i164.i = phi i8 [ %i.bjx, %bb.ii ], [ %i.biq, %bb.ih ]
  store i8 %.sink.i164.i, ptr %i.bir, align 1, !tbaa !34
  br label %lv_color_8_32_mix.exit165.i

lv_color_8_32_mix.exit165.i:                      ; preds = %.sink.split.i163.i, %bb.if
  %indvars.iv.next235.i = add nuw nsw i64 %indvars.iv234.i, 1 ; 2 uses
  %exitcond240.not.i = icmp eq i64 %indvars.iv.next235.i, %wide.trip.count239.i
  br i1 %exitcond240.not.i, label %._crit_edge199.i, label %bb.if, !llvm.loop !123

._crit_edge199.i:                                 ; preds = %lv_color_8_32_mix.exit165.i
  %i.bjy = getelementptr inbounds nuw i8, ptr %.2157200.i, i64 %i.bim
  %i.bjz = getelementptr inbounds nuw i8, ptr %.2152201.i, i64 %i.bin
  %i.bka = getelementptr inbounds i8, ptr %.0146202.i, i64 %i.bio
  %i.bkb = add nuw nsw i32 %.2203.i, 1            ; 2 uses
  %exitcond241.not.i = icmp eq i32 %i.bkb, %i.bfa
  br i1 %exitcond241.not.i, label %l8_image_blend.exit, label %.preheader176.i, !llvm.loop !124

bb.ij:                                            ; preds = %bb.ie
  %or.cond11.i225 = select i1 %i.bij, i1 %i.bgx, i1 false
  %i.bkc = icmp sgt i32 %i.bfa, 0
  %or.cond218.i = select i1 %or.cond11.i225, i1 %i.bkc, i1 false
  br i1 %or.cond218.i, label %.preheader179.lr.ph.i, label %l8_image_blend.exit

.preheader179.lr.ph.i:                            ; preds = %bb.ij
  %i.bkd = icmp sgt i32 %i.bey, 0
  %i.bke = zext i32 %i.bff to i64
  %i.bkf = zext i32 %i.bfj to i64
  %i.bkg = sext i32 %i.bfn to i64
  br i1 %i.bkd, label %.preheader179.preheader.i, label %l8_image_blend.exit

.preheader179.preheader.i:                        ; preds = %.preheader179.lr.ph.i
  %wide.trip.count231.i = zext nneg i32 %i.bey to i64
  br label %.preheader179.i

.preheader179.i:                                  ; preds = %._crit_edge192.i, %.preheader179.preheader.i
  %.3196.i = phi i32 [ %i.blw, %._crit_edge192.i ], [ 0, %.preheader179.preheader.i ]
  %.1147195.i = phi ptr [ %i.blv, %._crit_edge192.i ], [ %i.bfl, %.preheader179.preheader.i ] ; 2 uses
  %.3153194.i = phi ptr [ %i.blu, %._crit_edge192.i ], [ %i.bfh, %.preheader179.preheader.i ] ; 2 uses
  %.3158193.i = phi ptr [ %i.blt, %._crit_edge192.i ], [ %i.bfd, %.preheader179.preheader.i ] ; 2 uses
  br label %bb.ik

bb.ik:                                            ; preds = %lv_color_8_32_mix.exit168.i, %.preheader179.i
  %indvars.iv226.i = phi i64 [ 0, %.preheader179.i ], [ %indvars.iv.next227.i, %lv_color_8_32_mix.exit168.i ] ; 4 uses
  %i.bkh = getelementptr inbounds nuw i8, ptr %.3153194.i, i64 %indvars.iv226.i
  %i.bki = load i8, ptr %i.bkh, align 1, !tbaa !19 ; 4 uses
  %i.bkj = getelementptr inbounds nuw [4 x i8], ptr %.3158193.i, i64 %indvars.iv226.i ; 7 uses
  %i.bkk = getelementptr inbounds nuw i8, ptr %.1147195.i, i64 %indvars.iv226.i
  %i.bkl = load i8, ptr %i.bkk, align 1, !tbaa !19
  %i.bkm = zext i8 %i.bkl to i16
  %i.bkn = mul nuw i16 %i.bkm, %i.bfs             ; 2 uses
  %i.bko = lshr i16 %i.bkn, 8                     ; 3 uses
  %i.bkp = zext nneg i16 %i.bko to i32
  %i.bkq = icmp eq i16 %i.bko, 0
  br i1 %i.bkq, label %lv_color_8_32_mix.exit168.i, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bkj, i64 3
  store i8 -1, ptr %i.bkr, align 1, !tbaa !35
  %i.bks = icmp ugt i16 %i.bkn, -769
  br i1 %i.bks, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bkj, i64 2
  store i8 %i.bki, ptr %i.bkt, align 1, !tbaa !32
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bkj, i64 1
  store i8 %i.bki, ptr %i.bku, align 1, !tbaa !33
  br label %.sink.split.i166.i

bb.in:                                            ; preds = %bb.il
  %i.bkv = xor i16 %i.bko, 255
  %i.bkw = zext nneg i16 %i.bkv to i32            ; 3 uses
  %i.bkx = zext i8 %i.bki to i32
  %i.bky = mul nuw nsw i32 %i.bkp, %i.bkx         ; 3 uses
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bkj, i64 2 ; 2 uses
  %i.bla = load i8, ptr %i.bkz, align 1, !tbaa !32
  %i.blb = zext i8 %i.bla to i32
  %i.blc = mul nuw nsw i32 %i.blb, %i.bkw
  %i.bld = add nuw nsw i32 %i.blc, %i.bky
  %i.ble = lshr i32 %i.bld, 8
  %i.blf = trunc i32 %i.ble to i8
  store i8 %i.blf, ptr %i.bkz, align 1, !tbaa !32
  %i.blg = getelementptr inbounds nuw i8, ptr %i.bkj, i64 1 ; 2 uses
  %i.blh = load i8, ptr %i.blg, align 1, !tbaa !33
  %i.bli = zext i8 %i.blh to i32
  %i.blj = mul nuw nsw i32 %i.bli, %i.bkw
  %i.blk = add nuw nsw i32 %i.blj, %i.bky
  %i.bll = lshr i32 %i.blk, 8
  %i.blm = trunc i32 %i.bll to i8
  store i8 %i.blm, ptr %i.blg, align 1, !tbaa !33
  %i.bln = load i8, ptr %i.bkj, align 1, !tbaa !34
  %i.blo = zext i8 %i.bln to i32
  %i.blp = mul nuw nsw i32 %i.blo, %i.bkw
  %i.blq = add nuw nsw i32 %i.blp, %i.bky
  %i.blr = lshr i32 %i.blq, 8
  %i.bls = trunc i32 %i.blr to i8
  br label %.sink.split.i166.i

.sink.split.i166.i:                               ; preds = %bb.in, %bb.im
  %.sink.i167.i = phi i8 [ %i.bls, %bb.in ], [ %i.bki, %bb.im ]
  store i8 %.sink.i167.i, ptr %i.bkj, align 1, !tbaa !34
  br label %lv_color_8_32_mix.exit168.i

lv_color_8_32_mix.exit168.i:                      ; preds = %.sink.split.i166.i, %bb.ik
  %indvars.iv.next227.i = add nuw nsw i64 %indvars.iv226.i, 1 ; 2 uses
  %exitcond232.not.i = icmp eq i64 %indvars.iv.next227.i, %wide.trip.count231.i
  br i1 %exitcond232.not.i, label %._crit_edge192.i, label %bb.ik, !llvm.loop !125

._crit_edge192.i:                                 ; preds = %lv_color_8_32_mix.exit168.i
  %i.blt = getelementptr inbounds nuw i8, ptr %.3158193.i, i64 %i.bke
  %i.blu = getelementptr inbounds nuw i8, ptr %.3153194.i, i64 %i.bkf
  %i.blv = getelementptr inbounds i8, ptr %.1147195.i, i64 %i.bkg
  %i.blw = add nuw nsw i32 %.3196.i, 1            ; 2 uses
  %exitcond233.not.i = icmp eq i32 %i.blw, %i.bfa
  br i1 %exitcond233.not.i, label %l8_image_blend.exit, label %.preheader179.i, !llvm.loop !126

bb.io:                                            ; preds = %bb.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @lv_memset(ptr noundef nonnull %3, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.blx = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  call void @lv_memset(ptr noundef nonnull %i.blx, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.bly = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @lv_memset(ptr noundef nonnull %i.bly, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.blz = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i8 -1, ptr %i.blz, align 4, !tbaa !13
  %i.bma = getelementptr inbounds nuw i8, ptr %3, i64 13 ; 3 uses
  store i8 -1, ptr %i.bma, align 1, !tbaa !14
  %i.bmb = icmp sgt i32 %i.bfa, 0
  br i1 %i.bmb, label %.preheader182.lr.ph.i, label %._crit_edge189.split.i

.preheader182.lr.ph.i:                            ; preds = %bb.io
  %i.bmc = icmp sgt i32 %i.bey, 0
  %i.bmd = zext i8 %i.bfc to i16
  %i.bme = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.bmf = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.bmg = getelementptr inbounds nuw i8, ptr %3, i64 11 ; 2 uses
  %i.bmh = sext i32 %i.bfn to i64
  %i.bmi = zext i32 %i.bff to i64
  %i.bmj = zext i32 %i.bfj to i64
  br i1 %i.bmc, label %.preheader182.preheader.i, label %._crit_edge189.split.i

.preheader182.preheader.i:                        ; preds = %.preheader182.lr.ph.i
  %wide.trip.count.i174 = zext nneg i32 %i.bey to i64
  br label %.preheader182.i

.preheader182.i:                                  ; preds = %._crit_edge.i214, %.preheader182.preheader.i
  %.4188.i = phi i32 [ %i.bpu, %._crit_edge.i214 ], [ 0, %.preheader182.preheader.i ]
  %.2148187.i = phi ptr [ %.3149.i, %._crit_edge.i214 ], [ %i.bfl, %.preheader182.preheader.i ] ; 3 uses
  %.4154186.i = phi ptr [ %i.bpt, %._crit_edge.i214 ], [ %i.bfh, %.preheader182.preheader.i ] ; 2 uses
  %.4159185.i = phi ptr [ %i.bps, %._crit_edge.i214 ], [ %i.bfd, %.preheader182.preheader.i ] ; 2 uses
  %i.bmk = icmp eq ptr %.2148187.i, null          ; 2 uses
  br label %bb.ip

bb.ip:                                            ; preds = %blend_non_normal_pixel.exit.i211, %.preheader182.i
  %indvars.iv.i175 = phi i64 [ 0, %.preheader182.i ], [ %indvars.iv.next.i212, %blend_non_normal_pixel.exit.i211 ] ; 4 uses
  %i.bml = getelementptr inbounds nuw i8, ptr %.4154186.i, i64 %indvars.iv.i175
  %i.bmm = load i8, ptr %i.bml, align 1, !tbaa !19 ; 4 uses
  br i1 %i.bmk, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.bmn = getelementptr inbounds nuw i8, ptr %.2148187.i, i64 %indvars.iv.i175
  %i.bmo = load i8, ptr %i.bmn, align 1, !tbaa !19
  %i.bmp = zext i8 %i.bmo to i16
  %i.bmq = mul nuw i16 %i.bmp, %i.bmd
  %i.bmr = lshr i16 %i.bmq, 8
  %i.bms = trunc nuw i16 %i.bmr to i8
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  %.sroa.6.0.i176 = phi i8 [ %i.bms, %bb.iq ], [ %i.bfc, %bb.ip ]
  %i.bmt = getelementptr inbounds nuw [4 x i8], ptr %.4159185.i, i64 %indvars.iv.i175 ; 14 uses
  %i.bmu = load i32, ptr %i.bfo, align 4, !tbaa !31
  %.sroa.6.0.insert.ext.i177 = zext i8 %.sroa.6.0.i176 to i32
  %.sroa.6.0.insert.shift.i178 = shl nuw i32 %.sroa.6.0.insert.ext.i177, 24
  %.sroa.5.0.insert.ext.i179 = zext i8 %i.bmm to i32 ; 9 uses
  switch i32 %i.bmu, label %blend_non_normal_pixel.exit.i211 [
    i32 1, label %bb.is
    i32 2, label %bb.it
    i32 3, label %bb.iu
    i32 4, label %bb.iv
  ]

bb.is:                                            ; preds = %bb.ir
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmt, i64 2
  %i.bmw = load i8, ptr %i.bmv, align 1, !tbaa !32
  %narrow219.i = call i8 @llvm.uadd.sat.i8(i8 %i.bmw, i8 %i.bmm)
  %spec.select.i.i222 = zext i8 %narrow219.i to i32
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bmt, i64 1
  %i.bmy = load i8, ptr %i.bmx, align 1, !tbaa !33
  %narrow220.i = call i8 @llvm.uadd.sat.i8(i8 %i.bmy, i8 %i.bmm)
  %10 = zext i8 %narrow220.i to i32
  %i.bmz = load i8, ptr %i.bmt, align 1, !tbaa !34
  %narrow.i223 = call i8 @llvm.uadd.sat.i8(i8 %i.bmm, i8 %i.bmz)
  %11 = zext i8 %narrow.i223 to i32
  br label %bb.iw

bb.it:                                            ; preds = %bb.ir
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmt, i64 2
  %i.bnb = load i8, ptr %i.bna, align 1, !tbaa !32
  %i.bnc = zext i8 %i.bnb to i32
  %i.bnd = sub nsw i32 %i.bnc, %.sroa.5.0.insert.ext.i179
  %spec.select60.i.i220 = call i32 @llvm.smax.i32(i32 %i.bnd, i32 0)
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bmt, i64 1
  %i.bnf = load i8, ptr %i.bne, align 1, !tbaa !33
  %i.bng = zext i8 %i.bnf to i32
  %i.bnh = sub nsw i32 %i.bng, %.sroa.5.0.insert.ext.i179
  %i.bni = call i32 @llvm.smax.i32(i32 %i.bnh, i32 0)
  %i.bnj = load i8, ptr %i.bmt, align 1, !tbaa !34
  %i.bnk = zext i8 %i.bnj to i32
  %i.bnl = sub nsw i32 %i.bnk, %.sroa.5.0.insert.ext.i179
  %i.bnm = call i32 @llvm.smax.i32(i32 %i.bnl, i32 0)
  br label %bb.iw

bb.iu:                                            ; preds = %bb.ir
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bmt, i64 2
  %i.bno = load i8, ptr %i.bnn, align 1, !tbaa !32
  %i.bnp = zext i8 %i.bno to i32
  %i.bnq = mul nuw nsw i32 %i.bnp, %.sroa.5.0.insert.ext.i179
  %i.bnr = lshr i32 %i.bnq, 8
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bmt, i64 1
  %i.bnt = load i8, ptr %i.bns, align 1, !tbaa !33
  %i.bnu = zext i8 %i.bnt to i32
  %i.bnv = mul nuw nsw i32 %i.bnu, %.sroa.5.0.insert.ext.i179
  %i.bnw = lshr i32 %i.bnv, 8
  %i.bnx = load i8, ptr %i.bmt, align 1, !tbaa !34
  %i.bny = zext i8 %i.bnx to i32
  %i.bnz = mul nuw nsw i32 %i.bny, %.sroa.5.0.insert.ext.i179
  %i.boa = lshr i32 %i.bnz, 8
  br label %bb.iw

bb.iv:                                            ; preds = %bb.ir
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bmt, i64 2
  %i.boc = load i8, ptr %i.bob, align 1, !tbaa !32
  %i.bod = zext i8 %i.boc to i32
  %i.boe = sub nsw i32 %i.bod, %.sroa.5.0.insert.ext.i179
  %i.bof = call i32 @llvm.abs.i32(i32 %i.boe, i1 true)
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bmt, i64 1
  %i.boh = load i8, ptr %i.bog, align 1, !tbaa !33
  %i.boi = zext i8 %i.boh to i32
  %i.boj = sub nsw i32 %i.boi, %.sroa.5.0.insert.ext.i179
  %i.bok = call i32 @llvm.abs.i32(i32 %i.boj, i1 true)
  %i.bol = load i8, ptr %i.bmt, align 1, !tbaa !34
  %i.bom = zext i8 %i.bol to i32
  %i.bon = sub nsw i32 %i.bom, %.sroa.5.0.insert.ext.i179
  %i.boo = call i32 @llvm.abs.i32(i32 %i.bon, i1 true)
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu, %bb.it, %bb.is
  %.sroa.11.0.i.i180 = phi i32 [ %spec.select.i.i222, %bb.is ], [ %spec.select60.i.i220, %bb.it ], [ %i.bnr, %bb.iu ], [ %i.bof, %bb.iv ]
  %.sroa.7.0.i.i181 = phi i32 [ %10, %bb.is ], [ %i.bni, %bb.it ], [ %i.bnw, %bb.iu ], [ %i.bok, %bb.iv ]
  %.sroa.01.0.i.i182 = phi i32 [ %11, %bb.is ], [ %i.bnm, %bb.it ], [ %i.boa, %bb.iu ], [ %i.boo, %bb.iv ]
  %.sroa.11.0.insert.ext.i.i183 = shl nuw nsw i32 %.sroa.11.0.i.i180, 16
  %.sroa.11.0.insert.shift.i.i184 = and i32 %.sroa.11.0.insert.ext.i.i183, 16711680
  %.sroa.11.0.insert.insert.i.i185 = or disjoint i32 %.sroa.11.0.insert.shift.i.i184, %.sroa.6.0.insert.shift.i178
  %.sroa.7.0.insert.ext.i.i186 = shl nuw nsw i32 %.sroa.7.0.i.i181, 8
  %.sroa.7.0.insert.shift.i.i187 = and i32 %.sroa.7.0.insert.ext.i.i186, 65280
  %.sroa.7.0.insert.insert.i.i188 = add nuw nsw i32 %.sroa.11.0.insert.insert.i.i185, %.sroa.01.0.i.i182 ; 4 uses
  %.sroa.01.0.insert.insert.i.i189 = or disjoint i32 %.sroa.7.0.insert.insert.i.i188, %.sroa.7.0.insert.shift.i.i187 ; 5 uses
  %i.bop = load i32, ptr %i.bmt, align 1          ; 7 uses
  %.sroa.045.0.extract.trunc.i.i190 = trunc i32 %.sroa.01.0.insert.insert.i.i189 to i24
  %.sroa.654.0.extract.shift.i.i191 = lshr i32 %.sroa.7.0.insert.insert.i.i188, 24 ; 4 uses
  %.sroa.6.0.extract.shift.i.i192 = lshr i32 %i.bop, 24 ; 4 uses
  %i.boq = icmp ugt i32 %.sroa.7.0.insert.insert.i.i188, -50331649
  %i.bor = icmp ult i32 %i.bop, 50331648
  %or.cond.i.i193 = select i1 %i.boq, i1 true, i1 %i.bor
  br i1 %or.cond.i.i193, label %lv_color_32_32_mix.exit.i205, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %.sroa.018.0.extract.trunc.i.i194 = trunc i32 %i.bop to i24
  %i.bos = icmp ult i32 %.sroa.7.0.insert.insert.i.i188, 50331648
  br i1 %i.bos, label %lv_color_32_32_mix.exit.i205, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.bot = icmp eq i32 %.sroa.6.0.extract.shift.i.i192, 255
  br i1 %i.bot, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %i.bou = call i32 @lv_color_mix32(i32 %.sroa.01.0.insert.insert.i.i189, i32 %i.bop) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i.i218 = trunc i32 %i.bou to i24
  %.sroa.5.0.extract.shift.i.i219 = lshr i32 %i.bou, 24
  br label %lv_color_32_32_mix.exit.i205

bb.ja:                                            ; preds = %bb.iy
  %i.bov = load i8, ptr %i.bme, align 1, !tbaa !18
  %i.bow = zext i8 %i.bov to i32
  %.not.i.i195 = icmp eq i32 %.sroa.6.0.extract.shift.i.i192, %i.bow
  %i.box = load i8, ptr %i.bmf, align 1
  %i.boy = zext i8 %i.box to i32
  %.not77.i.i196 = icmp eq i32 %.sroa.654.0.extract.shift.i.i191, %i.boy
  %or.cond171.i = select i1 %.not.i.i195, i1 %.not77.i.i196, i1 false
  br i1 %or.cond171.i, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.boz = xor i32 %.sroa.654.0.extract.shift.i.i191, 255
  %i.bpa = xor i32 %.sroa.6.0.extract.shift.i.i192, 255
  %i.bpb = mul nuw nsw i32 %i.boz, %i.bpa
  %i.bpc = lshr i32 %i.bpb, 8
  %i.bpd = trunc nuw i32 %i.bpc to i8
  %i.bpe = xor i8 %i.bpd, -1                      ; 2 uses
  store i8 %i.bpe, ptr %i.blz, align 4, !tbaa !13
  %i.bpf = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i.i191 to i16
  %.lhs.trunc.i.i197 = mul nuw i16 %i.bpf, 255
  %.rhs.trunc.i.i198 = zext i8 %i.bpe to i16
  %i.bpg = udiv i16 %.lhs.trunc.i.i197, %.rhs.trunc.i.i198
  %i.bph = trunc i16 %i.bpg to i8
  store i8 %i.bph, ptr %i.bma, align 1, !tbaa !14
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja
  %i.bpi = load i32, ptr %i.blx, align 4
  %i.bpj = call zeroext i1 @lv_color32_eq(i32 %i.bop, i32 %i.bpi) #7
  br i1 %i.bpj, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  %i.bpk = load i32, ptr %3, align 4
  %i.bpl = call zeroext i1 @lv_color32_eq(i32 %.sroa.01.0.insert.insert.i.i189, i32 %i.bpk) #7
  br i1 %i.bpl, label %._crit_edge.i.i215, label %bb.je

._crit_edge.i.i215:                               ; preds = %bb.jd
  %.sroa.074.0.copyload.pre.i.i216 = load i24, ptr %i.bly, align 4
  %.sroa.5.0.copyload.pre.i.i217 = load i8, ptr %i.bmg, align 1, !tbaa !19
  br label %bb.jf

bb.je:                                            ; preds = %bb.jd, %bb.jc
  store i32 %.sroa.01.0.insert.insert.i.i189, ptr %3, align 4
  store i32 %i.bop, ptr %i.blx, align 4
  %i.bpm = load i8, ptr %i.bma, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i.i199 = zext i8 %i.bpm to i32
  %.sroa.654.0.insert.shift64.i.i200 = shl nuw i32 %.sroa.654.0.insert.ext63.i.i199, 24
  %.sroa.045.0.insert.ext51.i.i201 = and i32 %.sroa.01.0.insert.insert.i.i189, 16777215
  %.sroa.045.0.insert.insert53.i.i202 = or disjoint i32 %.sroa.654.0.insert.shift64.i.i200, %.sroa.045.0.insert.ext51.i.i201
  %i.bpn = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i.i202, i32 %i.bop) #7 ; 2 uses
  store i32 %i.bpn, ptr %i.bly, align 4
  %i.bpo = load i8, ptr %i.blz, align 4, !tbaa !13 ; 2 uses
  store i8 %i.bpo, ptr %i.bmg, align 1, !tbaa !20
  %i.bpp = trunc i32 %i.bpn to i24
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %._crit_edge.i.i215
  %.sroa.5.0.copyload.i.i203 = phi i8 [ %.sroa.5.0.copyload.pre.i.i217, %._crit_edge.i.i215 ], [ %i.bpo, %bb.je ]
  %.sroa.074.0.copyload.i.i204 = phi i24 [ %.sroa.074.0.copyload.pre.i.i216, %._crit_edge.i.i215 ], [ %i.bpp, %bb.je ]
  %i.bpq = zext i8 %.sroa.5.0.copyload.i.i203 to i32
  br label %lv_color_32_32_mix.exit.i205

lv_color_32_32_mix.exit.i205:                     ; preds = %bb.jf, %bb.iz, %bb.ix, %bb.iw
  %.sroa.074.0.i.i206 = phi i24 [ %.sroa.074.0.copyload.i.i204, %bb.jf ], [ %.sroa.045.0.extract.trunc.i.i190, %bb.iw ], [ %.sroa.074.0.extract.trunc.i.i218, %bb.iz ], [ %.sroa.018.0.extract.trunc.i.i194, %bb.ix ]
  %.sroa.5.0.i.i207 = phi i32 [ %i.bpq, %bb.jf ], [ %.sroa.654.0.extract.shift.i.i191, %bb.iw ], [ %.sroa.5.0.extract.shift.i.i219, %bb.iz ], [ %.sroa.6.0.extract.shift.i.i192, %bb.ix ]
  %.sroa.5.0.insert.shift.i.i208 = shl nuw i32 %.sroa.5.0.i.i207, 24
  %.sroa.074.0.insert.ext.i.i209 = zext i24 %.sroa.074.0.i.i206 to i32
  %.sroa.074.0.insert.insert.i.i210 = or disjoint i32 %.sroa.5.0.insert.shift.i.i208, %.sroa.074.0.insert.ext.i.i209
  store i32 %.sroa.074.0.insert.insert.i.i210, ptr %i.bmt, align 1
  br label %blend_non_normal_pixel.exit.i211

blend_non_normal_pixel.exit.i211:                 ; preds = %lv_color_32_32_mix.exit.i205, %bb.ir
  %indvars.iv.next.i212 = add nuw nsw i64 %indvars.iv.i175, 1 ; 2 uses
  %exitcond.not.i213 = icmp eq i64 %indvars.iv.next.i212, %wide.trip.count.i174
  br i1 %exitcond.not.i213, label %._crit_edge.i214, label %bb.ip, !llvm.loop !127

._crit_edge.i214:                                 ; preds = %blend_non_normal_pixel.exit.i211
  %i.bpr = getelementptr inbounds i8, ptr %.2148187.i, i64 %i.bmh
  %.3149.i = select i1 %i.bmk, ptr null, ptr %i.bpr
  %i.bps = getelementptr inbounds nuw i8, ptr %.4159185.i, i64 %i.bmi
  %i.bpt = getelementptr inbounds nuw i8, ptr %.4154186.i, i64 %i.bmj
  %i.bpu = add nuw nsw i32 %.4188.i, 1            ; 2 uses
  %exitcond225.not.i = icmp eq i32 %i.bpu, %i.bfa
  br i1 %exitcond225.not.i, label %._crit_edge189.split.i, label %.preheader182.i, !llvm.loop !128

._crit_edge189.split.i:                           ; preds = %._crit_edge.i214, %.preheader182.lr.ph.i, %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %l8_image_blend.exit

bb.jg:                                            ; preds = %bb.a
  %i.bpv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bpw = load i32, ptr %i.bpv, align 8, !tbaa !22 ; 10 uses
  %i.bpx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bpy = load i32, ptr %i.bpx, align 4, !tbaa !23 ; 10 uses
  %i.bpz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bqa = load i8, ptr %i.bpz, align 8, !tbaa !24 ; 4 uses
  %i.bqb = load ptr, ptr %0, align 8, !tbaa !25   ; 5 uses
  %i.bqc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bqd = load i32, ptr %i.bqc, align 8, !tbaa !26 ; 5 uses
  %i.bqe = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bqf = load ptr, ptr %i.bqe, align 8, !tbaa !27 ; 5 uses
  %i.bqg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bqh = load i32, ptr %i.bqg, align 8, !tbaa !28 ; 5 uses
  %i.bqi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bqj = load ptr, ptr %i.bqi, align 8, !tbaa !29 ; 5 uses
  %i.bqk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bql = load i32, ptr %i.bqk, align 8, !tbaa !30 ; 3 uses
  %i.bqm = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bqn = load i32, ptr %i.bqm, align 4, !tbaa !31
  %i.bqo = icmp eq i32 %i.bqn, 0
  br i1 %i.bqo, label %bb.jh, label %bb.kb

bb.jh:                                            ; preds = %bb.jg
  %i.bqp = icmp eq ptr %i.bqj, null               ; 2 uses
  %i.bqq = zext i8 %i.bqa to i32                  ; 2 uses
  %i.bqr = icmp ugt i8 %i.bqa, -4                 ; 2 uses
  %or.cond.i276 = select i1 %i.bqp, i1 %i.bqr, i1 false
  br i1 %or.cond.i276, label %.preheader178.i, label %bb.jm

.preheader178.i:                                  ; preds = %bb.jh
  %i.bqs = icmp sgt i32 %i.bpy, 0
  br i1 %i.bqs, label %.preheader.lr.ph.i289, label %l8_image_blend.exit

.preheader.lr.ph.i289:                            ; preds = %.preheader178.i
  %i.bqt = icmp sgt i32 %i.bpw, 0
  %i.bqu = zext i32 %i.bqd to i64
  %i.bqv = zext i32 %i.bqh to i64
  br i1 %i.bqt, label %.preheader.preheader.i290, label %l8_image_blend.exit

.preheader.preheader.i290:                        ; preds = %.preheader.lr.ph.i289
  %wide.trip.count259.i.a = zext nneg i32 %i.bpw to i64
  br label %.preheader.i291

.preheader.i291:                                  ; preds = %._crit_edge218.i, %.preheader.preheader.i290
  %.0221.i = phi i32 [ %i.bsh, %._crit_edge218.i ], [ 0, %.preheader.preheader.i290 ]
  %.0152220.i = phi ptr [ %i.bsg, %._crit_edge218.i ], [ %i.bqf, %.preheader.preheader.i290 ] ; 2 uses
  %.0157219.i = phi ptr [ %i.bsf, %._crit_edge218.i ], [ %i.bqb, %.preheader.preheader.i290 ] ; 2 uses
  br label %bb.ji

bb.ji:                                            ; preds = %lv_color_8_32_mix.exit.i, %.preheader.i291
  %indvars.iv254.i.a = phi i64 [ 0, %.preheader.i291 ], [ %indvars.iv.next255.i, %lv_color_8_32_mix.exit.i ] ; 3 uses
  %i.bqw = getelementptr inbounds nuw [2 x i8], ptr %.0152220.i, i64 %indvars.iv254.i.a ; 2 uses
  %i.bqx = load i8, ptr %i.bqw, align 1, !tbaa !161 ; 4 uses
  %i.bqy = getelementptr inbounds nuw [4 x i8], ptr %.0157219.i, i64 %indvars.iv254.i.a ; 7 uses
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.bqw, i64 1
  %i.bra = load i8, ptr %i.bqz, align 1, !tbaa !162 ; 4 uses
  %i.brb = zext i8 %i.bra to i32
  %i.brc = icmp eq i8 %i.bra, 0
  br i1 %i.brc, label %lv_color_8_32_mix.exit.i, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.brd = getelementptr inbounds nuw i8, ptr %i.bqy, i64 3
  store i8 -1, ptr %i.brd, align 1, !tbaa !35
  %i.bre = icmp ugt i8 %i.bra, -4
  br i1 %i.bre, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  %i.brf = getelementptr inbounds nuw i8, ptr %i.bqy, i64 2
  store i8 %i.bqx, ptr %i.brf, align 1, !tbaa !32
  %i.brg = getelementptr inbounds nuw i8, ptr %i.bqy, i64 1
  store i8 %i.bqx, ptr %i.brg, align 1, !tbaa !33
  br label %.sink.split.i.i292

bb.jl:                                            ; preds = %bb.jj
  %i.brh = xor i8 %i.bra, -1
  %i.bri = zext i8 %i.bqx to i32
  %i.brj = mul nuw nsw i32 %i.brb, %i.bri         ; 3 uses
  %i.brk = getelementptr inbounds nuw i8, ptr %i.bqy, i64 2 ; 2 uses
  %i.brl = load i8, ptr %i.brk, align 1, !tbaa !32
end_hunk_1
begin_hunk_2_@lv_draw_sw_blend_image_to_argb8888:bb.a
bb.jt:                                            ; preds = %bb.js
  %i.but = getelementptr inbounds nuw i8, ptr %i.bui, i64 3
  store i8 -1, ptr %i.but, align 1, !tbaa !35
  %i.buu = icmp ugt i16 %i.bup, -769
  br i1 %i.buu, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.buv = getelementptr inbounds nuw i8, ptr %i.bui, i64 2
  store i8 %i.buh, ptr %i.buv, align 1, !tbaa !32
  %i.buw = getelementptr inbounds nuw i8, ptr %i.bui, i64 1
  store i8 %i.buh, ptr %i.buw, align 1, !tbaa !33
  br label %.sink.split.i169.i

bb.jv:                                            ; preds = %bb.jt
  %i.bux = xor i16 %i.buq, 255
  %i.buy = zext nneg i16 %i.bux to i32            ; 3 uses
  %i.buz = zext i8 %i.buh to i32
  %i.bva = mul nuw nsw i32 %i.bur, %i.buz         ; 3 uses
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bui, i64 2 ; 2 uses
  %i.bvc = load i8, ptr %i.bvb, align 1, !tbaa !32
  %i.bvd = zext i8 %i.bvc to i32
  %i.bve = mul nuw nsw i32 %i.bvd, %i.buy
  %i.bvf = add nuw nsw i32 %i.bve, %i.bva
  %i.bvg = lshr i32 %i.bvf, 8
  %i.bvh = trunc i32 %i.bvg to i8
  store i8 %i.bvh, ptr %i.bvb, align 1, !tbaa !32
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.bui, i64 1 ; 2 uses
  %i.bvj = load i8, ptr %i.bvi, align 1, !tbaa !33
  %i.bvk = zext i8 %i.bvj to i32
  %i.bvl = mul nuw nsw i32 %i.bvk, %i.buy
  %i.bvm = add nuw nsw i32 %i.bvl, %i.bva
  %i.bvn = lshr i32 %i.bvm, 8
  %i.bvo = trunc i32 %i.bvn to i8
  store i8 %i.bvo, ptr %i.bvi, align 1, !tbaa !33
  %i.bvp = load i8, ptr %i.bui, align 1, !tbaa !34
  %i.bvq = zext i8 %i.bvp to i32
  %i.bvr = mul nuw nsw i32 %i.bvq, %i.buy
  %i.bvs = add nuw nsw i32 %i.bvr, %i.bva
  %i.bvt = lshr i32 %i.bvs, 8
  %i.bvu = trunc i32 %i.bvt to i8
  br label %.sink.split.i169.i

.sink.split.i169.i:                               ; preds = %bb.jv, %bb.ju
  %.sink.i170.i = phi i8 [ %i.bvu, %bb.jv ], [ %i.buh, %bb.ju ]
  store i8 %.sink.i170.i, ptr %i.bui, align 1, !tbaa !34
  br label %lv_color_8_32_mix.exit171.i

lv_color_8_32_mix.exit171.i:                      ; preds = %.sink.split.i169.i, %bb.js
  %indvars.iv.next239.i.a = add nuw nsw i64 %indvars.iv238.i.a, 1 ; 2 uses
  %exitcond244.not.i.a = icmp eq i64 %indvars.iv.next239.i.a, %wide.trip.count243.i.a
  br i1 %exitcond244.not.i.a, label %._crit_edge205.i, label %bb.js, !llvm.loop !133

._crit_edge205.i:                                 ; preds = %lv_color_8_32_mix.exit171.i
  %i.bvv = getelementptr inbounds nuw i8, ptr %.2159206.i, i64 %i.bud
  %i.bvw = getelementptr inbounds nuw i8, ptr %.2154207.i, i64 %i.bue
  %i.bvx = getelementptr inbounds i8, ptr %.0148208.i, i64 %i.buf
  %i.bvy = add nuw nsw i32 %.2209.i, 1            ; 2 uses
  %exitcond245.not.i.a = icmp eq i32 %i.bvy, %i.bpy
  br i1 %exitcond245.not.i.a, label %l8_image_blend.exit, label %.preheader182.i282, !llvm.loop !134

bb.jw:                                            ; preds = %bb.jr
  %or.cond11.i279 = select i1 %i.bua, i1 %i.bsi, i1 false
  %i.bvz = icmp sgt i32 %i.bpy, 0
  %or.cond222.i = select i1 %or.cond11.i279, i1 %i.bvz, i1 false
  br i1 %or.cond222.i, label %.preheader185.lr.ph.i, label %l8_image_blend.exit

.preheader185.lr.ph.i:                            ; preds = %bb.jw
  %i.bwa = icmp sgt i32 %i.bpw, 0
  %i.bwb = zext i32 %i.bqd to i64
  %i.bwc = zext i32 %i.bqh to i64
  %i.bwd = sext i32 %i.bql to i64
  br i1 %i.bwa, label %.preheader185.preheader.i, label %l8_image_blend.exit

.preheader185.preheader.i:                        ; preds = %.preheader185.lr.ph.i
  %wide.trip.count235.i.a = zext nneg i32 %i.bpw to i64
  br label %.preheader185.i

.preheader185.i:                                  ; preds = %._crit_edge198.i, %.preheader185.preheader.i
  %.3202.i = phi i32 [ %i.bxv, %._crit_edge198.i ], [ 0, %.preheader185.preheader.i ]
  %.1149201.i = phi ptr [ %i.bxu, %._crit_edge198.i ], [ %i.bqj, %.preheader185.preheader.i ] ; 2 uses
  %.3155200.i = phi ptr [ %i.bxt, %._crit_edge198.i ], [ %i.bqf, %.preheader185.preheader.i ] ; 2 uses
  %.3160199.i = phi ptr [ %i.bxs, %._crit_edge198.i ], [ %i.bqb, %.preheader185.preheader.i ] ; 2 uses
  br label %bb.jx

bb.jx:                                            ; preds = %lv_color_8_32_mix.exit174.i, %.preheader185.i
  %indvars.iv230.i.a = phi i64 [ 0, %.preheader185.i ], [ %indvars.iv.next231.i.a, %lv_color_8_32_mix.exit174.i ] ; 4 uses
  %i.bwe = getelementptr inbounds nuw [2 x i8], ptr %.3155200.i, i64 %indvars.iv230.i.a ; 2 uses
  %i.bwf = load i8, ptr %i.bwe, align 1, !tbaa !161 ; 4 uses
  %i.bwg = getelementptr inbounds nuw [4 x i8], ptr %.3160199.i, i64 %indvars.iv230.i.a ; 7 uses
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.bwe, i64 1
  %i.bwi = load i8, ptr %i.bwh, align 1, !tbaa !162
  %i.bwj = zext i8 %i.bwi to i32
  %i.bwk = getelementptr inbounds nuw i8, ptr %.1149201.i, i64 %indvars.iv230.i.a
  %i.bwl = load i8, ptr %i.bwk, align 1, !tbaa !19
  %i.bwm = zext i8 %i.bwl to i32
  %i.bwn = mul nuw nsw i32 %i.bwj, %i.bqq
  %i.bwo = mul nuw nsw i32 %i.bwn, %i.bwm         ; 2 uses
  %i.bwp = lshr i32 %i.bwo, 16                    ; 3 uses
  %i.bwq = icmp eq i32 %i.bwp, 0
  br i1 %i.bwq, label %lv_color_8_32_mix.exit174.i, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bwg, i64 3
  store i8 -1, ptr %i.bwr, align 1, !tbaa !35
  %i.bws = icmp samesign ugt i32 %i.bwo, 16580607
  br i1 %i.bws, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  %i.bwt = getelementptr inbounds nuw i8, ptr %i.bwg, i64 2
  store i8 %i.bwf, ptr %i.bwt, align 1, !tbaa !32
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.bwg, i64 1
  store i8 %i.bwf, ptr %i.bwu, align 1, !tbaa !33
  br label %.sink.split.i172.i

bb.ka:                                            ; preds = %bb.jy
  %i.bwv = xor i32 %i.bwp, 255                    ; 3 uses
  %i.bww = zext i8 %i.bwf to i32
  %i.bwx = mul nuw nsw i32 %i.bwp, %i.bww         ; 3 uses
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.bwg, i64 2 ; 2 uses
  %i.bwz = load i8, ptr %i.bwy, align 1, !tbaa !32
  %i.bxa = zext i8 %i.bwz to i32
  %i.bxb = mul nuw nsw i32 %i.bwv, %i.bxa
  %i.bxc = add nuw nsw i32 %i.bxb, %i.bwx
  %i.bxd = lshr i32 %i.bxc, 8
  %i.bxe = trunc nuw i32 %i.bxd to i8
  store i8 %i.bxe, ptr %i.bwy, align 1, !tbaa !32
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bwg, i64 1 ; 2 uses
  %i.bxg = load i8, ptr %i.bxf, align 1, !tbaa !33
  %i.bxh = zext i8 %i.bxg to i32
  %i.bxi = mul nuw nsw i32 %i.bwv, %i.bxh
  %i.bxj = add nuw nsw i32 %i.bxi, %i.bwx
  %i.bxk = lshr i32 %i.bxj, 8
  %i.bxl = trunc nuw i32 %i.bxk to i8
  store i8 %i.bxl, ptr %i.bxf, align 1, !tbaa !33
  %i.bxm = load i8, ptr %i.bwg, align 1, !tbaa !34
  %i.bxn = zext i8 %i.bxm to i32
  %i.bxo = mul nuw nsw i32 %i.bwv, %i.bxn
  %i.bxp = add nuw nsw i32 %i.bxo, %i.bwx
  %i.bxq = lshr i32 %i.bxp, 8
  %i.bxr = trunc nuw i32 %i.bxq to i8
  br label %.sink.split.i172.i

.sink.split.i172.i:                               ; preds = %bb.ka, %bb.jz
  %.sink.i173.i = phi i8 [ %i.bxr, %bb.ka ], [ %i.bwf, %bb.jz ]
  store i8 %.sink.i173.i, ptr %i.bwg, align 1, !tbaa !34
  br label %lv_color_8_32_mix.exit174.i

lv_color_8_32_mix.exit174.i:                      ; preds = %.sink.split.i172.i, %bb.jx
  %indvars.iv.next231.i.a = add nuw nsw i64 %indvars.iv230.i.a, 1 ; 2 uses
  %exitcond236.not.i.a = icmp eq i64 %indvars.iv.next231.i.a, %wide.trip.count235.i.a
  br i1 %exitcond236.not.i.a, label %._crit_edge198.i, label %bb.jx, !llvm.loop !135

._crit_edge198.i:                                 ; preds = %lv_color_8_32_mix.exit174.i
  %i.bxs = getelementptr inbounds nuw i8, ptr %.3160199.i, i64 %i.bwb
  %i.bxt = getelementptr inbounds nuw i8, ptr %.3155200.i, i64 %i.bwc
  %i.bxu = getelementptr inbounds i8, ptr %.1149201.i, i64 %i.bwd
  %i.bxv = add nuw nsw i32 %.3202.i, 1            ; 2 uses
  %exitcond237.not.i.a = icmp eq i32 %i.bxv, %i.bpy
  br i1 %exitcond237.not.i.a, label %l8_image_blend.exit, label %.preheader185.i, !llvm.loop !136

bb.kb:                                            ; preds = %bb.jg
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @lv_memset(ptr noundef nonnull %2, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.bxw = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  call void @lv_memset(ptr noundef nonnull %i.bxw, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.bxx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @lv_memset(ptr noundef nonnull %i.bxx, i8 noundef zeroext 0, i64 noundef 4) #7
  %i.bxy = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  store i8 -1, ptr %i.bxy, align 4, !tbaa !13
  %i.bxz = getelementptr inbounds nuw i8, ptr %2, i64 13 ; 3 uses
  store i8 -1, ptr %i.bxz, align 1, !tbaa !14
  %i.bya = icmp sgt i32 %i.bpy, 0
  br i1 %i.bya, label %.preheader188.lr.ph.i, label %._crit_edge195.split.i

.preheader188.lr.ph.i:                            ; preds = %bb.kb
  %i.byb = icmp sgt i32 %i.bpw, 0
  %i.byc = zext i8 %i.bqa to i32                  ; 2 uses
  %i.byd = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.bye = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.byf = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.byg = sext i32 %i.bql to i64
  %i.byh = zext i32 %i.bqd to i64
  %i.byi = zext i32 %i.bqh to i64
  br i1 %i.byb, label %.preheader188.preheader.i, label %._crit_edge195.split.i

.preheader188.preheader.i:                        ; preds = %.preheader188.lr.ph.i
  %wide.trip.count.i229 = zext nneg i32 %i.bpw to i64
  br label %.preheader188.i

.preheader188.i:                                  ; preds = %._crit_edge.i268, %.preheader188.preheader.i
  %.4194.i = phi i32 [ %i.cby, %._crit_edge.i268 ], [ 0, %.preheader188.preheader.i ]
  %.2150193.i = phi ptr [ %.3151.i, %._crit_edge.i268 ], [ %i.bqj, %.preheader188.preheader.i ] ; 3 uses
  %.4156192.i = phi ptr [ %i.cbx, %._crit_edge.i268 ], [ %i.bqf, %.preheader188.preheader.i ] ; 2 uses
  %.4161191.i = phi ptr [ %i.cbw, %._crit_edge.i268 ], [ %i.bqb, %.preheader188.preheader.i ] ; 2 uses
  %i.byj = icmp eq ptr %.2150193.i, null          ; 2 uses
  br label %bb.kc

bb.kc:                                            ; preds = %blend_non_normal_pixel.exit.i265, %.preheader188.i
  %indvars.iv.i230 = phi i64 [ 0, %.preheader188.i ], [ %indvars.iv.next.i266, %blend_non_normal_pixel.exit.i265 ] ; 4 uses
  %i.byk = getelementptr inbounds nuw [2 x i8], ptr %.4156192.i, i64 %indvars.iv.i230 ; 2 uses
  %i.byl = load i8, ptr %i.byk, align 1, !tbaa !161 ; 4 uses
  %i.bym = getelementptr inbounds nuw i8, ptr %i.byk, i64 1
  %i.byn = load i8, ptr %i.bym, align 1, !tbaa !162
  %i.byo = zext i8 %i.byn to i32                  ; 2 uses
  br i1 %i.byj, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  %i.byp = mul nuw nsw i32 %i.byo, %i.byc
  %i.byq = lshr i32 %i.byp, 8
  br label %bb.kf

bb.ke:                                            ; preds = %bb.kc
  %i.byr = getelementptr inbounds nuw i8, ptr %.2150193.i, i64 %indvars.iv.i230
  %i.bys = load i8, ptr %i.byr, align 1, !tbaa !19
  %i.byt = zext i8 %i.bys to i32
  %i.byu = mul nuw nsw i32 %i.byo, %i.byc
  %i.byv = mul nuw nsw i32 %i.byu, %i.byt
  %i.byw = lshr i32 %i.byv, 16
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd
  %.sroa.6.0.i231 = phi i32 [ %i.byq, %bb.kd ], [ %i.byw, %bb.ke ]
  %i.byx = getelementptr inbounds nuw [4 x i8], ptr %.4161191.i, i64 %indvars.iv.i230 ; 14 uses
  %i.byy = load i32, ptr %i.bqm, align 4, !tbaa !31
  %.sroa.6.0.insert.shift.i232 = shl nuw i32 %.sroa.6.0.i231, 24
  %.sroa.5.0.insert.ext.i233 = zext i8 %i.byl to i32 ; 9 uses
  switch i32 %i.byy, label %blend_non_normal_pixel.exit.i265 [
    i32 1, label %bb.kg
    i32 2, label %bb.kh
    i32 3, label %bb.ki
    i32 4, label %bb.kj
  ]

bb.kg:                                            ; preds = %bb.kf
  %i.byz = getelementptr inbounds nuw i8, ptr %i.byx, i64 2
  %i.bza = load i8, ptr %i.byz, align 1, !tbaa !32
  %narrow223.i = call i8 @llvm.uadd.sat.i8(i8 %i.bza, i8 %i.byl)
  %spec.select.i.i277 = zext i8 %narrow223.i to i32
  %i.bzb = getelementptr inbounds nuw i8, ptr %i.byx, i64 1
  %i.bzc = load i8, ptr %i.bzb, align 1, !tbaa !33
  %narrow224.i = call i8 @llvm.uadd.sat.i8(i8 %i.bzc, i8 %i.byl)
  %12 = zext i8 %narrow224.i to i32
  %i.bzd = load i8, ptr %i.byx, align 1, !tbaa !34
  %narrow.i278 = call i8 @llvm.uadd.sat.i8(i8 %i.byl, i8 %i.bzd)
  %13 = zext i8 %narrow.i278 to i32
  br label %bb.kk

bb.kh:                                            ; preds = %bb.kf
  %i.bze = getelementptr inbounds nuw i8, ptr %i.byx, i64 2
  %i.bzf = load i8, ptr %i.bze, align 1, !tbaa !32
  %i.bzg = zext i8 %i.bzf to i32
  %i.bzh = sub nsw i32 %i.bzg, %.sroa.5.0.insert.ext.i233
  %spec.select60.i.i274 = call i32 @llvm.smax.i32(i32 %i.bzh, i32 0)
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.byx, i64 1
  %i.bzj = load i8, ptr %i.bzi, align 1, !tbaa !33
  %i.bzk = zext i8 %i.bzj to i32
  %i.bzl = sub nsw i32 %i.bzk, %.sroa.5.0.insert.ext.i233
  %i.bzm = call i32 @llvm.smax.i32(i32 %i.bzl, i32 0)
  %i.bzn = load i8, ptr %i.byx, align 1, !tbaa !34
  %i.bzo = zext i8 %i.bzn to i32
  %i.bzp = sub nsw i32 %i.bzo, %.sroa.5.0.insert.ext.i233
  %i.bzq = call i32 @llvm.smax.i32(i32 %i.bzp, i32 0)
  br label %bb.kk

bb.ki:                                            ; preds = %bb.kf
  %i.bzr = getelementptr inbounds nuw i8, ptr %i.byx, i64 2
  %i.bzs = load i8, ptr %i.bzr, align 1, !tbaa !32
  %i.bzt = zext i8 %i.bzs to i32
  %i.bzu = mul nuw nsw i32 %i.bzt, %.sroa.5.0.insert.ext.i233
  %i.bzv = lshr i32 %i.bzu, 8
  %i.bzw = getelementptr inbounds nuw i8, ptr %i.byx, i64 1
  %i.bzx = load i8, ptr %i.bzw, align 1, !tbaa !33
  %i.bzy = zext i8 %i.bzx to i32
  %i.bzz = mul nuw nsw i32 %i.bzy, %.sroa.5.0.insert.ext.i233
  %i.caa = lshr i32 %i.bzz, 8
  %i.cab = load i8, ptr %i.byx, align 1, !tbaa !34
  %i.cac = zext i8 %i.cab to i32
  %i.cad = mul nuw nsw i32 %i.cac, %.sroa.5.0.insert.ext.i233
  %i.cae = lshr i32 %i.cad, 8
  br label %bb.kk

bb.kj:                                            ; preds = %bb.kf
  %i.caf = getelementptr inbounds nuw i8, ptr %i.byx, i64 2
  %i.cag = load i8, ptr %i.caf, align 1, !tbaa !32
  %i.cah = zext i8 %i.cag to i32
  %i.cai = sub nsw i32 %i.cah, %.sroa.5.0.insert.ext.i233
  %i.caj = call i32 @llvm.abs.i32(i32 %i.cai, i1 true)
  %i.cak = getelementptr inbounds nuw i8, ptr %i.byx, i64 1
  %i.cal = load i8, ptr %i.cak, align 1, !tbaa !33
  %i.cam = zext i8 %i.cal to i32
  %i.can = sub nsw i32 %i.cam, %.sroa.5.0.insert.ext.i233
  %i.cao = call i32 @llvm.abs.i32(i32 %i.can, i1 true)
  %i.cap = load i8, ptr %i.byx, align 1, !tbaa !34
  %i.caq = zext i8 %i.cap to i32
  %i.car = sub nsw i32 %i.caq, %.sroa.5.0.insert.ext.i233
  %i.cas = call i32 @llvm.abs.i32(i32 %i.car, i1 true)
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.ki, %bb.kh, %bb.kg
  %.sroa.11.0.i.i234 = phi i32 [ %spec.select.i.i277, %bb.kg ], [ %spec.select60.i.i274, %bb.kh ], [ %i.bzv, %bb.ki ], [ %i.caj, %bb.kj ]
  %.sroa.7.0.i.i235 = phi i32 [ %12, %bb.kg ], [ %i.bzm, %bb.kh ], [ %i.caa, %bb.ki ], [ %i.cao, %bb.kj ]
  %.sroa.01.0.i.i236 = phi i32 [ %13, %bb.kg ], [ %i.bzq, %bb.kh ], [ %i.cae, %bb.ki ], [ %i.cas, %bb.kj ]
  %.sroa.11.0.insert.ext.i.i237 = shl nuw nsw i32 %.sroa.11.0.i.i234, 16
  %.sroa.11.0.insert.shift.i.i238 = and i32 %.sroa.11.0.insert.ext.i.i237, 16711680
  %.sroa.11.0.insert.insert.i.i239 = or disjoint i32 %.sroa.11.0.insert.shift.i.i238, %.sroa.6.0.insert.shift.i232
  %.sroa.7.0.insert.ext.i.i240 = shl nuw nsw i32 %.sroa.7.0.i.i235, 8
  %.sroa.7.0.insert.shift.i.i241 = and i32 %.sroa.7.0.insert.ext.i.i240, 65280
  %.sroa.7.0.insert.insert.i.i242 = add nuw nsw i32 %.sroa.11.0.insert.insert.i.i239, %.sroa.01.0.i.i236 ; 4 uses
  %.sroa.01.0.insert.insert.i.i243 = or disjoint i32 %.sroa.7.0.insert.insert.i.i242, %.sroa.7.0.insert.shift.i.i241 ; 5 uses
  %i.cat = load i32, ptr %i.byx, align 1          ; 7 uses
  %.sroa.045.0.extract.trunc.i.i244 = trunc i32 %.sroa.01.0.insert.insert.i.i243 to i24
  %.sroa.654.0.extract.shift.i.i245 = lshr i32 %.sroa.7.0.insert.insert.i.i242, 24 ; 4 uses
  %.sroa.6.0.extract.shift.i.i246 = lshr i32 %i.cat, 24 ; 4 uses
  %i.cau = icmp ugt i32 %.sroa.7.0.insert.insert.i.i242, -50331649
  %i.cav = icmp ult i32 %i.cat, 50331648
  %or.cond.i.i247 = select i1 %i.cau, i1 true, i1 %i.cav
  br i1 %or.cond.i.i247, label %lv_color_32_32_mix.exit.i259, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %.sroa.018.0.extract.trunc.i.i248 = trunc i32 %i.cat to i24
  %i.caw = icmp ult i32 %.sroa.7.0.insert.insert.i.i242, 50331648
  br i1 %i.caw, label %lv_color_32_32_mix.exit.i259, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.cax = icmp eq i32 %.sroa.6.0.extract.shift.i.i246, 255
  br i1 %i.cax, label %bb.kn, label %bb.ko

bb.kn:                                            ; preds = %bb.km
  %i.cay = call i32 @lv_color_mix32(i32 %.sroa.01.0.insert.insert.i.i243, i32 %i.cat) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i.i272 = trunc i32 %i.cay to i24
  %.sroa.5.0.extract.shift.i.i273 = lshr i32 %i.cay, 24
  br label %lv_color_32_32_mix.exit.i259

bb.ko:                                            ; preds = %bb.km
  %i.caz = load i8, ptr %i.byd, align 1, !tbaa !18
  %i.cba = zext i8 %i.caz to i32
  %.not.i.i249 = icmp eq i32 %.sroa.6.0.extract.shift.i.i246, %i.cba
  %i.cbb = load i8, ptr %i.bye, align 1
  %i.cbc = zext i8 %i.cbb to i32
  %.not77.i.i250 = icmp eq i32 %.sroa.654.0.extract.shift.i.i245, %i.cbc
  %or.cond177.i = select i1 %.not.i.i249, i1 %.not77.i.i250, i1 false
  br i1 %or.cond177.i, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.cbd = xor i32 %.sroa.654.0.extract.shift.i.i245, 255
  %i.cbe = xor i32 %.sroa.6.0.extract.shift.i.i246, 255
  %i.cbf = mul nuw nsw i32 %i.cbd, %i.cbe
  %i.cbg = lshr i32 %i.cbf, 8
  %i.cbh = trunc nuw i32 %i.cbg to i8
  %i.cbi = xor i8 %i.cbh, -1                      ; 2 uses
  store i8 %i.cbi, ptr %i.bxy, align 4, !tbaa !13
  %i.cbj = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i.i245 to i16
  %.lhs.trunc.i.i251 = mul nuw i16 %i.cbj, 255
  %.rhs.trunc.i.i252 = zext i8 %i.cbi to i16
  %i.cbk = udiv i16 %.lhs.trunc.i.i251, %.rhs.trunc.i.i252
  %i.cbl = trunc i16 %i.cbk to i8
  store i8 %i.cbl, ptr %i.bxz, align 1, !tbaa !14
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %i.cbm = load i32, ptr %i.bxw, align 4
  %i.cbn = call zeroext i1 @lv_color32_eq(i32 %i.cat, i32 %i.cbm) #7
  br i1 %i.cbn, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.cbo = load i32, ptr %2, align 4
  %i.cbp = call zeroext i1 @lv_color32_eq(i32 %.sroa.01.0.insert.insert.i.i243, i32 %i.cbo) #7
  br i1 %i.cbp, label %._crit_edge.i.i269, label %bb.ks

._crit_edge.i.i269:                               ; preds = %bb.kr
  %.sroa.074.0.copyload.pre.i.i270 = load i24, ptr %i.bxx, align 4
  %.sroa.5.0.copyload.pre.i.i271 = load i8, ptr %i.byf, align 1, !tbaa !19
  br label %bb.kt

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  store i32 %.sroa.01.0.insert.insert.i.i243, ptr %2, align 4
  store i32 %i.cat, ptr %i.bxw, align 4
  %i.cbq = load i8, ptr %i.bxz, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i.i253 = zext i8 %i.cbq to i32
  %.sroa.654.0.insert.shift64.i.i254 = shl nuw i32 %.sroa.654.0.insert.ext63.i.i253, 24
  %.sroa.045.0.insert.ext51.i.i255 = and i32 %.sroa.01.0.insert.insert.i.i243, 16777215
  %.sroa.045.0.insert.insert53.i.i256 = or disjoint i32 %.sroa.654.0.insert.shift64.i.i254, %.sroa.045.0.insert.ext51.i.i255
  %i.cbr = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i.i256, i32 %i.cat) #7 ; 2 uses
  store i32 %i.cbr, ptr %i.bxx, align 4
  %i.cbs = load i8, ptr %i.bxy, align 4, !tbaa !13 ; 2 uses
  store i8 %i.cbs, ptr %i.byf, align 1, !tbaa !20
  %i.cbt = trunc i32 %i.cbr to i24
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %._crit_edge.i.i269
  %.sroa.5.0.copyload.i.i257 = phi i8 [ %.sroa.5.0.copyload.pre.i.i271, %._crit_edge.i.i269 ], [ %i.cbs, %bb.ks ]
  %.sroa.074.0.copyload.i.i258 = phi i24 [ %.sroa.074.0.copyload.pre.i.i270, %._crit_edge.i.i269 ], [ %i.cbt, %bb.ks ]
  %i.cbu = zext i8 %.sroa.5.0.copyload.i.i257 to i32
  br label %lv_color_32_32_mix.exit.i259

lv_color_32_32_mix.exit.i259:                     ; preds = %bb.kt, %bb.kn, %bb.kl, %bb.kk
  %.sroa.074.0.i.i260 = phi i24 [ %.sroa.074.0.copyload.i.i258, %bb.kt ], [ %.sroa.045.0.extract.trunc.i.i244, %bb.kk ], [ %.sroa.074.0.extract.trunc.i.i272, %bb.kn ], [ %.sroa.018.0.extract.trunc.i.i248, %bb.kl ]
  %.sroa.5.0.i.i261 = phi i32 [ %i.cbu, %bb.kt ], [ %.sroa.654.0.extract.shift.i.i245, %bb.kk ], [ %.sroa.5.0.extract.shift.i.i273, %bb.kn ], [ %.sroa.6.0.extract.shift.i.i246, %bb.kl ]
  %.sroa.5.0.insert.shift.i.i262 = shl nuw i32 %.sroa.5.0.i.i261, 24
  %.sroa.074.0.insert.ext.i.i263 = zext i24 %.sroa.074.0.i.i260 to i32
  %.sroa.074.0.insert.insert.i.i264 = or disjoint i32 %.sroa.5.0.insert.shift.i.i262, %.sroa.074.0.insert.ext.i.i263
  store i32 %.sroa.074.0.insert.insert.i.i264, ptr %i.byx, align 1
  br label %blend_non_normal_pixel.exit.i265

blend_non_normal_pixel.exit.i265:                 ; preds = %lv_color_32_32_mix.exit.i259, %bb.kf
  %indvars.iv.next.i266 = add nuw nsw i64 %indvars.iv.i230, 1 ; 2 uses
  %exitcond.not.i267 = icmp eq i64 %indvars.iv.next.i266, %wide.trip.count.i229
  br i1 %exitcond.not.i267, label %._crit_edge.i268, label %bb.kc, !llvm.loop !137

._crit_edge.i268:                                 ; preds = %blend_non_normal_pixel.exit.i265
  %i.cbv = getelementptr inbounds i8, ptr %.2150193.i, i64 %i.byg
  %.3151.i = select i1 %i.byj, ptr null, ptr %i.cbv
  %i.cbw = getelementptr inbounds nuw i8, ptr %.4161191.i, i64 %i.byh
  %i.cbx = getelementptr inbounds nuw i8, ptr %.4156192.i, i64 %i.byi
  %i.cby = add nuw nsw i32 %.4194.i, 1            ; 2 uses
  %exitcond229.not.i.a = icmp eq i32 %i.cby, %i.bpy
  br i1 %exitcond229.not.i.a, label %._crit_edge195.split.i, label %.preheader188.i, !llvm.loop !138

._crit_edge195.split.i:                           ; preds = %._crit_edge.i268, %.preheader188.lr.ph.i, %bb.kb
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %l8_image_blend.exit

bb.ku:                                            ; preds = %bb.a
  %i.cbz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cca = load i32, ptr %i.cbz, align 8, !tbaa !22 ; 12 uses
  %i.ccb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ccc = load i32, ptr %i.ccb, align 4, !tbaa !23 ; 10 uses
  %i.ccd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cce = load i8, ptr %i.ccd, align 8, !tbaa !24 ; 8 uses
  %i.ccf = load ptr, ptr %0, align 8, !tbaa !25   ; 5 uses
  %i.ccg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cch = load i32, ptr %i.ccg, align 8, !tbaa !26 ; 5 uses
  %i.cci = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ccj = load ptr, ptr %i.cci, align 8, !tbaa !27 ; 5 uses
  %i.cck = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ccl = load i32, ptr %i.cck, align 8, !tbaa !28 ; 5 uses
  %i.ccm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ccn = load ptr, ptr %i.ccm, align 8, !tbaa !29 ; 5 uses
  %i.cco = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ccp = load i32, ptr %i.cco, align 8, !tbaa !30 ; 3 uses
  %i.ccq = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ccr = load i32, ptr %i.ccq, align 4, !tbaa !31
  %i.ccs = icmp eq i32 %i.ccr, 0
  br i1 %i.ccs, label %bb.kv, label %bb.lh

bb.kv:                                            ; preds = %bb.ku
  %i.cct = icmp eq ptr %i.ccn, null               ; 2 uses
  %i.ccu = zext i8 %i.cce to i16
  %i.ccv = icmp ugt i8 %i.cce, -4                 ; 2 uses
  %or.cond.i339 = select i1 %i.cct, i1 %i.ccv, i1 false
  br i1 %or.cond.i339, label %.preheader176.i365, label %bb.kw

.preheader176.i365:                               ; preds = %bb.kv
  %i.ccw = icmp sgt i32 %i.ccc, 0
  br i1 %i.ccw, label %.preheader.lr.ph.i366, label %l8_image_blend.exit

.preheader.lr.ph.i366:                            ; preds = %.preheader176.i365
  %i.ccx = icmp sgt i32 %i.cca, 0
  %i.ccy = zext i32 %i.cch to i64
  %i.ccz = zext i32 %i.ccl to i64
  br i1 %i.ccx, label %.preheader.preheader.i367, label %l8_image_blend.exit

.preheader.preheader.i367:                        ; preds = %.preheader.lr.ph.i366
  %wide.trip.count259.i368 = zext nneg i32 %i.cca to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count259.i368, 1
  %i.cda = icmp eq i32 %i.cca, 1
  %unroll_iter = and i64 %wide.trip.count259.i368, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod729 = trunc i32 %i.cca to i1
  br label %.preheader.i369

.preheader.i369:                                  ; preds = %._crit_edge217.i, %.preheader.preheader.i367
  %.0220.i = phi ptr [ %i.ced, %._crit_edge217.i ], [ %i.ccf, %.preheader.preheader.i367 ] ; 4 uses
  %.0136219.i = phi i32 [ %i.cef, %._crit_edge217.i ], [ 0, %.preheader.preheader.i367 ]
  %.0155218.i = phi ptr [ %i.cee, %._crit_edge217.i ], [ %i.ccj, %.preheader.preheader.i367 ] ; 4 uses
  br i1 %i.cda, label %.epil.preheader, label %.preheader.i369.new

.preheader.i369.new:                              ; preds = %.preheader.i369, %.preheader.i369.new
  %indvars.iv254.i370 = phi i64 [ %indvars.iv.next255.i371.1, %.preheader.i369.new ], [ 0, %.preheader.i369 ] ; 7 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i369.new ], [ 0, %.preheader.i369 ]
  %indvars256.i = trunc i64 %indvars.iv254.i370 to i8
  %i.cdb = lshr i64 %indvars.iv254.i370, 3
  %i.cdc = and i64 %i.cdb, 536870911
  %i.cdd = getelementptr inbounds nuw i8, ptr %.0155218.i, i64 %i.cdc
  %i.cde = load i8, ptr %i.cdd, align 1, !tbaa !19
  %i.cdf = and i8 %indvars256.i, 6
  %i.cdg = xor i8 %i.cdf, 7
  %i.cdh = lshr i8 %i.cde, %i.cdg
  %i.cdi = and i8 %i.cdh, 1
  %narrow166.i = sub nsw i8 0, %i.cdi
  %i.cdj = getelementptr inbounds nuw [4 x i8], ptr %.0220.i, i64 %indvars.iv254.i370
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.cdj, i8 %narrow166.i, i64 4, i1 false)
  %indvars256.i.1 = trunc i64 %indvars.iv254.i370 to i8
  %i.cdk = lshr i64 %indvars.iv254.i370, 3
  %i.cdl = and i64 %i.cdk, 536870911
  %i.cdm = getelementptr inbounds nuw i8, ptr %.0155218.i, i64 %i.cdl
  %i.cdn = load i8, ptr %i.cdm, align 1, !tbaa !19
  %i.cdo = and i8 %indvars256.i.1, 6
  %i.cdp = xor i8 %i.cdo, 6
  %i.cdq = lshr i8 %i.cdn, %i.cdp
  %i.cdr = and i8 %i.cdq, 1
  %narrow166.i.1 = sub nsw i8 0, %i.cdr
end_hunk_2
begin_hunk_3_@rgb888_image_blend:bb.a
bb.w:                                             ; preds = %._crit_edge.i266.us, %bb.v
  %.sroa.5.0.copyload.i259.us = phi i8 [ %.sroa.5.0.copyload.pre.i270.us, %._crit_edge.i266.us ], [ %i.gf, %bb.v ]
  %.sroa.074.0.copyload.i260.us = phi i24 [ %.sroa.074.0.copyload.pre.i268.us, %._crit_edge.i266.us ], [ %i.gg, %bb.v ]
  %i.gh = zext i8 %.sroa.5.0.copyload.i259.us to i32
  br label %lv_color_32_32_mix.exit274.us

bb.x:                                             ; preds = %bb.q
  %i.gi = call i32 @lv_color_mix32(i32 %.sroa.071.0.insert.insert75.us, i32 %i.fi) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i272.us = trunc i32 %i.gi to i24
  %.sroa.5.0.extract.shift.i273.us = lshr i32 %i.gi, 24
  br label %lv_color_32_32_mix.exit274.us

lv_color_32_32_mix.exit274.us:                    ; preds = %bb.x, %bb.w, %bb.p, %bb.o
  %.sroa.074.0.i261.us = phi i24 [ %.sroa.074.0.copyload.i260.us, %bb.w ], [ %.sroa.045.0.extract.trunc.i247.us, %bb.o ], [ %.sroa.074.0.extract.trunc.i272.us, %bb.x ], [ %.sroa.018.0.extract.trunc.i251.us, %bb.p ]
  %.sroa.5.0.i262.us = phi i32 [ %i.gh, %bb.w ], [ %.sroa.14.0.insert.ext101.us, %bb.o ], [ %.sroa.5.0.extract.shift.i273.us, %bb.x ], [ %.sroa.6.0.extract.shift.i249.us, %bb.p ]
  %.sroa.5.0.insert.shift.i263.us = shl nuw i32 %.sroa.5.0.i262.us, 24
  %.sroa.074.0.insert.ext.i264.us = zext i24 %.sroa.074.0.i261.us to i32
  %.sroa.074.0.insert.insert.i265.us = or disjoint i32 %.sroa.5.0.insert.shift.i263.us, %.sroa.074.0.insert.ext.i264.us
  store i32 %.sroa.074.0.insert.insert.i265.us, ptr %i.fh, align 1
  %indvars.iv.next504.a = add nuw nsw i64 %indvars.iv503.a, 1 ; 2 uses
  %indvars.iv.next502 = add nuw nsw i64 %indvars.iv501, %i.ez
  %exitcond509.not = icmp eq i64 %indvars.iv.next504.a, %wide.trip.count508
  br i1 %exitcond509.not, label %._crit_edge411.us, label %bb.o, !llvm.loop !168

._crit_edge411.us:                                ; preds = %lv_color_32_32_mix.exit274.us
  %i.gj = getelementptr inbounds nuw i8, ptr %.5239412.us, i64 %i.es ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.5233413.us, i64 %i.et ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %.0223414.us, i64 %i.eu ; 2 uses
  %i.gm = add nuw nsw i32 %.3415.us, 1            ; 2 uses
  %exitcond510.not = icmp eq i32 %i.gm, %i.d
  br i1 %exitcond510.not, label %.loopexit346, label %.preheader344.us, !llvm.loop !169

.loopexit346:                                     ; preds = %._crit_edge411.us, %.preheader344.preheader, %.loopexit349
  %.6240 = phi ptr [ %.4238, %.loopexit349 ], [ %scevgep498, %.preheader344.preheader ], [ %i.gj, %._crit_edge411.us ]
  %.6 = phi ptr [ %.4232, %.loopexit349 ], [ %scevgep499, %.preheader344.preheader ], [ %i.gk, %._crit_edge411.us ]
  %.1224 = phi ptr [ %i.o, %.loopexit349 ], [ %scevgep500, %.preheader344.preheader ], [ %i.gl, %._crit_edge411.us ] ; 2 uses
  %i.gn = icmp ne ptr %.1224, null
  %or.cond11 = and i1 %i.gn, %i.ci
  %or.cond433 = select i1 %or.cond11, i1 %i.cj, i1 false
  br i1 %or.cond433, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.loopexit346
  %i.go = icmp sgt i32 %i.b, 0
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %i.gs = zext i32 %i.i to i64
  %i.gt = zext i32 %i.m to i64
  %i.gu = sext i32 %i.q to i64
  br i1 %i.go, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.gv = zext nneg i8 %1 to i64
  %wide.trip.count518 = zext nneg i32 %i.b to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge425
  %.4429 = phi i32 [ %i.in, %._crit_edge425 ], [ 0, %.preheader.preheader ]
  %.2225428 = phi ptr [ %i.im, %._crit_edge425 ], [ %.1224, %.preheader.preheader ] ; 2 uses
  %.7427 = phi ptr [ %i.il, %._crit_edge425 ], [ %.6, %.preheader.preheader ] ; 2 uses
  %.7241426 = phi ptr [ %i.ik, %._crit_edge425 ], [ %.6240, %.preheader.preheader ] ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.preheader, %lv_color_32_32_mix.exit302
  %indvars.iv513.a = phi i64 [ 0, %.preheader ], [ %indvars.iv.next514.a, %lv_color_32_32_mix.exit302 ] ; 3 uses
  %indvars.iv511 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next512, %lv_color_32_32_mix.exit302 ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.2225428, i64 %indvars.iv513.a
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !19
  %i.gy = zext i8 %i.gx to i32
  %i.gz = mul nuw nsw i32 %i.gy, %i.aj            ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.7427, i64 %indvars.iv511 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 2
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !19
  %i.hd = load i16, ptr %i.ha, align 1
  %i.he = zext i16 %i.hd to i32
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.7241426, i64 %indvars.iv513.a ; 2 uses
  %.sroa.11.0.insert.ext96 = zext i8 %i.hc to i32
  %i.hg = and i32 %i.gz, 65280
  %i.hh = or disjoint i32 %i.hg, %.sroa.11.0.insert.ext96
  %.sroa.11.0.insert.insert99 = shl nuw i32 %i.hh, 16
  %.sroa.071.0.insert.insert79 = or disjoint i32 %.sroa.11.0.insert.insert99, %i.he ; 5 uses
  %i.hi = load i32, ptr %i.hf, align 1            ; 7 uses
  %.sroa.045.0.extract.trunc.i275 = trunc i32 %.sroa.071.0.insert.insert79 to i24
  %.sroa.654.0.extract.shift.i276 = lshr i32 %i.gz, 8 ; 4 uses
  %.sroa.6.0.extract.shift.i277 = lshr i32 %i.hi, 24 ; 4 uses
  %i.hj = icmp samesign ugt i32 %i.gz, 64767
  %i.hk = icmp ult i32 %i.hi, 50331648
  %or.cond.i278 = select i1 %i.hj, i1 true, i1 %i.hk
  br i1 %or.cond.i278, label %lv_color_32_32_mix.exit302, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.018.0.extract.trunc.i279 = trunc i32 %i.hi to i24
  %i.hl = icmp samesign ult i32 %i.gz, 768
  br i1 %i.hl, label %lv_color_32_32_mix.exit302, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hm = icmp eq i32 %.sroa.6.0.extract.shift.i277, 255
  br i1 %i.hm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hn = call i32 @lv_color_mix32(i32 %.sroa.071.0.insert.insert79, i32 %i.hi) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i300 = trunc i32 %i.hn to i24
  %.sroa.5.0.extract.shift.i301 = lshr i32 %i.hn, 24
  br label %lv_color_32_32_mix.exit302

bb.ac:                                            ; preds = %bb.aa
  %i.ho = load i8, ptr %i.gp, align 1, !tbaa !18
  %i.hp = zext i8 %i.ho to i32
  %.not.i280 = icmp eq i32 %.sroa.6.0.extract.shift.i277, %i.hp
  %i.hq = load i8, ptr %i.gq, align 1
  %i.hr = zext i8 %i.hq to i32
  %.not77.i299 = icmp eq i32 %.sroa.654.0.extract.shift.i276, %i.hr
  %or.cond339 = select i1 %.not.i280, i1 %.not77.i299, i1 false
  br i1 %or.cond339, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hs = xor i32 %.sroa.654.0.extract.shift.i276, 255
  %i.ht = xor i32 %.sroa.6.0.extract.shift.i277, 255
  %i.hu = mul nuw nsw i32 %i.ht, %i.hs
  %i.hv = lshr i32 %i.hu, 8
  %i.hw = trunc nuw i32 %i.hv to i8
  %i.hx = xor i8 %i.hw, -1                        ; 2 uses
  store i8 %i.hx, ptr %i.t, align 4, !tbaa !13
  %i.hy = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i276 to i16
  %.lhs.trunc.i281 = mul nuw i16 %i.hy, 255
  %.rhs.trunc.i282 = zext i8 %i.hx to i16
  %i.hz = udiv i16 %.lhs.trunc.i281, %.rhs.trunc.i282
  %i.ia = trunc i16 %i.hz to i8
  store i8 %i.ia, ptr %i.u, align 1, !tbaa !14
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.ib = load i32, ptr %i.r, align 4
  %i.ic = call zeroext i1 @lv_color32_eq(i32 %i.hi, i32 %i.ib) #7
  br i1 %i.ic, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.id = load i32, ptr %2, align 4
  %i.ie = call zeroext i1 @lv_color32_eq(i32 %.sroa.071.0.insert.insert79, i32 %i.id) #7
  br i1 %i.ie, label %._crit_edge.i294, label %bb.ag

._crit_edge.i294:                                 ; preds = %bb.af
  %.sroa.074.0.copyload.pre.i296 = load i24, ptr %i.s, align 4
  %.sroa.5.0.copyload.pre.i298 = load i8, ptr %i.gr, align 1, !tbaa !19
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store i32 %.sroa.071.0.insert.insert79, ptr %2, align 4
  store i32 %i.hi, ptr %i.r, align 4
  %i.if = load i8, ptr %i.u, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i283 = zext i8 %i.if to i32
  %.sroa.654.0.insert.shift64.i284 = shl nuw i32 %.sroa.654.0.insert.ext63.i283, 24
  %.sroa.045.0.insert.ext51.i285 = and i32 %.sroa.071.0.insert.insert79, 16777215
  %.sroa.045.0.insert.insert53.i286 = or disjoint i32 %.sroa.654.0.insert.shift64.i284, %.sroa.045.0.insert.ext51.i285
  %i.ig = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i286, i32 %i.hi) #7 ; 2 uses
  store i32 %i.ig, ptr %i.s, align 4
  %i.ih = load i8, ptr %i.t, align 4, !tbaa !13   ; 2 uses
  store i8 %i.ih, ptr %i.gr, align 1, !tbaa !20
  %i.ii = trunc i32 %i.ig to i24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge.i294
  %.sroa.5.0.copyload.i287 = phi i8 [ %.sroa.5.0.copyload.pre.i298, %._crit_edge.i294 ], [ %i.ih, %bb.ag ]
  %.sroa.074.0.copyload.i288 = phi i24 [ %.sroa.074.0.copyload.pre.i296, %._crit_edge.i294 ], [ %i.ii, %bb.ag ]
  %i.ij = zext i8 %.sroa.5.0.copyload.i287 to i32
  br label %lv_color_32_32_mix.exit302

lv_color_32_32_mix.exit302:                       ; preds = %bb.y, %bb.z, %bb.ab, %bb.ah
  %.sroa.074.0.i289 = phi i24 [ %.sroa.074.0.copyload.i288, %bb.ah ], [ %.sroa.045.0.extract.trunc.i275, %bb.y ], [ %.sroa.074.0.extract.trunc.i300, %bb.ab ], [ %.sroa.018.0.extract.trunc.i279, %bb.z ]
  %.sroa.5.0.i290 = phi i32 [ %i.ij, %bb.ah ], [ %.sroa.654.0.extract.shift.i276, %bb.y ], [ %.sroa.5.0.extract.shift.i301, %bb.ab ], [ %.sroa.6.0.extract.shift.i277, %bb.z ]
  %.sroa.5.0.insert.shift.i291 = shl nuw i32 %.sroa.5.0.i290, 24
  %.sroa.074.0.insert.ext.i292 = zext i24 %.sroa.074.0.i289 to i32
  %.sroa.074.0.insert.insert.i293 = or disjoint i32 %.sroa.5.0.insert.shift.i291, %.sroa.074.0.insert.ext.i292
  store i32 %.sroa.074.0.insert.insert.i293, ptr %i.hf, align 1
  %indvars.iv.next514.a = add nuw nsw i64 %indvars.iv513.a, 1 ; 2 uses
  %indvars.iv.next512 = add nuw nsw i64 %indvars.iv511, %i.gv
  %exitcond519.not = icmp eq i64 %indvars.iv.next514.a, %wide.trip.count518
  br i1 %exitcond519.not, label %._crit_edge425, label %bb.y, !llvm.loop !170

._crit_edge425:                                   ; preds = %lv_color_32_32_mix.exit302
  %i.ik = getelementptr inbounds nuw i8, ptr %.7241426, i64 %i.gs
  %i.il = getelementptr inbounds nuw i8, ptr %.7427, i64 %i.gt
  %i.im = getelementptr inbounds i8, ptr %.2225428, i64 %i.gu
  %i.in = add nuw nsw i32 %.4429, 1               ; 2 uses
  %exitcond520.not = icmp eq i32 %i.in, %i.d
  br i1 %exitcond520.not, label %.loopexit, label %.preheader, !llvm.loop !171

.preheader354:                                    ; preds = %.preheader354.preheader, %._crit_edge
  %.5362 = phi i32 [ %i.mc, %._crit_edge ], [ 0, %.preheader354.preheader ]
  %.3226361 = phi ptr [ %.4227, %._crit_edge ], [ %i.o, %.preheader354.preheader ] ; 3 uses
  %.8360 = phi ptr [ %i.mb, %._crit_edge ], [ %i.k, %.preheader354.preheader ] ; 2 uses
  %.8242359 = phi ptr [ %i.ma, %._crit_edge ], [ %i.g, %.preheader354.preheader ] ; 2 uses
  %i.io = icmp eq ptr %.3226361, null             ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.preheader354, %blend_non_normal_pixel.exit
  %indvars.iv458 = phi i64 [ 0, %.preheader354 ], [ %indvars.iv.next459, %blend_non_normal_pixel.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.preheader354 ], [ %indvars.iv.next, %blend_non_normal_pixel.exit ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.8360, i64 %indvars.iv ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 2
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !19  ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  %i.it = load i8, ptr %i.is, align 1, !tbaa !19  ; 2 uses
  %i.iu = load i8, ptr %i.ip, align 1, !tbaa !19  ; 2 uses
  br i1 %i.io, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.iv = getelementptr inbounds nuw i8, ptr %.3226361, i64 %indvars.iv458
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !19
  %i.ix = zext i8 %i.iw to i16
  %i.iy = mul nuw i16 %i.ix, %i.aa
  %i.iz = lshr i16 %i.iy, 8
  %i.ja = trunc nuw i16 %i.iz to i8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.sroa.6.0 = phi i8 [ %i.ja, %bb.aj ], [ %.fr434, %bb.ai ]
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.8242359, i64 %indvars.iv458 ; 14 uses
  %i.jc = load i32, ptr %i.v, align 4, !tbaa !31
  %.sroa.6.0.insert.ext = zext i8 %.sroa.6.0 to i32
  %.sroa.6.0.insert.shift = shl nuw i32 %.sroa.6.0.insert.ext, 24
  %.sroa.5.0.insert.ext = zext i8 %i.ir to i32    ; 3 uses
  %.sroa.4.0.insert.ext = zext i8 %i.it to i32    ; 3 uses
  %.sroa.0.0.insert.ext = zext i8 %i.iu to i32    ; 3 uses
  switch i32 %i.jc, label %blend_non_normal_pixel.exit [
    i32 1, label %bb.al
    i32 2, label %bb.am
    i32 3, label %bb.an
    i32 4, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !32
  %narrow434 = call i8 @llvm.uadd.sat.i8(i8 %i.je, i8 %i.ir)
  %spec.select.i = zext i8 %narrow434 to i32
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !33
  %narrow435 = call i8 @llvm.uadd.sat.i8(i8 %i.jg, i8 %i.it)
  %3 = zext i8 %narrow435 to i32
  %i.jh = load i8, ptr %i.jb, align 1, !tbaa !34
  %narrow = call i8 @llvm.uadd.sat.i8(i8 %i.iu, i8 %i.jh)
  %4 = zext i8 %narrow to i32
  br label %bb.ap

bb.am:                                            ; preds = %bb.ak
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !32
  %i.jk = zext i8 %i.jj to i32
  %i.jl = sub nsw i32 %i.jk, %.sroa.5.0.insert.ext
  %spec.select60.i = call i32 @llvm.smax.i32(i32 %i.jl, i32 0)
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !33
  %i.jo = zext i8 %i.jn to i32
  %i.jp = sub nsw i32 %i.jo, %.sroa.4.0.insert.ext
  %i.jq = call i32 @llvm.smax.i32(i32 %i.jp, i32 0)
  %i.jr = load i8, ptr %i.jb, align 1, !tbaa !34
  %i.js = zext i8 %i.jr to i32
  %i.jt = sub nsw i32 %i.js, %.sroa.0.0.insert.ext
  %i.ju = call i32 @llvm.smax.i32(i32 %i.jt, i32 0)
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !32
  %i.jx = zext i8 %i.jw to i32
  %i.jy = mul nuw nsw i32 %i.jx, %.sroa.5.0.insert.ext
  %i.jz = lshr i32 %i.jy, 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !33
  %i.kc = zext i8 %i.kb to i32
  %i.kd = mul nuw nsw i32 %i.kc, %.sroa.4.0.insert.ext
  %i.ke = lshr i32 %i.kd, 8
  %i.kf = load i8, ptr %i.jb, align 1, !tbaa !34
  %i.kg = zext i8 %i.kf to i32
  %i.kh = mul nuw nsw i32 %i.kg, %.sroa.0.0.insert.ext
  %i.ki = lshr i32 %i.kh, 8
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !32
  %i.kl = zext i8 %i.kk to i32
  %i.km = sub nsw i32 %i.kl, %.sroa.5.0.insert.ext
  %i.kn = call i32 @llvm.abs.i32(i32 %i.km, i1 true)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !33
  %i.kq = zext i8 %i.kp to i32
  %i.kr = sub nsw i32 %i.kq, %.sroa.4.0.insert.ext
  %i.ks = call i32 @llvm.abs.i32(i32 %i.kr, i1 true)
  %i.kt = load i8, ptr %i.jb, align 1, !tbaa !34
  %i.ku = zext i8 %i.kt to i32
  %i.kv = sub nsw i32 %i.ku, %.sroa.0.0.insert.ext
  %i.kw = call i32 @llvm.abs.i32(i32 %i.kv, i1 true)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al
  %.sroa.11.0.i = phi i32 [ %spec.select.i, %bb.al ], [ %spec.select60.i, %bb.am ], [ %i.jz, %bb.an ], [ %i.kn, %bb.ao ]
  %.sroa.7.0.i = phi i32 [ %3, %bb.al ], [ %i.jq, %bb.am ], [ %i.ke, %bb.an ], [ %i.ks, %bb.ao ]
  %.sroa.01.0.i = phi i32 [ %4, %bb.al ], [ %i.ju, %bb.am ], [ %i.ki, %bb.an ], [ %i.kw, %bb.ao ]
  %.sroa.11.0.insert.ext.i = shl nuw nsw i32 %.sroa.11.0.i, 16
  %.sroa.11.0.insert.shift.i = and i32 %.sroa.11.0.insert.ext.i, 16711680
  %.sroa.11.0.insert.insert.i = or disjoint i32 %.sroa.11.0.insert.shift.i, %.sroa.6.0.insert.shift
  %.sroa.7.0.insert.ext.i = shl nuw nsw i32 %.sroa.7.0.i, 8
  %.sroa.7.0.insert.shift.i = and i32 %.sroa.7.0.insert.ext.i, 65280
  %.sroa.7.0.insert.insert.i = add nuw nsw i32 %.sroa.11.0.insert.insert.i, %.sroa.01.0.i ; 4 uses
  %.sroa.01.0.insert.insert.i = or disjoint i32 %.sroa.7.0.insert.insert.i, %.sroa.7.0.insert.shift.i ; 5 uses
  %i.kx = load i32, ptr %i.jb, align 1            ; 7 uses
  %.sroa.045.0.extract.trunc.i303 = trunc i32 %.sroa.01.0.insert.insert.i to i24
  %.sroa.654.0.extract.shift.i304 = lshr i32 %.sroa.7.0.insert.insert.i, 24 ; 4 uses
  %.sroa.6.0.extract.shift.i305 = lshr i32 %i.kx, 24 ; 4 uses
  %i.ky = icmp ugt i32 %.sroa.7.0.insert.insert.i, -50331649
  %i.kz = icmp ult i32 %i.kx, 50331648
  %or.cond.i306 = select i1 %i.ky, i1 true, i1 %i.kz
  br i1 %or.cond.i306, label %lv_color_32_32_mix.exit330, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.sroa.018.0.extract.trunc.i307 = trunc i32 %i.kx to i24
  %i.la = icmp ult i32 %.sroa.7.0.insert.insert.i, 50331648
  br i1 %i.la, label %lv_color_32_32_mix.exit330, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lb = icmp eq i32 %.sroa.6.0.extract.shift.i305, 255
  br i1 %i.lb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.lc = call i32 @lv_color_mix32(i32 %.sroa.01.0.insert.insert.i, i32 %i.kx) #7 ; 2 uses
  %.sroa.074.0.extract.trunc.i328 = trunc i32 %i.lc to i24
  %.sroa.5.0.extract.shift.i329 = lshr i32 %i.lc, 24
  br label %lv_color_32_32_mix.exit330

bb.at:                                            ; preds = %bb.ar
  %i.ld = load i8, ptr %i.ab, align 1, !tbaa !18
  %i.le = zext i8 %i.ld to i32
  %.not.i308 = icmp eq i32 %.sroa.6.0.extract.shift.i305, %i.le
  %i.lf = load i8, ptr %i.ac, align 1
  %i.lg = zext i8 %i.lf to i32
  %.not77.i327 = icmp eq i32 %.sroa.654.0.extract.shift.i304, %i.lg
  %or.cond342 = select i1 %.not.i308, i1 %.not77.i327, i1 false
  br i1 %or.cond342, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lh = xor i32 %.sroa.654.0.extract.shift.i304, 255
  %i.li = xor i32 %.sroa.6.0.extract.shift.i305, 255
  %i.lj = mul nuw nsw i32 %i.lh, %i.li
  %i.lk = lshr i32 %i.lj, 8
  %i.ll = trunc nuw i32 %i.lk to i8
  %i.lm = xor i8 %i.ll, -1                        ; 2 uses
  store i8 %i.lm, ptr %i.t, align 4, !tbaa !13
  %i.ln = trunc nuw nsw i32 %.sroa.654.0.extract.shift.i304 to i16
  %.lhs.trunc.i309 = mul nuw i16 %i.ln, 255
  %.rhs.trunc.i310 = zext i8 %i.lm to i16
  %i.lo = udiv i16 %.lhs.trunc.i309, %.rhs.trunc.i310
  %i.lp = trunc i16 %i.lo to i8
  store i8 %i.lp, ptr %i.u, align 1, !tbaa !14
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.lq = load i32, ptr %i.r, align 4
  %i.lr = call zeroext i1 @lv_color32_eq(i32 %i.kx, i32 %i.lq) #7
  br i1 %i.lr, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ls = load i32, ptr %2, align 4
  %i.lt = call zeroext i1 @lv_color32_eq(i32 %.sroa.01.0.insert.insert.i, i32 %i.ls) #7
  br i1 %i.lt, label %._crit_edge.i322, label %bb.ax

._crit_edge.i322:                                 ; preds = %bb.aw
  %.sroa.074.0.copyload.pre.i324 = load i24, ptr %i.s, align 4
  %.sroa.5.0.copyload.pre.i326 = load i8, ptr %i.ad, align 1, !tbaa !19
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store i32 %.sroa.01.0.insert.insert.i, ptr %2, align 4
  store i32 %i.kx, ptr %i.r, align 4
  %i.lu = load i8, ptr %i.u, align 1, !tbaa !14
  %.sroa.654.0.insert.ext63.i311 = zext i8 %i.lu to i32
  %.sroa.654.0.insert.shift64.i312 = shl nuw i32 %.sroa.654.0.insert.ext63.i311, 24
  %.sroa.045.0.insert.ext51.i313 = and i32 %.sroa.01.0.insert.insert.i, 16777215
  %.sroa.045.0.insert.insert53.i314 = or disjoint i32 %.sroa.654.0.insert.shift64.i312, %.sroa.045.0.insert.ext51.i313
  %i.lv = call i32 @lv_color_mix32(i32 %.sroa.045.0.insert.insert53.i314, i32 %i.kx) #7 ; 2 uses
  store i32 %i.lv, ptr %i.s, align 4
  %i.lw = load i8, ptr %i.t, align 4, !tbaa !13   ; 2 uses
  store i8 %i.lw, ptr %i.ad, align 1, !tbaa !20
  %i.lx = trunc i32 %i.lv to i24
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge.i322
  %.sroa.5.0.copyload.i315 = phi i8 [ %.sroa.5.0.copyload.pre.i326, %._crit_edge.i322 ], [ %i.lw, %bb.ax ]
  %.sroa.074.0.copyload.i316 = phi i24 [ %.sroa.074.0.copyload.pre.i324, %._crit_edge.i322 ], [ %i.lx, %bb.ax ]
  %i.ly = zext i8 %.sroa.5.0.copyload.i315 to i32
  br label %lv_color_32_32_mix.exit330

lv_color_32_32_mix.exit330:                       ; preds = %bb.ap, %bb.aq, %bb.as, %bb.ay
  %.sroa.074.0.i317 = phi i24 [ %.sroa.074.0.copyload.i316, %bb.ay ], [ %.sroa.045.0.extract.trunc.i303, %bb.ap ], [ %.sroa.074.0.extract.trunc.i328, %bb.as ], [ %.sroa.018.0.extract.trunc.i307, %bb.aq ]
  %.sroa.5.0.i318 = phi i32 [ %i.ly, %bb.ay ], [ %.sroa.654.0.extract.shift.i304, %bb.ap ], [ %.sroa.5.0.extract.shift.i329, %bb.as ], [ %.sroa.6.0.extract.shift.i305, %bb.aq ]
  %.sroa.5.0.insert.shift.i319 = shl nuw i32 %.sroa.5.0.i318, 24
  %.sroa.074.0.insert.ext.i320 = zext i24 %.sroa.074.0.i317 to i32
  %.sroa.074.0.insert.insert.i321 = or disjoint i32 %.sroa.5.0.insert.shift.i319, %.sroa.074.0.insert.ext.i320
  store i32 %.sroa.074.0.insert.insert.i321, ptr %i.jb, align 1
  br label %blend_non_normal_pixel.exit

blend_non_normal_pixel.exit:                      ; preds = %bb.ak, %lv_color_32_32_mix.exit330
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.ah
  %exitcond.not = icmp eq i64 %indvars.iv.next459, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ai, !llvm.loop !172

._crit_edge:                                      ; preds = %blend_non_normal_pixel.exit
  %i.lz = getelementptr inbounds i8, ptr %.3226361, i64 %i.ae
  %.4227 = select i1 %i.io, ptr null, ptr %i.lz
  %i.ma = getelementptr inbounds nuw i8, ptr %.8242359, i64 %i.af
  %i.mb = getelementptr inbounds nuw i8, ptr %.8360, i64 %i.ag
  %i.mc = add nuw nsw i32 %.5362, 1               ; 2 uses
  %exitcond463.not = icmp eq i32 %i.mc, %i.d
  br i1 %exitcond463.not, label %.loopexit, label %.preheader354, !llvm.loop !173

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge425, %bb.e, %.preheader352, %bb.d, %.preheader351.lr.ph, %.preheader347.lr.ph, %.preheader355, %.preheader354.lr.ph, %.preheader.lr.ph, %.loopexit346
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lv_color_mix32(i32, i32) local_unnamed_addr #2

declare zeroext i1 @lv_color32_eq(i32, i32) local_unnamed_addr #2

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.uadd.sat.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

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
!11 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!12 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !4, i64 12, !4, i64 13}
!13 = !{!12, !4, i64 12}
!14 = !{!12, !4, i64 13}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!12, !4, i64 7}
!19 = !{!4, !4, i64 0}
!20 = !{!12, !4, i64 11}
!21 = !{!"_lv_draw_sw_blend_image_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !8, i64 40, !5, i64 48, !5, i64 52, !4, i64 56, !5, i64 60, !10, i64 64, !10, i64 80}
!22 = !{!21, !5, i64 8}
!23 = !{!21, !5, i64 12}
!24 = !{!21, !4, i64 56}
!25 = !{!21, !8, i64 0}
!26 = !{!21, !5, i64 16}
!27 = !{!21, !8, i64 40}
!28 = !{!21, !5, i64 48}
!29 = !{!21, !9, i64 24}
!30 = !{!21, !5, i64 32}
!31 = !{!21, !5, i64 60}
!32 = !{!11, !4, i64 2}
!33 = !{!11, !4, i64 1}
!34 = !{!11, !4, i64 0}
!35 = !{!11, !4, i64 3}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15, !16, !17}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15, !17, !16}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !62}
!42 = distinct !{!42, !15, !17, !16}
!43 = distinct !{!43, !15, !16, !17}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15, !17, !16}
!46 = distinct !{!46, !15, !16, !17}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15}
!51 = distinct !{!51, !15}
!52 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!53 = !{!"_lv_draw_sw_blend_fill_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !52, i64 36, !4, i64 39, !10, i64 40}
!54 = !{!53, !5, i64 8}
!55 = !{!53, !5, i64 12}
!56 = !{!53, !4, i64 39}
!57 = !{!53, !9, i64 24}
!58 = !{!53, !5, i64 32}
!59 = !{!53, !5, i64 16}
!60 = !{!53, !8, i64 0}
!61 = !{!5, !5, i64 0}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = distinct !{!63, !"LVerDomain"}
!64 = distinct !{!64, !63}
!65 = distinct !{!65, !63}
!66 = distinct !{!66, !15, !17, !16}
!67 = distinct !{!67, !15, !17}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !"LVerDomain"}
!70 = distinct !{!70, !69}
!71 = distinct !{!71, !69}
!72 = distinct !{!72, !15, !17, !16}
!73 = distinct !{!73, !15, !17}
!74 = distinct !{!74, !15}
!75 = distinct !{!75, !15}
!76 = distinct !{!76, !15}
!77 = distinct !{!77, !15}
!78 = distinct !{!78, !15}
!79 = distinct !{!79, !15}
!80 = distinct !{!80, !15}
!81 = distinct !{!81, !"LVerDomain"}
!82 = distinct !{!82, !81}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !15, !17, !16}
!85 = distinct !{!85, !15, !17}
!86 = distinct !{!86, !15}
!87 = distinct !{!87, !"LVerDomain"}
!88 = distinct !{!88, !87}
!89 = distinct !{!89, !87}
!90 = distinct !{!90, !15, !17, !16}
!91 = distinct !{!91, !15, !17}
!92 = distinct !{!92, !15}
!93 = distinct !{!93, !15}
!94 = distinct !{!94, !15}
!95 = distinct !{!95, !15}
!96 = distinct !{!96, !15}
!97 = distinct !{!97, !15}
!98 = distinct !{!98, !15}
!99 = distinct !{!99, !15}
!100 = distinct !{!100, !15}
!101 = distinct !{!101, !15}
!102 = distinct !{!102, !15}
!103 = distinct !{!103, !15}
!104 = distinct !{!104, !15}
!105 = distinct !{!105, !15}
!106 = distinct !{!106, !15}
!107 = distinct !{!107, !15}
!108 = distinct !{!108, !15}
!109 = distinct !{!109, !15}
!110 = distinct !{!110, !15}
!111 = distinct !{!111, !15}
!112 = distinct !{!112, !15}
!113 = distinct !{!113, !15}
!114 = distinct !{!114, !15}
!115 = distinct !{!115, !15}
!116 = distinct !{!116, !15}
!117 = distinct !{!117, !15}
!118 = distinct !{!118, !15}
!119 = distinct !{!119, !15}
!120 = distinct !{!120, !15}
!121 = distinct !{!121, !15}
!122 = distinct !{!122, !15}
!123 = distinct !{!123, !15}
!124 = distinct !{!124, !15}
!125 = distinct !{!125, !15}
!126 = distinct !{!126, !15}
!127 = distinct !{!127, !15}
!128 = distinct !{!128, !15}
!129 = distinct !{!129, !15}
!130 = distinct !{!130, !15}
!131 = distinct !{!131, !15}
!132 = distinct !{!132, !15}
!133 = distinct !{!133, !15}
!134 = distinct !{!134, !15}
!135 = distinct !{!135, !15}
!136 = distinct !{!136, !15}
!137 = distinct !{!137, !15}
!138 = distinct !{!138, !15}
!139 = distinct !{!139, !15}
!140 = distinct !{!140, !15}
!141 = distinct !{!141, !15}
!142 = distinct !{!142, !15}
!143 = distinct !{!143, !15}
!144 = distinct !{!144, !15}
!145 = distinct !{!145, !15}
!146 = distinct !{!146, !15}
!147 = distinct !{!147, !15}
!148 = distinct !{!148, !15}
!149 = !{!21, !5, i64 52}
!150 = !{!64}
!151 = !{!65}
!152 = !{!70}
!153 = !{!71}
!154 = !{!"short", !4, i64 0}
!155 = !{!154, !154, i64 0}
!156 = !{!82}
!157 = !{!83}
!158 = !{!88}
!159 = !{!89}
!160 = !{!"", !4, i64 0, !4, i64 1}
!161 = !{!160, !4, i64 0}
!162 = !{!160, !4, i64 1}
!163 = distinct !{!163, !15}
!164 = distinct !{!164, !15}
!165 = distinct !{!165, !15}
!166 = distinct !{!166, !15}
!167 = distinct !{!167, !15}
!168 = distinct !{!168, !15}
!169 = distinct !{!169, !15}
!170 = distinct !{!170, !15}
!171 = distinct !{!171, !15}
!172 = distinct !{!172, !15}
!173 = distinct !{!173, !15}
end_hunk_3
