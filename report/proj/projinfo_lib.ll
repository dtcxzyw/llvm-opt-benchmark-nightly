Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/projinfo_lib?download=true
inline.NumInlined: 3852
inline.NumDeleted: 1140
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL13main_projinfoP6pj_ctxiPPcRN12_GLOBAL__N_18StreamerE:bb.a
  call void @_ZdlPvm(ptr noundef %i.vq, i64 noundef %i.vt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1018

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1018: ; preds = %bb.jx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1016
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #31
  %i.vu = load ptr, ptr %51, align 8, !tbaa !77   ; 2 uses
  %i.vv = load ptr, ptr %i.cp, align 8, !tbaa !77 ; 2 uses
  %.not19442938 = icmp eq ptr %i.vu, %i.vv
  br i1 %.not19442938, label %._crit_edge, label %.lr.ph2940

._crit_edge:                                      ; preds = %bb.kd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1018
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %51) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #31
  br label %bb.ld

bb.jy:                                            ; preds = %bb.ju
  %i.vw = landingpad { ptr, i32 }
          cleanup
  br label %bb.kb

bb.jz:                                            ; preds = %bb.jv
  %i.vx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1021

bb.ka:                                            ; preds = %bb.jw
  %i.vy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vz = load ptr, ptr %52, align 8, !tbaa !63   ; 2 uses
  %i.wa = icmp eq ptr %i.vz, %i.co
  br i1 %i.wa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1021, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1019

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1019: ; preds = %bb.ka
  %i.wb = load i64, ptr %i.co, align 8, !tbaa !64
  %i.wc = add i64 %i.wb, 1
  call void @_ZdlPvm(ptr noundef %i.vz, i64 noundef %i.wc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1021

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1021: ; preds = %bb.ka, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1019, %bb.jz
  %.pn = phi { ptr, i32 } [ %i.vx, %bb.jz ], [ %i.vy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1019 ], [ %i.vy, %bb.ka ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #31
  br label %bb.kb

bb.kb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1021, %bb.jy
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1021 ], [ %i.vw, %bb.jy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #31
  br label %bb.kf

.lr.ph2940:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1018, %bb.kd
  %.sroa.01584.02939 = phi ptr [ %i.wf, %bb.kd ], [ %i.vu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1018 ] ; 2 uses
  %i.wd = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01584.02939)
          to label %bb.kc unwind label %bb.ke     ; 0 uses

bb.kc:                                            ; preds = %.lr.ph2940
  %i.we = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsEPFRSoS4_E(ptr noundef nonnull align 8 dereferenceable(408) %3)
          to label %bb.kd unwind label %bb.ke     ; 0 uses

bb.kd:                                            ; preds = %bb.kc
  %i.wf = getelementptr inbounds nuw i8, ptr %.sroa.01584.02939, i64 32 ; 2 uses
  %.not1944 = icmp eq ptr %i.wf, %i.vv
  br i1 %.not1944, label %._crit_edge, label %.lr.ph2940

bb.ke:                                            ; preds = %bb.kc, %.lr.ph2940
  %i.wg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %51) #31
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kb
  %.pn732 = phi { ptr, i32 } [ %i.wg, %bb.ke ], [ %.pn.pn, %bb.kb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #31
  br label %.loopexit1962

bb.kg:                                            ; preds = %bb.jt
  %i.wh = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.116) #31
  br i1 %i.wh, label %bb.kh, label %bb.ku

bb.kh:                                            ; preds = %bb.kg
  %i.wi = invoke i32 @proj_context_is_network_enabled(ptr noundef %0)
          to label %bb.ki unwind label %bb.aa

bb.ki:                                            ; preds = %bb.kh
  %.not729 = icmp eq i32 %i.wi, 0
  br i1 %.not729, label %bb.kq, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.wj = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsIA16_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %3)
          to label %bb.kk unwind label %bb.aa     ; 0 uses

bb.kk:                                            ; preds = %bb.kj
  %i.wk = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsEPFRSoS4_E(ptr noundef nonnull align 8 dereferenceable(408) %3)
          to label %bb.kl unwind label %bb.aa     ; 0 uses

bb.kl:                                            ; preds = %bb.kk
  %i.wl = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsIA6_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.118)
          to label %bb.km unwind label %bb.aa     ; 0 uses

bb.km:                                            ; preds = %bb.kl
  %i.wm = invoke ptr @proj_context_get_url_endpoint(ptr noundef %0)
          to label %bb.kn unwind label %bb.kp

bb.kn:                                            ; preds = %bb.km
  %i.wn = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsIPKcEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr %i.wm)
          to label %bb.ko unwind label %bb.kp     ; 0 uses

bb.ko:                                            ; preds = %bb.kn
  %i.wo = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsEPFRSoS4_E(ptr noundef nonnull align 8 dereferenceable(408) %3)
          to label %bb.ld unwind label %bb.kp     ; 0 uses

bb.kp:                                            ; preds = %bb.kn, %bb.ko, %bb.km
  %i.wp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit1962

bb.kq:                                            ; preds = %bb.ki
  %i.wq = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsIA17_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 1 dereferenceable(17) @.str.119)
          to label %bb.kr unwind label %bb.aa     ; 0 uses

bb.kr:                                            ; preds = %bb.kq
  %i.wr = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsEPFRSoS4_E(ptr noundef nonnull align 8 dereferenceable(408) %3)
          to label %bb.ks unwind label %bb.aa     ; 0 uses

bb.ks:                                            ; preds = %bb.kr
  %i.ws = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsIA65_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %3)
          to label %bb.kt unwind label %bb.aa     ; 0 uses

bb.kt:                                            ; preds = %bb.ks
  %i.wt = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsEPFRSoS4_E(ptr noundef nonnull align 8 dereferenceable(408) %3)
          to label %bb.ld unwind label %bb.aa     ; 0 uses

bb.ku:                                            ; preds = %bb.kg
  %i.wu = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.121)
          to label %bb.kv unwind label %bb.aa

bb.kv:                                            ; preds = %bb.ku
  br i1 %i.wu, label %.invoke, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.wv = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.122)
          to label %bb.kx unwind label %bb.aa

bb.kx:                                            ; preds = %bb.kw
  br i1 %i.wv, label %.invoke, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.ww = load ptr, ptr %23, align 8, !tbaa !63
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !64
  %i.wy = icmp eq i8 %i.wx, 45
  br i1 %i.wy, label %bb.kz, label %bb.lc

bb.kz:                                            ; preds = %bb.ky
  %i.wz = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIA22_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bx, ptr noundef nonnull align 1 dereferenceable(22) @.str.123)
          to label %bb.la unwind label %bb.aa     ; 0 uses

bb.la:                                            ; preds = %bb.kz
  %i.xa = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.lb unwind label %bb.aa     ; 0 uses

bb.lb:                                            ; preds = %bb.la
  %i.xb = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsEPFRSoS4_E(ptr noundef nonnull align 8 dereferenceable(408) %i.bx)
          to label %.invoke unwind label %bb.aa   ; 0 uses

.invoke:                                          ; preds = %bb.lb, %bb.kv, %bb.kx
  %i.xc = phi i1 [ false, %bb.kv ], [ false, %bb.kx ], [ true, %bb.lb ]
  %i.xd = invoke fastcc noundef i32 @_ZL5usageRN12_GLOBAL__N_18StreamerEb(ptr noundef nonnull align 8 dereferenceable(1224) %3, i1 noundef zeroext %i.xc)
          to label %bb.ld unwind label %bb.aa

bb.lc:                                            ; preds = %bb.ky
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.aa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %._crit_edge2944, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015.thread, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.dv, %bb.dc, %bb.jn, %bb.ix, %bb.iw, %bb.im, %bb.ik, %bb.ib, %bb.eq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread1622, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit958.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984, %bb.hr, %bb.ip, %bb.iv, %bb.lc, %bb.jq, %bb.jr, %bb.js, %bb.is, %bb.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit962.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897
  %.1665 = phi i32 [ %i.dy, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06642946, %bb.jn ], [ %i.ib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910 ], [ %i.hs, %bb.dc ], [ %i.jz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %i.jq, %bb.dv ], [ %i.lt, %bb.em ], [ %i.md, %bb.en ], [ %i.mq, %bb.eo ], [ %.06642946, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit958.thread ], [ %.06642946, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit962.thread ], [ %.06642946, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread ], [ %.06642946, %bb.lc ], [ %.06642946, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966 ], [ %.06642946, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread1622 ], [ %i.nz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %i.ov, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %i.pt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %i.qr, %._crit_edge2944 ], [ %i.sr, %bb.hr ], [ %i.sy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ %.06642946, %bb.eq ], [ %i.tp, %bb.ih ], [ %.06642946, %bb.ib ], [ %.06642946, %bb.ik ], [ %.06642946, %bb.ip ], [ %.06642946, %bb.is ], [ %.06642946, %bb.iv ], [ %.06642946, %bb.im ], [ %.06642946, %bb.iw ], [ %i.uf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015.thread ], [ %.06642946, %bb.ix ], [ %i.vh, %bb.js ], [ %.06642946, %bb.jr ], [ %.06642946, %bb.jq ], [ %i.na, %bb.ep ], [ %i.qr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ], [ %i.qr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990 ], [ %i.qr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ]
  %.1661 = phi i8 [ %.06602947, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06602947, %bb.jn ], [ %.06602947, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910 ], [ %.06602947, %bb.dc ], [ %.06602947, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06602947, %bb.dv ], [ %.06602947, %bb.em ], [ %.06602947, %bb.en ], [ %.06602947, %bb.eo ], [ %.06602947, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit958.thread ], [ %.06602947, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit962.thread ], [ %.06602947, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread ], [ %.06602947, %bb.lc ], [ %.06602947, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966 ], [ %.06602947, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread1622 ], [ %.06602947, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06602947, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06602947, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06602947, %._crit_edge2944 ], [ %.06602947, %bb.hr ], [ %.06602947, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ %.06602947, %bb.eq ], [ %.06602947, %bb.ih ], [ %.06602947, %bb.ib ], [ %.06602947, %bb.ik ], [ %.06602947, %bb.ip ], [ %.06602947, %bb.is ], [ %.06602947, %bb.iv ], [ %.06602947, %bb.im ], [ %.06602947, %bb.iw ], [ %.06602947, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015.thread ], [ %.06602947, %bb.ix ], [ 1, %bb.js ], [ 1, %bb.jr ], [ 1, %bb.jq ], [ %.06602947, %bb.ep ], [ %.06602947, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ], [ %.06602947, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990 ], [ %.06602947, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ]
  %.1657 = phi i8 [ %.06562949, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ 1, %bb.jn ], [ %.06562949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910 ], [ %.06562949, %bb.dc ], [ %.06562949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06562949, %bb.dv ], [ %.06562949, %bb.em ], [ %.06562949, %bb.en ], [ %.06562949, %bb.eo ], [ %.06562949, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit958.thread ], [ %.06562949, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit962.thread ], [ %.06562949, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread ], [ %.06562949, %bb.lc ], [ %.06562949, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966 ], [ %.06562949, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread1622 ], [ %.06562949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06562949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06562949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06562949, %._crit_edge2944 ], [ %.06562949, %bb.hr ], [ %.06562949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ %.06562949, %bb.eq ], [ %.06562949, %bb.ih ], [ %.06562949, %bb.ib ], [ %.06562949, %bb.ik ], [ %.06562949, %bb.ip ], [ %.06562949, %bb.is ], [ %.06562949, %bb.iv ], [ %.06562949, %bb.im ], [ %.06562949, %bb.iw ], [ %.06562949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015.thread ], [ %.06562949, %bb.ix ], [ %.06562949, %bb.js ], [ %.06562949, %bb.jr ], [ %.06562949, %bb.jq ], [ %.06562949, %bb.ep ], [ %.06562949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ], [ %.06562949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990 ], [ %.06562949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ]
  %.5653 = phi i1 [ %.16492037, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06482951, %bb.jn ], [ %.06482951, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910 ], [ %.06482951, %bb.dc ], [ %.06482951, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06482951, %bb.dv ], [ %.06482951, %bb.em ], [ %.06482951, %bb.en ], [ %.06482951, %bb.eo ], [ %.06482951, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit958.thread ], [ %.06482951, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit962.thread ], [ %.06482951, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread ], [ %.06482951, %bb.lc ], [ %.06482951, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966 ], [ %.06482951, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread1622 ], [ %.06482951, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06482951, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06482951, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06482951, %._crit_edge2944 ], [ %.06482951, %bb.hr ], [ %.06482951, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ %.06482951, %bb.eq ], [ %.06482951, %bb.ih ], [ %.06482951, %bb.ib ], [ %.06482951, %bb.ik ], [ %.06482951, %bb.ip ], [ %.06482951, %bb.is ], [ %.06482951, %bb.iv ], [ %.06482951, %bb.im ], [ %.06482951, %bb.iw ], [ %.06482951, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015.thread ], [ %.06482951, %bb.ix ], [ %.06482951, %bb.js ], [ %.06482951, %bb.jr ], [ %.06482951, %bb.jq ], [ %.06482951, %bb.ep ], [ %.06482951, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ], [ %.06482951, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990 ], [ %.06482951, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ]
  %.1645 = phi double [ %.06442971, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06442971, %bb.jn ], [ %i.iq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910 ], [ %.06442971, %bb.dc ], [ %.06442971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06442971, %bb.dv ], [ %.06442971, %bb.em ], [ %.06442971, %bb.en ], [ %.06442971, %bb.eo ], [ %.06442971, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit958.thread ], [ %.06442971, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit962.thread ], [ %.06442971, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread ], [ %.06442971, %bb.lc ], [ %.06442971, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966 ], [ %.06442971, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread1622 ], [ %.06442971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06442971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06442971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06442971, %._crit_edge2944 ], [ %.06442971, %bb.hr ], [ %.06442971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ %.06442971, %bb.eq ], [ %.06442971, %bb.ih ], [ %.06442971, %bb.ib ], [ %.06442971, %bb.ik ], [ %.06442971, %bb.ip ], [ %.06442971, %bb.is ], [ %.06442971, %bb.iv ], [ %.06442971, %bb.im ], [ %.06442971, %bb.iw ], [ %.06442971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015.thread ], [ %.06442971, %bb.ix ], [ %.06442971, %bb.js ], [ %.06442971, %bb.jr ], [ %.06442971, %bb.jq ], [ %.06442971, %bb.ep ], [ %.06442971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ], [ %.06442971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990 ], [ %.06442971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ]
  %.1641 = phi i8 [ %.06402972, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06402972, %bb.jn ], [ %.06402972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910 ], [ %.06402972, %bb.dc ], [ %.06402972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06402972, %bb.dv ], [ %.06402972, %bb.em ], [ %.06402972, %bb.en ], [ %.06402972, %bb.eo ], [ %.06402972, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit958.thread ], [ %.06402972, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit962.thread ], [ %.06402972, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread ], [ %.06402972, %bb.lc ], [ %.06402972, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966 ], [ %.06402972, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread1622 ], [ %.06402972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06402972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06402972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06402972, %._crit_edge2944 ], [ %.06402972, %bb.hr ], [ %.06402972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ %.06402972, %bb.eq ], [ %.06402972, %bb.ih ], [ %.06402972, %bb.ib ], [ %.06402972, %bb.ik ], [ %.06402972, %bb.ip ], [ %.06402972, %bb.is ], [ %.06402972, %bb.iv ], [ %.06402972, %bb.im ], [ %.06402972, %bb.iw ], [ %.06402972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015.thread ], [ 1, %bb.ix ], [ %.06402972, %bb.js ], [ %.06402972, %bb.jr ], [ %.06402972, %bb.jq ], [ %.06402972, %bb.ep ], [ %.06402972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ], [ %.06402972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990 ], [ %.06402972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ]
  %.1637 = phi i8 [ %.06362974, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06362974, %bb.jn ], [ %.06362974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910 ], [ %.06362974, %bb.dc ], [ %.06362974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06362974, %bb.dv ], [ %.06362974, %bb.em ], [ %.06362974, %bb.en ], [ %.06362974, %bb.eo ], [ %.06362974, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit958.thread ], [ %.06362974, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit962.thread ], [ %.06362974, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread ], [ %.06362974, %bb.lc ], [ %.06362974, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966 ], [ %.06362974, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread1622 ], [ %.06362974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06362974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06362974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06362974, %._crit_edge2944 ], [ %.06362974, %bb.hr ], [ %.06362974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ %.06362974, %bb.eq ], [ %.06362974, %bb.ih ], [ %.06362974, %bb.ib ], [ %.06362974, %bb.ik ], [ %.06362974, %bb.ip ], [ %.06362974, %bb.is ], [ %.06362974, %bb.iv ], [ %.06362974, %bb.im ], [ 1, %bb.iw ], [ %.06362974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015.thread ], [ %.06362974, %bb.ix ], [ %.06362974, %bb.js ], [ %.06362974, %bb.jr ], [ %.06362974, %bb.jq ], [ %.06362974, %bb.ep ], [ %.06362974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ], [ %.06362974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990 ], [ %.06362974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ]
  %.1633 = phi i1 [ %.06322976, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06322976, %bb.jn ], [ %.06322976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910 ], [ %.06322976, %bb.dc ], [ %.06322976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06322976, %bb.dv ], [ %.06322976, %bb.em ], [ %.06322976, %bb.en ], [ %.06322976, %bb.eo ], [ %.06322976, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit958.thread ], [ %.06322976, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit962.thread ], [ %.06322976, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread ], [ %.06322976, %bb.lc ], [ %.06322976, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966 ], [ %.06322976, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread1622 ], [ %.06322976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06322976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06322976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06322976, %._crit_edge2944 ], [ %.06322976, %bb.hr ], [ %.06322976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ %.06322976, %bb.eq ], [ %.06322976, %bb.ih ], [ %.06322976, %bb.ib ], [ %.06322976, %bb.ik ], [ %.06322976, %bb.ip ], [ %.06322976, %bb.is ], [ %.06322976, %bb.iv ], [ true, %bb.im ], [ %.06322976, %bb.iw ], [ %.06322976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015.thread ], [ %.06322976, %bb.ix ], [ %.06322976, %bb.js ], [ %.06322976, %bb.jr ], [ %.06322976, %bb.jq ], [ %.06322976, %bb.ep ], [ %.06322976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ], [ %.06322976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990 ], [ %.06322976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ]
  %.1629 = phi i1 [ %.06282977, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06282977, %bb.jn ], [ %.06282977, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910 ], [ %.06282977, %bb.dc ], [ %.06282977, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06282977, %bb.dv ], [ %.06282977, %bb.em ], [ %.06282977, %bb.en ], [ %.06282977, %bb.eo ], [ %.06282977, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit958.thread ], [ %.06282977, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit962.thread ], [ %.06282977, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread ], [ %.06282977, %bb.lc ], [ %.06282977, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966 ], [ %.06282977, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread1622 ], [ %.06282977, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06282977, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06282977, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06282977, %._crit_edge2944 ], [ %.06282977, %bb.hr ], [ %.06282977, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ %.06282977, %bb.eq ], [ %.06282977, %bb.ih ], [ %.06282977, %bb.ib ], [ true, %bb.ik ], [ %.06282977, %bb.ip ], [ %.06282977, %bb.is ], [ %.06282977, %bb.iv ], [ %.06282977, %bb.im ], [ %.06282977, %bb.iw ], [ %.06282977, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015.thread ], [ %.06282977, %bb.ix ], [ %.06282977, %bb.js ], [ %.06282977, %bb.jr ], [ %.06282977, %bb.jq ], [ %.06282977, %bb.ep ], [ %.06282977, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ], [ %.06282977, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990 ], [ %.06282977, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ]
  %.1625 = phi i1 [ %.06242978, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06242978, %bb.jn ], [ %.06242978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910 ], [ %.06242978, %bb.dc ], [ %.06242978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06242978, %bb.dv ], [ %.06242978, %bb.em ], [ %.06242978, %bb.en ], [ %.06242978, %bb.eo ], [ %.06242978, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit958.thread ], [ %.06242978, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit962.thread ], [ %.06242978, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread ], [ %.06242978, %bb.lc ], [ %.06242978, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966 ], [ %.06242978, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread1622 ], [ %.06242978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06242978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06242978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06242978, %._crit_edge2944 ], [ %.06242978, %bb.hr ], [ %.06242978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ %.06242978, %bb.eq ], [ %.06242978, %bb.ih ], [ true, %bb.ib ], [ %.06242978, %bb.ik ], [ %.06242978, %bb.ip ], [ %.06242978, %bb.is ], [ %.06242978, %bb.iv ], [ %.06242978, %bb.im ], [ %.06242978, %bb.iw ], [ %.06242978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015.thread ], [ %.06242978, %bb.ix ], [ %.06242978, %bb.js ], [ %.06242978, %bb.jr ], [ %.06242978, %bb.jq ], [ %.06242978, %bb.ep ], [ %.06242978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ], [ %.06242978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990 ], [ %.06242978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ]
  %.1621 = phi i1 [ %.06202979, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06202979, %bb.jn ], [ %.06202979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910 ], [ %.06202979, %bb.dc ], [ %.06202979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06202979, %bb.dv ], [ %.06202979, %bb.em ], [ %.06202979, %bb.en ], [ %.06202979, %bb.eo ], [ %.06202979, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit958.thread ], [ %.06202979, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit962.thread ], [ %.06202979, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread ], [ %.06202979, %bb.lc ], [ %.06202979, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966 ], [ %.06202979, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread1622 ], [ %.06202979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06202979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06202979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06202979, %._crit_edge2944 ], [ %.06202979, %bb.hr ], [ %.06202979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ false, %bb.eq ], [ %.06202979, %bb.ih ], [ %.06202979, %bb.ib ], [ %.06202979, %bb.ik ], [ %.06202979, %bb.ip ], [ %.06202979, %bb.is ], [ %.06202979, %bb.iv ], [ %.06202979, %bb.im ], [ %.06202979, %bb.iw ], [ %.06202979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015.thread ], [ %.06202979, %bb.ix ], [ %.06202979, %bb.js ], [ %.06202979, %bb.jr ], [ %.06202979, %bb.jq ], [ %.06202979, %bb.ep ], [ %.06202979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ], [ %.06202979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990 ], [ %.06202979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ]
  %.3617 = phi i32 [ %.06142980, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06142980, %bb.jn ], [ %.06142980, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910 ], [ %.06142980, %bb.dc ], [ %.06142980, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06142980, %bb.dv ], [ %.06142980, %bb.em ], [ %.06142980, %bb.en ], [ %.06142980, %bb.eo ], [ %.06142980, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit958.thread ], [ %.06142980, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit962.thread ], [ %.06142980, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread ], [ %.06142980, %bb.lc ], [ %.06142980, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966 ], [ %.06142980, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread1622 ], [ %.06142980, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06142980, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06142980, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06142980, %._crit_edge2944 ], [ %.06142980, %bb.hr ], [ %.06142980, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ %.06142980, %bb.eq ], [ %.06142980, %bb.ih ], [ %.06142980, %bb.ib ], [ %.06142980, %bb.ik ], [ %.06142980, %bb.ip ], [ %.06142980, %bb.is ], [ %.06142980, %bb.iv ], [ %.06142980, %bb.im ], [ %.06142980, %bb.iw ], [ %.06142980, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015.thread ], [ %.06142980, %bb.ix ], [ %.06142980, %bb.js ], [ %.06142980, %bb.jr ], [ %.06142980, %bb.jq ], [ %.06142980, %bb.ep ], [ 2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ]
  %.3611 = phi i32 [ %.06082982, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06082982, %bb.jn ], [ %.06082982, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910 ], [ %.06082982, %bb.dc ], [ %.06082982, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06082982, %bb.dv ], [ %.06082982, %bb.em ], [ %.06082982, %bb.en ], [ %.06082982, %bb.eo ], [ %.06082982, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit958.thread ], [ %.06082982, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit962.thread ], [ %.06082982, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread ], [ %.06082982, %bb.lc ], [ %.06082982, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966 ], [ %.06082982, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread1622 ], [ %.06082982, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06082982, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.2610, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06082982, %._crit_edge2944 ], [ %.06082982, %bb.hr ], [ %.06082982, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ %.06082982, %bb.eq ], [ %.06082982, %bb.ih ], [ %.06082982, %bb.ib ], [ %.06082982, %bb.ik ], [ %.06082982, %bb.ip ], [ %.06082982, %bb.is ], [ %.06082982, %bb.iv ], [ %.06082982, %bb.im ], [ %.06082982, %bb.iw ], [ %.06082982, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015.thread ], [ %.06082982, %bb.ix ], [ %.06082982, %bb.js ], [ %.06082982, %bb.jr ], [ %.06082982, %bb.jq ], [ %.06082982, %bb.ep ], [ %.06082982, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ], [ %.06082982, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990 ], [ %.06082982, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ]
  %.1605 = phi i1 [ %.06042984, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06042984, %bb.jn ], [ %.06042984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910 ], [ %.06042984, %bb.dc ], [ %.06042984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06042984, %bb.dv ], [ %.06042984, %bb.em ], [ %.06042984, %bb.en ], [ %.06042984, %bb.eo ], [ %.06042984, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit958.thread ], [ %.06042984, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit962.thread ], [ %.06042984, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread ], [ %.06042984, %bb.lc ], [ %.06042984, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread1622 ], [ %.06042984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06042984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06042984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06042984, %._crit_edge2944 ], [ %.06042984, %bb.hr ], [ %.06042984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ %.06042984, %bb.eq ], [ %.06042984, %bb.ih ], [ %.06042984, %bb.ib ], [ %.06042984, %bb.ik ], [ %.06042984, %bb.ip ], [ %.06042984, %bb.is ], [ %.06042984, %bb.iv ], [ %.06042984, %bb.im ], [ %.06042984, %bb.iw ], [ %.06042984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015.thread ], [ %.06042984, %bb.ix ], [ %.06042984, %bb.js ], [ %.06042984, %bb.jr ], [ %.06042984, %bb.jq ], [ %.06042984, %bb.ep ], [ %.06042984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ], [ %.06042984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990 ], [ %.06042984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ]
  %.3601 = phi i32 [ %.05982985, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.05982985, %bb.jn ], [ %.05982985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910 ], [ %.05982985, %bb.dc ], [ %.05982985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.05982985, %bb.dv ], [ %.05982985, %bb.em ], [ %.05982985, %bb.en ], [ %.05982985, %bb.eo ], [ %.05982985, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit958.thread ], [ %.05982985, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit962.thread ], [ %.05982985, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread ], [ %.05982985, %bb.lc ], [ %.05982985, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966 ], [ %.05982985, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread1622 ], [ %.05982985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.2600, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.05982985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.05982985, %._crit_edge2944 ], [ %.05982985, %bb.hr ], [ %.05982985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ %.05982985, %bb.eq ], [ %.05982985, %bb.ih ], [ %.05982985, %bb.ib ], [ %.05982985, %bb.ik ], [ %.05982985, %bb.ip ], [ %.05982985, %bb.is ], [ %.05982985, %bb.iv ], [ %.05982985, %bb.im ], [ %.05982985, %bb.iw ], [ %.05982985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015.thread ], [ %.05982985, %bb.ix ], [ %.05982985, %bb.js ], [ %.05982985, %bb.jr ], [ %.05982985, %bb.jq ], [ %.05982985, %bb.ep ], [ %.05982985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ], [ %.05982985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990 ], [ %.05982985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ]
  %.3595 = phi i32 [ %.05922987, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.05922987, %bb.jn ], [ %.05922987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910 ], [ %.05922987, %bb.dc ], [ %.05922987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.05922987, %bb.dv ], [ %.05922987, %bb.em ], [ %.05922987, %bb.en ], [ %.05922987, %bb.eo ], [ %.05922987, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit958.thread ], [ %.05922987, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit962.thread ], [ %.05922987, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread ], [ %.05922987, %bb.lc ], [ %.05922987, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966 ], [ %.05922987, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread1622 ], [ %.2594, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.05922987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.05922987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.05922987, %._crit_edge2944 ], [ %.05922987, %bb.hr ], [ %.05922987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ %.05922987, %bb.eq ], [ %.05922987, %bb.ih ], [ %.05922987, %bb.ib ], [ %.05922987, %bb.ik ], [ %.05922987, %bb.ip ], [ %.05922987, %bb.is ], [ %.05922987, %bb.iv ], [ %.05922987, %bb.im ], [ %.05922987, %bb.iw ], [ %.05922987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015.thread ], [ %.05922987, %bb.ix ], [ %.05922987, %bb.js ], [ %.05922987, %bb.jr ], [ %.05922987, %bb.jq ], [ %.05922987, %bb.ep ], [ %.05922987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ], [ %.05922987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990 ], [ %.05922987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ]
  %.1589 = phi i1 [ %.05882989, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.05882989, %bb.jn ], [ %.05882989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910 ], [ %.05882989, %bb.dc ], [ %.05882989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.05882989, %bb.dv ], [ %.05882989, %bb.em ], [ %.05882989, %bb.en ], [ %.05882989, %bb.eo ], [ %.05882989, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit958.thread ], [ %.05882989, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit962.thread ], [ %.05882989, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread ], [ %.05882989, %bb.lc ], [ %.05882989, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966 ], [ %.05882989, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread1622 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.05882989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.05882989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.05882989, %._crit_edge2944 ], [ %.05882989, %bb.hr ], [ %.05882989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ %.05882989, %bb.eq ], [ %.05882989, %bb.ih ], [ %.05882989, %bb.ib ], [ %.05882989, %bb.ik ], [ %.05882989, %bb.ip ], [ %.05882989, %bb.is ], [ %.05882989, %bb.iv ], [ %.05882989, %bb.im ], [ %.05882989, %bb.iw ], [ %.05882989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015.thread ], [ %.05882989, %bb.ix ], [ %.05882989, %bb.js ], [ %.05882989, %bb.jr ], [ %.05882989, %bb.jq ], [ %.05882989, %bb.ep ], [ %.05882989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ], [ %.05882989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990 ], [ %.05882989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ]
  %.1585 = phi i1 [ %.05842990, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.05842990, %bb.jn ], [ %.05842990, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910 ], [ %.05842990, %bb.dc ], [ %.05842990, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.05842990, %bb.dv ], [ %.05842990, %bb.em ], [ %.05842990, %bb.en ], [ %.05842990, %bb.eo ], [ %.05842990, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit958.thread ], [ %.05842990, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit962.thread ], [ %.05842990, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread ], [ %.05842990, %bb.lc ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966 ], [ %.05842990, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread1622 ], [ %.05842990, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.05842990, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.05842990, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.05842990, %._crit_edge2944 ], [ %.05842990, %bb.hr ], [ %.05842990, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ %.05842990, %bb.eq ], [ %.05842990, %bb.ih ], [ %.05842990, %bb.ib ], [ %.05842990, %bb.ik ], [ %.05842990, %bb.ip ], [ %.05842990, %bb.is ], [ %.05842990, %bb.iv ], [ %.05842990, %bb.im ], [ %.05842990, %bb.iw ], [ %.05842990, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015.thread ], [ %.05842990, %bb.ix ], [ %.05842990, %bb.js ], [ %.05842990, %bb.jr ], [ %.05842990, %bb.jq ], [ %.05842990, %bb.ep ], [ %.05842990, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ], [ %.05842990, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990 ], [ %.05842990, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ]
  %.1580 = phi i8 [ 1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.05792991, %bb.jn ], [ %.05792991, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910 ], [ %.05792991, %bb.dc ], [ %.05792991, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.05792991, %bb.dv ], [ %.05792991, %bb.em ], [ %.05792991, %bb.en ], [ %.05792991, %bb.eo ], [ %.05792991, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit958.thread ], [ %.05792991, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit962.thread ], [ %.05792991, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread ], [ %.05792991, %bb.lc ], [ %.05792991, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966 ], [ %.05792991, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread1622 ], [ %.05792991, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.05792991, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.05792991, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.05792991, %._crit_edge2944 ], [ %.05792991, %bb.hr ], [ %.05792991, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ %.05792991, %bb.eq ], [ %.05792991, %bb.ih ], [ %.05792991, %bb.ib ], [ %.05792991, %bb.ik ], [ %.05792991, %bb.ip ], [ %.05792991, %bb.is ], [ %.05792991, %bb.iv ], [ %.05792991, %bb.im ], [ %.05792991, %bb.iw ], [ %.05792991, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015.thread ], [ %.05792991, %bb.ix ], [ %.05792991, %bb.js ], [ %.05792991, %bb.jr ], [ %.05792991, %bb.jq ], [ %.05792991, %bb.ep ], [ %.05792991, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ], [ %.05792991, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990 ], [ %.05792991, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ]
  %.14 = phi i32 [ %.3, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.04692993, %bb.jn ], [ %.04692993, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910 ], [ %.04692993, %bb.dc ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.04692993, %bb.dv ], [ %.04692993, %bb.em ], [ %.04692993, %bb.en ], [ %.04692993, %bb.eo ], [ %.04692993, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit958.thread ], [ %.04692993, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit962.thread ], [ %.04692993, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit964.thread ], [ %.04692993, %bb.lc ], [ %.04692993, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966 ], [ %.04692993, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit966.thread1622 ], [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.04692993, %._crit_edge2944 ], [ %.04692993, %bb.hr ], [ %.04692993, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ %.04692993, %bb.eq ], [ %.04692993, %bb.ih ], [ %.04692993, %bb.ib ], [ %.04692993, %bb.ik ], [ %.04692993, %bb.ip ], [ %.04692993, %bb.is ], [ %.04692993, %bb.iv ], [ %.04692993, %bb.im ], [ %.04692993, %bb.iw ], [ %.04692993, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015.thread ], [ %.04692993, %bb.ix ], [ %.04692993, %bb.js ], [ %.04692993, %bb.jr ], [ %.04692993, %bb.jq ], [ %.04692993, %bb.ep ], [ %.04692993, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ], [ %.04692993, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990 ], [ %.04692993, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ]
  br label %bb.ld

bb.ld:                                            ; preds = %.invoke, %bb.ko, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015, %.thread1637, %bb.kt, %bb.dq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %._crit_edge
  %.10677 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %spec.store.select, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ 1, %bb.ko ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ 1, %.thread1637 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015 ], [ 1, %._crit_edge ], [ 1, %bb.dq ], [ 1, %.invoke ], [ 1, %bb.kt ]
  %.2666 = phi i32 [ %.1665, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %i.dy, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06642946, %bb.ko ], [ %i.jz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %i.nz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %i.ov, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %i.pt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %i.qr, %.thread1637 ], [ %i.uf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015 ], [ %.06642946, %._crit_edge ], [ %i.ib, %bb.dq ], [ %.06642946, %.invoke ], [ %.06642946, %bb.kt ]
  %.2662 = phi i8 [ %.1661, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06602947, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06602947, %bb.ko ], [ %.06602947, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06602947, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06602947, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06602947, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06602947, %.thread1637 ], [ %.06602947, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015 ], [ %.06602947, %._crit_edge ], [ %.06602947, %bb.dq ], [ %.06602947, %.invoke ], [ %.06602947, %bb.kt ] ; 3 uses
  %.2658 = phi i8 [ %.1657, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06562949, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06562949, %bb.ko ], [ %.06562949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06562949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06562949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06562949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06562949, %.thread1637 ], [ %.06562949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015 ], [ %.06562949, %._crit_edge ], [ %.06562949, %bb.dq ], [ %.06562949, %.invoke ], [ %.06562949, %bb.kt ] ; 3 uses
  %.6654 = phi i1 [ %.5653, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.16492037, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06482951, %bb.ko ], [ %.06482951, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06482951, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06482951, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06482951, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06482951, %.thread1637 ], [ %.06482951, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015 ], [ %.06482951, %._crit_edge ], [ %.06482951, %bb.dq ], [ %.06482951, %.invoke ], [ %.06482951, %bb.kt ] ; 2 uses
  %.2646 = phi double [ %.1645, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06442971, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06442971, %bb.ko ], [ %.06442971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06442971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06442971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06442971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06442971, %.thread1637 ], [ %.06442971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015 ], [ %.06442971, %._crit_edge ], [ %.06442971, %bb.dq ], [ %.06442971, %.invoke ], [ %.06442971, %bb.kt ] ; 2 uses
  %.2642 = phi i8 [ %.1641, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06402972, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06402972, %bb.ko ], [ %.06402972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06402972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06402972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06402972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06402972, %.thread1637 ], [ %.06402972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015 ], [ %.06402972, %._crit_edge ], [ %.06402972, %bb.dq ], [ %.06402972, %.invoke ], [ %.06402972, %bb.kt ] ; 3 uses
  %.2638 = phi i8 [ %.1637, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06362974, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06362974, %bb.ko ], [ %.06362974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06362974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06362974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06362974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06362974, %.thread1637 ], [ %.06362974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015 ], [ %.06362974, %._crit_edge ], [ %.06362974, %bb.dq ], [ %.06362974, %.invoke ], [ %.06362974, %bb.kt ] ; 3 uses
  %.2634 = phi i1 [ %.1633, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06322976, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06322976, %bb.ko ], [ %.06322976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06322976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06322976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06322976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06322976, %.thread1637 ], [ %.06322976, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015 ], [ %.06322976, %._crit_edge ], [ %.06322976, %bb.dq ], [ %.06322976, %.invoke ], [ %.06322976, %bb.kt ] ; 2 uses
  %.2630 = phi i1 [ %.1629, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06282977, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06282977, %bb.ko ], [ %.06282977, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06282977, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06282977, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06282977, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06282977, %.thread1637 ], [ %.06282977, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015 ], [ %.06282977, %._crit_edge ], [ %.06282977, %bb.dq ], [ %.06282977, %.invoke ], [ %.06282977, %bb.kt ] ; 2 uses
  %.2626 = phi i1 [ %.1625, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06242978, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06242978, %bb.ko ], [ %.06242978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06242978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06242978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06242978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06242978, %.thread1637 ], [ %.06242978, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015 ], [ %.06242978, %._crit_edge ], [ %.06242978, %bb.dq ], [ %.06242978, %.invoke ], [ %.06242978, %bb.kt ] ; 2 uses
  %.2622 = phi i1 [ %.1621, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06202979, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06202979, %bb.ko ], [ %.06202979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06202979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06202979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06202979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06202979, %.thread1637 ], [ %.06202979, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015 ], [ %.06202979, %._crit_edge ], [ %.06202979, %bb.dq ], [ %.06202979, %.invoke ], [ %.06202979, %bb.kt ] ; 2 uses
  %.4618 = phi i32 [ %.3617, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06142980, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06142980, %bb.ko ], [ %.06142980, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06142980, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06142980, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06142980, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06142980, %.thread1637 ], [ %.06142980, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015 ], [ %.06142980, %._crit_edge ], [ %.06142980, %bb.dq ], [ %.06142980, %.invoke ], [ %.06142980, %bb.kt ] ; 4 uses
  %.4612 = phi i32 [ %.3611, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06082982, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06082982, %bb.ko ], [ %.06082982, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06082982, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06082982, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.2610, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06082982, %.thread1637 ], [ %.06082982, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015 ], [ %.06082982, %._crit_edge ], [ %.06082982, %bb.dq ], [ %.06082982, %.invoke ], [ %.06082982, %bb.kt ] ; 2 uses
  %.2606 = phi i1 [ %.1605, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.06042984, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.06042984, %bb.ko ], [ %.06042984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.06042984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.06042984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.06042984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.06042984, %.thread1637 ], [ %.06042984, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015 ], [ %.06042984, %._crit_edge ], [ %.06042984, %bb.dq ], [ %.06042984, %.invoke ], [ %.06042984, %bb.kt ] ; 2 uses
  %.4602 = phi i32 [ %.3601, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.05982985, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.05982985, %bb.ko ], [ %.05982985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.05982985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.2600, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.05982985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.05982985, %.thread1637 ], [ %.05982985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015 ], [ %.05982985, %._crit_edge ], [ %.05982985, %bb.dq ], [ %.05982985, %.invoke ], [ %.05982985, %bb.kt ] ; 2 uses
  %.4596 = phi i32 [ %.3595, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.05922987, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.05922987, %bb.ko ], [ %.05922987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.2594, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.05922987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.05922987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.05922987, %.thread1637 ], [ %.05922987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015 ], [ %.05922987, %._crit_edge ], [ %.05922987, %bb.dq ], [ %.05922987, %.invoke ], [ %.05922987, %bb.kt ] ; 3 uses
  %.2590 = phi i1 [ %.1589, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.05882989, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.05882989, %bb.ko ], [ %.05882989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.05882989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.05882989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.05882989, %.thread1637 ], [ %.05882989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015 ], [ %.05882989, %._crit_edge ], [ %.05882989, %bb.dq ], [ %.05882989, %.invoke ], [ %.05882989, %bb.kt ] ; 2 uses
  %.2586 = phi i1 [ %.1585, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.05842990, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.05842990, %bb.ko ], [ %.05842990, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.05842990, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.05842990, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.05842990, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.05842990, %.thread1637 ], [ %.05842990, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015 ], [ %.05842990, %._crit_edge ], [ %.05842990, %bb.dq ], [ %.05842990, %.invoke ], [ %.05842990, %bb.kt ] ; 2 uses
  %.2581 = phi i8 [ %.1580, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ 1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ %.05792991, %bb.ko ], [ %.05792991, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.05792991, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.05792991, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.05792991, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %.05792991, %.thread1637 ], [ %.05792991, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015 ], [ %.05792991, %._crit_edge ], [ %.05792991, %bb.dq ], [ %.05792991, %.invoke ], [ %.05792991, %bb.kt ] ; 4 uses
  %.15 = phi i32 [ %.14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.3, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit897 ], [ 0, %bb.ko ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit936 ], [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972 ], [ %.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit984 ], [ %i.si, %.thread1637 ], [ %i.uv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1015 ], [ 0, %._crit_edge ], [ %i.jl, %bb.dq ], [ %i.xd, %.invoke ], [ 0, %bb.kt ] ; 4 uses
  %i.xe = load ptr, ptr %23, align 8, !tbaa !63   ; 2 uses
  %i.xf = icmp eq ptr %i.xe, %i.br
  br i1 %i.xf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1024, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1022

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1022: ; preds = %bb.ld
  %i.xg = load i64, ptr %i.br, align 8, !tbaa !64
  %i.xh = add i64 %i.xg, 1
  call void @_ZdlPvm(ptr noundef %i.xe, i64 noundef %i.xh) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1024

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1024: ; preds = %bb.ld, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1022
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  %cond13 = icmp eq i32 %.10677, 0
  br i1 %cond13, label %bb.l, label %.loopexit1968

.loopexit1962:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit913, %bb.gn, %bb.gq, %bb.gt, %bb.hn, %bb.dt, %bb.du, %bb.kp, %bb.kf, %bb.jl, %bb.ii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1006, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit981, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit975, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit969, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit929, %bb.db, %bb.aa
  %.merged844 = phi { ptr, i32 } [ %.pn768, %bb.db ], [ %i.et, %bb.aa ], [ %i.wp, %bb.kp ], [ %i.rb, %bb.gn ], [ %.pn758, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit929 ], [ %.pn756, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit969 ], [ %.pn754, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit975 ], [ %.pn752, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit981 ], [ %.pn762, %bb.du ], [ %.pn740, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1006 ], [ %i.tw, %bb.ii ], [ %.pn738, %bb.jl ], [ %.pn732, %bb.kf ], [ %i.jo, %bb.dt ], [ %.pn747.pn.pn, %bb.hn ], [ %i.rn, %bb.gt ], [ %i.rh, %bb.gq ], [ %.pn760, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit913 ] ; 2 uses
  %i.xi = load ptr, ptr %23, align 8, !tbaa !63   ; 2 uses
  %i.xj = icmp eq ptr %i.xi, %i.br
  br i1 %i.xj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1027, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1025

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1025: ; preds = %.loopexit1962
  %i.xk = load i64, ptr %i.br, align 8, !tbaa !64
  %i.xl = add i64 %i.xk, 1
  call void @_ZdlPvm(ptr noundef %i.xi, i64 noundef %i.xl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1027

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1027: ; preds = %.loopexit1962, %.loopexit1956, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1025
  %.merged843 = phi { ptr, i32 } [ %.merged844, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1025 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit1956 ], [ %.merged844, %.loopexit1962 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  br label %.body1032

.thread1642:                                      ; preds = %bb.l
  %.pre3124 = load i64, ptr %i.bi, align 8
  %.pre3123 = load i64, ptr %i.bg, align 8, !tbaa !67
  %i.xm = icmp eq i64 %.pre3123, 0
  %i.xn = icmp eq i64 %.pre3124, 0
  %or.cond1938 = select i1 %i.xm, i1 true, i1 %i.xn
  br i1 %or.cond1938, label %bb.lg, label %bb.le

bb.le:                                            ; preds = %.thread1642
  %i.xo = getelementptr inbounds nuw i8, ptr %3, i64 816 ; 2 uses
  %i.xp = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIA39_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.xo, ptr noundef nonnull align 1 dereferenceable(39) @.str.124)
          to label %.invoke3542 unwind label %bb.lf ; 0 uses

.invoke3542:                                      ; preds = %bb.le, %bb.ls, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i1058
  %i.xq = phi ptr [ %i.aas, %bb.ls ], [ %i.aas, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i1058 ], [ %i.xo, %bb.le ]
  %i.xr = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsEPFRSoS4_E(ptr noundef nonnull align 8 dereferenceable(408) %i.xq)
          to label %.loopexit1968 unwind label %bb.lf ; 0 uses

bb.lf:                                            ; preds = %.invoke3542, %.noexc1061, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i1046, %.noexc1030, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL2EElsIA80_cEERS3_RKT_.exit, %bb.le
  %i.xs = landingpad { ptr, i32 }
          cleanup
  br label %.body1032

bb.lg:                                            ; preds = %.thread1642
  %i.xt = trunc nuw i8 %.2658 to i1               ; 3 uses
  br i1 %i.xt, label %bb.lh, label %bb.lj

bb.lh:                                            ; preds = %bb.lg
  %i.xu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !62
  %i.xw = load ptr, ptr %9, align 8, !tbaa !60
  %i.xx = ptrtoint ptr %i.xv to i64
  %i.xy = ptrtoint ptr %i.xw to i64
  %i.xz = sub i64 %i.xx, %i.xy
  %i.ya = icmp ne i64 %i.xz, 32
  %i.yb = trunc nuw i8 %.2581 to i1
  %or.cond = select i1 %i.ya, i1 true, i1 %i.yb
  br i1 %or.cond, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.yc = getelementptr inbounds nuw i8, ptr %14, i64 9
  store i8 1, ptr %i.yc, align 1, !tbaa !86
  store i8 1, ptr %14, align 8, !tbaa !87
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.lh, %bb.lg
  %.4583 = phi i8 [ %.2581, %bb.lh ], [ 1, %bb.li ], [ %.2581, %bb.lg ]
  %i.yd = getelementptr inbounds nuw i8, ptr %14, i64 9 ; 3 uses
  %i.ye = load i8, ptr %i.yd, align 1, !tbaa !86, !range !90, !noundef !91
  %i.yf = trunc nuw i8 %i.ye to i1
  %i.yg = load i64, ptr %i.ay, align 8
  %i.yh = icmp eq i64 %i.yg, 0
  %or.cond1941 = select i1 %i.yf, i1 %i.yh, i1 false
  br i1 %or.cond1941, label %bb.lk, label %bb.lz

bb.lk:                                            ; preds = %bb.lj
  br i1 %.6654, label %bb.ll, label %bb.ls

bb.ll:                                            ; preds = %bb.lk
  store i8 0, ptr %i.yd, align 1, !tbaa !86
  %i.yi = getelementptr inbounds nuw i8, ptr %3, i64 408 ; 3 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %3, i64 800 ; 2 uses
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !50
  %.not.i.i = icmp eq ptr %i.yk, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL2EElsIA80_cEERS3_RKT_.exit, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.ll
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.yl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.yl, ptr %6, align 8, !tbaa !66
  %i.ym = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ym, align 8, !tbaa !67
  store i8 0, ptr %i.yl, align 8, !tbaa !64
  %i.yn = getelementptr inbounds nuw i8, ptr %3, i64 504 ; 3 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %3, i64 512 ; 2 uses
  %i.yp = load i64, ptr %i.yo, align 8, !tbaa !67
  %i.yq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.yn, i64 noundef 0, i64 noundef %i.yp, ptr noundef nonnull %i.yl, i64 noundef 0)
          to label %.noexc8.i.i unwind label %bb.lq ; 0 uses

.noexc8.i.i:                                      ; preds = %._crit_edge.i.i.i.i
  %i.yr = getelementptr inbounds nuw i8, ptr %3, i64 432
  %i.ys = getelementptr inbounds nuw i8, ptr %3, i64 496
  %i.yt = load i32, ptr %i.ys, align 8, !tbaa !92
  %i.yu = and i32 %i.yt, 3
  %.not.i.i.i.i.i = icmp eq i32 %i.yu, 0
  %i.yv = load i64, ptr %i.yo, align 8
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.yv
  %i.yw = load ptr, ptr %i.yn, align 8, !tbaa !63
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.yr, ptr noundef %i.yw, i64 noundef 0, i64 noundef %.0.i.i.i.i.i)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit.i.i unwind label %bb.lq

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit.i.i: ; preds = %.noexc8.i.i
  %i.yx = load ptr, ptr %6, align 8, !tbaa !63    ; 2 uses
  %i.yy = icmp eq ptr %i.yx, %i.yl
  br i1 %i.yy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit.i.i
  %i.yz = load i64, ptr %i.yl, align 8, !tbaa !64
  %i.za = add i64 %i.yz, 1
  call void @_ZdlPvm(ptr noundef %i.yx, i64 noundef %i.za) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.zb = load ptr, ptr %i.yi, align 8, !tbaa !56
  %i.zc = getelementptr i8, ptr %i.zb, i64 -24
  %i.zd = load i64, ptr %i.zc, align 8
  %i.ze = getelementptr inbounds i8, ptr %i.yi, i64 %i.zd
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ze, i32 noundef 0)
          to label %.noexc1030 unwind label %bb.lf

.noexc1030:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.zf = getelementptr inbounds nuw i8, ptr %3, i64 424
  %i.zg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zf, ptr noundef nonnull @.str.125, i64 noundef 79)
          to label %.noexc1031 unwind label %bb.lf ; 0 uses

.noexc1031:                                       ; preds = %.noexc1030
  %i.zh = load ptr, ptr %i.yj, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.zi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.zi, ptr %7, align 8, !tbaa !66, !alias.scope !233
  %i.zj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.zj, align 8, !tbaa !67, !alias.scope !233
  store i8 0, ptr %i.zi, align 8, !tbaa !64, !alias.scope !233
  %i.zk = getelementptr inbounds nuw i8, ptr %3, i64 472
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !93, !noalias !233 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.zl, null
  %i.zm = getelementptr inbounds nuw i8, ptr %3, i64 456
  %i.zn = load ptr, ptr %i.zm, align 8, !noalias !233 ; 2 uses
  %i.zo = icmp ugt ptr %i.zl, %i.zn
  %.08.i.i.i.i.i = select i1 %i.zo, ptr %i.zl, ptr %i.zn ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.lo, label %bb.lm

bb.lm:                                            ; preds = %.noexc1031
  %i.zp = getelementptr inbounds nuw i8, ptr %3, i64 464
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !94, !noalias !233 ; 2 uses
  %i.zr = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.zs = ptrtoint ptr %i.zq to i64
  %i.zt = sub i64 %i.zr, %i.zs
  %i.zu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.zq, i64 noundef %i.zt)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i unwind label %bb.ln ; 0 uses

bb.ln:                                            ; preds = %bb.lo, %bb.lm
  %i.zv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zw = load ptr, ptr %7, align 8, !tbaa !63, !alias.scope !233 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL13main_projinfoP6pj_ctxiPPcRN12_GLOBAL__N_18StreamerE:bb.a
  %i.bbu = add nsw i32 %i.bbl, -1
  store i32 %i.bbu, ptr %i.bbi, align 8, !tbaa !102
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1344

bb.ux:                                            ; preds = %bb.uv
  %i.bbv = atomicrmw volatile add ptr %i.bbi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1344

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1344: ; preds = %bb.ux, %bb.uw
  %.0.i.i.i.i1345 = phi i32 [ %i.bbl, %bb.uw ], [ %i.bbv, %bb.ux ]
  %i.bbw = icmp eq i32 %.0.i.i.i.i1345, 1
  br i1 %i.bbw, label %bb.uy, label %bb.uz, !prof !103

bb.uy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1344
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bbh) #31
  br label %bb.uz

bb.uz:                                            ; preds = %bb.uy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1344, %bb.uu, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1341
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #31
  %.pre3141 = load i8, ptr %i.apl, align 16, !tbaa !118, !range !90
  %i.bbx = trunc nuw i8 %.pre3141 to i1
  store i8 0, ptr %i.apl, align 16, !tbaa !118
  br i1 %i.bbx, label %bb.va, label %_ZNSt14_Optional_baseISt10shared_ptrIN5osgeo4proj8metadata6ExtentEELb0ELb0EED2Ev.exit

bb.va:                                            ; preds = %bb.uz
  %i.bby = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.bbz = load ptr, ptr %i.bby, align 8, !tbaa !98 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bbz, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt10shared_ptrIN5osgeo4proj8metadata6ExtentEELb0ELb0EED2Ev.exit, label %bb.vb

bb.vb:                                            ; preds = %bb.va
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbz, i64 8 ; 4 uses
  %i.bcb = load atomic i64, ptr %i.bca acquire, align 8 ; 2 uses
  %i.bcc = icmp eq i64 %i.bcb, 4294967297
  %i.bcd = trunc i64 %i.bcb to i32                ; 2 uses
  br i1 %i.bcc, label %bb.vc, label %bb.vd

bb.vc:                                            ; preds = %bb.vb
  store i32 0, ptr %i.bca, align 8, !tbaa !100
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bbz, i64 12
  store i32 0, ptr %i.bce, align 4, !tbaa !101
  %i.bcf = load ptr, ptr %i.bbz, align 8, !tbaa !56
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcf, i64 16
  %i.bch = load ptr, ptr %i.bcg, align 8
  call void %i.bch(ptr noundef nonnull align 8 dereferenceable(16) %i.bbz) #31, !inline_history !226
  %i.bci = load ptr, ptr %i.bbz, align 8, !tbaa !56
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bci, i64 24
  %i.bck = load ptr, ptr %i.bcj, align 8
  call void %i.bck(ptr noundef nonnull align 8 dereferenceable(16) %i.bbz) #31, !inline_history !226
  br label %_ZNSt14_Optional_baseISt10shared_ptrIN5osgeo4proj8metadata6ExtentEELb0ELb0EED2Ev.exit

bb.vd:                                            ; preds = %bb.vb
  %i.bcl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bcl, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.vf, label %bb.ve

bb.ve:                                            ; preds = %bb.vd
  %i.bcm = add nsw i32 %i.bcd, -1
  store i32 %i.bcm, ptr %i.bca, align 8, !tbaa !102
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.vf:                                            ; preds = %bb.vd
  %i.bcn = atomicrmw volatile add ptr %i.bca, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.vf, %bb.ve
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bcd, %bb.ve ], [ %i.bcn, %bb.vf ]
  %i.bco = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.bco, label %bb.vg, label %_ZNSt14_Optional_baseISt10shared_ptrIN5osgeo4proj8metadata6ExtentEELb0ELb0EED2Ev.exit, !prof !103

bb.vg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bbz) #31
  br label %_ZNSt14_Optional_baseISt10shared_ptrIN5osgeo4proj8metadata6ExtentEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt10shared_ptrIN5osgeo4proj8metadata6ExtentEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.uz, %bb.va, %bb.vc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.vg
  %.253481 = phi i32 [ %.24, %bb.vg ], [ %.24, %bb.uz ], [ %.24, %bb.va ], [ %.24, %bb.vc ], [ %.24, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i ], [ 1, %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %.186853480 = phi i1 [ %.not19481985, %bb.vg ], [ %.not19481985, %bb.uz ], [ %.not19481985, %bb.va ], [ %.not19481985, %bb.vc ], [ %.not19481985, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i ], [ false, %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #31
  %i.bcp = load ptr, ptr %60, align 8, !tbaa !63  ; 2 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.bcr = icmp eq ptr %i.bcp, %i.bcq
  br i1 %i.bcr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1346: ; preds = %_ZNSt14_Optional_baseISt10shared_ptrIN5osgeo4proj8metadata6ExtentEELb0ELb0EED2Ev.exit
  %i.bcs = load i64, ptr %i.bcq, align 8, !tbaa !64
  %i.bct = add i64 %i.bcs, 1
  call void @_ZdlPvm(ptr noundef %i.bcp, i64 noundef %i.bct) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348: ; preds = %_ZNSt14_Optional_baseISt10shared_ptrIN5osgeo4proj8metadata6ExtentEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1346
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #31
  br label %.thread1864

.thread1864:                                      ; preds = %bb.qm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348
  %i.bcu = phi ptr [ %i.aol, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348 ], [ %i.ahw, %bb.qm ]
  %.19686 = phi i1 [ %.186853480, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348 ], [ false, %bb.qm ]
  %.26 = phi i32 [ %.253481, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348 ], [ %i.aoh, %bb.qm ] ; 2 uses
  %i.bcv = load ptr, ptr %59, align 8, !tbaa !60  ; 3 uses
  %i.bcw = load ptr, ptr %i.bcu, align 8, !tbaa !62 ; 2 uses
  %.not4.i.i.i1349 = icmp eq ptr %i.bcv, %i.bcw
  br i1 %.not4.i.i.i1349, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1357, label %.lr.ph.i.i.i1350

.lr.ph.i.i.i1350:                                 ; preds = %.thread1864, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1353
  %.05.i.i.i1351 = phi ptr [ %i.bdc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1353 ], [ %i.bcv, %.thread1864 ] ; 3 uses
  %i.bcx = load ptr, ptr %.05.i.i.i1351, align 8, !tbaa !63 ; 2 uses
  %i.bcy = getelementptr inbounds nuw i8, ptr %.05.i.i.i1351, i64 16 ; 2 uses
  %i.bcz = icmp eq ptr %i.bcx, %i.bcy
  br i1 %i.bcz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1353, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1352: ; preds = %.lr.ph.i.i.i1350
  %i.bda = load i64, ptr %i.bcy, align 8, !tbaa !64
  %i.bdb = add i64 %i.bda, 1
  call void @_ZdlPvm(ptr noundef %i.bcx, i64 noundef %i.bdb) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1353

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1353: ; preds = %.lr.ph.i.i.i1350, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1352
  %i.bdc = getelementptr inbounds nuw i8, ptr %.05.i.i.i1351, i64 32 ; 2 uses
  %.not.i.i.i1354 = icmp eq ptr %i.bdc, %i.bcw
  br i1 %.not.i.i.i1354, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1355, label %.lr.ph.i.i.i1350, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1355: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1353
  %.pr.i1356 = load ptr, ptr %59, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1357

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1357: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1355, %.thread1864
  %i.bdd = phi ptr [ %.pr.i1356, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1355 ], [ %i.bcv, %.thread1864 ] ; 3 uses
  %.not.i.i1.i1358 = icmp eq ptr %i.bdd, null
  br i1 %.not.i.i1.i1358, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1361, label %bb.vh

bb.vh:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1357
  %i.bde = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.bdf = load ptr, ptr %i.bde, align 8, !tbaa !61
  %i.bdg = ptrtoint ptr %i.bdf to i64
  %i.bdh = ptrtoint ptr %i.bdd to i64
  %i.bdi = sub i64 %i.bdg, %i.bdh
  call void @_ZdlPvm(ptr noundef nonnull %i.bdd, i64 noundef %i.bdi) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1361

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1361: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1357, %bb.vh
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #31
  %i.bdj = load ptr, ptr %i.ahe, align 8, !tbaa !111
  invoke void @_ZNSt8_Rb_treeIN5osgeo4proj2io16AuthorityFactory10ObjectTypeES4_St9_IdentityIS4_ESt4lessIS4_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %58, ptr noundef %i.bdj)
          to label %_ZNSt3setIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESt4lessIS4_ESaIS4_EED2Ev.exit unwind label %bb.vi

bb.vi:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1361
  %i.bdk = landingpad { ptr, i32 }
          catch ptr null
  %i.bdl = extractvalue { ptr, i32 } %i.bdk, 0
  call void @__clang_call_terminate(ptr %i.bdl) #32
  unreachable

_ZNSt3setIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESt4lessIS4_ESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1361
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #31
  br i1 %.19686, label %bb.vo, label %bb.abq

bb.vj:                                            ; preds = %bb.ui, %bb.uq, %bb.up, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1282
  %.merged841 = phi { ptr, i32 } [ %i.are, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1282 ], [ %.pn779.pn.pn.pn.pn, %bb.ui ], [ %i.bas, %bb.up ], [ %.pn785, %bb.uq ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %64) #31
  br label %bb.vk

bb.vk:                                            ; preds = %bb.vj, %bb.rh, %bb.ri, %bb.rm
  %.merged840 = phi { ptr, i32 } [ %.merged841, %bb.vj ], [ %i.ard, %bb.rm ], [ %i.aqo, %bb.ri ], [ %i.aqo, %bb.rh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #31
  call void @_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %63) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #31
  call void @_ZNSt14_Optional_baseISt10shared_ptrIN5osgeo4proj8metadata6ExtentEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %61) #31
  br label %bb.vl

bb.vl:                                            ; preds = %bb.vk, %bb.rb
  %.merged838 = phi { ptr, i32 } [ %.merged840, %bb.vk ], [ %i.app, %bb.rb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #31
  %i.bdm = load ptr, ptr %60, align 8, !tbaa !63  ; 2 uses
  %i.bdn = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.bdo = icmp eq ptr %i.bdm, %i.bdn
  br i1 %i.bdo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1364, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1362

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1362: ; preds = %bb.vl
  %i.bdp = load i64, ptr %i.bdn, align 8, !tbaa !64
  %i.bdq = add i64 %i.bdp, 1
  call void @_ZdlPvm(ptr noundef %i.bdm, i64 noundef %i.bdq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1364

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1364: ; preds = %bb.vl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1362, %bb.ra
  %.merged837 = phi { ptr, i32 } [ %i.apo, %bb.ra ], [ %.merged838, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1362 ], [ %.merged838, %bb.vl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #31
  br label %bb.vm

bb.vm:                                            ; preds = %bb.on, %bb.oo, %bb.op, %bb.ov, %bb.pf, %bb.pg, %bb.pm, %bb.ps, %bb.pw, %bb.qa, %bb.qe, %bb.qi, %bb.qn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1364
  %.merged836 = phi { ptr, i32 } [ %.merged837, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1364 ], [ %i.aka, %bb.op ], [ %i.ajz, %bb.oo ], [ %i.ajy, %bb.on ], [ %i.akt, %bb.ov ], [ %i.ame, %bb.pg ], [ %i.amd, %bb.pf ], [ %i.amx, %bb.pm ], [ %i.anq, %bb.ps ], [ %i.ant, %bb.pw ], [ %i.anw, %bb.qa ], [ %i.anz, %bb.qe ], [ %i.aoc, %bb.qi ], [ %i.aoi, %bb.qn ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %59) #31
  br label %bb.vn

bb.vn:                                            ; preds = %bb.vm, %bb.nz
  %.merged835 = phi { ptr, i32 } [ %.merged836, %bb.vm ], [ %i.aht, %bb.nz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #31
  call void @_ZNSt3setIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESt4lessIS4_ESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %58) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #31
  br label %bb.abx

bb.vo:                                            ; preds = %_ZNSt3setIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESt4lessIS4_ESaIS4_EED2Ev.exit, %bb.nv
  %.36631663 = phi i8 [ 1, %_ZNSt3setIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESt4lessIS4_ESaIS4_EED2Ev.exit ], [ 0, %bb.nv ]
  %.27 = phi i32 [ %.26, %_ZNSt3setIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESt4lessIS4_ESaIS4_EED2Ev.exit ], [ %.18, %bb.nv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #31
  %i.bdr = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 6 uses
  store ptr %i.bdr, ptr %73, align 8, !tbaa !66
  %i.bds = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 2 uses
  store i64 0, ptr %i.bds, align 8, !tbaa !67
  store i8 0, ptr %i.bdr, align 8, !tbaa !64
  %i.bdt = load i64, ptr %i.am, align 8, !tbaa !67
  %i.bdu = icmp eq i64 %i.bdt, 0
  %i.bdv = load i64, ptr %i.aq, align 8
  %i.bdw = icmp eq i64 %i.bdv, 0
  %or.cond1943 = select i1 %i.bdu, i1 %i.bdw, i1 false
  %i.bdx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bdy = load ptr, ptr %i.bdx, align 8, !tbaa !62
  %i.bdz = load ptr, ptr %9, align 8, !tbaa !60   ; 3 uses
  %i.bea = ptrtoint ptr %i.bdy to i64             ; 2 uses
  %i.beb = ptrtoint ptr %i.bdz to i64             ; 2 uses
  %i.bec = sub i64 %i.bea, %i.beb
  %i.bed = icmp eq i64 %i.bec, 64
  %or.cond3544 = select i1 %or.cond1943, i1 %i.bed, i1 false
  br i1 %or.cond3544, label %bb.vp, label %._crit_edge3142

bb.vp:                                            ; preds = %bb.vo
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.bdz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1366 unwind label %bb.vq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1366: ; preds = %bb.vp
  %i.bee = load ptr, ptr %9, align 8, !tbaa !60
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.bef)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1368 unwind label %bb.vq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1368: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1366
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1370 unwind label %bb.vq

bb.vq:                                            ; preds = %.invoke3547, %.invoke3545, %bb.vr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1366, %bb.vp, %bb.wh, %bb.wc, %bb.wa, %bb.vy, %bb.vw, %bb.vu, %bb.vt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1368
  %i.beg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.beh = extractvalue { ptr, i32 } %i.beg, 0
  %i.bei = extractvalue { ptr, i32 } %i.beg, 1
  br label %bb.abp

._crit_edge3142:                                  ; preds = %bb.vo
  %i.bej = sub i64 %i.bea, %i.beb                 ; 2 uses
  %i.bek = icmp eq i64 %i.bej, 32
  br i1 %i.bek, label %bb.vr, label %bb.vs

bb.vr:                                            ; preds = %._crit_edge3142
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull align 8 dereferenceable(32) %i.bdz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1370 unwind label %bb.vq

bb.vs:                                            ; preds = %._crit_edge3142
  %i.bel = icmp ugt i64 %i.bej, 32
  br i1 %i.bel, label %bb.vt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1370

bb.vt:                                            ; preds = %bb.vs
  %i.bem = getelementptr inbounds nuw i8, ptr %3, i64 816 ; 3 uses
  %i.ben = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIA22_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bem, ptr noundef nonnull align 1 dereferenceable(22) @.str.147)
          to label %bb.vu unwind label %bb.vq     ; 0 uses

bb.vu:                                            ; preds = %bb.vt
  %i.beo = load ptr, ptr %9, align 8, !tbaa !60
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beo, i64 32
  %i.beq = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bem, ptr noundef nonnull align 8 dereferenceable(32) %i.bep)
          to label %.invoke3547 unwind label %bb.vq ; 0 uses

.invoke3547:                                      ; preds = %bb.wh, %bb.wc, %bb.wa, %bb.vy, %bb.vw, %bb.vu
  %i.ber = phi ptr [ %i.bfm, %bb.wc ], [ %i.bem, %bb.vu ], [ %i.bex, %bb.vw ], [ %i.bez, %bb.vy ], [ %i.bff, %bb.wa ], [ %i.bgk, %bb.wh ]
  %i.bes = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsEPFRSoS4_E(ptr noundef nonnull align 8 dereferenceable(408) %i.ber)
          to label %.invoke3545 unwind label %bb.vq ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1370: ; preds = %bb.vr, %bb.vs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1368
  %i.bet = load i64, ptr %i.am, align 8, !tbaa !67
  %i.beu = icmp eq i64 %i.bet, 0
  %i.bev = load i64, ptr %i.aq, align 8, !tbaa !67
  %i.bew = icmp eq i64 %i.bev, 0                  ; 2 uses
  br i1 %i.beu, label %bb.vx, label %bb.vv

bb.vv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1370
  br i1 %i.bew, label %bb.vw, label %bb.vz

bb.vw:                                            ; preds = %bb.vv
  %i.bex = getelementptr inbounds nuw i8, ptr %3, i64 816 ; 2 uses
  %i.bey = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIA45_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bex, ptr noundef nonnull align 1 dereferenceable(45) @.str.148)
          to label %.invoke3547 unwind label %bb.vq ; 0 uses

bb.vx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1370
  br i1 %i.bew, label %.thread1915, label %bb.vy

bb.vy:                                            ; preds = %bb.vx
  %i.bez = getelementptr inbounds nuw i8, ptr %3, i64 816 ; 2 uses
  %i.bfa = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIA45_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bez, ptr noundef nonnull align 1 dereferenceable(45) @.str.149)
          to label %.invoke3547 unwind label %bb.vq ; 0 uses

bb.vz:                                            ; preds = %bb.vv
  %i.bfb = load ptr, ptr %9, align 8, !tbaa !77
  %i.bfc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bfd = load ptr, ptr %i.bfc, align 8, !tbaa !77
  %i.bfe = icmp eq ptr %i.bfb, %i.bfd
  br i1 %i.bfe, label %bb.wd, label %bb.wa

bb.wa:                                            ; preds = %bb.vz
  %i.bff = getelementptr inbounds nuw i8, ptr %3, i64 816 ; 2 uses
  %i.bfg = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIA19_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bff)
          to label %.invoke3547 unwind label %bb.vq ; 0 uses

.thread1915:                                      ; preds = %bb.vx
  %i.bfh = load ptr, ptr %9, align 8, !tbaa !77
  %i.bfi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bfj = load ptr, ptr %i.bfi, align 8, !tbaa !77
  %i.bfk = icmp eq ptr %i.bfh, %i.bfj
  br i1 %i.bfk, label %bb.wb, label %bb.wd

bb.wb:                                            ; preds = %.thread1915
  %i.bfl = or i8 %.36631663, %.2658
  %or.cond36.not = icmp eq i8 %i.bfl, 0
  br i1 %or.cond36.not, label %bb.wc, label %bb.abo

bb.wc:                                            ; preds = %bb.wb
  %i.bfm = getelementptr inbounds nuw i8, ptr %3, i64 816 ; 2 uses
  %i.bfn = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIA20_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bfm)
          to label %.invoke3547 unwind label %bb.vq ; 0 uses

bb.wd:                                            ; preds = %.thread1915, %bb.vz
  %i.bfo = trunc nuw i8 %.4583 to i1
  br i1 %i.bfo, label %bb.wf, label %bb.we

bb.we:                                            ; preds = %bb.wd
  %i.bfp = getelementptr inbounds nuw i8, ptr %14, i64 1
  store i8 1, ptr %i.bfp, align 1, !tbaa !78
  %i.bfq = getelementptr inbounds nuw i8, ptr %14, i64 2
  store i8 1, ptr %i.bfq, align 2, !tbaa !79
  br label %bb.wf

bb.wf:                                            ; preds = %bb.we, %bb.wd
  %i.bfr = load i8, ptr %14, align 8, !tbaa !87, !range !90, !noundef !91
  %i.bfs = trunc nuw i8 %i.bfr to i1
  br i1 %i.bfs, label %bb.wg, label %bb.wi

bb.wg:                                            ; preds = %bb.wf
  %i.bft = getelementptr inbounds nuw i8, ptr %14, i64 1
  %i.bfu = load <4 x i8>, ptr %i.bft, align 1, !tbaa !244
  %i.bfv = getelementptr inbounds nuw i8, ptr %14, i64 5
  %i.bfw = load i8, ptr %i.bfv, align 1, !tbaa !83, !range !90, !noundef !91
  %i.bfx = getelementptr inbounds nuw i8, ptr %14, i64 6
  %i.bfy = load i8, ptr %i.bfx, align 2, !tbaa !81, !range !90, !noundef !91
  %i.bfz = getelementptr inbounds nuw i8, ptr %14, i64 7
  %i.bga = load i8, ptr %i.bfz, align 1, !tbaa !84, !range !90, !noundef !91
  %i.bgb = call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.bfu)
  %op.rdx = add i8 %i.bgb, %i.bfw
  %op.rdx3602 = add nuw nsw i8 %i.bfy, %i.bga
  %op.rdx3603 = add i8 %op.rdx, %op.rdx3602
  %i.bgc = zext nneg i8 %op.rdx3603 to i32
  %i.bgd = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bge = load i8, ptr %i.bgd, align 8, !tbaa !85, !range !90, !noundef !91
  %i.bgf = zext nneg i8 %i.bge to i32
  %i.bgg = add nuw nsw i32 %i.bgc, %i.bgf
  %i.bgh = load i8, ptr %i.yd, align 1, !tbaa !86, !range !90, !noundef !91
  %i.bgi = zext nneg i8 %i.bgh to i32
  %i.bgj = add nuw nsw i32 %i.bgg, %i.bgi
  %.not794 = icmp eq i32 %i.bgj, 1
  br i1 %.not794, label %bb.wi, label %bb.wh

bb.wh:                                            ; preds = %bb.wg
  %i.bgk = getelementptr inbounds nuw i8, ptr %3, i64 816 ; 2 uses
  %i.bgl = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIA48_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bgk)
          to label %.invoke3547 unwind label %bb.vq ; 0 uses

.invoke3545:                                      ; preds = %.invoke3547
  %i.bgm = invoke fastcc noundef i32 @_ZL5usageRN12_GLOBAL__N_18StreamerEb(ptr noundef nonnull align 8 dereferenceable(1224) %3, i1 noundef zeroext true)
          to label %bb.abo unwind label %bb.vq

bb.wi:                                            ; preds = %bb.wg, %bb.wf
  %i.bgn = load i64, ptr %i.bds, align 8, !tbaa !67
  %i.bgo = icmp eq i64 %i.bgn, 0
  %i.bgp = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 4 uses
  br i1 %i.bgo, label %bb.aaq, label %bb.wj

bb.wj:                                            ; preds = %bb.wi
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #31
  %i.bgq = load ptr, ptr %i.bgp, align 8, !tbaa !98 ; 2 uses
  %i.bgr = load <2 x ptr>, ptr %55, align 16, !tbaa !95
  store <2 x ptr> %i.bgr, ptr %75, align 16, !tbaa !95
  %.not.i.i.i1371 = icmp eq ptr %i.bgq, null
  br i1 %.not.i.i.i1371, label %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEC2ERKS4_.exit1373, label %bb.wk

bb.wk:                                            ; preds = %bb.wj
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgq, i64 8 ; 3 uses
  %i.bgt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i1372 = icmp eq i8 %i.bgt, 0
  br i1 %.not.i.i.i.i1372, label %bb.wm, label %bb.wl

bb.wl:                                            ; preds = %bb.wk
  %i.bgu = load i32, ptr %i.bgs, align 4, !tbaa !102
  %i.bgv = add nsw i32 %i.bgu, 1
  store i32 %i.bgv, ptr %i.bgs, align 4, !tbaa !102
  br label %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEC2ERKS4_.exit1373

bb.wm:                                            ; preds = %bb.wk
  %i.bgw = atomicrmw volatile add ptr %i.bgs, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEC2ERKS4_.exit1373

_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEC2ERKS4_.exit1373: ; preds = %bb.wj, %bb.wl, %bb.wm
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #31
  %i.bgx = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 6 uses
  store ptr %i.bgx, ptr %76, align 8, !tbaa !66
  %i.bgy = getelementptr inbounds nuw i8, ptr %76, i64 8
  store i64 0, ptr %i.bgy, align 8, !tbaa !67
  store i8 0, ptr %i.bgx, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %77, ptr noundef nonnull @.str.153, ptr noundef nonnull align 1 dereferenceable(1) %78)
          to label %bb.wn unwind label %bb.wp

bb.wn:                                            ; preds = %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEC2ERKS4_.exit1373
  %i.bgz = trunc nuw i8 %.2638 to i1
  %i.bha = trunc nuw i8 %.2642 to i1
  %i.bhb = load i8, ptr %14, align 8, !tbaa !87, !range !90, !noundef !91
  %i.bhc = trunc nuw i8 %i.bhb to i1
  invoke fastcc void @_ZL11buildObjectSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_SC_SC_bNS1_9operation26CoordinateOperationContext18IntermediateCRSUseEbbbRN12_GLOBAL__N_18StreamerE(ptr dead_on_unwind noalias writable align 8 %74, ptr noundef align 8 %75, ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull align 8 dereferenceable(32) %76, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %77, i1 noundef zeroext %.2606, i32 noundef %.4618, i1 noundef zeroext %i.bgz, i1 noundef zeroext %i.bha, i1 noundef zeroext %i.bhc, ptr noundef nonnull align 8 dereferenceable(1224) %3)
          to label %bb.wo unwind label %bb.wq

bb.wo:                                            ; preds = %bb.wn
  %i.bhd = load ptr, ptr %77, align 8, !tbaa !63  ; 2 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 2 uses
  %i.bhf = icmp eq ptr %i.bhd, %i.bhe
  br i1 %i.bhf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1376, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1374

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1374: ; preds = %bb.wo
  %i.bhg = load i64, ptr %i.bhe, align 8, !tbaa !64
  %i.bhh = add i64 %i.bhg, 1
  call void @_ZdlPvm(ptr noundef %i.bhd, i64 noundef %i.bhh) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1376

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1376: ; preds = %bb.wo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1374
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #31
  %i.bhi = load ptr, ptr %76, align 8, !tbaa !63  ; 2 uses
  %i.bhj = icmp eq ptr %i.bhi, %i.bgx
  br i1 %i.bhj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1379, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1377

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1377: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1376
  %i.bhk = load i64, ptr %i.bgx, align 8, !tbaa !64
  %i.bhl = add i64 %i.bhk, 1
  call void @_ZdlPvm(ptr noundef %i.bhi, i64 noundef %i.bhl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1379

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1379: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1376, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1377
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #31
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %75) #31
  %i.bhm = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 5 uses
  %i.bhn = load i8, ptr %i.bhm, align 16, !tbaa !134, !range !90, !noundef !91
  %i.bho = trunc nuw i8 %i.bhn to i1
  br i1 %i.bho, label %bb.wr, label %_ZNSt14_Optional_baseIN5osgeo4proj4util15BaseObjectNNPtrELb0ELb0EED2Ev.exit.thread

_ZNSt14_Optional_baseIN5osgeo4proj4util15BaseObjectNNPtrELb0ELb0EED2Ev.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1379
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #31
  br label %bb.abo

bb.wp:                                            ; preds = %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEC2ERKS4_.exit1373
  %i.bhp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1382

bb.wq:                                            ; preds = %bb.wn
  %i.bhq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bhr = load ptr, ptr %77, align 8, !tbaa !63  ; 2 uses
  %i.bhs = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 2 uses
  %i.bht = icmp eq ptr %i.bhr, %i.bhs
  br i1 %i.bht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1382, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1380

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1380: ; preds = %bb.wq
  %i.bhu = load i64, ptr %i.bhs, align 8, !tbaa !64
  %i.bhv = add i64 %i.bhu, 1
  call void @_ZdlPvm(ptr noundef %i.bhr, i64 noundef %i.bhv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1382

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1382: ; preds = %bb.wq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1380, %bb.wp
  %.pn795 = phi { ptr, i32 } [ %i.bhp, %bb.wp ], [ %i.bhq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1380 ], [ %i.bhq, %bb.wq ] ; 2 uses
  %.46 = extractvalue { ptr, i32 } %.pn795, 0
  %.46552 = extractvalue { ptr, i32 } %.pn795, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #31
  %i.bhw = load ptr, ptr %76, align 8, !tbaa !63  ; 2 uses
  %i.bhx = icmp eq ptr %i.bhw, %i.bgx
  br i1 %i.bhx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1385, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1383

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1383: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1382
  %i.bhy = load i64, ptr %i.bgx, align 8, !tbaa !64
  %i.bhz = add i64 %i.bhy, 1
  call void @_ZdlPvm(ptr noundef %i.bhw, i64 noundef %i.bhz) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1385

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1385: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1382, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1383
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #31
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %75) #31
  br label %_ZNSt14_Optional_baseIN5osgeo4proj4util15BaseObjectNNPtrELb0ELb0EED2Ev.exit1398

bb.wr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1379
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #31
  %i.bia = getelementptr inbounds nuw i8, ptr %79, i64 8
  %i.bib = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.bic = load ptr, ptr %i.bib, align 8, !tbaa !98 ; 2 uses
  %i.bid = load <2 x ptr>, ptr %74, align 16, !tbaa !95
  store <2 x ptr> %i.bid, ptr %79, align 16, !tbaa !95
  %.not.i.i.i.i.i1387 = icmp eq ptr %i.bic, null
  br i1 %.not.i.i.i.i.i1387, label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2ERKS2_.exit, label %bb.ws

bb.ws:                                            ; preds = %bb.wr
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bic, i64 8 ; 3 uses
  %i.bif = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i.i.i1388 = icmp eq i8 %i.bif, 0
end_hunk_1
