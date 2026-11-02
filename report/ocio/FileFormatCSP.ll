Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatCSP?download=true
inline.NumInlined: 1221
inline.NumDeleted: 444
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.alw, %n.vec
  br i1 %cmp.n, label %._crit_edge1100, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph1099, %middle.block
  %.01431098.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph1099 ], [ %n.vec, %middle.block ] ; 7 uses
  %.neg = or disjoint i64 %.01431098.ph, 1
  %i.anh = and i64 %i.alv, 4
  %lcmp.mod.not = icmp eq i64 %i.anh, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr %i.als, i64 %.01431098.ph
  %i.anj = load float, ptr %i.ani, align 4, !tbaa !47
  %i.ank = getelementptr inbounds nuw [4 x i8], ptr %i.aml, i64 %.01431098.ph
  store float %i.anj, ptr %i.ank, align 4, !tbaa !47
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %i.amn, i64 %.01431098.ph
  %i.anm = load float, ptr %i.anl, align 4, !tbaa !47
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %i.amp, i64 %.01431098.ph
  store float %i.anm, ptr %i.ann, align 4, !tbaa !47
  %i.ano = or disjoint i64 %.01431098.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01431098.unr = phi i64 [ %.01431098.ph, %scalar.ph.preheader ], [ %i.ano, %scalar.ph.prol ]
  %i.anp = icmp eq i64 %i.alw, %.neg
  br i1 %i.anp, label %._crit_edge1100, label %scalar.ph

._crit_edge1100:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit
  %i.anq = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #29 ; 11 uses
  %i.anr = icmp eq ptr %i.anq, null
  br i1 %i.anr, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit, label %bb.kl

bb.kl:                                            ; preds = %._crit_edge1100
  %i.ans = getelementptr inbounds nuw i8, ptr %.020.i, i64 16
  %i.ant = load i32, ptr %i.ans, align 8, !tbaa !159 ; 5 uses
  %i.anu = zext i32 %i.ant to i64
  %i.anv = shl nuw nsw i64 %i.anu, 2              ; 2 uses
  %i.anw = call noalias ptr @malloc(i64 noundef %i.anv) #29 ; 7 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anq, i64 8
  store ptr %i.anw, ptr %i.anx, align 8, !tbaa !161
  %i.any = icmp eq ptr %i.anw, null
  br i1 %i.any, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kl
  call void @free(ptr noundef nonnull %i.anq) #25
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit

bb.kn:                                            ; preds = %bb.kl
  %i.anz = load ptr, ptr %.020.i, align 8, !tbaa !157 ; 12 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.anw, ptr align 4 %i.anz, i64 %i.anv, i1 false)
  %i.aoa = add i32 %i.ant, -1                     ; 2 uses
  %i.aob = zext i32 %i.aoa to i64                 ; 3 uses
  %i.aoc = mul nuw nsw i64 %i.aob, 20
  %i.aod = call noalias ptr @malloc(i64 noundef %i.aoc) #29 ; 12 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.anq, i64 16
  store ptr %i.aod, ptr %i.aoe, align 8, !tbaa !162
  %i.aof = icmp eq ptr %i.aod, null
  br i1 %i.aof, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %bb.kn
  call void @free(ptr noundef nonnull %i.anw) #25
  call void @free(ptr noundef nonnull %i.anq) #25
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit

bb.kp:                                            ; preds = %bb.kn
  store i32 %i.ant, ptr %i.anq, align 8, !tbaa !163
  %i.aog = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !158 ; 11 uses
  %i.aoi = load float, ptr %i.aoh, align 4, !tbaa !47 ; 5 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.anq, i64 24
  store float %i.aoi, ptr %i.aoj, align 8, !tbaa !164
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %i.aoh, i64 %i.aob
  %i.aol = load float, ptr %i.aok, align 4, !tbaa !47
  %i.aom = getelementptr inbounds nuw i8, ptr %i.anq, i64 28
  store float %i.aol, ptr %i.aom, align 4, !tbaa !165
  %i.aon = icmp eq i32 %i.ant, 2
  br i1 %i.aon, label %bb.kq, label %.preheader.i

.preheader.i:                                     ; preds = %bb.kp
  %.not.i831 = icmp eq i32 %i.aoa, 0
  br i1 %.not.i831, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %.preheader.i
  %i.aoo = add i32 %i.ant, -2
  %i.aop = zext i32 %i.aoo to i64                 ; 3 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aoh, i64 4
  %i.aor = load float, ptr %i.aoq, align 4, !tbaa !47 ; 3 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.anw, i64 4
  %i.aot = load float, ptr %i.aos, align 4, !tbaa !47 ; 2 uses
  %i.aou = load float, ptr %i.anw, align 4, !tbaa !47
  %i.aov = fsub float %i.aot, %i.aou
  %i.aow = fdiv float 1.000000e+00, %i.aov
  store float %i.aow, ptr %i.aod, align 4, !tbaa !47
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aoh, i64 8
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.anz, i64 8
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.anz, i64 4
  %i.apa = load float, ptr %i.aoz, align 4, !tbaa !47 ; 2 uses
  %i.apb = load float, ptr %i.anz, align 4, !tbaa !47
  %i.apc = fsub float %i.apa, %i.apb
  %i.apd = load float, ptr %i.aoy, align 4, !tbaa !47
  %i.ape = fsub float %i.apd, %i.apa
  %i.apf = fdiv float %i.ape, %i.apc
  %i.apg = load float, ptr %i.aox, align 4, !tbaa !47
  %i.aph = fsub float %i.apg, %i.aoi
  %i.api = fadd float %i.apf, 1.000000e+00
  %i.apj = fdiv float %i.aph, %i.api              ; 3 uses
  %i.apk = fmul float %i.aor, 0.000000e+00
  %i.apl = fadd float %i.aoi, %i.apk
  %i.apm = call float @llvm.fmuladd.f32(float %i.apj, float 0.000000e+00, float %i.apl)
  %i.apn = getelementptr inbounds nuw i8, ptr %i.aod, i64 4
  store float %i.apm, ptr %i.apn, align 4, !tbaa !47
  %i.apo = fmul float %i.aor, 2.000000e+00
  %i.app = call float @llvm.fmuladd.f32(float %i.aoi, float -2.000000e+00, float %i.apo)
  %i.apq = fsub float %i.app, %i.apj
  %i.apr = getelementptr inbounds nuw i8, ptr %i.aod, i64 8
  store float %i.apq, ptr %i.apr, align 4, !tbaa !47
  %i.aps = fsub float %i.aoi, %i.aor
  %i.apt = fadd float %i.aps, %i.apj
  %i.apu = getelementptr inbounds nuw i8, ptr %i.aod, i64 12
  store float %i.apt, ptr %i.apu, align 4, !tbaa !47
  %i.apv = getelementptr inbounds nuw i8, ptr %i.aod, i64 16
  store float 0.000000e+00, ptr %i.apv, align 4, !tbaa !47
  %i.apw = getelementptr inbounds nuw [4 x i8], ptr %i.anz, i64 %i.aop
  %i.apx = add nsw i64 %i.aop, -1                 ; 2 uses
  %i.apy = getelementptr inbounds nuw [4 x i8], ptr %i.anz, i64 %i.apx
  %i.apz = getelementptr inbounds nuw [4 x i8], ptr %i.aoh, i64 %i.apx
  br label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.anz, i64 4
  %i.aqb = load float, ptr %i.aqa, align 4, !tbaa !47
  %i.aqc = load float, ptr %i.anz, align 4, !tbaa !47
  %i.aqd = fsub float %i.aqb, %i.aqc
  %i.aqe = fdiv float 1.000000e+00, %i.aqd
  store float %i.aqe, ptr %i.aod, align 4, !tbaa !47
  %i.aqf = load float, ptr %i.aoh, align 4, !tbaa !47 ; 2 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aod, i64 4
  store float %i.aqf, ptr %i.aqg, align 4, !tbaa !47
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aoh, i64 4
  %i.aqi = load float, ptr %i.aqh, align 4, !tbaa !47
  %i.aqj = fsub float %i.aqi, %i.aqf
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aod, i64 8
  store float %i.aqj, ptr %i.aqk, align 4, !tbaa !47
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aod, i64 12
  store <2 x float> zeroinitializer, ptr %i.aql, align 4, !tbaa !47
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit

bb.kr:                                            ; preds = %bb.ku, %.peel.next.i
  %i.aqm = phi float [ %i.aot, %.peel.next.i ], [ %i.aqs, %bb.ku ]
  %indvars.iv.i = phi i64 [ 1, %.peel.next.i ], [ %indvars.iv.next.i, %bb.ku ] ; 6 uses
  %.pn.i = phi ptr [ %i.aod, %.peel.next.i ], [ %.0148151.i, %bb.ku ] ; 3 uses
  %.0148151.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 20 ; 2 uses
  %i.aqn = getelementptr inbounds nuw [4 x i8], ptr %i.aoh, i64 %indvars.iv.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.aqo = getelementptr inbounds nuw [4 x i8], ptr %i.aoh, i64 %indvars.iv.next.i
  %i.aqp = load float, ptr %i.aqn, align 4, !tbaa !47 ; 7 uses
  %i.aqq = load float, ptr %i.aqo, align 4, !tbaa !47 ; 5 uses
  %i.aqr = getelementptr inbounds nuw [4 x i8], ptr %i.anw, i64 %indvars.iv.next.i
  %i.aqs = load float, ptr %i.aqr, align 4, !tbaa !47 ; 2 uses
  %i.aqt = fsub float %i.aqs, %i.aqm
  %i.aqu = fdiv float 1.000000e+00, %i.aqt
  store float %i.aqu, ptr %.0148151.i, align 4, !tbaa !47
  %i.aqv = icmp eq i64 %indvars.iv.i, %i.aop
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %i.anz, i64 %indvars.iv.next.i
  %i.aqx = load float, ptr %i.aqw, align 4, !tbaa !47 ; 3 uses
  br i1 %i.aqv, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.aqy = load float, ptr %i.apw, align 4, !tbaa !47 ; 2 uses
  %i.aqz = fsub float %i.aqx, %i.aqy
  %i.ara = load float, ptr %i.apy, align 4, !tbaa !47
  %i.arb = fsub float %i.aqy, %i.ara
  %i.arc = fdiv float %i.arb, %i.aqz
  %i.ard = load float, ptr %i.apz, align 4, !tbaa !47
  %i.are = fsub float %i.aqq, %i.ard
  %i.arf = fadd float %i.arc, 1.000000e+00
  %i.arg = fdiv float %i.are, %i.arf              ; 3 uses
  %i.arh = fmul float %i.aqq, 0.000000e+00        ; 2 uses
  %i.ari = fadd float %i.aqp, %i.arh
  %i.arj = insertelement <2 x float> poison, float %i.aqp, i64 0
  %i.ark = insertelement <2 x float> %i.arj, float %i.arg, i64 1
  %i.arl = insertelement <2 x float> poison, float %i.arh, i64 0
  %i.arm = insertelement <2 x float> %i.arl, float %i.ari, i64 1
  %i.arn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ark, <2 x float> zeroinitializer, <2 x float> %i.arm) ; 2 uses
  %i.aro = extractelement <2 x float> %i.arn, i64 0
  %i.arp = fadd float %i.aro, %i.arg
  %i.arq = fsub float %i.aqq, %i.aqp
  %i.arr = fsub float %i.arq, %i.arg
  %i.ars = shufflevector <2 x float> %i.arn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.art = insertelement <2 x float> %i.ars, float %i.arp, i64 1
  %i.aru = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.arr, i64 0
  br label %bb.ku

bb.kt:                                            ; preds = %bb.kr
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %i.anz, i64 %indvars.iv.i
  %i.arw = add nsw i64 %indvars.iv.i, -1          ; 2 uses
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %i.aoh, i64 %i.arw
  %i.ary = load float, ptr %i.arx, align 4, !tbaa !47
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %i.anz, i64 %i.arw
  %i.asa = add nuw i64 %indvars.iv.i, 2           ; 2 uses
  %i.asb = getelementptr inbounds nuw [4 x i8], ptr %i.aoh, i64 %i.asa
  %i.asc = load float, ptr %i.asb, align 4, !tbaa !47
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %i.anz, i64 %i.asa
  %i.ase = load float, ptr %i.arv, align 4, !tbaa !47 ; 2 uses
  %60 = fsub float %i.aqx, %i.ase
  %61 = load float, ptr %i.arz, align 4, !tbaa !47
  %i.asf = load float, ptr %i.asd, align 4, !tbaa !47
  %62 = insertelement <2 x float> poison, float %i.asf, i64 0
  %i.asg = insertelement <2 x float> %62, float %i.ase, i64 1
  %63 = insertelement <2 x float> poison, float %i.aqx, i64 0
  %i.ash = insertelement <2 x float> %63, float %61, i64 1
  %i.asi = fsub <2 x float> %i.asg, %i.ash
  %i.asj = insertelement <2 x float> poison, float %60, i64 0
  %i.ask = shufflevector <2 x float> %i.asj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.asl = fdiv <2 x float> %i.asi, %i.ask
  %i.asm = fsub float %i.aqq, %i.ary
  %i.asn = fsub float %i.asc, %i.aqp
  %i.aso = fadd <2 x float> %i.asl, splat (float 1.000000e+00)
  %i.asp = insertelement <2 x float> poison, float %i.asn, i64 0
  %i.asq = insertelement <2 x float> %i.asp, float %i.asm, i64 1
  %i.asr = fdiv <2 x float> %i.asq, %i.aso        ; 3 uses
  %i.ass = insertelement <2 x float> poison, float %i.aqq, i64 0
  %i.ast = shufflevector <2 x float> %i.ass, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.asu = shufflevector <2 x float> %i.asr, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.asv = extractelement <2 x float> %i.asr, i64 1 ; 2 uses
  %i.asw = fmul float %i.asv, 0.000000e+00
  %i.asx = fadd float %i.aqp, %i.asw
  %i.asy = call float @llvm.fmuladd.f32(float %i.aqp, float 0.000000e+00, float %i.asv)
  %i.asz = insertelement <2 x float> poison, float %i.asx, i64 0
  %i.ata = insertelement <2 x float> %i.asz, float %i.asy, i64 1
  %i.atb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ast, <2 x float> zeroinitializer, <2 x float> %i.ata)
  %i.atc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asu, <2 x float> zeroinitializer, <2 x float> %i.atb)
  %i.atd = shufflevector <2 x float> %i.asr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ate = fmul <2 x float> %i.atd, <float -2.000000e+00, float 1.000000e+00>
  %i.atf = insertelement <2 x float> poison, float %i.aqp, i64 0
  %i.atg = shufflevector <2 x float> %i.atf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ath = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atg, <2 x float> <float -3.000000e+00, float 2.000000e+00>, <2 x float> %i.ate)
  %i.ati = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ast, <2 x float> <float 3.000000e+00, float -2.000000e+00>, <2 x float> %i.ath) ; 2 uses
  %i.atj = fsub <2 x float> %i.ati, %i.asu
  %i.atk = fadd <2 x float> %i.ati, %i.asu
  %i.atl = shufflevector <2 x float> %i.atj, <2 x float> %i.atk, <2 x i32> <i32 0, i32 3>
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %bb.ks
  %i.atm = phi <2 x float> [ %i.art, %bb.ks ], [ %i.atc, %bb.kt ]
  %i.atn = phi <2 x float> [ %i.aru, %bb.ks ], [ %i.atl, %bb.kt ]
  %i.ato = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  store <2 x float> %i.atm, ptr %i.ato, align 4, !tbaa !47
  %i.atp = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  store <2 x float> %i.atn, ptr %i.atp, align 4, !tbaa !47
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.aob
  br i1 %exitcond.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit, label %bb.kr, !llvm.loop !100

_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit: ; preds = %bb.ku, %._crit_edge1100, %bb.km, %bb.ko, %.preheader.i, %bb.kq
  %.0.i = phi ptr [ null, %._crit_edge1100 ], [ null, %bb.km ], [ null, %bb.ko ], [ %i.anq, %bb.kq ], [ %i.anq, %.preheader.i ], [ %i.anq, %bb.ku ] ; 7 uses
  %i.atq = fpext float %i.alx to double
  %i.atr = getelementptr inbounds nuw [8 x i8], ptr %i.akh, i64 %indvars.iv1145
  store double %i.atq, ptr %i.atr, align 8, !tbaa !168
  %i.ats = fpext float %i.ama to double
  %i.att = getelementptr inbounds nuw [8 x i8], ptr %i.aki, i64 %indvars.iv1145
  store double %i.ats, ptr %i.att, align 8, !tbaa !168
  %i.atu = fsub float %i.ama, %i.alx
  %i.atv = load ptr, ptr %i.alm, align 8, !tbaa !111
  %i.atw = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.atz = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.atv, i64 %indvars.iv1145
  br label %bb.ky

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01431098 = phi i64 [ %i.aun, %scalar.ph ], [ %.01431098.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aua = getelementptr inbounds nuw [4 x i8], ptr %i.als, i64 %.01431098
  %i.aub = load float, ptr %i.aua, align 4, !tbaa !47
  %i.auc = getelementptr inbounds nuw [4 x i8], ptr %i.aml, i64 %.01431098
  store float %i.aub, ptr %i.auc, align 4, !tbaa !47
  %i.aud = getelementptr inbounds nuw [4 x i8], ptr %i.amn, i64 %.01431098
  %i.aue = load float, ptr %i.aud, align 4, !tbaa !47
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %i.amp, i64 %.01431098
  store float %i.aue, ptr %i.auf, align 4, !tbaa !47
  %i.aug = add nuw i64 %.01431098, 1              ; 4 uses
  %i.auh = getelementptr inbounds nuw [4 x i8], ptr %i.als, i64 %i.aug
  %i.aui = load float, ptr %i.auh, align 4, !tbaa !47
  %i.auj = getelementptr inbounds nuw [4 x i8], ptr %i.aml, i64 %i.aug
  store float %i.aui, ptr %i.auj, align 4, !tbaa !47
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %i.amn, i64 %i.aug
  %i.aul = load float, ptr %i.auk, align 4, !tbaa !47
  %i.aum = getelementptr inbounds nuw [4 x i8], ptr %i.amp, i64 %i.aug
  store float %i.aul, ptr %i.aum, align 4, !tbaa !47
  %i.aun = add nuw i64 %.01431098, 2              ; 2 uses
  %exitcond1140.not.1 = icmp eq i64 %i.aun, %i.alw
  br i1 %exitcond1140.not.1, label %._crit_edge1100, label %scalar.ph, !llvm.loop !101

bb.kv:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit
  %i.auo = icmp eq ptr %.020.i, null
  br i1 %i.auo, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.aup = load ptr, ptr %.020.i, align 8, !tbaa !157
  call void @free(ptr noundef %i.aup) #25
  %i.auq = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.aur = load ptr, ptr %i.auq, align 8, !tbaa !158
  call void @free(ptr noundef %i.aur) #25
  call void @free(ptr noundef nonnull %.020.i) #25
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit: ; preds = %bb.kv, %bb.kw
  %i.aus = icmp eq ptr %.0.i, null
  br i1 %i.aus, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_126rsr_Interpolator1D_destroyEPNS0_19rsr_Interpolator1D_E.exit, label %bb.kx

bb.kx:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit
  %i.aut = load ptr, ptr %i.atw, align 8, !tbaa !161
  call void @free(ptr noundef %i.aut) #25
  %i.auu = load ptr, ptr %i.atx, align 8, !tbaa !162
  call void @free(ptr noundef %i.auu) #25
  call void @free(ptr noundef nonnull %.0.i) #25
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_126rsr_Interpolator1D_destroyEPNS0_19rsr_Interpolator1D_E.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_126rsr_Interpolator1D_destroyEPNS0_19rsr_Interpolator1D_E.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit, %bb.kx
  %indvars.iv.next1146 = add nuw nsw i64 %indvars.iv1145, 1 ; 2 uses
  %exitcond1148.not = icmp eq i64 %indvars.iv.next1146, 3
  br i1 %exitcond1148.not, label %bb.kc, label %bb.kf, !llvm.loop !102

bb.ky:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit, %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit
  %indvars.iv1141 = phi i64 [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit ], [ %indvars.iv.next1142, %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit ] ; 3 uses
  %i.auv = trunc nuw nsw i64 %indvars.iv1141 to i32
  %i.auw = uitofp nneg i32 %i.auv to float
  %i.aux = fdiv float %i.auw, 6.553500e+04
  %i.auy = call noundef float @llvm.fmuladd.f32(float %i.atu, float %i.aux, float %i.alx) ; 6 uses
  %i.auz = fcmp uno float %i.auy, 0.000000e+00
  br i1 %i.auz, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.ava = load ptr, ptr %i.atw, align 8, !tbaa !161 ; 4 uses
  %i.avb = load float, ptr %i.ava, align 4, !tbaa !47 ; 2 uses
  %i.avc = fcmp olt float %i.auy, %i.avb
  br i1 %i.avc, label %bb.la, label %bb.lb

bb.la:                                            ; preds = %bb.kz
  %i.avd = load float, ptr %i.atz, align 8, !tbaa !164
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit

bb.lb:                                            ; preds = %bb.kz
  %i.ave = load i32, ptr %.0.i, align 8, !tbaa !163 ; 2 uses
  %i.avf = sext i32 %i.ave to i64
  %i.avg = getelementptr [4 x i8], ptr %i.ava, i64 %i.avf
  %i.avh = getelementptr i8, ptr %i.avg, i64 -4
  %i.avi = load float, ptr %i.avh, align 4, !tbaa !47
  %i.avj = fcmp ogt float %i.auy, %i.avi
  br i1 %i.avj, label %bb.lc, label %bb.ld

bb.lc:                                            ; preds = %bb.lb
  %i.avk = load float, ptr %i.aty, align 4, !tbaa !165
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit

bb.ld:                                            ; preds = %bb.lb
  %i.avl = add nsw i32 %i.ave, -1                 ; 2 uses
  %i.avm = icmp eq i32 %i.avl, 1
  br i1 %i.avm, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i, label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %bb.ld, %tailrecurse.i.i.i
  %.tr1921.i.i.i = phi i32 [ %..tr19.i.i.i, %tailrecurse.i.i.i ], [ %i.avl, %bb.ld ] ; 2 uses
  %.tr1820.i.i.i = phi i32 [ %.tr18..i.i.i, %tailrecurse.i.i.i ], [ 0, %bb.ld ] ; 2 uses
  %i.avn = add nsw i32 %.tr1820.i.i.i, %.tr1921.i.i.i
  %i.avo = sdiv i32 %i.avn, 2                     ; 3 uses
  %i.avp = sext i32 %i.avo to i64
  %i.avq = getelementptr inbounds [4 x i8], ptr %i.ava, i64 %i.avp
  %i.avr = load float, ptr %i.avq, align 4, !tbaa !47
  %i.avs = fcmp olt float %i.auy, %i.avr          ; 2 uses
  %.tr18..i.i.i = select i1 %i.avs, i32 %.tr1820.i.i.i, i32 %i.avo ; 4 uses
  %..tr19.i.i.i = select i1 %i.avs, i32 %i.avo, i32 %.tr1921.i.i.i ; 2 uses
  %i.avt = sub nsw i32 %..tr19.i.i.i, %.tr18..i.i.i
  %i.avu = icmp eq i32 %i.avt, 1
  br i1 %i.avu, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i, label %tailrecurse.i.i.i

_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i: ; preds = %tailrecurse.i.i.i
  %.phi.trans.insert.i = sext i32 %.tr18..i.i.i to i64
  %.phi.trans.insert31.i = getelementptr inbounds [4 x i8], ptr %i.ava, i64 %.phi.trans.insert.i
  %.pre.i = load float, ptr %.phi.trans.insert31.i, align 4, !tbaa !47
  %i.avv = mul nsw i32 %.tr18..i.i.i, 5
  %i.avw = sext i32 %i.avv to i64
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i

_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i, %bb.ld
  %i.avx = phi float [ %.pre.i, %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i ], [ %i.avb, %bb.ld ]
  %.tr18.lcssa.i.i.i = phi i64 [ %i.avw, %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i ], [ 0, %bb.ld ]
  %i.avy = load ptr, ptr %i.atx, align 8, !tbaa !162
  %i.avz = getelementptr inbounds [4 x i8], ptr %i.avy, i64 %.tr18.lcssa.i.i.i ; 5 uses
  %i.awa = load float, ptr %i.avz, align 4, !tbaa !47
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avz, i64 4
  %i.awc = load float, ptr %i.awb, align 4, !tbaa !47
  %i.awd = getelementptr inbounds nuw i8, ptr %i.avz, i64 8
  %i.awe = load float, ptr %i.awd, align 4, !tbaa !47
  %i.awf = getelementptr inbounds nuw i8, ptr %i.avz, i64 12
  %i.awg = load float, ptr %i.awf, align 4, !tbaa !47
  %i.awh = getelementptr inbounds nuw i8, ptr %i.avz, i64 16
  %i.awi = load float, ptr %i.awh, align 4, !tbaa !47
  %i.awj = fsub float %i.auy, %i.avx
  %i.awk = fmul float %i.awj, %i.awa              ; 3 uses
  %i.awl = call float @llvm.fmuladd.f32(float %i.awi, float %i.awk, float %i.awg)
  %i.awm = call float @llvm.fmuladd.f32(float %i.awk, float %i.awl, float %i.awe)
  %i.awn = call float @llvm.fmuladd.f32(float %i.awk, float %i.awm, float %i.awc)
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i, %bb.lc, %bb.la, %bb.ky
  %.0.i832 = phi float [ %i.awn, %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i ], [ %i.avd, %bb.la ], [ %i.avk, %bb.lc ], [ %i.auy, %bb.ky ]
  %.idx1365 = mul nuw nsw i64 %indvars.iv1141, 12
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx1365
  store float %.0.i832, ptr %gep, align 4, !tbaa !47
  %indvars.iv.next1142 = add nuw nsw i64 %indvars.iv1141, 1 ; 2 uses
  %exitcond1144.not = icmp eq i64 %indvars.iv.next1142, 65536
  br i1 %exitcond1144.not, label %bb.kv, label %bb.ky, !llvm.loop !103

end_hunk_0
