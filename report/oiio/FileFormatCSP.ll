Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/FileFormatCSP?download=true
inline.NumInlined: 1226
inline.NumDeleted: 450
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %i.amk, i64 %.01351088.ph
  %i.aob = load float, ptr %i.aoa, align 4, !tbaa !59
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr %i.and, i64 %.01351088.ph
  store float %i.aob, ptr %i.aoc, align 4, !tbaa !59
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %i.anf, i64 %.01351088.ph
  %i.aoe = load float, ptr %i.aod, align 4, !tbaa !59
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %i.anh, i64 %.01351088.ph
  store float %i.aoe, ptr %i.aof, align 4, !tbaa !59
  %i.aog = or disjoint i64 %.01351088.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01351088.unr = phi i64 [ %.01351088.ph, %scalar.ph.preheader ], [ %i.aog, %scalar.ph.prol ]
  %i.aoh = icmp eq i64 %i.amo, %.neg
  br i1 %i.aoh, label %._crit_edge1090, label %scalar.ph

._crit_edge1090:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit
  %i.aoi = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #31 ; 11 uses
  %i.aoj = icmp eq ptr %i.aoi, null
  br i1 %i.aoj, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit, label %bb.lg

bb.lg:                                            ; preds = %._crit_edge1090
  %i.aok = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 3 uses
  %i.aol = load i32, ptr %i.aok, align 8, !tbaa !137
  %i.aom = zext i32 %i.aol to i64
  %i.aon = shl nuw nsw i64 %i.aom, 2
  %i.aoo = call noalias ptr @malloc(i64 noundef %i.aon) #31 ; 7 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoi, i64 8
  store ptr %i.aoo, ptr %i.aop, align 8, !tbaa !141
  %i.aoq = icmp eq ptr %i.aoo, null
  br i1 %i.aoq, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  call void @free(ptr noundef nonnull %i.aoi) #26
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit

bb.li:                                            ; preds = %bb.lg
  %i.aor = load ptr, ptr %.020.i, align 8, !tbaa !134 ; 12 uses
  %i.aos = load i32, ptr %i.aok, align 8, !tbaa !137 ; 2 uses
  %i.aot = zext i32 %i.aos to i64
  %i.aou = shl nuw nsw i64 %i.aot, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aoo, ptr align 4 %i.aor, i64 %i.aou, i1 false)
  %i.aov = add i32 %i.aos, -1
  %i.aow = zext i32 %i.aov to i64
  %i.aox = mul nuw nsw i64 %i.aow, 20
  %i.aoy = call noalias ptr @malloc(i64 noundef %i.aox) #31 ; 12 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoi, i64 16
  store ptr %i.aoy, ptr %i.aoz, align 8, !tbaa !143
  %i.apa = icmp eq ptr %i.aoy, null
  br i1 %i.apa, label %bb.lj, label %bb.lk

bb.lj:                                            ; preds = %bb.li
  call void @free(ptr noundef nonnull %i.aoo) #26
  call void @free(ptr noundef nonnull %i.aoi) #26
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit

bb.lk:                                            ; preds = %bb.li
  %i.apb = load i32, ptr %i.aok, align 8, !tbaa !137 ; 4 uses
  store i32 %i.apb, ptr %i.aoi, align 8, !tbaa !144
  %i.apc = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !136 ; 11 uses
  %i.ape = load float, ptr %i.apd, align 4, !tbaa !59 ; 5 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aoi, i64 24
  store float %i.ape, ptr %i.apf, align 8, !tbaa !145
  %i.apg = add i32 %i.apb, -1                     ; 2 uses
  %i.aph = zext i32 %i.apg to i64                 ; 2 uses
  %i.api = getelementptr inbounds nuw [4 x i8], ptr %i.apd, i64 %i.aph
  %i.apj = load float, ptr %i.api, align 4, !tbaa !59
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aoi, i64 28
  store float %i.apj, ptr %i.apk, align 4, !tbaa !146
  %i.apl = icmp eq i32 %i.apb, 2
  br i1 %i.apl, label %bb.ll, label %.preheader.i

.preheader.i:                                     ; preds = %bb.lk
  %.not.i817 = icmp eq i32 %i.apg, 0
  br i1 %.not.i817, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %.preheader.i
  %i.apm = add i32 %i.apb, -2
  %i.apn = zext i32 %i.apm to i64                 ; 3 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apd, i64 4
  %i.app = load float, ptr %i.apo, align 4, !tbaa !59 ; 3 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %i.aoo, i64 4
  %i.apr = load float, ptr %i.apq, align 4, !tbaa !59 ; 2 uses
  %i.aps = load float, ptr %i.aoo, align 4, !tbaa !59
  %i.apt = fsub float %i.apr, %i.aps
  %i.apu = fdiv float 1.000000e+00, %i.apt
  store float %i.apu, ptr %i.aoy, align 4, !tbaa !59
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apd, i64 8
  %i.apw = getelementptr inbounds nuw i8, ptr %i.aor, i64 8
  %i.apx = getelementptr inbounds nuw i8, ptr %i.aor, i64 4
  %i.apy = load float, ptr %i.apx, align 4, !tbaa !59 ; 2 uses
  %i.apz = load float, ptr %i.aor, align 4, !tbaa !59
  %i.aqa = fsub float %i.apy, %i.apz
  %i.aqb = load float, ptr %i.apw, align 4, !tbaa !59
  %i.aqc = fsub float %i.aqb, %i.apy
  %i.aqd = fdiv float %i.aqc, %i.aqa
  %i.aqe = load float, ptr %i.apv, align 4, !tbaa !59
  %i.aqf = fsub float %i.aqe, %i.ape
  %i.aqg = fadd float %i.aqd, 1.000000e+00
  %i.aqh = fdiv float %i.aqf, %i.aqg              ; 3 uses
  %i.aqi = fmul float %i.app, 0.000000e+00
  %i.aqj = fadd float %i.ape, %i.aqi
  %i.aqk = call float @llvm.fmuladd.f32(float %i.aqh, float 0.000000e+00, float %i.aqj)
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aoy, i64 4
  store float %i.aqk, ptr %i.aql, align 4, !tbaa !59
  %i.aqm = fmul float %i.app, 2.000000e+00
  %i.aqn = call float @llvm.fmuladd.f32(float %i.ape, float -2.000000e+00, float %i.aqm)
  %i.aqo = fsub float %i.aqn, %i.aqh
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aoy, i64 8
  store float %i.aqo, ptr %i.aqp, align 4, !tbaa !59
  %i.aqq = fsub float %i.ape, %i.app
  %i.aqr = fadd float %i.aqq, %i.aqh
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aoy, i64 12
  store float %i.aqr, ptr %i.aqs, align 4, !tbaa !59
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aoy, i64 16
  store float 0.000000e+00, ptr %i.aqt, align 4, !tbaa !59
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %i.apn
  %i.aqv = add nsw i64 %i.apn, -1                 ; 2 uses
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %i.aqv
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %i.apd, i64 %i.aqv
  br label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aor, i64 4
  %i.aqz = load float, ptr %i.aqy, align 4, !tbaa !59
  %i.ara = load float, ptr %i.aor, align 4, !tbaa !59
  %i.arb = fsub float %i.aqz, %i.ara
  %i.arc = fdiv float 1.000000e+00, %i.arb
  store float %i.arc, ptr %i.aoy, align 4, !tbaa !59
  %i.ard = load float, ptr %i.apd, align 4, !tbaa !59 ; 2 uses
  %i.are = getelementptr inbounds nuw i8, ptr %i.aoy, i64 4
  store float %i.ard, ptr %i.are, align 4, !tbaa !59
  %i.arf = getelementptr inbounds nuw i8, ptr %i.apd, i64 4
  %i.arg = load float, ptr %i.arf, align 4, !tbaa !59
  %i.arh = fsub float %i.arg, %i.ard
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aoy, i64 8
  store float %i.arh, ptr %i.ari, align 4, !tbaa !59
  %i.arj = getelementptr inbounds nuw i8, ptr %i.aoy, i64 12
  store <2 x float> zeroinitializer, ptr %i.arj, align 4, !tbaa !59
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit

bb.lm:                                            ; preds = %bb.lp, %.peel.next.i
  %i.ark = phi float [ %i.apr, %.peel.next.i ], [ %i.arq, %bb.lp ]
  %indvars.iv.i = phi i64 [ 1, %.peel.next.i ], [ %indvars.iv.next.i, %bb.lp ] ; 6 uses
  %.pn.i = phi ptr [ %i.aoy, %.peel.next.i ], [ %.0148151.i, %bb.lp ] ; 3 uses
  %.0148151.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 20 ; 2 uses
  %i.arl = getelementptr inbounds nuw [4 x i8], ptr %i.apd, i64 %indvars.iv.i
  %i.arm = load float, ptr %i.arl, align 4, !tbaa !59 ; 7 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.arn = getelementptr inbounds nuw [4 x i8], ptr %i.apd, i64 %indvars.iv.next.i
  %i.aro = load float, ptr %i.arn, align 4, !tbaa !59 ; 5 uses
  %i.arp = getelementptr inbounds nuw [4 x i8], ptr %i.aoo, i64 %indvars.iv.next.i
  %i.arq = load float, ptr %i.arp, align 4, !tbaa !59 ; 2 uses
  %i.arr = fsub float %i.arq, %i.ark
  %i.ars = fdiv float 1.000000e+00, %i.arr
  store float %i.ars, ptr %.0148151.i, align 4, !tbaa !59
  %i.art = icmp eq i64 %indvars.iv.i, %i.apn
  %i.aru = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %indvars.iv.next.i
  %i.arv = load float, ptr %i.aru, align 4, !tbaa !59 ; 3 uses
  br i1 %i.art, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %bb.lm
  %i.arw = load float, ptr %i.aqu, align 4, !tbaa !59 ; 2 uses
  %i.arx = fsub float %i.arv, %i.arw
  %i.ary = load float, ptr %i.aqw, align 4, !tbaa !59
  %i.arz = fsub float %i.arw, %i.ary
  %i.asa = fdiv float %i.arz, %i.arx
  %i.asb = load float, ptr %i.aqx, align 4, !tbaa !59
  %i.asc = fsub float %i.aro, %i.asb
  %i.asd = fadd float %i.asa, 1.000000e+00
  %i.ase = fdiv float %i.asc, %i.asd              ; 3 uses
  %i.asf = fmul float %i.aro, 0.000000e+00        ; 2 uses
  %i.asg = fadd float %i.arm, %i.asf
  %i.ash = insertelement <2 x float> poison, float %i.arm, i64 0
  %i.asi = insertelement <2 x float> %i.ash, float %i.ase, i64 1
  %i.asj = insertelement <2 x float> poison, float %i.asf, i64 0
  %i.ask = insertelement <2 x float> %i.asj, float %i.asg, i64 1
  %i.asl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asi, <2 x float> zeroinitializer, <2 x float> %i.ask) ; 2 uses
  %i.asm = extractelement <2 x float> %i.asl, i64 0
  %i.asn = fadd float %i.asm, %i.ase
  %i.aso = fsub float %i.aro, %i.arm
  %i.asp = fsub float %i.aso, %i.ase
  %i.asq = shufflevector <2 x float> %i.asl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.asr = insertelement <2 x float> %i.asq, float %i.asn, i64 1
  %i.ass = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.asp, i64 0
  br label %bb.lp

bb.lo:                                            ; preds = %bb.lm
  %i.ast = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %indvars.iv.i
  %i.asu = load float, ptr %i.ast, align 4, !tbaa !59 ; 2 uses
  %i.asv = fsub float %i.arv, %i.asu              ; 2 uses
  %i.asw = add nsw i64 %indvars.iv.i, -1          ; 2 uses
  %i.asx = getelementptr inbounds nuw [4 x i8], ptr %i.apd, i64 %i.asw
  %i.asy = load float, ptr %i.asx, align 4, !tbaa !59
  %i.asz = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %i.asw
  %i.ata = load float, ptr %i.asz, align 4, !tbaa !59
  %i.atb = fsub float %i.asu, %i.ata
  %i.atc = fdiv float %i.atb, %i.asv
  %i.atd = add nuw i64 %indvars.iv.i, 2           ; 2 uses
  %i.ate = getelementptr inbounds nuw [4 x i8], ptr %i.apd, i64 %i.atd
  %i.atf = load float, ptr %i.ate, align 4, !tbaa !59
  %i.atg = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %i.atd
  %i.ath = load float, ptr %i.atg, align 4, !tbaa !59
  %i.ati = fsub float %i.ath, %i.arv
  %i.atj = fdiv float %i.ati, %i.asv
  %i.atk = fsub float %i.aro, %i.asy
  %i.atl = fadd float %i.atc, 1.000000e+00
  %i.atm = fsub float %i.atf, %i.arm
  %i.atn = fadd float %i.atj, 1.000000e+00
  %i.ato = fdiv float %i.atm, %i.atn
  %i.atp = insertelement <2 x float> poison, float %i.aro, i64 0
  %i.atq = shufflevector <2 x float> %i.atp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.atr = insertelement <2 x float> poison, float %i.ato, i64 0
  %i.ats = shufflevector <2 x float> %i.atr, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.att = fdiv float %i.atk, %i.atl              ; 3 uses
  %i.atu = fmul float %i.att, 0.000000e+00
  %i.atv = fadd float %i.arm, %i.atu
  %i.atw = call float @llvm.fmuladd.f32(float %i.arm, float 0.000000e+00, float %i.att)
  %i.atx = insertelement <2 x float> poison, float %i.atv, i64 0
  %i.aty = insertelement <2 x float> %i.atx, float %i.atw, i64 1
  %i.atz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atq, <2 x float> zeroinitializer, <2 x float> %i.aty)
  %i.aua = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ats, <2 x float> zeroinitializer, <2 x float> %i.atz)
  %i.aub = insertelement <2 x float> poison, float %i.att, i64 0
  %i.auc = shufflevector <2 x float> %i.aub, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aud = fmul <2 x float> %i.auc, <float -2.000000e+00, float 1.000000e+00>
  %i.aue = insertelement <2 x float> poison, float %i.arm, i64 0
  %i.auf = shufflevector <2 x float> %i.aue, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aug = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.auf, <2 x float> <float -3.000000e+00, float 2.000000e+00>, <2 x float> %i.aud)
  %i.auh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atq, <2 x float> <float 3.000000e+00, float -2.000000e+00>, <2 x float> %i.aug) ; 2 uses
  %i.aui = fsub <2 x float> %i.auh, %i.ats
  %i.auj = fadd <2 x float> %i.auh, %i.ats
  %i.auk = shufflevector <2 x float> %i.aui, <2 x float> %i.auj, <2 x i32> <i32 0, i32 3>
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln
  %i.aul = phi <2 x float> [ %i.asr, %bb.ln ], [ %i.aua, %bb.lo ]
  %i.aum = phi <2 x float> [ %i.ass, %bb.ln ], [ %i.auk, %bb.lo ]
  %i.aun = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  store <2 x float> %i.aul, ptr %i.aun, align 4, !tbaa !59
  %i.auo = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  store <2 x float> %i.aum, ptr %i.auo, align 4, !tbaa !59
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.aph
  br i1 %exitcond.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit, label %bb.lm, !llvm.loop !147

_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit: ; preds = %bb.lp, %._crit_edge1090, %bb.lh, %bb.lj, %.preheader.i, %bb.ll
  %.0.i = phi ptr [ null, %._crit_edge1090 ], [ null, %bb.lh ], [ null, %bb.lj ], [ %i.aoi, %bb.ll ], [ %i.aoi, %.preheader.i ], [ %i.aoi, %bb.lp ] ; 7 uses
  %i.aup = fpext float %i.amp to double
  %i.auq = getelementptr inbounds nuw [8 x i8], ptr %i.akx, i64 %indvars.iv1129
  store double %i.aup, ptr %i.auq, align 8, !tbaa !149
  %i.aur = fpext float %i.ams to double
  %i.aus = getelementptr inbounds nuw [8 x i8], ptr %i.aky, i64 %indvars.iv1129
  store double %i.aur, ptr %i.aus, align 8, !tbaa !149
  %i.aut = fsub float %i.ams, %i.amp
  %i.auu = load ptr, ptr %i.amc, align 8, !tbaa !52
  %i.auv = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.auy = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.auu, i64 %indvars.iv1129
  br label %bb.lt

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01351088 = phi i64 [ %i.avm, %scalar.ph ], [ %.01351088.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.auz = getelementptr inbounds nuw [4 x i8], ptr %i.amk, i64 %.01351088
  %i.ava = load float, ptr %i.auz, align 4, !tbaa !59
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr %i.and, i64 %.01351088
  store float %i.ava, ptr %i.avb, align 4, !tbaa !59
  %i.avc = getelementptr inbounds nuw [4 x i8], ptr %i.anf, i64 %.01351088
  %i.avd = load float, ptr %i.avc, align 4, !tbaa !59
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr %i.anh, i64 %.01351088
  store float %i.avd, ptr %i.ave, align 4, !tbaa !59
  %i.avf = add nuw i64 %.01351088, 1              ; 4 uses
  %i.avg = getelementptr inbounds nuw [4 x i8], ptr %i.amk, i64 %i.avf
  %i.avh = load float, ptr %i.avg, align 4, !tbaa !59
  %i.avi = getelementptr inbounds nuw [4 x i8], ptr %i.and, i64 %i.avf
  store float %i.avh, ptr %i.avi, align 4, !tbaa !59
  %i.avj = getelementptr inbounds nuw [4 x i8], ptr %i.anf, i64 %i.avf
  %i.avk = load float, ptr %i.avj, align 4, !tbaa !59
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %i.anh, i64 %i.avf
  store float %i.avk, ptr %i.avl, align 4, !tbaa !59
  %i.avm = add nuw i64 %.01351088, 2              ; 2 uses
  %exitcond1124.not.1 = icmp eq i64 %i.avm, %i.amo
  br i1 %exitcond1124.not.1, label %._crit_edge1090, label %scalar.ph, !llvm.loop !151

bb.lq:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit
  %i.avn = icmp eq ptr %.020.i, null
  br i1 %i.avn, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.avo = load ptr, ptr %.020.i, align 8, !tbaa !134
  call void @free(ptr noundef %i.avo) #26
  %i.avp = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.avq = load ptr, ptr %i.avp, align 8, !tbaa !136
  call void @free(ptr noundef %i.avq) #26
  call void @free(ptr noundef nonnull %.020.i) #26
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit: ; preds = %bb.lq, %bb.lr
  %i.avr = icmp eq ptr %.0.i, null
  br i1 %i.avr, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_126rsr_Interpolator1D_destroyEPNS0_19rsr_Interpolator1D_E.exit, label %bb.ls

bb.ls:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit
  %i.avs = load ptr, ptr %i.auv, align 8, !tbaa !141
  call void @free(ptr noundef %i.avs) #26
  %i.avt = load ptr, ptr %i.auw, align 8, !tbaa !143
  call void @free(ptr noundef %i.avt) #26
  call void @free(ptr noundef nonnull %.0.i) #26
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_126rsr_Interpolator1D_destroyEPNS0_19rsr_Interpolator1D_E.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_126rsr_Interpolator1D_destroyEPNS0_19rsr_Interpolator1D_E.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit, %bb.ls
  %indvars.iv.next1130 = add nuw nsw i64 %indvars.iv1129, 1 ; 2 uses
  %exitcond1132.not = icmp eq i64 %indvars.iv.next1130, 3
  br i1 %exitcond1132.not, label %bb.kv, label %bb.la, !llvm.loop !152

bb.lt:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit, %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit
  %indvars.iv1125 = phi i64 [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit ], [ %indvars.iv.next1126, %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit ] ; 3 uses
  %i.avu = trunc nuw nsw i64 %indvars.iv1125 to i32
  %i.avv = uitofp nneg i32 %i.avu to float
  %i.avw = fdiv float %i.avv, 6.553500e+04
  %i.avx = call noundef float @llvm.fmuladd.f32(float %i.aut, float %i.avw, float %i.amp) ; 6 uses
  %i.avy = fcmp uno float %i.avx, 0.000000e+00
  br i1 %i.avy, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.avz = load ptr, ptr %i.auv, align 8, !tbaa !141 ; 4 uses
  %i.awa = load float, ptr %i.avz, align 4, !tbaa !59 ; 2 uses
  %i.awb = fcmp olt float %i.avx, %i.awa
  br i1 %i.awb, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  %i.awc = load float, ptr %i.auy, align 8, !tbaa !145
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit

bb.lw:                                            ; preds = %bb.lu
  %i.awd = load i32, ptr %.0.i, align 8, !tbaa !144 ; 2 uses
  %i.awe = sext i32 %i.awd to i64
  %i.awf = getelementptr [4 x i8], ptr %i.avz, i64 %i.awe
  %i.awg = getelementptr i8, ptr %i.awf, i64 -4
  %i.awh = load float, ptr %i.awg, align 4, !tbaa !59
  %i.awi = fcmp ogt float %i.avx, %i.awh
  br i1 %i.awi, label %bb.lx, label %bb.ly

bb.lx:                                            ; preds = %bb.lw
  %i.awj = load float, ptr %i.aux, align 4, !tbaa !146
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit

bb.ly:                                            ; preds = %bb.lw
  %i.awk = add nsw i32 %i.awd, -1                 ; 2 uses
  %i.awl = icmp eq i32 %i.awk, 1
  br i1 %i.awl, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i, label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %bb.ly, %tailrecurse.i.i.i
  %.tr1921.i.i.i = phi i32 [ %..tr19.i.i.i, %tailrecurse.i.i.i ], [ %i.awk, %bb.ly ] ; 2 uses
  %.tr1820.i.i.i = phi i32 [ %.tr18..i.i.i, %tailrecurse.i.i.i ], [ 0, %bb.ly ] ; 2 uses
  %i.awm = add nsw i32 %.tr1820.i.i.i, %.tr1921.i.i.i
  %i.awn = sdiv i32 %i.awm, 2                     ; 3 uses
  %i.awo = sext i32 %i.awn to i64
  %i.awp = getelementptr inbounds [4 x i8], ptr %i.avz, i64 %i.awo
  %i.awq = load float, ptr %i.awp, align 4, !tbaa !59
  %i.awr = fcmp olt float %i.avx, %i.awq          ; 2 uses
  %.tr18..i.i.i = select i1 %i.awr, i32 %.tr1820.i.i.i, i32 %i.awn ; 4 uses
  %..tr19.i.i.i = select i1 %i.awr, i32 %i.awn, i32 %.tr1921.i.i.i ; 2 uses
  %i.aws = sub nsw i32 %..tr19.i.i.i, %.tr18..i.i.i
  %i.awt = icmp eq i32 %i.aws, 1
  br i1 %i.awt, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i, label %tailrecurse.i.i.i

_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i: ; preds = %tailrecurse.i.i.i
  %.phi.trans.insert.i = sext i32 %.tr18..i.i.i to i64
  %.phi.trans.insert31.i = getelementptr inbounds [4 x i8], ptr %i.avz, i64 %.phi.trans.insert.i
  %.pre.i = load float, ptr %.phi.trans.insert31.i, align 4, !tbaa !59
  %i.awu = mul nsw i32 %.tr18..i.i.i, 5
  %i.awv = sext i32 %i.awu to i64
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i

_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i, %bb.ly
  %i.aww = phi float [ %.pre.i, %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i ], [ %i.awa, %bb.ly ]
  %.tr18.lcssa.i.i.i = phi i64 [ %i.awv, %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i ], [ 0, %bb.ly ]
  %i.awx = load ptr, ptr %i.auw, align 8, !tbaa !143
  %i.awy = getelementptr inbounds [4 x i8], ptr %i.awx, i64 %.tr18.lcssa.i.i.i ; 5 uses
  %i.awz = load float, ptr %i.awy, align 4, !tbaa !59
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awy, i64 4
  %i.axb = load float, ptr %i.axa, align 4, !tbaa !59
  %i.axc = getelementptr inbounds nuw i8, ptr %i.awy, i64 8
  %i.axd = load float, ptr %i.axc, align 4, !tbaa !59
  %i.axe = getelementptr inbounds nuw i8, ptr %i.awy, i64 12
  %i.axf = load float, ptr %i.axe, align 4, !tbaa !59
  %i.axg = getelementptr inbounds nuw i8, ptr %i.awy, i64 16
  %i.axh = load float, ptr %i.axg, align 4, !tbaa !59
  %i.axi = fsub float %i.avx, %i.aww
  %i.axj = fmul float %i.axi, %i.awz              ; 3 uses
  %i.axk = call float @llvm.fmuladd.f32(float %i.axh, float %i.axj, float %i.axf)
  %i.axl = call float @llvm.fmuladd.f32(float %i.axj, float %i.axk, float %i.axd)
  %i.axm = call float @llvm.fmuladd.f32(float %i.axj, float %i.axl, float %i.axb)
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i, %bb.lx, %bb.lv, %bb.lt
  %.0.i818 = phi float [ %i.axm, %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i ], [ %i.awc, %bb.lv ], [ %i.awj, %bb.lx ], [ %i.avx, %bb.lt ]
  %.idx1353 = mul nuw nsw i64 %indvars.iv1125, 12
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx1353
  store float %.0.i818, ptr %gep, align 4, !tbaa !59
  %indvars.iv.next1126 = add nuw nsw i64 %indvars.iv1125, 1 ; 2 uses
  %exitcond1128.not = icmp eq i64 %indvars.iv.next1126, 65536
end_hunk_0
