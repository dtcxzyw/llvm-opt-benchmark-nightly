inline.NumInlined: 1117
inline.NumDeleted: 529
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6Assimp12MS3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.alq = load i32, ptr %i.akq, align 8          ; 2 uses
  %.not409 = icmp ne i32 %i.alq, 0
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alp, i64 64
  %i.als = load i32, ptr %i.alr, align 8          ; 2 uses
  %i.alt = icmp ugt i32 %i.als, %i.alq
  %or.cond = select i1 %.not409, i1 %i.alt, i1 false
  br i1 %or.cond, label %bb.jp, label %bb.jt

bb.jp:                                            ; preds = %bb.jo
  %i.alu = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.alu, ptr noundef nonnull @.str.18)
          to label %bb.jq unwind label %bb.js

bb.jq:                                            ; preds = %bb.jp
  invoke void @__cxa_throw(ptr nonnull %i.alu, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.pw unwind label %.loopexit.split-lp1096

bb.jr:                                            ; preds = %bb.jn
  %i.alv = landingpad { ptr, i32 }
          cleanup
  br label %.body621

bb.js:                                            ; preds = %bb.jp
  %i.alw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.alu) #24
  br label %.body621

.loopexit1095:                                    ; preds = %bb.jt, %.loopexit1094, %.loopexit1093, %.loopexit1092
  %lpad.loopexit1097 = landingpad { ptr, i32 }
          cleanup
  br label %.body621

.loopexit.split-lp1096:                           ; preds = %bb.jq
  %lpad.loopexit.split-lp1098 = landingpad { ptr, i32 }
          cleanup
  br label %.body621

bb.jt:                                            ; preds = %bb.jo
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alf, i64 232
  store i32 %i.als, ptr %i.alx, align 8
  store i32 4, ptr %i.alf, align 8
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alp, i64 40 ; 3 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alp, i64 48
  %i.ama = load ptr, ptr %i.alz, align 8
  %i.amb = load ptr, ptr %i.aly, align 8
  %i.amc = ptrtoint ptr %i.ama to i64
  %i.amd = ptrtoint ptr %i.amb to i64
  %i.ame = sub i64 %i.amc, %i.amd
  %i.amf = ashr exact i64 %i.ame, 2               ; 3 uses
  %i.amg = trunc i64 %i.amf to i32                ; 4 uses
  store i32 %i.amg, ptr %i.alh, align 8
  %i.amh = and i64 %i.amf, 4294967295             ; 5 uses
  %i.ami = shl nuw nsw i64 %i.amh, 4
  %i.amj = or disjoint i64 %i.ami, 8
  %i.amk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.amj) #26
          to label %bb.ju unwind label %.loopexit1095 ; 2 uses

bb.ju:                                            ; preds = %bb.jt
  store i64 %i.amh, ptr %i.amk, align 16
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 8 ; 4 uses
  %i.amm = icmp eq i64 %i.amh, 0
  br i1 %i.amm, label %.loopexit1094, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.amn = getelementptr inbounds nuw [16 x i8], ptr %i.aml, i64 %i.amh
  %i.amo = add nuw nsw i64 %i.amh, 1152921504606846975
  %i.amp = and i64 %i.amo, 1152921504606846975
  %xtraiter1830 = and i64 %i.amf, 7               ; 2 uses
  %lcmp.mod1831.not = icmp eq i64 %xtraiter1830, 0
  br i1 %lcmp.mod1831.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.jv, %.prol.preheader
  %i.amq = phi ptr [ %i.ams, %.prol.preheader ], [ %i.aml, %bb.jv ] ; 3 uses
  %prol.iter1832 = phi i64 [ %prol.iter1832.next, %.prol.preheader ], [ 0, %bb.jv ]
  store i32 0, ptr %i.amq, align 8
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 8
  store ptr null, ptr %i.amr, align 8
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amq, i64 16 ; 2 uses
  %prol.iter1832.next = add i64 %prol.iter1832, 1 ; 2 uses
  %prol.iter1832.cmp.not = icmp eq i64 %prol.iter1832.next, %xtraiter1830
  br i1 %prol.iter1832.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !27

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.jv
  %.unr = phi ptr [ %i.aml, %bb.jv ], [ %i.ams, %.prol.preheader ]
  %i.amt = icmp samesign ult i64 %i.amp, 7
  br i1 %i.amt, label %.loopexit1094, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.amu = phi ptr [ %i.ank, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.amu, align 8
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 8
  store ptr null, ptr %i.amv, align 8
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amu, i64 16
  store i32 0, ptr %i.amw, align 8
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amu, i64 24
  store ptr null, ptr %i.amx, align 8
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amu, i64 32
  store i32 0, ptr %i.amy, align 8
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amu, i64 40
  store ptr null, ptr %i.amz, align 8
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amu, i64 48
  store i32 0, ptr %i.ana, align 8
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amu, i64 56
  store ptr null, ptr %i.anb, align 8
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amu, i64 64
  store i32 0, ptr %i.anc, align 8
  %i.and = getelementptr inbounds nuw i8, ptr %i.amu, i64 72
  store ptr null, ptr %i.and, align 8
  %i.ane = getelementptr inbounds nuw i8, ptr %i.amu, i64 80
  store i32 0, ptr %i.ane, align 8
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amu, i64 88
  store ptr null, ptr %i.anf, align 8
  %i.ang = getelementptr inbounds nuw i8, ptr %i.amu, i64 96
  store i32 0, ptr %i.ang, align 8
  %i.anh = getelementptr inbounds nuw i8, ptr %i.amu, i64 104
  store ptr null, ptr %i.anh, align 8
  %i.ani = getelementptr inbounds nuw i8, ptr %i.amu, i64 112
  store i32 0, ptr %i.ani, align 8
  %i.anj = getelementptr inbounds nuw i8, ptr %i.amu, i64 120
  store ptr null, ptr %i.anj, align 8
  %i.ank = getelementptr inbounds nuw i8, ptr %i.amu, i64 128 ; 2 uses
  %i.anl = icmp eq ptr %i.ank, %i.amn
  br i1 %i.anl, label %.loopexit1094, label %.new

.loopexit1094:                                    ; preds = %.prol.loopexit, %.new, %bb.ju
  %i.anm = getelementptr inbounds nuw i8, ptr %i.alf, i64 208 ; 2 uses
  store ptr %i.aml, ptr %i.anm, align 8
  %i.ann = mul i32 %i.amg, 3                      ; 2 uses
  store i32 %i.ann, ptr %i.alg, align 4
  %i.ano = zext i32 %i.ann to i64
  %i.anp = mul nuw nsw i64 %i.ano, 12             ; 6 uses
  %i.anq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.anp) #26
          to label %bb.jw unwind label %.loopexit1095 ; 2 uses

bb.jw:                                            ; preds = %.loopexit1094
  %i.anr = icmp eq i32 %i.amg, 0                  ; 3 uses
  br i1 %i.anr, label %.loopexit1093, label %.loopexit1093.loopexit

.loopexit1093.loopexit:                           ; preds = %bb.jw
  %i.ans = add nsw i64 %i.anp, -12                ; 2 uses
  %i.ant = urem i64 %i.ans, 12
  %i.anu = sub nuw nsw i64 %i.ans, %i.ant
  %i.anv = add nsw i64 %i.anu, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.anq, i8 0, i64 %i.anv, i1 false)
  br label %.loopexit1093

.loopexit1093:                                    ; preds = %.loopexit1093.loopexit, %bb.jw
  store ptr %i.anq, ptr %i.ali, align 8
  %i.anw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.anp) #26
          to label %bb.jx unwind label %.loopexit1095 ; 2 uses

bb.jx:                                            ; preds = %.loopexit1093
  br i1 %i.anr, label %.loopexit1092, label %.loopexit1092.loopexit

.loopexit1092.loopexit:                           ; preds = %bb.jx
  %i.anx = add nsw i64 %i.anp, -12                ; 2 uses
  %i.any = urem i64 %i.anx, 12
  %i.anz = sub nuw nsw i64 %i.anx, %i.any
  %i.aoa = add nsw i64 %i.anz, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.anw, i8 0, i64 %i.aoa, i1 false)
  br label %.loopexit1092

.loopexit1092:                                    ; preds = %.loopexit1092.loopexit, %bb.jx
  %i.aob = getelementptr inbounds nuw i8, ptr %i.alf, i64 24 ; 2 uses
  store ptr %i.anw, ptr %i.aob, align 8
  %i.aoc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.anp) #26
          to label %bb.jy unwind label %.loopexit1095 ; 2 uses

bb.jy:                                            ; preds = %.loopexit1092
  %i.aod = icmp eq i32 %i.amg, 0
  br i1 %i.aod, label %.loopexit1091, label %.loopexit1091.loopexit

.loopexit1091.loopexit:                           ; preds = %bb.jy
  %i.aoe = add nsw i64 %i.anp, -12                ; 2 uses
  %i.aof = urem i64 %i.aoe, 12
  %i.aog = sub nuw nsw i64 %i.aoe, %i.aof
  %i.aoh = add nsw i64 %i.aog, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aoc, i8 0, i64 %i.aoh, i1 false)
  br label %.loopexit1091

.loopexit1091:                                    ; preds = %.loopexit1091.loopexit, %bb.jy
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.alf, i64 112 ; 2 uses
  store ptr %i.aoc, ptr %i.aoi, align 8
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.alf, i64 176
  store i32 2, ptr %i.aoj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  store i32 0, ptr %i.akr, align 8
  store ptr null, ptr %i.aks, align 8
  store ptr %i.akr, ptr %i.akt, align 8
  store ptr %i.akr, ptr %i.aku, align 8
  store i64 0, ptr %i.akv, align 8
  br i1 %i.anr, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %.lr.ph1257

._crit_edge1258:                                  ; preds = %bb.kf
  %.pre1427 = load i64, ptr %i.akv, align 8       ; 3 uses
  %i.aok = icmp eq i64 %.pre1427, 0
  br i1 %i.aok, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.lh

.lr.ph1257:                                       ; preds = %.loopexit1091, %bb.kf
  %.03701255 = phi i32 [ %i.apz, %bb.kf ], [ 0, %.loopexit1091 ]
  %.03721254 = phi i32 [ %23, %bb.kf ], [ 0, %.loopexit1091 ] ; 2 uses
  %i.aol = load ptr, ptr %i.anm, align 8
  %22 = zext i32 %.03721254 to i64                ; 2 uses
  %i.aom = getelementptr inbounds nuw [16 x i8], ptr %i.aol, i64 %22 ; 2 uses
  %i.aon = load ptr, ptr %i.aly, align 8
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %i.aon, i64 %22
  %i.aop = load i32, ptr %i.aoo, align 4
  %i.aoq = zext i32 %i.aop to i64                 ; 2 uses
  %.not415 = icmp ugt i64 %i.aky, %i.aoq
  br i1 %.not415, label %bb.kd, label %bb.jz

bb.jz:                                            ; preds = %.lr.ph1257
  %i.aor = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aor, ptr noundef nonnull @.str.19)
          to label %bb.ka unwind label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  invoke void @__cxa_throw(ptr nonnull %i.aor, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.pw unwind label %bb.kc

bb.kb:                                            ; preds = %bb.jz
  %i.aos = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aor) #24
  br label %.body761

bb.kc:                                            ; preds = %bb.ka
  %i.aot = landingpad { ptr, i32 }
          cleanup
  br label %.body761

bb.kd:                                            ; preds = %.lr.ph1257
  %i.aou = getelementptr inbounds nuw [80 x i8], ptr %.sroa.01043.01663, i64 %i.aoq ; 3 uses
  store i32 3, ptr %i.aom, align 8
  %i.aov = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #26
          to label %bb.ke unwind label %bb.kg

bb.ke:                                            ; preds = %bb.kd
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aom, i64 8 ; 2 uses
  store ptr %i.aov, ptr %i.aow, align 8
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aou, i64 12
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aou, i64 48
  br label %bb.kh

bb.kf:                                            ; preds = %bb.kn
  %23 = add nuw i32 %.03721254, 1                 ; 2 uses
  %i.aoz = load i32, ptr %i.alh, align 8          ; 2 uses
  %i.apa = icmp ult i32 %23, %i.aoz
  br i1 %i.apa, label %.lr.ph1257, label %._crit_edge1258, !llvm.loop !28

bb.kg:                                            ; preds = %bb.kd
  %i.apb = landingpad { ptr, i32 }
          cleanup
  br label %.body761

bb.kh:                                            ; preds = %bb.ke, %bb.kn
  %indvars.iv1401 = phi i64 [ 0, %bb.ke ], [ %indvars.iv.next1402, %bb.kn ] ; 5 uses
  %.13711252 = phi i32 [ %.03701255, %bb.ke ], [ %i.apz, %bb.kn ] ; 3 uses
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %i.aou, i64 %indvars.iv1401
  %i.apd = load i32, ptr %i.apc, align 4
  %i.ape = zext i32 %i.apd to i64                 ; 2 uses
  %.not416 = icmp ugt i64 %i.alb, %i.ape
  br i1 %.not416, label %bb.km, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.apf = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.apf, ptr noundef nonnull @.str.20)
          to label %bb.kj unwind label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  invoke void @__cxa_throw(ptr nonnull %i.apf, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.pw unwind label %bb.kl

bb.kk:                                            ; preds = %bb.ki
  %i.apg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.apf) #24
  br label %.body761

bb.kl:                                            ; preds = %bb.kj
  %i.aph = landingpad { ptr, i32 }
          cleanup
  br label %.body761

bb.km:                                            ; preds = %bb.kh
  %i.api = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01055.01651, i64 %i.ape ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 12
  br label %bb.ko

bb.kn:                                            ; preds = %bb.lg
  %i.apk = load ptr, ptr %i.ali, align 8
  %i.apl = zext i32 %.13711252 to i64             ; 3 uses
  %i.apm = getelementptr inbounds nuw [12 x i8], ptr %i.apk, i64 %i.apl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.apm, ptr noundef nonnull align 4 dereferenceable(12) %i.api, i64 12, i1 false)
  %i.apn = getelementptr inbounds nuw [12 x i8], ptr %i.aox, i64 %indvars.iv1401
  %i.apo = load ptr, ptr %i.aob, align 8
  %i.app = getelementptr inbounds nuw [12 x i8], ptr %i.apo, i64 %i.apl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.app, ptr noundef nonnull align 4 dereferenceable(12) %i.apn, i64 12, i1 false)
  %i.apq = getelementptr inbounds nuw [8 x i8], ptr %i.aoy, i64 %indvars.iv1401 ; 2 uses
  %i.apr = load float, ptr %i.apq, align 4
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apq, i64 4
  %i.apt = load float, ptr %i.aps, align 4
  %i.apu = fsub float 1.000000e+00, %i.apt
  %i.apv = load ptr, ptr %i.aoi, align 8
  %i.apw = getelementptr inbounds nuw [12 x i8], ptr %i.apv, i64 %i.apl ; 3 uses
  store float %i.apr, ptr %i.apw, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apw, i64 4
  store float %i.apu, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.51014.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apw, i64 8
  store float 0.000000e+00, ptr %.sroa.51014.0..sroa_idx, align 4
  %i.apx = load ptr, ptr %i.aow, align 8
  %i.apy = getelementptr inbounds nuw [4 x i8], ptr %i.apx, i64 %indvars.iv1401
  store i32 %.13711252, ptr %i.apy, align 4
  %indvars.iv.next1402 = add nuw nsw i64 %indvars.iv1401, 1 ; 2 uses
  %i.apz = add i32 %.13711252, 1                  ; 2 uses
  %exitcond1404.not = icmp eq i64 %indvars.iv.next1402, 3
  br i1 %exitcond1404.not, label %bb.kf, label %bb.kh, !llvm.loop !29

bb.ko:                                            ; preds = %bb.km, %bb.lg
  %indvars.iv1397 = phi i64 [ 0, %bb.km ], [ %indvars.iv.next1398, %bb.lg ] ; 2 uses
  %i.aqa = getelementptr inbounds nuw [4 x i8], ptr %i.apj, i64 %indvars.iv1397
  %i.aqb = load i32, ptr %i.aqa, align 4          ; 10 uses
  %.not417 = icmp eq i32 %i.aqb, -1
  br i1 %.not417, label %bb.lg, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.aqc = zext i32 %i.aqb to i64
  %i.aqd = load ptr, ptr %i.sa, align 8
  %i.aqe = load ptr, ptr %8, align 8
  %i.aqf = ptrtoint ptr %i.aqd to i64
  %i.aqg = ptrtoint ptr %i.aqe to i64
  %i.aqh = sub i64 %i.aqf, %i.aqg
  %i.aqi = sdiv exact i64 %i.aqh, 176
  %.not418 = icmp ugt i64 %i.aqi, %i.aqc
  br i1 %.not418, label %bb.kt, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.aqj = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aqj, ptr noundef nonnull @.str.21)
          to label %bb.kr unwind label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  invoke void @__cxa_throw(ptr nonnull %i.aqj, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.pw unwind label %.loopexit.split-lp

bb.ks:                                            ; preds = %bb.kq
  %i.aqk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aqj) #24
  br label %.body761

.loopexit1084:                                    ; preds = %.critedge.i, %.critedge.i775
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body761

.loopexit.split-lp:                               ; preds = %bb.kr
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body761

bb.kt:                                            ; preds = %bb.kp
  %i.aql = load ptr, ptr %i.aks, align 8          ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.aql, null
  br i1 %.not10.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.kt, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.aql, %bb.kt ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.akr, %bb.kt ] ; 2 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.aqn = load i32, ptr %i.aqm, align 4
  %i.aqo = icmp ult i32 %i.aqn, %i.aqb            ; 3 uses
  %.19.i.i.i = select i1 %i.aqo, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.aqo, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !30

_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.aqp = icmp eq ptr %.19.i.i.i, %i.akr
  br i1 %i.aqp, label %.lr.ph.i.i.i.i.preheader, label %_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE4findERS3_.exit

_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE4findERS3_.exit: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aqo, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.aqq = load i32, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.aqr = icmp ult i32 %i.aqb, %i.aqq
  br i1 %i.aqr, label %.lr.ph.i.i.i.i.preheader, label %.lr.ph.i.i.i.i765

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE4findERS3_.exit
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.aql, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.akr, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.aqt = load i32, ptr %i.aqs, align 4
  %i.aqu = icmp ult i32 %i.aqt, %i.aqb            ; 3 uses
  %.19.i.i.i.i = select i1 %i.aqu, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.aqu, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i758 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i758, label %_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !30

_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.aqv = icmp eq ptr %.19.i.i.i.i, %i.akr
  br i1 %i.aqv, label %.critedge.i, label %bb.ku

bb.ku:                                            ; preds = %_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aqu, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.aqw = load i32, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.aqx = icmp ult i32 %i.aqb, %i.aqw
  br i1 %i.aqx, label %.critedge.i, label %bb.kz

.critedge.i:                                      ; preds = %bb.kt, %bb.ku, %_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_.exit.i
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.ku ], [ %.19.i.i.i.i, %_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_.exit.i ], [ %i.akr, %bb.kt ]
  %i.aqy = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %.noexc760 unwind label %.loopexit1084 ; 6 uses

.noexc760:                                        ; preds = %.critedge.i
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 32 ; 3 uses
  store i32 %i.aqb, ptr %i.aqz, align 4
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqy, i64 36
  store i32 0, ptr %i.ara, align 4
  %i.arb = invoke { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 4 dereferenceable(4) %i.aqz)
          to label %bb.kv unwind label %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_Auto_nodeD2Ev.exit.i.i ; 2 uses

bb.kv:                                            ; preds = %.noexc760
  %i.arc = extractvalue { ptr, ptr } %i.arb, 0    ; 2 uses
  %i.ard = extractvalue { ptr, ptr } %i.arb, 1    ; 4 uses
  %.not.i.i759 = icmp eq ptr %i.ard, null
  br i1 %.not.i.i759, label %bb.ky, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %.not.i.i.i4.i = icmp ne ptr %i.arc, null
  %i.are = icmp eq ptr %i.ard, %i.akr
  %or.cond.i.i.i.i = or i1 %.not.i.i.i4.i, %i.are
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.arf = getelementptr inbounds nuw i8, ptr %i.ard, i64 32
  %i.arg = load i32, ptr %i.aqz, align 4
  %i.arh = load i32, ptr %i.arf, align 4
  %i.ari = icmp ult i32 %i.arg, %i.arh
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.kx, %bb.kw
  %i.arj = phi i1 [ %i.ari, %bb.kx ], [ true, %bb.kw ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.arj, ptr noundef nonnull %i.aqy, ptr noundef nonnull %i.ard, ptr noundef nonnull align 8 dereferenceable(32) %i.akr) #24
  %i.ark = load i64, ptr %i.akv, align 8
  %i.arl = add i64 %i.ark, 1
  store i64 %i.arl, ptr %i.akv, align 8
  br label %bb.kz

_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_Auto_nodeD2Ev.exit.i.i: ; preds = %.noexc760
end_hunk_0
