inline.NumInlined: 3109
inline.NumDeleted: 1191
begin_hunk_0_@_ZNSt6vectorIN8facebook5velox3row13UnsafeRowFastESaIS3_EED2Ev:bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN8facebook5velox3row13UnsafeRowFastES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8facebook5velox3row13UnsafeRowFastESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox3row13UnsafeRowFastES3_EvT_S5_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !79
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #27
  br label %_ZNSt12_Vector_baseIN8facebook5velox3row13UnsafeRowFastESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN8facebook5velox3row13UnsafeRowFastESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox3row13UnsafeRowFastES3_EvT_S5_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox3row13UnsafeRowFastC2ERKSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(224) initializes((0, 1)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !95     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i8, ptr %i.b, align 8, !tbaa !27
  store i8 %i.c, ptr %0, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN8facebook5velox13DecodedVectorC1ERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 8 dereferenceable(94) %i.a, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.e, align 8, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr null, ptr %i.g, align 8, !tbaa !73
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 0, ptr %i.h, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 0, ptr %i.j, align 8, !tbaa !76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.f, i8 0, i64 36, i1 false)
  %i.k = load ptr, ptr %1, align 8, !tbaa !95
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  invoke void @_ZN8facebook5velox3row13UnsafeRowFast10initializeERKSt10shared_ptrIKNS0_4TypeEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !73   ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !75   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = ashr exact i64 %i.s, 3
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.u
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.s) #27
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.c, %bb.d
  tail call void @_ZNSt6vectorIN8facebook5velox3row13UnsafeRowFastESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #28
  tail call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.d) #28
  resume { ptr, i32 } %i.m
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox3row13UnsafeRowFastD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75   ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.g) #27
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !88   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !78   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN8facebook5velox3row13UnsafeRowFastES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 2 uses
  tail call void @_ZSt10destroy_atIN8facebook5velox3row13UnsafeRowFastEEvPT_(ptr noundef %.05.i.i), !inline_history !113
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 224 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i1, label %_ZSt8_DestroyIPN8facebook5velox3row13UnsafeRowFastES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i, !llvm.loop !90

_ZSt8_DestroyIPN8facebook5velox3row13UnsafeRowFastES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i
  %.pr.i = load ptr, ptr %i.k, align 8, !tbaa !88
  br label %_ZSt8_DestroyIPN8facebook5velox3row13UnsafeRowFastES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN8facebook5velox3row13UnsafeRowFastES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN8facebook5velox3row13UnsafeRowFastES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.p = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN8facebook5velox3row13UnsafeRowFastES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.l, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8facebook5velox3row13UnsafeRowFastESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox3row13UnsafeRowFastES3_EvT_S5_RSaIT0_E.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !79
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #27, !inline_history !114
  br label %_ZNSt6vectorIN8facebook5velox3row13UnsafeRowFastESaIS3_EED2Ev.exit

_ZNSt6vectorIN8facebook5velox3row13UnsafeRowFastESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox3row13UnsafeRowFastES3_EvT_S5_RSaIT0_E.exit.i, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN8facebook5velox3row13UnsafeRowFastESaIS3_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !83
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.d, %_ZNSt6vectorIN8facebook5velox3row13UnsafeRowFastESaIS3_EED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i1.i, label %_ZN8facebook5velox13DecodedVectorD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !81
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #27
  br label %_ZN8facebook5velox13DecodedVectorD2Ev.exit

_ZN8facebook5velox13DecodedVectorD2Ev.exit:       ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.e
  ret void
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox3row13UnsafeRowFast18serializedRowSizesERKN5folly5RangeIPKiEEPPi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15, !noalias !121 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt10shared_ptrIKN8facebook5velox7RowTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i, label %4

4:                                                ; preds = %bb.a
  %5 = tail call ptr @__dynamic_cast(ptr nonnull %i.d, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox7RowTypeE, i64 0) #28, !noalias !121 ; 4 uses
  %.not.not.i.i = icmp eq ptr %5, null
  br i1 %.not.not.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox7RowTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i, label %6

6:                                                ; preds = %4
  store ptr %5, ptr %3, align 8, !tbaa !7, !alias.scope !121
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %9 = load ptr, ptr %8, align 8, !tbaa !122, !noalias !121 ; 3 uses
  store ptr %9, ptr %7, align 8, !tbaa !122, !alias.scope !121
  %.not.i.i.i.i.i = icmp eq ptr %9, null
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit, label %bb.b

bb.b:                                             ; preds = %6
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !121
  %.not.i.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !121
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3, !noalias !121
  br label %_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4, !noalias !121 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !7
  br label %_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit

_ZNSt10shared_ptrIKN8facebook5velox7RowTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i: ; preds = %4, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !121
  br label %_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit

_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit: ; preds = %6, %bb.c, %bb.d, %_ZNSt10shared_ptrIKN8facebook5velox7RowTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i
  %.pre.i = phi ptr [ %5, %6 ], [ %5, %bb.c ], [ %.pre, %bb.d ], [ null, %_ZNSt10shared_ptrIKN8facebook5velox7RowTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pre.i, i64 48 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pre.i, i64 56 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13   ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %_ZN8facebook5velox3row12_GLOBAL__N_112isFixedWidthERKSt10shared_ptrIKNS0_4TypeEE.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.n
  br i1 %i.q, label %._crit_edge.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit, %bb.e
  %.sroa.09.015.i = phi ptr [ %i.p, %bb.e ], [ %i.l, %_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit ] ; 3 uses
  %i.r = load ptr, ptr %.sroa.09.015.i, align 8, !tbaa !15 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(18) %i.r)
          to label %.noexc unwind label %bb.m, !inline_history !123

.noexc:                                           ; preds = %.lr.ph.i
  br i1 %i.v, label %_ZN8facebook5velox3row12_GLOBAL__N_112isFixedWidthERKSt10shared_ptrIKNS0_4TypeEE.exit.i, label %_ZN8facebook5velox3row13UnsafeRowFast12fixedRowSizeERKSt10shared_ptrIKNS0_7RowTypeEE.exit

_ZN8facebook5velox3row12_GLOBAL__N_112isFixedWidthERKSt10shared_ptrIKNS0_4TypeEE.exit.i: ; preds = %.noexc
  %i.w = load ptr, ptr %.sroa.09.015.i, align 8, !tbaa !15
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.x, getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8facebook5velox15LongDecimalTypeE, i64 16)
  br i1 %.not.i, label %_ZN8facebook5velox3row13UnsafeRowFast12fixedRowSizeERKSt10shared_ptrIKNS0_7RowTypeEE.exit, label %bb.e

._crit_edge.loopexit.i:                           ; preds = %bb.e
  %.pre16.i = load ptr, ptr %i.m, align 8, !tbaa !21
  %.pre18.i = load ptr, ptr %i.k, align 8, !tbaa !23
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit
  %i.y = phi ptr [ %.pre18.i, %._crit_edge.loopexit.i ], [ %i.l, %_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit ]
  %i.z = phi ptr [ %.pre16.i, %._crit_edge.loopexit.i ], [ %i.l, %_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit ]
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %sext.i = shl i64 %i.ac, 28
  %i.ad = ashr exact i64 %sext.i, 3
  %i.ae = add nsw i64 %i.ad, 33822867456
  %sext14.i = lshr i64 %i.ae, 32
  %i.af = and i64 %sext14.i, 4294967288
  %i.ag = lshr exact i64 %i.ac, 1
  %i.ah = add nuw i64 %i.af, %i.ag
  %i.ai = and i64 %i.ah, 4294967288
  %i.aj = or disjoint i64 %i.ai, 4294967296
  br label %_ZN8facebook5velox3row13UnsafeRowFast12fixedRowSizeERKSt10shared_ptrIKNS0_7RowTypeEE.exit

_ZN8facebook5velox3row13UnsafeRowFast12fixedRowSizeERKSt10shared_ptrIKNS0_7RowTypeEE.exit: ; preds = %_ZN8facebook5velox3row12_GLOBAL__N_112isFixedWidthERKSt10shared_ptrIKNS0_4TypeEE.exit.i, %.noexc, %._crit_edge.i
  %.sroa.2.1.i = phi i64 [ %i.aj, %._crit_edge.i ], [ 0, %.noexc ], [ 0, %_ZN8facebook5velox3row12_GLOBAL__N_112isFixedWidthERKSt10shared_ptrIKNS0_4TypeEE.exit.i ] ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.2.1.i to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !122 ; 8 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox3row13UnsafeRowFast12fixedRowSizeERKSt10shared_ptrIKNS0_7RowTypeEE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.am, align 8, !tbaa !124
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !126
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #28, !inline_history !127
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #28, !inline_history !127
  br label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.ap, %bb.i ], [ %i.az, %bb.j ]
  %i.ba = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ba, label %bb.k, label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !128

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #28
  br label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN8facebook5velox3row13UnsafeRowFast12fixedRowSizeERKSt10shared_ptrIKNS0_7RowTypeEE.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.bb = and i64 %.sroa.2.1.i, 4294967296
  %.not26 = icmp eq i64 %i.bb, 0
  %i.bc = load ptr, ptr %1, align 8, !tbaa !129   ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !131 ; 3 uses
  %.not2430 = icmp eq ptr %i.bc, %i.be            ; 2 uses
  br i1 %.not26, label %.thread, label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  br i1 %.not2430, label %.loopexit, label %_ZNKRSt8optionalIiE5valueEv.exit.lr.ph

_ZNKRSt8optionalIiE5valueEv.exit.lr.ph:           ; preds = %bb.l
  %i.bf = add i32 %.sroa.0.0.extract.trunc, 4
  br label %_ZNKRSt8optionalIiE5valueEv.exit

bb.m:                                             ; preds = %.lr.ph.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.bg

_ZNKRSt8optionalIiE5valueEv.exit:                 ; preds = %_ZNKRSt8optionalIiE5valueEv.exit.lr.ph, %_ZNKRSt8optionalIiE5valueEv.exit
  %.029 = phi ptr [ %i.bc, %_ZNKRSt8optionalIiE5valueEv.exit.lr.ph ], [ %i.bl, %_ZNKRSt8optionalIiE5valueEv.exit ] ; 2 uses
  %i.bh = load i32, ptr %.029, align 4, !tbaa !3
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !80
  store i32 %i.bf, ptr %i.bk, align 4, !tbaa !3
  %i.bl = getelementptr inbounds nuw i8, ptr %.029, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bl, %i.be
  br i1 %.not, label %.loopexit, label %_ZNKRSt8optionalIiE5valueEv.exit

.thread:                                          ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  br i1 %.not2430, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.thread, %.lr.ph
  %.02331 = phi ptr [ %i.bt, %.lr.ph ], [ %i.bc, %.thread ] ; 3 uses
  %i.bm = load i32, ptr %.02331, align 4, !tbaa !3
  %i.bn = tail call noundef i32 @_ZNK8facebook5velox3row13UnsafeRowFast10rowRowSizeEi(ptr noundef nonnull readonly align 8 dereferenceable(224) %0, i32 noundef %i.bm)
  %i.bo = add i32 %i.bn, 4
  %i.bp = load i32, ptr %.02331, align 4, !tbaa !3
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !80
  store i32 %i.bo, ptr %i.bs, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw i8, ptr %.02331, i64 4 ; 2 uses
  %.not24 = icmp eq ptr %i.bt, %i.be
  br i1 %.not24, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZNKRSt8optionalIiE5valueEv.exit, %.lr.ph, %bb.l, %.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !126
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !132
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !132
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
end_hunk_0
