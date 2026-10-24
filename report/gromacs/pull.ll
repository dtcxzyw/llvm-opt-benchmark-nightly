Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pull?download=true
inline.NumInlined: 1836
inline.NumDeleted: 944
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 49
begin_hunk_0_@llvm.memcpy.p0.p0.i64
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN17pull_group_work_tC2ERK12t_pull_groupN3gmx12LocalAtomSetEbi(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr %2, i1 noundef zeroext %3, i32 noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN12t_pull_groupC2ERKS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = load ptr, ptr %1, align 8, !tbaa !26
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, 5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.j, -1
  %..i = select i1 %3, i32 3, i32 1
  %spec.select.i = select i1 %i.k, i32 %..i, i32 2
  %.0.i = select i1 %i.h, i32 0, i32 %spec.select.i
  store i32 %.0.i, ptr %i.a, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %4, ptr %i.l, align 4, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.m, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %2, ptr %i.o, align 8, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.p, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.q, i8 0, i64 120, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN12t_pull_groupC2ERKS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !63

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !64
  %i.m = load ptr, ptr %1, align 8, !tbaa !65     ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 4
  br i1 %i.r, label %bb.d, label %bb.e, !prof !66

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 4
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.m, align 4, !tbaa !67
  store i32 %i.t, ptr %i.i, align 4, !tbaa !67
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !68   ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !69   ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i5 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i5, label %.noexc7, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %.noexc.i.i6, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, !prof !63

.noexc.i.i6:                                      ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i6
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #30
          to label %.noexc7 unwind label %bb.l

.noexc7:                                          ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !69
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !70
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !71  ; 3 uses
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !71
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !66

bb.h:                                             ; preds = %.noexc7
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.af, ptr align 4 %i.aj, i64 %i.an, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %.noexc7
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = load float, ptr %i.aj, align 4, !tbaa !72
  store float %i.aq, ptr %i.af, align 4, !tbaa !72
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.af, i64 %i.an
  store ptr %i.ar, ptr %i.ag, align 8, !tbaa !68
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load i64, ptr %i.at, align 8
  store i64 %i.au, ptr %i.as, align 8
  ret void

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i6
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %0, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !64
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %i.av
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @_Z21pull_coordinate_unitsRK12t_pull_coord(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80
  %1 = sext i32 %i.b to i64
  %2 = add nsw i64 %1, -5
  %i.c = icmp ult i64 %2, 3
  %i.d = select i1 %i.c, ptr @.str.4, ptr @.str.5
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_Z41pull_conversion_factor_userinput2internalRK12t_pull_coord(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80
  %1 = sext i32 %i.b to i64
  %2 = add nsw i64 %1, -5
  %i.c = icmp ult i64 %2, 3
  %. = select i1 %i.c, double f0x3F91DF46A2529D39, double 1.000000e+00
  ret double %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_Z41pull_conversion_factor_internal2userinputRK12t_pull_coord(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80
  %1 = sext i32 %i.b to i64
  %2 = add nsw i64 %1, -5
  %i.c = icmp ult i64 %2, 3
  %. = select i1 %i.c, double f0x404CA5DC1A63C1F8, double 1.000000e+00
  ret double %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_Z18max_pull_distance2RK17pull_coord_work_tRK5t_pbc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(488) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(384) %1) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load i32, ptr %i.a, align 8, !tbaa !80
  %i.b = add i32 %.val, -1
  %switch.selectcmp.i = icmp ult i32 %i.b, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !309  ; 5 uses
  %i.e = icmp sgt i32 %i.d, 0                     ; 2 uses
  br i1 %switch.selectcmp.i, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  br i1 %i.e, label %bb.f, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.i = load double, ptr %i.h, align 8, !tbaa !82
  %i.j = fcmp une double %i.i, 0.000000e+00
  br i1 %i.j, label %._crit_edge59, label %bb.c

._crit_edge59:                                    ; preds = %bb.b
  %i.k = load float, ptr %i.g, align 4, !tbaa !72 ; 2 uses
  %i.l = fmul float %i.k, %i.k
  %gep = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.m = load float, ptr %gep, align 4, !tbaa !72 ; 2 uses
  %i.n = fmul float %i.m, %i.m
  %i.o = fsub float %i.l, %i.n
  %gep.175 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load float, ptr %gep.175, align 4, !tbaa !72 ; 2 uses
  %i.q = fmul float %i.p, %i.p
  %i.r = fsub float %i.o, %i.q                    ; 2 uses
  %i.s = fcmp olt float %i.r, f0x7F7FFFFF
  %.sroa.speculated40 = select i1 %i.s, float %i.r, float f0x7F7FFFFF
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge59
  %.147 = phi float [ %.sroa.speculated40, %._crit_edge59 ], [ f0x7F7FFFFF, %bb.b ] ; 4 uses
  %.not86 = icmp eq i32 %i.d, 1
  br i1 %.not86, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.u = load double, ptr %i.t, align 8, !tbaa !82
  %i.v = fcmp une double %i.u, 0.000000e+00
  br i1 %i.v, label %._crit_edge59.1, label %bb.e

._crit_edge59.1:                                  ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load float, ptr %i.w, align 4, !tbaa !72 ; 2 uses
  %i.y = fmul float %i.x, %i.x
  %gep.1 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.z = load float, ptr %gep.1, align 4, !tbaa !72 ; 2 uses
  %i.aa = fmul float %i.z, %i.z
  %i.ab = fsub float %i.y, %i.aa                  ; 2 uses
  %i.ac = fcmp olt float %i.ab, %.147
  %.sroa.speculated40.1 = select i1 %i.ac, float %i.ab, float %.147
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge59.1, %bb.d
  %.147.1 = phi float [ %.sroa.speculated40.1, %._crit_edge59.1 ], [ %.147, %bb.d ] ; 3 uses
  %i.ad = icmp samesign ugt i32 %i.d, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.af = load double, ptr %i.ae, align 8
  %i.ag = fcmp une double %i.af, 0.000000e+00
  %or.cond = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %or.cond, label %._crit_edge59.2, label %.loopexit

._crit_edge59.2:                                  ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !72 ; 2 uses
  %i.aj = fmul float %i.ai, %i.ai                 ; 2 uses
  %i.ak = fcmp olt float %i.aj, %.147.1
  %.sroa.speculated40.2 = select i1 %i.ak, float %i.aj, float %.147.1
  br label %.loopexit

bb.f:                                             ; preds = %.preheader48
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i32, ptr %i.f, align 4, !tbaa !67
  %.not = icmp eq i32 %i.am, 0
  %i.an = load float, ptr %i.al, align 4          ; 2 uses
  %i.ao = fmul float %i.an, %i.an                 ; 2 uses
  %i.ap = fcmp uge float %i.ao, f0x7F7FFFFF
  %i.aq = select i1 %.not, i1 true, i1 %i.ap
  %.3 = select i1 %i.aq, float f0x7F7FFFFF, float %i.ao ; 4 uses
  %.not85 = icmp eq i32 %i.d, 1
  br i1 %.not85, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !67
  %.not.1 = icmp eq i32 %i.as, 0
  br i1 %.not.1, label %bb.h, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.au = load i32, ptr %i.f, align 4, !tbaa !67
  %.not35.1 = icmp eq i32 %i.au, 0
  %i.av = load <2 x float>, ptr %i.at, align 4    ; 2 uses
  %i.aw = fmul <2 x float> %i.av, %i.av           ; 2 uses
  %i.ax = extractelement <2 x float> %i.aw, i64 0
  %i.ay = extractelement <2 x float> %i.aw, i64 1 ; 2 uses
  %i.az = fadd float %i.ay, %i.ax
  %.1.1 = select i1 %.not35.1, float %i.ay, float %i.az ; 2 uses
  %i.ba = fcmp olt float %.1.1, %.3
  %.sroa.speculated.1 = select i1 %i.ba, float %.1.1, float %.3
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.preheader.1, %bb.g
  %.3.1 = phi float [ %.3, %bb.g ], [ %.sroa.speculated.1, %.lr.ph.preheader.1 ] ; 3 uses
  %i.bb = icmp samesign ult i32 %i.d, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bd = load i32, ptr %i.bc, align 4
  %.not.2 = icmp eq i32 %i.bd, 0
  %or.cond90 = select i1 %i.bb, i1 true, i1 %.not.2
  br i1 %or.cond90, label %.loopexit, label %.lr.ph.preheader.2

.lr.ph.preheader.2:                               ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bf = load float, ptr %i.be, align 4, !tbaa !72 ; 2 uses
  %i.bg = fmul float %i.bf, %i.bf                 ; 2 uses
  %i.bh = load i32, ptr %i.f, align 4, !tbaa !67
  %.not35.2 = icmp eq i32 %i.bh, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !67
  %.not35.2.1 = icmp eq i32 %i.bk, 0
  %i.bl = load <2 x float>, ptr %i.bi, align 4    ; 2 uses
  %i.bm = fmul <2 x float> %i.bl, %i.bl           ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  %i.bo = fadd float %i.bg, %i.bn
  %.1.2 = select i1 %.not35.2, float %i.bg, float %i.bo ; 2 uses
  %i.bp = extractelement <2 x float> %i.bm, i64 1
  %i.bq = fadd float %.1.2, %i.bp
  %.1.2.1 = select i1 %.not35.2.1, float %.1.2, float %i.bq ; 2 uses
  %i.br = fcmp olt float %.1.2.1, %.3.1
  %.sroa.speculated.2 = select i1 %i.br, float %.1.2.1, float %.3.1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader48, %bb.f, %.preheader, %bb.c, %bb.h, %.lr.ph.preheader.2, %bb.e, %._crit_edge59.2
  %.4 = phi float [ f0x7F7FFFFF, %.preheader ], [ %.sroa.speculated40.2, %._crit_edge59.2 ], [ f0x7F7FFFFF, %.preheader48 ], [ %.147.1, %bb.e ], [ %.3, %bb.f ], [ %.sroa.speculated.2, %.lr.ph.preheader.2 ], [ %.3.1, %bb.h ], [ %.147, %bb.c ]
  %i.bs = fmul float %.4, 2.500000e-01
  ret float %i.bs
}

; Function Attrs: mustprogress uwtable
define noundef double @_Z20get_pull_coord_valueP6pull_tiRK5t_pbcd(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(384) %2, double noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw [488 x i8], ptr %i.c, i64 %i.b
  tail call fastcc void @_ZL23get_pull_coord_distanceRK6pull_tP17pull_coord_work_tRK5t_pbcd(ptr noundef nonnull align 8 dereferenceable(348) %0, ptr noundef %i.d, ptr noundef nonnull align 4 dereferenceable(384) %2, double noundef %3)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw [488 x i8], ptr %i.e, i64 %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  %i.h = load double, ptr %i.g, align 8, !tbaa !103
  ret double %i.h
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL23get_pull_coord_distanceRK6pull_tP17pull_coord_work_tRK5t_pbcd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(348) %0, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(384) %2, double noundef %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !104  ; 4 uses
  %.not = icmp eq i32 %i.c, 8
  br i1 %.not, label %_ZL17get_pull_coord_drRK6pull_tP17pull_coord_work_tRK5t_pbc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.e = load i32, ptr %i.d, align 4, !tbaa !105
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 6 uses
  switch i32 %i.c, label %bb.d [
    i32 3, label %.thread.thread.i
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %1, align 8, !tbaa !106
  %i.h = icmp eq i32 %i.g, 5
  br i1 %i.h, label %.thread.thread.i, label %.thread74.i

.thread74.i:                                      ; preds = %bb.c
  %i.i = tail call noundef float @_Z18max_pull_distance2RK17pull_coord_work_tRK5t_pbc(ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull align 4 dereferenceable(384) %2)
  %i.j = fpext float %i.i to double
  br label %.thread.thread.i

end_hunk_0
begin_hunk_1_@_Z32register_external_pull_potentialP6pull_tiPKc:bb.a
  ret void

bb.ag:                                            ; preds = %bb.ae
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ac ], [ %i.aw, %bb.ag ]
  %i.ax = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17registrationMutex) #20 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.o, %bb.u, %bb.ah, %bb.i
  %.pn41 = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.aa, %bb.o ], [ %i.aj, %bb.u ], [ %.pn.pn, %bb.ah ]
  resume { ptr, i32 } %.pn41
}

declare noundef ptr @_Z17enumValueToString16PullingAlgorithm(i32 noundef) local_unnamed_addr #6

declare noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define void @_Z31apply_external_pull_coord_forceP6pull_tid(ptr nofree noundef captures(none) %0, i32 noundef %1, double noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 193
  %i.b = load i8, ptr %i.a, align 1, !tbaa !159, !range !150, !noundef !151
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = sext i32 %1 to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.g = getelementptr inbounds nuw [488 x i8], ptr %i.f, i64 %i.e ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !106
  %i.i = icmp eq i32 %i.h, 5
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ31apply_external_pull_coord_forceP6pull_tidENK3$_0clEv", ptr noundef nonnull @.str.8, i32 noundef 1568) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 384 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !153
  %i.l = fadd double %2, %i.k
  store double %i.l, ptr %i.j, align 8, !tbaa !153
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !160
  %i.o = add nsw i32 %i.n, -1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !160
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef float @_Z14pull_potentialP6pull_tN3gmx8ArrayRefIKfEERK5t_pbcRKNS1_7MpiCommEdfNS2_IKNS1_11BasicVectorIfEEEEPf(ptr noundef %0, ptr %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(384) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef %5, float noundef %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.91") align 8 captures(none) %7, ptr nofree noundef captures(none) %8) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %15 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %16 = alloca %"class.gmx::ArrayRef.91", align 8 ; 3 uses
  %17 = alloca %"class.gmx::ArrayRef.94", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !158
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZL37check_external_potential_registrationPK6pull_t.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !152  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152  ; 2 uses
  %.not16.i = icmp eq ptr %i.e, %i.g
  br i1 %.not16.i, label %_ZL37check_external_potential_registrationPK6pull_t.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.f
  %.sroa.012.017.i = phi ptr [ %i.t, %bb.f ], [ %i.e, %bb.b ] ; 5 uses
  %i.h = load i32, ptr %.sroa.012.017.i, align 8, !tbaa !106
  %i.i = icmp ne i32 %i.h, 5
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i, i64 392
  %i.k = load i8, ptr %i.j, align 8, !range !150
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i = select i1 %i.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 1 dereferenceable(61) @.str.8, i8 noundef zeroext 2)
  %i.m = load i32, ptr %i.a, align 4, !tbaa !158
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i, i64 172
  %i.o = load i32, ptr %i.n, align 4, !tbaa !105
  %i.p = add nsw i32 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef 1538, ptr noundef nonnull @.str.30, i32 noundef %i.m, i32 noundef %i.p, ptr noundef %i.r) #28
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.e ], [ %.pn40.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.i ], [ %.pn.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %common.resume

bb.f:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i, i64 488 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.g
  br i1 %.not.i, label %_ZL37check_external_potential_registrationPK6pull_t.exit, label %.lr.ph.i

_ZL37check_external_potential_registrationPK6pull_t.exit: ; preds = %bb.f, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 193
  %i.v = load i8, ptr %i.u, align 1, !tbaa !159, !range !150, !noundef !151
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %_ZL37check_external_potential_registrationPK6pull_t.exit._crit_edge

bb.g:                                             ; preds = %_ZL37check_external_potential_registrationPK6pull_t.exit
  %i.x = ptrtoint ptr %2 to i64
  %i.y = ptrtoint ptr %1 to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ab = load ptr, ptr %7, align 8, !tbaa !162   ; 3 uses
  store ptr %i.ab, ptr %16, align 8, !tbaa !162
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !162
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ab to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  tail call void @_Z14pull_calc_comsRKN3gmx7MpiCommEP6pull_tNS_8ArrayRefIKfEERK5t_pbcdNS5_IKNS_11BasicVectorIfEEEENS5_ISC_EE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %0, ptr %1, ptr %i.aa, ptr noundef nonnull align 4 dereferenceable(384) %3, double noundef %5, ptr noundef nonnull byval(%"class.gmx::ArrayRef.91") align 8 %16, ptr noundef nonnull byval(%"class.gmx::ArrayRef.94") align 8 %17)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !152 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !152 ; 2 uses
  %.not40 = icmp eq ptr %i.ak, %i.am
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.an = fpext float %6 to double
  %i.ao = fsub double 1.000000e+00, %i.an
  br label %bb.h

._crit_edge:                                      ; preds = %bb.ai, %bb.g
  %i.ap = phi <2 x float> [ zeroinitializer, %bb.g ], [ %i.dz, %bb.ai ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !171
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.aj, label %_ZL37check_external_potential_registrationPK6pull_t.exit._crit_edge

bb.h:                                             ; preds = %.lr.ph, %bb.ai
  %.sroa.022.043 = phi ptr [ %i.ak, %.lr.ph ], [ %i.ea, %bb.ai ] ; 14 uses
  %i.at = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.dz, %bb.ai ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.022.043, i64 384 ; 5 uses
  store double 0.000000e+00, ptr %i.au, align 8, !tbaa !153
  %i.av = load i32, ptr %.sroa.022.043, align 8, !tbaa !106
  switch i32 %i.av, label %bb.i [
    i32 1, label %bb.ai
    i32 5, label %bb.ai
  ]

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.022.043, i64 184 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.022.043, i64 160
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !172 ; 2 uses
  %i.az = fcmp une float %i.ay, 0.000000e+00
  br i1 %i.az, label %bb.j, label %_ZL29updatePullCoordReferenceValuePdRK12t_pull_coordd.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.022.043, i64 156
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !173
  %i.bc = fpext float %i.bb to double
  %i.bd = fpext float %i.ay to double
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bd, double %5, double %i.bc)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.022.043, i64 40
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !80
  %18 = sext i32 %i.bg to i64
  %19 = add nsw i64 %18, -5
  %i.bh = icmp ult i64 %19, 3
  %..i.i.i.i = select i1 %i.bh, double f0x3F91DF46A2529D39, double 1.000000e+00
  %i.bi = fmul double %i.be, %..i.i.i.i
  %i.bj = tail call fastcc noundef double @_ZL31sanitizePullCoordReferenceValueRK12t_pull_coordd(ptr noundef nonnull readonly align 8 dereferenceable(176) %.sroa.022.043, double noundef %i.bi)
  store double %i.bj, ptr %i.aw, align 8, !tbaa !82
  br label %_ZL29updatePullCoordReferenceValuePdRK12t_pull_coordd.exit.i.i

_ZL29updatePullCoordReferenceValuePdRK12t_pull_coordd.exit.i.i: ; preds = %bb.j, %bb.i
  tail call fastcc void @_ZL23get_pull_coord_distanceRK6pull_tP17pull_coord_work_tRK5t_pbcd(ptr noundef nonnull readonly align 8 dereferenceable(348) %0, ptr noundef nonnull %.sroa.022.043, ptr noundef nonnull align 4 dereferenceable(384) %3, double noundef %5)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.022.043, i64 376
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !103 ; 3 uses
  %i.bm = load double, ptr %i.aw, align 8, !tbaa !117
  %i.bn = fsub double %i.bl, %i.bm                ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.022.043, i64 40
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !104
  switch i32 %i.bp, label %_ZL24get_pull_coord_deviationRK6pull_tP17pull_coord_work_tRK5t_pbcd.exit.i [
    i32 0, label %bb.k
    i32 6, label %bb.l
  ]

bb.k:                                             ; preds = %_ZL29updatePullCoordReferenceValuePdRK12t_pull_coordd.exit.i.i
  %i.bq = fcmp oeq double %i.bl, 0.000000e+00
  %spec.select.i.i = select i1 %i.bq, double 0.000000e+00, double %i.bn
  br label %_ZL24get_pull_coord_deviationRK6pull_tP17pull_coord_work_tRK5t_pbcd.exit.i

bb.l:                                             ; preds = %_ZL29updatePullCoordReferenceValuePdRK12t_pull_coordd.exit.i.i
  %i.br = fcmp ult double %i.bn, f0x400921FB54442D18
  br i1 %i.br, label %bb.m, label %.sink.split.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bs = fcmp olt double %i.bn, f0xC00921FB54442D18
  br i1 %i.bs, label %.sink.split.i.i.i, label %_ZL24get_pull_coord_deviationRK6pull_tP17pull_coord_work_tRK5t_pbcd.exit.i

.sink.split.i.i.i:                                ; preds = %bb.m, %bb.l
  %.sink4.i.i.i = phi double [ f0xC01921FB54442D18, %bb.l ], [ f0x401921FB54442D18, %bb.m ]
  %i.bt = fadd double %i.bn, %.sink4.i.i.i
  br label %_ZL24get_pull_coord_deviationRK6pull_tP17pull_coord_work_tRK5t_pbcd.exit.i

_ZL24get_pull_coord_deviationRK6pull_tP17pull_coord_work_tRK5t_pbcd.exit.i: ; preds = %.sink.split.i.i.i, %bb.m, %bb.k, %_ZL29updatePullCoordReferenceValuePdRK12t_pull_coordd.exit.i.i
  %.0.i.i = phi double [ %i.bn, %_ZL29updatePullCoordReferenceValuePdRK12t_pull_coordd.exit.i.i ], [ %i.bn, %bb.m ], [ %spec.select.i.i, %bb.k ], [ %i.bt, %.sink.split.i.i.i ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.022.043, i64 164
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !314 ; 2 uses
  %i.bw = fpext float %i.bv to double
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.022.043, i64 168
  %i.by = load float, ptr %i.bx, align 8, !tbaa !315 ; 2 uses
  %i.bz = fmul float %6, %i.by
  %i.ca = fpext float %i.bz to double
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.bw, double %i.ca)
  %i.cc = fptrunc double %i.cb to float           ; 4 uses
  %i.cd = fsub float %i.by, %i.bv                 ; 2 uses
  %i.ce = load i32, ptr %.sroa.022.043, align 8, !tbaa !106 ; 3 uses
  switch i32 %i.ce, label %bb.aa [
    i32 0, label %bb.n
    i32 3, label %bb.n
    i32 4, label %bb.n
    i32 2, label %bb.r
    i32 5, label %bb.s
  ]

bb.n:                                             ; preds = %_ZL24get_pull_coord_deviationRK6pull_tP17pull_coord_work_tRK5t_pbcd.exit.i, %_ZL24get_pull_coord_deviationRK6pull_tP17pull_coord_work_tRK5t_pbcd.exit.i, %_ZL24get_pull_coord_deviationRK6pull_tP17pull_coord_work_tRK5t_pbcd.exit.i
  %i.cf = icmp eq i32 %i.ce, 3
  %i.cg = fcmp olt double %.0.i.i, 0.000000e+00
  %or.cond.i.i = and i1 %i.cg, %i.cf
  br i1 %or.cond.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = icmp eq i32 %i.ce, 4
  %i.ci = fcmp ogt double %.0.i.i, 0.000000e+00
  %or.cond3.i.i = and i1 %i.ci, %i.ch
  br i1 %or.cond3.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.037.i.i = phi double [ 0.000000e+00, %bb.p ], [ %.0.i.i, %bb.o ] ; 3 uses
  %i.cj = fneg float %i.cc
  %i.ck = fpext float %i.cj to double
  %i.cl = load double, ptr %i.au, align 8, !tbaa !153
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.ck, double %.037.i.i, double %i.cl)
  store double %i.cm, ptr %i.au, align 8, !tbaa !153
  %i.cn = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.co = insertelement <2 x float> %i.cn, float %i.cc, i64 1
  %i.cp = fpext <2 x float> %i.co to <2 x double>
  %i.cq = fmul double %.037.i.i, %.037.i.i
  %i.cr = fpext <2 x float> %i.at to <2 x double>
  %i.cs = fmul <2 x double> %i.cp, splat (double 5.000000e-01)
  %i.ct = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.cu, <2 x double> %i.cr)
  br label %_ZL17do_pull_pot_coordRK6pull_tP17pull_coord_work_tRK5t_pbcdfPfS7_.exit

bb.r:                                             ; preds = %_ZL24get_pull_coord_deviationRK6pull_tP17pull_coord_work_tRK5t_pbcd.exit.i
  %i.cw = fneg float %i.cc
  %i.cx = fpext float %i.cw to double
  %i.cy = load double, ptr %i.au, align 8, !tbaa !153
  %i.cz = fadd double %i.cy, %i.cx
  store double %i.cz, ptr %i.au, align 8, !tbaa !153
  %i.da = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.db = insertelement <2 x float> %i.da, float %i.cc, i64 1
  %i.dc = fpext <2 x float> %i.db to <2 x double>
  %i.dd = fpext <2 x float> %i.at to <2 x double>
  %i.de = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.df, <2 x double> %i.dd)
  br label %_ZL17do_pull_pot_coordRK6pull_tP17pull_coord_work_tRK5t_pbcdfPfS7_.exit

bb.s:                                             ; preds = %_ZL24get_pull_coord_deviationRK6pull_tP17pull_coord_work_tRK5t_pbcd.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 1 dereferenceable(61) @.str.8, i8 noundef zeroext 2)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 1296) #28
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.s
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

bb.x:                                             ; preds = %bb.t
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn.i.i = phi { ptr, i32 } [ %i.dj, %bb.y ], [ %i.di, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.dk = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.z
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !21
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.w
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %.pn.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn.i.i, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %common.resume

bb.aa:                                            ; preds = %_ZL24get_pull_coord_deviationRK6pull_tP17pull_coord_work_tRK5t_pbcd.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 1 dereferenceable(61) @.str.8, i8 noundef zeroext 2)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 1297) #28
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.aa
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.i

bb.af:                                            ; preds = %bb.ab
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn40.i.i = phi { ptr, i32 } [ %i.dr, %bb.ag ], [ %i.dq, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.ds = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i: ; preds = %bb.ah
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !21
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i, %bb.ae
  %.pn40.pn.i.i = phi { ptr, i32 } [ %i.dp, %bb.ae ], [ %.pn40.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i ], [ %.pn40.i.i, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %common.resume

_ZL17do_pull_pot_coordRK6pull_tP17pull_coord_work_tRK5t_pbcdfPfS7_.exit: ; preds = %bb.q, %bb.r
  %i.dx = phi <2 x double> [ %i.cv, %bb.q ], [ %i.dg, %bb.r ]
  %i.dy = fptrunc <2 x double> %i.dx to <2 x float>
  br label %bb.ai

bb.ai:                                            ; preds = %bb.h, %bb.h, %_ZL17do_pull_pot_coordRK6pull_tP17pull_coord_work_tRK5t_pbcdfPfS7_.exit
  %i.dz = phi <2 x float> [ %i.dy, %_ZL17do_pull_pot_coordRK6pull_tP17pull_coord_work_tRK5t_pbcdfPfS7_.exit ], [ %i.at, %bb.h ], [ %i.at, %bb.h ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.022.043, i64 488 ; 2 uses
  %.not = icmp eq ptr %i.ea, %i.am
  br i1 %.not, label %._crit_edge, label %bb.h

bb.aj:                                            ; preds = %._crit_edge
  %i.eb = load float, ptr %8, align 4, !tbaa !72
  %i.ec = extractelement <2 x float> %i.ap, i64 0
  %i.ed = fadd float %i.ec, %i.eb
  store float %i.ed, ptr %8, align 4, !tbaa !72
  %i.ee = extractelement <2 x float> %i.ap, i64 1
  br label %_ZL37check_external_potential_registrationPK6pull_t.exit._crit_edge

_ZL37check_external_potential_registrationPK6pull_t.exit._crit_edge: ; preds = %_ZL37check_external_potential_registrationPK6pull_t.exit, %._crit_edge, %bb.aj
  %i.ef = phi float [ 0.000000e+00, %._crit_edge ], [ %i.ee, %bb.aj ], [ 0.000000e+00, %_ZL37check_external_potential_registrationPK6pull_t.exit ]
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !174
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 %i.eh, ptr %i.ei, align 8, !tbaa !160
  ret float %i.ef
}

declare void @_Z14pull_calc_comsRKN3gmx7MpiCommEP6pull_tNS_8ArrayRefIKfEERK5t_pbcdNS5_IKNS_11BasicVectorIfEEEENS5_ISC_EE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr, ptr, ptr noundef nonnull align 4 dereferenceable(384), double noundef, ptr noundef byval(%"class.gmx::ArrayRef.91") align 8, ptr noundef byval(%"class.gmx::ArrayRef.94") align 8) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc noundef double @_ZL31sanitizePullCoordReferenceValueRK12t_pull_coordd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, double noundef %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80
  switch i32 %i.b, label %_ZL17make_periodic_2piPd.exit [
    i32 0, label %bb.b
    i32 5, label %bb.f
    i32 7, label %bb.f
    i32 6, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp olt double %1, 0.000000e+00
  br i1 %i.c, label %bb.c, label %_ZL17make_periodic_2piPd.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 1 dereferenceable(61) @.str.8, i8 noundef zeroext 2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.e = load i32, ptr %i.d, align 4, !tbaa !175
  %i.f = add nsw i32 %i.e, 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 661, ptr noundef nonnull @.str.31, i32 noundef %i.f, double noundef %1) #28
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.l

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.h = fcmp olt double %1, 0.000000e+00
  %i.i = fcmp ogt double %1, f0x400921FB54442D18
  %or.cond = or i1 %i.h, %i.i
  br i1 %or.cond, label %bb.g, label %_ZL17make_periodic_2piPd.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(61) @.str.8, i8 noundef zeroext 2)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.k = load i32, ptr %i.j, align 4, !tbaa !175
  %i.l = add nsw i32 %i.k, 1
  %i.m = load i32, ptr %i.a, align 8, !tbaa !80
  %4 = sext i32 %i.m to i64
  %5 = add nsw i64 %4, -5
  %i.n = icmp ult i64 %5, 3
  %..i = select i1 %i.n, double f0x404CA5DC1A63C1F8, double 1.000000e+00
  %i.o = fmul double %1, %..i
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 671, ptr noundef nonnull @.str.32, i32 noundef %i.l, double noundef %i.o) #28
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.q = fcmp ult double %1, f0x400921FB54442D18
  br i1 %i.q, label %bb.k, label %.sink.split.i

bb.k:                                             ; preds = %bb.j
  %i.r = fcmp olt double %1, f0xC00921FB54442D18
  br i1 %i.r, label %.sink.split.i, label %_ZL17make_periodic_2piPd.exit

.sink.split.i:                                    ; preds = %bb.k, %bb.j
  %.sink4.i = phi double [ f0xC01921FB54442D18, %bb.j ], [ f0x401921FB54442D18, %bb.k ]
  %i.s = fadd double %1, %.sink4.i
  br label %_ZL17make_periodic_2piPd.exit

_ZL17make_periodic_2piPd.exit:                    ; preds = %.sink.split.i, %bb.k, %bb.a, %bb.f, %bb.b
  %.0 = phi double [ %1, %bb.a ], [ %1, %bb.b ], [ %1, %bb.f ], [ %i.s, %.sink.split.i ], [ %1, %bb.k ]
  ret double %.0

bb.l:                                             ; preds = %bb.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.p, %bb.i ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z17pull_apply_forcesP6pull_tN3gmx8ArrayRefIKfEERKNS1_7MpiCommEPNS1_15ForceWithVirialE(ptr nofree noundef readonly captures(none) %0, ptr %1, ptr %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 6 uses
  %5 = alloca %"class.gmx::ArrayRef.88", align 8  ; 5 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %6 = alloca %"class.gmx::ArrayRef.112", align 8 ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca [3 x double], align 16            ; 6 uses
  %7 = alloca %struct.PullCoordVectorForces, align 16 ; 22 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 193
  %i.k = load i8, ptr %i.j, align 1, !tbaa !159, !range !150, !noundef !151
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN3gmx15ForceWithVirial21addVirialContributionEPA3_Kf.exit

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %4, null                    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load i8, ptr %i.m, align 8, !tbaa !321, !range !150, !noundef !151
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !171
  %i.r = icmp eq i32 %i.q, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.s = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ %i.r, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !156
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !85
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.ab = udiv exact i64 %i.z, 488
  %.038 = add nsw i64 %i.ab, -1                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.al = ptrtoint ptr %2 to i64
  %i.am = ptrtoint ptr %1 to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.an ; 10 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %.048.us = phi i64 [ %.0.us, %bb.h ], [ %.038, %.lr.ph ] ; 3 uses
  %i.au = load ptr, ptr %i.t, align 8, !tbaa !85  ; 3 uses
  %i.av = getelementptr inbounds nuw [488 x i8], ptr %i.au, i64 %.048.us ; 4 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !106
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !104
  %i.ba = icmp eq i32 %i.az, 8
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 172
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !105
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [488 x i8], ptr %i.au, i64 %i.bd
  tail call void @_ZN3gmx38distributeTransformationPullCoordForceEP17pull_coord_work_tNS_8ArrayRefIS0_EE(ptr noundef nonnull %i.av, ptr nonnull %i.au, ptr %i.be)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %.lr.ph.split.us
  %.0.us = add nsw i64 %.048.us, -1
  %i.bf = icmp sgt i64 %.048.us, 0
  br i1 %i.bf, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !316

._crit_edge:                                      ; preds = %bb.af, %bb.h, %bb.e
  %.sroa.43.0.lcssa = phi float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.h ], [ %.sroa.43.2, %bb.af ]
  %i.bg = phi <8 x float> [ zeroinitializer, %bb.e ], [ zeroinitializer, %bb.h ], [ %i.qu, %bb.af ]
  br i1 %i.s, label %bb.ag, label %_ZN3gmx15ForceWithVirial21addVirialContributionEPA3_Kf.exit

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.af
  %.048 = phi i64 [ %.0, %bb.af ], [ %.038, %.lr.ph ] ; 3 uses
  %.sroa.43.041 = phi float [ %.sroa.43.2, %bb.af ], [ 0.000000e+00, %.lr.ph ] ; 5 uses
  %i.bh = phi <8 x float> [ %i.qu, %bb.af ], [ zeroinitializer, %.lr.ph ] ; 5 uses
  %i.bi = load ptr, ptr %i.t, align 8, !tbaa !85  ; 3 uses
  %i.bj = getelementptr inbounds nuw [488 x i8], ptr %i.bi, i64 %.048 ; 60 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !106
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.af, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !104
  %i.bo = icmp eq i32 %i.bn, 8
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 172
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !105
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [488 x i8], ptr %i.bi, i64 %i.br
  call void @_ZN3gmx38distributeTransformationPullCoordForceEP17pull_coord_work_tNS_8ArrayRefIS0_EE(ptr noundef nonnull %i.bj, ptr nonnull %i.bi, ptr %i.bs)
  br label %bb.af

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 192 ; 6 uses
  %i.bu = load i32, ptr %i.bm, align 8, !tbaa !80, !noalias !322
  switch i32 %i.bu, label %.preheader.i [
    i32 0, label %.loopexit.loopexit126.i
    i32 5, label %bb.l
    i32 7, label %bb.o
    i32 6, label %bb.r
  ]

.preheader.i:                                     ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 384
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !153, !noalias !322
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 264
  %i.by = load <3 x double>, ptr %i.bx, align 8, !tbaa !82, !noalias !322
  %i.bz = insertelement <3 x double> poison, double %i.bw, i64 0
  %i.ca = shufflevector <3 x double> %i.bz, <3 x double> poison, <3 x i32> zeroinitializer
  %i.cb = fmul <3 x double> %i.ca, %i.by          ; 3 uses
  %i.cc = shufflevector <3 x double> %i.cb, <3 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %i.cc, ptr %7, align 16, !tbaa !82, !alias.scope !322
  %i.cd = extractelement <3 x double> %i.cb, i64 2
  store double %i.cd, ptr %i.ad, align 16, !tbaa !82, !alias.scope !322
  br label %_ZL21calculateVectorForcesRK17pull_coord_work_t.exit

.loopexit.loopexit126.i:                          ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 376
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !114, !noalias !322 ; 2 uses
  %i.cg = fcmp ogt double %i.cf, 0.000000e+00
  %i.ch = fdiv nnan double 1.000000e+00, %i.cf
  %spec.select.i = select i1 %i.cg, double %i.ch, double 0.000000e+00
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 384
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !153, !noalias !322
  %i.ck = load <3 x double>, ptr %i.bt, align 8, !tbaa !82, !noalias !322
  %i.cl = insertelement <3 x double> poison, double %i.cj, i64 0
end_hunk_1
begin_hunk_2_@_Z15pull_constraintP6pull_tN3gmx8ArrayRefIKfEERK5t_pbcRKNS1_7MpiCommEddNS2_INS1_11BasicVectorIfEEEESD_SD_PA3_f:bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store double %i.di, ptr %i.dj, align 8, !tbaa !82
  %i.dk = or disjoint i64 %.0247479.i, 3          ; 2 uses
  %i.dl = getelementptr inbounds nuw [272 x i8], ptr %i.bl, i64 %i.dk ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 224
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.dk ; 3 uses
  %i.do = load double, ptr %i.dm, align 8, !tbaa !82
  store double %i.do, ptr %i.dn, align 8, !tbaa !82
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 232
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !82
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store double %i.dq, ptr %i.dr, align 8, !tbaa !82
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 240
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !82
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store double %i.dt, ptr %i.du, align 8, !tbaa !82
  %i.dv = add nuw i64 %.0247479.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader441.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !330

.preheader438.i:                                  ; preds = %bb.j, %.preheader441.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 9 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 7 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %.preheader437.i

.lr.ph484.i:                                      ; preds = %.preheader441.i, %bb.j
  %i.em = phi ptr [ %i.gm, %bb.j ], [ %i.cd, %.preheader441.i ] ; 2 uses
  %i.en = phi ptr [ %i.gn, %bb.j ], [ %i.cc, %.preheader441.i ]
  %.0246483.i = phi i64 [ %i.go, %bb.j ], [ 0, %.preheader441.i ] ; 7 uses
  %i.eo = getelementptr inbounds nuw [488 x i8], ptr %i.em, i64 %.0246483.i ; 13 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !106
  %.not285.i = icmp eq i32 %i.ep, 1
  br i1 %.not285.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %.lr.ph484.i
  tail call fastcc void @_ZL23get_pull_coord_distanceRK6pull_tP17pull_coord_work_tRK5t_pbcd(ptr noundef nonnull readonly align 8 dereferenceable(348) %0, ptr noundef %i.eo, ptr noundef nonnull align 4 dereferenceable(384) %3, double noundef %6)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 192 ; 3 uses
  %i.er = load ptr, ptr @debug, align 8, !tbaa !111 ; 2 uses
  %.not286.i = icmp eq ptr %i.er, null
  br i1 %.not286.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.es = load double, ptr %i.eq, align 8, !tbaa !82
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 200
  %i.eu = load double, ptr %i.et, align 8, !tbaa !82
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 208
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !82
  %i.ex = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.er, ptr noundef nonnull @.str.38, i64 noundef %.0246483.i, double noundef %i.es, double noundef %i.eu, double noundef %i.ew) #20 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !104
  switch i32 %i.ez, label %bb.f [
    i32 1, label %.preheader439.i
    i32 3, label %.preheader439.i
  ]

.preheader439.i:                                  ; preds = %bb.e, %bb.e
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eo, i64 264
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !82 ; 2 uses
  %i.fc = load double, ptr %i.eq, align 8, !tbaa !82
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.fb, double %i.fc, double 0.000000e+00)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eo, i64 272 ; 2 uses
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !82
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eo, i64 200
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !82
  %i.fi = tail call double @llvm.fmuladd.f64(double %i.ff, double %i.fh, double %i.fd)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eo, i64 280 ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !82
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eo, i64 208
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !82
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.fk, double %i.fm, double %i.fi) ; 3 uses
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %.0246483.i ; 2 uses
  %i.fp = fmul double %i.fb, %i.fn                ; 2 uses
  store double %i.fp, ptr %i.fo, align 8, !tbaa !82
  %i.fq = load double, ptr %i.fe, align 8, !tbaa !82
  %i.fr = fmul double %i.fn, %i.fq                ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store double %i.fr, ptr %i.fs, align 8, !tbaa !82
  %i.ft = load double, ptr %i.fj, align 8, !tbaa !82
  %i.fu = fmul double %i.fn, %i.ft
  br label %.loopexit440.i

bb.f:                                             ; preds = %bb.e
  %i.fv = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %.0246483.i ; 2 uses
  %i.fw = load double, ptr %i.eq, align 8, !tbaa !82 ; 2 uses
  store double %i.fw, ptr %i.fv, align 8, !tbaa !82
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eo, i64 200
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !82 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store double %i.fy, ptr %i.fz, align 8, !tbaa !82
  %i.ga = getelementptr inbounds nuw i8, ptr %i.eo, i64 208
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !82
  br label %.loopexit440.i

.loopexit440.i:                                   ; preds = %bb.f, %.preheader439.i
  %.sink.i = phi double [ %i.fu, %.preheader439.i ], [ %i.gb, %bb.f ] ; 3 uses
  %i.gc = phi double [ %i.fr, %.preheader439.i ], [ %i.fy, %bb.f ] ; 2 uses
  %i.gd = phi double [ %i.fp, %.preheader439.i ], [ %i.fw, %bb.f ] ; 2 uses
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %.0246483.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store double %.sink.i, ptr %i.gf, align 8, !tbaa !82
  %i.gg = fmul double %i.gc, %i.gc
  %i.gh = tail call double @llvm.fmuladd.f64(double %i.gd, double %i.gd, double %i.gg)
  %i.gi = tail call noundef double @llvm.fmuladd.f64(double %.sink.i, double %.sink.i, double %i.gh)
  %i.gj = fcmp oeq double %i.gi, 0.000000e+00
  br i1 %i.gj, label %bb.g, label %.loopexit440._crit_edge.i

.loopexit440._crit_edge.i:                        ; preds = %.loopexit440.i
  %.pre.i = load ptr, ptr %i.am, align 8, !tbaa !156
  %.pre584.i = load ptr, ptr %i.al, align 8, !tbaa !85
  br label %bb.j

bb.g:                                             ; preds = %.loopexit440.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 1 dereferenceable(61) @.str.8, i8 noundef zeroext 2)
  %i.gk = add nuw i64 %.0246483.i, 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef 922, ptr noundef nonnull @.str.39, i64 noundef %i.gk) #28
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.by

bb.j:                                             ; preds = %.loopexit440._crit_edge.i, %.lr.ph484.i
  %i.gm = phi ptr [ %.pre584.i, %.loopexit440._crit_edge.i ], [ %i.em, %.lr.ph484.i ] ; 2 uses
  %i.gn = phi ptr [ %.pre.i, %.loopexit440._crit_edge.i ], [ %i.en, %.lr.ph484.i ] ; 2 uses
  %i.go = add nuw i64 %.0246483.i, 1              ; 2 uses
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = ptrtoint ptr %i.gm to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = sdiv exact i64 %i.gr, 488
  %i.gt = icmp ult i64 %i.go, %i.gs
  br i1 %i.gt, label %.lr.ph484.i, label %.preheader438.i, !llvm.loop !331

.preheader437.i:                                  ; preds = %._crit_edge.i, %.preheader438.i
  %.0254501.i = phi i32 [ 0, %.preheader438.i ], [ %i.uz, %._crit_edge.i ] ; 5 uses
  %.0255500.i = phi i1 [ false, %.preheader438.i ], [ %.3258.i, %._crit_edge.i ]
  %i.gu = load ptr, ptr %i.am, align 8, !tbaa !156 ; 3 uses
  %i.gv = load ptr, ptr %i.al, align 8, !tbaa !85 ; 3 uses
  %.not518.i = icmp eq ptr %i.gu, %i.gv
  br i1 %.not518.i, label %.preheader436.i, label %.lr.ph490.i

.preheader436.i:                                  ; preds = %bb.bf, %.preheader437.i
  %.lcssa452.i = phi ptr [ %i.gu, %.preheader437.i ], [ %i.us, %bb.bf ] ; 2 uses
  %.lcssa446.i = phi ptr [ %i.gv, %.preheader437.i ], [ %i.ur, %bb.bf ] ; 2 uses
  %.not431493.i = icmp eq ptr %.lcssa446.i, %.lcssa452.i
  br i1 %.not431493.i, label %._crit_edge.thread.i, label %.lr.ph497.i

._crit_edge.thread.i:                             ; preds = %.preheader436.i
  %i.gw = add nuw nsw i32 %.0254501.i, 1
  br label %.loopexit646.i

.lr.ph490.i:                                      ; preds = %.preheader437.i, %bb.bf
  %i.gx = phi ptr [ %i.ur, %bb.bf ], [ %i.gv, %.preheader437.i ] ; 2 uses
  %i.gy = phi ptr [ %i.us, %bb.bf ], [ %i.gu, %.preheader437.i ]
  %.0240488.i = phi i64 [ %i.ut, %bb.bf ], [ 0, %.preheader437.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.gz = getelementptr inbounds nuw [488 x i8], ptr %i.gx, i64 %.0240488.i ; 25 uses
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !106
  %.not277.i = icmp eq i32 %i.ha, 1
  br i1 %.not277.i, label %bb.k, label %bb.bf

bb.k:                                             ; preds = %.lr.ph490.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 184 ; 8 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 160
  %i.hd = load float, ptr %i.hc, align 8, !tbaa !172 ; 2 uses
  %i.he = fcmp une float %i.hd, 0.000000e+00
  br i1 %i.he, label %bb.l, label %_ZL29updatePullCoordReferenceValuePdRK12t_pull_coordd.exit.i

bb.l:                                             ; preds = %bb.k
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 156
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !173
  %i.hh = fpext float %i.hg to double
  %i.hi = fpext float %i.hd to double
  %i.hj = call double @llvm.fmuladd.f64(double %i.hi, double %6, double %i.hh)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !80 ; 2 uses
  %21 = sext i32 %i.hl to i64
  %22 = add nsw i64 %21, -5
  %i.hm = icmp ult i64 %22, 3
  %..i.i.i = select i1 %i.hm, double f0x3F91DF46A2529D39, double 1.000000e+00
  %i.hn = fmul double %i.hj, %..i.i.i             ; 12 uses
  switch i32 %i.hl, label %_ZL31sanitizePullCoordReferenceValueRK12t_pull_coordd.exit.i [
    i32 0, label %bb.m
    i32 5, label %bb.q
    i32 7, label %bb.q
    i32 6, label %bb.u
  ]

bb.m:                                             ; preds = %bb.l
  %i.ho = fcmp olt double %i.hn, 0.000000e+00
  br i1 %i.ho, label %bb.n, label %_ZL31sanitizePullCoordReferenceValueRK12t_pull_coordd.exit.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 1 dereferenceable(61) @.str.8, i8 noundef zeroext 2)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gz, i64 172
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !175
  %i.hr = add nsw i32 %i.hq, 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 661, ptr noundef nonnull @.str.31, i32 noundef %i.hr, double noundef %i.hn) #28
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %common.resume.i

bb.q:                                             ; preds = %bb.l, %bb.l
  %i.ht = fcmp olt double %i.hn, 0.000000e+00
  %i.hu = fcmp ogt double %i.hn, f0x400921FB54442D18
  %or.cond.i.i = or i1 %i.ht, %i.hu
  br i1 %or.cond.i.i, label %bb.r, label %_ZL31sanitizePullCoordReferenceValueRK12t_pull_coordd.exit.i

bb.r:                                             ; preds = %bb.q
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 1 dereferenceable(61) @.str.8, i8 noundef zeroext 2)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gz, i64 172
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !175
  %i.hy = add nsw i32 %i.hx, 1
  %i.hz = load i32, ptr %i.hv, align 8, !tbaa !80
  %23 = sext i32 %i.hz to i64
  %24 = add nsw i64 %23, -5
  %i.ia = icmp ult i64 %24, 3
  %..i.i384.i = select i1 %i.ia, double f0x404CA5DC1A63C1F8, double 1.000000e+00
  %i.ib = fmul double %i.hn, %..i.i384.i
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 671, ptr noundef nonnull @.str.32, i32 noundef %i.hy, double noundef %i.ib) #28
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %common.resume.i

bb.u:                                             ; preds = %bb.l
  %i.id = fcmp ult double %i.hn, f0x400921FB54442D18
  br i1 %i.id, label %bb.v, label %.sink.split.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.ie = fcmp olt double %i.hn, f0xC00921FB54442D18
  br i1 %i.ie, label %.sink.split.i.i.i, label %_ZL31sanitizePullCoordReferenceValueRK12t_pull_coordd.exit.i

.sink.split.i.i.i:                                ; preds = %bb.v, %bb.u
  %.sink4.i.i.i = phi double [ f0xC01921FB54442D18, %bb.u ], [ f0x401921FB54442D18, %bb.v ]
  %i.if = fadd double %i.hn, %.sink4.i.i.i
  br label %_ZL31sanitizePullCoordReferenceValueRK12t_pull_coordd.exit.i

common.resume.i:                                  ; preds = %bb.by, %bb.t, %bb.p
  %common.resume.op.i = phi { ptr, i32 } [ %.pn287.i, %bb.by ], [ %i.hs, %bb.p ], [ %i.ic, %bb.t ]
  resume { ptr, i32 } %common.resume.op.i

_ZL31sanitizePullCoordReferenceValueRK12t_pull_coordd.exit.i: ; preds = %.sink.split.i.i.i, %bb.v, %bb.q, %bb.m, %bb.l
  %.0.i.i = phi double [ %i.hn, %bb.l ], [ %i.hn, %bb.m ], [ %i.hn, %bb.q ], [ %i.if, %.sink.split.i.i.i ], [ %i.hn, %bb.v ]
  store double %.0.i.i, ptr %i.hb, align 8, !tbaa !82
  br label %_ZL29updatePullCoordReferenceValuePdRK12t_pull_coordd.exit.i

_ZL29updatePullCoordReferenceValuePdRK12t_pull_coordd.exit.i: ; preds = %_ZL31sanitizePullCoordReferenceValueRK12t_pull_coordd.exit.i, %bb.k
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gz, i64 92 ; 4 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !67
  %i.ii = sext i32 %i.ih to i64                   ; 2 uses
  %i.ij = load ptr, ptr %i.bb, align 8, !tbaa !108 ; 2 uses
  %i.ik = getelementptr inbounds nuw [272 x i8], ptr %i.ij, i64 %i.ii ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.gz, i64 96 ; 3 uses
  %i.im = load i32, ptr %i.il, align 8, !tbaa !67
  %i.in = sext i32 %i.im to i64                   ; 2 uses
  %i.io = getelementptr inbounds nuw [272 x i8], ptr %i.ij, i64 %i.in
  %i.ip = getelementptr inbounds [24 x i8], ptr %i.bj, i64 %i.in
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.iq = load ptr, ptr %i.ik, align 8, !tbaa !65
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !65
  %i.it = icmp eq ptr %i.iq, %i.is
  br i1 %i.it, label %.preheader1.i.i, label %bb.w

.preheader1.i.i:                                  ; preds = %_ZL29updatePullCoordReferenceValuePdRK12t_pull_coordd.exit.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.gz, i64 128
  %i.iv = load <2 x float>, ptr %i.iu, align 8, !tbaa !72
  %i.iw = fpext <2 x float> %i.iv to <2 x double> ; 2 uses
  store <2 x double> %i.iw, ptr %i.d, align 16, !tbaa !82
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gz, i64 136
  %i.iy = load float, ptr %i.ix, align 8, !tbaa !72
  %i.iz = fpext float %i.iy to double
  br label %.loopexit.i.i

bb.w:                                             ; preds = %_ZL29updatePullCoordReferenceValuePdRK12t_pull_coordd.exit.i
  %i.ja = getelementptr inbounds [24 x i8], ptr %i.bj, i64 %i.ii ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load double, ptr %i.ja, align 8, !tbaa !82 ; 2 uses
  store double %i.jc, ptr %i.d, align 16, !tbaa !82
  %i.jd = load double, ptr %i.jb, align 8, !tbaa !82 ; 2 uses
  store double %i.jd, ptr %i.dw, align 8, !tbaa !82
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jf = load double, ptr %i.je, align 8, !tbaa !82
  %i.jg = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.jh = insertelement <2 x double> %i.jg, double %i.jd, i64 1
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.w, %.preheader1.i.i
  %.sink.i.i = phi double [ %i.iz, %.preheader1.i.i ], [ %i.jf, %bb.w ] ; 2 uses
  %i.ji = phi <2 x double> [ %i.iw, %.preheader1.i.i ], [ %i.jh, %bb.w ]
  store double %.sink.i.i, ptr %i.dx, align 16, !tbaa !82
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gz, i64 40 ; 7 uses
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !104
  %i.jl = icmp eq i32 %i.jk, 3
  br i1 %i.jl, label %.preheader.i.i, label %bb.x

.preheader.i.i:                                   ; preds = %.loopexit.i.i
  %i.jm = load double, ptr %i.hb, align 8, !tbaa !117 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gz, i64 264
  %i.jo = load <2 x double>, ptr %i.jn, align 8, !tbaa !82 ; 2 uses
  %i.jp = insertelement <2 x double> %i.jo, double %i.jm, i64 1
  %i.jq = insertelement <2 x double> %i.jo, double %i.jm, i64 0
  %i.jr = fmul <2 x double> %i.jp, %i.jq          ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.gz, i64 280
  %i.jt = load double, ptr %i.js, align 8, !tbaa !82
  %i.ju = fmul double %i.jm, %i.jt                ; 2 uses
  %i.jv = fadd double %.sink.i.i, %i.ju
  %i.jw = fadd <2 x double> %i.ji, %i.jr
  store <2 x double> %i.jw, ptr %i.d, align 16, !tbaa !82
  store double %i.jv, ptr %i.dx, align 16, !tbaa !82
  br label %bb.x

bb.x:                                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %.sroa.10.0.i.i = phi double [ %i.ju, %.preheader.i.i ], [ 0.000000e+00, %.loopexit.i.i ]
  %i.jx = phi <2 x double> [ %i.jr, %.preheader.i.i ], [ zeroinitializer, %.loopexit.i.i ]
  call void @_Z8pbc_dx_dPK5t_pbcPKdS3_Pd(ptr noundef nonnull align 4 dereferenceable(384) %3, ptr noundef %i.ip, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %.val.i.i = load i32, ptr %i.jj, align 8, !tbaa !80
  %.val.fr.i.i = freeze i32 %.val.i.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.gz, i64 116 ; 3 uses
  %i.jz = getelementptr i8, ptr %i.gz, i64 264    ; 3 uses
  %i.ka = load <2 x i32>, ptr %i.jy, align 4, !tbaa !67
  %i.kb = sitofp <2 x i32> %i.ka to <2 x double>
  %i.kc = load <2 x double>, ptr %i.e, align 16, !tbaa !82
  %i.kd = fmul <2 x double> %i.kc, %i.kb          ; 2 uses
  store <2 x double> %i.kd, ptr %i.e, align 16, !tbaa !82
  %i.ke = getelementptr inbounds nuw i8, ptr %i.gz, i64 124 ; 3 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !67
  %i.kg = sitofp i32 %i.kf to double
  %i.kh = load double, ptr %i.dz, align 16, !tbaa !82
  %i.ki = fmul double %i.kh, %i.kg                ; 2 uses
  store double %i.ki, ptr %i.dz, align 16, !tbaa !82
  %i.kj = icmp eq i32 %.val.fr.i.i, 3
  br i1 %i.kj, label %bb.y, label %_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd.exit.i

bb.y:                                             ; preds = %bb.x
  %i.kk = fadd <2 x double> %i.jx, %i.kd
  %i.kl = fadd double %.sroa.10.0.i.i, %i.ki
  store <2 x double> %i.kk, ptr %i.e, align 16, !tbaa !82
  store double %i.kl, ptr %i.dz, align 16, !tbaa !82
  br label %_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd.exit.i

_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd.exit.i: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.km = load ptr, ptr @debug, align 8, !tbaa !111 ; 2 uses
  %.not278.i = icmp eq ptr %i.km, null
  br i1 %.not278.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd.exit.i
  %i.kn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.km, ptr noundef nonnull @.str.40, i64 noundef %.0240488.i, i32 noundef %.0254501.i) #20 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd.exit.i
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ik, i64 144 ; 3 uses
  %i.kp = load float, ptr %i.ko, align 8, !tbaa !187 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.io, i64 144 ; 3 uses
  %i.kr = load float, ptr %i.kq, align 8, !tbaa !187 ; 3 uses
  %i.ks = fadd float %i.kp, %i.kr
  %i.kt = fpext float %i.ks to double
  %i.ku = fdiv double 1.000000e+00, %i.kt         ; 4 uses
  %i.kv = load i32, ptr %i.jj, align 8, !tbaa !104
  switch i32 %i.kv, label %bb.ap [
    i32 0, label %bb.ab
    i32 1, label %bb.al
    i32 3, label %bb.al
    i32 2, label %bb.al
    i32 8, label %bb.ao
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.kw = load double, ptr %i.hb, align 8, !tbaa !117 ; 3 uses
  %i.kx = fcmp ugt double %i.kw, 0.000000e+00
  br i1 %i.kx, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 1 dereferenceable(61) @.str.8, i8 noundef zeroext 2)
  %i.ky = load double, ptr %i.hb, align 8, !tbaa !117
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 970, ptr noundef nonnull @.str.41, i64 noundef %.0240488.i, double noundef %i.ky) #28
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.kz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.bg

bb.af:                                            ; preds = %bb.ab
  %i.la = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %.0240488.i ; 3 uses
  %i.lb = load <2 x double>, ptr %i.la, align 8, !tbaa !82 ; 3 uses
  %i.lc = extractelement <2 x double> %i.lb, i64 1 ; 3 uses
  %i.ld = extractelement <2 x double> %i.lb, i64 0 ; 3 uses
  %i.le = fmul double %i.lc, %i.lc
  %i.lf = call double @llvm.fmuladd.f64(double %i.ld, double %i.ld, double %i.le)
  %i.lg = getelementptr inbounds nuw i8, ptr %i.la, i64 16 ; 2 uses
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !82 ; 4 uses
  %i.li = call noundef double @llvm.fmuladd.f64(double %i.lh, double %i.lh, double %i.lf) ; 4 uses
  %i.lj = load double, ptr %i.e, align 16, !tbaa !82 ; 3 uses
  %i.lk = load double, ptr %i.dy, align 8, !tbaa !82 ; 3 uses
  %i.ll = fmul double %i.lc, %i.lk
  %i.lm = call double @llvm.fmuladd.f64(double %i.lj, double %i.ld, double %i.ll)
  %i.ln = load double, ptr %i.dz, align 16, !tbaa !82 ; 3 uses
  %i.lo = call noundef double @llvm.fmuladd.f64(double %i.ln, double %i.lh, double %i.lm)
  %i.lp = fmul double %i.lo, 2.000000e+00         ; 6 uses
  %i.lq = fmul double %i.lk, %i.lk
  %i.lr = call double @llvm.fmuladd.f64(double %i.lj, double %i.lj, double %i.lq)
end_hunk_2
begin_hunk_3_@_Z9init_pullP8_IO_FILEPK13pull_params_tPK10t_inputrecRK10gmx_mtop_tRKN3gmx7MpiCommEP12gmx_domdec_tPNSA_19LocalAtomSetManagerEf:bb.a

.lr.ph353.split.us.split.3:                       ; preds = %bb.ap, %.lr.ph353.split.us.split.2
  %i.gt = getelementptr [4 x i8], ptr %i.ev, i64 %indvars.iv434
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !67 ; 2 uses
  %i.gv = icmp slt i32 %i.gu, 1
  br i1 %i.gv, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph353.split.us.split.3
  %i.gw = zext nneg i32 %i.gu to i64
  %i.gx = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.gy = getelementptr inbounds nuw [272 x i8], ptr %i.gx, i64 %i.gw
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  store i8 1, ptr %i.gz, align 8, !tbaa !61
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph353.split.us.split.3
  %indvars.iv.next435.3 = add nuw nsw i64 %indvars.iv434, 4 ; 2 uses
  %niter677.next.3 = add i64 %niter677, 4         ; 2 uses
  %niter677.ncmp.3 = icmp eq i64 %niter677.next.3, %unroll_iter676
  br i1 %niter677.ncmp.3, label %._crit_edge354.loopexit654.unr-lcssa, label %.lr.ph353.split.us.split, !llvm.loop !346

._crit_edge354.loopexit.unr-lcssa:                ; preds = %bb.am
  %lcmp.mod680.not = icmp eq i64 %xtraiter678, 0
  br i1 %lcmp.mod680.not, label %._crit_edge354, label %.lr.ph353.split.us.split.us.epil.preheader

.lr.ph353.split.us.split.us.epil.preheader:       ; preds = %._crit_edge354.loopexit.unr-lcssa, %.lr.ph353.split.us.split.us.preheader
  %indvars.iv440.epil.init = phi i64 [ 0, %.lr.ph353.split.us.split.us.preheader ], [ %indvars.iv.next441.3, %._crit_edge354.loopexit.unr-lcssa ]
  %lcmp.mod681 = icmp ne i64 %xtraiter678, 0
  call void @llvm.assume(i1 %lcmp.mod681)
  %i.ha = getelementptr inbounds i8, ptr %i.cv, i64 -396
  br label %.lr.ph353.split.us.split.us.epil

.lr.ph353.split.us.split.us.epil:                 ; preds = %bb.at, %.lr.ph353.split.us.split.us.epil.preheader
  %indvars.iv440.epil = phi i64 [ %indvars.iv.next441.epil, %bb.at ], [ %indvars.iv440.epil.init, %.lr.ph353.split.us.split.us.epil.preheader ] ; 2 uses
  %epil.iter679 = phi i64 [ %epil.iter679.next, %bb.at ], [ 0, %.lr.ph353.split.us.split.us.epil.preheader ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv440.epil
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !67 ; 2 uses
  %i.hd = icmp sgt i32 %i.hc, 0
  br i1 %i.hd, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph353.split.us.split.us.epil
  %i.he = zext nneg i32 %i.hc to i64
  %i.hf = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.hg = getelementptr inbounds nuw [272 x i8], ptr %i.hf, i64 %i.he
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 64
  store i8 1, ptr %i.hh, align 8, !tbaa !61
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph353.split.us.split.us.epil
  %indvars.iv.next441.epil = add nuw nsw i64 %indvars.iv440.epil, 1
  %epil.iter679.next = add i64 %epil.iter679, 1   ; 2 uses
  %epil.iter679.cmp.not = icmp eq i64 %epil.iter679.next, %xtraiter678
  br i1 %epil.iter679.cmp.not, label %._crit_edge354, label %.lr.ph353.split.us.split.us.epil, !llvm.loop !347

._crit_edge354.loopexit654.unr-lcssa:             ; preds = %bb.ar
  %lcmp.mod674.not = icmp eq i64 %xtraiter672, 0
  br i1 %lcmp.mod674.not, label %._crit_edge354, label %.lr.ph353.split.us.split.epil.preheader

.lr.ph353.split.us.split.epil.preheader:          ; preds = %._crit_edge354.loopexit654.unr-lcssa, %.lr.ph353.split.us.split.preheader
  %indvars.iv434.epil.init = phi i64 [ 1, %.lr.ph353.split.us.split.preheader ], [ %indvars.iv.next435.3, %._crit_edge354.loopexit654.unr-lcssa ]
  %lcmp.mod675 = icmp ne i64 %xtraiter672, 0
  call void @llvm.assume(i1 %lcmp.mod675)
  %i.hi = getelementptr inbounds i8, ptr %i.cv, i64 -396
  br label %.lr.ph353.split.us.split.epil

.lr.ph353.split.us.split.epil:                    ; preds = %bb.av, %.lr.ph353.split.us.split.epil.preheader
  %indvars.iv434.epil = phi i64 [ %indvars.iv.next435.epil, %bb.av ], [ %indvars.iv434.epil.init, %.lr.ph353.split.us.split.epil.preheader ] ; 2 uses
  %epil.iter673 = phi i64 [ %epil.iter673.next, %bb.av ], [ 0, %.lr.ph353.split.us.split.epil.preheader ]
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv434.epil
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !67 ; 2 uses
  %i.hl = icmp slt i32 %i.hk, 1
  br i1 %i.hl, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph353.split.us.split.epil
  %i.hm = zext nneg i32 %i.hk to i64
  %i.hn = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.ho = getelementptr inbounds nuw [272 x i8], ptr %i.hn, i64 %i.hm
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 64
  store i8 1, ptr %i.hp, align 8, !tbaa !61
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph353.split.us.split.epil
  %indvars.iv.next435.epil = add nuw nsw i64 %indvars.iv434.epil, 1
  %epil.iter673.next = add i64 %epil.iter673, 1   ; 2 uses
  %epil.iter673.cmp.not = icmp eq i64 %epil.iter673.next, %xtraiter672
  br i1 %epil.iter673.cmp.not, label %._crit_edge354, label %.lr.ph353.split.us.split.epil, !llvm.loop !348

._crit_edge354.loopexit655.unr-lcssa:             ; preds = %bb.bc
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge354, label %.lr.ph353.split.epil.preheader

.lr.ph353.split.epil.preheader:                   ; preds = %._crit_edge354.loopexit655.unr-lcssa, %.lr.ph353.split.preheader
  %indvars.iv431.epil.init = phi i64 [ 0, %.lr.ph353.split.preheader ], [ %indvars.iv.next432.3, %._crit_edge354.loopexit655.unr-lcssa ]
  %lcmp.mod671 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod671)
  br label %.lr.ph353.split.epil

.lr.ph353.split.epil:                             ; preds = %bb.ax, %.lr.ph353.split.epil.preheader
  %indvars.iv431.epil = phi i64 [ %indvars.iv431.epil.init, %.lr.ph353.split.epil.preheader ], [ %indvars.iv.next432.epil, %bb.ax ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph353.split.epil.preheader ], [ %epil.iter.next, %bb.ax ]
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv431.epil
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !67 ; 2 uses
  %i.hs = icmp sgt i32 %i.hr, 0
  br i1 %i.hs, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.lr.ph353.split.epil
  %i.ht = zext nneg i32 %i.hr to i64
  %i.hu = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.hv = getelementptr inbounds nuw [272 x i8], ptr %i.hu, i64 %i.ht
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 64
  store i8 1, ptr %i.hw, align 8, !tbaa !61
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph353.split.epil
  %indvars.iv.next432.epil = add nuw nsw i64 %indvars.iv431.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge354, label %.lr.ph353.split.epil, !llvm.loop !349

._crit_edge354:                                   ; preds = %._crit_edge354.loopexit655.unr-lcssa, %bb.ax, %._crit_edge354.loopexit654.unr-lcssa, %bb.av, %._crit_edge354.loopexit.unr-lcssa, %bb.at, %bb.ah, %.thread, %bb.ag
  %i.hx = getelementptr inbounds i8, ptr %i.cv, i64 -328 ; 2 uses
  %i.hy = load float, ptr %i.hx, align 8, !tbaa !375
  %i.hz = fcmp oeq float %i.hy, 0.000000e+00
  br i1 %i.hz, label %bb.bd, label %bb.bf

.lr.ph353.split:                                  ; preds = %bb.bc, %.lr.ph353.split.preheader.new
  %indvars.iv431 = phi i64 [ 0, %.lr.ph353.split.preheader.new ], [ %indvars.iv.next432.3, %bb.bc ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph353.split.preheader.new ], [ %niter.next.3, %bb.bc ]
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv431
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !67 ; 2 uses
  %i.ic = icmp sgt i32 %i.ib, 0
  br i1 %i.ic, label %bb.ay, label %.lr.ph353.split.1

bb.ay:                                            ; preds = %.lr.ph353.split
  %i.id = zext nneg i32 %i.ib to i64
  %i.ie = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.if = getelementptr inbounds nuw [272 x i8], ptr %i.ie, i64 %i.id
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 64
  store i8 1, ptr %i.ig, align 8, !tbaa !61
  br label %.lr.ph353.split.1

.lr.ph353.split.1:                                ; preds = %bb.ay, %.lr.ph353.split
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv431
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !67 ; 2 uses
  %i.ik = icmp sgt i32 %i.ij, 0
  br i1 %i.ik, label %bb.az, label %.lr.ph353.split.2

bb.az:                                            ; preds = %.lr.ph353.split.1
  %i.il = zext nneg i32 %i.ij to i64
  %i.im = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.in = getelementptr inbounds nuw [272 x i8], ptr %i.im, i64 %i.il
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 64
  store i8 1, ptr %i.io, align 8, !tbaa !61
  br label %.lr.ph353.split.2

.lr.ph353.split.2:                                ; preds = %bb.az, %.lr.ph353.split.1
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv431
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !67 ; 2 uses
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %bb.ba, label %.lr.ph353.split.3

bb.ba:                                            ; preds = %.lr.ph353.split.2
  %i.it = zext nneg i32 %i.ir to i64
  %i.iu = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.iv = getelementptr inbounds nuw [272 x i8], ptr %i.iu, i64 %i.it
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 64
  store i8 1, ptr %i.iw, align 8, !tbaa !61
  br label %.lr.ph353.split.3

.lr.ph353.split.3:                                ; preds = %bb.ba, %.lr.ph353.split.2
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv431
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 12
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !67 ; 2 uses
  %i.ja = icmp sgt i32 %i.iz, 0
  br i1 %i.ja, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph353.split.3
  %i.jb = zext nneg i32 %i.iz to i64
  %i.jc = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.jd = getelementptr inbounds nuw [272 x i8], ptr %i.jc, i64 %i.jb
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 64
  store i8 1, ptr %i.je, align 8, !tbaa !61
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph353.split.3
  %indvars.iv.next432.3 = add nuw nsw i64 %indvars.iv431, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge354.loopexit655.unr-lcssa, label %.lr.ph353.split, !llvm.loop !345

bb.bd:                                            ; preds = %._crit_edge354
  %.not260 = icmp eq i32 %.fr396, 5
  br i1 %.not260, label %.thread527, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jf = getelementptr inbounds i8, ptr %i.cv, i64 -332
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !376
  %i.jh = fpext float %i.jg to double
  %15 = sext i32 %i.cy to i64
  %16 = add nsw i64 %15, -5
  %i.ji = icmp ult i64 %16, 3
  %..i268 = select i1 %i.ji, double f0x3F91DF46A2529D39, double 1.000000e+00
  %i.jj = fmul double %..i268, %i.jh
  %i.jk = call fastcc noundef double @_ZL31sanitizePullCoordReferenceValueRK12t_pull_coordd(ptr noundef nonnull align 8 dereferenceable(176) %i.cw, double noundef %i.jj)
  %i.jl = getelementptr inbounds i8, ptr %i.cv, i64 -304
  store double %i.jk, ptr %i.jl, align 8, !tbaa !117
  %.pre465 = load i32, ptr %i.cw, align 8, !tbaa !106
  br label %bb.bf

.thread527:                                       ; preds = %bb.bd
  %i.jm = getelementptr inbounds i8, ptr %i.cv, i64 -304
  store double 0.000000e+00, ptr %i.jm, align 8, !tbaa !117
  br label %bb.bg

bb.bf:                                            ; preds = %bb.be, %._crit_edge354
  %i.jn = phi i32 [ %.pre465, %bb.be ], [ %.fr396, %._crit_edge354 ]
  %i.jo = icmp eq i32 %i.jn, 5
  br i1 %i.jo, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %.thread527, %bb.bf
  %i.jp = load float, ptr %i.hx, align 8, !tbaa !375
  %i.jq = fcmp oeq float %i.jp, 0.000000e+00
  br i1 %i.jq, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ9init_pullP8_IO_FILEPK13pull_params_tPK10t_inputrecRK10gmx_mtop_tRKN3gmx7MpiCommEP12gmx_domdec_tPNSA_19LocalAtomSetManagerEfENK3$_0clEv", ptr noundef nonnull @.str.8, i32 noundef 2200) #28
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.jr = load i32, ptr %i.bt, align 8, !tbaa !174
  %i.js = add nsw i32 %i.jr, 1
  store i32 %i.js, ptr %i.bt, align 8, !tbaa !174
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bf
  %i.jt = getelementptr inbounds i8, ptr %i.cv, i64 -96
  store i8 0, ptr %i.jt, align 8, !tbaa !157
  %indvars.iv.next446 = add nuw nsw i64 %indvars.iv445, 1 ; 2 uses
  %i.ju = load i32, ptr %i.bu, align 4, !tbaa !370
  %i.jv = sext i32 %i.ju to i64
  %i.jw = icmp slt i64 %indvars.iv.next446, %i.jv
  br i1 %i.jw, label %bb.i, label %._crit_edge360.loopexit, !llvm.loop !350

bb.bk:                                            ; preds = %._crit_edge360
  %i.jx = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !152 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !152 ; 2 uses
  %.not307361 = icmp eq ptr %i.jy, %i.ka
  br i1 %.not307361, label %._crit_edge367, label %.lr.ph366

.lr.ph366:                                        ; preds = %bb.bk
  %i.kb = load ptr, ptr %i.d, align 8, !tbaa !108 ; 2 uses
  br label %bb.bl

._crit_edge367:                                   ; preds = %bb.bo, %bb.bk
  %.0236.lcssa = phi i1 [ false, %bb.bk ], [ %.1237, %bb.bo ]
  %fputc = call i32 @fputc(i32 10, ptr nonnull %0) ; 0 uses
  %i.kc = load i8, ptr %i.bf, align 1, !tbaa !286, !range !150, !noundef !151
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %bb.bp, label %bb.bq

bb.bl:                                            ; preds = %.lr.ph366, %bb.bo
  %.0236364 = phi i1 [ false, %.lr.ph366 ], [ %.1237, %bb.bo ]
  %.sroa.0286.0362 = phi ptr [ %i.jy, %.lr.ph366 ], [ %i.ku, %bb.bo ] ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0286.0362, i64 92
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !67
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [272 x i8], ptr %i.kb, i64 %i.kg ; 2 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !65
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !65
  %i.kl = icmp eq ptr %i.ki, %i.kk
  br i1 %i.kl, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0286.0362, i64 96
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !67
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw [272 x i8], ptr %i.kb, i64 %i.ko ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !65
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !65
  %i.kt = icmp eq ptr %i.kq, %i.ks
  br i1 %i.kt, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.1237 = phi i1 [ true, %bb.bn ], [ %.0236364, %bb.bm ] ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0286.0362, i64 488 ; 2 uses
  %.not307 = icmp eq ptr %i.ku, %i.ka
  br i1 %.not307, label %._crit_edge367, label %bb.bl

bb.bp:                                            ; preds = %._crit_edge367
  %fwrite = call i64 @fwrite(ptr nonnull @.str.59, i64 33, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %._crit_edge367
  %i.kv = load i8, ptr %i.bg, align 2, !tbaa !287, !range !150, !noundef !151
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %fwrite255 = call i64 @fwrite(ptr nonnull @.str.60, i64 34, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.kx = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !185
  %i.kz = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = sub i64 %i.la, %i.lb
  %i.ld = sdiv exact i64 %i.lc, 272
  %i.le = trunc i64 %i.ld to i32
  %i.lf = add i32 %i.le, -1                       ; 3 uses
  %i.lg = icmp sgt i32 %i.lf, 0
  br i1 %i.lg, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ9init_pullP8_IO_FILEPK13pull_params_tPK10t_inputrecRK10gmx_mtop_tRKN3gmx7MpiCommEP12gmx_domdec_tPNSA_19LocalAtomSetManagerEfENK3$_0clEv", ptr noundef nonnull @.str.8, i32 noundef 2245) #28
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.lh = load ptr, ptr %i.jz, align 8, !tbaa !156
  %i.li = load ptr, ptr %i.jx, align 8, !tbaa !85
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = sub i64 %i.lj, %i.lk                    ; 2 uses
  %i.lm = sdiv exact i64 %i.ll, 488
  %i.ln = icmp eq i64 %i.ll, 488
  %i.lo = select i1 %i.ln, ptr @.str.12, ptr @.str.62
  %i.lp = icmp eq i32 %i.lf, 1
  %i.lq = select i1 %i.lp, ptr @.str.12, ptr @.str.62
  %i.lr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.61, i64 noundef %i.lm, ptr noundef nonnull %i.lo, i32 noundef %i.lf, ptr noundef nonnull %i.lq) #20 ; 0 uses
  br i1 %.0236.lcssa, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %fwrite256 = call i64 @fwrite(ptr nonnull @.str.63, i64 27, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.ls = load ptr, ptr %i.kx, align 8, !tbaa !185 ; 2 uses
  %i.lt = load ptr, ptr %i.d, align 8, !tbaa !108 ; 2 uses
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = ptrtoint ptr %i.lt to i64
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = sdiv exact i64 %i.lw, 272
  %i.ly = icmp ugt i64 %i.lx, 1
  br i1 %i.ly, label %.lr.ph371.outer, label %.critedge

.lr.ph371.outer:                                  ; preds = %bb.bw, %.thread528
  %.ph = phi ptr [ %.pre468, %.thread528 ], [ %i.lt, %bb.bw ] ; 2 uses
  %.ph534 = phi ptr [ %.pre467, %.thread528 ], [ %i.ls, %bb.bw ]
  %.0233369.ph = phi i64 [ %i.mr, %.thread528 ], [ 1, %bb.bw ]
  %.0234368.ph = phi i1 [ true, %.thread528 ], [ false, %bb.bw ]
  %i.lz = ptrtoint ptr %.ph534 to i64
  %i.ma = ptrtoint ptr %.ph to i64
  %i.mb = sub i64 %i.lz, %i.ma
  %i.mc = sdiv exact i64 %i.mb, 272
  br label %.lr.ph371

._crit_edge372:                                   ; preds = %bb.by
  br i1 %.0234368.ph, label %._crit_edge372.thread, label %.critedge

.lr.ph371:                                        ; preds = %.lr.ph371.outer, %bb.by
  %.0233369 = phi i64 [ %i.mo, %bb.by ], [ %.0233369.ph, %.lr.ph371.outer ] ; 4 uses
  %i.md = getelementptr inbounds nuw [272 x i8], ptr %.ph, i64 %.0233369 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !25
  %i.mg = load ptr, ptr %i.md, align 8, !tbaa !26
  %i.mh = ptrtoint ptr %i.mf to i64
  %i.mi = ptrtoint ptr %i.mg to i64
  %i.mj = sub i64 %i.mh, %i.mi
  %i.mk = icmp ugt i64 %i.mj, 4
  br i1 %i.mk, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.lr.ph371
  %i.ml = getelementptr inbounds nuw i8, ptr %i.md, i64 48
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !377
  %i.mn = icmp slt i32 %i.mm, 0
  br i1 %i.mn, label %.thread528, label %bb.by

bb.by:                                            ; preds = %.lr.ph371, %bb.bx
  %i.mo = add nuw i64 %.0233369, 1                ; 2 uses
  %i.mp = icmp ult i64 %i.mo, %i.mc
  br i1 %i.mp, label %.lr.ph371, label %._crit_edge372, !llvm.loop !351

.thread528:                                       ; preds = %bb.bx
  %i.mq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.64, i64 noundef %.0233369) #20 ; 0 uses
  %.pre467 = load ptr, ptr %i.kx, align 8, !tbaa !185 ; 2 uses
  %.pre468 = load ptr, ptr %i.d, align 8, !tbaa !108 ; 2 uses
  %i.mr = add nuw i64 %.0233369, 1                ; 2 uses
  %i.ms = ptrtoint ptr %.pre467 to i64
  %i.mt = ptrtoint ptr %.pre468 to i64
  %i.mu = sub i64 %i.ms, %i.mt
  %i.mv = sdiv exact i64 %i.mu, 272
  %i.mw = icmp ult i64 %i.mr, %i.mv
  br i1 %i.mw, label %.lr.ph371.outer, label %._crit_edge372.thread, !llvm.loop !351
end_hunk_3
