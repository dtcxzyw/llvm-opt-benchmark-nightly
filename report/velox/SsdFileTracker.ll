Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SsdFileTracker?download=true
inline.NumInlined: 262
inline.NumDeleted: 111
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKSt6vectorIiSaIiEE:bb.a
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv46
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !13
  %i.dx = fcmp ugt double %i.dw, %i.ab
  br i1 %i.dx, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not.i = icmp eq ptr %i.dp, %i.do
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dy = trunc nuw nsw i64 %indvars.iv46 to i32
  store i32 %i.dy, ptr %i.dp, align 4, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 2 uses
  store ptr %i.dz, ptr %i.af, align 8, !tbaa !20
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.y:                                             ; preds = %bb.w
  %i.ea = ptrtoint ptr %i.do to i64
  %i.eb = ptrtoint ptr %i.dn to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 6 uses
  %i.ed = icmp eq i64 %i.ec, 9223372036854775804
  br i1 %i.ed, label %bb.z, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.z
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.y
  %i.ee = ashr exact i64 %i.ec, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ee, i64 1)
  %i.ef = add nsw i64 %.sroa.speculated.i.i.i, %i.ee ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.ee
  %i.eh = tail call i64 @llvm.umin.i64(i64 %i.ef, i64 2305843009213693951)
  %i.ei = select i1 %i.eg, i64 2305843009213693951, i64 %i.eh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ei, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ej = shl nuw nsw i64 %i.ei, 2
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #12
          to label %.noexc24 unwind label %.loopexit ; 5 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %i.ec ; 2 uses
  %i.em = trunc nuw nsw i64 %indvars.iv46 to i32
  store i32 %i.em, ptr %i.el, align 4, !tbaa !18
  %i.en = icmp sgt i64 %i.ec, 0
  br i1 %i.en, label %bb.aa, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.aa:                                            ; preds = %.noexc24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ek, ptr align 4 %i.dn, i64 %i.ec, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.aa, %.noexc24
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ec) #13
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ab, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ek, ptr %0, align 8, !tbaa !17
  store ptr %i.eo, ptr %i.af, align 8, !tbaa !20
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.ei ; 2 uses
  store ptr %i.ep, ptr %i.ag, align 8, !tbaa !21
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !40
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.x, %bb.u, %bb.v
  %i.eq = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.dm, %bb.x ], [ %i.dm, %bb.u ], [ %i.dm, %bb.v ] ; 2 uses
  %.pre49 = phi ptr [ %i.ek, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.dn, %bb.x ], [ %i.dn, %bb.u ], [ %i.dn, %bb.v ] ; 18 uses
  %i.er = phi ptr [ %i.ep, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.do, %bb.x ], [ %i.do, %bb.u ], [ %i.do, %bb.v ]
  %i.es = phi ptr [ %i.eo, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.dz, %bb.x ], [ %i.dp, %bb.u ], [ %i.dp, %bb.v ] ; 8 uses
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.et = load ptr, ptr %1, align 8, !tbaa !19    ; 2 uses
  %i.eu = ptrtoint ptr %i.eq to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = ashr exact i64 %i.ew, 3
  %i.ey = icmp ugt i64 %i.ex, %indvars.iv.next47
  br i1 %i.ey, label %bb.u, label %._crit_edge43, !llvm.loop !39

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EvT_SE_T0_.exit": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i21.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_T0_.exit.i.i.i.i", %bb.h, %bb.o, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_T0_.exit.i.i.i", %._crit_edge43
  %i.ez = phi ptr [ %i.ah, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_T0_.exit.i.i.i.i" ], [ %i.af, %bb.h ], [ %i.ah, %._crit_edge43 ], [ %i.ah, %bb.o ], [ %i.ah, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_T0_.exit.i.i.i" ], [ %i.ah, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i21.i.i.i ] ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !20 ; 2 uses
  %i.fb = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = ashr exact i64 %i.fe, 2                 ; 4 uses
  %i.fg = trunc i64 %i.ff to i32
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.fg)
  %i.fh = sext i32 %.sroa.speculated to i64       ; 4 uses
  %i.fi = icmp ult i64 %i.ff, %i.fh
  br i1 %i.fi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EvT_SE_T0_.exit"
  %i.fj = sub nuw nsw i64 %i.fh, %i.ff
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.fj)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit unwind label %bb.af

bb.ad:                                            ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EvT_SE_T0_.exit"
  %i.fk = icmp ugt i64 %i.ff, %i.fh
  br i1 %i.fk, label %bb.ae, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.ae:                                            ; preds = %bb.ad
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fh ; 2 uses
  %.not.i.i = icmp eq ptr %i.fa, %i.fl
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ae
  store ptr %i.fl, ptr %i.ez, align 8, !tbaa !20
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.af:                                            ; preds = %bb.ac
  %i.fm = landingpad { ptr, i32 }
          cleanup
  %.pre50 = load ptr, ptr %0, align 8, !tbaa !17
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.af
  %i.fn = phi ptr [ %.pre50, %bb.af ], [ %i.dn, %.loopexit ], [ %i.dn, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.fm, %bb.af ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i26 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !21
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.fn to i64
  %i.fs = sub i64 %i.fq, %i.fr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.fs) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ag, %bb.ah
  resume { ptr, i32 } %.pn

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.ac, %bb.ad, %bb.ae, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %._crit_edge.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #1 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #1 align 2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_T0_T1_"(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %.fr28 = freeze ptr %1                          ; 3 uses
  %.fr27 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr27 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr28 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr27, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph59

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEET_SH_SH_T0_.exit"
  %i.h = icmp eq i64 %i.ej, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph59, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i26.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.fy, %bb.b ] ; 3 uses
  %storemerge24.lcssa = phi ptr [ %.fr28, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i26.lcssa, 2           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i26.lcssa, 4
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %i.p
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.az, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.09.us.i.i.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !18   ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i
  %.val.val.i.us.i.i.i = load ptr, ptr %3, align 8, !tbaa !19 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us.i.i.i
  %.038.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %spec.select.i.us.i.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.038.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.y
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !18
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !18
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !13
  %i.af = sext i32 %i.ab to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !13
  %i.ai = fcmp olt double %i.ae, %i.ah
  %spec.select.i.us.i.i.i = select i1 %i.ai, i64 %i.y, i64 %i.w ; 4 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %spec.select.i.us.i.i.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !18
  %i.al = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.038.i.us.i.i.i
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !18
  %i.am = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.am, label %bb.c, label %._crit_edge.i.us.i.i.i, !llvm.loop !43

._crit_edge.i.us.i.i.i:                           ; preds = %bb.c
  %i.an = sext i32 %i.t to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0911.i.i.us.i.i.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !18 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !13
  %i.av = fcmp olt double %i.au, %i.ap
  br i1 %i.av, label %bb.e, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i"

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.010.i.i.us.i.i.i
  store i32 %i.ar, ptr %i.aw, align 4, !tbaa !18
  %i.ax = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.ax, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i", !llvm.loop !44

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i": ; preds = %bb.e, %bb.d, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.e ], [ %.010.i.i.us.i.i.i, %bb.d ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.us.i.i.i
  store i32 %i.t, ptr %i.ay, align 4, !tbaa !18
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.az = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !45

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.ck, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.09.i.i.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !18 ; 2 uses
  %i.bc = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.bc, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i
  %.val.val.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !19 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %.09.i.i.i, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.f ] ; 2 uses
  %i.bd = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.be = add i64 %i.bd, 2                        ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.be
  %i.bg = or disjoint i64 %i.bd, 1                ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.bg
  %i.bi = load i32, ptr %i.bf, align 4, !tbaa !18
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !18
  %i.bk = sext i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !13
  %i.bn = sext i32 %i.bj to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !13
  %i.bq = fcmp olt double %i.bm, %i.bp
  %spec.select.i.i.i.i = select i1 %i.bq, i64 %i.bg, i64 %i.be ; 4 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %spec.select.i.i.i.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !18
  %i.bt = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.038.i.i.i.i
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !18
  %i.bu = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bu, label %bb.f, label %._crit_edge.i.i.i.i, !llvm.loop !43

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %bb.f ] ; 2 uses
  %i.bv = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bw = load i32, ptr %i.q, align 4, !tbaa !18
  store i32 %i.bw, ptr %i.r, align 4, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.g ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bx = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h
  %.val.val.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !19 ; 2 uses
  %i.by = sext i32 %i.bb to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.j ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0911.i.i.i.i.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !18 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !13
  %i.cg = fcmp olt double %i.cf, %i.ca
  br i1 %i.cg, label %bb.j, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i"

bb.j:                                             ; preds = %bb.i
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.010.i.i.i.i.i
  store i32 %i.cc, ptr %i.ch, align 4, !tbaa !18
  %i.ci = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.ci, label %bb.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i", !llvm.loop !44

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i": ; preds = %bb.j, %bb.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.h ], [ %.010.i.i.i.i.i, %bb.i ], [ %.0911.i.i.i.i.i, %bb.j ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.bb, ptr %i.cj, align 4, !tbaa !18
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.ck = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !45

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_T0_SI_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_T0_SI_T1_T2_.exit.i.i.i"
  %4 = icmp sgt i64 %.fr.i.i.i26.lcssa, 4
  br i1 %4, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.cl, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_RT0_.exit.i.i" ], [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_RT0_.exit.i.i" ]
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -4 ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !18 ; 2 uses
  %i.cn = load i32, ptr %.fr27, align 4, !tbaa !18
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !18
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.co, %i.a                     ; 3 uses
  %i.cq = ashr exact i64 %i.cp, 2                 ; 3 uses
  %i.cr = add nsw i64 %i.cq, -1
  %i.cs = lshr i64 %i.cr, 1
  %i.ct = icmp sgt i64 %i.cq, 2
  br i1 %i.ct, label %.lr.ph.i.i.i18.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i18.i:                                 ; preds = %.lr.ph.i9.i
  %.val.val.i.i.i19.i = load ptr, ptr %3, align 8, !tbaa !19 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i18.i
  %.038.i.i.i20.i = phi i64 [ 0, %.lr.ph.i.i.i18.i ], [ %spec.select.i.i.i21.i, %bb.k ] ; 2 uses
  %i.cu = shl i64 %.038.i.i.i20.i, 1              ; 2 uses
  %i.cv = add i64 %i.cu, 2                        ; 2 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.cv
  %i.cx = or disjoint i64 %i.cu, 1                ; 2 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.cx
  %i.cz = load i32, ptr %i.cw, align 4, !tbaa !18
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !18
  %i.db = sext i32 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i19.i, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !13
  %i.de = sext i32 %i.da to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i19.i, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !13
  %i.dh = fcmp olt double %i.dd, %i.dg
  %spec.select.i.i.i21.i = select i1 %i.dh, i64 %i.cx, i64 %i.cv ; 4 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %spec.select.i.i.i21.i
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !18
  %i.dk = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.038.i.i.i20.i
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !18
  %i.dl = icmp slt i64 %spec.select.i.i.i21.i, %i.cs
  br i1 %i.dl, label %bb.k, label %._crit_edge.i.i.i10.i, !llvm.loop !43

._crit_edge.i.i.i10.i:                            ; preds = %bb.k, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i21.i, %bb.k ] ; 5 uses
  %i.dm = and i64 %i.cp, 4
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.do = add nsw i64 %i.cq, -2
  %i.dp = ashr exact i64 %i.do, 1
  %i.dq = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.dp
  br i1 %i.dq, label %.thread.i.i.i, label %bb.m

.thread.i.i.i:                                    ; preds = %bb.l
  %i.dr = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.ds = or disjoint i64 %i.dr, 1                ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !18
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i11.i
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !18
  br label %.lr.ph.i.i.i.i13.i

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.m, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.ds, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.m ]
  %.val.val.i.i.i.i14.i = load ptr, ptr %3, align 8, !tbaa !19 ; 2 uses
  %i.dw = sext i32 %i.cm to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i14.i, i64 %i.dw
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !13
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i15.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.o ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0911.i.i78.i.i.i
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !18 ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i14.i, i64 %i.eb
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !13
  %i.ee = fcmp olt double %i.ed, %i.dy
  br i1 %i.ee, label %bb.o, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_RT0_.exit.i.i"

bb.o:                                             ; preds = %bb.n
  %i.ef = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.010.i.i.i.i15.i
  store i32 %i.ea, ptr %i.ef, align 4, !tbaa !18
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_RT0_.exit.i.i", label %bb.n, !llvm.loop !44

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_RT0_.exit.i.i": ; preds = %bb.o, %bb.n, %bb.m
  %.0.lcssa.i.i.i.i17.i = phi i64 [ 0, %bb.m ], [ %.010.i.i.i.i15.i, %bb.n ], [ 0, %bb.o ]
  %i.eg = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i17.i
  store i32 %i.cm, ptr %i.eg, align 4, !tbaa !18
  %i.eh = icmp sgt i64 %i.cp, 4
  br i1 %i.eh, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_T0_.exit", !llvm.loop !46

.lr.ph59:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2458 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 3 uses
  %.02557 = phi i64 [ %i.ej, %bb.b ], [ %2, %.lr.ph ]
  %i.ei = phi i64 [ %i.fz, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ej = add nsw i64 %.02557, -1                 ; 3 uses
  %.val = load ptr, ptr %3, align 8, !tbaa !19    ; 6 uses
  %i.ek = lshr i64 %i.ei, 1
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %i.ek ; 3 uses
  %i.em = getelementptr inbounds i8, ptr %storemerge2458, i64 -4 ; 3 uses
  %i.en = load i32, ptr %i.f, align 4, !tbaa !18  ; 3 uses
  %i.eo = load i32, ptr %i.el, align 4, !tbaa !18 ; 3 uses
  %i.ep = sext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ep
  %i.er = load double, ptr %i.eq, align 8, !tbaa !13 ; 3 uses
  %i.es = sext i32 %i.eo to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !13 ; 3 uses
  %i.ev = fcmp olt double %i.er, %i.eu
  %i.ew = load i32, ptr %i.em, align 4, !tbaa !18 ; 3 uses
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ex
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !13 ; 4 uses
  br i1 %i.ev, label %bb.p, label %bb.u

bb.p:                                             ; preds = %.lr.ph59
  %i.fa = fcmp olt double %i.eu, %i.ez
  br i1 %i.fa, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fb = load i32, ptr %.fr27, align 4, !tbaa !18
  store i32 %i.eo, ptr %.fr27, align 4, !tbaa !18
  store i32 %i.fb, ptr %i.el, align 4, !tbaa !18
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.r:                                             ; preds = %bb.p
  %i.fc = fcmp olt double %i.er, %i.ez
  %i.fd = load i32, ptr %.fr27, align 4, !tbaa !18 ; 2 uses
  br i1 %i.fc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.ew, ptr %.fr27, align 4, !tbaa !18
  store i32 %i.fd, ptr %i.em, align 4, !tbaa !18
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  store i32 %i.en, ptr %.fr27, align 4, !tbaa !18
  store i32 %i.fd, ptr %i.f, align 4, !tbaa !18
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.u:                                             ; preds = %.lr.ph59
  %i.fe = fcmp olt double %i.er, %i.ez
  br i1 %i.fe, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ff = load i32, ptr %.fr27, align 4, !tbaa !18
  store i32 %i.en, ptr %.fr27, align 4, !tbaa !18
  store i32 %i.ff, ptr %i.f, align 4, !tbaa !18
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.w:                                             ; preds = %bb.u
  %i.fg = fcmp olt double %i.eu, %i.ez
  %i.fh = load i32, ptr %.fr27, align 4, !tbaa !18 ; 2 uses
  br i1 %i.fg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 %i.ew, ptr %.fr27, align 4, !tbaa !18
  store i32 %i.fh, ptr %i.em, align 4, !tbaa !18
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.y:                                             ; preds = %bb.w
  store i32 %i.eo, ptr %.fr27, align 4, !tbaa !18
  store i32 %i.fh, ptr %i.el, align 4, !tbaa !18
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader": ; preds = %bb.y, %bb.x, %bb.v, %bb.t, %bb.s, %bb.q
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_SH_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_SH_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader", %bb.ab
  %.sroa.011.0.i.i = phi ptr [ %.sroa.011.1.i.i, %bb.ab ], [ %storemerge2458, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  %.sroa.014.0.i.i = phi ptr [ %i.fr, %bb.ab ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  %i.fi = load i32, ptr %.fr27, align 4, !tbaa !18
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.fj
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !13 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_SH_T0_.exit.i"
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_SH_T0_.exit.i" ], [ %i.fr, %bb.z ] ; 8 uses
  %i.fm = load i32, ptr %.sroa.014.1.i.i, align 4, !tbaa !18 ; 2 uses
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.fn
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !13
  %i.fq = fcmp olt double %i.fp, %i.fl
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 4 ; 2 uses
  br i1 %i.fq, label %bb.z, label %.preheader.i.i, !llvm.loop !47

.preheader.i.i:                                   ; preds = %bb.z, %.preheader.i.i
  %.sroa.011.0.pn.i.i = phi ptr [ %.sroa.011.1.i.i, %.preheader.i.i ], [ %.sroa.011.0.i.i, %bb.z ]
  %.sroa.011.1.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.pn.i.i, i64 -4 ; 5 uses
  %i.fs = load i32, ptr %.sroa.011.1.i.i, align 4, !tbaa !18 ; 2 uses
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ft
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !13
  %i.fw = fcmp olt double %i.fl, %i.fv
  br i1 %i.fw, label %.preheader.i.i, label %bb.aa, !llvm.loop !48

bb.aa:                                            ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.011.1.i.i
  br i1 %.not.i.i, label %bb.ab, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEET_SH_SH_T0_.exit"

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.fs, ptr %.sroa.014.1.i.i, align 4, !tbaa !18
  store i32 %i.fm, ptr %.sroa.011.1.i.i, align 4, !tbaa !18
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_SH_T0_.exit.i", !llvm.loop !49

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEET_SH_SH_T0_.exit": ; preds = %bb.aa
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2458, i64 noundef %i.ej, ptr nonnull %3)
  %i.fx = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.fy = sub i64 %i.fx, %i.a                     ; 2 uses
  %i.fz = ashr exact i64 %i.fy, 2                 ; 2 uses
  %i.ga = icmp sgt i64 %i.fz, 16
  br i1 %i.ga, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_T0_.exit", !llvm.loop !42

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEET_SH_SH_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_SH_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox5cache14SsdFileTracker22findEvictionCandidatesEiiRKS5_E3$_0EEEvT_SH_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !18
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !20
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #11
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #12 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !18
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !18
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #13
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noreturn }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 double", !8, i64 0}
!10 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!11 = !{!9, !9, i64 0}
!12 = !{!"double", !4, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"p1 int", !8, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!16, !15, i64 0}
!18 = !{!5, !5, i64 0}
!19 = !{!10, !9, i64 0}
!20 = !{!16, !15, i64 8}
!21 = !{!16, !15, i64 16}
!22 = distinct !{!22, !31, !32}
!23 = distinct !{!23, !31, !32}
!24 = distinct !{!24, !32, !31}
!25 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !10, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !25, i64 0}
!27 = !{!"_ZTSSt6vectorIdSaIdEE", !26, i64 0}
!28 = !{!"long", !4, i64 0}
!29 = !{!"_ZTSN8facebook5velox5cache14SsdFileTrackerE", !27, i64 0, !28, i64 24}
!30 = !{!29, !28, i64 24}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"branch_weights", i32 4, i32 12}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
!40 = !{!10, !9, i64 8}
!41 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
end_hunk_0
