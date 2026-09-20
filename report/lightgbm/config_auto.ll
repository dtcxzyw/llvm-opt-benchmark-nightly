Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/config_auto?download=true
inline.NumInlined: 5122
inline.NumDeleted: 599
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZN8LightGBM6Config7GetBoolERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSD_Pb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.h
  %i.ci = load i64, ptr %i.i, align 8, !tbaa !22
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.cj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.bk

bb.m:                                             ; preds = %bb.a, %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE2atERSB_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %.037 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ false, %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE2atERSB_.exit ], [ false, %bb.a ]
  ret i1 %.037
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN8LightGBM6CommonL13StringToArrayIdEESt6vectorIT_SaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly captures(address_is_null) %.0.val) unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %"class.std::vector", align 8       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call fastcc void @_ZN8LightGBM6CommonL5SplitB5cxx11EPKcc(ptr dead_on_unwind noalias writable align 8 %1, ptr noundef %.0.val)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !61     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 5                   ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.390) #29
          to label %.noexc unwind label %.body.thread

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not39 = icmp eq ptr %i.c, %i.d
  br i1 %.not39, label %_ZNSt6vectorIdSaIdEE7reserveEm.exit, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.g, 2
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #31
          to label %.noexc9 unwind label %.body.thread ; 4 uses

.noexc9:                                          ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %0, align 8, !tbaa !124
  store ptr %i.l, ptr %i.m, align 8, !tbaa !154
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.h ; 2 uses
  store ptr %i.n, ptr %i.j, align 8, !tbaa !125
  %.pre = load ptr, ptr %1, align 8, !tbaa !64
  %.pre19 = load ptr, ptr %i.b, align 8, !tbaa !64
  br label %_ZNSt6vectorIdSaIdEE7reserveEm.exit

_ZNSt6vectorIdSaIdEE7reserveEm.exit:              ; preds = %.noexc9, %bb.c
  %i.o = phi ptr [ %i.n, %.noexc9 ], [ null, %bb.c ]
  %i.p = phi ptr [ %i.l, %.noexc9 ], [ null, %bb.c ] ; 2 uses
  %i.q = phi ptr [ %.pre19, %.noexc9 ], [ %i.c, %bb.c ] ; 3 uses
  %i.r = phi ptr [ %.pre, %.noexc9 ], [ %i.d, %bb.c ] ; 3 uses
  %.not13 = icmp eq ptr %i.r, %i.q
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEE7reserveEm.exit
  %i.s = tail call ptr @__errno_location() #34    ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %.pre20 = load ptr, ptr %1, align 8, !tbaa !61
  %.pre21 = load ptr, ptr %i.b, align 8, !tbaa !62
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIdSaIdEE7reserveEm.exit
  %i.u = phi ptr [ %.pre21, %._crit_edge.loopexit ], [ %i.q, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ] ; 2 uses
  %i.v = phi ptr [ %.pre20, %._crit_edge.loopexit ], [ %i.r, %_ZNSt6vectorIdSaIdEE7reserveEm.exit ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.v, %._crit_edge ] ; 3 uses
  %i.w = load ptr, ptr %.05.i.i.i, align 8, !tbaa !21 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !22
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.u
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !61
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.ac = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.v, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !63
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void

.body.thread:                                     ; preds = %bb.b, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.aj = phi ptr [ %i.p, %.lr.ph ], [ %i.bk, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 8 uses
  %i.ak = phi ptr [ %i.o, %.lr.ph ], [ %i.bl, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 4 uses
  %i.al = phi ptr [ %i.p, %.lr.ph ], [ %i.bm, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 3 uses
  %.sroa.02.014 = phi ptr [ %i.r, %.lr.ph ], [ %i.bn, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 2 uses
  %i.am = load ptr, ptr %.sroa.02.014, align 8, !tbaa !21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.an = load i32, ptr %i.s, align 4, !tbaa !151 ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !151
  %i.ao = call noundef double @strtod(ptr noundef %i.am, ptr noundef nonnull %i.a) ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !226
  %i.aq = icmp eq ptr %i.ap, %i.am
  br i1 %i.aq, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.391) #29
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %.critedge.i.i.i, %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load i32, ptr %i.s, align 4, !tbaa !151
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.i, label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.an, ptr %i.s, align 4, !tbaa !151
  br label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i

_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.body

bb.j:                                             ; preds = %bb.e
  %i.au = load i32, ptr %i.s, align 4, !tbaa !151
  switch i32 %i.au, label %bb.m [
    i32 34, label %.critedge.i.i.i
    i32 0, label %bb.l
  ]

.critedge.i.i.i:                                  ; preds = %bb.j
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.391) #29
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %.critedge.i.i.i
  unreachable

bb.l:                                             ; preds = %bb.j
  store i32 %i.an, ptr %i.s, align 4, !tbaa !151
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not.i.i = icmp eq ptr %i.al, %i.ak
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store double %i.ao, ptr %i.al, align 8, !tbaa !152
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  store ptr %i.av, ptr %i.t, align 8, !tbaa !154
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.o:                                             ; preds = %bb.m
  %i.aw = ptrtoint ptr %i.ak to i64
  %i.ax = ptrtoint ptr %i.aj to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 6 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.p, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.372) #29
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %2 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ba ; 2 uses
  %i.bb = icmp ult i64 %2, %i.ba
  %i.bc = call i64 @llvm.umin.i64(i64 %2, i64 1152921504606846975)
  %i.bd = select i1 %i.bb, i64 1152921504606846975, i64 %i.bc ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #31
          to label %.noexc11 unwind label %.loopexit ; 5 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %i.ay ; 2 uses
  store double %i.ao, ptr %i.bg, align 8, !tbaa !152
  %i.bh = icmp sgt i64 %i.ay, 0
  br i1 %i.bh, label %bb.q, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.q:                                             ; preds = %.noexc11
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bf, ptr align 8 %i.aj, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.q, %.noexc11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ay) #28
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bf, ptr %0, align 8, !tbaa !124
  store ptr %i.bi, ptr %i.t, align 8, !tbaa !154
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd ; 2 uses
  store ptr %i.bj, ptr %i.j, align 8, !tbaa !125
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.n
  %i.bk = phi ptr [ %i.bf, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.aj, %bb.n ]
  %i.bl = phi ptr [ %i.bj, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.ak, %bb.n ]
  %i.bm = phi ptr [ %i.bi, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.av, %bb.n ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.02.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bn, %i.q
  br i1 %.not, label %._crit_edge.loopexit, label %bb.e

.loopexit:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ar, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %.body
  %i.bo = ptrtoint ptr %i.ak to i64
  %i.bp = ptrtoint ptr %i.aj to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.bq) #28
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.body.thread, %.body, %bb.s
  %.pn42 = phi { ptr, i32 } [ %i.ai, %.body.thread ], [ %.pn, %.body ], [ %.pn, %bb.s ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %.pn42
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN8LightGBM6CommonL13StringToArrayIiEESt6vectorIT_SaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly captures(address_is_null) %.0.val) unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call fastcc void @_ZN8LightGBM6CommonL5SplitB5cxx11EPKcc(ptr dead_on_unwind noalias writable align 8 %1, ptr noundef %.0.val)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !61     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 2 uses
  %i.h = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.390) #29
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not35 = icmp eq ptr %i.b, %i.c
  br i1 %.not35, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = ashr exact i64 %i.f, 3
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #31
          to label %.noexc9 unwind label %.thread ; 4 uses

.noexc9:                                          ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %0, align 8, !tbaa !132
  store ptr %i.k, ptr %i.l, align 8, !tbaa !155
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.g ; 2 uses
  store ptr %i.m, ptr %i.i, align 8, !tbaa !133
  %.pre = load ptr, ptr %1, align 8, !tbaa !64
  %.pre13 = load ptr, ptr %i.a, align 8, !tbaa !64
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %.noexc9, %bb.c
  %.promoted10 = phi ptr [ %i.m, %.noexc9 ], [ null, %bb.c ]
  %.promoted = phi ptr [ %i.k, %.noexc9 ], [ null, %bb.c ] ; 2 uses
  %i.n = phi ptr [ %.pre13, %.noexc9 ], [ %i.b, %bb.c ] ; 3 uses
  %i.o = phi ptr [ %.pre, %.noexc9 ], [ %i.c, %bb.c ] ; 3 uses
  %.not8 = icmp eq ptr %i.o, %i.n
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.pre16 = load ptr, ptr %1, align 8, !tbaa !61
  %.pre17 = load ptr, ptr %i.a, align 8, !tbaa !62
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.q = phi ptr [ %.pre17, %._crit_edge.loopexit ], [ %i.n, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 2 uses
  %i.r = phi ptr [ %.pre16, %._crit_edge.loopexit ], [ %i.o, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.r, %._crit_edge ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i, align 8, !tbaa !21 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !22
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !61
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.y = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void

.thread:                                          ; preds = %bb.b, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.af = phi ptr [ %.promoted, %.lr.ph ], [ %i.bm, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 8 uses
  %i.ag = phi ptr [ %.promoted10, %.lr.ph ], [ %i.bn, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 4 uses
  %i.ah = phi ptr [ %.promoted, %.lr.ph ], [ %i.bo, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.sroa.02.09 = phi ptr [ %i.o, %.lr.ph ], [ %i.bp, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.ai = load ptr, ptr %.sroa.02.09, align 8, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.017.i.i = phi ptr [ %i.ai, %bb.e ], [ %i.ak, %bb.g ] ; 5 uses
  %i.aj = load i8, ptr %.017.i.i, align 1, !tbaa !22
  switch i8 %i.aj, label %.loopexit.i.i [
    i8 32, label %bb.g
    i8 45, label %bb.h
    i8 43, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 1
  br label %bb.f, !llvm.loop !2

bb.h:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 1
  br label %.loopexit.i.i

bb.i:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 1
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.f, %bb.i, %bb.h
  %.1.i.i = phi ptr [ %i.al, %bb.h ], [ %i.am, %bb.i ], [ %.017.i.i, %bb.f ] ; 2 uses
  %.016.i.i = phi i32 [ -1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.f ]
  %i.an = load i8, ptr %.1.i.i, align 1, !tbaa !22 ; 2 uses
  %i.ao = add i8 %i.an, -48
  %or.cond22.i.i = icmp ult i8 %i.ao, 10
  br i1 %or.cond22.i.i, label %.lr.ph.i.i, label %_ZNK8LightGBM6Common17__StringToTHelperIiLb0EEclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.lr.ph.i.i:                                       ; preds = %.loopexit.i.i, %.lr.ph.i.i
  %i.ap = phi i8 [ %i.au, %.lr.ph.i.i ], [ %i.an, %.loopexit.i.i ]
  %.024.i.i = phi i32 [ %i.as, %.lr.ph.i.i ], [ 0, %.loopexit.i.i ]
  %.223.i.i = phi ptr [ %i.at, %.lr.ph.i.i ], [ %.1.i.i, %.loopexit.i.i ]
  %i.aq = mul nsw i32 %.024.i.i, 10
  %narrow.i.i = add nsw i8 %i.ap, -48
  %i.ar = zext nneg i8 %narrow.i.i to i32
  %i.as = add nsw i32 %i.aq, %i.ar                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.223.i.i, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !22  ; 2 uses
  %i.av = add i8 %i.au, -48
  %or.cond.i.i = icmp ult i8 %i.av, 10
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.loopexit.i.i, !llvm.loop !3

.critedge.loopexit.i.i:                           ; preds = %.lr.ph.i.i
  %i.aw = mul nsw i32 %i.as, %.016.i.i
  br label %_ZNK8LightGBM6Common17__StringToTHelperIiLb0EEclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK8LightGBM6Common17__StringToTHelperIiLb0EEclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.loopexit.i.i, %.critedge.loopexit.i.i
  %.0.lcssa.i.i = phi i32 [ 0, %.loopexit.i.i ], [ %i.aw, %.critedge.loopexit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.ag
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK8LightGBM6Common17__StringToTHelperIiLb0EEclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store i32 %.0.lcssa.i.i, ptr %i.ah, align 4, !tbaa !151
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  store ptr %i.ax, ptr %i.p, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.k:                                             ; preds = %_ZNK8LightGBM6Common17__StringToTHelperIiLb0EEclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ay = ptrtoint ptr %i.ag to i64
  %i.az = ptrtoint ptr %i.af to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 6 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775804
  br i1 %i.bb, label %bb.l, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.372) #29
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.bc = ashr exact i64 %i.ba, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %2 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bc ; 2 uses
  %i.bd = icmp ult i64 %2, %i.bc
  %i.be = call i64 @llvm.umin.i64(i64 %2, i64 2305843009213693951)
  %i.bf = select i1 %i.bd, i64 2305843009213693951, i64 %i.be ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #31
          to label %.noexc11 unwind label %.loopexit ; 5 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.ba ; 2 uses
  store i32 %.0.lcssa.i.i, ptr %i.bi, align 4, !tbaa !151
  %i.bj = icmp sgt i64 %i.ba, 0
  br i1 %i.bj, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.m:                                             ; preds = %.noexc11
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bh, ptr align 4 %i.af, i64 %i.ba, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.m, %.noexc11
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ba) #28
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bh, ptr %0, align 8, !tbaa !132
  store ptr %i.bk, ptr %i.p, align 8, !tbaa !155
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bf ; 2 uses
  store ptr %i.bl, ptr %i.i, align 8, !tbaa !133
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.j
  %i.bm = phi ptr [ %i.bh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.af, %bb.j ]
  %i.bn = phi ptr [ %i.bl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ag, %bb.j ]
  %i.bo = phi ptr [ %i.bk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ax, %bb.j ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.02.09, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bp, %i.n
  br i1 %.not, label %._crit_edge.loopexit, label %bb.e

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = ptrtoint ptr %i.ag to i64
  %i.br = ptrtoint ptr %i.af to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.bs) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.thread, %bb.o, %bb.p
  %.pn38 = phi { ptr, i32 } [ %i.ae, %.thread ], [ %.pn, %bb.o ], [ %.pn, %bb.p ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %.pn38
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8, !tbaa !39 ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8, !tbaa !39 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !227

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8, !tbaa !39 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !227

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23
  %i.t = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #30
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !32   ; 3 uses
  %i.y = urem i64 %i.t, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !39 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !42 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !23
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.al = load ptr, ptr %.0.us.i.i, align 8, !tbaa !39 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.an = load i64, ptr %i.am, align 8, !tbaa !42 ; 2 uses
  %i.ao = urem i64 %i.an, %i.x
  %.not19.us.i.i = icmp eq i64 %i.ao, %i.y
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !228

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.ap = phi i64 [ %i.az, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ax, %bb.i ], [ %i.ac, %bb.e ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ar = icmp eq i64 %i.t, %i.ap
  br i1 %i.ar, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !23
  %i.au = icmp eq i64 %.fr22.i.i, %i.at
  br i1 %i.au, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !21
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.av, i64 %.fr22.i.i)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ax = load ptr, ptr %.0.i.i, align 8, !tbaa !39 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ax, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !42 ; 2 uses
  %i.ba = urem i64 %i.az, %i.x
  %.not19.i.i = icmp eq i64 %i.ba, %i.y
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !228

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.018.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10 ], [ %.sroa.06.018, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !61     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.372) #29
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.k = select i1 %i.i, i64 288230376151711743, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = shl nuw nsw i64 %i.k, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #31 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !17
  %i.r = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !23   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !21
  %i.y = load i64, ptr %i.s, align 8, !tbaa !22
  store i64 %i.y, ptr %i.q, align 8, !tbaa !22
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = phi i64 [ %i.v, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !23
  store ptr %i.s, ptr %2, align 8, !tbaa !21
  store i64 0, ptr %i.aa, align 8, !tbaa !23
  store i8 0, ptr %i.s, align 8, !tbaa !22
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.012.i.i.i, align 8, !tbaa !17, !alias.scope !236, !noalias !237
  %i.ad = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !21, !alias.scope !237, !noalias !236 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !23, !alias.scope !237, !noalias !236 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false), !alias.scope !238
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !21, !alias.scope !236, !noalias !237
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !22, !alias.scope !237, !noalias !236
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !22, !alias.scope !236, !noalias !237
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !23, !alias.scope !237, !noalias !236
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.al = phi i64 [ %i.ah, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.al, ptr %i.an, align 8, !tbaa !23, !alias.scope !236, !noalias !237
  store ptr %i.ae, ptr %.0911.i.i.i, align 8, !tbaa !21, !alias.scope !237, !noalias !236
  store i64 0, ptr %i.am, align 8, !tbaa !23, !alias.scope !237, !noalias !236
  store i8 0, ptr %i.ae, align 8, !tbaa !22, !alias.scope !237, !noalias !236
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !232

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i18, align 8, !tbaa !17, !alias.scope !239, !noalias !240
  %i.as = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !21, !alias.scope !240, !noalias !239 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !23, !alias.scope !240, !noalias !239 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !241
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !21, !alias.scope !239, !noalias !240
  %i.az = load i64, ptr %i.at, align 8, !tbaa !22, !alias.scope !240, !noalias !239
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !22, !alias.scope !239, !noalias !240
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !23, !alias.scope !240, !noalias !239
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.ba = phi i64 [ %i.aw, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !23, !alias.scope !239, !noalias !240
  store ptr %i.at, ptr %.0911.i.i.i19, align 8, !tbaa !21, !alias.scope !240, !noalias !239
  store i64 0, ptr %i.bb, align 8, !tbaa !23, !alias.scope !240, !noalias !239
  store i8 0, ptr %i.at, align 8, !tbaa !22, !alias.scope !240, !noalias !239
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !232

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !63
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #28
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !61
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !62
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !63
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !21 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !22
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !1

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #14

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #14

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #15

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

end_hunk_0
