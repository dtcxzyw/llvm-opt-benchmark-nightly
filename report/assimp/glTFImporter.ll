Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTFImporter?download=true
inline.NumInlined: 5894
inline.NumDeleted: 2010
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN6Assimp12glTFImporter12ImportMeshesERN4glTF5AssetE:bb.a
  %prol.iter2026 = phi i64 [ %prol.iter2026.next, %.prol.preheader2021 ], [ 0, %bb.dv ]
  store i32 0, ptr %i.anq, align 8
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 8
  store ptr null, ptr %i.anr, align 8
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anq, i64 16 ; 2 uses
  %prol.iter2026.next = add i64 %prol.iter2026, 1 ; 2 uses
  %prol.iter2026.cmp.not = icmp eq i64 %prol.iter2026.next, %xtraiter2024
  br i1 %prol.iter2026.cmp.not, label %.prol.loopexit2022, label %.prol.preheader2021, !llvm.loop !434

.prol.loopexit2022:                               ; preds = %.prol.preheader2021, %bb.dv
  %.unr2027 = phi ptr [ %i.anl, %bb.dv ], [ %i.ans, %.prol.preheader2021 ]
  %i.ant = icmp samesign ult i64 %i.anp, 7
  br i1 %i.ant, label %.lr.ph910.preheader, label %.new2023

.new2023:                                         ; preds = %.prol.loopexit2022, %.new2023
  %i.anu = phi ptr [ %i.aok, %.new2023 ], [ %.unr2027, %.prol.loopexit2022 ] ; 17 uses
  store i32 0, ptr %i.anu, align 8
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anu, i64 8
  store ptr null, ptr %i.anv, align 8
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anu, i64 16
  store i32 0, ptr %i.anw, align 8
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anu, i64 24
  store ptr null, ptr %i.anx, align 8
  %i.any = getelementptr inbounds nuw i8, ptr %i.anu, i64 32
  store i32 0, ptr %i.any, align 8
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anu, i64 40
  store ptr null, ptr %i.anz, align 8
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anu, i64 48
  store i32 0, ptr %i.aoa, align 8
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anu, i64 56
  store ptr null, ptr %i.aob, align 8
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anu, i64 64
  store i32 0, ptr %i.aoc, align 8
  %i.aod = getelementptr inbounds nuw i8, ptr %i.anu, i64 72
  store ptr null, ptr %i.aod, align 8
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.anu, i64 80
  store i32 0, ptr %i.aoe, align 8
  %i.aof = getelementptr inbounds nuw i8, ptr %i.anu, i64 88
  store ptr null, ptr %i.aof, align 8
  %i.aog = getelementptr inbounds nuw i8, ptr %i.anu, i64 96
  store i32 0, ptr %i.aog, align 8
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.anu, i64 104
  store ptr null, ptr %i.aoh, align 8
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.anu, i64 112
  store i32 0, ptr %i.aoi, align 8
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.anu, i64 120
  store ptr null, ptr %i.aoj, align 8
  %i.aok = getelementptr inbounds nuw i8, ptr %i.anu, i64 128 ; 2 uses
  %i.aol = icmp eq ptr %i.aok, %i.ann
  br i1 %i.aol, label %.lr.ph910.preheader, label %.new2023

.lr.ph910.preheader:                              ; preds = %.new2023, %.prol.loopexit2022
  br label %.lr.ph910

.lr.ph910:                                        ; preds = %.lr.ph910.preheader, %bb.dw
  %indvars.iv1158 = phi i64 [ %indvars.iv.next1159, %bb.dw ], [ 0, %.lr.ph910.preheader ] ; 3 uses
  %i.aom = getelementptr inbounds nuw [16 x i8], ptr %i.anl, i64 %indvars.iv1158 ; 2 uses
  store i32 1, ptr %i.aom, align 8
  %i.aon = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #32
          to label %bb.dw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.dw:                                            ; preds = %.lr.ph910
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aom, i64 8
  store ptr %i.aon, ptr %i.aoo, align 8
  %i.aop = trunc nuw i64 %indvars.iv1158 to i32
  store i32 %i.aop, ptr %i.aon, align 4
  %indvars.iv.next1159 = add nuw nsw i64 %indvars.iv1158, 1 ; 2 uses
  %exitcond1162.not = icmp eq i64 %indvars.iv.next1159, %i.anh
  br i1 %exitcond1162.not, label %.loopexit569, label %.lr.ph910, !llvm.loop !435

bb.dx:                                            ; preds = %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit362.thread
  %i.aoq = lshr i32 %i.anf, 1                     ; 4 uses
  %i.aor = and i32 %i.anf, -2                     ; 2 uses
  %.not288 = icmp eq i32 %i.aor, %i.anf
  br i1 %.not288, label %bb.ea, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.aos = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.dz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.aos, ptr noundef nonnull @.str.12)
          to label %bb.ea unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ea:                                            ; preds = %bb.dz, %bb.dx
  %.0228 = phi i32 [ %i.anf, %bb.dx ], [ %i.aor, %bb.dz ] ; 2 uses
  %i.aot = zext nneg i32 %i.aoq to i64            ; 5 uses
  %i.aou = shl nuw nsw i64 %i.aot, 4
  %i.aov = or disjoint i64 %i.aou, 8
  %i.aow = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aov) #32
          to label %bb.eb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.eb:                                            ; preds = %bb.ea
  store i64 %i.aot, ptr %i.aow, align 16
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 8 ; 6 uses
  %i.aoy = icmp eq i32 %i.aoq, 0
  br i1 %i.aoy, label %.loopexit576, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aoz = getelementptr inbounds nuw [16 x i8], ptr %i.aox, i64 %i.aot
  %i.apa = add nuw nsw i64 %i.aot, 1152921504606846975
  %i.apb = and i64 %i.apa, 1152921504606846975
  %xtraiter2017 = and i64 %i.aot, 7               ; 2 uses
  %lcmp.mod2018.not = icmp eq i64 %xtraiter2017, 0
  br i1 %lcmp.mod2018.not, label %.prol.loopexit2015, label %.prol.preheader2014

.prol.preheader2014:                              ; preds = %bb.ec, %.prol.preheader2014
  %i.apc = phi ptr [ %i.ape, %.prol.preheader2014 ], [ %i.aox, %bb.ec ] ; 3 uses
  %prol.iter2019 = phi i64 [ %prol.iter2019.next, %.prol.preheader2014 ], [ 0, %bb.ec ]
  store i32 0, ptr %i.apc, align 8
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 8
  store ptr null, ptr %i.apd, align 8
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apc, i64 16 ; 2 uses
  %prol.iter2019.next = add i64 %prol.iter2019, 1 ; 2 uses
  %prol.iter2019.cmp.not = icmp eq i64 %prol.iter2019.next, %xtraiter2017
  br i1 %prol.iter2019.cmp.not, label %.prol.loopexit2015, label %.prol.preheader2014, !llvm.loop !436

.prol.loopexit2015:                               ; preds = %.prol.preheader2014, %bb.ec
  %.unr2020 = phi ptr [ %i.aox, %bb.ec ], [ %i.ape, %.prol.preheader2014 ]
  %i.apf = icmp samesign ult i64 %i.apb, 7
  br i1 %i.apf, label %.loopexit576, label %.new2016

.new2016:                                         ; preds = %.prol.loopexit2015, %.new2016
  %i.apg = phi ptr [ %i.apw, %.new2016 ], [ %.unr2020, %.prol.loopexit2015 ] ; 17 uses
  store i32 0, ptr %i.apg, align 8
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 8
  store ptr null, ptr %i.aph, align 8
  %i.api = getelementptr inbounds nuw i8, ptr %i.apg, i64 16
  store i32 0, ptr %i.api, align 8
  %i.apj = getelementptr inbounds nuw i8, ptr %i.apg, i64 24
  store ptr null, ptr %i.apj, align 8
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apg, i64 32
  store i32 0, ptr %i.apk, align 8
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apg, i64 40
  store ptr null, ptr %i.apl, align 8
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apg, i64 48
  store i32 0, ptr %i.apm, align 8
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apg, i64 56
  store ptr null, ptr %i.apn, align 8
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apg, i64 64
  store i32 0, ptr %i.apo, align 8
  %i.app = getelementptr inbounds nuw i8, ptr %i.apg, i64 72
  store ptr null, ptr %i.app, align 8
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apg, i64 80
  store i32 0, ptr %i.apq, align 8
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apg, i64 88
  store ptr null, ptr %i.apr, align 8
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apg, i64 96
  store i32 0, ptr %i.aps, align 8
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apg, i64 104
  store ptr null, ptr %i.apt, align 8
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apg, i64 112
  store i32 0, ptr %i.apu, align 8
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apg, i64 120
  store ptr null, ptr %i.apv, align 8
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apg, i64 128 ; 2 uses
  %i.apx = icmp eq ptr %i.apw, %i.aoz
  br i1 %i.apx, label %.loopexit576, label %.new2016

.loopexit576:                                     ; preds = %.prol.loopexit2015, %.new2016, %bb.eb
  %.not940 = icmp eq i32 %.0228, 0
  br i1 %.not940, label %.loopexit569, label %.lr.ph907.preheader

.lr.ph907.preheader:                              ; preds = %.loopexit576
  %i.apy = zext i32 %.0228 to i64
  br label %.lr.ph907

.lr.ph907:                                        ; preds = %.lr.ph907.preheader, %bb.ed
  %indvars.iv1155 = phi i64 [ 0, %.lr.ph907.preheader ], [ %indvars.iv.next1156, %bb.ed ] ; 4 uses
  %i.apz = lshr exact i64 %indvars.iv1155, 1
  %i.aqa = getelementptr inbounds nuw [16 x i8], ptr %i.aox, i64 %i.apz ; 2 uses
  store i32 2, ptr %i.aqa, align 8
  %i.aqb = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #32
          to label %bb.ed unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ed:                                            ; preds = %.lr.ph907
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqa, i64 8
  store ptr %i.aqb, ptr %i.aqc, align 8
  %i.aqd = trunc nuw i64 %indvars.iv1155 to i32
  store i32 %i.aqd, ptr %i.aqb, align 4
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqb, i64 4
  %i.aqf = trunc i64 %indvars.iv1155 to i32
  %i.aqg = or disjoint i32 %i.aqf, 1
  store i32 %i.aqg, ptr %i.aqe, align 4
  %indvars.iv.next1156 = add nuw nsw i64 %indvars.iv1155, 2 ; 2 uses
  %i.aqh = icmp samesign ult i64 %indvars.iv.next1156, %i.apy
  br i1 %i.aqh, label %.lr.ph907, label %.loopexit569, !llvm.loop !437

bb.ee:                                            ; preds = %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit362.thread, %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit362.thread
  %i.aqi = icmp eq i32 %i.ang, 3
  %.neg = sext i1 %i.aqi to i32
  %i.aqj = add i32 %i.anf, %.neg                  ; 4 uses
  %i.aqk = zext i32 %i.aqj to i64                 ; 5 uses
  %i.aql = shl nuw nsw i64 %i.aqk, 4
  %i.aqm = or disjoint i64 %i.aql, 8
  %i.aqn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aqm) #32
          to label %bb.ef unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

bb.ef:                                            ; preds = %bb.ee
  store i64 %i.aqk, ptr %i.aqn, align 16
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 8 ; 10 uses
  %i.aqp = icmp eq i32 %i.aqj, 0
  br i1 %i.aqp, label %.loopexit579, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.aqq = getelementptr inbounds nuw [16 x i8], ptr %i.aqo, i64 %i.aqk
  %i.aqr = add nuw nsw i64 %i.aqk, 1152921504606846975
  %i.aqs = and i64 %i.aqr, 1152921504606846975
  %xtraiter2010 = and i64 %i.aqk, 7               ; 2 uses
  %lcmp.mod2011.not = icmp eq i64 %xtraiter2010, 0
  br i1 %lcmp.mod2011.not, label %.prol.loopexit2008, label %.prol.preheader2007

.prol.preheader2007:                              ; preds = %bb.eg, %.prol.preheader2007
  %i.aqt = phi ptr [ %i.aqv, %.prol.preheader2007 ], [ %i.aqo, %bb.eg ] ; 3 uses
  %prol.iter2012 = phi i64 [ %prol.iter2012.next, %.prol.preheader2007 ], [ 0, %bb.eg ]
  store i32 0, ptr %i.aqt, align 8
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 8
  store ptr null, ptr %i.aqu, align 8
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqt, i64 16 ; 2 uses
  %prol.iter2012.next = add i64 %prol.iter2012, 1 ; 2 uses
  %prol.iter2012.cmp.not = icmp eq i64 %prol.iter2012.next, %xtraiter2010
  br i1 %prol.iter2012.cmp.not, label %.prol.loopexit2008, label %.prol.preheader2007, !llvm.loop !438

.prol.loopexit2008:                               ; preds = %.prol.preheader2007, %bb.eg
  %.unr2013 = phi ptr [ %i.aqo, %bb.eg ], [ %i.aqv, %.prol.preheader2007 ]
  %i.aqw = icmp samesign ult i64 %i.aqs, 7
  br i1 %i.aqw, label %.loopexit579, label %.new2009

.new2009:                                         ; preds = %.prol.loopexit2008, %.new2009
  %i.aqx = phi ptr [ %i.arn, %.new2009 ], [ %.unr2013, %.prol.loopexit2008 ] ; 17 uses
  store i32 0, ptr %i.aqx, align 8
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqx, i64 8
  store ptr null, ptr %i.aqy, align 8
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqx, i64 16
  store i32 0, ptr %i.aqz, align 8
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqx, i64 24
  store ptr null, ptr %i.ara, align 8
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqx, i64 32
  store i32 0, ptr %i.arb, align 8
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqx, i64 40
  store ptr null, ptr %i.arc, align 8
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqx, i64 48
  store i32 0, ptr %i.ard, align 8
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqx, i64 56
  store ptr null, ptr %i.are, align 8
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqx, i64 64
  store i32 0, ptr %i.arf, align 8
  %i.arg = getelementptr inbounds nuw i8, ptr %i.aqx, i64 72
  store ptr null, ptr %i.arg, align 8
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aqx, i64 80
  store i32 0, ptr %i.arh, align 8
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aqx, i64 88
  store ptr null, ptr %i.ari, align 8
  %i.arj = getelementptr inbounds nuw i8, ptr %i.aqx, i64 96
  store i32 0, ptr %i.arj, align 8
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aqx, i64 104
  store ptr null, ptr %i.ark, align 8
  %i.arl = getelementptr inbounds nuw i8, ptr %i.aqx, i64 112
  store i32 0, ptr %i.arl, align 8
  %i.arm = getelementptr inbounds nuw i8, ptr %i.aqx, i64 120
  store ptr null, ptr %i.arm, align 8
  %i.arn = getelementptr inbounds nuw i8, ptr %i.aqx, i64 128 ; 2 uses
  %i.aro = icmp eq ptr %i.arn, %i.aqq
  br i1 %i.aro, label %.loopexit579, label %.new2009

.loopexit579:                                     ; preds = %.prol.loopexit2008, %.new2009, %bb.ef
  store i32 2, ptr %i.aqo, align 8
  %i.arp = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #32
          to label %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit427 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit427:     ; preds = %.loopexit579
  %i.arq = getelementptr inbounds nuw i8, ptr %i.aqn, i64 16 ; 2 uses
  store ptr %i.arp, ptr %i.arq, align 16
  store i32 0, ptr %i.arp, align 4
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arp, i64 4
  store i32 1, ptr %i.arr, align 4
  %i.ars = icmp ugt i32 %i.anf, 2
  br i1 %i.ars, label %.lr.ph903.preheader, label %._crit_edge904

.lr.ph903.preheader:                              ; preds = %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit427
  %wide.trip.count1153 = zext i32 %i.anf to i64
  br label %.lr.ph903

._crit_edge904:                                   ; preds = %bb.eh, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit427
  %i.art = load i32, ptr %i.fr, align 8
  %i.aru = icmp eq i32 %i.art, 2
  br i1 %i.aru, label %bb.ei, label %.loopexit569

.lr.ph903:                                        ; preds = %.lr.ph903.preheader, %bb.eh
  %indvars.iv1150 = phi i64 [ 2, %.lr.ph903.preheader ], [ %indvars.iv.next1151, %bb.eh ] ; 4 uses
  %9 = getelementptr [16 x i8], ptr %i.aqo, i64 %indvars.iv1150 ; 2 uses
  %10 = getelementptr i8, ptr %9, i64 -16
  %i.arv = getelementptr [16 x i8], ptr %i.aqo, i64 %indvars.iv1150
  %11 = getelementptr i8, ptr %i.arv, i64 -24
  %12 = load ptr, ptr %11, align 8
  %i.arw = getelementptr inbounds nuw i8, ptr %12, i64 4
  %13 = load i32, ptr %i.arw, align 4
  store i32 2, ptr %10, align 8
  %i.arx = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #32
          to label %bb.eh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.eh:                                            ; preds = %.lr.ph903
  %i.ary = getelementptr i8, ptr %9, i64 -8
  store ptr %i.arx, ptr %i.ary, align 8
  store i32 %13, ptr %i.arx, align 4
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arx, i64 4
  %i.asa = trunc nuw i64 %indvars.iv1150 to i32
  store i32 %i.asa, ptr %i.arz, align 4
  %indvars.iv.next1151 = add nuw nsw i64 %indvars.iv1150, 1 ; 2 uses
  %exitcond1154.not = icmp eq i64 %indvars.iv.next1151, %wide.trip.count1153
  br i1 %exitcond1154.not, label %._crit_edge904, label %.lr.ph903, !llvm.loop !439

bb.ei:                                            ; preds = %._crit_edge904
  %i.asb = add i32 %i.anf, -1
  %i.asc = zext i32 %i.asb to i64
  %i.asd = getelementptr inbounds nuw [16 x i8], ptr %i.aqo, i64 %i.asc ; 2 uses
  %i.ase = add i32 %i.anf, -2
  %i.asf = zext i32 %i.ase to i64
  %i.asg = getelementptr inbounds nuw [16 x i8], ptr %i.aqo, i64 %i.asf
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 8
  %i.asi = load ptr, ptr %i.ash, align 8
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 4
  %i.ask = load i32, ptr %i.asj, align 4
  %i.asl = load ptr, ptr %i.arq, align 16
  %i.asm = load i32, ptr %i.asl, align 4
  store i32 2, ptr %i.asd, align 8
  %i.asn = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #32
          to label %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit431 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit431:     ; preds = %bb.ei
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asd, i64 8
  store ptr %i.asn, ptr %i.aso, align 8
  store i32 %i.ask, ptr %i.asn, align 4
  br label %.loopexit569.sink.split

bb.ej:                                            ; preds = %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit362.thread
  %i.asp = udiv i32 %i.anf, 3                     ; 4 uses
  %i.asq = mul nuw i32 %i.asp, 3                  ; 2 uses
  %.not287 = icmp eq i32 %i.asq, %i.anf
  br i1 %.not287, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.asr = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.el unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.el:                                            ; preds = %bb.ek
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.asr, ptr noundef nonnull @.str.13)
          to label %bb.em unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.em:                                            ; preds = %bb.el, %bb.ej
  %.1 = phi i32 [ %i.anf, %bb.ej ], [ %i.asq, %bb.el ] ; 2 uses
  %i.ass = zext nneg i32 %i.asp to i64            ; 5 uses
  %i.ast = shl nuw nsw i64 %i.ass, 4
  %i.asu = or disjoint i64 %i.ast, 8
  %i.asv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.asu) #32
          to label %bb.en unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.en:                                            ; preds = %bb.em
  store i64 %i.ass, ptr %i.asv, align 16
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 8 ; 6 uses
  %i.asx = icmp ult i32 %i.anf, 3
  br i1 %i.asx, label %.loopexit584, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.asy = getelementptr inbounds nuw [16 x i8], ptr %i.asw, i64 %i.ass
  %i.asz = add nuw nsw i64 %i.ass, 1152921504606846975
  %i.ata = and i64 %i.asz, 1152921504606846975
  %xtraiter2003 = and i64 %i.ass, 7               ; 2 uses
  %lcmp.mod2004.not = icmp eq i64 %xtraiter2003, 0
  br i1 %lcmp.mod2004.not, label %.prol.loopexit2001, label %.prol.preheader2000

.prol.preheader2000:                              ; preds = %bb.eo, %.prol.preheader2000
  %i.atb = phi ptr [ %i.atd, %.prol.preheader2000 ], [ %i.asw, %bb.eo ] ; 3 uses
  %prol.iter2005 = phi i64 [ %prol.iter2005.next, %.prol.preheader2000 ], [ 0, %bb.eo ]
  store i32 0, ptr %i.atb, align 8
  %i.atc = getelementptr inbounds nuw i8, ptr %i.atb, i64 8
  store ptr null, ptr %i.atc, align 8
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atb, i64 16 ; 2 uses
  %prol.iter2005.next = add i64 %prol.iter2005, 1 ; 2 uses
  %prol.iter2005.cmp.not = icmp eq i64 %prol.iter2005.next, %xtraiter2003
  br i1 %prol.iter2005.cmp.not, label %.prol.loopexit2001, label %.prol.preheader2000, !llvm.loop !440

.prol.loopexit2001:                               ; preds = %.prol.preheader2000, %bb.eo
  %.unr2006 = phi ptr [ %i.asw, %bb.eo ], [ %i.atd, %.prol.preheader2000 ]
  %i.ate = icmp samesign ult i64 %i.ata, 7
  br i1 %i.ate, label %.loopexit584, label %.new2002

.new2002:                                         ; preds = %.prol.loopexit2001, %.new2002
  %i.atf = phi ptr [ %i.atv, %.new2002 ], [ %.unr2006, %.prol.loopexit2001 ] ; 17 uses
  store i32 0, ptr %i.atf, align 8
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 8
  store ptr null, ptr %i.atg, align 8
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atf, i64 16
  store i32 0, ptr %i.ath, align 8
  %i.ati = getelementptr inbounds nuw i8, ptr %i.atf, i64 24
  store ptr null, ptr %i.ati, align 8
  %i.atj = getelementptr inbounds nuw i8, ptr %i.atf, i64 32
  store i32 0, ptr %i.atj, align 8
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atf, i64 40
  store ptr null, ptr %i.atk, align 8
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atf, i64 48
  store i32 0, ptr %i.atl, align 8
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atf, i64 56
  store ptr null, ptr %i.atm, align 8
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atf, i64 64
  store i32 0, ptr %i.atn, align 8
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atf, i64 72
  store ptr null, ptr %i.ato, align 8
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atf, i64 80
  store i32 0, ptr %i.atp, align 8
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atf, i64 88
  store ptr null, ptr %i.atq, align 8
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atf, i64 96
  store i32 0, ptr %i.atr, align 8
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atf, i64 104
  store ptr null, ptr %i.ats, align 8
  %i.att = getelementptr inbounds nuw i8, ptr %i.atf, i64 112
  store i32 0, ptr %i.att, align 8
  %i.atu = getelementptr inbounds nuw i8, ptr %i.atf, i64 120
  store ptr null, ptr %i.atu, align 8
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atf, i64 128 ; 2 uses
  %i.atw = icmp eq ptr %i.atv, %i.asy
  br i1 %i.atw, label %.loopexit584, label %.new2002

.loopexit584:                                     ; preds = %.prol.loopexit2001, %.new2002, %bb.en
  %.not939 = icmp eq i32 %.1, 0
  br i1 %.not939, label %.loopexit569, label %.lr.ph901

.lr.ph901:                                        ; preds = %.loopexit584, %bb.ep
  %.0224899 = phi i32 [ %i.aug, %bb.ep ], [ 0, %.loopexit584 ] ; 5 uses
  %i.atx = udiv i32 %.0224899, 3
  %i.aty = zext nneg i32 %i.atx to i64
  %i.atz = getelementptr inbounds nuw [16 x i8], ptr %i.asw, i64 %i.aty ; 2 uses
  store i32 3, ptr %i.atz, align 8
  %i.aua = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #32
          to label %bb.ep unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.ep:                                            ; preds = %.lr.ph901
  %i.aub = add i32 %.0224899, 2
  %i.auc = add nuw i32 %.0224899, 1
  %i.aud = getelementptr inbounds nuw i8, ptr %i.atz, i64 8
  store ptr %i.aua, ptr %i.aud, align 8
  store i32 %.0224899, ptr %i.aua, align 4
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aua, i64 4
  store i32 %i.auc, ptr %i.aue, align 4
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aua, i64 8
  store i32 %i.aub, ptr %i.auf, align 4
  %i.aug = add i32 %.0224899, 3                   ; 2 uses
  %i.auh = icmp ult i32 %i.aug, %.1
  br i1 %i.auh, label %.lr.ph901, label %.loopexit569, !llvm.loop !441

bb.eq:                                            ; preds = %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit362.thread
  %i.aui = add i32 %i.anf, -2                     ; 4 uses
  %i.auj = zext i32 %i.aui to i64                 ; 5 uses
  %i.auk = shl nuw nsw i64 %i.auj, 4
  %i.aul = or disjoint i64 %i.auk, 8
  %i.aum = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aul) #32
          to label %bb.er unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

bb.er:                                            ; preds = %bb.eq
  store i64 %i.auj, ptr %i.aum, align 16
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 8 ; 8 uses
  %i.auo = icmp eq i32 %i.aui, 0
  br i1 %i.auo, label %.loopexit588, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.aup = getelementptr inbounds nuw [16 x i8], ptr %i.aun, i64 %i.auj
  %i.auq = add nuw nsw i64 %i.auj, 1152921504606846975
  %i.aur = and i64 %i.auq, 1152921504606846975
  %xtraiter1996 = and i64 %i.auj, 7               ; 2 uses
  %lcmp.mod1997.not = icmp eq i64 %xtraiter1996, 0
  br i1 %lcmp.mod1997.not, label %.prol.loopexit1994, label %.prol.preheader1993

.prol.preheader1993:                              ; preds = %bb.es, %.prol.preheader1993
  %i.aus = phi ptr [ %i.auu, %.prol.preheader1993 ], [ %i.aun, %bb.es ] ; 3 uses
  %prol.iter1998 = phi i64 [ %prol.iter1998.next, %.prol.preheader1993 ], [ 0, %bb.es ]
  store i32 0, ptr %i.aus, align 8
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aus, i64 8
  store ptr null, ptr %i.aut, align 8
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aus, i64 16 ; 2 uses
  %prol.iter1998.next = add i64 %prol.iter1998, 1 ; 2 uses
  %prol.iter1998.cmp.not = icmp eq i64 %prol.iter1998.next, %xtraiter1996
  br i1 %prol.iter1998.cmp.not, label %.prol.loopexit1994, label %.prol.preheader1993, !llvm.loop !442

.prol.loopexit1994:                               ; preds = %.prol.preheader1993, %bb.es
  %.unr1999 = phi ptr [ %i.aun, %bb.es ], [ %i.auu, %.prol.preheader1993 ]
  %i.auv = icmp samesign ult i64 %i.aur, 7
  br i1 %i.auv, label %.loopexit588, label %.new1995

.new1995:                                         ; preds = %.prol.loopexit1994, %.new1995
  %i.auw = phi ptr [ %i.avm, %.new1995 ], [ %.unr1999, %.prol.loopexit1994 ] ; 17 uses
  store i32 0, ptr %i.auw, align 8
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 8
  store ptr null, ptr %i.aux, align 8
  %i.auy = getelementptr inbounds nuw i8, ptr %i.auw, i64 16
  store i32 0, ptr %i.auy, align 8
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auw, i64 24
  store ptr null, ptr %i.auz, align 8
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auw, i64 32
  store i32 0, ptr %i.ava, align 8
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auw, i64 40
  store ptr null, ptr %i.avb, align 8
  %i.avc = getelementptr inbounds nuw i8, ptr %i.auw, i64 48
  store i32 0, ptr %i.avc, align 8
  %i.avd = getelementptr inbounds nuw i8, ptr %i.auw, i64 56
  store ptr null, ptr %i.avd, align 8
  %i.ave = getelementptr inbounds nuw i8, ptr %i.auw, i64 64
end_hunk_0
