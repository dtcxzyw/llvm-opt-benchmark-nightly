inline.NumInlined: 85
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@sort_typeBstar:.preheader340.preheader
  %i.aoj = load i32, ptr %i.aoi, align 4, !tbaa !8
  %i.aok = add nsw i32 %i.aoj, 24
  br label %tr_ilg.exit558.i.i

bb.fr:                                            ; preds = %bb.fp
  %i.aol = lshr i32 %i.aof, 16
  %i.aom = zext nneg i32 %i.aol to i64
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.aom
  %i.aoo = load i32, ptr %i.aon, align 4, !tbaa !8
  %i.aop = add nsw i32 %i.aoo, 16
  br label %tr_ilg.exit558.i.i

bb.fs:                                            ; preds = %bb.fo
  %.not7.i557.i.i = icmp samesign ult i32 %i.aof, 256
  br i1 %.not7.i557.i.i, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.aoq = lshr i32 %i.aof, 8
  %i.aor = zext nneg i32 %i.aoq to i64
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.aor
  %i.aot = load i32, ptr %i.aos, align 4, !tbaa !8
  %i.aou = add nsw i32 %i.aot, 8
  br label %tr_ilg.exit558.i.i

bb.fu:                                            ; preds = %bb.fs
  %i.aov = zext nneg i32 %i.aof to i64
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.aov
  %i.aox = load i32, ptr %i.aow, align 4, !tbaa !8
  br label %tr_ilg.exit558.i.i

tr_ilg.exit558.i.i:                               ; preds = %bb.fu, %bb.ft, %bb.fr, %bb.fq, %bb.fn
  %i.aoy = phi i32 [ -1, %bb.fn ], [ %i.aop, %bb.fr ], [ %i.aok, %bb.fq ], [ %i.aou, %bb.ft ], [ %i.aox, %bb.fu ] ; 3 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.anq, i64 8 ; 10 uses
  %i.apa = icmp ult ptr %i.aoz, %.0459.ph.i.i
  %i.apb = ptrtoint ptr %i.aoz to i64             ; 4 uses
  br i1 %i.apa, label %bb.fv, label %tr_ilg.exit558._crit_edge.i.i

bb.fv:                                            ; preds = %tr_ilg.exit558.i.i
  %i.apc = sub i64 %i.apb, %i.rj
  %i.apd = lshr exact i64 %i.apc, 2
  %i.ape = trunc i64 %i.apd to i32
  %i.apf = add i32 %i.ape, -1
  %i.apg = icmp ult ptr %.1463.i.i, %i.aoz
  br i1 %i.apg, label %.lr.ph686.i.i, label %tr_ilg.exit558._crit_edge.i.i

.lr.ph686.i.i:                                    ; preds = %bb.fv, %.lr.ph686.i.i
  %i.aph = phi ptr [ %i.apl, %.lr.ph686.i.i ], [ %.1463.i.i, %bb.fv ] ; 2 uses
  %i.api = load i32, ptr %i.aph, align 4, !tbaa !8
  %i.apj = sext i32 %i.api to i64
  %i.apk = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.apj
  store i32 %i.apf, ptr %i.apk, align 4, !tbaa !8
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aph, i64 4 ; 2 uses
  %i.apm = icmp ult ptr %i.apl, %i.aoz
  br i1 %i.apm, label %.lr.ph686.i.i, label %tr_ilg.exit558._crit_edge.i.i, !llvm.loop !82

tr_ilg.exit558._crit_edge.i.i:                    ; preds = %.lr.ph686.i.i, %bb.fv, %tr_ilg.exit558.i.i
  %i.apn = ptrtoint ptr %.1463.i.i to i64
  %i.apo = sub i64 %i.apb, %i.apn                 ; 2 uses
  %i.app = lshr exact i64 %i.apo, 2
  %i.apq = trunc i64 %i.app to i32                ; 3 uses
  %.not.i559.i.i = icmp slt i32 %.sroa.9.3.i, %i.apq
  br i1 %.not.i559.i.i, label %bb.fw, label %bb.fy

bb.fw:                                            ; preds = %tr_ilg.exit558._crit_edge.i.i
  %i.apr = icmp eq i32 %.sroa.0.3.i, 0
  br i1 %i.apr, label %bb.gc, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.aps = add i32 %.sroa.9.3.i, %i.bu
  %i.apt = add nsw i32 %.sroa.0.3.i, -1
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %tr_ilg.exit558._crit_edge.i.i
  %.pn216.i.a = phi i32 [ %i.aps, %bb.fx ], [ %.sroa.9.3.i, %tr_ilg.exit558._crit_edge.i.i ]
  %.sroa.0.7.i = phi i32 [ %i.apt, %bb.fx ], [ %.sroa.0.3.i, %tr_ilg.exit558._crit_edge.i.i ] ; 3 uses
  %.sroa.9.7.i = sub i32 %.pn216.i.a, %i.apq      ; 3 uses
  %i.apu = ptrtoint ptr %.0459.ph.i.i to i64
  %i.apv = sub i64 %i.apu, %i.apb                 ; 2 uses
  %.not519.i.i = icmp sgt i64 %i.apo, %i.apv
  br i1 %.not519.i.i, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.apw = sext i32 %.0445.ph.i.i to i64
  %i.apx = getelementptr inbounds [32 x i8], ptr %5, i64 %i.apw ; 5 uses
  store ptr %.0456.ph.i.i, ptr %i.apx, align 16, !tbaa !67
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 8
  store ptr %i.aoz, ptr %i.apy, align 8, !tbaa !71
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apx, i64 16
  store ptr %.0459.ph.i.i, ptr %i.apz, align 16, !tbaa !72
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apx, i64 24
  store i32 -3, ptr %i.aqa, align 8, !tbaa !73
  %i.aqb = add nsw i32 %.0445.ph.i.i, 1
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apx, i64 28
  store i32 %.0.ph.i.i, ptr %i.aqc, align 4, !tbaa !74
  %i.aqd = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.rn
  br label %.outer.i.i.backedge

bb.ga:                                            ; preds = %bb.fy
  %i.aqe = icmp sgt i64 %i.apv, 4
  %i.aqf = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.rn ; 2 uses
  br i1 %i.aqe, label %bb.gb, label %.outer.i.i.backedge

bb.gb:                                            ; preds = %bb.ga
  %i.aqg = sext i32 %.0445.ph.i.i to i64
  %i.aqh = getelementptr inbounds [32 x i8], ptr %5, i64 %i.aqg ; 5 uses
  store ptr %i.aqf, ptr %i.aqh, align 16, !tbaa !67
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 8
  store ptr %.1463.i.i, ptr %i.aqi, align 8, !tbaa !71
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqh, i64 16
  store ptr %i.aoz, ptr %i.aqj, align 16, !tbaa !72
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqh, i64 24
  store i32 %i.aoy, ptr %i.aqk, align 8, !tbaa !73
  %i.aql = add nsw i32 %.0445.ph.i.i, 1
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqh, i64 28
  store i32 %.0.ph.i.i, ptr %i.aqm, align 4, !tbaa !74
  br label %.outer.i.i.backedge

bb.gc:                                            ; preds = %bb.fw
  %i.aqn = add nsw i32 %.sroa.23.0.i, %i.apq      ; 3 uses
  %i.aqo = icmp sgt i32 %.0.ph.i.i, -1
  br i1 %i.aqo, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.aqp = zext nneg i32 %.0.ph.i.i to i64
  %i.aqq = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %i.aqp
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 24
  store i32 -1, ptr %i.aqr, align 8, !tbaa !73
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.aqs = ptrtoint ptr %.0459.ph.i.i to i64
  %i.aqt = sub i64 %i.aqs, %i.apb
  %i.aqu = icmp sgt i64 %i.aqt, 4
  br i1 %i.aqu, label %.outer.i.i.backedge, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.aqv = icmp eq i32 %.0445.ph.i.i, 0
  br i1 %i.aqv, label %tr_introsort.exit.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aqw = add nsw i32 %.0445.ph.i.i, -1          ; 2 uses
  %i.aqx = sext i32 %i.aqw to i64
  %i.aqy = getelementptr inbounds [32 x i8], ptr %5, i64 %i.aqx ; 5 uses
  %i.aqz = load ptr, ptr %i.aqy, align 16, !tbaa !67
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqy, i64 8
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !71
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqy, i64 16
  %i.ard = load ptr, ptr %i.arc, align 16, !tbaa !72
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqy, i64 24
  %i.arf = load i32, ptr %i.are, align 8, !tbaa !73
  %i.arg = getelementptr inbounds nuw i8, ptr %i.aqy, i64 28
  %i.arh = load i32, ptr %i.arg, align 4, !tbaa !74
  br label %.outer.i.i.backedge

bb.gh:                                            ; preds = %.critedge.i.i300
  %i.ari = icmp eq i32 %.0445.ph.i.i, 0
  br i1 %i.ari, label %tr_introsort.exit.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.arj = add nsw i32 %.0445.ph.i.i, -1          ; 2 uses
  %i.ark = sext i32 %i.arj to i64
  %i.arl = getelementptr inbounds [32 x i8], ptr %5, i64 %i.ark ; 5 uses
  %i.arm = load ptr, ptr %i.arl, align 16, !tbaa !67
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arl, i64 8
  %i.aro = load ptr, ptr %i.arn, align 8, !tbaa !71
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arl, i64 16
  %i.arq = load ptr, ptr %i.arp, align 16, !tbaa !72
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arl, i64 24
  %i.ars = load i32, ptr %i.arr, align 8, !tbaa !73
  %i.art = getelementptr inbounds nuw i8, ptr %i.arl, i64 28
  %i.aru = load i32, ptr %i.art, align 4, !tbaa !74
  br label %.outer.i.i.backedge

.lr.ph651.i.i:                                    ; preds = %.lr.ph647.split.i.i
  br i1 %i.tj, label %bb.gj, label %._crit_edge72.i.i.i

bb.gj:                                            ; preds = %.lr.ph651.i.i
  %i.arv = load i32, ptr %i.tn, align 4, !tbaa !8 ; 2 uses
  %i.arw = sext i32 %i.arv to i64
  %i.arx = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.arw
  %i.ary = load i32, ptr %i.arx, align 4, !tbaa !8
  %i.arz = load i32, ptr %i.tp, align 4, !tbaa !8 ; 2 uses
  %i.asa = sext i32 %i.arz to i64
  %i.asb = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.asa
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !8
  %i.asd = icmp slt i32 %i.ary, %i.asc
  br i1 %i.asd, label %bb.gk, label %._crit_edge72.i.i.i

bb.gk:                                            ; preds = %bb.gj
  store i32 %i.arv, ptr %i.tp, align 4, !tbaa !8
  store i32 %i.arz, ptr %i.tn, align 4, !tbaa !8
  br label %._crit_edge72.i.i.i

._crit_edge72.i.i.i:                              ; preds = %bb.gk, %bb.gj, %.lr.ph651.i.i
  %.0.i566.i.i = phi i32 [ %i.tk, %bb.gk ], [ %i.tk, %bb.gj ], [ %i.th, %.lr.ph651.i.i ] ; 8 uses
  %i.ase = icmp sgt i32 %.0.i566.i.i, 1           ; 3 uses
  br i1 %i.ase, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i567.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %._crit_edge72.i.i.i
  %i.asf = lshr i32 %.0.i566.i.i, 1
  %i.asg = zext nneg i32 %i.asf to i64
  br label %.lr.ph.i569.i.i

.lr.ph.i569.i.i:                                  ; preds = %tr_fixdown.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.asg, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %tr_fixdown.exit.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %indvars.i.i.i = trunc i64 %indvars.iv.next.i.i.i to i32 ; 2 uses
  %6 = and i64 %indvars.iv.next.i.i.i, 4294967295 ; 2 uses
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %6
  %i.asi = load i32, ptr %i.ash, align 4, !tbaa !8 ; 2 uses
  %i.asj = sext i32 %i.asi to i64
  %i.ask = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.asj
  %i.asl = load i32, ptr %i.ask, align 4, !tbaa !8
  %7 = shl nuw nsw i32 %indvars.i.i.i, 1          ; 2 uses
  %8 = or disjoint i32 %7, 1                      ; 2 uses
  %9 = icmp slt i32 %8, %.0.i566.i.i
  br i1 %9, label %.lr.ph.i.i.i.i304, label %tr_fixdown.exit.i.i.i

.lr.ph.i.i.i.i304:                                ; preds = %.lr.ph.i569.i.i, %bb.gl
  %i.asm = phi i32 [ %i.ati, %bb.gl ], [ %8, %.lr.ph.i569.i.i ] ; 2 uses
  %i.asn = phi i32 [ %i.ath, %bb.gl ], [ %7, %.lr.ph.i569.i.i ]
  %.02530.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.gl ], [ %indvars.i.i.i, %.lr.ph.i569.i.i ] ; 2 uses
  %i.aso = add nuw nsw i32 %i.asn, 2              ; 2 uses
  %i.asp = zext nneg i32 %i.asm to i64
  %i.asq = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.asp
  %i.asr = load i32, ptr %i.asq, align 4, !tbaa !8
  %i.ass = sext i32 %i.asr to i64
  %i.ast = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.ass
  %i.asu = load i32, ptr %i.ast, align 4, !tbaa !8 ; 2 uses
  %i.asv = zext nneg i32 %i.aso to i64
  %i.asw = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.asv
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !8
  %i.asy = sext i32 %i.asx to i64
  %i.asz = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.asy
  %i.ata = load i32, ptr %i.asz, align 4, !tbaa !8 ; 2 uses
  %spec.select29.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.asu, i32 %i.ata)
  %.not.i.i.i.i = icmp sgt i32 %spec.select29.i.i.i.i, %i.asl
  br i1 %.not.i.i.i.i, label %bb.gl, label %.lr.ph.i.tr_fixdown.exit.loopexit_crit_edge.i.i.i

.lr.ph.i.tr_fixdown.exit.loopexit_crit_edge.i.i.i: ; preds = %.lr.ph.i.i.i.i304
  %.pre74.i.i.i = zext nneg i32 %.02530.i.i.i.i to i64
  br label %tr_fixdown.exit.i.i.i

bb.gl:                                            ; preds = %.lr.ph.i.i.i.i304
  %i.atb = icmp slt i32 %i.asu, %i.ata
  %spec.select.i.i.i.i = select i1 %i.atb, i32 %i.aso, i32 %i.asm ; 3 uses
  %i.atc = zext nneg i32 %spec.select.i.i.i.i to i64 ; 2 uses
  %i.atd = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.atc
  %i.ate = load i32, ptr %i.atd, align 4, !tbaa !8
  %i.atf = zext nneg i32 %.02530.i.i.i.i to i64
  %i.atg = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.atf
  store i32 %i.ate, ptr %i.atg, align 4, !tbaa !8
  %i.ath = shl nuw nsw i32 %spec.select.i.i.i.i, 1 ; 2 uses
  %i.ati = or disjoint i32 %i.ath, 1              ; 2 uses
  %i.atj = icmp slt i32 %i.ati, %.0.i566.i.i
  br i1 %i.atj, label %.lr.ph.i.i.i.i304, label %tr_fixdown.exit.i.i.i, !llvm.loop !83

tr_fixdown.exit.i.i.i:                            ; preds = %bb.gl, %.lr.ph.i.tr_fixdown.exit.loopexit_crit_edge.i.i.i, %.lr.ph.i569.i.i
  %.pre-phi.i.i.i = phi i64 [ %6, %.lr.ph.i569.i.i ], [ %.pre74.i.i.i, %.lr.ph.i.tr_fixdown.exit.loopexit_crit_edge.i.i.i ], [ %i.atc, %bb.gl ]
  %i.atk = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %.pre-phi.i.i.i
  store i32 %i.asi, ptr %i.atk, align 4, !tbaa !8
  %i.atl = icmp sgt i64 %indvars.iv.i.i.i, 1
  br i1 %i.atl, label %.lr.ph.i569.i.i, label %._crit_edge.i567.i.i, !llvm.loop !84

._crit_edge.i567.i.i:                             ; preds = %tr_fixdown.exit.i.i.i, %._crit_edge72.i.i.i
  br i1 %i.tj, label %bb.gm, label %bb.go

bb.gm:                                            ; preds = %._crit_edge.i567.i.i
  %i.atm = load i32, ptr %.0462.ph.i.i, align 4, !tbaa !8
  %i.atn = sext i32 %.0.i566.i.i to i64
  %i.ato = getelementptr inbounds [4 x i8], ptr %.0462.ph.i.i, i64 %i.atn ; 2 uses
  %i.atp = load i32, ptr %i.ato, align 4, !tbaa !8
  store i32 %i.atp, ptr %.0462.ph.i.i, align 4, !tbaa !8
  store i32 %i.atm, ptr %i.ato, align 4, !tbaa !8
  %i.atq = load i32, ptr %.0462.ph.i.i, align 4, !tbaa !8 ; 2 uses
  %i.atr = sext i32 %i.atq to i64
  %i.ats = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.atr
  %i.att = load i32, ptr %i.ats, align 4, !tbaa !8
  br i1 %i.ase, label %.lr.ph.i50.i.i.i, label %tr_fixdown.exit55.i.i.i

.lr.ph.i50.i.i.i:                                 ; preds = %bb.gm, %bb.gn
  %i.atu = phi i32 [ %i.auq, %bb.gn ], [ 1, %bb.gm ] ; 2 uses
  %i.atv = phi i32 [ %i.aup, %bb.gn ], [ 0, %bb.gm ]
  %.02530.i51.i.i.i = phi i32 [ %spec.select.i54.i.i.i, %bb.gn ], [ 0, %bb.gm ] ; 2 uses
  %i.atw = add nuw nsw i32 %i.atv, 2              ; 2 uses
  %i.atx = zext nneg i32 %i.atu to i64
  %i.aty = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.atx
  %i.atz = load i32, ptr %i.aty, align 4, !tbaa !8
  %i.aua = sext i32 %i.atz to i64
  %i.aub = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.aua
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !8 ; 2 uses
  %i.aud = zext nneg i32 %i.atw to i64
  %i.aue = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.aud
  %i.auf = load i32, ptr %i.aue, align 4, !tbaa !8
  %i.aug = sext i32 %i.auf to i64
  %i.auh = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.aug
  %i.aui = load i32, ptr %i.auh, align 4, !tbaa !8 ; 2 uses
  %spec.select29.i52.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.auc, i32 %i.aui)
  %.not.i53.i.i.i = icmp sgt i32 %spec.select29.i52.i.i.i, %i.att
  br i1 %.not.i53.i.i.i, label %bb.gn, label %.lr.ph.i50.i.tr_fixdown.exit55.loopexit.i_crit_edge.i.i

.lr.ph.i50.i.tr_fixdown.exit55.loopexit.i_crit_edge.i.i: ; preds = %.lr.ph.i50.i.i.i
  %.pre710.i.i = zext nneg i32 %.02530.i51.i.i.i to i64
  br label %tr_fixdown.exit55.i.i.i

bb.gn:                                            ; preds = %.lr.ph.i50.i.i.i
  %i.auj = icmp slt i32 %i.auc, %i.aui
  %spec.select.i54.i.i.i = select i1 %i.auj, i32 %i.atw, i32 %i.atu ; 3 uses
  %i.auk = zext nneg i32 %spec.select.i54.i.i.i to i64 ; 2 uses
  %i.aul = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.auk
  %i.aum = load i32, ptr %i.aul, align 4, !tbaa !8
  %i.aun = zext nneg i32 %.02530.i51.i.i.i to i64
  %i.auo = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.aun
  store i32 %i.aum, ptr %i.auo, align 4, !tbaa !8
  %i.aup = shl nuw nsw i32 %spec.select.i54.i.i.i, 1 ; 2 uses
  %i.auq = or disjoint i32 %i.aup, 1              ; 2 uses
  %i.aur = icmp slt i32 %i.auq, %.0.i566.i.i
  br i1 %i.aur, label %.lr.ph.i50.i.i.i, label %tr_fixdown.exit55.i.i.i, !llvm.loop !83

tr_fixdown.exit55.i.i.i:                          ; preds = %bb.gn, %.lr.ph.i50.i.tr_fixdown.exit55.loopexit.i_crit_edge.i.i, %bb.gm
  %.025.lcssa.i49.i.i.i = phi i64 [ 0, %bb.gm ], [ %.pre710.i.i, %.lr.ph.i50.i.tr_fixdown.exit55.loopexit.i_crit_edge.i.i ], [ %i.auk, %bb.gn ]
  %i.aus = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %.025.lcssa.i49.i.i.i
  store i32 %i.atq, ptr %i.aus, align 4, !tbaa !8
  br label %bb.go

bb.go:                                            ; preds = %tr_fixdown.exit55.i.i.i, %._crit_edge.i567.i.i
  br i1 %i.ase, label %.lr.ph66.preheader.i.i.i, label %tr_heapsort.exit.i.i

.lr.ph66.preheader.i.i.i:                         ; preds = %bb.go
  %i.aut = zext nneg i32 %.0.i566.i.i to i64
  %indvars.iv.next70.i622.i.i = add nsw i64 %i.aut, -1 ; 2 uses
  %i.auu = load i32, ptr %.0462.ph.i.i, align 4, !tbaa !8 ; 2 uses
  %i.auv = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %indvars.iv.next70.i622.i.i ; 3 uses
  %i.auw = load i32, ptr %i.auv, align 4, !tbaa !8 ; 2 uses
  store i32 %i.auw, ptr %.0462.ph.i.i, align 4, !tbaa !8
  %.not.i568623.i.i = icmp eq i32 %.0.i566.i.i, 2
  br i1 %.not.i568623.i.i, label %tr_fixdown.exit62.thread.i.i.i, label %.lr.ph.i57.i.preheader.i.i

.lr.ph.i57.i.preheader.i.i:                       ; preds = %.lr.ph66.preheader.i.i.i, %tr_fixdown.exit62.i.i.i
  %i.aux = phi i32 [ %i.awd, %tr_fixdown.exit62.i.i.i ], [ %i.auw, %.lr.ph66.preheader.i.i.i ] ; 2 uses
  %i.auy = phi ptr [ %i.awc, %tr_fixdown.exit62.i.i.i ], [ %i.auv, %.lr.ph66.preheader.i.i.i ]
  %i.auz = phi i32 [ %i.awb, %tr_fixdown.exit62.i.i.i ], [ %i.auu, %.lr.ph66.preheader.i.i.i ]
  %indvars.iv.next70.i624.i.i = phi i64 [ %indvars.iv.next70.i.i.i, %tr_fixdown.exit62.i.i.i ], [ %indvars.iv.next70.i622.i.i, %.lr.ph66.preheader.i.i.i ] ; 3 uses
  %.pn.i.i303 = sext i32 %i.aux to i64
  %.in.i.i = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %.pn.i.i303
  %i.ava = load i32, ptr %.in.i.i, align 4, !tbaa !8
  br label %.lr.ph.i57.i.i.i

tr_fixdown.exit62.thread.i.i.i:                   ; preds = %tr_fixdown.exit62.i.i.i, %.lr.ph66.preheader.i.i.i
  %.lcssa601.i.i.a = phi i32 [ %i.auu, %.lr.ph66.preheader.i.i.i ], [ %i.awb, %tr_fixdown.exit62.i.i.i ]
  %.lcssa.i.i.a = phi ptr [ %i.auv, %.lr.ph66.preheader.i.i.i ], [ %i.awc, %tr_fixdown.exit62.i.i.i ]
  store i32 %.lcssa601.i.i.a, ptr %.lcssa.i.i.a, align 4, !tbaa !8
  br label %tr_heapsort.exit.i.i

.lr.ph.i57.i.i.i:                                 ; preds = %bb.gp, %.lr.ph.i57.i.preheader.i.i
  %i.avb = phi i32 [ %i.avx, %bb.gp ], [ 1, %.lr.ph.i57.i.preheader.i.i ] ; 2 uses
  %i.avc = phi i32 [ %i.avw, %bb.gp ], [ 0, %.lr.ph.i57.i.preheader.i.i ]
  %.02530.i58.i.i.i = phi i32 [ %spec.select.i61.i.i.i, %bb.gp ], [ 0, %.lr.ph.i57.i.preheader.i.i ] ; 2 uses
  %i.avd = add nuw nsw i32 %i.avc, 2              ; 2 uses
  %i.ave = zext nneg i32 %i.avb to i64
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.ave
  %i.avg = load i32, ptr %i.avf, align 4, !tbaa !8
  %i.avh = sext i32 %i.avg to i64
  %i.avi = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.avh
  %i.avj = load i32, ptr %i.avi, align 4, !tbaa !8 ; 2 uses
  %i.avk = zext nneg i32 %i.avd to i64
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.avk
  %i.avm = load i32, ptr %i.avl, align 4, !tbaa !8
  %i.avn = sext i32 %i.avm to i64
  %i.avo = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.avn
  %i.avp = load i32, ptr %i.avo, align 4, !tbaa !8 ; 2 uses
  %spec.select29.i59.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.avj, i32 %i.avp)
  %.not.i60.i.i.i = icmp sgt i32 %spec.select29.i59.i.i.i, %i.ava
  br i1 %.not.i60.i.i.i, label %bb.gp, label %.lr.ph.i57.i.tr_fixdown.exit62.i_crit_edge.i.i

.lr.ph.i57.i.tr_fixdown.exit62.i_crit_edge.i.i:   ; preds = %.lr.ph.i57.i.i.i
  %.pre712.i.i = zext nneg i32 %.02530.i58.i.i.i to i64
  br label %tr_fixdown.exit62.i.i.i

bb.gp:                                            ; preds = %.lr.ph.i57.i.i.i
  %i.avq = icmp slt i32 %i.avj, %i.avp
  %spec.select.i61.i.i.i = select i1 %i.avq, i32 %i.avd, i32 %i.avb ; 3 uses
  %i.avr = zext nneg i32 %spec.select.i61.i.i.i to i64 ; 2 uses
  %i.avs = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.avr
  %i.avt = load i32, ptr %i.avs, align 4, !tbaa !8
  %i.avu = zext nneg i32 %.02530.i58.i.i.i to i64
  %i.avv = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.avu
  store i32 %i.avt, ptr %i.avv, align 4, !tbaa !8
  %i.avw = shl nuw nsw i32 %spec.select.i61.i.i.i, 1 ; 2 uses
  %i.avx = or disjoint i32 %i.avw, 1              ; 2 uses
  %i.avy = zext nneg i32 %i.avx to i64
  %i.avz = icmp sgt i64 %indvars.iv.next70.i624.i.i, %i.avy
  br i1 %i.avz, label %.lr.ph.i57.i.i.i, label %tr_fixdown.exit62.i.i.i, !llvm.loop !83

tr_fixdown.exit62.i.i.i:                          ; preds = %bb.gp, %.lr.ph.i57.i.tr_fixdown.exit62.i_crit_edge.i.i
  %.pre-phi713.i.i = phi i64 [ %.pre712.i.i, %.lr.ph.i57.i.tr_fixdown.exit62.i_crit_edge.i.i ], [ %i.avr, %bb.gp ]
  %i.awa = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %.pre-phi713.i.i
  store i32 %i.aux, ptr %i.awa, align 4, !tbaa !8
  store i32 %i.auz, ptr %i.auy, align 4, !tbaa !8
  %indvars.iv.next70.i.i.i = add nsw i64 %indvars.iv.next70.i624.i.i, -1 ; 2 uses
  %i.awb = load i32, ptr %.0462.ph.i.i, align 4, !tbaa !8 ; 2 uses
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %indvars.iv.next70.i.i.i ; 3 uses
  %i.awd = load i32, ptr %i.awc, align 4, !tbaa !8 ; 2 uses
  store i32 %i.awd, ptr %.0462.ph.i.i, align 4, !tbaa !8
  %.not.i568.i.i = icmp eq i64 %indvars.iv.next70.i624.i.i, 2
  br i1 %.not.i568.i.i, label %tr_fixdown.exit62.thread.i.i.i, label %.lr.ph.i57.i.preheader.i.i

tr_heapsort.exit.i.i:                             ; preds = %tr_fixdown.exit62.thread.i.i.i, %bb.go
  br i1 %i.tr, label %.lr.ph637.i.i, label %._crit_edge.thread.i.i299

.lr.ph637.i.i:                                    ; preds = %tr_heapsort.exit.i.i, %.critedge2.i.i
  %storemerge636.i.i = phi ptr [ %storemerge515.lcssa626.i.i, %.critedge2.i.i ], [ %i.tq, %tr_heapsort.exit.i.i ] ; 2 uses
  %i.awe = load i32, ptr %storemerge636.i.i, align 4, !tbaa !8
  %i.awf = sext i32 %i.awe to i64
  %i.awg = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.awf
  %i.awh = load i32, ptr %i.awg, align 4, !tbaa !8
  %storemerge515627.i.i = getelementptr inbounds i8, ptr %storemerge636.i.i, i64 -4 ; 3 uses
  %.not516628.i.i = icmp ugt ptr %.0462.ph.i.i, %storemerge515627.i.i
  br i1 %.not516628.i.i, label %.critedge2.i.i, label %.lr.ph.i.i302

.lr.ph.i.i302:                                    ; preds = %.lr.ph637.i.i, %bb.gq
  %storemerge515629.i.i = phi ptr [ %storemerge515.i.i, %bb.gq ], [ %storemerge515627.i.i, %.lr.ph637.i.i ] ; 4 uses
  %i.awi = load i32, ptr %storemerge515629.i.i, align 4, !tbaa !8 ; 2 uses
  %i.awj = sext i32 %i.awi to i64
  %i.awk = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.awj
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !8
  %i.awm = icmp eq i32 %i.awl, %i.awh
  br i1 %i.awm, label %bb.gq, label %.critedge2.i.i

bb.gq:                                            ; preds = %.lr.ph.i.i302
  %i.awn = xor i32 %i.awi, -1
  store i32 %i.awn, ptr %storemerge515629.i.i, align 4, !tbaa !8
  %storemerge515.i.i = getelementptr inbounds i8, ptr %storemerge515629.i.i, i64 -4 ; 3 uses
  %.not516.i.i = icmp ugt ptr %.0462.ph.i.i, %storemerge515.i.i
  br i1 %.not516.i.i, label %.critedge2.i.i, label %.lr.ph.i.i302, !llvm.loop !85

.critedge2.i.i:                                   ; preds = %bb.gq, %.lr.ph.i.i302, %.lr.ph637.i.i
  %storemerge515.lcssa626.i.i = phi ptr [ %storemerge515627.i.i, %.lr.ph637.i.i ], [ %storemerge515629.i.i, %.lr.ph.i.i302 ], [ %storemerge515.i.i, %bb.gq ] ; 2 uses
  %i.awo = icmp ult ptr %.0462.ph.i.i, %storemerge515.lcssa626.i.i
  br i1 %i.awo, label %.lr.ph637.i.i, label %._crit_edge.thread.i.i299, !llvm.loop !86

bb.gr:                                            ; preds = %.lr.ph647.split.i.i
  %i.awp = add nsw i32 %.0449.ph.i.i, -1          ; 20 uses
  %i.awq = lshr exact i64 %i.te, 2
  %i.awr = trunc i64 %i.awq to i32                ; 4 uses
  %i.aws = sdiv i32 %i.awr, 2
  %i.awt = sext i32 %i.aws to i64
  %i.awu = getelementptr inbounds [4 x i8], ptr %.0462.ph.i.i, i64 %i.awt ; 11 uses
  %i.awv = icmp slt i32 %i.awr, 513
  br i1 %i.awv, label %bb.gs, label %bb.gw

bb.gs:                                            ; preds = %bb.gr
  %i.aww = icmp slt i32 %i.awr, 33
  br i1 %i.aww, label %bb.gt, label %bb.gv

bb.gt:                                            ; preds = %bb.gs
  %i.awx = load i32, ptr %.0462.ph.i.i, align 4, !tbaa !8 ; 5 uses
  %i.awy = sext i32 %i.awx to i64
  %i.awz = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.awy
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !8
end_hunk_0
begin_hunk_1_@ss_mintrosort:bb.a

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %.0429, i64 -8 ; 2 uses
  %.not43.i = icmp ugt ptr %.0432, %i.t
  br i1 %.not43.i, label %ss_insertionsort.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.u = sext i32 %.0426 to i64                   ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge.thread.thread.i, %.lr.ph.i
  %.02344.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.br, %.critedge.thread.thread.i ] ; 3 uses
  %i.w = load i32, ptr %.02344.i, align 4, !tbaa !8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02344.i, i64 4 ; 2 uses
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %1, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %.pre.i = load i32, ptr %i.x, align 4, !tbaa !8
  br label %.critedge.i

.critedge.loopexit.i:                             ; preds = %bb.i
  br label %.critedge.i, !llvm.loop !134

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.f
  %i.ab = phi i32 [ %.pre.i, %bb.f ], [ %i.bl, %.critedge.loopexit.i ] ; 3 uses
  %.0.i = phi ptr [ %i.x, %bb.f ], [ %i.bj, %.critedge.loopexit.i ] ; 4 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac ; 2 uses
  %.val.i = load i32, ptr %i.z, align 4, !tbaa !8
  %.val28.i = load i32, ptr %i.aa, align 4, !tbaa !8
  %.val29.i = load i32, ptr %i.ad, align 4, !tbaa !8
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %.val30.i = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.af = sext i32 %.val.i to i64                 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.v, i64 %i.af ; 2 uses
  %i.ah = sext i32 %.val29.i to i64               ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.v, i64 %i.ah ; 2 uses
  %i.aj = sext i32 %.val28.i to i64
  %i.ak = add nsw i64 %i.aj, 2                    ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %0, i64 %i.ak
  %i.am = sext i32 %.val30.i to i64
  %i.an = add nsw i64 %i.am, 2                    ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %i.an
  %i.ap = add nsw i64 %i.af, %i.u
  %i.aq = icmp slt i64 %i.ap, %i.ak               ; 2 uses
  %i.ar = add nsw i64 %i.ah, %i.u
  %i.as = icmp slt i64 %i.ar, %i.an               ; 2 uses
  %or.cond6.i.i = select i1 %i.aq, i1 %i.as, i1 false
  br i1 %or.cond6.i.i, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %bb.g
  %.08.i.i = phi ptr [ %i.ax, %bb.g ], [ %i.ai, %.critedge.i ] ; 2 uses
  %.0257.i.i = phi ptr [ %i.aw, %bb.g ], [ %i.ag, %.critedge.i ] ; 2 uses
  %i.at = load i8, ptr %.0257.i.i, align 1, !tbaa !9 ; 2 uses
  %i.au = load i8, ptr %.08.i.i, align 1, !tbaa !9 ; 2 uses
  %i.av = icmp eq i8 %i.at, %i.au
  br i1 %i.av, label %bb.g, label %ss_compare.exit.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0257.i.i, i64 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1 ; 3 uses
  %i.ay = icmp ult ptr %i.aw, %i.al               ; 2 uses
  %i.az = icmp ult ptr %i.ax, %i.ao               ; 2 uses
  %or.cond.i.i = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !23

.critedge.i.i:                                    ; preds = %bb.g, %.critedge.i
  %.025.lcssa.i.i = phi ptr [ %i.ag, %.critedge.i ], [ %i.aw, %bb.g ]
  %.0.lcssa.i.i = phi ptr [ %i.ai, %.critedge.i ], [ %i.ax, %bb.g ]
  %.lcssa5.i.i = phi i1 [ %i.aq, %.critedge.i ], [ %i.ay, %bb.g ]
  %.lcssa.i.i = phi i1 [ %i.as, %.critedge.i ], [ %i.az, %bb.g ] ; 2 uses
  br i1 %.lcssa5.i.i, label %bb.h, label %ss_compare.exit.thread.i

bb.h:                                             ; preds = %.critedge.i.i
  br i1 %.lcssa.i.i, label %..thread.i_crit_edge.i, label %.preheader.i.preheader

..thread.i_crit_edge.i:                           ; preds = %bb.h
  %.pre57.i = load i8, ptr %.025.lcssa.i.i, align 1, !tbaa !9
  %.pre699 = load i8, ptr %.0.lcssa.i.i, align 1, !tbaa !9
  br label %ss_compare.exit.i

ss_compare.exit.thread.i:                         ; preds = %.critedge.i.i
  %i.ba = sext i1 %.lcssa.i.i to i32
  br label %.critedge.thread.i

ss_compare.exit.i:                                ; preds = %.lr.ph.i.i, %..thread.i_crit_edge.i
  %i.bb = phi i8 [ %.pre699, %..thread.i_crit_edge.i ], [ %i.au, %.lr.ph.i.i ]
  %i.bc = phi i8 [ %.pre57.i, %..thread.i_crit_edge.i ], [ %i.at, %.lr.ph.i.i ]
  %i.bd = zext i8 %i.bc to i32
  %i.be = zext i8 %i.bb to i32
  %i.bf = sub nsw i32 %i.bd, %i.be                ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.preheader.i.preheader, label %.critedge.thread.i

.preheader.i.preheader:                           ; preds = %ss_compare.exit.i, %bb.h
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.i
  %i.bh = phi i32 [ %i.bl, %bb.i ], [ %i.ab, %.preheader.i.preheader ]
  %.1.i = phi ptr [ %i.bj, %bb.i ], [ %.0.i, %.preheader.i.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %.1.i, i64 -4
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %.1.i, i64 4 ; 5 uses
  %i.bk = icmp ult ptr %i.bj, %.0429
  br i1 %i.bk, label %bb.i, label %.critedge.thread.thread.i

bb.i:                                             ; preds = %.preheader.i
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !8  ; 3 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %.preheader.i, label %.critedge.loopexit.i, !llvm.loop !134

.critedge.thread.i:                               ; preds = %ss_compare.exit.i, %ss_compare.exit.thread.i
  %i.bn = phi i32 [ %i.ba, %ss_compare.exit.thread.i ], [ %i.bf, %ss_compare.exit.i ]
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.j, label %.critedge.thread.thread.i

bb.j:                                             ; preds = %.critedge.thread.i
  %i.bp = xor i32 %i.ab, -1
  store i32 %i.bp, ptr %.0.i, align 4, !tbaa !8
  br label %.critedge.thread.thread.i

.critedge.thread.thread.i:                        ; preds = %.preheader.i, %bb.j, %.critedge.thread.i
  %.271.i = phi ptr [ %.0.i, %.critedge.thread.i ], [ %.0.i, %bb.j ], [ %i.bj, %.preheader.i ]
  %i.bq = getelementptr inbounds i8, ptr %.271.i, i64 -4
  store i32 %i.w, ptr %i.bq, align 4, !tbaa !8
  %i.br = getelementptr inbounds i8, ptr %.02344.i, i64 -4 ; 2 uses
  %.not.i500 = icmp ugt ptr %.0432, %i.br
  br i1 %.not.i500, label %ss_insertionsort.exit, label %bb.f, !llvm.loop !135

ss_insertionsort.exit:                            ; preds = %.critedge.thread.thread.i, %bb.e, %bb.d
  %i.bs = icmp eq i32 %.0392, 0
  br i1 %i.bs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %ss_insertionsort.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void

bb.l:                                             ; preds = %ss_insertionsort.exit
  %i.bt = add nsw i32 %.0392, -1                  ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [24 x i8], ptr %4, i64 %i.bu ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !136
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !138
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !139
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !140
  br label %ss_ilg.exit.backedge

bb.m:                                             ; preds = %ss_ilg.exit
  %i.cd = sext i32 %.0426 to i64
  %i.ce = getelementptr inbounds i8, ptr %0, i64 %i.cd ; 60 uses
  %i.cf = add nsw i32 %.0388, -1                  ; 10 uses
  %i.cg = icmp eq i32 %.0388, 0
  br i1 %i.cg, label %bb.n, label %ss_heapsort.exit

bb.n:                                             ; preds = %bb.m
  %i.ch = trunc i64 %i.q to i32                   ; 3 uses
  %i.ci = and i32 %i.ch, 1
  %i.cj = icmp eq i32 %i.ci, 0                    ; 2 uses
  br i1 %i.cj, label %bb.o, label %._crit_edge77.i

bb.o:                                             ; preds = %bb.n
  %i.ck = add nsw i32 %i.ch, -1                   ; 4 uses
  %i.cl = sdiv i32 %i.ck, 2
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %.0432, i64 %i.cm ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !8  ; 2 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !8
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %i.ce, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !9
  %i.cv = sext i32 %i.ck to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %.0432, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !8  ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !8
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %i.ce, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !9
  %i.de = icmp ult i8 %i.cu, %i.dd
  br i1 %i.de, label %bb.p, label %._crit_edge77.i

bb.p:                                             ; preds = %bb.o
  store i32 %i.co, ptr %i.cw, align 4, !tbaa !8
  store i32 %i.cx, ptr %i.cn, align 4, !tbaa !8
  br label %._crit_edge77.i

._crit_edge77.i:                                  ; preds = %bb.p, %bb.o, %bb.n
  %.0.i501 = phi i32 [ %i.ck, %bb.p ], [ %i.ck, %bb.o ], [ %i.ch, %bb.n ] ; 8 uses
  %i.df = icmp sgt i32 %.0.i501, 1                ; 3 uses
  br i1 %i.df, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge77.i
  %i.dg = lshr i32 %.0.i501, 1
  %i.dh = zext nneg i32 %i.dg to i64
  br label %.lr.ph.i503

.lr.ph.i503:                                      ; preds = %ss_fixdown.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.dh, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %ss_fixdown.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  %5 = and i64 %indvars.iv.next.i, 4294967295     ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %5
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !8  ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !8
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %i.ce, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !9
  %6 = shl nuw nsw i32 %indvars.i, 1              ; 2 uses
  %7 = or disjoint i32 %6, 1                      ; 2 uses
  %8 = icmp slt i32 %7, %.0.i501
  br i1 %8, label %.lr.ph.i.i504, label %ss_fixdown.exit.i

.lr.ph.i.i504:                                    ; preds = %.lr.ph.i503, %bb.q
  %i.dq = phi i32 [ %i.es, %bb.q ], [ %7, %.lr.ph.i503 ] ; 2 uses
  %i.dr = phi i32 [ %i.er, %bb.q ], [ %6, %.lr.ph.i503 ]
  %.02833.i.i = phi i32 [ %spec.select.i.i, %bb.q ], [ %indvars.i, %.lr.ph.i503 ] ; 2 uses
  %i.ds = add nuw nsw i32 %i.dr, 2                ; 2 uses
  %i.dt = zext nneg i32 %i.dq to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !8
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !8
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds i8, ptr %i.ce, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !9   ; 2 uses
  %i.ec = zext nneg i32 %i.ds to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !8
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !8
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds i8, ptr %i.ce, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !9   ; 2 uses
  %spec.select32.i.i = tail call i8 @llvm.umax.i8(i8 %i.eb, i8 %i.ek)
  %.not.i.i = icmp ugt i8 %spec.select32.i.i, %i.dp
  br i1 %.not.i.i, label %bb.q, label %.lr.ph.i.ss_fixdown.exit.loopexit_crit_edge.i

.lr.ph.i.ss_fixdown.exit.loopexit_crit_edge.i:    ; preds = %.lr.ph.i.i504
  %.pre79.i = zext nneg i32 %.02833.i.i to i64
  br label %ss_fixdown.exit.i

bb.q:                                             ; preds = %.lr.ph.i.i504
  %i.el = icmp ult i8 %i.eb, %i.ek
  %spec.select.i.i = select i1 %i.el, i32 %i.ds, i32 %i.dq ; 3 uses
  %i.em = zext nneg i32 %spec.select.i.i to i64   ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !8
  %i.ep = zext nneg i32 %.02833.i.i to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.ep
  store i32 %i.eo, ptr %i.eq, align 4, !tbaa !8
  %i.er = shl nuw nsw i32 %spec.select.i.i, 1     ; 2 uses
  %i.es = or disjoint i32 %i.er, 1                ; 2 uses
  %i.et = icmp slt i32 %i.es, %.0.i501
  br i1 %i.et, label %.lr.ph.i.i504, label %ss_fixdown.exit.i, !llvm.loop !141

ss_fixdown.exit.i:                                ; preds = %bb.q, %.lr.ph.i.ss_fixdown.exit.loopexit_crit_edge.i, %.lr.ph.i503
  %.pre-phi.i = phi i64 [ %5, %.lr.ph.i503 ], [ %.pre79.i, %.lr.ph.i.ss_fixdown.exit.loopexit_crit_edge.i ], [ %i.em, %bb.q ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %.pre-phi.i
  store i32 %i.dj, ptr %i.eu, align 4, !tbaa !8
  %i.ev = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.ev, label %.lr.ph.i503, label %._crit_edge.i, !llvm.loop !142

._crit_edge.i:                                    ; preds = %ss_fixdown.exit.i, %._crit_edge77.i
  br i1 %i.cj, label %bb.r, label %bb.t

bb.r:                                             ; preds = %._crit_edge.i
  %i.ew = load i32, ptr %.0432, align 4, !tbaa !8
  %i.ex = sext i32 %.0.i501 to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %.0432, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !8
  store i32 %i.ez, ptr %.0432, align 4, !tbaa !8
  store i32 %i.ew, ptr %i.ey, align 4, !tbaa !8
  %i.fa = load i32, ptr %.0432, align 4, !tbaa !8 ; 2 uses
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !8
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds i8, ptr %i.ce, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !9
  br i1 %i.df, label %.lr.ph.i55.i, label %ss_fixdown.exit60.i

.lr.ph.i55.i:                                     ; preds = %bb.r, %bb.s
  %i.fh = phi i32 [ %i.gj, %bb.s ], [ 1, %bb.r ]  ; 2 uses
  %i.fi = phi i32 [ %i.gi, %bb.s ], [ 0, %bb.r ]
  %.02833.i56.i = phi i32 [ %spec.select.i59.i, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.fj = add nuw nsw i32 %i.fi, 2                ; 2 uses
  %i.fk = zext nneg i32 %i.fh to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !8
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !8
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds i8, ptr %i.ce, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !9   ; 2 uses
  %i.ft = zext nneg i32 %i.fj to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !8
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !8
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds i8, ptr %i.ce, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !9   ; 2 uses
  %spec.select32.i57.i = tail call i8 @llvm.umax.i8(i8 %i.fs, i8 %i.gb)
  %.not.i58.i = icmp ugt i8 %spec.select32.i57.i, %i.fg
  br i1 %.not.i58.i, label %bb.s, label %.lr.ph.i55.i.ss_fixdown.exit60.loopexit.i_crit_edge

.lr.ph.i55.i.ss_fixdown.exit60.loopexit.i_crit_edge: ; preds = %.lr.ph.i55.i
  %.pre702 = zext nneg i32 %.02833.i56.i to i64
  br label %ss_fixdown.exit60.i

bb.s:                                             ; preds = %.lr.ph.i55.i
  %i.gc = icmp ult i8 %i.fs, %i.gb
  %spec.select.i59.i = select i1 %i.gc, i32 %i.fj, i32 %i.fh ; 3 uses
  %i.gd = zext nneg i32 %spec.select.i59.i to i64 ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !8
  %i.gg = zext nneg i32 %.02833.i56.i to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.gg
  store i32 %i.gf, ptr %i.gh, align 4, !tbaa !8
  %i.gi = shl nuw nsw i32 %spec.select.i59.i, 1   ; 2 uses
  %i.gj = or disjoint i32 %i.gi, 1                ; 2 uses
  %i.gk = icmp slt i32 %i.gj, %.0.i501
  br i1 %i.gk, label %.lr.ph.i55.i, label %ss_fixdown.exit60.i, !llvm.loop !141

ss_fixdown.exit60.i:                              ; preds = %bb.s, %.lr.ph.i55.i.ss_fixdown.exit60.loopexit.i_crit_edge, %bb.r
  %.028.lcssa.i54.i = phi i64 [ 0, %bb.r ], [ %.pre702, %.lr.ph.i55.i.ss_fixdown.exit60.loopexit.i_crit_edge ], [ %i.gd, %bb.s ]
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %.028.lcssa.i54.i
  store i32 %i.fa, ptr %i.gl, align 4, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %ss_fixdown.exit60.i, %._crit_edge.i
  br i1 %i.df, label %.lr.ph71.preheader.i, label %ss_heapsort.exit

.lr.ph71.preheader.i:                             ; preds = %bb.t
  %i.gm = zext nneg i32 %.0.i501 to i64
  %indvars.iv.next75.i596 = add nsw i64 %i.gm, -1 ; 2 uses
  %i.gn = load i32, ptr %.0432, align 4, !tbaa !8 ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %indvars.iv.next75.i596 ; 3 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !8  ; 2 uses
  store i32 %i.gp, ptr %.0432, align 4, !tbaa !8
  %.not.i502597 = icmp eq i32 %.0.i501, 2
  br i1 %.not.i502597, label %ss_fixdown.exit67.thread.i, label %.lr.ph.i62.i.preheader

.lr.ph.i62.i.preheader:                           ; preds = %.lr.ph71.preheader.i, %ss_fixdown.exit67.i
  %i.gq = phi i32 [ %i.ic, %ss_fixdown.exit67.i ], [ %i.gp, %.lr.ph71.preheader.i ] ; 2 uses
  %i.gr = phi ptr [ %i.ib, %ss_fixdown.exit67.i ], [ %i.go, %.lr.ph71.preheader.i ]
  %i.gs = phi i32 [ %i.ia, %ss_fixdown.exit67.i ], [ %i.gn, %.lr.ph71.preheader.i ]
  %indvars.iv.next75.i598 = phi i64 [ %indvars.iv.next75.i, %ss_fixdown.exit67.i ], [ %indvars.iv.next75.i596, %.lr.ph71.preheader.i ] ; 3 uses
  %.pn661 = sext i32 %i.gq to i64
  %.pn.in.in = getelementptr inbounds [4 x i8], ptr %1, i64 %.pn661
  %.pn.in = load i32, ptr %.pn.in.in, align 4, !tbaa !8
  %.pn = sext i32 %.pn.in to i64
  %.in = getelementptr inbounds i8, ptr %i.ce, i64 %.pn
  %i.gt = load i8, ptr %.in, align 1, !tbaa !9
  br label %.lr.ph.i62.i

ss_fixdown.exit67.thread.i:                       ; preds = %ss_fixdown.exit67.i, %.lr.ph71.preheader.i
  %.lcssa561.a = phi i32 [ %i.gn, %.lr.ph71.preheader.i ], [ %i.ia, %ss_fixdown.exit67.i ]
  %.lcssa = phi ptr [ %i.go, %.lr.ph71.preheader.i ], [ %i.ib, %ss_fixdown.exit67.i ]
  store i32 %.lcssa561.a, ptr %.lcssa, align 4, !tbaa !8
  br label %ss_heapsort.exit

.lr.ph.i62.i:                                     ; preds = %.lr.ph.i62.i.preheader, %bb.u
  %i.gu = phi i32 [ %i.hw, %bb.u ], [ 1, %.lr.ph.i62.i.preheader ] ; 2 uses
  %i.gv = phi i32 [ %i.hv, %bb.u ], [ 0, %.lr.ph.i62.i.preheader ]
  %.02833.i63.i = phi i32 [ %spec.select.i66.i, %bb.u ], [ 0, %.lr.ph.i62.i.preheader ] ; 2 uses
  %i.gw = add nuw nsw i32 %i.gv, 2                ; 2 uses
  %i.gx = zext nneg i32 %i.gu to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !8
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !8
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds i8, ptr %i.ce, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !9   ; 2 uses
  %i.hg = zext nneg i32 %i.gw to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !8
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !8
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds i8, ptr %i.ce, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !9   ; 2 uses
  %spec.select32.i64.i = tail call i8 @llvm.umax.i8(i8 %i.hf, i8 %i.ho)
  %.not.i65.i = icmp ugt i8 %spec.select32.i64.i, %i.gt
  br i1 %.not.i65.i, label %bb.u, label %.lr.ph.i62.i.ss_fixdown.exit67.i_crit_edge

.lr.ph.i62.i.ss_fixdown.exit67.i_crit_edge:       ; preds = %.lr.ph.i62.i
  %.pre704 = zext nneg i32 %.02833.i63.i to i64
  br label %ss_fixdown.exit67.i

bb.u:                                             ; preds = %.lr.ph.i62.i
  %i.hp = icmp ult i8 %i.hf, %i.ho
  %spec.select.i66.i = select i1 %i.hp, i32 %i.gw, i32 %i.gu ; 3 uses
  %i.hq = zext nneg i32 %spec.select.i66.i to i64 ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !8
  %i.ht = zext nneg i32 %.02833.i63.i to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.ht
  store i32 %i.hs, ptr %i.hu, align 4, !tbaa !8
  %i.hv = shl nuw nsw i32 %spec.select.i66.i, 1   ; 2 uses
  %i.hw = or disjoint i32 %i.hv, 1                ; 2 uses
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = icmp sgt i64 %indvars.iv.next75.i598, %i.hx
  br i1 %i.hy, label %.lr.ph.i62.i, label %ss_fixdown.exit67.i, !llvm.loop !141

ss_fixdown.exit67.i:                              ; preds = %bb.u, %.lr.ph.i62.i.ss_fixdown.exit67.i_crit_edge
  %.pre-phi705 = phi i64 [ %.pre704, %.lr.ph.i62.i.ss_fixdown.exit67.i_crit_edge ], [ %i.hq, %bb.u ]
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %.pre-phi705
  store i32 %i.gq, ptr %i.hz, align 4, !tbaa !8
  store i32 %i.gs, ptr %i.gr, align 4, !tbaa !8
  %indvars.iv.next75.i = add nsw i64 %indvars.iv.next75.i598, -1 ; 2 uses
  %i.ia = load i32, ptr %.0432, align 4, !tbaa !8 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %indvars.iv.next75.i ; 3 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !8  ; 2 uses
  store i32 %i.ic, ptr %.0432, align 4, !tbaa !8
  %.not.i502 = icmp eq i64 %indvars.iv.next75.i598, 2
  br i1 %.not.i502, label %ss_fixdown.exit67.thread.i, label %.lr.ph.i62.i.preheader

ss_heapsort.exit:                                 ; preds = %ss_fixdown.exit67.thread.i, %bb.t, %bb.m
  %i.id = icmp slt i32 %.0388, 1
  br i1 %i.id, label %bb.v, label %bb.aq

bb.v:                                             ; preds = %ss_heapsort.exit
  %i.ie = load i32, ptr %.0432, align 4, !tbaa !8
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %1, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !8
  %i.ii = sext i32 %i.ih to i64                   ; 2 uses
  %i.ij = getelementptr inbounds i8, ptr %i.ce, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !9
  %i.il = zext i8 %i.ik to i32                    ; 2 uses
  %.0419647 = getelementptr inbounds nuw i8, ptr %.0432, i64 4 ; 3 uses
  %i.im = icmp ult ptr %.0419647, %.0429
  br i1 %i.im, label %.lr.ph652, label %._crit_edge653

.lr.ph652:                                        ; preds = %bb.v, %bb.x
  %.0419650 = phi ptr [ %.0419, %bb.x ], [ %.0419647, %bb.v ] ; 5 uses
  %.0386649 = phi i32 [ %.1387, %bb.x ], [ %i.il, %bb.v ] ; 3 uses
  %.1433648 = phi ptr [ %.2434, %bb.x ], [ %.0432, %bb.v ] ; 3 uses
  %i.in = load i32, ptr %.0419650, align 4, !tbaa !8
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %1, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !8
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds i8, ptr %i.ce, i64 %i.ir
  %i.it = load i8, ptr %i.is, align 1, !tbaa !9
  %i.iu = zext i8 %i.it to i32                    ; 2 uses
  %.not496 = icmp eq i32 %.0386649, %i.iu
  br i1 %.not496, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph652
  %i.iv = ptrtoint ptr %.0419650 to i64
  %i.iw = ptrtoint ptr %.1433648 to i64
end_hunk_1
