Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/btree_test?download=true
inline.NumInlined: 114243
inline.NumDeleted: 30281
loop-unroll.NumCompletelyUnrolled: 135
loop-unroll.NumRuntimeUnrolled: 644
loop-unroll.NumUnrolled: 782
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_19ConstTestINS0_9btree_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_EEEEEvv:.lr.ph.i.i
_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i989: ; preds = %bb.re
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !25
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 8
  %i.aps = load ptr, ptr %i.apr, align 8
  call void %i.aps(ptr noundef nonnull align 8 dereferenceable(128) %i.app) #37, !inline_history !119
  br label %_ZN7testing7MessageD2Ev.exit990

_ZN7testing7MessageD2Ev.exit990:                  ; preds = %bb.re, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i989
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #37
  br label %bb.rj

bb.rf:                                            ; preds = %bb.ra
  %i.apt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit993

bb.rg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit987
  %i.apu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ri

bb.rh:                                            ; preds = %bb.rd
  %i.apv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %123) #37
  br label %bb.ri

bb.ri:                                            ; preds = %bb.rh, %bb.rg
  %.pn307 = phi { ptr, i32 } [ %i.apv, %bb.rh ], [ %i.apu, %bb.rg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #37
  %i.apw = load ptr, ptr %122, align 8, !tbaa !41 ; 3 uses
  %.not.i.i991 = icmp eq ptr %i.apw, null
  br i1 %.not.i.i991, label %_ZN7testing7MessageD2Ev.exit993, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i992

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i992: ; preds = %bb.ri
  %i.apx = load ptr, ptr %i.apw, align 8, !tbaa !25
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 8
  %i.apz = load ptr, ptr %i.apy, align 8
  call void %i.apz(ptr noundef nonnull align 8 dereferenceable(128) %i.apw) #37, !inline_history !119
  br label %_ZN7testing7MessageD2Ev.exit993

_ZN7testing7MessageD2Ev.exit993:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i992, %bb.ri, %bb.rf
  %.pn307.pn = phi { ptr, i32 } [ %i.apt, %bb.rf ], [ %.pn307, %bb.ri ], [ %.pn307, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i992 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %121) #37
  br label %bb.ro

bb.rj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit985, %_ZN7testing7MessageD2Ev.exit990
  %i.aqa = getelementptr inbounds nuw i8, ptr %121, i64 8
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !68 ; 4 uses
  %.not.i.i994 = icmp eq ptr %i.aqb, null
  br i1 %.not.i.i994, label %_ZN7testing15AssertionResultD2Ev.exit998, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  %i.aqc = load ptr, ptr %i.aqb, align 8, !tbaa !18 ; 2 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqb, i64 16 ; 2 uses
  %i.aqe = icmp eq ptr %i.aqc, %i.aqd
  br i1 %i.aqe, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i996, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i995

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i995: ; preds = %bb.rk
  %i.aqf = load i64, ptr %i.aqd, align 8, !tbaa !23
  %i.aqg = add i64 %i.aqf, 1
  call void @_ZdlPvm(ptr noundef %i.aqc, i64 noundef %i.aqg) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i996

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i996: ; preds = %bb.rk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i995
  call void @_ZdlPvm(ptr noundef nonnull %i.aqb, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit998

_ZN7testing15AssertionResultD2Ev.exit998:         ; preds = %bb.rj, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i996
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #37
  br label %bb.rl

bb.rl:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit887, %_ZN7testing15AssertionResultD2Ev.exit998
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #37
  %i.aqh = load ptr, ptr %4, align 8, !tbaa !18   ; 2 uses
  %i.aqi = icmp eq ptr %i.aqh, %i.k
  br i1 %i.aqi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i999

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i999: ; preds = %bb.rl
  %i.aqj = load i64, ptr %i.k, align 8, !tbaa !23
  %i.aqk = add i64 %i.aqj, 1
  call void @_ZdlPvm(ptr noundef %i.aqh, i64 noundef %i.aqk) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001: ; preds = %bb.rl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i999
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.aql = load i64, ptr %i.h, align 8, !tbaa !653
  %i.aqm = icmp eq i64 %i.aql, 0
  br i1 %i.aqm, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEEED2Ev.exit, label %bb.rm

bb.rm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001
  %i.aqn = load ptr, ptr %3, align 8, !tbaa !646
  invoke void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEE16clear_and_deleteEPSB_PSaIS9_E(ptr noundef %i.aqn, ptr noundef nonnull %i.g)
          to label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEEED2Ev.exit unwind label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.aqo = landingpad { ptr, i32 }
          catch ptr null
  %i.aqp = extractvalue { ptr, i32 } %i.aqo, 0
  call void @__clang_call_terminate(ptr %i.aqp) #39
  unreachable

_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001, %bb.rm
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

bb.ro:                                            ; preds = %_ZN7testing7MessageD2Ev.exit993, %bb.qz
  %.pn307.pn.pn = phi { ptr, i32 } [ %.pn307.pn, %_ZN7testing7MessageD2Ev.exit993 ], [ %.pn305, %bb.qz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #37
  br label %bb.rp

bb.rp:                                            ; preds = %bb.ro, %_ZN7testing7MessageD2Ev.exit972, %bb.qh, %bb.po, %_ZN7testing7MessageD2Ev.exit893, %bb.om, %bb.ny, %bb.ni, %bb.ms
  %.pn307.pn.pn.pn = phi { ptr, i32 } [ %.pn307.pn.pn, %bb.ro ], [ %.pn300.pn.pn, %_ZN7testing7MessageD2Ev.exit972 ], [ %.pn296.pn.pn, %bb.qh ], [ %.pn290.pn.pn, %bb.po ], [ %.pn284.pn.pn, %_ZN7testing7MessageD2Ev.exit893 ], [ %.pn268.pn.pn, %bb.ms ], [ %.pn280.pn.pn, %bb.om ], [ %.pn276.pn.pn, %bb.ny ], [ %.pn272.pn.pn, %bb.ni ]
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #37
  br label %bb.rq

bb.rq:                                            ; preds = %bb.rp, %bb.mc, %bb.lm, %bb.kw, %bb.kg
  %.pn307.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn307.pn.pn.pn, %bb.rp ], [ %.pn264.pn.pn, %bb.mc ], [ %.pn260.pn.pn, %bb.lm ], [ %.pn256.pn.pn, %bb.kw ], [ %.pn252.pn.pn, %bb.kg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #37
  br label %bb.rr

bb.rr:                                            ; preds = %bb.rq, %bb.jq, %bb.ja, %bb.ik, %bb.hu
  %.pn307.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn307.pn.pn.pn.pn, %bb.rq ], [ %.pn248.pn.pn, %bb.jq ], [ %.pn244.pn.pn, %bb.ja ], [ %.pn240.pn.pn, %bb.ik ], [ %.pn236.pn.pn, %bb.hu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #37
  br label %bb.rs

bb.rs:                                            ; preds = %bb.rr, %bb.he, %bb.go, %bb.fy, %bb.fi
  %.pn307.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn307.pn.pn.pn.pn.pn, %bb.rr ], [ %.pn232.pn.pn, %bb.he ], [ %.pn228.pn.pn, %bb.go ], [ %.pn224.pn.pn, %bb.fy ], [ %.pn220.pn.pn, %bb.fi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #37
  br label %bb.rt

bb.rt:                                            ; preds = %bb.rs, %bb.es, %bb.ec, %bb.dn, %bb.cs, %_ZN7testing7MessageD2Ev.exit378, %bb.az, %_ZN7testing7MessageD2Ev.exit324, %bb.k
  %.pn307.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn307.pn.pn.pn.pn.pn.pn, %bb.rs ], [ %.pn216.pn.pn, %bb.es ], [ %.pn212.pn.pn, %bb.ec ], [ %.pn206.pn.pn, %bb.dn ], [ %.pn202.pn.pn, %bb.cs ], [ %.pn195.pn.pn, %_ZN7testing7MessageD2Ev.exit378 ], [ %.pn191.pn.pn, %bb.az ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit324 ], [ %i.bb, %bb.k ] ; 2 uses
  %i.aqq = load ptr, ptr %4, align 8, !tbaa !18   ; 2 uses
  %i.aqr = icmp eq ptr %i.aqq, %i.k
  br i1 %i.aqr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1002

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1002: ; preds = %bb.rt
  %i.aqs = load i64, ptr %i.k, align 8, !tbaa !23
  %i.aqt = add i64 %i.aqs, 1
  call void @_ZdlPvm(ptr noundef %i.aqq, i64 noundef %i.aqt) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004: ; preds = %bb.rt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1002, %bb.j
  %.pn307.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %.pn307.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1002 ], [ %.pn307.pn.pn.pn.pn.pn.pn.pn, %bb.rt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.pn307.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal22GenerateValuesWithSeedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorIT_SaISA_EEiii(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %4 = alloca %"class.std::vector.146", align 8   ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @_ZN4absl12lts_2026052618container_internal23GenerateNumbersWithSeedEiii(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.146") align 8 %4, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = sext i32 %1 to i64
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c)
          to label %.preheader unwind label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %.not11.i.i = icmp eq i32 %2, 0
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.c:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.k = load ptr, ptr %4, align 8, !tbaa !92
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !9
  call void @llvm.experimental.noalias.scope.decl(metadata !820)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37, !noalias !820
  store i8 0, ptr %i.e, align 1, !tbaa !23, !noalias !820
  br i1 %.not11.i.i, label %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 14, %bb.c ] ; 2 uses
  %.0913.i.i = phi i32 [ %i.s, %.lr.ph.i.i ], [ %2, %bb.c ]
  %.01012.i.i = phi i32 [ %i.r, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.n = trunc i32 %.01012.i.i to i8
  %i.o = and i8 %i.n, 63
  %i.p = add nuw nsw i8 %i.o, 32
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i
  store i8 %i.p, ptr %i.q, align 1, !tbaa !23, !noalias !820
  %i.r = lshr i32 %.01012.i.i, 6
  %i.s = lshr i32 %.0913.i.i, 6                   ; 2 uses
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i, label %.lr.ph.i.i, !llvm.loop !823

_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.0.lcssa.i.i = phi i64 [ 14, %bb.c ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.lcssa.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 3 uses
  store ptr %i.f, ptr %5, align 8, !tbaa !24, !alias.scope !820
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #37, !noalias !820 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37, !noalias !820
  store i64 %i.v, ptr %i.a, align 8, !tbaa !10, !noalias !820
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.x, ptr %5, align 8, !tbaa !18, !alias.scope !820
  %i.y = load i64, ptr %i.a, align 8, !tbaa !10, !noalias !820
  store i64 %i.y, ptr %i.f, align 8, !tbaa !23, !alias.scope !820
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.f, %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i ] ; 2 uses
  switch i64 %i.v, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !23, !noalias !820
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %i.u, i64 %i.v, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !10, !noalias !820 ; 2 uses
  store i64 %i.ab, ptr %i.g, align 8, !tbaa !21, !alias.scope !820
  %i.ac = load ptr, ptr %5, align 8, !tbaa !18, !alias.scope !820
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37, !noalias !820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37, !noalias !820
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !44  ; 6 uses
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !47
  %.not.i.i16 = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i16, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !24
  %i.ah = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.f
  br i1 %i.ai, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.aj = load i64, ptr %i.g, align 8, !tbaa !21  ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.al, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !18
  %i.am = load i64, ptr %i.f, align 8, !tbaa !23
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !23
  %.pre = load i64, ptr %i.g, align 8, !tbaa !21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.an = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.aj, %bb.h ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !21
  store ptr %i.f, ptr %5, align 8, !tbaa !18
  store i64 0, ptr %i.g, align 8, !tbaa !21
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.k

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.i
  %.pre27 = load ptr, ptr %5, align 8, !tbaa !18  ; 2 uses
  %i.ar = icmp eq ptr %.pre27, %i.f
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.as = load i64, ptr %i.f, align 8, !tbaa !23
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %.pre27, i64 noundef %i.at) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !824

bb.j:                                             ; preds = %.noexc.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.k:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.f
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.k
  %i.ay = load i64, ptr %i.f, align 8, !tbaa !23
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.j
  %.pn = phi { ptr, i32 } [ %i.au, %bb.j ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.av, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.preheader
  %i.ba = load ptr, ptr %4, align 8, !tbaa !92    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !93
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.j, %bb.b ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #37
  %i.bg = load ptr, ptr %4, align 8, !tbaa !92    ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIiSaIiEED2Ev.exit22, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !93
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit22

_ZNSt6vectorIiSaIiEED2Ev.exit22:                  ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_16DoTestINS2_14unique_checkerINS0_9btree_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISB_ESaISB_EEESt3setISB_SD_SE_EEESB_EEvPKcPT_RKSt6vectorIT0_SaISO_EE(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.229", align 8    ; 5 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"struct.std::pair.229", align 8    ; 3 uses
  %10 = alloca %"struct.std::pair.229", align 8   ; 3 uses
  %11 = alloca %"struct.std::pair.229", align 8   ; 3 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.absl::lts_20260526::container_internal::(anonymous namespace)::unique_checker.210", align 16 ; 45 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.absl::lts_20260526::container_internal::(anonymous namespace)::unique_checker.210", align 16 ; 43 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.k = alloca i64, align 8                      ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_19ConstTestINS0_9btree_setINS0_4CordESt4lessIS5_ESaIS5_EEEEEvv:.lr.ph.i.i
  %i.are = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit982

bb.sl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit976
  %i.arf = landingpad { ptr, i32 }
          cleanup
  br label %bb.sn

bb.sm:                                            ; preds = %bb.si
  %i.arg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %123) #37
  br label %bb.sn

bb.sn:                                            ; preds = %bb.sm, %bb.sl
  %.pn307 = phi { ptr, i32 } [ %i.arg, %bb.sm ], [ %i.arf, %bb.sl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #37
  %i.arh = load ptr, ptr %122, align 8, !tbaa !41 ; 3 uses
  %.not.i.i980 = icmp eq ptr %i.arh, null
  br i1 %.not.i.i980, label %_ZN7testing7MessageD2Ev.exit982, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i981

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i981: ; preds = %bb.sn
  %i.ari = load ptr, ptr %i.arh, align 8, !tbaa !25
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 8
  %i.ark = load ptr, ptr %i.arj, align 8
  call void %i.ark(ptr noundef nonnull align 8 dereferenceable(128) %i.arh) #37, !inline_history !119
  br label %_ZN7testing7MessageD2Ev.exit982

_ZN7testing7MessageD2Ev.exit982:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i981, %bb.sn, %bb.sk
  %.pn307.pn = phi { ptr, i32 } [ %i.are, %bb.sk ], [ %.pn307, %bb.sn ], [ %.pn307, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i981 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %121) #37
  br label %bb.sv

bb.so:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit974, %_ZN7testing7MessageD2Ev.exit979
  %i.arl = getelementptr inbounds nuw i8, ptr %121, i64 8
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !68 ; 4 uses
  %.not.i.i983 = icmp eq ptr %i.arm, null
  br i1 %.not.i.i983, label %_ZN7testing15AssertionResultD2Ev.exit987, label %bb.sp

bb.sp:                                            ; preds = %bb.so
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !18 ; 2 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arm, i64 16 ; 2 uses
  %i.arp = icmp eq ptr %i.arn, %i.aro
  br i1 %i.arp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i985, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i984

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i984: ; preds = %bb.sp
  %i.arq = load i64, ptr %i.aro, align 8, !tbaa !23
  %i.arr = add i64 %i.arq, 1
  call void @_ZdlPvm(ptr noundef %i.arn, i64 noundef %i.arr) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i985

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i985: ; preds = %bb.sp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i984
  call void @_ZdlPvm(ptr noundef nonnull %i.arm, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit987

_ZN7testing15AssertionResultD2Ev.exit987:         ; preds = %bb.so, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i985
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #37
  br label %bb.sq

bb.sq:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit873, %_ZN7testing15AssertionResultD2Ev.exit987
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #37
  %i.ars = load i8, ptr %4, align 8, !tbaa !23
  %i.art = trunc i8 %i.ars to i1
  br i1 %i.art, label %bb.sr, label %_ZN4absl12lts_202605264CordD2Ev.exit

bb.sr:                                            ; preds = %bb.sq
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit unwind label %bb.ss

bb.ss:                                            ; preds = %bb.sr
  %i.aru = landingpad { ptr, i32 }
          catch ptr null
  %i.arv = extractvalue { ptr, i32 } %i.aru, 0
  call void @__clang_call_terminate(ptr %i.arv) #39
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit:             ; preds = %bb.sq, %bb.sr
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.arw = load i64, ptr %i.g, align 8, !tbaa !1205
  %i.arx = icmp eq i64 %i.arw, 0
  br i1 %i.arx, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_4CordEJEEEEEED2Ev.exit, label %bb.st

bb.st:                                            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit
  %i.ary = load ptr, ptr %3, align 8, !tbaa !1198
  invoke void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_4CordEJEEEE16clear_and_deleteEPS6_PSaIS4_E(ptr noundef %i.ary, ptr noundef nonnull %i.f)
          to label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_4CordEJEEEEEED2Ev.exit unwind label %bb.su

bb.su:                                            ; preds = %bb.st
  %i.arz = landingpad { ptr, i32 }
          catch ptr null
  %i.asa = extractvalue { ptr, i32 } %i.arz, 0
  call void @__clang_call_terminate(ptr %i.asa) #39
  unreachable

_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_4CordEJEEEEEED2Ev.exit: ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit, %bb.st
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

bb.sv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit982, %bb.se
  %.pn307.pn.pn = phi { ptr, i32 } [ %.pn307.pn, %_ZN7testing7MessageD2Ev.exit982 ], [ %.pn305, %bb.se ]
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #37
  br label %bb.sw

bb.sw:                                            ; preds = %bb.sv, %bb.sb, %bb.rk, %bb.qo, %_ZN7testing7MessageD2Ev.exit879, %bb.pm, %bb.oy, %bb.oi, %bb.ns
  %.pn307.pn.pn.pn = phi { ptr, i32 } [ %.pn307.pn.pn, %bb.sv ], [ %.pn300.pn.pn.pn, %bb.sb ], [ %.pn296.pn.pn, %bb.rk ], [ %.pn290.pn.pn, %bb.qo ], [ %.pn284.pn.pn, %_ZN7testing7MessageD2Ev.exit879 ], [ %.pn268.pn.pn, %bb.ns ], [ %.pn280.pn.pn, %bb.pm ], [ %.pn276.pn.pn, %bb.oy ], [ %.pn272.pn.pn, %bb.oi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #37
  br label %bb.sx

bb.sx:                                            ; preds = %bb.sw, %bb.nc, %bb.mm, %bb.lw, %bb.lg
  %.pn307.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn307.pn.pn.pn, %bb.sw ], [ %.pn264.pn.pn, %bb.nc ], [ %.pn260.pn.pn, %bb.mm ], [ %.pn256.pn.pn, %bb.lw ], [ %.pn252.pn.pn, %bb.lg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #37
  br label %bb.sy

bb.sy:                                            ; preds = %bb.sx, %bb.kq, %bb.ka, %bb.jk, %bb.iu
  %.pn307.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn307.pn.pn.pn.pn, %bb.sx ], [ %.pn248.pn.pn, %bb.kq ], [ %.pn244.pn.pn, %bb.ka ], [ %.pn240.pn.pn, %bb.jk ], [ %.pn236.pn.pn, %bb.iu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #37
  br label %bb.sz

bb.sz:                                            ; preds = %bb.sy, %bb.ie, %bb.ho, %bb.gy, %bb.gi
  %.pn307.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn307.pn.pn.pn.pn.pn, %bb.sy ], [ %.pn232.pn.pn, %bb.ie ], [ %.pn228.pn.pn, %bb.ho ], [ %.pn224.pn.pn, %bb.gy ], [ %.pn220.pn.pn, %bb.gi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #37
  br label %bb.ta

bb.ta:                                            ; preds = %bb.sz, %bb.fs, %bb.fc, %bb.eh, %bb.dg, %bb.cl, %bb.bk, %bb.am, %bb.l
  %.pn307.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn307.pn.pn.pn.pn.pn.pn, %bb.sz ], [ %.pn216.pn.pn, %bb.fs ], [ %.pn212.pn.pn, %bb.fc ], [ %.pn206.pn.pn, %bb.eh ], [ %.pn202.pn.pn, %bb.dg ], [ %.pn195.pn.pn.pn, %bb.cl ], [ %.pn191.pn.pn, %bb.bk ], [ %.pn.pn.pn.pn, %bb.am ], [ %i.bc, %bb.l ]
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #37
  br label %bb.tb

bb.tb:                                            ; preds = %bb.ta, %bb.k
  %.pn307.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn307.pn.pn.pn.pn.pn.pn.pn, %bb.ta ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_4CordEJEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.pn307.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal22GenerateValuesWithSeedINS0_4CordEEESt6vectorIT_SaIS5_EEiii(ptr dead_on_unwind noalias writable sret(%"class.std::vector.278") align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %4 = alloca %"class.std::vector.146", align 8   ; 9 uses
  %5 = alloca %"class.absl::lts_20260526::Cord", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @_ZN4absl12lts_2026052618container_internal23GenerateNumbersWithSeedEiii(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.146") align 8 %4, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.304) #38
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not33 = icmp eq i32 %1, 0
  br i1 %.not33, label %._crit_edge, label %_ZNSt12_Vector_baseIN4absl12lts_202605264CordESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4absl12lts_202605264CordESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %i.b, 4
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #35
          to label %.lr.ph unwind label %bb.d     ; 4 uses

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIN4absl12lts_202605264CordESaIS2_EE11_M_allocateEm.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %0, align 8, !tbaa !1211
  store ptr %i.f, ptr %i.g, align 8, !tbaa !1208
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.b
  store ptr %i.h, ptr %i.d, align 8, !tbaa !1212
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %.not11.i.i = icmp eq i32 %2, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN4absl12lts_202605264CordESaIS2_EE11_M_allocateEm.exit.i, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.e:                                             ; preds = %.lr.ph, %_ZN4absl12lts_202605264CordD2Ev.exit
  %i.l = phi ptr [ %i.f, %.lr.ph ], [ %i.av, %_ZN4absl12lts_202605264CordD2Ev.exit ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4absl12lts_202605264CordD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.m = load ptr, ptr %4, align 8, !tbaa !92
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37, !noalias !1377
  store i8 0, ptr %i.i, align 1, !tbaa !23, !noalias !1377
  br i1 %.not11.i.i, label %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 14, %bb.e ] ; 2 uses
  %.0913.i.i = phi i32 [ %i.u, %.lr.ph.i.i ], [ %2, %bb.e ]
  %.01012.i.i = phi i32 [ %i.t, %.lr.ph.i.i ], [ %i.o, %bb.e ] ; 2 uses
  %i.p = trunc i32 %.01012.i.i to i8
  %i.q = and i8 %i.p, 63
  %i.r = add nuw nsw i8 %i.q, 32
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i
  store i8 %i.r, ptr %i.s, align 1, !tbaa !23, !noalias !1377
  %i.t = lshr i32 %.01012.i.i, 6
  %i.u = lshr i32 %.0913.i.i, 6                   ; 2 uses
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i, label %.lr.ph.i.i, !llvm.loop !823

_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i: ; preds = %.lr.ph.i.i, %bb.e
  %.0.lcssa.i.i = phi i64 [ 14, %bb.e ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.lcssa.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %i.x = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.w) #37, !noalias !1377
  invoke void @_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.x, ptr nonnull %i.w, i32 noundef 9)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37, !noalias !1377
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !1212
  %.not.i.i18 = icmp eq ptr %i.l, %i.y
  br i1 %.not.i.i18, label %bb.g, label %_ZNSt6vectorIN4absl12lts_202605264CordESaIS2_EE9push_backEOS2_.exit.thread

_ZNSt6vectorIN4absl12lts_202605264CordESaIS2_EE9push_backEOS2_.exit.thread: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1380
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !1208
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  store ptr %i.aa, ptr %i.j, align 8, !tbaa !1208
  br label %_ZN4absl12lts_202605264CordD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %0, align 8, !tbaa !1211  ; 5 uses
  %i.ac = ptrtoint ptr %i.l to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775792
  br i1 %i.af, label %bb.h, label %_ZNKSt6vectorIN4absl12lts_202605264CordESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.303) #38
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN4absl12lts_202605264CordESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ag = ashr exact i64 %i.ae, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = call i64 @llvm.umin.i64(i64 %i.ah, i64 576460752303423487)
  %i.ak = select i1 %i.ai, i64 576460752303423487, i64 %i.aj ; 3 uses
  %.not.i.i.i.i19 = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %.not.i.i.i.i19)
  %i.al = shl nuw nsw i64 %i.ak, 4
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #35
          to label %.noexc21 unwind label %.loopexit ; 5 uses

.noexc21:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_202605264CordESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1380
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.l
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_202605264CordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc21, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %i.am, %.noexc21 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %.noexc21 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !1380, !alias.scope !1384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !1386, !noalias !1381
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.l
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_202605264CordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1387

_ZNSt6vectorIN4absl12lts_202605264CordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc21
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.am, %.noexc21 ], [ %i.ap, %.lr.ph.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 3 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4absl12lts_202605264CordESaIS2_EE9push_backEOS2_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4absl12lts_202605264CordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ae) #36
  br label %_ZNSt6vectorIN4absl12lts_202605264CordESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4absl12lts_202605264CordESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN4absl12lts_202605264CordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, %bb.i
  store ptr %i.am, ptr %0, align 8, !tbaa !1211
  store ptr %i.aq, ptr %i.j, align 8, !tbaa !1208
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.ar, ptr %i.d, align 8, !tbaa !1212
  %.pre = load i8, ptr %5, align 8, !tbaa !23
  %i.as = trunc i8 %.pre to i1
  br i1 %i.as, label %bb.j, label %_ZN4absl12lts_202605264CordD2Ev.exit

bb.j:                                             ; preds = %_ZNSt6vectorIN4absl12lts_202605264CordESaIS2_EE9push_backEOS2_.exit
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #39
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit:             ; preds = %_ZNSt6vectorIN4absl12lts_202605264CordESaIS2_EE9push_backEOS2_.exit.thread, %_ZNSt6vectorIN4absl12lts_202605264CordESaIS2_EE9push_backEOS2_.exit, %bb.j
  %i.av = phi ptr [ %i.aa, %_ZNSt6vectorIN4absl12lts_202605264CordESaIS2_EE9push_backEOS2_.exit.thread ], [ %i.aq, %_ZNSt6vectorIN4absl12lts_202605264CordESaIS2_EE9push_backEOS2_.exit ], [ %i.aq, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !1388

bb.l:                                             ; preds = %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4absl12lts_202605264CordESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #37
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.m ], [ %i.aw, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.p

._crit_edge:                                      ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit, %bb.c
  %i.ax = load ptr, ptr %4, align 8, !tbaa !92    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !93
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.p:                                             ; preds = %bb.n, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.k, %bb.d ]
  call void @_ZNSt6vectorIN4absl12lts_202605264CordESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #37
  %i.bd = load ptr, ptr %4, align 8, !tbaa !92    ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIiSaIiEED2Ev.exit23, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !93
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit23

_ZNSt6vectorIiSaIiEED2Ev.exit23:                  ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_16DoTestINS2_14unique_checkerINS0_9btree_setINS0_4CordESt4lessIS6_ESaIS6_EEESt3setIS6_S8_S9_EEES6_EEvPKcPT_RKSt6vectorIT0_SaISJ_EE(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.303", align 8    ; 5 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"struct.std::pair.303", align 8    ; 3 uses
  %10 = alloca %"struct.std::pair.303", align 8   ; 3 uses
  %11 = alloca %"struct.std::pair.303", align 8   ; 3 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.absl::lts_20260526::container_internal::(anonymous namespace)::unique_checker.283", align 16 ; 45 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.absl::lts_20260526::container_internal::(anonymous namespace)::unique_checker.283", align 16 ; 43 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_16DoTestINS2_14unique_checkerINS0_9btree_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_St4lessISB_ESaISt4pairIKSB_SB_EEEESt3mapISB_SB_SD_SH_EEESE_ISB_SB_EEEvPKcPT_RKSt6vectorIT0_SaISS_EE:bb.a
  %i.asx = icmp eq i64 %i.asw, 0
  br i1 %i.asx, label %_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEEESt3mapIS9_S9_SB_SF_EED2Ev.exit, label %bb.pq

bb.pq:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i
  %i.asy = load ptr, ptr %22, align 16, !tbaa !2286
  invoke void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JEEEE16clear_and_deleteEPSB_PSaISt4pairIKS9_S9_EE(ptr noundef %i.asy, ptr noundef nonnull %i.jq)
          to label %_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEEESt3mapIS9_S9_SB_SF_EED2Ev.exit unwind label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.asz = landingpad { ptr, i32 }
          catch ptr null
  %i.ata = extractvalue { ptr, i32 } %i.asz, 0
  call void @__clang_call_terminate(ptr %i.ata) #39
  unreachable

_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEEESt3mapIS9_S9_SB_SF_EED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i, %bb.pq
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37
  %i.atb = load ptr, ptr %i.qt, align 16, !tbaa !85
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.pc, ptr noundef %i.atb)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i942 unwind label %bb.ps

bb.ps:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEEESt3mapIS9_S9_SB_SF_EED2Ev.exit
  %i.atc = landingpad { ptr, i32 }
          catch ptr null
  %i.atd = extractvalue { ptr, i32 } %i.atc, 0
  call void @__clang_call_terminate(ptr %i.atd) #39
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i942: ; preds = %_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEEESt3mapIS9_S9_SB_SF_EED2Ev.exit
  %i.ate = load i64, ptr %i.qq, align 16, !tbaa !2293
  %i.atf = icmp eq i64 %i.ate, 0
  br i1 %i.atf, label %_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEEESt3mapIS9_S9_SB_SF_EED2Ev.exit943, label %bb.pt

bb.pt:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i942
  %i.atg = load ptr, ptr %18, align 16, !tbaa !2286
  invoke void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JEEEE16clear_and_deleteEPSB_PSaISt4pairIKS9_S9_EE(ptr noundef %i.atg, ptr noundef nonnull %i.ia)
          to label %_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEEESt3mapIS9_S9_SB_SF_EED2Ev.exit943 unwind label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.ath = landingpad { ptr, i32 }
          catch ptr null
  %i.ati = extractvalue { ptr, i32 } %i.ath, 0
  call void @__clang_call_terminate(ptr %i.ati) #39
  unreachable

_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEEESt3mapIS9_S9_SB_SF_EED2Ev.exit943: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i942, %bb.pt
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  br label %bb.pv

bb.pv:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEEESt3mapIS9_S9_SB_SF_EED2Ev.exit943
  ret void

bb.pw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit933, %bb.oy
  %.pn444.pn.pn = phi { ptr, i32 } [ %.pn444.pn, %_ZN7testing7MessageD2Ev.exit933 ], [ %.pn442, %bb.oy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #37
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.mk, %bb.nk, %bb.pw, %bb.ol, %bb.nl, %bb.li, %bb.ll, %bb.hv, %bb.il, %bb.mj, %bb.kc, %bb.jj, %bb.jh, %bb.hp, %bb.hn, %bb.gy, %bb.gb, %bb.fz, %bb.ff, %bb.em, %bb.dq, %bb.cp, %bb.cn, %bb.bk, %bb.bi
  %.pn455 = phi { ptr, i32 } [ %i.hx, %bb.bk ], [ %i.no, %bb.cp ], [ %i.vn, %bb.gb ], [ %i.yv, %bb.hp ], [ %i.acj, %bb.jj ], [ %i.zf, %bb.hv ], [ %i.ahf, %bb.li ], [ %i.amb, %bb.nl ], [ %.pn426.pn.pn, %bb.mj ], [ %.pn420.pn.pn, %bb.kc ], [ %.pn414.pn.pn, %bb.jh ], [ %.pn359.pn.pn, %bb.bi ], [ %.pn401.pn.pn, %bb.hn ], [ %.pn395.pn.pn, %bb.gy ], [ %.pn389.pn.pn, %bb.fz ], [ %.pn383.pn.pn, %bb.ff ], [ %.pn377.pn.pn, %bb.em ], [ %.pn371.pn.pn, %bb.dq ], [ %.pn365.pn.pn, %bb.cn ], [ %.pn407.pn.pn, %bb.il ], [ %.pn452, %bb.ll ], [ %.pn438.pn.pn, %bb.ol ], [ %.pn432.pn.pn, %bb.nk ], [ %i.aje, %bb.mk ], [ %.pn444.pn.pn, %bb.pw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit35, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp36, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEEESt3mapIS9_S9_SB_SF_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %22) #37
  br label %bb.px

bb.px:                                            ; preds = %.loopexit.split-lp, %bb.at
  %.pn455.pn = phi { ptr, i32 } [ %.pn455, %.loopexit.split-lp ], [ %i.ga, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37
  br label %bb.py

bb.py:                                            ; preds = %bb.px, %bb.ao, %bb.am
  %.pn458 = phi { ptr, i32 } [ %i.fm, %bb.ao ], [ %.pn455.pn, %bb.px ], [ %.pn353.pn.pn, %bb.am ]
  call void @_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEEESt3mapIS9_S9_SB_SF_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  br label %bb.pz

bb.pz:                                            ; preds = %bb.g, %bb.h, %bb.py, %_ZN7testing7MessageD2Ev.exit477
  %.pn460.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit477 ], [ %.pn458, %bb.py ], [ %i.ch, %bb.h ], [ %i.cg, %bb.g ]
  resume { ptr, i32 } %.pn460.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2300   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2302 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !23
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i, align 8, !tbaa !18 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !23
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #36
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2303

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !2300
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.p = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !2304
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #36
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEEESt3mapIS9_S9_SB_SF_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #39
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !2293
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JEEEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !2286
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JEEEE16clear_and_deleteEPSB_PSaISt4pairIKS9_S9_EE(ptr noundef %i.i, ptr noundef nonnull %i.j)
          to label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JEEEEEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #39
  unreachable

_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JEEEEEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEclEi(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.453") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %3 = alloca %"struct.std::pair.470", align 8    ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2568)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37, !noalias !2568
  %i.e = load i32, ptr %1, align 4, !tbaa !2308, !noalias !2568 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  store i8 0, ptr %i.f, align 1, !tbaa !23, !noalias !2568
  %.not11.i.i = icmp eq i32 %i.e, 0
  br i1 %.not11.i.i, label %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 14, %bb.a ] ; 2 uses
  %.0913.i.i = phi i32 [ %i.l, %.lr.ph.i.i ], [ %i.e, %bb.a ]
  %.01012.i.i = phi i32 [ %i.k, %.lr.ph.i.i ], [ %2, %bb.a ] ; 2 uses
  %i.g = trunc i32 %.01012.i.i to i8
  %i.h = and i8 %i.g, 63
  %i.i = add nuw nsw i8 %i.h, 32
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i.i
  store i8 %i.i, ptr %i.j, align 1, !tbaa !23, !noalias !2568
  %i.k = lshr i32 %.01012.i.i, 6
  %i.l = lshr i32 %.0913.i.i, 6                   ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i, label %.lr.ph.i.i, !llvm.loop !823

_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  %.0.lcssa.i.i = phi i64 [ 14, %bb.a ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.lcssa.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !24, !alias.scope !2568
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #37, !noalias !2568 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37, !noalias !2568
  store i64 %i.p, ptr %i.c, align 8, !tbaa !10, !noalias !2568
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !18, !alias.scope !2568
  %i.s = load i64, ptr %i.c, align 8, !tbaa !10, !noalias !2568
  store i64 %i.s, ptr %i.o, align 8, !tbaa !23, !alias.scope !2568
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i
  %i.t = phi ptr [ %i.r, %.noexc.i.i ], [ %i.o, %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i ] ; 2 uses
  switch i64 %i.p, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNK4absl12lts_2026052618container_internal9GeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEi.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.u = load i8, ptr %i.n, align 1, !tbaa !23, !noalias !2568
  store i8 %i.u, ptr %i.t, align 1, !tbaa !23
  br label %_ZNK4absl12lts_2026052618container_internal9GeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEi.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.n, i64 %i.p, i1 false)
  br label %_ZNK4absl12lts_2026052618container_internal9GeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEi.exit

_ZNK4absl12lts_2026052618container_internal9GeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEi.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.v = load i64, ptr %i.c, align 8, !tbaa !10, !noalias !2568 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.v, ptr %i.w, align 8, !tbaa !21, !alias.scope !2568
  %i.x = load ptr, ptr %4, align 8, !tbaa !18, !alias.scope !2568
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37, !noalias !2568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37, !noalias !2568
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2571)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37, !noalias !2571
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !2308, !noalias !2571 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  store i8 0, ptr %i.ab, align 1, !tbaa !23, !noalias !2571
  %.not11.i.i6 = icmp eq i32 %i.aa, 0
  br i1 %.not11.i.i6, label %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i13, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %_ZNK4absl12lts_2026052618container_internal9GeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEi.exit, %.lr.ph.i.i7
  %indvars.iv.i.i8 = phi i64 [ %indvars.iv.next.i.i11, %.lr.ph.i.i7 ], [ 14, %_ZNK4absl12lts_2026052618container_internal9GeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEi.exit ] ; 2 uses
  %.0913.i.i9 = phi i32 [ %i.ah, %.lr.ph.i.i7 ], [ %i.aa, %_ZNK4absl12lts_2026052618container_internal9GeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEi.exit ]
  %.01012.i.i10 = phi i32 [ %i.ag, %.lr.ph.i.i7 ], [ %2, %_ZNK4absl12lts_2026052618container_internal9GeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEi.exit ] ; 2 uses
  %i.ac = trunc i32 %.01012.i.i10 to i8
  %i.ad = and i8 %i.ac, 63
  %i.ae = add nuw nsw i8 %i.ad, 32
  %indvars.iv.next.i.i11 = add nsw i64 %indvars.iv.i.i8, -1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i8
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !23, !noalias !2571
  %i.ag = lshr i32 %.01012.i.i10, 6
  %i.ah = lshr i32 %.0913.i.i9, 6                 ; 2 uses
  %.not.i.i12 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i12, label %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i13, label %.lr.ph.i.i7, !llvm.loop !823

_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i13: ; preds = %.lr.ph.i.i7, %_ZNK4absl12lts_2026052618container_internal9GeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEi.exit
  %.0.lcssa.i.i14 = phi i64 [ 14, %_ZNK4absl12lts_2026052618container_internal9GeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEi.exit ], [ %indvars.iv.next.i.i11, %.lr.ph.i.i7 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.lcssa.i.i14
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ak, ptr %5, align 8, !tbaa !24, !alias.scope !2571
  %i.al = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #37, !noalias !2571 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37, !noalias !2571
  store i64 %i.al, ptr %i.a, align 8, !tbaa !10, !noalias !2571
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %.noexc.i.i16, label %._crit_edge.i.i.i15

.noexc.i.i16:                                     ; preds = %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i13
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i16
  store ptr %i.an, ptr %5, align 8, !tbaa !18, !alias.scope !2571
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !10, !noalias !2571
  store i64 %i.ao, ptr %i.ak, align 8, !tbaa !23, !alias.scope !2571
  br label %._crit_edge.i.i.i15

._crit_edge.i.i.i15:                              ; preds = %.noexc, %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i13
  %i.ap = phi ptr [ %i.an, %.noexc ], [ %i.ak, %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i13 ] ; 2 uses
  switch i64 %i.al, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i15
  %i.aq = load i8, ptr %i.aj, align 1, !tbaa !23, !noalias !2571
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr nonnull align 1 %i.aj, i64 %i.al, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i15
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !10, !noalias !2571 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !21, !alias.scope !2571
  %i.at = load ptr, ptr %5, align 8, !tbaa !18, !alias.scope !2571
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37, !noalias !2571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37, !noalias !2571
  call void @llvm.experimental.noalias.scope.decl(metadata !2574)
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.aw = load ptr, ptr %4, align 8, !tbaa !18, !noalias !2574 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.o
  br i1 %i.ax, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ay = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !2574 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.bb = load i64, ptr %i.o, align 8, !tbaa !23, !noalias !2574
  store i64 %i.bb, ptr %i.av, align 8, !tbaa !23, !alias.scope !2574
  %.pre.i = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !2574
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.bc = phi ptr [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.av, %bb.g ] ; 2 uses
  %i.bd = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ay, %bb.g ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 7 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !24, !alias.scope !2574
  %i.bg = load ptr, ptr %5, align 8, !tbaa !18, !noalias !2574 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, %i.ak
  br i1 %i.bh, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bi = load i64, ptr %i.as, align 8, !tbaa !21, !noalias !2574 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bj)
  %i.bk = add nuw nsw i64 %i.bi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.bk, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !18, !alias.scope !2574
  %i.bl = load i64, ptr %i.ak, align 8, !tbaa !23, !noalias !2574
  store i64 %i.bl, ptr %i.bf, align 8, !tbaa !23, !alias.scope !2574
  %.pre3.i = load i64, ptr %i.as, align 8, !tbaa !21, !noalias !2574
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i, %bb.h
  %i.bm = phi ptr [ %i.bf, %bb.h ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i ] ; 2 uses
  %i.bn = phi i64 [ %i.bi, %bb.h ], [ %.pre3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !21, !alias.scope !2574
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bp, ptr %0, align 8, !tbaa !24
  %i.bq = icmp eq ptr %i.bc, %i.av
  br i1 %i.bq, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.br = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i64 %i.bd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.bs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  store ptr %i.bc, ptr %0, align 8, !tbaa !18
  %i.bt = load i64, ptr %i.av, align 8, !tbaa !23
  store i64 %i.bt, ptr %i.bp, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bd, ptr %i.bu, align 8, !tbaa !21
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !24
  %i.bx = icmp eq ptr %i.bm, %i.bf
  br i1 %i.bx, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.by = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, ptr noundef nonnull align 8 dereferenceable(1) %i.bf, i64 %i.bz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.bm, ptr %i.bv, align 8, !tbaa !18
  %i.ca = load i64, ptr %i.bf, align 8, !tbaa !23
  store i64 %i.ca, ptr %i.bw, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bn, ptr %i.cb, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

bb.l:                                             ; preds = %.noexc.i.i16
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.cd = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.o
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.l
  %i.cf = load i64, ptr %i.o, align 8, !tbaa !23
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %i.cc
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !23
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !23
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2293
  %i.c = icmp eq i64 %i.b, 0
end_hunk_2
begin_hunk_3_@_ZNK4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JEEEEERKSt4pairIKSA_SA_EPSH_EmiESK_:bb.a
  %i.bg = icmp eq i64 %i.bd, %i.ac
  %or.cond60.i = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond60.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JEEEEERKSt4pairIKSA_SA_EPSH_E13distance_slowESK_.exit, label %bb.k

bb.k:                                             ; preds = %.preheader65.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 10
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !23
  %.not.i = icmp ult i8 %i.bc, %i.bi
  br i1 %.not.i, label %.backedge, label %.preheader65.i, !llvm.loop !2645

_ZNK4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JEEEEERKSt4pairIKSA_SA_EPSH_E13distance_slowESK_.exit: ; preds = %bb.h, %bb.i, %.preheader65.i
  %.pn.i = phi i64 [ %i.av, %.preheader65.i ], [ %i.ac, %bb.h ], [ %i.av, %bb.i ]
  %.055.i = add i64 %.pn.i, %.250.i
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %_ZNK4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JEEEEERKSt4pairIKSA_SA_EPSH_E13distance_slowESK_.exit, %bb.c
  %.0 = phi i64 [ %i.h, %bb.c ], [ %.055.i, %_ZNK4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JEEEEERKSt4pairIKSA_SA_EPSH_E13distance_slowESK_.exit ], [ 0, %bb.d ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2293
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !2286
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_JEEEE16clear_and_deleteEPSB_PSaISt4pairIKS9_S9_EE(ptr noundef %i.d, ptr noundef nonnull %i.e)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 144115188075855871
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.304) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2304
  %i.d = load ptr, ptr %0, align 8, !tbaa !2300   ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 6
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit, label %bb.g

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2302 ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = shl nuw nsw i64 %1, 6
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #35 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2649)
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.p, ptr %.012.i.i.i, align 8, !tbaa !24, !alias.scope !2646, !noalias !2649
  %i.q = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !2649, !noalias !2646 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !21, !alias.scope !2649, !noalias !2646 ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false), !alias.scope !2651
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.q, ptr %.012.i.i.i, align 8, !tbaa !18, !alias.scope !2646, !noalias !2649
  %i.x = load i64, ptr %i.r, align 8, !tbaa !23, !alias.scope !2649, !noalias !2646
  store i64 %i.x, ptr %i.p, align 8, !tbaa !23, !alias.scope !2646, !noalias !2649
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !21, !alias.scope !2649, !noalias !2646
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.y = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.u, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !21, !alias.scope !2646, !noalias !2649
  store ptr %i.r, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !2649, !noalias !2646
  store i64 0, ptr %i.z, align 8, !tbaa !21, !alias.scope !2649, !noalias !2646
  store i8 0, ptr %i.r, align 8, !tbaa !23, !alias.scope !2649, !noalias !2646
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !24, !alias.scope !2646, !noalias !2649
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !18, !alias.scope !2649, !noalias !2646 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !21, !alias.scope !2649, !noalias !2646 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !2651
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !18, !alias.scope !2646, !noalias !2649
  %i.al = load i64, ptr %i.af, align 8, !tbaa !23, !alias.scope !2649, !noalias !2646
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !23, !alias.scope !2646, !noalias !2649
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !21, !alias.scope !2649, !noalias !2646
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i, %bb.e
  %i.am = phi i64 [ %i.ai, %bb.e ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !21, !alias.scope !2646, !noalias !2649
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !18, !alias.scope !2649, !noalias !2646
  store i64 0, ptr %i.an, align 8, !tbaa !21, !alias.scope !2649, !noalias !2646
  store i8 0, ptr %i.af, align 8, !tbaa !23, !alias.scope !2649, !noalias !2646
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %.not.i.i.i = icmp eq ptr %i.ap, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !2652

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !2300
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit
  %i.ar = phi ptr [ %.pre, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.ar, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !2304
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #36
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !2300
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.aw, ptr %i.j, align 8, !tbaa !2302
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 %1
  store ptr %i.ax, ptr %i.b, align 8, !tbaa !2304
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEclEi(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.470") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2653)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37, !noalias !2653
  %i.e = load i32, ptr %1, align 4, !tbaa !2308, !noalias !2653 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  store i8 0, ptr %i.f, align 1, !tbaa !23, !noalias !2653
  %.not11.i.i = icmp eq i32 %i.e, 0
  br i1 %.not11.i.i, label %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 14, %bb.a ] ; 2 uses
  %.0913.i.i = phi i32 [ %i.l, %.lr.ph.i.i ], [ %i.e, %bb.a ]
  %.01012.i.i = phi i32 [ %i.k, %.lr.ph.i.i ], [ %2, %bb.a ] ; 2 uses
  %i.g = trunc i32 %.01012.i.i to i8
  %i.h = and i8 %i.g, 63
  %i.i = add nuw nsw i8 %i.h, 32
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i.i
  store i8 %i.i, ptr %i.j, align 1, !tbaa !23, !noalias !2653
  %i.k = lshr i32 %.01012.i.i, 6
  %i.l = lshr i32 %.0913.i.i, 6                   ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i, label %.lr.ph.i.i, !llvm.loop !823

_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  %.0.lcssa.i.i = phi i64 [ 14, %bb.a ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.lcssa.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !24, !alias.scope !2653
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #37, !noalias !2653 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37, !noalias !2653
  store i64 %i.p, ptr %i.c, align 8, !tbaa !10, !noalias !2653
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !18, !alias.scope !2653
  %i.s = load i64, ptr %i.c, align 8, !tbaa !10, !noalias !2653
  store i64 %i.s, ptr %i.o, align 8, !tbaa !23, !alias.scope !2653
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i
  %i.t = phi ptr [ %i.r, %.noexc.i.i ], [ %i.o, %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i ] ; 2 uses
  switch i64 %i.p, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNK4absl12lts_2026052618container_internal9GeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEi.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.u = load i8, ptr %i.n, align 1, !tbaa !23, !noalias !2653
  store i8 %i.u, ptr %i.t, align 1, !tbaa !23
  br label %_ZNK4absl12lts_2026052618container_internal9GeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEi.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.n, i64 %i.p, i1 false)
  br label %_ZNK4absl12lts_2026052618container_internal9GeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEi.exit

_ZNK4absl12lts_2026052618container_internal9GeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEi.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.v = load i64, ptr %i.c, align 8, !tbaa !10, !noalias !2653 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.v, ptr %i.w, align 8, !tbaa !21, !alias.scope !2653
  %i.x = load ptr, ptr %3, align 8, !tbaa !18, !alias.scope !2653
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37, !noalias !2653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37, !noalias !2653
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37, !noalias !2656
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !2308, !noalias !2656 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  store i8 0, ptr %i.ab, align 1, !tbaa !23, !noalias !2656
  %.not11.i.i6 = icmp eq i32 %i.aa, 0
  br i1 %.not11.i.i6, label %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i13, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %_ZNK4absl12lts_2026052618container_internal9GeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEi.exit, %.lr.ph.i.i7
  %indvars.iv.i.i8 = phi i64 [ %indvars.iv.next.i.i11, %.lr.ph.i.i7 ], [ 14, %_ZNK4absl12lts_2026052618container_internal9GeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEi.exit ] ; 2 uses
  %.0913.i.i9 = phi i32 [ %i.ah, %.lr.ph.i.i7 ], [ %i.aa, %_ZNK4absl12lts_2026052618container_internal9GeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEi.exit ]
  %.01012.i.i10 = phi i32 [ %i.ag, %.lr.ph.i.i7 ], [ %2, %_ZNK4absl12lts_2026052618container_internal9GeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEi.exit ] ; 2 uses
  %i.ac = trunc i32 %.01012.i.i10 to i8
  %i.ad = and i8 %i.ac, 63
  %i.ae = add nuw nsw i8 %i.ad, 32
  %indvars.iv.next.i.i11 = add nsw i64 %indvars.iv.i.i8, -1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i8
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !23, !noalias !2656
  %i.ag = lshr i32 %.01012.i.i10, 6
  %i.ah = lshr i32 %.0913.i.i9, 6                 ; 2 uses
  %.not.i.i12 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i12, label %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i13, label %.lr.ph.i.i7, !llvm.loop !823

_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i13: ; preds = %.lr.ph.i.i7, %_ZNK4absl12lts_2026052618container_internal9GeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEi.exit
  %.0.lcssa.i.i14 = phi i64 [ 14, %_ZNK4absl12lts_2026052618container_internal9GeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEi.exit ], [ %indvars.iv.next.i.i11, %.lr.ph.i.i7 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.lcssa.i.i14
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ak, ptr %4, align 8, !tbaa !24, !alias.scope !2656
  %i.al = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #37, !noalias !2656 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37, !noalias !2656
  store i64 %i.al, ptr %i.a, align 8, !tbaa !10, !noalias !2656
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %.noexc.i.i16, label %._crit_edge.i.i.i15

.noexc.i.i16:                                     ; preds = %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i13
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i16
  store ptr %i.an, ptr %4, align 8, !tbaa !18, !alias.scope !2656
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !10, !noalias !2656
  store i64 %i.ao, ptr %i.ak, align 8, !tbaa !23, !alias.scope !2656
  br label %._crit_edge.i.i.i15

._crit_edge.i.i.i15:                              ; preds = %.noexc, %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i13
  %i.ap = phi ptr [ %i.an, %.noexc ], [ %i.ak, %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i13 ] ; 2 uses
  switch i64 %i.al, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i15
  %i.aq = load i8, ptr %i.aj, align 1, !tbaa !23, !noalias !2656
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr nonnull align 1 %i.aj, i64 %i.al, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i15
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !10, !noalias !2656 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !21, !alias.scope !2656
  %i.at = load ptr, ptr %4, align 8, !tbaa !18, !alias.scope !2656
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37, !noalias !2656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37, !noalias !2656
  call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !24, !alias.scope !2659
  %i.aw = load ptr, ptr %3, align 8, !tbaa !18, !noalias !2659 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.o
  br i1 %i.ax, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ay = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !2659 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  store ptr %i.aw, ptr %0, align 8, !tbaa !18, !alias.scope !2659
  %i.bb = load i64, ptr %i.o, align 8, !tbaa !23, !noalias !2659
  store i64 %i.bb, ptr %i.av, align 8, !tbaa !23, !alias.scope !2659
  %.pre.i = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !2659
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.bc = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ay, %bb.g ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !21, !alias.scope !2659
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !24, !alias.scope !2659
  %i.bg = load ptr, ptr %4, align 8, !tbaa !18, !noalias !2659 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.ak
  br i1 %i.bh, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bi = load i64, ptr %i.as, align 8, !tbaa !21, !noalias !2659 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bj)
  %i.bk = add nuw nsw i64 %i.bi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.bk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !18, !alias.scope !2659
  %i.bl = load i64, ptr %i.ak, align 8, !tbaa !23, !noalias !2659
  store i64 %i.bl, ptr %i.bf, align 8, !tbaa !23, !alias.scope !2659
  %.pre3.i = load i64, ptr %i.as, align 8, !tbaa !21, !noalias !2659
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i, %bb.h
  %i.bm = phi i64 [ %i.bi, %bb.h ], [ %.pre3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !21, !alias.scope !2659
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

bb.i:                                             ; preds = %.noexc.i.i16
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.bp = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.o
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.i
  %i.br = load i64, ptr %i.o, align 8, !tbaa !23
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %i.bo
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2302 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2300   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.303) #38
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !24
  %i.s = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !21   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !18
  %i.z = load i64, ptr %i.t, align 8, !tbaa !23
  store i64 %i.z, ptr %i.r, align 8, !tbaa !23
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.aa = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.w, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !21
  store ptr %i.t, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %i.ab, align 8, !tbaa !21
  store i8 0, ptr %i.t, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !24
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !18 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !21 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit

end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_16DoTestINS2_14unique_checkerINS0_9btree_mapINS0_4CordES6_St4lessIS6_ESaISt4pairIKS6_S6_EEEESt3mapIS6_S6_S8_SC_EEES9_IS6_S6_EEEvPKcPT_RKSt6vectorIT0_SaISN_EE:bb.a
  br i1 %i.att, label %_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINS0_4CordES4_St4lessIS4_ESaISt4pairIKS4_S4_EEEESt3mapIS4_S4_S6_SA_EED2Ev.exit, label %bb.qu

bb.qu:                                            ; preds = %_ZNSt3mapIN4absl12lts_202605264CordES2_St4lessIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit.i
  %i.atu = load ptr, ptr %21, align 16, !tbaa !2904
  invoke void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_4CordES4_JEEEE16clear_and_deleteEPS6_PSaISt4pairIKS4_S4_EE(ptr noundef %i.atu, ptr noundef nonnull %i.ko)
          to label %_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINS0_4CordES4_St4lessIS4_ESaISt4pairIKS4_S4_EEEESt3mapIS4_S4_S6_SA_EED2Ev.exit unwind label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.atv = landingpad { ptr, i32 }
          catch ptr null
  %i.atw = extractvalue { ptr, i32 } %i.atv, 0
  call void @__clang_call_terminate(ptr %i.atw) #39
  unreachable

_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINS0_4CordES4_St4lessIS4_ESaISt4pairIKS4_S4_EEEESt3mapIS4_S4_S6_SA_EED2Ev.exit: ; preds = %_ZNSt3mapIN4absl12lts_202605264CordES2_St4lessIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit.i, %bb.qu
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  %i.atx = load ptr, ptr %i.rn, align 16, !tbaa !85
  invoke void @_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.pw, ptr noundef %i.atx)
          to label %_ZNSt3mapIN4absl12lts_202605264CordES2_St4lessIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit.i921 unwind label %bb.qw

bb.qw:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINS0_4CordES4_St4lessIS4_ESaISt4pairIKS4_S4_EEEESt3mapIS4_S4_S6_SA_EED2Ev.exit
  %i.aty = landingpad { ptr, i32 }
          catch ptr null
  %i.atz = extractvalue { ptr, i32 } %i.aty, 0
  call void @__clang_call_terminate(ptr %i.atz) #39
  unreachable

_ZNSt3mapIN4absl12lts_202605264CordES2_St4lessIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit.i921: ; preds = %_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINS0_4CordES4_St4lessIS4_ESaISt4pairIKS4_S4_EEEESt3mapIS4_S4_S6_SA_EED2Ev.exit
  %i.aua = load i64, ptr %i.rk, align 16, !tbaa !2911
  %i.aub = icmp eq i64 %i.aua, 0
  br i1 %i.aub, label %_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINS0_4CordES4_St4lessIS4_ESaISt4pairIKS4_S4_EEEESt3mapIS4_S4_S6_SA_EED2Ev.exit922, label %bb.qx

bb.qx:                                            ; preds = %_ZNSt3mapIN4absl12lts_202605264CordES2_St4lessIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit.i921
  %i.auc = load ptr, ptr %17, align 16, !tbaa !2904
  invoke void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_4CordES4_JEEEE16clear_and_deleteEPS6_PSaISt4pairIKS4_S4_EE(ptr noundef %i.auc, ptr noundef nonnull %i.iy)
          to label %_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINS0_4CordES4_St4lessIS4_ESaISt4pairIKS4_S4_EEEESt3mapIS4_S4_S6_SA_EED2Ev.exit922 unwind label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  %i.aud = landingpad { ptr, i32 }
          catch ptr null
  %i.aue = extractvalue { ptr, i32 } %i.aud, 0
  call void @__clang_call_terminate(ptr %i.aue) #39
  unreachable

_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINS0_4CordES4_St4lessIS4_ESaISt4pairIKS4_S4_EEEESt3mapIS4_S4_S6_SA_EED2Ev.exit922: ; preds = %_ZNSt3mapIN4absl12lts_202605264CordES2_St4lessIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit.i921, %bb.qx
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %bb.qz

bb.qz:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINS0_4CordES4_St4lessIS4_ESaISt4pairIKS4_S4_EEEESt3mapIS4_S4_S6_SA_EED2Ev.exit922
  ret void

bb.ra:                                            ; preds = %_ZN7testing7MessageD2Ev.exit912, %bb.qc
  %.pn444.pn.pn = phi { ptr, i32 } [ %.pn444.pn, %_ZN7testing7MessageD2Ev.exit912 ], [ %.pn442, %bb.qc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #37
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.no, %bb.oo, %bb.ra, %bb.pp, %bb.op, %bb.mn, %.body, %bb.ir, %bb.jh, %bb.nn, %bb.ky, %bb.kf, %bb.kd, %bb.il, %bb.ij, %bb.hu, %bb.gx, %bb.gv, %bb.gb, %bb.fi, %bb.em, %bb.dl, %bb.dj, %bb.cg, %bb.ce
  %.pn455 = phi { ptr, i32 } [ %i.iv, %bb.cg ], [ %i.oi, %bb.dl ], [ %i.wd, %bb.gx ], [ %i.zh, %bb.il ], [ %i.acv, %bb.kf ], [ %i.zr, %bb.ir ], [ %i.aib, %bb.mn ], [ %i.amx, %bb.op ], [ %.pn426.pn.pn, %bb.nn ], [ %.pn420.pn.pn, %bb.ky ], [ %.pn414.pn.pn, %bb.kd ], [ %.pn359.pn.pn, %bb.ce ], [ %.pn401.pn.pn, %bb.ij ], [ %.pn395.pn.pn, %bb.hu ], [ %.pn389.pn.pn, %bb.gv ], [ %.pn383.pn.pn, %bb.gb ], [ %.pn377.pn.pn, %bb.fi ], [ %.pn371.pn.pn, %bb.em ], [ %.pn365.pn.pn, %bb.dj ], [ %.pn407.pn.pn, %bb.jh ], [ %.pn452, %.body ], [ %.pn438.pn.pn, %bb.pp ], [ %.pn432.pn.pn, %bb.oo ], [ %i.aka, %bb.no ], [ %.pn444.pn.pn, %bb.ra ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit35, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp36, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINS0_4CordES4_St4lessIS4_ESaISt4pairIKS4_S4_EEEESt3mapIS4_S4_S6_SA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %21) #37
  br label %bb.rb

bb.rb:                                            ; preds = %.loopexit.split-lp, %bb.bp
  %.pn455.pn = phi { ptr, i32 } [ %.pn455, %.loopexit.split-lp ], [ %i.hc, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  br label %bb.rc

bb.rc:                                            ; preds = %bb.rb, %bb.bk, %bb.bi
  %.pn458 = phi { ptr, i32 } [ %i.go, %bb.bk ], [ %.pn455.pn, %bb.rb ], [ %.pn353.pn.pn, %bb.bi ]
  call void @_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINS0_4CordES4_St4lessIS4_ESaISt4pairIKS4_S4_EEEESt3mapIS4_S4_S6_SA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2917   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2914 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIN4absl12lts_202605264CordES3_ES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairIN4absl12lts_202605264CordES3_EEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.m, %_ZSt8_DestroyISt4pairIN4absl12lts_202605264CordES3_EEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !23
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #39
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit.i.i.i.i:     ; preds = %bb.b, %.lr.ph.i.i
  %i.i = load i8, ptr %.05.i.i, align 1, !tbaa !23
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %_ZSt8_DestroyISt4pairIN4absl12lts_202605264CordES3_EEvPT_.exit.i.i

bb.d:                                             ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.i.i.i
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i)
          to label %_ZSt8_DestroyISt4pairIN4absl12lts_202605264CordES3_EEvPT_.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #39
  unreachable

_ZSt8_DestroyISt4pairIN4absl12lts_202605264CordES3_EEvPT_.exit.i.i: ; preds = %bb.d, %_ZN4absl12lts_202605264CordD2Ev.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIN4absl12lts_202605264CordES3_ES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2921

_ZSt8_DestroyIPSt4pairIN4absl12lts_202605264CordES3_ES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairIN4absl12lts_202605264CordES3_EEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !2917
  br label %_ZSt8_DestroyIPSt4pairIN4absl12lts_202605264CordES3_ES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairIN4absl12lts_202605264CordES3_ES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4absl12lts_202605264CordES3_ES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.n = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairIN4absl12lts_202605264CordES3_ES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.n, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4absl12lts_202605264CordES3_ES4_EvT_S6_RSaIT0_E.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2918
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #36
  br label %_ZNSt12_Vector_baseISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4absl12lts_202605264CordES3_ES4_EvT_S6_RSaIT0_E.exit, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINS0_4CordES4_St4lessIS4_ESaISt4pairIKS4_S4_EEEESt3mapIS4_S4_S6_SA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85
  invoke void @_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapIN4absl12lts_202605264CordES2_St4lessIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #39
  unreachable

_ZNSt3mapIN4absl12lts_202605264CordES2_St4lessIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !2911
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implINS0_4CordES5_JEEEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIN4absl12lts_202605264CordES2_St4lessIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !2904
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_4CordES4_JEEEE16clear_and_deleteEPS6_PSaISt4pairIKS4_S4_EE(ptr noundef %i.i, ptr noundef nonnull %i.j)
          to label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implINS0_4CordES5_JEEEEEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #39
  unreachable

_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implINS0_4CordES5_JEEEEEED2Ev.exit: ; preds = %_ZNSt3mapIN4absl12lts_202605264CordES2_St4lessIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairIKNS0_4CordES4_EEclEi(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.532") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %3 = alloca %"struct.std::pair.549", align 8    ; 6 uses
  %4 = alloca %"class.absl::lts_20260526::Cord", align 8 ; 6 uses
  %5 = alloca %"class.absl::lts_20260526::Cord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37, !noalias !3166
  %i.c = load i32, ptr %1, align 4, !tbaa !2925, !noalias !3166 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  store i8 0, ptr %i.d, align 1, !tbaa !23, !noalias !3166
  %.not11.i.i = icmp eq i32 %i.c, 0
  br i1 %.not11.i.i, label %_ZNK4absl12lts_2026052618container_internal9GeneratorINS0_4CordEEclEi.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 14, %bb.a ] ; 2 uses
  %.0913.i.i = phi i32 [ %i.j, %.lr.ph.i.i ], [ %i.c, %bb.a ]
  %.01012.i.i = phi i32 [ %i.i, %.lr.ph.i.i ], [ %2, %bb.a ] ; 2 uses
  %i.e = trunc i32 %.01012.i.i to i8
  %i.f = and i8 %i.e, 63
  %i.g = add nuw nsw i8 %i.f, 32
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i
  store i8 %i.g, ptr %i.h, align 1, !tbaa !23, !noalias !3166
  %i.i = lshr i32 %.01012.i.i, 6
  %i.j = lshr i32 %.0913.i.i, 6                   ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZNK4absl12lts_2026052618container_internal9GeneratorINS0_4CordEEclEi.exit, label %.lr.ph.i.i, !llvm.loop !823

_ZNK4absl12lts_2026052618container_internal9GeneratorINS0_4CordEEclEi.exit: ; preds = %.lr.ph.i.i, %bb.a
  %.0.lcssa.i.i = phi i64 [ 14, %bb.a ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.lcssa.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #37, !noalias !3166
  call void @_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %i.m, ptr nonnull %i.l, i32 noundef 9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37, !noalias !3166
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37, !noalias !3169
  %i.o = load i32, ptr %i.n, align 4, !tbaa !2925, !noalias !3169 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 0, ptr %i.p, align 1, !tbaa !23, !noalias !3169
  %.not11.i.i6 = icmp eq i32 %i.o, 0
  br i1 %.not11.i.i6, label %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %_ZNK4absl12lts_2026052618container_internal9GeneratorINS0_4CordEEclEi.exit, %.lr.ph.i.i7
  %indvars.iv.i.i8 = phi i64 [ %indvars.iv.next.i.i11, %.lr.ph.i.i7 ], [ 14, %_ZNK4absl12lts_2026052618container_internal9GeneratorINS0_4CordEEclEi.exit ] ; 2 uses
  %.0913.i.i9 = phi i32 [ %i.v, %.lr.ph.i.i7 ], [ %i.o, %_ZNK4absl12lts_2026052618container_internal9GeneratorINS0_4CordEEclEi.exit ]
  %.01012.i.i10 = phi i32 [ %i.u, %.lr.ph.i.i7 ], [ %2, %_ZNK4absl12lts_2026052618container_internal9GeneratorINS0_4CordEEclEi.exit ] ; 2 uses
  %i.q = trunc i32 %.01012.i.i10 to i8
  %i.r = and i8 %i.q, 63
  %i.s = add nuw nsw i8 %i.r, 32
  %indvars.iv.next.i.i11 = add nsw i64 %indvars.iv.i.i8, -1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i8
  store i8 %i.s, ptr %i.t, align 1, !tbaa !23, !noalias !3169
  %i.u = lshr i32 %.01012.i.i10, 6
  %i.v = lshr i32 %.0913.i.i9, 6                  ; 2 uses
  %.not.i.i12 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i12, label %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i, label %.lr.ph.i.i7, !llvm.loop !823

_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i: ; preds = %.lr.ph.i.i7, %_ZNK4absl12lts_2026052618container_internal9GeneratorINS0_4CordEEclEi.exit
  %.0.lcssa.i.i13 = phi i64 [ 14, %_ZNK4absl12lts_2026052618container_internal9GeneratorINS0_4CordEEclEi.exit ], [ %indvars.iv.next.i.i11, %.lr.ph.i.i7 ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.lcssa.i.i13
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %i.y = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #37, !noalias !3169
  invoke void @_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.y, ptr nonnull %i.x, i32 noundef 9)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit15 unwind label %bb.b

_ZN4absl12lts_202605264CordD2Ev.exit15:           ; preds = %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37, !noalias !3169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !1380
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !1380
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !1380
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  resume { ptr, i32 } %i.ab
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKN4absl12lts_202605264CordES2_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_202605264CordD2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #39
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.f = load i8, ptr %0, align 8, !tbaa !23
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %_ZN4absl12lts_202605264CordD2Ev.exit1

bb.d:                                             ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit1 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #39
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit1:            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implINS0_4CordES5_JEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2911
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_4CordES4_JEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !2904
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_4CordES4_JEEEE16clear_and_deleteEPS6_PSaISt4pairIKS4_S4_EE(ptr noundef %i.d, ptr noundef nonnull %i.e)
          to label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_4CordES4_JEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #39
  unreachable

_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_4CordES4_JEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairIN4absl12lts_202605264CordES2_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_202605264CordD2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #39
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.f = load i8, ptr %0, align 8, !tbaa !23
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %_ZN4absl12lts_202605264CordD2Ev.exit1

bb.d:                                             ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit1 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #39
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit1:            ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_4CordES4_JEEEE13insert_uniqueIS4_JRKSt4pairIKS4_S4_EEEES8_INS1_14btree_iteratorINS1_10btree_nodeIS5_EERSA_PSA_EEbERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.535") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2911
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #35 ; 5 uses
  store ptr %i.d, ptr %i.d, align 8, !tbaa !2940
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !2940
  store ptr %i.d, ptr %1, align 8, !tbaa !2940
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %bb.c
  %.sroa.02.0.in.i = phi ptr [ %1, %bb.c ], [ %i.an, %bb.l ]
  %.sroa.02.0.i = load ptr, ptr %.sroa.02.0.in.i, align 8, !tbaa !2940, !noalias !3172 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 10
  %i.j = load i8, ptr %i.i, align 1, !tbaa !23, !noalias !3172 ; 2 uses
  %.not25.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not25.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.thread.i.i.i.i, %.lr.ph.i.i.i.i
  %.01627.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %.2.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.thread.i.i.i.i ] ; 4 uses
  %.01726.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i ], [ %.219.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.thread.i.i.i.i ] ; 2 uses
  %i.m = add i64 %.01726.i.i.i.i, %.01627.i.i.i.i
  %i.n = lshr i64 %i.m, 1                         ; 6 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.n ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !23, !noalias !3172 ; 2 uses
  %i.q = trunc i8 %i.p to i1
  br i1 %i.q, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i8, ptr %2, align 8, !tbaa !23, !noalias !3172 ; 2 uses
  %i.s = trunc i8 %i.r to i1
  br i1 %i.s, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.0.copyload5.i.i.i.i.i.i.i.i = load i64, ptr %i.t, align 1, !noalias !3172 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.g, align 1, !noalias !3172 ; 2 uses
  %i.u = icmp eq i64 %.0.copyload5.i.i.i.i.i.i.i.i, %.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.u, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.0.copyload7.i.i.i.i.i.i.i.i = load i64, ptr %i.v, align 1, !noalias !3172 ; 2 uses
  %.0.copyload1.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !3172 ; 2 uses
  %i.w = icmp eq i64 %.0.copyload7.i.i.i.i.i.i.i.i, %.0.copyload1.i.i.i.i.i.i.i.i
  br i1 %i.w, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.x = sext i8 %i.p to i64
  %i.y = lshr exact i64 %i.x, 1                   ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN7testing8internal18CmpHelperOpFailureISt16reverse_iteratorIN4absl12lts_2026052618container_internal14btree_iteratorIKNS5_10btree_nodeINS5_15map_params_implINS4_4CordES9_JEEEEERKSt4pairIKS9_S9_EPSG_EEES2_INS6_ISB_RSF_PSF_EEEEENS_15AssertionResultEPKcSR_RKT_RKT0_SR_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNK4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS0_4CordES5_JEEEEERKSt4pairIKS5_S5_EPSC_EmiESF_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3050   ; 5 uses
  %i.b = icmp eq ptr %i.a, %1
  br i1 %i.b, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.sroa.6.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0.copyload.i.pre = load i32, ptr %.sroa.6.0..sroa_idx.i.phi.trans.insert, align 8
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.d = load i8, ptr %i.c, align 1, !tbaa !23
  %.not = icmp eq i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3052 ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub nsw i32 %i.f, %2
  %i.h = sext i32 %i.g to i64
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.f, %2
  br i1 %i.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.sroa.6.0.copyload.i = phi i32 [ %.sroa.6.0.copyload.i.pre, %._crit_edge ], [ %i.f, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !23
  %.not64.i = icmp eq i8 %i.k, 0
  %i.l = sub nsw i32 0, %2
  %i.m = sext i32 %i.l to i64
  br i1 %.not64.i, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.o = add i32 %2, 1
  %i.p = and i32 %i.o, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2940 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.s, i64 11
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !23
  %i.t = icmp eq i8 %.pre.i, 0
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.15280.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.s, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %.15280.i, i64 240
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2940 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 11
  %i.x = load i8, ptr %i.w, align 1, !tbaa !23
  %.not.i61.i = icmp eq i8 %i.x, 0
  br i1 %.not.i61.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3242

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f, %bb.e
  %.048104.i = phi i64 [ 1, %bb.f ], [ %i.m, %bb.e ], [ 1, %.lr.ph.i ]
  %.152.lcssa.i = phi ptr [ %i.s, %bb.f ], [ %1, %bb.e ], [ %i.v, %.lr.ph.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.152.lcssa.i, i64 8
  %i.z = load i8, ptr %i.y, align 1, !tbaa !23
  %i.aa = zext i8 %i.z to i64
  %i.ab = load ptr, ptr %.152.lcssa.i, align 8, !tbaa !2940
  %i.ac = sext i32 %.sroa.6.0.copyload.i to i64   ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %._crit_edge.i
  %.250.i = phi i64 [ %.048104.i, %._crit_edge.i ], [ %i.ax, %.backedge ] ; 2 uses
  %.146.i = phi i64 [ %i.aa, %._crit_edge.i ], [ %.146.i.be, %.backedge ] ; 2 uses
  %.1.i = phi ptr [ %i.ab, %._crit_edge.i ], [ %.1.i.be, %.backedge ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i, i64 240
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.146.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2940 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !23
  %.not.i62.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i62.i, label %.lr.ph83.i, label %bb.h

.lr.ph83.i:                                       ; preds = %bb.g, %.lr.ph83.i
  %.25382.i = phi ptr [ %i.aj, %.lr.ph83.i ], [ %i.af, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.25382.i, i64 240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2940 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 11
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !23
  %.not.i63.i = icmp eq i8 %i.al, 0
  br i1 %.not.i63.i, label %.lr.ph83.i, label %._crit_edge84.i, !llvm.loop !3243

._crit_edge84.i:                                  ; preds = %.lr.ph83.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i8, ptr %i.am, align 1, !tbaa !23
  %i.ao = zext i8 %i.an to i64
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !2940
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge84.i, %bb.g
  %.354.i = phi ptr [ %i.aj, %._crit_edge84.i ], [ %i.af, %bb.g ] ; 2 uses
  %.247.i = phi i64 [ %i.ao, %._crit_edge84.i ], [ %.146.i, %bb.g ] ; 3 uses
  %.2.i = phi ptr [ %i.ap, %._crit_edge84.i ], [ %.1.i, %bb.g ] ; 4 uses
  %i.aq = icmp eq ptr %.354.i, %i.a
  br i1 %i.aq, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS0_4CordES5_JEEEEERKSt4pairIKS5_S5_EPSC_E13distance_slowESF_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = icmp eq ptr %.2.i, %i.a
  %i.as = icmp eq i64 %.247.i, %i.ac
  %or.cond.i = select i1 %i.ar, i1 %i.as, i1 false
  %i.at = getelementptr inbounds nuw i8, ptr %.354.i, i64 10
  %i.au = load i8, ptr %i.at, align 1, !tbaa !23
  %i.av = zext i8 %i.au to i64                    ; 3 uses
  br i1 %or.cond.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS0_4CordES5_JEEEEERKSt4pairIKS5_S5_EPSC_E13distance_slowESF_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = add i64 %.250.i, 1
  %i.ax = add i64 %i.aw, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %.2.i, i64 10
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !23
  %i.ba = zext i8 %i.az to i64
  %.not.not.i = icmp samesign ult i64 %.247.i, %i.ba
  br i1 %.not.not.i, label %.backedge, label %.preheader65.i

.backedge:                                        ; preds = %bb.k, %bb.j
  %.146.i.be.in = phi i64 [ %.247.i, %bb.j ], [ %i.bd, %bb.k ]
  %.1.i.be = phi ptr [ %.2.i, %bb.j ], [ %i.be, %bb.k ]
  %.146.i.be = add nuw nsw i64 %.146.i.be.in, 1
  br label %bb.g, !llvm.loop !3244

.preheader65.i:                                   ; preds = %bb.j, %bb.k
  %.3.i = phi ptr [ %i.be, %bb.k ], [ %.2.i, %bb.j ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.3.i, i64 8
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !23  ; 2 uses
  %i.bd = zext i8 %i.bc to i64                    ; 2 uses
  %i.be = load ptr, ptr %.3.i, align 8, !tbaa !2940 ; 4 uses
  %i.bf = icmp eq ptr %i.be, %i.a
  %i.bg = icmp eq i64 %i.bd, %i.ac
  %or.cond60.i = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond60.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS0_4CordES5_JEEEEERKSt4pairIKS5_S5_EPSC_E13distance_slowESF_.exit, label %bb.k

bb.k:                                             ; preds = %.preheader65.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 10
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !23
  %.not.i = icmp ult i8 %i.bc, %i.bi
  br i1 %.not.i, label %.backedge, label %.preheader65.i, !llvm.loop !3245

_ZNK4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS0_4CordES5_JEEEEERKSt4pairIKS5_S5_EPSC_E13distance_slowESF_.exit: ; preds = %bb.h, %bb.i, %.preheader65.i
  %.pn.i = phi i64 [ %i.av, %.preheader65.i ], [ %i.ac, %bb.h ], [ %i.av, %bb.i ]
  %.055.i = add i64 %.pn.i, %.250.i
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %_ZNK4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS0_4CordES5_JEEEEERKSt4pairIKS5_S5_EPSC_E13distance_slowESF_.exit, %bb.c
  %.0 = phi i64 [ %i.h, %bb.c ], [ %.055.i, %_ZNK4absl12lts_2026052618container_internal14btree_iteratorIKNS1_10btree_nodeINS1_15map_params_implINS0_4CordES5_JEEEEERKSt4pairIKS5_S5_EPSC_E13distance_slowESF_.exit ], [ 0, %bb.d ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS0_4CordES4_JEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2911
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !2904
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS0_4CordES4_JEEEE16clear_and_deleteEPS6_PSaISt4pairIKS4_S4_EE(ptr noundef %i.d, ptr noundef nonnull %i.e)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairINS0_4CordES4_EEclEi(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.549") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %3 = alloca %"class.absl::lts_20260526::Cord", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20260526::Cord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37, !noalias !3246
  %i.c = load i32, ptr %1, align 4, !tbaa !2925, !noalias !3246 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  store i8 0, ptr %i.d, align 1, !tbaa !23, !noalias !3246
  %.not11.i.i = icmp eq i32 %i.c, 0
  br i1 %.not11.i.i, label %_ZNK4absl12lts_2026052618container_internal9GeneratorINS0_4CordEEclEi.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 14, %bb.a ] ; 2 uses
  %.0913.i.i = phi i32 [ %i.j, %.lr.ph.i.i ], [ %i.c, %bb.a ]
  %.01012.i.i = phi i32 [ %i.i, %.lr.ph.i.i ], [ %2, %bb.a ] ; 2 uses
  %i.e = trunc i32 %.01012.i.i to i8
  %i.f = and i8 %i.e, 63
  %i.g = add nuw nsw i8 %i.f, 32
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i
  store i8 %i.g, ptr %i.h, align 1, !tbaa !23, !noalias !3246
  %i.i = lshr i32 %.01012.i.i, 6
  %i.j = lshr i32 %.0913.i.i, 6                   ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZNK4absl12lts_2026052618container_internal9GeneratorINS0_4CordEEclEi.exit, label %.lr.ph.i.i, !llvm.loop !823

_ZNK4absl12lts_2026052618container_internal9GeneratorINS0_4CordEEclEi.exit: ; preds = %.lr.ph.i.i, %bb.a
  %.0.lcssa.i.i = phi i64 [ 14, %bb.a ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.lcssa.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #37, !noalias !3246
  call void @_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 %i.m, ptr nonnull %i.l, i32 noundef 9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37, !noalias !3246
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37, !noalias !3249
  %i.o = load i32, ptr %i.n, align 4, !tbaa !2925, !noalias !3249 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 0, ptr %i.p, align 1, !tbaa !23, !noalias !3249
  %.not11.i.i6 = icmp eq i32 %i.o, 0
  br i1 %.not11.i.i6, label %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %_ZNK4absl12lts_2026052618container_internal9GeneratorINS0_4CordEEclEi.exit, %.lr.ph.i.i7
  %indvars.iv.i.i8 = phi i64 [ %indvars.iv.next.i.i11, %.lr.ph.i.i7 ], [ 14, %_ZNK4absl12lts_2026052618container_internal9GeneratorINS0_4CordEEclEi.exit ] ; 2 uses
  %.0913.i.i9 = phi i32 [ %i.v, %.lr.ph.i.i7 ], [ %i.o, %_ZNK4absl12lts_2026052618container_internal9GeneratorINS0_4CordEEclEi.exit ]
  %.01012.i.i10 = phi i32 [ %i.u, %.lr.ph.i.i7 ], [ %2, %_ZNK4absl12lts_2026052618container_internal9GeneratorINS0_4CordEEclEi.exit ] ; 2 uses
  %i.q = trunc i32 %.01012.i.i10 to i8
  %i.r = and i8 %i.q, 63
  %i.s = add nuw nsw i8 %i.r, 32
  %indvars.iv.next.i.i11 = add nsw i64 %indvars.iv.i.i8, -1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i8
  store i8 %i.s, ptr %i.t, align 1, !tbaa !23, !noalias !3249
  %i.u = lshr i32 %.01012.i.i10, 6
  %i.v = lshr i32 %.0913.i.i9, 6                  ; 2 uses
  %.not.i.i12 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i12, label %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i, label %.lr.ph.i.i7, !llvm.loop !823

_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i: ; preds = %.lr.ph.i.i7, %_ZNK4absl12lts_2026052618container_internal9GeneratorINS0_4CordEEclEi.exit
  %.0.lcssa.i.i13 = phi i64 [ 14, %_ZNK4absl12lts_2026052618container_internal9GeneratorINS0_4CordEEclEi.exit ], [ %indvars.iv.next.i.i11, %.lr.ph.i.i7 ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.lcssa.i.i13
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %i.y = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #37, !noalias !3249
  invoke void @_ZN4absl12lts_202605264CordC2ESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %i.y, ptr nonnull %i.x, i32 noundef 9)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit unwind label %bb.b

_ZN4absl12lts_202605264CordD2Ev.exit:             ; preds = %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37, !noalias !3249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1380
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !1380
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

bb.b:                                             ; preds = %_ZN4absl12lts_2026052618container_internal14GenerateDigitsEPcjj.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2914 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2917   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.303) #38
  unreachable

_ZNKSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !1380
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !1380
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3252)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !1380, !alias.scope !3255
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i8 0, i64 16, i1 false), !alias.scope !3257, !noalias !3252
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !1380, !alias.scope !3255
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !alias.scope !3257, !noalias !3252
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !3258

_ZNSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3259)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i19, i64 16, i1 false), !tbaa.struct !1380, !alias.scope !3262
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i19, i8 0, i64 16, i1 false), !alias.scope !3264, !noalias !3259
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !1380, !alias.scope !3262
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false), !alias.scope !3264, !noalias !3259
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !3258

_ZNSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2918
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #36
  br label %_ZNSt12_Vector_baseISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt4pairIN4absl12lts_202605264CordES3_ESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !2917
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !2914
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !2918
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIN4absl12lts_202605264CordES5_ESt6vectorIS6_SaIS6_EEEEPS6_ET0_T_SF_SE_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructISt4pairIN4absl12lts_202605264CordES3_EJRKS4_EEvPT_DpOT0_.exit
  %.016 = phi ptr [ %i.u, %_ZSt10_ConstructISt4pairIN4absl12lts_202605264CordES3_EJRKS4_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 9 uses
  %.sroa.08.015 = phi ptr [ %i.t, %_ZSt10_ConstructISt4pairIN4absl12lts_202605264CordES3_EJRKS4_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 8 uses
  %i.a = load i8, ptr %.sroa.08.015, align 1, !tbaa !23
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not6.i.i.i.i = icmp ne ptr %i.d, null
  %.not.not.i.i.i.i = select i1 %i.b, i1 %.not6.i.i.i.i, i1 false
  br i1 %.not.not.i.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i32 2 monotonic, align 4 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store ptr %i.d, ptr %i.g, align 8, !tbaa !23
  store i64 1, ptr %.016, align 8, !tbaa !23
  %i.h = load i64, ptr %.sroa.08.015, align 8, !tbaa !23
  %.not.i.i.i.i.i = icmp ult i64 %i.h, 2
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i.i, label %bb.c, !prof !422

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2026052613cord_internal9CordzInfo18MaybeTrackCordImplERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(32) %.016, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.015, i32 noundef 8)
          to label %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i.i unwind label %bb.i

bb.d:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.016, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.015, i64 16, i1 false), !tbaa.struct !1380
  br label %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i.i

_ZN4absl12lts_202605264CordC2ERKS1_.exit.i.i:     ; preds = %bb.c, %bb.d, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 16 ; 4 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !23
  %i.l = trunc i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not6.i.i4.i.i = icmp ne ptr %i.n, null
  %.not.not.i.i5.i.i = select i1 %i.l, i1 %.not6.i.i4.i.i, i1 false
  br i1 %.not.not.i.i5.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = atomicrmw add ptr %i.o, i32 2 monotonic, align 4 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.016, i64 24
  store ptr %i.n, ptr %i.q, align 8, !tbaa !23
  store i64 1, ptr %i.i, align 8, !tbaa !23
  %i.r = load i64, ptr %i.j, align 8, !tbaa !23
  %.not.i.i.i6.i.i = icmp ult i64 %i.r, 2
  br i1 %.not.i.i.i6.i.i, label %_ZSt10_ConstructISt4pairIN4absl12lts_202605264CordES3_EJRKS4_EEvPT_DpOT0_.exit, label %bb.f, !prof !422

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4absl12lts_2026052613cord_internal9CordzInfo18MaybeTrackCordImplERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i32 noundef 8)
          to label %_ZSt10_ConstructISt4pairIN4absl12lts_202605264CordES3_EJRKS4_EEvPT_DpOT0_.exit unwind label %bb.h

bb.g:                                             ; preds = %_ZN4absl12lts_202605264CordC2ERKS1_.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !1380
  br label %_ZSt10_ConstructISt4pairIN4absl12lts_202605264CordES3_EJRKS4_EEvPT_DpOT0_.exit

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(32) %.016) #37
  br label %.body

_ZSt10_ConstructISt4pairIN4absl12lts_202605264CordES3_EJRKS4_EEvPT_DpOT0_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.t, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3265

bb.i:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  br label %.body
end_hunk_5
