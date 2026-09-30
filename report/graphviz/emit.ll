Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/emit?download=true
inline.NumInlined: 362
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@emit_edge:bb.a
  %i.aif = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.aig = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aif, ptr noundef nonnull @.str.47, i64 noundef %i.aie, i64 noundef 56) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

bb.kd:                                            ; preds = %bb.kb
  %i.aih = call noalias ptr @calloc(i64 noundef %i.aie, i64 noundef 56) #28 ; 3 uses
  %i.aii = icmp eq ptr %i.aih, null
  br i1 %i.aii, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.aij = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.aik = mul nuw i64 %i.aie, 56
  %i.ail = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aij, ptr noundef nonnull @.str.45, i64 noundef %i.aik) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit484.thread.i:                       ; preds = %bb.ka
  %i.aim = call noalias ptr @calloc(i64 noundef 0, i64 noundef 56) #28
  %i.ain = call noalias ptr @calloc(i64 noundef 0, i64 noundef 56) #28
  br label %._crit_edge608.i

bb.kf:                                            ; preds = %bb.kd
  %i.aio = call noalias ptr @calloc(i64 noundef %i.aie, i64 noundef 56) #28 ; 3 uses
  %i.aip = icmp eq ptr %i.aio, null
  br i1 %i.aip, label %bb.kg, label %.lr.ph607.i

bb.kg:                                            ; preds = %bb.kf
  %i.aiq = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.air = mul nuw i64 %i.aie, 56
  %i.ais = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aiq, ptr noundef nonnull @.str.45, i64 noundef %i.air) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

.lr.ph607.i:                                      ; preds = %bb.kf
  %i.ait = uitofp i64 %.0410.i to double
  %i.aiu = fadd nnan double %i.ait, 2.000000e+00
  %i.aiv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aiw = fmul nnan double %i.aiu, -5.000000e-01
  %i.aix = insertelement <2 x double> poison, double %i.aiw, i64 0
  %i.aiy = shufflevector <2 x double> %i.aix, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %bb.ki

._crit_edge608.i:                                 ; preds = %._crit_edge599.i, %gv_calloc.exit484.thread.i
  %i.aiz = phi ptr [ %i.aim, %gv_calloc.exit484.thread.i ], [ %i.aih, %._crit_edge599.i ] ; 3 uses
  %i.aja = phi ptr [ %i.ain, %gv_calloc.exit484.thread.i ], [ %i.aio, %._crit_edge599.i ] ; 3 uses
  %i.ajb = call noalias ptr @strdup(ptr noundef readonly %.0399524.i) #27 ; 3 uses
  %i.ajc = icmp eq ptr %i.ajb, null
  br i1 %i.ajc, label %bb.kh, label %gv_strdup.exit.i

bb.kh:                                            ; preds = %._crit_edge608.i
  %i.ajd = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.aje = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0399524.i) #31
  %i.ajf = add i64 %i.aje, 1
  %i.ajg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ajd, ptr noundef nonnull @.str.45, i64 noundef %i.ajf) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_strdup.exit.i:                                 ; preds = %._crit_edge608.i
  %i.ajh = call ptr @strtok(ptr noundef nonnull %i.ajb, ptr noundef nonnull @.str.48) #27 ; 2 uses
  %.not455618.i = icmp eq ptr %i.ajh, null
  br i1 %.not455618.i, label %._crit_edge625.i, label %.lr.ph624.i

bb.ki:                                            ; preds = %._crit_edge599.i, %.lr.ph607.i
  %.0409606.i = phi i64 [ 0, %.lr.ph607.i ], [ %i.anw, %._crit_edge599.i ] ; 4 uses
  %.sroa.8214.0605.i = phi double [ 0.000000e+00, %.lr.ph607.i ], [ %.sroa.8214.1.lcssa.i, %._crit_edge599.i ] ; 2 uses
  %.sroa.0210.0604.i = phi double [ 0.000000e+00, %.lr.ph607.i ], [ %.sroa.0210.1.lcssa.i, %._crit_edge599.i ] ; 2 uses
  %i.aji = load ptr, ptr %i.aib, align 8, !tbaa !191
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !196
  %i.ajk = getelementptr inbounds nuw [56 x i8], ptr %i.ajj, i64 %.0409606.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %i.ajk, i64 56, i1 false), !tbaa.struct !393
  %i.ajl = load i64, ptr %i.aiv, align 8, !tbaa !198 ; 10 uses
  %i.ajm = getelementptr inbounds nuw [56 x i8], ptr %i.aih, i64 %.0409606.i ; 3 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 8
  store i64 %i.ajl, ptr %i.ajn, align 8, !tbaa !198
  %i.ajo = getelementptr inbounds nuw [56 x i8], ptr %i.aio, i64 %.0409606.i ; 3 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8
  store i64 %i.ajl, ptr %i.ajp, align 8, !tbaa !198
  %.not536.i = icmp eq i64 %i.ajl, 0
  br i1 %.not536.i, label %gv_calloc.exit492.thread.i, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %mul.ov.i487.i = icmp ugt i64 %i.ajl, 1152921504606846975
  br i1 %mul.ov.i487.i, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.ajq = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ajr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ajq, ptr noundef nonnull @.str.47, i64 noundef %i.ajl, i64 noundef 16) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

bb.kl:                                            ; preds = %bb.kj
  %i.ajs = call noalias ptr @calloc(i64 noundef %i.ajl, i64 noundef 16) #28 ; 4 uses
  %i.ajt = icmp eq ptr %i.ajs, null
  br i1 %i.ajt, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kl
  %i.aju = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ajv = shl nuw i64 %i.ajl, 4
  %i.ajw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aju, ptr noundef nonnull @.str.45, i64 noundef %i.ajv) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit492.thread.i:                       ; preds = %bb.ki
  %i.ajx = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #28 ; 2 uses
  store ptr %i.ajx, ptr %i.ajm, align 8, !tbaa !199
  %i.ajy = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #28 ; 2 uses
  store ptr %i.ajy, ptr %i.ajo, align 8, !tbaa !199
  %i.ajz = load ptr, ptr %6, align 8, !tbaa !199  ; 2 uses
  %i.aka = load <2 x double>, ptr %i.ajz, align 8, !tbaa !110
  br label %.lr.ph598.i

bb.kn:                                            ; preds = %bb.kl
  store ptr %i.ajs, ptr %i.ajm, align 8, !tbaa !199
  %i.akb = call noalias ptr @calloc(i64 noundef %i.ajl, i64 noundef 16) #28 ; 4 uses
  %i.akc = icmp eq ptr %i.akb, null
  br i1 %i.akc, label %bb.ko, label %gv_calloc.exit492.i

bb.ko:                                            ; preds = %bb.kn
  %i.akd = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ake = shl nuw i64 %i.ajl, 4
  %i.akf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.akd, ptr noundef nonnull @.str.45, i64 noundef %i.ake) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit492.i:                              ; preds = %bb.kn
  store ptr %i.akb, ptr %i.ajo, align 8, !tbaa !199
  %i.akg = load ptr, ptr %6, align 8, !tbaa !199  ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akg, i64 8
  %.sroa.8.0.copyload.i = load double, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !110
  %i.akh = load <2 x double>, ptr %i.akg, align 8, !tbaa !110 ; 2 uses
  %i.aki = add nsw i64 %i.ajl, -1                 ; 2 uses
  %.not638.i = icmp eq i64 %i.aki, 0
  %i.akj = insertelement <2 x double> %i.akh, double %.sroa.8.0.copyload.i, i64 1
  br i1 %.not638.i, label %._crit_edge599.i, label %.lr.ph598.i

.lr.ph598.i:                                      ; preds = %gv_calloc.exit492.i, %gv_calloc.exit492.thread.i
  %i.akk = phi i64 [ -1, %gv_calloc.exit492.thread.i ], [ %i.aki, %gv_calloc.exit492.i ]
  %i.akl = phi ptr [ %i.ajz, %gv_calloc.exit492.thread.i ], [ %i.akg, %gv_calloc.exit492.i ] ; 3 uses
  %i.akm = phi ptr [ %i.ajx, %gv_calloc.exit492.thread.i ], [ %i.ajs, %gv_calloc.exit492.i ] ; 7 uses
  %i.akn = phi ptr [ %i.ajy, %gv_calloc.exit492.thread.i ], [ %i.akb, %gv_calloc.exit492.i ] ; 4 uses
  %i.ako = phi <2 x double> [ %i.aka, %gv_calloc.exit492.thread.i ], [ %i.akj, %gv_calloc.exit492.i ]
  %.sroa.4100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akm, i64 8
  br label %bb.kp

bb.kp:                                            ; preds = %computeoffset_qr.exit.i, %.lr.ph598.i
  %.0408597.i = phi i64 [ 0, %.lr.ph598.i ], [ %i.als, %computeoffset_qr.exit.i ] ; 7 uses
  %.sroa.8214.1594.i = phi double [ %.sroa.8214.0605.i, %.lr.ph598.i ], [ %i.amz, %computeoffset_qr.exit.i ]
  %.sroa.0210.1593.i = phi double [ %.sroa.0210.0604.i, %.lr.ph598.i ], [ %i.amy, %computeoffset_qr.exit.i ]
  %i.akp = phi <2 x double> [ %i.ako, %.lr.ph598.i ], [ %i.alu, %computeoffset_qr.exit.i ] ; 4 uses
  %i.akq = add nuw i64 %.0408597.i, 1             ; 3 uses
  %i.akr = getelementptr inbounds nuw [16 x i8], ptr %i.akl, i64 %i.akq
  %i.aks = load <2 x double>, ptr %i.akr, align 8, !tbaa !110 ; 6 uses
  %i.akt = icmp eq i64 %.0408597.i, 0
  br i1 %i.akt, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %foldExtExtBinop344 = fsub <2 x double> %i.akp, %i.aks
  %i.aku = extractelement <2 x double> %foldExtExtBinop344, i64 0 ; 3 uses
  %foldExtExtBinop346 = fsub <2 x double> %i.akp, %i.aks
  %i.akv = extractelement <2 x double> %foldExtExtBinop346, i64 1 ; 3 uses
  %i.akw = fmul double %i.akv, %i.akv
  %i.akx = call double @llvm.fmuladd.f64(double %i.aku, double %i.aku, double %i.akw)
  %i.aky = fadd double %i.akx, 1.000000e-04
  %sqrt.i.i = call double @llvm.sqrt.f64(double %i.aky)
  %i.akz = fdiv double 2.000000e+00, %sqrt.i.i    ; 2 uses
  %i.ala = fmul double %i.akv, %i.akz
  %i.alb = fneg double %i.aku
  %i.alc = fmul double %i.akz, %i.alb
  store double %i.ala, ptr %i.akm, align 8, !tbaa !110
  store double %i.alc, ptr %.sroa.4100.0..sroa_idx.i, align 8, !tbaa !110
  br label %bb.ks

bb.kr:                                            ; preds = %bb.kp
  %i.ald = getelementptr inbounds nuw [16 x i8], ptr %i.akm, i64 %.0408597.i ; 2 uses
  %i.ale = extractelement <2 x double> %i.aks, i64 0
  %i.alf = fsub double %.sroa.0210.1593.i, %i.ale ; 3 uses
  %i.alg = extractelement <2 x double> %i.aks, i64 1
  %i.alh = fsub double %.sroa.8214.1594.i, %i.alg ; 3 uses
  %i.ali = fmul double %i.alh, %i.alh
  %i.alj = call double @llvm.fmuladd.f64(double %i.alf, double %i.alf, double %i.ali)
  %i.alk = fadd double %i.alj, 1.000000e-04
  %sqrt.i493.i = call double @llvm.sqrt.f64(double %i.alk)
  %i.all = fdiv double 2.000000e+00, %sqrt.i493.i ; 2 uses
  %i.alm = fmul double %i.alh, %i.all
  %i.aln = fneg double %i.alf
  %i.alo = fmul double %i.all, %i.aln
  store double %i.alm, ptr %i.ald, align 8, !tbaa !110
  %.sroa.498.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ald, i64 8
  store double %i.alo, ptr %.sroa.498.0..sroa_idx.i, align 8, !tbaa !110
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %i.alp = add i64 %.0408597.i, 2                 ; 3 uses
  %i.alq = getelementptr inbounds nuw [16 x i8], ptr %i.akl, i64 %i.alp
  %i.alr = load <2 x double>, ptr %i.alq, align 8, !tbaa !110 ; 4 uses
  %i.als = add i64 %.0408597.i, 3                 ; 4 uses
  %i.alt = getelementptr inbounds nuw [16 x i8], ptr %i.akl, i64 %i.als
  %i.alu = load <2 x double>, ptr %i.alt, align 8, !tbaa !110 ; 3 uses
  %i.alv = getelementptr inbounds nuw [16 x i8], ptr %i.akm, i64 %i.akq ; 2 uses
  %i.alw = getelementptr inbounds nuw [16 x i8], ptr %i.akm, i64 %i.alp ; 3 uses
  %i.alx = fsub <2 x double> %i.aks, %i.alr       ; 3 uses
  %i.aly = extractelement <2 x double> %i.alx, i64 0
  %i.alz = extractelement <2 x double> %i.alx, i64 1
  %i.ama = call double @hypot(double noundef %i.aly, double noundef %i.alz) #27 ; 2 uses
  %i.amb = fcmp olt double %i.ama, 1.000000e-04
  br i1 %i.amb, label %bb.kt, label %computeoffset_qr.exit.i

bb.kt:                                            ; preds = %bb.ks
  %i.amc = fsub <2 x double> %i.akp, %i.alu       ; 4 uses
  %foldExtExtBinop348 = fmul <2 x double> %i.amc, %i.amc
  %i.amd = extractelement <2 x double> %foldExtExtBinop348, i64 1
  %i.ame = extractelement <2 x double> %i.amc, i64 0 ; 2 uses
  %i.amf = call double @llvm.fmuladd.f64(double %i.ame, double %i.ame, double %i.amd)
  %i.amg = fadd double %i.amf, 1.000000e-04
  %sqrt.i499.i = call double @llvm.sqrt.f64(double %i.amg)
  br label %computeoffset_qr.exit.i

computeoffset_qr.exit.i:                          ; preds = %bb.kt, %bb.ks
  %.022.i.i = phi double [ %sqrt.i499.i, %bb.kt ], [ %i.ama, %bb.ks ]
  %i.amh = phi <2 x double> [ %i.amc, %bb.kt ], [ %i.alx, %bb.ks ] ; 2 uses
  %i.ami = fdiv double 2.000000e+00, %.022.i.i
  %.sroa.496.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  %i.amj = getelementptr inbounds nuw [16 x i8], ptr %i.akm, i64 %.0408597.i
  %i.amk = getelementptr inbounds nuw [16 x i8], ptr %i.akn, i64 %.0408597.i
  %i.aml = getelementptr inbounds nuw [16 x i8], ptr %i.akn, i64 %i.akq
  %i.amm = getelementptr inbounds nuw [16 x i8], ptr %i.akn, i64 %i.alp
  %i.amn = insertelement <2 x double> poison, double %i.ami, i64 0
  %i.amo = shufflevector <2 x double> %i.amn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.amp = fneg <2 x double> %i.amh
  %i.amq = shufflevector <2 x double> %i.amh, <2 x double> %i.amp, <2 x i32> <i32 1, i32 2>
  %i.amr = fmul <2 x double> %i.amo, %i.amq       ; 3 uses
  %19 = extractelement <2 x double> %i.amr, i64 0
  store double %19, ptr %i.alw, align 8, !tbaa !110
  %20 = extractelement <2 x double> %i.amr, i64 1
  store double %20, ptr %.sroa.496.0..sroa_idx.i, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.alv, ptr noundef nonnull align 8 dereferenceable(16) %i.alw, i64 16, i1 false), !tbaa.struct !120
  %i.ams = load <2 x double>, ptr %i.amj, align 8, !tbaa !110
  %i.amt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aiy, <2 x double> %i.ams, <2 x double> %i.akp)
  store <2 x double> %i.amt, ptr %i.amk, align 8, !tbaa !110
  %i.amu = load <2 x double>, ptr %i.alv, align 8, !tbaa !110
  %i.amv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aiy, <2 x double> %i.amu, <2 x double> %i.aks)
  store <2 x double> %i.amv, ptr %i.aml, align 8, !tbaa !110
  %i.amw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aiy, <2 x double> %i.amr, <2 x double> %i.alr)
  store <2 x double> %i.amw, ptr %i.amm, align 8, !tbaa !110
  %i.amx = icmp ult i64 %i.als, %i.akk
  %i.amy = extractelement <2 x double> %i.alr, i64 0 ; 2 uses
  %i.amz = extractelement <2 x double> %i.alr, i64 1 ; 2 uses
  br i1 %i.amx, label %bb.kp, label %._crit_edge599.i, !llvm.loop !352

._crit_edge599.i:                                 ; preds = %computeoffset_qr.exit.i, %gv_calloc.exit492.i
  %i.ana = phi ptr [ %i.ajs, %gv_calloc.exit492.i ], [ %i.akm, %computeoffset_qr.exit.i ]
  %i.anb = phi ptr [ %i.akb, %gv_calloc.exit492.i ], [ %i.akn, %computeoffset_qr.exit.i ]
  %.sroa.0210.1.lcssa.i = phi double [ %.sroa.0210.0604.i, %gv_calloc.exit492.i ], [ %i.amy, %computeoffset_qr.exit.i ] ; 2 uses
  %.sroa.8214.1.lcssa.i = phi double [ %.sroa.8214.0605.i, %gv_calloc.exit492.i ], [ %i.amz, %computeoffset_qr.exit.i ] ; 2 uses
  %.0408.lcssa.i = phi i64 [ 0, %gv_calloc.exit492.i ], [ %i.als, %computeoffset_qr.exit.i ] ; 2 uses
  %i.anc = phi <2 x double> [ %i.akh, %gv_calloc.exit492.i ], [ %i.alu, %computeoffset_qr.exit.i ] ; 3 uses
  %i.and = getelementptr inbounds nuw [16 x i8], ptr %i.ana, i64 %.0408.lcssa.i ; 2 uses
  %i.ane = extractelement <2 x double> %i.anc, i64 0
  %i.anf = fsub double %.sroa.0210.1.lcssa.i, %i.ane ; 3 uses
  %i.ang = extractelement <2 x double> %i.anc, i64 1
  %i.anh = fsub double %.sroa.8214.1.lcssa.i, %i.ang ; 3 uses
  %i.ani = fmul double %i.anh, %i.anh
  %i.anj = call double @llvm.fmuladd.f64(double %i.anf, double %i.anf, double %i.ani)
  %i.ank = fadd double %i.anj, 1.000000e-04
  %sqrt.i500.i = call double @llvm.sqrt.f64(double %i.ank)
  %i.anl = fdiv double 2.000000e+00, %sqrt.i500.i
  %i.anm = fneg double %i.anf
  %.sroa.494.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.and, i64 8
  %i.ann = getelementptr inbounds nuw [16 x i8], ptr %i.anb, i64 %.0408.lcssa.i
  %i.ano = insertelement <2 x double> poison, double %i.anl, i64 0
  %i.anp = shufflevector <2 x double> %i.ano, <2 x double> poison, <2 x i32> zeroinitializer
  %i.anq = insertelement <2 x double> poison, double %i.anh, i64 0
  %i.anr = insertelement <2 x double> %i.anq, double %i.anm, i64 1
  %i.ans = fmul <2 x double> %i.anp, %i.anr       ; 3 uses
  %i.ant = extractelement <2 x double> %i.ans, i64 0
  store double %i.ant, ptr %i.and, align 8, !tbaa !110
  %i.anu = extractelement <2 x double> %i.ans, i64 1
  store double %i.anu, ptr %.sroa.494.0..sroa_idx.i, align 8, !tbaa !110
  %i.anv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aiy, <2 x double> %i.ans, <2 x double> %i.anc)
  store <2 x double> %i.anv, ptr %i.ann, align 8, !tbaa !110
  %i.anw = add nuw nsw i64 %.0409606.i, 1         ; 2 uses
  %exitcond667.not.i = icmp eq i64 %i.anw, %i.aie
  br i1 %exitcond667.not.i, label %._crit_edge608.i, label %bb.ki, !llvm.loop !353

.lr.ph624.i:                                      ; preds = %gv_strdup.exit.i, %._crit_edge617.i
  %.0371623.i = phi i32 [ %i.aoe, %._crit_edge617.i ], [ 0, %gv_strdup.exit.i ] ; 3 uses
  %.1380622.i = phi ptr [ %i.aof, %._crit_edge617.i ], [ %i.ajh, %gv_strdup.exit.i ] ; 2 uses
  %.0401621.i = phi ptr [ %spec.select468.i, %._crit_edge617.i ], [ %.0399524.i, %gv_strdup.exit.i ]
  %.0403620.i = phi ptr [ %.2405.i, %._crit_edge617.i ], [ %.0399524.i, %gv_strdup.exit.i ]
  %.0406619.i = phi ptr [ %.1407.i, %._crit_edge617.i ], [ %.0399524.i, %gv_strdup.exit.i ] ; 2 uses
  %i.anx = load i8, ptr %.1380622.i, align 1, !tbaa !14
  %.not462.i = icmp eq i8 %i.anx, 0
  %spec.store.select3.i = select i1 %.not462.i, ptr @.str.27, ptr %.1380622.i ; 7 uses
  %.not463.i = icmp eq ptr %spec.store.select3.i, %.0406619.i
  br i1 %.not463.i, label %bb.kw, label %bb.ku

bb.ku:                                            ; preds = %.lr.ph624.i
  %i.any = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 156
  %i.aoa = load i8, ptr %i.anz, align 4, !tbaa !392
  %i.aob = and i8 %i.aoa, 3
  %.not464.i = icmp eq i8 %i.aob, 0
  br i1 %.not464.i, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %spec.store.select3.i) #27
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef nonnull %spec.store.select3.i) #27
  br label %bb.kw

bb.kw:                                            ; preds = %bb.kv, %bb.ku, %.lr.ph624.i
  %.1407.i = phi ptr [ %.0406619.i, %.lr.ph624.i ], [ %spec.store.select3.i, %bb.kv ], [ %spec.store.select3.i, %bb.ku ]
  %i.aoc = icmp eq i32 %.0371623.i, 0
  %spec.select468.i = select i1 %i.aoc, ptr %spec.store.select3.i, ptr %.0401621.i ; 2 uses
  %i.aod = icmp samesign ult i32 %.0371623.i, 2
  %.2405.i = select i1 %i.aod, ptr %spec.store.select3.i, ptr %.0403620.i ; 2 uses
  br i1 %.not535.i, label %._crit_edge617.i, label %.lr.ph616.i

._crit_edge617.i:                                 ; preds = %._crit_edge612.i, %bb.kw
  %i.aoe = add nuw nsw i32 %.0371623.i, 1
  %i.aof = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.48) #27 ; 2 uses
  %.not455.i = icmp eq ptr %i.aof, null
  br i1 %.not455.i, label %._crit_edge625.i, label %.lr.ph624.i, !llvm.loop !354

.lr.ph616.i:                                      ; preds = %bb.kw, %._crit_edge612.i
  %.0398614.i = phi i64 [ %i.apc, %._crit_edge612.i ], [ 0, %bb.kw ] ; 3 uses
  %i.aog = getelementptr inbounds nuw [56 x i8], ptr %i.aja, i64 %.0398614.i ; 2 uses
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !199 ; 10 uses
  %i.aoi = getelementptr inbounds nuw [56 x i8], ptr %i.aiz, i64 %.0398614.i
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !199 ; 9 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aog, i64 8
  %i.aol = load i64, ptr %i.aok, align 8, !tbaa !198 ; 9 uses
  %.not640.i = icmp eq i64 %i.aol, 0
  br i1 %.not640.i, label %._crit_edge612.i, label %.lr.ph611.i.preheader

.lr.ph611.i.preheader:                            ; preds = %.lr.ph616.i
  %min.iters.check = icmp ult i64 %i.aol, 4
  br i1 %min.iters.check, label %.lr.ph611.i.preheader350, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph611.i.preheader
  %scevgep = getelementptr i8, ptr %i.aoh, i64 -8
  %i.aom = shl i64 %i.aol, 4                      ; 4 uses
  %scevgep328 = getelementptr i8, ptr %scevgep, i64 %i.aom
  %scevgep329 = getelementptr i8, ptr %i.aoj, i64 -8
  %scevgep330 = getelementptr i8, ptr %scevgep329, i64 %i.aom
  %scevgep331 = getelementptr i8, ptr %i.aoh, i64 8
  %scevgep332 = getelementptr i8, ptr %i.aoh, i64 %i.aom
  %scevgep333 = getelementptr i8, ptr %i.aoj, i64 8
  %scevgep334 = getelementptr i8, ptr %i.aoj, i64 %i.aom
  %bound0 = icmp ult ptr %i.aoh, %scevgep330
  %bound1 = icmp ult ptr %i.aoj, %scevgep328
  %found.conflict = and i1 %bound0, %bound1
  %bound0335 = icmp ult ptr %scevgep331, %scevgep334
  %bound1336 = icmp ult ptr %scevgep333, %scevgep332
  %found.conflict337 = and i1 %bound0335, %bound1336
  %conflict.rdx = or i1 %found.conflict, %found.conflict337
  br i1 %conflict.rdx, label %.lr.ph611.i.preheader350, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aol, -2                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aon = or disjoint i64 %index, 1              ; 2 uses
  %i.aoo = getelementptr inbounds nuw [16 x i8], ptr %i.aoj, i64 %index
  %i.aop = getelementptr inbounds nuw [16 x i8], ptr %i.aoj, i64 %i.aon
  %wide.load = load <2 x double>, ptr %i.aoo, align 8
  %wide.load338 = load <2 x double>, ptr %i.aop, align 8
  %i.aoq = getelementptr inbounds nuw [16 x i8], ptr %i.aoh, i64 %index ; 2 uses
  %i.aor = getelementptr inbounds nuw [16 x i8], ptr %i.aoh, i64 %i.aon ; 2 uses
  %wide.load339 = load <2 x double>, ptr %i.aoq, align 8
  %wide.load340 = load <2 x double>, ptr %i.aor, align 8
  %i.aos = fadd <2 x double> %wide.load, %wide.load339
  %i.aot = fadd <2 x double> %wide.load338, %wide.load340
  store <2 x double> %i.aos, ptr %i.aoq, align 8
  store <2 x double> %i.aot, ptr %i.aor, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aou = icmp eq i64 %index.next, %n.vec
  br i1 %i.aou, label %middle.block, label %vector.body, !llvm.loop !355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aol, %n.vec
  br i1 %cmp.n, label %._crit_edge612.i, label %.lr.ph611.i.preheader350

.lr.ph611.i.preheader350:                         ; preds = %vector.memcheck, %.lr.ph611.i.preheader, %middle.block
  %.0394609.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph611.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.0394609.i.ph, 1
  %xtraiter = and i64 %i.aol, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph611.i.prol.loopexit, label %.lr.ph611.i.prol

.lr.ph611.i.prol:                                 ; preds = %.lr.ph611.i.preheader350
  %i.aov = getelementptr inbounds nuw [16 x i8], ptr %i.aoj, i64 %.0394609.i.ph
  %i.aow = getelementptr inbounds nuw [16 x i8], ptr %i.aoh, i64 %.0394609.i.ph ; 2 uses
  %i.aox = load <2 x double>, ptr %i.aov, align 8, !tbaa !110
  %i.aoy = load <2 x double>, ptr %i.aow, align 8, !tbaa !110
  %i.aoz = fadd <2 x double> %i.aox, %i.aoy
  store <2 x double> %i.aoz, ptr %i.aow, align 8, !tbaa !110
  %i.apa = or disjoint i64 %.0394609.i.ph, 1
  br label %.lr.ph611.i.prol.loopexit

.lr.ph611.i.prol.loopexit:                        ; preds = %.lr.ph611.i.prol, %.lr.ph611.i.preheader350
  %.0394609.i.unr = phi i64 [ %.0394609.i.ph, %.lr.ph611.i.preheader350 ], [ %i.apa, %.lr.ph611.i.prol ]
  %i.apb = icmp eq i64 %i.aol, %.neg
  br i1 %i.apb, label %._crit_edge612.i, label %.lr.ph611.i

._crit_edge612.i:                                 ; preds = %.lr.ph611.i.prol.loopexit, %.lr.ph611.i, %middle.block, %.lr.ph616.i
  call void @gvrender_beziercurve(ptr noundef %0, ptr noundef %i.aoh, i64 noundef %i.aol, i32 noundef 0) #27
  %i.apc = add nuw i64 %.0398614.i, 1             ; 2 uses
  %exitcond669.not.i = icmp eq i64 %i.apc, %i.aie
  br i1 %exitcond669.not.i, label %._crit_edge617.i, label %.lr.ph616.i, !llvm.loop !356

.lr.ph611.i:                                      ; preds = %.lr.ph611.i.prol.loopexit, %.lr.ph611.i
  %.0394609.i = phi i64 [ %i.apo, %.lr.ph611.i ], [ %.0394609.i.unr, %.lr.ph611.i.prol.loopexit ] ; 4 uses
  %i.apd = getelementptr inbounds nuw [16 x i8], ptr %i.aoj, i64 %.0394609.i
  %i.ape = getelementptr inbounds nuw [16 x i8], ptr %i.aoh, i64 %.0394609.i ; 2 uses
  %i.apf = load <2 x double>, ptr %i.apd, align 8, !tbaa !110
  %i.apg = load <2 x double>, ptr %i.ape, align 8, !tbaa !110
  %i.aph = fadd <2 x double> %i.apf, %i.apg
  store <2 x double> %i.aph, ptr %i.ape, align 8, !tbaa !110
  %i.api = add nuw i64 %.0394609.i, 1             ; 2 uses
  %i.apj = getelementptr inbounds nuw [16 x i8], ptr %i.aoj, i64 %i.api
  %i.apk = getelementptr inbounds nuw [16 x i8], ptr %i.aoh, i64 %i.api ; 2 uses
  %i.apl = load <2 x double>, ptr %i.apj, align 8, !tbaa !110
  %i.apm = load <2 x double>, ptr %i.apk, align 8, !tbaa !110
  %i.apn = fadd <2 x double> %i.apl, %i.apm
  store <2 x double> %i.apn, ptr %i.apk, align 8, !tbaa !110
  %i.apo = add nuw i64 %.0394609.i, 2             ; 2 uses
  %exitcond668.not.i.1 = icmp eq i64 %i.apo, %i.aol
  br i1 %exitcond668.not.i.1, label %._crit_edge612.i, label %.lr.ph611.i, !llvm.loop !357

._crit_edge625.i:                                 ; preds = %._crit_edge617.i, %gv_strdup.exit.i
  %.0403.lcssa.i = phi ptr [ %.0399524.i, %gv_strdup.exit.i ], [ %.2405.i, %._crit_edge617.i ] ; 4 uses
  %.0401.lcssa.i = phi ptr [ %.0399524.i, %gv_strdup.exit.i ], [ %spec.select468.i, %._crit_edge617.i ] ; 3 uses
  %i.app = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
end_hunk_0
