Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/version?download=true
inline.NumInlined: 3891
inline.NumDeleted: 1510
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE12_M_lookaheadEl:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #27
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i.i13
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, %i.bw
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i13, !llvm.loop !22

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.bq, align 8, !tbaa !339
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.l
  %i.cf = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.bu, %bb.l ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !341
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ck) #27
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i: ; preds = %bb.n, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !342 ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i14, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !343
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cr) #27
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i:    ; preds = %bb.o, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i
  %i.cs = load ptr, ptr %3, align 8, !tbaa !60    ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !61
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cx) #27
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.cy = load ptr, ptr %2, align 8, !tbaa !60    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit
  %i.cz = load ptr, ptr %i.s, align 8, !tbaa !61
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dc) #27
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i1 %i.ag

bb.r:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.f ], [ %i.ao, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.dd = load ptr, ptr %2, align 8, !tbaa !60    ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit16, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.de = load ptr, ptr %i.s, align 8, !tbaa !61
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dh) #27
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit16

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit16: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIPKcNSt7__cxx1112regex_traitsIcEEE8_M_applyES2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !375, !range !50, !noundef !51
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %4 to i64
  %i.g = ptrtoint ptr %3 to i64
  %i.h = sub i64 %i.f, %i.g
  %.not.i = icmp eq i64 %i.e, %i.h
  br i1 %.not.i, label %bb.c, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.not.i.i.i.i.i, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %3, i64 %i.e)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !773, !nonnull !51, !align !170
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #26
  %i.k = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #26
  %i.l = load ptr, ptr %5, align 8, !tbaa !101
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !107  ; 5 uses
  %.not.not.i = icmp eq ptr %i.p, null
  br i1 %.not.not.i, label %bb.f, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.q = ptrtoint ptr %2 to i64
  %i.r = ptrtoint ptr %1 to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ptrtoint ptr %4 to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  %.not.i12 = icmp eq i64 %i.s, %i.v
  br i1 %.not.i12, label %bb.g, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit

bb.g:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %.not10.i.i = icmp eq ptr %1, %2
  br i1 %.not10.i.i, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %3, %bb.g ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %1, %bb.g ] ; 2 uses
  %i.w = load i8, ptr %.0811.i.i, align 1, !tbaa !57
  %i.x = load i8, ptr %.012.i.i, align 1, !tbaa !57
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef signext i8 %i.aa(ptr noundef nonnull align 8 dereferenceable(570) %i.p, i8 noundef signext %i.w), !inline_history !771
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef signext i8 %i.ae(ptr noundef nonnull align 8 dereferenceable(570) %i.p, i8 noundef signext %i.x), !inline_history !771
  %i.ag = icmp eq i8 %i.ab, %i.af                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1
  %.not.i.i = icmp ne ptr %i.ah, %2
  %or.cond.not = select i1 %i.ag, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit, !llvm.loop !772

bb.h:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %i.aj

_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit:           ; preds = %.lr.ph.i.i, %bb.g, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ %.not9.i.i.i.i.i, %bb.d ], [ false, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit ], [ true, %bb.g ], [ %i.ag, %.lr.ph.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !365  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !60     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.i = load ptr, ptr %0, align 8, !tbaa !60     ; 8 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i, !prof !69

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29 ; 4 uses
  %3 = icmp eq ptr %i.c, %i.b
  br i1 %3, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -24
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 24
  %i.s = add i64 %.fr.i, 24
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.t, i1 false)
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit: ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.u, ptr %i.g, align 8, !tbaa !61
  br label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !365  ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.y, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp sgt i64 %i.f, 0
  br i1 %i.z, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.aa = udiv exact i64 %i.f, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.aa, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.ab = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !223
  store <2 x ptr> %i.ab, ptr %.0811.i.i.i.i.i, align 8, !tbaa !223
  %i.ac = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !360, !range !50, !noundef !51
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  store i8 %i.ad, ptr %i.ae, align 8, !tbaa !360
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.ah = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ai = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, !llvm.loop !774

bb.h:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.ak = icmp sgt i64 %i.y, 0
  br i1 %i.ak, label %.lr.ph.preheader.i.i.i.i.i26, label %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit

.lr.ph.preheader.i.i.i.i.i26:                     ; preds = %bb.h
  %i.al = udiv exact i64 %i.y, 24
  br label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27, %.lr.ph.preheader.i.i.i.i.i26
  %.012.i.i.i.i.i28 = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i27 ], [ %i.al, %.lr.ph.preheader.i.i.i.i.i26 ] ; 2 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i27 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i26 ] ; 3 uses
  %.0910.i.i.i.i.i30 = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i27 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i26 ] ; 3 uses
  %i.am = load <2 x ptr>, ptr %.0910.i.i.i.i.i30, align 8, !tbaa !223
  store <2 x ptr> %i.am, ptr %.0811.i.i.i.i.i29, align 8, !tbaa !223
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 16
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !360, !range !50, !noundef !51
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 16
  store i8 %i.ao, ptr %i.ap, align 8, !tbaa !360
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 24
  %i.as = add nsw i64 %.012.i.i.i.i.i28, -1
  %i.at = icmp samesign ugt i64 %.012.i.i.i.i.i28, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit, !llvm.loop !775

_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i.i27, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.aj, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %i.w, %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %i.aj, %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.au, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !776

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !60
  br label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit
  %i.aw = phi ptr [ %2, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit ], [ %i.i, %bb.g ], [ %i.i, %_ZSt4copyIPNSt7__cxx119sub_matchIPKcEES5_ET0_T_S7_S6_.exit ], [ %i.i, %.lr.ph.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.f
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !365
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 8 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge283, %bb.a
  %.tr38 = phi i64 [ %2, %bb.a ], [ %.tr38.be284, %tailrecurse.backedge283 ] ; 5 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !376, !nonnull !51, !align !170 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !118
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %.tr38 ; 19 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !134
  switch i32 %i.n, label %common.ret [
    i32 2, label %bb.b
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 4, label %bb.m
    i32 5, label %bb.r
    i32 6, label %bb.t
    i32 7, label %bb.u
    i32 11, label %bb.v
    i32 3, label %bb.z
    i32 12, label %bb.aa
    i32 1, label %bb.ai
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !57, !range !50, !noundef !51
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !342
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.tr38 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !352  ; 4 uses
  %i.v = icmp ne i32 %i.u, 0
  %.sroa.030.0.copyload.pre = load ptr, ptr %i.s, align 8 ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !354 ; 2 uses
  %.not.i26 = icmp eq ptr %.sroa.030.0.copyload.pre, %.pre
  %or.cond = select i1 %i.v, i1 %.not.i26, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %.pre, ptr %i.s, align 8, !tbaa !351
  store i32 1, ptr %i.t, align 8, !tbaa !352
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !57
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.x), !inline_history !777
  store ptr %.sroa.030.0.copyload.pre, ptr %i.s, align 8, !tbaa !351
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit.sink.split

bb.e:                                             ; preds = %bb.c
  %i.y = icmp slt i32 %i.u, 2
  br i1 %i.y, label %bb.f, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.u, 1
  store i32 %i.z, ptr %i.t, align 8, !tbaa !352
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !57
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ab), !inline_history !777
  %i.ac = load i32, ptr %i.t, align 8, !tbaa !352
  %i.ad = add nsw i32 %i.ac, -1
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit.sink.split

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit.sink.split: ; preds = %bb.f, %bb.d
  %.sink = phi i32 [ %i.u, %bb.d ], [ %i.ad, %bb.f ]
  store i32 %.sink, ptr %i.t, align 8, !tbaa !352
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit: ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit.sink.split, %bb.e
  %i.ae = load i8, ptr %i.i, align 4, !tbaa !355, !range !50, !noundef !51
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %common.ret, label %tailrecurse.backedge283

tailrecurse.backedge283:                          ; preds = %bb.aj, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE16_M_rep_once_moreENS9_11_Match_modeEl.exit, %bb.o, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE9_M_at_endEv.exit, %bb.t, %bb.u
  %.tr38.be284.in = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.tr38.be284 = load i64, ptr %.tr38.be284.in, align 8, !tbaa !121
  br label %tailrecurse

bb.g:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !121
  tail call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ah), !inline_history !778
  %i.ai = load i8, ptr %i.i, align 4, !tbaa !355, !range !50, !noundef !51
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %common.ret, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !376, !nonnull !51, !align !170
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !118
  %i.an = getelementptr inbounds nuw [48 x i8], ptr %i.am, i64 %.tr38 ; 2 uses
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !342
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %.tr38 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 5 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !352 ; 4 uses
  %i.as = icmp ne i32 %i.ar, 0
  %.sroa.0.0.copyload.pre.i = load ptr, ptr %i.ap, align 8 ; 2 uses
end_hunk_0
