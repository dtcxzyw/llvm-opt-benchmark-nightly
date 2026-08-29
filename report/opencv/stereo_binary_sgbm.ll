Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereo_binary_sgbm?download=true
inline.NumInlined: 265
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN2cv6stereo20StereoBinarySGBMImpl7computeERKNS_11_InputArrayES4_RKNS_12_OutputArrayE:bb.a
  store i16 %i.jv, ptr %i.aom, align 2, !tbaa !96
  %i.aon = getelementptr inbounds nuw [2 x i8], ptr %i.pd, i64 %indvars.iv.next400.i
  store i16 %i.jv, ptr %i.aon, align 2, !tbaa !96
  %i.aoo = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %indvars.iv.next400.i
  store i16 32767, ptr %i.aoo, align 2, !tbaa !96
  %indvars.iv.next400.i.1 = add nuw nsw i64 %indvars.iv399.i, 2 ; 2 uses
  %exitcond403.not.i.1 = icmp eq i64 %indvars.iv.next400.i.1, %wide.trip.count351.i
  br i1 %exitcond403.not.i.1, label %.preheader224.i.loopexit, label %.lr.ph286.i, !llvm.loop !187

.lr.ph308.i:                                      ; preds = %.preheader224.i.loopexit, %.loopexit.i
  %indvars.iv419.i = phi i64 [ %indvars.iv.next420.i, %.loopexit.i ], [ %i.kd, %.preheader224.i.loopexit ] ; 2 uses
  %indvars.iv.next420.i = add nsw i64 %indvars.iv419.i, -1 ; 6 uses
  %i.aop = mul nsw i64 %indvars.iv.next420.i, %i.jd ; 2 uses
  %i.aoq = getelementptr inbounds [2 x i8], ptr %i.ph, i64 %i.aop ; 8 uses
  br i1 %.not642.i, label %.preheader215.i, label %bb.br

.preheader215.i:                                  ; preds = %.lr.ph308.i
  br i1 %i.ju, label %.lr.ph300.i.preheader, label %.thread.i104

.lr.ph300.i.preheader:                            ; preds = %.preheader215.i
  %i.aor = xor i1 %i.nn, true
  call void @llvm.assume(i1 %i.aor)
  br label %.lr.ph300.i

.thread.i104:                                     ; preds = %.preheader215.i
  %i.aos = add nsw i64 %indvars.iv.next420.i, %i.ke
  br label %bb.cf

bb.br:                                            ; preds = %.lr.ph308.i
  %i.aot = shl nsw i64 %indvars.iv.next420.i, 3   ; 2 uses
  %i.aou = mul nsw i64 %i.aot, %i.gj
  %i.aov = getelementptr inbounds nuw [2 x i8], ptr %i.oy, i64 %i.aot ; 3 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 16
  %i.aox = load i16, ptr %i.aow, align 2, !tbaa !96
  %i.aoy = sext i16 %i.aox to i32
  %i.aoz = add nsw i32 %.sroa.speculated173.i, %i.aoy ; 2 uses
  %i.apa = getelementptr inbounds [2 x i8], ptr %i.ox, i64 %i.aou ; 2 uses
  %i.apb = getelementptr inbounds [2 x i8], ptr %i.apa, i64 %i.iu ; 4 uses
  %i.apc = getelementptr inbounds [2 x i8], ptr %i.apb, i64 %i.jd
  store i16 32767, ptr %i.apc, align 2, !tbaa !96
  %i.apd = getelementptr inbounds i8, ptr %i.apb, i64 -2
  store i16 32767, ptr %i.apd, align 2, !tbaa !96
  %i.ape = getelementptr inbounds [2 x i8], ptr %i.pg, i64 %i.aop
  br i1 %i.ju, label %.lr.ph292.i, label %.thread

.lr.ph292.i:                                      ; preds = %bb.br, %.lr.ph292.i
  %indvars.iv404.i = phi i64 [ %indvars.iv.next405.i, %.lr.ph292.i ], [ 0, %bb.br ] ; 6 uses
  %.0568290.i = phi i32 [ %spec.select649.i, %.lr.ph292.i ], [ -1, %bb.br ]
  %.0569289.i = phi i32 [ %spec.select648.i, %.lr.ph292.i ], [ 32767, %bb.br ] ; 2 uses
  %.0185287.i = phi i32 [ %.sroa.speculated12.i, %.lr.ph292.i ], [ 32767, %bb.br ]
  %i.apf = getelementptr inbounds nuw [2 x i8], ptr %i.ape, i64 %indvars.iv404.i
  %i.apg = load i16, ptr %i.apf, align 2, !tbaa !96
  %i.aph = sext i16 %i.apg to i32
  %i.api = getelementptr inbounds nuw [2 x i8], ptr %i.apb, i64 %indvars.iv404.i ; 2 uses
  %i.apj = load i16, ptr %i.api, align 2, !tbaa !96
  %i.apk = sext i16 %i.apj to i32
  %i.apl = getelementptr i8, ptr %i.api, i64 -2
  %i.apm = load i16, ptr %i.apl, align 2, !tbaa !96
  %i.apn = sext i16 %i.apm to i32
  %i.apo = add nsw i32 %i.et, %i.apn
  %indvars.iv.next405.i = add nuw nsw i64 %indvars.iv404.i, 1 ; 3 uses
  %i.app = getelementptr inbounds nuw [2 x i8], ptr %i.apb, i64 %indvars.iv.next405.i
  %i.apq = load i16, ptr %i.app, align 2, !tbaa !96
  %i.apr = sext i16 %i.apq to i32
  %i.aps = add nsw i32 %i.et, %i.apr
  %i.apt = call i32 @llvm.smin.i32(i32 %i.aoz, i32 %i.aps)
  %i.apu = call i32 @llvm.smin.i32(i32 %i.apt, i32 %i.apo)
  %.sroa.speculated6.i = call i32 @llvm.smin.i32(i32 %i.apu, i32 %i.apk)
  %i.apv = sub i32 %i.aph, %i.aoz
  %i.apw = add i32 %.sroa.speculated6.i, %i.apv   ; 3 uses
  %i.apx = trunc i32 %i.apw to i16
  %i.apy = getelementptr inbounds nuw [2 x i8], ptr %i.apa, i64 %indvars.iv404.i
  store i16 %i.apx, ptr %i.apy, align 2, !tbaa !96
  %.sroa.speculated12.i = call i32 @llvm.smin.i32(i32 %i.apw, i32 %.0185287.i) ; 2 uses
  %i.apz = getelementptr inbounds nuw [2 x i8], ptr %i.aoq, i64 %indvars.iv404.i ; 2 uses
  %i.aqa = load i16, ptr %i.apz, align 2, !tbaa !96
  %i.aqb = sext i16 %i.aqa to i32
  %i.aqc = add nsw i32 %i.apw, %i.aqb
  %i.aqd = call i32 @llvm.smax.i32(i32 %i.aqc, i32 -32768)
  %i.aqe = call i32 @llvm.smin.i32(i32 %i.aqd, i32 32767) ; 3 uses
  %i.aqf = trunc nsw i32 %i.aqe to i16
  store i16 %i.aqf, ptr %i.apz, align 2, !tbaa !96
  %i.aqg = icmp sgt i32 %.0569289.i, %i.aqe
  %spec.select648.i = call i32 @llvm.smin.i32(i32 %.0569289.i, i32 %i.aqe) ; 2 uses
  %i.aqh = trunc nuw nsw i64 %indvars.iv404.i to i32
  %spec.select649.i = select i1 %i.aqg, i32 %i.aqh, i32 %.0568290.i ; 2 uses
  %exitcond408.not.i = icmp eq i64 %indvars.iv.next405.i, %i.jz
  br i1 %exitcond408.not.i, label %.loopexit216.thread474.i, label %.lr.ph292.i, !llvm.loop !188

.loopexit216.thread474.i:                         ; preds = %.lr.ph292.i
  %i.aqi = trunc i32 %.sroa.speculated12.i to i16
  store i16 %i.aqi, ptr %i.aov, align 2, !tbaa !96
  br label %.lr.ph305.i

.lr.ph300.i:                                      ; preds = %.lr.ph300.i.preheader, %.lr.ph300.i
  %indvars.iv409.i = phi i64 [ %indvars.iv.next410.i.3, %.lr.ph300.i ], [ 0, %.lr.ph300.i.preheader ] ; 6 uses
  %.2299.i = phi i32 [ %spec.select651.i.3, %.lr.ph300.i ], [ -1, %.lr.ph300.i.preheader ]
  %.2571298.i = phi i32 [ %spec.select650.i.3, %.lr.ph300.i ], [ 32767, %.lr.ph300.i.preheader ] ; 2 uses
  %niter864 = phi i64 [ %niter864.next.3, %.lr.ph300.i ], [ 0, %.lr.ph300.i.preheader ]
  %i.aqj = getelementptr inbounds nuw [2 x i8], ptr %i.aoq, i64 %indvars.iv409.i
  %i.aqk = load i16, ptr %i.aqj, align 2, !tbaa !96
  %i.aql = sext i16 %i.aqk to i32                 ; 2 uses
  %i.aqm = icmp sgt i32 %.2571298.i, %i.aql
  %spec.select650.i = call i32 @llvm.smin.i32(i32 %.2571298.i, i32 %i.aql) ; 2 uses
  %i.aqn = trunc nuw nsw i64 %indvars.iv409.i to i32
  %spec.select651.i = select i1 %i.aqm, i32 %i.aqn, i32 %.2299.i
  %indvars.iv.next410.i = or disjoint i64 %indvars.iv409.i, 1 ; 2 uses
  %i.aqo = getelementptr inbounds nuw [2 x i8], ptr %i.aoq, i64 %indvars.iv.next410.i
  %i.aqp = load i16, ptr %i.aqo, align 2, !tbaa !96
  %i.aqq = sext i16 %i.aqp to i32                 ; 2 uses
  %i.aqr = icmp sgt i32 %spec.select650.i, %i.aqq
  %spec.select650.i.1 = call i32 @llvm.smin.i32(i32 %spec.select650.i, i32 %i.aqq) ; 2 uses
  %i.aqs = trunc nuw nsw i64 %indvars.iv.next410.i to i32
  %spec.select651.i.1 = select i1 %i.aqr, i32 %i.aqs, i32 %spec.select651.i
  %indvars.iv.next410.i.1 = or disjoint i64 %indvars.iv409.i, 2 ; 2 uses
  %i.aqt = getelementptr inbounds nuw [2 x i8], ptr %i.aoq, i64 %indvars.iv.next410.i.1
  %i.aqu = load i16, ptr %i.aqt, align 2, !tbaa !96
  %i.aqv = sext i16 %i.aqu to i32                 ; 2 uses
  %i.aqw = icmp sgt i32 %spec.select650.i.1, %i.aqv
  %spec.select650.i.2 = call i32 @llvm.smin.i32(i32 %spec.select650.i.1, i32 %i.aqv) ; 2 uses
  %i.aqx = trunc nuw nsw i64 %indvars.iv.next410.i.1 to i32
  %spec.select651.i.2 = select i1 %i.aqw, i32 %i.aqx, i32 %spec.select651.i.1
  %indvars.iv.next410.i.2 = or disjoint i64 %indvars.iv409.i, 3 ; 2 uses
  %i.aqy = getelementptr inbounds nuw [2 x i8], ptr %i.aoq, i64 %indvars.iv.next410.i.2
  %i.aqz = load i16, ptr %i.aqy, align 2, !tbaa !96
  %i.ara = sext i16 %i.aqz to i32                 ; 2 uses
  %i.arb = icmp sgt i32 %spec.select650.i.2, %i.ara
  %spec.select650.i.3 = call i32 @llvm.smin.i32(i32 %spec.select650.i.2, i32 %i.ara) ; 2 uses
  %i.arc = trunc nuw nsw i64 %indvars.iv.next410.i.2 to i32
  %spec.select651.i.3 = select i1 %i.arb, i32 %i.arc, i32 %spec.select651.i.2 ; 2 uses
  %indvars.iv.next410.i.3 = add nuw nsw i64 %indvars.iv409.i, 4
  %niter864.next.3 = add i64 %niter864, 4         ; 2 uses
  %niter864.ncmp.3 = icmp eq i64 %niter864.next.3, %i.jz
  br i1 %niter864.ncmp.3, label %.lr.ph305.i, label %.lr.ph300.i, !llvm.loop !189

.thread:                                          ; preds = %bb.br
  store i16 32767, ptr %i.aov, align 2, !tbaa !96
  %i.ard = add nsw i64 %indvars.iv.next420.i, %i.ke
  br label %bb.cf

.lr.ph305.i:                                      ; preds = %.lr.ph300.i, %.loopexit216.thread474.i
  %.4470.i = phi i32 [ %spec.select649.i, %.loopexit216.thread474.i ], [ %spec.select651.i.3, %.lr.ph300.i ] ; 12 uses
  %.4573467.i = phi i32 [ %spec.select648.i, %.loopexit216.thread474.i ], [ %spec.select650.i.3, %.lr.ph300.i ] ; 3 uses
  %i.are = mul nsw i32 %.4573467.i, 100
  %i.arf = add i32 %.4470.i, -2
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %.lr.ph305.i
  %indvars.iv414.i = phi i64 [ 0, %.lr.ph305.i ], [ %indvars.iv.next415.i, %bb.bt ] ; 3 uses
  %i.arg = getelementptr inbounds nuw [2 x i8], ptr %i.aoq, i64 %indvars.iv414.i
  %i.arh = load i16, ptr %i.arg, align 2, !tbaa !96
  %i.ari = sext i16 %i.arh to i32
  %i.arj = mul nsw i32 %i.em, %i.ari
  %i.ark = icmp slt i32 %i.arj, %i.are
  %indvars416.i = trunc i64 %indvars.iv414.i to i32
  %i.arl = sub i32 %i.arf, %indvars416.i
  %i.arm = icmp ult i32 %i.arl, -3
  %or.cond501.i = select i1 %i.ark, i1 %i.arm, i1 false
  br i1 %or.cond501.i, label %.loopexit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %indvars.iv.next415.i = add nuw nsw i64 %indvars.iv414.i, 1 ; 2 uses
  %exitcond418.not.i = icmp eq i64 %indvars.iv.next415.i, %i.jz
  br i1 %exitcond418.not.i, label %.critedge.i, label %bb.bs, !llvm.loop !190

.critedge.i:                                      ; preds = %bb.bt
  %i.arn = add nsw i64 %indvars.iv.next420.i, %i.ke ; 7 uses
  %i.aro = add i32 %.4470.i, %i.ed                ; 2 uses
  %i.arp = trunc nsw i64 %i.arn to i32
  %i.arq = sub i32 %i.arp, %i.aro
  %i.arr = sext i32 %i.arq to i64                 ; 2 uses
  %i.ars = getelementptr inbounds [2 x i8], ptr %i.il, i64 %i.arr ; 2 uses
  %i.art = load i16, ptr %i.ars, align 2, !tbaa !96
  %i.aru = sext i16 %i.art to i32
  %i.arv = icmp slt i32 %.4573467.i, %i.aru
  br i1 %i.arv, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.critedge.i
  %i.arw = trunc nsw i32 %.4573467.i to i16
  store i16 %i.arw, ptr %i.ars, align 2, !tbaa !96
  %i.arx = trunc i32 %i.aro to i16
  %i.ary = getelementptr inbounds [2 x i8], ptr %i.im, i64 %i.arr
  store i16 %i.arx, ptr %i.ary, align 2, !tbaa !96
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.critedge.i
  %i.arz = icmp sgt i32 %.4470.i, 0
  %i.asa = icmp slt i32 %.4470.i, %i.jx
  %or.cond.i = select i1 %i.arz, i1 %i.asa, i1 false
  br i1 %or.cond.i, label %bb.bw, label %bb.cf

bb.bw:                                            ; preds = %bb.bv
  %i.asb = load i32, ptr %i.jy, align 4, !tbaa !191
  switch i32 %i.asb, label %bb.cg [
    i32 1, label %bb.bx
    i32 0, label %bb.ce
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.asc = zext nneg i32 %.4470.i to i64
  %i.asd = getelementptr [2 x i8], ptr %i.aoq, i64 %i.asc ; 2 uses
  %i.ase = getelementptr i8, ptr %i.asd, i64 -2
  %i.asf = load i16, ptr %i.ase, align 2, !tbaa !96
  %i.asg = sitofp i16 %i.asf to double            ; 2 uses
  %i.ash = load <2 x i16>, ptr %i.asd, align 2, !tbaa !96
  %i.asi = sitofp <2 x i16> %i.ash to <2 x double> ; 2 uses
  %i.asj = extractelement <2 x double> %i.asi, i64 0 ; 2 uses
  %i.ask = fsub double %i.asg, %i.asj             ; 7 uses
  %29 = extractelement <2 x double> %i.asi, i64 1 ; 2 uses
  %30 = fsub double %29, %i.asj                   ; 7 uses
  %i.asl = fcmp oeq double %i.ask, 0.000000e+00
  %i.asm = fcmp oeq double %30, 0.000000e+00
  %or.cond3.i = select i1 %i.asl, i1 true, i1 %i.asm
  br i1 %or.cond3.i, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %31 = fcmp olt double %29, %i.asg
  br i1 %31, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %32 = fmul nnan double %30, %30
  %i.asn = fmul nnan double %i.ask, %i.ask
  %i.aso = fdiv double %32, %i.asn
  %i.asp = fdiv double %30, %i.ask
  %i.asq = fadd double %i.asp, %i.aso
  %i.asr = call double @llvm.fmuladd.f64(double %i.asq, double -2.500000e-01, double 5.000000e-01)
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.ass = fmul nnan double %i.ask, %i.ask
  %33 = fmul nnan double %30, %30
  %i.ast = fdiv double %i.ass, %33
  %i.asu = fdiv double %i.ask, %30
  %i.asv = fadd double %i.asu, %i.ast
  %i.asw = call double @llvm.fmuladd.f64(double %i.asv, double -2.500000e-01, double 5.000000e-01)
  %i.asx = fneg double %i.asw
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.0.i = phi double [ %i.asr, %bb.bz ], [ %i.asx, %bb.ca ] ; 2 uses
  %i.asy = call double @llvm.fabs.f64(double %.0.i)
  %or.cond5.i = fcmp ugt double %i.asy, 5.000000e-01
  br i1 %or.cond5.i, label %bb.cg, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.asz = shl nsw i32 %.4470.i, 4
  %i.ata = uitofp nneg i32 %i.asz to double
  %i.atb = call double @llvm.fmuladd.f64(double %.0.i, double 1.600000e+01, double %i.ata)
  %i.atc = fptosi double %i.atb to i32
  br label %bb.cg

bb.cd:                                            ; preds = %bb.bx
  %i.atd = shl nsw i32 %.4470.i, 4
  br label %bb.cg

bb.ce:                                            ; preds = %bb.bw
  %i.ate = zext nneg i32 %.4470.i to i64
  %i.atf = getelementptr [2 x i8], ptr %i.aoq, i64 %i.ate ; 3 uses
  %i.atg = getelementptr i8, ptr %i.atf, i64 -2
  %i.ath = load i16, ptr %i.atg, align 2, !tbaa !96
  %i.ati = sext i16 %i.ath to i32                 ; 2 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %i.atf, i64 2
  %i.atk = load i16, ptr %i.atj, align 2, !tbaa !96
  %i.atl = sext i16 %i.atk to i32                 ; 2 uses
  %i.atm = add nsw i32 %i.atl, %i.ati
  %i.atn = load i16, ptr %i.atf, align 2, !tbaa !96
  %i.ato = sext i16 %i.atn to i32
  %i.atp = shl nsw i32 %i.ato, 1
  %i.atq = sub nsw i32 %i.atm, %i.atp
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.atq, i32 1) ; 2 uses
  %i.atr = shl nsw i32 %.4470.i, 4
  %i.ats = sub nsw i32 %i.ati, %i.atl
  %i.att = shl nsw i32 %i.ats, 4
  %i.atu = add nsw i32 %.sroa.speculated.i, %i.att
  %i.atv = shl nuw nsw i32 %.sroa.speculated.i, 1
  %i.atw = sdiv i32 %i.atu, %i.atv
  %i.atx = add nsw i32 %i.atw, %i.atr
  br label %bb.cg

bb.cf:                                            ; preds = %.thread, %bb.bv, %.thread.i104
  %.4469480483.i = phi i32 [ -1, %.thread.i104 ], [ %.4470.i, %bb.bv ], [ -1, %.thread ]
  %i.aty = phi i64 [ %i.aos, %.thread.i104 ], [ %i.arn, %bb.bv ], [ %i.ard, %.thread ]
  %i.atz = shl nsw i32 %.4469480483.i, 4
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.bw
  %i.aua = phi i64 [ %i.aty, %bb.cf ], [ %i.arn, %bb.ce ], [ %i.arn, %bb.bw ], [ %i.arn, %bb.cd ], [ %i.arn, %bb.cc ], [ %i.arn, %bb.cb ]
  %.9.i = phi i32 [ %i.atz, %bb.cf ], [ %i.atx, %bb.ce ], [ %.4470.i, %bb.bw ], [ %i.atd, %bb.cd ], [ %i.atc, %bb.cc ], [ %.4470.i, %bb.cb ]
  %i.aub = add nsw i32 %.9.i, %i.fg
  %i.auc = trunc i32 %i.aub to i16
  %i.aud = getelementptr inbounds [2 x i8], ptr %i.pd, i64 %i.aua
  store i16 %i.auc, ptr %i.aud, align 2, !tbaa !96
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bs, %bb.cg
  %i.aue = icmp sgt i64 %indvars.iv419.i, 1
  br i1 %i.aue, label %.lr.ph308.i, label %.lr.ph310.i.preheader, !llvm.loop !192

.lr.ph310.i.preheader:                            ; preds = %.loopexit.i, %.preheader224.i.loopexit
  br label %.lr.ph310.i

.lr.ph310.i:                                      ; preds = %.lr.ph310.i.preheader, %bb.cn
  %indvars.iv422.i = phi i64 [ %indvars.iv.next423.i, %bb.cn ], [ %i.ke, %.lr.ph310.i.preheader ] ; 3 uses
  %i.auf = getelementptr inbounds nuw [2 x i8], ptr %i.pd, i64 %indvars.iv422.i ; 2 uses
  %i.aug = load i16, ptr %i.auf, align 2, !tbaa !96
  %i.auh = sext i16 %i.aug to i32                 ; 3 uses
  %i.aui = icmp eq i32 %i.fh, %i.auh
  br i1 %i.aui, label %bb.cn, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph310.i
  %i.auj = ashr i32 %i.auh, 4                     ; 2 uses
  %i.auk = add nsw i32 %i.auh, 15
  %i.aul = ashr i32 %i.auk, 4                     ; 2 uses
  %i.aum = trunc nuw nsw i64 %indvars.iv422.i to i32 ; 2 uses
  %i.aun = sub nsw i32 %i.aum, %i.auj             ; 3 uses
  %i.auo = sub nsw i32 %i.aum, %i.aul             ; 3 uses
  %i.aup = icmp sgt i32 %i.aun, -1
  %i.auq = icmp slt i32 %i.aun, %i.fa
  %or.cond653.i = and i1 %i.aup, %i.auq
  br i1 %or.cond653.i, label %bb.ci, label %bb.cn

bb.ci:                                            ; preds = %bb.ch
  %i.aur = zext nneg i32 %i.aun to i64
  %i.aus = getelementptr inbounds nuw [2 x i8], ptr %i.im, i64 %i.aur
  %i.aut = load i16, ptr %i.aus, align 2, !tbaa !96
  %i.auu = sext i16 %i.aut to i32                 ; 2 uses
  %.not640.i = icmp sgt i32 %i.ed, %i.auu
  br i1 %.not640.i, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.auv = sub nsw i32 %i.auu, %i.auj
  %i.auw = call i32 @llvm.abs.i32(i32 %i.auv, i1 true)
  %i.aux = icmp samesign ugt i32 %i.auw, %i.ep
  %i.auy = icmp sgt i32 %i.auo, -1
  %i.auz = icmp slt i32 %i.auo, %i.fa
  %i.ava = and i1 %i.auy, %i.auz
  %or.cond654.i = select i1 %i.aux, i1 %i.ava, i1 false
  br i1 %or.cond654.i, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  %i.avb = zext nneg i32 %i.auo to i64
  %i.avc = getelementptr inbounds nuw [2 x i8], ptr %i.im, i64 %i.avb
  %i.avd = load i16, ptr %i.avc, align 2, !tbaa !96
  %i.ave = sext i16 %i.avd to i32                 ; 2 uses
  %.not641.i = icmp sgt i32 %i.ed, %i.ave
  br i1 %.not641.i, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.avf = sub nsw i32 %i.ave, %i.aul
  %i.avg = call i32 @llvm.abs.i32(i32 %i.avf, i1 true)
  %i.avh = icmp samesign ugt i32 %i.avg, %i.ep
  br i1 %i.avh, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store i16 %i.jv, ptr %i.auf, align 2, !tbaa !96
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %.lr.ph310.i
  %indvars.iv.next423.i = add nuw nsw i64 %indvars.iv422.i, 1 ; 2 uses
  %exitcond426.not.i = icmp eq i64 %indvars.iv.next423.i, %wide.trip.count425.i
  br i1 %exitcond426.not.i, label %.loopexit223.i, label %.lr.ph310.i, !llvm.loop !193

.loopexit223.i:                                   ; preds = %bb.cn, %._crit_edge284.i
  %indvars.iv.next428.i = add nsw i64 %indvars.iv427.i, %i.nw ; 2 uses
  %i.avi = trunc nsw i64 %indvars.iv.next428.i to i32
  %.not637.i = icmp eq i32 %.0594.i, %i.avi
  %indvars.iv.next386.i = add i32 %indvars.iv385.i, %.0592.i
  br i1 %.not637.i, label %._crit_edge317.i, label %bb.bn, !llvm.loop !194

_ZN2cv6stereoL26computeDisparityBinarySGBMERKNS_3MatERS1_RKNS0_22StereoBinarySGBMParamsES4_S3_.exit: ; preds = %._crit_edge317.i, %.noexc105
  %i.avj = getelementptr inbounds nuw i8, ptr %0, i64 262836
  %i.avk = load i32, ptr %i.avj, align 4, !tbaa !195
  switch i32 %i.avk, label %bb.dm [
    i32 1, label %bb.co
    i32 0, label %bb.dc
  ]

bb.co:                                            ; preds = %_ZN2cv6stereoL26computeDisparityBinarySGBMERKNS_3MatERS1_RKNS0_22StereoBinarySGBMParamsES4_S3_.exit
  %i.avl = load i32, ptr %i.cg, align 4, !tbaa !78 ; 5 uses
  %i.avm = load i32, ptr %i.ce, align 8, !tbaa !77 ; 5 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %0, i64 262584 ; 2 uses
  %i.avo = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.avn)
          to label %bb.cp unwind label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.avp = sext i32 %i.avl to i64
  %i.avq = sext i32 %i.avm to i64
  %i.avr = mul nsw i64 %i.avq, %i.avp
  %.not = icmp eq i64 %i.avo, %i.avr
  br i1 %.not, label %_ZN2cv4Mat_IiE6createEii.exit115, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.avs = getelementptr inbounds nuw i8, ptr %0, i64 262376
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.avs, i32 noundef %i.avm, i32 noundef %i.avl, i32 noundef 4)
          to label %_ZN2cv4Mat_IiE6createEii.exit unwind label %bb.cr

_ZN2cv4Mat_IiE6createEii.exit:                    ; preds = %bb.cq
  %i.avt = getelementptr inbounds nuw i8, ptr %0, i64 262168
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.avt, i32 noundef %i.avm, i32 noundef %i.avl, i32 noundef 4)
          to label %_ZN2cv4Mat_IiE6createEii.exit113 unwind label %bb.cr

_ZN2cv4Mat_IiE6createEii.exit113:                 ; preds = %_ZN2cv4Mat_IiE6createEii.exit
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.avn, i32 noundef %i.avm, i32 noundef %i.avl, i32 noundef 4)
          to label %_ZN2cv4Mat_IiE6createEii.exit115 unwind label %bb.cr

bb.cr:                                            ; preds = %_ZN2cv4Mat_IiE6createEii.exit113, %_ZN2cv4Mat_IiE6createEii.exit, %bb.cq, %bb.co
  %i.avu = landingpad { ptr, i32 }
          cleanup
  br label %.body107

_ZN2cv4Mat_IiE6createEii.exit115:                 ; preds = %_ZN2cv4Mat_IiE6createEii.exit113, %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %24) #21
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %24, i32 noundef %i.avm, i32 noundef %i.avl, i32 noundef 3)
          to label %bb.cs unwind label %bb.cx

bb.cs:                                            ; preds = %_ZN2cv4Mat_IiE6createEii.exit115
  invoke void @_ZN2cv6stereo8Matching15Median1x9FilterIsEEvRKNS_3MatERS3_(ptr noundef nonnull align 8 dereferenceable(262784) %i.dy, ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %24)
          to label %bb.ct unwind label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZN2cv6stereo8Matching15Median9x1FilterIsEEvRKNS_3MatERS3_(ptr noundef nonnull align 8 dereferenceable(262784) %i.dy, ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(208) %15)
          to label %bb.cu unwind label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %25, ptr noundef nonnull align 8 dereferenceable(208) %15)
          to label %bb.cv unwind label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.avv = getelementptr inbounds nuw i8, ptr %0, i64 262820
  %i.avw = load i32, ptr %i.avv, align 4, !tbaa !56
  invoke void @_ZN2cv6stereo8Matching18smallRegionRemovalIsEEvRKNS_3MatEiRS3_(ptr noundef nonnull align 8 dereferenceable(262784) %i.dy, ptr noundef nonnull align 8 dereferenceable(208) %25, i32 noundef %i.avw, ptr noundef nonnull align 8 dereferenceable(208) %15)
end_hunk_0
