Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsbgst?download=true
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@dsbgst_:bb.a
  %wide.load4265 = load <4 x double>, ptr %i.aqi, align 8, !tbaa !153
  %i.aqj = fdiv <4 x double> %wide.load4265, %broadcast.splat4263
  store <4 x double> %i.aqj, ptr %i.aqi, align 8, !tbaa !153
  %index.next4266 = add nuw i64 %index4264, 4     ; 2 uses
  %i.aqk = icmp eq i64 %index.next4266, %n.vec4261
  br i1 %i.aqk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !51

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n4267 = icmp eq i64 %i.apm, %n.vec4261
  br i1 %cmp.n4267, label %._crit_edge2999, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck4245, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv3569.ph = phi i64 [ %i.api, %iter.check ], [ %i.api, %vector.scevcheck4245 ], [ %i.apt, %vec.epilog.iter.check ], [ %i.aqf, %vec.epilog.middle.block ] ; 3 uses
  %i.aql = add i32 %i.bv, 1
  %i.aqm = trunc i64 %indvars.iv3569.ph to i32    ; 2 uses
  %i.aqn = sub i32 %i.aql, %i.aqm
  %i.aqo = sub i32 %i.bv, %i.aqm
  %xtraiter4671 = and i32 %i.aqn, 3               ; 2 uses
  %lcmp.mod4672.not = icmp eq i32 %xtraiter4671, 0
  br i1 %lcmp.mod4672.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv3569.prol = phi i64 [ %indvars.iv.next3570.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv3569.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter4673 = phi i32 [ %prol.iter4673.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.aqp = trunc i64 %indvars.iv3569.prol to i32
  %i.aqq = add i32 %i.aph, %i.aqp
  %i.aqr = sext i32 %i.aqq to i64
  %i.aqs = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aqr ; 2 uses
  %i.aqt = load double, ptr %i.aqs, align 8, !tbaa !153
  %i.aqu = fdiv double %i.aqt, %i.apf
  store double %i.aqu, ptr %i.aqs, align 8, !tbaa !153
  %indvars.iv.next3570.prol = add i64 %indvars.iv3569.prol, 1 ; 2 uses
  %prol.iter4673.next = add i32 %prol.iter4673, 1 ; 2 uses
  %prol.iter4673.cmp.not = icmp eq i32 %prol.iter4673.next, %xtraiter4671
  br i1 %prol.iter4673.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !52

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv3569.unr = phi i64 [ %indvars.iv3569.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next3570.prol, %vec.epilog.scalar.ph.prol ]
  %i.aqv = icmp ult i32 %i.aqo, 3
  br i1 %i.aqv, label %._crit_edge2999, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op4741 = add i32 1, %i.aph
  %invariant.op4743 = add i32 2, %i.aph
  %invariant.op4745 = add i32 3, %i.aph
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv3569 = phi i64 [ %indvars.iv3569.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next3570.3, %vec.epilog.scalar.ph ] ; 5 uses
  %i.aqw = trunc i64 %indvars.iv3569 to i32
  %i.aqx = add i32 %i.aph, %i.aqw
  %i.aqy = sext i32 %i.aqx to i64
  %i.aqz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aqy ; 2 uses
  %i.ara = load double, ptr %i.aqz, align 8, !tbaa !153
  %i.arb = fdiv double %i.ara, %i.apf
  store double %i.arb, ptr %i.aqz, align 8, !tbaa !153
  %i.arc = trunc i64 %indvars.iv3569 to i32
  %.reass4742 = add i32 %i.arc, %invariant.op4741
  %i.ard = sext i32 %.reass4742 to i64
  %i.are = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ard ; 2 uses
  %i.arf = load double, ptr %i.are, align 8, !tbaa !153
  %i.arg = fdiv double %i.arf, %i.apf
  store double %i.arg, ptr %i.are, align 8, !tbaa !153
  %i.arh = trunc i64 %indvars.iv3569 to i32
  %.reass4744 = add i32 %i.arh, %invariant.op4743
  %i.ari = sext i32 %.reass4744 to i64
  %i.arj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ari ; 2 uses
  %i.ark = load double, ptr %i.arj, align 8, !tbaa !153
  %i.arl = fdiv double %i.ark, %i.apf
  store double %i.arl, ptr %i.arj, align 8, !tbaa !153
  %i.arm = trunc i64 %indvars.iv3569 to i32
  %.reass4746 = add i32 %i.arm, %invariant.op4745
  %i.arn = sext i32 %.reass4746 to i64
  %i.aro = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.arn ; 2 uses
  %i.arp = load double, ptr %i.aro, align 8, !tbaa !153
  %i.arq = fdiv double %i.arp, %i.apf
  store double %i.arq, ptr %i.aro, align 8, !tbaa !153
  %indvars.iv.next3570.3 = add nsw i64 %indvars.iv3569, 4 ; 2 uses
  %lftr.wideiv3572.3 = trunc i64 %indvars.iv.next3570.3 to i32
  %exitcond3573.not.3 = icmp eq i32 %i.apj, %lftr.wideiv3572.3
  br i1 %exitcond3573.not.3, label %._crit_edge2999, label %vec.epilog.scalar.ph, !llvm.loop !53

._crit_edge2999:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block4258, %vec.epilog.middle.block, %bb.bn
  store i32 1, ptr %i.b, align 4, !tbaa !151
  %i.arr = sub nsw i32 %i.br, %.pre3781           ; 4 uses
  store i32 %i.arr, ptr %i.c, align 4, !tbaa !151
  store i32 %i.br, ptr %i.d, align 4, !tbaa !151
  %i.ars = call i32 @llvm.smax.i32(i32 %i.arr, i32 1) ; 4 uses
  %.not2654.not3000 = icmp slt i32 %i.ars, %.02605.ph
  br i1 %.not2654.not3000, label %.lr.ph3003.preheader, label %._crit_edge3004

.lr.ph3003.preheader:                             ; preds = %._crit_edge2999
  %i.art = zext nneg i32 %i.ars to i64            ; 4 uses
  %wide.trip.count3577 = zext nneg i32 %.02605.ph to i64 ; 3 uses
  %i.aru = sub nsw i64 %wide.trip.count3577, %i.art
  %xtraiter4674 = and i64 %i.aru, 3               ; 2 uses
  %lcmp.mod4675.not = icmp eq i64 %xtraiter4674, 0
  br i1 %lcmp.mod4675.not, label %.lr.ph3003.prol.loopexit, label %.lr.ph3003.prol

.lr.ph3003.prol:                                  ; preds = %.lr.ph3003.preheader, %.lr.ph3003.prol
  %indvars.iv3574.prol = phi i64 [ %indvars.iv.next3575.prol, %.lr.ph3003.prol ], [ %i.art, %.lr.ph3003.preheader ] ; 3 uses
  %prol.iter4676 = phi i64 [ %prol.iter4676.next, %.lr.ph3003.prol ], [ 0, %.lr.ph3003.preheader ]
  %i.arv = mul nsw i64 %indvars.iv3574.prol, %i.bb
  %i.arw = trunc nuw nsw i64 %indvars.iv3574.prol to i32
  %i.arx = sub i32 %.02605.ph, %i.arw
  %i.ary = sext i32 %i.arx to i64
  %i.arz = getelementptr [8 x i8], ptr %i.p, i64 %i.arv
  %i.asa = getelementptr [8 x i8], ptr %i.arz, i64 %i.ary ; 2 uses
  %i.asb = load double, ptr %i.asa, align 8, !tbaa !153
  %i.asc = fdiv double %i.asb, %i.apf
  store double %i.asc, ptr %i.asa, align 8, !tbaa !153
  %indvars.iv.next3575.prol = add nuw nsw i64 %indvars.iv3574.prol, 1 ; 2 uses
  %prol.iter4676.next = add i64 %prol.iter4676, 1 ; 2 uses
  %prol.iter4676.cmp.not = icmp eq i64 %prol.iter4676.next, %xtraiter4674
  br i1 %prol.iter4676.cmp.not, label %.lr.ph3003.prol.loopexit, label %.lr.ph3003.prol, !llvm.loop !54

.lr.ph3003.prol.loopexit:                         ; preds = %.lr.ph3003.prol, %.lr.ph3003.preheader
  %indvars.iv3574.unr = phi i64 [ %i.art, %.lr.ph3003.preheader ], [ %indvars.iv.next3575.prol, %.lr.ph3003.prol ]
  %i.asd = sub nsw i64 %i.art, %wide.trip.count3577
  %i.ase = icmp ugt i64 %i.asd, -4
  br i1 %i.ase, label %._crit_edge3004, label %.lr.ph3003

.lr.ph3003:                                       ; preds = %.lr.ph3003.prol.loopexit, %.lr.ph3003
  %indvars.iv3574 = phi i64 [ %indvars.iv.next3575.3, %.lr.ph3003 ], [ %indvars.iv3574.unr, %.lr.ph3003.prol.loopexit ] ; 6 uses
  %i.asf = mul nsw i64 %indvars.iv3574, %i.bb
  %i.asg = trunc nuw nsw i64 %indvars.iv3574 to i32
  %i.ash = sub i32 %.02605.ph, %i.asg
  %i.asi = sext i32 %i.ash to i64
  %i.asj = getelementptr [8 x i8], ptr %i.p, i64 %i.asf
  %i.ask = getelementptr [8 x i8], ptr %i.asj, i64 %i.asi ; 2 uses
  %i.asl = load double, ptr %i.ask, align 8, !tbaa !153
  %i.asm = fdiv double %i.asl, %i.apf
  store double %i.asm, ptr %i.ask, align 8, !tbaa !153
  %indvars.iv.next3575 = add nuw nsw i64 %indvars.iv3574, 1 ; 2 uses
  %i.asn = mul nsw i64 %indvars.iv.next3575, %i.bb
  %i.aso = trunc nuw nsw i64 %indvars.iv.next3575 to i32
  %i.asp = sub i32 %.02605.ph, %i.aso
  %i.asq = sext i32 %i.asp to i64
  %i.asr = getelementptr [8 x i8], ptr %i.p, i64 %i.asn
  %i.ass = getelementptr [8 x i8], ptr %i.asr, i64 %i.asq ; 2 uses
  %i.ast = load double, ptr %i.ass, align 8, !tbaa !153
  %i.asu = fdiv double %i.ast, %i.apf
  store double %i.asu, ptr %i.ass, align 8, !tbaa !153
  %indvars.iv.next3575.1 = add nuw nsw i64 %indvars.iv3574, 2 ; 2 uses
  %i.asv = mul nsw i64 %indvars.iv.next3575.1, %i.bb
  %i.asw = trunc nuw nsw i64 %indvars.iv.next3575.1 to i32
  %i.asx = sub i32 %.02605.ph, %i.asw
  %i.asy = sext i32 %i.asx to i64
  %i.asz = getelementptr [8 x i8], ptr %i.p, i64 %i.asv
  %i.ata = getelementptr [8 x i8], ptr %i.asz, i64 %i.asy ; 2 uses
  %i.atb = load double, ptr %i.ata, align 8, !tbaa !153
  %i.atc = fdiv double %i.atb, %i.apf
  store double %i.atc, ptr %i.ata, align 8, !tbaa !153
  %indvars.iv.next3575.2 = add nuw nsw i64 %indvars.iv3574, 3 ; 2 uses
  %i.atd = mul nsw i64 %indvars.iv.next3575.2, %i.bb
  %i.ate = trunc nuw nsw i64 %indvars.iv.next3575.2 to i32
  %i.atf = sub i32 %.02605.ph, %i.ate
  %i.atg = sext i32 %i.atf to i64
  %i.ath = getelementptr [8 x i8], ptr %i.p, i64 %i.atd
  %i.ati = getelementptr [8 x i8], ptr %i.ath, i64 %i.atg ; 2 uses
  %i.atj = load double, ptr %i.ati, align 8, !tbaa !153
  %i.atk = fdiv double %i.atj, %i.apf
  store double %i.atk, ptr %i.ati, align 8, !tbaa !153
  %indvars.iv.next3575.3 = add nuw nsw i64 %indvars.iv3574, 4 ; 2 uses
  %exitcond3578.not.3 = icmp eq i64 %indvars.iv.next3575.3, %wide.trip.count3577
  br i1 %exitcond3578.not.3, label %._crit_edge3004, label %.lr.ph3003, !llvm.loop !55

._crit_edge3004:                                  ; preds = %.lr.ph3003.prol.loopexit, %.lr.ph3003, %._crit_edge2999
  %.not26553017 = icmp sgt i32 %i.bw, %i.bs
  br i1 %.not26553017, label %bb.bp, label %.lr.ph3020

.lr.ph3020:                                       ; preds = %._crit_edge3004
  %i.atl = mul nsw i32 %i.br, %i.n
  %i.atm = sext i32 %i.atl to i64
  %i.atn = getelementptr [8 x i8], ptr %i.p, i64 %i.atm
  %i.ato = getelementptr i8, ptr %i.atn, i64 8    ; 3 uses
  store i32 %i.arr, ptr %i.c, align 4, !tbaa !151
  %i.atp = xor i32 %i.bt, -1
  %i.atq = add i32 %i.br, %i.atp                  ; 3 uses
  store i32 %i.atq, ptr %i.a, align 4, !tbaa !151
  %.not26743011 = icmp sgt i32 %i.ars, %i.atq
  %i.atr = sext i32 %i.bw to i64                  ; 7 uses
  %i.ats = sext i32 %i.br to i64                  ; 4 uses
  %i.att = sub i32 %.02605.ph, %i.bt
  %i.atu = zext nneg i32 %i.ars to i64
  %i.atv = zext nneg i32 %i.atq to i64
  %i.atw = mul nsw i64 %i.atr, %i.bb              ; 2 uses
  %invariant.gep4747 = getelementptr [8 x i8], ptr %i.p, i64 %i.atw
  %i.atx = sub nsw i64 %i.ats, %i.atr
  %i.aty = add nuw nsw i64 %i.atx, 1              ; 2 uses
  %i.atz = mul nsw i64 %i.atr, %i.bc
  %i.aua = getelementptr [8 x i8], ptr %i.s, i64 %i.aty
  %i.aub = getelementptr [8 x i8], ptr %i.aua, i64 %i.atz
  %i.auc = getelementptr [8 x i8], ptr %i.p, i64 %i.aty
  %i.aud = getelementptr [8 x i8], ptr %i.auc, i64 %i.atw
  %indvars.iv.next3580.prol = add nsw i64 %i.atr, 1
  br label %.lr.ph3008

.lr.ph3008:                                       ; preds = %._crit_edge3016, %.lr.ph3020
  %indvar4679 = phi i32 [ %indvar.next4680, %._crit_edge3016 ], [ 0, %.lr.ph3020 ] ; 3 uses
  %indvars.iv3589 = phi i64 [ %indvars.iv.next3590, %._crit_edge3016 ], [ %i.atr, %.lr.ph3020 ] ; 9 uses
  %indvars.iv3582 = phi i32 [ %indvars.iv.next3583, %._crit_edge3016 ], [ %i.att, %.lr.ph3020 ] ; 2 uses
  %13 = add i64 %indvars.iv3589, 1                ; 2 uses
  %i.aue = sub nsw i64 %i.ats, %indvars.iv3589
  %i.auf = add nuw nsw i64 %i.aue, 1              ; 2 uses
  %i.aug = mul nsw i64 %indvars.iv3589, %i.bb
  %i.auh = getelementptr [8 x i8], ptr %i.p, i64 %i.auf
  %i.aui = getelementptr [8 x i8], ptr %i.auh, i64 %i.aug ; 3 uses
  %i.auj = mul nsw i64 %indvars.iv3589, %i.bc
  %i.auk = getelementptr [8 x i8], ptr %i.s, i64 %i.auf
  %i.aul = getelementptr [8 x i8], ptr %i.auk, i64 %i.auj ; 3 uses
  %i.aum = and i32 %indvar4679, 1
  %lcmp.mod4682.not.not = icmp eq i32 %i.aum, 0
  br i1 %lcmp.mod4682.not.not, label %.prol.loopexit4678.unr-lcssa, label %.prol.loopexit4678

.prol.loopexit4678.unr-lcssa:                     ; preds = %.lr.ph3008
  %i.aun = sub i64 %13, %i.atr
  %sext.prol = shl i64 %i.aun, 32
  %i.auo = ashr exact i64 %sext.prol, 29
  %gep4748 = getelementptr i8, ptr %invariant.gep4747, i64 %i.auo ; 2 uses
  %i.aup = load double, ptr %gep4748, align 8, !tbaa !153
  %i.auq = load double, ptr %i.aub, align 8, !tbaa !153 ; 2 uses
  %i.aur = load double, ptr %i.aui, align 8, !tbaa !153
  %i.aus = fneg double %i.auq
  %i.aut = call double @llvm.fmuladd.f64(double %i.aus, double %i.aur, double %i.aup)
  %i.auu = load double, ptr %i.aul, align 8, !tbaa !153 ; 2 uses
  %i.auv = load double, ptr %i.aud, align 8, !tbaa !153
  %i.auw = fneg double %i.auu
  %i.aux = call double @llvm.fmuladd.f64(double %i.auw, double %i.auv, double %i.aut)
  %i.auy = load double, ptr %i.ato, align 8, !tbaa !153
  %i.auz = fmul double %i.auq, %i.auy
  %i.ava = call double @llvm.fmuladd.f64(double %i.auz, double %i.auu, double %i.aux)
  store double %i.ava, ptr %gep4748, align 8, !tbaa !153
  br label %.prol.loopexit4678

.prol.loopexit4678:                               ; preds = %.prol.loopexit4678.unr-lcssa, %.lr.ph3008
  %indvars.iv3579.unr = phi i64 [ %i.atr, %.lr.ph3008 ], [ %indvars.iv.next3580.prol, %.prol.loopexit4678.unr-lcssa ]
  %i.avb = icmp eq i32 %indvar4679, 0
  br i1 %i.avb, label %._crit_edge3009, label %.lr.ph3008.new

.lr.ph3008.new:                                   ; preds = %.prol.loopexit4678, %.lr.ph3008.new
  %indvars.iv3579 = phi i64 [ %indvars.iv.next3580.1, %.lr.ph3008.new ], [ %indvars.iv3579.unr, %.prol.loopexit4678 ] ; 7 uses
  %i.avc = mul nsw i64 %indvars.iv3579, %i.bb     ; 2 uses
  %i.avd = sub i64 %13, %indvars.iv3579
  %sext = shl i64 %i.avd, 32
  %i.ave = ashr exact i64 %sext, 29
  %i.avf = getelementptr i8, ptr %i.p, i64 %i.ave
  %i.avg = getelementptr [8 x i8], ptr %i.avf, i64 %i.avc ; 2 uses
  %i.avh = load double, ptr %i.avg, align 8, !tbaa !153
  %i.avi = sub nsw i64 %i.ats, %indvars.iv3579
  %i.avj = add nuw nsw i64 %i.avi, 1              ; 2 uses
  %i.avk = mul nsw i64 %indvars.iv3579, %i.bc
  %i.avl = getelementptr [8 x i8], ptr %i.s, i64 %i.avj
  %i.avm = getelementptr [8 x i8], ptr %i.avl, i64 %i.avk
  %i.avn = load double, ptr %i.avm, align 8, !tbaa !153 ; 2 uses
  %i.avo = load double, ptr %i.aui, align 8, !tbaa !153
  %i.avp = fneg double %i.avn
  %i.avq = call double @llvm.fmuladd.f64(double %i.avp, double %i.avo, double %i.avh)
  %i.avr = load double, ptr %i.aul, align 8, !tbaa !153 ; 2 uses
  %i.avs = getelementptr [8 x i8], ptr %i.p, i64 %i.avj
  %i.avt = getelementptr [8 x i8], ptr %i.avs, i64 %i.avc
  %i.avu = load double, ptr %i.avt, align 8, !tbaa !153
  %i.avv = fneg double %i.avr
  %i.avw = call double @llvm.fmuladd.f64(double %i.avv, double %i.avu, double %i.avq)
  %i.avx = load double, ptr %i.ato, align 8, !tbaa !153
  %i.avy = fmul double %i.avn, %i.avx
  %i.avz = call double @llvm.fmuladd.f64(double %i.avy, double %i.avr, double %i.avw)
  store double %i.avz, ptr %i.avg, align 8, !tbaa !153
  %indvars.iv.next3580 = add nsw i64 %indvars.iv3579, 1 ; 3 uses
  %i.awa = mul nsw i64 %indvars.iv.next3580, %i.bb ; 2 uses
  %i.awb = sub i64 %indvars.iv3589, %indvars.iv3579
  %sext.1 = shl i64 %i.awb, 32
  %i.awc = ashr exact i64 %sext.1, 29
  %i.awd = getelementptr i8, ptr %i.p, i64 %i.awc
  %i.awe = getelementptr [8 x i8], ptr %i.awd, i64 %i.awa ; 2 uses
  %i.awf = load double, ptr %i.awe, align 8, !tbaa !153
  %i.awg = sub nsw i64 %i.ats, %indvars.iv.next3580
  %i.awh = add nuw nsw i64 %i.awg, 1              ; 2 uses
  %i.awi = mul nsw i64 %indvars.iv.next3580, %i.bc
  %i.awj = getelementptr [8 x i8], ptr %i.s, i64 %i.awh
  %i.awk = getelementptr [8 x i8], ptr %i.awj, i64 %i.awi
  %i.awl = load double, ptr %i.awk, align 8, !tbaa !153 ; 2 uses
  %i.awm = load double, ptr %i.aui, align 8, !tbaa !153
  %i.awn = fneg double %i.awl
  %i.awo = call double @llvm.fmuladd.f64(double %i.awn, double %i.awm, double %i.awf)
  %i.awp = load double, ptr %i.aul, align 8, !tbaa !153 ; 2 uses
  %i.awq = getelementptr [8 x i8], ptr %i.p, i64 %i.awh
  %i.awr = getelementptr [8 x i8], ptr %i.awq, i64 %i.awa
  %i.aws = load double, ptr %i.awr, align 8, !tbaa !153
  %i.awt = fneg double %i.awp
  %i.awu = call double @llvm.fmuladd.f64(double %i.awt, double %i.aws, double %i.awo)
  %i.awv = load double, ptr %i.ato, align 8, !tbaa !153
  %i.aww = fmul double %i.awl, %i.awv
  %i.awx = call double @llvm.fmuladd.f64(double %i.aww, double %i.awp, double %i.awu)
  store double %i.awx, ptr %i.awe, align 8, !tbaa !153
  %indvars.iv.next3580.1 = add nsw i64 %indvars.iv3579, 2 ; 2 uses
  %lftr.wideiv3584.1 = trunc i64 %indvars.iv.next3580.1 to i32
  %exitcond3585.not.1 = icmp eq i32 %indvars.iv3582, %lftr.wideiv3584.1
  br i1 %exitcond3585.not.1, label %._crit_edge3009, label %.lr.ph3008.new, !llvm.loop !56

._crit_edge3009:                                  ; preds = %.lr.ph3008.new, %.prol.loopexit4678
  br i1 %.not26743011, label %._crit_edge3016, label %.lr.ph3015

.lr.ph3015:                                       ; preds = %._crit_edge3009
  %i.awy = mul nsw i64 %indvars.iv3589, %i.bc
  %i.awz = trunc nsw i64 %indvars.iv3589 to i32
  %i.axa = sub i32 %.02605.ph, %i.awz
  %i.axb = sext i32 %i.axa to i64
  %i.axc = getelementptr [8 x i8], ptr %i.s, i64 %i.awy
  %i.axd = getelementptr [8 x i8], ptr %i.axc, i64 %i.axb
  %i.axe = add i64 %indvars.iv3589, 1
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph3015, %bb.bo
  %indvars.iv3586 = phi i64 [ %i.atu, %.lr.ph3015 ], [ %indvars.iv.next3587, %bb.bo ] ; 5 uses
  %i.axf = load double, ptr %i.axd, align 8, !tbaa !153
  %i.axg = mul nsw i64 %indvars.iv3586, %i.bb     ; 2 uses
  %i.axh = trunc nuw nsw i64 %indvars.iv3586 to i32
  %i.axi = sub i32 %.02605.ph, %i.axh
  %i.axj = sext i32 %i.axi to i64
  %i.axk = getelementptr [8 x i8], ptr %i.p, i64 %i.axg
  %i.axl = getelementptr [8 x i8], ptr %i.axk, i64 %i.axj
  %i.axm = load double, ptr %i.axl, align 8, !tbaa !153
  %i.axn = sub i64 %i.axe, %indvars.iv3586
  %sext4078 = shl i64 %i.axn, 32
  %i.axo = ashr exact i64 %sext4078, 29
  %i.axp = getelementptr i8, ptr %i.p, i64 %i.axo
  %i.axq = getelementptr [8 x i8], ptr %i.axp, i64 %i.axg ; 2 uses
  %i.axr = load double, ptr %i.axq, align 8, !tbaa !153
  %i.axs = fneg double %i.axf
  %i.axt = call double @llvm.fmuladd.f64(double %i.axs, double %i.axm, double %i.axr)
  store double %i.axt, ptr %i.axq, align 8, !tbaa !153
  %indvars.iv.next3587 = add nuw nsw i64 %indvars.iv3586, 1
  %.not2674.not = icmp samesign ult i64 %indvars.iv3586, %i.atv
  br i1 %.not2674.not, label %bb.bo, label %._crit_edge3016, !llvm.loop !57

._crit_edge3016:                                  ; preds = %bb.bo, %._crit_edge3009
  %indvars.iv.next3590 = add nsw i64 %indvars.iv3589, 1 ; 2 uses
  %indvars.iv.next3583 = add i32 %indvars.iv3582, 1
  %lftr.wideiv3592 = trunc i64 %indvars.iv.next3590 to i32
  %exitcond3593.not = icmp eq i32 %i.br, %lftr.wideiv3592
  %indvar.next4680 = add i32 %indvar4679, 1
  br i1 %exitcond3593.not, label %._crit_edge3021, label %.lr.ph3008, !llvm.loop !58

._crit_edge3021:                                  ; preds = %._crit_edge3016
  store i32 1, ptr %i.b, align 4, !tbaa !151
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge3021, %._crit_edge3004
  br i1 %.not26532995, label %bb.bs, label %.lr.ph3032

.lr.ph3032:                                       ; preds = %bb.bp
  store i32 %i.bw, ptr %i.b, align 4, !tbaa !151
  store i32 %i.bs, ptr %i.c, align 4, !tbaa !151
  %i.axu = mul nsw i32 %i.br, %i.n
  %reass.sub3493 = sub i32 %i.axu, %.02605.ph
  %i.axv = add i32 %reass.sub3493, 2
  %i.axw = sext i32 %i.bs to i64
  %i.axx = zext i32 %i.br to i64
  %i.axy = add i32 %i.bv, 1
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph3032, %._crit_edge3028
  %indvars.iv3599 = phi i64 [ %i.axx, %.lr.ph3032 ], [ %indvars.iv.next3600, %._crit_edge3028 ] ; 4 uses
  %indvars.iv3594 = phi i32 [ %i.arr, %.lr.ph3032 ], [ %indvars.iv.next3595, %._crit_edge3028 ] ; 2 uses
  %i.axz = trunc i64 %indvars.iv3599 to i32
  %i.aya = sub i32 %i.axz, %.pre3781              ; 2 uses
  %i.ayb = call i32 @llvm.smax.i32(i32 %i.aya, i32 %i.bw)
  %.not26713023 = icmp sgt i32 %i.ayb, %i.bs
  br i1 %.not26713023, label %._crit_edge3028, label %.lr.ph3027

.lr.ph3027:                                       ; preds = %bb.bq
  %i.ayc = call i32 @llvm.smax.i32(i32 %indvars.iv3594, i32 %i.bw)
  %smax3596 = sext i32 %i.ayc to i64
  %i.ayd = trunc i64 %indvars.iv3599 to i32
  %i.aye = add i32 %i.axv, %i.ayd
  %i.ayf = sext i32 %i.aye to i64
  %i.ayg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ayf
  %i.ayh = add i64 %indvars.iv3599, 1
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph3027, %bb.br
  %indvars.iv3597 = phi i64 [ %smax3596, %.lr.ph3027 ], [ %indvars.iv.next3598, %bb.br ] ; 6 uses
  %i.ayi = mul nsw i64 %indvars.iv3597, %i.bc
  %i.ayj = trunc nsw i64 %indvars.iv3597 to i32
  %i.ayk = sub i32 %.02605.ph, %i.ayj
  %i.ayl = sext i32 %i.ayk to i64
  %i.aym = getelementptr [8 x i8], ptr %i.s, i64 %i.ayi
  %i.ayn = getelementptr [8 x i8], ptr %i.aym, i64 %i.ayl
  %i.ayo = load double, ptr %i.ayn, align 8, !tbaa !153
  %i.ayp = load double, ptr %i.ayg, align 8, !tbaa !153
  %i.ayq = mul nsw i64 %indvars.iv3597, %i.bb
  %i.ayr = sub i64 %i.ayh, %indvars.iv3597
  %sext4079 = shl i64 %i.ayr, 32
  %i.ays = ashr exact i64 %sext4079, 29
  %i.ayt = getelementptr i8, ptr %i.p, i64 %i.ays
  %i.ayu = getelementptr [8 x i8], ptr %i.ayt, i64 %i.ayq ; 2 uses
  %i.ayv = load double, ptr %i.ayu, align 8, !tbaa !153
  %i.ayw = fneg double %i.ayo
  %i.ayx = call double @llvm.fmuladd.f64(double %i.ayw, double %i.ayp, double %i.ayv)
  store double %i.ayx, ptr %i.ayu, align 8, !tbaa !153
  %indvars.iv.next3598 = add nsw i64 %indvars.iv3597, 1
  %.not2671.not = icmp slt i64 %indvars.iv3597, %i.axw
  br i1 %.not2671.not, label %bb.br, label %._crit_edge3028, !llvm.loop !59

._crit_edge3028:                                  ; preds = %bb.br, %bb.bq
  %indvars.iv.next3600 = add i64 %indvars.iv3599, 1 ; 2 uses
  %indvars.iv.next3595 = add i32 %indvars.iv3594, 1
  %lftr.wideiv3602 = trunc i64 %indvars.iv.next3600 to i32
  %exitcond3603.not = icmp eq i32 %i.axy, %lftr.wideiv3602
  br i1 %exitcond3603.not, label %._crit_edge3033, label %bb.bq, !llvm.loop !60

._crit_edge3033:                                  ; preds = %._crit_edge3028
  store i32 %i.aya, ptr %i.a, align 4, !tbaa !151
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge3033, %bb.bp
  br i1 %.not, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ayy = sub nsw i32 %.pre3782, %i.ay
  store i32 %i.ayy, ptr %i.d, align 4, !tbaa !151
  %i.ayz = fdiv double 1.000000e+00, %i.apf
  store double %i.ayz, ptr %i.e, align 8, !tbaa !153
  %i.aza = mul nsw i32 %i.br, %i.t
  %i.azb = add nsw i32 %i.aza, %i.ba
  %i.azc = sext i32 %i.azb to i64
  %i.azd = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.azc ; 2 uses
  call void @dscal_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.azd, ptr noundef nonnull @c__1) #4
  %i.aze = load i32, ptr %i.l, align 4, !tbaa !151 ; 3 uses
  %i.azf = icmp sgt i32 %i.aze, 0
  br i1 %i.azf, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.azg = load i32, ptr %2, align 4, !tbaa !151
  %i.azh = sub nsw i32 %i.azg, %i.ay
  store i32 %i.azh, ptr %i.d, align 4, !tbaa !151
  %i.azi = load i32, ptr %8, align 4, !tbaa !151
  %i.azj = add nsw i32 %i.azi, -1
  store i32 %i.azj, ptr %i.c, align 4, !tbaa !151
  %i.azk = add nuw nsw i32 %i.aze, 1
  %i.azl = sub nsw i32 %i.br, %i.aze              ; 2 uses
  %i.azm = mul nsw i32 %i.azl, %i.q
  %i.azn = add nsw i32 %i.azk, %i.azm
  %i.azo = sext i32 %i.azn to i64
  %i.azp = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.azo
  %i.azq = mul nsw i32 %i.azl, %i.t
  %i.azr = add nsw i32 %i.azq, %i.ba
  %i.azs = sext i32 %i.azr to i64
  %i.azt = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.azs
  call void @dger_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.l, ptr noundef nonnull @c_b20, ptr noundef %i.azd, ptr noundef nonnull @c__1, ptr noundef %i.azp, ptr noundef nonnull %i.c, ptr noundef %i.azt, ptr noundef nonnull %10) #4
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu, %bb.bs
  %i.azu = mul nsw i32 %i.br, %i.n
  %reass.sub3494 = sub i32 %i.azu, %.02605.ph
  %i.azv = add i32 %reass.sub3494, 2
  %i.azw = add i32 %i.azv, %i.bv
  %i.azx = sext i32 %i.azw to i64
  %i.azy = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.azx
  %i.azz = load double, ptr %i.azy, align 8, !tbaa !153
  store double %i.azz, ptr %i.k, align 8, !tbaa !153
  %.pre3865 = load i32, ptr %4, align 4, !tbaa !151
  br label %bb.bw

bb.bw:                                            ; preds = %bb.r, %bb.bv
  %i.baa = phi i32 [ %.pre3865, %bb.bv ], [ %i.bq, %bb.r ] ; 2 uses
  %.025322918 = phi i32 [ 1, %bb.bv ], [ 0, %bb.r ] ; 7 uses
  %.not26472912 = phi i1 [ false, %bb.bv ], [ true, %bb.r ] ; 5 uses
  %.1260627742809 = phi i32 [ %i.br, %bb.bv ], [ %i.ca, %bb.r ] ; 18 uses
  %.1254827772807 = phi i32 [ %i.bs, %bb.bv ], [ %.02547.lcssa, %bb.r ] ; 11 uses
  %.1254327802805 = phi i32 [ %i.bv, %bb.bv ], [ %.02542.lcssa, %bb.r ] ; 7 uses
  %.1253927832803 = phi i32 [ %i.by, %bb.bv ], [ %.02538.lcssa, %bb.r ] ; 8 uses
  %i.bab = add nsw i32 %i.baa, -1
  store i32 %i.bab, ptr %i.d, align 4, !tbaa !151
  %.not26573141 = icmp slt i32 %i.baa, 2
  br i1 %.not26573141, label %._crit_edge3146, label %.lr.ph3145

.lr.ph3145:                                       ; preds = %bb.bw
  %i.bac = mul nsw i32 %.1260627742809, %i.n
  %i.bad = add i32 %.1260627742809, 1
  %i.bae = sext i32 %.1260627742809 to i64
  %i.baf = sext i32 %.1254827772807 to i64
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph3145, %.loopexit2881
  %indvars.iv3635 = phi i64 [ 1, %.lr.ph3145 ], [ %indvars.iv.next3636, %.loopexit2881 ] ; 7 uses
  %.82565.neg3143 = phi i32 [ -1, %.lr.ph3145 ], [ %i.bcs, %.loopexit2881 ] ; 3 uses
  br i1 %.not26472912, label %._crit_edge3866, label %bb.by

._crit_edge3866:                                  ; preds = %bb.bx
  %.pre3867 = load i32, ptr %i.j, align 4, !tbaa !151
  %.pre3869 = load i32, ptr %2, align 4, !tbaa !151
  %.pre3870 = load i32, ptr %3, align 4, !tbaa !151
  br label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.bag = sub nsw i64 %i.bae, %indvars.iv3635    ; 5 uses
  %i.bah = load i32, ptr %3, align 4, !tbaa !151  ; 3 uses
  %i.bai = trunc nsw i64 %i.bag to i32            ; 2 uses
  %i.baj = add nsw i32 %i.bah, %i.bai             ; 2 uses
  %i.bak = load i32, ptr %2, align 4, !tbaa !151  ; 3 uses
  %i.bal = icmp slt i32 %i.baj, %i.bak
  %i.bam = icmp sgt i64 %i.bag, 1
  %or.cond2759 = and i1 %i.bam, %i.bal
  %.pre3868 = load i32, ptr %i.j, align 4, !tbaa !151 ; 2 uses
  br i1 %or.cond2759, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ban = add i32 %.82565.neg3143, %i.bac
  %i.bao = add i32 %i.ban, %.pre3868
  %i.bap = sext i32 %i.bao to i64
  %i.baq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bap
  %i.bar = trunc nuw nsw i64 %indvars.iv3635 to i32
  %i.bas = add i32 %i.ay, %i.bar
  %i.bat = sub i32 %.1260627742809, %i.bas        ; 2 uses
  %i.bau = add i32 %i.bat, %i.bah
  %i.bav = add i32 %i.bau, %i.bak
  %i.baw = sext i32 %i.bav to i64
  %i.bax = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.baw
  %i.bay = sub nsw i32 %i.baj, %i.ay
  %i.baz = sext i32 %i.bay to i64
  %i.bba = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.baz
  call void @dlartg_(ptr noundef %i.baq, ptr noundef nonnull %i.k, ptr noundef nonnull %i.bax, ptr noundef nonnull %i.bba, ptr noundef nonnull %i.g) #4
  %i.bbb = mul nsw i64 %i.bag, %i.bc
  %i.bbc = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv3635
  %i.bbd = getelementptr i8, ptr %i.bbc, i64 8
  %i.bbe = getelementptr [8 x i8], ptr %i.bbd, i64 %i.bbb
  %i.bbf = load double, ptr %i.bbe, align 8, !tbaa !153
  %i.bbg = fneg double %i.bbf
  %i.bbh = load double, ptr %i.k, align 8, !tbaa !153
  %i.bbi = fmul double %i.bbh, %i.bbg             ; 2 uses
  %i.bbj = load i32, ptr %2, align 4, !tbaa !151  ; 2 uses
  %i.bbk = load i32, ptr %3, align 4, !tbaa !151  ; 3 uses
  %i.bbl = add i32 %i.bat, %i.bbj
  %i.bbm = add i32 %i.bbl, %i.bbk
  %i.bbn = sext i32 %i.bbm to i64
  %i.bbo = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bbn ; 2 uses
  %i.bbp = load double, ptr %i.bbo, align 8, !tbaa !153
  %i.bbq = sub i32 %i.bai, %i.ay
  %i.bbr = add i32 %i.bbq, %i.bbk
end_hunk_0
