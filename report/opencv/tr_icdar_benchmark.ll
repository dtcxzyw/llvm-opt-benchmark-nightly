Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tr_icdar_benchmark?download=true
inline.NumInlined: 1227
inline.NumDeleted: 523
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@main:.noexc.i
  %i.aib = icmp sgt i64 %.013.i.i.i.i.i.i, 1
  br i1 %i.aib, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit.i, !llvm.loop !2

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i.i
  %.pre.i849 = load ptr, ptr %i.fh, align 8, !tbaa !80
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit.i, %bb.fg, %bb.ff
  %i.aic = phi ptr [ %.pre.i849, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit.i ], [ %i.aeh, %bb.fg ], [ %i.aeh, %bb.ff ] ; 2 uses
  %i.aid = getelementptr inbounds i8, ptr %i.aic, i64 -32 ; 2 uses
  store ptr %i.aid, ptr %i.fh, align 8, !tbaa !80
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !32 ; 2 uses
  %i.aif = getelementptr inbounds i8, ptr %i.aic, i64 -16 ; 2 uses
  %i.aig = icmp eq ptr %i.aie, %i.aif
  br i1 %i.aig, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i845

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i845: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i
  %i.aih = load i64, ptr %i.aif, align 8, !tbaa !33
  %i.aii = add i64 %i.aih, 1
  call void @_ZdlPvm(ptr noundef %i.aie, i64 noundef %i.aii) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i845
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aej, i64 16 ; 4 uses
  %.not.i.i696 = icmp eq ptr %i.aij, %.sroa.27.52101
  br i1 %.not.i.i696, label %bb.fq, label %bb.fm

bb.fm:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit
  %i.aik = ptrtoint ptr %.sroa.27.52101 to i64
  %i.ail = ptrtoint ptr %i.aij to i64
  %i.aim = sub i64 %i.aik, %i.ail                 ; 3 uses
  %i.ain = icmp sgt i64 %i.aim, 16
  br i1 %i.ain, label %bb.fn, label %bb.fo, !prof !87

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aej, ptr nonnull align 4 %i.aij, i64 %i.aim, i1 false)
  br label %bb.fq

bb.fo:                                            ; preds = %bb.fm
  %i.aio = icmp eq i64 %i.aim, 16
  br i1 %i.aio, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aej, ptr noundef nonnull align 4 dereferenceable(16) %i.aij, i64 16, i1 false), !tbaa.struct !201
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %bb.fn, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit
  %i.aip = getelementptr inbounds i8, ptr %.sroa.27.52101, i64 -16
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.agm, i64 4 ; 4 uses
  %.not.i.i697 = icmp eq ptr %i.aiq, %.sroa.14.52100
  br i1 %.not.i.i697, label %bb.fv, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.air = ptrtoint ptr %.sroa.14.52100 to i64
  %i.ais = ptrtoint ptr %i.aiq to i64
  %i.ait = sub i64 %i.air, %i.ais                 ; 3 uses
  %i.aiu = icmp sgt i64 %i.ait, 4
  br i1 %i.aiu, label %bb.fs, label %bb.ft, !prof !87

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.agm, ptr nonnull align 4 %i.aiq, i64 %i.ait, i1 false)
  br label %bb.fv

bb.ft:                                            ; preds = %bb.fr
  %i.aiv = icmp eq i64 %i.ait, 4
  br i1 %i.aiv, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.aiw = load float, ptr %i.aiq, align 4, !tbaa !200
  store float %i.aiw, ptr %i.agm, align 4, !tbaa !200
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft, %bb.fs, %bb.fq
  %i.aix = getelementptr inbounds i8, ptr %.sroa.14.52100, i64 -4
  %.pre2559 = load ptr, ptr %i.fh, align 8, !tbaa !80 ; 2 uses
  %.pre2560 = load ptr, ptr %38, align 8, !tbaa !81 ; 2 uses
  br label %bb.fx, !llvm.loop !144

bb.fw:                                            ; preds = %bb.fd
  %i.aiy = add nuw i64 %.03912102, 1
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.aiz = phi ptr [ %.pre2560, %bb.fv ], [ %i.aee, %bb.fw ] ; 2 uses
  %i.aja = phi ptr [ %.pre2559, %bb.fv ], [ %i.aef, %bb.fw ] ; 2 uses
  %i.ajb = phi ptr [ %.pre2560, %bb.fv ], [ %i.aeg, %bb.fw ] ; 3 uses
  %i.ajc = phi ptr [ %.pre2559, %bb.fv ], [ %i.aeh, %bb.fw ] ; 2 uses
  %.sroa.14.6 = phi ptr [ %i.aix, %bb.fv ], [ %.sroa.14.52100, %bb.fw ] ; 2 uses
  %.sroa.27.6 = phi ptr [ %i.aip, %bb.fv ], [ %.sroa.27.52101, %bb.fw ] ; 2 uses
  %.1394 = phi i32 [ %i.agq, %bb.fv ], [ -1, %bb.fw ]
  %.1392 = phi i64 [ %.03912102, %bb.fv ], [ %i.aiy, %bb.fw ] ; 2 uses
  %i.ajd = ptrtoint ptr %i.ajc to i64             ; 2 uses
  %i.aje = ptrtoint ptr %i.ajb to i64
  %i.ajf = sub i64 %i.ajd, %i.aje
  %i.ajg = ashr exact i64 %i.ajf, 5
  %i.ajh = icmp ult i64 %.1392, %i.ajg
  br i1 %i.ajh, label %bb.ew, label %.thread973

.thread973:                                       ; preds = %bb.fx, %bb.fe, %.lr.ph2115
  %i.aji = phi ptr [ %i.adu, %.lr.ph2115 ], [ %i.aee, %bb.fe ], [ %i.aiz, %bb.fx ]
  %i.ajj = phi ptr [ %i.adv, %.lr.ph2115 ], [ %i.aef, %bb.fe ], [ %i.aja, %bb.fx ]
  %i.ajk = phi ptr [ %i.adu, %.lr.ph2115 ], [ %i.aeg, %bb.fe ], [ %i.ajb, %bb.fx ]
  %.sroa.14.5.lcssa = phi ptr [ %.sroa.14.42112, %.lr.ph2115 ], [ %.sroa.14.52100, %bb.fe ], [ %.sroa.14.6, %bb.fx ] ; 4 uses
  %.sroa.27.5.lcssa = phi ptr [ %.sroa.27.42113, %.lr.ph2115 ], [ %.sroa.27.52101, %bb.fe ], [ %.sroa.27.6, %bb.fx ] ; 4 uses
  %.2395 = phi i32 [ -1, %.lr.ph2115 ], [ %i.agq, %bb.fe ], [ %.1394, %bb.fx ]
  %i.ajl = trunc i64 %.03962114 to i32
  %i.ajm = icmp eq i32 %.2395, %i.ajl
  br i1 %i.ajm, label %bb.fy, label %bb.gj

bb.fy:                                            ; preds = %.thread973
  %i.ajn = getelementptr inbounds [32 x i8], ptr %i.ajk, i64 %.03962114
  %i.ajo = invoke ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr %i.ajn)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit700 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit700: ; preds = %bb.fy
  %i.ajp = getelementptr inbounds [16 x i8], ptr %.sroa.0920.4, i64 %.03962114 ; 3 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 16 ; 4 uses
  %.not.i.i701 = icmp eq ptr %i.ajq, %.sroa.27.5.lcssa
  br i1 %.not.i.i701, label %bb.gd, label %bb.fz

bb.fz:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit700
  %i.ajr = ptrtoint ptr %.sroa.27.5.lcssa to i64
  %i.ajs = ptrtoint ptr %i.ajq to i64
  %i.ajt = sub i64 %i.ajr, %i.ajs                 ; 3 uses
  %i.aju = icmp sgt i64 %i.ajt, 16
  br i1 %i.aju, label %bb.ga, label %bb.gb, !prof !87

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ajp, ptr nonnull align 4 %i.ajq, i64 %i.ajt, i1 false)
  br label %bb.gd

bb.gb:                                            ; preds = %bb.fz
  %i.ajv = icmp eq i64 %i.ajt, 16
  br i1 %i.ajv, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ajp, ptr noundef nonnull align 4 dereferenceable(16) %i.ajq, i64 16, i1 false), !tbaa.struct !201
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb, %bb.ga, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit700
  %i.ajw = getelementptr inbounds i8, ptr %.sroa.27.5.lcssa, i64 -16
  %i.ajx = getelementptr inbounds [4 x i8], ptr %.sroa.0906.4, i64 %.03962114 ; 3 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 4 ; 4 uses
  %.not.i.i703 = icmp eq ptr %i.ajy, %.sroa.14.5.lcssa
  br i1 %.not.i.i703, label %bb.gi, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.ajz = ptrtoint ptr %.sroa.14.5.lcssa to i64
  %i.aka = ptrtoint ptr %i.ajy to i64
  %i.akb = sub i64 %i.ajz, %i.aka                 ; 3 uses
  %i.akc = icmp sgt i64 %i.akb, 4
  br i1 %i.akc, label %bb.gf, label %bb.gg, !prof !87

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ajx, ptr nonnull align 4 %i.ajy, i64 %i.akb, i1 false)
  br label %bb.gi

bb.gg:                                            ; preds = %bb.ge
  %i.akd = icmp eq i64 %i.akb, 4
  br i1 %i.akd, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.ake = load float, ptr %i.ajy, align 4, !tbaa !200
  store float %i.ake, ptr %i.ajx, align 4, !tbaa !200
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg, %bb.gf, %bb.gd
  %i.akf = getelementptr inbounds i8, ptr %.sroa.14.5.lcssa, i64 -4
  %.pre2561 = load ptr, ptr %i.fh, align 8, !tbaa !80
  %.pre2562 = load ptr, ptr %38, align 8, !tbaa !81
  br label %bb.gj, !llvm.loop !145

bb.gj:                                            ; preds = %.thread973, %bb.gi
  %i.akg = phi ptr [ %.pre2562, %bb.gi ], [ %i.aji, %.thread973 ] ; 2 uses
  %i.akh = phi ptr [ %.pre2561, %bb.gi ], [ %i.ajj, %.thread973 ] ; 2 uses
  %.sroa.14.8 = phi ptr [ %i.akf, %bb.gi ], [ %.sroa.14.5.lcssa, %.thread973 ]
  %.sroa.27.8 = phi ptr [ %i.ajw, %bb.gi ], [ %.sroa.27.5.lcssa, %.thread973 ] ; 2 uses
  %.1397 = phi i64 [ %.03962114, %bb.gi ], [ %i.adw, %.thread973 ] ; 2 uses
  %i.aki = ptrtoint ptr %i.akh to i64
  %i.akj = ptrtoint ptr %i.akg to i64
  %i.akk = sub i64 %i.aki, %i.akj
  %i.akl = ashr exact i64 %i.akk, 5
  %i.akm = icmp ult i64 %.1397, %i.akl
  br i1 %i.akm, label %.lr.ph2115, label %.preheader1036

._crit_edge2160.loopexit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.akn = uitofp i32 %.4390 to double
  br label %._crit_edge2160

._crit_edge2160:                                  ; preds = %bb.ci, %._crit_edge2160.loopexit, %.preheader1036
  %i.ako = phi i64 [ %i.adp, %.preheader1036 ], [ %i.adp, %._crit_edge2160.loopexit ], [ 0, %bb.ci ]
  %.sroa.23.0.lcssa28042821 = phi ptr [ %.sroa.23.4, %.preheader1036 ], [ %.sroa.23.4, %._crit_edge2160.loopexit ], [ null, %bb.ci ] ; 3 uses
  %.sroa.0906.0.lcssa28052819 = phi ptr [ %.sroa.0906.4, %.preheader1036 ], [ %.sroa.0906.4, %._crit_edge2160.loopexit ], [ null, %bb.ci ] ; 5 uses
  %.sroa.38.0.lcssa28062817 = phi ptr [ %.sroa.38.4, %.preheader1036 ], [ %.sroa.38.4, %._crit_edge2160.loopexit ], [ null, %bb.ci ] ; 3 uses
  %.sroa.0920.0.lcssa28072815 = phi ptr [ %.sroa.0920.4, %.preheader1036 ], [ %.sroa.0920.4, %._crit_edge2160.loopexit ], [ null, %bb.ci ] ; 4 uses
  %.0386.lcssa = phi double [ 0.000000e+00, %.preheader1036 ], [ %i.akn, %._crit_edge2160.loopexit ], [ 0.000000e+00, %bb.ci ]
  %.0380.lcssa = phi i32 [ 0, %.preheader1036 ], [ %.5385, %._crit_edge2160.loopexit ], [ 0, %bb.ci ]
  %.1364.lcssa = phi i32 [ %.03632174, %.preheader1036 ], [ %.5368, %._crit_edge2160.loopexit ], [ %.03632174, %bb.ci ] ; 2 uses
  %.1357.lcssa = phi i32 [ %.03562175, %.preheader1036 ], [ %.6362, %._crit_edge2160.loopexit ], [ %.03562175, %bb.ci ] ; 2 uses
  %i.akp = insertelement <2 x i32> poison, i32 %.0377.lcssa, i64 0
  %i.akq = insertelement <2 x i32> %i.akp, i32 %.0380.lcssa, i64 1
  %.fr = freeze <2 x i32> %i.akq                  ; 2 uses
  %i.akr = icmp eq <2 x i32> %.fr, zeroinitializer ; 2 uses
  %i.aks = uitofp <2 x i32> %.fr to <2 x double>
  %i.akt = insertelement <2 x double> poison, double %.0386.lcssa, i64 0
  %i.aku = shufflevector <2 x double> %i.akt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.akv = fdiv <2 x double> %i.aku, %i.aks
  %i.akw = select <2 x i1> %i.akr, <2 x double> zeroinitializer, <2 x double> %i.akv ; 3 uses
  %i.akx = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.akw) ; 2 uses
  %i.aky = fcmp une double %i.akx, 0.000000e+00
  %shift = shufflevector <2 x double> %i.akw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.akw, %shift
  %i.akz = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ala = fmul double %i.akz, 2.000000e+00
  %i.alb = fdiv double %i.ala, %i.akx
  %storemerge = select i1 %i.aky, double %i.alb, double 0.000000e+00
  %53 = bitcast <2 x i1> %i.akr to i2
  %or.cond12 = icmp eq i2 %53, -1
  %storemerge440 = select i1 %or.cond12, double 1.000000e+00, double %storemerge ; 2 uses
  %.not.i706 = icmp eq ptr %.sroa.8.02171, %.sroa.11.02170
  br i1 %.not.i706, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %._crit_edge2160
  store double %storemerge440, ptr %.sroa.8.02171, align 8, !tbaa !65
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

bb.gl:                                            ; preds = %._crit_edge2160
  %i.alc = ptrtoint ptr %.sroa.8.02171 to i64
  %i.ald = ptrtoint ptr %.sroa.0961.02172 to i64
  %i.ale = sub i64 %i.alc, %i.ald                 ; 6 uses
  %i.alf = icmp eq i64 %i.ale, 9223372036854775800
  br i1 %i.alf, label %bb.gm, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.gm:                                            ; preds = %bb.gl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc710 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc710:                                        ; preds = %bb.gm
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.gl
  %i.alg = ashr exact i64 %i.ale, 3               ; 3 uses
  %.sroa.speculated.i.i.i707 = call i64 @llvm.umax.i64(i64 %i.alg, i64 1)
  %i.alh = add nsw i64 %.sroa.speculated.i.i.i707, %i.alg ; 2 uses
  %i.ali = icmp ult i64 %i.alh, %i.alg
  %i.alj = call i64 @llvm.umin.i64(i64 %i.alh, i64 1152921504606846975)
  %i.alk = select i1 %i.ali, i64 1152921504606846975, i64 %i.alj ; 3 uses
  %.not.i.i.i708 = icmp ne i64 %i.alk, 0
  call void @llvm.assume(i1 %.not.i.i.i708)
  %i.all = shl nuw nsw i64 %i.alk, 3
  %i.alm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.all) #28
          to label %.noexc711 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc711:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.aln = getelementptr inbounds i8, ptr %i.alm, i64 %i.ale ; 2 uses
  store double %storemerge440, ptr %i.aln, align 8, !tbaa !65
  %i.alo = icmp sgt i64 %i.ale, 0
  br i1 %i.alo, label %bb.gn, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.gn:                                            ; preds = %.noexc711
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.alm, ptr align 8 %.sroa.0961.02172, i64 %i.ale, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.gn, %.noexc711
  %.not.i17.i.i709 = icmp eq ptr %.sroa.0961.02172, null
  br i1 %.not.i17.i.i709, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.go

bb.go:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0961.02172, i64 noundef %i.ale) #29
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.go, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  %i.alp = getelementptr inbounds nuw [8 x i8], ptr %i.alm, i64 %i.alk
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

bb.gp:                                            ; preds = %.lr.ph2159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %.13572158 = phi i32 [ %.03562175, %.lr.ph2159 ], [ %.6362, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 4 uses
  %.13642157 = phi i32 [ %.03632174, %.lr.ph2159 ], [ %.5368, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 4 uses
  %.03752155 = phi i64 [ 0, %.lr.ph2159 ], [ %i.atl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 11 uses
  %.03802154 = phi i32 [ 0, %.lr.ph2159 ], [ %.5385, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 4 uses
  %.03862153 = phi i32 [ 0, %.lr.ph2159 ], [ %.4390, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 4 uses
  %i.alq = load ptr, ptr %i.adt, align 8, !tbaa !80 ; 3 uses
  %i.alr = load ptr, ptr %.0376, align 8, !tbaa !81 ; 3 uses
  %.not441 = icmp eq ptr %i.alq, %i.alr
  %.pre2572 = load ptr, ptr %38, align 8, !tbaa !81 ; 2 uses
  br i1 %.not441, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.thread, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.als = getelementptr inbounds nuw [32 x i8], ptr %.pre2572, i64 %.03752155
  %i.alt = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIKS7_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.alr, ptr %i.alq, ptr nonnull align 8 dereferenceable(32) %i.als)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit713 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit713: ; preds = %bb.gq
  %i.alu = load ptr, ptr %i.adt, align 8, !tbaa !74 ; 2 uses
  %i.alv = icmp eq ptr %i.alt, %i.alu
  %.pre2568 = load ptr, ptr %.0376, align 8, !tbaa !74 ; 4 uses
  %.pre2571 = load ptr, ptr %38, align 8, !tbaa !81 ; 3 uses
  br i1 %i.alv, label %bb.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.thread

bb.gr:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit713
  %i.alw = getelementptr inbounds nuw [32 x i8], ptr %.pre2571, i64 %.03752155
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  %i.aly = load i64, ptr %i.alx, align 8, !tbaa !21 ; 2 uses
  %i.alz = trunc i64 %i.aly to i32                ; 2 uses
  %.not2188 = icmp eq ptr %i.alt, %.pre2568
  br i1 %.not2188, label %._crit_edge2123, label %.lr.ph2122

._crit_edge2123.loopexit:                         ; preds = %bb.gs
  %.pre2563 = load ptr, ptr %38, align 8, !tbaa !81 ; 2 uses
  %.phi.trans.insert2564 = getelementptr inbounds nuw [32 x i8], ptr %.pre2563, i64 %.03752155
  %.phi.trans.insert2565 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert2564, i64 8
  %.pre2566 = load i64, ptr %.phi.trans.insert2565, align 8, !tbaa !21
  %i.ama = sext i32 %spec.select to i64
  br label %._crit_edge2123

._crit_edge2123:                                  ; preds = %._crit_edge2123.loopexit, %bb.gr
  %i.amb = phi i64 [ %i.aly, %bb.gr ], [ %.pre2566, %._crit_edge2123.loopexit ]
  %i.amc = phi ptr [ %.pre2571, %bb.gr ], [ %.pre2563, %._crit_edge2123.loopexit ]
  %.0372.lcssa = phi i64 [ -1, %bb.gr ], [ %i.ama, %._crit_edge2123.loopexit ] ; 3 uses
  %.0370.lcssa = phi i32 [ %i.alz, %bb.gr ], [ %spec.select510, %._crit_edge2123.loopexit ]
  %.lcssa1284 = phi ptr [ %.pre2568, %bb.gr ], [ %i.amq, %._crit_edge2123.loopexit ]
  %.lcssa1282 = phi i64 [ 0, %bb.gr ], [ %i.amu, %._crit_edge2123.loopexit ] ; 2 uses
  %i.amd = sext i32 %.0370.lcssa to i64
  %i.ame = getelementptr inbounds nuw [32 x i8], ptr %i.amc, i64 %.03752155
  %i.amf = icmp ugt i64 %i.amb, %i.amd
  br i1 %i.amf, label %bb.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

.lr.ph2122:                                       ; preds = %bb.gr, %bb.gs
  %i.amg = phi ptr [ %i.amq, %bb.gs ], [ %.pre2568, %bb.gr ]
  %.03692120 = phi i64 [ %i.amo, %bb.gs ], [ 0, %bb.gr ] ; 3 uses
  %.03702119 = phi i32 [ %spec.select510, %bb.gs ], [ %i.alz, %bb.gr ] ; 2 uses
  %.03722118 = phi i32 [ %spec.select, %bb.gs ], [ -1, %bb.gr ]
  %i.amh = getelementptr inbounds nuw [32 x i8], ptr %i.amg, i64 %.03692120
  %i.ami = load ptr, ptr %38, align 8, !tbaa !81
  %i.amj = getelementptr inbounds nuw [32 x i8], ptr %i.ami, i64 %.03752155
  %i.amk = invoke noundef i64 @_Z13edit_distanceRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(32) %i.amh, ptr noundef nonnull align 8 dereferenceable(32) %i.amj)
          to label %bb.gs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.gs:                                            ; preds = %.lr.ph2122
  %i.aml = trunc i64 %i.amk to i32                ; 2 uses
  %i.amm = icmp sgt i32 %.03702119, %i.aml
  %i.amn = trunc i64 %.03692120 to i32
  %spec.select = select i1 %i.amm, i32 %i.amn, i32 %.03722118 ; 2 uses
  %spec.select510 = call i32 @llvm.smin.i32(i32 %.03702119, i32 %i.aml) ; 2 uses
  %i.amo = add nuw i64 %.03692120, 1              ; 2 uses
  %i.amp = load ptr, ptr %i.adt, align 8, !tbaa !80
  %i.amq = load ptr, ptr %.0376, align 8, !tbaa !81 ; 3 uses
  %i.amr = ptrtoint ptr %i.amp to i64
  %i.ams = ptrtoint ptr %i.amq to i64
  %i.amt = sub i64 %i.amr, %i.ams
  %i.amu = ashr exact i64 %i.amt, 5               ; 2 uses
  %i.amv = icmp ult i64 %i.amo, %i.amu
  br i1 %i.amv, label %.lr.ph2122, label %._crit_edge2123.loopexit, !llvm.loop !146

bb.gt:                                            ; preds = %._crit_edge2123
  %.not.i.i716 = icmp ugt i64 %.lcssa1282, %.0372.lcssa
  br i1 %.not.i.i716, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.25, i64 noundef %.0372.lcssa, i64 noundef %.lcssa1282) #27
          to label %.noexc717 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc717:                                        ; preds = %bb.gu
  unreachable

bb.gv:                                            ; preds = %bb.gt
  %i.amw = getelementptr inbounds nuw [32 x i8], ptr %.lcssa1284, i64 %.0372.lcssa
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ame, ptr noundef nonnull align 8 dereferenceable(32) %i.amw)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.thread_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.thread_crit_edge: ; preds = %bb.gv
  %.pre2567 = load ptr, ptr %.0376, align 8, !tbaa !74
  %.pre2569 = load ptr, ptr %i.adt, align 8, !tbaa !74
  %.pre2570 = load ptr, ptr %38, align 8, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.thread: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.thread_crit_edge, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit713, %bb.gp
  %i.amx = phi ptr [ %.pre2570, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.thread_crit_edge ], [ %.pre2571, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit713 ], [ %.pre2572, %bb.gp ]
  %i.amy = phi ptr [ %.pre2569, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.thread_crit_edge ], [ %i.alu, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit713 ], [ %i.alq, %bb.gp ]
  %i.amz = phi ptr [ %.pre2567, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.thread_crit_edge ], [ %.pre2568, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit713 ], [ %i.alr, %bb.gp ]
  %i.ana = getelementptr inbounds nuw [32 x i8], ptr %i.amx, i64 %.03752155
  %i.anb = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIKS7_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.amz, ptr %i.amy, ptr nonnull align 8 dereferenceable(32) %i.ana)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit721 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit721: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.thread
  %i.anc = load ptr, ptr %i.adt, align 8, !tbaa !74
  %i.and = icmp eq ptr %i.anb, %i.anc
  %.reass2167.reass.reass = and i1 %i.and, %invariant.op4465
  br i1 %.reass2167.reass.reass, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.gw

bb.gw:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit721
  %i.ane = add i32 %.13572158, 1                  ; 3 uses
  %i.anf = add i32 %.03802154, 1                  ; 3 uses
  %i.ang = load ptr, ptr %i.gz, align 8, !tbaa !209 ; 2 uses
  %i.anh = load ptr, ptr %i.ha, align 8, !tbaa !209
  %.not10162130 = icmp eq ptr %i.ang, %i.anh
  br i1 %.not10162130, label %._crit_edge2137.thread, label %.lr.ph2136

.lr.ph2136:                                       ; preds = %bb.gw
  %i.ani = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0920.4, i64 %.03752155 ; 3 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 8
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ani, i64 12
  br label %bb.gy

bb.gx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit749
  %i.anl = getelementptr inbounds nuw i8, ptr %.sroa.0855.02131, i64 48 ; 2 uses
  %i.anm = load ptr, ptr %i.ha, align 8, !tbaa !209
  %.not1016 = icmp eq ptr %i.anl, %i.anm
  br i1 %.not1016, label %._crit_edge2137, label %bb.gy, !llvm.loop !147

bb.gy:                                            ; preds = %.lr.ph2136, %bb.gx
  %.03532134 = phi i1 [ false, %.lr.ph2136 ], [ %.1354, %bb.gx ] ; 5 uses
  %.23652133 = phi i32 [ %.13642157, %.lr.ph2136 ], [ %.3366, %bb.gx ] ; 6 uses
  %.13872132 = phi i32 [ %.03862153, %.lr.ph2136 ], [ %.2388, %bb.gx ] ; 6 uses
  %.sroa.0855.02131 = phi ptr [ %i.ang, %.lr.ph2136 ], [ %i.anl, %bb.gx ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #26
  store ptr %i.fn, ptr %51, align 8, !tbaa !72
  %i.ann = load ptr, ptr %.sroa.0855.02131, align 8, !tbaa !32 ; 2 uses
end_hunk_0
