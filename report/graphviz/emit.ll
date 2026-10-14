Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/emit?download=true
inline.NumInlined: 362
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@emit_edge:bb.a
  %i.aje = add i64 %i.ajd, 1
  %i.ajf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ajc, ptr noundef nonnull @.str.45, i64 noundef %i.aje) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_strdup.exit.i:                                 ; preds = %._crit_edge608.i
  %i.ajg = call ptr @strtok(ptr noundef nonnull %i.aja, ptr noundef nonnull @.str.48) #27 ; 2 uses
  %.not455618.i = icmp eq ptr %i.ajg, null
  br i1 %.not455618.i, label %._crit_edge625.i, label %.lr.ph624.i

bb.ki:                                            ; preds = %._crit_edge599.i, %.lr.ph607.i
  %.0409606.i = phi i64 [ 0, %.lr.ph607.i ], [ %i.ant, %._crit_edge599.i ] ; 4 uses
  %.sroa.8214.0605.i = phi double [ 0.000000e+00, %.lr.ph607.i ], [ %.sroa.8214.1.lcssa.i, %._crit_edge599.i ] ; 2 uses
  %.sroa.0210.0604.i = phi double [ 0.000000e+00, %.lr.ph607.i ], [ %.sroa.0210.1.lcssa.i, %._crit_edge599.i ] ; 2 uses
  %i.ajh = load ptr, ptr %i.aia, align 8, !tbaa !191
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !196
  %i.ajj = getelementptr inbounds nuw [56 x i8], ptr %i.aji, i64 %.0409606.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %i.ajj, i64 56, i1 false), !tbaa.struct !393
  %i.ajk = load i64, ptr %i.aiu, align 8, !tbaa !198 ; 10 uses
  %i.ajl = getelementptr inbounds nuw [56 x i8], ptr %i.aig, i64 %.0409606.i ; 3 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 8
  store i64 %i.ajk, ptr %i.ajm, align 8, !tbaa !198
  %i.ajn = getelementptr inbounds nuw [56 x i8], ptr %i.ain, i64 %.0409606.i ; 3 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 8
  store i64 %i.ajk, ptr %i.ajo, align 8, !tbaa !198
  %.not536.i = icmp eq i64 %i.ajk, 0
  br i1 %.not536.i, label %gv_calloc.exit492.thread.i, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %mul.ov.i487.i = icmp ugt i64 %i.ajk, 1152921504606846975
  br i1 %mul.ov.i487.i, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.ajp = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ajq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ajp, ptr noundef nonnull @.str.47, i64 noundef %i.ajk, i64 noundef 16) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

bb.kl:                                            ; preds = %bb.kj
  %i.ajr = call noalias ptr @calloc(i64 noundef %i.ajk, i64 noundef 16) #28 ; 4 uses
  %i.ajs = icmp eq ptr %i.ajr, null
  br i1 %i.ajs, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kl
  %i.ajt = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.aju = shl nuw i64 %i.ajk, 4
  %i.ajv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ajt, ptr noundef nonnull @.str.45, i64 noundef %i.aju) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit492.thread.i:                       ; preds = %bb.ki
  %i.ajw = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #28 ; 2 uses
  store ptr %i.ajw, ptr %i.ajl, align 8, !tbaa !199
  %i.ajx = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #28 ; 2 uses
  store ptr %i.ajx, ptr %i.ajn, align 8, !tbaa !199
  %i.ajy = load ptr, ptr %6, align 8, !tbaa !199  ; 2 uses
  %i.ajz = load <2 x double>, ptr %i.ajy, align 8, !tbaa !110
  br label %.lr.ph598.i

bb.kn:                                            ; preds = %bb.kl
  store ptr %i.ajr, ptr %i.ajl, align 8, !tbaa !199
  %i.aka = call noalias ptr @calloc(i64 noundef %i.ajk, i64 noundef 16) #28 ; 4 uses
  %i.akb = icmp eq ptr %i.aka, null
  br i1 %i.akb, label %bb.ko, label %gv_calloc.exit492.i

bb.ko:                                            ; preds = %bb.kn
  %i.akc = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.akd = shl nuw i64 %i.ajk, 4
  %i.ake = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.akc, ptr noundef nonnull @.str.45, i64 noundef %i.akd) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit492.i:                              ; preds = %bb.kn
  store ptr %i.aka, ptr %i.ajn, align 8, !tbaa !199
  %i.akf = load ptr, ptr %6, align 8, !tbaa !199  ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akf, i64 8
  %.sroa.8.0.copyload.i = load double, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !110
  %i.akg = load <2 x double>, ptr %i.akf, align 8, !tbaa !110 ; 2 uses
  %i.akh = add nsw i64 %i.ajk, -1                 ; 2 uses
  %.not638.i = icmp eq i64 %i.akh, 0
  %i.aki = insertelement <2 x double> %i.akg, double %.sroa.8.0.copyload.i, i64 1
  br i1 %.not638.i, label %._crit_edge599.i, label %.lr.ph598.i

.lr.ph598.i:                                      ; preds = %gv_calloc.exit492.i, %gv_calloc.exit492.thread.i
  %i.akj = phi i64 [ -1, %gv_calloc.exit492.thread.i ], [ %i.akh, %gv_calloc.exit492.i ]
  %i.akk = phi ptr [ %i.ajy, %gv_calloc.exit492.thread.i ], [ %i.akf, %gv_calloc.exit492.i ] ; 3 uses
  %i.akl = phi ptr [ %i.ajw, %gv_calloc.exit492.thread.i ], [ %i.ajr, %gv_calloc.exit492.i ] ; 7 uses
  %i.akm = phi ptr [ %i.ajx, %gv_calloc.exit492.thread.i ], [ %i.aka, %gv_calloc.exit492.i ] ; 4 uses
  %i.akn = phi <2 x double> [ %i.ajz, %gv_calloc.exit492.thread.i ], [ %i.aki, %gv_calloc.exit492.i ]
  %.sroa.4100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akl, i64 8
  br label %bb.kp

bb.kp:                                            ; preds = %computeoffset_qr.exit.i, %.lr.ph598.i
  %.0408597.i = phi i64 [ 0, %.lr.ph598.i ], [ %i.alr, %computeoffset_qr.exit.i ] ; 7 uses
  %.sroa.8214.1594.i = phi double [ %.sroa.8214.0605.i, %.lr.ph598.i ], [ %i.amy, %computeoffset_qr.exit.i ]
  %.sroa.0210.1593.i = phi double [ %.sroa.0210.0604.i, %.lr.ph598.i ], [ %i.amx, %computeoffset_qr.exit.i ]
  %i.ako = phi <2 x double> [ %i.akn, %.lr.ph598.i ], [ %i.alt, %computeoffset_qr.exit.i ] ; 4 uses
  %i.akp = add nuw i64 %.0408597.i, 1             ; 3 uses
  %i.akq = getelementptr inbounds nuw [16 x i8], ptr %i.akk, i64 %i.akp
  %i.akr = load <2 x double>, ptr %i.akq, align 8, !tbaa !110 ; 6 uses
  %i.aks = icmp eq i64 %.0408597.i, 0
  br i1 %i.aks, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %foldExtExtBinop344 = fsub <2 x double> %i.ako, %i.akr
  %i.akt = extractelement <2 x double> %foldExtExtBinop344, i64 0 ; 3 uses
  %foldExtExtBinop346 = fsub <2 x double> %i.ako, %i.akr
  %i.aku = extractelement <2 x double> %foldExtExtBinop346, i64 1 ; 3 uses
  %i.akv = fmul double %i.aku, %i.aku
  %i.akw = call double @llvm.fmuladd.f64(double %i.akt, double %i.akt, double %i.akv)
  %i.akx = fadd double %i.akw, 1.000000e-04
  %sqrt.i.i = call double @llvm.sqrt.f64(double %i.akx)
  %i.aky = fdiv double 2.000000e+00, %sqrt.i.i    ; 2 uses
  %i.akz = fmul double %i.aku, %i.aky
  %i.ala = fneg double %i.akt
  %i.alb = fmul double %i.aky, %i.ala
  store double %i.akz, ptr %i.akl, align 8, !tbaa !110
  store double %i.alb, ptr %.sroa.4100.0..sroa_idx.i, align 8, !tbaa !110
  br label %bb.ks

bb.kr:                                            ; preds = %bb.kp
  %i.alc = getelementptr inbounds nuw [16 x i8], ptr %i.akl, i64 %.0408597.i ; 2 uses
  %i.ald = extractelement <2 x double> %i.akr, i64 0
  %i.ale = fsub double %.sroa.0210.1593.i, %i.ald ; 3 uses
  %i.alf = extractelement <2 x double> %i.akr, i64 1
  %i.alg = fsub double %.sroa.8214.1594.i, %i.alf ; 3 uses
  %i.alh = fmul double %i.alg, %i.alg
  %i.ali = call double @llvm.fmuladd.f64(double %i.ale, double %i.ale, double %i.alh)
  %i.alj = fadd double %i.ali, 1.000000e-04
  %sqrt.i493.i = call double @llvm.sqrt.f64(double %i.alj)
  %i.alk = fdiv double 2.000000e+00, %sqrt.i493.i ; 2 uses
  %i.all = fmul double %i.alg, %i.alk
  %i.alm = fneg double %i.ale
  %i.aln = fmul double %i.alk, %i.alm
  store double %i.all, ptr %i.alc, align 8, !tbaa !110
  %.sroa.498.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.alc, i64 8
  store double %i.aln, ptr %.sroa.498.0..sroa_idx.i, align 8, !tbaa !110
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %i.alo = add i64 %.0408597.i, 2                 ; 3 uses
  %i.alp = getelementptr inbounds nuw [16 x i8], ptr %i.akk, i64 %i.alo
  %i.alq = load <2 x double>, ptr %i.alp, align 8, !tbaa !110 ; 4 uses
  %i.alr = add i64 %.0408597.i, 3                 ; 4 uses
  %i.als = getelementptr inbounds nuw [16 x i8], ptr %i.akk, i64 %i.alr
  %i.alt = load <2 x double>, ptr %i.als, align 8, !tbaa !110 ; 3 uses
  %i.alu = getelementptr inbounds nuw [16 x i8], ptr %i.akl, i64 %i.akp ; 2 uses
  %i.alv = getelementptr inbounds nuw [16 x i8], ptr %i.akl, i64 %i.alo ; 2 uses
  %i.alw = fsub <2 x double> %i.akr, %i.alq       ; 3 uses
  %i.alx = extractelement <2 x double> %i.alw, i64 0
  %i.aly = extractelement <2 x double> %i.alw, i64 1
  %i.alz = call double @hypot(double noundef %i.alx, double noundef %i.aly) #27 ; 2 uses
  %i.ama = fcmp olt double %i.alz, 1.000000e-04
  br i1 %i.ama, label %bb.kt, label %computeoffset_qr.exit.i

bb.kt:                                            ; preds = %bb.ks
  %i.amb = fsub <2 x double> %i.ako, %i.alt       ; 4 uses
  %foldExtExtBinop348 = fmul <2 x double> %i.amb, %i.amb
  %i.amc = extractelement <2 x double> %foldExtExtBinop348, i64 1
  %i.amd = extractelement <2 x double> %i.amb, i64 0 ; 2 uses
  %i.ame = call double @llvm.fmuladd.f64(double %i.amd, double %i.amd, double %i.amc)
  %i.amf = fadd double %i.ame, 1.000000e-04
  %sqrt.i499.i = call double @llvm.sqrt.f64(double %i.amf)
  br label %computeoffset_qr.exit.i

computeoffset_qr.exit.i:                          ; preds = %bb.kt, %bb.ks
  %.022.i.i = phi double [ %sqrt.i499.i, %bb.kt ], [ %i.alz, %bb.ks ]
  %i.amg = phi <2 x double> [ %i.amb, %bb.kt ], [ %i.alw, %bb.ks ] ; 2 uses
  %i.amh = fdiv double 2.000000e+00, %.022.i.i
  %i.ami = getelementptr inbounds nuw [16 x i8], ptr %i.akl, i64 %.0408597.i
  %i.amj = getelementptr inbounds nuw [16 x i8], ptr %i.akm, i64 %.0408597.i
  %i.amk = getelementptr inbounds nuw [16 x i8], ptr %i.akm, i64 %i.akp
  %i.aml = getelementptr inbounds nuw [16 x i8], ptr %i.akm, i64 %i.alo
  %i.amm = insertelement <2 x double> poison, double %i.amh, i64 0
  %i.amn = shufflevector <2 x double> %i.amm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.amo = fneg <2 x double> %i.amg
  %i.amp = shufflevector <2 x double> %i.amg, <2 x double> %i.amo, <2 x i32> <i32 1, i32 2>
  %i.amq = fmul <2 x double> %i.amn, %i.amp       ; 2 uses
  store <2 x double> %i.amq, ptr %i.alv, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.alu, ptr noundef nonnull align 8 dereferenceable(16) %i.alv, i64 16, i1 false), !tbaa.struct !120
  %i.amr = load <2 x double>, ptr %i.ami, align 8, !tbaa !110
  %i.ams = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aix, <2 x double> %i.amr, <2 x double> %i.ako)
  store <2 x double> %i.ams, ptr %i.amj, align 8, !tbaa !110
  %i.amt = load <2 x double>, ptr %i.alu, align 8, !tbaa !110
  %i.amu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aix, <2 x double> %i.amt, <2 x double> %i.akr)
  store <2 x double> %i.amu, ptr %i.amk, align 8, !tbaa !110
  %i.amv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aix, <2 x double> %i.amq, <2 x double> %i.alq)
  store <2 x double> %i.amv, ptr %i.aml, align 8, !tbaa !110
  %i.amw = icmp ult i64 %i.alr, %i.akj
  %i.amx = extractelement <2 x double> %i.alq, i64 0 ; 2 uses
  %i.amy = extractelement <2 x double> %i.alq, i64 1 ; 2 uses
  br i1 %i.amw, label %bb.kp, label %._crit_edge599.i, !llvm.loop !352

._crit_edge599.i:                                 ; preds = %computeoffset_qr.exit.i, %gv_calloc.exit492.i
  %i.amz = phi ptr [ %i.ajr, %gv_calloc.exit492.i ], [ %i.akl, %computeoffset_qr.exit.i ]
  %i.ana = phi ptr [ %i.aka, %gv_calloc.exit492.i ], [ %i.akm, %computeoffset_qr.exit.i ]
  %.sroa.0210.1.lcssa.i = phi double [ %.sroa.0210.0604.i, %gv_calloc.exit492.i ], [ %i.amx, %computeoffset_qr.exit.i ] ; 2 uses
  %.sroa.8214.1.lcssa.i = phi double [ %.sroa.8214.0605.i, %gv_calloc.exit492.i ], [ %i.amy, %computeoffset_qr.exit.i ] ; 2 uses
  %.0408.lcssa.i = phi i64 [ 0, %gv_calloc.exit492.i ], [ %i.alr, %computeoffset_qr.exit.i ] ; 2 uses
  %i.anb = phi <2 x double> [ %i.akg, %gv_calloc.exit492.i ], [ %i.alt, %computeoffset_qr.exit.i ] ; 3 uses
  %i.anc = getelementptr inbounds nuw [16 x i8], ptr %i.amz, i64 %.0408.lcssa.i
  %i.and = extractelement <2 x double> %i.anb, i64 0
  %i.ane = fsub double %.sroa.0210.1.lcssa.i, %i.and ; 3 uses
  %i.anf = extractelement <2 x double> %i.anb, i64 1
  %i.ang = fsub double %.sroa.8214.1.lcssa.i, %i.anf ; 3 uses
  %i.anh = fmul double %i.ang, %i.ang
  %i.ani = call double @llvm.fmuladd.f64(double %i.ane, double %i.ane, double %i.anh)
  %i.anj = fadd double %i.ani, 1.000000e-04
  %sqrt.i500.i = call double @llvm.sqrt.f64(double %i.anj)
  %i.ank = fdiv double 2.000000e+00, %sqrt.i500.i
  %i.anl = fneg double %i.ane
  %i.anm = getelementptr inbounds nuw [16 x i8], ptr %i.ana, i64 %.0408.lcssa.i
  %i.ann = insertelement <2 x double> poison, double %i.ank, i64 0
  %i.ano = shufflevector <2 x double> %i.ann, <2 x double> poison, <2 x i32> zeroinitializer
  %i.anp = insertelement <2 x double> poison, double %i.ang, i64 0
  %i.anq = insertelement <2 x double> %i.anp, double %i.anl, i64 1
  %i.anr = fmul <2 x double> %i.ano, %i.anq       ; 2 uses
  store <2 x double> %i.anr, ptr %i.anc, align 8, !tbaa !110
  %i.ans = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aix, <2 x double> %i.anr, <2 x double> %i.anb)
  store <2 x double> %i.ans, ptr %i.anm, align 8, !tbaa !110
  %i.ant = add nuw nsw i64 %.0409606.i, 1         ; 2 uses
  %exitcond667.not.i = icmp eq i64 %i.ant, %i.aid
  br i1 %exitcond667.not.i, label %._crit_edge608.i, label %bb.ki, !llvm.loop !353

.lr.ph624.i:                                      ; preds = %gv_strdup.exit.i, %._crit_edge617.i
  %.0371623.i = phi i32 [ %i.aob, %._crit_edge617.i ], [ 0, %gv_strdup.exit.i ] ; 3 uses
  %.1380622.i = phi ptr [ %i.aoc, %._crit_edge617.i ], [ %i.ajg, %gv_strdup.exit.i ] ; 2 uses
  %.0401621.i = phi ptr [ %spec.select468.i, %._crit_edge617.i ], [ %.0399524.i, %gv_strdup.exit.i ]
  %.0403620.i = phi ptr [ %.2405.i, %._crit_edge617.i ], [ %.0399524.i, %gv_strdup.exit.i ]
  %.0406619.i = phi ptr [ %.1407.i, %._crit_edge617.i ], [ %.0399524.i, %gv_strdup.exit.i ] ; 2 uses
  %i.anu = load i8, ptr %.1380622.i, align 1, !tbaa !14
  %.not462.i = icmp eq i8 %i.anu, 0
  %spec.store.select3.i = select i1 %.not462.i, ptr @.str.27, ptr %.1380622.i ; 7 uses
  %.not463.i = icmp eq ptr %spec.store.select3.i, %.0406619.i
  br i1 %.not463.i, label %bb.kw, label %bb.ku

bb.ku:                                            ; preds = %.lr.ph624.i
  %i.anv = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 156
  %i.anx = load i8, ptr %i.anw, align 4, !tbaa !392
  %i.any = and i8 %i.anx, 3
  %.not464.i = icmp eq i8 %i.any, 0
  br i1 %.not464.i, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %spec.store.select3.i) #27
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef nonnull %spec.store.select3.i) #27
  br label %bb.kw

bb.kw:                                            ; preds = %bb.kv, %bb.ku, %.lr.ph624.i
  %.1407.i = phi ptr [ %.0406619.i, %.lr.ph624.i ], [ %spec.store.select3.i, %bb.kv ], [ %spec.store.select3.i, %bb.ku ]
  %i.anz = icmp eq i32 %.0371623.i, 0
  %spec.select468.i = select i1 %i.anz, ptr %spec.store.select3.i, ptr %.0401621.i ; 2 uses
  %i.aoa = icmp samesign ult i32 %.0371623.i, 2
  %.2405.i = select i1 %i.aoa, ptr %spec.store.select3.i, ptr %.0403620.i ; 2 uses
  br i1 %.not535.i, label %._crit_edge617.i, label %.lr.ph616.i

._crit_edge617.i:                                 ; preds = %._crit_edge612.i, %bb.kw
  %i.aob = add nuw nsw i32 %.0371623.i, 1
  %i.aoc = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.48) #27 ; 2 uses
  %.not455.i = icmp eq ptr %i.aoc, null
  br i1 %.not455.i, label %._crit_edge625.i, label %.lr.ph624.i, !llvm.loop !354

.lr.ph616.i:                                      ; preds = %bb.kw, %._crit_edge612.i
  %.0398614.i = phi i64 [ %i.aoz, %._crit_edge612.i ], [ 0, %bb.kw ] ; 3 uses
  %i.aod = getelementptr inbounds nuw [56 x i8], ptr %i.aiz, i64 %.0398614.i ; 2 uses
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !199 ; 10 uses
  %i.aof = getelementptr inbounds nuw [56 x i8], ptr %i.aiy, i64 %.0398614.i
  %i.aog = load ptr, ptr %i.aof, align 8, !tbaa !199 ; 9 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aod, i64 8
  %i.aoi = load i64, ptr %i.aoh, align 8, !tbaa !198 ; 9 uses
  %.not640.i = icmp eq i64 %i.aoi, 0
  br i1 %.not640.i, label %._crit_edge612.i, label %.lr.ph611.i.preheader

.lr.ph611.i.preheader:                            ; preds = %.lr.ph616.i
  %min.iters.check = icmp ult i64 %i.aoi, 4
  br i1 %min.iters.check, label %.lr.ph611.i.preheader350, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph611.i.preheader
  %scevgep = getelementptr i8, ptr %i.aoe, i64 -8
  %i.aoj = shl i64 %i.aoi, 4                      ; 4 uses
  %scevgep328 = getelementptr i8, ptr %scevgep, i64 %i.aoj
  %scevgep329 = getelementptr i8, ptr %i.aog, i64 -8
  %scevgep330 = getelementptr i8, ptr %scevgep329, i64 %i.aoj
  %scevgep331 = getelementptr i8, ptr %i.aoe, i64 8
  %scevgep332 = getelementptr i8, ptr %i.aoe, i64 %i.aoj
  %scevgep333 = getelementptr i8, ptr %i.aog, i64 8
  %scevgep334 = getelementptr i8, ptr %i.aog, i64 %i.aoj
  %bound0 = icmp ult ptr %i.aoe, %scevgep330
  %bound1 = icmp ult ptr %i.aog, %scevgep328
  %found.conflict = and i1 %bound0, %bound1
  %bound0335 = icmp ult ptr %scevgep331, %scevgep334
  %bound1336 = icmp ult ptr %scevgep333, %scevgep332
  %found.conflict337 = and i1 %bound0335, %bound1336
  %conflict.rdx = or i1 %found.conflict, %found.conflict337
  br i1 %conflict.rdx, label %.lr.ph611.i.preheader350, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aoi, -2                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aok = or disjoint i64 %index, 1              ; 2 uses
  %i.aol = getelementptr inbounds nuw [16 x i8], ptr %i.aog, i64 %index
  %i.aom = getelementptr inbounds nuw [16 x i8], ptr %i.aog, i64 %i.aok
  %wide.load = load <2 x double>, ptr %i.aol, align 8
  %wide.load338 = load <2 x double>, ptr %i.aom, align 8
  %i.aon = getelementptr inbounds nuw [16 x i8], ptr %i.aoe, i64 %index ; 2 uses
  %i.aoo = getelementptr inbounds nuw [16 x i8], ptr %i.aoe, i64 %i.aok ; 2 uses
  %wide.load339 = load <2 x double>, ptr %i.aon, align 8
  %wide.load340 = load <2 x double>, ptr %i.aoo, align 8
  %i.aop = fadd <2 x double> %wide.load, %wide.load339
  %i.aoq = fadd <2 x double> %wide.load338, %wide.load340
  store <2 x double> %i.aop, ptr %i.aon, align 8
  store <2 x double> %i.aoq, ptr %i.aoo, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aor = icmp eq i64 %index.next, %n.vec
  br i1 %i.aor, label %middle.block, label %vector.body, !llvm.loop !355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aoi, %n.vec
  br i1 %cmp.n, label %._crit_edge612.i, label %.lr.ph611.i.preheader350

.lr.ph611.i.preheader350:                         ; preds = %vector.memcheck, %.lr.ph611.i.preheader, %middle.block
  %.0394609.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph611.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.0394609.i.ph, 1
  %xtraiter = and i64 %i.aoi, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph611.i.prol.loopexit, label %.lr.ph611.i.prol

.lr.ph611.i.prol:                                 ; preds = %.lr.ph611.i.preheader350
  %i.aos = getelementptr inbounds nuw [16 x i8], ptr %i.aog, i64 %.0394609.i.ph
  %i.aot = getelementptr inbounds nuw [16 x i8], ptr %i.aoe, i64 %.0394609.i.ph ; 2 uses
  %i.aou = load <2 x double>, ptr %i.aos, align 8, !tbaa !110
  %i.aov = load <2 x double>, ptr %i.aot, align 8, !tbaa !110
  %i.aow = fadd <2 x double> %i.aou, %i.aov
  store <2 x double> %i.aow, ptr %i.aot, align 8, !tbaa !110
  %i.aox = or disjoint i64 %.0394609.i.ph, 1
  br label %.lr.ph611.i.prol.loopexit

.lr.ph611.i.prol.loopexit:                        ; preds = %.lr.ph611.i.prol, %.lr.ph611.i.preheader350
  %.0394609.i.unr = phi i64 [ %.0394609.i.ph, %.lr.ph611.i.preheader350 ], [ %i.aox, %.lr.ph611.i.prol ]
  %i.aoy = icmp eq i64 %i.aoi, %.neg
  br i1 %i.aoy, label %._crit_edge612.i, label %.lr.ph611.i

._crit_edge612.i:                                 ; preds = %.lr.ph611.i.prol.loopexit, %.lr.ph611.i, %middle.block, %.lr.ph616.i
  call void @gvrender_beziercurve(ptr noundef %0, ptr noundef %i.aoe, i64 noundef %i.aoi, i32 noundef 0) #27
  %i.aoz = add nuw i64 %.0398614.i, 1             ; 2 uses
  %exitcond669.not.i = icmp eq i64 %i.aoz, %i.aid
  br i1 %exitcond669.not.i, label %._crit_edge617.i, label %.lr.ph616.i, !llvm.loop !356

.lr.ph611.i:                                      ; preds = %.lr.ph611.i.prol.loopexit, %.lr.ph611.i
  %.0394609.i = phi i64 [ %i.apl, %.lr.ph611.i ], [ %.0394609.i.unr, %.lr.ph611.i.prol.loopexit ] ; 4 uses
  %i.apa = getelementptr inbounds nuw [16 x i8], ptr %i.aog, i64 %.0394609.i
  %i.apb = getelementptr inbounds nuw [16 x i8], ptr %i.aoe, i64 %.0394609.i ; 2 uses
  %i.apc = load <2 x double>, ptr %i.apa, align 8, !tbaa !110
  %i.apd = load <2 x double>, ptr %i.apb, align 8, !tbaa !110
  %i.ape = fadd <2 x double> %i.apc, %i.apd
  store <2 x double> %i.ape, ptr %i.apb, align 8, !tbaa !110
  %i.apf = add nuw i64 %.0394609.i, 1             ; 2 uses
  %i.apg = getelementptr inbounds nuw [16 x i8], ptr %i.aog, i64 %i.apf
  %i.aph = getelementptr inbounds nuw [16 x i8], ptr %i.aoe, i64 %i.apf ; 2 uses
  %i.api = load <2 x double>, ptr %i.apg, align 8, !tbaa !110
  %i.apj = load <2 x double>, ptr %i.aph, align 8, !tbaa !110
  %i.apk = fadd <2 x double> %i.api, %i.apj
  store <2 x double> %i.apk, ptr %i.aph, align 8, !tbaa !110
  %i.apl = add nuw i64 %.0394609.i, 2             ; 2 uses
  %exitcond668.not.i.1 = icmp eq i64 %i.apl, %i.aoi
  br i1 %exitcond668.not.i.1, label %._crit_edge612.i, label %.lr.ph611.i, !llvm.loop !357

._crit_edge625.i:                                 ; preds = %._crit_edge617.i, %gv_strdup.exit.i
  %.0403.lcssa.i = phi ptr [ %.0399524.i, %gv_strdup.exit.i ], [ %.2405.i, %._crit_edge617.i ] ; 4 uses
  %.0401.lcssa.i = phi ptr [ %.0399524.i, %gv_strdup.exit.i ], [ %spec.select468.i, %._crit_edge617.i ] ; 3 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.apn = load i32, ptr %i.apm, align 8, !tbaa !394 ; 3 uses
  %.not456.i = icmp eq i32 %i.apn, 0
  br i1 %.not456.i, label %bb.lb, label %bb.kx

bb.kx:                                            ; preds = %._crit_edge625.i
  %.not457.i = icmp eq ptr %.0403.lcssa.i, null
  br i1 %.not457.i, label %bb.la, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.apo = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 156
  %i.apq = load i8, ptr %i.app, align 4, !tbaa !392
  %i.apr = and i8 %i.apq, 3
  %.not458.i = icmp eq i8 %i.apr, 0
  br i1 %.not458.i, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %.0403.lcssa.i) #27
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef nonnull %.0403.lcssa.i) #27
  %.pre678.i = load i32, ptr %i.apm, align 8, !tbaa !394
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ky, %bb.kx
  %i.aps = phi i32 [ %i.apn, %bb.ky ], [ %.pre678.i, %bb.kz ], [ %i.apn, %bb.kx ]
  %i.apt = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.apu = load ptr, ptr %6, align 8, !tbaa !199  ; 2 uses
  %i.apv = load double, ptr %i.apt, align 8
  %i.apw = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.apx = load double, ptr %i.apw, align 8
  %i.apy = load double, ptr %i.apu, align 8
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apu, i64 8
  %i.aqa = load double, ptr %i.apz, align 8
  call void @arrow_gen(ptr noundef %0, i32 noundef 2, double %i.apv, double %i.apx, double %i.apy, double %i.aqa, double noundef %i.aac, double noundef %i.zx, i32 noundef %i.aps) #27
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %._crit_edge625.i
  %.3.i100 = phi ptr [ %.0403.lcssa.i, %bb.la ], [ null, %._crit_edge625.i ]
  %i.aqb = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.aqc = load i32, ptr %i.aqb, align 4, !tbaa !395 ; 3 uses
  %.not459.i = icmp eq i32 %i.aqc, 0
  br i1 %.not459.i, label %bb.lg, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
end_hunk_0
