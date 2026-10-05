Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsbgst?download=true
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@dsbgst_:bb.a
  %wide.load4265 = load <4 x double>, ptr %i.aqm, align 8, !tbaa !153
  %i.aqn = fdiv <4 x double> %wide.load4265, %broadcast.splat4263
  store <4 x double> %i.aqn, ptr %i.aqm, align 8, !tbaa !153
  %index.next4266 = add nuw i64 %index4264, 4     ; 2 uses
  %i.aqo = icmp eq i64 %index.next4266, %n.vec4261
  br i1 %i.aqo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !51

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n4267 = icmp eq i64 %i.apq, %n.vec4261
  br i1 %cmp.n4267, label %._crit_edge2999, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck4245, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv3569.ph = phi i64 [ %i.apm, %iter.check ], [ %i.apm, %vector.scevcheck4245 ], [ %i.apx, %vec.epilog.iter.check ], [ %i.aqj, %vec.epilog.middle.block ] ; 3 uses
  %i.aqp = add i32 %i.bv, 1
  %i.aqq = trunc i64 %indvars.iv3569.ph to i32    ; 2 uses
  %i.aqr = sub i32 %i.aqp, %i.aqq
  %i.aqs = sub i32 %i.bv, %i.aqq
  %xtraiter4679 = and i32 %i.aqr, 3               ; 2 uses
  %lcmp.mod4680.not = icmp eq i32 %xtraiter4679, 0
  br i1 %lcmp.mod4680.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv3569.prol = phi i64 [ %indvars.iv.next3570.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv3569.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter4681 = phi i32 [ %prol.iter4681.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.aqt = trunc i64 %indvars.iv3569.prol to i32
  %i.aqu = add i32 %i.apl, %i.aqt
  %i.aqv = sext i32 %i.aqu to i64
  %i.aqw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aqv ; 2 uses
  %i.aqx = load double, ptr %i.aqw, align 8, !tbaa !153
  %i.aqy = fdiv double %i.aqx, %i.apj
  store double %i.aqy, ptr %i.aqw, align 8, !tbaa !153
  %indvars.iv.next3570.prol = add i64 %indvars.iv3569.prol, 1 ; 2 uses
  %prol.iter4681.next = add i32 %prol.iter4681, 1 ; 2 uses
  %prol.iter4681.cmp.not = icmp eq i32 %prol.iter4681.next, %xtraiter4679
  br i1 %prol.iter4681.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !52

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv3569.unr = phi i64 [ %indvars.iv3569.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next3570.prol, %vec.epilog.scalar.ph.prol ]
  %i.aqz = icmp ult i32 %i.aqs, 3
  br i1 %i.aqz, label %._crit_edge2999, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op4749 = add i32 1, %i.apl
  %invariant.op4751 = add i32 2, %i.apl
  %invariant.op4753 = add i32 3, %i.apl
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv3569 = phi i64 [ %indvars.iv3569.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next3570.3, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ara = trunc i64 %indvars.iv3569 to i32
  %i.arb = add i32 %i.apl, %i.ara
  %i.arc = sext i32 %i.arb to i64
  %i.ard = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.arc ; 2 uses
  %i.are = load double, ptr %i.ard, align 8, !tbaa !153
  %i.arf = fdiv double %i.are, %i.apj
  store double %i.arf, ptr %i.ard, align 8, !tbaa !153
  %i.arg = trunc i64 %indvars.iv3569 to i32
  %.reass4750 = add i32 %i.arg, %invariant.op4749
  %i.arh = sext i32 %.reass4750 to i64
  %i.ari = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.arh ; 2 uses
  %i.arj = load double, ptr %i.ari, align 8, !tbaa !153
  %i.ark = fdiv double %i.arj, %i.apj
  store double %i.ark, ptr %i.ari, align 8, !tbaa !153
  %i.arl = trunc i64 %indvars.iv3569 to i32
  %.reass4752 = add i32 %i.arl, %invariant.op4751
  %i.arm = sext i32 %.reass4752 to i64
  %i.arn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.arm ; 2 uses
  %i.aro = load double, ptr %i.arn, align 8, !tbaa !153
  %i.arp = fdiv double %i.aro, %i.apj
  store double %i.arp, ptr %i.arn, align 8, !tbaa !153
  %i.arq = trunc i64 %indvars.iv3569 to i32
  %.reass4754 = add i32 %i.arq, %invariant.op4753
  %i.arr = sext i32 %.reass4754 to i64
  %i.ars = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.arr ; 2 uses
  %i.art = load double, ptr %i.ars, align 8, !tbaa !153
  %i.aru = fdiv double %i.art, %i.apj
  store double %i.aru, ptr %i.ars, align 8, !tbaa !153
  %indvars.iv.next3570.3 = add nsw i64 %indvars.iv3569, 4 ; 2 uses
  %lftr.wideiv3572.3 = trunc i64 %indvars.iv.next3570.3 to i32
  %exitcond3573.not.3 = icmp eq i32 %i.apn, %lftr.wideiv3572.3
  br i1 %exitcond3573.not.3, label %._crit_edge2999, label %vec.epilog.scalar.ph, !llvm.loop !53

._crit_edge2999:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block4258, %vec.epilog.middle.block, %bb.bn
  store i32 1, ptr %i.b, align 4, !tbaa !151
  %i.arv = sub nsw i32 %i.br, %.pre3781           ; 4 uses
  store i32 %i.arv, ptr %i.c, align 4, !tbaa !151
  store i32 %i.br, ptr %i.d, align 4, !tbaa !151
  %i.arw = call i32 @llvm.smax.i32(i32 %i.arv, i32 1) ; 4 uses
  %.not2654.not3000 = icmp slt i32 %i.arw, %.02605.ph
  br i1 %.not2654.not3000, label %.lr.ph3003.preheader, label %._crit_edge3004

.lr.ph3003.preheader:                             ; preds = %._crit_edge2999
  %i.arx = zext nneg i32 %i.arw to i64            ; 4 uses
  %wide.trip.count3577 = zext nneg i32 %.02605.ph to i64 ; 3 uses
  %i.ary = sub nsw i64 %wide.trip.count3577, %i.arx
  %xtraiter4682 = and i64 %i.ary, 3               ; 2 uses
  %lcmp.mod4683.not = icmp eq i64 %xtraiter4682, 0
  br i1 %lcmp.mod4683.not, label %.lr.ph3003.prol.loopexit, label %.lr.ph3003.prol

.lr.ph3003.prol:                                  ; preds = %.lr.ph3003.preheader, %.lr.ph3003.prol
  %indvars.iv3574.prol = phi i64 [ %indvars.iv.next3575.prol, %.lr.ph3003.prol ], [ %i.arx, %.lr.ph3003.preheader ] ; 3 uses
  %prol.iter4684 = phi i64 [ %prol.iter4684.next, %.lr.ph3003.prol ], [ 0, %.lr.ph3003.preheader ]
  %i.arz = mul nsw i64 %indvars.iv3574.prol, %i.bb
  %i.asa = trunc nuw nsw i64 %indvars.iv3574.prol to i32
  %i.asb = sub i32 %.02605.ph, %i.asa
  %i.asc = sext i32 %i.asb to i64
  %i.asd = getelementptr [8 x i8], ptr %i.p, i64 %i.arz
  %i.ase = getelementptr [8 x i8], ptr %i.asd, i64 %i.asc ; 2 uses
  %i.asf = load double, ptr %i.ase, align 8, !tbaa !153
  %i.asg = fdiv double %i.asf, %i.apj
  store double %i.asg, ptr %i.ase, align 8, !tbaa !153
  %indvars.iv.next3575.prol = add nuw nsw i64 %indvars.iv3574.prol, 1 ; 2 uses
  %prol.iter4684.next = add i64 %prol.iter4684, 1 ; 2 uses
  %prol.iter4684.cmp.not = icmp eq i64 %prol.iter4684.next, %xtraiter4682
  br i1 %prol.iter4684.cmp.not, label %.lr.ph3003.prol.loopexit, label %.lr.ph3003.prol, !llvm.loop !54

.lr.ph3003.prol.loopexit:                         ; preds = %.lr.ph3003.prol, %.lr.ph3003.preheader
  %indvars.iv3574.unr = phi i64 [ %i.arx, %.lr.ph3003.preheader ], [ %indvars.iv.next3575.prol, %.lr.ph3003.prol ]
  %i.ash = sub nsw i64 %i.arx, %wide.trip.count3577
  %i.asi = icmp ugt i64 %i.ash, -4
  br i1 %i.asi, label %._crit_edge3004, label %.lr.ph3003

.lr.ph3003:                                       ; preds = %.lr.ph3003.prol.loopexit, %.lr.ph3003
  %indvars.iv3574 = phi i64 [ %indvars.iv.next3575.3, %.lr.ph3003 ], [ %indvars.iv3574.unr, %.lr.ph3003.prol.loopexit ] ; 6 uses
  %i.asj = mul nsw i64 %indvars.iv3574, %i.bb
  %i.ask = trunc nuw nsw i64 %indvars.iv3574 to i32
  %i.asl = sub i32 %.02605.ph, %i.ask
  %i.asm = sext i32 %i.asl to i64
  %i.asn = getelementptr [8 x i8], ptr %i.p, i64 %i.asj
  %i.aso = getelementptr [8 x i8], ptr %i.asn, i64 %i.asm ; 2 uses
  %i.asp = load double, ptr %i.aso, align 8, !tbaa !153
  %i.asq = fdiv double %i.asp, %i.apj
  store double %i.asq, ptr %i.aso, align 8, !tbaa !153
  %indvars.iv.next3575 = add nuw nsw i64 %indvars.iv3574, 1 ; 2 uses
  %i.asr = mul nsw i64 %indvars.iv.next3575, %i.bb
  %i.ass = trunc nuw nsw i64 %indvars.iv.next3575 to i32
  %i.ast = sub i32 %.02605.ph, %i.ass
  %i.asu = sext i32 %i.ast to i64
  %i.asv = getelementptr [8 x i8], ptr %i.p, i64 %i.asr
  %i.asw = getelementptr [8 x i8], ptr %i.asv, i64 %i.asu ; 2 uses
  %i.asx = load double, ptr %i.asw, align 8, !tbaa !153
  %i.asy = fdiv double %i.asx, %i.apj
  store double %i.asy, ptr %i.asw, align 8, !tbaa !153
  %indvars.iv.next3575.1 = add nuw nsw i64 %indvars.iv3574, 2 ; 2 uses
  %i.asz = mul nsw i64 %indvars.iv.next3575.1, %i.bb
  %i.ata = trunc nuw nsw i64 %indvars.iv.next3575.1 to i32
  %i.atb = sub i32 %.02605.ph, %i.ata
  %i.atc = sext i32 %i.atb to i64
  %i.atd = getelementptr [8 x i8], ptr %i.p, i64 %i.asz
  %i.ate = getelementptr [8 x i8], ptr %i.atd, i64 %i.atc ; 2 uses
  %i.atf = load double, ptr %i.ate, align 8, !tbaa !153
  %i.atg = fdiv double %i.atf, %i.apj
  store double %i.atg, ptr %i.ate, align 8, !tbaa !153
  %indvars.iv.next3575.2 = add nuw nsw i64 %indvars.iv3574, 3 ; 2 uses
  %i.ath = mul nsw i64 %indvars.iv.next3575.2, %i.bb
  %i.ati = trunc nuw nsw i64 %indvars.iv.next3575.2 to i32
  %i.atj = sub i32 %.02605.ph, %i.ati
  %i.atk = sext i32 %i.atj to i64
  %i.atl = getelementptr [8 x i8], ptr %i.p, i64 %i.ath
  %i.atm = getelementptr [8 x i8], ptr %i.atl, i64 %i.atk ; 2 uses
  %i.atn = load double, ptr %i.atm, align 8, !tbaa !153
  %i.ato = fdiv double %i.atn, %i.apj
  store double %i.ato, ptr %i.atm, align 8, !tbaa !153
  %indvars.iv.next3575.3 = add nuw nsw i64 %indvars.iv3574, 4 ; 2 uses
  %exitcond3578.not.3 = icmp eq i64 %indvars.iv.next3575.3, %wide.trip.count3577
  br i1 %exitcond3578.not.3, label %._crit_edge3004, label %.lr.ph3003, !llvm.loop !55

._crit_edge3004:                                  ; preds = %.lr.ph3003.prol.loopexit, %.lr.ph3003, %._crit_edge2999
  %.not26553017 = icmp sgt i32 %i.bw, %i.bs
  br i1 %.not26553017, label %bb.bp, label %.lr.ph3020

.lr.ph3020:                                       ; preds = %._crit_edge3004
  %i.atp = mul nsw i32 %i.br, %i.n
  %i.atq = sext i32 %i.atp to i64
  %i.atr = getelementptr [8 x i8], ptr %i.p, i64 %i.atq
  %i.ats = getelementptr i8, ptr %i.atr, i64 8    ; 3 uses
  store i32 %i.arv, ptr %i.c, align 4, !tbaa !151
  %i.att = xor i32 %i.bt, -1
  %i.atu = add i32 %i.br, %i.att                  ; 3 uses
  store i32 %i.atu, ptr %i.a, align 4, !tbaa !151
  %.not26743011 = icmp sgt i32 %i.arw, %i.atu
  %i.atv = sext i32 %i.bw to i64                  ; 7 uses
  %i.atw = sext i32 %i.br to i64                  ; 4 uses
  %i.atx = sub i32 %.02605.ph, %i.bt
  %i.aty = zext nneg i32 %i.arw to i64
  %i.atz = zext nneg i32 %i.atu to i64
  %i.aua = mul nsw i64 %i.atv, %i.bb              ; 2 uses
  %invariant.gep4755 = getelementptr [8 x i8], ptr %i.p, i64 %i.aua
  %i.aub = sub nsw i64 %i.atw, %i.atv
  %i.auc = add nuw nsw i64 %i.aub, 1              ; 2 uses
  %i.aud = mul nsw i64 %i.atv, %i.bc
  %i.aue = getelementptr [8 x i8], ptr %i.s, i64 %i.auc
  %i.auf = getelementptr [8 x i8], ptr %i.aue, i64 %i.aud
  %i.aug = getelementptr [8 x i8], ptr %i.p, i64 %i.auc
  %i.auh = getelementptr [8 x i8], ptr %i.aug, i64 %i.aua
  %indvars.iv.next3580.prol = add nsw i64 %i.atv, 1
  br label %.lr.ph3008

.lr.ph3008:                                       ; preds = %._crit_edge3016, %.lr.ph3020
  %indvar4687 = phi i32 [ %indvar.next4688, %._crit_edge3016 ], [ 0, %.lr.ph3020 ] ; 3 uses
  %indvars.iv3589 = phi i64 [ %indvars.iv.next3590.pre-phi, %._crit_edge3016 ], [ %i.atv, %.lr.ph3020 ] ; 9 uses
  %indvars.iv3582 = phi i32 [ %indvars.iv.next3583, %._crit_edge3016 ], [ %i.atx, %.lr.ph3020 ] ; 2 uses
  %i.aui = add i64 %indvars.iv3589, 1             ; 2 uses
  %i.auj = sub nsw i64 %i.atw, %indvars.iv3589
  %i.auk = add nuw nsw i64 %i.auj, 1              ; 2 uses
  %i.aul = mul nsw i64 %indvars.iv3589, %i.bb
  %i.aum = getelementptr [8 x i8], ptr %i.p, i64 %i.auk
  %i.aun = getelementptr [8 x i8], ptr %i.aum, i64 %i.aul ; 3 uses
  %i.auo = mul nsw i64 %indvars.iv3589, %i.bc
  %i.aup = getelementptr [8 x i8], ptr %i.s, i64 %i.auk
  %i.auq = getelementptr [8 x i8], ptr %i.aup, i64 %i.auo ; 3 uses
  %i.aur = and i32 %indvar4687, 1
  %lcmp.mod4690.not.not = icmp eq i32 %i.aur, 0
  br i1 %lcmp.mod4690.not.not, label %.prol.loopexit4686.unr-lcssa, label %.prol.loopexit4686

.prol.loopexit4686.unr-lcssa:                     ; preds = %.lr.ph3008
  %i.aus = sub i64 %i.aui, %i.atv
  %sext.prol = shl i64 %i.aus, 32
  %i.aut = ashr exact i64 %sext.prol, 29
  %gep4756 = getelementptr i8, ptr %invariant.gep4755, i64 %i.aut ; 2 uses
  %i.auu = load double, ptr %gep4756, align 8, !tbaa !153
  %i.auv = load double, ptr %i.auf, align 8, !tbaa !153 ; 2 uses
  %i.auw = load double, ptr %i.aun, align 8, !tbaa !153
  %i.aux = fneg double %i.auv
  %i.auy = call double @llvm.fmuladd.f64(double %i.aux, double %i.auw, double %i.auu)
  %i.auz = load double, ptr %i.auq, align 8, !tbaa !153 ; 2 uses
  %i.ava = load double, ptr %i.auh, align 8, !tbaa !153
  %i.avb = fneg double %i.auz
  %i.avc = call double @llvm.fmuladd.f64(double %i.avb, double %i.ava, double %i.auy)
  %i.avd = load double, ptr %i.ats, align 8, !tbaa !153
  %i.ave = fmul double %i.auv, %i.avd
  %i.avf = call double @llvm.fmuladd.f64(double %i.ave, double %i.auz, double %i.avc)
  store double %i.avf, ptr %gep4756, align 8, !tbaa !153
  br label %.prol.loopexit4686

.prol.loopexit4686:                               ; preds = %.prol.loopexit4686.unr-lcssa, %.lr.ph3008
  %indvars.iv3579.unr = phi i64 [ %i.atv, %.lr.ph3008 ], [ %indvars.iv.next3580.prol, %.prol.loopexit4686.unr-lcssa ]
  %i.avg = icmp eq i32 %indvar4687, 0
  br i1 %i.avg, label %._crit_edge3009, label %.lr.ph3008.new

.lr.ph3008.new:                                   ; preds = %.prol.loopexit4686, %.lr.ph3008.new
  %indvars.iv3579 = phi i64 [ %indvars.iv.next3580.1, %.lr.ph3008.new ], [ %indvars.iv3579.unr, %.prol.loopexit4686 ] ; 7 uses
  %i.avh = mul nsw i64 %indvars.iv3579, %i.bb     ; 2 uses
  %i.avi = sub i64 %i.aui, %indvars.iv3579
  %sext = shl i64 %i.avi, 32
  %i.avj = ashr exact i64 %sext, 29
  %i.avk = getelementptr i8, ptr %i.p, i64 %i.avj
  %i.avl = getelementptr [8 x i8], ptr %i.avk, i64 %i.avh ; 2 uses
  %i.avm = load double, ptr %i.avl, align 8, !tbaa !153
  %i.avn = sub nsw i64 %i.atw, %indvars.iv3579
  %i.avo = add nuw nsw i64 %i.avn, 1              ; 2 uses
  %i.avp = mul nsw i64 %indvars.iv3579, %i.bc
  %i.avq = getelementptr [8 x i8], ptr %i.s, i64 %i.avo
  %i.avr = getelementptr [8 x i8], ptr %i.avq, i64 %i.avp
  %i.avs = load double, ptr %i.avr, align 8, !tbaa !153 ; 2 uses
  %i.avt = load double, ptr %i.aun, align 8, !tbaa !153
  %i.avu = fneg double %i.avs
  %i.avv = call double @llvm.fmuladd.f64(double %i.avu, double %i.avt, double %i.avm)
  %i.avw = load double, ptr %i.auq, align 8, !tbaa !153 ; 2 uses
  %i.avx = getelementptr [8 x i8], ptr %i.p, i64 %i.avo
  %i.avy = getelementptr [8 x i8], ptr %i.avx, i64 %i.avh
  %i.avz = load double, ptr %i.avy, align 8, !tbaa !153
  %i.awa = fneg double %i.avw
  %i.awb = call double @llvm.fmuladd.f64(double %i.awa, double %i.avz, double %i.avv)
  %i.awc = load double, ptr %i.ats, align 8, !tbaa !153
  %i.awd = fmul double %i.avs, %i.awc
  %i.awe = call double @llvm.fmuladd.f64(double %i.awd, double %i.avw, double %i.awb)
  store double %i.awe, ptr %i.avl, align 8, !tbaa !153
  %indvars.iv.next3580 = add nsw i64 %indvars.iv3579, 1 ; 3 uses
  %i.awf = mul nsw i64 %indvars.iv.next3580, %i.bb ; 2 uses
  %i.awg = sub i64 %indvars.iv3589, %indvars.iv3579
  %sext.1 = shl i64 %i.awg, 32
  %i.awh = ashr exact i64 %sext.1, 29
  %i.awi = getelementptr i8, ptr %i.p, i64 %i.awh
  %i.awj = getelementptr [8 x i8], ptr %i.awi, i64 %i.awf ; 2 uses
  %i.awk = load double, ptr %i.awj, align 8, !tbaa !153
  %i.awl = sub nsw i64 %i.atw, %indvars.iv.next3580
  %i.awm = add nuw nsw i64 %i.awl, 1              ; 2 uses
  %i.awn = mul nsw i64 %indvars.iv.next3580, %i.bc
  %i.awo = getelementptr [8 x i8], ptr %i.s, i64 %i.awm
  %i.awp = getelementptr [8 x i8], ptr %i.awo, i64 %i.awn
  %i.awq = load double, ptr %i.awp, align 8, !tbaa !153 ; 2 uses
  %i.awr = load double, ptr %i.aun, align 8, !tbaa !153
  %i.aws = fneg double %i.awq
  %i.awt = call double @llvm.fmuladd.f64(double %i.aws, double %i.awr, double %i.awk)
  %i.awu = load double, ptr %i.auq, align 8, !tbaa !153 ; 2 uses
  %i.awv = getelementptr [8 x i8], ptr %i.p, i64 %i.awm
  %i.aww = getelementptr [8 x i8], ptr %i.awv, i64 %i.awf
  %i.awx = load double, ptr %i.aww, align 8, !tbaa !153
  %i.awy = fneg double %i.awu
  %i.awz = call double @llvm.fmuladd.f64(double %i.awy, double %i.awx, double %i.awt)
  %i.axa = load double, ptr %i.ats, align 8, !tbaa !153
  %i.axb = fmul double %i.awq, %i.axa
  %i.axc = call double @llvm.fmuladd.f64(double %i.axb, double %i.awu, double %i.awz)
  store double %i.axc, ptr %i.awj, align 8, !tbaa !153
  %indvars.iv.next3580.1 = add nsw i64 %indvars.iv3579, 2 ; 2 uses
  %lftr.wideiv3584.1 = trunc i64 %indvars.iv.next3580.1 to i32
  %exitcond3585.not.1 = icmp eq i32 %indvars.iv3582, %lftr.wideiv3584.1
  br i1 %exitcond3585.not.1, label %._crit_edge3009, label %.lr.ph3008.new, !llvm.loop !56

._crit_edge3009:                                  ; preds = %.lr.ph3008.new, %.prol.loopexit4686
  br i1 %.not26743011, label %._crit_edge3009.._crit_edge3016_crit_edge, label %.lr.ph3015

._crit_edge3009.._crit_edge3016_crit_edge:        ; preds = %._crit_edge3009
  %.pre3960 = add nsw i64 %indvars.iv3589, 1
  br label %._crit_edge3016

.lr.ph3015:                                       ; preds = %._crit_edge3009
  %i.axd = mul nsw i64 %indvars.iv3589, %i.bc
  %i.axe = trunc nsw i64 %indvars.iv3589 to i32
  %i.axf = sub i32 %.02605.ph, %i.axe
  %i.axg = sext i32 %i.axf to i64
  %i.axh = getelementptr [8 x i8], ptr %i.s, i64 %i.axd
  %i.axi = getelementptr [8 x i8], ptr %i.axh, i64 %i.axg
  %i.axj = add nsw i64 %indvars.iv3589, 1         ; 2 uses
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph3015, %bb.bo
  %indvars.iv3586 = phi i64 [ %i.aty, %.lr.ph3015 ], [ %indvars.iv.next3587, %bb.bo ] ; 5 uses
  %i.axk = load double, ptr %i.axi, align 8, !tbaa !153
  %i.axl = mul nsw i64 %indvars.iv3586, %i.bb     ; 2 uses
  %i.axm = trunc nuw nsw i64 %indvars.iv3586 to i32
  %i.axn = sub i32 %.02605.ph, %i.axm
  %i.axo = sext i32 %i.axn to i64
  %i.axp = getelementptr [8 x i8], ptr %i.p, i64 %i.axl
  %i.axq = getelementptr [8 x i8], ptr %i.axp, i64 %i.axo
  %i.axr = load double, ptr %i.axq, align 8, !tbaa !153
  %i.axs = sub i64 %i.axj, %indvars.iv3586
  %sext4078 = shl i64 %i.axs, 32
  %i.axt = ashr exact i64 %sext4078, 29
  %i.axu = getelementptr i8, ptr %i.p, i64 %i.axt
  %i.axv = getelementptr [8 x i8], ptr %i.axu, i64 %i.axl ; 2 uses
  %i.axw = load double, ptr %i.axv, align 8, !tbaa !153
  %i.axx = fneg double %i.axk
  %i.axy = call double @llvm.fmuladd.f64(double %i.axx, double %i.axr, double %i.axw)
  store double %i.axy, ptr %i.axv, align 8, !tbaa !153
  %indvars.iv.next3587 = add nuw nsw i64 %indvars.iv3586, 1
  %.not2674.not = icmp samesign ult i64 %indvars.iv3586, %i.atz
  br i1 %.not2674.not, label %bb.bo, label %._crit_edge3016, !llvm.loop !57

._crit_edge3016:                                  ; preds = %bb.bo, %._crit_edge3009.._crit_edge3016_crit_edge
  %indvars.iv.next3590.pre-phi = phi i64 [ %.pre3960, %._crit_edge3009.._crit_edge3016_crit_edge ], [ %i.axj, %bb.bo ] ; 2 uses
  %lftr.wideiv3592.pre-phi = trunc i64 %indvars.iv.next3590.pre-phi to i32
  %indvars.iv.next3583 = add i32 %indvars.iv3582, 1
  %exitcond3593.not = icmp eq i32 %i.br, %lftr.wideiv3592.pre-phi
  %indvar.next4688 = add i32 %indvar4687, 1
  br i1 %exitcond3593.not, label %._crit_edge3021, label %.lr.ph3008, !llvm.loop !58

._crit_edge3021:                                  ; preds = %._crit_edge3016
  store i32 1, ptr %i.b, align 4, !tbaa !151
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge3021, %._crit_edge3004
  br i1 %.not26532995, label %bb.bs, label %.lr.ph3032

.lr.ph3032:                                       ; preds = %bb.bp
  store i32 %i.bw, ptr %i.b, align 4, !tbaa !151
  store i32 %i.bs, ptr %i.c, align 4, !tbaa !151
  %i.axz = mul nsw i32 %i.br, %i.n
  %reass.sub3493 = sub i32 %i.axz, %.02605.ph
  %i.aya = add i32 %reass.sub3493, 2
  %i.ayb = sext i32 %i.bs to i64
  %i.ayc = zext i32 %i.br to i64
  %i.ayd = add i32 %i.bv, 1
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph3032, %._crit_edge3028
  %indvars.iv3599 = phi i64 [ %i.ayc, %.lr.ph3032 ], [ %indvars.iv.next3600, %._crit_edge3028 ] ; 4 uses
  %indvars.iv3594 = phi i32 [ %i.arv, %.lr.ph3032 ], [ %indvars.iv.next3595, %._crit_edge3028 ] ; 2 uses
  %i.aye = trunc i64 %indvars.iv3599 to i32
  %i.ayf = sub i32 %i.aye, %.pre3781              ; 2 uses
  %i.ayg = call i32 @llvm.smax.i32(i32 %i.ayf, i32 %i.bw)
  %.not26713023 = icmp sgt i32 %i.ayg, %i.bs
  br i1 %.not26713023, label %._crit_edge3028, label %.lr.ph3027

.lr.ph3027:                                       ; preds = %bb.bq
  %i.ayh = call i32 @llvm.smax.i32(i32 %indvars.iv3594, i32 %i.bw)
  %smax3596 = sext i32 %i.ayh to i64
  %i.ayi = trunc i64 %indvars.iv3599 to i32
  %i.ayj = add i32 %i.aya, %i.ayi
  %i.ayk = sext i32 %i.ayj to i64
  %i.ayl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ayk
  %i.aym = add i64 %indvars.iv3599, 1
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph3027, %bb.br
  %indvars.iv3597 = phi i64 [ %smax3596, %.lr.ph3027 ], [ %indvars.iv.next3598, %bb.br ] ; 6 uses
  %i.ayn = mul nsw i64 %indvars.iv3597, %i.bc
  %i.ayo = trunc nsw i64 %indvars.iv3597 to i32
  %i.ayp = sub i32 %.02605.ph, %i.ayo
  %i.ayq = sext i32 %i.ayp to i64
  %i.ayr = getelementptr [8 x i8], ptr %i.s, i64 %i.ayn
  %i.ays = getelementptr [8 x i8], ptr %i.ayr, i64 %i.ayq
  %i.ayt = load double, ptr %i.ays, align 8, !tbaa !153
  %i.ayu = load double, ptr %i.ayl, align 8, !tbaa !153
  %i.ayv = mul nsw i64 %indvars.iv3597, %i.bb
  %i.ayw = sub i64 %i.aym, %indvars.iv3597
  %sext4079 = shl i64 %i.ayw, 32
  %i.ayx = ashr exact i64 %sext4079, 29
  %i.ayy = getelementptr i8, ptr %i.p, i64 %i.ayx
  %i.ayz = getelementptr [8 x i8], ptr %i.ayy, i64 %i.ayv ; 2 uses
  %i.aza = load double, ptr %i.ayz, align 8, !tbaa !153
  %i.azb = fneg double %i.ayt
  %i.azc = call double @llvm.fmuladd.f64(double %i.azb, double %i.ayu, double %i.aza)
  store double %i.azc, ptr %i.ayz, align 8, !tbaa !153
  %indvars.iv.next3598 = add nsw i64 %indvars.iv3597, 1
  %.not2671.not = icmp slt i64 %indvars.iv3597, %i.ayb
  br i1 %.not2671.not, label %bb.br, label %._crit_edge3028, !llvm.loop !59

._crit_edge3028:                                  ; preds = %bb.br, %bb.bq
  %indvars.iv.next3600 = add i64 %indvars.iv3599, 1 ; 2 uses
  %indvars.iv.next3595 = add i32 %indvars.iv3594, 1
  %lftr.wideiv3602 = trunc i64 %indvars.iv.next3600 to i32
  %exitcond3603.not = icmp eq i32 %i.ayd, %lftr.wideiv3602
  br i1 %exitcond3603.not, label %._crit_edge3033, label %bb.bq, !llvm.loop !60

._crit_edge3033:                                  ; preds = %._crit_edge3028
  store i32 %i.ayf, ptr %i.a, align 4, !tbaa !151
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge3033, %bb.bp
  br i1 %.not, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.azd = sub nsw i32 %.pre3782, %i.ay
  store i32 %i.azd, ptr %i.d, align 4, !tbaa !151
  %i.aze = fdiv double 1.000000e+00, %i.apj
  store double %i.aze, ptr %i.e, align 8, !tbaa !153
  %i.azf = mul nsw i32 %i.br, %i.t
  %i.azg = add nsw i32 %i.azf, %i.ba
  %i.azh = sext i32 %i.azg to i64
  %i.azi = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.azh ; 2 uses
  call void @dscal_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.azi, ptr noundef nonnull @c__1) #4
  %i.azj = load i32, ptr %i.l, align 4, !tbaa !151 ; 3 uses
  %i.azk = icmp sgt i32 %i.azj, 0
  br i1 %i.azk, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.azl = load i32, ptr %2, align 4, !tbaa !151
  %i.azm = sub nsw i32 %i.azl, %i.ay
  store i32 %i.azm, ptr %i.d, align 4, !tbaa !151
  %i.azn = load i32, ptr %8, align 4, !tbaa !151
  %i.azo = add nsw i32 %i.azn, -1
  store i32 %i.azo, ptr %i.c, align 4, !tbaa !151
  %i.azp = add nuw nsw i32 %i.azj, 1
  %i.azq = sub nsw i32 %i.br, %i.azj              ; 2 uses
  %i.azr = mul nsw i32 %i.azq, %i.q
  %i.azs = add nsw i32 %i.azp, %i.azr
  %i.azt = sext i32 %i.azs to i64
  %i.azu = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.azt
  %i.azv = mul nsw i32 %i.azq, %i.t
  %i.azw = add nsw i32 %i.azv, %i.ba
  %i.azx = sext i32 %i.azw to i64
  %i.azy = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.azx
  call void @dger_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.l, ptr noundef nonnull @c_b20, ptr noundef %i.azi, ptr noundef nonnull @c__1, ptr noundef %i.azu, ptr noundef nonnull %i.c, ptr noundef %i.azy, ptr noundef nonnull %10) #4
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu, %bb.bs
  %i.azz = mul nsw i32 %i.br, %i.n
  %reass.sub3494 = sub i32 %i.azz, %.02605.ph
  %i.baa = add i32 %reass.sub3494, 2
  %i.bab = add i32 %i.baa, %i.bv
  %i.bac = sext i32 %i.bab to i64
  %i.bad = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bac
  %i.bae = load double, ptr %i.bad, align 8, !tbaa !153
  store double %i.bae, ptr %i.k, align 8, !tbaa !153
  %.pre3865 = load i32, ptr %4, align 4, !tbaa !151
  br label %bb.bw

bb.bw:                                            ; preds = %bb.r, %bb.bv
  %i.baf = phi i32 [ %.pre3865, %bb.bv ], [ %i.bq, %bb.r ] ; 2 uses
  %.025322918 = phi i32 [ 1, %bb.bv ], [ 0, %bb.r ] ; 7 uses
  %.not26472912 = phi i1 [ false, %bb.bv ], [ true, %bb.r ] ; 5 uses
  %.1260627742809 = phi i32 [ %i.br, %bb.bv ], [ %i.ca, %bb.r ] ; 18 uses
  %.1254827772807 = phi i32 [ %i.bs, %bb.bv ], [ %.02547.lcssa, %bb.r ] ; 11 uses
  %.1254327802805 = phi i32 [ %i.bv, %bb.bv ], [ %.02542.lcssa, %bb.r ] ; 7 uses
  %.1253927832803 = phi i32 [ %i.by, %bb.bv ], [ %.02538.lcssa, %bb.r ] ; 8 uses
  %i.bag = add nsw i32 %i.baf, -1
  store i32 %i.bag, ptr %i.d, align 4, !tbaa !151
  %.not26573141 = icmp slt i32 %i.baf, 2
  br i1 %.not26573141, label %._crit_edge3146, label %.lr.ph3145

.lr.ph3145:                                       ; preds = %bb.bw
  %i.bah = mul nsw i32 %.1260627742809, %i.n
  %i.bai = add i32 %.1260627742809, 1
  %i.baj = sext i32 %.1260627742809 to i64
  %i.bak = sext i32 %.1254827772807 to i64
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph3145, %.loopexit2881
  %indvars.iv3635 = phi i64 [ 1, %.lr.ph3145 ], [ %indvars.iv.next3636, %.loopexit2881 ] ; 7 uses
  %.82565.neg3143 = phi i32 [ -1, %.lr.ph3145 ], [ %i.bcx, %.loopexit2881 ] ; 3 uses
  br i1 %.not26472912, label %._crit_edge3866, label %bb.by

._crit_edge3866:                                  ; preds = %bb.bx
  %.pre3867 = load i32, ptr %i.j, align 4, !tbaa !151
  %.pre3869 = load i32, ptr %2, align 4, !tbaa !151
  %.pre3870 = load i32, ptr %3, align 4, !tbaa !151
  br label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.bal = sub nsw i64 %i.baj, %indvars.iv3635    ; 5 uses
  %i.bam = load i32, ptr %3, align 4, !tbaa !151  ; 3 uses
  %i.ban = trunc nsw i64 %i.bal to i32            ; 2 uses
  %i.bao = add nsw i32 %i.bam, %i.ban             ; 2 uses
  %i.bap = load i32, ptr %2, align 4, !tbaa !151  ; 3 uses
  %i.baq = icmp slt i32 %i.bao, %i.bap
  %i.bar = icmp sgt i64 %i.bal, 1
  %or.cond2759 = and i1 %i.bar, %i.baq
  %.pre3868 = load i32, ptr %i.j, align 4, !tbaa !151 ; 2 uses
  br i1 %or.cond2759, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.bas = add i32 %.82565.neg3143, %i.bah
  %i.bat = add i32 %i.bas, %.pre3868
  %i.bau = sext i32 %i.bat to i64
  %i.bav = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bau
  %i.baw = trunc nuw nsw i64 %indvars.iv3635 to i32
  %i.bax = add i32 %i.ay, %i.baw
  %i.bay = sub i32 %.1260627742809, %i.bax        ; 2 uses
  %i.baz = add i32 %i.bay, %i.bam
  %i.bba = add i32 %i.baz, %i.bap
  %i.bbb = sext i32 %i.bba to i64
  %i.bbc = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bbb
  %i.bbd = sub nsw i32 %i.bao, %i.ay
  %i.bbe = sext i32 %i.bbd to i64
  %i.bbf = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bbe
  call void @dlartg_(ptr noundef %i.bav, ptr noundef nonnull %i.k, ptr noundef nonnull %i.bbc, ptr noundef nonnull %i.bbf, ptr noundef nonnull %i.g) #4
  %i.bbg = mul nsw i64 %i.bal, %i.bc
  %i.bbh = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv3635
  %i.bbi = getelementptr i8, ptr %i.bbh, i64 8
  %i.bbj = getelementptr [8 x i8], ptr %i.bbi, i64 %i.bbg
  %i.bbk = load double, ptr %i.bbj, align 8, !tbaa !153
  %i.bbl = fneg double %i.bbk
  %i.bbm = load double, ptr %i.k, align 8, !tbaa !153
  %i.bbn = fmul double %i.bbm, %i.bbl             ; 2 uses
  %i.bbo = load i32, ptr %2, align 4, !tbaa !151  ; 2 uses
  %i.bbp = load i32, ptr %3, align 4, !tbaa !151  ; 3 uses
  %i.bbq = add i32 %i.bay, %i.bbo
  %i.bbr = add i32 %i.bbq, %i.bbp
  %i.bbs = sext i32 %i.bbr to i64
  %i.bbt = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bbs ; 2 uses
  %i.bbu = load double, ptr %i.bbt, align 8, !tbaa !153
  %i.bbv = sub i32 %i.ban, %i.ay
  %i.bbw = add i32 %i.bbv, %i.bbp
end_hunk_0
