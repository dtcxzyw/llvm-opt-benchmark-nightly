Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/example?download=true
inline.NumInlined: 58056
inline.NumDeleted: 19618
loop-unroll.NumCompletelyUnrolled: 80
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl:bb.a
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ck) #58
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i.i14
  %i.cl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cl, %i.cd
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i14, !llvm.loop !145

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.bx, align 8, !tbaa !2485
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.l
  %i.cm = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.cb, %bb.l ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !2487
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cr) #58
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i: ; preds = %bb.n, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !2488 ; 3 uses
  %.not.i.i.i.i15 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i15, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !2489
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #58
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.o, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.cz = load ptr, ptr %3, align 8, !tbaa !1435  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1436
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.de) #58
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  %i.df = load ptr, ptr %2, align 8, !tbaa !1435  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit
  %i.dg = load ptr, ptr %i.s, align 8, !tbaa !1436
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dj) #58
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret i1 %i.ae

bb.r:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.an, %bb.f ], [ %i.am, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  %i.dk = load ptr, ptr %2, align 8, !tbaa !1435  ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit17, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dl = load ptr, ptr %i.s, align 8, !tbaa !1436
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.do) #58
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit17

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit17: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_12regex_traitsIcEEE8_M_applyESB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !2528, !range !518, !noundef !469
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
  br i1 %.not.i, label %bb.c, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.not.i.i.i.i.i, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %3, i64 %i.e)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #45
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !7049, !nonnull !469, !align !470
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #45
  %i.k = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #45
  %i.l = load ptr, ptr %5, align 8, !tbaa !2530
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2534
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2536 ; 5 uses
  %.not.not.i = icmp eq ptr %i.p, null
  br i1 %.not.not.i, label %bb.f, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt16__throw_bad_castv() #59
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #45
  %i.q = ptrtoint ptr %2 to i64
  %i.r = ptrtoint ptr %1 to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ptrtoint ptr %4 to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  %.not.i16 = icmp eq i64 %i.s, %i.v
  br i1 %.not.i16, label %bb.g, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.g:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %i.w = icmp eq ptr %1, %2
  br i1 %i.w, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.05.09.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %1, %bb.g ] ; 2 uses
  %.sroa.02.08.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %3, %bb.g ] ; 2 uses
  %i.x = load i8, ptr %.sroa.05.09.i.i, align 1, !tbaa !295
  %i.y = load i8, ptr %.sroa.02.08.i.i, align 1, !tbaa !295
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !279
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef signext i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(570) %i.p, i8 noundef signext %i.x), !inline_history !7047
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !279
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call noundef signext i8 %i.af(ptr noundef nonnull align 8 dereferenceable(570) %i.p, i8 noundef signext %i.y), !inline_history !7047
  %i.ah = icmp eq i8 %i.ac, %i.ag                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i.i, i64 1
  %i.ak = icmp ne ptr %i.ai, %2
  %or.cond.not = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit, !llvm.loop !7048

bb.h:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #45
  resume { ptr, i32 } %i.al

_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit: ; preds = %.lr.ph.i.i, %bb.g, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ %.not9.i.i.i.i.i, %bb.d ], [ false, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit ], [ true, %bb.g ], [ %i.ah, %.lr.ph.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2511 ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1435   ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1436
  %i.i = load ptr, ptr %0, align 8, !tbaa !1435   ; 8 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE11_M_allocateEm.exit.i, !prof !300

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #59
  unreachable

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #60 ; 4 uses
  %3 = icmp eq ptr %i.c, %i.b
  br i1 %3, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE20_M_allocate_and_copyINS3_IPKSC_SE_EEEEPSC_mT_SK_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -24
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 24
  %i.s = add i64 %.fr.i, 24
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.t, i1 false)
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE20_M_allocate_and_copyINS3_IPKSC_SE_EEEEPSC_mT_SK_.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE20_M_allocate_and_copyINS3_IPKSC_SE_EEEEPSC_mT_SK_.exit: ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE20_M_allocate_and_copyINS3_IPKSC_SE_EEEEPSC_mT_SK_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #58
  br label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE20_M_allocate_and_copyINS3_IPKSC_SE_EEEEPSC_mT_SK_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !1435
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.u, ptr %i.g, align 8, !tbaa !1436
  br label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2511 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.y, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp sgt i64 %i.f, 0
  br i1 %i.z, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.aa = udiv exact i64 %i.f, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.aa, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.ab = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !593
  store i64 %i.ab, ptr %.0811.i.i.i.i.i, align 8, !tbaa !593
  %i.ac = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !593
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !593
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !2508, !range !518, !noundef !469
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  store i8 %i.ag, ptr %i.ah, align 8, !tbaa !2508
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.ak = add nsw i64 %.012.i.i.i.i.i, -1
  %i.al = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.al, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit, !llvm.loop !7050

bb.h:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.an = icmp sgt i64 %i.y, 0
  br i1 %i.an, label %.lr.ph.preheader.i.i.i.i.i26, label %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit

.lr.ph.preheader.i.i.i.i.i26:                     ; preds = %bb.h
  %i.ao = udiv exact i64 %i.y, 24
  br label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27, %.lr.ph.preheader.i.i.i.i.i26
  %.012.i.i.i.i.i28 = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i27 ], [ %i.ao, %.lr.ph.preheader.i.i.i.i.i26 ] ; 2 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i27 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i26 ] ; 4 uses
  %.0910.i.i.i.i.i30 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i27 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i26 ] ; 4 uses
  %i.ap = load i64, ptr %.0910.i.i.i.i.i30, align 8, !tbaa !593
  store i64 %i.ap, ptr %.0811.i.i.i.i.i29, align 8, !tbaa !593
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 8
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !593
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !593
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 16
  %i.au = load i8, ptr %i.at, align 8, !tbaa !2508, !range !518, !noundef !469
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 16
  store i8 %i.au, ptr %i.av, align 8, !tbaa !2508
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 24
  %i.ay = add nsw i64 %.012.i.i.i.i.i28, -1
  %i.az = icmp samesign ugt i64 %.012.i.i.i.i.i28, 1
  br i1 %i.az, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit, !llvm.loop !7051

_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i.i27, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.am, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %i.w, %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %i.am, %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !7052

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !1435
  br label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit
  %i.bc = phi ptr [ %2, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit.loopexit ], [ %i.i, %bb.g ], [ %i.i, %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit ], [ %i.i, %.lr.ph.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.f
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !2511
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 8 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge282, %bb.a
  %.tr37 = phi i64 [ %2, %bb.a ], [ %.tr37.be283, %tailrecurse.backedge282 ] ; 5 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !2545, !nonnull !469, !align !470 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2496
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %.tr37 ; 19 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !2520
  switch i32 %i.n, label %common.ret [
    i32 2, label %bb.b
    i32 8, label %bb.n
    i32 9, label %bb.o
    i32 4, label %bb.p
    i32 5, label %bb.u
    i32 6, label %bb.w
    i32 7, label %bb.x
    i32 11, label %bb.y
    i32 3, label %bb.ac
    i32 12, label %bb.ad
    i32 1, label %bb.am
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !295, !range !518, !noundef !469
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !2488
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.tr37 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !2498 ; 4 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.sroa.029.0.copyload.pre = load i64, ptr %i.s, align 8
  %.pre = load i64, ptr %i.c, align 8, !tbaa !593
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.x to i64
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.ab = phi i64 [ %.pre, %._crit_edge ], [ %i.aa, %bb.d ]
  %.sroa.029.0.copyload = phi i64 [ %.sroa.029.0.copyload.pre, %._crit_edge ], [ %i.z, %bb.d ]
  store i64 %i.ab, ptr %i.s, align 8, !tbaa !593
  store i32 1, ptr %i.t, align 8, !tbaa !2498
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !295
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ad), !inline_history !7053
  store i64 %.sroa.029.0.copyload, ptr %i.s, align 8, !tbaa !593
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit.sink.split

bb.f:                                             ; preds = %bb.d
  %i.ae = icmp slt i32 %i.u, 2
  br i1 %i.ae, label %bb.g, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit

bb.g:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.u, 1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !2498
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !295
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ah), !inline_history !7053
  %i.ai = load i32, ptr %i.t, align 8, !tbaa !2498
  %i.aj = add nsw i32 %i.ai, -1
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit.sink.split

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit.sink.split: ; preds = %bb.g, %bb.e
  %.sink = phi i32 [ %i.u, %bb.e ], [ %i.aj, %bb.g ]
  store i32 %.sink, ptr %i.t, align 8, !tbaa !2498
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit.sink.split, %bb.f
  %i.ak = load i8, ptr %i.i, align 4, !tbaa !2503, !range !518, !noundef !469
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %common.ret, label %tailrecurse.backedge282

tailrecurse.backedge282:                          ; preds = %bb.an, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit, %bb.r, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_at_endEv.exit, %bb.w, %bb.x
  %.tr37.be283.in = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.tr37.be283 = load i64, ptr %.tr37.be283.in, align 8, !tbaa !2521
  br label %tailrecurse

end_hunk_0
begin_hunk_1_@_ZN7cinatra15radix_tree_node12insert_childEcSt10shared_ptrIS0_E:bb.a
  %i.x = load i64, ptr %i.u, align 8, !tbaa !295
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.y = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.t, %i.y
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.z = sub i64 %i.b, %.010.lcssa.i              ; 2 uses
  %.not28.i.i = icmp eq i64 %i.b, %.010.lcssa.i
  br i1 %.not28.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS4_EEc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %cond31.i.i = icmp eq i64 %i.z, 1
  br i1 %cond31.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = load i8, ptr %i.r, align 1, !tbaa !295
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !295
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS4_EEc.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.r, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS4_EEc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %.010.lcssa.i, i64 noundef 0, ptr noundef null, i64 noundef 1)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS4_EEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEN9__gnu_cxx17__normal_iteratorIPKcS4_EEc.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !303
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.010.lcssa.i
  store i8 %2, ptr %i.ad, align 1, !tbaa !295
  store i64 %i.t, ptr %i.a, align 8, !tbaa !304
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !303
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.t
  store i8 0, ptr %i.af, align 1, !tbaa !295
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1048
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.010.lcssa.i
  %i.aj = tail call ptr @_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EERS8_(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load <2 x ptr>, ptr %3, align 8, !tbaa !325
  store ptr null, ptr %i.ak, align 8, !tbaa !491
  store <2 x ptr> %i.al, ptr %0, align 8, !tbaa !325
  store ptr null, ptr %3, align 8, !tbaa !1821
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7cinatra15radix_tree_node16add_coro_handlerESt8functionIFN12async_simple4coro4LazyIvEERNS_17coro_http_requestERNS_18coro_http_responseEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr nofreeobj noundef align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.cinatra::coro_handler_t", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #45
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !299
  %i.b = load ptr, ptr %2, align 8, !tbaa !303    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !304  ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.991) #59
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !300

.noexc6.i:                                        ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #59
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #60 ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !303
  store i64 %i.d, ptr %i.a, align 8, !tbaa !295
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !295
  store i8 %i.k, ptr %i.j, align 1, !tbaa !295
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !304
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !295
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !513  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN12async_simple4coro4LazyIvEERN7cinatra17coro_http_requestERNS4_18coro_http_responseEEEC2ERKSA_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.s = load <2 x ptr>, ptr %i.p, align 8, !tbaa !325
  store <2 x ptr> %i.s, ptr %i.o, align 8, !tbaa !325
  br label %_ZNSt8functionIFN12async_simple4coro4LazyIvEERN7cinatra17coro_http_requestERNS4_18coro_http_responseEEEC2ERKSA_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !513  ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i32 noundef 3)
          to label %.body unwind label %bb.j      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #57
  unreachable

_ZNSt8functionIFN12async_simple4coro4LazyIvEERN7cinatra17coro_http_requestERNS4_18coro_http_responseEEEC2ERKSA_.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7cinatra14coro_handler_taSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(64) %3) #45 ; 0 uses
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !513 ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i3, label %_ZNSt14_Function_baseD2Ev.exit.i4, label %bb.k

bb.k:                                             ; preds = %_ZNSt8functionIFN12async_simple4coro4LazyIvEERN7cinatra17coro_http_requestERNS4_18coro_http_responseEEEC2ERKSA_.exit
  %i.ab = invoke noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i4 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #57
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i4:                ; preds = %bb.k, %_ZNSt8functionIFN12async_simple4coro4LazyIvEERN7cinatra17coro_http_requestERNS4_18coro_http_responseEEEC2ERKSA_.exit
  %i.ae = load ptr, ptr %3, align 8, !tbaa !303   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.a
  br i1 %i.af, label %_ZN7cinatra14coro_handler_tD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i4
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !295
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #58
  br label %_ZN7cinatra14coro_handler_tD2Ev.exit

_ZN7cinatra14coro_handler_tD2Ev.exit:             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  ret i32 0

.body:                                            ; preds = %bb.h, %bb.i
  %i.ai = load ptr, ptr %3, align 8, !tbaa !303   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.a
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !295
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1046 ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1045   ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1047
  %i.j = load ptr, ptr %0, align 8, !tbaa !1045   ; 6 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_M_allocateEm.exit.i, !prof !300

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #59
  unreachable

_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #60 ; 3 uses
  %2 = icmp eq ptr %i.c, %i.b
  br i1 %2, label %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt10shared_ptrIN7cinatra15radix_tree_nodeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructISt10shared_ptrIN7cinatra15radix_tree_nodeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructISt10shared_ptrIN7cinatra15radix_tree_nodeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !491  ; 2 uses
  %i.s = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !325
  store <2 x ptr> %i.s, ptr %.08.i.i.i.i.i, align 8, !tbaa !325
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN7cinatra15radix_tree_nodeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !295
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !296
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !296
  br label %_ZSt10_ConstructISt10shared_ptrIN7cinatra15radix_tree_nodeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN7cinatra15radix_tree_nodeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN7cinatra15radix_tree_nodeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  %i.aa = icmp eq ptr %i.y, %i.b
  br i1 %i.aa, label %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !58

_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN7cinatra15radix_tree_nodeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre58 = load ptr, ptr %0, align 8, !tbaa !1045
  br label %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.loopexit, %_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_M_allocateEm.exit.i
  %3 = phi ptr [ %.pre58, %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.loopexit ], [ %i.j, %_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1046 ; 2 uses
  %.not4.i.i = icmp eq ptr %3, %i.ac
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN7cinatra15radix_tree_nodeEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.au, %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i ], [ %3, %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !491 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.af, align 8, !tbaa !480
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !481
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !279
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #45, !inline_history !59
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !279
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #45, !inline_history !59
  br label %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !295
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !296
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ai, %bb.k ], [ %i.as, %bb.l ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.at, label %bb.m, label %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i, !prof !300

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #45
  br label %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.au, %i.ac
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPSt10shared_ptrIN7cinatra15radix_tree_nodeEEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !57

_ZSt8_DestroyIPSt10shared_ptrIN7cinatra15radix_tree_nodeEEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1045
  br label %_ZSt8_DestroyIPSt10shared_ptrIN7cinatra15radix_tree_nodeEEEvT_S5_.exit

_ZSt8_DestroyIPSt10shared_ptrIN7cinatra15radix_tree_nodeEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7cinatra15radix_tree_nodeEEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  %i.av = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN7cinatra15radix_tree_nodeEEEvT_S5_.exitthread-pre-split ], [ %3, %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7cinatra15radix_tree_nodeEEEvT_S5_.exit
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !1047
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.az) #58
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7cinatra15radix_tree_nodeEEEvT_S5_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !1045
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !1047
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN7cinatra15radix_tree_nodeEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

bb.o:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1046 ; 3 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.be, %i.f
  br i1 %.not24, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = icmp sgt i64 %i.g, 0
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i26:                               ; preds = %bb.p, %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ci, %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit.i.i.i.i.i ], [ %i.g, %bb.p ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ch, %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit.i.i.i.i.i ], [ %i.j, %bb.p ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cg, %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit.i.i.i.i.i ], [ %i.c, %bb.p ] ; 3 uses
  %i.bg = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !1821
  store ptr %i.bg, ptr %.0811.i.i.i.i.i, align 8, !tbaa !1821
  %i.bh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !491 ; 4 uses
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !491 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i26
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !295
  %.not.i.i.i.i.i.i.i.i.i27 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i27, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !296
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !296
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bp = atomicrmw volatile add ptr %i.bl, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !491
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.q
  %i.bq = phi ptr [ %i.bk, %bb.q ], [ %i.bk, %bb.s ], [ %.pr.pre.i.i.i.i.i.i.i.i, %bb.t ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.br, align 8, !tbaa !480
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !481
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !279
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #45, !inline_history !8958
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !279
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #45, !inline_history !8958
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !295
  %.not.i9.i.i.i.i.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !296
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bu, %bb.x ], [ %i.ce, %bb.y ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cf, label %bb.z, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, !prof !300

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #45
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.v, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !491
  br label %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i26
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.ci = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cj = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, !llvm.loop !189

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit: ; preds = %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !1048
  %.pre64 = ptrtoint ptr %i.ch to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, %bb.p
  %.pre-phi65 = phi i64 [ %.pre64, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.l, %bb.p ]
  %i.ck = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.bc, %bb.p ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ch, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.j, %bb.p ]
  %i.cl = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.ck
  br i1 %i.cl, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN7cinatra15radix_tree_nodeEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i28.preheader

.lr.ph.i.i28.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit
  %i.cm = sub i64 %.pre-phi65, %i.l
  %i.cn = getelementptr inbounds i8, ptr %i.j, i64 %i.cm
  br label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %.lr.ph.i.i28.preheader, %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i33
  %.sroa.01.04.i.i = phi ptr [ %i.df, %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i33 ], [ %i.cn, %.lr.ph.i.i28.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !491 ; 8 uses
  %.not.i.i.i.i.i.i29 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i.i29, label %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i33, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i28
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 4 uses
  %i.cr = load atomic i64, ptr %i.cq acquire, align 8 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 4294967297
  %i.ct = trunc i64 %i.cr to i32                  ; 2 uses
  br i1 %i.cs, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cq, align 8, !tbaa !480
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i32 0, ptr %i.cu, align 4, !tbaa !481
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !279
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  tail call void %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #45, !inline_history !8959
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !279
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  tail call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #45, !inline_history !8959
  br label %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i33

bb.ac:                                            ; preds = %bb.aa
  %i.db = load i8, ptr @__libc_single_threaded, align 1, !tbaa !295
  %.not.i.i.i.i.i.i.i30 = icmp eq i8 %i.db, 0
  br i1 %.not.i.i.i.i.i.i.i30, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dc = add nsw i32 %i.ct, -1
  store i32 %i.dc, ptr %i.cq, align 8, !tbaa !296
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31

bb.ae:                                            ; preds = %bb.ac
  %i.dd = atomicrmw volatile add ptr %i.cq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i.i32 = phi i32 [ %i.ct, %bb.ad ], [ %i.dd, %bb.ae ]
  %i.de = icmp eq i32 %.0.i.i.i.i.i.i.i.i32, 1
  br i1 %i.de, label %bb.af, label %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i33, !prof !300

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #45
  br label %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i33

_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i33: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i31, %bb.ab, %.lr.ph.i.i28
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.ck
  br i1 %i.dg, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN7cinatra15radix_tree_nodeEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i28, !llvm.loop !8960

bb.ag:                                            ; preds = %bb.o
  %i.dh = ashr exact i64 %i.be, 4                 ; 2 uses
  %i.di = icmp sgt i64 %i.dh, 0
  br i1 %i.di, label %.lr.ph.i.i.i.i.i35, label %_ZSt4copyIPSt10shared_ptrIN7cinatra15radix_tree_nodeEES4_ET0_T_S6_S5_.exit
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8981)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !325, !alias.scope !8981
  store ptr null, ptr %i.ae, align 8, !tbaa !491, !alias.scope !8981
  store <2 x ptr> %i.af, ptr %.012.i.i.i18, align 8, !tbaa !325, !alias.scope !8980
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !1821, !alias.scope !8981
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !8974

_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1047
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #58
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !1045
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !1046
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !1047
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7cinatra15radix_tree_nodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !299
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !304
  store i8 0, ptr %i.a, align 8, !tbaa !295
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !299
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !304
  store i8 0, ptr %i.d, align 8, !tbaa !295
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !299
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.i, align 8, !tbaa !304
  store i8 0, ptr %i.h, align 8, !tbaa !295
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !299
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %i.m, align 8, !tbaa !304
  store i8 0, ptr %i.l, align 8, !tbaa !295
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.n) #45
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !303  ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.l
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.r = load i64, ptr %i.l, align 8, !tbaa !295
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN7cinatra14coro_handler_tD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.g) #45
  tail call void @_ZN7cinatra9handler_tD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.c) #45
  %i.t = load ptr, ptr %0, align 8, !tbaa !303    ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = load i64, ptr %i.a, align 8, !tbaa !295
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1344) #59
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !303    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = icmp eq ptr %i.b, %i.c                   ; 2 uses
  br i1 %i.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %.not.i = icmp samesign ugt i64 %1, 15
  br i1 %.not.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.e = load i64, ptr %i.c, align 8, !tbaa !295  ; 2 uses
  %.not.i8 = icmp ugt i64 %1, %i.e
  br i1 %.not.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread
  %i.f = shl nuw i64 %i.e, 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.g = phi i64 [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3 ], [ 30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ] ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0.i = select i1 %i.h, i64 %spec.store.select.i.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0.i, 1                     ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i, !prof !300

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3.thread
  tail call void @_ZSt17__throw_bad_allocv() #59
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3.thread
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #60 ; 2 uses
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %.pre = load i64, ptr %i.c, align 8, !tbaa !295
  %i.l = add i64 %.pre, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.l) #58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i
  store ptr %i.k, ptr %0, align 8, !tbaa !303
  store i64 %.0.i, ptr %i.c, align 8, !tbaa !295
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread
  %.not30.i = icmp eq i64 %1, 0
  br i1 %.not30.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i
  %i.m = phi ptr [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.thread ], [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i ] ; 2 uses
  %cond.i = icmp eq i64 %1, 1
  br i1 %cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 %2, ptr %i.m, align 1, !tbaa !295
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 %2, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.n, align 8, !tbaa !304
  %i.o = load ptr, ptr %0, align 8, !tbaa !303
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %1
  store i8 0, ptr %i.p, align 1, !tbaa !295
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1047
  %i.g = load ptr, ptr %0, align 8, !tbaa !1045   ; 5 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.d, 576460752303423487
  br i1 %i.l, label %bb.c, label %_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1101) #59
  unreachable

_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #60 ; 3 uses
  %.not9.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt10shared_ptrIN7cinatra15radix_tree_nodeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.w, %_ZSt10_ConstructISt10shared_ptrIN7cinatra15radix_tree_nodeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.m, %_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.v, %_ZSt10_ConstructISt10shared_ptrIN7cinatra15radix_tree_nodeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !491  ; 2 uses
  %i.p = load <2 x ptr>, ptr %.0810.i.i.i.i.i, align 8, !tbaa !325
  store <2 x ptr> %i.p, ptr %.011.i.i.i.i.i, align 8, !tbaa !325
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN7cinatra15radix_tree_nodeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !295
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.q, align 4, !tbaa !296
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !296
  br label %_ZSt10_ConstructISt10shared_ptrIN7cinatra15radix_tree_nodeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN7cinatra15radix_tree_nodeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN7cinatra15radix_tree_nodeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !8982

_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN7cinatra15radix_tree_nodeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre47 = load ptr, ptr %0, align 8, !tbaa !1045
  br label %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit

_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit, %_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_M_allocateEm.exit.i
  %3 = phi ptr [ %.pre47, %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit ], [ %i.g, %_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1046 ; 2 uses
  %.not4.i.i = icmp eq ptr %3, %i.y
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN7cinatra15radix_tree_nodeEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.aq, %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i ], [ %3, %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !491 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ab, align 8, !tbaa !480
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !481
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !279
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #45, !inline_history !59
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !279
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #45, !inline_history !59
  br label %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !295
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !296
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ae, %bb.j ], [ %i.ao, %bb.k ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.l, label %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i, !prof !300

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #45
  br label %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.h, %.lr.ph.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.aq, %i.y
  br i1 %.not.i.i16, label %_ZSt8_DestroyIPSt10shared_ptrIN7cinatra15radix_tree_nodeEEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !57

_ZSt8_DestroyIPSt10shared_ptrIN7cinatra15radix_tree_nodeEEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1045
  br label %_ZSt8_DestroyIPSt10shared_ptrIN7cinatra15radix_tree_nodeEEEvT_S5_.exit

_ZSt8_DestroyIPSt10shared_ptrIN7cinatra15radix_tree_nodeEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7cinatra15radix_tree_nodeEEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit
  %i.ar = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN7cinatra15radix_tree_nodeEEEvT_S5_.exitthread-pre-split ], [ %3, %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7cinatra15radix_tree_nodeEEEvT_S5_.exit
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !1047
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #58
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7cinatra15radix_tree_nodeEEEvT_S5_.exit, %bb.m
  store ptr %i.m, ptr %0, align 8, !tbaa !1045
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c ; 2 uses
  store ptr %i.aw, ptr %i.x, align 8, !tbaa !1046
  store ptr %i.aw, ptr %i.e, align 8, !tbaa !1047
  br label %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE15_M_erase_at_endEPS3_.exit

bb.n:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1046 ; 3 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.i                     ; 3 uses
  %.not = icmp ult i64 %i.ba, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = icmp sgt i64 %i.d, 0
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i17, label %_ZSt4copyIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEEPS3_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i17:                               ; preds = %bb.o, %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ce, %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit.i.i.i.i.i ], [ %i.d, %bb.o ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cd, %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit.i.i.i.i.i ], [ %i.g, %bb.o ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cc, %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit.i.i.i.i.i ], [ %1, %bb.o ] ; 3 uses
  %i.bc = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !1821
  store ptr %i.bc, ptr %.0811.i.i.i.i.i, align 8, !tbaa !1821
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !491 ; 4 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !491 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i17
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !295
  %.not.i.i.i.i.i.i.i.i.i18 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i18, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !296
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !296
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bl = atomicrmw volatile add ptr %i.bh, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !491
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.p
  %i.bm = phi ptr [ %i.bg, %bb.p ], [ %i.bg, %bb.r ], [ %.pr.pre.i.i.i.i.i.i.i.i, %bb.s ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bn, align 8, !tbaa !480
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !481
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !279
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #45, !inline_history !8983
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !279
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #45, !inline_history !8983
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !295
  %.not.i9.i.i.i.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !296
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.w ], [ %i.ca, %bb.x ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.y, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, !prof !300

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #45
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.u, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !491
  br label %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i17
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.ce = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cf = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i17, label %_ZSt4copyIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEEPS3_ET0_T_S8_S7_.exit.loopexit, !llvm.loop !189

_ZSt4copyIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEEPS3_ET0_T_S8_S7_.exit.loopexit: ; preds = %_ZNSt10shared_ptrIN7cinatra15radix_tree_nodeEEaSERKS2_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.ax, align 8, !tbaa !1046
  br label %_ZSt4copyIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEEPS3_ET0_T_S8_S7_.exit

_ZSt4copyIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEEPS3_ET0_T_S8_S7_.exit: ; preds = %_ZSt4copyIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEEPS3_ET0_T_S8_S7_.exit.loopexit, %bb.o
  %i.cg = phi ptr [ %i.ay, %bb.o ], [ %.pre, %_ZSt4copyIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEEPS3_ET0_T_S8_S7_.exit.loopexit ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.g, %bb.o ], [ %i.cd, %_ZSt4copyIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEEPS3_ET0_T_S8_S7_.exit.loopexit ] ; 3 uses
  %.not.i19 = icmp eq ptr %i.cg, %.08.lcssa.i.i.i.i.i
  br i1 %.not.i19, label %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE15_M_erase_at_endEPS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4copyIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEEPS3_ET0_T_S8_S7_.exit, %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cy, %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i.i ], [ %.08.lcssa.i.i.i.i.i, %_ZSt4copyIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEEPS3_ET0_T_S8_S7_.exit ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !491 ; 8 uses
  %.not.i.i.i.i.i.i.i20 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i.i.i20, label %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 4294967297
  %i.cm = trunc i64 %i.ck to i32                  ; 2 uses
  br i1 %i.cl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.cj, align 8, !tbaa !480
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.cn, align 4, !tbaa !481
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !279
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #45, !inline_history !8984
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !279
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #45, !inline_history !8984
  br label %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !295
  %.not.i.i.i.i.i.i.i.i21 = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i.i.i.i.i.i21, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.cj, align 8, !tbaa !296
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.cw = atomicrmw volatile add ptr %i.cj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cm, %bb.ac ], [ %i.cw, %bb.ad ]
  %i.cx = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cx, label %bb.ae, label %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i.i, !prof !300

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #45
  br label %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i.i: ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.aa, %.lr.ph.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cy, %i.cg
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN7cinatra15radix_tree_nodeEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !57

_ZSt8_DestroyIPSt10shared_ptrIN7cinatra15radix_tree_nodeEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN7cinatra15radix_tree_nodeEEEvPT_.exit.i.i.i
  store ptr %.08.lcssa.i.i.i.i.i, ptr %i.ax, align 8, !tbaa !1046
  br label %_ZNSt6vectorISt10shared_ptrIN7cinatra15radix_tree_nodeEESaIS3_EE15_M_erase_at_endEPS3_.exit

_ZSt9__advanceIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.n
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.ba ; 2 uses
  %i.cz = ashr exact i64 %i.ba, 4                 ; 2 uses
  %i.da = icmp sgt i64 %i.cz, 0
  br i1 %i.da, label %.lr.ph.i.i.i.i.i23, label %_ZSt4copyIPKSt10shared_ptrIN7cinatra15radix_tree_nodeEEPS3_ET0_T_S8_S7_.exit38

end_hunk_2
