inline.NumInlined: 446
inline.NumDeleted: 205
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss17IndexPreTransformD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN5faiss17IndexPreTransformE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !86, !range !25, !noundef !26
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9    ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.k = phi ptr [ %i.s, %bb.c ], [ %i.g, %.preheader ] ; 2 uses
  %i.l = phi ptr [ %i.t, %bb.c ], [ %i.f, %.preheader ]
  %.05 = phi i64 [ %i.u, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.05
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31   ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(17) %i.n) #19
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !27
  %.pre6 = load ptr, ptr %i.d, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.s = phi ptr [ %i.k, %.lr.ph ], [ %.pre6, %bb.b ] ; 2 uses
  %i.t = phi ptr [ %i.l, %.lr.ph ], [ %.pre, %bb.b ] ; 2 uses
  %i.u = add nuw i64 %.05, 1                      ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = icmp ult i64 %i.u, %i.y
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !92

bb.d:                                             ; preds = %._crit_edge
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(36) %i.i) #19
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !28 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN5faiss15VectorTransformESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !87
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #20
  br label %_ZNSt6vectorIPN5faiss15VectorTransformESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5faiss15VectorTransformESaIS2_EED2Ev.exit: ; preds = %bb.e, %bb.f
  tail call void @_ZN5faiss5IndexD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) #19
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #14

declare noundef ptr @_ZNK5faiss15VectorTransform5applyElPKf(ptr noundef nonnull align 8 dereferenceable(17), i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK5faiss17IndexPreTransform11apply_chainElPKf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit, label %.lr.ph

_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit14, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.h, %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit14 ]
  ret ptr %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit14
  %i.e = phi ptr [ %i.k, %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit14 ], [ %i.d, %bb.a ]
  %.027 = phi ptr [ %i.h, %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit14 ], [ %2, %bb.a ]
  %.01126 = phi i64 [ %i.i, %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit14 ], [ 0, %bb.a ] ; 2 uses
  %.sroa.019.025 = phi ptr [ %i.h, %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit14 ], [ null, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.01126
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.h = invoke noundef ptr @_ZNK5faiss15VectorTransform5applyElPKf(ptr noundef nonnull align 8 dereferenceable(17) %i.g, i64 noundef %1, ptr noundef %.027)
          to label %bb.b unwind label %bb.c       ; 3 uses

bb.b:                                             ; preds = %.lr.ph
  %.not.i12 = icmp eq ptr %.sroa.019.025, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit14, label %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i13

_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i13: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.019.025) #20
  br label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit14

_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit14: ; preds = %bb.b, %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i13
  %i.i = add nuw i64 %.01126, 1                   ; 2 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3
  %i.p = icmp ult i64 %i.i, %i.o
  br i1 %i.p, label %.lr.ph, label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit, !llvm.loop !54

bb.c:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  %.not.i15 = icmp eq ptr %.sroa.019.025, null
  br i1 %.not.i15, label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit17, label %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i16

_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i16: ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.019.025) #20
  br label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit17

_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit17: ; preds = %bb.c, %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i16
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss17IndexPreTransform13reverse_chainElPKfPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader, label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.k = and i64 %i.h, 2147483647
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit23
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i

_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i: ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #20
  br label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %._crit_edge, %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit23
  %indvars.iv = phi i64 [ %i.k, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit23 ] ; 4 uses
  %.040 = phi ptr [ %2, %.lr.ph.preheader ], [ %i.w, %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit23 ]
  %.sroa.032.039 = phi ptr [ null, %.lr.ph.preheader ], [ %i.y, %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit23 ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.l = icmp eq i64 %indvars.iv.next, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr [8 x i8], ptr %.pre, i64 %indvars.iv
  %4 = getelementptr i8, ptr %i.m, i64 -8
  %i.n = load ptr, ptr %4, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !89
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %1, %i.q                     ; 2 uses
  %i.s = icmp ugt i64 %i.r, 4611686018427387903
  %i.t = shl i64 %i.r, 2
  %i.u = select i1 %i.s, i64 -1, i64 %i.t
  %i.v = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #22
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.w = phi ptr [ %3, %.lr.ph ], [ %i.v, %bb.b ] ; 4 uses
  %i.x = icmp eq ptr %i.w, %3
  %i.y = select i1 %i.x, ptr null, ptr %i.w       ; 5 uses
  %i.z = getelementptr [8 x i8], ptr %.pre, i64 %indvars.iv
  %5 = getelementptr i8, ptr %i.z, i64 -8
  %i.aa = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(17) %i.aa, i64 noundef %1, ptr noundef %.040, ptr noundef %i.w)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not.i21 = icmp eq ptr %.sroa.032.039, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit23, label %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i22

_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i22: ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.032.039) #20
  br label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit23

_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit23: ; preds = %bb.d, %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i22
  %i.ae = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !llvm.loop !93

bb.e:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit26

bb.f:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i24 = icmp eq ptr %i.y, null
  br i1 %.not.i24, label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit26, label %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i25

_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i25: ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #20
  br label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit26

_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit26: ; preds = %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i25, %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.af, %bb.e ], [ %i.ag, %bb.f ], [ %i.ag, %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i25 ]
  %.not.i27 = icmp eq ptr %.sroa.032.039, null
  br i1 %.not.i27, label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit29, label %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i28

_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i28: ; preds = %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit26
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.032.039) #20
  br label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit29

_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit29: ; preds = %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit26, %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i28
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal void @_ZN5faiss12_GLOBAL__N_128PreTransformDistanceComputer9set_queryEPKf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i, label %_ZNK5faiss17IndexPreTransform11apply_chainElPKf.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit14.i
  %i.g = phi ptr [ %i.m, %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit14.i ], [ %i.f, %bb.a ]
  %.027.i = phi ptr [ %i.j, %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit14.i ], [ %1, %bb.a ]
  %.01126.i = phi i64 [ %i.k, %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit14.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.019.025.i = phi ptr [ %i.j, %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit14.i ], [ null, %bb.a ] ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.01126.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.j = invoke noundef ptr @_ZNK5faiss15VectorTransform5applyElPKf(ptr noundef nonnull align 8 dereferenceable(17) %i.i, i64 noundef 1, ptr noundef %.027.i)
          to label %bb.b unwind label %bb.c       ; 6 uses

bb.b:                                             ; preds = %.lr.ph.i
  %.not.i12.i = icmp eq ptr %.sroa.019.025.i, null
  br i1 %.not.i12.i, label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit14.i, label %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i13.i

_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i13.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.019.025.i) #20
  br label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit14.i

_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit14.i: ; preds = %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i13.i, %bb.b
  %i.k = add nuw i64 %.01126.i, 1                 ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = icmp ult i64 %i.k, %i.q
  br i1 %i.r, label %.lr.ph.i, label %_ZNK5faiss17IndexPreTransform11apply_chainElPKf.exit, !llvm.loop !54

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.not.i15.i = icmp eq ptr %.sroa.019.025.i, null
  br i1 %.not.i15.i, label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit17.i, label %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i16.i

_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i16.i: ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.019.025.i) #20
  br label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit17.i

_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit17.i: ; preds = %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i16.i, %bb.c
  resume { ptr, i32 } %i.s

_ZNK5faiss17IndexPreTransform11apply_chainElPKf.exit: ; preds = %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit14.i
  %i.t = icmp eq ptr %i.j, %1
  br i1 %i.t, label %_ZNK5faiss17IndexPreTransform11apply_chainElPKf.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK5faiss17IndexPreTransform11apply_chainElPKf.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !94   ; 2 uses
  store ptr %i.j, ptr %i.u, align 8, !tbaa !94
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNK5faiss17IndexPreTransform11apply_chainElPKf.exit.thread, label %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #20
  br label %_ZNK5faiss17IndexPreTransform11apply_chainElPKf.exit.thread

_ZNK5faiss17IndexPreTransform11apply_chainElPKf.exit.thread: ; preds = %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %bb.d, %_ZNK5faiss17IndexPreTransform11apply_chainElPKf.exit, %bb.a
  %.lcssa.sink = phi ptr [ %1, %_ZNK5faiss17IndexPreTransform11apply_chainElPKf.exit ], [ %1, %bb.a ], [ %i.j, %bb.d ], [ %i.j, %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !81   ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %.lcssa.sink)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN5faiss12_GLOBAL__N_128PreTransformDistanceComputerclEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef float %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1)
  ret float %i.f
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5faiss12_GLOBAL__N_128PreTransformDistanceComputer17distances_batch_4EllllRfS2_S2_S2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef float @_ZN5faiss12_GLOBAL__N_128PreTransformDistanceComputer13symmetric_disEll(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef float %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1, i64 noundef %2)
  ret float %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5faiss12_GLOBAL__N_128PreTransformDistanceComputerD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5faiss12_GLOBAL__N_128PreTransformDistanceComputerE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i

_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #20
  br label %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_KfEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 3 uses
  %.not.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN5faiss16DistanceComputerESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5faiss16DistanceComputerEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5faiss16DistanceComputerEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #19, !inline_history !95
  br label %_ZNSt10unique_ptrIN5faiss16DistanceComputerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5faiss16DistanceComputerESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_KfSt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN5faiss16DistanceComputerEEclEPS1_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5faiss12_GLOBAL__N_128PreTransformDistanceComputerD0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5faiss12_GLOBAL__N_128PreTransformDistanceComputerE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
end_hunk_0
