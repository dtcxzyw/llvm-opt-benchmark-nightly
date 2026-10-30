Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/emit?download=true
inline.NumInlined: 362
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@emit_edge:bb.a
  %.not467.i = icmp eq i32 %i.ahg, 0
  br i1 %.not467.i, label %.loopexit540.i, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.ahh = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ahi = load ptr, ptr %6, align 8, !tbaa !199
  %i.ahj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ahk = load i64, ptr %i.ahj, align 8, !tbaa !198
  %i.ahl = getelementptr [16 x i8], ptr %i.ahi, i64 %i.ahk ; 2 uses
  %i.ahm = getelementptr i8, ptr %i.ahl, i64 -16
  %i.ahn = load double, ptr %i.ahh, align 8
  %i.aho = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ahp = load double, ptr %i.aho, align 8
  %i.ahq = load double, ptr %i.ahm, align 8
  %i.ahr = getelementptr i8, ptr %i.ahl, i64 -8
  %i.ahs = load double, ptr %i.ahr, align 8
  call void @arrow_gen(ptr noundef %0, i32 noundef 3, double %i.ahn, double %i.ahp, double %i.ahq, double %i.ahs, double noundef %i.zw, double noundef %i.zr, i32 noundef %i.ahg) #27
  br label %.loopexit540.i

bb.jz:                                            ; preds = %bb.jm
  %i.aht = load ptr, ptr %i.b, align 8, !tbaa !87 ; 3 uses
  br i1 %i.aai, label %bb.ka, label %bb.lh

bb.ka:                                            ; preds = %bb.jz
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 16 ; 2 uses
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !191
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8
  %i.ahx = load i64, ptr %i.ahw, align 8, !tbaa !195 ; 10 uses
  %.not532.i = icmp eq i64 %i.ahx, 0              ; 3 uses
  br i1 %.not532.i, label %gv_calloc.exit484.thread.i, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %mul.ov.i.i = icmp ugt i64 %i.ahx, 329406144173384850
  br i1 %mul.ov.i.i, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.ahy = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ahz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahy, ptr noundef nonnull @.str.47, i64 noundef %i.ahx, i64 noundef 56) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

bb.kd:                                            ; preds = %bb.kb
  %i.aia = call noalias ptr @calloc(i64 noundef %i.ahx, i64 noundef 56) #28 ; 3 uses
  %i.aib = icmp eq ptr %i.aia, null
  br i1 %i.aib, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.aic = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.aid = mul nuw i64 %i.ahx, 56
  %i.aie = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aic, ptr noundef nonnull @.str.45, i64 noundef %i.aid) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit484.thread.i:                       ; preds = %bb.ka
  %i.aif = call noalias ptr @calloc(i64 noundef 0, i64 noundef 56) #28
  %i.aig = call noalias ptr @calloc(i64 noundef 0, i64 noundef 56) #28
  br label %._crit_edge605.i

bb.kf:                                            ; preds = %bb.kd
  %i.aih = call noalias ptr @calloc(i64 noundef %i.ahx, i64 noundef 56) #28 ; 3 uses
  %i.aii = icmp eq ptr %i.aih, null
  br i1 %i.aii, label %bb.kg, label %.lr.ph604.i

bb.kg:                                            ; preds = %bb.kf
  %i.aij = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.aik = mul nuw i64 %i.ahx, 56
  %i.ail = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aij, ptr noundef nonnull @.str.45, i64 noundef %i.aik) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

.lr.ph604.i:                                      ; preds = %bb.kf
  %i.aim = uitofp i64 %.0410.i to double
  %i.ain = fadd nnan double %i.aim, 2.000000e+00
  %i.aio = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aip = fmul nnan double %i.ain, -5.000000e-01
  %i.aiq = insertelement <2 x double> poison, double %i.aip, i64 0
  %i.air = shufflevector <2 x double> %i.aiq, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %bb.ki

._crit_edge605.i:                                 ; preds = %._crit_edge596.i, %gv_calloc.exit484.thread.i
  %i.ais = phi ptr [ %i.aif, %gv_calloc.exit484.thread.i ], [ %i.aia, %._crit_edge596.i ] ; 3 uses
  %i.ait = phi ptr [ %i.aig, %gv_calloc.exit484.thread.i ], [ %i.aih, %._crit_edge596.i ] ; 3 uses
  %i.aiu = call noalias ptr @strdup(ptr noundef readonly %.0399521.i) #27 ; 3 uses
  %i.aiv = icmp eq ptr %i.aiu, null
  br i1 %i.aiv, label %bb.kh, label %gv_strdup.exit.i

bb.kh:                                            ; preds = %._crit_edge605.i
  %i.aiw = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.aix = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0399521.i) #31
  %i.aiy = add i64 %i.aix, 1
  %i.aiz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aiw, ptr noundef nonnull @.str.45, i64 noundef %i.aiy) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_strdup.exit.i:                                 ; preds = %._crit_edge605.i
  %i.aja = call ptr @strtok(ptr noundef nonnull %i.aiu, ptr noundef nonnull @.str.48) #27 ; 2 uses
  %.not455615.i = icmp eq ptr %i.aja, null
  br i1 %.not455615.i, label %._crit_edge622.i, label %.lr.ph621.i

bb.ki:                                            ; preds = %._crit_edge596.i, %.lr.ph604.i
  %.0409603.i = phi i64 [ 0, %.lr.ph604.i ], [ %i.anr, %._crit_edge596.i ] ; 4 uses
  %.sroa.8214.0602.i = phi double [ 0.000000e+00, %.lr.ph604.i ], [ %.sroa.8214.1.lcssa.i, %._crit_edge596.i ] ; 2 uses
  %.sroa.0210.0601.i = phi double [ 0.000000e+00, %.lr.ph604.i ], [ %.sroa.0210.1.lcssa.i, %._crit_edge596.i ] ; 2 uses
  %i.ajb = load ptr, ptr %i.ahu, align 8, !tbaa !191
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !196
  %i.ajd = getelementptr inbounds nuw [56 x i8], ptr %i.ajc, i64 %.0409603.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %i.ajd, i64 56, i1 false), !tbaa.struct !393
  %i.aje = load i64, ptr %i.aio, align 8, !tbaa !198 ; 10 uses
  %i.ajf = getelementptr inbounds nuw [56 x i8], ptr %i.aia, i64 %.0409603.i ; 3 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 8
  store i64 %i.aje, ptr %i.ajg, align 8, !tbaa !198
  %i.ajh = getelementptr inbounds nuw [56 x i8], ptr %i.aih, i64 %.0409603.i ; 3 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8
  store i64 %i.aje, ptr %i.aji, align 8, !tbaa !198
  %.not533.i = icmp eq i64 %i.aje, 0
  br i1 %.not533.i, label %gv_calloc.exit492.thread.i, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %mul.ov.i487.i = icmp ugt i64 %i.aje, 1152921504606846975
  br i1 %mul.ov.i487.i, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.ajj = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ajk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ajj, ptr noundef nonnull @.str.47, i64 noundef %i.aje, i64 noundef 16) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

bb.kl:                                            ; preds = %bb.kj
  %i.ajl = call noalias ptr @calloc(i64 noundef %i.aje, i64 noundef 16) #28 ; 4 uses
  %i.ajm = icmp eq ptr %i.ajl, null
  br i1 %i.ajm, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kl
  %i.ajn = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ajo = shl nuw i64 %i.aje, 4
  %i.ajp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ajn, ptr noundef nonnull @.str.45, i64 noundef %i.ajo) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit492.thread.i:                       ; preds = %bb.ki
  %i.ajq = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #28 ; 2 uses
  store ptr %i.ajq, ptr %i.ajf, align 8, !tbaa !199
  %i.ajr = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #28 ; 2 uses
  store ptr %i.ajr, ptr %i.ajh, align 8, !tbaa !199
  %i.ajs = load ptr, ptr %6, align 8, !tbaa !199  ; 2 uses
  %i.ajt = load <2 x double>, ptr %i.ajs, align 8, !tbaa !110
  br label %.lr.ph595.i

bb.kn:                                            ; preds = %bb.kl
  store ptr %i.ajl, ptr %i.ajf, align 8, !tbaa !199
  %i.aju = call noalias ptr @calloc(i64 noundef %i.aje, i64 noundef 16) #28 ; 4 uses
  %i.ajv = icmp eq ptr %i.aju, null
  br i1 %i.ajv, label %bb.ko, label %gv_calloc.exit492.i

bb.ko:                                            ; preds = %bb.kn
  %i.ajw = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ajx = shl nuw i64 %i.aje, 4
  %i.ajy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ajw, ptr noundef nonnull @.str.45, i64 noundef %i.ajx) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit492.i:                              ; preds = %bb.kn
  store ptr %i.aju, ptr %i.ajh, align 8, !tbaa !199
  %i.ajz = load ptr, ptr %6, align 8, !tbaa !199  ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ajz, i64 8
  %.sroa.8.0.copyload.i = load double, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !110
  %i.aka = load <2 x double>, ptr %i.ajz, align 8, !tbaa !110 ; 2 uses
  %i.akb = add nsw i64 %i.aje, -1                 ; 2 uses
  %.not635.i.a = icmp eq i64 %i.akb, 0
  %i.akc = insertelement <2 x double> %i.aka, double %.sroa.8.0.copyload.i, i64 1
  br i1 %.not635.i.a, label %._crit_edge596.i, label %.lr.ph595.i

.lr.ph595.i:                                      ; preds = %gv_calloc.exit492.i, %gv_calloc.exit492.thread.i
  %i.akd = phi i64 [ -1, %gv_calloc.exit492.thread.i ], [ %i.akb, %gv_calloc.exit492.i ]
  %i.ake = phi ptr [ %i.ajs, %gv_calloc.exit492.thread.i ], [ %i.ajz, %gv_calloc.exit492.i ] ; 3 uses
  %i.akf = phi ptr [ %i.ajq, %gv_calloc.exit492.thread.i ], [ %i.ajl, %gv_calloc.exit492.i ] ; 7 uses
  %i.akg = phi ptr [ %i.ajr, %gv_calloc.exit492.thread.i ], [ %i.aju, %gv_calloc.exit492.i ] ; 4 uses
  %i.akh = phi <2 x double> [ %i.ajt, %gv_calloc.exit492.thread.i ], [ %i.akc, %gv_calloc.exit492.i ]
  %.sroa.4100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akf, i64 8
  br label %bb.kp

bb.kp:                                            ; preds = %computeoffset_qr.exit.i, %.lr.ph595.i
  %.0408594.i = phi i64 [ 0, %.lr.ph595.i ], [ %i.aln, %computeoffset_qr.exit.i ] ; 7 uses
  %.sroa.8214.1591.i = phi double [ %.sroa.8214.0602.i, %.lr.ph595.i ], [ %i.amv, %computeoffset_qr.exit.i ]
  %.sroa.0210.1590.i = phi double [ %.sroa.0210.0601.i, %.lr.ph595.i ], [ %i.amu, %computeoffset_qr.exit.i ]
  %i.aki = phi <2 x double> [ %i.akh, %.lr.ph595.i ], [ %i.alp, %computeoffset_qr.exit.i ] ; 4 uses
  %i.akj = add nuw i64 %.0408594.i, 1             ; 3 uses
  %i.akk = getelementptr inbounds nuw [16 x i8], ptr %i.ake, i64 %i.akj
  %i.akl = load <2 x double>, ptr %i.akk, align 8, !tbaa !110 ; 6 uses
  %i.akm = icmp eq i64 %.0408594.i, 0
  br i1 %i.akm, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %foldExtExtBinop344 = fsub <2 x double> %i.aki, %i.akl
  %i.akn = extractelement <2 x double> %foldExtExtBinop344, i64 0 ; 3 uses
  %foldExtExtBinop346 = fsub <2 x double> %i.aki, %i.akl
  %i.ako = extractelement <2 x double> %foldExtExtBinop346, i64 1 ; 3 uses
  %i.akp = fmul double %i.ako, %i.ako
  %i.akq = call double @llvm.fmuladd.f64(double %i.akn, double %i.akn, double %i.akp)
  %i.akr = fadd double %i.akq, 1.000000e-04
  %i.aks = call double @llvm.sqrt.f64(double %i.akr)
  %i.akt = fdiv double 2.000000e+00, %i.aks       ; 2 uses
  %i.aku = fmul double %i.ako, %i.akt
  %i.akv = fneg double %i.akn
  %i.akw = fmul double %i.akt, %i.akv
  store double %i.aku, ptr %i.akf, align 8, !tbaa !110
  store double %i.akw, ptr %.sroa.4100.0..sroa_idx.i, align 8, !tbaa !110
  br label %bb.ks

bb.kr:                                            ; preds = %bb.kp
  %i.akx = getelementptr inbounds nuw [16 x i8], ptr %i.akf, i64 %.0408594.i ; 2 uses
  %i.aky = extractelement <2 x double> %i.akl, i64 0
  %i.akz = fsub double %.sroa.0210.1590.i, %i.aky ; 3 uses
  %i.ala = extractelement <2 x double> %i.akl, i64 1
  %i.alb = fsub double %.sroa.8214.1591.i, %i.ala ; 3 uses
  %i.alc = fmul double %i.alb, %i.alb
  %i.ald = call double @llvm.fmuladd.f64(double %i.akz, double %i.akz, double %i.alc)
  %i.ale = fadd double %i.ald, 1.000000e-04
  %i.alf = call double @llvm.sqrt.f64(double %i.ale)
  %i.alg = fdiv double 2.000000e+00, %i.alf       ; 2 uses
  %i.alh = fmul double %i.alb, %i.alg
  %i.ali = fneg double %i.akz
  %i.alj = fmul double %i.alg, %i.ali
  store double %i.alh, ptr %i.akx, align 8, !tbaa !110
  %.sroa.498.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akx, i64 8
  store double %i.alj, ptr %.sroa.498.0..sroa_idx.i, align 8, !tbaa !110
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %i.alk = add i64 %.0408594.i, 2                 ; 3 uses
  %i.all = getelementptr inbounds nuw [16 x i8], ptr %i.ake, i64 %i.alk
  %i.alm = load <2 x double>, ptr %i.all, align 8, !tbaa !110 ; 4 uses
  %i.aln = add i64 %.0408594.i, 3                 ; 4 uses
  %i.alo = getelementptr inbounds nuw [16 x i8], ptr %i.ake, i64 %i.aln
  %i.alp = load <2 x double>, ptr %i.alo, align 8, !tbaa !110 ; 3 uses
  %i.alq = getelementptr inbounds nuw [16 x i8], ptr %i.akf, i64 %i.akj ; 2 uses
  %i.alr = getelementptr inbounds nuw [16 x i8], ptr %i.akf, i64 %i.alk ; 2 uses
  %i.als = fsub <2 x double> %i.akl, %i.alm       ; 3 uses
  %i.alt = extractelement <2 x double> %i.als, i64 0
  %i.alu = extractelement <2 x double> %i.als, i64 1
  %i.alv = call double @hypot(double noundef %i.alt, double noundef %i.alu) #27 ; 2 uses
  %i.alw = fcmp olt double %i.alv, 1.000000e-04
  br i1 %i.alw, label %bb.kt, label %computeoffset_qr.exit.i

bb.kt:                                            ; preds = %bb.ks
  %i.alx = fsub <2 x double> %i.aki, %i.alp       ; 4 uses
  %foldExtExtBinop348 = fmul <2 x double> %i.alx, %i.alx
  %i.aly = extractelement <2 x double> %foldExtExtBinop348, i64 1
  %i.alz = extractelement <2 x double> %i.alx, i64 0 ; 2 uses
  %i.ama = call double @llvm.fmuladd.f64(double %i.alz, double %i.alz, double %i.aly)
  %i.amb = fadd double %i.ama, 1.000000e-04
  %i.amc = call double @llvm.sqrt.f64(double %i.amb)
  br label %computeoffset_qr.exit.i

computeoffset_qr.exit.i:                          ; preds = %bb.kt, %bb.ks
  %.022.i.i = phi double [ %i.amc, %bb.kt ], [ %i.alv, %bb.ks ]
  %i.amd = phi <2 x double> [ %i.alx, %bb.kt ], [ %i.als, %bb.ks ] ; 2 uses
  %i.ame = fdiv double 2.000000e+00, %.022.i.i
  %i.amf = getelementptr inbounds nuw [16 x i8], ptr %i.akf, i64 %.0408594.i
  %i.amg = getelementptr inbounds nuw [16 x i8], ptr %i.akg, i64 %.0408594.i
  %i.amh = getelementptr inbounds nuw [16 x i8], ptr %i.akg, i64 %i.akj
  %i.ami = getelementptr inbounds nuw [16 x i8], ptr %i.akg, i64 %i.alk
  %i.amj = insertelement <2 x double> poison, double %i.ame, i64 0
  %i.amk = shufflevector <2 x double> %i.amj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aml = fneg <2 x double> %i.amd
  %i.amm = shufflevector <2 x double> %i.amd, <2 x double> %i.aml, <2 x i32> <i32 1, i32 2>
  %i.amn = fmul <2 x double> %i.amk, %i.amm       ; 2 uses
  store <2 x double> %i.amn, ptr %i.alr, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.alq, ptr noundef nonnull align 8 dereferenceable(16) %i.alr, i64 16, i1 false), !tbaa.struct !120
  %i.amo = load <2 x double>, ptr %i.amf, align 8, !tbaa !110
  %i.amp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.air, <2 x double> %i.amo, <2 x double> %i.aki)
  store <2 x double> %i.amp, ptr %i.amg, align 8, !tbaa !110
  %i.amq = load <2 x double>, ptr %i.alq, align 8, !tbaa !110
  %i.amr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.air, <2 x double> %i.amq, <2 x double> %i.akl)
  store <2 x double> %i.amr, ptr %i.amh, align 8, !tbaa !110
  %i.ams = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.air, <2 x double> %i.amn, <2 x double> %i.alm)
  store <2 x double> %i.ams, ptr %i.ami, align 8, !tbaa !110
  %i.amt = icmp ult i64 %i.aln, %i.akd
  %i.amu = extractelement <2 x double> %i.alm, i64 0 ; 2 uses
  %i.amv = extractelement <2 x double> %i.alm, i64 1 ; 2 uses
  br i1 %i.amt, label %bb.kp, label %._crit_edge596.i, !llvm.loop !352

._crit_edge596.i:                                 ; preds = %computeoffset_qr.exit.i, %gv_calloc.exit492.i
  %i.amw = phi ptr [ %i.ajl, %gv_calloc.exit492.i ], [ %i.akf, %computeoffset_qr.exit.i ]
  %i.amx = phi ptr [ %i.aju, %gv_calloc.exit492.i ], [ %i.akg, %computeoffset_qr.exit.i ]
  %.sroa.0210.1.lcssa.i = phi double [ %.sroa.0210.0601.i, %gv_calloc.exit492.i ], [ %i.amu, %computeoffset_qr.exit.i ] ; 2 uses
  %.sroa.8214.1.lcssa.i = phi double [ %.sroa.8214.0602.i, %gv_calloc.exit492.i ], [ %i.amv, %computeoffset_qr.exit.i ] ; 2 uses
  %.0408.lcssa.i = phi i64 [ 0, %gv_calloc.exit492.i ], [ %i.aln, %computeoffset_qr.exit.i ] ; 2 uses
  %i.amy = phi <2 x double> [ %i.aka, %gv_calloc.exit492.i ], [ %i.alp, %computeoffset_qr.exit.i ] ; 3 uses
  %i.amz = getelementptr inbounds nuw [16 x i8], ptr %i.amw, i64 %.0408.lcssa.i
  %i.ana = extractelement <2 x double> %i.amy, i64 0
  %i.anb = fsub double %.sroa.0210.1.lcssa.i, %i.ana ; 3 uses
  %i.anc = extractelement <2 x double> %i.amy, i64 1
  %i.and = fsub double %.sroa.8214.1.lcssa.i, %i.anc ; 3 uses
  %i.ane = fmul double %i.and, %i.and
  %i.anf = call double @llvm.fmuladd.f64(double %i.anb, double %i.anb, double %i.ane)
  %i.ang = fadd double %i.anf, 1.000000e-04
  %i.anh = call double @llvm.sqrt.f64(double %i.ang)
  %i.ani = fdiv double 2.000000e+00, %i.anh
  %i.anj = fneg double %i.anb
  %i.ank = getelementptr inbounds nuw [16 x i8], ptr %i.amx, i64 %.0408.lcssa.i
  %i.anl = insertelement <2 x double> poison, double %i.ani, i64 0
  %i.anm = shufflevector <2 x double> %i.anl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ann = insertelement <2 x double> poison, double %i.and, i64 0
  %i.ano = insertelement <2 x double> %i.ann, double %i.anj, i64 1
  %i.anp = fmul <2 x double> %i.anm, %i.ano       ; 2 uses
  store <2 x double> %i.anp, ptr %i.amz, align 8, !tbaa !110
  %i.anq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.air, <2 x double> %i.anp, <2 x double> %i.amy)
  store <2 x double> %i.anq, ptr %i.ank, align 8, !tbaa !110
  %i.anr = add nuw nsw i64 %.0409603.i, 1         ; 2 uses
  %exitcond664.not.i = icmp eq i64 %i.anr, %i.ahx
  br i1 %exitcond664.not.i, label %._crit_edge605.i, label %bb.ki, !llvm.loop !353

.lr.ph621.i:                                      ; preds = %gv_strdup.exit.i, %._crit_edge614.i
  %.0371620.i = phi i32 [ %i.anz, %._crit_edge614.i ], [ 0, %gv_strdup.exit.i ] ; 3 uses
  %.1380619.i = phi ptr [ %i.aoa, %._crit_edge614.i ], [ %i.aja, %gv_strdup.exit.i ] ; 2 uses
  %.0401618.i = phi ptr [ %spec.select468.i, %._crit_edge614.i ], [ %.0399521.i, %gv_strdup.exit.i ]
  %.0403617.i = phi ptr [ %.2405.i, %._crit_edge614.i ], [ %.0399521.i, %gv_strdup.exit.i ]
  %.0406616.i = phi ptr [ %.1407.i, %._crit_edge614.i ], [ %.0399521.i, %gv_strdup.exit.i ] ; 2 uses
  %i.ans = load i8, ptr %.1380619.i, align 1, !tbaa !14
  %.not462.i = icmp eq i8 %i.ans, 0
  %spec.store.select3.i = select i1 %.not462.i, ptr @.str.27, ptr %.1380619.i ; 7 uses
  %.not463.i = icmp eq ptr %spec.store.select3.i, %.0406616.i
  br i1 %.not463.i, label %bb.kw, label %bb.ku

bb.ku:                                            ; preds = %.lr.ph621.i
  %i.ant = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 156
  %i.anv = load i8, ptr %i.anu, align 4, !tbaa !392
  %i.anw = and i8 %i.anv, 3
  %.not464.i = icmp eq i8 %i.anw, 0
  br i1 %.not464.i, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %spec.store.select3.i) #27
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef nonnull %spec.store.select3.i) #27
  br label %bb.kw

bb.kw:                                            ; preds = %bb.kv, %bb.ku, %.lr.ph621.i
  %.1407.i = phi ptr [ %.0406616.i, %.lr.ph621.i ], [ %spec.store.select3.i, %bb.kv ], [ %spec.store.select3.i, %bb.ku ]
  %i.anx = icmp eq i32 %.0371620.i, 0
  %spec.select468.i = select i1 %i.anx, ptr %spec.store.select3.i, ptr %.0401618.i ; 2 uses
  %i.any = icmp samesign ult i32 %.0371620.i, 2
  %.2405.i = select i1 %i.any, ptr %spec.store.select3.i, ptr %.0403617.i ; 2 uses
  br i1 %.not532.i, label %._crit_edge614.i, label %.lr.ph613.i

._crit_edge614.i:                                 ; preds = %._crit_edge609.i, %bb.kw
  %i.anz = add nuw nsw i32 %.0371620.i, 1
  %i.aoa = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.48) #27 ; 2 uses
  %.not455.i = icmp eq ptr %i.aoa, null
  br i1 %.not455.i, label %._crit_edge622.i, label %.lr.ph621.i, !llvm.loop !354

.lr.ph613.i:                                      ; preds = %bb.kw, %._crit_edge609.i
  %.0398611.i = phi i64 [ %i.aox, %._crit_edge609.i ], [ 0, %bb.kw ] ; 3 uses
  %i.aob = getelementptr inbounds nuw [56 x i8], ptr %i.ait, i64 %.0398611.i ; 2 uses
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !199 ; 10 uses
  %i.aod = getelementptr inbounds nuw [56 x i8], ptr %i.ais, i64 %.0398611.i
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !199 ; 9 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aob, i64 8
  %i.aog = load i64, ptr %i.aof, align 8, !tbaa !198 ; 9 uses
  %.not637.i = icmp eq i64 %i.aog, 0
  br i1 %.not637.i, label %._crit_edge609.i, label %.lr.ph608.i.preheader

.lr.ph608.i.preheader:                            ; preds = %.lr.ph613.i
  %min.iters.check = icmp ult i64 %i.aog, 4
  br i1 %min.iters.check, label %.lr.ph608.i.preheader350, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph608.i.preheader
  %scevgep = getelementptr i8, ptr %i.aoc, i64 -8
  %i.aoh = shl i64 %i.aog, 4                      ; 4 uses
  %scevgep328 = getelementptr i8, ptr %scevgep, i64 %i.aoh
  %scevgep329 = getelementptr i8, ptr %i.aoe, i64 -8
  %scevgep330 = getelementptr i8, ptr %scevgep329, i64 %i.aoh
  %scevgep331 = getelementptr i8, ptr %i.aoc, i64 8
  %scevgep332 = getelementptr i8, ptr %i.aoc, i64 %i.aoh
  %scevgep333 = getelementptr i8, ptr %i.aoe, i64 8
  %scevgep334 = getelementptr i8, ptr %i.aoe, i64 %i.aoh
  %bound0 = icmp ult ptr %i.aoc, %scevgep330
  %bound1 = icmp ult ptr %i.aoe, %scevgep328
  %found.conflict = and i1 %bound0, %bound1
  %bound0335 = icmp ult ptr %scevgep331, %scevgep334
  %bound1336 = icmp ult ptr %scevgep333, %scevgep332
  %found.conflict337 = and i1 %bound0335, %bound1336
  %conflict.rdx = or i1 %found.conflict, %found.conflict337
  br i1 %conflict.rdx, label %.lr.ph608.i.preheader350, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aog, -2                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aoi = or disjoint i64 %index, 1              ; 2 uses
  %i.aoj = getelementptr inbounds nuw [16 x i8], ptr %i.aoe, i64 %index
  %i.aok = getelementptr inbounds nuw [16 x i8], ptr %i.aoe, i64 %i.aoi
  %wide.load = load <2 x double>, ptr %i.aoj, align 8
  %wide.load338 = load <2 x double>, ptr %i.aok, align 8
  %i.aol = getelementptr inbounds nuw [16 x i8], ptr %i.aoc, i64 %index ; 2 uses
  %i.aom = getelementptr inbounds nuw [16 x i8], ptr %i.aoc, i64 %i.aoi ; 2 uses
  %wide.load339 = load <2 x double>, ptr %i.aol, align 8
  %wide.load340 = load <2 x double>, ptr %i.aom, align 8
  %i.aon = fadd <2 x double> %wide.load, %wide.load339
  %i.aoo = fadd <2 x double> %wide.load338, %wide.load340
  store <2 x double> %i.aon, ptr %i.aol, align 8
  store <2 x double> %i.aoo, ptr %i.aom, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aop = icmp eq i64 %index.next, %n.vec
  br i1 %i.aop, label %middle.block, label %vector.body, !llvm.loop !355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aog, %n.vec
  br i1 %cmp.n, label %._crit_edge609.i, label %.lr.ph608.i.preheader350

.lr.ph608.i.preheader350:                         ; preds = %vector.memcheck, %.lr.ph608.i.preheader, %middle.block
  %.0394606.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph608.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.0394606.i.ph, 1
  %xtraiter = and i64 %i.aog, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph608.i.prol.loopexit, label %.lr.ph608.i.prol

.lr.ph608.i.prol:                                 ; preds = %.lr.ph608.i.preheader350
  %i.aoq = getelementptr inbounds nuw [16 x i8], ptr %i.aoe, i64 %.0394606.i.ph
  %i.aor = getelementptr inbounds nuw [16 x i8], ptr %i.aoc, i64 %.0394606.i.ph ; 2 uses
  %i.aos = load <2 x double>, ptr %i.aoq, align 8, !tbaa !110
  %i.aot = load <2 x double>, ptr %i.aor, align 8, !tbaa !110
  %i.aou = fadd <2 x double> %i.aos, %i.aot
  store <2 x double> %i.aou, ptr %i.aor, align 8, !tbaa !110
  %i.aov = or disjoint i64 %.0394606.i.ph, 1
  br label %.lr.ph608.i.prol.loopexit

.lr.ph608.i.prol.loopexit:                        ; preds = %.lr.ph608.i.prol, %.lr.ph608.i.preheader350
  %.0394606.i.unr = phi i64 [ %.0394606.i.ph, %.lr.ph608.i.preheader350 ], [ %i.aov, %.lr.ph608.i.prol ]
  %i.aow = icmp eq i64 %i.aog, %.neg
  br i1 %i.aow, label %._crit_edge609.i, label %.lr.ph608.i

._crit_edge609.i:                                 ; preds = %.lr.ph608.i.prol.loopexit, %.lr.ph608.i, %middle.block, %.lr.ph613.i
  call void @gvrender_beziercurve(ptr noundef %0, ptr noundef %i.aoc, i64 noundef %i.aog, i32 noundef 0) #27
  %i.aox = add nuw i64 %.0398611.i, 1             ; 2 uses
  %exitcond666.not.i.a = icmp eq i64 %i.aox, %i.ahx
  br i1 %exitcond666.not.i.a, label %._crit_edge614.i, label %.lr.ph613.i, !llvm.loop !356

.lr.ph608.i:                                      ; preds = %.lr.ph608.i.prol.loopexit, %.lr.ph608.i
  %.0394606.i = phi i64 [ %i.apj, %.lr.ph608.i ], [ %.0394606.i.unr, %.lr.ph608.i.prol.loopexit ] ; 4 uses
  %i.aoy = getelementptr inbounds nuw [16 x i8], ptr %i.aoe, i64 %.0394606.i
  %i.aoz = getelementptr inbounds nuw [16 x i8], ptr %i.aoc, i64 %.0394606.i ; 2 uses
  %i.apa = load <2 x double>, ptr %i.aoy, align 8, !tbaa !110
  %i.apb = load <2 x double>, ptr %i.aoz, align 8, !tbaa !110
  %i.apc = fadd <2 x double> %i.apa, %i.apb
  store <2 x double> %i.apc, ptr %i.aoz, align 8, !tbaa !110
  %i.apd = add nuw i64 %.0394606.i, 1             ; 2 uses
  %i.ape = getelementptr inbounds nuw [16 x i8], ptr %i.aoe, i64 %i.apd
  %i.apf = getelementptr inbounds nuw [16 x i8], ptr %i.aoc, i64 %i.apd ; 2 uses
  %i.apg = load <2 x double>, ptr %i.ape, align 8, !tbaa !110
  %i.aph = load <2 x double>, ptr %i.apf, align 8, !tbaa !110
  %i.api = fadd <2 x double> %i.apg, %i.aph
  store <2 x double> %i.api, ptr %i.apf, align 8, !tbaa !110
  %i.apj = add nuw i64 %.0394606.i, 2             ; 2 uses
  %exitcond665.not.i.1 = icmp eq i64 %i.apj, %i.aog
  br i1 %exitcond665.not.i.1, label %._crit_edge609.i, label %.lr.ph608.i, !llvm.loop !357

._crit_edge622.i:                                 ; preds = %._crit_edge614.i, %gv_strdup.exit.i
  %.0403.lcssa.i = phi ptr [ %.0399521.i, %gv_strdup.exit.i ], [ %.2405.i, %._crit_edge614.i ] ; 4 uses
  %.0401.lcssa.i = phi ptr [ %.0399521.i, %gv_strdup.exit.i ], [ %spec.select468.i, %._crit_edge614.i ] ; 3 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.apl = load i32, ptr %i.apk, align 8, !tbaa !394 ; 3 uses
  %.not456.i = icmp eq i32 %i.apl, 0
  br i1 %.not456.i, label %bb.lb, label %bb.kx

bb.kx:                                            ; preds = %._crit_edge622.i
  %.not457.i = icmp eq ptr %.0403.lcssa.i, null
  br i1 %.not457.i, label %bb.la, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.apm = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 156
  %i.apo = load i8, ptr %i.apn, align 4, !tbaa !392
  %i.app = and i8 %i.apo, 3
  %.not458.i = icmp eq i8 %i.app, 0
  br i1 %.not458.i, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %.0403.lcssa.i) #27
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef nonnull %.0403.lcssa.i) #27
  %.pre675.i.a = load i32, ptr %i.apk, align 8, !tbaa !394
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ky, %bb.kx
  %i.apq = phi i32 [ %i.apl, %bb.ky ], [ %.pre675.i.a, %bb.kz ], [ %i.apl, %bb.kx ]
  %i.apr = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aps = load ptr, ptr %6, align 8, !tbaa !199  ; 2 uses
  %i.apt = load double, ptr %i.apr, align 8
  %i.apu = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.apv = load double, ptr %i.apu, align 8
  %i.apw = load double, ptr %i.aps, align 8
  %i.apx = getelementptr inbounds nuw i8, ptr %i.aps, i64 8
  %i.apy = load double, ptr %i.apx, align 8
  call void @arrow_gen(ptr noundef %0, i32 noundef 2, double %i.apt, double %i.apv, double %i.apw, double %i.apy, double noundef %i.zw, double noundef %i.zr, i32 noundef %i.apq) #27
  br label %bb.lb
end_hunk_0
begin_hunk_1_@late_nnstring
; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #21

declare void @gvrender_end_node(ptr noundef) local_unnamed_addr #2

declare i32 @agisdirected(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @overlap_label(ptr noundef, ptr noundef byval(%struct.boxf) align 8) local_unnamed_addr #2

declare zeroext i1 @mapbool(ptr noundef) local_unnamed_addr #2

declare hidden void @gv_list_detach_(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @gvrender_begin_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @approx_bezier(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %2 = alloca [4 x %struct.pointf_s], align 16    ; 4 uses
  %3 = alloca [4 x %struct.pointf_s], align 16    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load double, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load double, ptr %i.d, align 8
  %i.f = load double, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load double, ptr %i.g, align 8
  %i.i = load double, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load double, ptr %i.j, align 8
  %i.l = tail call double @ptToLine2(double %i.c, double %i.e, double %i.f, double %i.h, double %i.i, double %i.k) #27
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load double, ptr %0, align 8
  %i.o = load double, ptr %i.d, align 8
  %i.p = load double, ptr %i.a, align 8
  %i.q = load double, ptr %i.g, align 8
  %i.r = load double, ptr %i.m, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load double, ptr %i.s, align 8
  %i.u = tail call double @ptToLine2(double %i.n, double %i.o, double %i.p, double %i.q, double %i.r, double %i.t) #27
  %i.v = fcmp olt double %i.l, 4.000000e+00
  %i.w = fcmp olt double %i.u, 4.000000e+00
  %i.x = select i1 %i.v, i1 %i.w, i1 false
  br i1 %i.x, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.y, align 8, !tbaa !109
  %i.z = icmp eq i64 %.val, 0
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !120
  %i.ab = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %1, i64 noundef 16) #27
  %i.ac = load ptr, ptr %1, align 8, !tbaa !14
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !120
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !120
  %i.af = tail call i64 @gv_list_append_slot_(ptr noundef nonnull %1, i64 noundef 16) #27
  %i.ag = load ptr, ptr %1, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !120
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ai = call { double, double } @Bezier(ptr noundef nonnull %0, double noundef 5.000000e-01, ptr noundef nonnull %2, ptr noundef nonnull %3) #27 ; 0 uses
  call fastcc void @approx_bezier(ptr noundef %2, ptr noundef %1)
  call fastcc void @approx_bezier(ptr noundef %3, ptr noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

declare { i64, ptr } @taper(ptr noundef, ptr noundef, double noundef) local_unnamed_addr #2

declare void @arrow_gen(ptr noundef, i32 noundef, double, double, double, double, double noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @gv_list_reserve_(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @gv_list_sort_(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @compare_corners(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #22 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !203
  %i.b = load i64, ptr %1, align 8, !tbaa !203
  %.0 = tail call i32 @llvm.ucmp.i32.i64(i64 %i.a, i64 %i.b)
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define internal fastcc void @splitBSpline(ptr %.0.val, i64 %.8.val, double noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %.8.val, -1                      ; 3 uses
  %i.b = udiv i64 %i.a, 3                         ; 8 uses
  %.off = add i64 %.8.val, -4
  %i.c = icmp ult i64 %.off, 3
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 4, ptr %i.d, align 8, !tbaa !198
  %i.e = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 4, i64 noundef 16) #28 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %gv_calloc.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.45, i64 noundef 64) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit:                                   ; preds = %bb.b
  store ptr %i.e, ptr %1, align 8, !tbaa !199
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.i, align 8, !tbaa !198
  %i.j = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 4, i64 noundef 16) #28 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %gv_calloc.exit79

bb.d:                                             ; preds = %gv_calloc.exit
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.45, i64 noundef 64) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit79:                                 ; preds = %gv_calloc.exit
  store ptr %i.j, ptr %2, align 8, !tbaa !199
  %i.n = load ptr, ptr %1, align 8, !tbaa !199
  %i.o = tail call { double, double } @Bezier(ptr noundef %.0.val, double noundef %0, ptr noundef %i.n, ptr noundef nonnull %i.j) #27 ; 0 uses
  br label %bb.s

bb.e:                                             ; preds = %bb.a
  %i.p = icmp ugt i64 %i.a, 2
  br i1 %i.p, label %bb.f, label %.thread59

bb.f:                                             ; preds = %bb.e
  %mul.ov.i = icmp ugt i64 %i.a, 6917529027641081855
  br i1 %mul.ov.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.47, i64 noundef %i.b, i64 noundef 8) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #28 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.v = shl nuw i64 %i.b, 3
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.45, i64 noundef %i.v) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.h
  %.pre = load double, ptr %.0.val, align 8, !tbaa !121
  br label %.lr.ph

.thread59:                                        ; preds = %bb.e
  %i.x = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #28
  %i.y = fmul double %0, 0.000000e+00
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 4, ptr %i.z, align 8, !tbaa !198
  br label %bb.m

.lr.ph13.preheader:                               ; preds = %.lr.ph
  %i.aa = fmul double %0, %i.ar                   ; 3 uses
  br label %.lr.ph13

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ab = phi double [ %i.ah, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.0729 = phi i64 [ %i.as, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0738 = phi double [ %i.ar, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.0757 = phi ptr [ %i.ag, %.lr.ph ], [ %.0.val, %.lr.ph.preheader ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0757, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %.0757, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %.0757, i64 40
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !126 ; 2 uses
  %4 = load <4 x double>, ptr %i.ac, align 8, !tbaa !110 ; 3 uses
  %i.af = load double, ptr %3, align 8, !tbaa !121
  %5 = shufflevector <4 x double> %4, <4 x double> poison, <2 x i32> <i32 2, i32 1> ; 2 uses
  %6 = insertelement <2 x double> %5, double %i.ab, i64 0
  %7 = shufflevector <4 x double> %4, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %8 = fsub <2 x double> %6, %7                   ; 2 uses
  %9 = shufflevector <4 x double> %4, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %10 = insertelement <2 x double> %5, double %i.ae, i64 1
  %11 = fsub <2 x double> %9, %10                 ; 2 uses
  %12 = fmul <2 x double> %11, %11
  %13 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %8, <2 x double> %12)
  %14 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %13) ; 2 uses
  %shift = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %14, %shift
  %15 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %.0757, i64 48 ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !121 ; 2 uses
  %i.ai = fsub double %i.af, %i.ah                ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0757, i64 56
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !126
  %i.al = fsub double %i.ae, %i.ak                ; 2 uses
  %i.am = fmul double %i.al, %i.al
  %i.an = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ai, double %i.am)
  %i.ao = tail call double @llvm.sqrt.f64(double %i.an)
  %i.ap = fadd double %15, %i.ao                  ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0729
  store double %i.ap, ptr %i.aq, align 8, !tbaa !110
  %i.ar = fadd double %.0738, %i.ap               ; 2 uses
  %i.as = add nuw nsw i64 %.0729, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %i.b
  br i1 %exitcond.not, label %.lr.ph13.preheader, label %.lr.ph, !llvm.loop !492

.lr.ph13:                                         ; preds = %.lr.ph13.preheader, %bb.j
  %.07111 = phi i64 [ %i.ax, %bb.j ], [ 0, %.lr.ph13.preheader ] ; 3 uses
  %.17410 = phi double [ %i.av, %bb.j ], [ 0.000000e+00, %.lr.ph13.preheader ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.07111
  %i.au = load double, ptr %i.at, align 8, !tbaa !110
  %i.av = fadd double %.17410, %i.au              ; 4 uses
  %i.aw = fcmp ult double %i.av, %i.aa
  br i1 %i.aw, label %bb.j, label %._crit_edge14

bb.j:                                             ; preds = %.lr.ph13
  %i.ax = add nuw nsw i64 %.07111, 1              ; 2 uses
  %exitcond35.not = icmp eq i64 %i.ax, %i.b
  br i1 %exitcond35.not, label %._crit_edge14, label %.lr.ph13, !llvm.loop !493

._crit_edge14:                                    ; preds = %bb.j, %.lr.ph13
  %.071.lcssa = phi i64 [ %.07111, %.lr.ph13 ], [ %i.b, %bb.j ] ; 3 uses
  %i.ay = mul i64 %.071.lcssa, 3                  ; 2 uses
  %i.az = add i64 %i.ay, 4                        ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !198
  %.not = icmp eq i64 %i.az, 0
  br i1 %.not, label %.thread2, label %bb.k

.thread2:                                         ; preds = %._crit_edge14
  %i.bb = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #28
  br label %gv_calloc.exit84

bb.k:                                             ; preds = %._crit_edge14
  %mul.ov.i83 = icmp ugt i64 %i.az, 1152921504606846975
  br i1 %mul.ov.i83, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.47, i64 noundef %i.az, i64 noundef 16) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

bb.m:                                             ; preds = %.thread59, %bb.k
  %i.be = phi double [ %i.y, %.thread59 ], [ %i.aa, %bb.k ]
  %i.bf = phi ptr [ %i.x, %.thread59 ], [ %i.s, %bb.k ]
  %.071.lcssa5664 = phi i64 [ 0, %.thread59 ], [ %.071.lcssa, %bb.k ]
  %.25863 = phi double [ 0.000000e+00, %.thread59 ], [ %i.av, %bb.k ]
  %i.bg = phi i64 [ 0, %.thread59 ], [ %i.ay, %bb.k ]
  %i.bh = phi i64 [ 4, %.thread59 ], [ %i.az, %bb.k ] ; 2 uses
  %i.bi = phi ptr [ %i.z, %.thread59 ], [ %i.ba, %bb.k ]
  %i.bj = tail call noalias ptr @calloc(i64 noundef %i.bh, i64 noundef 16) #28 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.n, label %gv_calloc.exit84

bb.n:                                             ; preds = %bb.m
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bm = shl nuw i64 %i.bh, 4
  %i.bn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bl, ptr noundef nonnull @.str.45, i64 noundef %i.bm) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit84:                                 ; preds = %.thread2, %bb.m
  %i.bo = phi ptr [ %i.ba, %.thread2 ], [ %i.bi, %bb.m ] ; 2 uses
  %i.bp = phi i64 [ -4, %.thread2 ], [ %i.bg, %bb.m ] ; 2 uses
  %.257 = phi double [ %i.av, %.thread2 ], [ %.25863, %bb.m ]
  %.071.lcssa55 = phi i64 [ %.071.lcssa, %.thread2 ], [ %.071.lcssa5664, %bb.m ] ; 2 uses
  %i.bq = phi ptr [ %i.s, %.thread2 ], [ %i.bf, %bb.m ] ; 2 uses
  %i.br = phi double [ %i.aa, %.thread2 ], [ %i.be, %bb.m ]
  %i.bs = phi ptr [ %i.bb, %.thread2 ], [ %i.bj, %bb.m ]
  store ptr %i.bs, ptr %1, align 8, !tbaa !199
  %i.bt = sub nuw nsw i64 %i.b, %.071.lcssa55
  %i.bu = mul nuw i64 %i.bt, 3
  %i.bv = add i64 %i.bu, 1                        ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !198
  %.not6 = icmp eq i64 %i.bv, 0
  br i1 %.not6, label %.thread4, label %bb.o

.thread4:                                         ; preds = %gv_calloc.exit84
  %i.bx = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #28
  br label %gv_calloc.exit88

bb.o:                                             ; preds = %gv_calloc.exit84
  %mul.ov.i87 = icmp ugt i64 %i.bv, 1152921504606846975
  br i1 %mul.ov.i87, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.by = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.by, ptr noundef nonnull @.str.47, i64 noundef %i.bv, i64 noundef 16) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ca = tail call noalias ptr @calloc(i64 noundef %i.bv, i64 noundef 16) #28 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.r, label %gv_calloc.exit88

bb.r:                                             ; preds = %bb.q
  %i.cc = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.cd = shl nuw i64 %i.bv, 4
  %i.ce = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cc, ptr noundef nonnull @.str.45, i64 noundef %i.cd) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit88:                                 ; preds = %.thread4, %bb.q
  %i.cf = phi ptr [ %i.bx, %.thread4 ], [ %i.ca, %bb.q ]
  store ptr %i.cf, ptr %2, align 8, !tbaa !199
  %i.cg = load i64, ptr %i.bo, align 8, !tbaa !198
  %.not31 = icmp eq i64 %i.cg, 0
  br i1 %.not31, label %._crit_edge22, label %.lr.ph21

.lr.ph21:                                         ; preds = %gv_calloc.exit88, %.lr.ph21
  %.07020 = phi i64 [ %i.ck, %.lr.ph21 ], [ 0, %gv_calloc.exit88 ] ; 4 uses
  %i.ch = load ptr, ptr %1, align 8, !tbaa !199
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %.07020
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.07020
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !120
  %i.ck = add nuw i64 %.07020, 1                  ; 2 uses
  %i.cl = load i64, ptr %i.bo, align 8, !tbaa !198
  %i.cm = icmp ult i64 %i.ck, %i.cl
  br i1 %i.cm, label %.lr.ph21, label %._crit_edge22.loopexit, !llvm.loop !494

._crit_edge22.loopexit:                           ; preds = %.lr.ph21
  %.pre36 = load i64, ptr %i.bw, align 8, !tbaa !198
  %i.cn = add i64 %.07020, -3
  br label %._crit_edge22

._crit_edge22:                                    ; preds = %._crit_edge22.loopexit, %gv_calloc.exit88
  %i.co = phi i64 [ %i.bv, %gv_calloc.exit88 ], [ %.pre36, %._crit_edge22.loopexit ]
  %.070.lcssa = phi i64 [ -4, %gv_calloc.exit88 ], [ %i.cn, %._crit_edge22.loopexit ]
  %.not32 = icmp eq i64 %i.co, 0
  br i1 %.not32, label %._crit_edge28, label %.lr.ph27

.lr.ph27:                                         ; preds = %._crit_edge22, %.lr.ph27
  %.025 = phi i64 [ %i.cr, %.lr.ph27 ], [ %.070.lcssa, %._crit_edge22 ] ; 2 uses
  %.124 = phi i64 [ %i.ct, %.lr.ph27 ], [ 0, %._crit_edge22 ] ; 2 uses
  %i.cp = load ptr, ptr %2, align 8, !tbaa !199
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %.124
  %i.cr = add i64 %.025, 1
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.025
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i64 16, i1 false), !tbaa.struct !120
  %i.ct = add nuw i64 %.124, 1                    ; 2 uses
  %i.cu = load i64, ptr %i.bw, align 8, !tbaa !198
  %i.cv = icmp ult i64 %i.ct, %i.cu
  br i1 %i.cv, label %.lr.ph27, label %._crit_edge28, !llvm.loop !495

._crit_edge28:                                    ; preds = %.lr.ph27, %._crit_edge22
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.071.lcssa55
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !110 ; 2 uses
  %i.cy = fsub double %.257, %i.cx
  %i.cz = fsub double %i.br, %i.cy
  %i.da = fdiv double %i.cz, %i.cx
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %i.bp
  %i.dc = load ptr, ptr %1, align 8, !tbaa !199
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.bp
  %i.de = load ptr, ptr %2, align 8, !tbaa !199
  %i.df = tail call { double, double } @Bezier(ptr noundef %i.db, double noundef %i.da, ptr noundef %i.dd, ptr noundef %i.de) #27 ; 0 uses
  tail call void @free(ptr noundef %i.bq) #27
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge28, %gv_calloc.exit79
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @forfunc(double noundef %0, double noundef %1, double noundef %2) #23 {
bb.a:
  %i.a = fdiv double %0, %1
  %i.b = fsub double 1.000000e+00, %i.a
  %i.c = fmul double %2, %i.b
  %i.d = fmul double %i.c, 5.000000e-01
  ret double %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @revfunc(double noundef %0, double noundef %1, double noundef %2) #23 {
bb.a:
  %i.a = fdiv double %0, %1
  %i.b = fmul double %i.a, %2
  %i.c = fmul double %i.b, 5.000000e-01
  ret double %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @bothfunc(double noundef %0, double noundef %1, double noundef %2) #23 {
bb.a:
  %i.a = fdiv double %0, %1                       ; 3 uses
  %i.b = fcmp ugt double %i.a, 5.000000e-01
  %i.c = fsub double 1.000000e+00, %i.a
  %.pn = select i1 %i.b, double %i.c, double %i.a
  %.0 = fmul double %2, %.pn
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @nonefunc(double %0, double %1, double noundef %2) #23 {
bb.a:
  %i.a = fmul double %2, 5.000000e-01
  ret double %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nodeIntersect(ptr noundef %0, double %1, double %2, i1 noundef zeroext %3, ptr nofree noundef readnone captures(address) %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 5 uses
  br i1 %3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.09 = phi ptr [ %i.d, %bb.b ], [ %4, %bb.a ]
  br i1 %5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.f = load i16, ptr %i.e, align 8
  %.not = trunc i16 %i.f to i1
  %i.g = icmp ne ptr %.09, null
  %or.cond = or i1 %i.g, %.not
  br i1 %or.cond, label %.thread, label %map_point.exit

.thread:                                          ; preds = %bb.c, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.i = load i32, ptr %i.h, align 8, !tbaa !68   ; 3 uses
  %i.j = and i32 %i.i, 4259840
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %map_point.exit, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.k = and i32 %i.i, 131072
  %.not22.i = icmp eq i32 %i.k, 0                 ; 3 uses
  %spec.select.i = select i1 %.not22.i, i32 2, i32 0
  %spec.select28.i = select i1 %.not22.i, i64 4, i64 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 356
  store i32 %spec.select.i, ptr %i.l, align 4, !tbaa !122
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 2 uses
  store i64 %spec.select28.i, ptr %i.m, align 8, !tbaa !123
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 368 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65
  tail call void @free(ptr noundef %i.o) #27
  %i.p = load i64, ptr %i.m, align 8, !tbaa !123  ; 5 uses
  %.not25.i = icmp eq i64 %i.p, 0
  br i1 %.not25.i, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.q = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #28
  br label %gv_calloc.exit.i

bb.f:                                             ; preds = %bb.e
  %mul.ov.i.i = icmp ugt i64 %i.p, 1152921504606846975
  br i1 %mul.ov.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.47, i64 noundef %i.p, i64 noundef 16) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.t = tail call noalias ptr @calloc(i64 noundef %i.p, i64 noundef 16) #28 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %gv_calloc.exit.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.w = shl nuw i64 %i.p, 4
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.45, i64 noundef %i.w) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.h, %.thread.i
  %i.y = phi ptr [ %i.q, %.thread.i ], [ %i.t, %bb.h ] ; 6 uses
  store ptr %i.y, ptr %i.n, align 8, !tbaa !65
  %i.z = insertelement <2 x double> poison, double %1, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %2, i64 1 ; 2 uses
  %i.ab = fadd <2 x double> %i.aa, splat (double -3.000000e+00)
  store <2 x double> %i.ab, ptr %i.y, align 8, !tbaa !110
  %i.ac = fadd <2 x double> %i.aa, splat (double 3.000000e+00)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x double> %i.ac, ptr %i.ad, align 8, !tbaa !110
  %i.ae = and i32 %i.i, 8192
  %.not23.i = icmp eq i32 %i.ae, 0
  br i1 %.not23.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %gv_calloc.exit.i
  %i.af = tail call ptr @gvrender_ptf_A(ptr noundef nonnull %0, ptr noundef nonnull %i.y, ptr noundef nonnull %i.y, i64 noundef 2) #27 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %gv_calloc.exit.i
  br i1 %.not22.i, label %bb.l, label %map_point.exit

bb.l:                                             ; preds = %bb.k
  tail call void @rect2poly(ptr noundef nonnull %i.y) #27
  br label %map_point.exit

map_point.exit:                                   ; preds = %bb.l, %bb.k, %.thread, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_edge_label(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 6, 12) %2, i32 noundef range(i32 0, 2) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 {
bb.a:
  %9 = alloca [3 x %struct.pointf_s], align 16    ; 8 uses
  %10 = alloca %struct.agxbuf, align 8            ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.e = load i8, ptr %i.d, align 1, !tbaa !187, !range !145, !noundef !181
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %agxbuse.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %2, label %bb.g [
    i32 11, label %bb.h
    i32 7, label %bb.e
    i32 6, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.38, i32 noundef 2904) #29 ; 0 uses
  tail call void @abort() #33
  unreachable

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.e
  %.0 = phi ptr [ @.str.105, %bb.f ], [ @.str.104, %bb.e ], [ @.str.103, %bb.d ]
  call void (ptr, ptr, ...) @agxbprint(ptr noundef nonnull %10, ptr noundef nonnull @.str.106, ptr noundef nonnull %7, ptr noundef nonnull %.0)
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 31 ; 5 uses
  %.val.i = load i8, ptr %i.i, align 1, !tbaa !14 ; 3 uses
  switch i8 %.val.i, label %agxblen.exit.i.i [
    i8 -1, label %bb.i
    i8 31, label %agxbclear.exit.thread.i
  ]

agxblen.exit.i.i:                                 ; preds = %bb.h
  %i.j = zext i8 %.val.i to i64
  br label %agxbsizeof.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !14
  br label %agxbsizeof.exit.i.i
end_hunk_1
begin_hunk_2_@emit_edge_label:bb.a
  %i.ao = fadd <2 x double> %i.am, %i.an
  %i.ap = fsub <2 x double> %i.am, %i.an          ; 2 uses
  %i.aq = shufflevector <2 x double> %i.ao, <2 x double> %i.ap, <2 x i32> <i32 0, i32 3> ; 2 uses
  store <2 x double> %i.aq, ptr %9, align 16, !tbaa !110
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 16
  %foldExtExtBinop = fsub <2 x double> %i.aq, %i.al
  %i.as = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.as, ptr %i.ar, align 16, !tbaa !110
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.at = extractelement <2 x double> %i.ap, i64 1
  store double %i.at, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !110
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.av = extractelement <2 x double> %i.am, i64 0
  %i.aw = extractelement <2 x double> %i.am, i64 1
  %i.ax = call { double, double } @dotneato_closest(ptr noundef nonnull %8, double %i.av, double %i.aw) #27 ; 2 uses
  %i.ay = extractvalue { double, double } %i.ax, 0
  %i.az = extractvalue { double, double } %i.ax, 1
  store double %i.ay, ptr %i.au, align 16, !tbaa !110
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 40
  store double %i.az, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !110
  %i.ba = load ptr, ptr %0, align 8, !tbaa !70
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 528
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !169
  call void @gvrender_set_style(ptr noundef nonnull %0, ptr noundef %i.bc) #27
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !497
  call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef %i.be) #27
  call void @gvrender_polyline(ptr noundef nonnull %0, ptr noundef nonnull %9, i64 noundef 3) #27
  br label %emit_attachment.exit

emit_attachment.exit:                             ; preds = %bb.p, %gv_isspace.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.r

bb.r:                                             ; preds = %emit_attachment.exit, %bb.n
  br i1 %or.cond, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  br i1 %.not46, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call fastcc void @map_label(ptr noundef nonnull %0, ptr noundef %1)
  call void @gvrender_begin_anchor(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %.042) #27
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @gvrender_end_anchor(ptr noundef nonnull %0) #27
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.u
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 31
  %.val50 = load i8, ptr %i.bf, align 1, !tbaa !14
  %i.bg = icmp eq i8 %.val50, -1
  br i1 %i.bg, label %bb.w, label %agxbfree.exit

bb.w:                                             ; preds = %bb.v
  %.val = load ptr, ptr %10, align 8
  call void @free(ptr noundef %.val) #27
  br label %agxbfree.exit

agxbfree.exit:                                    ; preds = %bb.v, %bb.w
  %i.bh = load ptr, ptr %i.z, align 8, !tbaa !39
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i32 %i.ac, ptr %i.bi, align 8, !tbaa !148
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %bb.b, %agxbfree.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  ret void
}

declare void @gvrender_end_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @map_label(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  %i.c = and i32 %i.b, 4259840
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 3 uses
  %i.f = and i32 %i.b, 131072
  %.not28 = icmp eq i32 %i.f, 0                   ; 3 uses
  %spec.select = select i1 %.not28, i32 2, i32 0
  %spec.select34 = select i1 %.not28, i64 4, i64 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 356
  store i32 %spec.select, ptr %i.g, align 4, !tbaa !122
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 360 ; 2 uses
  store i64 %spec.select34, ptr %i.h, align 8, !tbaa !123
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 368 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65
  tail call void @free(ptr noundef %i.j) #27
  %i.k = load i64, ptr %i.h, align 8, !tbaa !123  ; 5 uses
  %.not31 = icmp eq i64 %i.k, 0
  br i1 %.not31, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.l = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #28
  br label %gv_calloc.exit

bb.c:                                             ; preds = %bb.b
  %mul.ov.i = icmp ugt i64 %i.k, 1152921504606846975
  br i1 %mul.ov.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.47, i64 noundef %i.k, i64 noundef 16) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = tail call noalias ptr @calloc(i64 noundef %i.k, i64 noundef 16) #28 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %gv_calloc.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.r = shl nuw i64 %i.k, 4
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.45, i64 noundef %i.r) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit:                                   ; preds = %.thread, %bb.e
  %i.t = phi ptr [ %i.l, %.thread ], [ %i.o, %bb.e ] ; 6 uses
  store ptr %i.t, ptr %i.i, align 8, !tbaa !65
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load <2 x double>, ptr %i.u, align 8, !tbaa !110 ; 2 uses
  %i.x = load <2 x double>, ptr %i.v, align 8, !tbaa !110
  %i.y = fmul <2 x double> %i.x, splat (double 5.000000e-01) ; 2 uses
  %i.z = fsub <2 x double> %i.w, %i.y
  store <2 x double> %i.z, ptr %i.t, align 8, !tbaa !110
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = fadd <2 x double> %i.w, %i.y
  store <2 x double> %i.ab, ptr %i.aa, align 8, !tbaa !110
  %i.ac = and i32 %i.b, 8192
  %.not29 = icmp eq i32 %i.ac, 0
  br i1 %.not29, label %bb.g, label %bb.h

bb.g:                                             ; preds = %gv_calloc.exit
  %i.ad = tail call ptr @gvrender_ptf_A(ptr noundef nonnull %0, ptr noundef nonnull %i.t, ptr noundef nonnull %i.t, i64 noundef 2) #27 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %gv_calloc.exit
  br i1 %.not28, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @rect2poly(ptr noundef nonnull %i.t) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.a
  ret void
}

declare { double, double } @dotneato_closest(ptr noundef, double, double) local_unnamed_addr #2

declare void @gvrender_end_cluster(ptr noundef) local_unnamed_addr #2

declare void @arrow_bb(ptr dead_on_unwind writable sret(%struct.boxf) align 8, double, double, double, double, double noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #13

declare ptr @agnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #24

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nofree nounwind }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(0,1) }
attributes #29 = { cold nounwind }
attributes #30 = { noreturn }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { cold }
attributes #33 = { noreturn nounwind }
attributes #34 = { nounwind allocsize(1) }
attributes #35 = { cold noreturn nounwind }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !114}
!1 = distinct !{!1, !114}
!2 = distinct !{!2, !114}
!3 = distinct !{!3, !114}
!4 = distinct !{null}
!5 = distinct !{!5, !114}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!10, !10, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"p1 _ZTS5GVC_s", !15, i64 0}
!19 = !{!"p1 _ZTS5GVJ_s", !15, i64 0}
!20 = !{!"p1 _ZTS10GVCOMMON_s", !15, i64 0}
!21 = !{!"p1 _ZTS11obj_state_s", !15, i64 0}
!22 = !{!"p1 omnipotent char", !15, i64 0}
!23 = !{!"long", !10, i64 0}
!24 = !{!"p1 _ZTS17gvrender_engine_s", !15, i64 0}
!25 = !{!"gvplugin_active_render_s", !24, i64 0, !11, i64 8, !15, i64 16, !22, i64 24}
!26 = !{!"p1 _ZTS17gvdevice_engine_s", !15, i64 0}
!27 = !{!"gvplugin_active_device_s", !26, i64 0, !11, i64 8, !15, i64 16, !22, i64 24}
!28 = !{!"p1 _ZTS20gvloadimage_engine_s", !15, i64 0}
!29 = !{!"gvplugin_active_loadimage_t", !28, i64 0, !11, i64 8, !22, i64 16}
!30 = !{!"p1 _ZTS20gvdevice_callbacks_s", !15, i64 0}
!31 = !{!"double", !10, i64 0}
!32 = !{!"pointf_s", !31, i64 0, !31, i64 8}
!33 = !{!"_Bool", !10, i64 0}
!34 = !{!"", !11, i64 0, !11, i64 4}
!35 = !{!"", !32, i64 0, !32, i64 16}
!36 = !{!"", !34, i64 0, !34, i64 8}
!37 = !{!"p1 _ZTS21gvevent_key_binding_s", !15, i64 0}
!38 = !{!"GVJ_s", !18, i64 0, !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 32, !22, i64 40, !11, i64 48, !22, i64 56, !22, i64 64, !16, i64 72, !22, i64 80, !23, i64 88, !23, i64 96, !22, i64 104, !11, i64 112, !25, i64 120, !27, i64 152, !29, i64 184, !30, i64 208, !32, i64 216, !33, i64 232, !15, i64 240, !11, i64 248, !15, i64 256, !33, i64 264, !22, i64 272, !11, i64 280, !11, i64 284, !11, i64 288, !34, i64 292, !34, i64 300, !34, i64 308, !34, i64 316, !34, i64 324, !11, i64 332, !35, i64 336, !32, i64 368, !35, i64 384, !35, i64 416, !32, i64 448, !32, i64 464, !31, i64 480, !11, i64 488, !32, i64 496, !35, i64 512, !32, i64 544, !32, i64 560, !11, i64 576, !11, i64 580, !36, i64 584, !36, i64 600, !32, i64 616, !32, i64 632, !32, i64 648, !33, i64 664, !33, i64 665, !33, i64 666, !33, i64 667, !33, i64 668, !10, i64 669, !32, i64 672, !32, i64 688, !15, i64 704, !15, i64 712, !22, i64 720, !22, i64 728, !15, i64 736, !37, i64 744, !23, i64 752, !15, i64 760}
!39 = !{!38, !21, i64 32}
!40 = !{!"color_s", !10, i64 0, !11, i64 32}
!41 = !{!"any p2 pointer", !15, i64 0}
!42 = !{!"p2 omnipotent char", !41, i64 0}
!43 = !{!"p1 _ZTS8pointf_s", !15, i64 0}
!44 = !{!"p1 long", !15, i64 0}
!45 = !{!"obj_state_s", !21, i64 0, !11, i64 8, !10, i64 16, !11, i64 24, !40, i64 32, !40, i64 72, !40, i64 112, !11, i64 152, !31, i64 160, !11, i64 168, !11, i64 172, !31, i64 176, !42, i64 184, !31, i64 192, !31, i64 200, !31, i64 208, !22, i64 216, !22, i64 224, !22, i64 232, !22, i64 240, !22, i64 248, !22, i64 256, !22, i64 264, !22, i64 272, !22, i64 280, !22, i64 288, !22, i64 296, !22, i64 304, !22, i64 312, !22, i64 320, !22, i64 328, !22, i64 336, !22, i64 344, !11, i64 352, !11, i64 352, !11, i64 352, !11, i64 352, !11, i64 352, !11, i64 352, !11, i64 352, !11, i64 352, !11, i64 353, !11, i64 353, !11, i64 356, !23, i64 360, !43, i64 368, !23, i64 376, !44, i64 384, !43, i64 392, !11, i64 400, !43, i64 408, !11, i64 416, !43, i64 424}
!46 = !{!45, !21, i64 0}
!47 = !{!11, !11, i64 0}
!48 = !{i64 0, i64 32, !14, i64 32, i64 4, !47}
!49 = !{!45, !31, i64 176}
!50 = !{!45, !11, i64 152}
!51 = !{!45, !11, i64 168}
!52 = !{!45, !22, i64 256}
!53 = !{!45, !22, i64 248}
!54 = !{!45, !22, i64 264}
!55 = !{!45, !22, i64 272}
!56 = !{!45, !22, i64 280}
!57 = !{!45, !22, i64 288}
!58 = !{!45, !22, i64 296}
!59 = !{!45, !22, i64 304}
!60 = !{!45, !22, i64 312}
!61 = !{!45, !22, i64 320}
!62 = !{!45, !22, i64 328}
!63 = !{!45, !22, i64 336}
!64 = !{!45, !22, i64 344}
!65 = !{!45, !43, i64 368}
!66 = !{!45, !43, i64 392}
!67 = !{!45, !44, i64 384}
!68 = !{!38, !11, i64 280}
!69 = !{!45, !22, i64 216}
!70 = !{!38, !18, i64 0}
!71 = !{!"GVCOMMON_s", !42, i64 0, !22, i64 8, !11, i64 16, !33, i64 20, !33, i64 21, !15, i64 24, !42, i64 32, !42, i64 40, !11, i64 48, !15, i64 56, !11, i64 64}
!72 = !{!"p1 _ZTS5GVG_s", !15, i64 0}
!73 = !{!"p1 _ZTS18gvplugin_package_s", !15, i64 0}
!74 = !{!"dtdisc_s_", !11, i64 0, !11, i64 4, !11, i64 8, !15, i64 16, !15, i64 24, !15, i64 32}
!75 = !{!"p1 _ZTS5dt_s_", !15, i64 0}
!76 = !{!"p1 _ZTS21gvtextlayout_engine_s", !15, i64 0}
!77 = !{!"gvplugin_active_textlayout_s", !76, i64 0, !11, i64 8, !22, i64 16}
!78 = !{!"p1 _ZTS8Agraph_s", !15, i64 0}
!79 = !{!"p1 _ZTS17gvlayout_engine_s", !15, i64 0}
!80 = !{!"gvplugin_active_layout_s", !79, i64 0, !11, i64 8, !15, i64 16, !22, i64 24}
!81 = !{!"p1 int", !15, i64 0}
!82 = !{!"GVC_s", !71, i64 0, !22, i64 72, !33, i64 80, !42, i64 88, !11, i64 96, !72, i64 104, !72, i64 112, !10, i64 120, !10, i64 160, !73, i64 200, !15, i64 208, !74, i64 216, !75, i64 256, !77, i64 264, !19, i64 288, !19, i64 296, !78, i64 304, !80, i64 312, !22, i64 344, !19, i64 352, !22, i64 360, !32, i64 368, !32, i64 384, !32, i64 400, !34, i64 416, !35, i64 424, !11, i64 456, !33, i64 460, !33, i64 461, !33, i64 462, !22, i64 464, !22, i64 472, !22, i64 480, !42, i64 488, !11, i64 496, !81, i64 504, !22, i64 512, !31, i64 520, !42, i64 528, !40, i64 536, !11, i64 576}
!83 = !{!82, !78, i64 304}
!84 = !{!"Agtag_s", !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !23, i64 8}
!85 = !{!"p1 _ZTS7Agrec_s", !15, i64 0}
!86 = !{!"Agobj_s", !84, i64 0, !85, i64 16}
!87 = !{!86, !85, i64 16}
!88 = !{!"Agrec_s", !22, i64 0, !85, i64 8}
!89 = !{!"p1 _ZTS8layout_t", !15, i64 0}
!90 = !{!"p1 _ZTS11textlabel_t", !15, i64 0}
!91 = !{!"short", !10, i64 0}
!92 = !{!"p2 _ZTS8Agnode_s", !41, i64 0}
!93 = !{!"p2 double", !41, i64 0}
!94 = !{!"any p3 pointer", !41, i64 0}
!95 = !{!"p3 double", !94, i64 0}
!96 = !{!"p2 _ZTS8Agraph_s", !41, i64 0}
!97 = !{!"p1 _ZTS8Agnode_s", !15, i64 0}
!98 = !{!"p1 _ZTS6rank_t", !15, i64 0}
!99 = !{!"nlist_t", !92, i64 0, !23, i64 8}
!100 = !{!"Agraphinfo_t", !88, i64 0, !89, i64 16, !90, i64 24, !35, i64 32, !10, i64 64, !10, i64 128, !10, i64 129, !33, i64 130, !10, i64 131, !11, i64 132, !31, i64 136, !31, i64 144, !91, i64 152, !15, i64 160, !18, i64 168, !15, i64 176, !92, i64 184, !11, i64 192, !93, i64 200, !93, i64 208, !93, i64 216, !95, i64 224, !91, i64 232, !91, i64 234, !11, i64 236, !96, i64 240, !78, i64 248, !97, i64 256, !98, i64 264, !78, i64 272, !11, i64 280, !97, i64 288, !97, i64 296, !99, i64 304, !97, i64 320, !97, i64 328, !11, i64 336, !11, i64 340, !33, i64 344, !10, i64 345, !11, i64 348, !11, i64 352, !11, i64 356, !97, i64 360, !97, i64 368, !97, i64 376, !92, i64 384, !33, i64 392, !10, i64 393, !10, i64 394, !10, i64 395, !33, i64 396}
!101 = !{!100, !89, i64 16}
!102 = !{!"layout_t", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !32, i64 32, !32, i64 48, !32, i64 64, !33, i64 80, !33, i64 81, !33, i64 82, !11, i64 84, !15, i64 88, !22, i64 96}
!103 = !{!38, !11, i64 288}
!104 = !{!82, !42, i64 488}
!105 = !{!22, !22, i64 0}
!106 = !{!38, !11, i64 324}
!107 = !{!38, !11, i64 328}
!108 = !{!"", !15, i64 0, !23, i64 8, !23, i64 16, !23, i64 24}
!109 = !{!108, !23, i64 16}
!110 = !{!31, !31, i64 0}
!111 = !{!"Ppoly_t", !43, i64 0, !23, i64 8}
!112 = !{!111, !43, i64 0}
!113 = !{!111, !23, i64 8}
!114 = !{!"llvm.loop.mustprogress"}
!115 = !{!"", !22, i64 0, !31, i64 8, !33, i64 16}
!116 = !{!"", !10, i64 0, !15, i64 32, !115, i64 40}
!117 = !{!116, !15, i64 32}
!118 = !{!115, !31, i64 8}
!119 = !{!15, !15, i64 0}
!120 = !{i64 0, i64 8, !110, i64 8, i64 8, !110}
!121 = !{!32, !31, i64 0}
!122 = !{!45, !11, i64 356}
!123 = !{!45, !23, i64 360}
!124 = !{!35, !31, i64 16}
!125 = !{!35, !31, i64 0}
!126 = !{!32, !31, i64 8}
!127 = !{!35, !31, i64 24}
!128 = !{!35, !31, i64 8}
!129 = !{i64 0, i64 8, !110, i64 8, i64 8, !110, i64 16, i64 8, !110, i64 24, i64 8, !110}
!130 = !{!102, !15, i64 88}
!131 = !{!"p1 _ZTS8_xdot_op", !15, i64 0}
!132 = !{!"", !23, i64 0, !23, i64 8, !131, i64 16, !15, i64 24, !11, i64 32}
!133 = !{!132, !23, i64 0}
!134 = !{!132, !131, i64 16}
!135 = !{!"_xdot_op", !11, i64 0, !10, i64 8, !15, i64 80}
!136 = !{!"", !135, i64 0, !35, i64 88, !15, i64 120}
!137 = !{!136, !11, i64 0}
!138 = !{!136, !15, i64 120}
!139 = !{!"p1 _ZTS9dtdisc_s_", !15, i64 0}
!140 = !{!"p1 _ZTS9dtlink_s_", !15, i64 0}
!141 = !{!"", !11, i64 0, !140, i64 8, !10, i64 16, !11, i64 24, !11, i64 28, !11, i64 32}
!142 = !{!"dt_s_", !15, i64 0, !139, i64 8, !141, i64 16, !15, i64 56, !11, i64 64, !75, i64 72, !75, i64 80, !15, i64 88}
!143 = !{!142, !15, i64 0}
!144 = !{!38, !31, i64 480}
!145 = !{i8 0, i8 2}
!146 = !{!38, !11, i64 488}
!147 = !{!45, !11, i64 8}
!148 = !{!45, !11, i64 24}
!149 = !{!100, !90, i64 24}
!150 = !{!"p1 _ZTS10shape_desc", !15, i64 0}
!151 = !{!"p1 double", !15, i64 0}
!152 = !{!"p2 _ZTS8Agedge_s", !41, i64 0}
!153 = !{!"elist", !152, i64 0, !23, i64 8}
!154 = !{!"p1 _ZTS8Agedge_s", !15, i64 0}
!155 = !{!"Agnodeinfo_t", !88, i64 0, !150, i64 16, !15, i64 24, !32, i64 32, !31, i64 48, !31, i64 56, !35, i64 64, !31, i64 96, !31, i64 104, !31, i64 112, !31, i64 120, !31, i64 128, !90, i64 136, !90, i64 144, !15, i64 152, !10, i64 160, !10, i64 161, !33, i64 162, !10, i64 163, !11, i64 164, !11, i64 168, !11, i64 172, !151, i64 176, !31, i64 184, !10, i64 192, !33, i64 193, !97, i64 200, !97, i64 208, !10, i64 216, !23, i64 224, !10, i64 232, !10, i64 233, !10, i64 234, !97, i64 240, !97, i64 248, !153, i64 256, !153, i64 272, !153, i64 288, !153, i64 304, !153, i64 320, !78, i64 336, !11, i64 344, !97, i64 352, !11, i64 360, !11, i64 364, !31, i64 368, !153, i64 376, !153, i64 392, !153, i64 408, !153, i64 424, !154, i64 440, !11, i64 448, !11, i64 452, !11, i64 456, !10, i64 464}
!156 = !{!155, !10, i64 160}
!157 = !{!82, !11, i64 496}
!158 = !{!38, !11, i64 284}
end_hunk_2
