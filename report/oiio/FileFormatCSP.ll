inline.NumInlined: 1226
inline.NumDeleted: 450
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.amq = getelementptr inbounds nuw i8, ptr %i.ami, i64 16
  store i32 %i.amh, ptr %i.amq, align 8, !tbaa !137
  %.not.i = icmp eq i32 %i.amh, 0
  br i1 %.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.lf
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aml, i8 0, i64 %i.amk, i1 false), !tbaa !59
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.amn, i8 0, i64 %i.amk, i1 false), !tbaa !59
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit: ; preds = %bb.la, %bb.lc, %bb.le, %bb.lf, %.lr.ph.preheader.i
  %.020.i = phi ptr [ null, %bb.la ], [ null, %bb.lc ], [ null, %bb.le ], [ %i.ami, %bb.lf ], [ %i.ami, %.lr.ph.preheader.i ] ; 9 uses
  %.not1093 = icmp eq ptr %i.alx, %i.aly
  br i1 %.not1093, label %._crit_edge1090, label %.lr.ph1089

.lr.ph1089:                                       ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit
  %i.amr = load ptr, ptr %.020.i, align 8, !tbaa !134 ; 5 uses
  %i.ams = getelementptr inbounds nuw [24 x i8], ptr %24, i64 %indvars.iv1129
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !52 ; 5 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.amv = load ptr, ptr %i.amu, align 8, !tbaa !136 ; 5 uses
  %min.iters.check = icmp ult i64 %i.amc, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1089
  %i.amw = ptrtoaddr ptr %i.amv to i64            ; 3 uses
  %i.amx = ptrtoaddr ptr %i.amt to i64            ; 2 uses
  %i.amy = ptrtoaddr ptr %i.amr to i64            ; 3 uses
  %i.amz = sub i64 %i.amy, %i.amw
  %diff.check = icmp ugt i64 %i.amz, -32
  %i.ana = sub i64 %i.ama, %i.amy
  %diff.check1403 = icmp ugt i64 %i.ana, -32
  %conflict.rdx = or i1 %diff.check, %diff.check1403
  %i.anb = sub i64 %i.amy, %i.amx
  %diff.check1404 = icmp ugt i64 %i.anb, -32
  %conflict.rdx1405 = or i1 %conflict.rdx, %diff.check1404
  %i.anc = sub i64 %i.ama, %i.amw
  %diff.check1406 = icmp ugt i64 %i.anc, -32
  %conflict.rdx1407 = or i1 %conflict.rdx1405, %diff.check1406
  %i.and = sub i64 %i.amx, %i.amw
  %diff.check1408 = icmp ugt i64 %i.and, -32
  %conflict.rdx1409 = or i1 %conflict.rdx1407, %diff.check1408
  br i1 %conflict.rdx1409, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.amc, -8                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr %i.aly, i64 %index ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 16
  %wide.load = load <4 x float>, ptr %i.ane, align 4, !tbaa !59
  %wide.load1410 = load <4 x float>, ptr %i.anf, align 4, !tbaa !59
  %i.ang = getelementptr inbounds nuw [4 x i8], ptr %i.amr, i64 %index ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 16
  store <4 x float> %wide.load, ptr %i.ang, align 4, !tbaa !59
  store <4 x float> %wide.load1410, ptr %i.anh, align 4, !tbaa !59
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr %i.amt, i64 %index ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 16
  %wide.load1411 = load <4 x float>, ptr %i.ani, align 4, !tbaa !59
  %wide.load1412 = load <4 x float>, ptr %i.anj, align 4, !tbaa !59
  %i.ank = getelementptr inbounds nuw [4 x i8], ptr %i.amv, i64 %index ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 16
  store <4 x float> %wide.load1411, ptr %i.ank, align 4, !tbaa !59
  store <4 x float> %wide.load1412, ptr %i.anl, align 4, !tbaa !59
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.anm = icmp eq i64 %index.next, %n.vec
  br i1 %i.anm, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.amc, %n.vec
  br i1 %cmp.n, label %._crit_edge1090, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph1089, %middle.block
  %.01351088.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph1089 ], [ %n.vec, %middle.block ] ; 7 uses
  %.neg = or disjoint i64 %.01351088.ph, 1
  %i.ann = and i64 %i.amb, 4
  %lcmp.mod.not = icmp eq i64 %i.ann, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ano = getelementptr inbounds nuw [4 x i8], ptr %i.aly, i64 %.01351088.ph
  %i.anp = load float, ptr %i.ano, align 4, !tbaa !59
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %i.amr, i64 %.01351088.ph
  store float %i.anp, ptr %i.anq, align 4, !tbaa !59
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %i.amt, i64 %.01351088.ph
  %i.ans = load float, ptr %i.anr, align 4, !tbaa !59
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr %i.amv, i64 %.01351088.ph
  store float %i.ans, ptr %i.ant, align 4, !tbaa !59
  %i.anu = or disjoint i64 %.01351088.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01351088.unr = phi i64 [ %.01351088.ph, %scalar.ph.preheader ], [ %i.anu, %scalar.ph.prol ]
  %i.anv = icmp eq i64 %i.amc, %.neg
  br i1 %i.anv, label %._crit_edge1090, label %scalar.ph

._crit_edge1090:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN16OpenColorIO_v2_512_GLOBAL__N_129rsr_Interpolator1D_Raw_createEj.exit
  %i.anw = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #31 ; 11 uses
  %i.anx = icmp eq ptr %i.anw, null
  br i1 %i.anx, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit, label %bb.lg

bb.lg:                                            ; preds = %._crit_edge1090
  %i.any = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 3 uses
  %i.anz = load i32, ptr %i.any, align 8, !tbaa !137
  %i.aoa = zext i32 %i.anz to i64
  %i.aob = shl nuw nsw i64 %i.aoa, 2
  %i.aoc = call noalias ptr @malloc(i64 noundef %i.aob) #31 ; 7 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %i.anw, i64 8
  store ptr %i.aoc, ptr %i.aod, align 8, !tbaa !141
  %i.aoe = icmp eq ptr %i.aoc, null
  br i1 %i.aoe, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  call void @free(ptr noundef nonnull %i.anw) #26
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit

bb.li:                                            ; preds = %bb.lg
  %i.aof = load ptr, ptr %.020.i, align 8, !tbaa !134 ; 12 uses
  %i.aog = load i32, ptr %i.any, align 8, !tbaa !137 ; 2 uses
  %i.aoh = zext i32 %i.aog to i64
  %i.aoi = shl nuw nsw i64 %i.aoh, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aoc, ptr align 4 %i.aof, i64 %i.aoi, i1 false)
  %i.aoj = add i32 %i.aog, -1
  %i.aok = zext i32 %i.aoj to i64
  %i.aol = mul nuw nsw i64 %i.aok, 20
  %i.aom = call noalias ptr @malloc(i64 noundef %i.aol) #31 ; 12 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.anw, i64 16
  store ptr %i.aom, ptr %i.aon, align 8, !tbaa !143
  %i.aoo = icmp eq ptr %i.aom, null
  br i1 %i.aoo, label %bb.lj, label %bb.lk

bb.lj:                                            ; preds = %bb.li
  call void @free(ptr noundef nonnull %i.aoc) #26
  call void @free(ptr noundef nonnull %i.anw) #26
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit

bb.lk:                                            ; preds = %bb.li
  %i.aop = load i32, ptr %i.any, align 8, !tbaa !137 ; 4 uses
  store i32 %i.aop, ptr %i.anw, align 8, !tbaa !144
  %i.aoq = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !136 ; 11 uses
  %i.aos = load float, ptr %i.aor, align 4, !tbaa !59 ; 5 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.anw, i64 24
  store float %i.aos, ptr %i.aot, align 8, !tbaa !145
  %i.aou = add i32 %i.aop, -1                     ; 2 uses
  %i.aov = zext i32 %i.aou to i64                 ; 2 uses
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %i.aov
  %i.aox = load float, ptr %i.aow, align 4, !tbaa !59
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.anw, i64 28
  store float %i.aox, ptr %i.aoy, align 4, !tbaa !146
  %i.aoz = icmp eq i32 %i.aop, 2
  br i1 %i.aoz, label %bb.ll, label %.preheader.i

.preheader.i:                                     ; preds = %bb.lk
  %.not.i817 = icmp eq i32 %i.aou, 0
  br i1 %.not.i817, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %.preheader.i
  %i.apa = add i32 %i.aop, -2
  %i.apb = zext i32 %i.apa to i64                 ; 3 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aor, i64 4
  %i.apd = load float, ptr %i.apc, align 4, !tbaa !59 ; 3 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aoc, i64 4
  %i.apf = load float, ptr %i.ape, align 4, !tbaa !59 ; 2 uses
  %i.apg = load float, ptr %i.aoc, align 4, !tbaa !59
  %i.aph = fsub float %i.apf, %i.apg
  %i.api = fdiv float 1.000000e+00, %i.aph
  store float %i.api, ptr %i.aom, align 4, !tbaa !59
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aor, i64 8
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aof, i64 8
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aof, i64 4
  %i.apm = load float, ptr %i.apl, align 4, !tbaa !59 ; 2 uses
  %i.apn = load float, ptr %i.aof, align 4, !tbaa !59
  %i.apo = fsub float %i.apm, %i.apn
  %i.app = load float, ptr %i.apk, align 4, !tbaa !59
  %i.apq = fsub float %i.app, %i.apm
  %i.apr = fdiv float %i.apq, %i.apo
  %i.aps = load float, ptr %i.apj, align 4, !tbaa !59
  %i.apt = fsub float %i.aps, %i.aos
  %i.apu = fadd float %i.apr, 1.000000e+00
  %i.apv = fdiv float %i.apt, %i.apu              ; 3 uses
  %i.apw = fmul float %i.apd, 0.000000e+00
  %i.apx = fadd float %i.aos, %i.apw
  %i.apy = call float @llvm.fmuladd.f32(float %i.apv, float 0.000000e+00, float %i.apx)
  %i.apz = getelementptr inbounds nuw i8, ptr %i.aom, i64 4
  store float %i.apy, ptr %i.apz, align 4, !tbaa !59
  %i.aqa = fmul float %i.apd, 2.000000e+00
  %i.aqb = call float @llvm.fmuladd.f32(float %i.aos, float -2.000000e+00, float %i.aqa)
  %i.aqc = fsub float %i.aqb, %i.apv
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aom, i64 8
  store float %i.aqc, ptr %i.aqd, align 4, !tbaa !59
  %i.aqe = fsub float %i.aos, %i.apd
  %i.aqf = fadd float %i.aqe, %i.apv
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aom, i64 12
  store float %i.aqf, ptr %i.aqg, align 4, !tbaa !59
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aom, i64 16
  store float 0.000000e+00, ptr %i.aqh, align 4, !tbaa !59
  %i.aqi = getelementptr inbounds nuw [4 x i8], ptr %i.aof, i64 %i.apb
  %i.aqj = add nsw i64 %i.apb, -1                 ; 2 uses
  %i.aqk = getelementptr inbounds nuw [4 x i8], ptr %i.aof, i64 %i.aqj
  %i.aql = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %i.aqj
  br label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aof, i64 4
  %i.aqn = load float, ptr %i.aqm, align 4, !tbaa !59
  %i.aqo = load float, ptr %i.aof, align 4, !tbaa !59
  %i.aqp = fsub float %i.aqn, %i.aqo
  %i.aqq = fdiv float 1.000000e+00, %i.aqp
  store float %i.aqq, ptr %i.aom, align 4, !tbaa !59
  %i.aqr = load float, ptr %i.aor, align 4, !tbaa !59 ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aom, i64 4
  store float %i.aqr, ptr %i.aqs, align 4, !tbaa !59
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aor, i64 4
  %i.aqu = load float, ptr %i.aqt, align 4, !tbaa !59
  %i.aqv = fsub float %i.aqu, %i.aqr
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aom, i64 8
  store float %i.aqv, ptr %i.aqw, align 4, !tbaa !59
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aom, i64 12
  store <2 x float> zeroinitializer, ptr %i.aqx, align 4, !tbaa !59
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit

bb.lm:                                            ; preds = %bb.lp, %.peel.next.i
  %i.aqy = phi float [ %i.apf, %.peel.next.i ], [ %i.are, %bb.lp ]
  %indvars.iv.i = phi i64 [ 1, %.peel.next.i ], [ %indvars.iv.next.i, %bb.lp ] ; 6 uses
  %.pn.i = phi ptr [ %i.aom, %.peel.next.i ], [ %.0148151.i, %bb.lp ] ; 3 uses
  %.0148151.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 20 ; 2 uses
  %i.aqz = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %indvars.iv.i
  %i.ara = load float, ptr %i.aqz, align 4, !tbaa !59 ; 7 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.arb = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %indvars.iv.next.i
  %i.arc = load float, ptr %i.arb, align 4, !tbaa !59 ; 5 uses
  %i.ard = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %indvars.iv.next.i
  %i.are = load float, ptr %i.ard, align 4, !tbaa !59 ; 2 uses
  %i.arf = fsub float %i.are, %i.aqy
  %i.arg = fdiv float 1.000000e+00, %i.arf
  store float %i.arg, ptr %.0148151.i, align 4, !tbaa !59
  %i.arh = icmp eq i64 %indvars.iv.i, %i.apb
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr %i.aof, i64 %indvars.iv.next.i
  %i.arj = load float, ptr %i.ari, align 4, !tbaa !59 ; 3 uses
  br i1 %i.arh, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %bb.lm
  %i.ark = load float, ptr %i.aqi, align 4, !tbaa !59 ; 2 uses
  %i.arl = fsub float %i.arj, %i.ark
  %i.arm = load float, ptr %i.aqk, align 4, !tbaa !59
  %i.arn = fsub float %i.ark, %i.arm
  %i.aro = fdiv float %i.arn, %i.arl
  %i.arp = load float, ptr %i.aql, align 4, !tbaa !59
  %i.arq = fsub float %i.arc, %i.arp
  %i.arr = fadd float %i.aro, 1.000000e+00
  %i.ars = fdiv float %i.arq, %i.arr              ; 3 uses
  %i.art = fmul float %i.arc, 0.000000e+00        ; 2 uses
  %i.aru = fadd float %i.ara, %i.art
  %i.arv = insertelement <2 x float> poison, float %i.ara, i64 0
  %i.arw = insertelement <2 x float> %i.arv, float %i.ars, i64 1
  %i.arx = insertelement <2 x float> poison, float %i.art, i64 0
  %i.ary = insertelement <2 x float> %i.arx, float %i.aru, i64 1
  %i.arz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arw, <2 x float> zeroinitializer, <2 x float> %i.ary) ; 2 uses
  %i.asa = extractelement <2 x float> %i.arz, i64 0
  %i.asb = fadd float %i.asa, %i.ars
  %i.asc = fsub float %i.arc, %i.ara
  %i.asd = fsub float %i.asc, %i.ars
  %i.ase = shufflevector <2 x float> %i.arz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.asf = insertelement <2 x float> %i.ase, float %i.asb, i64 1
  %i.asg = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.asd, i64 0
  br label %bb.lp

bb.lo:                                            ; preds = %bb.lm
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr %i.aof, i64 %indvars.iv.i
  %i.asi = load float, ptr %i.ash, align 4, !tbaa !59 ; 2 uses
  %i.asj = fsub float %i.arj, %i.asi              ; 2 uses
  %i.ask = add nsw i64 %indvars.iv.i, -1          ; 2 uses
  %i.asl = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %i.ask
  %i.asm = load float, ptr %i.asl, align 4, !tbaa !59
  %i.asn = getelementptr inbounds nuw [4 x i8], ptr %i.aof, i64 %i.ask
  %i.aso = load float, ptr %i.asn, align 4, !tbaa !59
  %i.asp = fsub float %i.asi, %i.aso
  %i.asq = fdiv float %i.asp, %i.asj
  %i.asr = add nuw i64 %indvars.iv.i, 2
  %59 = and i64 %i.asr, 4294967295                ; 2 uses
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %59
  %i.ast = load float, ptr %i.ass, align 4, !tbaa !59
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr %i.aof, i64 %59
  %i.asv = load float, ptr %i.asu, align 4, !tbaa !59
  %i.asw = fsub float %i.asv, %i.arj
  %i.asx = fdiv float %i.asw, %i.asj
  %i.asy = fsub float %i.arc, %i.asm
  %i.asz = fadd float %i.asq, 1.000000e+00
  %i.ata = fsub float %i.ast, %i.ara
  %i.atb = fadd float %i.asx, 1.000000e+00
  %i.atc = fdiv float %i.ata, %i.atb
  %i.atd = insertelement <2 x float> poison, float %i.arc, i64 0
  %i.ate = shufflevector <2 x float> %i.atd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.atf = insertelement <2 x float> poison, float %i.atc, i64 0
  %i.atg = shufflevector <2 x float> %i.atf, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ath = fdiv float %i.asy, %i.asz              ; 3 uses
  %i.ati = fmul float %i.ath, 0.000000e+00
  %i.atj = fadd float %i.ara, %i.ati
  %i.atk = call float @llvm.fmuladd.f32(float %i.ara, float 0.000000e+00, float %i.ath)
  %i.atl = insertelement <2 x float> poison, float %i.atj, i64 0
  %i.atm = insertelement <2 x float> %i.atl, float %i.atk, i64 1
  %i.atn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ate, <2 x float> zeroinitializer, <2 x float> %i.atm)
  %i.ato = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atg, <2 x float> zeroinitializer, <2 x float> %i.atn)
  %i.atp = insertelement <2 x float> poison, float %i.ath, i64 0
  %i.atq = shufflevector <2 x float> %i.atp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atr = fmul <2 x float> %i.atq, <float -2.000000e+00, float 1.000000e+00>
  %i.ats = insertelement <2 x float> poison, float %i.ara, i64 0
  %i.att = shufflevector <2 x float> %i.ats, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.att, <2 x float> <float -3.000000e+00, float 2.000000e+00>, <2 x float> %i.atr)
  %i.atv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ate, <2 x float> <float 3.000000e+00, float -2.000000e+00>, <2 x float> %i.atu) ; 2 uses
  %i.atw = fsub <2 x float> %i.atv, %i.atg
  %i.atx = fadd <2 x float> %i.atv, %i.atg
  %i.aty = shufflevector <2 x float> %i.atw, <2 x float> %i.atx, <2 x i32> <i32 0, i32 3>
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln
  %i.atz = phi <2 x float> [ %i.asf, %bb.ln ], [ %i.ato, %bb.lo ]
  %i.aua = phi <2 x float> [ %i.asg, %bb.ln ], [ %i.aty, %bb.lo ]
  %i.aub = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  store <2 x float> %i.atz, ptr %i.aub, align 4, !tbaa !59
  %i.auc = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  store <2 x float> %i.aua, ptr %i.auc, align 4, !tbaa !59
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.aov
  br i1 %exitcond.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit, label %bb.lm, !llvm.loop !147

_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit: ; preds = %bb.lp, %._crit_edge1090, %bb.lh, %bb.lj, %.preheader.i, %bb.ll
  %.0.i = phi ptr [ null, %._crit_edge1090 ], [ null, %bb.lh ], [ null, %bb.lj ], [ %i.anw, %bb.ll ], [ %i.anw, %.preheader.i ], [ %i.anw, %bb.lp ] ; 7 uses
  %i.aud = fpext float %i.amd to double
  %i.aue = getelementptr inbounds nuw [8 x i8], ptr %i.akl, i64 %indvars.iv1129
  store double %i.aud, ptr %i.aue, align 8, !tbaa !149
  %i.auf = fpext float %i.amg to double
  %i.aug = getelementptr inbounds nuw [8 x i8], ptr %i.akm, i64 %indvars.iv1129
  store double %i.auf, ptr %i.aug, align 8, !tbaa !149
  %i.auh = fsub float %i.amg, %i.amd
  %i.aui = load ptr, ptr %i.alq, align 8, !tbaa !52
  %i.auj = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.aum = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.aui, i64 %indvars.iv1129
  br label %bb.lt

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01351088 = phi i64 [ %i.ava, %scalar.ph ], [ %.01351088.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aun = getelementptr inbounds nuw [4 x i8], ptr %i.aly, i64 %.01351088
  %i.auo = load float, ptr %i.aun, align 4, !tbaa !59
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %i.amr, i64 %.01351088
  store float %i.auo, ptr %i.aup, align 4, !tbaa !59
  %i.auq = getelementptr inbounds nuw [4 x i8], ptr %i.amt, i64 %.01351088
  %i.aur = load float, ptr %i.auq, align 4, !tbaa !59
  %i.aus = getelementptr inbounds nuw [4 x i8], ptr %i.amv, i64 %.01351088
  store float %i.aur, ptr %i.aus, align 4, !tbaa !59
  %i.aut = add nuw i64 %.01351088, 1              ; 4 uses
  %i.auu = getelementptr inbounds nuw [4 x i8], ptr %i.aly, i64 %i.aut
  %i.auv = load float, ptr %i.auu, align 4, !tbaa !59
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %i.amr, i64 %i.aut
  store float %i.auv, ptr %i.auw, align 4, !tbaa !59
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr %i.amt, i64 %i.aut
  %i.auy = load float, ptr %i.aux, align 4, !tbaa !59
  %i.auz = getelementptr inbounds nuw [4 x i8], ptr %i.amv, i64 %i.aut
  store float %i.auy, ptr %i.auz, align 4, !tbaa !59
  %i.ava = add nuw i64 %.01351088, 2              ; 2 uses
  %exitcond1124.not.1 = icmp eq i64 %i.ava, %i.amc
  br i1 %exitcond1124.not.1, label %._crit_edge1090, label %scalar.ph, !llvm.loop !151

bb.lq:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit
  %i.avb = icmp eq ptr %.020.i, null
  br i1 %i.avb, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.avc = load ptr, ptr %.020.i, align 8, !tbaa !134
  call void @free(ptr noundef %i.avc) #26
  %i.avd = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.ave = load ptr, ptr %i.avd, align 8, !tbaa !136
  call void @free(ptr noundef %i.ave) #26
  call void @free(ptr noundef nonnull %.020.i) #26
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit: ; preds = %bb.lq, %bb.lr
  %i.avf = icmp eq ptr %.0.i, null
  br i1 %i.avf, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_126rsr_Interpolator1D_destroyEPNS0_19rsr_Interpolator1D_E.exit, label %bb.ls

bb.ls:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit
  %i.avg = load ptr, ptr %i.auj, align 8, !tbaa !141
  call void @free(ptr noundef %i.avg) #26
  %i.avh = load ptr, ptr %i.auk, align 8, !tbaa !143
  call void @free(ptr noundef %i.avh) #26
  call void @free(ptr noundef nonnull %.0.i) #26
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_126rsr_Interpolator1D_destroyEPNS0_19rsr_Interpolator1D_E.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_126rsr_Interpolator1D_destroyEPNS0_19rsr_Interpolator1D_E.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_Raw_destroyEPNS0_23rsr_Interpolator1D_Raw_E.exit, %bb.ls
  %indvars.iv.next1130 = add nuw nsw i64 %indvars.iv1129, 1 ; 2 uses
  %exitcond1132.not = icmp eq i64 %indvars.iv.next1130, 3
  br i1 %exitcond1132.not, label %bb.kv, label %bb.la, !llvm.loop !152

bb.lt:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit, %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit
  %indvars.iv1125 = phi i64 [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit ], [ %indvars.iv.next1126, %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit ] ; 3 uses
  %i.avi = trunc nuw nsw i64 %indvars.iv1125 to i32
  %i.avj = uitofp nneg i32 %i.avi to float
  %i.avk = fdiv float %i.avj, 6.553500e+04
  %i.avl = call noundef float @llvm.fmuladd.f32(float %i.auh, float %i.avk, float %i.amd) ; 6 uses
  %i.avm = fcmp uno float %i.avl, 0.000000e+00
  br i1 %i.avm, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.avn = load ptr, ptr %i.auj, align 8, !tbaa !141 ; 4 uses
  %i.avo = load float, ptr %i.avn, align 4, !tbaa !59 ; 2 uses
  %i.avp = fcmp olt float %i.avl, %i.avo
  br i1 %i.avp, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  %i.avq = load float, ptr %i.aum, align 8, !tbaa !145
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit

bb.lw:                                            ; preds = %bb.lu
  %i.avr = load i32, ptr %.0.i, align 8, !tbaa !144 ; 2 uses
  %i.avs = sext i32 %i.avr to i64
  %i.avt = getelementptr [4 x i8], ptr %i.avn, i64 %i.avs
  %i.avu = getelementptr i8, ptr %i.avt, i64 -4
  %i.avv = load float, ptr %i.avu, align 4, !tbaa !59
  %i.avw = fcmp ogt float %i.avl, %i.avv
  br i1 %i.avw, label %bb.lx, label %bb.ly

bb.lx:                                            ; preds = %bb.lw
  %i.avx = load float, ptr %i.aul, align 4, !tbaa !146
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit

bb.ly:                                            ; preds = %bb.lw
  %i.avy = add nsw i32 %i.avr, -1                 ; 2 uses
  %i.avz = icmp eq i32 %i.avy, 1
  br i1 %i.avz, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i, label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %bb.ly, %tailrecurse.i.i.i
  %.tr1921.i.i.i = phi i32 [ %..tr19.i.i.i, %tailrecurse.i.i.i ], [ %i.avy, %bb.ly ] ; 2 uses
  %.tr1820.i.i.i = phi i32 [ %.tr18..i.i.i, %tailrecurse.i.i.i ], [ 0, %bb.ly ] ; 2 uses
  %i.awa = add nsw i32 %.tr1820.i.i.i, %.tr1921.i.i.i
  %i.awb = sdiv i32 %i.awa, 2                     ; 3 uses
  %i.awc = sext i32 %i.awb to i64
  %i.awd = getelementptr inbounds [4 x i8], ptr %i.avn, i64 %i.awc
  %i.awe = load float, ptr %i.awd, align 4, !tbaa !59
  %i.awf = fcmp olt float %i.avl, %i.awe          ; 2 uses
  %.tr18..i.i.i = select i1 %i.awf, i32 %.tr1820.i.i.i, i32 %i.awb ; 4 uses
  %..tr19.i.i.i = select i1 %i.awf, i32 %i.awb, i32 %.tr1921.i.i.i ; 2 uses
  %i.awg = sub nsw i32 %..tr19.i.i.i, %.tr18..i.i.i
  %i.awh = icmp eq i32 %i.awg, 1
  br i1 %i.awh, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i, label %tailrecurse.i.i.i

_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i: ; preds = %tailrecurse.i.i.i
  %.phi.trans.insert.i = sext i32 %.tr18..i.i.i to i64
  %.phi.trans.insert31.i = getelementptr inbounds [4 x i8], ptr %i.avn, i64 %.phi.trans.insert.i
  %.pre.i = load float, ptr %.phi.trans.insert31.i, align 4, !tbaa !59
  %i.awi = mul nsw i32 %.tr18..i.i.i, 5
  %i.awj = sext i32 %i.awi to i64
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i

_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i, %bb.ly
  %i.awk = phi float [ %.pre.i, %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i ], [ %i.avo, %bb.ly ]
  %.tr18.lcssa.i.i.i = phi i64 [ %i.awj, %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.loopexit.i ], [ 0, %bb.ly ]
  %i.awl = load ptr, ptr %i.auk, align 8, !tbaa !143
  %i.awm = getelementptr inbounds [4 x i8], ptr %i.awl, i64 %.tr18.lcssa.i.i.i ; 5 uses
  %i.awn = load float, ptr %i.awm, align 4, !tbaa !59
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awm, i64 4
  %i.awp = load float, ptr %i.awo, align 4, !tbaa !59
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awm, i64 8
  %i.awr = load float, ptr %i.awq, align 4, !tbaa !59
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awm, i64 12
  %i.awt = load float, ptr %i.aws, align 4, !tbaa !59
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awm, i64 16
  %i.awv = load float, ptr %i.awu, align 4, !tbaa !59
  %i.aww = fsub float %i.avl, %i.awk
  %i.awx = fmul float %i.aww, %i.awn              ; 3 uses
  %i.awy = call float @llvm.fmuladd.f32(float %i.awv, float %i.awx, float %i.awt)
  %i.awz = call float @llvm.fmuladd.f32(float %i.awx, float %i.awy, float %i.awr)
  %i.axa = call float @llvm.fmuladd.f32(float %i.awx, float %i.awz, float %i.awp)
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_130rsr_Interpolator1D_interpolateEfPNS0_19rsr_Interpolator1D_E.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i, %bb.lx, %bb.lv, %bb.lt
  %.0.i818 = phi float [ %i.axa, %_ZN16OpenColorIO_v2_512_GLOBAL__N_138rsr_internal_I1D_findSegmentContainingEfPfi.exit.i ], [ %i.avq, %bb.lv ], [ %i.avx, %bb.lx ], [ %i.avl, %bb.lt ]
  %.idx1353 = mul nuw nsw i64 %indvars.iv1125, 12
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx1353
  store float %.0.i818, ptr %gep, align 4, !tbaa !59
  %indvars.iv.next1126 = add nuw nsw i64 %indvars.iv1125, 1 ; 2 uses
  %exitcond1128.not = icmp eq i64 %indvars.iv.next1126, 65536
end_hunk_0
