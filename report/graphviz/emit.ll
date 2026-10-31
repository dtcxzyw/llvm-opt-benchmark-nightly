Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/emit?download=true
inline.NumInlined: 362
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@emit_edge:bb.a
  %.not638.i = icmp eq i64 %i.akb, 0
  %i.akc = insertelement <2 x double> %i.aka, double %.sroa.8.0.copyload.i, i64 1
  br i1 %.not638.i, label %._crit_edge599.i, label %.lr.ph598.i

.lr.ph598.i:                                      ; preds = %gv_calloc.exit492.i, %gv_calloc.exit492.thread.i
  %i.akd = phi i64 [ -1, %gv_calloc.exit492.thread.i ], [ %i.akb, %gv_calloc.exit492.i ]
  %i.ake = phi ptr [ %i.ajs, %gv_calloc.exit492.thread.i ], [ %i.ajz, %gv_calloc.exit492.i ] ; 3 uses
  %i.akf = phi ptr [ %i.ajq, %gv_calloc.exit492.thread.i ], [ %i.ajl, %gv_calloc.exit492.i ] ; 7 uses
  %i.akg = phi ptr [ %i.ajr, %gv_calloc.exit492.thread.i ], [ %i.aju, %gv_calloc.exit492.i ] ; 4 uses
  %i.akh = phi <2 x double> [ %i.ajt, %gv_calloc.exit492.thread.i ], [ %i.akc, %gv_calloc.exit492.i ]
  %.sroa.4100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akf, i64 8
  br label %bb.kp

bb.kp:                                            ; preds = %computeoffset_qr.exit.i, %.lr.ph598.i
  %.0408597.i = phi i64 [ 0, %.lr.ph598.i ], [ %i.all, %computeoffset_qr.exit.i ] ; 7 uses
  %.sroa.8214.1594.i = phi double [ %.sroa.8214.0605.i, %.lr.ph598.i ], [ %i.ams, %computeoffset_qr.exit.i ]
  %.sroa.0210.1593.i = phi double [ %.sroa.0210.0604.i, %.lr.ph598.i ], [ %i.amr, %computeoffset_qr.exit.i ]
  %i.aki = phi <2 x double> [ %i.akh, %.lr.ph598.i ], [ %i.aln, %computeoffset_qr.exit.i ] ; 4 uses
  %i.akj = add nuw i64 %.0408597.i, 1             ; 3 uses
  %i.akk = getelementptr inbounds nuw [16 x i8], ptr %i.ake, i64 %i.akj
  %i.akl = load <2 x double>, ptr %i.akk, align 8, !tbaa !110 ; 6 uses
  %i.akm = icmp eq i64 %.0408597.i, 0
  br i1 %i.akm, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %foldExtExtBinop344 = fsub <2 x double> %i.aki, %i.akl
  %i.akn = extractelement <2 x double> %foldExtExtBinop344, i64 0 ; 3 uses
  %foldExtExtBinop346 = fsub <2 x double> %i.aki, %i.akl
  %i.ako = extractelement <2 x double> %foldExtExtBinop346, i64 1 ; 3 uses
  %i.akp = fmul double %i.ako, %i.ako
  %i.akq = call double @llvm.fmuladd.f64(double %i.akn, double %i.akn, double %i.akp)
  %i.akr = fadd double %i.akq, 1.000000e-04
  %sqrt.i.i = call double @llvm.sqrt.f64(double %i.akr)
  %i.aks = fdiv double 2.000000e+00, %sqrt.i.i    ; 2 uses
  %i.akt = fmul double %i.ako, %i.aks
  %i.aku = fneg double %i.akn
  %i.akv = fmul double %i.aks, %i.aku
  store double %i.akt, ptr %i.akf, align 8, !tbaa !110
  store double %i.akv, ptr %.sroa.4100.0..sroa_idx.i, align 8, !tbaa !110
  br label %bb.ks

bb.kr:                                            ; preds = %bb.kp
  %i.akw = getelementptr inbounds nuw [16 x i8], ptr %i.akf, i64 %.0408597.i ; 2 uses
  %i.akx = extractelement <2 x double> %i.akl, i64 0
  %i.aky = fsub double %.sroa.0210.1593.i, %i.akx ; 3 uses
  %i.akz = extractelement <2 x double> %i.akl, i64 1
  %i.ala = fsub double %.sroa.8214.1594.i, %i.akz ; 3 uses
  %i.alb = fmul double %i.ala, %i.ala
  %i.alc = call double @llvm.fmuladd.f64(double %i.aky, double %i.aky, double %i.alb)
  %i.ald = fadd double %i.alc, 1.000000e-04
  %sqrt.i493.i = call double @llvm.sqrt.f64(double %i.ald)
  %i.ale = fdiv double 2.000000e+00, %sqrt.i493.i ; 2 uses
  %i.alf = fmul double %i.ala, %i.ale
  %i.alg = fneg double %i.aky
  %i.alh = fmul double %i.ale, %i.alg
  store double %i.alf, ptr %i.akw, align 8, !tbaa !110
  %.sroa.498.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akw, i64 8
  store double %i.alh, ptr %.sroa.498.0..sroa_idx.i, align 8, !tbaa !110
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %i.ali = add i64 %.0408597.i, 2                 ; 3 uses
  %i.alj = getelementptr inbounds nuw [16 x i8], ptr %i.ake, i64 %i.ali
  %i.alk = load <2 x double>, ptr %i.alj, align 8, !tbaa !110 ; 4 uses
  %i.all = add i64 %.0408597.i, 3                 ; 4 uses
  %i.alm = getelementptr inbounds nuw [16 x i8], ptr %i.ake, i64 %i.all
  %i.aln = load <2 x double>, ptr %i.alm, align 8, !tbaa !110 ; 3 uses
  %i.alo = getelementptr inbounds nuw [16 x i8], ptr %i.akf, i64 %i.akj ; 2 uses
  %i.alp = getelementptr inbounds nuw [16 x i8], ptr %i.akf, i64 %i.ali ; 2 uses
  %i.alq = fsub <2 x double> %i.akl, %i.alk       ; 3 uses
  %i.alr = extractelement <2 x double> %i.alq, i64 0
  %i.als = extractelement <2 x double> %i.alq, i64 1
  %i.alt = call double @hypot(double noundef %i.alr, double noundef %i.als) #27 ; 2 uses
  %i.alu = fcmp olt double %i.alt, 1.000000e-04
  br i1 %i.alu, label %bb.kt, label %computeoffset_qr.exit.i

bb.kt:                                            ; preds = %bb.ks
  %i.alv = fsub <2 x double> %i.aki, %i.aln       ; 4 uses
  %foldExtExtBinop348 = fmul <2 x double> %i.alv, %i.alv
  %i.alw = extractelement <2 x double> %foldExtExtBinop348, i64 1
  %i.alx = extractelement <2 x double> %i.alv, i64 0 ; 2 uses
  %i.aly = call double @llvm.fmuladd.f64(double %i.alx, double %i.alx, double %i.alw)
  %i.alz = fadd double %i.aly, 1.000000e-04
  %sqrt.i499.i = call double @llvm.sqrt.f64(double %i.alz)
  br label %computeoffset_qr.exit.i

computeoffset_qr.exit.i:                          ; preds = %bb.kt, %bb.ks
  %.022.i.i = phi double [ %sqrt.i499.i, %bb.kt ], [ %i.alt, %bb.ks ]
  %i.ama = phi <2 x double> [ %i.alv, %bb.kt ], [ %i.alq, %bb.ks ] ; 2 uses
  %i.amb = fdiv double 2.000000e+00, %.022.i.i
  %i.amc = getelementptr inbounds nuw [16 x i8], ptr %i.akf, i64 %.0408597.i
  %i.amd = getelementptr inbounds nuw [16 x i8], ptr %i.akg, i64 %.0408597.i
  %i.ame = getelementptr inbounds nuw [16 x i8], ptr %i.akg, i64 %i.akj
  %i.amf = getelementptr inbounds nuw [16 x i8], ptr %i.akg, i64 %i.ali
  %i.amg = insertelement <2 x double> poison, double %i.amb, i64 0
  %i.amh = shufflevector <2 x double> %i.amg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ami = fneg <2 x double> %i.ama
  %i.amj = shufflevector <2 x double> %i.ama, <2 x double> %i.ami, <2 x i32> <i32 1, i32 2>
  %i.amk = fmul <2 x double> %i.amh, %i.amj       ; 2 uses
  store <2 x double> %i.amk, ptr %i.alp, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.alo, ptr noundef nonnull align 8 dereferenceable(16) %i.alp, i64 16, i1 false), !tbaa.struct !120
  %i.aml = load <2 x double>, ptr %i.amc, align 8, !tbaa !110
  %i.amm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.air, <2 x double> %i.aml, <2 x double> %i.aki)
  store <2 x double> %i.amm, ptr %i.amd, align 8, !tbaa !110
  %i.amn = load <2 x double>, ptr %i.alo, align 8, !tbaa !110
  %i.amo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.air, <2 x double> %i.amn, <2 x double> %i.akl)
  store <2 x double> %i.amo, ptr %i.ame, align 8, !tbaa !110
  %i.amp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.air, <2 x double> %i.amk, <2 x double> %i.alk)
  store <2 x double> %i.amp, ptr %i.amf, align 8, !tbaa !110
  %i.amq = icmp ult i64 %i.all, %i.akd
  %i.amr = extractelement <2 x double> %i.alk, i64 0 ; 2 uses
  %i.ams = extractelement <2 x double> %i.alk, i64 1 ; 2 uses
  br i1 %i.amq, label %bb.kp, label %._crit_edge599.i, !llvm.loop !352

._crit_edge599.i:                                 ; preds = %computeoffset_qr.exit.i, %gv_calloc.exit492.i
  %i.amt = phi ptr [ %i.ajl, %gv_calloc.exit492.i ], [ %i.akf, %computeoffset_qr.exit.i ]
  %i.amu = phi ptr [ %i.aju, %gv_calloc.exit492.i ], [ %i.akg, %computeoffset_qr.exit.i ]
  %.sroa.0210.1.lcssa.i = phi double [ %.sroa.0210.0604.i, %gv_calloc.exit492.i ], [ %i.amr, %computeoffset_qr.exit.i ] ; 2 uses
  %.sroa.8214.1.lcssa.i = phi double [ %.sroa.8214.0605.i, %gv_calloc.exit492.i ], [ %i.ams, %computeoffset_qr.exit.i ] ; 2 uses
  %.0408.lcssa.i = phi i64 [ 0, %gv_calloc.exit492.i ], [ %i.all, %computeoffset_qr.exit.i ] ; 2 uses
  %i.amv = phi <2 x double> [ %i.aka, %gv_calloc.exit492.i ], [ %i.aln, %computeoffset_qr.exit.i ] ; 3 uses
  %i.amw = getelementptr inbounds nuw [16 x i8], ptr %i.amt, i64 %.0408.lcssa.i
  %i.amx = extractelement <2 x double> %i.amv, i64 0
  %i.amy = fsub double %.sroa.0210.1.lcssa.i, %i.amx ; 3 uses
  %i.amz = extractelement <2 x double> %i.amv, i64 1
  %i.ana = fsub double %.sroa.8214.1.lcssa.i, %i.amz ; 3 uses
  %i.anb = fmul double %i.ana, %i.ana
  %i.anc = call double @llvm.fmuladd.f64(double %i.amy, double %i.amy, double %i.anb)
  %i.and = fadd double %i.anc, 1.000000e-04
  %sqrt.i500.i = call double @llvm.sqrt.f64(double %i.and)
  %i.ane = fdiv double 2.000000e+00, %sqrt.i500.i
  %i.anf = fneg double %i.amy
  %i.ang = getelementptr inbounds nuw [16 x i8], ptr %i.amu, i64 %.0408.lcssa.i
  %i.anh = insertelement <2 x double> poison, double %i.ane, i64 0
  %i.ani = shufflevector <2 x double> %i.anh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.anj = insertelement <2 x double> poison, double %i.ana, i64 0
  %i.ank = insertelement <2 x double> %i.anj, double %i.anf, i64 1
  %i.anl = fmul <2 x double> %i.ani, %i.ank       ; 2 uses
  store <2 x double> %i.anl, ptr %i.amw, align 8, !tbaa !110
  %i.anm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.air, <2 x double> %i.anl, <2 x double> %i.amv)
  store <2 x double> %i.anm, ptr %i.ang, align 8, !tbaa !110
  %i.ann = add nuw nsw i64 %.0409606.i, 1         ; 2 uses
  %exitcond667.not.i = icmp eq i64 %i.ann, %i.ahx
  br i1 %exitcond667.not.i, label %._crit_edge608.i, label %bb.ki, !llvm.loop !353

.lr.ph624.i:                                      ; preds = %gv_strdup.exit.i, %._crit_edge617.i
  %.0371623.i = phi i32 [ %i.anv, %._crit_edge617.i ], [ 0, %gv_strdup.exit.i ] ; 3 uses
  %.1380622.i = phi ptr [ %i.anw, %._crit_edge617.i ], [ %i.aja, %gv_strdup.exit.i ] ; 2 uses
  %.0401621.i = phi ptr [ %spec.select468.i, %._crit_edge617.i ], [ %.0399524.i, %gv_strdup.exit.i ]
  %.0403620.i = phi ptr [ %.2405.i, %._crit_edge617.i ], [ %.0399524.i, %gv_strdup.exit.i ]
  %.0406619.i = phi ptr [ %.1407.i, %._crit_edge617.i ], [ %.0399524.i, %gv_strdup.exit.i ] ; 2 uses
  %i.ano = load i8, ptr %.1380622.i, align 1, !tbaa !14
  %.not462.i = icmp eq i8 %i.ano, 0
  %spec.store.select3.i = select i1 %.not462.i, ptr @.str.27, ptr %.1380622.i ; 7 uses
  %.not463.i = icmp eq ptr %spec.store.select3.i, %.0406619.i
  br i1 %.not463.i, label %bb.kw, label %bb.ku

bb.ku:                                            ; preds = %.lr.ph624.i
  %i.anp = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 156
  %i.anr = load i8, ptr %i.anq, align 4, !tbaa !392
  %i.ans = and i8 %i.anr, 3
  %.not464.i = icmp eq i8 %i.ans, 0
  br i1 %.not464.i, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %spec.store.select3.i) #27
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef nonnull %spec.store.select3.i) #27
  br label %bb.kw

bb.kw:                                            ; preds = %bb.kv, %bb.ku, %.lr.ph624.i
  %.1407.i = phi ptr [ %.0406619.i, %.lr.ph624.i ], [ %spec.store.select3.i, %bb.kv ], [ %spec.store.select3.i, %bb.ku ]
  %i.ant = icmp eq i32 %.0371623.i, 0
  %spec.select468.i = select i1 %i.ant, ptr %spec.store.select3.i, ptr %.0401621.i ; 2 uses
  %i.anu = icmp samesign ult i32 %.0371623.i, 2
  %.2405.i = select i1 %i.anu, ptr %spec.store.select3.i, ptr %.0403620.i ; 2 uses
  br i1 %.not535.i, label %._crit_edge617.i, label %.lr.ph616.i

._crit_edge617.i:                                 ; preds = %._crit_edge612.i, %bb.kw
  %i.anv = add nuw nsw i32 %.0371623.i, 1
  %i.anw = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.48) #27 ; 2 uses
  %.not455.i = icmp eq ptr %i.anw, null
  br i1 %.not455.i, label %._crit_edge625.i, label %.lr.ph624.i, !llvm.loop !354

.lr.ph616.i:                                      ; preds = %bb.kw, %._crit_edge612.i
  %.0398614.i = phi i64 [ %i.aot, %._crit_edge612.i ], [ 0, %bb.kw ] ; 3 uses
  %i.anx = getelementptr inbounds nuw [56 x i8], ptr %i.ait, i64 %.0398614.i ; 2 uses
  %i.any = load ptr, ptr %i.anx, align 8, !tbaa !199 ; 10 uses
  %i.anz = getelementptr inbounds nuw [56 x i8], ptr %i.ais, i64 %.0398614.i
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !199 ; 9 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anx, i64 8
  %i.aoc = load i64, ptr %i.aob, align 8, !tbaa !198 ; 9 uses
  %.not640.i = icmp eq i64 %i.aoc, 0
  br i1 %.not640.i, label %._crit_edge612.i, label %.lr.ph611.i.preheader

.lr.ph611.i.preheader:                            ; preds = %.lr.ph616.i
  %min.iters.check = icmp ult i64 %i.aoc, 4
  br i1 %min.iters.check, label %.lr.ph611.i.preheader350, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph611.i.preheader
  %scevgep = getelementptr i8, ptr %i.any, i64 -8
  %i.aod = shl i64 %i.aoc, 4                      ; 4 uses
  %scevgep328 = getelementptr i8, ptr %scevgep, i64 %i.aod
  %scevgep329 = getelementptr i8, ptr %i.aoa, i64 -8
  %scevgep330 = getelementptr i8, ptr %scevgep329, i64 %i.aod
  %scevgep331 = getelementptr i8, ptr %i.any, i64 8
  %scevgep332 = getelementptr i8, ptr %i.any, i64 %i.aod
  %scevgep333 = getelementptr i8, ptr %i.aoa, i64 8
  %scevgep334 = getelementptr i8, ptr %i.aoa, i64 %i.aod
  %bound0 = icmp ult ptr %i.any, %scevgep330
  %bound1 = icmp ult ptr %i.aoa, %scevgep328
  %found.conflict = and i1 %bound0, %bound1
  %bound0335 = icmp ult ptr %scevgep331, %scevgep334
  %bound1336 = icmp ult ptr %scevgep333, %scevgep332
  %found.conflict337 = and i1 %bound0335, %bound1336
  %conflict.rdx = or i1 %found.conflict, %found.conflict337
  br i1 %conflict.rdx, label %.lr.ph611.i.preheader350, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aoc, -2                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aoe = or disjoint i64 %index, 1              ; 2 uses
  %i.aof = getelementptr inbounds nuw [16 x i8], ptr %i.aoa, i64 %index
  %i.aog = getelementptr inbounds nuw [16 x i8], ptr %i.aoa, i64 %i.aoe
  %wide.load = load <2 x double>, ptr %i.aof, align 8
  %wide.load338 = load <2 x double>, ptr %i.aog, align 8
  %i.aoh = getelementptr inbounds nuw [16 x i8], ptr %i.any, i64 %index ; 2 uses
  %i.aoi = getelementptr inbounds nuw [16 x i8], ptr %i.any, i64 %i.aoe ; 2 uses
  %wide.load339 = load <2 x double>, ptr %i.aoh, align 8
  %wide.load340 = load <2 x double>, ptr %i.aoi, align 8
  %i.aoj = fadd <2 x double> %wide.load, %wide.load339
  %i.aok = fadd <2 x double> %wide.load338, %wide.load340
  store <2 x double> %i.aoj, ptr %i.aoh, align 8
  store <2 x double> %i.aok, ptr %i.aoi, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aol = icmp eq i64 %index.next, %n.vec
  br i1 %i.aol, label %middle.block, label %vector.body, !llvm.loop !355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aoc, %n.vec
  br i1 %cmp.n, label %._crit_edge612.i, label %.lr.ph611.i.preheader350

.lr.ph611.i.preheader350:                         ; preds = %vector.memcheck, %.lr.ph611.i.preheader, %middle.block
  %.0394609.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph611.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.0394609.i.ph, 1
  %xtraiter = and i64 %i.aoc, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph611.i.prol.loopexit, label %.lr.ph611.i.prol

.lr.ph611.i.prol:                                 ; preds = %.lr.ph611.i.preheader350
  %i.aom = getelementptr inbounds nuw [16 x i8], ptr %i.aoa, i64 %.0394609.i.ph
  %i.aon = getelementptr inbounds nuw [16 x i8], ptr %i.any, i64 %.0394609.i.ph ; 2 uses
  %i.aoo = load <2 x double>, ptr %i.aom, align 8, !tbaa !110
  %i.aop = load <2 x double>, ptr %i.aon, align 8, !tbaa !110
  %i.aoq = fadd <2 x double> %i.aoo, %i.aop
  store <2 x double> %i.aoq, ptr %i.aon, align 8, !tbaa !110
  %i.aor = or disjoint i64 %.0394609.i.ph, 1
  br label %.lr.ph611.i.prol.loopexit

.lr.ph611.i.prol.loopexit:                        ; preds = %.lr.ph611.i.prol, %.lr.ph611.i.preheader350
  %.0394609.i.unr = phi i64 [ %.0394609.i.ph, %.lr.ph611.i.preheader350 ], [ %i.aor, %.lr.ph611.i.prol ]
  %i.aos = icmp eq i64 %i.aoc, %.neg
  br i1 %i.aos, label %._crit_edge612.i, label %.lr.ph611.i

._crit_edge612.i:                                 ; preds = %.lr.ph611.i.prol.loopexit, %.lr.ph611.i, %middle.block, %.lr.ph616.i
  call void @gvrender_beziercurve(ptr noundef %0, ptr noundef %i.any, i64 noundef %i.aoc, i32 noundef 0) #27
  %i.aot = add nuw i64 %.0398614.i, 1             ; 2 uses
  %exitcond669.not.i = icmp eq i64 %i.aot, %i.ahx
  br i1 %exitcond669.not.i, label %._crit_edge617.i, label %.lr.ph616.i, !llvm.loop !356

.lr.ph611.i:                                      ; preds = %.lr.ph611.i.prol.loopexit, %.lr.ph611.i
  %.0394609.i = phi i64 [ %i.apf, %.lr.ph611.i ], [ %.0394609.i.unr, %.lr.ph611.i.prol.loopexit ] ; 4 uses
  %i.aou = getelementptr inbounds nuw [16 x i8], ptr %i.aoa, i64 %.0394609.i
  %i.aov = getelementptr inbounds nuw [16 x i8], ptr %i.any, i64 %.0394609.i ; 2 uses
  %i.aow = load <2 x double>, ptr %i.aou, align 8, !tbaa !110
  %i.aox = load <2 x double>, ptr %i.aov, align 8, !tbaa !110
  %i.aoy = fadd <2 x double> %i.aow, %i.aox
  store <2 x double> %i.aoy, ptr %i.aov, align 8, !tbaa !110
  %i.aoz = add nuw i64 %.0394609.i, 1             ; 2 uses
  %i.apa = getelementptr inbounds nuw [16 x i8], ptr %i.aoa, i64 %i.aoz
  %i.apb = getelementptr inbounds nuw [16 x i8], ptr %i.any, i64 %i.aoz ; 2 uses
  %i.apc = load <2 x double>, ptr %i.apa, align 8, !tbaa !110
  %i.apd = load <2 x double>, ptr %i.apb, align 8, !tbaa !110
  %i.ape = fadd <2 x double> %i.apc, %i.apd
  store <2 x double> %i.ape, ptr %i.apb, align 8, !tbaa !110
  %i.apf = add nuw i64 %.0394609.i, 2             ; 2 uses
  %exitcond668.not.i.1 = icmp eq i64 %i.apf, %i.aoc
  br i1 %exitcond668.not.i.1, label %._crit_edge612.i, label %.lr.ph611.i, !llvm.loop !357

._crit_edge625.i:                                 ; preds = %._crit_edge617.i, %gv_strdup.exit.i
  %.0403.lcssa.i = phi ptr [ %.0399524.i, %gv_strdup.exit.i ], [ %.2405.i, %._crit_edge617.i ] ; 4 uses
  %.0401.lcssa.i = phi ptr [ %.0399524.i, %gv_strdup.exit.i ], [ %spec.select468.i, %._crit_edge617.i ] ; 3 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aph = load i32, ptr %i.apg, align 8, !tbaa !394 ; 3 uses
  %.not456.i = icmp eq i32 %i.aph, 0
  br i1 %.not456.i, label %bb.lb, label %bb.kx

bb.kx:                                            ; preds = %._crit_edge625.i
  %.not457.i = icmp eq ptr %.0403.lcssa.i, null
  br i1 %.not457.i, label %bb.la, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.api = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 156
  %i.apk = load i8, ptr %i.apj, align 4, !tbaa !392
  %i.apl = and i8 %i.apk, 3
  %.not458.i = icmp eq i8 %i.apl, 0
  br i1 %.not458.i, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %.0403.lcssa.i) #27
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef nonnull %.0403.lcssa.i) #27
  %.pre678.i = load i32, ptr %i.apg, align 8, !tbaa !394
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ky, %bb.kx
  %i.apm = phi i32 [ %i.aph, %bb.ky ], [ %.pre678.i, %bb.kz ], [ %i.aph, %bb.kx ]
  %i.apn = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.apo = load ptr, ptr %6, align 8, !tbaa !199  ; 2 uses
  %i.app = load double, ptr %i.apn, align 8
  %i.apq = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.apr = load double, ptr %i.apq, align 8
  %i.aps = load double, ptr %i.apo, align 8
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apo, i64 8
  %i.apu = load double, ptr %i.apt, align 8
  call void @arrow_gen(ptr noundef %0, i32 noundef 2, double %i.app, double %i.apr, double %i.aps, double %i.apu, double noundef %i.zw, double noundef %i.zr, i32 noundef %i.apm) #27
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %._crit_edge625.i
  %.3.i100 = phi ptr [ %.0403.lcssa.i, %bb.la ], [ null, %._crit_edge625.i ]
  %i.apv = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.apw = load i32, ptr %i.apv, align 4, !tbaa !395 ; 3 uses
  %.not459.i = icmp eq i32 %i.apw, 0
  br i1 %.not459.i, label %bb.lg, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %.not460.i = icmp eq ptr %.3.i100, %.0401.lcssa.i
  br i1 %.not460.i, label %bb.lf, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.apx = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 156
  %i.apz = load i8, ptr %i.apy, align 4, !tbaa !392
  %i.aqa = and i8 %i.apz, 3
  %.not461.i = icmp eq i8 %i.aqa, 0
  br i1 %.not461.i, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %bb.ld
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef %.0401.lcssa.i) #27
  call void @gvrender_set_fillcolor(ptr noundef %0, ptr noundef %.0401.lcssa.i) #27
  %.pre679.i = load i32, ptr %i.apv, align 4, !tbaa !395
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %bb.ld, %bb.lc
  %i.aqb = phi i32 [ %i.apw, %bb.ld ], [ %.pre679.i, %bb.le ], [ %i.apw, %bb.lc ]
  %i.aqc = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.aqd = load ptr, ptr %6, align 8, !tbaa !199
  %i.aqe = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aqf = load i64, ptr %i.aqe, align 8, !tbaa !198
  %i.aqg = getelementptr [16 x i8], ptr %i.aqd, i64 %i.aqf ; 2 uses
  %i.aqh = getelementptr i8, ptr %i.aqg, i64 -16
  %i.aqi = load double, ptr %i.aqc, align 8
  %i.aqj = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aqk = load double, ptr %i.aqj, align 8
  %i.aql = load double, ptr %i.aqh, align 8
  %i.aqm = getelementptr i8, ptr %i.aqg, i64 -8
  %i.aqn = load double, ptr %i.aqm, align 8
  call void @arrow_gen(ptr noundef %0, i32 noundef 3, double %i.aqi, double %i.aqk, double %i.aql, double %i.aqn, double noundef %i.zw, double noundef %i.zr, i32 noundef %i.aqb) #27
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.lb
  call void @free(ptr noundef %i.aiu) #27
  br i1 %.not535.i, label %._crit_edge631.i, label %.lr.ph630.i

._crit_edge631.i:                                 ; preds = %.lr.ph630.i, %bb.lg
  call void @free(ptr noundef %i.ais) #27
  call void @free(ptr noundef %i.ait) #27
  br label %.loopexit543.i

.lr.ph630.i:                                      ; preds = %bb.lg, %.lr.ph630.i
  %.0393628.i = phi i64 [ %i.aqs, %.lr.ph630.i ], [ 0, %bb.lg ] ; 3 uses
  %i.aqo = getelementptr inbounds nuw [56 x i8], ptr %i.ais, i64 %.0393628.i
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !199
  call void @free(ptr noundef %i.aqp) #27
  %i.aqq = getelementptr inbounds nuw [56 x i8], ptr %i.ait, i64 %.0393628.i
  %i.aqr = load ptr, ptr %i.aqq, align 8, !tbaa !199
  call void @free(ptr noundef %i.aqr) #27
  %i.aqs = add nuw i64 %.0393628.i, 1             ; 2 uses
  %exitcond670.not.i = icmp eq i64 %i.aqs, %i.ahx
  br i1 %exitcond670.not.i, label %._crit_edge631.i, label %.lr.ph630.i, !llvm.loop !358

bb.lh:                                            ; preds = %bb.jz
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aht, i64 156
  %i.aqu = load i8, ptr %i.aqt, align 4, !tbaa !392
  %i.aqv = and i8 %i.aqu, 3
  %.not442.i = icmp eq i8 %i.aqv, 0
  br i1 %.not442.i, label %bb.li, label %bb.ll

bb.li:                                            ; preds = %bb.lh
  %i.aqw = load i8, ptr %.0399524.i, align 1, !tbaa !14
  %.not443.i = icmp eq i8 %i.aqw, 0
  br i1 %.not443.i, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %.0399524.i) #27
  br label %.sink.split.i99

bb.lk:                                            ; preds = %bb.li
end_hunk_0
