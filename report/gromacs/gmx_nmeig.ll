Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_nmeig?download=true
inline.NumInlined: 385
inline.NumDeleted: 199
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z9gmx_nmeigiPPc:.noexc.i
  %i.ahr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc346 unwind label %bb.dj ; 2 uses

.noexc346:                                        ; preds = %.noexc.i345
  store ptr %i.ahr, ptr %25, align 8, !tbaa !16
  %i.ahs = load i64, ptr %i.f, align 8, !tbaa !14 ; 3 uses
  store i64 %i.ahs, ptr %i.ahq, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.ahr, ptr noundef nonnull align 1 dereferenceable(23) @.str.93, i64 23, i1 false)
  %i.aht = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.ahs, ptr %i.aht, align 8, !tbaa !19
  %i.ahu = load ptr, ptr %25, align 8, !tbaa !16
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 %i.ahs
  store i8 0, ptr %i.ahv, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #16
  %i.ahw = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.ahw, ptr %26, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i64 25, ptr %i.e, align 8, !tbaa !14
  %i.ahx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc350 unwind label %bb.dk ; 2 uses

.noexc350:                                        ; preds = %.noexc346
  store ptr %i.ahx, ptr %26, align 8, !tbaa !16
  %i.ahy = load i64, ptr %i.e, align 8, !tbaa !14 ; 3 uses
  store i64 %i.ahy, ptr %i.ahw, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.ahx, ptr noundef nonnull align 1 dereferenceable(25) @.str.94, i64 25, i1 false)
  %i.ahz = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.ahy, ptr %i.ahz, align 8, !tbaa !19
  %i.aia = load ptr, ptr %26, align 8, !tbaa !16
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 %i.ahy
  store i8 0, ptr %i.aib, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  %i.aic = load ptr, ptr %i.q, align 8, !tbaa !102
  %i.aid = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull @.str.92, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef %i.aic)
          to label %bb.dg unwind label %bb.dl     ; 2 uses

bb.dg:                                            ; preds = %.noexc350
  %i.aie = load ptr, ptr %26, align 8, !tbaa !16  ; 2 uses
  %i.aif = icmp eq ptr %i.aie, %i.ahw
  br i1 %i.aif, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352: ; preds = %bb.dg
  %i.aig = load i64, ptr %i.ahw, align 8, !tbaa !18
  %i.aih = add i64 %i.aig, 1
  call void @_ZdlPvm(ptr noundef %i.aie, i64 noundef %i.aih) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  %i.aii = load ptr, ptr %25, align 8, !tbaa !16  ; 2 uses
  %i.aij = icmp eq ptr %i.aii, %i.ahq
  br i1 %i.aij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354
  %i.aik = load i64, ptr %i.ahq, align 8, !tbaa !18
  %i.ail = add i64 %i.aik, 1
  call void @_ZdlPvm(ptr noundef %i.aii, i64 noundef %i.ail) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  %i.aim = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i358 = icmp eq ptr %i.ain, null
  br i1 %.not.i.i.i358, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i359, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.aim, ptr noundef nonnull %i.ain) #16
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i359

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i359: ; preds = %bb.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357
  %i.aio = load ptr, ptr %24, align 8, !tbaa !16  ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.aiq = icmp eq ptr %i.aio, %i.aip
  br i1 %i.aiq, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit362, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i360: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i359
  %i.air = load i64, ptr %i.aip, align 8, !tbaa !18
  %i.ais = add i64 %i.air, 1
  call void @_ZdlPvm(ptr noundef %i.aio, i64 noundef %i.ais) #17
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit362

_ZNSt10filesystem7__cxx114pathD2Ev.exit362:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i359, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  %i.ait = load i32, ptr @_ZZ9gmx_nmeigiPPcE7maxspec, align 4, !tbaa !9 ; 2 uses
  %i.aiu = icmp sgt i32 %i.ait, 0
  br i1 %i.aiu, label %.lr.ph456.preheader, label %.loopexit431

.lr.ph456.preheader:                              ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit362
  %i.aiv = zext nneg i32 %i.ait to i64
  %i.aiw = shl nuw nsw i64 %i.aiv, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aho, i8 0, i64 %i.aiw, i1 false), !tbaa !67
  br label %.loopexit431

bb.di:                                            ; preds = %bb.df, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit343
  %i.aix = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.dj:                                            ; preds = %.noexc.i345
  %i.aiy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368

bb.dk:                                            ; preds = %.noexc346
  %i.aiz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365

bb.dl:                                            ; preds = %.noexc350
  %i.aja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajb = load ptr, ptr %26, align 8, !tbaa !16  ; 2 uses
  %i.ajc = icmp eq ptr %i.ajb, %i.ahw
  br i1 %i.ajc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363: ; preds = %bb.dl
  %i.ajd = load i64, ptr %i.ahw, align 8, !tbaa !18
  %i.aje = add i64 %i.ajd, 1
  call void @_ZdlPvm(ptr noundef %i.ajb, i64 noundef %i.aje) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363, %bb.dk
  %.pn189 = phi { ptr, i32 } [ %i.aiz, %bb.dk ], [ %i.aja, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363 ], [ %i.aja, %bb.dl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  %i.ajf = load ptr, ptr %25, align 8, !tbaa !16  ; 2 uses
  %i.ajg = icmp eq ptr %i.ajf, %i.ahq
  br i1 %i.ajg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365
  %i.ajh = load i64, ptr %i.ahq, align 8, !tbaa !18
  %i.aji = add i64 %i.ajh, 1
  call void @_ZdlPvm(ptr noundef %i.ajf, i64 noundef %i.aji) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366, %bb.dj
  %.pn189.pn = phi { ptr, i32 } [ %i.aiy, %bb.dj ], [ %.pn189, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366 ], [ %.pn189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %24) #16
  br label %bb.dm

bb.dm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, %bb.di
  %.pn189.pn.pn = phi { ptr, i32 } [ %.pn189.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368 ], [ %i.aix, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  br label %.body

.loopexit431:                                     ; preds = %.lr.ph456.preheader, %_ZNSt10filesystem7__cxx114pathD2Ev.exit362, %bb.dd
  %.0425 = phi ptr [ null, %bb.dd ], [ %i.aho, %_ZNSt10filesystem7__cxx114pathD2Ev.exit362 ], [ %i.aho, %.lr.ph456.preheader ] ; 2 uses
  %.0159 = phi ptr [ null, %bb.dd ], [ %i.aid, %_ZNSt10filesystem7__cxx114pathD2Ev.exit362 ], [ %i.aid, %.lr.ph456.preheader ] ; 4 uses
  %i.ajj = load i32, ptr @_ZZ9gmx_nmeigiPPcE5begin, align 4, !tbaa !9 ; 2 uses
  %i.ajk = load i32, ptr @_ZZ9gmx_nmeigiPPcE3end, align 4, !tbaa !9
  %.not193460 = icmp sgt i32 %i.ajj, %i.ajk
  br i1 %.not193460, label %._crit_edge466, label %.lr.ph465

.lr.ph465:                                        ; preds = %.loopexit431
  %.not201 = icmp eq ptr %.0159, null
  %.not202 = icmp eq ptr %.0160, null
  br label %bb.dn

bb.dn:                                            ; preds = %.lr.ph465, %bb.du
  %.5149463 = phi i32 [ %i.ajj, %.lr.ph465 ], [ %i.amq, %bb.du ] ; 7 uses
  %.1153462 = phi float [ 0.000000e+00, %.lr.ph465 ], [ %.2154, %bb.du ] ; 2 uses
  %.1156461 = phi float [ 0.000000e+00, %.lr.ph465 ], [ %.2157, %bb.du ] ; 2 uses
  %i.ajl = load i32, ptr @_ZZ9gmx_nmeigiPPcE5begin, align 4, !tbaa !9
  %i.ajm = sub nsw i32 %.5149463, %i.ajl
  %i.ajn = sext i32 %i.ajm to i64
  %i.ajo = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.ajn
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !67 ; 2 uses
  %i.ajq = fcmp olt float %i.ajp, 0.000000e+00
  %.1140 = select i1 %i.ajq, float 0.000000e+00, float %i.ajp
  %i.ajr = fpext float %.1140 to double
  %i.ajs = invoke noundef double @_Z21eigenvalueToFrequencyd(double noundef %i.ajr)
          to label %bb.do unwind label %.loopexit430

bb.do:                                            ; preds = %bb.dn
  %i.ajt = fptrunc double %i.ajs to float         ; 2 uses
  %i.aju = fpext float %i.ajt to double
  %i.ajv = fmul double %i.aju, f0x3D719799812DEA11
  %i.ajw = fdiv double %i.ajv, f0x401921FB54442D18 ; 2 uses
  %i.ajx = fptrunc double %i.ajw to float
  %i.ajy = fmul float %i.ajt, f0x2CBAC9C2         ; 3 uses
  %i.ajz = fpext float %i.ajy to double
  %i.aka = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agc, ptr noundef nonnull @.str.85, i32 noundef %.5149463, double noundef %i.ajz) #16 ; 0 uses
  br i1 %.not201, label %.loopexit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.akb = load i32, ptr @_ZZ9gmx_nmeigiPPcE5begin, align 4, !tbaa !9
  %i.akc = sub nsw i32 %.5149463, %i.akb
  %i.akd = sext i32 %i.akc to i64
  %i.ake = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.akd
  %i.akf = load float, ptr %i.ake, align 4, !tbaa !67
  %i.akg = fpext float %i.akf to double
  %i.akh = load float, ptr @_ZZ9gmx_nmeigiPPcE5width, align 4, !tbaa !67
  %i.aki = fpext float %i.akh to double
  %i.akj = fmul double %i.aki, f0x40040D931FF62705
  %i.akk = fdiv double %i.akg, %i.akj
  %i.akl = fptrunc double %i.akk to float
  %i.akm = load i32, ptr @_ZZ9gmx_nmeigiPPcE7maxspec, align 4, !tbaa !9
  %i.akn = icmp sgt i32 %i.akm, 0
  br i1 %i.akn, label %.lr.ph459, label %.loopexit

.lr.ph459:                                        ; preds = %bb.dp, %.lr.ph459
  %indvars.iv490 = phi i64 [ %indvars.iv.next491, %.lr.ph459 ], [ 0, %bb.dp ] ; 3 uses
  %i.ako = trunc nuw nsw i64 %indvars.iv490 to i32
  %i.akp = uitofp nneg i32 %i.ako to float
  %i.akq = fsub float %i.akp, %i.ajy              ; 2 uses
  %i.akr = fneg float %i.akq
  %i.aks = fmul float %i.akq, %i.akr
  %i.akt = load float, ptr @_ZZ9gmx_nmeigiPPcE5width, align 4, !tbaa !67 ; 2 uses
  %i.aku = fmul float %i.akt, %i.akt
  %i.akv = fmul float %i.aku, 2.000000e+00
  %i.akw = fdiv float %i.aks, %i.akv
  %i.akx = call noundef float @expf(float noundef %i.akw) #16
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %.0425, i64 %indvars.iv490 ; 2 uses
  %i.akz = load float, ptr %i.aky, align 4, !tbaa !67
  %i.ala = call float @llvm.fmuladd.f32(float %i.akl, float %i.akx, float %i.akz)
  store float %i.ala, ptr %i.aky, align 4, !tbaa !67
  %indvars.iv.next491 = add nuw nsw i64 %indvars.iv490, 1 ; 2 uses
  %27 = load i32, ptr @_ZZ9gmx_nmeigiPPcE7maxspec, align 4, !tbaa !9
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %indvars.iv.next491, %28
  br i1 %29, label %.lr.ph459, label %.loopexit, !llvm.loop !105

.loopexit:                                        ; preds = %.lr.ph459, %bb.dp, %bb.do
  br i1 %.not202, label %bb.du, label %bb.dq

bb.dq:                                            ; preds = %.loopexit
  %i.alb = fpext float %i.ajx to double
  %i.alc = load float, ptr @_ZZ9gmx_nmeigiPPcE1T, align 4, !tbaa !67
  %i.ald = fpext float %i.alc to double           ; 2 uses
  %i.ale = fmul double %i.alb, f0x3FD989BA751137D3
  %i.alf = fmul double %i.ald, f0x3F81072C483AF26D ; 3 uses
  %i.alg = fdiv double %i.ale, %i.alf             ; 5 uses
  %i.alh = call double @exp(double noundef %i.alg) #16 ; 2 uses
  %i.ali = fcmp ugt double %i.ajw, f0x3690000000000000
  br i1 %i.ali, label %bb.dr, label %_ZL6u_corrdd.exit

bb.dr:                                            ; preds = %bb.dq
  %i.alj = fmul double %i.alg, %i.alg
  %i.alk = fmul double %i.alh, %i.alj
  %i.all = fadd double %i.alh, -1.000000e+00      ; 3 uses
  %i.alm = fmul double %i.all, %i.all
  %i.aln = call double @llvm.fmuladd.f64(double %i.alg, double 5.000000e-01, double -1.000000e+00)
  %i.alo = insertelement <2 x double> poison, double %i.alk, i64 0
  %i.alp = insertelement <2 x double> %i.alo, double %i.alg, i64 1
  %i.alq = insertelement <2 x double> poison, double %i.alm, i64 0
  %i.alr = insertelement <2 x double> %i.alq, double %i.all, i64 1
  %i.als = fdiv <2 x double> %i.alp, %i.alr
  %i.alt = insertelement <2 x double> <double -1.000000e+00, double poison>, double %i.aln, i64 1
  %i.alu = fadd <2 x double> %i.alt, %i.als       ; 2 uses
  %i.alv = extractelement <2 x double> %i.alu, i64 0
  %i.alw = fmul double %i.alv, f0x4020A1013E8990BE
  %i.alx = fptrunc double %i.alw to float
  %i.aly = extractelement <2 x double> %i.alu, i64 1
  %i.alz = fmul double %i.alf, %i.aly
  br label %_ZL6u_corrdd.exit

_ZL6u_corrdd.exit:                                ; preds = %bb.dq, %bb.dr
  %i.ama = phi float [ %i.alx, %bb.dr ], [ f0x4105080A, %bb.dq ] ; 2 uses
  %.0.i369 = phi double [ %i.alz, %bb.dr ], [ %i.alf, %bb.dq ]
  %i.amb = fptrunc double %.0.i369 to float       ; 2 uses
  %i.amc = load i32, ptr @_ZZ9gmx_nmeigiPPcE3end, align 4, !tbaa !9
  %i.amd = sub nsw i32 %i.amc, %.0107
  %i.ame = icmp sgt i32 %.5149463, %i.amd
  br i1 %i.ame, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %_ZL6u_corrdd.exit
  %i.amf = fpext float %i.ama to double
  %i.amg = fadd double %i.amf, f0x4020A1013E8990BE
  %i.amh = fptrunc double %i.amg to float
  %i.ami = fpext float %i.amb to double
  %i.amj = call double @llvm.fmuladd.f64(double %i.ald, double f0x3F81072C483AF26D, double %i.ami)
  %i.amk = fptrunc double %i.amj to float
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %_ZL6u_corrdd.exit
  %.0151 = phi float [ %i.amh, %bb.ds ], [ %i.ama, %_ZL6u_corrdd.exit ] ; 2 uses
  %.0150 = phi float [ %i.amk, %bb.ds ], [ %i.amb, %_ZL6u_corrdd.exit ] ; 2 uses
  %i.aml = fpext float %.0151 to double
  %i.amm = fpext float %.0150 to double
  %i.amn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0160, ptr noundef nonnull @.str.95, i32 noundef %.5149463, double noundef %i.aml, double noundef %i.amm) #16 ; 0 uses
  %i.amo = fadd float %.1156461, %.0151
  %i.amp = fadd float %.1153462, %.0150
  br label %bb.du

bb.du:                                            ; preds = %.loopexit, %bb.dt
  %.2157 = phi float [ %i.amo, %bb.dt ], [ %.1156461, %.loopexit ] ; 2 uses
  %.2154 = phi float [ %i.amp, %bb.dt ], [ %.1153462, %.loopexit ] ; 2 uses
  %i.amq = add nsw i32 %.5149463, 1
  %i.amr = load i32, ptr @_ZZ9gmx_nmeigiPPcE3end, align 4, !tbaa !9
  %.not193.not = icmp slt i32 %.5149463, %i.amr
  br i1 %.not193.not, label %bb.dn, label %._crit_edge466.loopexit, !llvm.loop !106

._crit_edge466.loopexit:                          ; preds = %bb.du
  %i.ams = fpext float %.2157 to double
  %i.amt = fpext float %.2154 to double
  br label %._crit_edge466

._crit_edge466:                                   ; preds = %._crit_edge466.loopexit, %.loopexit431
  %.1156.lcssa = phi double [ 0.000000e+00, %.loopexit431 ], [ %i.ams, %._crit_edge466.loopexit ]
  %.1153.lcssa = phi double [ 0.000000e+00, %.loopexit431 ], [ %i.amt, %._crit_edge466.loopexit ]
  %.0139.lcssa = phi float [ 0.000000e+00, %.loopexit431 ], [ %i.ajy, %._crit_edge466.loopexit ] ; 2 uses
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.agc)
          to label %bb.dv unwind label %.loopexit.split-lp

bb.dv:                                            ; preds = %._crit_edge466
  %i.amu = load i32, ptr @_ZZ9gmx_nmeigiPPcE7maxspec, align 4, !tbaa !9
  %i.amv = sitofp i32 %i.amu to float
  %i.amw = fcmp ult float %.0139.lcssa, %i.amv
  br i1 %i.amw, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.amx = fpext float %.0139.lcssa to double
  %i.amy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, double noundef %i.amx) ; 0 uses
  %puts194 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts195 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.not196 = icmp eq ptr %.0159, null
  br i1 %.not196, label %bb.dy, label %.preheader

.preheader:                                       ; preds = %bb.dx
  %i.amz = load i32, ptr @_ZZ9gmx_nmeigiPPcE7maxspec, align 4, !tbaa !9
  %i.ana = icmp sgt i32 %i.amz, 0
  br i1 %i.ana, label %.lr.ph471, label %._crit_edge472

.lr.ph471:                                        ; preds = %.preheader, %.lr.ph471
  %indvars.iv493 = phi i64 [ %indvars.iv.next494, %.lr.ph471 ], [ 0, %.preheader ] ; 3 uses
  %i.anb = trunc nuw nsw i64 %indvars.iv493 to i32
  %i.anc = uitofp nneg i32 %i.anb to double
  %i.and = getelementptr inbounds nuw [4 x i8], ptr %.0425, i64 %indvars.iv493
  %i.ane = load float, ptr %i.and, align 4, !tbaa !67
  %i.anf = fpext float %i.ane to double
  %i.ang = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0159, ptr noundef nonnull @.str.99, double noundef %i.anc, double noundef %i.anf) #16 ; 0 uses
  %indvars.iv.next494 = add nuw nsw i64 %indvars.iv493, 1 ; 2 uses
  %i.anh = load i32, ptr @_ZZ9gmx_nmeigiPPcE7maxspec, align 4, !tbaa !9
  %i.ani = sext i32 %i.anh to i64
  %i.anj = icmp slt i64 %indvars.iv.next494, %i.ani
  br i1 %i.anj, label %.lr.ph471, label %._crit_edge472, !llvm.loop !107

._crit_edge472:                                   ; preds = %.lr.ph471, %.preheader
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef nonnull %.0159)
          to label %bb.dy unwind label %.loopexit.split-lp

bb.dy:                                            ; preds = %._crit_edge472, %bb.dx
  %.not197 = icmp eq ptr %.0160, null
  br i1 %.not197, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %puts198 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts199 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.ank = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.102, i32 noundef %.0107) ; 0 uses
  %i.anl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.103, double noundef %.1156.lcssa) ; 0 uses
  %i.anm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.104, double noundef %.1153.lcssa) ; 0 uses
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef nonnull %.0160)
          to label %bb.ea unwind label %.loopexit.split-lp

bb.ea:                                            ; preds = %bb.dz
  %i.ann = load ptr, ptr @stdout, align 8, !tbaa !65
  invoke void @_Z11please_citeP8_IO_FILEPKc(ptr noundef %i.ann, ptr noundef nonnull @.str.105)
          to label %bb.eb unwind label %.loopexit.split-lp

bb.eb:                                            ; preds = %bb.ea, %bb.dy
  %i.ano = load ptr, ptr %i.r, align 8, !tbaa !20
  %.not200 = icmp eq ptr %i.ano, null
  br i1 %.not200, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.anp = load i32, ptr @_ZZ9gmx_nmeigiPPcE5begin, align 4, !tbaa !9
  %i.anq = add nsw i32 %i.anp, -1
  %i.anr = sext i32 %i.anq to i64
  %i.ans = load ptr, ptr %i.ei, align 8, !tbaa !59
  %i.ant = load ptr, ptr %11, align 8, !tbaa !62
  %i.anu = ptrtoint ptr %i.ans to i64
  %i.anv = ptrtoint ptr %i.ant to i64
  %i.anw = sub i64 %i.anu, %i.anv
  %i.anx = ashr exact i64 %i.anw, 2
  %i.any = mul i64 %i.anx, %i.anr
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %.0158, i64 %i.any
  br label %bb.ed

bb.ed:                                            ; preds = %bb.eb, %bb.ec
  %.0 = phi ptr [ %i.anz, %bb.ec ], [ %.0158, %bb.eb ]
  %i.aoa = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.65, i32 noundef 7, ptr noundef nonnull %7)
          to label %bb.ee unwind label %bb.fo

bb.ee:                                            ; preds = %bb.ed
  %i.aob = load ptr, ptr %i.ei, align 8, !tbaa !59
  %i.aoc = load ptr, ptr %11, align 8, !tbaa !62
  %i.aod = ptrtoint ptr %i.aob to i64
  %i.aoe = ptrtoint ptr %i.aoc to i64
  %i.aof = sub i64 %i.aod, %i.aoe
  %i.aog = lshr exact i64 %i.aof, 2
  %i.aoh = trunc i64 %i.aog to i32
  %i.aoi = load i32, ptr @_ZZ9gmx_nmeigiPPcE5begin, align 4, !tbaa !9
  %i.aoj = load i32, ptr @_ZZ9gmx_nmeigiPPcE3end, align 4, !tbaa !9
  %i.aok = load i8, ptr @_ZZ9gmx_nmeigiPPcE2bM, align 1, !tbaa !41, !range !42, !noundef !43
  %i.aol = trunc nuw i8 %i.aok to i1
  invoke void @_Z18write_eigenvectorsPKciPKfbiiiPA3_S1_bS4_bS2_(ptr noundef %i.aoa, i32 noundef %i.aoh, ptr noundef %.0, i1 noundef zeroext false, i32 noundef %i.aoi, i32 noundef %i.aoj, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, ptr noundef %i.cr, i1 noundef zeroext %i.aol, ptr noundef %i.ji)
          to label %bb.ef unwind label %bb.fo

bb.ef:                                            ; preds = %bb.ee
  %i.aom = load i32, ptr @_ZZ9gmx_nmeigiPPcE5begin, align 4, !tbaa !9 ; 2 uses
  %i.aon = icmp eq i32 %i.aom, 1
  br i1 %i.aon, label %bb.eg, label %bb.fp

bb.eg:                                            ; preds = %bb.ef
  %i.aoo = load ptr, ptr @stdout, align 8, !tbaa !65 ; 7 uses
  %i.aop = load ptr, ptr %11, align 8, !tbaa !62  ; 3 uses
  %i.aoq = load ptr, ptr %i.ei, align 8, !tbaa !59 ; 2 uses
  %i.aor = ptrtoint ptr %i.aoq to i64
  %i.aos = ptrtoint ptr %i.aop to i64
  %i.aot = sub i64 %i.aor, %i.aos                 ; 5 uses
  %i.aou = load float, ptr @_ZZ9gmx_nmeigiPPcE1T, align 4, !tbaa !67 ; 6 uses
  %i.aov = load float, ptr @_ZZ9gmx_nmeigiPPcE1P, align 4, !tbaa !67
  %i.aow = load i32, ptr @_ZZ9gmx_nmeigiPPcE7sigma_r, align 4, !tbaa !9
  %i.aox = load float, ptr @_ZZ9gmx_nmeigiPPcE12scale_factor, align 4, !tbaa !67 ; 4 uses
  %i.aoy = load float, ptr @_ZZ9gmx_nmeigiPPcE12linear_toler, align 4, !tbaa !67 ; 2 uses
  %i.aoz = icmp ugt i64 %i.aot, 9223372036854775804
  br i1 %i.aoz, label %.noexc.i.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i

end_hunk_0
