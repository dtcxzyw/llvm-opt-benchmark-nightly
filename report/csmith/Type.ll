Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/Type?download=true
inline.NumInlined: 1553
inline.NumDeleted: 527
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4Type21copy_all_fields_typesERSt6vectorIPKS_SaIS2_EES5_:bb.a
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.n ; 2 uses
  %i.x = load ptr, ptr %.sroa.03.06, align 8, !tbaa !50
  store ptr %i.x, ptr %i.w, align 8, !tbaa !50
  %i.y = icmp sgt i64 %i.n, 0
  br i1 %i.y, label %bb.f, label %_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPK4TypeSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.k, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPK4TypeSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #27
  br label %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.v, ptr %0, align 8, !tbaa !81
  store ptr %i.z, ptr %i.e, align 8, !tbaa !80
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t ; 2 uses
  store ptr %i.aa, ptr %i.f, align 8, !tbaa !91
  br label %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ab = phi ptr [ %i.g, %bb.c ], [ %i.aa, %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.ac = phi ptr [ %i.j, %bb.c ], [ %i.z, %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.06, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %._crit_edge, label %bb.b, !llvm.loop !7
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Type17reset_accum_typesERSt6vectorIPKS_SaIS2_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !81     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIPK4TypeSaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPPK4TypeS2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPK4TypeS2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !80
  br label %_ZNSt6vectorIPK4TypeSaIS2_EE5clearEv.exit

_ZNSt6vectorIPK4TypeSaIS2_EE5clearEv.exit:        ; preds = %bb.a, %_ZSt8_DestroyIPPK4TypeS2_EvT_S4_RSaIT0_E.exit.i.i
  %i.d = phi ptr [ %i.c, %bb.a ], [ %i.a, %_ZSt8_DestroyIPPK4TypeS2_EvT_S4_RSaIT0_E.exit.i.i ]
  %i.e = load ptr, ptr @_ZL8AllTypes, align 8, !tbaa !92 ; 2 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8AllTypes, i64 8), align 8, !tbaa !92
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPK4TypeSaIS2_EE5clearEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !91
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit, %_ZNSt6vectorIPK4TypeSaIS2_EE5clearEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit
  %i.i = phi ptr [ %i.a, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit ] ; 5 uses
  %i.j = phi ptr [ %.pre, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %i.k = phi ptr [ %i.d, %.lr.ph ], [ %i.af, %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %.sroa.02.05 = phi ptr [ %i.e, %.lr.ph ], [ %i.ag, %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %.sroa.02.05, align 8, !tbaa !50
  store ptr %i.l, ptr %i.k, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !80
  br label %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.n, %i.o                       ; 6 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIPK4TypeSaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #30
  unreachable

_ZNKSt6vectorIPK4TypeSaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #28 ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.p ; 2 uses
  %i.z = load ptr, ptr %.sroa.02.05, align 8, !tbaa !50
  store ptr %i.z, ptr %i.y, align 8, !tbaa !50
  %i.aa = icmp sgt i64 %i.p, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPK4TypeSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.i, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPK4TypeSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.p) #27
  br label %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.x, ptr %0, align 8, !tbaa !81
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !80
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v ; 2 uses
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !91
  br label %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ad = phi ptr [ %i.i, %bb.c ], [ %i.x, %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.ae = phi ptr [ %i.j, %bb.c ], [ %i.ac, %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.af = phi ptr [ %i.m, %bb.c ], [ %i.ab, %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.05, i64 8 ; 2 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8AllTypes, i64 8), align 8, !tbaa !92
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %._crit_edge, label %bb.b, !llvm.loop !8
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4Type22delete_useless_structsERSt6vectorIPKS_SaIS2_EES5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !81     ; 3 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.pre1418 = phi ptr [ %.pre1419, %bb.e ], [ %i.c, %bb.a ] ; 2 uses
  %.pre1315 = phi ptr [ %.pre1316, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = phi ptr [ %i.p, %bb.e ], [ %i.c, %bb.a ] ; 2 uses
  %i.e = phi ptr [ %i.q, %bb.e ], [ %i.b, %bb.a ]
  %.012 = phi i64 [ %i.r, %bb.e ], [ 0, %bb.a ]   ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.012
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !73
  %i.i = icmp eq i32 %i.h, 3
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.j = load ptr, ptr %1, align 8, !tbaa !81     ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.012
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.l) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 136) #27
  %.pre = load ptr, ptr %1, align 8, !tbaa !81
  %.pre13.pre = load ptr, ptr %i.a, align 8, !tbaa !80
  %.pre14.pre = load ptr, ptr %0, align 8, !tbaa !81
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre14 = phi ptr [ %.pre14.pre, %bb.c ], [ %.pre1418, %bb.b ] ; 2 uses
  %.pre13 = phi ptr [ %.pre13.pre, %bb.c ], [ %.pre1315, %bb.b ] ; 2 uses
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.j, %bb.b ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.012
  store ptr %i.g, ptr %i.o, align 8, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.pre1419 = phi ptr [ %.pre14, %bb.d ], [ %.pre1418, %.lr.ph ]
  %.pre1316 = phi ptr [ %.pre13, %bb.d ], [ %.pre1315, %.lr.ph ]
  %i.p = phi ptr [ %.pre14, %bb.d ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.q = phi ptr [ %.pre13, %bb.d ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.r = add nuw i64 %.012, 1                     ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = icmp ult i64 %i.r, %i.v
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !9
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Type21make_all_struct_typesEiRSt6vectorIPKS_SaIS2_EE(i32 noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.13", align 8    ; 13 uses
  %3 = alloca %"class.std::vector.18", align 8    ; 11 uses
  %4 = alloca %"class.std::vector.18", align 8    ; 11 uses
  %5 = alloca %class.Enumerator, align 8          ; 14 uses
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %0, -1
  tail call void @_ZN4Type21make_all_struct_typesEiRSt6vectorIPKS_SaIS2_EE(i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %1, align 8, !tbaa !92     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !92   ; 3 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_ZN4Type21copy_all_fields_typesERSt6vectorIPKS_SaIS2_EES5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i, %.lr.ph.i
  %.pre43 = phi ptr [ %i.e, %.lr.ph.i ], [ %.pre44, %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i ] ; 2 uses
  %i.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.ac, %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i ]
  %i.j = phi ptr [ null, %.lr.ph.i ], [ %i.ad, %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i ] ; 7 uses
  %i.k = phi ptr [ null, %.lr.ph.i ], [ %i.ae, %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i ] ; 3 uses
  %i.l = phi ptr [ null, %.lr.ph.i ], [ %i.af, %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i ] ; 3 uses
  %.sroa.03.06.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.ag, %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, %i.k
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %.sroa.03.06.i, align 8, !tbaa !50
  store ptr %i.m, ptr %i.l, align 8, !tbaa !50
  %6 = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %6, ptr %i.g, align 8, !tbaa !80
  br label %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o                       ; 6 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.g, label %_ZNKSt6vectorIPK4TypeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIPK4TypeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #28
          to label %.noexc21 unwind label %.loopexit ; 5 uses

.noexc21:                                         ; preds = %_ZNKSt6vectorIPK4TypeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.p ; 2 uses
  %i.z = load ptr, ptr %.sroa.03.06.i, align 8, !tbaa !50
  store ptr %i.z, ptr %i.y, align 8, !tbaa !50
  %i.aa = icmp sgt i64 %i.p, 0
  br i1 %i.aa, label %bb.h, label %_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.h:                                             ; preds = %.noexc21
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.j, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.h, %.noexc21
  %7 = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #27
  %.pre.pre = load ptr, ptr %i.d, align 8, !tbaa !92
  br label %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.i ], [ %.pre43, %_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i ] ; 2 uses
  store ptr %i.x, ptr %2, align 8, !tbaa !81
  store ptr %7, ptr %i.g, align 8, !tbaa !80
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v ; 2 uses
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !91
  br label %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i

_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i: ; preds = %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.e
  %.pre44 = phi ptr [ %.pre43, %bb.e ], [ %.pre, %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ac = phi ptr [ %i.i, %bb.e ], [ %.pre, %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ad = phi ptr [ %i.j, %bb.e ], [ %i.x, %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ae = phi ptr [ %i.k, %bb.e ], [ %i.ab, %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.af = phi ptr [ %6, %bb.e ], [ %7, %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i, i64 8 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.ac
  br i1 %i.ah, label %_ZN4Type21copy_all_fields_typesERSt6vectorIPKS_SaIS2_EES5_.exit, label %bb.d, !llvm.loop !7

_ZN4Type21copy_all_fields_typesERSt6vectorIPKS_SaIS2_EES5_.exit: ; preds = %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i, %bb.c
  %i.ai = phi ptr [ null, %bb.c ], [ %i.ad, %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i ] ; 4 uses
  invoke void @_ZN4Type17reset_accum_typesERSt6vectorIPKS_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.j unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %_ZN4Type21copy_all_fields_typesERSt6vectorIPKS_SaIS2_EES5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.aj = invoke noundef i32 @_ZN13Probabilities8get_probE8ProbName(i32 noundef 9)
          to label %_Z16RegularConstProbv.exit unwind label %bb.z

_Z16RegularConstProbv.exit:                       ; preds = %bb.j
  %i.ak = invoke noundef i32 @_ZN13Probabilities8get_probE8ProbName(i32 noundef 8)
          to label %_Z19RegularVolatileProbv.exit unwind label %bb.z

_Z19RegularVolatileProbv.exit:                    ; preds = %_Z16RegularConstProbv.exit
  invoke void @_ZN12CVQualifiers18get_all_qualifiersERSt6vectorIS_SaIS_EEjj(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.aj, i32 noundef %i.ak)
          to label %bb.k unwind label %bb.z

bb.k:                                             ; preds = %_Z19RegularVolatileProbv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.al = invoke noundef i32 @_ZN13Probabilities8get_probE8ProbName(i32 noundef 13)
          to label %_Z14FieldConstProbv.exit unwind label %bb.aa

_Z14FieldConstProbv.exit:                         ; preds = %bb.k
  %i.am = invoke noundef i32 @_ZN13Probabilities8get_probE8ProbName(i32 noundef 12)
          to label %_Z17FieldVolatileProbv.exit unwind label %bb.aa

_Z17FieldVolatileProbv.exit:                      ; preds = %_Z14FieldConstProbv.exit
  invoke void @_ZN12CVQualifiers18get_all_qualifiersERSt6vectorIS_SaIS_EEjj(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.al, i32 noundef %i.am)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %_Z17FieldVolatileProbv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  store i32 0, ptr %i.an, align 8, !tbaa !126
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !127
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !128
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !129
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  store i64 0, ptr %i.ar, align 8
  store ptr %i.an, ptr %i.as, align 8, !tbaa !130
  store ptr %i.an, ptr %i.at, align 8, !tbaa !130
  %i.au = invoke noundef i32 @_ZN13Probabilities8get_probE8ProbName(i32 noundef 5)
          to label %_Z23ExhaustiveBitFieldsProbv.exit unwind label %bb.ab

_Z23ExhaustiveBitFieldsProbv.exit:                ; preds = %bb.l
  invoke void @_ZN4Type27init_is_bitfield_enumeratorER10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEi(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef %i.au)
          to label %bb.m unwind label %bb.ab

bb.m:                                             ; preds = %_Z23ExhaustiveBitFieldsProbv.exit
  store ptr %i.an, ptr %i.as, align 8, !tbaa !130
  %i.av = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.an) #32 ; 5 uses
  store ptr %i.av, ptr %i.as, align 8, !tbaa !132
  %.cast.i.i = ptrtoint ptr %i.av to i64
  store i64 %.cast.i.i, ptr %i.at, align 8, !tbaa !130
  %i.aw = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %i.av) #32
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !132
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !128
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !134 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !115
  %i.bd = load i32, ptr %i.ba, align 4, !tbaa !114
  %i.be = icmp slt i32 %i.bc, %i.bd
  br i1 %i.be, label %.critedge.i, label %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5beginEv.exit.preheader

.critedge.i:                                      ; preds = %bb.n, %bb.m
  br label %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5beginEv.exit.preheader

_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5beginEv.exit.preheader: ; preds = %bb.n, %.critedge.i
  %.0.ph = phi ptr [ null, %bb.n ], [ %5, %.critedge.i ]
  br label %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5beginEv.exit

_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5beginEv.exit: ; preds = %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5beginEv.exit.preheader, %bb.ae
  %.0 = phi ptr [ %i.dp, %bb.ae ], [ %.0.ph, %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5beginEv.exit.preheader ] ; 3 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.o, label %bb.ad

bb.o:                                             ; preds = %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5beginEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !80 ; 2 uses
  %i.bh = load ptr, ptr %2, align 8, !tbaa !81    ; 6 uses
  %.not.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not.i, label %_ZN4Type22delete_useless_structsERSt6vectorIPKS_SaIS2_EES5_.exit, label %.lr.ph.i27.preheader

.lr.ph.i27.preheader:                             ; preds = %bb.o
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 3
  br label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.i27.preheader, %bb.s
  %.012.i = phi i64 [ %i.bw, %bb.s ], [ 0, %.lr.ph.i27.preheader ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.012.i
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !50 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !73
  %i.bp = icmp eq i32 %i.bo, 3
  br i1 %i.bp, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.lr.ph.i27
  %i.bq = load ptr, ptr %1, align 8, !tbaa !81    ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.012.i
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !50 ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.bs) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef 136) #27
  %.pre.i28 = load ptr, ptr %1, align 8, !tbaa !81
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bu = phi ptr [ %.pre.i28, %bb.q ], [ %i.bq, %bb.p ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.012.i
  store ptr %i.bn, ptr %i.bv, align 8, !tbaa !50
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i27
  %i.bw = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bw, %i.bl
  br i1 %exitcond.not, label %_ZN4Type22delete_useless_structsERSt6vectorIPKS_SaIS2_EES5_.exit, label %.lr.ph.i27, !llvm.loop !9

_ZN4Type22delete_useless_structsERSt6vectorIPKS_SaIS2_EES5_.exit: ; preds = %bb.s, %bb.o
  %i.bx = load ptr, ptr %i.ap, align 8, !tbaa !128 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.an
  br i1 %i.by, label %._crit_edge.i, label %.lr.ph.i29

._crit_edge.i:                                    ; preds = %bb.v, %_ZN4Type22delete_useless_structsERSt6vectorIPKS_SaIS2_EES5_.exit
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !127
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10EnumeratorIS5_E10EnumObjectEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %i.bz)
          to label %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %._crit_edge.i
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #31
  unreachable

.lr.ph.i29:                                       ; preds = %_ZN4Type22delete_useless_structsERSt6vectorIPKS_SaIS2_EES5_.exit, %bb.v
  %.sroa.01.04.i = phi ptr [ %i.cf, %bb.v ], [ %i.bx, %_ZN4Type22delete_useless_structsERSt6vectorIPKS_SaIS2_EES5_.exit ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 64
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !134 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i29
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef 12) #27
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i29
  %i.cf = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.04.i) #32 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.an
  br i1 %i.cg, label %._crit_edge.i, label %.lr.ph.i29, !llvm.loop !5

_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.ch = load ptr, ptr %4, align 8, !tbaa !83    ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !105 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ch, %i.cj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i ], [ %i.ch, %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ] ; 3 uses
  %i.ck = load ptr, ptr %.05.i.i.i, align 8, !tbaa !43
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.05.i.i.i) #29, !inline_history !2
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cm, %i.cj
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !83
  br label %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.cn = phi ptr [ %.pr.i, %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.ch, %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !106
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cs) #27
  br label %_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev.exit

_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.ct = load ptr, ptr %3, align 8, !tbaa !83    ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !105 ; 2 uses
  %.not4.i.i.i30 = icmp eq ptr %i.ct, %i.cv
  br i1 %.not4.i.i.i30, label %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exit.i36, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev.exit, %.lr.ph.i.i.i31
  %.05.i.i.i32 = phi ptr [ %i.cy, %.lr.ph.i.i.i31 ], [ %i.ct, %_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev.exit ] ; 3 uses
  %i.cw = load ptr, ptr %.05.i.i.i32, align 8, !tbaa !43
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.05.i.i.i32) #29, !inline_history !2
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i32, i64 96 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.cy, %i.cv
  br i1 %.not.i.i.i33, label %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i34, label %.lr.ph.i.i.i31, !llvm.loop !0

_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i34: ; preds = %.lr.ph.i.i.i31
  %.pr.i35 = load ptr, ptr %3, align 8, !tbaa !83
  br label %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exit.i36

_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exit.i36: ; preds = %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i34, %_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev.exit
  %i.cz = phi ptr [ %.pr.i35, %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i34 ], [ %i.ct, %_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i37 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i1.i37, label %_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev.exit38, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exit.i36
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !106
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.de) #27
  br label %_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev.exit38

_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev.exit38:   ; preds = %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exit.i36, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.not.i.i.i39 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIPK4TypeSaIS2_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev.exit38
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !91
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.bh to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.dj) #27
  br label %_ZNSt6vectorIPK4TypeSaIS2_EED2Ev.exit

_ZNSt6vectorIPK4TypeSaIS2_EED2Ev.exit:            ; preds = %_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev.exit38, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIPK4TypeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp:                               ; preds = %_ZN4Type21copy_all_fields_typesERSt6vectorIPKS_SaIS2_EES5_.exit, %bb.g
  %i.dk = phi ptr [ %i.ai, %_ZN4Type21copy_all_fields_typesERSt6vectorIPKS_SaIS2_EES5_.exit ], [ %i.j, %bb.g ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.z:                                             ; preds = %_Z16RegularConstProbv.exit, %bb.j, %_Z19RegularVolatileProbv.exit
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.aa:                                            ; preds = %_Z14FieldConstProbv.exit, %bb.k, %_Z17FieldVolatileProbv.exit
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ab:                                            ; preds = %bb.l, %_Z23ExhaustiveBitFieldsProbv.exit
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ac:                                            ; preds = %bb.ae, %bb.ad
  %i.do = landingpad { ptr, i32 }
          cleanup
  %.pre42.pre.pre.pre = load ptr, ptr %2, align 8, !tbaa !81
  br label %bb.af

bb.ad:                                            ; preds = %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5beginEv.exit
  invoke void @_ZN4Type22make_all_struct_types_ER10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERSt6vectorIPKS_SaISB_EESE_RS9_I12CVQualifiersSaISF_EESI_(ptr noundef nonnull align 8 dereferenceable(64) %.0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.ae unwind label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  %i.dp = invoke noundef ptr @_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4nextEv(ptr noundef nonnull align 8 dereferenceable(64) %.0)
          to label %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5beginEv.exit unwind label %bb.ac, !llvm.loop !269

bb.af:                                            ; preds = %bb.ac, %bb.ab
  %.pre42.pre.pre = phi ptr [ %.pre42.pre.pre.pre, %bb.ac ], [ %i.ai, %bb.ab ]
  %.pn = phi { ptr, i32 } [ %i.do, %bb.ac ], [ %i.dn, %bb.ab ]
  call void @_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.aa
  %.pre42.pre = phi ptr [ %.pre42.pre.pre, %bb.af ], [ %i.ai, %bb.aa ]
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.af ], [ %i.dm, %bb.aa ]
  call void @_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.z
  %.pre42 = phi ptr [ %.pre42.pre, %bb.ag ], [ %i.ai, %bb.z ]
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ag ], [ %i.dl, %bb.z ]
  call void @_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ah
  %i.dq = phi ptr [ %.pre42, %bb.ah ], [ %i.j, %.loopexit ], [ %i.dk, %.loopexit.split-lp ] ; 3 uses
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ah ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i40 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIPK4TypeSaIS2_EED2Ev.exit41, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !91
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dv) #27
  br label %_ZNSt6vectorIPK4TypeSaIS2_EED2Ev.exit41

_ZNSt6vectorIPK4TypeSaIS2_EED2Ev.exit41:          ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN12CVQualifiers18get_all_qualifiersERSt6vectorIS_SaIS_EEjj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Type27make_all_struct_union_typesEv() local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::vector.13", align 8    ; 12 uses
  %i.a = tail call noundef i32 @_ZN9CGOptions23max_nested_struct_levelEv()
  %i.b = tail call noundef zeroext i1 @_ZN9CGOptions14dfs_exhaustiveEv()
  br i1 %i.b, label %_ZNSt6vectorIPK4TypeSaIS2_EE5clearEv.exit.i, label %bb.o

_ZNSt6vectorIPK4TypeSaIS2_EE5clearEv.exit.i:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.d = load ptr, ptr @_ZL8AllTypes, align 8, !tbaa !92 ; 2 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8AllTypes, i64 8), align 8, !tbaa !92 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN4Type17reset_accum_typesERSt6vectorIPKS_SaIS2_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIPK4TypeSaIS2_EE5clearEv.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i, %.lr.ph.i
  %i.h = phi ptr [ %i.e, %.lr.ph.i ], [ %i.ad, %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i ]
  %i.i = phi ptr [ null, %.lr.ph.i ], [ %i.ae, %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i ] ; 6 uses
  %i.j = phi ptr [ null, %.lr.ph.i ], [ %i.af, %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i ] ; 3 uses
  %i.k = phi ptr [ null, %.lr.ph.i ], [ %i.ag, %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i ] ; 3 uses
  %.sroa.02.05.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.ah, %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %.sroa.02.05.i, align 8, !tbaa !50
  store ptr %i.l, ptr %i.k, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.c, align 8, !tbaa !80
  br label %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.n, %i.o                       ; 6 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIPK4TypeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #30
          to label %.noexc unwind label %.loopexit.split-lp20

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPK4TypeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #28
          to label %.noexc8 unwind label %.loopexit19 ; 5 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorIPK4TypeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.p ; 2 uses
  %i.z = load ptr, ptr %.sroa.02.05.i, align 8, !tbaa !50
  store ptr %i.z, ptr %i.y, align 8, !tbaa !50
  %i.aa = icmp sgt i64 %i.p, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.i, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.f, %.noexc8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.p) #27
  br label %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPK4TypeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.x, ptr %0, align 8, !tbaa !81
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !80
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v ; 2 uses
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !91
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8AllTypes, i64 8), align 8, !tbaa !92
  br label %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i

_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i: ; preds = %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.c
  %i.ad = phi ptr [ %i.h, %bb.c ], [ %.pre, %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ae = phi ptr [ %i.i, %bb.c ], [ %i.x, %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.af = phi ptr [ %i.j, %bb.c ], [ %i.ac, %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ag = phi ptr [ %i.m, %bb.c ], [ %i.ab, %_ZNSt6vectorIPK4TypeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.ad
  br i1 %i.ai, label %_ZN4Type17reset_accum_typesERSt6vectorIPKS_SaIS2_EE.exit, label %bb.b, !llvm.loop !8

_ZN4Type17reset_accum_typesERSt6vectorIPKS_SaIS2_EE.exit: ; preds = %_ZNSt6vectorIPK4TypeSaIS2_EE9push_backERKS2_.exit.i, %_ZNSt6vectorIPK4TypeSaIS2_EE5clearEv.exit.i
  invoke void @_ZN4Type21make_all_struct_typesEiRSt6vectorIPKS_SaIS2_EE(i32 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.h unwind label %.loopexit.split-lp20

bb.h:                                             ; preds = %_ZN4Type17reset_accum_typesERSt6vectorIPKS_SaIS2_EE.exit
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8AllTypes, i64 8), align 8, !tbaa !107 ; 2 uses
  %i.ak = load ptr, ptr @_ZL8AllTypes, align 8, !tbaa !28
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3                 ; 2 uses
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.aq = load ptr, ptr %0, align 8, !tbaa !81    ; 6 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3                 ; 2 uses
  %i.av = icmp ult i64 %i.ao, %i.au
  br i1 %i.av, label %.lr.ph.preheader, label %._crit_edge
end_hunk_0
