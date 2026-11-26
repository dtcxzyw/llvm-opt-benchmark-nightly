Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/objective_function?download=true
inline.NumInlined: 4075
inline.NumDeleted: 1027
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN8LightGBM14LambdarankNDCG21ConstructSigmoidTableEv:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !192    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !194
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !191
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !191
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !193
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #37
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #34 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !191
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !191
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !194
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #35
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !192
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !193
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !194
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM16RankingObjective30GetGradientsWithSampledQueriesEPKdiPKiPfS5_.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !204    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !204
  %i.h = load i32, ptr %0, align 4, !tbaa !204    ; 4 uses
  tail call void @__kmpc_dispatch_init_4(ptr nonnull @2, i32 %i.h, i32 1073741860, i32 0, i32 %i.g, i32 1, i32 1)
  %i.i = call i32 @__kmpc_dispatch_next_4(ptr nonnull @2, i32 %i.h, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not86 = icmp eq i32 %i.i, 0
  br i1 %.not86, label %._crit_edge89, label %.lr.ph88

.lr.ph88:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.c

.loopexit67:                                      ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.c
  %i.p = call i32 @__kmpc_dispatch_next_4(ptr nonnull @2, i32 %i.h, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %._crit_edge89, label %bb.c

bb.c:                                             ; preds = %.lr.ph88, %.loopexit67
  %i.q = load i32, ptr %i.a, align 4, !tbaa !204  ; 2 uses
  %i.r = load i32, ptr %i.b, align 4, !tbaa !204, !llvm.access.group !619
  %.not5182 = icmp sgt i32 %i.q, %i.r
  br i1 %.not5182, label %.loopexit67, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %bb.c
  %i.s = sext i32 %i.q to i64
  br label %.lr.ph85

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %indvars.iv99 = phi i64 [ %i.s, %.lr.ph85.preheader ], [ %indvars.iv.next100, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 4 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !240, !llvm.access.group !619 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  %i.v = trunc nsw i64 %indvars.iv99 to i32
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph85
  %i.w = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv99
  %i.x = load i32, ptr %i.w, align 4, !tbaa !204, !llvm.access.group !619
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph85, %bb.d
  %i.y = phi i32 [ %i.x, %bb.d ], [ %i.v, %.lr.ph85 ] ; 2 uses
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !310, !llvm.access.group !619
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !204, !llvm.access.group !619 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !204, !llvm.access.group !619
  %i.af = sub i32 %i.ae, %i.ac                    ; 6 uses
  %i.ag = load i32, ptr %i.k, align 8, !tbaa !299, !llvm.access.group !619
  %i.ah = icmp sgt i32 %i.ag, 0
  %i.ai = sext i32 %i.ac to i64                   ; 7 uses
  br i1 %i.ah, label %.preheader65, label %.thread

.preheader65:                                     ; preds = %bb.e
  %i.aj = icmp sgt i32 %i.af, 0
  br i1 %i.aj, label %.lr.ph.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader65
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !297, !llvm.access.group !619
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ai
  br label %bb.l

.lr.ph.preheader:                                 ; preds = %.preheader65
  %wide.trip.count = zext nneg i32 %i.af to i64
  br label %.lr.ph

.thread:                                          ; preds = %bb.e
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !297, !llvm.access.group !619
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ai
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 2 uses
  %.sroa.10.077 = phi ptr [ null, %.lr.ph.preheader ], [ %.sroa.10.2, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 3 uses
  %.sroa.7.076 = phi ptr [ null, %.lr.ph.preheader ], [ %.sroa.7.1, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 3 uses
  %.sroa.0.075 = phi ptr [ null, %.lr.ph.preheader ], [ %.sroa.0.2, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 5 uses
  %i.ao = load ptr, ptr %5, align 8, !tbaa !222, !llvm.access.group !619
  %i.ap = add nsw i64 %indvars.iv, %i.ai          ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !191, !llvm.access.group !619
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !307, !llvm.access.group !619
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ap
  %i.au = load i32, ptr %i.at, align 4, !tbaa !204, !llvm.access.group !619
  %i.av = sext i32 %i.au to i64
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !174, !llvm.access.group !619
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !169, !llvm.access.group !619
  %i.az = fpext float %i.ay to double
  %i.ba = fadd double %i.ar, %i.az                ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.7.076, %.sroa.10.077
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store double %i.ba, ptr %.sroa.7.076, align 8, !tbaa !191, !llvm.access.group !619
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.g:                                             ; preds = %.lr.ph
  %i.bb = ptrtoint ptr %.sroa.10.077 to i64
  %i.bc = ptrtoint ptr %.sroa.0.075 to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.h, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #37
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.access.group !619

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i), !llvm.access.group !619
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #34
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.access.group !619 ; 4 uses

.noexc53:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store double %i.ba, ptr %i.bm, align 8, !tbaa !191, !llvm.access.group !619
  %i.bn = icmp sgt i64 %i.bd, 0
  br i1 %i.bn, label %bb.i, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %.noexc53
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr align 8 %.sroa.0.075, i64 %i.bd, i1 false), !llvm.access.group !619
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %.noexc53
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.075, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.075, i64 noundef %i.bd) #35, !llvm.access.group !619
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.f
  %.sroa.0.2 = phi ptr [ %i.bl, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.0.075, %bb.f ] ; 4 uses
  %.pn = phi ptr [ %i.bm, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.7.076, %bb.f ]
  %.sroa.10.2 = phi ptr [ %i.bo, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.10.077, %bb.f ] ; 3 uses
  %.sroa.7.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !620

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %.pr.pre = load i32, ptr %i.k, align 8, !tbaa !299
  %i.bp = icmp sgt i32 %.pr.pre, 0
  %i.bq = load ptr, ptr %i.l, align 8, !tbaa !297, !llvm.access.group !619
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.ai ; 2 uses
  br i1 %i.bp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread, %._crit_edge
  %i.bs = phi ptr [ %i.an, %.thread ], [ %i.br, %._crit_edge ]
  %.sroa.10.164 = phi ptr [ null, %.thread ], [ %.sroa.10.2, %._crit_edge ]
  %.sroa.0.162 = phi ptr [ null, %.thread ], [ %.sroa.0.2, %._crit_edge ]
  %i.bt = load ptr, ptr %5, align 8, !tbaa !222, !llvm.access.group !619
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.ai
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread, %._crit_edge, %bb.k
  %i.bv = phi ptr [ %i.bs, %bb.k ], [ %i.br, %._crit_edge ], [ %i.al, %._crit_edge.thread ]
  %.sroa.10.163 = phi ptr [ %.sroa.10.164, %bb.k ], [ %.sroa.10.2, %._crit_edge ], [ null, %._crit_edge.thread ]
  %.sroa.0.161 = phi ptr [ %.sroa.0.162, %bb.k ], [ %.sroa.0.2, %._crit_edge ], [ null, %._crit_edge.thread ] ; 3 uses
  %i.bw = phi ptr [ %i.bu, %bb.k ], [ %.sroa.0.2, %._crit_edge ], [ null, %._crit_edge.thread ]
  %i.bx = load ptr, ptr %6, align 8, !tbaa !220, !llvm.access.group !619
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.ai
  %i.bz = load ptr, ptr %7, align 8, !tbaa !220, !llvm.access.group !619
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.ai
  %i.cb = load ptr, ptr %4, align 8, !tbaa !98, !llvm.access.group !619
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 160
  %i.cd = load ptr, ptr %i.cc, align 8, !llvm.access.group !619
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(112) %4, i32 noundef %i.y, i32 noundef %i.af, ptr noundef %i.bv, ptr noundef %i.bw, ptr noundef %i.by, ptr noundef %i.ca)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.access.group !619

bb.m:                                             ; preds = %bb.l
  %i.ce = load ptr, ptr %i.o, align 8, !tbaa !306, !llvm.access.group !619 ; 7 uses
  %.not52 = icmp ne ptr %i.ce, null
  %i.cf = icmp sgt i32 %i.af, 0
  %or.cond = select i1 %.not52, i1 %i.cf, i1 false
  br i1 %or.cond, label %.lr.ph81, label %.loopexit

.lr.ph81:                                         ; preds = %bb.m
  %i.cg = load ptr, ptr %6, align 8, !tbaa !220, !llvm.access.group !619 ; 6 uses
  %i.ch = load ptr, ptr %7, align 8, !tbaa !220, !llvm.access.group !619 ; 6 uses
  %i.ci = sext i32 %i.ac to i64                   ; 6 uses
  %wide.trip.count97 = zext nneg i32 %i.af to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.af, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph81
  %i.cj = shl nsw i64 %i.ci, 2                    ; 3 uses
  %i.ck = getelementptr i8, ptr %i.cg, i64 %i.cj  ; 2 uses
  %i.cl = add nsw i64 %i.ci, %wide.trip.count97
  %i.cm = shl nsw i64 %i.cl, 2                    ; 3 uses
  %i.cn = getelementptr i8, ptr %i.cg, i64 %i.cm  ; 2 uses
  %i.co = getelementptr i8, ptr %i.ch, i64 %i.cj  ; 2 uses
  %i.cp = getelementptr i8, ptr %i.ch, i64 %i.cm  ; 2 uses
  %i.cq = getelementptr i8, ptr %i.ce, i64 %i.cj  ; 2 uses
  %i.cr = getelementptr i8, ptr %i.ce, i64 %i.cm  ; 2 uses
  %bound0 = icmp ult ptr %i.ck, %i.cp
  %bound1 = icmp ult ptr %i.co, %i.cn
  %found.conflict = and i1 %bound0, %bound1
  %bound0128 = icmp ult ptr %i.ck, %i.cr
  %bound1129 = icmp ult ptr %i.cq, %i.cn
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx = or i1 %found.conflict, %found.conflict130
  %bound0131 = icmp ult ptr %i.co, %i.cr
  %bound1132 = icmp ult ptr %i.cq, %i.cp
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %conflict.rdx, %found.conflict133
  br i1 %conflict.rdx134, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count97, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = add nsw i64 %index, %i.ci               ; 3 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cs ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ct, align 4, !tbaa !169, !alias.scope !628, !noalias !629, !llvm.access.group !619
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cs
  %wide.load135 = load <4 x float>, ptr %i.cu, align 4, !tbaa !169, !alias.scope !630, !llvm.access.group !619 ; 2 uses
  %i.cv = fmul <4 x float> %wide.load, %wide.load135
  store <4 x float> %i.cv, ptr %i.ct, align 4, !tbaa !169, !alias.scope !628, !noalias !629, !llvm.access.group !619
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cs ; 2 uses
  %wide.load136 = load <4 x float>, ptr %i.cw, align 4, !tbaa !169, !alias.scope !631, !noalias !630, !llvm.access.group !619
  %i.cx = fmul <4 x float> %wide.load136, %wide.load135
  store <4 x float> %i.cx, ptr %i.cw, align 4, !tbaa !169, !alias.scope !631, !noalias !630, !llvm.access.group !619
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !625

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count97
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph81, %middle.block
  %indvars.iv94.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph81 ], [ %n.vec, %middle.block ] ; 4 uses
  %xtraiter = and i64 %wide.trip.count97, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cz = add nsw i64 %indvars.iv94.ph, %i.ci     ; 3 uses
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cz ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !169, !llvm.access.group !619
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cz ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !169, !llvm.access.group !619
  %i.de = fmul float %i.db, %i.dd
  store float %i.de, ptr %i.da, align 4, !tbaa !169, !llvm.access.group !619
  %i.df = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cz ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !169, !llvm.access.group !619
  %i.dh = load float, ptr %i.dc, align 4, !tbaa !169, !llvm.access.group !619
  %i.di = fmul float %i.dg, %i.dh
  store float %i.di, ptr %i.df, align 4, !tbaa !169, !llvm.access.group !619
  %indvars.iv.next95.prol = or disjoint i64 %indvars.iv94.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv94.unr = phi i64 [ %indvars.iv94.ph, %scalar.ph.preheader ], [ %indvars.iv.next95.prol, %scalar.ph.prol ]
  %i.dj = add nsw i64 %wide.trip.count97, -1
  %i.dk = icmp eq i64 %indvars.iv94.ph, %i.dj
  br i1 %i.dk, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add nsw i64 1, %i.ci
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv94 = phi i64 [ %indvars.iv94.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next95.1, %scalar.ph ] ; 3 uses
  %i.dl = add nsw i64 %indvars.iv94, %i.ci        ; 3 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.dl ; 2 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !169, !llvm.access.group !619
  %i.do = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.dl ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !169, !llvm.access.group !619
  %i.dq = fmul float %i.dn, %i.dp
  store float %i.dq, ptr %i.dm, align 4, !tbaa !169, !llvm.access.group !619
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.dl ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !169, !llvm.access.group !619
  %i.dt = load float, ptr %i.do, align 4, !tbaa !169, !llvm.access.group !619
  %i.du = fmul float %i.ds, %i.dt
  store float %i.du, ptr %i.dr, align 4, !tbaa !169, !llvm.access.group !619
  %.reass = add nsw i64 %indvars.iv94, %invariant.op ; 3 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %.reass ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !169, !llvm.access.group !619
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %.reass ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !169, !llvm.access.group !619
  %i.dz = fmul float %i.dw, %i.dy
  store float %i.dz, ptr %i.dv, align 4, !tbaa !169, !llvm.access.group !619
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %.reass ; 2 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !169, !llvm.access.group !619
  %i.ec = load float, ptr %i.dx, align 4, !tbaa !169, !llvm.access.group !619
  %i.ed = fmul float %i.eb, %i.ec
  store float %i.ed, ptr %i.ea, align 4, !tbaa !169, !llvm.access.group !619
  %indvars.iv.next95.1 = add nuw nsw i64 %indvars.iv94, 2 ; 2 uses
  %exitcond98.not.1 = icmp eq i64 %indvars.iv.next95.1, %wide.trip.count97
  br i1 %exitcond98.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !626

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.m
  %.not.i.i.i = icmp eq ptr %.sroa.0.161, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.ee = ptrtoint ptr %.sroa.10.163 to i64
  %i.ef = ptrtoint ptr %.sroa.0.161 to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.161, i64 noundef %i.eg) #35, !llvm.access.group !619
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.loopexit, %bb.n
  %indvars.iv.next100 = add nsw i64 %indvars.iv99, 1
  %i.eh = load i32, ptr %i.b, align 4, !tbaa !204, !llvm.access.group !619
  %i.ei = sext i32 %i.eh to i64
  %.not51.not = icmp slt i64 %indvars.iv99, %i.ei
  br i1 %.not51.not, label %.lr.ph85, label %.loopexit67, !llvm.loop !627

._crit_edge89:                                    ; preds = %.loopexit67, %bb.b
  call void @__kmpc_dispatch_deinit(ptr nonnull @2, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge89, %bb.a
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i, %bb.l, %bb.h
end_hunk_0
begin_hunk_1_@_ZNK8LightGBM14LambdarankNDCG27LogDebugPositionBiasFactorsEv:bb.a
  %i.eq = and i32 %i.ep, 3
  %.not.i.i.i56 = icmp eq i32 %i.eq, 0
  %i.er = load i64, ptr %i.bd, align 8
  %.0.i.i.i57 = select i1 %.not.i.i.i56, i64 0, i64 %i.er
  %i.es = load ptr, ptr %i.bc, align 8, !tbaa !96
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.bb, ptr noundef %i.es, i64 noundef 0, i64 noundef %.0.i.i.i57)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit60 unwind label %bb.s

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit60: ; preds = %.noexc58
  %i.et = load ptr, ptr %5, align 8, !tbaa !96    ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.bx
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit60
  %i.ev = load i64, ptr %i.bx, align 8, !tbaa !95
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ex = load i32, ptr %i.bp, align 8, !tbaa !299
  %i.ey = sext i32 %i.ex to i64
  %i.ez = icmp slt i64 %indvars.iv.next, %i.ey
  br i1 %i.ez, label %bb.l, label %._crit_edge, !llvm.loop !659

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.l, %.noexc75, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc73, %bb.e, %bb.c, %bb.b, %bb.a
  %lpad.loopexit.split-lp113 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.r:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit48
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fb = load ptr, ptr %4, align 8, !tbaa !96    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.bu
  br i1 %i.fc, label %.body46, label %.body46.sink.split

.body46.sink.split:                               ; preds = %bb.r, %bb.o
  %.sink110 = phi ptr [ %i.eg, %bb.o ], [ %i.fb, %bb.r ]
  %.pn19.ph = phi { ptr, i32 } [ %i.ef, %bb.o ], [ %i.fa, %bb.r ]
  %i.fd = load i64, ptr %i.bu, align 8, !tbaa !95
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %.sink110, i64 noundef %i.fe) #35
  br label %.body46

.body46:                                          ; preds = %.body46.sink.split, %bb.r, %bb.o
  %.pn19 = phi { ptr, i32 } [ %i.ef, %bb.o ], [ %i.fa, %bb.r ], [ %.pn19.ph, %.body46.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %.loopexit.split-lp

bb.s:                                             ; preds = %.noexc58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i50
  %i.ff = landingpad { ptr, i32 }
          cleanup
  %i.fg = load ptr, ptr %5, align 8, !tbaa !96    ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.bx
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.s
  %i.fi = load i64, ptr %i.bx, align 8, !tbaa !95
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %.body
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn19, %.body46 ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %.pn, %.body ], [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %lpad.loopexit.split-lp113, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  resume { ptr, i32 } %.pn21.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM3Log5DebugEPKcz(ptr noundef %0, ...) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.va_start.p0(ptr nonnull %1)
  call void @_ZN8LightGBM3Log5WriteENS_8LogLevelEPKcS3_P13__va_list_tag(i32 noundef 2, ptr noundef nonnull @.str.59, ptr noundef %0, ptr noundef nonnull %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #8

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM10RankXENDCGD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN8LightGBM10RankXENDCGE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !313  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !314
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #35
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN8LightGBM16RankingObjectiveE, i64 16), ptr %0, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !174  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN8LightGBM16RankingObjectiveD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !175
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #35, !inline_history !195
  br label %_ZN8LightGBM16RankingObjectiveD2Ev.exit

_ZN8LightGBM16RankingObjectiveD2Ev.exit:          ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM10RankXENDCGD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN8LightGBM10RankXENDCGE, i64 16), ptr %0, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !313  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !314
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #35, !inline_history !682
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN8LightGBM16RankingObjectiveE, i64 16), ptr %0, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !174  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN8LightGBM10RankXENDCGD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !175
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #35, !inline_history !683
  br label %_ZN8LightGBM10RankXENDCGD2Ev.exit

_ZN8LightGBM10RankXENDCGD2Ev.exit:                ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM10RankXENDCG4InitERKNS_8MetadataEi(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(300) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN8LightGBM16RankingObjective4InitERKNS_8MetadataEi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(300) %1, i32 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !296  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !690
  %.pre7 = load ptr, ptr %i.g, align 8, !tbaa !314
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit
  %i.h = phi i32 [ %i.b, %.lr.ph ], [ %i.av, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ]
  %i.i = phi ptr [ %.pre7, %.lr.ph ], [ %i.aw, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ] ; 5 uses
  %i.j = phi ptr [ %.pre, %.lr.ph ], [ %i.ax, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ] ; 3 uses
  %.06 = phi i32 [ 0, %.lr.ph ], [ %i.ay, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ] ; 2 uses
  %i.k = load i32, ptr %i.e, align 8, !tbaa !156
  %i.l = add nsw i32 %i.k, %.06                   ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.l, ptr %i.j, align 4, !tbaa !316
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !690
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !313  ; 7 uses
  %i.o = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 4 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775804
  br i1 %i.r, label %bb.e, label %_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #37
  unreachable

_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.s = ashr exact i64 %i.q, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 2305843009213693951)
  %i.w = select i1 %i.u, i64 2305843009213693951, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #34 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  store i32 %i.l, ptr %i.z, align 4, !tbaa !316
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = ptrtoaddr ptr %i.y to i64
  %i.ab = add i64 %i.o, -4
  %i.ac = sub i64 %i.ab, %i.p                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 28
  %i.af = sub i64 %i.p, %i.aa
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ae, 9223372036854775800     ; 3 uses
  %i.ag = shl i64 %n.vec, 2                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.y, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.n, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.aj ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.n, i64 %i.aj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.ak = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep15, align 4, !tbaa !204, !alias.scope !692
  %wide.load16 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !204, !alias.scope !692
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !204, !alias.scope !691
  store <4 x i32> %wide.load16, ptr %i.al, align 4, !tbaa !204, !alias.scope !691
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !687

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i, label %.lr.ph.i.i.i.i.i.preheader18

.lr.ph.i.i.i.i.i.preheader18:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader18, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader18 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader18 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.an = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !204, !alias.scope !692
  store i32 %i.an, ptr %.012.i.i.i.i.i, align 4, !tbaa !204, !alias.scope !691
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !688

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ah, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !314
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.at) #35
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i
  store ptr %i.y, ptr %i.d, align 8, !tbaa !313
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !690
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.w ; 2 uses
  store ptr %i.au, ptr %i.g, align 8, !tbaa !314
  %.pre8 = load i32, ptr %i.a, align 4, !tbaa !296
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.av = phi i32 [ %i.h, %bb.c ], [ %.pre8, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.aw = phi ptr [ %i.i, %bb.c ], [ %i.au, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ax = phi ptr [ %i.m, %bb.c ], [ %i.aq, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ay = add nuw nsw i32 %.06, 1                 ; 2 uses
  %i.az = icmp slt i32 %i.ay, %i.av
  br i1 %i.az, label %bb.b, label %._crit_edge, !llvm.loop !689
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8LightGBM10RankXENDCG7GetNameEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr @.str.8
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8LightGBM10RankXENDCG23GetGradientsForOneQueryEiiPKfPKdPfS5_(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %2, 2
  br i1 %i.a, label %.preheader, label %.noexc

.preheader:                                       ; preds = %bb.a
  %i.b = icmp eq i32 %2, 1
  br i1 %i.b, label %.lr.ph130.split, label %.loopexit

.lr.ph130.split:                                  ; preds = %.preheader
  store float 0.000000e+00, ptr %5, align 4, !tbaa !169
  store float 0.000000e+00, ptr %6, align 4, !tbaa !169
  br label %.loopexit

.noexc:                                           ; preds = %bb.a
  %i.c = zext nneg i32 %2 to i64                  ; 13 uses
  %i.d = shl nuw nsw i64 %i.c, 3                  ; 7 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #34 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.e, i8 0, i64 %i.d, i1 false), !tbaa !191
  %i.f = load double, ptr %4, align 8, !tbaa !191 ; 2 uses
  %i.g = add nsw i64 %i.c, -1                     ; 2 uses
  %xtraiter = and i64 %i.g, 3                     ; 3 uses
  %i.h = add nsw i32 %2, -2
  %i.i = icmp ult i32 %i.h, 3
  br i1 %i.i, label %.lr.ph.i.epil.preheader, label %.noexc.new

.noexc.new:                                       ; preds = %.noexc
  %unroll_iter = and i64 %i.g, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.noexc.new
  %indvars.iv.i = phi i64 [ 1, %.noexc.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.02628.i = phi double [ %i.f, %.noexc.new ], [ %.sroa.speculated.i.3, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.noexc.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !191 ; 2 uses
  %i.l = fcmp olt double %i.k, %.02628.i
  %.sroa.speculated.i = select i1 %i.l, double %.02628.i, double %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !191 ; 2 uses
  %i.p = fcmp olt double %i.o, %.sroa.speculated.i
  %.sroa.speculated.i.1 = select i1 %i.p, double %.sroa.speculated.i, double %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !191 ; 2 uses
  %i.t = fcmp olt double %i.s, %.sroa.speculated.i.1
  %.sroa.speculated.i.2 = select i1 %i.t, double %.sroa.speculated.i.1, double %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load double, ptr %i.v, align 8, !tbaa !191 ; 2 uses
  %i.x = fcmp olt double %i.w, %.sroa.speculated.i.2
  %.sroa.speculated.i.3 = select i1 %i.x, double %.sroa.speculated.i.2, double %i.w ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph32.i.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !52

.lr.ph32.i.preheader.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph32.i.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph32.i.preheader.unr-lcssa, %.noexc
  %indvars.iv.i.epil.init = phi i64 [ 1, %.noexc ], [ %indvars.iv.next.i.3, %.lr.ph32.i.preheader.unr-lcssa ]
  %.02628.i.epil.init = phi double [ %i.f, %.noexc ], [ %.sroa.speculated.i.3, %.lr.ph32.i.preheader.unr-lcssa ]
  %lcmp.mod181 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod181)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.02628.i.epil = phi double [ %.02628.i.epil.init, %.lr.ph.i.epil.preheader ], [ %.sroa.speculated.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i.epil
  %i.z = load double, ptr %i.y, align 8, !tbaa !191 ; 2 uses
  %i.aa = fcmp olt double %i.z, %.02628.i.epil
  %.sroa.speculated.i.epil = select i1 %i.aa, double %.02628.i.epil, double %i.z ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph32.i.preheader, label %.lr.ph.i.epil, !llvm.loop !693

.lr.ph32.i.preheader:                             ; preds = %.lr.ph.i.epil, %.lr.ph32.i.preheader.unr-lcssa
  %.sroa.speculated.i.lcssa = phi double [ %.sroa.speculated.i.3, %.lr.ph32.i.preheader.unr-lcssa ], [ %.sroa.speculated.i.epil, %.lr.ph.i.epil ]
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.preheader, %.lr.ph32.i
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %.lr.ph32.i ], [ 0, %.lr.ph32.i.preheader ] ; 3 uses
  %.02230.i = phi double [ %i.ag, %.lr.ph32.i ], [ 0.000000e+00, %.lr.ph32.i.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv37.i
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !191
  %i.ad = fsub double %i.ac, %.sroa.speculated.i.lcssa
  %i.ae = tail call double @exp(double noundef %i.ad) #12 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv37.i
  store double %i.ae, ptr %i.af, align 8, !tbaa !191
  %i.ag = fadd double %.02230.i, %i.ae            ; 3 uses
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %i.c
  br i1 %exitcond41.not.i, label %vector.ph, label %.lr.ph32.i, !llvm.loop !53

vector.ph:                                        ; preds = %.lr.ph32.i
  %n.vec = and i64 %i.c, 2147483646               ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ag, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
end_hunk_1
