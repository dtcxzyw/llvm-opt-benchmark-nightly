Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.ci?download=true
inline.NumInlined: 3715
inline.NumDeleted: 2052
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN12_GLOBAL__N_117compute_full_planERKN5vcpkg10VcpkgPathsERKNS0_16PortFileProviderERKNS0_9CMakeVars16CMakeVarProviderERKSt6vectorINS0_15FullPackageSpecESaISC_EERNS0_19PackagesDirAssignerERKNS0_24CreateInstallPlanOptionsE:bb.a
bb.a:
  %6 = alloca %"struct.vcpkg::StatusParagraphs", align 8 ; 11 uses
  %7 = alloca %"struct.vcpkg::LineInfo", align 8  ; 7 uses
  %8 = alloca %"struct.vcpkg::LineInfo", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = ptrtoint ptr %.8.val to i64
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 6
  invoke void @_ZN5vcpkg27create_feature_install_planERKNS_16PortFileProviderERKNS_9CMakeVars16CMakeVarProviderENS_4SpanIKNS_15FullPackageSpecEEERKNS_16StatusParagraphsERNS_19PackagesDirAssignerERKNS_24CreateInstallPlanOptionsE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ActionPlan") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr %.0.val, i64 %i.d, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !48
  invoke void @_ZNK5vcpkg9CMakeVars16CMakeVarProvider13load_tag_varsERKSt6vectorINS_17InstallPlanActionESaIS3_EENS_7TripletE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %.sroa.0.0.copyload)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i32 114, ptr %7, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.2, ptr %i.g, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @__func__._ZN12_GLOBAL__N_117compute_full_planERKN5vcpkg10VcpkgPathsERKNS0_16PortFileProviderERKNS0_9CMakeVars16CMakeVarProviderERKSt6vectorINS0_15FullPackageSpecESaISC_EERNS0_19PackagesDirAssignerERKNS0_24CreateInstallPlanOptionsE, ptr %i.h, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !364
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !364
  %i.m = icmp eq ptr %i.j, %i.l
  invoke void @_ZN5vcpkg6Checks10check_exitERKNS_8LineInfoEb(ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext %i.m)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store i32 115, ptr %8, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.2, ptr %i.n, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @__func__._ZN12_GLOBAL__N_117compute_full_planERKN5vcpkg10VcpkgPathsERKNS0_16PortFileProviderERKNS0_9CMakeVars16CMakeVarProviderERKSt6vectorINS0_15FullPackageSpecESaISC_EERNS0_19PackagesDirAssignerERKNS0_24CreateInstallPlanOptionsE, ptr %i.o, align 8, !tbaa !59
  %i.p = load ptr, ptr %0, align 8, !tbaa !365
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !365
  %i.s = icmp eq ptr %i.p, %i.r
  invoke void @_ZN5vcpkg6Checks10check_exitERKNS_8LineInfoEb(ptr noundef nonnull align 8 dereferenceable(24) %8, i1 noundef zeroext %i.s)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  invoke void @_ZN5vcpkg16compute_all_abisERKNS_10VcpkgPathsERNS_10ActionPlanERKNS_9CMakeVars16CMakeVarProviderERKNS_16StatusParagraphsE(ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.j unwind label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.l

bb.i:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %6, align 8, !tbaa !167    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !168  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.x, %bb.j ] ; 2 uses
  %i.aa = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !170 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZN5vcpkg15BinaryParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(248) %i.aa) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 248) #22
  br label %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, %i.z
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !167
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.j
  %i.ac = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.x, %bb.j ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i.i, label %_ZN5vcpkg16StatusParagraphsD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !171
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #22
  br label %_ZN5vcpkg16StatusParagraphsD2Ev.exit

_ZN5vcpkg16StatusParagraphsD2Ev.exit:             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.w, %bb.i ], [ %i.v, %bb.h ]
  call void @_ZN5vcpkg10ActionPlanD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.t, %bb.f ]
  call void @_ZN5vcpkg16StatusParagraphsD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN5vcpkg11BinaryCacheC1ERKNS_10FilesystemE(ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare noundef zeroext i1 @_ZN5vcpkg11BinaryCache17install_providersERNS_17DiagnosticContextERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN5vcpkg6Checks9exit_failERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN5vcpkg4Util4fmapIRSt6vectorINS_17InstallPlanActionESaIS3_EEZNS_19command_ci_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletESD_E3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISG_EEiE4typeELi0EEES2_INSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISG_EE5beginEEEE4typeESaISO_EEOSG_OSK_"(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !126    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 440                 ; 3 uses
  %i.h = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #23
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not20 = icmp eq ptr %i.b, %i.c
  br i1 %.not20, label %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPKN5vcpkg17InstallPlanActionESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPKN5vcpkg17InstallPlanActionESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = shl nuw nsw i64 %i.g, 3
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #26
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc10:                                         ; preds = %_ZNSt12_Vector_baseIPKN5vcpkg17InstallPlanActionESaIS3_EE11_M_allocateEm.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %0, align 8, !tbaa !102
  store ptr %i.k, ptr %i.l, align 8, !tbaa !103
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.g ; 2 uses
  store ptr %i.m, ptr %i.i, align 8, !tbaa !138
  %.pre = load ptr, ptr %1, align 8, !tbaa !172
  %.pre9 = load ptr, ptr %i.a, align 8, !tbaa !172
  br label %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE7reserveEm.exit: ; preds = %.noexc10, %bb.c
  %.promoted7 = phi ptr [ %i.m, %.noexc10 ], [ null, %bb.c ]
  %.promoted = phi ptr [ %i.k, %.noexc10 ], [ null, %bb.c ] ; 2 uses
  %i.n = phi ptr [ %.pre9, %.noexc10 ], [ %i.b, %bb.c ] ; 2 uses
  %i.o = phi ptr [ %.pre, %.noexc10 ], [ %i.c, %bb.c ] ; 2 uses
  %.not5 = icmp eq ptr %i.o, %i.n
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE7reserveEm.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit, %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE7reserveEm.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.q = phi ptr [ %.promoted, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit ] ; 7 uses
  %i.r = phi ptr [ %.promoted7, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit ] ; 5 uses
  %i.s = phi ptr [ %.promoted, %.lr.ph ], [ %i.al, %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit ] ; 3 uses
  %.sroa.02.06 = phi ptr [ %i.o, %.lr.ph ], [ %i.am, %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.sroa.02.06, ptr %i.s, align 8, !tbaa !172
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.p, align 8, !tbaa !103
  br label %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v                       ; 6 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.g, label %_ZNKSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #23
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.y = ashr exact i64 %i.w, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975)
  %i.ac = select i1 %i.aa, i64 1152921504606846975, i64 %i.ab ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ac, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #26
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.w ; 2 uses
  store ptr %.sroa.02.06, ptr %i.af, align 8, !tbaa !172
  %i.ag = icmp sgt i64 %i.w, 0
  br i1 %i.ag, label %bb.h, label %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.h:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr align 8 %i.q, i64 %i.w, i1 false)
  br label %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.h, %.noexc12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.w) #22
  br label %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.ae, ptr %0, align 8, !tbaa !102
  store ptr %i.ah, ptr %i.p, align 8, !tbaa !103
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac ; 2 uses
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !138
  br label %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.e
  %i.aj = phi ptr [ %i.ae, %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.q, %bb.e ]
  %i.ak = phi ptr [ %i.ai, %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.r, %bb.e ]
  %i.al = phi ptr [ %i.ah, %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.t, %bb.e ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 440 ; 2 uses
  %.not = icmp eq ptr %i.am, %i.n
  br i1 %.not, label %._crit_edge, label %bb.d

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.b, %_ZNSt12_Vector_baseIPKN5vcpkg17InstallPlanActionESaIS3_EE11_M_allocateEm.exit.i, %bb.g
  %i.an = phi ptr [ null, %bb.b ], [ null, %_ZNSt12_Vector_baseIPKN5vcpkg17InstallPlanActionESaIS3_EE11_M_allocateEm.exit.i ], [ %i.r, %bb.g ]
  %i.ao = phi ptr [ null, %bb.b ], [ null, %_ZNSt12_Vector_baseIPKN5vcpkg17InstallPlanActionESaIS3_EE11_M_allocateEm.exit.i ], [ %i.q, %bb.g ]
  %lpad.loopexit.split-lp8 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %i.ap = phi ptr [ %i.r, %.loopexit.split-lp.loopexit ], [ %i.an, %.loopexit.split-lp.loopexit.split-lp ]
  %i.aq = phi ptr [ %i.q, %.loopexit.split-lp.loopexit ], [ %i.ao, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp8, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i13 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.at) #22
  br label %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EED2Ev.exit: ; preds = %.loopexit.split-lp, %bb.j
  resume { ptr, i32 } %lpad.phi
}

declare void @_ZN5vcpkg19ReadOnlyBinaryCache8precheckERNS_17DiagnosticContextERKNS_10FilesystemENS_4SpanIKPKNS_17InstallPlanActionEEE(ptr dead_on_unwind writable sret(%"class.std::vector.230") align 8, ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_126compute_pre_build_statusesERKNS_13CiSpecsResultERKSt6vectorIN5vcpkg17CacheAvailabilityESaIS5_EERKSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISG_ESt8equal_toISG_ESaISG_EESO_RKNS4_12SortedVectorINS4_11PackageSpecESt4lessIvEEERKNS4_10ActionPlanE(ptr dead_on_unwind noalias nonnull writable align 8 initializes((8, 12), (16, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %6) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.vcpkg::Triplet", align 8   ; 4 uses
  %8 = alloca %"struct.vcpkg::Triplet", align 8   ; 4 uses
  %9 = alloca %"struct.vcpkg::Triplet", align 8   ; 4 uses
  %10 = alloca %"class.std::tuple.516", align 8   ; 4 uses
  %11 = alloca %"class.std::tuple.547", align 8   ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"struct.vcpkg::StringView", align 8 ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"struct.vcpkg::StringView", align 8 ; 4 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.vcpkg::StringView", align 8 ; 4 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"struct.vcpkg::StringView", align 8 ; 4 uses
  %20 = alloca %"struct.std::__detail::_AllocNode.506", align 8 ; 4 uses
  %21 = alloca %"struct.fmt::v12::detail::format_arg_store.546", align 16 ; 7 uses
  %22 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 9 uses
  %23 = alloca %"class.std::unordered_set.472", align 8 ; 16 uses
  %24 = alloca %"struct.vcpkg::LineInfo", align 8 ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"struct.vcpkg::Json::Object", align 8 ; 14 uses
  %27 = alloca %"struct.vcpkg::Json::Value", align 8 ; 7 uses
  %28 = alloca %"struct.vcpkg::Json::Value", align 8 ; 7 uses
  %29 = alloca %"struct.vcpkg::Triplet", align 8  ; 5 uses
  %30 = alloca %"struct.vcpkg::Json::Value", align 8 ; 7 uses
  %31 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 15 uses
  %32 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %34 = alloca %"struct.vcpkg::DiagnosticLine", align 8 ; 13 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %35 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  store i32 0, ptr %i.c, align 8, !tbaa !107
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.e, align 8, !tbaa !106
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.f, align 8, !tbaa !108
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.g, align 8, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 0, ptr %i.h, align 8, !tbaa !107
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.i, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.h, ptr %i.j, align 8, !tbaa !106
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.h, ptr %i.k, align 8, !tbaa !108
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.m = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 2 uses
  store ptr %i.m, ptr %23, align 8, !tbaa !177
  %i.n = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  store i64 1, ptr %i.n, align 8, !tbaa !178
  %i.o = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %23, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 8, !tbaa !76
  %i.q = getelementptr inbounds nuw i8, ptr %23, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.r = load ptr, ptr %1, align 8, !tbaa !383    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !383  ; 2 uses
  %.not306 = icmp eq ptr %i.r, %i.t
  br i1 %.not306, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !127
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !126  ; 2 uses
  %.not321 = icmp eq ptr %i.w, %i.x
  br i1 %.not321, label %._crit_edge, label %.lr.ph309

.lr.ph309:                                        ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %22, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %26, i64 16
  br label %bb.c

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0226.0307 = phi ptr [ %i.ap, %bb.b ], [ %i.r, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  store ptr %23, ptr %20, align 8, !tbaa !384
  %i.ao = invoke { ptr, i8 } @_ZNSt10_HashtableIN5vcpkg11PackageSpecES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SH_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %23, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0226.0307, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0226.0307, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.b unwind label %.loopexit.split-lp300.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0226.0307, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.ap, %i.t
  br i1 %.not, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5vcpkg4Json6ObjectD2Ev.exit, %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !180
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.be, label %bb.ap

bb.c:                                             ; preds = %.lr.ph309, %_ZN5vcpkg4Json6ObjectD2Ev.exit
  %i.at = phi ptr [ %i.x, %.lr.ph309 ], [ %i.gm, %_ZN5vcpkg4Json6ObjectD2Ev.exit ]
  %.072308 = phi i64 [ 0, %.lr.ph309 ], [ %i.gk, %_ZN5vcpkg4Json6ObjectD2Ev.exit ] ; 3 uses
  %i.au = getelementptr inbounds nuw [440 x i8], ptr %i.at, i64 %.072308 ; 15 uses
  %i.av = invoke noundef i64 @_ZNSt10_HashtableIN5vcpkg11PackageSpecES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %23, ptr noundef nonnull align 8 dereferenceable(40) %i.au)
          to label %_ZNSt13unordered_setIN5vcpkg11PackageSpecESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE5eraseERKS1_.exit unwind label %.loopexit.split-lp300.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt13unordered_setIN5vcpkg11PackageSpecESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE5eraseERKS1_.exit: ; preds = %bb.c
  store i32 148, ptr %24, align 8, !tbaa !57
  store <2 x ptr> <ptr @.str.2, ptr @__func__._ZN12_GLOBAL__N_126compute_pre_build_statusesERKNS_13CiSpecsResultERKSt6vectorIN5vcpkg17CacheAvailabilityESaIS5_EERKSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISG_ESt8equal_toISG_ESaISG_EESO_RKNS4_12SortedVectorINS4_11PackageSpecESt4lessIvEEERKNS4_10ActionPlanE>, ptr %i.y, align 8, !tbaa !54
  %i.aw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg17InstallPlanAction19package_abi_or_exitB5cxx11ENS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(440) %i.au, ptr noundef nonnull byval(%"struct.vcpkg::LineInfo") align 8 %24)
          to label %bb.d unwind label %.loopexit.split-lp300.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.d:                                             ; preds = %_ZNSt13unordered_setIN5vcpkg11PackageSpecESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE5eraseERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ax = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %bb.e unwind label %.loopexit.split-lp292.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %.not284 = icmp eq ptr %i.ax, null
  br i1 %.not284, label %bb.f, label %.noexc96

.loopexit.split-lp300.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %_ZNSt13unordered_setIN5vcpkg11PackageSpecESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE5eraseERKS1_.exit, %.lr.ph
  %lpad.loopexit.split-lp424 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp300

.loopexit.split-lp292.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc190, %bb.m, %.noexc167, %bb.h, %.critedge.i, %bb.n, %_ZNK5vcpkg12SortedVectorINS_11PackageSpecESt4lessIvEE8containsERKS1_.exit.thread, %bb.i, %bb.d
  %lpad.loopexit.split-lp421 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp292.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_126compute_pre_build_statusesERKNS_13CiSpecsResultERKSt6vectorIN5vcpkg17CacheAvailabilityESaIS5_EERKSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISG_ESt8equal_toISG_ESaISG_EESO_RKNS4_12SortedVectorINS4_11PackageSpecESt4lessIvEEERKNS4_10ActionPlanE:bb.a
_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i198: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i194
  %i.ll = sub i64 %i.lc, %i.ld                    ; 2 uses
  %i.lm = icmp slt i64 %i.ll, 0
  br i1 %i.lm, label %.split273.thread, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i201

_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i201: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i198, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i213
  %.pre-phi.i202 = phi i64 [ %i.lj, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i213 ], [ %i.ll, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i198 ]
  %.not283 = icmp eq i64 %.pre-phi.i202, 0
  br i1 %.not283, label %bb.bm, label %.thread270

bb.bm:                                            ; preds = %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i201
  %i.ln = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i148, i64 64
  %.sroa.0.0.copyload.i203 = load ptr, ptr %i.la, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.0.0.copyload.i203, ptr %7, align 8
  %i.lo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg7Triplet14canonical_nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ln)
          to label %.noexc214 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc214:                                        ; preds = %bb.bm
  %i.lp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg7Triplet14canonical_nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc215 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc215:                                        ; preds = %.noexc214
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !105 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i.i.i.i204 = call i64 @llvm.umin.i64(i64 %i.lt, i64 %i.lr) ; 2 uses
  %i.lu = icmp eq i64 %.sroa.speculated.i.i.i.i204, 0
  br i1 %i.lu, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i209, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i205

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i205: ; preds = %.noexc215
  %i.lv = load ptr, ptr %i.lp, align 8, !tbaa !43
  %i.lw = load ptr, ptr %i.lo, align 8, !tbaa !43
  %i.lx = call i32 @memcmp(ptr noundef %i.lw, ptr noundef %i.lv, i64 noundef %.sroa.speculated.i.i.i.i204) #21 ; 2 uses
  %.not.i.i.i.i206 = icmp eq i32 %i.lx, 0
  br i1 %.not.i.i.i.i206, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i209, label %_ZNK5vcpkg7TripletltES0_.exit.i207

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i209: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i205, %.noexc215
  %i.ly = sub i64 %i.lr, %i.lt
  %spec.select7.i.i.i.i.i210 = call i64 @llvm.smax.i64(i64 %i.ly, i64 -2147483648)
  %.08.i.i.i.i.i211 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i210, i64 2147483647)
  %.0.i6.i.i.i.i212 = trunc nsw i64 %.08.i.i.i.i.i211 to i32
  br label %_ZNK5vcpkg7TripletltES0_.exit.i207

_ZNK5vcpkg7TripletltES0_.exit.i207:               ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i209, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i205
  %.0.i.i.i.i208 = phi i32 [ %i.lx, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i205 ], [ %.0.i6.i.i.i.i212, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i209 ]
  %.0.i.i.i.i208.fr = freeze i32 %.0.i.i.i.i208
  %i.lz = icmp slt i32 %.0.i.i.i.i208.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %i.lz, label %.split273.thread, label %.thread270

.noexc160:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i194
  %i.ma = icmp slt i32 %.fr, 0
  br i1 %i.ma, label %.split273.thread, label %.thread270

.split273.thread:                                 ; preds = %.noexc160, %_ZNK5vcpkg7TripletltES0_.exit.i207, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i198, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i213
  br label %.thread270

.thread270:                                       ; preds = %.noexc160, %_ZNK5vcpkg7TripletltES0_.exit.i207, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i201, %.split273.thread
  %i.mb = phi ptr [ %.0811.i.i.i.i149, %.split273.thread ], [ %.012.i.i.i.i148, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i201 ], [ %.012.i.i.i.i148, %_ZNK5vcpkg7TripletltES0_.exit.i207 ], [ %.012.i.i.i.i148, %.noexc160 ] ; 6 uses
  %i.mc = phi i64 [ 24, %.split273.thread ], [ 16, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i201 ], [ 16, %_ZNK5vcpkg7TripletltES0_.exit.i207 ], [ 16, %.noexc160 ]
  %.1.in.i.i.i.i152 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i148, i64 %i.mc
  %.1.i.i.i.i153 = load ptr, ptr %.1.in.i.i.i.i152, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i154 = icmp eq ptr %.1.i.i.i.i153, null
  br i1 %.not.i.i.i.i154, label %_ZNSt3mapIN5vcpkg11PackageSpecENS0_11BuildResultESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i155, label %.lr.ph.i.i.i.i147, !llvm.loop !369

_ZNSt3mapIN5vcpkg11PackageSpecENS0_11BuildResultESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i155: ; preds = %.thread270
  %i.md = icmp eq ptr %i.mb, %i.c
  br i1 %i.md, label %.critedge.i159, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt3mapIN5vcpkg11PackageSpecENS0_11BuildResultESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i155
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 32
  %i.mf = invoke noundef zeroext i1 @_ZNK5vcpkg11PackageSpecltERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.kk, ptr noundef nonnull align 8 dereferenceable(40) %i.me)
          to label %.noexc161 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc161:                                        ; preds = %bb.bn
  br i1 %i.mf, label %.critedge.i159, label %bb.bo

.critedge.i159:                                   ; preds = %.noexc161, %_ZNSt3mapIN5vcpkg11PackageSpecENS0_11BuildResultESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %.08.lcssa.i.i.i16.i = phi ptr [ %i.mb, %.noexc161 ], [ %i.mb, %_ZNSt3mapIN5vcpkg11PackageSpecENS0_11BuildResultESt4lessIS1_ESaISt4pairIKS1_S2_EEE11lower_boundERS6_.exit.i155 ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %i.kk, ptr %10, align 8, !tbaa !144, !alias.scope !399
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %i.b, ptr %11, align 8, !tbaa !152, !alias.scope !400
  %i.mg = invoke ptr @_ZNSt8_Rb_treeIN5vcpkg11PackageSpecESt4pairIKS1_NS0_11BuildResultEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESG_IJRS4_EEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i16.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %.noexc162 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc162:                                        ; preds = %.critedge.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.bp

bb.bo:                                            ; preds = %.noexc161
  %i.mh = load i32, ptr %i.b, align 4, !tbaa !181
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mb, i64 72
  store i32 %i.mh, ptr %i.mi, align 8, !tbaa !113
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.noexc162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.mj = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0218.0316) #24 ; 2 uses
  %.not282 = icmp eq ptr %i.mj, %i.jp
  br i1 %.not282, label %._crit_edge320, label %bb.bg

bb.bq:                                            ; preds = %switch.lookup
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

bb.br:                                            ; preds = %bb.bk
  %i.ml = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mm = load ptr, ptr %36, align 8, !tbaa !43   ; 2 uses
  %i.mn = icmp eq ptr %i.mm, %i.ju
  br i1 %i.mn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %bb.br
  %i.mo = load i64, ptr %i.ju, align 8, !tbaa !44
  %i.mp = add i64 %i.mo, 1
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163, %bb.bq
  %.pn78 = phi { ptr, i32 } [ %i.mk, %bb.bq ], [ %i.ml, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163 ], [ %i.ml, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc214, %bb.bm, %.critedge.i159, %bb.bn
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %bb.bj
  %.pn80 = phi { ptr, i32 } [ %i.kq, %bb.bj ], [ %.pn78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.loopexit.split-lp300

.loopexit.split-lp300:                            ; preds = %.loopexit.split-lp300.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp292.loopexit.split-lp, %.loopexit.split-lp, %_ZN5vcpkg15LocalizedStringD2Ev.exit138
  %.pn93 = phi { ptr, i32 } [ %.pn88.pn, %.loopexit.split-lp292.loopexit.split-lp ], [ %.pn.pn.pn.pn, %_ZN5vcpkg15LocalizedStringD2Ev.exit138 ], [ %.pn80, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp424, %.loopexit.split-lp300.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt13unordered_setIN5vcpkg11PackageSpecESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call fastcc void @_ZN12_GLOBAL__N_116CIPreBuildStatusD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) #21
  resume { ptr, i32 } %.pn93
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

declare void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext, ptr, i64) local_unnamed_addr #3

declare void @_ZNKR5vcpkg4PathdvENS_10StringViewE(ptr dead_on_unwind writable sret(%"struct.vcpkg::Path") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr, i64) local_unnamed_addr #3

declare void @_ZNK5vcpkg10Filesystem14write_contentsERKNS_4PathENS_10StringViewENS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, ptr noundef byval(%"struct.vcpkg::LineInfo") align 8) local_unnamed_addr #3

declare void @_ZN5vcpkg4Json9stringifyB5cxx11ERKNS0_5ArrayE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS0_11PackageSpecENS0_11BuildResultESt4lessIS4_ESaISt4pairIKS4_S5_EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.vcpkg::Triplet", align 8   ; 4 uses
  %3 = alloca %"struct.vcpkg::Triplet", align 8   ; 4 uses
  %4 = alloca %"struct.vcpkg::Triplet", align 8   ; 4 uses
  %5 = alloca %"struct.vcpkg::Triplet", align 8   ; 4 uses
  %6 = alloca %"struct.vcpkg::Triplet", align 8   ; 4 uses
  %7 = alloca %"struct.vcpkg::Triplet", align 8   ; 4 uses
  %8 = alloca %"struct.vcpkg::Triplet", align 8   ; 4 uses
  %9 = alloca %"struct.vcpkg::Triplet", align 8   ; 4 uses
  %10 = alloca %"class.std::set.276", align 8     ; 12 uses
  %11 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %12 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %13 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 23 uses
  store i32 0, ptr %i.a, align 8, !tbaa !107
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 13 uses
  store ptr null, ptr %i.b, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !106
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !108
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !109
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !172, !noalias !409 ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !172, !noalias !410 ; 2 uses
  %.not251 = icmp eq ptr %i.h, %i.i
  br i1 %.not251, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.q

._crit_edge.loopexit:                             ; preds = %_ZN5vcpkg4Util4Sets8containsISt3setINS_11PackageSpecESt4lessIS4_ESaIS4_EES4_EEbRKT_RKT0_.exit.thread
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !172
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.l = phi ptr [ %i.h, %bb.a ], [ %.pre, %._crit_edge.loopexit ] ; 7 uses
  %.lcssa243 = phi ptr [ %i.i, %bb.a ], [ %i.lz, %._crit_edge.loopexit ] ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = ptrtoint ptr %.lcssa243 to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = sdiv exact i64 %i.o, 440
  %i.q = ashr i64 %i.p, 2                         ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %bb.i
  %.0242.i.i.i.i.i = phi i64 [ %i.fc, %bb.i ], [ %i.q, %._crit_edge ] ; 2 uses
  %.sroa.0157.0241.i.i.i.i.i = phi ptr [ %i.fb, %bb.i ], [ %.lcssa243, %._crit_edge ] ; 17 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISF_ESaISt4pairIKSF_SG_EEEE3$_0EEET_SS_SS_T0_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0157.0241.i.i.i.i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0157.0241.i.i.i.i.i, i64 32
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.thread.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.preheader.i.i.i.i.i ] ; 7 uses
  %.0811.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.av, %.thread.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.i.i.preheader.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !105  ; 3 uses
  %i.x = load i64, ptr %i.t, align 8, !tbaa !105  ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.w) ; 2 uses
  %i.y = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.aa = load ptr, ptr %.sroa.0157.0241.i.i.i.i.i, align 8, !tbaa !43
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.ac = call i32 @memcmp(ptr noundef %i.ab, ptr noundef %i.aa, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #21
  %.fr.i.i.i.i.i = freeze i32 %i.ac               ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i.i.i.i.i.i, label %_ZNK5vcpkg11PackageSpecltERKS0_.exit.i.i.i.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ad = sub i64 %i.w, %i.x                      ; 2 uses
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %.split.thread.i.i.i.i.i, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.af = sub i64 %i.w, %i.x                      ; 2 uses
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %.split.thread.i.i.i.i.i, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i

_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i.i.i.i.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i = phi i64 [ %i.ad, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i ], [ %i.af, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp eq i64 %.pre-phi.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.b, label %.thread.i.i.i.i.i

bb.b:                                             ; preds = %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i.i, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %9, align 8
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg7Triplet14canonical_nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.aj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg7Triplet14canonical_nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc17:                                         ; preds = %.noexc
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !105 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.an, i64 %i.al) ; 2 uses
  %i.ao = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc17
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !43
  %i.ar = call i32 @memcmp(ptr noundef %i.aq, ptr noundef %i.ap, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNK5vcpkg7TripletltES0_.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.noexc17
  %i.as = sub i64 %i.al, %i.an
  %spec.select7.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.as, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK5vcpkg7TripletltES0_.exit.i.i.i.i.i.i

_ZNK5vcpkg7TripletltES0_.exit.i.i.i.i.i.i:        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ar, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i ]
  %.0.i.i.i.i.fr.i.i.i.i.i = freeze i32 %.0.i.i.i.i.i.i.i.i.i
  %i.at = icmp slt i32 %.0.i.i.i.i.fr.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br i1 %i.at, label %.split.thread.i.i.i.i.i, label %.thread.i.i.i.i.i

_ZNK5vcpkg11PackageSpecltERKS0_.exit.i.i.i.i.i:   ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.au = icmp slt i32 %.fr.i.i.i.i.i, 0
  br i1 %i.au, label %.split.thread.i.i.i.i.i, label %.thread.i.i.i.i.i

.split.thread.i.i.i.i.i:                          ; preds = %_ZNK5vcpkg11PackageSpecltERKS0_.exit.i.i.i.i.i, %_ZNK5vcpkg7TripletltES0_.exit.i.i.i.i.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i.i.i.i.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i
  br label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %.split.thread.i.i.i.i.i, %_ZNK5vcpkg11PackageSpecltERKS0_.exit.i.i.i.i.i, %_ZNK5vcpkg7TripletltES0_.exit.i.i.i.i.i.i, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i
  %i.av = phi ptr [ %.0811.i.i.i.i.i.i.i.i.i.i.i, %.split.thread.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.i, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.i, %_ZNK5vcpkg7TripletltES0_.exit.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.i, %_ZNK5vcpkg11PackageSpecltERKS0_.exit.i.i.i.i.i ] ; 3 uses
  %i.aw = phi i64 [ 24, %.split.thread.i.i.i.i.i ], [ 16, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i ], [ 16, %_ZNK5vcpkg7TripletltES0_.exit.i.i.i.i.i.i ], [ 16, %_ZNK5vcpkg11PackageSpecltERKS0_.exit.i.i.i.i.i ]
  %.1.in.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i.i, i64 %i.aw
  %.1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !405

_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i
  %i.ax = icmp eq ptr %i.av, %i.a
  br i1 %i.ax, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISF_ESaISt4pairIKSF_SG_EEEE3$_0EEET_SS_SS_T0_.exit.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit.i.i.i.i.i": ; preds = %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.az = invoke noundef zeroext i1 @_ZNK5vcpkg11PackageSpecltERKS0_(ptr noundef nonnull align 8 dereferenceable(440) %.sroa.0157.0241.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ay)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit.i.i.i.i.i"
  br i1 %i.az, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISF_ESaISt4pairIKSF_SG_EEEE3$_0EEET_SS_SS_T0_.exit.i.i.i", label %bb.c

bb.c:                                             ; preds = %.noexc18
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0157.0241.i.i.i.i.i, i64 440 ; 5 uses
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !53  ; 2 uses
  %.not10.i.i.i.i.i.i22.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not10.i.i.i.i.i.i22.i.i.i.i.i, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISF_ESaISt4pairIKSF_SG_EEEE3$_0EEET_SS_SS_T0_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i23.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.i23.preheader.i.i.i.i.i:         ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0157.0241.i.i.i.i.i, i64 448
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0157.0241.i.i.i.i.i, i64 472
  br label %.lr.ph.i.i.i.i.i.i23.i.i.i.i.i

.lr.ph.i.i.i.i.i.i23.i.i.i.i.i:                   ; preds = %.thread188.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i23.preheader.i.i.i.i.i
  %.012.i.i.i.i.i.i24.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i29.i.i.i.i.i, %.thread188.i.i.i.i.i ], [ %i.bb, %.lr.ph.i.i.i.i.i.i23.preheader.i.i.i.i.i ] ; 7 uses
  %.0811.i.i.i.i.i.i25.i.i.i.i.i = phi ptr [ %i.ce, %.thread188.i.i.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.i.i23.preheader.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i24.i.i.i.i.i, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !105 ; 3 uses
  %i.bg = load i64, ptr %i.bc, align 8, !tbaa !105 ; 3 uses
  %.sroa.speculated.i.i.i88.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bf) ; 2 uses
  %i.bh = icmp eq i64 %.sroa.speculated.i.i.i88.i.i.i.i.i, 0
  br i1 %i.bh, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i108.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i89.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i89.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i23.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i24.i.i.i.i.i, i64 32
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !43
  %i.bl = call i32 @memcmp(ptr noundef %i.bk, ptr noundef %i.bj, i64 noundef %.sroa.speculated.i.i.i88.i.i.i.i.i) #21
  %.fr231.i.i.i.i.i = freeze i32 %i.bl            ; 2 uses
  %.not.i.i.i90.i.i.i.i.i = icmp eq i32 %.fr231.i.i.i.i.i, 0
  br i1 %.not.i.i.i90.i.i.i.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i93.i.i.i.i.i, label %_ZNK5vcpkg11PackageSpecltERKS0_.exit109.i.i.i.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i108.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i23.i.i.i.i.i
  %i.bm = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bn = icmp slt i64 %i.bm, 0
  br i1 %i.bn, label %.split191.thread.i.i.i.i.i, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i96.i.i.i.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i93.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i89.i.i.i.i.i
  %i.bo = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bp = icmp slt i64 %i.bo, 0
  br i1 %i.bp, label %.split191.thread.i.i.i.i.i, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i96.i.i.i.i.i

_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i96.i.i.i.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i93.i.i.i.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i108.i.i.i.i.i
  %.pre-phi.i97.i.i.i.i.i = phi i64 [ %i.bm, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i108.i.i.i.i.i ], [ %i.bo, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i93.i.i.i.i.i ]
  %.not232.i.i.i.i.i = icmp eq i64 %.pre-phi.i97.i.i.i.i.i, 0
  br i1 %.not232.i.i.i.i.i, label %bb.d, label %.thread188.i.i.i.i.i

bb.d:                                             ; preds = %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i96.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i24.i.i.i.i.i, i64 64
  %.sroa.0.0.copyload.i98.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %.sroa.0.0.copyload.i98.i.i.i.i.i, ptr %8, align 8
  %i.br = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg7Triplet14canonical_nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bq)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc19:                                         ; preds = %bb.d
  %i.bs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg7Triplet14canonical_nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc20:                                         ; preds = %.noexc19
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !105 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i.i.i.i99.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bw, i64 %i.bu) ; 2 uses
  %i.bx = icmp eq i64 %.sroa.speculated.i.i.i.i99.i.i.i.i.i, 0
  br i1 %i.bx, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i104.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i100.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i100.i.i.i.i.i: ; preds = %.noexc20
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !43
  %i.bz = load ptr, ptr %i.br, align 8, !tbaa !43
  %i.ca = call i32 @memcmp(ptr noundef %i.bz, ptr noundef %i.by, i64 noundef %.sroa.speculated.i.i.i.i99.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i101.i.i.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i101.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i104.i.i.i.i.i, label %_ZNK5vcpkg7TripletltES0_.exit.i102.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i104.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i100.i.i.i.i.i, %.noexc20
  %i.cb = sub i64 %i.bu, %i.bw
  %spec.select7.i.i.i.i.i105.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cb, i64 -2147483648)
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS0_11PackageSpecENS0_11BuildResultESt4lessIS4_ESaISt4pairIKS4_S5_EEE:bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i46.i.i.i.i.i, i64 64
  %.sroa.0.0.copyload.i142.i.i.i.i.i = load ptr, ptr %i.dv, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.0.0.copyload.i142.i.i.i.i.i, ptr %6, align 8
  %i.ej = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg7Triplet14canonical_nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ei)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc25:                                         ; preds = %bb.h
  %i.ek = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg7Triplet14canonical_nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc26:                                         ; preds = %.noexc25
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !105 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i.i.i.i143.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.eo, i64 %i.em) ; 2 uses
  %i.ep = icmp eq i64 %.sroa.speculated.i.i.i.i143.i.i.i.i.i, 0
  br i1 %i.ep, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i148.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i144.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i144.i.i.i.i.i: ; preds = %.noexc26
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !43
  %i.er = load ptr, ptr %i.ej, align 8, !tbaa !43
  %i.es = call i32 @memcmp(ptr noundef %i.er, ptr noundef %i.eq, i64 noundef %.sroa.speculated.i.i.i.i143.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i145.i.i.i.i.i = icmp eq i32 %i.es, 0
  br i1 %.not.i.i.i.i145.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i148.i.i.i.i.i, label %_ZNK5vcpkg7TripletltES0_.exit.i146.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i148.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i144.i.i.i.i.i, %.noexc26
  %i.et = sub i64 %i.em, %i.eo
  %spec.select7.i.i.i.i.i149.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.et, i64 -2147483648)
  %.08.i.i.i.i.i150.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i149.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i151.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i150.i.i.i.i.i to i32
  br label %_ZNK5vcpkg7TripletltES0_.exit.i146.i.i.i.i.i

_ZNK5vcpkg7TripletltES0_.exit.i146.i.i.i.i.i:     ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i148.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i144.i.i.i.i.i
  %.0.i.i.i.i147.i.i.i.i.i = phi i32 [ %i.es, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i144.i.i.i.i.i ], [ %.0.i6.i.i.i.i151.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i148.i.i.i.i.i ]
  %.0.i.i.i.i147.fr.i.i.i.i.i = freeze i32 %.0.i.i.i.i147.i.i.i.i.i
  %i.eu = icmp slt i32 %.0.i.i.i.i147.fr.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %i.eu, label %.split221.thread.i.i.i.i.i, label %.thread218.i.i.i.i.i

_ZNK5vcpkg11PackageSpecltERKS0_.exit153.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i133.i.i.i.i.i
  %i.ev = icmp slt i32 %.fr235.i.i.i.i.i, 0
  br i1 %i.ev, label %.split221.thread.i.i.i.i.i, label %.thread218.i.i.i.i.i

.split221.thread.i.i.i.i.i:                       ; preds = %_ZNK5vcpkg11PackageSpecltERKS0_.exit153.i.i.i.i.i, %_ZNK5vcpkg7TripletltES0_.exit.i146.i.i.i.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i137.i.i.i.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i152.i.i.i.i.i
  br label %.thread218.i.i.i.i.i

.thread218.i.i.i.i.i:                             ; preds = %.split221.thread.i.i.i.i.i, %_ZNK5vcpkg11PackageSpecltERKS0_.exit153.i.i.i.i.i, %_ZNK5vcpkg7TripletltES0_.exit.i146.i.i.i.i.i, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i140.i.i.i.i.i
  %i.ew = phi ptr [ %.0811.i.i.i.i.i.i47.i.i.i.i.i, %.split221.thread.i.i.i.i.i ], [ %.012.i.i.i.i.i.i46.i.i.i.i.i, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i140.i.i.i.i.i ], [ %.012.i.i.i.i.i.i46.i.i.i.i.i, %_ZNK5vcpkg7TripletltES0_.exit.i146.i.i.i.i.i ], [ %.012.i.i.i.i.i.i46.i.i.i.i.i, %_ZNK5vcpkg11PackageSpecltERKS0_.exit153.i.i.i.i.i ] ; 3 uses
  %i.ex = phi i64 [ 24, %.split221.thread.i.i.i.i.i ], [ 16, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i140.i.i.i.i.i ], [ 16, %_ZNK5vcpkg7TripletltES0_.exit.i146.i.i.i.i.i ], [ 16, %_ZNK5vcpkg11PackageSpecltERKS0_.exit153.i.i.i.i.i ]
  %.1.in.i.i.i.i.i.i50.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i46.i.i.i.i.i, i64 %i.ex
  %.1.i.i.i.i.i.i51.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i50.i.i.i.i.i, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i.i.i52.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i51.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i52.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i53.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i45.i.i.i.i.i, !llvm.loop !405

_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i53.i.i.i.i.i: ; preds = %.thread218.i.i.i.i.i
  %i.ey = icmp eq ptr %i.ew, %i.a
  br i1 %i.ey, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISF_ESaISt4pairIKSF_SG_EEEE3$_0EEET_SS_SS_T0_.exit.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit54.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit54.i.i.i.i.i": ; preds = %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i53.i.i.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.fa = invoke noundef zeroext i1 @_ZNK5vcpkg11PackageSpecltERKS0_(ptr noundef nonnull align 8 dereferenceable(440) %i.ds, ptr noundef nonnull align 8 dereferenceable(40) %i.ez)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc27:                                         ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit54.i.i.i.i.i"
  br i1 %i.fa, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISF_ESaISt4pairIKSF_SG_EEEE3$_0EEET_SS_SS_T0_.exit.i.i.i", label %bb.i

bb.i:                                             ; preds = %.noexc27
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0157.0241.i.i.i.i.i, i64 1760 ; 3 uses
  %i.fc = add nsw i64 %.0242.i.i.i.i.i, -1
  %i.fd = icmp sgt i64 %.0242.i.i.i.i.i, 1
  br i1 %i.fd, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !406

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.i
  %.pre.i.i.i.i.i = ptrtoint ptr %i.fb to i64
  %.pre247.i.i.i.i.i = sub i64 %i.m, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %._crit_edge
  %.pre-phi248.i.i.i.i.i = phi i64 [ %.pre247.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.o, %._crit_edge ]
  %.sroa.0157.0.lcssa.i.i.i.i.i = phi ptr [ %i.fb, %._crit_edge.loopexit.i.i.i.i.i ], [ %.lcssa243, %._crit_edge ] ; 8 uses
  %i.fe = sdiv exact i64 %.pre-phi248.i.i.i.i.i, 440
  switch i64 %i.fe, label %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEEZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISD_ESaISt4pairIKSD_SE_EEEE3$_0ET_SP_SP_T0_.exit.i" [
    i64 3, label %bb.j
    i64 2, label %bb.l
    i64 1, label %bb.n
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ff = load ptr, ptr %i.b, align 8, !tbaa !53  ; 2 uses
  %.not10.i.i.i.i.i.i55.i.i.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not10.i.i.i.i.i.i55.i.i.i.i.i, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISF_ESaISt4pairIKSF_SG_EEEE3$_0EEET_SS_SS_T0_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i56.i.i.i.i.i

.lr.ph.i.i.i.i.i.i56.i.i.i.i.i:                   ; preds = %bb.j, %.noexc28
  %.012.i.i.i.i.i.i57.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i62.i.i.i.i.i, %.noexc28 ], [ %i.ff, %bb.j ] ; 3 uses
  %.0811.i.i.i.i.i.i58.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i59.i.i.i.i.i, %.noexc28 ], [ %i.a, %bb.j ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i57.i.i.i.i.i, i64 32 ; 2 uses
  %i.fh = invoke noundef zeroext i1 @_ZNK5vcpkg11PackageSpecltERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.fg, ptr noundef nonnull align 8 dereferenceable(440) %.sroa.0157.0.lcssa.i.i.i.i.i)
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc28:                                         ; preds = %.lr.ph.i.i.i.i.i.i56.i.i.i.i.i
  %.19.i.i.i.i.i.i59.i.i.i.i.i = select i1 %i.fh, ptr %.0811.i.i.i.i.i.i58.i.i.i.i.i, ptr %.012.i.i.i.i.i.i57.i.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i.i.i60.i.i.i.i.i = select i1 %i.fh, i64 24, i64 16
  %.1.in.i.i.i.i.i.i61.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i57.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i60.i.i.i.i.i
  %.1.i.i.i.i.i.i62.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i61.i.i.i.i.i, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i.i.i63.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i62.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i63.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i64.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i56.i.i.i.i.i, !llvm.loop !405

_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i64.i.i.i.i.i: ; preds = %.noexc28
  %i.fi = icmp eq ptr %.19.i.i.i.i.i.i59.i.i.i.i.i, %i.a
  br i1 %i.fi, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISF_ESaISt4pairIKSF_SG_EEEE3$_0EEET_SS_SS_T0_.exit.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit65.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit65.i.i.i.i.i": ; preds = %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i64.i.i.i.i.i
  %.0811.i.i.i.i.i.i58.i.i.i.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i58.i.i.i.i.i, i64 32
  %.19.i.i.i.i.i.i59.i.i.i.i.i.sroa.sel = select i1 %i.fh, ptr %.0811.i.i.i.i.i.i58.i.i.i.i.i.sroa.gep, ptr %i.fg
  %i.fj = invoke noundef zeroext i1 @_ZNK5vcpkg11PackageSpecltERKS0_(ptr noundef nonnull align 8 dereferenceable(440) %.sroa.0157.0.lcssa.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.19.i.i.i.i.i.i59.i.i.i.i.i.sroa.sel)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit65.i.i.i.i.i"
  br i1 %i.fj, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISF_ESaISt4pairIKSF_SG_EEEE3$_0EEET_SS_SS_T0_.exit.i.i.i", label %bb.k

bb.k:                                             ; preds = %.noexc29
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0157.0.lcssa.i.i.i.i.i, i64 440
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i
  %.sroa.0157.1.i.i.i.i.i = phi ptr [ %i.fk, %bb.k ], [ %.sroa.0157.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 6 uses
  %i.fl = load ptr, ptr %i.b, align 8, !tbaa !53  ; 2 uses
  %.not10.i.i.i.i.i.i66.i.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not10.i.i.i.i.i.i66.i.i.i.i.i, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISF_ESaISt4pairIKSF_SG_EEEE3$_0EEET_SS_SS_T0_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i67.i.i.i.i.i

.lr.ph.i.i.i.i.i.i67.i.i.i.i.i:                   ; preds = %bb.l, %.noexc30
  %.012.i.i.i.i.i.i68.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i73.i.i.i.i.i, %.noexc30 ], [ %i.fl, %bb.l ] ; 3 uses
  %.0811.i.i.i.i.i.i69.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i70.i.i.i.i.i, %.noexc30 ], [ %i.a, %bb.l ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i68.i.i.i.i.i, i64 32 ; 2 uses
  %i.fn = invoke noundef zeroext i1 @_ZNK5vcpkg11PackageSpecltERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.fm, ptr noundef nonnull align 8 dereferenceable(440) %.sroa.0157.1.i.i.i.i.i)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc30:                                         ; preds = %.lr.ph.i.i.i.i.i.i67.i.i.i.i.i
  %.19.i.i.i.i.i.i70.i.i.i.i.i = select i1 %i.fn, ptr %.0811.i.i.i.i.i.i69.i.i.i.i.i, ptr %.012.i.i.i.i.i.i68.i.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i.i.i71.i.i.i.i.i = select i1 %i.fn, i64 24, i64 16
  %.1.in.i.i.i.i.i.i72.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i68.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i71.i.i.i.i.i
  %.1.i.i.i.i.i.i73.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i72.i.i.i.i.i, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i.i.i74.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i73.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i74.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i75.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i67.i.i.i.i.i, !llvm.loop !405

_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i75.i.i.i.i.i: ; preds = %.noexc30
  %i.fo = icmp eq ptr %.19.i.i.i.i.i.i70.i.i.i.i.i, %i.a
  br i1 %i.fo, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISF_ESaISt4pairIKSF_SG_EEEE3$_0EEET_SS_SS_T0_.exit.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit76.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit76.i.i.i.i.i": ; preds = %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i75.i.i.i.i.i
  %.0811.i.i.i.i.i.i69.i.i.i.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i69.i.i.i.i.i, i64 32
  %.19.i.i.i.i.i.i70.i.i.i.i.i.sroa.sel = select i1 %i.fn, ptr %.0811.i.i.i.i.i.i69.i.i.i.i.i.sroa.gep, ptr %i.fm
  %i.fp = invoke noundef zeroext i1 @_ZNK5vcpkg11PackageSpecltERKS0_(ptr noundef nonnull align 8 dereferenceable(440) %.sroa.0157.1.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.19.i.i.i.i.i.i70.i.i.i.i.i.sroa.sel)
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit76.i.i.i.i.i"
  br i1 %i.fp, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISF_ESaISt4pairIKSF_SG_EEEE3$_0EEET_SS_SS_T0_.exit.i.i.i", label %bb.m

bb.m:                                             ; preds = %.noexc31
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0157.1.i.i.i.i.i, i64 440
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i.i
  %.sroa.0157.2.i.i.i.i.i = phi ptr [ %i.fq, %bb.m ], [ %.sroa.0157.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 5 uses
  %i.fr = load ptr, ptr %i.b, align 8, !tbaa !53  ; 2 uses
  %.not10.i.i.i.i.i.i77.i.i.i.i.i = icmp eq ptr %i.fr, null
  br i1 %.not10.i.i.i.i.i.i77.i.i.i.i.i, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISF_ESaISt4pairIKSF_SG_EEEE3$_0EEET_SS_SS_T0_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i78.i.i.i.i.i

.lr.ph.i.i.i.i.i.i78.i.i.i.i.i:                   ; preds = %bb.n, %.noexc32
  %.012.i.i.i.i.i.i79.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i84.i.i.i.i.i, %.noexc32 ], [ %i.fr, %bb.n ] ; 3 uses
  %.0811.i.i.i.i.i.i80.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i81.i.i.i.i.i, %.noexc32 ], [ %i.a, %bb.n ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i79.i.i.i.i.i, i64 32 ; 2 uses
  %i.ft = invoke noundef zeroext i1 @_ZNK5vcpkg11PackageSpecltERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.fs, ptr noundef nonnull align 8 dereferenceable(440) %.sroa.0157.2.i.i.i.i.i)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc32:                                         ; preds = %.lr.ph.i.i.i.i.i.i78.i.i.i.i.i
  %.19.i.i.i.i.i.i81.i.i.i.i.i = select i1 %i.ft, ptr %.0811.i.i.i.i.i.i80.i.i.i.i.i, ptr %.012.i.i.i.i.i.i79.i.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i.i.i82.i.i.i.i.i = select i1 %i.ft, i64 24, i64 16
  %.1.in.i.i.i.i.i.i83.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i79.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i82.i.i.i.i.i
  %.1.i.i.i.i.i.i84.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i83.i.i.i.i.i, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i.i.i85.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i84.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i85.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i86.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i78.i.i.i.i.i, !llvm.loop !405

_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i86.i.i.i.i.i: ; preds = %.noexc32
  %i.fu = icmp eq ptr %.19.i.i.i.i.i.i81.i.i.i.i.i, %i.a
  br i1 %i.fu, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISF_ESaISt4pairIKSF_SG_EEEE3$_0EEET_SS_SS_T0_.exit.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit87.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit87.i.i.i.i.i": ; preds = %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i86.i.i.i.i.i
  %.0811.i.i.i.i.i.i80.i.i.i.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i80.i.i.i.i.i, i64 32
  %.19.i.i.i.i.i.i81.i.i.i.i.i.sroa.sel = select i1 %i.ft, ptr %.0811.i.i.i.i.i.i80.i.i.i.i.i.sroa.gep, ptr %i.fs
  %i.fv = invoke noundef zeroext i1 @_ZNK5vcpkg11PackageSpecltERKS0_(ptr noundef nonnull align 8 dereferenceable(440) %.sroa.0157.2.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.19.i.i.i.i.i.i81.i.i.i.i.i.sroa.sel)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc33:                                         ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit87.i.i.i.i.i"
  %spec.select.i.i.i.i.i = select i1 %i.fv, ptr %.sroa.0157.2.i.i.i.i.i, ptr %i.l
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISF_ESaISt4pairIKSF_SG_EEEE3$_0EEET_SS_SS_T0_.exit.i.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISF_ESaISt4pairIKSF_SG_EEEE3$_0EEET_SS_SS_T0_.exit.i.i.i": ; preds = %.noexc27, %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i53.i.i.i.i.i, %bb.g, %.noexc24, %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i42.i.i.i.i.i, %bb.e, %.noexc21, %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i31.i.i.i.i.i, %bb.c, %.noexc18, %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %.noexc33, %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i86.i.i.i.i.i, %bb.n, %.noexc31, %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i75.i.i.i.i.i, %bb.l, %.noexc29, %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i64.i.i.i.i.i, %bb.j
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.0157.1.i.i.i.i.i, %.noexc31 ], [ %.sroa.0157.0.lcssa.i.i.i.i.i, %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i64.i.i.i.i.i ], [ %.sroa.0157.2.i.i.i.i.i, %bb.n ], [ %.sroa.0157.0.lcssa.i.i.i.i.i, %bb.j ], [ %spec.select.i.i.i.i.i, %.noexc33 ], [ %.sroa.0157.1.i.i.i.i.i, %bb.l ], [ %.sroa.0157.0.lcssa.i.i.i.i.i, %.noexc29 ], [ %.sroa.0157.2.i.i.i.i.i, %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i86.i.i.i.i.i ], [ %.sroa.0157.1.i.i.i.i.i, %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i75.i.i.i.i.i ], [ %i.ds, %bb.g ], [ %.sroa.0157.0241.i.i.i.i.i, %.noexc18 ], [ %i.ba, %.noexc21 ], [ %i.cj, %.noexc24 ], [ %i.ds, %.noexc27 ], [ %.sroa.0157.0241.i.i.i.i.i, %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ba, %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i31.i.i.i.i.i ], [ %i.cj, %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i42.i.i.i.i.i ], [ %i.ds, %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i53.i.i.i.i.i ], [ %.sroa.0157.0241.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ba, %bb.c ], [ %i.cj, %bb.e ] ; 5 uses
  %i.fw = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %i.l
  br i1 %i.fw, label %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEEZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISD_ESaISt4pairIKSD_SE_EEEE3$_0ET_SP_SP_T0_.exit.i", label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISF_ESaISt4pairIKSF_SG_EEEE3$_0EEET_SS_SS_T0_.exit.i.i.i"
  %.sroa.08.039.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, i64 440 ; 2 uses
  %.not40.i.i.i = icmp eq ptr %.sroa.08.039.i.i.i, %i.l
  %i.fx = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  %or.cond = select i1 %.not40.i.i.i, i1 true, i1 %i.fy
  br i1 %or.cond, label %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEEZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISD_ESaISt4pairIKSD_SE_EEEE3$_0ET_SP_SP_T0_.exit.i", label %.lr.ph.split.i.i.i

.lr.ph.splitthread-pre-split.i.i.i:               ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit.thread.i.i.i"
  %.pr.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !53
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.preheader.i.i.i, %.lr.ph.splitthread-pre-split.i.i.i
  %i.fz = phi ptr [ %.pr.i.i.i, %.lr.ph.splitthread-pre-split.i.i.i ], [ %i.fx, %.preheader.i.i.i ] ; 2 uses
  %.sroa.08.043.i.i.i = phi ptr [ %.sroa.08.0.i.i.i, %.lr.ph.splitthread-pre-split.i.i.i ], [ %.sroa.08.039.i.i.i, %.preheader.i.i.i ] ; 5 uses
  %.sroa.014.042.i.i.i = phi ptr [ %.sroa.014.1.i.i.i, %.lr.ph.splitthread-pre-split.i.i.i ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %.preheader.i.i.i ] ; 5 uses
  %.sroa.08.0.in.sroa.speculated.i.i.pn41.i.i.i = phi ptr [ %.sroa.08.043.i.i.i, %.lr.ph.splitthread-pre-split.i.i.i ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit.thread.i.i.i", label %.lr.ph.i.i.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.i.i.preheader.i.i.i:               ; preds = %.lr.ph.split.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn41.i.i.i, i64 448
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn41.i.i.i, i64 472
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.thread.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i.i, %.thread.i.i.i ], [ %i.fz, %.lr.ph.i.i.i.i.i.i.preheader.i.i.i ] ; 7 uses
  %.0811.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hc, %.thread.i.i.i ], [ %i.a, %.lr.ph.i.i.i.i.i.i.preheader.i.i.i ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 40
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !105 ; 3 uses
  %i.ge = load i64, ptr %i.ga, align 8, !tbaa !105 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ge, i64 %i.gd) ; 2 uses
  %i.gf = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.gf, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 32
  %i.gh = load ptr, ptr %.sroa.08.043.i.i.i, align 8, !tbaa !43
  %i.gi = load ptr, ptr %i.gg, align 8, !tbaa !43
  %i.gj = call i32 @memcmp(ptr noundef %i.gi, ptr noundef %i.gh, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #21
  %.fr.i.i.i = freeze i32 %i.gj                   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i.i.i.i, label %_ZNK5vcpkg11PackageSpecltERKS0_.exit.i.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.gk = sub i64 %i.gd, %i.ge                    ; 2 uses
  %i.gl = icmp slt i64 %i.gk, 0
  br i1 %i.gl, label %.split.thread.i.i.i, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %i.gm = sub i64 %i.gd, %i.ge                    ; 2 uses
  %i.gn = icmp slt i64 %i.gm, 0
  br i1 %i.gn, label %.split.thread.i.i.i, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i

_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i.i.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %i.gk, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i ], [ %i.gm, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i.i.i.i ]
  %.not33.i.i.i = icmp eq i64 %.pre-phi.i.i.i.i, 0
  br i1 %.not33.i.i.i, label %bb.o, label %.thread.i.i.i

bb.o:                                             ; preds = %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.gb, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %5, align 8
  %i.gp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg7Triplet14canonical_nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.go)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc34:                                         ; preds = %bb.o
  %i.gq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg7Triplet14canonical_nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc35:                                         ; preds = %.noexc34
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !105 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gu, i64 %i.gs) ; 2 uses
  %i.gv = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.gv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.noexc35
  %i.gw = load ptr, ptr %i.gq, align 8, !tbaa !43
  %i.gx = load ptr, ptr %i.gp, align 8, !tbaa !43
  %i.gy = call i32 @memcmp(ptr noundef %i.gx, ptr noundef %i.gw, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.gy, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNK5vcpkg7TripletltES0_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %.noexc35
  %i.gz = sub i64 %i.gs, %i.gu
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.gz, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNK5vcpkg7TripletltES0_.exit.i.i.i.i

_ZNK5vcpkg7TripletltES0_.exit.i.i.i.i:            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.gy, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %.0.i.i.i.i.fr.i.i.i = freeze i32 %.0.i.i.i.i.i.i.i
  %i.ha = icmp slt i32 %.0.i.i.i.i.fr.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br i1 %i.ha, label %.split.thread.i.i.i, label %.thread.i.i.i

_ZNK5vcpkg11PackageSpecltERKS0_.exit.i.i.i:       ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %i.hb = icmp slt i32 %.fr.i.i.i, 0
  br i1 %i.hb, label %.split.thread.i.i.i, label %.thread.i.i.i

.split.thread.i.i.i:                              ; preds = %_ZNK5vcpkg11PackageSpecltERKS0_.exit.i.i.i, %_ZNK5vcpkg7TripletltES0_.exit.i.i.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i.i.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.split.thread.i.i.i, %_ZNK5vcpkg11PackageSpecltERKS0_.exit.i.i.i, %_ZNK5vcpkg7TripletltES0_.exit.i.i.i.i, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i
  %i.hc = phi ptr [ %.0811.i.i.i.i.i.i.i.i.i, %.split.thread.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i, %_ZNK5vcpkg7TripletltES0_.exit.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i, %_ZNK5vcpkg11PackageSpecltERKS0_.exit.i.i.i ] ; 3 uses
  %i.hd = phi i64 [ 24, %.split.thread.i.i.i ], [ 16, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i ], [ 16, %_ZNK5vcpkg7TripletltES0_.exit.i.i.i.i ], [ 16, %_ZNK5vcpkg11PackageSpecltERKS0_.exit.i.i.i ]
  %.1.in.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 %i.hd
  %.1.i.i.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i.i.i, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i.i.i.i5.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i5.i.i.i, label %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !405

_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.thread.i.i.i
  %i.he = icmp eq ptr %i.hc, %i.a
  br i1 %i.he, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit.thread.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit.i.i.i": ; preds = %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i.i.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.hg = invoke noundef zeroext i1 @_ZNK5vcpkg11PackageSpecltERKS0_(ptr noundef nonnull align 8 dereferenceable(440) %.sroa.08.043.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.hf)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit.i.i.i"
  br i1 %i.hg, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit.thread.i.i.i", label %bb.p

bb.p:                                             ; preds = %.noexc36
  %i.hh = call noundef nonnull align 8 dereferenceable(440) ptr @_ZN5vcpkg17InstallPlanActionaSEOS0_(ptr noundef nonnull align 8 dereferenceable(440) %.sroa.014.042.i.i.i, ptr noundef nonnull align 8 dereferenceable(440) %.sroa.08.043.i.i.i) #21 ; 0 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.014.042.i.i.i, i64 440
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit.thread.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit.thread.i.i.i": ; preds = %bb.p, %.noexc36, %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i
  %.sroa.014.1.i.i.i = phi ptr [ %.sroa.014.042.i.i.i, %.noexc36 ], [ %i.hi, %bb.p ], [ %.sroa.014.042.i.i.i, %.lr.ph.split.i.i.i ], [ %.sroa.014.042.i.i.i, %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.08.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.043.i.i.i, i64 440 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.08.0.i.i.i, %i.l
  br i1 %.not.i.i.i, label %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEEZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISD_ESaISt4pairIKSD_SE_EEEE3$_0ET_SP_SP_T0_.exit.i", label %.lr.ph.splitthread-pre-split.i.i.i, !llvm.loop !407

"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEEZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISD_ESaISt4pairIKSD_SE_EEEE3$_0ET_SP_SP_T0_.exit.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit.thread.i.i.i", %.preheader.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISF_ESaISt4pairIKSF_SG_EEEE3$_0EEET_SS_SS_T0_.exit.i.i.i", %._crit_edge.i.i.i.i.i
  %.sroa.014.2.i.i.i = phi ptr [ %i.l, %._crit_edge.i.i.i.i.i ], [ %i.l, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISF_ESaISt4pairIKSF_SG_EEEE3$_0EEET_SS_SS_T0_.exit.i.i.i" ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %.preheader.i.i.i ], [ %.sroa.014.1.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS3_11PackageSpecENS3_11BuildResultESt4lessIS7_ESaISt4pairIKS7_S8_EEEE3$_0EclINS_17__normal_iteratorIPNS3_17InstallPlanActionESt6vectorISM_SaISM_EEEEEEbT_.exit.thread.i.i.i" ] ; 2 uses
  %i.hj = load ptr, ptr %i.g, align 8, !tbaa !172 ; 2 uses
  %.not.i.i8.i = icmp eq ptr %.sroa.014.2.i.i.i, %i.hj
  br i1 %.not.i.i8.i, label %"_ZN5vcpkg4Util15erase_remove_ifISt6vectorINS_17InstallPlanActionESaIS3_EEZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS_10ActionPlanERKSt3mapINS_11PackageSpecENS_11BuildResultESt4lessISA_ESaISt4pairIKSA_SB_EEEE3$_0EEvRT_T0_.exit", label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i: ; preds = %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEEZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS2_10ActionPlanERKSt3mapINS2_11PackageSpecENS2_11BuildResultESt4lessISD_ESaISt4pairIKSD_SE_EEEE3$_0ET_SP_SP_T0_.exit.i"
  %i.hk = load ptr, ptr %i.f, align 8, !tbaa !172 ; 2 uses
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = ptrtoint ptr %.sroa.014.2.i.i.i to i64
  %i.hn = sub i64 %i.hm, %i.hl
  %i.ho = getelementptr inbounds i8, ptr %i.hk, i64 %i.hn ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i.i ], [ %i.ho, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i ] ; 2 uses
  call void @_ZN5vcpkg17InstallPlanActionD2Ev(ptr noundef nonnull align 8 dead_on_return(440) dereferenceable(440) %.05.i.i.i.i.i.i) #21
  %i.hp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 440 ; 2 uses
  %.not.i.i.i.i.i9.i = icmp eq ptr %i.hp, %i.hj
  br i1 %.not.i.i.i.i.i9.i, label %_ZSt8_DestroyIPN5vcpkg17InstallPlanActionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPN5vcpkg17InstallPlanActionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.ho, ptr %i.g, align 8, !tbaa !127
  br label %"_ZN5vcpkg4Util15erase_remove_ifISt6vectorINS_17InstallPlanActionESaIS3_EEZN12_GLOBAL__N_136prune_entirely_known_action_branchesERNS_10ActionPlanERKSt3mapINS_11PackageSpecENS_11BuildResultESt4lessISA_ESaISt4pairIKSA_SB_EEEE3$_0EEvRT_T0_.exit"

bb.q:                                             ; preds = %.lr.ph, %_ZN5vcpkg4Util4Sets8containsISt3setINS_11PackageSpecESt4lessIS4_ESaIS4_EES4_EEbRKT_RKT0_.exit.thread
  %.sroa.0115.0252 = phi ptr [ %i.h, %.lr.ph ], [ %i.hq, %_ZN5vcpkg4Util4Sets8containsISt3setINS_11PackageSpecESt4lessIS4_ESaIS4_EES4_EEbRKT_RKT0_.exit.thread ] ; 5 uses
  %i.hq = getelementptr inbounds i8, ptr %.sroa.0115.0252, i64 -440 ; 9 uses
  %i.hr = load ptr, ptr %i.j, align 8, !tbaa !53  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.hr, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIN5vcpkg11PackageSpecENS0_11BuildResultESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %bb.q
  %i.hs = getelementptr inbounds i8, ptr %.sroa.0115.0252, i64 -432 ; 3 uses
  %i.ht = getelementptr inbounds i8, ptr %.sroa.0115.0252, i64 -408 ; 3 uses
  br label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader, %.thread
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.thread ], [ %i.hr, %.lr.ph.i.i.i37.preheader ] ; 7 uses
  %.0811.i.i.i = phi ptr [ %i.iu, %.thread ], [ %i.k, %.lr.ph.i.i.i37.preheader ]
  %i.hu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !105 ; 3 uses
  %i.hw = load i64, ptr %i.hs, align 8, !tbaa !105 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.hw, i64 %i.hv) ; 2 uses
  %i.hx = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.hx, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i.i.i37
  %i.hy = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.hz = load ptr, ptr %i.hq, align 8, !tbaa !43
  %i.ia = load ptr, ptr %i.hy, align 8, !tbaa !43
  %i.ib = call i32 @memcmp(ptr noundef %i.ia, ptr noundef %i.hz, i64 noundef %.sroa.speculated.i.i.i) #21
  %.fr = freeze i32 %i.ib                         ; 2 uses
  %.not.i.i.i59 = icmp eq i32 %.fr, 0
  br i1 %.not.i.i.i59, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i, label %.noexc39

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %.lr.ph.i.i.i37
  %i.ic = sub i64 %i.hv, %i.hw                    ; 2 uses
  %i.id = icmp slt i64 %i.ic, 0
  br i1 %i.id, label %.split.thread, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.ie = sub i64 %i.hv, %i.hw                    ; 2 uses
  %i.if = icmp slt i64 %i.ie, 0
  br i1 %i.if, label %.split.thread, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %.pre-phi.i = phi i64 [ %i.ic, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %i.ie, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i ]
  %.not179 = icmp eq i64 %.pre-phi.i, 0
  br i1 %.not179, label %bb.r, label %.thread

bb.r:                                             ; preds = %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.ig = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ht, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.ih = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg7Triplet14canonical_nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ig)
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc61:                                         ; preds = %bb.r
  %i.ii = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg7Triplet14canonical_nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc62:                                         ; preds = %.noexc61
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !105 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.im = load i64, ptr %i.il, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.im, i64 %i.ik) ; 2 uses
  %i.in = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.in, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.noexc62
  %i.io = load ptr, ptr %i.ii, align 8, !tbaa !43
  %i.ip = load ptr, ptr %i.ih, align 8, !tbaa !43
  %i.iq = call i32 @memcmp(ptr noundef %i.ip, ptr noundef %i.io, i64 noundef %.sroa.speculated.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i60 = icmp eq i32 %i.iq, 0
  br i1 %.not.i.i.i.i60, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNK5vcpkg7TripletltES0_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %.noexc62
  %i.ir = sub i64 %i.ik, %i.im
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ir, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNK5vcpkg7TripletltES0_.exit.i

_ZNK5vcpkg7TripletltES0_.exit.i:                  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.iq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %.0.i.i.i.i.fr = freeze i32 %.0.i.i.i.i
  %i.is = icmp slt i32 %.0.i.i.i.i.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br i1 %i.is, label %.split.thread, label %.thread

.noexc39:                                         ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.it = icmp slt i32 %.fr, 0
  br i1 %i.it, label %.split.thread, label %.thread

.split.thread:                                    ; preds = %.noexc39, %_ZNK5vcpkg7TripletltES0_.exit.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  br label %.thread

.thread:                                          ; preds = %.noexc39, %_ZNK5vcpkg7TripletltES0_.exit.i, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %.split.thread
  %i.iu = phi ptr [ %.0811.i.i.i, %.split.thread ], [ %.012.i.i.i, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %.012.i.i.i, %_ZNK5vcpkg7TripletltES0_.exit.i ], [ %.012.i.i.i, %.noexc39 ] ; 4 uses
  %i.iv = phi i64 [ 24, %.split.thread ], [ 16, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ 16, %_ZNK5vcpkg7TripletltES0_.exit.i ], [ 16, %.noexc39 ]
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %i.iv
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i38, label %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecESt4pairIKS1_NS0_11BuildResultEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i, label %.lr.ph.i.i.i37, !llvm.loop !10

_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecESt4pairIKS1_NS0_11BuildResultEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %.thread
  %i.iw = icmp eq ptr %i.iu, %i.k
  br i1 %i.iw, label %_ZNKSt3mapIN5vcpkg11PackageSpecENS0_11BuildResultESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread, label %bb.s

bb.s:                                             ; preds = %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecESt4pairIKS1_NS0_11BuildResultEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  %i.iy = invoke noundef zeroext i1 @_ZNK5vcpkg11PackageSpecltERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.hq, ptr noundef nonnull align 8 dereferenceable(40) %i.ix)
          to label %_ZNKSt3mapIN5vcpkg11PackageSpecENS0_11BuildResultESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNKSt3mapIN5vcpkg11PackageSpecENS0_11BuildResultESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit: ; preds = %bb.s
  br i1 %i.iy, label %_ZNKSt3mapIN5vcpkg11PackageSpecENS0_11BuildResultESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread, label %bb.v

_ZNKSt3mapIN5vcpkg11PackageSpecENS0_11BuildResultESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIN5vcpkg11PackageSpecESt4pairIKS1_NS0_11BuildResultEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i, %bb.q, %_ZNKSt3mapIN5vcpkg11PackageSpecENS0_11BuildResultESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store i32 247, ptr %11, align 8, !tbaa !57
  %i.iz = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.2, ptr %i.iz, align 8, !tbaa !58
  %i.ja = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @__func__._ZN12_GLOBAL__N_136prune_entirely_known_action_branchesERN5vcpkg10ActionPlanERKSt3mapINS0_11PackageSpecENS0_11BuildResultESt4lessIS4_ESaISt4pairIKS4_S5_EEE, ptr %i.ja, align 8, !tbaa !59
  invoke void @_ZN5vcpkg6Checks11unreachableERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24) %11) #23
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %_ZNKSt3mapIN5vcpkg11PackageSpecENS0_11BuildResultESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread
  unreachable

bb.u:                                             ; preds = %_ZNKSt3mapIN5vcpkg11PackageSpecENS0_11BuildResultESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit.thread
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.loopexit.split-lp

bb.v:                                             ; preds = %_ZNKSt3mapIN5vcpkg11PackageSpecENS0_11BuildResultESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iu, i64 72
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !113
  switch i32 %i.jd, label %bb.ag [
    i32 1, label %bb.w
    i32 9, label %bb.w
    i32 7, label %bb.x
    i32 5, label %bb.x
    i32 6, label %bb.x
    i32 11, label %bb.x
    i32 8, label %bb.ad
    i32 10, label %bb.ad
    i32 13, label %bb.ad
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.je = invoke { ptr, i8 } @_ZNSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(40) %i.hq)
          to label %.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.x:                                             ; preds = %bb.v, %bb.v, %bb.v, %bb.v
  %i.jf = load ptr, ptr %i.b, align 8, !tbaa !53  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.jf, null
  br i1 %.not10.i.i.i.i, label %_ZN5vcpkg4Util4Sets8containsISt3setINS_11PackageSpecESt4lessIS4_ESaIS4_EES4_EEbRKT_RKT0_.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.x, %.thread146
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.thread146 ], [ %i.jf, %bb.x ] ; 7 uses
  %.0811.i.i.i.i = phi ptr [ %i.kg, %.thread146 ], [ %i.a, %bb.x ] ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !105 ; 3 uses
  %i.jj = load i64, ptr %i.hs, align 8, !tbaa !105 ; 3 uses
  %.sroa.speculated.i.i.i63 = call i64 @llvm.umin.i64(i64 %i.jj, i64 %i.ji) ; 2 uses
  %i.jk = icmp eq i64 %.sroa.speculated.i.i.i63, 0
  br i1 %i.jk, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i83, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i64

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i64: ; preds = %.lr.ph.i.i.i.i
  %i.jl = load ptr, ptr %i.hq, align 8, !tbaa !43
  %i.jm = load ptr, ptr %i.jg, align 8, !tbaa !43
  %i.jn = call i32 @memcmp(ptr noundef %i.jm, ptr noundef %i.jl, i64 noundef %.sroa.speculated.i.i.i63) #21
  %.fr182 = freeze i32 %i.jn                      ; 2 uses
  %.not.i.i.i65 = icmp eq i32 %.fr182, 0
  br i1 %.not.i.i.i65, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i68, label %.noexc42

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i83: ; preds = %.lr.ph.i.i.i.i
  %i.jo = sub i64 %i.ji, %i.jj                    ; 2 uses
  %i.jp = icmp slt i64 %i.jo, 0
  br i1 %i.jp, label %.split150.thread, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i71

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread14.i68: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i64
  %i.jq = sub i64 %i.ji, %i.jj                    ; 2 uses
  %i.jr = icmp slt i64 %i.jq, 0
  br i1 %i.jr, label %.split150.thread, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i71
end_hunk_2
