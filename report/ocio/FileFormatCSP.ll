Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatCSP?download=true
inline.NumInlined: 1221
inline.NumDeleted: 444
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
          cleanup
  br label %.body824

bb.kv:                                            ; preds = %bb.kq
  %i.aly = landingpad { ptr, i32 }
          cleanup
  br label %bb.nh

bb.kw:                                            ; preds = %bb.kr
  %i.alz = landingpad { ptr, i32 }
          cleanup
  br label %.body829

bb.kx:                                            ; preds = %bb.kt
  %i.ama = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %59) #25
  br label %.body829

bb.ky:                                            ; preds = %bb.ks, %_ZN16OpenColorIO_v2_512_GLOBAL__N_126rsr_Interpolator1D_destroyEPNS0_19rsr_Interpolator1D_E.exit
  %indvars.iv1141 = phi i64 [ 0, %bb.ks ], [ %indvars.iv.next1142, %_ZN16OpenColorIO_v2_512_GLOBAL__N_126rsr_Interpolator1D_destroyEPNS0_19rsr_Interpolator1D_E.exit ] ; 6 uses
  %i.amb = getelementptr inbounds nuw [24 x i8], ptr %23, i64 %indvars.iv1141 ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %i.amb, i64 8
  %i.amd = load ptr, ptr %i.amc, align 8, !tbaa !112 ; 2 uses
  %i.ame = load ptr, ptr %i.amb, align 8, !tbaa !111 ; 8 uses
  %i.amf = ptrtoint ptr %i.amd to i64
  %i.amg = ptrtoint ptr %i.ame to i64             ; 3 uses
  %i.amh = sub i64 %i.amf, %i.amg                 ; 4 uses
  %i.ami = ashr exact i64 %i.amh, 2               ; 6 uses
  %i.amj = load float, ptr %i.ame, align 4, !tbaa !47 ; 3 uses
  %i.amk = getelementptr i8, ptr %i.ame, i64 %i.amh
  %i.aml = getelementptr i8, ptr %i.amk, i64 -4
  %i.amm = load float, ptr %i.aml, align 4, !tbaa !47 ; 2 uses
  %i.amn = trunc i64 %i.ami to i32                ; 2 uses
  %i.amo = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #29 ; 8 uses
  %i.amp = icmp eq ptr %i.amo, null
  br i1 %i.amp, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.amq = and i64 %i.amh, 17179869180            ; 4 uses
  %i.amr = call noalias ptr @malloc(i64 noundef %i.amq) #29 ; 4 uses
  store ptr %i.amr, ptr %i.amo, align 8, !tbaa !157
  %i.ams = icmp eq ptr %i.amr, null
  br i1 %i.ams, label %bb.la, label %bb.lb

bb.la:                                            ; preds = %bb.kz
  call void @free(ptr noundef nonnull %i.amo) #25
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit

bb.lb:                                            ; preds = %bb.kz
  %i.amt = call noalias ptr @malloc(i64 noundef %i.amq) #29 ; 3 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amo, i64 8
  store ptr %i.amt, ptr %i.amu, align 8, !tbaa !158
  %i.amv = icmp eq ptr %i.amt, null
  br i1 %i.amv, label %bb.lc, label %bb.ld

bb.lc:                                            ; preds = %bb.lb
  call void @free(ptr noundef nonnull %i.amr) #25
  call void @free(ptr noundef nonnull %i.amo) #25
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit

bb.ld:                                            ; preds = %bb.lb
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amo, i64 16
  store i32 %i.amn, ptr %i.amw, align 8, !tbaa !159
  %.not.i = icmp eq i32 %i.amn, 0
  br i1 %.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ld
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.amr, i8 0, i64 %i.amq, i1 false), !tbaa !47
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.amt, i8 0, i64 %i.amq, i1 false), !tbaa !47
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit: ; preds = %bb.ky, %bb.la, %bb.lc, %bb.ld, %.lr.ph.preheader.i
  %.020.i = phi ptr [ null, %bb.ky ], [ null, %bb.la ], [ null, %bb.lc ], [ %i.amo, %bb.ld ], [ %i.amo, %.lr.ph.preheader.i ] ; 9 uses
  %.not1107 = icmp eq ptr %i.amd, %i.ame
  br i1 %.not1107, label %._crit_edge1104, label %.lr.ph1103

.lr.ph1103:                                       ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit
  %i.amx = load ptr, ptr %.020.i, align 8, !tbaa !157 ; 5 uses
  %i.amy = getelementptr inbounds nuw [24 x i8], ptr %24, i64 %indvars.iv1141
  %i.amz = load ptr, ptr %i.amy, align 8, !tbaa !111 ; 5 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.anb = load ptr, ptr %i.ana, align 8, !tbaa !158 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ami, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1103
  %i.anc = ptrtoaddr ptr %i.anb to i64            ; 3 uses
  %i.and = ptrtoaddr ptr %i.amz to i64            ; 2 uses
  %i.ane = ptrtoaddr ptr %i.amx to i64            ; 3 uses
  %i.anf = sub i64 %i.ane, %i.anc
  %diff.check = icmp ugt i64 %i.anf, -32
  %i.ang = sub i64 %i.amg, %i.ane
  %diff.check1411 = icmp ugt i64 %i.ang, -32
  %conflict.rdx = or i1 %diff.check, %diff.check1411
  %i.anh = sub i64 %i.ane, %i.and
  %diff.check1412 = icmp ugt i64 %i.anh, -32
  %conflict.rdx1413 = or i1 %conflict.rdx, %diff.check1412
  %i.ani = sub i64 %i.amg, %i.anc
  %diff.check1414 = icmp ugt i64 %i.ani, -32
  %conflict.rdx1415 = or i1 %conflict.rdx1413, %diff.check1414
  %i.anj = sub i64 %i.and, %i.anc
  %diff.check1416 = icmp ugt i64 %i.anj, -32
  %conflict.rdx1417 = or i1 %conflict.rdx1415, %diff.check1416
  br i1 %conflict.rdx1417, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ami, -8                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ank = getelementptr inbounds nuw [4 x i8], ptr %i.ame, i64 %index ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 16
  %wide.load = load <4 x float>, ptr %i.ank, align 4, !tbaa !47
  %wide.load1418 = load <4 x float>, ptr %i.anl, align 4, !tbaa !47
  %i.anm = getelementptr inbounds nuw [4 x i8], ptr %i.amx, i64 %index ; 2 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 16
  store <4 x float> %wide.load, ptr %i.anm, align 4, !tbaa !47
  store <4 x float> %wide.load1418, ptr %i.ann, align 4, !tbaa !47
  %i.ano = getelementptr inbounds nuw [4 x i8], ptr %i.amz, i64 %index ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 16
  %wide.load1419 = load <4 x float>, ptr %i.ano, align 4, !tbaa !47
  %wide.load1420 = load <4 x float>, ptr %i.anp, align 4, !tbaa !47
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %i.anb, i64 %index ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 16
  store <4 x float> %wide.load1419, ptr %i.anq, align 4, !tbaa !47
  store <4 x float> %wide.load1420, ptr %i.anr, align 4, !tbaa !47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ans = icmp eq i64 %index.next, %n.vec
  br i1 %i.ans, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ami, %n.vec
  br i1 %cmp.n, label %._crit_edge1104, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph1103, %middle.block
  %.01431102.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph1103 ], [ %n.vec, %middle.block ] ; 7 uses
  %.neg = or disjoint i64 %.01431102.ph, 1
  %i.ant = and i64 %i.amh, 4
  %lcmp.mod.not = icmp eq i64 %i.ant, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.anu = getelementptr inbounds nuw [4 x i8], ptr %i.ame, i64 %.01431102.ph
  %i.anv = load float, ptr %i.anu, align 4, !tbaa !47
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %i.amx, i64 %.01431102.ph
  store float %i.anv, ptr %i.anw, align 4, !tbaa !47
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %i.amz, i64 %.01431102.ph
  %i.any = load float, ptr %i.anx, align 4, !tbaa !47
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %i.anb, i64 %.01431102.ph
  store float %i.any, ptr %i.anz, align 4, !tbaa !47
  %i.aoa = or disjoint i64 %.01431102.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01431102.unr = phi i64 [ %.01431102.ph, %scalar.ph.preheader ], [ %i.aoa, %scalar.ph.prol ]
  %i.aob = icmp eq i64 %i.ami, %.neg
  br i1 %i.aob, label %._crit_edge1104, label %scalar.ph

._crit_edge1104:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit
  %i.aoc = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #29 ; 11 uses
  %i.aod = icmp eq ptr %i.aoc, null
  br i1 %i.aod, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit, label %bb.le

bb.le:                                            ; preds = %._crit_edge1104
  %i.aoe = getelementptr inbounds nuw i8, ptr %.020.i, i64 16
  %i.aof = load i32, ptr %i.aoe, align 8, !tbaa !159 ; 5 uses
  %i.aog = zext i32 %i.aof to i64
  %i.aoh = shl nuw nsw i64 %i.aog, 2              ; 2 uses
  %i.aoi = call noalias ptr @malloc(i64 noundef %i.aoh) #29 ; 7 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoc, i64 8
  store ptr %i.aoi, ptr %i.aoj, align 8, !tbaa !161
  %i.aok = icmp eq ptr %i.aoi, null
  br i1 %i.aok, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  call void @free(ptr noundef nonnull %i.aoc) #25
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit

bb.lg:                                            ; preds = %bb.le
  %i.aol = load ptr, ptr %.020.i, align 8, !tbaa !157 ; 12 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aoi, ptr align 4 %i.aol, i64 %i.aoh, i1 false)
  %i.aom = add i32 %i.aof, -1                     ; 2 uses
  %i.aon = zext i32 %i.aom to i64                 ; 3 uses
  %i.aoo = mul nuw nsw i64 %i.aon, 20
  %i.aop = call noalias ptr @malloc(i64 noundef %i.aoo) #29 ; 12 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aoc, i64 16
  store ptr %i.aop, ptr %i.aoq, align 8, !tbaa !162
  %i.aor = icmp eq ptr %i.aop, null
  br i1 %i.aor, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  call void @free(ptr noundef nonnull %i.aoi) #25
  call void @free(ptr noundef nonnull %i.aoc) #25
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit

bb.li:                                            ; preds = %bb.lg
  store i32 %i.aof, ptr %i.aoc, align 8, !tbaa !163
  %i.aos = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !158 ; 10 uses
  %i.aou = load float, ptr %i.aot, align 4, !tbaa !47 ; 5 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aoc, i64 24
  store float %i.aou, ptr %i.aov, align 8, !tbaa !164
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr %i.aot, i64 %i.aon
  %i.aox = load float, ptr %i.aow, align 4, !tbaa !47
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aoc, i64 28
  store float %i.aox, ptr %i.aoy, align 4, !tbaa !165
  %i.aoz = icmp eq i32 %i.aof, 2
  br i1 %i.aoz, label %bb.lj, label %.preheader.i

.preheader.i:                                     ; preds = %bb.li
  %.not.i831 = icmp eq i32 %i.aom, 0
  br i1 %.not.i831, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %.preheader.i
  %i.apa = add i32 %i.aof, -2
  %i.apb = zext i32 %i.apa to i64                 ; 3 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aot, i64 4
  %i.apd = load float, ptr %i.apc, align 4, !tbaa !47 ; 3 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aoi, i64 4
  %i.apf = load float, ptr %i.ape, align 4, !tbaa !47 ; 2 uses
  %i.apg = load float, ptr %i.aoi, align 4, !tbaa !47
  %i.aph = fsub float %i.apf, %i.apg
  %i.api = fdiv float 1.000000e+00, %i.aph
  store float %i.api, ptr %i.aop, align 4, !tbaa !47
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aot, i64 8
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aol, i64 8
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aol, i64 4
  %i.apm = load float, ptr %i.apl, align 4, !tbaa !47 ; 2 uses
  %i.apn = load float, ptr %i.aol, align 4, !tbaa !47
  %i.apo = fsub float %i.apm, %i.apn
  %i.app = load float, ptr %i.apk, align 4, !tbaa !47
  %i.apq = fsub float %i.app, %i.apm
  %i.apr = fdiv float %i.apq, %i.apo
  %i.aps = load float, ptr %i.apj, align 4, !tbaa !47
  %i.apt = fsub float %i.aps, %i.aou
  %i.apu = fadd float %i.apr, 1.000000e+00
  %i.apv = fdiv float %i.apt, %i.apu              ; 3 uses
  %i.apw = fmul float %i.apd, 0.000000e+00
  %i.apx = fadd float %i.aou, %i.apw
  %i.apy = call float @llvm.fmuladd.f32(float %i.apv, float 0.000000e+00, float %i.apx)
  %i.apz = getelementptr inbounds nuw i8, ptr %i.aop, i64 4
  store float %i.apy, ptr %i.apz, align 4, !tbaa !47
  %i.aqa = fmul float %i.apd, 2.000000e+00
  %i.aqb = call float @llvm.fmuladd.f32(float %i.aou, float -2.000000e+00, float %i.aqa)
  %i.aqc = fsub float %i.aqb, %i.apv
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aop, i64 8
  store float %i.aqc, ptr %i.aqd, align 4, !tbaa !47
  %i.aqe = fsub float %i.aou, %i.apd
  %i.aqf = fadd float %i.aqe, %i.apv
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aop, i64 12
  store float %i.aqf, ptr %i.aqg, align 4, !tbaa !47
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aop, i64 16
  store float 0.000000e+00, ptr %i.aqh, align 4, !tbaa !47
  %i.aqi = getelementptr inbounds nuw [4 x i8], ptr %i.aol, i64 %i.apb
  %i.aqj = add nsw i64 %i.apb, -1                 ; 2 uses
  %i.aqk = getelementptr inbounds nuw [4 x i8], ptr %i.aol, i64 %i.aqj
  %i.aql = getelementptr inbounds nuw [4 x i8], ptr %i.aot, i64 %i.aqj
  br label %bb.lk

bb.lj:                                            ; preds = %bb.li
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aol, i64 4
  %i.aqn = load float, ptr %i.aqm, align 4, !tbaa !47
  %i.aqo = load float, ptr %i.aol, align 4, !tbaa !47
  %i.aqp = fsub float %i.aqn, %i.aqo
  %i.aqq = fdiv float 1.000000e+00, %i.aqp
  store float %i.aqq, ptr %i.aop, align 4, !tbaa !47
  %i.aqr = load float, ptr %i.aot, align 4, !tbaa !47 ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aop, i64 4
  store float %i.aqr, ptr %i.aqs, align 4, !tbaa !47
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aot, i64 4
  %i.aqu = load float, ptr %i.aqt, align 4, !tbaa !47
  %i.aqv = fsub float %i.aqu, %i.aqr
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aop, i64 8
  store float %i.aqv, ptr %i.aqw, align 4, !tbaa !47
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aop, i64 12
  store <2 x float> zeroinitializer, ptr %i.aqx, align 4, !tbaa !47
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit

bb.lk:                                            ; preds = %bb.ln, %.peel.next.i
  %i.aqy = phi float [ %i.apf, %.peel.next.i ], [ %i.arb, %bb.ln ]
  %indvars.iv.i = phi i64 [ 1, %.peel.next.i ], [ %indvars.iv.next.i, %bb.ln ] ; 6 uses
  %.pn.i = phi ptr [ %i.aop, %.peel.next.i ], [ %.0148151.i, %bb.ln ] ; 3 uses
  %.0148151.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 20 ; 2 uses
  %i.aqz = getelementptr inbounds nuw [4 x i8], ptr %i.aot, i64 %indvars.iv.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %60 = load <2 x float>, ptr %i.aqz, align 4, !tbaa !47 ; 7 uses
  %i.ara = getelementptr inbounds nuw [4 x i8], ptr %i.aoi, i64 %indvars.iv.next.i
  %i.arb = load float, ptr %i.ara, align 4, !tbaa !47 ; 2 uses
  %i.arc = fsub float %i.arb, %i.aqy
  %i.ard = fdiv float 1.000000e+00, %i.arc
  store float %i.ard, ptr %.0148151.i, align 4, !tbaa !47
  %i.are = icmp eq i64 %indvars.iv.i, %i.apb
  %i.arf = getelementptr inbounds nuw [4 x i8], ptr %i.aol, i64 %indvars.iv.next.i
  %i.arg = load float, ptr %i.arf, align 4, !tbaa !47 ; 3 uses
  br i1 %i.are, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  %i.arh = load float, ptr %i.aqi, align 4, !tbaa !47 ; 2 uses
  %i.ari = fsub float %i.arg, %i.arh
  %i.arj = load float, ptr %i.aqk, align 4, !tbaa !47
  %i.ark = fsub float %i.arh, %i.arj
  %i.arl = fdiv float %i.ark, %i.ari
  %i.arm = load float, ptr %i.aql, align 4, !tbaa !47
  %61 = extractelement <2 x float> %60, i64 1     ; 3 uses
  %i.arn = fsub float %61, %i.arm
  %i.aro = fadd float %i.arl, 1.000000e+00
  %i.arp = fdiv float %i.arn, %i.aro              ; 3 uses
  %i.arq = fmul float %61, 0.000000e+00           ; 2 uses
  %62 = extractelement <2 x float> %60, i64 0     ; 3 uses
  %63 = fadd float %62, %i.arq
  %64 = call float @llvm.fmuladd.f32(float %62, float 0.000000e+00, float %i.arq)
  %65 = call float @llvm.fmuladd.f32(float %i.arp, float 0.000000e+00, float %63)
  %i.arr = fadd float %64, %i.arp
  %i.ars = fsub float %61, %62
  %i.art = fsub float %i.ars, %i.arp
  %66 = insertelement <2 x float> poison, float %65, i64 0
  %i.aru = insertelement <2 x float> %66, float %i.arr, i64 1
  %i.arv = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.art, i64 0
  br label %bb.ln

bb.lm:                                            ; preds = %bb.lk
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.aol, i64 %indvars.iv.i
  %i.arx = add nsw i64 %indvars.iv.i, -1          ; 2 uses
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %i.aot, i64 %i.arx
  %i.arz = load float, ptr %i.ary, align 4, !tbaa !47
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr %i.aol, i64 %i.arx
  %i.asb = add nuw i64 %indvars.iv.i, 2
  %i.asc = and i64 %i.asb, 4294967295             ; 2 uses
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %i.aot, i64 %i.asc
  %i.ase = load float, ptr %i.asd, align 4, !tbaa !47
  %i.asf = getelementptr inbounds nuw [4 x i8], ptr %i.aol, i64 %i.asc
  %i.asg = load float, ptr %i.asf, align 4, !tbaa !47
  %i.ash = load <2 x float>, ptr %i.asa, align 4, !tbaa !47 ; 2 uses
  %i.asi = load float, ptr %i.arw, align 4, !tbaa !47
  %i.asj = fsub float %i.arg, %i.asi
  %i.ask = insertelement <2 x float> %i.ash, float %i.asg, i64 0
  %i.asl = shufflevector <2 x float> %i.ash, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.asm = insertelement <2 x float> %i.asl, float %i.arg, i64 0
  %i.asn = fsub <2 x float> %i.ask, %i.asm
  %i.aso = insertelement <2 x float> poison, float %i.asj, i64 0
  %i.asp = shufflevector <2 x float> %i.aso, <2 x float> poison, <2 x i32> zeroinitializer
  %i.asq = fdiv <2 x float> %i.asn, %i.asp
  %67 = extractelement <2 x float> %60, i64 1
  %i.asr = fsub float %67, %i.arz
  %68 = extractelement <2 x float> %60, i64 0     ; 3 uses
  %i.ass = fsub float %i.ase, %68
  %i.ast = fadd <2 x float> %i.asq, splat (float 1.000000e+00)
  %i.asu = insertelement <2 x float> poison, float %i.ass, i64 0
  %i.asv = insertelement <2 x float> %i.asu, float %i.asr, i64 1
  %i.asw = fdiv <2 x float> %i.asv, %i.ast        ; 3 uses
  %69 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.asx = shufflevector <2 x float> %i.asw, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.asy = extractelement <2 x float> %i.asw, i64 1 ; 2 uses
  %i.asz = fmul float %i.asy, 0.000000e+00
  %i.ata = fadd float %68, %i.asz
  %i.atb = call float @llvm.fmuladd.f32(float %68, float 0.000000e+00, float %i.asy)
  %i.atc = insertelement <2 x float> poison, float %i.ata, i64 0
  %i.atd = insertelement <2 x float> %i.atc, float %i.atb, i64 1
  %i.ate = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %69, <2 x float> zeroinitializer, <2 x float> %i.atd)
  %i.atf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asx, <2 x float> zeroinitializer, <2 x float> %i.ate)
  %i.atg = shufflevector <2 x float> %i.asw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ath = fmul <2 x float> %i.atg, <float -2.000000e+00, float 1.000000e+00>
  %70 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %71 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %70, <2 x float> <float -3.000000e+00, float 2.000000e+00>, <2 x float> %i.ath)
  %72 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ati = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %72, <2 x float> <float 3.000000e+00, float -2.000000e+00>, <2 x float> %71) ; 2 uses
  %i.atj = fsub <2 x float> %i.ati, %i.asx
  %i.atk = fadd <2 x float> %i.ati, %i.asx
  %i.atl = shufflevector <2 x float> %i.atj, <2 x float> %i.atk, <2 x i32> <i32 0, i32 3>
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.ll
  %i.atm = phi <2 x float> [ %i.aru, %bb.ll ], [ %i.atf, %bb.lm ]
  %i.atn = phi <2 x float> [ %i.arv, %bb.ll ], [ %i.atl, %bb.lm ]
  %i.ato = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  store <2 x float> %i.atm, ptr %i.ato, align 4, !tbaa !47
  %i.atp = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  store <2 x float> %i.atn, ptr %i.atp, align 4, !tbaa !47
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.aon
  br i1 %exitcond.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit, label %bb.lk, !llvm.loop !100

_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit: ; preds = %bb.ln, %._crit_edge1104, %bb.lf, %bb.lh, %.preheader.i, %bb.lj
  %.0.i = phi ptr [ null, %._crit_edge1104 ], [ null, %bb.lf ], [ null, %bb.lh ], [ %i.aoc, %bb.lj ], [ %i.aoc, %.preheader.i ], [ %i.aoc, %bb.ln ] ; 7 uses
  %i.atq = fpext float %i.amj to double
  %i.atr = getelementptr inbounds nuw [8 x i8], ptr %i.akr, i64 %indvars.iv1141
  store double %i.atq, ptr %i.atr, align 8, !tbaa !168
  %i.ats = fpext float %i.amm to double
  %i.att = getelementptr inbounds nuw [8 x i8], ptr %i.aks, i64 %indvars.iv1141
  store double %i.ats, ptr %i.att, align 8, !tbaa !168
  %i.atu = fsub float %i.amm, %i.amj
  %i.atv = load ptr, ptr %i.alw, align 8, !tbaa !111
  %i.atw = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.atz = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.atv, i64 %indvars.iv1141
  br label %bb.lr

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01431102 = phi i64 [ %i.aun, %scalar.ph ], [ %.01431102.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aua = getelementptr inbounds nuw [4 x i8], ptr %i.ame, i64 %.01431102
  %i.aub = load float, ptr %i.aua, align 4, !tbaa !47
  %i.auc = getelementptr inbounds nuw [4 x i8], ptr %i.amx, i64 %.01431102
  store float %i.aub, ptr %i.auc, align 4, !tbaa !47
  %i.aud = getelementptr inbounds nuw [4 x i8], ptr %i.amz, i64 %.01431102
  %i.aue = load float, ptr %i.aud, align 4, !tbaa !47
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %i.anb, i64 %.01431102
  store float %i.aue, ptr %i.auf, align 4, !tbaa !47
  %i.aug = add nuw i64 %.01431102, 1              ; 4 uses
  %i.auh = getelementptr inbounds nuw [4 x i8], ptr %i.ame, i64 %i.aug
  %i.aui = load float, ptr %i.auh, align 4, !tbaa !47
  %i.auj = getelementptr inbounds nuw [4 x i8], ptr %i.amx, i64 %i.aug
  store float %i.aui, ptr %i.auj, align 4, !tbaa !47
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %i.amz, i64 %i.aug
  %i.aul = load float, ptr %i.auk, align 4, !tbaa !47
  %i.aum = getelementptr inbounds nuw [4 x i8], ptr %i.anb, i64 %i.aug
  store float %i.aul, ptr %i.aum, align 4, !tbaa !47
  %i.aun = add nuw i64 %.01431102, 2              ; 2 uses
  %exitcond1136.not.1 = icmp eq i64 %i.aun, %i.ami
  br i1 %exitcond1136.not.1, label %._crit_edge1104, label %scalar.ph, !llvm.loop !101

bb.lo:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit
  %i.auo = icmp eq ptr %.020.i, null
  br i1 %i.auo, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.aup = load ptr, ptr %.020.i, align 8, !tbaa !157
  call void @free(ptr noundef %i.aup) #25
  %i.auq = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.aur = load ptr, ptr %i.auq, align 8, !tbaa !158
  call void @free(ptr noundef %i.aur) #25
  call void @free(ptr noundef nonnull %.020.i) #25
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit: ; preds = %bb.lo, %bb.lp
  %i.aus = icmp eq ptr %.0.i, null
  br i1 %i.aus, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_126rsr_Interpolator1D_destroyEPNS0_19rsr_Interpolator1D_E.exit, label %bb.lq

bb.lq:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit
  %i.aut = load ptr, ptr %i.atw, align 8, !tbaa !161
  call void @free(ptr noundef %i.aut) #25
  %i.auu = load ptr, ptr %i.atx, align 8, !tbaa !162
  call void @free(ptr noundef %i.auu) #25
  call void @free(ptr noundef nonnull %.0.i) #25
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_126rsr_Interpolator1D_destroyEPNS0_19rsr_Interpolator1D_E.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_126rsr_Interpolator1D_destroyEPNS0_19rsr_Interpolator1D_E.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit, %bb.lq
  %indvars.iv.next1142 = add nuw nsw i64 %indvars.iv1141, 1 ; 2 uses
  %exitcond1144.not = icmp eq i64 %indvars.iv.next1142, 3
  br i1 %exitcond1144.not, label %bb.kt, label %bb.ky, !llvm.loop !102

bb.lr:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit, %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit
  %indvars.iv1137 = phi i64 [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit ], [ %indvars.iv.next1138, %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit ] ; 3 uses
  %i.auv = trunc nuw nsw i64 %indvars.iv1137 to i32
  %i.auw = uitofp nneg i32 %i.auv to float
  %i.aux = fdiv float %i.auw, 6.553500e+04
  %i.auy = call noundef float @llvm.fmuladd.f32(float %i.atu, float %i.aux, float %i.amj) ; 6 uses
  %i.auz = fcmp uno float %i.auy, 0.000000e+00
  br i1 %i.auz, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.ava = load ptr, ptr %i.atw, align 8, !tbaa !161 ; 4 uses
  %i.avb = load float, ptr %i.ava, align 4, !tbaa !47 ; 2 uses
  %i.avc = fcmp olt float %i.auy, %i.avb
  br i1 %i.avc, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.avd = load float, ptr %i.atz, align 8, !tbaa !164
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit

bb.lu:                                            ; preds = %bb.ls
  %i.ave = load i32, ptr %.0.i, align 8, !tbaa !163 ; 2 uses
  %i.avf = sext i32 %i.ave to i64
  %i.avg = getelementptr [4 x i8], ptr %i.ava, i64 %i.avf
  %i.avh = getelementptr i8, ptr %i.avg, i64 -4
  %i.avi = load float, ptr %i.avh, align 4, !tbaa !47
  %i.avj = fcmp ogt float %i.auy, %i.avi
  br i1 %i.avj, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  %i.avk = load float, ptr %i.aty, align 4, !tbaa !165
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit

bb.lw:                                            ; preds = %bb.lu
  %i.avl = add nsw i32 %i.ave, -1                 ; 2 uses
  %i.avm = icmp eq i32 %i.avl, 1
  br i1 %i.avm, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i, label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %bb.lw, %tailrecurse.i.i.i
  %.tr1921.i.i.i = phi i32 [ %..tr19.i.i.i, %tailrecurse.i.i.i ], [ %i.avl, %bb.lw ] ; 2 uses
  %.tr1820.i.i.i = phi i32 [ %.tr18..i.i.i, %tailrecurse.i.i.i ], [ 0, %bb.lw ] ; 2 uses
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

_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i, %bb.lw
  %i.avx = phi float [ %.pre.i, %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i ], [ %i.avb, %bb.lw ]
  %.tr18.lcssa.i.i.i = phi i64 [ %i.avw, %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i ], [ 0, %bb.lw ]
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

_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i, %bb.lv, %bb.lt, %bb.lr
  %.0.i832 = phi float [ %i.awn, %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i ], [ %i.avd, %bb.lt ], [ %i.avk, %bb.lv ], [ %i.auy, %bb.lr ]
  %.idx1361 = mul nuw nsw i64 %indvars.iv1137, 12
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx1361
  store float %.0.i832, ptr %gep, align 4, !tbaa !47
  %indvars.iv.next1138 = add nuw nsw i64 %indvars.iv1137, 1 ; 2 uses
  %exitcond1140.not = icmp eq i64 %indvars.iv.next1138, 65536
  br i1 %exitcond1140.not, label %bb.lo, label %bb.lr, !llvm.loop !103

bb.lx:                                            ; preds = %bb.kt
  store ptr %i.als, ptr %i.akt, align 8, !tbaa !57
  %i.awo = getelementptr inbounds nuw i8, ptr %i.akm, i64 96 ; 3 uses
  %i.awp = load ptr, ptr %i.awo, align 8, !tbaa !54 ; 2 uses
  %.not.i.i.i833 = icmp eq ptr %i.alp, %i.awp
  br i1 %.not.i.i.i833, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataEEaSERKS2_.exit.thread, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.awq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i834 = icmp eq i8 %i.awq, 0
  br i1 %.not.i.i.i.i834, label %bb.ma, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.awr = load i32, ptr %i.alq, align 8, !tbaa !38
  %i.aws = add nsw i32 %i.awr, 1
  store i32 %i.aws, ptr %i.alq, align 8, !tbaa !38
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.ma:                                            ; preds = %bb.ly
  %i.awt = atomicrmw volatile add ptr %i.alq, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.awo, align 8, !tbaa !54
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.ma, %bb.lz
  %i.awu = phi ptr [ %.pr.pre.i.i.i, %bb.ma ], [ %i.awp, %bb.lz ] ; 8 uses
end_hunk_0
