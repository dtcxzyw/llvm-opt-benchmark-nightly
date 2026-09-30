Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/constraint_gpu_helpers?download=true
inline.NumInlined: 449
inline.NumDeleted: 280
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_Z32isNumCoupledConstraintsSupportedRK10gmx_mtop_ti:bb.a
bb.a:
  %2 = alloca %"class.gmx::ListOfLists", align 8  ; 10 uses
  %3 = alloca %"class.std::vector", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %.not3644 = icmp eq ptr %i.b, %i.d
  br i1 %.not3644, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZN3gmx11ListOfListsI25AtomsAdjacencyListElementED2Ev.exit, %.lr.ph48
  %.sroa.033.045 = phi ptr [ %i.b, %.lr.ph48 ], [ %i.am, %_ZN3gmx11ListOfListsI25AtomsAdjacencyListElementED2Ev.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.033.045, i64 1568
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.033.045, i64 1576
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.033.045, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !101
  call void @_Z27constructAtomsAdjacencyListiN3gmx8ArrayRefIKiEE(ptr dead_on_unwind nonnull writable sret(%"class.gmx::ListOfLists") align 8 %2, i32 noundef %i.s, ptr %i.k, ptr %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_Z26countNumCoupledConstraintsN3gmx8ArrayRefIKiEERKNS_11ListOfListsI25AtomsAdjacencyListElementEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, ptr %i.k, ptr %i.q, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %3, align 8, !tbaa !26     ; 5 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %.not3739 = icmp eq ptr %i.t, %i.u
  br i1 %.not3739, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN3gmx11ListOfListsI25AtomsAdjacencyListElementED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.v

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.sroa.023.040 = phi ptr [ %i.x, %.lr.ph ], [ %i.t, %bb.c ] ; 2 uses
  %i.w = load i32, ptr %.sroa.023.040, align 4, !tbaa !16
  %.not.not = icmp sle i32 %i.w, %1               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.023.040, i64 4 ; 2 uses
  %.not37 = icmp ne ptr %i.x, %i.u
  %or.cond59.not = select i1 %.not.not, i1 %.not37, i1 false
  br i1 %or.cond59.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.not37.lcssa = phi i1 [ true, %bb.c ], [ %.not.not, %.lr.ph ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.t to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ab) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !12  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI25AtomsAdjacencyListElementSaIS0_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #21
  br label %_ZNSt6vectorI25AtomsAdjacencyListElementSaIS0_EED2Ev.exit.i

_ZNSt6vectorI25AtomsAdjacencyListElementSaIS0_EED2Ev.exit.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ah = load ptr, ptr %2, align 8, !tbaa !15    ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i1.i, label %_ZN3gmx11ListOfListsI25AtomsAdjacencyListElementED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI25AtomsAdjacencyListElementSaIS0_EED2Ev.exit.i
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.al) #21
  br label %_ZN3gmx11ListOfListsI25AtomsAdjacencyListElementED2Ev.exit

_ZN3gmx11ListOfListsI25AtomsAdjacencyListElementED2Ev.exit: ; preds = %_ZNSt6vectorI25AtomsAdjacencyListElementSaIS0_EED2Ev.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.033.045, i64 2408 ; 2 uses
  %.not36 = icmp ne ptr %i.am, %i.d
  %or.cond.not = select i1 %.not37.lcssa, i1 %.not36, i1 false
  br i1 %or.cond.not, label %bb.b, label %._crit_edge49

._crit_edge49:                                    ; preds = %_ZN3gmx11ListOfListsI25AtomsAdjacencyListElementED2Ev.exit, %bb.a
  %.not36.lcssa = phi i1 [ true, %bb.a ], [ %.not37.lcssa, %_ZN3gmx11ListOfListsI25AtomsAdjacencyListElementED2Ev.exit ]
  ret i1 %.not36.lcssa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx11ListOfListsI25AtomsAdjacencyListElementED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI25AtomsAdjacencyListElementSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #21
  br label %_ZNSt6vectorI25AtomsAdjacencyListElementSaIS0_EED2Ev.exit

_ZNSt6vectorI25AtomsAdjacencyListElementSaIS0_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI25AtomsAdjacencyListElementSaIS0_EED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorI25AtomsAdjacencyListElementSaIS0_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z22computeTotalNumSettlesRK10gmx_mtop_t(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN15InteractionListD2Ev.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ao, %_ZN15InteractionListD2Ev.exit ]
  ret i32 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %_ZN15InteractionListD2Ev.exit
  %i.e = phi ptr [ %i.as, %_ZN15InteractionListD2Ev.exit ], [ %i.d, %bb.a ]
  %i.f = phi i64 [ %i.aq, %_ZN15InteractionListD2Ev.exit ], [ 0, %bb.a ]
  %.030 = phi i32 [ %i.ao, %_ZN15InteractionListD2Ev.exit ], [ 0, %bb.a ]
  %.0929 = phi i32 [ %i.ap, %_ZN15InteractionListD2Ev.exit ], [ 0, %bb.a ]
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2064), align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw [2408 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1616 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1624 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !15   ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = icmp ugt i64 %i.o, 9223372036854775804
  br i1 %i.p, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !23

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !26  ; 3 uses
  %.pre38 = load ptr, ptr %i.j, align 8, !tbaa !26 ; 2 uses
  %.pre39 = ptrtoint ptr %.pre38 to i64
  %.pre40 = ptrtoint ptr %.pre to i64
  %i.r = icmp eq ptr %.pre38, %.pre
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %.pre-phi41 = phi i64 [ %.pre40, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.n, %.lr.ph ]
  %.pre-phi = phi i64 [ %.pre39, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.m, %.lr.ph ]
  %.not.i.i.i.i = phi i1 [ %i.r, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ true, %.lr.ph ] ; 2 uses
  %i.s = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.l, %.lr.ph ] ; 2 uses
  %i.t = phi ptr [ %i.q, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %.lr.ph ] ; 8 uses
  %i.u = sub i64 %.pre-phi, %.pre-phi41           ; 10 uses
  %i.v = icmp sgt i64 %i.u, 4
  br i1 %i.v, label %bb.d, label %bb.e, !prof !60

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.t, ptr align 4 %i.s, i64 %i.u, i1 false)
  br label %_ZN15InteractionListC2ERKS_.exit

bb.e:                                             ; preds = %bb.c
  %i.w = icmp eq i64 %i.u, 4
  br i1 %i.w, label %_ZN15InteractionListC2ERKS_.exit.thread, label %_ZN15InteractionListC2ERKS_.exit

_ZN15InteractionListC2ERKS_.exit:                 ; preds = %bb.d, %bb.e
  br i1 %.not.i.i.i.i, label %.thread, label %bb.f

_ZN15InteractionListC2ERKS_.exit.thread:          ; preds = %bb.e
  %i.x = load i32, ptr %i.s, align 4, !tbaa !16
  store i32 %i.x, ptr %i.t, align 4, !tbaa !16
  br i1 %.not.i.i.i.i, label %.thread, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i

.thread:                                          ; preds = %_ZN15InteractionListC2ERKS_.exit.thread, %_ZN15InteractionListC2ERKS_.exit
  %i.y = getelementptr inbounds i8, ptr null, i64 %i.u
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %_ZN15InteractionListC2ERKS_.exit
  %i.z = icmp ugt i64 %i.u, 9223372036854775804
  br i1 %i.z, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !61

.noexc.i.i:                                       ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZN15InteractionListC2ERKS_.exit.thread, %bb.f
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #19
          to label %.noexc11 unwind label %.loopexit ; 6 uses

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.u ; 3 uses
  %1 = icmp samesign ugt i64 %i.u, 4
  br i1 %1, label %bb.g, label %bb.h, !prof !62

bb.g:                                             ; preds = %.noexc11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %i.t, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.h:                                             ; preds = %.noexc11
  %i.ac = icmp eq i64 %i.u, 4
  br i1 %i.ac, label %bb.i, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = load i32, ptr %i.t, align 4, !tbaa !16
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.i, %bb.h, %bb.g, %.thread
  %i.ae = phi ptr [ %i.ab, %bb.g ], [ %i.ab, %bb.h ], [ %i.ab, %bb.i ], [ %i.y, %.thread ]
  %i.af = phi ptr [ %i.aa, %bb.g ], [ %i.aa, %bb.h ], [ %i.aa, %bb.i ], [ null, %.thread ] ; 3 uses
  %i.ag = add nsw i32 %i.g, 1
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = ashr exact i64 %i.aj, 2
  %i.al = sext i32 %i.ag to i64
  %i.am = udiv i64 %i.ak, %i.al
  %i.an = trunc i64 %i.am to i32
  %i.ao = add i32 %.030, %i.an                    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit, %bb.j
  %.not.i.i.i.i12 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i12, label %_ZN15InteractionListD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.o) #21
  br label %_ZN15InteractionListD2Ev.exit

_ZN15InteractionListD2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.k
  %i.ap = add i32 %.0929, 1                       ; 2 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 2408
  %i.ax = icmp ugt i64 %i.aw, %i.aq
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !102

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i.i13 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i13, label %_ZN15InteractionListD2Ev.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.o) #21
  br label %_ZN15InteractionListD2Ev.exit14

_ZN15InteractionListD2Ev.exit14:                  ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define { <2 x float>, <2 x float> } @_Z21getSettleTopologyDataRK10gmx_mtop_t(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %.not196 = icmp eq ptr %i.c, %i.d
  br i1 %.not196, label %._crit_edge182.thread, label %.lr.ph181

._crit_edge182:                                   ; preds = %_ZN15InteractionListD2Ev.exit
  %i.e = icmp eq ptr %i.ax, %i.ay
  %i.f = fcmp ogt float %.174.lcssa261, 0.000000e+00
  br i1 %i.f, label %bb.s, label %._crit_edge182.thread

.lr.ph181:                                        ; preds = %bb.a, %_ZN15InteractionListD2Ev.exit
  %i.g = phi ptr [ %i.ay, %_ZN15InteractionListD2Ev.exit ], [ %i.d, %bb.a ]
  %i.h = phi i64 [ %i.aw, %_ZN15InteractionListD2Ev.exit ], [ 0, %bb.a ] ; 2 uses
  %.069179 = phi i32 [ %i.av, %_ZN15InteractionListD2Ev.exit ], [ 0, %bb.a ]
  %.070178 = phi float [ %.171.lcssa263, %_ZN15InteractionListD2Ev.exit ], [ -1.000000e+00, %bb.a ] ; 3 uses
  %.073177 = phi float [ %.174.lcssa261, %_ZN15InteractionListD2Ev.exit ], [ -1.000000e+00, %bb.a ] ; 3 uses
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2064), align 8, !tbaa !19
  %i.j = add nsw i32 %i.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [2408 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1616 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1624 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !15   ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph181
  %i.s = icmp ugt i64 %i.r, 9223372036854775804
  br i1 %i.s, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !23

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #19
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !26  ; 3 uses
  %.pre224 = load ptr, ptr %i.m, align 8, !tbaa !26 ; 2 uses
  %.pre230 = ptrtoint ptr %.pre224 to i64
  %.pre232 = ptrtoint ptr %.pre to i64
  %i.u = icmp eq ptr %.pre224, %.pre
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph181
  %.pre-phi233 = phi i64 [ %.pre232, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.q, %.lr.ph181 ]
  %.pre-phi231 = phi i64 [ %.pre230, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.p, %.lr.ph181 ]
  %.not.i.i.i.i = phi i1 [ %i.u, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ true, %.lr.ph181 ] ; 2 uses
  %i.v = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.o, %.lr.ph181 ] ; 2 uses
  %i.w = phi ptr [ %i.t, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %.lr.ph181 ] ; 8 uses
  %i.x = sub i64 %.pre-phi231, %.pre-phi233       ; 12 uses
  %i.y = icmp sgt i64 %i.x, 4
  br i1 %i.y, label %bb.d, label %bb.e, !prof !60

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.w, ptr align 4 %i.v, i64 %i.x, i1 false)
  br label %_ZN15InteractionListC2ERKS_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 4
  br i1 %i.z, label %_ZN15InteractionListC2ERKS_.exit.thread, label %_ZN15InteractionListC2ERKS_.exit

_ZN15InteractionListC2ERKS_.exit:                 ; preds = %bb.d, %bb.e
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread, label %bb.f

_ZN15InteractionListC2ERKS_.exit.thread:          ; preds = %bb.e
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !16
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !16
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i

bb.f:                                             ; preds = %_ZN15InteractionListC2ERKS_.exit
  %i.ab = icmp ugt i64 %i.x, 9223372036854775804
  br i1 %i.ab, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !61

.noexc.i.i:                                       ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZN15InteractionListC2ERKS_.exit.thread, %bb.f
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #19
          to label %.noexc83 unwind label %.loopexit ; 4 uses

.noexc83:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %2 = icmp samesign ugt i64 %i.x, 4
  br i1 %2, label %bb.g, label %bb.h, !prof !62

bb.g:                                             ; preds = %.noexc83
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr align 4 %i.w, i64 %i.x, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.h:                                             ; preds = %.noexc83
  %i.ad = icmp eq i64 %i.x, 4
  br i1 %i.ad, label %bb.i, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = load i32, ptr %i.w, align 4, !tbaa !16
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.g, %bb.h, %bb.i
  %i.af = ashr exact i64 %i.x, 2                  ; 2 uses
  %i.ag = sext i32 %i.j to i64                    ; 2 uses
  %i.ah = udiv i64 %i.af, %i.ag
  %.not197 = icmp ult i64 %i.af, %i.ag
  br i1 %.not197, label %._crit_edge, label %.lr.ph

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread:         ; preds = %_ZN15InteractionListC2ERKS_.exit, %_ZN15InteractionListC2ERKS_.exit.thread
  %i.ai = ashr exact i64 %i.x, 2                  ; 2 uses
  %i.aj = sext i32 %i.j to i64                    ; 2 uses
  %i.ak = udiv i64 %i.ai, %i.aj
  %.not197264 = icmp ult i64 %i.ai, %i.aj
  br i1 %.not197264, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.al = phi i64 [ %i.ak, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread ], [ %i.ah, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ]
  %i.am = phi ptr [ null, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread ], [ %i.ac, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ] ; 5 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.ao = getelementptr inbounds nuw [2408 x i8], ptr %i.an, i64 %i.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !107 ; 3 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.n
  %i.ar = add i32 %.061174, 1                     ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = icmp ugt i64 %i.al, %i.as
  br i1 %i.at, label %bb.l, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %bb.j, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.au = phi ptr [ %i.ac, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %i.am, %bb.j ]
  %.171.lcssa262 = phi float [ %.070178, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %.272, %bb.j ]
  %.174.lcssa260 = phi float [ %.073177, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %spec.select, %bb.j ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.x) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread, %._crit_edge
  %.171.lcssa263 = phi float [ %.171.lcssa262, %._crit_edge ], [ %.070178, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread ] ; 3 uses
  %.174.lcssa261 = phi float [ %.174.lcssa260, %._crit_edge ], [ %.073177, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread ] ; 3 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i84, label %_ZN15InteractionListD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.r) #21
  br label %_ZN15InteractionListD2Ev.exit

_ZN15InteractionListD2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.k
  %i.av = add i32 %.069179, 1                     ; 2 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !58  ; 2 uses
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !59  ; 4 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 2408
  %i.bd = icmp ugt i64 %i.bc, %i.aw
  br i1 %i.bd, label %.lr.ph181, label %._crit_edge182, !llvm.loop !104

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit88

.loopexit.split-lp:                               ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit88

bb.l:                                             ; preds = %.lr.ph, %bb.j
  %.061174 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %bb.j ] ; 2 uses
  %.171173 = phi float [ %.070178, %.lr.ph ], [ %.272, %bb.j ] ; 2 uses
  %.174172 = phi float [ %.073177, %.lr.ph ], [ %spec.select, %bb.j ] ; 2 uses
  %i.be = mul i32 %.061174, %i.j                  ; 3 uses
  %i.bf = add i32 %i.be, 1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !16
  %i.bj = add i32 %i.be, 2
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !16
  %i.bn = sext i32 %i.bi to i64
  %i.bo = getelementptr inbounds [36 x i8], ptr %i.aq, i64 %i.bn
  %.sroa.017.0.copyload = load float, ptr %i.bo, align 4, !tbaa !109 ; 2 uses
  %i.bp = sext i32 %i.bm to i64
  %i.bq = getelementptr inbounds [36 x i8], ptr %i.aq, i64 %i.bp
  %.sroa.014.0.copyload = load float, ptr %i.bq, align 4, !tbaa !109 ; 3 uses
  %i.br = fcmp olt float %.174172, 0.000000e+00
  %spec.select = select i1 %i.br, float %.sroa.017.0.copyload, float %.174172 ; 3 uses
  %i.bs = fcmp olt float %.171173, 0.000000e+00
  %.272 = select i1 %i.bs, float %.sroa.014.0.copyload, float %.171173 ; 3 uses
  %i.bt = fcmp oeq float %spec.select, %.sroa.017.0.copyload
  br i1 %i.bt, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ21getSettleTopologyDataRK10gmx_mtop_tENK3$_0clEv", ptr noundef nonnull @.str.6, i32 noundef 198) #18
          to label %.noexc85 unwind label %.thread123

.noexc85:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bu = add i32 %i.be, 3
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !16
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [36 x i8], ptr %i.aq, i64 %i.by
  %.sroa.0.0.copyload = load float, ptr %i.bz, align 4, !tbaa !109
  %i.ca = fcmp oeq float %.sroa.014.0.copyload, %.sroa.0.0.copyload
  %i.cb = fcmp oeq float %.sroa.014.0.copyload, %.272
  %or.cond = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond, label %bb.j, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ21getSettleTopologyDataRK10gmx_mtop_tENK3$_0clEv", ptr noundef nonnull @.str.6, i32 noundef 201) #18
          to label %.noexc86 unwind label %bb.p

.noexc86:                                         ; preds = %bb.o
  unreachable

.thread123:                                       ; preds = %bb.m
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread123
  %.pn79126 = phi { ptr, i32 } [ %i.cc, %.thread123 ], [ %i.cd, %bb.p ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.x) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit88

_ZNSt6vectorIiSaIiEED2Ev.exit88:                  ; preds = %.loopexit, %.loopexit.split-lp, %bb.q
  %.pn79.pn = phi { ptr, i32 } [ %.pn79126, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i.i89 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i89, label %_ZN15InteractionListD2Ev.exit90, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit88
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.r) #21
  br label %_ZN15InteractionListD2Ev.exit90

._crit_edge182.thread:                            ; preds = %bb.a, %._crit_edge182
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ21getSettleTopologyDataRK10gmx_mtop_tENK3$_0clEv", ptr noundef nonnull @.str.6, i32 noundef 204) #18
  unreachable

bb.s:                                             ; preds = %._crit_edge182
  %i.ce = fcmp ogt float %.171.lcssa263, 0.000000e+00
  br i1 %i.ce, label %.preheader, label %bb.t

.preheader:                                       ; preds = %bb.s
  br i1 %i.e, label %._crit_edge194.thread, label %.lr.ph193

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ21getSettleTopologyDataRK10gmx_mtop_tENK3$_0clEv", ptr noundef nonnull @.str.6, i32 noundef 205) #18
  unreachable

._crit_edge194:                                   ; preds = %_ZN15InteractionListD2Ev.exit96
  %i.cf = icmp sgt i32 %.1.lcssa273, -1
  br i1 %i.cf, label %bb.af, label %._crit_edge194.thread

.lr.ph193:                                        ; preds = %.preheader, %_ZN15InteractionListD2Ev.exit96
  %i.cg = phi ptr [ %i.dj, %_ZN15InteractionListD2Ev.exit96 ], [ %i.ay, %.preheader ]
  %i.ch = phi i64 [ %i.dh, %_ZN15InteractionListD2Ev.exit96 ], [ 0, %.preheader ]
  %.059192 = phi i32 [ %i.dg, %_ZN15InteractionListD2Ev.exit96 ], [ 0, %.preheader ]
  %.060191 = phi i32 [ %.1.lcssa273, %_ZN15InteractionListD2Ev.exit96 ], [ -1, %.preheader ] ; 3 uses
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2064), align 8, !tbaa !19
  %i.cj = add i32 %i.ci, 1
  %i.ck = getelementptr inbounds nuw [2408 x i8], ptr %i.cg, i64 %i.ch ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1616 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 1624 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !21 ; 2 uses
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !15 ; 3 uses
  %i.cp = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cr = sub i64 %i.cp, %i.cq                    ; 4 uses
  %.not.i.i.i.i.i91 = icmp eq ptr %i.cn, %i.co
  br i1 %.not.i.i.i.i.i91, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph193
  %i.cs = icmp ugt i64 %i.cr, 9223372036854775804
  br i1 %i.cs, label %.noexc.i.i.i93, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i92, !prof !23

end_hunk_0
