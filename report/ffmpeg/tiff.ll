Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tiff?download=true
inline.NumInlined: 42
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 51
begin_hunk_0_@decode_frame:bb.a
  %i.aom = load float, ptr %i.amo, align 8, !tbaa !62
  %i.aon = fmul nsz float %i.aoj, %i.aom          ; 6 uses
  store float %i.aon, ptr %i.amo, align 8, !tbaa !62
  %i.aoo = load float, ptr %i.dw, align 4, !tbaa !62
  %i.aop = fmul nsz float %i.aoj, %i.aoo          ; 4 uses
  store float %i.aop, ptr %i.dw, align 4, !tbaa !62
  %i.aoq = load float, ptr %i.amj, align 4, !tbaa !62 ; 3 uses
  %i.aor = load float, ptr %i.amp, align 4, !tbaa !62
  %i.aos = fmul nsz float %i.aoq, %i.aor
  store float %i.aos, ptr %i.amp, align 4, !tbaa !62
  %i.aot = load float, ptr %i.amq, align 8, !tbaa !62
  %i.aou = fmul nsz float %i.aoq, %i.aot
  store float %i.aou, ptr %i.amq, align 8, !tbaa !62
  %i.aov = load float, ptr %i.amr, align 4, !tbaa !62
  %i.aow = fmul nsz float %i.aoq, %i.aov          ; 3 uses
  store float %i.aow, ptr %i.amr, align 4, !tbaa !62
  %i.aox = load i32, ptr %i.aq, align 4, !tbaa !198
  %.not780 = icmp eq i32 %i.aox, 0
  br i1 %.not780, label %.preheader953, label %.preheader956

.preheader956:                                    ; preds = %.preheader957
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.o, i64 1260 ; 2 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.o, i64 1276 ; 2 uses
  %i.aoy = load <2 x float>, ptr %i.bg, align 4, !tbaa !62 ; 5 uses
  %i.aoz = load <2 x float>, ptr %i.bx, align 4, !tbaa !62 ; 3 uses
  %i.apa = shufflevector <3 x float> %i.aog, <3 x float> poison, <2 x i32> zeroinitializer
  %i.apb = fmul nsz <2 x float> %i.apa, %i.aoz
  %i.apc = fmul nsz <2 x float> %i.apb, %i.aoy
  %i.apd = fpext <2 x float> %i.apc to <2 x double>
  %i.ape = load <2 x float>, ptr %gep.1, align 4, !tbaa !62 ; 3 uses
  %i.apf = shufflevector <3 x float> %i.aog, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.apg = fmul nsz <2 x float> %i.apf, %i.ape
  %i.aph = fmul nsz <2 x float> %i.apg, %i.aoy
  %i.api = fpext <2 x float> %i.aph to <2 x double>
  %i.apj = fadd nsz <2 x double> %i.apd, %i.api
  %i.apk = load <2 x float>, ptr %gep.2, align 4, !tbaa !62 ; 3 uses
  %i.apl = shufflevector <3 x float> %i.aog, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.apm = fmul nsz <2 x float> %i.apl, %i.apk
  %i.apn = fmul nsz <2 x float> %i.apm, %i.aoy
  %i.apo = fpext <2 x float> %i.apn to <2 x double>
  %i.app = fadd nsz <2 x double> %i.apj, %i.apo
  store <2 x double> %i.app, ptr %i.k, align 16, !tbaa !76
  %i.apq = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %invariant.gep.2 = getelementptr inbounds nuw i8, ptr %i.o, i64 1252 ; 2 uses
  %i.apr = load float, ptr %i.amh, align 4, !tbaa !62 ; 4 uses
  %i.aps = load float, ptr %invariant.gep.2, align 4, !tbaa !62 ; 2 uses
  %gep.1.2 = getelementptr inbounds nuw i8, ptr %i.o, i64 1268 ; 2 uses
  %i.apt = load float, ptr %gep.1.2, align 4, !tbaa !62 ; 2 uses
  %gep.2.2 = getelementptr inbounds nuw i8, ptr %i.o, i64 1284
  %i.apu = load float, ptr %gep.2.2, align 4, !tbaa !62 ; 3 uses
  %i.apv = shufflevector <2 x float> %i.aoz, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.apw = shufflevector <3 x float> %i.aog, <3 x float> %i.apv, <2 x i32> <i32 0, i32 3>
  %i.apx = insertelement <2 x float> poison, float %i.aps, i64 0
  %i.apy = insertelement <2 x float> %i.apx, float %i.aol, i64 1
  %i.apz = fmul nsz <2 x float> %i.apw, %i.apy
  %i.aqa = shufflevector <2 x float> %i.aoy, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aqb = insertelement <2 x float> %i.aqa, float %i.apr, i64 0 ; 3 uses
  %i.aqc = fmul nsz <2 x float> %i.apz, %i.aqb
  %i.aqd = fpext <2 x float> %i.aqc to <2 x double>
  %i.aqe = shufflevector <2 x float> %i.ape, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.aqf = shufflevector <3 x float> %i.aog, <3 x float> %i.aqe, <2 x i32> <i32 1, i32 3>
  %i.aqg = insertelement <2 x float> poison, float %i.apt, i64 0
  %i.aqh = insertelement <2 x float> %i.aqg, float %i.aon, i64 1
  %i.aqi = fmul nsz <2 x float> %i.aqf, %i.aqh
  %i.aqj = fmul nsz <2 x float> %i.aqi, %i.aqb
  %i.aqk = fpext <2 x float> %i.aqj to <2 x double>
  %i.aql = fadd nsz <2 x double> %i.aqd, %i.aqk
  %i.aqm = shufflevector <2 x float> %i.apk, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.aqn = shufflevector <3 x float> %i.aog, <3 x float> %i.aqm, <2 x i32> <i32 2, i32 3>
  %i.aqo = insertelement <2 x float> poison, float %i.apu, i64 0
  %i.aqp = insertelement <2 x float> %i.aqo, float %i.aop, i64 1
  %i.aqq = fmul nsz <2 x float> %i.aqn, %i.aqp
  %i.aqr = fmul nsz <2 x float> %i.aqq, %i.aqb
  %i.aqs = fpext <2 x float> %i.aqr to <2 x double>
  %i.aqt = fadd nsz <2 x double> %i.aql, %i.aqs
  store <2 x double> %i.aqt, ptr %i.apq, align 16, !tbaa !76
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.aqv = extractelement <2 x float> %i.aoz, i64 1
  %i.aqw = fmul nsz float %i.aol, %i.aqv
  %i.aqx = extractelement <2 x float> %i.aoy, i64 1 ; 3 uses
  %i.aqy = fmul nsz float %i.aqw, %i.aqx
  %i.aqz = fpext nsz float %i.aqy to double
  %i.ara = extractelement <2 x float> %i.ape, i64 1
  %i.arb = fmul nsz float %i.aon, %i.ara
  %i.arc = fmul nsz float %i.arb, %i.aqx
  %i.ard = fpext nsz float %i.arc to double
  %i.are = fadd nsz double %i.aqz, %i.ard
  %i.arf = extractelement <2 x float> %i.apk, i64 1
  %i.arg = fmul nsz float %i.aop, %i.arf
  %i.arh = fmul nsz float %i.arg, %i.aqx
  %i.ari = fpext nsz float %i.arh to double
  %i.arj = fadd nsz double %i.are, %i.ari
  store double %i.arj, ptr %i.aqu, align 16, !tbaa !76
  %i.ark = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.arl = fmul nsz float %i.aol, %i.aps
  %i.arm = fmul nsz float %i.arl, %i.apr
  %i.arn = fpext nsz float %i.arm to double
  %i.aro = fmul nsz float %i.aon, %i.apt
  %i.arp = fmul nsz float %i.aro, %i.apr
  %i.arq = fpext nsz float %i.arp to double
  %i.arr = fadd nsz double %i.arn, %i.arq
  %i.ars = fmul nsz float %i.aop, %i.apu
  %i.art = fmul nsz float %i.ars, %i.apr
  %i.aru = fpext nsz float %i.art to double
  %i.arv = fadd nsz double %i.arr, %i.aru
  store double %i.arv, ptr %i.ark, align 8, !tbaa !76
  %i.arw = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.arx = load float, ptr %i.amr, align 4, !tbaa !62 ; 3 uses
  %i.ary = load <2 x float>, ptr %i.amp, align 4, !tbaa !62 ; 5 uses
  %i.arz = load float, ptr %i.amq, align 8, !tbaa !62
  %i.asa = load <2 x float>, ptr %i.bg, align 4, !tbaa !62 ; 3 uses
  %i.asb = load <2 x float>, ptr %i.bx, align 4, !tbaa !62 ; 2 uses
  %i.asc = shufflevector <2 x float> %i.asb, <2 x float> %i.ary, <2 x i32> <i32 0, i32 2>
  %i.asd = shufflevector <2 x float> %i.ary, <2 x float> %i.asb, <2 x i32> <i32 0, i32 3>
  %i.ase = fmul nsz <2 x float> %i.asc, %i.asd
  %i.asf = fmul nsz <2 x float> %i.ase, %i.asa
  %i.asg = fpext <2 x float> %i.asf to <2 x double>
  %i.ash = load <2 x float>, ptr %gep.1, align 4, !tbaa !62 ; 2 uses
  %i.asi = shufflevector <2 x float> %i.ash, <2 x float> %i.ary, <2 x i32> <i32 0, i32 3>
  %i.asj = shufflevector <2 x float> %i.ary, <2 x float> %i.ash, <2 x i32> <i32 1, i32 3>
  %i.ask = fmul nsz <2 x float> %i.asi, %i.asj
  %i.asl = fmul nsz <2 x float> %i.ask, %i.asa
  %i.asm = fpext <2 x float> %i.asl to <2 x double>
  %i.asn = fadd nsz <2 x double> %i.asg, %i.asm
  %i.aso = load <2 x float>, ptr %gep.2, align 4, !tbaa !62 ; 2 uses
  %i.asp = insertelement <2 x float> %i.aso, float %i.arx, i64 1
  %i.asq = insertelement <2 x float> %i.aso, float %i.arx, i64 0
  %i.asr = fmul nsz <2 x float> %i.asp, %i.asq
  %i.ass = fmul nsz <2 x float> %i.asr, %i.asa
  %i.ast = fpext <2 x float> %i.ass to <2 x double>
  %i.asu = fadd nsz <2 x double> %i.asn, %i.ast
  store <2 x double> %i.asu, ptr %i.arw, align 16, !tbaa !76
  %i.asv = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.asw = load float, ptr %i.amh, align 4, !tbaa !62 ; 3 uses
  %i.asx = load float, ptr %invariant.gep.2, align 4, !tbaa !62
  %i.asy = extractelement <2 x float> %i.ary, i64 0
  %i.asz = fmul nsz float %i.asy, %i.asx
  %i.ata = fmul nsz float %i.asz, %i.asw
  %i.atb = fpext nsz float %i.ata to double
  %i.atc = load float, ptr %gep.1.2, align 4, !tbaa !62
  %i.atd = fmul nsz float %i.arz, %i.atc
  %i.ate = fmul nsz float %i.atd, %i.asw
  %i.atf = fpext nsz float %i.ate to double
  %i.atg = fadd nsz double %i.atb, %i.atf
  %i.ath = fmul nsz float %i.arx, %i.apu
  %i.ati = fmul nsz float %i.ath, %i.asw
  %i.atj = fpext nsz float %i.ati to double
  %i.atk = fadd nsz double %i.atg, %i.atj
  store double %i.atk, ptr %i.asv, align 16, !tbaa !76
  call fastcc void @camera_xyz_coeff(ptr noundef nonnull %i.o, ptr noundef %i.k)
  br label %.loopexit954

.preheader953:                                    ; preds = %.preheader957
  %i.atl = extractelement <3 x float> %i.aog, i64 0 ; 2 uses
  %i.atm = fcmp nsz une float %i.atl, 0.000000e+00
  br i1 %i.atm, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %.preheader953
  %i.atn = load float, ptr %i.bi, align 4, !tbaa !62
  %i.ato = fdiv nsz float %i.atn, %i.atl
  store float %i.ato, ptr %i.bi, align 4, !tbaa !62
  br label %bb.jj

bb.jj:                                            ; preds = %.preheader953, %bb.ji
  %i.atp = fcmp nsz une float %i.aon, 0.000000e+00
  br i1 %i.atp, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  %i.atq = load float, ptr %i.amk, align 8, !tbaa !62
  %i.atr = fdiv nsz float %i.atq, %i.aon
  store float %i.atr, ptr %i.amk, align 8, !tbaa !62
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jj
  %i.ats = fcmp nsz une float %i.aow, 0.000000e+00
  br i1 %i.ats, label %bb.jm, label %.loopexit954

bb.jm:                                            ; preds = %bb.jl
  %i.att = load float, ptr %i.aml, align 4, !tbaa !62
  %i.atu = fdiv nsz float %i.att, %i.aow
  store float %i.atu, ptr %i.aml, align 4, !tbaa !62
  br label %.loopexit954

.loopexit954:                                     ; preds = %bb.jl, %bb.jm, %.preheader956
  %i.atv = load float, ptr %i.aml, align 4, !tbaa !62 ; 2 uses
  %i.atw = load <2 x float>, ptr %i.bi, align 4, !tbaa !62 ; 3 uses
  %i.atx = extractelement <2 x float> %i.atw, i64 0
  %i.aty = call nsz float @llvm.minnum.f32(float %i.atx, float f0x7F7FFFFF)
  %i.atz = extractelement <2 x float> %i.atw, i64 1
  %i.aua = call nsz float @llvm.minnum.f32(float %i.aty, float %i.atz)
  %i.aub = call nsz float @llvm.minnum.f32(float %i.aua, float %i.atv) ; 2 uses
  %i.auc = insertelement <2 x float> poison, float %i.aub, i64 0
  %i.aud = shufflevector <2 x float> %i.auc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aue = fdiv nsz <2 x float> %i.atw, %i.aud
  store <2 x float> %i.aue, ptr %i.bi, align 4, !tbaa !62
  %i.auf = fdiv nsz float %i.atv, %i.aub
  store float %i.auf, ptr %i.aml, align 4, !tbaa !62
  %i.aug = load i32, ptr %i.as, align 8, !tbaa !55 ; 2 uses
  %i.auh = load i32, ptr %i.at, align 4, !tbaa !56 ; 2 uses
  %i.aui = urem i32 %i.aug, %i.auh
  %i.auj = udiv i32 %i.aug, %i.auh                ; 2 uses
  %.not781 = icmp ne i32 %i.aui, 0
  %i.auk = add i32 %i.auj, -33
  %or.cond6 = icmp ult i32 %i.auk, -25
  %or.cond3973 = or i1 %.not781, %or.cond6
  br i1 %or.cond3973, label %.thread885, label %bb.jn

bb.jn:                                            ; preds = %.loopexit954
  %i.aul = load i32, ptr %i.ax, align 4, !tbaa !58 ; 2 uses
  %i.aum = icmp eq i32 %i.aul, 0
  br i1 %i.aum, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  %i.aun = zext nneg i32 %i.auj to i64
  %notmask = shl nsw i64 -1, %i.aun
  %i.auo = trunc i64 %notmask to i32
  %i.aup = xor i32 %i.auo, -1                     ; 2 uses
  store i32 %i.aup, ptr %i.ax, align 4, !tbaa !58
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jn
  %i.auq = phi i32 [ %i.aup, %bb.jo ], [ %i.aul, %bb.jn ] ; 2 uses
  %i.aur = uitofp nsz i32 %i.auq to float
  %i.aus = load float, ptr %i.be, align 4, !tbaa !62 ; 2 uses
  %i.aut = fcmp nsz ult float %i.aus, %i.aur
  br i1 %i.aut, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.auu = fpext nsz float %i.aus to double
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.20, double noundef %i.auu, i32 noundef %i.auq) #16
  br label %.thread885

.thread885:                                       ; preds = %.loopexit954, %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  br label %.loopexit973

bb.jr:                                            ; preds = %bb.jp
  %i.auv = load i32, ptr %i.cn, align 8, !tbaa !74
  %.not782 = icmp eq i32 %i.auv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  br i1 %.not782, label %bb.js, label %.loopexit973

bb.js:                                            ; preds = %._crit_edge1591, %bb.jr
  %i.auw = load i32, ptr %i.az, align 8, !tbaa !202 ; 2 uses
  %.not783 = icmp eq i32 %i.auw, 0
  %.pre = load i32, ptr %i.bm, align 4, !tbaa !208 ; 2 uses
  br i1 %.not783, label %bb.jt, label %bb.ka

bb.jt:                                            ; preds = %bb.js
  %.not784 = icmp eq i32 %.pre, 0
  br i1 %.not784, label %bb.ju, label %bb.jw

bb.ju:                                            ; preds = %bb.jt
  %i.aux = load i32, ptr %i.dl, align 8, !tbaa !213
  %.not785 = icmp eq i32 %i.aux, 0
  br i1 %.not785, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.21) #16
  br label %.loopexit973

bb.jw:                                            ; preds = %bb.ju, %bb.jt
  %i.auy = load i32, ptr %i.dc, align 4, !tbaa !69
  %.not787 = icmp eq i32 %i.auy, 0
  br i1 %.not787, label %bb.jx, label %bb.ka

bb.jx:                                            ; preds = %bb.jw
  %i.auz = load i32, ptr %i.dd, align 8, !tbaa !68
  %.not788 = icmp eq i32 %i.auz, 0
  br i1 %.not788, label %bb.jy, label %bb.ka

bb.jy:                                            ; preds = %bb.jx
  %i.ava = load i32, ptr %i.da, align 4, !tbaa !71
  %.not789 = icmp eq i32 %i.ava, 0
  br i1 %.not789, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  %i.avb = load i32, ptr %i.db, align 8, !tbaa !70
  %i.avc = icmp ne i32 %i.avb, 0
  br label %bb.ka

bb.ka:                                            ; preds = %bb.js, %bb.jz, %bb.jy, %bb.jx, %bb.jw
  %i.avd = phi i1 [ true, %bb.jy ], [ true, %bb.jx ], [ true, %bb.jw ], [ %i.avc, %bb.jz ], [ true, %bb.js ]
  %.not790 = icmp eq i32 %.pre, 0
  br i1 %.not790, label %bb.kb, label %bb.ki

bb.kb:                                            ; preds = %bb.ka
  %i.ave = load i32, ptr %i.dj, align 8, !tbaa !214
  %.not791 = icmp eq i32 %i.ave, 0
  br i1 %.not791, label %bb.kc, label %bb.ki

bb.kc:                                            ; preds = %bb.kb
  %i.avf = load i32, ptr %i.dl, align 8, !tbaa !213
  %.not792 = icmp eq i32 %i.avf, 0
  br i1 %.not792, label %bb.kd, label %bb.ki

bb.kd:                                            ; preds = %bb.kc
  %i.avg = load i32, ptr %i.dn, align 4, !tbaa !212
  %.not793 = icmp eq i32 %i.avg, 0
  br i1 %.not793, label %bb.ke, label %bb.ki

bb.ke:                                            ; preds = %bb.kd
  %i.avh = load i32, ptr %i.do, align 4, !tbaa !215
  %.not794 = icmp eq i32 %i.avh, 0
  br i1 %.not794, label %bb.kf, label %bb.ki

bb.kf:                                            ; preds = %bb.ke
  %i.avi = load i32, ptr %i.dk, align 8, !tbaa !217
  %.not795 = icmp eq i32 %i.avi, 0
  br i1 %.not795, label %bb.kg, label %bb.ki

bb.kg:                                            ; preds = %bb.kf
  %i.avj = load i32, ptr %i.di, align 4, !tbaa !216
  %.not796 = icmp eq i32 %i.avj, 0
  br i1 %.not796, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  %i.avk = load i32, ptr %i.bn, align 8, !tbaa !209
  %i.avl = icmp ne i32 %i.avk, 0
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka
  %i.avm = phi i1 [ true, %bb.kg ], [ true, %bb.kf ], [ true, %bb.ke ], [ true, %bb.kd ], [ true, %bb.kc ], [ true, %bb.kb ], [ true, %bb.ka ], [ %i.avl, %bb.kh ] ; 2 uses
  %or.cond8 = select i1 %i.avd, i1 %i.avm, i1 false
  br i1 %or.cond8, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  %i.avn = icmp ne i32 %i.auw, 0
  %i.avo = and i1 %spec.select, %i.avn            ; 2 uses
  %i.avp = select i1 %i.avo, i32 24, i32 16
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef %i.avp, ptr noundef nonnull @.str.22) #16
  br i1 %i.avo, label %bb.kk, label %.loopexit973

bb.kk:                                            ; preds = %bb.kj, %bb.ki
  %i.avq = call fastcc i32 @init_image(ptr noundef %i.o, ptr noundef %1) ; 2 uses
  %i.avr = icmp slt i32 %i.avq, 1
  br i1 %i.avr, label %.loopexit973, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.avs = load i32, ptr %i.az, align 8, !tbaa !202
  %i.avt = icmp eq i32 %i.avs, 0
  %or.cond10 = select i1 %i.avt, i1 true, i1 %i.avm
  br i1 %or.cond10, label %bb.km, label %bb.la

bb.km:                                            ; preds = %bb.kl
  %i.avu = load i32, ptr %i.dj, align 8, !tbaa !214
  %i.avv = icmp eq i32 %i.avu, 1
  br i1 %i.avv, label %bb.kn, label %bb.kp

bb.kn:                                            ; preds = %bb.km
  %i.avw = load i32, ptr %i.di, align 4, !tbaa !216
  %.not797 = icmp eq i32 %i.avw, 0
  br i1 %.not797, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %bb.kn
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.23) #16
  %i.avx = load i32, ptr %i.s, align 8, !tbaa !50
  %i.avy = load i32, ptr %i.dl, align 8, !tbaa !213
  %i.avz = sub nsw i32 %i.avx, %i.avy
  store i32 %i.avz, ptr %i.di, align 4, !tbaa !216
  br label %bb.kp

bb.kp:                                            ; preds = %bb.ko, %bb.kn, %bb.km
  %i.awa = load i32, ptr %i.bn, align 8, !tbaa !209 ; 4 uses
  %.not798 = icmp eq i32 %i.awa, 0
  br i1 %.not798, label %bb.kt, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.awb = load i32, ptr %i.s, align 8, !tbaa !50 ; 2 uses
  %.not799 = icmp ult i32 %i.awa, %i.awb
  br i1 %.not799, label %bb.kr, label %.loopexit973

bb.kr:                                            ; preds = %bb.kq
  %i.awc = sub nuw nsw i32 %i.awb, %i.awa         ; 2 uses
  %i.awd = icmp sgt i32 %i.awc, -1
  br i1 %i.awd, label %bytestream2_init.exit837, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 141) #16
  call void @abort() #17
  unreachable

bytestream2_init.exit837:                         ; preds = %bb.kr
  %i.awe = load ptr, ptr %i.q, align 8, !tbaa !49
  %i.awf = sext i32 %i.awa to i64
  %i.awg = getelementptr inbounds i8, ptr %i.awe, i64 %i.awf ; 3 uses
  store ptr %i.awg, ptr %7, align 8, !tbaa !51
  %i.awh = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.awg, ptr %i.awh, align 8, !tbaa !52
  %i.awi = zext nneg i32 %i.awc to i64
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awg, i64 %i.awi
  %i.awk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.awj, ptr %i.awk, align 8, !tbaa !53
  br label %bb.kt

bb.kt:                                            ; preds = %bytestream2_init.exit837, %bb.kp
  %i.awl = load i32, ptr %i.bm, align 4, !tbaa !208 ; 4 uses
  %.not800 = icmp eq i32 %i.awl, 0
  br i1 %.not800, label %bb.kx, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.awm = load i32, ptr %i.s, align 8, !tbaa !50 ; 2 uses
  %.not801 = icmp ult i32 %i.awl, %i.awm
  br i1 %.not801, label %bb.kv, label %.loopexit973

end_hunk_0
