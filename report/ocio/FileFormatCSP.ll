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
  %i.amd = load ptr, ptr %i.amc, align 8, !tbaa !57 ; 2 uses
  %i.ame = load ptr, ptr %i.amb, align 8, !tbaa !54 ; 8 uses
  %i.amf = ptrtoint ptr %i.amd to i64
  %i.amg = ptrtoint ptr %i.ame to i64             ; 3 uses
  %i.amh = sub i64 %i.amf, %i.amg                 ; 4 uses
  %i.ami = ashr exact i64 %i.amh, 2               ; 6 uses
  %i.amj = load float, ptr %i.ame, align 4, !tbaa !61 ; 3 uses
  %i.amk = getelementptr i8, ptr %i.ame, i64 %i.amh
  %i.aml = getelementptr i8, ptr %i.amk, i64 -4
  %i.amm = load float, ptr %i.aml, align 4, !tbaa !61 ; 2 uses
  %i.amn = trunc i64 %i.ami to i32                ; 2 uses
  %i.amo = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #29 ; 8 uses
  %i.amp = icmp eq ptr %i.amo, null
  br i1 %i.amp, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.amq = and i64 %i.amh, 17179869180            ; 4 uses
  %i.amr = call noalias ptr @malloc(i64 noundef %i.amq) #29 ; 4 uses
  store ptr %i.amr, ptr %i.amo, align 8, !tbaa !135
  %i.ams = icmp eq ptr %i.amr, null
  br i1 %i.ams, label %bb.la, label %bb.lb

bb.la:                                            ; preds = %bb.kz
  call void @free(ptr noundef nonnull %i.amo) #25
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit

bb.lb:                                            ; preds = %bb.kz
  %i.amt = call noalias ptr @malloc(i64 noundef %i.amq) #29 ; 3 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amo, i64 8
  store ptr %i.amt, ptr %i.amu, align 8, !tbaa !137
  %i.amv = icmp eq ptr %i.amt, null
  br i1 %i.amv, label %bb.lc, label %bb.ld

bb.lc:                                            ; preds = %bb.lb
  call void @free(ptr noundef nonnull %i.amr) #25
  call void @free(ptr noundef nonnull %i.amo) #25
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit

bb.ld:                                            ; preds = %bb.lb
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amo, i64 16
  store i32 %i.amn, ptr %i.amw, align 8, !tbaa !138
  %.not.i = icmp eq i32 %i.amn, 0
  br i1 %.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ld
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.amr, i8 0, i64 %i.amq, i1 false), !tbaa !61
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.amt, i8 0, i64 %i.amq, i1 false), !tbaa !61
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit: ; preds = %bb.ky, %bb.la, %bb.lc, %bb.ld, %.lr.ph.preheader.i
  %.020.i = phi ptr [ null, %bb.ky ], [ null, %bb.la ], [ null, %bb.lc ], [ %i.amo, %bb.ld ], [ %i.amo, %.lr.ph.preheader.i ] ; 9 uses
  %.not1107 = icmp eq ptr %i.amd, %i.ame
  br i1 %.not1107, label %._crit_edge1104, label %.lr.ph1103

.lr.ph1103:                                       ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit
  %i.amx = load ptr, ptr %.020.i, align 8, !tbaa !135 ; 5 uses
  %i.amy = getelementptr inbounds nuw [24 x i8], ptr %24, i64 %indvars.iv1141
  %i.amz = load ptr, ptr %i.amy, align 8, !tbaa !54 ; 5 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.anb = load ptr, ptr %i.ana, align 8, !tbaa !137 ; 5 uses
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
  %wide.load = load <4 x float>, ptr %i.ank, align 4, !tbaa !61
  %wide.load1418 = load <4 x float>, ptr %i.anl, align 4, !tbaa !61
  %i.anm = getelementptr inbounds nuw [4 x i8], ptr %i.amx, i64 %index ; 2 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 16
  store <4 x float> %wide.load, ptr %i.anm, align 4, !tbaa !61
  store <4 x float> %wide.load1418, ptr %i.ann, align 4, !tbaa !61
  %i.ano = getelementptr inbounds nuw [4 x i8], ptr %i.amz, i64 %index ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 16
  %wide.load1419 = load <4 x float>, ptr %i.ano, align 4, !tbaa !61
  %wide.load1420 = load <4 x float>, ptr %i.anp, align 4, !tbaa !61
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %i.anb, i64 %index ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 16
  store <4 x float> %wide.load1419, ptr %i.anq, align 4, !tbaa !61
  store <4 x float> %wide.load1420, ptr %i.anr, align 4, !tbaa !61
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ans = icmp eq i64 %index.next, %n.vec
  br i1 %i.ans, label %middle.block, label %vector.body, !llvm.loop !139

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
  %i.anv = load float, ptr %i.anu, align 4, !tbaa !61
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %i.amx, i64 %.01431102.ph
  store float %i.anv, ptr %i.anw, align 4, !tbaa !61
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %i.amz, i64 %.01431102.ph
  %i.any = load float, ptr %i.anx, align 4, !tbaa !61
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %i.anb, i64 %.01431102.ph
  store float %i.any, ptr %i.anz, align 4, !tbaa !61
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
  %i.aof = load i32, ptr %i.aoe, align 8, !tbaa !138 ; 5 uses
  %i.aog = zext i32 %i.aof to i64
  %i.aoh = shl nuw nsw i64 %i.aog, 2              ; 2 uses
  %i.aoi = call noalias ptr @malloc(i64 noundef %i.aoh) #29 ; 7 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoc, i64 8
  store ptr %i.aoi, ptr %i.aoj, align 8, !tbaa !142
  %i.aok = icmp eq ptr %i.aoi, null
  br i1 %i.aok, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  call void @free(ptr noundef nonnull %i.aoc) #25
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit

bb.lg:                                            ; preds = %bb.le
  %i.aol = load ptr, ptr %.020.i, align 8, !tbaa !135 ; 12 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aoi, ptr align 4 %i.aol, i64 %i.aoh, i1 false)
  %i.aom = add i32 %i.aof, -1                     ; 2 uses
  %i.aon = zext i32 %i.aom to i64                 ; 3 uses
  %i.aoo = mul nuw nsw i64 %i.aon, 20
  %i.aop = call noalias ptr @malloc(i64 noundef %i.aoo) #29 ; 12 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aoc, i64 16
  store ptr %i.aop, ptr %i.aoq, align 8, !tbaa !144
  %i.aor = icmp eq ptr %i.aop, null
  br i1 %i.aor, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  call void @free(ptr noundef nonnull %i.aoi) #25
  call void @free(ptr noundef nonnull %i.aoc) #25
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit

bb.li:                                            ; preds = %bb.lg
  store i32 %i.aof, ptr %i.aoc, align 8, !tbaa !145
  %i.aos = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !137 ; 10 uses
  %i.aou = load float, ptr %i.aot, align 4, !tbaa !61 ; 5 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aoc, i64 24
  store float %i.aou, ptr %i.aov, align 8, !tbaa !146
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr %i.aot, i64 %i.aon
  %i.aox = load float, ptr %i.aow, align 4, !tbaa !61
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aoc, i64 28
  store float %i.aox, ptr %i.aoy, align 4, !tbaa !147
  %i.aoz = icmp eq i32 %i.aof, 2
  br i1 %i.aoz, label %bb.lj, label %.preheader.i

.preheader.i:                                     ; preds = %bb.li
  %.not.i831 = icmp eq i32 %i.aom, 0
  br i1 %.not.i831, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %.preheader.i
  %i.apa = add i32 %i.aof, -2
  %i.apb = zext i32 %i.apa to i64                 ; 3 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aot, i64 4
  %i.apd = load float, ptr %i.apc, align 4, !tbaa !61 ; 3 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aoi, i64 4
  %i.apf = load float, ptr %i.ape, align 4, !tbaa !61 ; 2 uses
  %i.apg = load float, ptr %i.aoi, align 4, !tbaa !61
  %i.aph = fsub float %i.apf, %i.apg
  %i.api = fdiv float 1.000000e+00, %i.aph
  store float %i.api, ptr %i.aop, align 4, !tbaa !61
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aot, i64 8
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aol, i64 8
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aol, i64 4
  %i.apm = load float, ptr %i.apl, align 4, !tbaa !61 ; 2 uses
  %i.apn = load float, ptr %i.aol, align 4, !tbaa !61
  %i.apo = fsub float %i.apm, %i.apn
  %i.app = load float, ptr %i.apk, align 4, !tbaa !61
  %i.apq = fsub float %i.app, %i.apm
  %i.apr = fdiv float %i.apq, %i.apo
  %i.aps = load float, ptr %i.apj, align 4, !tbaa !61
  %i.apt = fsub float %i.aps, %i.aou
  %i.apu = fadd float %i.apr, 1.000000e+00
  %i.apv = fdiv float %i.apt, %i.apu              ; 3 uses
  %i.apw = fmul float %i.apd, 0.000000e+00
  %i.apx = fadd float %i.aou, %i.apw
  %i.apy = call float @llvm.fmuladd.f32(float %i.apv, float 0.000000e+00, float %i.apx)
  %i.apz = getelementptr inbounds nuw i8, ptr %i.aop, i64 4
  store float %i.apy, ptr %i.apz, align 4, !tbaa !61
  %i.aqa = fmul float %i.apd, 2.000000e+00
  %i.aqb = call float @llvm.fmuladd.f32(float %i.aou, float -2.000000e+00, float %i.aqa)
  %i.aqc = fsub float %i.aqb, %i.apv
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aop, i64 8
  store float %i.aqc, ptr %i.aqd, align 4, !tbaa !61
  %i.aqe = fsub float %i.aou, %i.apd
  %i.aqf = fadd float %i.aqe, %i.apv
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aop, i64 12
  store float %i.aqf, ptr %i.aqg, align 4, !tbaa !61
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aop, i64 16
  store float 0.000000e+00, ptr %i.aqh, align 4, !tbaa !61
  %i.aqi = getelementptr inbounds nuw [4 x i8], ptr %i.aol, i64 %i.apb
  %i.aqj = add nsw i64 %i.apb, -1                 ; 2 uses
  %i.aqk = getelementptr inbounds nuw [4 x i8], ptr %i.aol, i64 %i.aqj
  %i.aql = getelementptr inbounds nuw [4 x i8], ptr %i.aot, i64 %i.aqj
  br label %bb.lk

bb.lj:                                            ; preds = %bb.li
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aol, i64 4
  %i.aqn = load float, ptr %i.aqm, align 4, !tbaa !61
  %i.aqo = load float, ptr %i.aol, align 4, !tbaa !61
  %i.aqp = fsub float %i.aqn, %i.aqo
  %i.aqq = fdiv float 1.000000e+00, %i.aqp
  store float %i.aqq, ptr %i.aop, align 4, !tbaa !61
  %i.aqr = load float, ptr %i.aot, align 4, !tbaa !61 ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aop, i64 4
  store float %i.aqr, ptr %i.aqs, align 4, !tbaa !61
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aot, i64 4
  %i.aqu = load float, ptr %i.aqt, align 4, !tbaa !61
  %i.aqv = fsub float %i.aqu, %i.aqr
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aop, i64 8
  store float %i.aqv, ptr %i.aqw, align 4, !tbaa !61
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aop, i64 12
  store <2 x float> zeroinitializer, ptr %i.aqx, align 4, !tbaa !61
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit

bb.lk:                                            ; preds = %bb.ln, %.peel.next.i
  %i.aqy = phi float [ %i.apf, %.peel.next.i ], [ %i.arb, %bb.ln ]
  %indvars.iv.i = phi i64 [ 1, %.peel.next.i ], [ %indvars.iv.next.i, %bb.ln ] ; 6 uses
  %.pn.i = phi ptr [ %i.aop, %.peel.next.i ], [ %.0148151.i, %bb.ln ] ; 3 uses
  %.0148151.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 20 ; 2 uses
  %i.aqz = getelementptr inbounds nuw [4 x i8], ptr %i.aot, i64 %indvars.iv.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %60 = load <2 x float>, ptr %i.aqz, align 4, !tbaa !61 ; 7 uses
  %i.ara = getelementptr inbounds nuw [4 x i8], ptr %i.aoi, i64 %indvars.iv.next.i
  %i.arb = load float, ptr %i.ara, align 4, !tbaa !61 ; 2 uses
  %i.arc = fsub float %i.arb, %i.aqy
  %i.ard = fdiv float 1.000000e+00, %i.arc
  store float %i.ard, ptr %.0148151.i, align 4, !tbaa !61
  %i.are = icmp eq i64 %indvars.iv.i, %i.apb
  %i.arf = getelementptr inbounds nuw [4 x i8], ptr %i.aol, i64 %indvars.iv.next.i
  %i.arg = load float, ptr %i.arf, align 4, !tbaa !61 ; 3 uses
  br i1 %i.are, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  %i.arh = load float, ptr %i.aqi, align 4, !tbaa !61 ; 2 uses
  %i.ari = fsub float %i.arg, %i.arh
  %i.arj = load float, ptr %i.aqk, align 4, !tbaa !61
  %i.ark = fsub float %i.arh, %i.arj
  %i.arl = fdiv float %i.ark, %i.ari
  %i.arm = load float, ptr %i.aql, align 4, !tbaa !61
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
  %67 = add nsw i64 %indvars.iv.i, -1             ; 2 uses
  %68 = getelementptr inbounds nuw [4 x i8], ptr %i.aot, i64 %67
  %i.arx = load float, ptr %68, align 4, !tbaa !61
  %69 = getelementptr inbounds nuw [4 x i8], ptr %i.aol, i64 %67
  %i.ary = add nuw i64 %indvars.iv.i, 2
  %70 = and i64 %i.ary, 4294967295                ; 2 uses
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %i.aot, i64 %70
  %i.asa = load float, ptr %i.arz, align 4, !tbaa !61
  %i.asb = getelementptr inbounds nuw [4 x i8], ptr %i.aol, i64 %70
  %i.asc = load float, ptr %i.asb, align 4, !tbaa !61
  %71 = load <2 x float>, ptr %69, align 4, !tbaa !61 ; 2 uses
  %72 = load float, ptr %i.arw, align 4, !tbaa !61
  %73 = fsub float %i.arg, %72
  %74 = insertelement <2 x float> %71, float %i.asc, i64 0
  %75 = shufflevector <2 x float> %71, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %76 = insertelement <2 x float> %75, float %i.arg, i64 0
  %77 = fsub <2 x float> %74, %76
  %78 = insertelement <2 x float> poison, float %73, i64 0
  %79 = shufflevector <2 x float> %78, <2 x float> poison, <2 x i32> zeroinitializer
  %80 = fdiv <2 x float> %77, %79
  %81 = extractelement <2 x float> %60, i64 1
  %i.asd = fsub float %81, %i.arx
  %82 = extractelement <2 x float> %60, i64 0     ; 3 uses
  %i.ase = fsub float %i.asa, %82
  %83 = fadd <2 x float> %80, splat (float 1.000000e+00)
  %84 = insertelement <2 x float> poison, float %i.ase, i64 0
  %i.asf = insertelement <2 x float> %84, float %i.asd, i64 1
  %85 = fdiv <2 x float> %i.asf, %83              ; 3 uses
  %86 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.asg = shufflevector <2 x float> %85, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %87 = extractelement <2 x float> %85, i64 1     ; 2 uses
  %i.ash = fmul float %87, 0.000000e+00
  %i.asi = fadd float %82, %i.ash
  %i.asj = call float @llvm.fmuladd.f32(float %82, float 0.000000e+00, float %87)
  %i.ask = insertelement <2 x float> poison, float %i.asi, i64 0
  %i.asl = insertelement <2 x float> %i.ask, float %i.asj, i64 1
  %i.asm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %86, <2 x float> zeroinitializer, <2 x float> %i.asl)
  %i.asn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asg, <2 x float> zeroinitializer, <2 x float> %i.asm)
  %88 = shufflevector <2 x float> %85, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aso = fmul <2 x float> %88, <float -2.000000e+00, float 1.000000e+00>
  %89 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %90 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %89, <2 x float> <float -3.000000e+00, float 2.000000e+00>, <2 x float> %i.aso)
  %91 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.asp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %91, <2 x float> <float 3.000000e+00, float -2.000000e+00>, <2 x float> %90) ; 2 uses
  %i.asq = fsub <2 x float> %i.asp, %i.asg
  %i.asr = fadd <2 x float> %i.asp, %i.asg
  %i.ass = shufflevector <2 x float> %i.asq, <2 x float> %i.asr, <2 x i32> <i32 0, i32 3>
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.ll
  %i.ast = phi <2 x float> [ %i.aru, %bb.ll ], [ %i.asn, %bb.lm ]
  %i.asu = phi <2 x float> [ %i.arv, %bb.ll ], [ %i.ass, %bb.lm ]
  %i.asv = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  store <2 x float> %i.ast, ptr %i.asv, align 4, !tbaa !61
  %i.asw = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  store <2 x float> %i.asu, ptr %i.asw, align 4, !tbaa !61
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.aon
  br i1 %exitcond.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit, label %bb.lk, !llvm.loop !148

_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit: ; preds = %bb.ln, %._crit_edge1104, %bb.lf, %bb.lh, %.preheader.i, %bb.lj
  %.0.i = phi ptr [ null, %._crit_edge1104 ], [ null, %bb.lf ], [ null, %bb.lh ], [ %i.aoc, %bb.lj ], [ %i.aoc, %.preheader.i ], [ %i.aoc, %bb.ln ] ; 7 uses
  %i.asx = fpext float %i.amj to double
  %i.asy = getelementptr inbounds nuw [8 x i8], ptr %i.akr, i64 %indvars.iv1141
  store double %i.asx, ptr %i.asy, align 8, !tbaa !150
  %i.asz = fpext float %i.amm to double
  %i.ata = getelementptr inbounds nuw [8 x i8], ptr %i.aks, i64 %indvars.iv1141
  store double %i.asz, ptr %i.ata, align 8, !tbaa !150
  %i.atb = fsub float %i.amm, %i.amj
  %i.atc = load ptr, ptr %i.alw, align 8, !tbaa !54
  %i.atd = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.atg = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.atc, i64 %indvars.iv1141
  br label %bb.lr

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01431102 = phi i64 [ %i.atu, %scalar.ph ], [ %.01431102.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ath = getelementptr inbounds nuw [4 x i8], ptr %i.ame, i64 %.01431102
  %i.ati = load float, ptr %i.ath, align 4, !tbaa !61
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %i.amx, i64 %.01431102
  store float %i.ati, ptr %i.atj, align 4, !tbaa !61
  %i.atk = getelementptr inbounds nuw [4 x i8], ptr %i.amz, i64 %.01431102
  %i.atl = load float, ptr %i.atk, align 4, !tbaa !61
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr %i.anb, i64 %.01431102
  store float %i.atl, ptr %i.atm, align 4, !tbaa !61
  %i.atn = add nuw i64 %.01431102, 1              ; 4 uses
  %i.ato = getelementptr inbounds nuw [4 x i8], ptr %i.ame, i64 %i.atn
  %i.atp = load float, ptr %i.ato, align 4, !tbaa !61
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %i.amx, i64 %i.atn
  store float %i.atp, ptr %i.atq, align 4, !tbaa !61
  %i.atr = getelementptr inbounds nuw [4 x i8], ptr %i.amz, i64 %i.atn
  %i.ats = load float, ptr %i.atr, align 4, !tbaa !61
  %i.att = getelementptr inbounds nuw [4 x i8], ptr %i.anb, i64 %i.atn
  store float %i.ats, ptr %i.att, align 4, !tbaa !61
  %i.atu = add nuw i64 %.01431102, 2              ; 2 uses
  %exitcond1136.not.1 = icmp eq i64 %i.atu, %i.ami
  br i1 %exitcond1136.not.1, label %._crit_edge1104, label %scalar.ph, !llvm.loop !152

bb.lo:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit
  %i.atv = icmp eq ptr %.020.i, null
  br i1 %i.atv, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.atw = load ptr, ptr %.020.i, align 8, !tbaa !135
  call void @free(ptr noundef %i.atw) #25
  %i.atx = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.aty = load ptr, ptr %i.atx, align 8, !tbaa !137
  call void @free(ptr noundef %i.aty) #25
  call void @free(ptr noundef nonnull %.020.i) #25
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit: ; preds = %bb.lo, %bb.lp
  %i.atz = icmp eq ptr %.0.i, null
  br i1 %i.atz, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_126rsr_Interpolator1D_destroyEPNS0_19rsr_Interpolator1D_E.exit, label %bb.lq

bb.lq:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit
  %i.aua = load ptr, ptr %i.atd, align 8, !tbaa !142
  call void @free(ptr noundef %i.aua) #25
  %i.aub = load ptr, ptr %i.ate, align 8, !tbaa !144
  call void @free(ptr noundef %i.aub) #25
  call void @free(ptr noundef nonnull %.0.i) #25
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_126rsr_Interpolator1D_destroyEPNS0_19rsr_Interpolator1D_E.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_126rsr_Interpolator1D_destroyEPNS0_19rsr_Interpolator1D_E.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit, %bb.lq
  %indvars.iv.next1142 = add nuw nsw i64 %indvars.iv1141, 1 ; 2 uses
  %exitcond1144.not = icmp eq i64 %indvars.iv.next1142, 3
  br i1 %exitcond1144.not, label %bb.kt, label %bb.ky, !llvm.loop !153

bb.lr:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit, %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit
  %indvars.iv1137 = phi i64 [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit ], [ %indvars.iv.next1138, %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit ] ; 3 uses
  %i.auc = trunc nuw nsw i64 %indvars.iv1137 to i32
  %i.aud = uitofp nneg i32 %i.auc to float
  %i.aue = fdiv float %i.aud, 6.553500e+04
  %i.auf = call noundef float @llvm.fmuladd.f32(float %i.atb, float %i.aue, float %i.amj) ; 6 uses
  %i.aug = fcmp uno float %i.auf, 0.000000e+00
  br i1 %i.aug, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.auh = load ptr, ptr %i.atd, align 8, !tbaa !142 ; 4 uses
  %i.aui = load float, ptr %i.auh, align 4, !tbaa !61 ; 2 uses
  %i.auj = fcmp olt float %i.auf, %i.aui
  br i1 %i.auj, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.auk = load float, ptr %i.atg, align 8, !tbaa !146
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit

bb.lu:                                            ; preds = %bb.ls
  %i.aul = load i32, ptr %.0.i, align 8, !tbaa !145 ; 2 uses
  %i.aum = sext i32 %i.aul to i64
  %i.aun = getelementptr [4 x i8], ptr %i.auh, i64 %i.aum
  %i.auo = getelementptr i8, ptr %i.aun, i64 -4
  %i.aup = load float, ptr %i.auo, align 4, !tbaa !61
  %i.auq = fcmp ogt float %i.auf, %i.aup
  br i1 %i.auq, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  %i.aur = load float, ptr %i.atf, align 4, !tbaa !147
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit

bb.lw:                                            ; preds = %bb.lu
  %i.aus = add nsw i32 %i.aul, -1                 ; 2 uses
  %i.aut = icmp eq i32 %i.aus, 1
  br i1 %i.aut, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i, label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %bb.lw, %tailrecurse.i.i.i
  %.tr1921.i.i.i = phi i32 [ %..tr19.i.i.i, %tailrecurse.i.i.i ], [ %i.aus, %bb.lw ] ; 2 uses
  %.tr1820.i.i.i = phi i32 [ %.tr18..i.i.i, %tailrecurse.i.i.i ], [ 0, %bb.lw ] ; 2 uses
  %i.auu = add nsw i32 %.tr1820.i.i.i, %.tr1921.i.i.i
  %i.auv = sdiv i32 %i.auu, 2                     ; 3 uses
  %i.auw = sext i32 %i.auv to i64
  %i.aux = getelementptr inbounds [4 x i8], ptr %i.auh, i64 %i.auw
  %i.auy = load float, ptr %i.aux, align 4, !tbaa !61
  %i.auz = fcmp olt float %i.auf, %i.auy          ; 2 uses
  %.tr18..i.i.i = select i1 %i.auz, i32 %.tr1820.i.i.i, i32 %i.auv ; 4 uses
  %..tr19.i.i.i = select i1 %i.auz, i32 %i.auv, i32 %.tr1921.i.i.i ; 2 uses
  %i.ava = sub nsw i32 %..tr19.i.i.i, %.tr18..i.i.i
  %i.avb = icmp eq i32 %i.ava, 1
  br i1 %i.avb, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i, label %tailrecurse.i.i.i

_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i: ; preds = %tailrecurse.i.i.i
  %.phi.trans.insert.i = sext i32 %.tr18..i.i.i to i64
  %.phi.trans.insert31.i = getelementptr inbounds [4 x i8], ptr %i.auh, i64 %.phi.trans.insert.i
  %.pre.i = load float, ptr %.phi.trans.insert31.i, align 4, !tbaa !61
  %i.avc = mul nsw i32 %.tr18..i.i.i, 5
  %i.avd = sext i32 %i.avc to i64
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i

_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i, %bb.lw
  %i.ave = phi float [ %.pre.i, %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i ], [ %i.aui, %bb.lw ]
  %.tr18.lcssa.i.i.i = phi i64 [ %i.avd, %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i ], [ 0, %bb.lw ]
  %i.avf = load ptr, ptr %i.ate, align 8, !tbaa !144
  %i.avg = getelementptr inbounds [4 x i8], ptr %i.avf, i64 %.tr18.lcssa.i.i.i ; 5 uses
  %i.avh = load float, ptr %i.avg, align 4, !tbaa !61
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avg, i64 4
  %i.avj = load float, ptr %i.avi, align 4, !tbaa !61
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avg, i64 8
  %i.avl = load float, ptr %i.avk, align 4, !tbaa !61
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avg, i64 12
  %i.avn = load float, ptr %i.avm, align 4, !tbaa !61
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avg, i64 16
  %i.avp = load float, ptr %i.avo, align 4, !tbaa !61
  %i.avq = fsub float %i.auf, %i.ave
  %i.avr = fmul float %i.avq, %i.avh              ; 3 uses
  %i.avs = call float @llvm.fmuladd.f32(float %i.avp, float %i.avr, float %i.avn)
  %i.avt = call float @llvm.fmuladd.f32(float %i.avr, float %i.avs, float %i.avl)
  %i.avu = call float @llvm.fmuladd.f32(float %i.avr, float %i.avt, float %i.avj)
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i, %bb.lv, %bb.lt, %bb.lr
  %.0.i832 = phi float [ %i.avu, %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i ], [ %i.auk, %bb.lt ], [ %i.aur, %bb.lv ], [ %i.auf, %bb.lr ]
  %.idx1361 = mul nuw nsw i64 %indvars.iv1137, 12
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx1361
  store float %.0.i832, ptr %gep, align 4, !tbaa !61
  %indvars.iv.next1138 = add nuw nsw i64 %indvars.iv1137, 1 ; 2 uses
  %exitcond1140.not = icmp eq i64 %indvars.iv.next1138, 65536
  br i1 %exitcond1140.not, label %bb.lo, label %bb.lr, !llvm.loop !154

bb.lx:                                            ; preds = %bb.kt
  store ptr %i.als, ptr %i.akt, align 8, !tbaa !77
  %i.avv = getelementptr inbounds nuw i8, ptr %i.akm, i64 96 ; 3 uses
  %i.avw = load ptr, ptr %i.avv, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i833 = icmp eq ptr %i.alp, %i.avw
  br i1 %.not.i.i.i833, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataEEaSERKS2_.exit.thread, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.avx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i834 = icmp eq i8 %i.avx, 0
  br i1 %.not.i.i.i.i834, label %bb.ma, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.avy = load i32, ptr %i.alq, align 8, !tbaa !46
  %i.avz = add nsw i32 %i.avy, 1
  store i32 %i.avz, ptr %i.alq, align 8, !tbaa !46
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.ma:                                            ; preds = %bb.ly
  %i.awa = atomicrmw volatile add ptr %i.alq, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.avv, align 8, !tbaa !72
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.ma, %bb.lz
  %i.awb = phi ptr [ %.pr.pre.i.i.i, %bb.ma ], [ %i.avw, %bb.lz ] ; 8 uses
end_hunk_0
