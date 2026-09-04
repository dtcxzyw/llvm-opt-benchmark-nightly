Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/calc_verletbuf?download=true
inline.NumInlined: 1121
inline.NumDeleted: 571
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !13
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.d, ptr %i.a, align 8, !tbaa !15
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !17
  %i.g = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.g, ptr %i.b, align 8, !tbaa !18
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !18
  store i8 %i.i, ptr %i.h, align 1, !tbaa !18
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !19
  %i.l = load ptr, ptr %0, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx16EnumerationArrayINS_14MtsForceGroupsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_7EED2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !18
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !18
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.q = load i64, ptr %i.o, align 8, !tbaa !18
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  %i.w = load i64, ptr %i.u, align 8, !tbaa !18
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !18
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
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq ptr %0, %1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL27computeEffectiveAtomDensityN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEPA3_KffENK3$_0clEv", ptr noundef nonnull @.str.10, i32 noundef 1142) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = fcmp ogt float %3, 0.000000e+00
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL27computeEffectiveAtomDensityN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEPA3_KffENK3$_0clEv", ptr noundef nonnull @.str.10, i32 noundef 1144) #25
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = load float, ptr %2, align 4, !tbaa !28   ; 2 uses
  %i.k = fcmp olt float %3, %i.j
  br i1 %i.k, label %bb.i, label %bb.h

.noexc.i:                                         ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #25
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.k
  %.not.i.i.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i, label %.noexc45.i

.noexc45.i:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.l = shl nuw nsw i64 %i.aq, 2                 ; 3 uses
  %i.m = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #29 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.m, i8 0, i64 %i.l, i1 false), !tbaa !29
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.aq
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  %i.p = ptrtoint ptr %i.n to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i

bb.h:                                             ; preds = %bb.j, %bb.i, %bb.g
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL27computeEffectiveAtomDensityN3gmx8ArrayRefIKNS_11BasicVectorIfEEEEPA3_KffENK3$_0clEv", ptr noundef nonnull @.str.10, i32 noundef 1151) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.q = fdiv float %i.j, %3
  %i.r = call noundef i64 @lroundf(float noundef %i.q) #26
  %i.s = trunc i64 %i.r to i32                    ; 6 uses
  %i.t = sitofp i32 %i.s to float
  %i.u = load float, ptr %2, align 4, !tbaa !28
  %i.v = fdiv float %i.t, %i.u                    ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !28 ; 2 uses
  %i.y = fcmp olt float %3, %i.x
  br i1 %i.y, label %bb.j, label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.z = fdiv float %i.x, %3
  %i.aa = call noundef i64 @lroundf(float noundef %i.z) #26
  %i.ab = trunc i64 %i.aa to i32                  ; 9 uses
  %i.ac = sitofp i32 %i.ab to float
  %i.ad = load float, ptr %i.w, align 4, !tbaa !28
  %i.ae = fdiv float %i.ac, %i.ad                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !28 ; 2 uses
  %i.ah = fcmp olt float %3, %i.ag
  br i1 %i.ah, label %bb.k, label %bb.h

bb.k:                                             ; preds = %bb.j
  %i.ai = fdiv float %i.ag, %3
  %i.aj = call noundef i64 @lroundf(float noundef %i.ai) #26
  %i.ak = trunc i64 %i.aj to i32                  ; 9 uses
  %i.al = sitofp i32 %i.ak to float
  %i.am = load float, ptr %i.af, align 4, !tbaa !28
  %i.an = fdiv float %i.al, %i.am                 ; 2 uses
  %i.ao = mul nsw i32 %i.ab, %i.s
  %i.ap = mul nsw i32 %i.ao, %i.ak                ; 3 uses
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = icmp slt i32 %i.ap, 0
  br i1 %i.ar, label %.noexc.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i:          ; preds = %.noexc45.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.12.0.i = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.p, %.noexc45.i ] ; 2 uses
  %.sroa.075.0.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.m, %.noexc45.i ] ; 16 uses
  %.0.i.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.o, %.noexc45.i ] ; 3 uses
  %.0.i.i.i.i.i.i.i.i16 = ptrtoaddr ptr %.0.i.i.i.i.i.i.i.i to i64
  %.sroa.075.0.i17 = ptrtoaddr ptr %.sroa.075.0.i to i64
  %reass.sub.fr.i.i = freeze i64 %i.g             ; 5 uses
  %i.as = sdiv exact i64 %reass.sub.fr.i.i, 12    ; 2 uses
  %i.at = icmp ugt i64 %i.as, 768614336404564650
  br i1 %i.at, label %bb.l, label %.lr.ph.i.i.i.i.preheader.i.i.i

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #25
          to label %.noexc.i.i unwind label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i

.noexc.i.i:                                       ; preds = %bb.l
  unreachable

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %reass.sub.fr.i.i) #29
          to label %.noexc5.i.i unwind label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit.i.i ; 9 uses

.noexc5.i.i:                                      ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i
  %i.av = add i64 %reass.sub.fr.i.i, -12          ; 4 uses
  %i.aw = urem i64 %i.av, 12
  %i.ax = udiv i64 %i.av, 12
  %i.ay = sub nuw i64 %i.av, %i.aw
end_hunk_0
