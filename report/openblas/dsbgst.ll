Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsbgst?download=true
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@dsbgst_:bb.a
  %wide.load4277 = load <4 x double>, ptr %i.aqm, align 8, !tbaa !153
  %i.aqn = fdiv <4 x double> %wide.load4277, %broadcast.splat4275
  store <4 x double> %i.aqn, ptr %i.aqm, align 8, !tbaa !153
  %index.next4278 = add nuw i64 %index4276, 4     ; 2 uses
  %i.aqo = icmp eq i64 %index.next4278, %n.vec4273
  br i1 %i.aqo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !51

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n4279 = icmp eq i64 %i.apq, %n.vec4273
  br i1 %cmp.n4279, label %._crit_edge3005, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck4257, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv3579.ph = phi i64 [ %i.apm, %iter.check ], [ %i.apm, %vector.scevcheck4257 ], [ %i.apx, %vec.epilog.iter.check ], [ %i.aqj, %vec.epilog.middle.block ] ; 3 uses
  %i.aqp = add i32 %i.bv, 1
  %i.aqq = trunc i64 %indvars.iv3579.ph to i32    ; 2 uses
  %i.aqr = sub i32 %i.aqp, %i.aqq
  %i.aqs = sub i32 %i.bv, %i.aqq
  %xtraiter4691 = and i32 %i.aqr, 3               ; 2 uses
  %lcmp.mod4692.not = icmp eq i32 %xtraiter4691, 0
  br i1 %lcmp.mod4692.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv3579.prol = phi i64 [ %indvars.iv.next3580.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv3579.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter4693 = phi i32 [ %prol.iter4693.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.aqt = trunc i64 %indvars.iv3579.prol to i32
  %i.aqu = add i32 %i.apl, %i.aqt
  %i.aqv = sext i32 %i.aqu to i64
  %i.aqw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aqv ; 2 uses
  %i.aqx = load double, ptr %i.aqw, align 8, !tbaa !153
  %i.aqy = fdiv double %i.aqx, %i.apj
  store double %i.aqy, ptr %i.aqw, align 8, !tbaa !153
  %indvars.iv.next3580.prol = add i64 %indvars.iv3579.prol, 1 ; 2 uses
  %prol.iter4693.next = add i32 %prol.iter4693, 1 ; 2 uses
  %prol.iter4693.cmp.not = icmp eq i32 %prol.iter4693.next, %xtraiter4691
  br i1 %prol.iter4693.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !52

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv3579.unr = phi i64 [ %indvars.iv3579.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next3580.prol, %vec.epilog.scalar.ph.prol ]
  %i.aqz = icmp ult i32 %i.aqs, 3
  br i1 %i.aqz, label %._crit_edge3005, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op4761 = add i32 1, %i.apl
  %invariant.op4763 = add i32 2, %i.apl
  %invariant.op4765 = add i32 3, %i.apl
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv3579 = phi i64 [ %indvars.iv3579.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next3580.3, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ara = trunc i64 %indvars.iv3579 to i32
  %i.arb = add i32 %i.apl, %i.ara
  %i.arc = sext i32 %i.arb to i64
  %i.ard = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.arc ; 2 uses
  %i.are = load double, ptr %i.ard, align 8, !tbaa !153
  %i.arf = fdiv double %i.are, %i.apj
  store double %i.arf, ptr %i.ard, align 8, !tbaa !153
  %i.arg = trunc i64 %indvars.iv3579 to i32
  %.reass4762 = add i32 %i.arg, %invariant.op4761
  %i.arh = sext i32 %.reass4762 to i64
  %i.ari = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.arh ; 2 uses
  %i.arj = load double, ptr %i.ari, align 8, !tbaa !153
  %i.ark = fdiv double %i.arj, %i.apj
  store double %i.ark, ptr %i.ari, align 8, !tbaa !153
  %i.arl = trunc i64 %indvars.iv3579 to i32
  %.reass4764 = add i32 %i.arl, %invariant.op4763
  %i.arm = sext i32 %.reass4764 to i64
  %i.arn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.arm ; 2 uses
  %i.aro = load double, ptr %i.arn, align 8, !tbaa !153
  %i.arp = fdiv double %i.aro, %i.apj
  store double %i.arp, ptr %i.arn, align 8, !tbaa !153
  %i.arq = trunc i64 %indvars.iv3579 to i32
  %.reass4766 = add i32 %i.arq, %invariant.op4765
  %i.arr = sext i32 %.reass4766 to i64
  %i.ars = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.arr ; 2 uses
  %i.art = load double, ptr %i.ars, align 8, !tbaa !153
  %i.aru = fdiv double %i.art, %i.apj
  store double %i.aru, ptr %i.ars, align 8, !tbaa !153
  %indvars.iv.next3580.3 = add nsw i64 %indvars.iv3579, 4 ; 2 uses
  %lftr.wideiv3582.3 = trunc i64 %indvars.iv.next3580.3 to i32
  %exitcond3583.not.3 = icmp eq i32 %i.apn, %lftr.wideiv3582.3
  br i1 %exitcond3583.not.3, label %._crit_edge3005, label %vec.epilog.scalar.ph, !llvm.loop !53

._crit_edge3005:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block4270, %vec.epilog.middle.block, %bb.bn
  store i32 1, ptr %i.b, align 4, !tbaa !151
  %i.arv = sub nsw i32 %i.br, %.pre3791           ; 4 uses
  store i32 %i.arv, ptr %i.c, align 4, !tbaa !151
  store i32 %i.br, ptr %i.d, align 4, !tbaa !151
  %i.arw = call i32 @llvm.smax.i32(i32 %i.arv, i32 1) ; 4 uses
  %.not2654.not3006 = icmp slt i32 %i.arw, %.02605.ph
  br i1 %.not2654.not3006, label %.lr.ph3009.preheader, label %._crit_edge3010

.lr.ph3009.preheader:                             ; preds = %._crit_edge3005
  %i.arx = zext nneg i32 %i.arw to i64            ; 4 uses
  %wide.trip.count3587 = zext nneg i32 %.02605.ph to i64 ; 3 uses
  %i.ary = sub nsw i64 %wide.trip.count3587, %i.arx
  %xtraiter4694 = and i64 %i.ary, 3               ; 2 uses
  %lcmp.mod4695.not = icmp eq i64 %xtraiter4694, 0
  br i1 %lcmp.mod4695.not, label %.lr.ph3009.prol.loopexit, label %.lr.ph3009.prol

.lr.ph3009.prol:                                  ; preds = %.lr.ph3009.preheader, %.lr.ph3009.prol
  %indvars.iv3584.prol = phi i64 [ %indvars.iv.next3585.prol, %.lr.ph3009.prol ], [ %i.arx, %.lr.ph3009.preheader ] ; 3 uses
  %prol.iter4696 = phi i64 [ %prol.iter4696.next, %.lr.ph3009.prol ], [ 0, %.lr.ph3009.preheader ]
  %i.arz = mul nsw i64 %indvars.iv3584.prol, %i.bb
  %i.asa = trunc nuw nsw i64 %indvars.iv3584.prol to i32
  %i.asb = sub i32 %.02605.ph, %i.asa
  %i.asc = sext i32 %i.asb to i64
  %i.asd = getelementptr [8 x i8], ptr %i.p, i64 %i.arz
  %i.ase = getelementptr [8 x i8], ptr %i.asd, i64 %i.asc ; 2 uses
  %i.asf = load double, ptr %i.ase, align 8, !tbaa !153
  %i.asg = fdiv double %i.asf, %i.apj
  store double %i.asg, ptr %i.ase, align 8, !tbaa !153
  %indvars.iv.next3585.prol = add nuw nsw i64 %indvars.iv3584.prol, 1 ; 2 uses
  %prol.iter4696.next = add i64 %prol.iter4696, 1 ; 2 uses
  %prol.iter4696.cmp.not = icmp eq i64 %prol.iter4696.next, %xtraiter4694
  br i1 %prol.iter4696.cmp.not, label %.lr.ph3009.prol.loopexit, label %.lr.ph3009.prol, !llvm.loop !54

.lr.ph3009.prol.loopexit:                         ; preds = %.lr.ph3009.prol, %.lr.ph3009.preheader
  %indvars.iv3584.unr = phi i64 [ %i.arx, %.lr.ph3009.preheader ], [ %indvars.iv.next3585.prol, %.lr.ph3009.prol ]
  %i.ash = sub nsw i64 %i.arx, %wide.trip.count3587
  %i.asi = icmp ugt i64 %i.ash, -4
  br i1 %i.asi, label %._crit_edge3010, label %.lr.ph3009

.lr.ph3009:                                       ; preds = %.lr.ph3009.prol.loopexit, %.lr.ph3009
  %indvars.iv3584 = phi i64 [ %indvars.iv.next3585.3, %.lr.ph3009 ], [ %indvars.iv3584.unr, %.lr.ph3009.prol.loopexit ] ; 6 uses
  %i.asj = mul nsw i64 %indvars.iv3584, %i.bb
  %i.ask = trunc nuw nsw i64 %indvars.iv3584 to i32
  %i.asl = sub i32 %.02605.ph, %i.ask
  %i.asm = sext i32 %i.asl to i64
  %i.asn = getelementptr [8 x i8], ptr %i.p, i64 %i.asj
  %i.aso = getelementptr [8 x i8], ptr %i.asn, i64 %i.asm ; 2 uses
  %i.asp = load double, ptr %i.aso, align 8, !tbaa !153
  %i.asq = fdiv double %i.asp, %i.apj
  store double %i.asq, ptr %i.aso, align 8, !tbaa !153
  %indvars.iv.next3585 = add nuw nsw i64 %indvars.iv3584, 1 ; 2 uses
  %i.asr = mul nsw i64 %indvars.iv.next3585, %i.bb
  %i.ass = trunc nuw nsw i64 %indvars.iv.next3585 to i32
  %i.ast = sub i32 %.02605.ph, %i.ass
  %i.asu = sext i32 %i.ast to i64
  %i.asv = getelementptr [8 x i8], ptr %i.p, i64 %i.asr
  %i.asw = getelementptr [8 x i8], ptr %i.asv, i64 %i.asu ; 2 uses
  %i.asx = load double, ptr %i.asw, align 8, !tbaa !153
  %i.asy = fdiv double %i.asx, %i.apj
  store double %i.asy, ptr %i.asw, align 8, !tbaa !153
  %indvars.iv.next3585.1 = add nuw nsw i64 %indvars.iv3584, 2 ; 2 uses
  %i.asz = mul nsw i64 %indvars.iv.next3585.1, %i.bb
  %i.ata = trunc nuw nsw i64 %indvars.iv.next3585.1 to i32
  %i.atb = sub i32 %.02605.ph, %i.ata
  %i.atc = sext i32 %i.atb to i64
  %i.atd = getelementptr [8 x i8], ptr %i.p, i64 %i.asz
  %i.ate = getelementptr [8 x i8], ptr %i.atd, i64 %i.atc ; 2 uses
  %i.atf = load double, ptr %i.ate, align 8, !tbaa !153
  %i.atg = fdiv double %i.atf, %i.apj
  store double %i.atg, ptr %i.ate, align 8, !tbaa !153
  %indvars.iv.next3585.2 = add nuw nsw i64 %indvars.iv3584, 3 ; 2 uses
  %i.ath = mul nsw i64 %indvars.iv.next3585.2, %i.bb
  %i.ati = trunc nuw nsw i64 %indvars.iv.next3585.2 to i32
  %i.atj = sub i32 %.02605.ph, %i.ati
  %i.atk = sext i32 %i.atj to i64
  %i.atl = getelementptr [8 x i8], ptr %i.p, i64 %i.ath
  %i.atm = getelementptr [8 x i8], ptr %i.atl, i64 %i.atk ; 2 uses
  %i.atn = load double, ptr %i.atm, align 8, !tbaa !153
  %i.ato = fdiv double %i.atn, %i.apj
  store double %i.ato, ptr %i.atm, align 8, !tbaa !153
  %indvars.iv.next3585.3 = add nuw nsw i64 %indvars.iv3584, 4 ; 2 uses
  %exitcond3588.not.3 = icmp eq i64 %indvars.iv.next3585.3, %wide.trip.count3587
  br i1 %exitcond3588.not.3, label %._crit_edge3010, label %.lr.ph3009, !llvm.loop !55

._crit_edge3010:                                  ; preds = %.lr.ph3009.prol.loopexit, %.lr.ph3009, %._crit_edge3005
  %.not26553023 = icmp sgt i32 %i.bw, %i.bs
  br i1 %.not26553023, label %bb.bp, label %.lr.ph3026

.lr.ph3026:                                       ; preds = %._crit_edge3010
  %i.atp = mul nsw i32 %i.br, %i.n
  %i.atq = sext i32 %i.atp to i64
  %i.atr = getelementptr [8 x i8], ptr %i.p, i64 %i.atq
  %i.ats = getelementptr i8, ptr %i.atr, i64 8    ; 3 uses
  store i32 %i.arv, ptr %i.c, align 4, !tbaa !151
  %i.att = xor i32 %i.bt, -1
  %i.atu = add i32 %i.br, %i.att                  ; 3 uses
  store i32 %i.atu, ptr %i.a, align 4, !tbaa !151
  %.not26743017 = icmp sgt i32 %i.arw, %i.atu
  %i.atv = sext i32 %i.bw to i64                  ; 7 uses
  %i.atw = sext i32 %i.br to i64                  ; 4 uses
  %i.atx = sub i32 %.02605.ph, %i.bt
  %i.aty = zext nneg i32 %i.arw to i64
  %i.atz = zext nneg i32 %i.atu to i64
  %i.aua = mul nsw i64 %i.atv, %i.bb              ; 2 uses
  %invariant.gep4767 = getelementptr [8 x i8], ptr %i.p, i64 %i.aua
  %i.aub = sub nsw i64 %i.atw, %i.atv
  %i.auc = add nuw nsw i64 %i.aub, 1              ; 2 uses
  %i.aud = mul nsw i64 %i.atv, %i.bc
  %i.aue = getelementptr [8 x i8], ptr %i.s, i64 %i.auc
  %i.auf = getelementptr [8 x i8], ptr %i.aue, i64 %i.aud
  %i.aug = getelementptr [8 x i8], ptr %i.p, i64 %i.auc
  %i.auh = getelementptr [8 x i8], ptr %i.aug, i64 %i.aua
  %indvars.iv.next3590.prol = add nsw i64 %i.atv, 1
  br label %.lr.ph3014

.lr.ph3014:                                       ; preds = %._crit_edge3022, %.lr.ph3026
  %indvar4699 = phi i32 [ %indvar.next4700, %._crit_edge3022 ], [ 0, %.lr.ph3026 ] ; 3 uses
  %indvars.iv3599 = phi i64 [ %indvars.iv.next3600.pre-phi, %._crit_edge3022 ], [ %i.atv, %.lr.ph3026 ] ; 9 uses
  %indvars.iv3592 = phi i32 [ %indvars.iv.next3593, %._crit_edge3022 ], [ %i.atx, %.lr.ph3026 ] ; 2 uses
  %i.aui = sub nsw i64 %i.atw, %indvars.iv3599
  %i.auj = add nuw nsw i64 %i.aui, 1              ; 2 uses
  %i.auk = mul nsw i64 %indvars.iv3599, %i.bb
  %i.aul = getelementptr [8 x i8], ptr %i.p, i64 %i.auj
  %i.aum = getelementptr [8 x i8], ptr %i.aul, i64 %i.auk ; 3 uses
  %i.aun = mul nsw i64 %indvars.iv3599, %i.bc
  %i.auo = getelementptr [8 x i8], ptr %i.s, i64 %i.auj
  %i.aup = getelementptr [8 x i8], ptr %i.auo, i64 %i.aun ; 3 uses
  %13 = add i64 %indvars.iv3599, 1                ; 2 uses
  %i.auq = and i32 %indvar4699, 1
  %lcmp.mod4702.not.not = icmp eq i32 %i.auq, 0
  br i1 %lcmp.mod4702.not.not, label %.prol.loopexit4698.unr-lcssa, label %.prol.loopexit4698

.prol.loopexit4698.unr-lcssa:                     ; preds = %.lr.ph3014
  %i.aur = sub i64 %13, %i.atv
  %sext.prol = shl i64 %i.aur, 32
  %i.aus = ashr exact i64 %sext.prol, 29
  %gep4768 = getelementptr i8, ptr %invariant.gep4767, i64 %i.aus ; 2 uses
  %i.aut = load double, ptr %gep4768, align 8, !tbaa !153
  %i.auu = load double, ptr %i.auf, align 8, !tbaa !153 ; 2 uses
  %i.auv = load double, ptr %i.aum, align 8, !tbaa !153
  %i.auw = fneg double %i.auu
  %i.aux = call double @llvm.fmuladd.f64(double %i.auw, double %i.auv, double %i.aut)
  %i.auy = load double, ptr %i.aup, align 8, !tbaa !153 ; 2 uses
  %i.auz = load double, ptr %i.auh, align 8, !tbaa !153
  %i.ava = fneg double %i.auy
  %i.avb = call double @llvm.fmuladd.f64(double %i.ava, double %i.auz, double %i.aux)
  %i.avc = load double, ptr %i.ats, align 8, !tbaa !153
  %i.avd = fmul double %i.auu, %i.avc
  %i.ave = call double @llvm.fmuladd.f64(double %i.avd, double %i.auy, double %i.avb)
  store double %i.ave, ptr %gep4768, align 8, !tbaa !153
  br label %.prol.loopexit4698

.prol.loopexit4698:                               ; preds = %.prol.loopexit4698.unr-lcssa, %.lr.ph3014
  %indvars.iv3589.unr = phi i64 [ %i.atv, %.lr.ph3014 ], [ %indvars.iv.next3590.prol, %.prol.loopexit4698.unr-lcssa ]
  %i.avf = icmp eq i32 %indvar4699, 0
  br i1 %i.avf, label %._crit_edge3015, label %.lr.ph3014.new

.lr.ph3014.new:                                   ; preds = %.prol.loopexit4698, %.lr.ph3014.new
  %indvars.iv3589 = phi i64 [ %indvars.iv.next3590.1, %.lr.ph3014.new ], [ %indvars.iv3589.unr, %.prol.loopexit4698 ] ; 7 uses
  %i.avg = mul nsw i64 %indvars.iv3589, %i.bb     ; 2 uses
  %i.avh = sub i64 %13, %indvars.iv3589
  %sext = shl i64 %i.avh, 32
  %i.avi = ashr exact i64 %sext, 29
  %i.avj = getelementptr i8, ptr %i.p, i64 %i.avi
  %i.avk = getelementptr [8 x i8], ptr %i.avj, i64 %i.avg ; 2 uses
  %i.avl = load double, ptr %i.avk, align 8, !tbaa !153
  %i.avm = sub nsw i64 %i.atw, %indvars.iv3589
  %i.avn = add nuw nsw i64 %i.avm, 1              ; 2 uses
  %i.avo = mul nsw i64 %indvars.iv3589, %i.bc
  %i.avp = getelementptr [8 x i8], ptr %i.s, i64 %i.avn
  %i.avq = getelementptr [8 x i8], ptr %i.avp, i64 %i.avo
  %i.avr = load double, ptr %i.avq, align 8, !tbaa !153 ; 2 uses
  %i.avs = load double, ptr %i.aum, align 8, !tbaa !153
  %i.avt = fneg double %i.avr
  %i.avu = call double @llvm.fmuladd.f64(double %i.avt, double %i.avs, double %i.avl)
  %i.avv = load double, ptr %i.aup, align 8, !tbaa !153 ; 2 uses
  %i.avw = getelementptr [8 x i8], ptr %i.p, i64 %i.avn
  %i.avx = getelementptr [8 x i8], ptr %i.avw, i64 %i.avg
  %i.avy = load double, ptr %i.avx, align 8, !tbaa !153
  %i.avz = fneg double %i.avv
  %i.awa = call double @llvm.fmuladd.f64(double %i.avz, double %i.avy, double %i.avu)
  %i.awb = load double, ptr %i.ats, align 8, !tbaa !153
  %i.awc = fmul double %i.avr, %i.awb
  %i.awd = call double @llvm.fmuladd.f64(double %i.awc, double %i.avv, double %i.awa)
  store double %i.awd, ptr %i.avk, align 8, !tbaa !153
  %indvars.iv.next3590 = add nsw i64 %indvars.iv3589, 1 ; 3 uses
  %i.awe = mul nsw i64 %indvars.iv.next3590, %i.bb ; 2 uses
  %i.awf = sub i64 %indvars.iv3599, %indvars.iv3589
  %sext.1 = shl i64 %i.awf, 32
  %i.awg = ashr exact i64 %sext.1, 29
  %i.awh = getelementptr i8, ptr %i.p, i64 %i.awg
  %i.awi = getelementptr [8 x i8], ptr %i.awh, i64 %i.awe ; 2 uses
  %i.awj = load double, ptr %i.awi, align 8, !tbaa !153
  %i.awk = sub nsw i64 %i.atw, %indvars.iv.next3590
  %i.awl = add nuw nsw i64 %i.awk, 1              ; 2 uses
  %i.awm = mul nsw i64 %indvars.iv.next3590, %i.bc
  %i.awn = getelementptr [8 x i8], ptr %i.s, i64 %i.awl
  %i.awo = getelementptr [8 x i8], ptr %i.awn, i64 %i.awm
  %i.awp = load double, ptr %i.awo, align 8, !tbaa !153 ; 2 uses
  %i.awq = load double, ptr %i.aum, align 8, !tbaa !153
  %i.awr = fneg double %i.awp
  %i.aws = call double @llvm.fmuladd.f64(double %i.awr, double %i.awq, double %i.awj)
  %i.awt = load double, ptr %i.aup, align 8, !tbaa !153 ; 2 uses
  %i.awu = getelementptr [8 x i8], ptr %i.p, i64 %i.awl
  %i.awv = getelementptr [8 x i8], ptr %i.awu, i64 %i.awe
  %i.aww = load double, ptr %i.awv, align 8, !tbaa !153
  %i.awx = fneg double %i.awt
  %i.awy = call double @llvm.fmuladd.f64(double %i.awx, double %i.aww, double %i.aws)
  %i.awz = load double, ptr %i.ats, align 8, !tbaa !153
  %i.axa = fmul double %i.awp, %i.awz
  %i.axb = call double @llvm.fmuladd.f64(double %i.axa, double %i.awt, double %i.awy)
  store double %i.axb, ptr %i.awi, align 8, !tbaa !153
  %indvars.iv.next3590.1 = add nsw i64 %indvars.iv3589, 2 ; 2 uses
  %lftr.wideiv3594.1 = trunc i64 %indvars.iv.next3590.1 to i32
  %exitcond3595.not.1 = icmp eq i32 %indvars.iv3592, %lftr.wideiv3594.1
  br i1 %exitcond3595.not.1, label %._crit_edge3015, label %.lr.ph3014.new, !llvm.loop !56

._crit_edge3015:                                  ; preds = %.lr.ph3014.new, %.prol.loopexit4698
  br i1 %.not26743017, label %._crit_edge3015.._crit_edge3022_crit_edge, label %.lr.ph3021

._crit_edge3015.._crit_edge3022_crit_edge:        ; preds = %._crit_edge3015
  %.pre3972 = add nsw i64 %indvars.iv3599, 1
  br label %._crit_edge3022

.lr.ph3021:                                       ; preds = %._crit_edge3015
  %i.axc = mul nsw i64 %indvars.iv3599, %i.bc
  %i.axd = trunc nsw i64 %indvars.iv3599 to i32
  %i.axe = sub i32 %.02605.ph, %i.axd
  %i.axf = sext i32 %i.axe to i64
  %i.axg = getelementptr [8 x i8], ptr %i.s, i64 %i.axc
  %i.axh = getelementptr [8 x i8], ptr %i.axg, i64 %i.axf
  %i.axi = add nsw i64 %indvars.iv3599, 1         ; 2 uses
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph3021, %bb.bo
  %indvars.iv3596 = phi i64 [ %i.aty, %.lr.ph3021 ], [ %indvars.iv.next3597, %bb.bo ] ; 5 uses
  %i.axj = load double, ptr %i.axh, align 8, !tbaa !153
  %i.axk = mul nsw i64 %indvars.iv3596, %i.bb     ; 2 uses
  %i.axl = trunc nuw nsw i64 %indvars.iv3596 to i32
  %i.axm = sub i32 %.02605.ph, %i.axl
  %i.axn = sext i32 %i.axm to i64
  %i.axo = getelementptr [8 x i8], ptr %i.p, i64 %i.axk
  %i.axp = getelementptr [8 x i8], ptr %i.axo, i64 %i.axn
  %i.axq = load double, ptr %i.axp, align 8, !tbaa !153
  %i.axr = sub i64 %i.axi, %indvars.iv3596
  %sext4090 = shl i64 %i.axr, 32
  %i.axs = ashr exact i64 %sext4090, 29
  %i.axt = getelementptr i8, ptr %i.p, i64 %i.axs
  %i.axu = getelementptr [8 x i8], ptr %i.axt, i64 %i.axk ; 2 uses
  %i.axv = load double, ptr %i.axu, align 8, !tbaa !153
  %i.axw = fneg double %i.axj
  %i.axx = call double @llvm.fmuladd.f64(double %i.axw, double %i.axq, double %i.axv)
  store double %i.axx, ptr %i.axu, align 8, !tbaa !153
  %indvars.iv.next3597 = add nuw nsw i64 %indvars.iv3596, 1
  %.not2674.not = icmp samesign ult i64 %indvars.iv3596, %i.atz
  br i1 %.not2674.not, label %bb.bo, label %._crit_edge3022, !llvm.loop !57

._crit_edge3022:                                  ; preds = %bb.bo, %._crit_edge3015.._crit_edge3022_crit_edge
  %indvars.iv.next3600.pre-phi = phi i64 [ %.pre3972, %._crit_edge3015.._crit_edge3022_crit_edge ], [ %i.axi, %bb.bo ] ; 2 uses
  %lftr.wideiv3602.pre-phi = trunc i64 %indvars.iv.next3600.pre-phi to i32
  %indvars.iv.next3593 = add i32 %indvars.iv3592, 1
  %exitcond3603.not = icmp eq i32 %i.br, %lftr.wideiv3602.pre-phi
  %indvar.next4700 = add i32 %indvar4699, 1
  br i1 %exitcond3603.not, label %._crit_edge3027, label %.lr.ph3014, !llvm.loop !58

._crit_edge3027:                                  ; preds = %._crit_edge3022
  store i32 1, ptr %i.b, align 4, !tbaa !151
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge3027, %._crit_edge3010
  br i1 %.not26533001, label %bb.bs, label %.lr.ph3038

.lr.ph3038:                                       ; preds = %bb.bp
  store i32 %i.bw, ptr %i.b, align 4, !tbaa !151
  store i32 %i.bs, ptr %i.c, align 4, !tbaa !151
  %i.axy = mul nsw i32 %i.br, %i.n
  %reass.sub3503 = sub i32 %i.axy, %.02605.ph
  %i.axz = add i32 %reass.sub3503, 2
  %i.aya = sext i32 %i.bs to i64
  %i.ayb = zext i32 %i.br to i64
  %i.ayc = add i32 %i.bv, 1
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph3038, %._crit_edge3034
  %indvars.iv3609 = phi i64 [ %i.ayb, %.lr.ph3038 ], [ %indvars.iv.next3610, %._crit_edge3034 ] ; 4 uses
  %indvars.iv3604 = phi i32 [ %i.arv, %.lr.ph3038 ], [ %indvars.iv.next3605, %._crit_edge3034 ] ; 2 uses
  %i.ayd = trunc i64 %indvars.iv3609 to i32
  %i.aye = sub i32 %i.ayd, %.pre3791              ; 2 uses
  %i.ayf = call i32 @llvm.smax.i32(i32 %i.aye, i32 %i.bw)
  %.not26713029 = icmp sgt i32 %i.ayf, %i.bs
  br i1 %.not26713029, label %._crit_edge3034, label %.lr.ph3033

.lr.ph3033:                                       ; preds = %bb.bq
  %i.ayg = call i32 @llvm.smax.i32(i32 %indvars.iv3604, i32 %i.bw)
  %smax3606 = sext i32 %i.ayg to i64
  %i.ayh = trunc i64 %indvars.iv3609 to i32
  %i.ayi = add i32 %i.axz, %i.ayh
  %i.ayj = sext i32 %i.ayi to i64
  %i.ayk = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ayj
  %i.ayl = add i64 %indvars.iv3609, 1
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph3033, %bb.br
  %indvars.iv3607 = phi i64 [ %smax3606, %.lr.ph3033 ], [ %indvars.iv.next3608, %bb.br ] ; 6 uses
  %i.aym = mul nsw i64 %indvars.iv3607, %i.bc
  %i.ayn = trunc nsw i64 %indvars.iv3607 to i32
  %i.ayo = sub i32 %.02605.ph, %i.ayn
  %i.ayp = sext i32 %i.ayo to i64
  %i.ayq = getelementptr [8 x i8], ptr %i.s, i64 %i.aym
  %i.ayr = getelementptr [8 x i8], ptr %i.ayq, i64 %i.ayp
  %i.ays = load double, ptr %i.ayr, align 8, !tbaa !153
  %i.ayt = load double, ptr %i.ayk, align 8, !tbaa !153
  %i.ayu = mul nsw i64 %indvars.iv3607, %i.bb
  %i.ayv = sub i64 %i.ayl, %indvars.iv3607
  %sext4091 = shl i64 %i.ayv, 32
  %i.ayw = ashr exact i64 %sext4091, 29
  %i.ayx = getelementptr i8, ptr %i.p, i64 %i.ayw
  %i.ayy = getelementptr [8 x i8], ptr %i.ayx, i64 %i.ayu ; 2 uses
  %i.ayz = load double, ptr %i.ayy, align 8, !tbaa !153
  %i.aza = fneg double %i.ays
  %i.azb = call double @llvm.fmuladd.f64(double %i.aza, double %i.ayt, double %i.ayz)
  store double %i.azb, ptr %i.ayy, align 8, !tbaa !153
  %indvars.iv.next3608 = add nsw i64 %indvars.iv3607, 1
  %.not2671.not = icmp slt i64 %indvars.iv3607, %i.aya
  br i1 %.not2671.not, label %bb.br, label %._crit_edge3034, !llvm.loop !59

._crit_edge3034:                                  ; preds = %bb.br, %bb.bq
  %indvars.iv.next3610 = add i64 %indvars.iv3609, 1 ; 2 uses
  %indvars.iv.next3605 = add i32 %indvars.iv3604, 1
  %lftr.wideiv3612 = trunc i64 %indvars.iv.next3610 to i32
  %exitcond3613.not = icmp eq i32 %i.ayc, %lftr.wideiv3612
  br i1 %exitcond3613.not, label %._crit_edge3039, label %bb.bq, !llvm.loop !60

._crit_edge3039:                                  ; preds = %._crit_edge3034
  store i32 %i.aye, ptr %i.a, align 4, !tbaa !151
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge3039, %bb.bp
  br i1 %.not, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.azc = sub nsw i32 %.pre3792, %i.ay
  store i32 %i.azc, ptr %i.d, align 4, !tbaa !151
  %i.azd = fdiv double 1.000000e+00, %i.apj
  store double %i.azd, ptr %i.e, align 8, !tbaa !153
  %i.aze = mul nsw i32 %i.br, %i.t
  %i.azf = add nsw i32 %i.aze, %i.ba
  %i.azg = sext i32 %i.azf to i64
  %i.azh = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.azg ; 2 uses
  call void @dscal_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.azh, ptr noundef nonnull @c__1) #4
  %i.azi = load i32, ptr %i.l, align 4, !tbaa !151 ; 3 uses
  %i.azj = icmp sgt i32 %i.azi, 0
  br i1 %i.azj, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.azk = load i32, ptr %2, align 4, !tbaa !151
  %i.azl = sub nsw i32 %i.azk, %i.ay
  store i32 %i.azl, ptr %i.d, align 4, !tbaa !151
  %i.azm = load i32, ptr %8, align 4, !tbaa !151
  %i.azn = add nsw i32 %i.azm, -1
  store i32 %i.azn, ptr %i.c, align 4, !tbaa !151
  %i.azo = add nuw nsw i32 %i.azi, 1
  %i.azp = sub nsw i32 %i.br, %i.azi              ; 2 uses
  %i.azq = mul nsw i32 %i.azp, %i.q
  %i.azr = add nsw i32 %i.azo, %i.azq
  %i.azs = sext i32 %i.azr to i64
  %i.azt = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.azs
  %i.azu = mul nsw i32 %i.azp, %i.t
  %i.azv = add nsw i32 %i.azu, %i.ba
  %i.azw = sext i32 %i.azv to i64
  %i.azx = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.azw
  call void @dger_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.l, ptr noundef nonnull @c_b20, ptr noundef %i.azh, ptr noundef nonnull @c__1, ptr noundef %i.azt, ptr noundef nonnull %i.c, ptr noundef %i.azx, ptr noundef nonnull %10) #4
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu, %bb.bs
  %i.azy = mul nsw i32 %i.br, %i.n
  %reass.sub3504 = sub i32 %i.azy, %.02605.ph
  %i.azz = add i32 %reass.sub3504, 2
  %i.baa = add i32 %i.azz, %i.bv
  %i.bab = sext i32 %i.baa to i64
  %i.bac = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bab
  %i.bad = load double, ptr %i.bac, align 8, !tbaa !153
  store double %i.bad, ptr %i.k, align 8, !tbaa !153
  %.pre3877 = load i32, ptr %4, align 4, !tbaa !151
  br label %bb.bw

bb.bw:                                            ; preds = %bb.r, %bb.bv
  %i.bae = phi i32 [ %.pre3877, %bb.bv ], [ %i.bq, %bb.r ] ; 2 uses
  %.025322918 = phi i32 [ 1, %bb.bv ], [ 0, %bb.r ] ; 7 uses
  %.not26472912 = phi i1 [ false, %bb.bv ], [ true, %bb.r ] ; 5 uses
  %.1260627742809 = phi i32 [ %i.br, %bb.bv ], [ %i.cb, %bb.r ] ; 18 uses
  %.1254827772807 = phi i32 [ %i.bs, %bb.bv ], [ %.02547.lcssa, %bb.r ] ; 11 uses
  %.1254327802805 = phi i32 [ %i.bv, %bb.bv ], [ %.02542.lcssa, %bb.r ] ; 7 uses
  %.1253927832803 = phi i32 [ %i.by, %bb.bv ], [ %.02538.lcssa, %bb.r ] ; 8 uses
  %i.baf = add nsw i32 %i.bae, -1
  store i32 %i.baf, ptr %i.d, align 4, !tbaa !151
  %.not26573147 = icmp slt i32 %i.bae, 2
  br i1 %.not26573147, label %._crit_edge3152, label %.lr.ph3151

.lr.ph3151:                                       ; preds = %bb.bw
  %i.bag = mul nsw i32 %.1260627742809, %i.n
  %i.bah = add i32 %.1260627742809, 1
  %i.bai = sext i32 %.1260627742809 to i64
  %i.baj = sext i32 %.1254827772807 to i64
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph3151, %.loopexit2881
  %indvars.iv3645 = phi i64 [ 1, %.lr.ph3151 ], [ %indvars.iv.next3646, %.loopexit2881 ] ; 7 uses
  %.82565.neg3149 = phi i32 [ -1, %.lr.ph3151 ], [ %i.bcw, %.loopexit2881 ] ; 3 uses
  br i1 %.not26472912, label %._crit_edge3878, label %bb.by

._crit_edge3878:                                  ; preds = %bb.bx
  %.pre3879 = load i32, ptr %i.j, align 4, !tbaa !151
  %.pre3881 = load i32, ptr %2, align 4, !tbaa !151
  %.pre3882 = load i32, ptr %3, align 4, !tbaa !151
  br label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.bak = sub nsw i64 %i.bai, %indvars.iv3645    ; 5 uses
  %i.bal = load i32, ptr %3, align 4, !tbaa !151  ; 3 uses
  %i.bam = trunc nsw i64 %i.bak to i32            ; 2 uses
  %i.ban = add nsw i32 %i.bal, %i.bam             ; 2 uses
  %i.bao = load i32, ptr %2, align 4, !tbaa !151  ; 3 uses
  %i.bap = icmp slt i32 %i.ban, %i.bao
  %i.baq = icmp sgt i64 %i.bak, 1
  %or.cond2759 = and i1 %i.baq, %i.bap
  %.pre3880 = load i32, ptr %i.j, align 4, !tbaa !151 ; 2 uses
  br i1 %or.cond2759, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.bar = add i32 %.82565.neg3149, %i.bag
  %i.bas = add i32 %i.bar, %.pre3880
  %i.bat = sext i32 %i.bas to i64
  %i.bau = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bat
  %i.bav = trunc nuw nsw i64 %indvars.iv3645 to i32
  %i.baw = add i32 %i.ay, %i.bav
  %i.bax = sub i32 %.1260627742809, %i.baw        ; 2 uses
  %i.bay = add i32 %i.bax, %i.bal
  %i.baz = add i32 %i.bay, %i.bao
  %i.bba = sext i32 %i.baz to i64
  %i.bbb = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bba
  %i.bbc = sub nsw i32 %i.ban, %i.ay
  %i.bbd = sext i32 %i.bbc to i64
  %i.bbe = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bbd
  call void @dlartg_(ptr noundef %i.bau, ptr noundef nonnull %i.k, ptr noundef nonnull %i.bbb, ptr noundef nonnull %i.bbe, ptr noundef nonnull %i.g) #4
  %i.bbf = mul nsw i64 %i.bak, %i.bc
  %i.bbg = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv3645
  %i.bbh = getelementptr i8, ptr %i.bbg, i64 8
  %i.bbi = getelementptr [8 x i8], ptr %i.bbh, i64 %i.bbf
  %i.bbj = load double, ptr %i.bbi, align 8, !tbaa !153
  %i.bbk = fneg double %i.bbj
  %i.bbl = load double, ptr %i.k, align 8, !tbaa !153
  %i.bbm = fmul double %i.bbl, %i.bbk             ; 2 uses
  %i.bbn = load i32, ptr %2, align 4, !tbaa !151  ; 2 uses
  %i.bbo = load i32, ptr %3, align 4, !tbaa !151  ; 3 uses
  %i.bbp = add i32 %i.bax, %i.bbn
  %i.bbq = add i32 %i.bbp, %i.bbo
  %i.bbr = sext i32 %i.bbq to i64
  %i.bbs = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bbr ; 2 uses
  %i.bbt = load double, ptr %i.bbs, align 8, !tbaa !153
  %i.bbu = sub i32 %i.bam, %i.ay
  %i.bbv = add i32 %i.bbu, %i.bbo
end_hunk_0
