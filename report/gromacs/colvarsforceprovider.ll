Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarsforceprovider?download=true
inline.NumInlined: 1228
inline.NumDeleted: 702
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_M_default_appendEm:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !129    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !128
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN12colvarmodule7rvectorESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #29
  unreachable

_ZNKSt6vectorIN12colvarmodule7rvectorESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #28 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN12colvarmodule7rvectorESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN12colvarmodule7rvectorESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN12colvarmodule7rvectorESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i64 24, i1 false), !tbaa.struct !426, !alias.scope !427
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !424

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN12colvarmodule7rvectorESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EE13_M_deallocateEPS1_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !425
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #26
  br label %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EE13_M_deallocateEPS1_m.exit37

_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EE13_M_deallocateEPS1_m.exit37: ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !129
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !128
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !425
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EE13_M_deallocateEPS1_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gmx20ColvarsForceProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(1880) dereferenceable(1880) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.b = load i8, ptr %i.a, align 8, !tbaa !184, !range !115, !noundef !110
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef i32 @_ZN11colvarproxy8post_runEv(ptr noundef nonnull align 8 dereferenceable(1192) %0)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !140
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.17, i32 noundef 327, ptr noundef %i.f)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit unwind label %bb.e

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit:        ; preds = %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !111
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.17, i32 noundef 329, ptr noundef %i.h)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit1 unwind label %bb.e

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit1:       ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !112
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.17, i32 noundef 330, ptr noundef %i.j)
          to label %_ZL14gmx_sfree_implIA3_iEvPKcS2_iPT_.exit unwind label %bb.e

_ZL14gmx_sfree_implIA3_iEvPKcS2_iPT_.exit:        ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.17, i32 noundef 331, ptr noundef %i.l)
          to label %_ZL14gmx_sfree_implIA3_iEvPKcS2_iPT_.exit2 unwind label %bb.e

_ZL14gmx_sfree_implIA3_iEvPKcS2_iPT_.exit2:       ; preds = %_ZL14gmx_sfree_implIA3_iEvPKcS2_iPT_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !139
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.17, i32 noundef 332, ptr noundef %i.n)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit3 unwind label %bb.e

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit3:       ; preds = %_ZL14gmx_sfree_implIA3_iEvPKcS2_iPT_.exit2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !117
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.17, i32 noundef 333, ptr noundef %i.p)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit4 unwind label %bb.e

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit4:       ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit3
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !157  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN3gmx25ColvarsForceProviderStateD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !183
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #26
  br label %_ZN3gmx25ColvarsForceProviderStateD2Ev.exit

_ZN3gmx25ColvarsForceProviderStateD2Ev.exit:      ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit4, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !116  ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx12LocalAtomSetESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx12LocalAtomSetEEclEPS1_.exit.i

_ZNKSt14default_deleteIN3gmx12LocalAtomSetEEclEPS1_.exit.i: ; preds = %_ZN3gmx25ColvarsForceProviderStateD2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 8) #26
  br label %_ZNSt10unique_ptrIN3gmx12LocalAtomSetESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx12LocalAtomSetESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN3gmx25ColvarsForceProviderStateD2Ev.exit, %_ZNKSt14default_deleteIN3gmx12LocalAtomSetEEclEPS1_.exit.i
  tail call void @_ZN3gmx18ColvarProxyGromacsD2Ev(ptr noundef nonnull align 8 dead_on_return(1752) dereferenceable(1752) %0) #25
  ret void

bb.e:                                             ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit3, %_ZL14gmx_sfree_implIA3_iEvPKcS2_iPT_.exit2, %_ZL14gmx_sfree_implIA3_iEvPKcS2_iPT_.exit, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit1, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit, %bb.c, %bb.b
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #27
  unreachable
}

declare noundef i32 @_ZN11colvarproxy8post_runEv(ptr noundef nonnull align 8 dereferenceable(1192)) local_unnamed_addr #1

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z27communicate_group_positionsRKN3gmx7MpiCommEPA3_fPA3_iS6_bPA3_KfiiPKiSB_S4_S9_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef i64 @_ZNK3gmx12LocalAtomSet14numAtomsGlobalEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef i64 @_ZNK3gmx12LocalAtomSet13numAtomsLocalEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare { ptr, ptr } @_ZNK3gmx12LocalAtomSet10localIndexEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare { ptr, ptr } @_ZNK3gmx12LocalAtomSet15collectiveIndexEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef i32 @_ZN12colvarmodule4calcEv(ptr noundef nonnull align 8 dereferenceable(632)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3gmx20ColvarsForceProvider13addVirialTermEPA3_fRA3_KfRKNS_11BasicVectorIfEE(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2) local_unnamed_addr #2 align 2 {
.preheader:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.d = add nuw i64 %i.c, 12
  %i.e = add nuw i64 %i.b, 12
  %i.f = add i64 %i.a, 36                         ; 2 uses
  %rt.bound0 = icmp ugt i64 %i.d, %i.a
  %rt.bound1 = icmp ugt i64 %i.f, %i.c
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound015 = icmp ugt i64 %i.e, %i.a
  %rt.bound116 = icmp ugt i64 %i.f, %i.b
  %rt.conflict17 = and i1 %rt.bound015, %rt.bound116
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict17
  %rt.guard = freeze i1 %rt.conflict.all
  br i1 %rt.guard, label %.preheader.rtscalar, label %.preheader.rtvec, !prof !428

.preheader.rtvec:                                 ; preds = %.preheader
  %i.g = load float, ptr %1, align 4, !tbaa !133  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !133 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !133
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !133
  %i.n = load <2 x float>, ptr %2, align 4, !tbaa !133
  %i.o = load <2 x float>, ptr %1, align 4, !tbaa !133
  %i.p = load <2 x float>, ptr %i.j, align 4, !tbaa !133
  %i.q = shufflevector <2 x float> %i.o, <2 x float> %i.p, <8 x i32> <i32 0, i32 poison, i32 poison, i32 1, i32 2, i32 poison, i32 3, i32 poison>
  %i.r = insertelement <8 x float> %i.q, float %i.g, i64 1
  %i.s = insertelement <8 x float> %i.r, float %i.g, i64 2
  %i.t = insertelement <8 x float> %i.s, float %i.k, i64 5
  %i.u = insertelement <8 x float> %i.t, float %i.m, i64 7
  %i.v = fpext <8 x float> %i.u to <8 x double>
  %i.w = load <2 x float>, ptr %2, align 4, !tbaa !133
  %i.x = shufflevector <2 x float> %i.n, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison>
  %i.y = insertelement <8 x float> %i.x, float %i.i, i64 2
  %i.z = insertelement <8 x float> %i.y, float %i.i, i64 5
  %i.aa = shufflevector <2 x float> %i.w, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ab = shufflevector <8 x float> %i.z, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ac = fpext <8 x float> %i.ab to <8 x double>
  %i.ad = load <8 x float>, ptr %0, align 4, !tbaa !133
  %i.ae = fpext <8 x float> %i.ad to <8 x double>
  %i.af = fmul <8 x double> %i.v, splat (double -5.000000e-01)
  %i.ag = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.af, <8 x double> %i.ac, <8 x double> %i.ae)
  %i.ah = fptrunc <8 x double> %i.ag to <8 x float>
  store <8 x float> %i.ah, ptr %0, align 4, !tbaa !133
  %i.ai = load float, ptr %i.l, align 4, !tbaa !133
  %i.aj = fpext float %i.ai to double
  %i.ak = load float, ptr %i.h, align 4, !tbaa !133
  %i.al = fpext float %i.ak to double
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !133
  %i.ao = fpext float %i.an to double
  %i.ap = fmul double %i.aj, -5.000000e-01
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.al, double %i.ao)
  %i.ar = fptrunc double %i.aq to float
  store float %i.ar, ptr %i.am, align 4, !tbaa !133
  br label %.preheader.rtcont

.preheader.rtscalar:                              ; preds = %.preheader
  %i.as = load float, ptr %1, align 4, !tbaa !133
  %i.at = fpext float %i.as to double
  %i.au = load float, ptr %2, align 4, !tbaa !133
  %i.av = fpext float %i.au to double
  %i.aw = load float, ptr %0, align 4, !tbaa !133
  %i.ax = fpext float %i.aw to double
  %i.ay = fmul double %i.at, -5.000000e-01
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.av, double %i.ax)
  %i.ba = fptrunc double %i.az to float
  store float %i.ba, ptr %0, align 4, !tbaa !133
  %i.bb = load float, ptr %1, align 4, !tbaa !133
  %i.bc = fpext float %i.bb to double
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !133
  %i.bf = fpext float %i.be to double
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !133
  %i.bi = fpext float %i.bh to double
  %i.bj = fmul double %i.bc, -5.000000e-01
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bf, double %i.bi)
  %i.bl = fptrunc double %i.bk to float
  store float %i.bl, ptr %i.bg, align 4, !tbaa !133
  %i.bm = load float, ptr %1, align 4, !tbaa !133
  %i.bn = fpext float %i.bm to double
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !133
  %i.bq = fpext float %i.bp to double
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !133
  %i.bt = fpext float %i.bs to double
  %i.bu = fmul double %i.bn, -5.000000e-01
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bq, double %i.bt)
  %i.bw = fptrunc double %i.bv to float
  store float %i.bw, ptr %i.br, align 4, !tbaa !133
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bz = load float, ptr %i.bx, align 4, !tbaa !133
  %i.ca = fpext float %i.bz to double
  %i.cb = load float, ptr %2, align 4, !tbaa !133
  %i.cc = fpext float %i.cb to double
  %i.cd = load float, ptr %i.by, align 4, !tbaa !133
  %i.ce = fpext float %i.cd to double
  %i.cf = fmul double %i.ca, -5.000000e-01
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.cc, double %i.ce)
  %i.ch = fptrunc double %i.cg to float
  store float %i.ch, ptr %i.by, align 4, !tbaa !133
  %i.ci = load float, ptr %i.bx, align 4, !tbaa !133
  %i.cj = fpext float %i.ci to double
  %i.ck = load float, ptr %i.bd, align 4, !tbaa !133
  %i.cl = fpext float %i.ck to double
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !133
  %i.co = fpext float %i.cn to double
  %i.cp = fmul double %i.cj, -5.000000e-01
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.cl, double %i.co)
  %i.cr = fptrunc double %i.cq to float
  store float %i.cr, ptr %i.cm, align 4, !tbaa !133
  %i.cs = load float, ptr %i.bx, align 4, !tbaa !133
  %i.ct = fpext float %i.cs to double
  %i.cu = load float, ptr %i.bo, align 4, !tbaa !133
  %i.cv = fpext float %i.cu to double
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !133
  %i.cy = fpext float %i.cx to double
  %i.cz = fmul double %i.ct, -5.000000e-01
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.cv, double %i.cy)
  %i.db = fptrunc double %i.da to float
  store float %i.db, ptr %i.cw, align 4, !tbaa !133
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.de = load float, ptr %i.dc, align 4, !tbaa !133
  %i.df = fpext float %i.de to double
  %i.dg = load float, ptr %2, align 4, !tbaa !133
  %i.dh = fpext float %i.dg to double
  %i.di = load float, ptr %i.dd, align 4, !tbaa !133
  %i.dj = fpext float %i.di to double
  %i.dk = fmul double %i.df, -5.000000e-01
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.dh, double %i.dj)
  %i.dm = fptrunc double %i.dl to float
  store float %i.dm, ptr %i.dd, align 4, !tbaa !133
  %i.dn = load float, ptr %i.dc, align 4, !tbaa !133
  %i.do = fpext float %i.dn to double
  %i.dp = load float, ptr %i.bd, align 4, !tbaa !133
  %i.dq = fpext float %i.dp to double
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !133
  %i.dt = fpext float %i.ds to double
  %i.du = fmul double %i.do, -5.000000e-01
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.du, double %i.dq, double %i.dt)
  %i.dw = fptrunc double %i.dv to float
  store float %i.dw, ptr %i.dr, align 4, !tbaa !133
  %i.dx = load float, ptr %i.dc, align 4, !tbaa !133
  %i.dy = fpext float %i.dx to double
  %i.dz = load float, ptr %i.bo, align 4, !tbaa !133
  %i.ea = fpext float %i.dz to double
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !133
  %i.ed = fpext float %i.ec to double
  %i.ee = fmul double %i.dy, -5.000000e-01
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.ea, double %i.ed)
  %i.eg = fptrunc double %i.ef to float
  store float %i.eg, ptr %i.eb, align 4, !tbaa !133
  br label %.preheader.rtcont

.preheader.rtcont:                                ; preds = %.preheader.rtscalar, %.preheader.rtvec
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #21

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx20ColvarsForceProvider19writeCheckpointDataENS_28MDModulesWriteCheckpointDataESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(1880) %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.e = tail call noundef i32 @_ZN12colvarmodule18write_state_bufferERSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(632) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d) ; 0 uses
  tail call void @_ZNK3gmx25ColvarsForceProviderState10writeStateENS_25KeyValueTreeObjectBuilderESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr %1, i64 %2, ptr %3)
  ret void
}

declare noundef i32 @_ZN12colvarmodule18write_state_bufferERSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(632), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3gmx20ColvarsForceProvider31processAtomsRedistributedSignalERKNS_33MDModulesAtomsRedistributedSignalE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1880) initializes((1768, 1769)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(96) %1) local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1768
  store i8 1, ptr %i.a, align 8, !tbaa !114
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_colvarsforceprovider.cpp() #5 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx25ColvarsForceProviderState21sc_nColvarsAtomsName_B5cxx11E, i64 16), ptr @_ZN3gmx25ColvarsForceProviderState21sc_nColvarsAtomsName_B5cxx11E, align 8, !tbaa !104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) getelementptr inbounds nuw (i8, ptr @_ZN3gmx25ColvarsForceProviderState21sc_nColvarsAtomsName_B5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  store i64 13, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx25ColvarsForceProviderState21sc_nColvarsAtomsName_B5cxx11E, i64 8), align 8, !tbaa !108
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx25ColvarsForceProviderState21sc_nColvarsAtomsName_B5cxx11E, i64 29), align 1, !tbaa !107
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN3gmx25ColvarsForceProviderState21sc_nColvarsAtomsName_B5cxx11E, ptr nonnull @__dso_handle) #25 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx25ColvarsForceProviderState17sc_xOldWholeName_B5cxx11E, i64 16), ptr @_ZN3gmx25ColvarsForceProviderState17sc_xOldWholeName_B5cxx11E, align 8, !tbaa !104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) getelementptr inbounds nuw (i8, ptr @_ZN3gmx25ColvarsForceProviderState17sc_xOldWholeName_B5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx25ColvarsForceProviderState17sc_xOldWholeName_B5cxx11E, i64 8), align 8, !tbaa !108
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx25ColvarsForceProviderState17sc_xOldWholeName_B5cxx11E, i64 25), align 1, !tbaa !107
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN3gmx25ColvarsForceProviderState17sc_xOldWholeName_B5cxx11E, ptr nonnull @__dso_handle) #25 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx25ColvarsForceProviderState23sc_colvarStateFileName_B5cxx11E, i64 16), ptr @_ZN3gmx25ColvarsForceProviderState23sc_colvarStateFileName_B5cxx11E, align 8, !tbaa !104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) getelementptr inbounds nuw (i8, ptr @_ZN3gmx25ColvarsForceProviderState23sc_colvarStateFileName_B5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(15) @.str.5, i64 15, i1 false)
  store i64 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx25ColvarsForceProviderState23sc_colvarStateFileName_B5cxx11E, i64 8), align 8, !tbaa !108
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx25ColvarsForceProviderState23sc_colvarStateFileName_B5cxx11E, i64 31), align 1, !tbaa !107
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN3gmx25ColvarsForceProviderState23sc_colvarStateFileName_B5cxx11E, ptr nonnull @__dso_handle) #25 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx25ColvarsForceProviderState27sc_colvarStateFileSizeName_B5cxx11E, i64 16), ptr @_ZN3gmx25ColvarsForceProviderState27sc_colvarStateFileSizeName_B5cxx11E, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 19, ptr %i.a, align 8, !tbaa !105
end_hunk_0
begin_hunk_1_@llvm.fmuladd.v8f64
!228 = distinct !{!228, !"LVerDomain"}
!229 = distinct !{!229, !228}
!230 = distinct !{!230, !228}
!231 = distinct !{!231, !134, !135, !136}
!232 = distinct !{!232, !134, !135, !136}
!233 = distinct !{!233, !134, !135}
!234 = distinct !{null, null, null, null, null}
!235 = distinct !{!235, !225, !"_ZSt19__relocate_object_aIN3gmx17KeyValueTreeValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0:It1"}
!236 = distinct !{!236, !225, !"_ZSt19__relocate_object_aIN3gmx17KeyValueTreeValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1:It1"}
!237 = distinct !{!237, !"LVerDomain"}
!238 = distinct !{!238, !237}
!239 = distinct !{!239, !237}
!240 = distinct !{!240, !134, !135, !136}
!241 = distinct !{!241, !134, !135, !136}
!242 = distinct !{!242, !134, !135}
!243 = distinct !{!243, !225, !"_ZSt19__relocate_object_aIN3gmx17KeyValueTreeValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0:It2"}
!244 = distinct !{!244, !225, !"_ZSt19__relocate_object_aIN3gmx17KeyValueTreeValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1:It2"}
!245 = distinct !{!245, !"LVerDomain"}
!246 = distinct !{!246, !245}
!247 = distinct !{!247, !245}
!248 = distinct !{!248, !134, !135, !136}
!249 = distinct !{!249, !134, !135, !136}
!250 = distinct !{!250, !134, !135}
!251 = distinct !{!251, !134}
!252 = !{!224, !222}
!253 = !{!158, !158, i64 0}
!254 = !{!226}
!255 = !{!227}
!256 = !{!227, !229}
!257 = !{!226, !230}
!258 = !{!235}
!259 = !{!236}
!260 = !{!236, !238}
!261 = !{!235, !239}
!262 = !{!243}
!263 = !{!244}
!264 = !{!244, !246}
!265 = !{!243, !247}
!266 = distinct !{!266, !"_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv"}
!267 = distinct !{!267, !266, !"_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv: argument 0"}
!268 = distinct !{!268, !"_ZN3gmx3Any6createINS_17KeyValueTreeArrayEEES0_OT_"}
!269 = distinct !{!269, !268, !"_ZN3gmx3Any6createINS_17KeyValueTreeArrayEEES0_OT_: argument 0"}
!270 = !{!267}
!271 = !{!269, !267}
!272 = distinct !{!272, !"_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv"}
!273 = distinct !{!273, !272, !"_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv: argument 0"}
!274 = distinct !{!274, !"_ZN3gmx3Any6createINS_17KeyValueTreeArrayEEES0_OT_"}
!275 = distinct !{!275, !274, !"_ZN3gmx3Any6createINS_17KeyValueTreeArrayEEES0_OT_: argument 0"}
!276 = !{!273}
!277 = !{!275, !273}
!278 = distinct !{!278, !"_ZN3gmx19KeyValueTreeBuilder11createValueIhEENS_17KeyValueTreeValueERKT_"}
!279 = distinct !{!279, !278, !"_ZN3gmx19KeyValueTreeBuilder11createValueIhEENS_17KeyValueTreeValueERKT_: argument 0"}
!280 = distinct !{!280, !"_ZN3gmx3Any6createIhEES0_RKT_"}
!281 = distinct !{!281, !280, !"_ZN3gmx3Any6createIhEES0_RKT_: argument 0"}
!282 = distinct !{!282, !"_ZSt19__relocate_object_aIN3gmx17KeyValueTreeValueES1_SaIS1_EEvPT_PT0_RT1_"}
!283 = distinct !{!283, !282, !"_ZSt19__relocate_object_aIN3gmx17KeyValueTreeValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!284 = distinct !{!284, !282, !"_ZSt19__relocate_object_aIN3gmx17KeyValueTreeValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!285 = distinct !{!285, !"LVerDomain"}
!286 = distinct !{!286, !285}
!287 = distinct !{!287, !285}
!288 = distinct !{!288, !134, !135, !136}
!289 = distinct !{!289, !134, !135, !136}
!290 = distinct !{!290, !134, !135}
!291 = !{!281, !279}
!292 = !{!"p1 _ZTSN3gmx17KeyValueTreeArrayE", !14, i64 0}
!293 = !{!"_ZTSN3gmx28KeyValueTreeArrayBuilderBaseE", !292, i64 0}
!294 = !{!293, !292, i64 0}
!295 = !{!283}
!296 = !{!284}
!297 = !{!284, !286}
!298 = !{!283, !287}
!299 = distinct !{!299, !"_ZSt19__relocate_object_aIN3gmx20KeyValueTreePropertyES1_SaIS1_EEvPT_PT0_RT1_"}
!300 = distinct !{!300, !299, !"_ZSt19__relocate_object_aIN3gmx20KeyValueTreePropertyES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!301 = distinct !{!301, !299, !"_ZSt19__relocate_object_aIN3gmx20KeyValueTreePropertyES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!302 = distinct !{!302, !134, !135, !136}
!303 = distinct !{!303, !134, !135, !136}
!304 = distinct !{!304, !134, !135}
!305 = distinct !{!305, !"_ZSt9make_pairIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3gmx17KeyValueTreeValueEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_"}
!306 = distinct !{!306, !305, !"_ZSt9make_pairIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3gmx17KeyValueTreeValueEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_: argument 0"}
!307 = distinct !{ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3gmx17KeyValueTreeValueEED2Ev, null, null, null, null}
!308 = distinct !{!308, !"_ZSt19__relocate_object_aIN3gmx20KeyValueTreePropertyES1_SaIS1_EEvPT_PT0_RT1_"}
!309 = distinct !{!309, !308, !"_ZSt19__relocate_object_aIN3gmx20KeyValueTreePropertyES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!310 = distinct !{!310, !308, !"_ZSt19__relocate_object_aIN3gmx20KeyValueTreePropertyES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!311 = distinct !{!311, !134, !135, !136}
!312 = distinct !{!312, !134, !135, !136}
!313 = distinct !{!313, !134, !135}
!314 = !{!"_ZTSN3gmx25KeyValueTreeObjectBuilderE", !158, i64 0}
!315 = !{!314, !158, i64 0}
!316 = !{!"p1 _ZTSN3gmx20KeyValueTreePropertyE", !14, i64 0}
!317 = !{!"_ZTSNSt12_Vector_baseIN3gmx20KeyValueTreePropertyESaIS1_EE17_Vector_impl_dataE", !316, i64 0, !316, i64 8, !316, i64 16}
!318 = !{!317, !316, i64 8}
!319 = !{!317, !316, i64 0}
!320 = !{!317, !316, i64 16}
!321 = !{!300}
!322 = !{!301}
!323 = !{!306}
!324 = !{!309}
!325 = !{!310}
!326 = distinct !{!326, !134}
!327 = distinct !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N3gmx17KeyValueTreeValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev, null, null, null, null, null, null, null}
!328 = !{!170, !170, i64 0}
!329 = !{!58, !57, i64 24}
!330 = distinct !{null, null, null, null, null, null, null}
!331 = distinct !{!331, !134}
!332 = !{!59, !57, i64 16}
!333 = distinct !{ptr @_ZN3gmx17KeyValueTreeArrayD2Ev, ptr @_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EED2Ev, null, null, null, null, null, null, null}
!334 = distinct !{ptr @_ZN3gmx3Any7ContentINS_17KeyValueTreeArrayEED2Ev, ptr @_ZN3gmx17KeyValueTreeArrayD2Ev, ptr @_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EED2Ev, null, null, null, null, null, null, null}
!335 = !{ptr @_ZN3gmx3Any7ContentINS_17KeyValueTreeArrayEED2Ev}
!336 = distinct !{!336, !"_ZSt11make_uniqueIN3gmx3Any7ContentINS0_17KeyValueTreeArrayEEEJRKS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!337 = distinct !{!337, !336, !"_ZSt11make_uniqueIN3gmx3Any7ContentINS0_17KeyValueTreeArrayEEEJRKS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!338 = distinct !{null}
!339 = distinct !{null, null}
!340 = !{!337}
!341 = distinct !{!341, !"_ZNK3gmx3Any12cloneContentEv"}
!342 = distinct !{!342, !341, !"_ZNK3gmx3Any12cloneContentEv: argument 0"}
!343 = distinct !{null}
!344 = distinct !{!344, !134}
!345 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!346 = !{!342}
!347 = distinct !{null, null, null, null, null, null, null}
!348 = distinct !{!348, !"_ZSt11make_uniqueIN3gmx3Any7ContentIdEEJRKdEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!349 = distinct !{!349, !348, !"_ZSt11make_uniqueIN3gmx3Any7ContentIdEEJRKdEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!350 = distinct !{null}
!351 = !{!349}
!352 = distinct !{!352, !"_ZSt11make_uniqueIN3gmx3Any7ContentIhEEJRKhEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!353 = distinct !{!353, !352, !"_ZSt11make_uniqueIN3gmx3Any7ContentIhEEJRKhEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!354 = distinct !{null}
!355 = !{!353}
!356 = distinct !{null, null, null, null}
!357 = distinct !{null}
!358 = distinct !{!358, !134}
!359 = distinct !{null}
!360 = distinct !{null}
!361 = !{!101, !20, i64 0}
!362 = distinct !{null, null, null}
!363 = !{i64 0, i64 8, !159, i64 8, i64 8, !159, i64 16, i64 4, !144}
!364 = !{!"p1 _ZTSN3gmx8internal14IExceptionInfoE", !14, i64 0}
!365 = !{!364, !364, i64 0}
!366 = !{!"p1 _ZTSSt9type_info", !14, i64 0}
!367 = !{!"_ZTSSt10type_index", !366, i64 0}
!368 = !{!367, !366, i64 0}
!369 = !{!14, !14, i64 0}
!370 = !{!"p1 _ZTSN3gmx8internal13ExceptionDataE", !14, i64 0}
!371 = !{!"_ZTSSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EE", !370, i64 0, !181, i64 8}
!372 = !{!371, !370, i64 0}
!373 = distinct !{null, null, null}
!374 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 8, !11, i64 12}
!375 = !{!374, !11, i64 8}
!376 = !{!374, !11, i64 12}
!377 = distinct !{!377, !134}
!378 = !{!"p1 _ZTSNSt15__exception_ptr13exception_ptrE", !14, i64 0}
!379 = !{!"_ZTSNSt12_Vector_baseINSt15__exception_ptr13exception_ptrESaIS1_EE17_Vector_impl_dataE", !378, i64 0, !378, i64 8, !378, i64 16}
!380 = !{!379, !378, i64 0}
!381 = !{!379, !378, i64 8}
!382 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !14, i64 0}
!383 = !{!382, !14, i64 0}
!384 = !{!379, !378, i64 16}
!385 = distinct !{null}
!386 = distinct !{!386, !134, !135, !136}
!387 = distinct !{!387, !134, !135, !136}
!388 = distinct !{!388, !134, !136, !135}
!389 = distinct !{!389, !"_ZSt11make_uniqueIN3gmx12LocalAtomSetEJS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!390 = distinct !{!390, !389, !"_ZSt11make_uniqueIN3gmx12LocalAtomSetEJS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!391 = distinct !{!391, !"LVerDomain"}
!392 = distinct !{!392, !391}
!393 = distinct !{!393, !391}
!394 = distinct !{!394, !134, !135, !136}
!395 = distinct !{!395, !141}
!396 = distinct !{!396, !134, !135}
!397 = distinct !{!397, !"LVerDomain"}
!398 = distinct !{!398, !397}
!399 = distinct !{!399, !397}
!400 = distinct !{!400, !134, !135, !136}
!401 = distinct !{!401, !141}
!402 = distinct !{!402, !134, !135}
!403 = !{!90, !89, i64 0}
!404 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!405 = !{!23, !20, i64 112}
!406 = !{!24, !24, i64 0}
!407 = !{!"p1 _ZTSN3gmx8internal16LocalAtomSetDataE", !14, i64 0}
!408 = !{!407, !407, i64 0}
!409 = !{!390}
!410 = !{!"_ZTS14gmx_multisim_t", !11, i64 0, !11, i64 4, !118, i64 8, !118, i64 16}
!411 = !{!410, !118, i64 8}
!412 = !{!102, !20, i64 1832}
!413 = !{!102, !17, i64 1840}
!414 = !{!392}
!415 = !{!393}
!416 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !109, i64 0, !109, i64 8, !109, i64 16}
!417 = !{!416, !109, i64 0}
!418 = !{!398}
!419 = !{!399}
!420 = !{!25, !24, i64 16}
!421 = distinct !{!421, !"_ZSt19__relocate_object_aIN12colvarmodule7rvectorES1_SaIS1_EEvPT_PT0_RT1_"}
!422 = distinct !{!422, !421, !"_ZSt19__relocate_object_aIN12colvarmodule7rvectorES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!423 = distinct !{!423, !421, !"_ZSt19__relocate_object_aIN12colvarmodule7rvectorES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!424 = distinct !{!424, !134}
!425 = !{!40, !39, i64 16}
!426 = !{i64 0, i64 8, !130, i64 8, i64 8, !130, i64 16, i64 8, !130}
!427 = !{!423, !422}
!428 = !{!"branch_weights", i32 1, i32 1048575}
end_hunk_1
