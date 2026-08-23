Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rv60dec?download=true
inline.NumInlined: 185
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 86
begin_hunk_0_@pred_angle:bb.a
  store i8 %i.anx, ptr %i.any, align 2, !tbaa !44
  %i.anz = add nsw i32 %i.ajg, %i.anv
  %i.aoa = lshr i32 %i.anz, 5
  %i.aob = trunc i32 %i.aoa to i8
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.e, i64 63
  store i8 %i.aob, ptr %i.aoc, align 1, !tbaa !44
  %i.aod = load i8, ptr %0, align 4, !tbaa !44    ; 3 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.f, i64 31
  store i8 %i.aod, ptr %i.aoe, align 1, !tbaa !44
  %i.aof = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.aog = zext i8 %i.aod to i32                  ; 2 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aoi = load i8, ptr %i.aoh, align 4, !tbaa !44
  %i.aoj = zext i8 %i.aoi to i32
  %i.aok = sub nsw i32 %i.aoj, %i.aog             ; 31 uses
  %i.aol = shl nuw nsw i32 %i.aog, 5
  %i.aom = or disjoint i32 %i.aol, 16
  store i8 %i.aod, ptr %i.aof, align 16, !tbaa !44
  %i.aon = add nsw i32 %i.aok, %i.aom             ; 2 uses
  %i.aoo = lshr i32 %i.aon, 5
  %i.aop = trunc i32 %i.aoo to i8
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.f, i64 33
  store i8 %i.aop, ptr %i.aoq, align 1, !tbaa !44
  %i.aor = add nsw i32 %i.aok, %i.aon             ; 2 uses
  %i.aos = lshr i32 %i.aor, 5
  %i.aot = trunc i32 %i.aos to i8
  %i.aou = getelementptr inbounds nuw i8, ptr %i.f, i64 34
  store i8 %i.aot, ptr %i.aou, align 2, !tbaa !44
  %i.aov = add nsw i32 %i.aok, %i.aor             ; 2 uses
  %i.aow = lshr i32 %i.aov, 5
  %i.aox = trunc i32 %i.aow to i8
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.f, i64 35
  store i8 %i.aox, ptr %i.aoy, align 1, !tbaa !44
  %i.aoz = add nsw i32 %i.aok, %i.aov             ; 2 uses
  %i.apa = lshr i32 %i.aoz, 5
  %i.apb = trunc i32 %i.apa to i8
  %i.apc = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i8 %i.apb, ptr %i.apc, align 4, !tbaa !44
  %i.apd = add nsw i32 %i.aok, %i.aoz             ; 2 uses
  %i.ape = lshr i32 %i.apd, 5
  %i.apf = trunc i32 %i.ape to i8
  %i.apg = getelementptr inbounds nuw i8, ptr %i.f, i64 37
  store i8 %i.apf, ptr %i.apg, align 1, !tbaa !44
  %i.aph = add nsw i32 %i.aok, %i.apd             ; 2 uses
  %i.api = lshr i32 %i.aph, 5
  %i.apj = trunc i32 %i.api to i8
  %i.apk = getelementptr inbounds nuw i8, ptr %i.f, i64 38
  store i8 %i.apj, ptr %i.apk, align 2, !tbaa !44
  %i.apl = add nsw i32 %i.aok, %i.aph             ; 2 uses
  %i.apm = lshr i32 %i.apl, 5
  %i.apn = trunc i32 %i.apm to i8
  %i.apo = getelementptr inbounds nuw i8, ptr %i.f, i64 39
  store i8 %i.apn, ptr %i.apo, align 1, !tbaa !44
  %i.app = add nsw i32 %i.aok, %i.apl             ; 2 uses
  %i.apq = lshr i32 %i.app, 5
  %i.apr = trunc i32 %i.apq to i8
  %i.aps = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i8 %i.apr, ptr %i.aps, align 8, !tbaa !44
  %i.apt = add nsw i32 %i.aok, %i.app             ; 2 uses
  %i.apu = lshr i32 %i.apt, 5
  %i.apv = trunc i32 %i.apu to i8
  %i.apw = getelementptr inbounds nuw i8, ptr %i.f, i64 41
  store i8 %i.apv, ptr %i.apw, align 1, !tbaa !44
  %i.apx = add nsw i32 %i.aok, %i.apt             ; 2 uses
  %i.apy = lshr i32 %i.apx, 5
  %i.apz = trunc i32 %i.apy to i8
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.f, i64 42
  store i8 %i.apz, ptr %i.aqa, align 2, !tbaa !44
  %i.aqb = add nsw i32 %i.aok, %i.apx             ; 2 uses
  %i.aqc = lshr i32 %i.aqb, 5
  %i.aqd = trunc i32 %i.aqc to i8
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.f, i64 43
  store i8 %i.aqd, ptr %i.aqe, align 1, !tbaa !44
  %i.aqf = add nsw i32 %i.aok, %i.aqb             ; 2 uses
  %i.aqg = lshr i32 %i.aqf, 5
  %i.aqh = trunc i32 %i.aqg to i8
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i8 %i.aqh, ptr %i.aqi, align 4, !tbaa !44
  %i.aqj = add nsw i32 %i.aok, %i.aqf             ; 2 uses
  %i.aqk = lshr i32 %i.aqj, 5
  %i.aql = trunc i32 %i.aqk to i8
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.f, i64 45
  store i8 %i.aql, ptr %i.aqm, align 1, !tbaa !44
  %i.aqn = add nsw i32 %i.aok, %i.aqj             ; 2 uses
  %i.aqo = lshr i32 %i.aqn, 5
  %i.aqp = trunc i32 %i.aqo to i8
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.f, i64 46
  store i8 %i.aqp, ptr %i.aqq, align 2, !tbaa !44
  %i.aqr = add nsw i32 %i.aok, %i.aqn             ; 2 uses
  %i.aqs = lshr i32 %i.aqr, 5
  %i.aqt = trunc i32 %i.aqs to i8
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.f, i64 47
  store i8 %i.aqt, ptr %i.aqu, align 1, !tbaa !44
  %i.aqv = add nsw i32 %i.aok, %i.aqr             ; 2 uses
  %i.aqw = lshr i32 %i.aqv, 5
  %i.aqx = trunc i32 %i.aqw to i8
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i8 %i.aqx, ptr %i.aqy, align 16, !tbaa !44
  %i.aqz = add nsw i32 %i.aok, %i.aqv             ; 2 uses
  %i.ara = lshr i32 %i.aqz, 5
  %i.arb = trunc i32 %i.ara to i8
  %i.arc = getelementptr inbounds nuw i8, ptr %i.f, i64 49
  store i8 %i.arb, ptr %i.arc, align 1, !tbaa !44
  %i.ard = add nsw i32 %i.aok, %i.aqz             ; 2 uses
  %i.are = lshr i32 %i.ard, 5
  %i.arf = trunc i32 %i.are to i8
  %i.arg = getelementptr inbounds nuw i8, ptr %i.f, i64 50
  store i8 %i.arf, ptr %i.arg, align 2, !tbaa !44
  %i.arh = add nsw i32 %i.aok, %i.ard             ; 2 uses
  %i.ari = lshr i32 %i.arh, 5
  %i.arj = trunc i32 %i.ari to i8
  %i.ark = getelementptr inbounds nuw i8, ptr %i.f, i64 51
  store i8 %i.arj, ptr %i.ark, align 1, !tbaa !44
  %i.arl = add nsw i32 %i.aok, %i.arh             ; 2 uses
  %i.arm = lshr i32 %i.arl, 5
  %i.arn = trunc i32 %i.arm to i8
  %i.aro = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store i8 %i.arn, ptr %i.aro, align 4, !tbaa !44
  %i.arp = add nsw i32 %i.aok, %i.arl             ; 2 uses
  %i.arq = lshr i32 %i.arp, 5
  %i.arr = trunc i32 %i.arq to i8
  %i.ars = getelementptr inbounds nuw i8, ptr %i.f, i64 53
  store i8 %i.arr, ptr %i.ars, align 1, !tbaa !44
  %i.art = add nsw i32 %i.aok, %i.arp             ; 2 uses
  %i.aru = lshr i32 %i.art, 5
  %i.arv = trunc i32 %i.aru to i8
  %i.arw = getelementptr inbounds nuw i8, ptr %i.f, i64 54
  store i8 %i.arv, ptr %i.arw, align 2, !tbaa !44
  %i.arx = add nsw i32 %i.aok, %i.art             ; 2 uses
  %i.ary = lshr i32 %i.arx, 5
  %i.arz = trunc i32 %i.ary to i8
  %i.asa = getelementptr inbounds nuw i8, ptr %i.f, i64 55
  store i8 %i.arz, ptr %i.asa, align 1, !tbaa !44
  %i.asb = add nsw i32 %i.aok, %i.arx             ; 2 uses
  %i.asc = lshr i32 %i.asb, 5
  %i.asd = trunc i32 %i.asc to i8
  %i.ase = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i8 %i.asd, ptr %i.ase, align 8, !tbaa !44
  %i.asf = add nsw i32 %i.aok, %i.asb             ; 2 uses
  %i.asg = lshr i32 %i.asf, 5
  %i.ash = trunc i32 %i.asg to i8
  %i.asi = getelementptr inbounds nuw i8, ptr %i.f, i64 57
  store i8 %i.ash, ptr %i.asi, align 1, !tbaa !44
  %i.asj = add nsw i32 %i.aok, %i.asf             ; 2 uses
  %i.ask = lshr i32 %i.asj, 5
  %i.asl = trunc i32 %i.ask to i8
  %i.asm = getelementptr inbounds nuw i8, ptr %i.f, i64 58
  store i8 %i.asl, ptr %i.asm, align 2, !tbaa !44
  %i.asn = add nsw i32 %i.aok, %i.asj             ; 2 uses
  %i.aso = lshr i32 %i.asn, 5
  %i.asp = trunc i32 %i.aso to i8
  %i.asq = getelementptr inbounds nuw i8, ptr %i.f, i64 59
  store i8 %i.asp, ptr %i.asq, align 1, !tbaa !44
  %i.asr = add nsw i32 %i.aok, %i.asn             ; 2 uses
  %i.ass = lshr i32 %i.asr, 5
  %i.ast = trunc i32 %i.ass to i8
  %i.asu = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  store i8 %i.ast, ptr %i.asu, align 4, !tbaa !44
  %i.asv = add nsw i32 %i.aok, %i.asr             ; 2 uses
  %i.asw = lshr i32 %i.asv, 5
  %i.asx = trunc i32 %i.asw to i8
  %i.asy = getelementptr inbounds nuw i8, ptr %i.f, i64 61
  store i8 %i.asx, ptr %i.asy, align 1, !tbaa !44
  %i.asz = add nsw i32 %i.aok, %i.asv             ; 2 uses
  %i.ata = lshr i32 %i.asz, 5
  %i.atb = trunc i32 %i.ata to i8
  %i.atc = getelementptr inbounds nuw i8, ptr %i.f, i64 62
  store i8 %i.atb, ptr %i.atc, align 2, !tbaa !44
  %i.atd = add nsw i32 %i.aok, %i.asz
  %i.ate = lshr i32 %i.atd, 5
  %i.atf = trunc i32 %i.ate to i8
  %i.atg = getelementptr inbounds nuw i8, ptr %i.f, i64 63
  store i8 %i.atf, ptr %i.atg, align 1, !tbaa !44
  br label %filter_bilin32.exit242

filter_bilin32.exit242:                           ; preds = %.lr.ph.i228, %bb.v
  %i.ath = icmp sgt i32 %i.air, 1
  br i1 %i.ath, label %.preheader330.preheader, label %.loopexit

.preheader330.preheader:                          ; preds = %filter_bilin32.exit242
  %wide.trip.count375 = zext nneg i32 %i.air to i64
  %i.ati = add nsw i64 %wide.trip.count375, -1    ; 3 uses
  %xtraiter928 = and i64 %i.ati, 1
  %i.atj = icmp eq i32 %i.air, 2
  br i1 %i.atj, label %.preheader330.epil.preheader, label %.preheader330.preheader.new

.preheader330.preheader.new:                      ; preds = %.preheader330.preheader
  %unroll_iter932 = and i64 %i.ati, -2
  br label %.preheader330

.preheader330:                                    ; preds = %.preheader330, %.preheader330.preheader.new
  %indvars.iv372 = phi i64 [ 1, %.preheader330.preheader.new ], [ %indvars.iv.next373.1, %.preheader330 ] ; 3 uses
  %.0161343 = phi i32 [ 128, %.preheader330.preheader.new ], [ %i.ats, %.preheader330 ]
  %niter933 = phi i64 [ 0, %.preheader330.preheader.new ], [ %niter933.next.1, %.preheader330 ]
  %i.atk = add nuw nsw i32 %.0161343, %i.aio      ; 2 uses
  %i.atl = lshr i32 %i.atk, 8
  %i.atm = zext nneg i32 %i.atl to i64
  %i.atn = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.atm
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atn, i64 31
  %i.atp = load i8, ptr %i.ato, align 1, !tbaa !44
  %i.atq = sub nuw nsw i64 31, %indvars.iv372
  %i.atr = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.atq
  store i8 %i.atp, ptr %i.atr, align 1, !tbaa !44
  %i.ats = add nuw nsw i32 %i.atk, %i.aio         ; 3 uses
  %i.att = lshr i32 %i.ats, 8
  %i.atu = zext nneg i32 %i.att to i64
  %i.atv = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.atu
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 31
  %i.atx = load i8, ptr %i.atw, align 1, !tbaa !44
  %i.aty = sub nuw nsw i64 30, %indvars.iv372
  %i.atz = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aty
  store i8 %i.atx, ptr %i.atz, align 1, !tbaa !44
  %indvars.iv.next373.1 = add nuw nsw i64 %indvars.iv372, 2 ; 2 uses
  %niter933.next.1 = add nuw i64 %niter933, 2     ; 2 uses
  %niter933.ncmp.1 = icmp eq i64 %niter933.next.1, %unroll_iter932
  br i1 %niter933.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader330, !llvm.loop !271

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader330
  %lcmp.mod930.not = icmp eq i64 %xtraiter928, 0
  br i1 %lcmp.mod930.not, label %.loopexit, label %.preheader330.epil.preheader

.preheader330.epil.preheader:                     ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader330.preheader
  %indvars.iv372.epil.init = phi i64 [ 1, %.preheader330.preheader ], [ %indvars.iv.next373.1, %.loopexit.loopexit.unr-lcssa ]
  %.0161343.epil.init = phi i32 [ 128, %.preheader330.preheader ], [ %i.ats, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod931 = trunc i64 %i.ati to i1
  tail call void @llvm.assume(i1 %lcmp.mod931)
  %i.aua = add nuw nsw i32 %.0161343.epil.init, %i.aio
  %i.aub = lshr i32 %i.aua, 8
  %i.auc = zext nneg i32 %i.aub to i64
  %i.aud = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.auc
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 31
  %i.auf = load i8, ptr %i.aue, align 1, !tbaa !44
  %i.aug = sub nuw nsw i64 31, %indvars.iv372.epil.init
  %i.auh = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aug
  store i8 %i.auf, ptr %i.auh, align 1, !tbaa !44
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader330.epil.preheader, %.loopexit.loopexit.unr-lcssa, %filter_bilin32.exit242
  %i.aui = icmp sgt i32 %3, 0
  br i1 %i.aui, label %.lr.ph47.split.us.split.us.preheader.i244, label %pred_dc.exit

.lr.ph47.split.us.split.us.preheader.i244:        ; preds = %.loopexit
  %i.auj = sext i32 %2 to i64                     ; 8 uses
  %wide.trip.count67.i245 = zext nneg i32 %3 to i64 ; 17 uses
  %min.iters.check695 = icmp ugt i32 %3, 3
  %ident.check693.not = icmp eq i32 %2, 1
  %or.cond894 = and i1 %min.iters.check695, %ident.check693.not
  %min.iters.check697 = icmp ult i32 %3, 16
  %i.auk = and i64 %wide.trip.count67.i245, 12
  %n.vec699 = and i64 %wide.trip.count67.i245, 2147483632 ; 4 uses
  %cmp.n710 = icmp eq i64 %n.vec699, %wide.trip.count67.i245
  %min.epilog.iters.check715 = icmp eq i64 %i.auk, 0
  %n.vec717 = and i64 %wide.trip.count67.i245, 2147483644 ; 3 uses
  %cmp.n728 = icmp eq i64 %n.vec717, %wide.trip.count67.i245
  %xtraiter934 = and i64 %wide.trip.count67.i245, 1
  %lcmp.mod935.not = icmp eq i64 %xtraiter934, 0
  %i.aul = add nsw i64 %wide.trip.count67.i245, -1
  %min.iters.check666 = icmp ugt i32 %3, 3
  %ident.check664.not = icmp eq i32 %2, 1
  %or.cond893 = and i1 %min.iters.check666, %ident.check664.not
  %min.iters.check668 = icmp ult i32 %3, 32
  %i.aum = and i64 %wide.trip.count67.i245, 28
  %n.vec670 = and i64 %wide.trip.count67.i245, 2147483616 ; 4 uses
  %cmp.n677 = icmp eq i64 %n.vec670, %wide.trip.count67.i245
  %min.epilog.iters.check682 = icmp eq i64 %i.aum, 0
  %n.vec684 = and i64 %wide.trip.count67.i245, 2147483644 ; 3 uses
  %cmp.n690 = icmp eq i64 %n.vec684, %wide.trip.count67.i245
  %xtraiter936 = and i64 %wide.trip.count67.i245, 3 ; 2 uses
  %lcmp.mod937.not = icmp eq i64 %xtraiter936, 0
  br label %.lr.ph47.split.us.split.us.i246

.lr.ph47.split.us.split.us.i246:                  ; preds = %..loopexit40_crit_edge.us.us.i258, %.lr.ph47.split.us.split.us.preheader.i244
  %indvars.iv64.i247 = phi i64 [ 0, %.lr.ph47.split.us.split.us.preheader.i244 ], [ %indvars.iv.next65.i259, %..loopexit40_crit_edge.us.us.i258 ] ; 3 uses
  %.046.us.us.i248 = phi i32 [ 0, %.lr.ph47.split.us.split.us.preheader.i244 ], [ %i.aun, %..loopexit40_crit_edge.us.us.i258 ]
  %i.aun = sub nsw i32 %.046.us.us.i248, %i.ail   ; 3 uses
  %i.auo = ashr i32 %i.aun, 5
  %i.aup = add nsw i32 %i.auo, 32                 ; 2 uses
  %i.auq = and i32 %i.aun, 31                     ; 7 uses
  %.not.us.us.i249 = icmp eq i32 %i.auq, 0
  br i1 %.not.us.us.i249, label %iter.check679, label %iter.check712

iter.check679:                                    ; preds = %.lr.ph47.split.us.split.us.i246
  %i.aur = sext i32 %i.aup to i64
  %invariant.gep73.i262 = getelementptr i8, ptr %i.e, i64 %i.aur ; 7 uses
  %invariant.gep75.i263 = getelementptr i8, ptr %1, i64 %indvars.iv64.i247 ; 7 uses
  br i1 %or.cond893, label %vector.main.loop.iter.check667, label %.preheader.us.us.i264.preheader

vector.main.loop.iter.check667:                   ; preds = %iter.check679
  br i1 %min.iters.check668, label %vec.epilog.ph683, label %vector.body671

vector.body671:                                   ; preds = %vector.main.loop.iter.check667, %vector.body671
  %index672 = phi i64 [ %index.next675, %vector.body671 ], [ 0, %vector.main.loop.iter.check667 ] ; 3 uses
  %i.aus = getelementptr i8, ptr %invariant.gep73.i262, i64 %index672 ; 2 uses
  %i.aut = getelementptr i8, ptr %i.aus, i64 16
  %wide.load673 = load <16 x i8>, ptr %i.aus, align 1, !tbaa !44
  %wide.load674 = load <16 x i8>, ptr %i.aut, align 1, !tbaa !44
  %i.auu = getelementptr i8, ptr %invariant.gep75.i263, i64 %index672 ; 2 uses
  %i.auv = getelementptr i8, ptr %i.auu, i64 16
  store <16 x i8> %wide.load673, ptr %i.auu, align 1, !tbaa !44
  store <16 x i8> %wide.load674, ptr %i.auv, align 1, !tbaa !44
  %index.next675 = add nuw i64 %index672, 32      ; 2 uses
  %i.auw = icmp eq i64 %index.next675, %n.vec670
  br i1 %i.auw, label %middle.block676, label %vector.body671, !llvm.loop !272

middle.block676:                                  ; preds = %vector.body671
  br i1 %cmp.n677, label %..loopexit40_crit_edge.us.us.i258, label %vec.epilog.iter.check681

vec.epilog.iter.check681:                         ; preds = %middle.block676
  br i1 %min.epilog.iters.check682, label %.preheader.us.us.i264.preheader, label %vec.epilog.ph683, !prof !206

vec.epilog.ph683:                                 ; preds = %vector.main.loop.iter.check667, %vec.epilog.iter.check681
  %vec.epilog.resume.val678 = phi i64 [ %n.vec670, %vec.epilog.iter.check681 ], [ 0, %vector.main.loop.iter.check667 ]
  br label %vec.epilog.vector.body685

vec.epilog.vector.body685:                        ; preds = %vec.epilog.vector.body685, %vec.epilog.ph683
  %index686 = phi i64 [ %vec.epilog.resume.val678, %vec.epilog.ph683 ], [ %index.next688, %vec.epilog.vector.body685 ] ; 3 uses
  %i.aux = getelementptr i8, ptr %invariant.gep73.i262, i64 %index686
  %wide.load687 = load <4 x i8>, ptr %i.aux, align 1, !tbaa !44
  %i.auy = getelementptr i8, ptr %invariant.gep75.i263, i64 %index686
  store <4 x i8> %wide.load687, ptr %i.auy, align 1, !tbaa !44
  %index.next688 = add nuw i64 %index686, 4       ; 2 uses
  %i.auz = icmp eq i64 %index.next688, %n.vec684
  br i1 %i.auz, label %vec.epilog.middle.block689, label %vec.epilog.vector.body685, !llvm.loop !273

vec.epilog.middle.block689:                       ; preds = %vec.epilog.vector.body685
  br i1 %cmp.n690, label %..loopexit40_crit_edge.us.us.i258, label %.preheader.us.us.i264.preheader

.preheader.us.us.i264.preheader:                  ; preds = %iter.check679, %vec.epilog.iter.check681, %vec.epilog.middle.block689
  %indvars.iv59.i265.ph = phi i64 [ 0, %iter.check679 ], [ %n.vec670, %vec.epilog.iter.check681 ], [ %n.vec684, %vec.epilog.middle.block689 ] ; 3 uses
  br i1 %lcmp.mod937.not, label %.preheader.us.us.i264.prol.loopexit, label %.preheader.us.us.i264.prol

.preheader.us.us.i264.prol:                       ; preds = %.preheader.us.us.i264.preheader, %.preheader.us.us.i264.prol
  %indvars.iv59.i265.prol = phi i64 [ %indvars.iv.next60.i268.prol, %.preheader.us.us.i264.prol ], [ %indvars.iv59.i265.ph, %.preheader.us.us.i264.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.us.us.i264.prol ], [ 0, %.preheader.us.us.i264.preheader ]
  %gep74.i266.prol = getelementptr i8, ptr %invariant.gep73.i262, i64 %indvars.iv59.i265.prol
  %i.ava = load i8, ptr %gep74.i266.prol, align 1, !tbaa !44
  %i.avb = mul nsw i64 %indvars.iv59.i265.prol, %i.auj
  %gep76.i267.prol = getelementptr i8, ptr %invariant.gep75.i263, i64 %i.avb
  store i8 %i.ava, ptr %gep76.i267.prol, align 1, !tbaa !44
  %indvars.iv.next60.i268.prol = add nuw nsw i64 %indvars.iv59.i265.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter936
  br i1 %prol.iter.cmp.not, label %.preheader.us.us.i264.prol.loopexit, label %.preheader.us.us.i264.prol, !llvm.loop !274

.preheader.us.us.i264.prol.loopexit:              ; preds = %.preheader.us.us.i264.prol, %.preheader.us.us.i264.preheader
  %indvars.iv59.i265.unr = phi i64 [ %indvars.iv59.i265.ph, %.preheader.us.us.i264.preheader ], [ %indvars.iv.next60.i268.prol, %.preheader.us.us.i264.prol ]
  %i.avc = sub nsw i64 %indvars.iv59.i265.ph, %wide.trip.count67.i245
  %i.avd = icmp ugt i64 %i.avc, -4
  br i1 %i.avd, label %..loopexit40_crit_edge.us.us.i258, label %.preheader.us.us.i264

vec.epilog.scalar.ph713:                          ; preds = %vec.epilog.scalar.ph713.prol.loopexit, %vec.epilog.scalar.ph713
  %indvars.iv.i253 = phi i64 [ %indvars.iv.next.i256.1, %vec.epilog.scalar.ph713 ], [ %indvars.iv.i253.unr, %vec.epilog.scalar.ph713.prol.loopexit ] ; 4 uses
  %gep.i254 = getelementptr i8, ptr %invariant.gep.i251, i64 %indvars.iv.i253 ; 2 uses
  %i.ave = load i8, ptr %gep.i254, align 1, !tbaa !44
  %i.avf = zext i8 %i.ave to i32
  %i.avg = getelementptr i8, ptr %gep.i254, i64 1
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !44 ; 2 uses
  %i.avi = zext i8 %i.avh to i32
  %i.avj = mul nuw nsw i32 %i.awj, %i.avf
  %i.avk = mul nuw nsw i32 %i.auq, %i.avi
  %i.avl = add nuw nsw i32 %i.avj, 16
  %i.avm = add nuw nsw i32 %i.avl, %i.avk
  %i.avn = lshr i32 %i.avm, 5
  %i.avo = trunc i32 %i.avn to i8
  %i.avp = mul nsw i64 %indvars.iv.i253, %i.auj
  %gep72.i255 = getelementptr i8, ptr %invariant.gep71.i252, i64 %i.avp
  store i8 %i.avo, ptr %gep72.i255, align 1, !tbaa !44
  %indvars.iv.next.i256 = add nuw nsw i64 %indvars.iv.i253, 1 ; 2 uses
  %gep.i254.1 = getelementptr i8, ptr %invariant.gep.i251, i64 %indvars.iv.next.i256
  %i.avq = zext i8 %i.avh to i32
  %i.avr = getelementptr i8, ptr %gep.i254.1, i64 1
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !44
  %i.avt = zext i8 %i.avs to i32
  %i.avu = mul nuw nsw i32 %i.awj, %i.avq
  %i.avv = mul nuw nsw i32 %i.auq, %i.avt
  %i.avw = add nuw nsw i32 %i.avu, 16
  %i.avx = add nuw nsw i32 %i.avw, %i.avv
  %i.avy = lshr i32 %i.avx, 5
  %i.avz = trunc i32 %i.avy to i8
  %i.awa = mul nsw i64 %indvars.iv.next.i256, %i.auj
  %gep72.i255.1 = getelementptr i8, ptr %invariant.gep71.i252, i64 %i.awa
  store i8 %i.avz, ptr %gep72.i255.1, align 1, !tbaa !44
  %indvars.iv.next.i256.1 = add nuw nsw i64 %indvars.iv.i253, 2 ; 2 uses
  %exitcond.not.i257.1 = icmp eq i64 %indvars.iv.next.i256.1, %wide.trip.count67.i245
  br i1 %exitcond.not.i257.1, label %..loopexit40_crit_edge.us.us.i258, label %vec.epilog.scalar.ph713, !llvm.loop !275

.preheader.us.us.i264:                            ; preds = %.preheader.us.us.i264.prol.loopexit, %.preheader.us.us.i264
  %indvars.iv59.i265 = phi i64 [ %indvars.iv.next60.i268.3, %.preheader.us.us.i264 ], [ %indvars.iv59.i265.unr, %.preheader.us.us.i264.prol.loopexit ] ; 6 uses
  %gep74.i266 = getelementptr i8, ptr %invariant.gep73.i262, i64 %indvars.iv59.i265
  %i.awb = load i8, ptr %gep74.i266, align 1, !tbaa !44
  %i.awc = mul nsw i64 %indvars.iv59.i265, %i.auj
  %gep76.i267 = getelementptr i8, ptr %invariant.gep75.i263, i64 %i.awc
  store i8 %i.awb, ptr %gep76.i267, align 1, !tbaa !44
  %indvars.iv.next60.i268 = add nuw nsw i64 %indvars.iv59.i265, 1 ; 2 uses
  %gep74.i266.1 = getelementptr i8, ptr %invariant.gep73.i262, i64 %indvars.iv.next60.i268
  %i.awd = load i8, ptr %gep74.i266.1, align 1, !tbaa !44
  %i.awe = mul nsw i64 %indvars.iv.next60.i268, %i.auj
  %gep76.i267.1 = getelementptr i8, ptr %invariant.gep75.i263, i64 %i.awe
  store i8 %i.awd, ptr %gep76.i267.1, align 1, !tbaa !44
  %indvars.iv.next60.i268.1 = add nuw nsw i64 %indvars.iv59.i265, 2 ; 2 uses
  %gep74.i266.2 = getelementptr i8, ptr %invariant.gep73.i262, i64 %indvars.iv.next60.i268.1
  %i.awf = load i8, ptr %gep74.i266.2, align 1, !tbaa !44
  %i.awg = mul nsw i64 %indvars.iv.next60.i268.1, %i.auj
  %gep76.i267.2 = getelementptr i8, ptr %invariant.gep75.i263, i64 %i.awg
  store i8 %i.awf, ptr %gep76.i267.2, align 1, !tbaa !44
  %indvars.iv.next60.i268.2 = add nuw nsw i64 %indvars.iv59.i265, 3 ; 2 uses
  %gep74.i266.3 = getelementptr i8, ptr %invariant.gep73.i262, i64 %indvars.iv.next60.i268.2
  %i.awh = load i8, ptr %gep74.i266.3, align 1, !tbaa !44
  %i.awi = mul nsw i64 %indvars.iv.next60.i268.2, %i.auj
  %gep76.i267.3 = getelementptr i8, ptr %invariant.gep75.i263, i64 %i.awi
  store i8 %i.awh, ptr %gep76.i267.3, align 1, !tbaa !44
  %indvars.iv.next60.i268.3 = add nuw nsw i64 %indvars.iv59.i265, 4 ; 2 uses
  %exitcond63.not.i269.3 = icmp eq i64 %indvars.iv.next60.i268.3, %wide.trip.count67.i245
  br i1 %exitcond63.not.i269.3, label %..loopexit40_crit_edge.us.us.i258, label %.preheader.us.us.i264, !llvm.loop !276

..loopexit40_crit_edge.us.us.i258:                ; preds = %vec.epilog.scalar.ph713.prol.loopexit, %vec.epilog.scalar.ph713, %.preheader.us.us.i264.prol.loopexit, %.preheader.us.us.i264, %middle.block709, %vec.epilog.middle.block727, %middle.block676, %vec.epilog.middle.block689
  %indvars.iv.next65.i259 = add nuw nsw i64 %indvars.iv64.i247, 1 ; 2 uses
  %exitcond68.not.i260 = icmp eq i64 %indvars.iv.next65.i259, %wide.trip.count67.i245
  br i1 %exitcond68.not.i260, label %pred_dc.exit, label %.lr.ph47.split.us.split.us.i246, !llvm.loop !257

iter.check712:                                    ; preds = %.lr.ph47.split.us.split.us.i246
  %i.awj = sub nuw nsw i32 32, %i.auq             ; 5 uses
  %i.awk = sext i32 %i.aup to i64
  %invariant.gep.i251 = getelementptr i8, ptr %i.e, i64 %i.awk ; 5 uses
  %invariant.gep71.i252 = getelementptr i8, ptr %1, i64 %indvars.iv64.i247 ; 5 uses
  br i1 %or.cond894, label %vector.main.loop.iter.check696, label %vec.epilog.scalar.ph713.preheader

vector.main.loop.iter.check696:                   ; preds = %iter.check712
  br i1 %min.iters.check697, label %vec.epilog.ph716, label %vector.ph698

vector.ph698:                                     ; preds = %vector.main.loop.iter.check696
  %broadcast.splatinsert700 = insertelement <16 x i32> poison, i32 %i.awj, i64 0
  %broadcast.splat701 = shufflevector <16 x i32> %broadcast.splatinsert700, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert702 = insertelement <16 x i32> poison, i32 %i.auq, i64 0
end_hunk_0
begin_hunk_1_@pred_angle:bb.a
  %i.bdo = add nsw i32 %i.ayv, %i.bdk
  %i.bdp = lshr i32 %i.bdo, 5
  %i.bdq = trunc i32 %i.bdp to i8
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.e, i64 63
  store i8 %i.bdq, ptr %i.bdr, align 1, !tbaa !44
  %i.bds = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.bdt = load i8, ptr %i.bds, align 1, !tbaa !44 ; 3 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.f, i64 31
  store i8 %i.bdt, ptr %i.bdu, align 1, !tbaa !44
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bdw = zext i8 %i.bdt to i32                  ; 2 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.bdy = load i8, ptr %i.bdx, align 1, !tbaa !44
  %i.bdz = zext i8 %i.bdy to i32
  %i.bea = sub nsw i32 %i.bdz, %i.bdw             ; 31 uses
  %i.beb = shl nuw nsw i32 %i.bdw, 5
  %i.bec = or disjoint i32 %i.beb, 16
  store i8 %i.bdt, ptr %i.bdv, align 16, !tbaa !44
  %i.bed = add nsw i32 %i.bea, %i.bec             ; 2 uses
  %i.bee = lshr i32 %i.bed, 5
  %i.bef = trunc i32 %i.bee to i8
  %i.beg = getelementptr inbounds nuw i8, ptr %i.f, i64 33
  store i8 %i.bef, ptr %i.beg, align 1, !tbaa !44
  %i.beh = add nsw i32 %i.bea, %i.bed             ; 2 uses
  %i.bei = lshr i32 %i.beh, 5
  %i.bej = trunc i32 %i.bei to i8
  %i.bek = getelementptr inbounds nuw i8, ptr %i.f, i64 34
  store i8 %i.bej, ptr %i.bek, align 2, !tbaa !44
  %i.bel = add nsw i32 %i.bea, %i.beh             ; 2 uses
  %i.bem = lshr i32 %i.bel, 5
  %i.ben = trunc i32 %i.bem to i8
  %i.beo = getelementptr inbounds nuw i8, ptr %i.f, i64 35
  store i8 %i.ben, ptr %i.beo, align 1, !tbaa !44
  %i.bep = add nsw i32 %i.bea, %i.bel             ; 2 uses
  %i.beq = lshr i32 %i.bep, 5
  %i.ber = trunc i32 %i.beq to i8
  %i.bes = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i8 %i.ber, ptr %i.bes, align 4, !tbaa !44
  %i.bet = add nsw i32 %i.bea, %i.bep             ; 2 uses
  %i.beu = lshr i32 %i.bet, 5
  %i.bev = trunc i32 %i.beu to i8
  %i.bew = getelementptr inbounds nuw i8, ptr %i.f, i64 37
  store i8 %i.bev, ptr %i.bew, align 1, !tbaa !44
  %i.bex = add nsw i32 %i.bea, %i.bet             ; 2 uses
  %i.bey = lshr i32 %i.bex, 5
  %i.bez = trunc i32 %i.bey to i8
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.f, i64 38
  store i8 %i.bez, ptr %i.bfa, align 2, !tbaa !44
  %i.bfb = add nsw i32 %i.bea, %i.bex             ; 2 uses
  %i.bfc = lshr i32 %i.bfb, 5
  %i.bfd = trunc i32 %i.bfc to i8
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.f, i64 39
  store i8 %i.bfd, ptr %i.bfe, align 1, !tbaa !44
  %i.bff = add nsw i32 %i.bea, %i.bfb             ; 2 uses
  %i.bfg = lshr i32 %i.bff, 5
  %i.bfh = trunc i32 %i.bfg to i8
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i8 %i.bfh, ptr %i.bfi, align 8, !tbaa !44
  %i.bfj = add nsw i32 %i.bea, %i.bff             ; 2 uses
  %i.bfk = lshr i32 %i.bfj, 5
  %i.bfl = trunc i32 %i.bfk to i8
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.f, i64 41
  store i8 %i.bfl, ptr %i.bfm, align 1, !tbaa !44
  %i.bfn = add nsw i32 %i.bea, %i.bfj             ; 2 uses
  %i.bfo = lshr i32 %i.bfn, 5
  %i.bfp = trunc i32 %i.bfo to i8
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.f, i64 42
  store i8 %i.bfp, ptr %i.bfq, align 2, !tbaa !44
  %i.bfr = add nsw i32 %i.bea, %i.bfn             ; 2 uses
  %i.bfs = lshr i32 %i.bfr, 5
  %i.bft = trunc i32 %i.bfs to i8
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.f, i64 43
  store i8 %i.bft, ptr %i.bfu, align 1, !tbaa !44
  %i.bfv = add nsw i32 %i.bea, %i.bfr             ; 2 uses
  %i.bfw = lshr i32 %i.bfv, 5
  %i.bfx = trunc i32 %i.bfw to i8
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i8 %i.bfx, ptr %i.bfy, align 4, !tbaa !44
  %i.bfz = add nsw i32 %i.bea, %i.bfv             ; 2 uses
  %i.bga = lshr i32 %i.bfz, 5
  %i.bgb = trunc i32 %i.bga to i8
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.f, i64 45
  store i8 %i.bgb, ptr %i.bgc, align 1, !tbaa !44
  %i.bgd = add nsw i32 %i.bea, %i.bfz             ; 2 uses
  %i.bge = lshr i32 %i.bgd, 5
  %i.bgf = trunc i32 %i.bge to i8
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.f, i64 46
  store i8 %i.bgf, ptr %i.bgg, align 2, !tbaa !44
  %i.bgh = add nsw i32 %i.bea, %i.bgd             ; 2 uses
  %i.bgi = lshr i32 %i.bgh, 5
  %i.bgj = trunc i32 %i.bgi to i8
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.f, i64 47
  store i8 %i.bgj, ptr %i.bgk, align 1, !tbaa !44
  %i.bgl = add nsw i32 %i.bea, %i.bgh             ; 2 uses
  %i.bgm = lshr i32 %i.bgl, 5
  %i.bgn = trunc i32 %i.bgm to i8
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i8 %i.bgn, ptr %i.bgo, align 16, !tbaa !44
  %i.bgp = add nsw i32 %i.bea, %i.bgl             ; 2 uses
  %i.bgq = lshr i32 %i.bgp, 5
  %i.bgr = trunc i32 %i.bgq to i8
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.f, i64 49
  store i8 %i.bgr, ptr %i.bgs, align 1, !tbaa !44
  %i.bgt = add nsw i32 %i.bea, %i.bgp             ; 2 uses
  %i.bgu = lshr i32 %i.bgt, 5
  %i.bgv = trunc i32 %i.bgu to i8
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.f, i64 50
  store i8 %i.bgv, ptr %i.bgw, align 2, !tbaa !44
  %i.bgx = add nsw i32 %i.bea, %i.bgt             ; 2 uses
  %i.bgy = lshr i32 %i.bgx, 5
  %i.bgz = trunc i32 %i.bgy to i8
  %i.bha = getelementptr inbounds nuw i8, ptr %i.f, i64 51
  store i8 %i.bgz, ptr %i.bha, align 1, !tbaa !44
  %i.bhb = add nsw i32 %i.bea, %i.bgx             ; 2 uses
  %i.bhc = lshr i32 %i.bhb, 5
  %i.bhd = trunc i32 %i.bhc to i8
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store i8 %i.bhd, ptr %i.bhe, align 4, !tbaa !44
  %i.bhf = add nsw i32 %i.bea, %i.bhb             ; 2 uses
  %i.bhg = lshr i32 %i.bhf, 5
  %i.bhh = trunc i32 %i.bhg to i8
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.f, i64 53
  store i8 %i.bhh, ptr %i.bhi, align 1, !tbaa !44
  %i.bhj = add nsw i32 %i.bea, %i.bhf             ; 2 uses
  %i.bhk = lshr i32 %i.bhj, 5
  %i.bhl = trunc i32 %i.bhk to i8
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.f, i64 54
  store i8 %i.bhl, ptr %i.bhm, align 2, !tbaa !44
  %i.bhn = add nsw i32 %i.bea, %i.bhj             ; 2 uses
  %i.bho = lshr i32 %i.bhn, 5
  %i.bhp = trunc i32 %i.bho to i8
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.f, i64 55
  store i8 %i.bhp, ptr %i.bhq, align 1, !tbaa !44
  %i.bhr = add nsw i32 %i.bea, %i.bhn             ; 2 uses
  %i.bhs = lshr i32 %i.bhr, 5
  %i.bht = trunc i32 %i.bhs to i8
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i8 %i.bht, ptr %i.bhu, align 8, !tbaa !44
  %i.bhv = add nsw i32 %i.bea, %i.bhr             ; 2 uses
  %i.bhw = lshr i32 %i.bhv, 5
  %i.bhx = trunc i32 %i.bhw to i8
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.f, i64 57
  store i8 %i.bhx, ptr %i.bhy, align 1, !tbaa !44
  %i.bhz = add nsw i32 %i.bea, %i.bhv             ; 2 uses
  %i.bia = lshr i32 %i.bhz, 5
  %i.bib = trunc i32 %i.bia to i8
  %i.bic = getelementptr inbounds nuw i8, ptr %i.f, i64 58
  store i8 %i.bib, ptr %i.bic, align 2, !tbaa !44
  %i.bid = add nsw i32 %i.bea, %i.bhz             ; 2 uses
  %i.bie = lshr i32 %i.bid, 5
  %i.bif = trunc i32 %i.bie to i8
  %i.big = getelementptr inbounds nuw i8, ptr %i.f, i64 59
  store i8 %i.bif, ptr %i.big, align 1, !tbaa !44
  %i.bih = add nsw i32 %i.bea, %i.bid             ; 2 uses
  %i.bii = lshr i32 %i.bih, 5
  %i.bij = trunc i32 %i.bii to i8
  %i.bik = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  store i8 %i.bij, ptr %i.bik, align 4, !tbaa !44
  %i.bil = add nsw i32 %i.bea, %i.bih             ; 2 uses
  %i.bim = lshr i32 %i.bil, 5
  %i.bin = trunc i32 %i.bim to i8
  %i.bio = getelementptr inbounds nuw i8, ptr %i.f, i64 61
  store i8 %i.bin, ptr %i.bio, align 1, !tbaa !44
  %i.bip = add nsw i32 %i.bea, %i.bil             ; 2 uses
  %i.biq = lshr i32 %i.bip, 5
  %i.bir = trunc i32 %i.biq to i8
  %i.bis = getelementptr inbounds nuw i8, ptr %i.f, i64 62
  store i8 %i.bir, ptr %i.bis, align 2, !tbaa !44
  %i.bit = add nsw i32 %i.bea, %i.bip
  %i.biu = lshr i32 %i.bit, 5
  %i.biv = trunc i32 %i.biu to i8
  %i.biw = getelementptr inbounds nuw i8, ptr %i.f, i64 63
  store i8 %i.biv, ptr %i.biw, align 1, !tbaa !44
  br label %filter_bilin32.exit286

filter_bilin32.exit286:                           ; preds = %.lr.ph.i272, %bb.y
  %i.bix = icmp sgt i32 %i.ayh, 1
  br i1 %i.bix, label %.preheader332.preheader, label %.loopexit333

.preheader332.preheader:                          ; preds = %filter_bilin32.exit286
  %wide.trip.count370 = zext nneg i32 %i.ayh to i64
  %i.biy = add nsw i64 %wide.trip.count370, -1    ; 3 uses
  %xtraiter922 = and i64 %i.biy, 1
  %i.biz = icmp eq i32 %i.ayh, 2
  br i1 %i.biz, label %.preheader332.epil.preheader, label %.preheader332.preheader.new

.preheader332.preheader.new:                      ; preds = %.preheader332.preheader
  %unroll_iter926 = and i64 %i.biy, -2
  br label %.preheader332

.preheader332:                                    ; preds = %.preheader332, %.preheader332.preheader.new
  %indvars.iv367 = phi i64 [ 1, %.preheader332.preheader.new ], [ %indvars.iv.next368.1, %.preheader332 ] ; 3 uses
  %.0159341 = phi i32 [ 128, %.preheader332.preheader.new ], [ %i.bji, %.preheader332 ]
  %niter927 = phi i64 [ 0, %.preheader332.preheader.new ], [ %niter927.next.1, %.preheader332 ]
  %i.bja = add nuw nsw i32 %.0159341, %i.aye      ; 2 uses
  %i.bjb = lshr i32 %i.bja, 8
  %i.bjc = zext nneg i32 %i.bjb to i64
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bjc
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjd, i64 31
  %i.bjf = load i8, ptr %i.bje, align 1, !tbaa !44
  %i.bjg = sub nuw nsw i64 31, %indvars.iv367
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bjg
  store i8 %i.bjf, ptr %i.bjh, align 1, !tbaa !44
  %i.bji = add nuw nsw i32 %i.bja, %i.aye         ; 3 uses
  %i.bjj = lshr i32 %i.bji, 8
  %i.bjk = zext nneg i32 %i.bjj to i64
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bjk
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjl, i64 31
  %i.bjn = load i8, ptr %i.bjm, align 1, !tbaa !44
  %i.bjo = sub nuw nsw i64 30, %indvars.iv367
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bjo
  store i8 %i.bjn, ptr %i.bjp, align 1, !tbaa !44
  %indvars.iv.next368.1 = add nuw nsw i64 %indvars.iv367, 2 ; 2 uses
  %niter927.next.1 = add nuw i64 %niter927, 2     ; 2 uses
  %niter927.ncmp.1 = icmp eq i64 %niter927.next.1, %unroll_iter926
  br i1 %niter927.ncmp.1, label %.loopexit333.loopexit.unr-lcssa, label %.preheader332, !llvm.loop !279

.loopexit333.loopexit.unr-lcssa:                  ; preds = %.preheader332
  %lcmp.mod924.not = icmp eq i64 %xtraiter922, 0
  br i1 %lcmp.mod924.not, label %.loopexit333, label %.preheader332.epil.preheader

.preheader332.epil.preheader:                     ; preds = %.loopexit333.loopexit.unr-lcssa, %.preheader332.preheader
  %indvars.iv367.epil.init = phi i64 [ 1, %.preheader332.preheader ], [ %indvars.iv.next368.1, %.loopexit333.loopexit.unr-lcssa ]
  %.0159341.epil.init = phi i32 [ 128, %.preheader332.preheader ], [ %i.bji, %.loopexit333.loopexit.unr-lcssa ]
  %lcmp.mod925 = trunc i64 %i.biy to i1
  tail call void @llvm.assume(i1 %lcmp.mod925)
  %i.bjq = add nuw nsw i32 %.0159341.epil.init, %i.aye
  %i.bjr = lshr i32 %i.bjq, 8
  %i.bjs = zext nneg i32 %i.bjr to i64
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bjs
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjt, i64 31
  %i.bjv = load i8, ptr %i.bju, align 1, !tbaa !44
  %i.bjw = sub nuw nsw i64 31, %indvars.iv367.epil.init
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bjw
  store i8 %i.bjv, ptr %i.bjx, align 1, !tbaa !44
  br label %.loopexit333

.loopexit333:                                     ; preds = %.preheader332.epil.preheader, %.loopexit333.loopexit.unr-lcssa, %filter_bilin32.exit286
  %i.bjy = icmp sgt i32 %3, 0
  br i1 %i.bjy, label %.lr.ph38.i, label %pred_dc.exit

.lr.ph38.i:                                       ; preds = %.loopexit333
  %i.bjz = zext nneg i32 %3 to i64                ; 8 uses
  %i.bka = sext i32 %2 to i64                     ; 2 uses
  %min.iters.check628 = icmp ult i32 %3, 4
  %min.iters.check630 = icmp ult i32 %3, 16
  %i.bkb = and i64 %i.bjz, 12
  %n.vec632 = and i64 %i.bjz, 2147483632          ; 4 uses
  %cmp.n643 = icmp eq i64 %n.vec632, %i.bjz
  %min.epilog.iters.check648 = icmp eq i64 %i.bkb, 0
  %n.vec650 = and i64 %i.bjz, 2147483644          ; 3 uses
  %cmp.n661 = icmp eq i64 %n.vec650, %i.bjz
  br label %bb.z

bb.z:                                             ; preds = %..loopexit_crit_edge.us.i, %.lr.ph38.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %..loopexit_crit_edge.us.i ], [ 0, %.lr.ph38.i ] ; 3 uses
  %.037.us.i = phi i32 [ %i.bkc, %..loopexit_crit_edge.us.i ], [ 0, %.lr.ph38.i ]
  %i.bkc = sub nsw i32 %.037.us.i, %i.ayb         ; 3 uses
  %i.bkd = ashr i32 %i.bkc, 5
  %i.bke = and i32 %i.bkc, 31                     ; 5 uses
  %.not.us.i = icmp eq i32 %i.bke, 0
  %i.bkf = sext i32 %i.bkd to i64
  %i.bkg = getelementptr i8, ptr %i.e, i64 %i.bkf
  %i.bkh = getelementptr i8, ptr %i.bkg, i64 32   ; 4 uses
  br i1 %.not.us.i, label %bb.aa, label %iter.check645

vec.epilog.scalar.ph646:                          ; preds = %vec.epilog.scalar.ph646.preheader, %vec.epilog.scalar.ph646
  %indvars.iv.i288 = phi i64 [ %indvars.iv.next.i290, %vec.epilog.scalar.ph646 ], [ %indvars.iv.i288.ph, %vec.epilog.scalar.ph646.preheader ] ; 3 uses
  %gep.i289 = getelementptr i8, ptr %i.bkh, i64 %indvars.iv.i288 ; 2 uses
  %i.bki = load i8, ptr %gep.i289, align 1, !tbaa !44
  %i.bkj = zext i8 %i.bki to i32
  %i.bkk = getelementptr i8, ptr %gep.i289, i64 1
  %i.bkl = load i8, ptr %i.bkk, align 1, !tbaa !44
  %i.bkm = zext i8 %i.bkl to i32
  %i.bkn = mul nuw nsw i32 %i.bkv, %i.bkj
  %i.bko = mul nuw nsw i32 %i.bke, %i.bkm
  %i.bkp = add nuw nsw i32 %i.bkn, 16
  %i.bkq = add nuw nsw i32 %i.bkp, %i.bko
  %i.bkr = lshr i32 %i.bkq, 5
  %i.bks = trunc i32 %i.bkr to i8
  %gep47.i = getelementptr i8, ptr %invariant.gep46.i, i64 %indvars.iv.i288
  store i8 %i.bks, ptr %gep47.i, align 1, !tbaa !44
  %indvars.iv.next.i290 = add nuw nsw i64 %indvars.iv.i288, 1 ; 2 uses
  %exitcond.not.i291 = icmp eq i64 %indvars.iv.next.i290, %i.bjz
  br i1 %exitcond.not.i291, label %..loopexit_crit_edge.us.i, label %vec.epilog.scalar.ph646, !llvm.loop !280

bb.aa:                                            ; preds = %bb.z
  %i.bkt = mul nsw i64 %indvars.iv40.i, %i.bka
  %i.bku = getelementptr inbounds i8, ptr %1, i64 %i.bkt
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bku, ptr nonnull readonly align 1 %i.bkh, i64 %i.bjz, i1 false)
  br label %..loopexit_crit_edge.us.i

..loopexit_crit_edge.us.i:                        ; preds = %vec.epilog.scalar.ph646, %middle.block642, %vec.epilog.middle.block660, %bb.aa
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond44.not.i = icmp eq i64 %indvars.iv.next41.i, %i.bjz
  br i1 %exitcond44.not.i, label %pred_dc.exit, label %bb.z, !llvm.loop !281

iter.check645:                                    ; preds = %bb.z
  %i.bkv = sub nuw nsw i32 32, %i.bke             ; 3 uses
  %i.bkw = mul nsw i64 %indvars.iv40.i, %i.bka
  %invariant.gep46.i = getelementptr i8, ptr %1, i64 %i.bkw ; 3 uses
  br i1 %min.iters.check628, label %vec.epilog.scalar.ph646.preheader, label %vector.main.loop.iter.check629

vector.main.loop.iter.check629:                   ; preds = %iter.check645
  br i1 %min.iters.check630, label %vec.epilog.ph649, label %vector.ph631

vector.ph631:                                     ; preds = %vector.main.loop.iter.check629
  %broadcast.splatinsert633 = insertelement <16 x i32> poison, i32 %i.bkv, i64 0
  %broadcast.splat634 = shufflevector <16 x i32> %broadcast.splatinsert633, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert635 = insertelement <16 x i32> poison, i32 %i.bke, i64 0
  %broadcast.splat636 = shufflevector <16 x i32> %broadcast.splatinsert635, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body637

vector.body637:                                   ; preds = %vector.body637, %vector.ph631
  %index638 = phi i64 [ 0, %vector.ph631 ], [ %index.next641, %vector.body637 ] ; 3 uses
  %i.bkx = getelementptr i8, ptr %i.bkh, i64 %index638 ; 2 uses
  %wide.load639 = load <16 x i8>, ptr %i.bkx, align 1, !tbaa !44
  %i.bky = zext <16 x i8> %wide.load639 to <16 x i32>
  %i.bkz = getelementptr i8, ptr %i.bkx, i64 1
  %wide.load640 = load <16 x i8>, ptr %i.bkz, align 1, !tbaa !44
  %i.bla = zext <16 x i8> %wide.load640 to <16 x i32>
  %i.blb = mul nuw nsw <16 x i32> %broadcast.splat634, %i.bky
  %i.blc = mul nuw nsw <16 x i32> %broadcast.splat636, %i.bla
  %i.bld = add nuw nsw <16 x i32> %i.blb, splat (i32 16)
  %i.ble = add nuw nsw <16 x i32> %i.bld, %i.blc
  %i.blf = lshr <16 x i32> %i.ble, splat (i32 5)
  %i.blg = trunc <16 x i32> %i.blf to <16 x i8>
  %i.blh = getelementptr i8, ptr %invariant.gep46.i, i64 %index638
  store <16 x i8> %i.blg, ptr %i.blh, align 1, !tbaa !44
  %index.next641 = add nuw i64 %index638, 16      ; 2 uses
  %i.bli = icmp eq i64 %index.next641, %n.vec632
  br i1 %i.bli, label %middle.block642, label %vector.body637, !llvm.loop !282

middle.block642:                                  ; preds = %vector.body637
  br i1 %cmp.n643, label %..loopexit_crit_edge.us.i, label %vec.epilog.iter.check647

vec.epilog.iter.check647:                         ; preds = %middle.block642
  br i1 %min.epilog.iters.check648, label %vec.epilog.scalar.ph646.preheader, label %vec.epilog.ph649, !prof !236

vec.epilog.ph649:                                 ; preds = %vector.main.loop.iter.check629, %vec.epilog.iter.check647
  %vec.epilog.resume.val644 = phi i64 [ %n.vec632, %vec.epilog.iter.check647 ], [ 0, %vector.main.loop.iter.check629 ]
  %broadcast.splatinsert651 = insertelement <4 x i32> poison, i32 %i.bkv, i64 0
  %broadcast.splat652 = shufflevector <4 x i32> %broadcast.splatinsert651, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert653 = insertelement <4 x i32> poison, i32 %i.bke, i64 0
  %broadcast.splat654 = shufflevector <4 x i32> %broadcast.splatinsert653, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body655

vec.epilog.vector.body655:                        ; preds = %vec.epilog.vector.body655, %vec.epilog.ph649
  %index656 = phi i64 [ %vec.epilog.resume.val644, %vec.epilog.ph649 ], [ %index.next659, %vec.epilog.vector.body655 ] ; 3 uses
  %i.blj = getelementptr i8, ptr %i.bkh, i64 %index656 ; 2 uses
  %wide.load657 = load <4 x i8>, ptr %i.blj, align 1, !tbaa !44
  %i.blk = zext <4 x i8> %wide.load657 to <4 x i32>
  %i.bll = getelementptr i8, ptr %i.blj, i64 1
  %wide.load658 = load <4 x i8>, ptr %i.bll, align 1, !tbaa !44
  %i.blm = zext <4 x i8> %wide.load658 to <4 x i32>
  %i.bln = mul nuw nsw <4 x i32> %broadcast.splat652, %i.blk
  %i.blo = mul nuw nsw <4 x i32> %broadcast.splat654, %i.blm
  %i.blp = add nuw nsw <4 x i32> %i.bln, splat (i32 16)
  %i.blq = add nuw nsw <4 x i32> %i.blp, %i.blo
  %i.blr = lshr <4 x i32> %i.blq, splat (i32 5)
  %i.bls = trunc <4 x i32> %i.blr to <4 x i8>
  %i.blt = getelementptr i8, ptr %invariant.gep46.i, i64 %index656
  store <4 x i8> %i.bls, ptr %i.blt, align 1, !tbaa !44
  %index.next659 = add nuw i64 %index656, 4       ; 2 uses
  %i.blu = icmp eq i64 %index.next659, %n.vec650
  br i1 %i.blu, label %vec.epilog.middle.block660, label %vec.epilog.vector.body655, !llvm.loop !283

vec.epilog.middle.block660:                       ; preds = %vec.epilog.vector.body655
  br i1 %cmp.n661, label %..loopexit_crit_edge.us.i, label %vec.epilog.scalar.ph646.preheader

vec.epilog.scalar.ph646.preheader:                ; preds = %iter.check645, %vec.epilog.iter.check647, %vec.epilog.middle.block660
  %indvars.iv.i288.ph = phi i64 [ 0, %iter.check645 ], [ %n.vec632, %vec.epilog.iter.check647 ], [ %n.vec650, %vec.epilog.middle.block660 ]
  br label %vec.epilog.scalar.ph646

bb.ab:                                            ; preds = %bb.w
  %i.blv = icmp eq i32 %4, 26
  br i1 %i.blv, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.blw = icmp slt i32 %3, 17
  %i.blx = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.bly = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  br i1 %i.blw, label %filter_bilin32.exit299, label %filter_bilin32.exit299.thread

filter_bilin32.exit299.thread:                    ; preds = %bb.ac
  %i.blz = load i8, ptr %i.bly, align 1, !tbaa !44 ; 2 uses
  %i.bma = zext i8 %i.blz to i32                  ; 2 uses
  %i.bmb = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.bmc = load i8, ptr %i.bmb, align 1, !tbaa !44
  %i.bmd = zext i8 %i.bmc to i32
  %i.bme = sub nsw i32 %i.bmd, %i.bma             ; 31 uses
  %i.bmf = shl nuw nsw i32 %i.bma, 5
  %i.bmg = or disjoint i32 %i.bmf, 16
  store i8 %i.blz, ptr %i.blx, align 16, !tbaa !44
  %i.bmh = add nsw i32 %i.bme, %i.bmg             ; 2 uses
  %i.bmi = lshr i32 %i.bmh, 5
  %i.bmj = trunc i32 %i.bmi to i8
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.e, i64 33
  store i8 %i.bmj, ptr %i.bmk, align 1, !tbaa !44
  %i.bml = add nsw i32 %i.bme, %i.bmh             ; 2 uses
  %i.bmm = lshr i32 %i.bml, 5
  %i.bmn = trunc i32 %i.bmm to i8
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.e, i64 34
  store i8 %i.bmn, ptr %i.bmo, align 2, !tbaa !44
  %i.bmp = add nsw i32 %i.bme, %i.bml             ; 2 uses
  %i.bmq = lshr i32 %i.bmp, 5
  %i.bmr = trunc i32 %i.bmq to i8
  %i.bms = getelementptr inbounds nuw i8, ptr %i.e, i64 35
  store i8 %i.bmr, ptr %i.bms, align 1, !tbaa !44
  %i.bmt = add nsw i32 %i.bme, %i.bmp             ; 2 uses
  %i.bmu = lshr i32 %i.bmt, 5
  %i.bmv = trunc i32 %i.bmu to i8
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store i8 %i.bmv, ptr %i.bmw, align 4, !tbaa !44
  %i.bmx = add nsw i32 %i.bme, %i.bmt             ; 2 uses
  %i.bmy = lshr i32 %i.bmx, 5
  %i.bmz = trunc i32 %i.bmy to i8
  %i.bna = getelementptr inbounds nuw i8, ptr %i.e, i64 37
  store i8 %i.bmz, ptr %i.bna, align 1, !tbaa !44
  %i.bnb = add nsw i32 %i.bme, %i.bmx             ; 2 uses
  %i.bnc = lshr i32 %i.bnb, 5
  %i.bnd = trunc i32 %i.bnc to i8
  %i.bne = getelementptr inbounds nuw i8, ptr %i.e, i64 38
  store i8 %i.bnd, ptr %i.bne, align 2, !tbaa !44
  %i.bnf = add nsw i32 %i.bme, %i.bnb             ; 2 uses
  %i.bng = lshr i32 %i.bnf, 5
  %i.bnh = trunc i32 %i.bng to i8
  %i.bni = getelementptr inbounds nuw i8, ptr %i.e, i64 39
  store i8 %i.bnh, ptr %i.bni, align 1, !tbaa !44
  %i.bnj = add nsw i32 %i.bme, %i.bnf             ; 2 uses
  %i.bnk = lshr i32 %i.bnj, 5
  %i.bnl = trunc i32 %i.bnk to i8
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i8 %i.bnl, ptr %i.bnm, align 8, !tbaa !44
end_hunk_1
