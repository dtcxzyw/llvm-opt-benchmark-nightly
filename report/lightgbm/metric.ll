Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/metric?download=true
inline.NumInlined: 3370
inline.NumDeleted: 931
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZNK8LightGBM16MulticlassMetricINS_16MultiErrorMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.81:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK8LightGBM16MulticlassMetricINS_16MultiErrorMetricEE4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.81.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #14 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !88
  %i.d = load double, ptr %i.a, align 8, !tbaa !88
  %i.e = fadd double %i.c, %i.d
  store double %i.e, ptr %i.b, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM18CrossEntropyMetricD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN8LightGBM18CrossEntropyMetricE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !37
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !96
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM18CrossEntropyMetricD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN8LightGBM18CrossEntropyMetricE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !37
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #31, !inline_history !665
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZN8LightGBM18CrossEntropyMetricD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !96
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #31, !inline_history !665
  br label %_ZN8LightGBM18CrossEntropyMetricD2Ev.exit

_ZN8LightGBM18CrossEntropyMetricD2Ev.exit:        ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM18CrossEntropyMetric4InitERKNS_8MetadataEi(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(300) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca float, align 4                    ; 7 uses
  %i.c = alloca float, align 4                    ; 7 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.82, align 8             ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.b, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.i, ptr noundef nonnull align 1 dereferenceable(14) @.str.16, i64 13, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 13, ptr %i.j, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 29
  store i8 0, ptr %i.k, align 1, !tbaa !37
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !94
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.m, ptr %i.e, align 8, !tbaa !94
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA14_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr %i.f, ptr noundef nonnull align 1 dereferenceable(14) @.str.16)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 %2, ptr %i.o, align 8, !tbaa !235
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !102  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !236
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !104  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !104
  %i.w = icmp eq ptr %i.t, %i.v
  %spec.select.i = select i1 %i.w, ptr null, ptr %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %spec.select.i, ptr %i.x, align 8, !tbaa !237
  %i.y = icmp eq ptr %i.q, null
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i32 noundef 83)
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !236
  %.pre10.a = load i32, ptr %i.o, align 8, !tbaa !235
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit
  %i.z = phi i32 [ %.pre10.a, %bb.c ], [ %2, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit ] ; 4 uses
  %.pre12.a = phi ptr [ %.pre, %bb.c ], [ %i.q, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA14_KcEEERS5_DpOT_.exit ] ; 3 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !93
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.pre12.a, ptr %i.a, align 8, !tbaa !104
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !108
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !108
  store ptr %i.af, ptr %i.d, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %i.a, ptr %3, align 8, !tbaa !240
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %i.ag, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.c, ptr %i.ah, align 8, !tbaa !104
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.d, ptr %i.ai, align 8, !tbaa !242
  %i.aj = icmp sgt i32 %i.z, 1
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i, %bb.d
  %i.ak = phi ptr [ %.pre12.a, %bb.d ], [ %i.bc, %bb.i ]
  %i.al = and i32 %i.z, 1
  %.not.i3 = icmp eq i32 %i.al, 0
  br i1 %.not.i3, label %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit, label %bb.j

.lr.ph.i:                                         ; preds = %bb.d, %bb.i
  %i.am = phi ptr [ %i.bc, %bb.i ], [ %.pre12.a, %bb.d ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ 1, %bb.d ] ; 5 uses
  %i.an = add nsw i64 %indvars.iv.i, -1           ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !108 ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !108 ; 3 uses
  %i.as = fcmp olt float %i.ap, %i.ar
  br i1 %i.as, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  %i.at = load float, ptr %i.b, align 4, !tbaa !108
  %i.au = fcmp olt float %i.ap, %i.at
  br i1 %i.au, label %.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = load float, ptr %i.c, align 4, !tbaa !108
  %i.aw = fcmp ogt float %i.ar, %i.av
  br i1 %i.aw, label %.sink.split.i, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.ax = load float, ptr %i.c, align 4, !tbaa !108
  %i.ay = fcmp ogt float %i.ap, %i.ax
  br i1 %i.ay, label %.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = load float, ptr %i.b, align 4, !tbaa !108
  %i.ba = fcmp olt float %i.ar, %i.az
  br i1 %i.ba, label %.sink.split.i, label %bb.i

.sink.split.i:                                    ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %indvars.iv.sink.i = phi i64 [ %i.an, %bb.e ], [ %indvars.iv.i, %bb.f ], [ %i.an, %bb.g ], [ %indvars.iv.i, %bb.h ]
  %i.bb = trunc nuw nsw i64 %indvars.iv.sink.i to i32
  call fastcc void @_ZZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKcENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bb)
  %.pre11 = load ptr, ptr %i.a, align 8, !tbaa !104
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i, %bb.h, %bb.f
  %i.bc = phi ptr [ %.pre11, %.sink.split.i ], [ %i.am, %bb.h ], [ %i.am, %bb.f ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %4 = trunc nuw i64 %indvars.iv.next.i to i32
  %5 = icmp sgt i32 %i.z, %4
  br i1 %5, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !19

bb.j:                                             ; preds = %._crit_edge.i
  %i.bd = add nsw i32 %i.z, -1                    ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !108 ; 2 uses
  %i.bh = load float, ptr %i.b, align 4, !tbaa !108
  %i.bi = fcmp olt float %i.bg, %i.bh
  %i.bj = load float, ptr %i.c, align 4
  %i.bk = fcmp ogt float %i.bg, %i.bj
  %or.cond.i = select i1 %i.bi, i1 true, i1 %i.bk
  br i1 %or.cond.i, label %bb.k, label %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit

bb.k:                                             ; preds = %bb.j
  call fastcc void @_ZZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKcENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bd)
  br label %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit

_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit: ; preds = %._crit_edge.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bl = load ptr, ptr %0, align 8, !tbaa !40
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef nonnull align 8 dereferenceable(24) ptr %i.bn(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !93
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !38
  call void (ptr, ...) @_ZN8LightGBM3Log4InfoEPKcz(ptr noundef nonnull @.str.84, ptr noundef %i.bq, ptr noundef nonnull @__func__._ZN8LightGBM18CrossEntropyMetric4InitERKNS_8MetadataEi)
  %i.br = load ptr, ptr %i.x, align 8, !tbaa !237 ; 4 uses
  %i.bs = icmp eq ptr %i.br, null
  %i.bt = load i32, ptr %i.o, align 8, !tbaa !235 ; 4 uses
  br i1 %i.bs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit
  %i.bu = sitofp i32 %i.bt to double              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.bu, ptr %i.bv, align 8, !tbaa !243
  br label %bb.q

bb.m:                                             ; preds = %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bx = and i32 %i.bt, 1
  %.not.i4 = icmp eq i32 %i.bx, 0
  %i.by = load float, ptr %i.br, align 4, !tbaa !108 ; 5 uses
  br i1 %.not.i4, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !108 ; 3 uses
  %i.cb = fcmp olt float %i.by, %i.ca
  %..i = select i1 %i.cb, float %i.by, float %i.ca
  %i.cc = fadd float %i.by, %i.ca
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.08.i = phi float [ %..i, %bb.n ], [ %i.by, %bb.m ] ; 2 uses
  %.038.i = phi float [ %i.cc, %bb.n ], [ %i.by, %bb.m ] ; 2 uses
  %.0.i = phi i32 [ 3, %bb.n ], [ 2, %bb.m ]      ; 2 uses
  %i.cd = icmp slt i32 %.0.i, %i.bt
  br i1 %i.cd, label %.lr.ph.preheader.i6, label %_ZN8LightGBM6CommonL15ObtainMinMaxSumIfdEEvPKT_iPS2_S5_PT0_.exit

.lr.ph.preheader.i6:                              ; preds = %bb.o
  %i.ce = zext nneg i32 %.0.i to i64
  %i.cf = zext nneg i32 %i.bt to i64
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %.lr.ph.i7, %.lr.ph.preheader.i6
  %indvars.iv.i8 = phi i64 [ %i.ce, %.lr.ph.preheader.i6 ], [ %indvars.iv.next.i9, %.lr.ph.i7 ] ; 2 uses
  %.13914.i = phi float [ %.038.i, %.lr.ph.preheader.i6 ], [ %i.cn, %.lr.ph.i7 ]
  %.1913.i = phi float [ %.08.i, %.lr.ph.preheader.i6 ], [ %.sroa.speculated.i, %.lr.ph.i7 ] ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.br, i64 %indvars.iv.i8 ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 -4
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !108 ; 3 uses
  %i.cj = load float, ptr %i.cg, align 4, !tbaa !108 ; 3 uses
  %i.ck = fcmp olt float %i.ci, %i.cj
  %.28.i = select i1 %i.ck, float %i.ci, float %i.cj ; 2 uses
  %i.cl = fcmp olt float %.28.i, %.1913.i
  %.sroa.speculated.i = select i1 %i.cl, float %.28.i, float %.1913.i ; 2 uses
  %i.cm = fadd float %i.ci, %i.cj
  %i.cn = fadd float %.13914.i, %i.cm             ; 2 uses
  %indvars.iv.next.i9 = add nuw nsw i64 %indvars.iv.i8, 2 ; 2 uses
  %i.co = icmp samesign ult i64 %indvars.iv.next.i9, %i.cf
  br i1 %i.co, label %.lr.ph.i7, label %_ZN8LightGBM6CommonL15ObtainMinMaxSumIfdEEvPKT_iPS2_S5_PT0_.exit, !llvm.loop !20

_ZN8LightGBM6CommonL15ObtainMinMaxSumIfdEEvPKT_iPS2_S5_PT0_.exit: ; preds = %.lr.ph.i7, %bb.o
  %.19.lcssa.i = phi float [ %.08.i, %bb.o ], [ %.sroa.speculated.i, %.lr.ph.i7 ]
  %.139.lcssa.i = phi float [ %.038.i, %bb.o ], [ %i.cn, %.lr.ph.i7 ]
  %i.cp = fpext float %.139.lcssa.i to double     ; 2 uses
  store double %i.cp, ptr %i.bw, align 8, !tbaa !88
  %i.cq = fcmp olt float %.19.lcssa.i, 0.000000e+00
  br i1 %i.cq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN8LightGBM6CommonL15ObtainMinMaxSumIfdEEvPKT_iPS2_S5_PT0_.exit
  %i.cr = load ptr, ptr %0, align 8, !tbaa !40
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call noundef nonnull align 8 dereferenceable(24) ptr %i.ct(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !93
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !38
  call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.85, ptr noundef %i.cw, ptr noundef nonnull @__func__._ZN8LightGBM18CrossEntropyMetric4InitERKNS_8MetadataEi)
  %.pre13 = load double, ptr %i.bw, align 8, !tbaa !243
  br label %bb.q

bb.q:                                             ; preds = %_ZN8LightGBM6CommonL15ObtainMinMaxSumIfdEEvPKT_iPS2_S5_PT0_.exit, %bb.p, %bb.l
  %i.cx = phi double [ %i.cp, %_ZN8LightGBM6CommonL15ObtainMinMaxSumIfdEEvPKT_iPS2_S5_PT0_.exit ], [ %.pre13, %bb.p ], [ %i.bu, %bb.l ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cz = fcmp ugt double %i.cx, 0.000000e+00
  br i1 %i.cz, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.da = load ptr, ptr %0, align 8, !tbaa !40
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call noundef nonnull align 8 dereferenceable(24) ptr %i.dc(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !93
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !38
  %i.dg = load double, ptr %i.cy, align 8, !tbaa !243
  call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.86, ptr noundef nonnull @__func__._ZN8LightGBM18CrossEntropyMetric4InitERKNS_8MetadataEi, ptr noundef %i.df, double noundef %i.dg)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dh = load ptr, ptr %0, align 8, !tbaa !40
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call noundef nonnull align 8 dereferenceable(24) ptr %i.dj(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !93
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !38
  %i.dn = load double, ptr %i.cy, align 8, !tbaa !243
  call void (ptr, ...) @_ZN8LightGBM3Log4InfoEPKcz(ptr noundef nonnull @.str.87, ptr noundef %i.dm, ptr noundef nonnull @__func__._ZN8LightGBM18CrossEntropyMetric4InitERKNS_8MetadataEi, double noundef %i.dn)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNK8LightGBM18CrossEntropyMetric7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNK8LightGBM18CrossEntropyMetric23factor_to_bigger_betterEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret double -1.000000e+00
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8LightGBM18CrossEntropyMetric4EvalEPKdPKNS_17ObjectiveFunctionE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca double, align 8                   ; 8 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @3)
  store ptr %2, ptr %i.a, align 8, !tbaa !86
  store ptr %3, ptr %i.b, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !88
  %i.e = icmp eq ptr %3, null
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !237
  %i.h = icmp eq ptr %i.g, null                   ; 2 uses
  %i.i = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @3, i32 %i.d, i32 %i.i)
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 3, ptr nonnull @_ZNK8LightGBM18CrossEntropyMetric4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined, ptr nonnull %1, ptr nonnull %i.c, ptr nonnull %i.a)
  br label %.noexc

bb.d:                                             ; preds = %bb.b
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 3, ptr nonnull @_ZNK8LightGBM18CrossEntropyMetric4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.92, ptr nonnull %1, ptr nonnull %i.c, ptr nonnull %i.a)
  br label %.noexc

bb.e:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 4, ptr nonnull @_ZNK8LightGBM18CrossEntropyMetric4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.93, ptr nonnull %1, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.c)
  br label %.noexc

bb.g:                                             ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 4, ptr nonnull @_ZNK8LightGBM18CrossEntropyMetric4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.94, ptr nonnull %1, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.c)
  br label %.noexc

.noexc:                                           ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  %i.j = load double, ptr %i.c, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load double, ptr %i.k, align 8, !tbaa !243
  %i.m = fdiv double %i.j, %i.l
  %i.n = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !83
  store double %i.m, ptr %i.n, align 8, !tbaa !88
end_hunk_0
begin_hunk_1_@_ZNK8LightGBM18CrossEntropyMetric4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.94.omp.reduction.reduction_func:bb.a
  %i.e = fadd double %i.c, %i.d
  store double %i.e, ptr %i.b, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM24CrossEntropyLambdaMetricD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN8LightGBM24CrossEntropyLambdaMetricE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !37
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !96
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM24CrossEntropyLambdaMetricD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN8LightGBM24CrossEntropyLambdaMetricE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !37
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #31, !inline_history !698
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZN8LightGBM24CrossEntropyLambdaMetricD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !96
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #31, !inline_history !698
  br label %_ZN8LightGBM24CrossEntropyLambdaMetricD2Ev.exit

_ZN8LightGBM24CrossEntropyLambdaMetricD2Ev.exit:  ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM24CrossEntropyLambdaMetric4InitERKNS_8MetadataEi(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(300) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca float, align 4                    ; 7 uses
  %i.c = alloca float, align 4                    ; 7 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.82, align 8             ; 8 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !96
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.b, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store i64 20, ptr %i.e, align 8, !tbaa !41
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.g, align 8, !tbaa !38
  %i.l = load i64, ptr %i.e, align 8, !tbaa !41   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.k, ptr noundef nonnull align 1 dereferenceable(21) @.str.17, i64 20, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !36
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.q, ptr %i.f, align 8, !tbaa !94
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA21_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr %i.g, ptr noundef nonnull align 1 dereferenceable(21) @.str.17)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit: ; preds = %.noexc.i.i, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 %2, ptr %i.s, align 8, !tbaa !245
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !102  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !246
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !104  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !104
  %i.aa = icmp eq ptr %i.x, %i.z
  %spec.select.i = select i1 %i.aa, ptr null, ptr %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %spec.select.i, ptr %i.ab, align 8, !tbaa !247
  %i.ac = icmp eq ptr %i.u, null
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit
  call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i32 noundef 178)
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !246
  %.pre10.a = load i32, ptr %i.s, align 8, !tbaa !245
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit
  %i.ad = phi i32 [ %.pre10.a, %bb.c ], [ %2, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit ] ; 4 uses
  %.pre12 = phi ptr [ %.pre, %bb.c ], [ %i.u, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA21_KcEEERS5_DpOT_.exit ] ; 3 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call noundef nonnull align 8 dereferenceable(24) ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !93
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.pre12, ptr %i.a, align 8, !tbaa !104
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !108
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !108
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %i.a, ptr %3, align 8, !tbaa !240
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %i.ak, align 8, !tbaa !104
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.c, ptr %i.al, align 8, !tbaa !104
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.d, ptr %i.am, align 8, !tbaa !242
  %i.an = icmp sgt i32 %i.ad, 1
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i, %bb.d
  %i.ao = phi ptr [ %.pre12, %bb.d ], [ %i.bg, %bb.i ]
  %i.ap = and i32 %i.ad, 1
  %.not.i3 = icmp eq i32 %i.ap, 0
  br i1 %.not.i3, label %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit, label %bb.j

.lr.ph.i:                                         ; preds = %bb.d, %bb.i
  %i.aq = phi ptr [ %i.bg, %bb.i ], [ %.pre12, %bb.d ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ 1, %bb.d ] ; 5 uses
  %i.ar = add nsw i64 %indvars.iv.i, -1           ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !108 ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i
  %i.av = load float, ptr %i.au, align 4, !tbaa !108 ; 3 uses
  %i.aw = fcmp olt float %i.at, %i.av
  br i1 %i.aw, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  %i.ax = load float, ptr %i.b, align 4, !tbaa !108
  %i.ay = fcmp olt float %i.at, %i.ax
  br i1 %i.ay, label %.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = load float, ptr %i.c, align 4, !tbaa !108
  %i.ba = fcmp ogt float %i.av, %i.az
  br i1 %i.ba, label %.sink.split.i, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.bb = load float, ptr %i.c, align 4, !tbaa !108
  %i.bc = fcmp ogt float %i.at, %i.bb
  br i1 %i.bc, label %.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = load float, ptr %i.b, align 4, !tbaa !108
  %i.be = fcmp olt float %i.av, %i.bd
  br i1 %i.be, label %.sink.split.i, label %bb.i

.sink.split.i:                                    ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %indvars.iv.sink.i = phi i64 [ %i.ar, %bb.e ], [ %indvars.iv.i, %bb.f ], [ %i.ar, %bb.g ], [ %indvars.iv.i, %bb.h ]
  %i.bf = trunc nuw nsw i64 %indvars.iv.sink.i to i32
  call fastcc void @_ZZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKcENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bf)
  %.pre11 = load ptr, ptr %i.a, align 8, !tbaa !104
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i, %bb.h, %bb.f
  %i.bg = phi ptr [ %.pre11, %.sink.split.i ], [ %i.aq, %bb.h ], [ %i.aq, %bb.f ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %4 = trunc nuw i64 %indvars.iv.next.i to i32
  %5 = icmp sgt i32 %i.ad, %4
  br i1 %5, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !19

bb.j:                                             ; preds = %._crit_edge.i
  %i.bh = add nsw i32 %i.ad, -1                   ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !108 ; 2 uses
  %i.bl = load float, ptr %i.b, align 4, !tbaa !108
  %i.bm = fcmp olt float %i.bk, %i.bl
  %i.bn = load float, ptr %i.c, align 4
  %i.bo = fcmp ogt float %i.bk, %i.bn
  %or.cond.i = select i1 %i.bm, i1 true, i1 %i.bo
  br i1 %or.cond.i, label %bb.k, label %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit

bb.k:                                             ; preds = %bb.j
  call fastcc void @_ZZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKcENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bh)
  br label %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit

_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit: ; preds = %._crit_edge.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bp = load ptr, ptr %0, align 8, !tbaa !40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef nonnull align 8 dereferenceable(24) ptr %i.br(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !93
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !38
  call void (ptr, ...) @_ZN8LightGBM3Log4InfoEPKcz(ptr noundef nonnull @.str.84, ptr noundef %i.bu, ptr noundef nonnull @__func__._ZN8LightGBM18CrossEntropyMetric4InitERKNS_8MetadataEi)
  %i.bv = load ptr, ptr %i.ab, align 8, !tbaa !247 ; 4 uses
  %.not = icmp eq ptr %i.bv, null
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit
  %i.bw = load i32, ptr %i.s, align 8, !tbaa !245 ; 3 uses
  %i.bx = and i32 %i.bw, 1
  %.not.i4 = icmp eq i32 %i.bx, 0
  %i.by = load float, ptr %i.bv, align 4, !tbaa !108 ; 3 uses
  br i1 %.not.i4, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !108 ; 2 uses
  %i.cb = fcmp olt float %i.by, %i.ca
  %..i = select i1 %i.cb, float %i.by, float %i.ca
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.08.i = phi float [ %..i, %bb.m ], [ %i.by, %bb.l ] ; 2 uses
  %.0.i = phi i32 [ 3, %bb.m ], [ 2, %bb.l ]      ; 2 uses
  %i.cc = icmp slt i32 %.0.i, %i.bw
  br i1 %i.cc, label %.lr.ph.preheader.i6, label %_ZN8LightGBM6CommonL15ObtainMinMaxSumIffEEvPKT_iPS2_S5_PT0_.exit

.lr.ph.preheader.i6:                              ; preds = %bb.n
  %i.cd = zext nneg i32 %.0.i to i64
  %i.ce = zext nneg i32 %i.bw to i64
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %.lr.ph.i7, %.lr.ph.preheader.i6
  %indvars.iv.i8 = phi i64 [ %i.cd, %.lr.ph.preheader.i6 ], [ %indvars.iv.next.i9, %.lr.ph.i7 ] ; 2 uses
  %.1914.i = phi float [ %.08.i, %.lr.ph.preheader.i6 ], [ %.sroa.speculated.i, %.lr.ph.i7 ] ; 2 uses
  %i.cf = getelementptr [4 x i8], ptr %i.bv, i64 %indvars.iv.i8 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 -4
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !108 ; 2 uses
  %i.ci = load float, ptr %i.cf, align 4, !tbaa !108 ; 2 uses
  %i.cj = fcmp olt float %i.ch, %i.ci
  %.25.i = select i1 %i.cj, float %i.ch, float %i.ci ; 2 uses
  %i.ck = fcmp olt float %.25.i, %.1914.i
  %.sroa.speculated.i = select i1 %i.ck, float %.25.i, float %.1914.i ; 2 uses
  %indvars.iv.next.i9 = add nuw nsw i64 %indvars.iv.i8, 2 ; 2 uses
  %i.cl = icmp samesign ult i64 %indvars.iv.next.i9, %i.ce
  br i1 %i.cl, label %.lr.ph.i7, label %_ZN8LightGBM6CommonL15ObtainMinMaxSumIffEEvPKT_iPS2_S5_PT0_.exit, !llvm.loop !699

_ZN8LightGBM6CommonL15ObtainMinMaxSumIffEEvPKT_iPS2_S5_PT0_.exit: ; preds = %.lr.ph.i7, %bb.n
  %.19.lcssa.i = phi float [ %.08.i, %bb.n ], [ %.sroa.speculated.i, %.lr.ph.i7 ]
  %i.cm = fcmp ugt float %.19.lcssa.i, 0.000000e+00
  br i1 %i.cm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN8LightGBM6CommonL15ObtainMinMaxSumIffEEvPKT_iPS2_S5_PT0_.exit
  %i.cn = load ptr, ptr %0, align 8, !tbaa !40
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call noundef nonnull align 8 dereferenceable(24) ptr %i.cp(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !93
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !38
  call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.95, ptr noundef %i.cs, ptr noundef nonnull @__func__._ZN8LightGBM18CrossEntropyMetric4InitERKNS_8MetadataEi)
  br label %bb.p

bb.p:                                             ; preds = %_ZN8LightGBM6CommonL15ObtainMinMaxSumIffEEvPKT_iPS2_S5_PT0_.exit, %bb.o, %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNK8LightGBM24CrossEntropyLambdaMetric7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNK8LightGBM24CrossEntropyLambdaMetric23factor_to_bigger_betterEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret double -1.000000e+00
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8LightGBM24CrossEntropyLambdaMetric4EvalEPKdPKNS_17ObjectiveFunctionE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca double, align 8                   ; 8 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @3)
  store ptr %2, ptr %i.a, align 8, !tbaa !86
  store ptr %3, ptr %i.b, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !88
  %i.e = icmp eq ptr %3, null
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !247
  %i.h = icmp eq ptr %i.g, null                   ; 2 uses
  %i.i = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @3, i32 %i.d, i32 %i.i)
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 3, ptr nonnull @_ZNK8LightGBM24CrossEntropyLambdaMetric4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined, ptr nonnull %1, ptr nonnull %i.a, ptr nonnull %i.c)
  br label %.noexc

bb.d:                                             ; preds = %bb.b
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 3, ptr nonnull @_ZNK8LightGBM24CrossEntropyLambdaMetric4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.96, ptr nonnull %1, ptr nonnull %i.a, ptr nonnull %i.c)
  br label %.noexc

bb.e:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 4, ptr nonnull @_ZNK8LightGBM24CrossEntropyLambdaMetric4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.97, ptr nonnull %1, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.c)
  br label %.noexc

bb.g:                                             ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 4, ptr nonnull @_ZNK8LightGBM24CrossEntropyLambdaMetric4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.98, ptr nonnull %1, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.c)
  br label %.noexc

.noexc:                                           ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  %i.j = load double, ptr %i.c, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !245
  %i.m = sitofp i32 %i.l to double
  %i.n = fdiv double %i.j, %i.m
  %i.o = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !83
  store double %i.n, ptr %i.o, align 8, !tbaa !88
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.r, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA21_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(21) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !93     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #32
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743)
  %i.m = select i1 %i.k, i64 288230376151711743, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 5                  ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #30 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !33
  %i.t = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(21) %2) #13 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZNK8LightGBM24CrossEntropyLambdaMetric4EvalEPKdPKNS_17ObjectiveFunctionE.omp_outlined.98.omp.reduction.reduction_func:bb.a
  %i.e = fadd double %i.c, %i.d
  store double %i.e, ptr %i.b, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM25KullbackLeiblerDivergenceD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN8LightGBM25KullbackLeiblerDivergenceE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !37
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !96
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM25KullbackLeiblerDivergenceD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN8LightGBM25KullbackLeiblerDivergenceE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !37
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #31, !inline_history !712
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZN8LightGBM25KullbackLeiblerDivergenceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !96
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #31, !inline_history !712
  br label %_ZN8LightGBM25KullbackLeiblerDivergenceD2Ev.exit

_ZN8LightGBM25KullbackLeiblerDivergenceD2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM25KullbackLeiblerDivergence4InitERKNS_8MetadataEi(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(300) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca float, align 4                    ; 7 uses
  %i.c = alloca float, align 4                    ; 7 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.82, align 8             ; 8 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !96
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.b, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store i64 16, ptr %i.e, align 8, !tbaa !41
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.g, align 8, !tbaa !38
  %i.l = load i64, ptr %i.e, align 8, !tbaa !41   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, ptr noundef nonnull align 1 dereferenceable(17) @.str.18, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !36
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.q, ptr %i.f, align 8, !tbaa !94
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA17_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr %i.g, ptr noundef nonnull align 1 dereferenceable(17) @.str.18)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit: ; preds = %.noexc.i.i, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 %2, ptr %i.s, align 8, !tbaa !249
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !102  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !250
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !104  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !104
  %i.aa = icmp eq ptr %i.x, %i.z
  %spec.select.i = select i1 %i.aa, ptr null, ptr %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %spec.select.i, ptr %i.ab, align 8, !tbaa !251
  %i.ac = icmp eq ptr %i.u, null
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit
  call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i32 noundef 261)
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !250
  %.pre41.a = load i32, ptr %i.s, align 8, !tbaa !249
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit
  %i.ad = phi i32 [ %.pre41.a, %bb.c ], [ %2, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit ] ; 4 uses
  %.pre43.a = phi ptr [ %.pre, %bb.c ], [ %i.u, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA17_KcEEERS5_DpOT_.exit ] ; 3 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call noundef nonnull align 8 dereferenceable(24) ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !93
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.pre43.a, ptr %i.a, align 8, !tbaa !104
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !108
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !108
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %i.a, ptr %3, align 8, !tbaa !240
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %i.ak, align 8, !tbaa !104
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.c, ptr %i.al, align 8, !tbaa !104
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.d, ptr %i.am, align 8, !tbaa !242
  %i.an = icmp sgt i32 %i.ad, 1
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i, %bb.d
  %i.ao = phi ptr [ %.pre43.a, %bb.d ], [ %i.bg, %bb.i ]
  %i.ap = and i32 %i.ad, 1
  %.not.i13 = icmp eq i32 %i.ap, 0
  br i1 %.not.i13, label %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit, label %bb.j

.lr.ph.i:                                         ; preds = %bb.d, %bb.i
  %i.aq = phi ptr [ %i.bg, %bb.i ], [ %.pre43.a, %bb.d ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ 1, %bb.d ] ; 5 uses
  %i.ar = add nsw i64 %indvars.iv.i, -1           ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !108 ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i
  %i.av = load float, ptr %i.au, align 4, !tbaa !108 ; 3 uses
  %i.aw = fcmp olt float %i.at, %i.av
  br i1 %i.aw, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  %i.ax = load float, ptr %i.b, align 4, !tbaa !108
  %i.ay = fcmp olt float %i.at, %i.ax
  br i1 %i.ay, label %.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = load float, ptr %i.c, align 4, !tbaa !108
  %i.ba = fcmp ogt float %i.av, %i.az
  br i1 %i.ba, label %.sink.split.i, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.bb = load float, ptr %i.c, align 4, !tbaa !108
  %i.bc = fcmp ogt float %i.at, %i.bb
  br i1 %i.bc, label %.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = load float, ptr %i.b, align 4, !tbaa !108
  %i.be = fcmp olt float %i.av, %i.bd
  br i1 %i.be, label %.sink.split.i, label %bb.i

.sink.split.i:                                    ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %indvars.iv.sink.i = phi i64 [ %i.ar, %bb.e ], [ %indvars.iv.i, %bb.f ], [ %i.ar, %bb.g ], [ %indvars.iv.i, %bb.h ]
  %i.bf = trunc nuw nsw i64 %indvars.iv.sink.i to i32
  call fastcc void @_ZZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKcENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bf)
  %.pre42 = load ptr, ptr %i.a, align 8, !tbaa !104
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i, %bb.h, %bb.f
  %i.bg = phi ptr [ %.pre42, %.sink.split.i ], [ %i.aq, %bb.h ], [ %i.aq, %bb.f ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %4 = trunc nuw i64 %indvars.iv.next.i to i32
  %5 = icmp sgt i32 %i.ad, %4
  br i1 %5, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !19

bb.j:                                             ; preds = %._crit_edge.i
  %i.bh = add nsw i32 %i.ad, -1                   ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !108 ; 2 uses
  %i.bl = load float, ptr %i.b, align 4, !tbaa !108
  %i.bm = fcmp olt float %i.bk, %i.bl
  %i.bn = load float, ptr %i.c, align 4
  %i.bo = fcmp ogt float %i.bk, %i.bn
  %or.cond.i = select i1 %i.bm, i1 true, i1 %i.bo
  br i1 %or.cond.i, label %bb.k, label %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit

bb.k:                                             ; preds = %bb.j
  call fastcc void @_ZZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKcENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.bh)
  br label %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit

_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit: ; preds = %._crit_edge.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bp = load ptr, ptr %0, align 8, !tbaa !40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef nonnull align 8 dereferenceable(24) ptr %i.br(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !93
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !38
  call void (ptr, ...) @_ZN8LightGBM3Log4InfoEPKcz(ptr noundef nonnull @.str.84, ptr noundef %i.bu, ptr noundef nonnull @__func__._ZN8LightGBM18CrossEntropyMetric4InitERKNS_8MetadataEi)
  %i.bv = load ptr, ptr %i.ab, align 8, !tbaa !251 ; 4 uses
  %i.bw = icmp eq ptr %i.bv, null
  %i.bx = load i32, ptr %i.s, align 8, !tbaa !249 ; 4 uses
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit
  %i.by = sitofp i32 %i.bx to double              ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.by, ptr %i.bz, align 8, !tbaa !252
  br label %bb.q

bb.m:                                             ; preds = %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cb = and i32 %i.bx, 1
  %.not.i14 = icmp eq i32 %i.cb, 0
  %i.cc = load float, ptr %i.bv, align 4, !tbaa !108 ; 5 uses
  br i1 %.not.i14, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !108 ; 3 uses
  %i.cf = fcmp olt float %i.cc, %i.ce
  %..i = select i1 %i.cf, float %i.cc, float %i.ce
  %i.cg = fadd float %i.cc, %i.ce
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.08.i = phi float [ %..i, %bb.n ], [ %i.cc, %bb.m ] ; 2 uses
  %.038.i = phi float [ %i.cg, %bb.n ], [ %i.cc, %bb.m ] ; 2 uses
  %.0.i = phi i32 [ 3, %bb.n ], [ 2, %bb.m ]      ; 2 uses
  %i.ch = icmp slt i32 %.0.i, %i.bx
  br i1 %i.ch, label %.lr.ph.preheader.i16, label %_ZN8LightGBM6CommonL15ObtainMinMaxSumIfdEEvPKT_iPS2_S5_PT0_.exit

.lr.ph.preheader.i16:                             ; preds = %bb.o
  %i.ci = zext nneg i32 %.0.i to i64
  %i.cj = zext nneg i32 %i.bx to i64
  br label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.lr.ph.i17, %.lr.ph.preheader.i16
  %indvars.iv.i18 = phi i64 [ %i.ci, %.lr.ph.preheader.i16 ], [ %indvars.iv.next.i19, %.lr.ph.i17 ] ; 2 uses
  %.13914.i = phi float [ %.038.i, %.lr.ph.preheader.i16 ], [ %i.cr, %.lr.ph.i17 ]
  %.1913.i = phi float [ %.08.i, %.lr.ph.preheader.i16 ], [ %.sroa.speculated.i, %.lr.ph.i17 ] ; 2 uses
  %i.ck = getelementptr [4 x i8], ptr %i.bv, i64 %indvars.iv.i18 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !108 ; 3 uses
  %i.cn = load float, ptr %i.ck, align 4, !tbaa !108 ; 3 uses
  %i.co = fcmp olt float %i.cm, %i.cn
  %.28.i = select i1 %i.co, float %i.cm, float %i.cn ; 2 uses
  %i.cp = fcmp olt float %.28.i, %.1913.i
  %.sroa.speculated.i = select i1 %i.cp, float %.28.i, float %.1913.i ; 2 uses
  %i.cq = fadd float %i.cm, %i.cn
  %i.cr = fadd float %.13914.i, %i.cq             ; 2 uses
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i18, 2 ; 2 uses
  %i.cs = icmp samesign ult i64 %indvars.iv.next.i19, %i.cj
  br i1 %i.cs, label %.lr.ph.i17, label %_ZN8LightGBM6CommonL15ObtainMinMaxSumIfdEEvPKT_iPS2_S5_PT0_.exit, !llvm.loop !20

_ZN8LightGBM6CommonL15ObtainMinMaxSumIfdEEvPKT_iPS2_S5_PT0_.exit: ; preds = %.lr.ph.i17, %bb.o
  %.19.lcssa.i = phi float [ %.08.i, %bb.o ], [ %.sroa.speculated.i, %.lr.ph.i17 ]
  %.139.lcssa.i = phi float [ %.038.i, %bb.o ], [ %i.cr, %.lr.ph.i17 ]
  %i.ct = fpext float %.139.lcssa.i to double     ; 2 uses
  store double %i.ct, ptr %i.ca, align 8, !tbaa !88
  %i.cu = fcmp olt float %.19.lcssa.i, 0.000000e+00
  br i1 %i.cu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN8LightGBM6CommonL15ObtainMinMaxSumIfdEEvPKT_iPS2_S5_PT0_.exit
  %i.cv = load ptr, ptr %0, align 8, !tbaa !40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef nonnull align 8 dereferenceable(24) ptr %i.cx(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !93
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !38
  call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.99, ptr noundef %i.da, ptr noundef nonnull @__func__._ZN8LightGBM18CrossEntropyMetric4InitERKNS_8MetadataEi)
  %.pre44 = load double, ptr %i.ca, align 8, !tbaa !252
  br label %bb.q

bb.q:                                             ; preds = %_ZN8LightGBM6CommonL15ObtainMinMaxSumIfdEEvPKT_iPS2_S5_PT0_.exit, %bb.p, %bb.l
  %i.db = phi double [ %i.ct, %_ZN8LightGBM6CommonL15ObtainMinMaxSumIfdEEvPKT_iPS2_S5_PT0_.exit ], [ %.pre44, %bb.p ], [ %i.by, %bb.l ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.dd = fcmp ugt double %i.db, 0.000000e+00
  br i1 %i.dd, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.de = load ptr, ptr %0, align 8, !tbaa !40
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = call noundef nonnull align 8 dereferenceable(24) ptr %i.dg(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !93
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !38
  %i.dk = load double, ptr %i.dc, align 8, !tbaa !252
  call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.86, ptr noundef %i.dj, ptr noundef nonnull @__func__._ZN8LightGBM18CrossEntropyMetric4InitERKNS_8MetadataEi, double noundef %i.dk)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dl = load ptr, ptr %0, align 8, !tbaa !40
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = call noundef nonnull align 8 dereferenceable(24) ptr %i.dn(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !93
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !38
  %i.dr = load double, ptr %i.dc, align 8, !tbaa !252
  call void (ptr, ...) @_ZN8LightGBM3Log4InfoEPKcz(ptr noundef nonnull @.str.87, ptr noundef %i.dq, ptr noundef nonnull @__func__._ZN8LightGBM18CrossEntropyMetric4InitERKNS_8MetadataEi, double noundef %i.dr)
  %i.ds = load ptr, ptr %i.ab, align 8, !tbaa !251 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  %i.du = icmp sgt i32 %2, 0                      ; 2 uses
  br i1 %i.dt, label %.preheader, label %.preheader25

.preheader25:                                     ; preds = %bb.s
  br i1 %i.du, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader25
  %i.dv = load ptr, ptr %i.v, align 8, !tbaa !250
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.x

.preheader:                                       ; preds = %bb.s
  br i1 %i.du, label %.lr.ph30, label %.loopexit

.lr.ph30:                                         ; preds = %.preheader
  %i.dw = load ptr, ptr %i.v, align 8, !tbaa !250
  %wide.trip.count39 = zext nneg i32 %2 to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph30, %_ZN8LightGBML8YentLossEd.exit
  %indvars.iv36 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next37, %_ZN8LightGBML8YentLossEd.exit ] ; 2 uses
  %i.dx = phi double [ 0.000000e+00, %.lr.ph30 ], [ %i.ei, %_ZN8LightGBML8YentLossEd.exit ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv36
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !108 ; 2 uses
  %i.ea = fpext float %i.dz to double             ; 3 uses
  %i.eb = fcmp ogt float %i.dz, 0.000000e+00
  br i1 %i.eb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ec = call double @llvm.log.f64(double %i.ea)
  %i.ed = call double @llvm.fmuladd.f64(double %i.ea, double %i.ec, double 0.000000e+00)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i20.a = phi double [ %i.ed, %bb.u ], [ 0.000000e+00, %bb.t ] ; 2 uses
  %i.ee = fsub double 1.000000e+00, %i.ea         ; 3 uses
  %i.ef = fcmp ogt double %i.ee, 0.000000e+00
  br i1 %i.ef, label %bb.w, label %_ZN8LightGBML8YentLossEd.exit

bb.w:                                             ; preds = %bb.v
  %i.eg = call double @llvm.log.f64(double %i.ee)
  %i.eh = call double @llvm.fmuladd.f64(double %i.ee, double %i.eg, double %.0.i20.a)
  br label %_ZN8LightGBML8YentLossEd.exit

_ZN8LightGBML8YentLossEd.exit:                    ; preds = %bb.v, %bb.w
  %.1.i = phi double [ %i.eh, %bb.w ], [ %.0.i20.a, %bb.v ]
  %i.ei = fadd double %.1.i, %i.dx                ; 2 uses
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %.loopexit, label %bb.t, !llvm.loop !713

bb.x:                                             ; preds = %.lr.ph, %_ZN8LightGBML8YentLossEd.exit23
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8LightGBML8YentLossEd.exit23 ] ; 3 uses
  %i.ej = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ex, %_ZN8LightGBML8YentLossEd.exit23 ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv
  %i.el = load float, ptr %i.ek, align 4, !tbaa !108 ; 2 uses
  %i.em = fpext float %i.el to double             ; 3 uses
  %i.en = fcmp ogt float %i.el, 0.000000e+00
  br i1 %i.en, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eo = call double @llvm.log.f64(double %i.em)
  %i.ep = call double @llvm.fmuladd.f64(double %i.em, double %i.eo, double 0.000000e+00)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
end_hunk_2
