Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/calc_verletbuf?download=true
inline.NumInlined: 1121
inline.NumDeleted: 571
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN3gmx16EnumerationArrayINS_14MtsForceGroupsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_7EED2Ev:bb.a
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !18
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5
  %i.ak = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5
  %i.an = load i64, ptr %i.al, align 8, !tbaa !18
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i64 0, 68719476752) i64 @_Z21verletbufGetListSetupN3gmx15NbnxmKernelTypeE(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  switch i32 %0, label %bb.c [
    i32 4, label %bb.h
    i32 1, label %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit
    i32 2, label %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit
    i32 3, label %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit
    i32 6, label %_ZN3gmxL15sc_jClusterSizeENS_15NbnxmKernelTypeE.exit
    i32 0, label %bb.b
    i32 7, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit

_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ], [ 4, %bb.a ], [ 4, %bb.a ], [ 4, %bb.a ] ; 5 uses
  switch i32 %0, label %_ZN3gmxL15sc_jClusterSizeENS_15NbnxmKernelTypeE.exit [
    i32 7, label %bb.g
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 6, label %bb.f
    i32 0, label %bb.g
  ]

bb.d:                                             ; preds = %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit
  br label %_ZN3gmxL15sc_jClusterSizeENS_15NbnxmKernelTypeE.exit

bb.e:                                             ; preds = %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit
  br label %_ZN3gmxL15sc_jClusterSizeENS_15NbnxmKernelTypeE.exit

bb.f:                                             ; preds = %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit
  br label %_ZN3gmxL15sc_jClusterSizeENS_15NbnxmKernelTypeE.exit

bb.g:                                             ; preds = %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit, %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit
  br label %_ZN3gmxL15sc_jClusterSizeENS_15NbnxmKernelTypeE.exit

_ZN3gmxL15sc_jClusterSizeENS_15NbnxmKernelTypeE.exit: ; preds = %bb.a, %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i6 = phi i64 [ %.0.i, %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit ], [ %.0.i, %bb.g ], [ %.0.i, %bb.d ], [ %.0.i, %bb.e ], [ %.0.i, %bb.f ], [ 1, %bb.a ]
  %.0.i3 = phi i64 [ 17179869184, %_ZN3gmxL15sc_iClusterSizeENS_15NbnxmKernelTypeE.exit ], [ 0, %bb.g ], [ 68719476736, %bb.d ], [ 34359738368, %bb.e ], [ 4294967296, %bb.f ], [ 4294967296, %bb.a ]
  %i.a = or disjoint i64 %.0.i3, %.0.i6
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3gmxL15sc_jClusterSizeENS_15NbnxmKernelTypeE.exit
  %.sroa.0.0.insert.insert = phi i64 [ %i.a, %_ZN3gmxL15sc_jClusterSizeENS_15NbnxmKernelTypeE.exit ], [ 34359738376, %bb.a ]
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 17179869188, 34359738377) i64 @_Z25verletbufGetSafeListSetup13ListSetupType(i32 noundef %0) local_unnamed_addr #10 {
_Z21verletbufGetListSetupN3gmx15NbnxmKernelTypeE.exit:
  %switch.selectcmp = icmp eq i32 %0, 1
  %switch.selectcmp4 = icmp eq i32 %0, 2
  %switch.select8 = select i1 %switch.selectcmp, i64 34359738372, i64 17179869188
  %switch.select10 = select i1 %switch.selectcmp4, i64 34359738376, i64 %switch.select8
  ret i64 %switch.select10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_Z23constrained_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_(float noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !23 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.d = load i16, ptr %i.c, align 2, !tbaa !24
  %i.e = sitofp i16 %i.d to float                 ; 2 uses
  %i.f = fmul float %i.b, %i.e                    ; 2 uses
  %i.g = load i16, ptr %1, align 4, !tbaa !25
  %i.h = sitofp i16 %i.g to float                 ; 2 uses
  %i.i = fmul float %i.b, %i.h                    ; 2 uses
  %i.j = fdiv float 1.000000e+00, %i.i
  %i.k = fdiv float 1.000000e+00, %i.f
  %i.l = fadd float %i.k, %i.j
  %i.m = fmul float %i.f, %i.l
  %i.n = fdiv float 1.000000e+00, %i.m            ; 2 uses
  %i.o = fmul float %0, %i.n
  %i.p = fmul float %i.i, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load float, ptr %i.q, align 4, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load i16, ptr %i.s, align 4, !tbaa !27
  %i.u = sitofp i16 %i.t to float
  %i.v = fmul float %i.r, %i.u
  %i.w = fmul float %i.v, %i.n                    ; 2 uses
  %i.x = fmul float %i.w, %i.w                    ; 2 uses
  %i.y = fdiv float %i.p, %i.x                    ; 2 uses
  %i.z = fcmp ogt float %i.y, f0x4097CA11
  %.sroa.speculated = select i1 %i.z, float f0x4097CA11, float %i.y ; 4 uses
  %i.aa = fmul float %i.x, %.sroa.speculated
  %i.ab = tail call float @llvm.fmuladd.f32(float %.sroa.speculated, float f0x3EAAAAAB, float 1.000000e+00)
  %i.ac = fmul float %.sroa.speculated, %.sroa.speculated
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float f0x3D360B61, float %i.ab)
  %i.ae = fdiv float %i.aa, %i.ad
  store float %i.ae, ptr %2, align 4, !tbaa !28
  %i.af = load float, ptr %i.a, align 4, !tbaa !23 ; 2 uses
  %i.ag = fmul float %i.af, %i.h
  %i.ah = fdiv float 1.000000e+00, %i.ag
  %i.ai = fmul float %i.af, %i.e
  %i.aj = fdiv float 1.000000e+00, %i.ai
  %i.ak = fadd float %i.ah, %i.aj
  %i.al = fdiv float %0, %i.ak
  store float %i.al, ptr %3, align 4, !tbaa !28
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define noundef float @_Z27computeEffectiveAtomDensityN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEPA3_KffP10tmpi_comm_(ptr %0, ptr %1, ptr noundef %2, float noundef %3, ptr noundef %4) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca float, align 4                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !29
  %.not = icmp eq ptr %4, null                    ; 2 uses
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef i32 @_Z14tMPI_Comm_rankP10tmpi_comm_Pi(ptr noundef nonnull %4, ptr noundef nonnull %i.a) ; 0 uses
  %.pr = load i32, ptr %i.a, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.d = icmp eq i32 %.pr, 0
  br i1 %i.d, label %bb.c, label %.thread8

bb.c:                                             ; preds = %.thread, %bb.b
  %5 = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %6 = sub i64 %5, %i.e
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL27computeEffectiveAtomDensityN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEPA3_KffENK3$_0clEv", ptr noundef nonnull @.str.10, i32 noundef 1142) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = fcmp ogt float %3, 0.000000e+00
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL27computeEffectiveAtomDensityN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEPA3_KffENK3$_0clEv", ptr noundef nonnull @.str.10, i32 noundef 1144) #25
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = load float, ptr %2, align 4, !tbaa !28   ; 2 uses
  %i.i = fcmp olt float %3, %i.h
  br i1 %i.i, label %bb.i, label %bb.h

.noexc.i:                                         ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #25
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.k
  %.not.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i, label %.noexc45.i

.noexc45.i:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.j = shl nuw nsw i64 %i.ao, 2                 ; 3 uses
  %i.k = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #29 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !29
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ao
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = ptrtoint ptr %i.l to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i

bb.h:                                             ; preds = %bb.j, %bb.i, %bb.g
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL27computeEffectiveAtomDensityN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEPA3_KffENK3$_0clEv", ptr noundef nonnull @.str.10, i32 noundef 1151) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.o = fdiv float %i.h, %3
  %i.p = call noundef i64 @lroundf(float noundef %i.o) #26
  %i.q = trunc i64 %i.p to i32                    ; 6 uses
  %i.r = sitofp i32 %i.q to float
  %i.s = load float, ptr %2, align 4, !tbaa !28
  %i.t = fdiv float %i.r, %i.s                    ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !28 ; 2 uses
  %i.w = fcmp olt float %3, %i.v
  br i1 %i.w, label %bb.j, label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.x = fdiv float %i.v, %3
  %i.y = call noundef i64 @lroundf(float noundef %i.x) #26
  %i.z = trunc i64 %i.y to i32                    ; 9 uses
  %i.aa = sitofp i32 %i.z to float
  %i.ab = load float, ptr %i.u, align 4, !tbaa !28
  %i.ac = fdiv float %i.aa, %i.ab                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !28 ; 2 uses
  %i.af = fcmp olt float %3, %i.ae
  br i1 %i.af, label %bb.k, label %bb.h

bb.k:                                             ; preds = %bb.j
  %i.ag = fdiv float %i.ae, %3
  %i.ah = call noundef i64 @lroundf(float noundef %i.ag) #26
  %i.ai = trunc i64 %i.ah to i32                  ; 9 uses
  %i.aj = sitofp i32 %i.ai to float
  %i.ak = load float, ptr %i.ad, align 4, !tbaa !28
  %i.al = fdiv float %i.aj, %i.ak                 ; 2 uses
  %i.am = mul nsw i32 %i.z, %i.q
  %i.an = mul nsw i32 %i.am, %i.ai                ; 3 uses
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = icmp slt i32 %i.an, 0
  br i1 %i.ap, label %.noexc.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i:          ; preds = %.noexc45.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.12.0.i = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.n, %.noexc45.i ] ; 2 uses
  %.sroa.075.0.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.k, %.noexc45.i ] ; 16 uses
  %.0.i.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.m, %.noexc45.i ] ; 3 uses
  %.0.i.i.i.i.i.i.i.i16 = ptrtoaddr ptr %.0.i.i.i.i.i.i.i.i to i64
  %.sroa.075.0.i17 = ptrtoaddr ptr %.sroa.075.0.i to i64
  %reass.sub.fr.i.i = freeze i64 %6               ; 5 uses
  %i.aq = sdiv exact i64 %reass.sub.fr.i.i, 12    ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, 768614336404564650
  br i1 %i.ar, label %bb.l, label %.lr.ph.i.i.i.i.preheader.i.i.i

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #25
          to label %.noexc.i.i unwind label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i

.noexc.i.i:                                       ; preds = %bb.l
  unreachable

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %reass.sub.fr.i.i) #29
          to label %.noexc5.i.i unwind label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i ; 9 uses

.noexc5.i.i:                                      ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i
  %i.at = add i64 %reass.sub.fr.i.i, -12          ; 4 uses
  %i.au = urem i64 %i.at, 12
  %i.av = udiv i64 %i.at, 12
  %i.aw = sub nuw i64 %i.at, %i.au
  %i.ax = add i64 %i.aw, 12                       ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.as, ptr align 4 %0, i64 %i.ax, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.as, i64 %i.ax ; 2 uses
  invoke void @_Z16put_atoms_in_box7PbcTypePA3_KfN3gmx8ArrayRefINS3_11BasicVectorIfEEEE(i32 noundef 0, ptr noundef nonnull %2, ptr nonnull %i.as, ptr nonnull %scevgep.i.i.i)
          to label %.preheader86.i unwind label %bb.m

.preheader86.i:                                   ; preds = %.noexc5.i.i
  %.not89.i = icmp eq i64 %i.ax, 0
  br i1 %.not89.i, label %.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader86.i
  %i.ay = add nsw i32 %i.q, -1                    ; 3 uses
  %i.az = add nsw i32 %i.z, -1                    ; 3 uses
  %i.ba = add nsw i32 %i.ai, -1                   ; 3 uses
  %i.bb = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.al, i64 1 ; 3 uses
  %i.bd = and i64 %i.av, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bd, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.be = load float, ptr %i.as, align 4, !tbaa !28
  %i.bf = fmul float %i.t, %i.be
  %i.bg = fptosi float %i.bf to i32               ; 2 uses
  %i.bh = icmp eq i32 %i.q, %i.bg
  %spec.select.i.prol = select i1 %i.bh, i32 %i.ay, i32 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.bj = load <2 x float>, ptr %i.bi, align 4, !tbaa !28
  %i.bk = fmul <2 x float> %i.bc, %i.bj           ; 2 uses
  %i.bl = extractelement <2 x float> %i.bk, i64 0
  %i.bm = fptosi float %i.bl to i32               ; 2 uses
  %i.bn = icmp eq i32 %i.z, %i.bm
  %.sroa.5.0.i.prol = select i1 %i.bn, i32 %i.az, i32 %i.bm
  %i.bo = extractelement <2 x float> %i.bk, i64 1
  %i.bp = fptosi float %i.bo to i32               ; 2 uses
  %i.bq = icmp eq i32 %i.ai, %i.bp
  %.sroa.8.0.i.prol = select i1 %i.bq, i32 %i.ba, i32 %i.bp
  %i.br = mul nsw i32 %spec.select.i.prol, %i.z
  %i.bs = add nsw i32 %i.br, %.sroa.5.0.i.prol
  %i.bt = mul nsw i32 %i.bs, %i.ai
  %i.bu = add nsw i32 %i.bt, %.sroa.8.0.i.prol
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.i, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !29
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !29
  %i.bz = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.sroa.061.090.i.unr = phi ptr [ %i.as, %.lr.ph.i ], [ %i.bz, %.prol.loopexit.unr-lcssa ]
  %i.ca = icmp ult i64 %i.at, 12
  br i1 %i.ca, label %.preheader.i, label %.lr.ph.i.new

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i: ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i, %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.preheader.i:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new, %.preheader86.i
  %.not8591.i = icmp eq ptr %.sroa.075.0.i, %.0.i.i.i.i.i.i.i.i
  br i1 %.not8591.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit53.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %i.cc = add i64 %.0.i.i.i.i.i.i.i.i16, -4
  %i.cd = sub i64 %i.cc, %.sroa.075.0.i17         ; 3 uses
  %i.ce = lshr i64 %i.cd, 2
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cd, 12
  br i1 %min.iters.check, label %.lr.ph94.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check18 = icmp ult i64 %i.cd, 60
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cg = and i64 %i.cf, 12
  %n.vec = and i64 %i.cf, 9223372036854775792     ; 4 uses
  %i.ch = shl i64 %n.vec, 2
  %i.ci = getelementptr i8, ptr %.sroa.075.0.i, i64 %i.ch
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.cv, %vector.body ]
  %vec.phi19 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.cw, %vector.body ]
  %vec.phi20 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.cx, %vector.body ]
  %vec.phi21 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.cy, %vector.body ]
  %i.cj = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.075.0.i, i64 %i.cj ; 4 uses
  %i.ck = getelementptr i8, ptr %next.gep, i64 16
  %i.cl = getelementptr i8, ptr %next.gep, i64 32
  %i.cm = getelementptr i8, ptr %next.gep, i64 48
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !29
  %wide.load22 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !29
  %wide.load23 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !29
  %wide.load24 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !29
  %i.cn = sext <4 x i32> %wide.load to <4 x i64>  ; 2 uses
  %i.co = sext <4 x i32> %wide.load22 to <4 x i64> ; 2 uses
  %i.cp = sext <4 x i32> %wide.load23 to <4 x i64> ; 2 uses
  %i.cq = sext <4 x i32> %wide.load24 to <4 x i64> ; 2 uses
  %i.cr = mul nsw <4 x i64> %i.cn, %i.cn
  %i.cs = mul nsw <4 x i64> %i.co, %i.co
  %i.ct = mul nsw <4 x i64> %i.cp, %i.cp
  %i.cu = mul nsw <4 x i64> %i.cq, %i.cq
  %i.cv = add <4 x i64> %i.cr, %vec.phi           ; 2 uses
  %i.cw = add <4 x i64> %i.cs, %vec.phi19         ; 2 uses
  %i.cx = add <4 x i64> %i.ct, %vec.phi20         ; 2 uses
  %i.cy = add <4 x i64> %i.cu, %vec.phi21         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.cw, %i.cv
  %bin.rdx25 = add <4 x i64> %i.cx, %bin.rdx
  %bin.rdx26 = add <4 x i64> %i.cy, %bin.rdx25
  %i.da = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx26) ; 3 uses
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph94.i.preheader, label %vec.epilog.ph, !prof !264

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.da, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec27 = and i64 %i.cf, 9223372036854775804   ; 3 uses
  %i.db = shl i64 %n.vec27, 2
  %i.dc = getelementptr i8, ptr %.sroa.075.0.i, i64 %i.db
  %i.dd = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next32, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi29 = phi <4 x i64> [ %i.dd, %vec.epilog.ph ], [ %i.dh, %vec.epilog.vector.body ]
  %i.de = shl i64 %index28, 2
  %next.gep30 = getelementptr i8, ptr %.sroa.075.0.i, i64 %i.de
  %wide.load31 = load <4 x i32>, ptr %next.gep30, align 4, !tbaa !29
  %i.df = sext <4 x i32> %wide.load31 to <4 x i64> ; 2 uses
  %i.dg = mul nsw <4 x i64> %i.df, %i.df
  %i.dh = add <4 x i64> %i.dg, %vec.phi29         ; 2 uses
  %index.next32 = add nuw i64 %index28, 4         ; 2 uses
  %i.di = icmp eq i64 %index.next32, %n.vec27
  br i1 %i.di, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !262

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dj = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.dh) ; 2 uses
  %cmp.n33 = icmp eq i64 %i.cf, %n.vec27
  br i1 %cmp.n33, label %._crit_edge.loopexit.i, label %.lr.ph94.i.preheader

.lr.ph94.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03893.i.ph = phi i64 [ 0, %iter.check ], [ %i.da, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  %.sroa.057.092.i.ph = phi ptr [ %.sroa.075.0.i, %iter.check ], [ %i.ci, %vec.epilog.iter.check ], [ %i.dc, %vec.epilog.middle.block ]
  br label %.lr.ph94.i

bb.m:                                             ; preds = %.noexc5.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %reass.sub.fr.i.i) #27
  br label %.body.i

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.sroa.061.090.i = phi ptr [ %i.fc, %.lr.ph.i.new ], [ %.sroa.061.090.i.unr, %.prol.loopexit ] ; 5 uses
  %i.dl = load float, ptr %.sroa.061.090.i, align 4, !tbaa !28
  %i.dm = fmul float %i.t, %i.dl
  %i.dn = fptosi float %i.dm to i32               ; 2 uses
  %i.do = icmp eq i32 %i.q, %i.dn
  %spec.select.i = select i1 %i.do, i32 %i.ay, i32 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.061.090.i, i64 4
  %i.dq = load <2 x float>, ptr %i.dp, align 4, !tbaa !28
  %i.dr = fmul <2 x float> %i.bc, %i.dq           ; 2 uses
  %i.ds = extractelement <2 x float> %i.dr, i64 0
  %i.dt = fptosi float %i.ds to i32               ; 2 uses
  %i.du = icmp eq i32 %i.z, %i.dt
  %.sroa.5.0.i = select i1 %i.du, i32 %i.az, i32 %i.dt
  %i.dv = extractelement <2 x float> %i.dr, i64 1
  %i.dw = fptosi float %i.dv to i32               ; 2 uses
end_hunk_0
begin_hunk_1_@_Z30minCellSizeForAtomDisplacementRK10gmx_mtop_tRK10t_inputrecN3gmx8ArrayRefIKNS5_17RangePartitioningEEEf12ChanceTarget:bb.a
  %i.r = fmul float %4, %i.q
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.53, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ30minCellSizeForAtomDisplacementRK10gmx_mtop_tRK10t_inputrecN3gmx8ArrayRefIKNS5_17RangePartitioningEEEf12ChanceTargetENK3$_0clEv", ptr noundef nonnull @.str.10, i32 noundef 1814) #25
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.055 = phi float [ %i.r, %bb.e ], [ %4, %bb.d ] ; 3 uses
  %i.s = tail call noundef float @_Z23maxReferenceTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %1)
  %i.t = load i32, ptr %i.a, align 4, !tbaa !129
  %i.u = icmp eq i32 %i.t, 3
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.w = load float, ptr %i.v, align 8, !tbaa !130
  %i.x = fcmp ogt float %i.w, 0.000000e+00
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = phi i1 [ false, %bb.g ], [ %i.x, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 420
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !131
  %i.ab = icmp ne i32 %i.aa, 0
  call fastcc void @_ZL24getVerletBufferAtomtypesRK10gmx_mtop_tbb(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(768) %0, i1 noundef zeroext %i.y, i1 noundef zeroext %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !345 ; 3 uses
  %i.ae = sitofp i32 %i.ad to double
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ag = load double, ptr %i.af, align 8, !tbaa !195
  %i.ah = fmul double %i.ag, %i.ae
  %i.ai = fptrunc double %i.ah to float           ; 3 uses
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !129
  %i.ak = icmp eq i32 %i.aj, 3
  %i.al = fpext float %i.s to double              ; 2 uses
  br i1 %i.ak, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.am = fmul double %i.al, f0x3F91072C483AF26D
  %i.an = fpext float %i.ai to double
  %i.ao = fmul double %i.am, %i.an
  %i.ap = fptrunc double %i.ao to float           ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !130 ; 2 uses
  %i.as = fcmp ogt float %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = fdiv float %i.ap, %i.ar
  br label %_ZL20displacementVarianceRK10t_inputrecff.exit

bb.l:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !196 ; 10 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !28 ; 3 uses
  %i.ay = load i32, ptr %i.au, align 8, !tbaa !197 ; 3 uses
  %i.az = icmp sgt i32 %i.ay, 1
  br i1 %i.az, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.l
  %wide.trip.count.i = zext nneg i32 %i.ay to i64
  %i.ba = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter = and i64 %i.ba, 7                    ; 3 uses
  %i.bb = add nsw i32 %i.ay, -2
  %i.bc = icmp ult i32 %i.bb, 7
  br i1 %i.bc, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.ba, -8
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.7, %._crit_edge.i.loopexit.unr-lcssa ]
  %.01819.i.epil.init = phi float [ %i.ax, %.lr.ph.preheader.i ], [ %.sroa.speculated.i.7, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod332 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod332)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.01819.i.epil = phi float [ %.01819.i.epil.init, %.lr.ph.i.epil.preheader ], [ %.sroa.speculated.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.epil
  %i.be = load float, ptr %i.bd, align 4, !tbaa !28 ; 2 uses
  %i.bf = fcmp olt float %.01819.i.epil, %i.be
  %.sroa.speculated.i.epil = select i1 %i.bf, float %i.be, float %.01819.i.epil ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !333

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.l
  %.018.lcssa.i = phi float [ %i.ax, %bb.l ], [ %.sroa.speculated.i.7, %._crit_edge.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.epil, %.lr.ph.i.epil ]
  %i.bg = fmul float %.018.lcssa.i, %i.ap
  br label %_ZL20displacementVarianceRK10t_inputrecff.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.7, %.lr.ph.i ] ; 9 uses
  %.01819.i = phi float [ %i.ax, %.lr.ph.preheader.i.new ], [ %.sroa.speculated.i.7, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !28 ; 2 uses
  %i.bj = fcmp olt float %.01819.i, %i.bi
  %.sroa.speculated.i = select i1 %i.bj, float %i.bi, float %.01819.i ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !28 ; 2 uses
  %i.bn = fcmp olt float %.sroa.speculated.i, %i.bm
  %.sroa.speculated.i.1 = select i1 %i.bn, float %i.bm, float %.sroa.speculated.i ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !28 ; 2 uses
  %i.br = fcmp olt float %.sroa.speculated.i.1, %i.bq
  %.sroa.speculated.i.2 = select i1 %i.br, float %i.bq, float %.sroa.speculated.i.1 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !28 ; 2 uses
  %i.bv = fcmp olt float %.sroa.speculated.i.2, %i.bu
  %.sroa.speculated.i.3 = select i1 %i.bv, float %i.bu, float %.sroa.speculated.i.2 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load float, ptr %i.bx, align 4, !tbaa !28 ; 2 uses
  %i.bz = fcmp olt float %.sroa.speculated.i.3, %i.by
  %.sroa.speculated.i.4 = select i1 %i.bz, float %i.by, float %.sroa.speculated.i.3 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !28 ; 2 uses
  %i.cd = fcmp olt float %.sroa.speculated.i.4, %i.cc
  %.sroa.speculated.i.5 = select i1 %i.cd, float %i.cc, float %.sroa.speculated.i.4 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !28 ; 2 uses
  %i.ch = fcmp olt float %.sroa.speculated.i.5, %i.cg
  %.sroa.speculated.i.6 = select i1 %i.ch, float %i.cg, float %.sroa.speculated.i.5 ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 28
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !28 ; 2 uses
  %i.cl = fcmp olt float %.sroa.speculated.i.6, %i.ck
  %.sroa.speculated.i.7 = select i1 %i.cl, float %i.ck, float %.sroa.speculated.i.6 ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

bb.m:                                             ; preds = %bb.i
  %i.cm = fmul double %i.al, f0x3F81072C483AF26D
  %i.cn = fmul float %i.ai, %i.ai
  %i.co = fpext float %i.cn to double
  %i.cp = fmul double %i.cm, %i.co
  %i.cq = fptrunc double %i.cp to float
  br label %_ZL20displacementVarianceRK10t_inputrecff.exit

_ZL20displacementVarianceRK10t_inputrecff.exit:   ; preds = %bb.m, %._crit_edge.i, %bb.k
  %.015.i = phi float [ %i.at, %bb.k ], [ %i.bg, %._crit_edge.i ], [ %i.cq, %bb.m ] ; 5 uses
  %i.cr = load ptr, ptr %7, align 8, !tbaa !137   ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !136 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !23
  %i.cw = load i16, ptr %i.cr, align 4, !tbaa !25
  %i.cx = sitofp i16 %i.cw to float
  %i.cy = fmul float %i.cv, %i.cx                 ; 2 uses
  %.not10.i = icmp eq ptr %i.cr, %i.ct            ; 2 uses
  br i1 %.not10.i, label %.loopexit96, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %_ZL20displacementVarianceRK10t_inputrecff.exit, %.lr.ph.i60
  %.012.i = phi float [ %.sroa.speculated.i61, %.lr.ph.i60 ], [ %i.cy, %_ZL20displacementVarianceRK10t_inputrecff.exit ] ; 2 uses
  %.sroa.0.011.i = phi ptr [ %i.df, %.lr.ph.i60 ], [ %i.cr, %_ZL20displacementVarianceRK10t_inputrecff.exit ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 16
  %i.da = load float, ptr %i.cz, align 4, !tbaa !23
  %i.db = load i16, ptr %.sroa.0.011.i, align 4, !tbaa !25
  %i.dc = sitofp i16 %i.db to float
  %i.dd = fmul float %i.da, %i.dc                 ; 2 uses
  %i.de = fcmp olt float %.012.i, %i.dd
  %.sroa.speculated.i61 = select i1 %i.de, float %i.dd, float %.012.i ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.df, %i.ct
  br i1 %.not.i, label %.loopexit96, label %.lr.ph.i60

.loopexit96:                                      ; preds = %.lr.ph.i60, %_ZL20displacementVarianceRK10t_inputrecff.exit
  %.0.lcssa.i = phi float [ %i.cy, %_ZL20displacementVarianceRK10t_inputrecff.exit ], [ %.sroa.speculated.i61, %.lr.ph.i60 ]
  %i.dg = fmul float %.015.i, %.0.lcssa.i
  %i.dh = tail call noundef float @sqrtf(float noundef %i.dg) #26
  %i.di = fmul float %i.dh, 2.000000e+00
  %i.dj = fmul float %i.di, 1.000000e+01
  %i.dk = fdiv float %i.dj, 1.000000e-03
  %i.dl = fptosi float %i.dk to i32               ; 3 uses
  %i.dm = add nsw i32 %i.dl, 1                    ; 4 uses
  %i.dn = icmp sgt i32 %i.dl, 0
  br i1 %i.dn, label %.lr.ph, label %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit

.lr.ph:                                           ; preds = %.loopexit96
  %i.do = icmp eq ptr %2, %3
  %i.dp = ptrtoint ptr %3 to i64
  %i.dq = ptrtoint ptr %2 to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = sdiv exact i64 %i.dr, 24
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 8
  br i1 %i.do, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not10.i, label %.lr.ph.split.us.split.us, label %.lr.ph.i63.preheader.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.ea = sitofp i32 %i.ad to float
  %i.eb = fmul float %.055, %i.ea
  %.fr134 = freeze float %i.eb
  %i.ec = fcmp olt float %.fr134, 0.000000e+00
  br i1 %i.ec, label %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us.us, label %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us

_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us.us: ; preds = %.lr.ph.split.us.split.us, %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us.us
  %.048130.us.us.us = phi i32 [ %i.ee, %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us.us ], [ 0, %.lr.ph.split.us.split.us ]
  %i.ed = add nsw i32 %i.dm, %.048130.us.us.us
  %i.ee = sdiv i32 %i.ed, 2                       ; 3 uses
  %i.ef = icmp slt i32 %i.ee, %i.dl
  br i1 %i.ef, label %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us.us, label %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit.loopexit, !llvm.loop !334

_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us: ; preds = %.lr.ph.split.us.split.us, %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us
  %.047131.us.us = phi i32 [ %i.eg, %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us ], [ %i.dm, %.lr.ph.split.us.split.us ] ; 2 uses
  %i.eg = sdiv i32 %.047131.us.us, 2              ; 2 uses
  %i.eh = icmp sgt i32 %.047131.us.us, 3
  br i1 %i.eh, label %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.us.us, label %_ZNSt6vectorI17VerletbufAtomtypeSaIS0_EED2Ev.exit.loopexit209, !llvm.loop !334

.lr.ph.i63.preheader.us:                          ; preds = %.lr.ph.split.us, %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.loopexit.us
  %.047131.us = phi i32 [ %.047..us, %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.loopexit.us ], [ %i.dm, %.lr.ph.split.us ] ; 2 uses
  %.048130.us = phi i32 [ %..048.us, %_ZL24chanceOfAtomCrossingCellN3gmx8ArrayRefIK17VerletbufAtomtypeEEff.exit.loopexit.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.ei = add nsw i32 %.047131.us, %.048130.us
  %i.ej = sdiv i32 %i.ei, 2                       ; 3 uses
  %i.ek = sitofp i32 %i.ej to float
  %i.el = fmul nnan float %i.ek, 1.000000e-03     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store float 0.000000e+00, ptr %6, align 4, !tbaa !258
  %i.em = fdiv float 1.000000e+00, %i.el          ; 2 uses
  store float %i.em, ptr %i.dy, align 4, !tbaa !201
  store <2 x float> zeroinitializer, ptr %i.dz, align 4, !tbaa !28
  %i.en = fmul nnan float %i.el, %i.el            ; 5 uses
  br label %.lr.ph.i63.us

.lr.ph.i63.us:                                    ; preds = %.lr.ph.i63.preheader.us, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit23.thread.i.us
  %.043.i.us = phi float [ %i.kr, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit23.thread.i.us ], [ 0.000000e+00, %.lr.ph.i63.preheader.us ]
  %.sroa.0.041.i.us = phi ptr [ %i.ks, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit23.thread.i.us ], [ %i.cr, %.lr.ph.i63.preheader.us ] ; 11 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i.us, i64 12 ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 4, !tbaa !27 ; 4 uses
  %i.eq = icmp sgt i16 %i.ep, 0
  %.pre.i.i.us = load i16, ptr %.sroa.0.041.i.us, align 4, !tbaa !25 ; 2 uses
  br i1 %i.eq, label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.i.us, label %_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit.i.us

_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit.i.us: ; preds = %.lr.ph.i63.us
  %.pre9.i.i.us = sitofp i16 %.pre.i.i.us to float
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i.us, i64 16
  %i.es = load float, ptr %i.er, align 4, !tbaa !23
  %i.et = fmul float %i.es, %.pre9.i.i.us
  br label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us

_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.i.us: ; preds = %.lr.ph.i63.us
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i.us, i64 10
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !24
  %i.ew = sitofp i16 %i.ev to float               ; 2 uses
  %i.ex = fmul nnan float %i.ew, 4.000000e-01
  %i.ey = sitofp i16 %.pre.i.i.us to float        ; 3 uses
  %i.ez = fcmp olt float %i.ex, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i.us, i64 16
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !23 ; 3 uses
  br i1 %i.ez, label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us, label %_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit.thread38.i.us

_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit.thread38.i.us: ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.i.us
  %i.fc = fmul float %i.fb, %i.ey
  br label %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us

_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us: ; preds = %_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit.thread38.i.us, %_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit.i.us
  %.pn.us = phi float [ %i.et, %_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit.i.us ], [ %i.fc, %_ZL15get_atom_sigma2fRK33AtomNonbondedAndKineticPropertiesPfS2_.exit.thread38.i.us ]
  %storemerge.i36.i.us = fmul float %.015.i, %.pn.us ; 3 uses
  %i.fd = fadd float %storemerge.i36.i.us, 0.000000e+00 ; 3 uses
  %i.fe = fmul float %i.fd, 2.000000e+00          ; 2 uses
  %i.ff = fmul float %i.fe, 8.000000e+00
  %i.fg = fmul float %i.ff, 8.000000e+00
  %i.fh = fcmp ogt float %i.en, %i.fg
  br i1 %i.fh, label %_ZL19energyDriftAtomPairbbffffPK17pot_derivatives_t.exit.us, label %bb.o

_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us: ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.i.us
  %i.fi = fmul float %i.fb, %i.ew                 ; 2 uses
  %i.fj = fmul float %i.fb, %i.ey                 ; 2 uses
  %i.fk = fdiv float 1.000000e+00, %i.fj
  %i.fl = fdiv float 1.000000e+00, %i.fi
  %i.fm = fadd float %i.fl, %i.fk                 ; 2 uses
  %i.fn = fmul float %i.fi, %i.fm
  %i.fo = fdiv float 1.000000e+00, %i.fn          ; 2 uses
  %i.fp = fmul float %.015.i, %i.fo
  %i.fq = fmul float %i.fj, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.041.i.us, i64 24
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !26
  %i.ft = uitofp nneg i16 %i.ep to float
  %i.fu = fmul float %i.fs, %i.ft
  %i.fv = fmul float %i.fo, %i.fu                 ; 2 uses
  %i.fw = fmul float %i.fv, %i.fv                 ; 2 uses
  %i.fx = fdiv float %i.fq, %i.fw                 ; 2 uses
  %i.fy = fcmp ogt float %i.fx, f0x4097CA11
  %.sroa.speculated.i.i.i.us = select i1 %i.fy, float f0x4097CA11, float %i.fx ; 4 uses
  %i.fz = fmul float %i.fw, %.sroa.speculated.i.i.i.us
  %i.ga = tail call float @llvm.fmuladd.f32(float %.sroa.speculated.i.i.i.us, float f0x3EAAAAAB, float 1.000000e+00)
  %i.gb = fmul float %.sroa.speculated.i.i.i.us, %.sroa.speculated.i.i.i.us
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.gb, float f0x3D360B61, float %i.ga)
  %i.gd = fdiv float %i.fz, %i.gc                 ; 3 uses
  %i.ge = fdiv float %.015.i, %i.fm               ; 3 uses
  %i.gf = fadd float %i.ge, %i.gd                 ; 4 uses
  %i.gg = fmul float %i.gf, 2.000000e+00          ; 2 uses
  %i.gh = fmul float %i.gg, 8.000000e+00
  %i.gi = fmul float %i.gh, 8.000000e+00
  %i.gj = fcmp ogt float %i.en, %i.gi
  br i1 %i.gj, label %_ZL19energyDriftAtomPairbbffffPK17pot_derivatives_t.exit.us, label %bb.n

bb.n:                                             ; preds = %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us
  %i.gk = fmul float %i.el, %i.gd
  %i.gl = fdiv float %i.gk, %i.gf                 ; 3 uses
  %i.gm = fneg float %i.gl                        ; 2 uses
  %i.gn = fmul float %i.gl, %i.gm
  %i.go = fmul float %i.gd, 2.000000e+00          ; 3 uses
  %i.gp = fdiv float %i.gn, %i.go
  %i.gq = tail call noundef float @expf(float noundef %i.gp) #26 ; 3 uses
  %i.gr = tail call noundef float @sqrtf(float noundef %i.go) #26
  %i.gs = fdiv float %i.gl, %i.gr
  %i.gt = tail call noundef float @erfcf(float noundef %i.gs) #26
  %i.gu = fpext float %i.gm to double
  %i.gv = fpext float %i.go to double
  %i.gw = fdiv double %i.gv, f0x400921FB54442D18
  %i.gx = tail call double @sqrt(double noundef %i.gw) #26
  %i.gy = fpext float %i.gq to double
  %i.gz = fmul double %i.gx, %i.gy
  %i.ha = fpext float %i.gt to double             ; 4 uses
  %i.hb = fdiv double %i.gz, %i.ha
  %i.hc = fadd double %i.hb, %i.gu
  %i.hd = fptrunc double %i.hc to float
  %i.he = fmul float %i.gq, %i.gq
  %i.hf = fpext float %i.he to double
  %i.hg = fmul double %i.ha, f0x400921FB54442D18
  %i.hh = fmul double %i.hg, %i.ha
  %i.hi = fdiv double %i.hf, %i.hh
  %i.hj = tail call double @exp(double noundef %i.hi) #26
  %i.hk = fmul double %i.hj, f0x3FF921FB54442D18
  %i.hl = fmul double %i.hk, %i.ha
  %i.hm = fptrunc double %i.hl to float
  %i.hn = fadd float %i.el, %i.hd                 ; 3 uses
  %.pre176 = fmul float %i.hn, %i.hn
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us
  %.pre.i77.us.pre-phi = phi float [ %.pre176, %bb.n ], [ %i.en, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ]
  %storemerge.i36.i8692.us = phi float [ %i.ge, %bb.n ], [ %storemerge.i36.i.us, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ]
  %i.ho = phi float [ %i.gf, %bb.n ], [ %i.fd, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ]
  %i.hp = phi float [ %i.gg, %bb.n ], [ %i.fe, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ] ; 2 uses
  %.067.i.us = phi float [ %i.hm, %bb.n ], [ 1.000000e+00, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ]
  %.0.i.us = phi float [ %i.hn, %bb.n ], [ %i.el, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ] ; 4 uses
  %i.hq = fneg float %.0.i.us
  %i.hr = fmul float %.0.i.us, %i.hq
  %i.hs = fdiv float %i.hr, %i.hp
  %i.ht = tail call noundef float @expf(float noundef %i.hs) #26
  %i.hu = fpext float %i.ht to double
  %i.hv = fdiv double %i.hu, f0x40040D931FF62705
  %i.hw = fptrunc double %i.hv to float
  %i.hx = tail call noundef float @sqrtf(float noundef %i.hp) #26
  %i.hy = fdiv float %.0.i.us, %i.hx
  %i.hz = tail call noundef float @erfcf(float noundef %i.hy) #26
  %i.ia = fmul float %i.hz, 5.000000e-01
  %.pre174 = load i16, ptr %i.eo, align 4, !tbaa !27
  br label %_ZL19energyDriftAtomPairbbffffPK17pot_derivatives_t.exit.us

_ZL19energyDriftAtomPairbbffffPK17pot_derivatives_t.exit.us: ; preds = %bb.o, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us
  %i.ib = phi i16 [ %i.ep, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ], [ %.pre174, %bb.o ], [ %i.ep, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us ] ; 2 uses
  %i.ic = phi float [ %i.fd, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ], [ %i.ho, %bb.o ], [ %i.gf, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us ] ; 8 uses
  %storemerge.i36.i87.us = phi float [ %storemerge.i36.i.us, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ], [ %storemerge.i36.i8692.us, %bb.o ], [ %i.ge, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us ]
  %.pre-phi.i.us = phi float [ %i.en, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ], [ %.pre.i77.us.pre-phi, %bb.o ], [ %i.en, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us ] ; 7 uses
  %.071.i.us = phi float [ 0.000000e+00, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ], [ %i.ia, %bb.o ], [ 0.000000e+00, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us ] ; 3 uses
  %.070.i.us = phi float [ 0.000000e+00, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ], [ %i.hw, %bb.o ], [ 0.000000e+00, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us ] ; 3 uses
  %.269.i.us = phi float [ 1.000000e+00, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ], [ %.067.i.us, %bb.o ], [ 1.000000e+00, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us ] ; 2 uses
  %.2.i.us = phi float [ %i.el, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.us ], [ %.0.i.us, %bb.o ], [ %i.el, %_ZNK33AtomNonbondedAndKineticProperties13hasConstraintEv.exit.i.thread.us ] ; 3 uses
  %i.id = tail call noundef float @sqrtf(float noundef %i.ic) #26 ; 3 uses
  %i.ie = fmul float %.269.i.us, 0.000000e+00     ; 3 uses
  %i.if = fneg float %.071.i.us                   ; 2 uses
  %i.ig = fmul float %.2.i.us, %i.if
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.id, float %.070.i.us, float %i.ig)
  %i.ii = fmul float %i.ie, %i.ih
  %i.ij = fmul float %i.em, %.269.i.us
  %i.ik = fmul float %i.ij, 5.000000e-01
  %i.il = fadd float %i.ic, %.pre-phi.i.us
  %i.im = fmul float %.2.i.us, %i.id              ; 2 uses
  %i.in = fneg float %.070.i.us                   ; 2 uses
  %i.io = fmul float %i.im, %i.in
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.il, float %.071.i.us, float %i.io)
  %i.iq = fmul float %i.ik, %i.ip
  %i.ir = fdiv float %i.ie, 6.000000e+00
end_hunk_1
