inline.NumInlined: 131
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 22
begin_hunk_0_@umutablecptrie_buildImmutable_78:bb.a
  %i.aml = trunc i32 %i.ami to i16
  %i.amm = getelementptr i8, ptr %i.aic, i64 36
  %i.amn = getelementptr i8, ptr %i.aic, i64 38
  store i16 %i.aml, ptr %i.amn, align 2, !tbaa !35
  %i.amo = getelementptr i8, ptr %i.ahx, i64 68
  %i.amp = load i32, ptr %i.amo, align 4, !tbaa !26 ; 2 uses
  %i.amq = lshr i32 %i.amp, 4
  %i.amr = and i32 %i.amq, 12288
  %i.ams = or disjoint i32 %i.amr, %i.amk
  %i.amt = trunc i32 %i.amp to i16
  %i.amu = getelementptr i8, ptr %i.aic, i64 40
  store i16 %i.amt, ptr %i.amu, align 2, !tbaa !35
  %i.amv = getelementptr i8, ptr %i.ahx, i64 72
  %i.amw = load i32, ptr %i.amv, align 4, !tbaa !26 ; 2 uses
  %i.amx = lshr i32 %i.amw, 6
  %i.amy = and i32 %i.amx, 3072
  %i.amz = or disjoint i32 %i.ams, %i.amy
  %i.ana = trunc i32 %i.amw to i16
  %i.anb = getelementptr i8, ptr %i.aic, i64 42
  store i16 %i.ana, ptr %i.anb, align 2, !tbaa !35
  %i.anc = getelementptr i8, ptr %i.ahx, i64 76
  %i.and = load i32, ptr %i.anc, align 4, !tbaa !26 ; 2 uses
  %i.ane = lshr i32 %i.and, 8
  %i.anf = and i32 %i.ane, 768
  %i.ang = or disjoint i32 %i.amz, %i.anf
  %i.anh = trunc i32 %i.and to i16
  %i.ani = getelementptr i8, ptr %i.aic, i64 44
  store i16 %i.anh, ptr %i.ani, align 2, !tbaa !35
  %i.anj = getelementptr i8, ptr %i.ahx, i64 80
  %i.ank = load i32, ptr %i.anj, align 4, !tbaa !26 ; 2 uses
  %i.anl = lshr i32 %i.ank, 10
  %i.anm = and i32 %i.anl, 192
  %i.ann = or disjoint i32 %i.ang, %i.anm
  %i.ano = trunc i32 %i.ank to i16
  %i.anp = getelementptr i8, ptr %i.aic, i64 46
  store i16 %i.ano, ptr %i.anp, align 2, !tbaa !35
  %i.anq = getelementptr i8, ptr %i.ahx, i64 84
  %i.anr = load i32, ptr %i.anq, align 4, !tbaa !26 ; 2 uses
  %i.ans = lshr i32 %i.anr, 12
  %i.ant = and i32 %i.ans, 48
  %i.anu = or disjoint i32 %i.ann, %i.ant
  %i.anv = trunc i32 %i.anr to i16
  %i.anw = getelementptr i8, ptr %i.aic, i64 48
  store i16 %i.anv, ptr %i.anw, align 2, !tbaa !35
  %i.anx = getelementptr i8, ptr %i.ahx, i64 88
  %i.any = load i32, ptr %i.anx, align 4, !tbaa !26 ; 2 uses
  %i.anz = lshr i32 %i.any, 14
  %i.aoa = and i32 %i.anz, 12
  %i.aob = or i32 %i.anu, %i.aoa
  %i.aoc = trunc i32 %i.any to i16
  %i.aod = getelementptr i8, ptr %i.aic, i64 50
  store i16 %i.aoc, ptr %i.aod, align 2, !tbaa !35
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.ahx, i64 92
  %i.aof = load i32, ptr %i.aoe, align 4, !tbaa !26 ; 2 uses
  %i.aog = lshr i32 %i.aof, 16
  %i.aoh = and i32 %i.aog, 3
  %i.aoi = or i32 %i.aob, %i.aoh
  %i.aoj = trunc i32 %i.aof to i16
  %i.aok = getelementptr i8, ptr %i.aic, i64 52
  store i16 %i.aoj, ptr %i.aok, align 2, !tbaa !35
  %i.aol = trunc nuw i32 %i.aoi to i16
  store i16 %i.aol, ptr %i.amm, align 2, !tbaa !35
  %i.aom = getelementptr inbounds nuw i8, ptr %i.ahx, i64 96
  %i.aon = load i32, ptr %i.aom, align 4, !tbaa !26 ; 2 uses
  %i.aoo = lshr i32 %i.aon, 2
  %i.aop = and i32 %i.aoo, 49152
  %i.aoq = trunc i32 %i.aon to i16
  %i.aor = getelementptr i8, ptr %i.aic, i64 54
  %i.aos = getelementptr i8, ptr %i.aic, i64 56
  store i16 %i.aoq, ptr %i.aos, align 2, !tbaa !35
  %i.aot = getelementptr i8, ptr %i.ahx, i64 100
  %i.aou = load i32, ptr %i.aot, align 4, !tbaa !26 ; 2 uses
  %i.aov = lshr i32 %i.aou, 4
  %i.aow = and i32 %i.aov, 12288
  %i.aox = or disjoint i32 %i.aow, %i.aop
  %i.aoy = trunc i32 %i.aou to i16
  %i.aoz = getelementptr i8, ptr %i.aic, i64 58
  store i16 %i.aoy, ptr %i.aoz, align 2, !tbaa !35
  %i.apa = getelementptr i8, ptr %i.ahx, i64 104
  %i.apb = load i32, ptr %i.apa, align 4, !tbaa !26 ; 2 uses
  %i.apc = lshr i32 %i.apb, 6
  %i.apd = and i32 %i.apc, 3072
  %i.ape = or disjoint i32 %i.aox, %i.apd
  %i.apf = trunc i32 %i.apb to i16
  %i.apg = getelementptr i8, ptr %i.aic, i64 60
  store i16 %i.apf, ptr %i.apg, align 2, !tbaa !35
  %i.aph = getelementptr i8, ptr %i.ahx, i64 108
  %i.api = load i32, ptr %i.aph, align 4, !tbaa !26 ; 2 uses
  %i.apj = lshr i32 %i.api, 8
  %i.apk = and i32 %i.apj, 768
  %i.apl = or disjoint i32 %i.ape, %i.apk
  %i.apm = trunc i32 %i.api to i16
  %i.apn = getelementptr i8, ptr %i.aic, i64 62
  store i16 %i.apm, ptr %i.apn, align 2, !tbaa !35
  %i.apo = getelementptr i8, ptr %i.ahx, i64 112
  %i.app = load i32, ptr %i.apo, align 4, !tbaa !26 ; 2 uses
  %i.apq = lshr i32 %i.app, 10
  %i.apr = and i32 %i.apq, 192
  %i.aps = or disjoint i32 %i.apl, %i.apr
  %i.apt = trunc i32 %i.app to i16
  %i.apu = getelementptr i8, ptr %i.aic, i64 64
  store i16 %i.apt, ptr %i.apu, align 2, !tbaa !35
  %i.apv = getelementptr i8, ptr %i.ahx, i64 116
  %i.apw = load i32, ptr %i.apv, align 4, !tbaa !26 ; 2 uses
  %i.apx = lshr i32 %i.apw, 12
  %i.apy = and i32 %i.apx, 48
  %i.apz = or disjoint i32 %i.aps, %i.apy
  %i.aqa = trunc i32 %i.apw to i16
  %i.aqb = getelementptr i8, ptr %i.aic, i64 66
  store i16 %i.aqa, ptr %i.aqb, align 2, !tbaa !35
  %i.aqc = getelementptr i8, ptr %i.ahx, i64 120
  %i.aqd = load i32, ptr %i.aqc, align 4, !tbaa !26 ; 2 uses
  %i.aqe = lshr i32 %i.aqd, 14
  %i.aqf = and i32 %i.aqe, 12
  %i.aqg = or i32 %i.apz, %i.aqf
  %i.aqh = trunc i32 %i.aqd to i16
  %i.aqi = getelementptr i8, ptr %i.aic, i64 68
  store i16 %i.aqh, ptr %i.aqi, align 2, !tbaa !35
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.ahx, i64 124
  %i.aqk = load i32, ptr %i.aqj, align 4, !tbaa !26 ; 2 uses
  %i.aql = lshr i32 %i.aqk, 16
  %i.aqm = and i32 %i.aql, 3
  %i.aqn = or i32 %i.aqg, %i.aqm
  %i.aqo = trunc i32 %i.aqk to i16
  %i.aqp = getelementptr i8, ptr %i.aic, i64 70
  store i16 %i.aqo, ptr %i.aqp, align 2, !tbaa !35
  %i.aqq = trunc nuw i32 %i.aqn to i16
  store i16 %i.aqq, ptr %i.aor, align 2, !tbaa !35
  %i.aqr = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIttEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull %i.ahv, ptr noundef nonnull %i.ahv, i32 noundef %.0250408.i.i.i) ; 2 uses
  %i.aqs = icmp sgt i32 %i.aqr, -1
  br i1 %i.aqs, label %bb.ez, label %bb.ev

bb.ev:                                            ; preds = %.thread.i108.i.i
  %i.aqt = icmp eq i32 %.0250408.i.i.i, %i.acw
  br i1 %i.aqt, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i, label %.lr.ph.i.i109.i.i

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i335.i.i.i
  %i.aqu = icmp samesign ugt i64 %indvars.iv.in.i.i110.i.i, 2
  br i1 %i.aqu, label %.lr.ph.i.i109.i.i.1, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i

.lr.ph.i.i109.i.i.1:                              ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i
  %indvars.iv.i334.i.i.i.1 = add nsw i64 %indvars.iv.in.i.i110.i.i, -2 ; 3 uses
  %i.aqv = sub nsw i64 %i.ahw, %indvars.iv.i334.i.i.i.1
  %i.aqw = getelementptr inbounds [2 x i8], ptr %i.ahv, i64 %i.aqv
  %i.aqx = trunc nuw nsw i64 %indvars.iv.i334.i.i.i.1 to i32 ; 2 uses
  br label %.lr.ph.i.i335.i.i.i.1

.lr.ph.i.i335.i.i.i.1:                            ; preds = %bb.ew, %.lr.ph.i.i109.i.i.1
  %.010.i.i336.i.i.i.1 = phi i32 [ %i.ard, %bb.ew ], [ %i.aqx, %.lr.ph.i.i109.i.i.1 ] ; 2 uses
  %.069.i.i337.i.i.i.1 = phi ptr [ %i.arc, %bb.ew ], [ %i.aic, %.lr.ph.i.i109.i.i.1 ] ; 2 uses
  %.078.i.i338.i.i.i.1 = phi ptr [ %i.arb, %bb.ew ], [ %i.aqw, %.lr.ph.i.i109.i.i.1 ] ; 2 uses
  %i.aqy = load i16, ptr %.078.i.i338.i.i.i.1, align 2, !tbaa !35
  %i.aqz = load i16, ptr %.069.i.i337.i.i.i.1, align 2, !tbaa !35
  %i.ara = icmp eq i16 %i.aqy, %i.aqz
  br i1 %i.ara, label %bb.ew, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1: ; preds = %.lr.ph.i.i335.i.i.i.1
  %indvars.iv.next469.i.i.i.1 = add nsw i64 %indvars.iv468.i.i.i, -2
  %indvar.next.1 = add nuw nsw i64 %indvar, 2
  br label %.lr.ph.i.i109.i.i

bb.ew:                                            ; preds = %.lr.ph.i.i335.i.i.i.1
  %i.arb = getelementptr inbounds nuw i8, ptr %.078.i.i338.i.i.i.1, i64 2
  %i.arc = getelementptr inbounds nuw i8, ptr %.069.i.i337.i.i.i.1, i64 2
  %i.ard = add nsw i32 %.010.i.i336.i.i.i.1, -1
  %i.are = icmp sgt i32 %.010.i.i336.i.i.i.1, 1
  br i1 %i.are, label %.lr.ph.i.i335.i.i.i.1, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit, !llvm.loop !104

.lr.ph.i.i109.i.i:                                ; preds = %bb.ev, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1
  %indvar = phi i64 [ %indvar.next.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1 ], [ 0, %bb.ev ] ; 3 uses
  %indvars.iv468.i.i.i = phi i64 [ %indvars.iv.next469.i.i.i.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1 ], [ 35, %bb.ev ] ; 3 uses
  %indvars.iv.in.i.i110.i.i = phi i64 [ %indvars.iv.i334.i.i.i.1, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i.1 ], [ 36, %bb.ev ] ; 4 uses
  %indvars.iv.i334.i.i.i = add nsw i64 %indvars.iv.in.i.i110.i.i, -1 ; 3 uses
  %i.arf = sub nsw i64 %i.ahw, %indvars.iv.i334.i.i.i
  %i.arg = getelementptr inbounds [2 x i8], ptr %i.ahv, i64 %i.arf
  %i.arh = trunc nuw nsw i64 %indvars.iv.i334.i.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i335.i.i.i

.lr.ph.i.i335.i.i.i:                              ; preds = %bb.ex, %.lr.ph.i.i109.i.i
  %.010.i.i336.i.i.i = phi i32 [ %i.arn, %bb.ex ], [ %i.arh, %.lr.ph.i.i109.i.i ] ; 2 uses
  %.069.i.i337.i.i.i = phi ptr [ %i.arm, %bb.ex ], [ %i.aic, %.lr.ph.i.i109.i.i ] ; 2 uses
  %.078.i.i338.i.i.i = phi ptr [ %i.arl, %bb.ex ], [ %i.arg, %.lr.ph.i.i109.i.i ] ; 2 uses
  %i.ari = load i16, ptr %.078.i.i338.i.i.i, align 2, !tbaa !35
  %i.arj = load i16, ptr %.069.i.i337.i.i.i, align 2, !tbaa !35
  %i.ark = icmp eq i16 %i.ari, %i.arj
  br i1 %i.ark, label %bb.ex, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i

bb.ex:                                            ; preds = %.lr.ph.i.i335.i.i.i
  %i.arl = getelementptr inbounds nuw i8, ptr %.078.i.i338.i.i.i, i64 2
  %i.arm = getelementptr inbounds nuw i8, ptr %.069.i.i337.i.i.i, i64 2
  %i.arn = add nsw i32 %.010.i.i336.i.i.i, -1
  %i.aro = icmp sgt i32 %.010.i.i336.i.i.i, 1
  br i1 %i.aro, label %.lr.ph.i.i335.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i, !llvm.loop !104

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit: ; preds = %bb.ew
  %indvars.iv.next469.i.i.i.le = add nsw i64 %indvars.iv468.i.i.i, -1
  %indvar.next.le = or disjoint i64 %indvar, 1
  br label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i: ; preds = %bb.ex, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit
  %indvar.lcssa = phi i64 [ %indvar.next.le, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit ], [ %indvar, %bb.ex ] ; 3 uses
  %indvars.iv468.i.i.i.lcssa = phi i64 [ %indvars.iv.next469.i.i.i.le, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit ], [ %indvars.iv468.i.i.i, %bb.ex ] ; 6 uses
  %indvars.iv.in.i.i110.i.i.lcssa = phi i64 [ %indvars.iv.i334.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit ], [ %indvars.iv.in.i.i110.i.i, %bb.ex ] ; 2 uses
  %.lcssa333 = phi i32 [ %i.aqx, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i.loopexit ], [ %i.arh, %bb.ex ]
  %i.arp = sub nsw i32 %.0250408.i.i.i, %.lcssa333 ; 3 uses
  %i.arq = icmp sgt i64 %indvars.iv.in.i.i110.i.i.lcssa, 1
  br i1 %i.arq, label %.preheader374.i.i.i, label %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i

.preheader374.i.i.i:                              ; preds = %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i
  %i.arr = icmp samesign ult i64 %indvars.iv.in.i.i110.i.i.lcssa, 37
  br i1 %i.arr, label %iter.check, label %.loopexit375.i.i.i

iter.check:                                       ; preds = %.preheader374.i.i.i
  %i.ars = add nuw nsw i64 %indvar.lcssa, 1       ; 5 uses
  %min.iters.check269 = icmp ult i64 %indvar.lcssa, 3
  br i1 %min.iters.check269, label %.lr.ph.i112.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check270 = icmp ult i64 %indvar.lcssa, 15
  br i1 %min.iters.check270, label %vec.epilog.ph, label %vector.ph271

vector.ph271:                                     ; preds = %vector.main.loop.iter.check
  %i.art = and i64 %i.ars, 12
  %n.vec272 = and i64 %i.ars, -16                 ; 5 uses
  %i.aru = add i64 %n.vec272, %i.ahw              ; 2 uses
  %i.arv = add i64 %indvars.iv468.i.i.i.lcssa, %n.vec272
  %i.arw = getelementptr [2 x i8], ptr %i.aic, i64 %indvars.iv468.i.i.i.lcssa ; 2 uses
  %i.arx = getelementptr i8, ptr %i.arw, i64 16
  %wide.load275 = load <8 x i16>, ptr %i.arw, align 2, !tbaa !35
  %wide.load276 = load <8 x i16>, ptr %i.arx, align 2, !tbaa !35
  %i.ary = getelementptr [2 x i8], ptr %i.ahv, i64 %i.ahw ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 16
  store <8 x i16> %wide.load275, ptr %i.ary, align 2, !tbaa !35
  store <8 x i16> %wide.load276, ptr %i.arz, align 2, !tbaa !35
  %i.asa = icmp eq i64 %n.vec272, 16
  br i1 %i.asa, label %middle.block278, label %vector.body273.1

vector.body273.1:                                 ; preds = %vector.ph271
  %i.asb = getelementptr [2 x i8], ptr %i.aic, i64 %indvars.iv468.i.i.i.lcssa ; 2 uses
  %i.asc = getelementptr i8, ptr %i.asb, i64 32
  %i.asd = getelementptr i8, ptr %i.asb, i64 48
  %wide.load275.1 = load <8 x i16>, ptr %i.asc, align 2, !tbaa !35
  %wide.load276.1 = load <8 x i16>, ptr %i.asd, align 2, !tbaa !35
  %i.ase = getelementptr i8, ptr %i.ahv, i64 32
  %i.asf = getelementptr [2 x i8], ptr %i.ase, i64 %i.ahw ; 2 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asf, i64 16
  store <8 x i16> %wide.load275.1, ptr %i.asf, align 2, !tbaa !35
  store <8 x i16> %wide.load276.1, ptr %i.asg, align 2, !tbaa !35
  br label %middle.block278

middle.block278:                                  ; preds = %vector.body273.1, %vector.ph271
  %cmp.n279 = icmp eq i64 %i.ars, %n.vec272
  br i1 %cmp.n279, label %.loopexit375.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block278
  %min.epilog.iters.check = icmp eq i64 %i.art, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i112.i.i.preheader, label %vec.epilog.ph, !prof !105

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec272, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec282 = and i64 %i.ars, -4                  ; 4 uses
  %i.ash = add i64 %n.vec282, %i.ahw              ; 2 uses
  %i.asi = add i64 %indvars.iv468.i.i.i.lcssa, %n.vec282
  %i.asj = getelementptr [2 x i8], ptr %i.aic, i64 %indvars.iv468.i.i.i.lcssa
  %invariant.gep504 = getelementptr [2 x i8], ptr %i.ahv, i64 %i.ahw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index283 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next285, %vec.epilog.vector.body ] ; 3 uses
  %i.ask = getelementptr [2 x i8], ptr %i.asj, i64 %index283
  %wide.load284 = load <4 x i16>, ptr %i.ask, align 2, !tbaa !35
  %gep505 = getelementptr [2 x i8], ptr %invariant.gep504, i64 %index283
  store <4 x i16> %wide.load284, ptr %gep505, align 2, !tbaa !35
  %index.next285 = add nuw i64 %index283, 4       ; 2 uses
  %i.asl = icmp eq i64 %index.next285, %n.vec282
  br i1 %i.asl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !106

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n286 = icmp eq i64 %i.ars, %n.vec282
  br i1 %cmp.n286, label %.loopexit375.loopexit.i.i.i, label %.lr.ph.i112.i.i.preheader

.lr.ph.i112.i.i.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv473.i.i.i.ph = phi i64 [ %i.ahw, %iter.check ], [ %i.aru, %vec.epilog.iter.check ], [ %i.ash, %vec.epilog.middle.block ]
  %indvars.iv471.i.i.i.ph = phi i64 [ %indvars.iv468.i.i.i.lcssa, %iter.check ], [ %i.arv, %vec.epilog.iter.check ], [ %i.asi, %vec.epilog.middle.block ]
  br label %.lr.ph.i112.i.i

.lr.ph.i112.i.i:                                  ; preds = %.lr.ph.i112.i.i.preheader, %.lr.ph.i112.i.i
  %indvars.iv473.i.i.i = phi i64 [ %indvars.iv.next474.i.i.i, %.lr.ph.i112.i.i ], [ %indvars.iv473.i.i.i.ph, %.lr.ph.i112.i.i.preheader ] ; 2 uses
  %indvars.iv471.i.i.i = phi i64 [ %indvars.iv.next472.i.i.i, %.lr.ph.i112.i.i ], [ %indvars.iv471.i.i.i.ph, %.lr.ph.i112.i.i.preheader ] ; 2 uses
  %indvars.iv.next472.i.i.i = add nuw nsw i64 %indvars.iv471.i.i.i, 1 ; 2 uses
  %gep.i.i.i = getelementptr [2 x i8], ptr %i.aic, i64 %indvars.iv471.i.i.i
  %i.asm = load i16, ptr %gep.i.i.i, align 2, !tbaa !35
  %indvars.iv.next474.i.i.i = add nsw i64 %indvars.iv473.i.i.i, 1 ; 2 uses
  %i.asn = getelementptr inbounds [2 x i8], ptr %i.ahv, i64 %indvars.iv473.i.i.i
  store i16 %i.asm, ptr %i.asn, align 2, !tbaa !35
  %exitcond478.not.i.i.i = icmp eq i64 %indvars.iv.next472.i.i.i, 36
  br i1 %exitcond478.not.i.i.i, label %.loopexit375.loopexit.i.i.i, label %.lr.ph.i112.i.i, !llvm.loop !107

_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i, %bb.ev
  %i.aso = phi i32 [ %i.arp, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.i.i.i ], [ %i.acw, %bb.ev ], [ %.0250408.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.loopexit.i.i.i.i ]
  %i.asp = add nsw i32 %.0250408.i.i.i, 36
  br label %.loopexit375.i.i.i

.loopexit375.loopexit.i.i.i:                      ; preds = %.lr.ph.i112.i.i, %vec.epilog.middle.block, %middle.block278
  %indvars.iv.next474.i.i.i.lcssa = phi i64 [ %i.ash, %vec.epilog.middle.block ], [ %i.aru, %middle.block278 ], [ %indvars.iv.next474.i.i.i, %.lr.ph.i112.i.i ]
  %i.asq = trunc nsw i64 %indvars.iv.next474.i.i.i.lcssa to i32
  br label %.loopexit375.i.i.i

.loopexit375.i.i.i:                               ; preds = %.loopexit375.loopexit.i.i.i, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i, %.preheader374.i.i.i
  %i.asr = phi i32 [ %i.aso, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i ], [ %i.arp, %.preheader374.i.i.i ], [ %i.arp, %.loopexit375.loopexit.i.i.i ] ; 2 uses
  %.4254.i.i.i = phi i32 [ %i.asp, %_ZN6icu_7812_GLOBAL__N_110getOverlapIttEEiPKT_iPKT0_ii.exit.thread.i.i.i ], [ %.0250408.i.i.i, %.preheader374.i.i.i ], [ %i.asq, %.loopexit375.loopexit.i.i.i ] ; 4 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.ahv, i32 noundef %i.acw, i32 noundef %.0250408.i.i.i, i32 noundef %.4254.i.i.i)
  br i1 %.0273.lcssa.i.i.i, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %.loopexit375.i.i.i
  %i.ass = load ptr, ptr %i.add, align 8, !tbaa !23
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.ass, i32 noundef %i.acw, i32 noundef %.0250408.i.i.i, i32 noundef %.4254.i.i.i)
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %.loopexit375.i.i.i, %.thread.i108.i.i
  %.5.i.i.i = phi i32 [ %.0250408.i.i.i, %.thread.i108.i.i ], [ %.4254.i.i.i, %bb.ey ], [ %.4254.i.i.i, %.loopexit375.i.i.i ]
  %.1247.in.i.i.i = phi i32 [ %i.aqr, %.thread.i108.i.i ], [ %i.asr, %bb.ey ], [ %i.asr, %.loopexit375.i.i.i ]
  %.1247.i.i.i = or i32 %.1247.in.i.i.i, 32768
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.eu, %._crit_edge404.i.i.i, %.thread362.i.i.i, %bb.en, %bb.em
  %.5289360.i.i.i = phi i32 [ %.5289365.i.i.i, %._crit_edge404.i.i.i ], [ %.4288406.i.i.i, %bb.en ], [ %.5289361.i.i.i, %bb.ez ], [ %.5289365.i.i.i, %.thread362.i.i.i ], [ %.5289365.i.i.i, %bb.eu ], [ %.4288406.i.i.i, %bb.em ] ; 2 uses
  %.6.i107.i.i = phi i32 [ %.1251.lcssa.i.i.i, %._crit_edge404.i.i.i ], [ %.0250408.i.i.i, %bb.en ], [ %.5.i.i.i, %bb.ez ], [ %.0250408.i.i.i, %.thread362.i.i.i ], [ %.1251.lcssa.i.i.i, %bb.eu ], [ %.0250408.i.i.i, %bb.em ] ; 2 uses
  %.2248.i.i.i = phi i32 [ %i.ahs, %._crit_edge404.i.i.i ], [ %i.afh, %bb.en ], [ %.1247.i.i.i, %bb.ez ], [ %i.afl, %.thread362.i.i.i ], [ %i.ahs, %bb.eu ], [ %i.aey, %bb.em ] ; 3 uses
  %i.ast = load i32, ptr %i.yt, align 4, !tbaa !16 ; 2 uses
  %i.asu = icmp slt i32 %i.ast, 0
  %i.asv = icmp sgt i32 %.5289360.i.i.i, -1
  %or.cond3.i.i.i = select i1 %i.asu, i1 %i.asv, i1 false
  br i1 %or.cond3.i.i.i, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i32 %.2248.i.i.i, ptr %i.yt, align 4, !tbaa !16
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.asw = phi i32 [ %.2248.i.i.i, %bb.fb ], [ %i.ast, %bb.fa ] ; 2 uses
  %i.asx = trunc i32 %.2248.i.i.i to i16
  %indvars.iv.next488.i.i.i = add nuw nsw i64 %indvars.iv487.i.i.i, 1 ; 2 uses
  %i.asy = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv487.i.i.i
  store i16 %i.asx, ptr %i.asy, align 2, !tbaa !35
  %indvars.iv.next461.i.i.i = add nuw nsw i64 %indvars.iv460.i.i.i, 32 ; 2 uses
  %i.asz = icmp samesign ult i64 %indvars.iv.next461.i.i.i, %i.aeu
  br i1 %i.asz, label %bb.ek, label %._crit_edge414.loopexit.i.i.i, !llvm.loop !108

bb.fd:                                            ; preds = %._crit_edge414.i.i.i
  store i32 32767, ptr %i.yt, align 4, !tbaa !16
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %._crit_edge414.i.i.i
  %i.ata = icmp sgt i32 %.0250.lcssa.i.i.i, 32798
  br i1 %i.ata, label %bb.ff, label %.preheader.i98.i.i

.preheader.i98.i.i:                               ; preds = %bb.fe
  %i.atb = icmp sgt i32 %.0255.lcssa.i.i.i, 0
  br i1 %i.atb, label %.lr.ph427.i.i.i, label %.loopexit.i.i.i

.lr.ph427.i.i.i:                                  ; preds = %.preheader.i98.i.i
  %i.atc = sext i32 %i.acw to i64
  %i.atd = zext nneg i32 %i.yo to i64
  %.pre.i.i = load ptr, ptr %i.add, align 8, !tbaa !23
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  store i32 8, ptr %3, align 4, !tbaa !8
  br label %.loopexit.i.i.i

bb.fg:                                            ; preds = %bb.fm, %.lr.ph427.i.i.i
  %i.ate = phi ptr [ %.pre.i.i, %.lr.ph427.i.i.i ], [ %i.avd, %bb.fm ] ; 6 uses
  %indvars.iv500.i.i.i = phi i64 [ %i.atd, %.lr.ph427.i.i.i ], [ %indvars.iv.next501.i.i.i, %bb.fm ] ; 2 uses
  %.0232425.i.i.i = phi i32 [ 0, %.lr.ph427.i.i.i ], [ %i.avg, %bb.fm ] ; 6 uses
  %.0234423.i.i.i = phi i32 [ 32, %.lr.ph427.i.i.i ], [ %.1235371.i.i.i, %bb.fm ] ; 2 uses
  %.7422.i.i.i = phi i32 [ %.0250.lcssa.i.i.i, %.lr.ph427.i.i.i ], [ %.9.i.i.i, %bb.fm ] ; 10 uses
  %i.atf = sub nsw i32 %.0255.lcssa.i.i.i, %.0232425.i.i.i ; 6 uses
  %.not304.i.i.i = icmp slt i32 %i.atf, %.0234423.i.i.i
  br i1 %.not304.i.i.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.atg = call fastcc noundef i32 @_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findBlockIttEEiPKT_PKT0_i(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %i.ate, ptr noundef nonnull %i.b, i32 noundef %.0232425.i.i.i)
  br label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.i.i.i

bb.fi:                                            ; preds = %bb.fg
  %i.ath = sub i32 %.7422.i.i.i, %i.atf           ; 2 uses
  %i.ati = sext i32 %.0232425.i.i.i to i64
  %i.atj = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.ati
  %.not18.i.i.i.i = icmp sgt i32 %i.acw, %i.ath
  br i1 %.not18.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_113findSameBlockEPKtiiS2_ii.exit.thread.i.i.i, label %.lr.ph.i340.i.i.i

.lr.ph.i340.i.i.i:                                ; preds = %bb.fi
  %i.atk = add i32 %i.ath, 1
  br label %.lr.ph.i.preheader.us.i.i.i.i

.lr.ph.i.preheader.us.i.i.i.i:                    ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i, %.lr.ph.i340.i.i.i
  %indvars.iv.i342.i.i.i = phi i64 [ %i.atc, %.lr.ph.i340.i.i.i ], [ %indvars.iv.next.i343.i.i.i, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i ] ; 3 uses
  %i.atl = getelementptr inbounds [2 x i8], ptr %i.ate, i64 %indvars.iv.i342.i.i.i
  br label %.lr.ph.i.us.i.i.i.i

.lr.ph.i.us.i.i.i.i:                              ; preds = %bb.fj, %.lr.ph.i.preheader.us.i.i.i.i
  %.010.i.us.i.i.i.i = phi i32 [ %i.atr, %bb.fj ], [ %i.atf, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %.069.i.us.i.i.i.i = phi ptr [ %i.atq, %bb.fj ], [ %i.atj, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %.078.i.us.i.i.i.i = phi ptr [ %i.atp, %bb.fj ], [ %i.atl, %.lr.ph.i.preheader.us.i.i.i.i ] ; 2 uses
  %i.atm = load i16, ptr %.078.i.us.i.i.i.i, align 2, !tbaa !35
  %i.atn = load i16, ptr %.069.i.us.i.i.i.i, align 2, !tbaa !35
  %i.ato = icmp eq i16 %i.atm, %i.atn
  br i1 %i.ato, label %bb.fj, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i

bb.fj:                                            ; preds = %.lr.ph.i.us.i.i.i.i
  %i.atp = getelementptr inbounds nuw i8, ptr %.078.i.us.i.i.i.i, i64 2
  %i.atq = getelementptr inbounds nuw i8, ptr %.069.i.us.i.i.i.i, i64 2
  %i.atr = add nsw i32 %.010.i.us.i.i.i.i, -1
  %i.ats = icmp sgt i32 %.010.i.us.i.i.i.i, 1
  br i1 %i.ats, label %.lr.ph.i.us.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread.loopexit.i.i.i.i, !llvm.loop !104

_ZN6icu_7812_GLOBAL__N_111equalBlocksIttEEbPKT_PKT0_i.exit.thread14.loopexit.us.i.i.i.i: ; preds = %.lr.ph.i.us.i.i.i.i
  %indvars.iv.next.i343.i.i.i = add nsw i64 %indvars.iv.i342.i.i.i, 1 ; 2 uses
end_hunk_0
