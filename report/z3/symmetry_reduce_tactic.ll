Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/symmetry_reduce_tactic?download=true
inline.NumInlined: 2205
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN22symmetry_reduce_tacticclERK3refI4goalER11sref_bufferIS1_Lj16EE:bb.a
bb.f:                                             ; preds = %._crit_edge.i.i.i
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i)
  %.pre2.pre.i.i = load i32, ptr %i.b, align 8, !tbaa !333
  br label %_ZN6bufferIP4goalLb0ELj16EE6expandEv.exit.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !335
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !335
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %scalar.ph, !llvm.loop !329

_ZN6bufferIP4goalLb0ELj16EE6expandEv.exit.i.i:    ; preds = %bb.f, %._crit_edge.i.i.i
  %.pre2.i.i = phi i32 [ %i.ah, %._crit_edge.i.i.i ], [ %.pre2.pre.i.i, %bb.f ]
  store ptr %i.ag, ptr %2, align 8, !tbaa !332
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !339
  br label %_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE9push_backEPS0_.exit

_ZN15ref_buffer_coreI4goal21ref_unmanaged_wrapperIS0_ELj16EE9push_backEPS0_.exit: ; preds = %._crit_edge.i.i, %_ZN6bufferIP4goalLb0ELj16EE6expandEv.exit.i.i
  %i.as = phi i32 [ %i.aa, %._crit_edge.i.i ], [ %.pre2.i.i, %_ZN6bufferIP4goalLb0ELj16EE6expandEv.exit.i.i ] ; 2 uses
  %i.at = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ag, %_ZN6bufferIP4goalLb0ELj16EE6expandEv.exit.i.i ]
  %i.au = zext i32 %i.as to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  store ptr %i.w, ptr %i.av, align 8, !tbaa !335
  %i.aw = add i32 %i.as, 1
  store i32 %i.aw, ptr %i.b, align 8, !tbaa !333
  ret void
}

declare void @_Z24fail_if_proof_generationPKcRK3refI4goalE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_Z29fail_if_unsat_core_generationPKcRK3refI4goalE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_Z23fail_if_has_quantifiersPKcRK3refI4goalE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN22symmetry_reduce_tactic3impclER4goal(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull align 8 dereferenceable(124) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.obj_mark, align 8            ; 7 uses
  %3 = alloca %"class.symmetry_reduce_tactic::imp::member_of", align 8 ; 5 uses
  %4 = alloca %class.tactic_report, align 8       ; 6 uses
  %5 = alloca %class.vector.42, align 8           ; 10 uses
  %6 = alloca %class.obj_ref, align 8             ; 17 uses
  %7 = alloca %class.obj_map.43, align 8          ; 12 uses
  %8 = alloca %class.ptr_vector.6, align 8        ; 11 uses
  %9 = alloca %class.ptr_vector.6, align 8        ; 14 uses
  %10 = alloca %class.obj_ref, align 8            ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 536870912
  %.not64 = icmp eq i32 %i.c, 0
  br i1 %.not64, label %bb.b, label %bb.bj

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN13tactic_reportC1EPKcRK4goal(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(124) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.d = load ptr, ptr %0, align 8, !tbaa !169, !nonnull !68, !align !69
  store ptr null, ptr %6, align 8, !tbaa !110
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !124
  invoke void @_ZN22symmetry_reduce_tactic3imp10to_formulaERK4goalR7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 8, ptr %i.f, align 8, !tbaa !172
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !173
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.h, align 8, !tbaa !174
  %i.i = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 128)
          to label %.lr.ph.i.i.i.i.i.i.i.preheader unwind label %bb.g ; 9 uses

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.c
  store ptr null, ptr %i.i, align 8, !tbaa !176
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr null, ptr %i.j, align 8, !tbaa !176
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %i.k, align 8, !tbaa !176
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr null, ptr %i.l, align 8, !tbaa !176
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store ptr null, ptr %i.m, align 8, !tbaa !176
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store ptr null, ptr %i.n, align 8, !tbaa !176
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store ptr null, ptr %i.o, align 8, !tbaa !176
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store ptr null, ptr %i.p, align 8, !tbaa !176
  store ptr %i.i, ptr %7, align 8, !tbaa !177
  %i.q = load ptr, ptr %6, align 8, !tbaa !110
  invoke void @_ZN22symmetry_reduce_tactic3imp19compute_occurrencesEP4exprR7obj_mapI3appjE(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.r = load ptr, ptr %6, align 8, !tbaa !110
  invoke void @_ZN22symmetry_reduce_tactic3imp27find_candidate_permutationsEP4exprRK7obj_mapI3appjER6vectorI10ptr_vectorIS4_ELb1EjE(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %i.r, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %5, align 8, !tbaa !164    ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZNK6vectorI10ptr_vectorI3appELb1EjE5emptyEv.exit.thread, label %_ZNK6vectorI10ptr_vectorI3appELb1EjE5emptyEv.exit

_ZNK6vectorI10ptr_vectorI3appELb1EjE5emptyEv.exit: ; preds = %bb.e
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !38
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZNK6vectorI10ptr_vectorI3appELb1EjE5emptyEv.exit.thread, label %_ZNK6vectorI10ptr_vectorI3appELb1EjE4sizeEv.exit.lr.ph

bb.f:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.g:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.h:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

_ZNK6vectorI10ptr_vectorI3appELb1EjE4sizeEv.exit.lr.ph: ; preds = %_ZNK6vectorI10ptr_vectorI3appELb1EjE5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr null, ptr %8, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr null, ptr %9, align 8, !tbaa !131
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %_ZNK6vectorI10ptr_vectorI3appELb1EjE4sizeEv.exit

_ZNK6vectorI10ptr_vectorI3appELb1EjE4sizeEv.exit: ; preds = %_ZNK6vectorI10ptr_vectorI3appELb1EjE4sizeEv.exit.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %_ZNK6vectorI10ptr_vectorI3appELb1EjE4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %i.ae = phi ptr [ %i.s, %_ZNK6vectorI10ptr_vectorI3appELb1EjE4sizeEv.exit.lr.ph ], [ %i.fn, %.critedge ] ; 2 uses
  %.018101 = phi i32 [ 0, %_ZNK6vectorI10ptr_vectorI3appELb1EjE4sizeEv.exit.lr.ph ], [ %.3, %.critedge ] ; 5 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !38
  %i.ah = zext i32 %i.ag to i64
  %i.ai = icmp samesign ult i64 %indvars.iv, %i.ah
  br i1 %i.ai, label %bb.i, label %.critedge65

.critedge65:                                      ; preds = %_ZNK6vectorI10ptr_vectorI3appELb1EjE4sizeEv.exit, %.critedge
  %.018.lcssa.ph = phi i32 [ %.018101, %_ZNK6vectorI10ptr_vectorI3appELb1EjE4sizeEv.exit ], [ %.3, %.critedge ]
  invoke void @_Z22report_tactic_progressPKcj(ptr noundef nonnull @.str.10, i32 noundef %.018.lcssa.ph)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %_ZNK6vectorI10ptr_vectorI3appELb1EjE4sizeEv.exit
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv ; 7 uses
  %i.ak = load ptr, ptr %6, align 8, !tbaa !110   ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !131 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !132
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !132
  %i.ap = invoke noundef zeroext i1 @_ZN22symmetry_reduce_tactic3imp10check_swapEP4exprP3appS4_(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.ao)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc40:                                         ; preds = %bb.i
  br i1 %i.ap, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.noexc40
  %i.aq = invoke noundef zeroext i1 @_ZN22symmetry_reduce_tactic3imp11check_cycleEP4exprR10ptr_vectorI3appE(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %_ZN22symmetry_reduce_tactic3imp25invariant_by_permutationsEP4exprR10ptr_vectorI3appE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN22symmetry_reduce_tactic3imp25invariant_by_permutationsEP4exprR10ptr_vectorI3appE.exit: ; preds = %bb.j
  br i1 %i.aq, label %bb.k, label %.critedge

bb.k:                                             ; preds = %_ZN22symmetry_reduce_tactic3imp25invariant_by_permutationsEP4exprR10ptr_vectorI3appE.exit
  %i.ar = load ptr, ptr %9, align 8, !tbaa !131   ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_ZN6vectorIP3appLb0EjE5resetEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -4
  store i32 0, ptr %i.as, align 4, !tbaa !38
  br label %_ZN6vectorIP3appLb0EjE5resetEv.exit

_ZN6vectorIP3appLb0EjE5resetEv.exit:              ; preds = %bb.k, %bb.l
  %i.at = load ptr, ptr %6, align 8, !tbaa !110
  invoke void @_ZN22symmetry_reduce_tactic3imp12select_termsEP4exprRK10ptr_vectorI3appERS5_(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %i.at, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %_ZN6vectorIP3appLb0EjE5resetEv.exit
  %i.au = load ptr, ptr %8, align 8, !tbaa !131   ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.critedge, label %_ZNK6vectorIP3appLb0EjE5emptyEv.exit

_ZNK6vectorIP3appLb0EjE5emptyEv.exit:             ; preds = %.preheader, %bb.as
  %i.aw = phi ptr [ %i.fj, %bb.as ], [ %i.au, %.preheader ]
  %.193 = phi i32 [ %i.en, %bb.as ], [ %.018101, %.preheader ] ; 8 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !38
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZNK6vectorIP3appLb0EjE5emptyEv.exit
  %i.ba = load ptr, ptr %9, align 8, !tbaa !131   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !38
  br label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit

_ZNK6vectorIP3appLb0EjE4sizeEv.exit:              ; preds = %bb.m, %bb.n
  %.0.i42 = phi i32 [ %i.bd, %bb.n ], [ 0, %bb.m ]
  %i.be = load ptr, ptr %i.aj, align 8, !tbaa !131 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.critedge, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit44

_ZNK6vectorIP3appLb0EjE4sizeEv.exit44:            ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !38
  %i.bi = icmp ult i32 %.0.i42, %i.bh
  br i1 %i.bi, label %bb.o, label %.critedge

bb.o:                                             ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit44
  %i.bj = load ptr, ptr %6, align 8, !tbaa !110
  %i.bk = invoke noundef ptr @_ZN22symmetry_reduce_tactic3imp26select_most_promising_termEP4exprRK10ptr_vectorI3appERS5_S7_RK7obj_mapIS4_jE(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %8, align 8, !tbaa !131   ; 8 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN6vectorIP3appLb0EjE5eraseERKS1_.exit, label %_ZN6vectorIP3appLb0EjE3endEv.exit.i

_ZN6vectorIP3appLb0EjE3endEv.exit.i:              ; preds = %bb.p
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !38 ; 4 uses
  %i.bp = zext i32 %i.bo to i64                   ; 3 uses
  %.idx9.i = shl nuw nsw i64 %i.bp, 3             ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx9.i ; 2 uses
  %i.br = lshr i64 %i.bp, 2                       ; 2 uses
  %.not8.i = icmp eq i64 %i.br, 0
  br i1 %.not8.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6vectorIP3appLb0EjE3endEv.exit.i
  %i.bs = and i64 %.idx9.i, 34359738336
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.bl, i64 %i.bs
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i ], [ %i.cf, %bb.u ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.ce, %bb.u ] ; 9 uses
  %i.bt = load ptr, ptr %.02946.i.i.i.i, align 8, !tbaa !132
  %i.bu = icmp eq ptr %i.bt, %i.bk
  br i1 %i.bu, label %_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !132
  %i.bx = icmp eq ptr %i.bw, %i.bk
  br i1 %i.bx, label %_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !132
  %i.ca = icmp eq ptr %i.bz, %i.bk
  br i1 %i.ca, label %_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i.loopexit.split.loop.exit159, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !132
  %i.cd = icmp eq ptr %i.cc, %i.bk
  br i1 %i.cd, label %_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i.loopexit.split.loop.exit161, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32
  %i.cf = add nsw i64 %.047.i.i.i.i, -1
  %i.cg = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.cg, label %bb.q, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !340

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.u
  %i.ch = and i32 %i.bo, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN6vectorIP3appLb0EjE3endEv.exit.i
  %.pre-phi56.i.i.i.i = phi i32 [ %i.ch, %._crit_edge.loopexit.i.i.i.i ], [ %i.bo, %_ZN6vectorIP3appLb0EjE3endEv.exit.i ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.bl, %_ZN6vectorIP3appLb0EjE3endEv.exit.i ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i, label %_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i [
    i32 3, label %bb.v
    i32 2, label %._crit_edge._crit_edge.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ci = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !132
  %i.cj = icmp eq ptr %i.ci, %i.bk
  br i1 %i.cj, label %_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.w
  %.1.i.i.i.i = phi ptr [ %i.ck, %bb.w ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.cl = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !132
  %i.cm = icmp eq ptr %i.cl, %i.bk
  br i1 %i.cm, label %_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i, label %bb.x

bb.x:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.x
  %.2.i.i.i.i = phi ptr [ %i.cn, %bb.x ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.co = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !132
  %i.cp = icmp eq ptr %i.co, %i.bk
  %spec.select.i = select i1 %i.cp, ptr %.2.i.i.i.i, ptr %i.bq
  br label %_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i

_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i

_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i.loopexit.split.loop.exit159: ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  br label %_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i

_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i.loopexit.split.loop.exit161: ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  br label %_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i

_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i:         ; preds = %bb.q, %_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i.loopexit.split.loop.exit159, %_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i.loopexit.split.loop.exit161, %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.v, %._crit_edge.i.i.i.i
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %i.bq, %._crit_edge.i.i.i.i ], [ %spec.select.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.v ], [ %i.cs, %_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i.loopexit.split.loop.exit161 ], [ %i.cr, %_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i.loopexit.split.loop.exit159 ], [ %i.cq, %_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %bb.q ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bp ; 2 uses
  %.not7.i = icmp eq ptr %.028.i.i.i.i, %i.ct
  br i1 %.not7.i, label %_ZN6vectorIP3appLb0EjE5eraseERKS1_.exit, label %_ZN6vectorIP3appLb0EjE3endEv.exit.i.i

_ZN6vectorIP3appLb0EjE3endEv.exit.i.i:            ; preds = %_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i
  %.0910.i.i = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i, i64 8 ; 2 uses
  %.not11.i.i = icmp eq ptr %.0910.i.i, %i.ct
  br i1 %.not11.i.i, label %_ZN6vectorIP3appLb0EjE5eraseEPS1_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN6vectorIP3appLb0EjE3endEv.exit.i.i
  %i.cu = ptrtoaddr ptr %.028.i.i.i.i to i64
  %i.cv = ptrtoaddr ptr %i.bl to i64
  %i.cw = add i64 %i.cv, -16
  %i.cx = add i64 %i.cw, %.idx9.i
  %i.cy = sub i64 %i.cx, %i.cu
  %i.cz = and i64 %i.cy, -8
  %i.da = add i64 %i.cz, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.028.i.i.i.i, ptr nonnull align 8 %.0910.i.i, i64 %i.da, i1 false), !tbaa !132
  br label %_ZN6vectorIP3appLb0EjE5eraseEPS1_.exit.i

_ZN6vectorIP3appLb0EjE5eraseEPS1_.exit.i:         ; preds = %.lr.ph.preheader.i.i, %_ZN6vectorIP3appLb0EjE3endEv.exit.i.i
  %i.db = add i32 %i.bo, -1
  store i32 %i.db, ptr %i.bn, align 4, !tbaa !38
  br label %_ZN6vectorIP3appLb0EjE5eraseERKS1_.exit

_ZN6vectorIP3appLb0EjE5eraseERKS1_.exit:          ; preds = %_ZN6vectorIP3appLb0EjE5eraseEPS1_.exit.i, %_ZSt4findIPP3appS1_ET_S3_S3_RKT0_.exit.i, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.aj, ptr %3, align 8, !tbaa !178
  store ptr %9, ptr %i.aa, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  invoke void @_Z18for_each_expr_coreIN22symmetry_reduce_tactic3imp9member_ofE8obj_markI4expr10bit_vector14default_t2uintIS4_EELb0ELb0EEvRT_RT0_PS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.bk)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %_ZN6vectorIP3appLb0EjE5eraseERKS1_.exit
  %i.dc = load ptr, ptr %i.ac, align 8, !tbaa !180 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.dc)
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #22
  unreachable

bb.ab:                                            ; preds = %_ZN6vectorIP3appLb0EjE5eraseERKS1_.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %.body

bb.ac:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.dh = load ptr, ptr %i.aj, align 8, !tbaa !131 ; 4 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %.critedge, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.lr.ph.i

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.lr.ph.i:      ; preds = %bb.ac
  %i.dj = getelementptr inbounds i8, ptr %i.dh, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !38 ; 3 uses
  %i.dl = load ptr, ptr %9, align 8
  %.fr36.i = freeze ptr %i.dl                     ; 8 uses
  %11 = icmp eq ptr %.fr36.i, null
  %.not.i45.a = icmp eq i32 %i.dk, 0
  %or.cond.i = select i1 %11, i1 true, i1 %.not.i45.a
  br i1 %or.cond.i, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit10.i, label %_ZNK6vectorIP3appLb0EjE3endEv.exit.i.lr.ph.i

_ZNK6vectorIP3appLb0EjE3endEv.exit.i.lr.ph.i:     ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.lr.ph.i
  %12 = getelementptr inbounds i8, ptr %.fr36.i, i64 -4
  %i.dm = load i32, ptr %12, align 4, !tbaa !38   ; 2 uses
  %i.dn = zext i32 %i.dm to i64
  %i.do = shl nuw nsw i64 %i.dn, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %.fr36.i, i64 %i.do
  %.not8.not.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not8.not.i.i, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit10.i, label %_ZNK6vectorIP3appLb0EjE3endEv.exit.i.preheader.i

_ZNK6vectorIP3appLb0EjE3endEv.exit.i.preheader.i: ; preds = %_ZNK6vectorIP3appLb0EjE3endEv.exit.i.lr.ph.i
  %wide.trip.count.i = zext i32 %i.dk to i64
  br label %_ZNK6vectorIP3appLb0EjE3endEv.exit.i.i

_ZNK6vectorIP3appLb0EjE3endEv.exit.i.i:           ; preds = %_ZNK6vectorIP3appLb0EjE8containsERKS1_.exit.i, %_ZNK6vectorIP3appLb0EjE3endEv.exit.i.preheader.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK6vectorIP3appLb0EjE3endEv.exit.i.preheader.i ], [ %indvars.iv.next.i, %_ZNK6vectorIP3appLb0EjE8containsERKS1_.exit.i ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.i
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !132
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ae
  %i.ds = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ds, %i.dp
  br i1 %.not.not.i.i, label %.critedge.loopexit38.i, label %bb.ae, !llvm.loop !4

bb.ae:                                            ; preds = %bb.ad, %_ZNK6vectorIP3appLb0EjE3endEv.exit.i.i
  %.09.i.i = phi ptr [ %.fr36.i, %_ZNK6vectorIP3appLb0EjE3endEv.exit.i.i ], [ %i.ds, %bb.ad ] ; 2 uses
  %i.dt = load ptr, ptr %.09.i.i, align 8, !tbaa !132
  %i.du = icmp eq ptr %i.dt, %i.dr
  br i1 %i.du, label %_ZNK6vectorIP3appLb0EjE8containsERKS1_.exit.i, label %bb.ad

_ZNK6vectorIP3appLb0EjE8containsERKS1_.exit.i:    ; preds = %bb.ae
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge, label %_ZNK6vectorIP3appLb0EjE3endEv.exit.i.i

.critedge.loopexit38.i:                           ; preds = %bb.ad
  %i.dv = trunc nuw i64 %indvars.iv.i to i32
  br label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit10.i

_ZNK6vectorIP3appLb0EjE4sizeEv.exit10.i:          ; preds = %.critedge.loopexit38.i, %_ZNK6vectorIP3appLb0EjE3endEv.exit.i.lr.ph.i, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.lr.ph.i
  %.018.i = phi i32 [ %i.dv, %.critedge.loopexit38.i ], [ 0, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.lr.ph.i ], [ 0, %_ZNK6vectorIP3appLb0EjE3endEv.exit.i.lr.ph.i ] ; 2 uses
  %i.dw = icmp eq i32 %.018.i, %i.dk
  br i1 %i.dw, label %.critedge, label %_ZN22symmetry_reduce_tactic3imp12select_constERK10ptr_vectorI3appES5_.exit

_ZN22symmetry_reduce_tactic3imp12select_constERK10ptr_vectorI3appES5_.exit: ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit10.i
  %i.dx = zext i32 %.018.i to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !132 ; 2 uses
  %.not = icmp eq ptr %i.dz, null
  br i1 %.not, label %.critedge, label %bb.af

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.o, %bb.ah, %bb.j, %bb.i, %_ZN6vectorIP3appLb0EjE5resetEv.exit, %.critedge65
  %lpad.loopexit.split-lp185 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.af:                                            ; preds = %_ZN22symmetry_reduce_tactic3imp12select_constERK10ptr_vectorI3appES5_.exit
  %i.ea = icmp eq ptr %.fr36.i, null
  br i1 %i.ea, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eb = getelementptr inbounds i8, ptr %.fr36.i, i64 -4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !38 ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %.fr36.i, i64 -8
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !38
  %i.ef = icmp eq i32 %i.ec, %i.ee
  br i1 %i.ef, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.ah
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !131 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !38
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc46, %bb.ag
  %i.eg = phi i32 [ %.pre2.i, %.noexc46 ], [ %i.ec, %bb.ag ] ; 2 uses
  %i.eh = phi ptr [ %.pre.i, %.noexc46 ], [ %.fr36.i, %bb.ag ] ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -4
  %i.ej = zext i32 %i.eg to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ej
  store ptr %i.dz, ptr %i.ek, align 8, !tbaa !132
  %i.el = add i32 %i.eg, 1
  store i32 %i.el, ptr %i.ei, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  invoke void @_ZN22symmetry_reduce_tactic3imp9mk_memberEP3appRK10ptr_vectorIS1_E(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %10, ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.aj unwind label %bb.at

bb.aj:                                            ; preds = %bb.ai
  %i.em = load ptr, ptr %10, align 8, !tbaa !110
  invoke void @_ZN4goal11assert_exprEP4exprPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef %i.em, ptr noundef null)
          to label %_ZN4goal11assert_exprEP4expr.exit unwind label %bb.au

_ZN4goal11assert_exprEP4expr.exit:                ; preds = %bb.aj
  %i.en = add i32 %.193, 1                        ; 2 uses
  %i.eo = load ptr, ptr %0, align 8, !tbaa !169, !nonnull !68, !align !69
  %i.ep = load ptr, ptr %6, align 8, !tbaa !110
  %i.eq = load ptr, ptr %10, align 8, !tbaa !110
  %i.er = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.eo, i32 noundef 0, i32 noundef 5, ptr noundef %i.ep, ptr noundef %i.eq)
          to label %_ZN11ast_manager6mk_andEP4exprS1_.exit unwind label %bb.au ; 3 uses

_ZN11ast_manager6mk_andEP4exprS1_.exit:           ; preds = %_ZN4goal11assert_exprEP4expr.exit
  %.not.i49 = icmp eq ptr %i.er, null
  br i1 %.not.i49, label %bb.ak, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN11ast_manager6mk_andEP4exprS1_.exit
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !81
  %i.eu = add i32 %i.et, 1
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !81
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_ZN11ast_manager6mk_andEP4exprS1_.exit
  %i.ev = load ptr, ptr %6, align 8, !tbaa !110   ; 3 uses
  %.not.i4.i = icmp eq ptr %i.ev, null
  br i1 %.not.i4.i, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ew = load ptr, ptr %i.e, align 8, !tbaa !111, !nonnull !68, !align !69
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !81
  %i.ez = add i32 %i.ey, -1                       ; 2 uses
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !81
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ew, ptr noundef nonnull %i.ev)
          to label %bb.an unwind label %bb.au

bb.an:                                            ; preds = %bb.al, %bb.ak, %bb.am
  store ptr %i.er, ptr %6, align 8, !tbaa !110
  invoke void @_ZN22symmetry_reduce_tactic3imp9normalizeER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.ao unwind label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.fb = load ptr, ptr %10, align 8, !tbaa !110  ; 3 uses
  %.not.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fc = load ptr, ptr %i.ad, align 8, !tbaa !111, !nonnull !68, !align !69
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !81
  %i.ff = add i32 %i.fe, -1                       ; 2 uses
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !81
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fc, ptr noundef nonnull %i.fb)
          to label %bb.as unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #22
  unreachable

bb.as:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.fj = load ptr, ptr %8, align 8, !tbaa !131   ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %.critedge, label %_ZNK6vectorIP3appLb0EjE5emptyEv.exit

bb.at:                                            ; preds = %bb.ai
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %bb.am, %_ZN4goal11assert_exprEP4expr.exit, %bb.aj, %bb.an
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #19
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn = phi { ptr, i32 } [ %i.fm, %bb.au ], [ %i.fl, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.body

.critedge:                                        ; preds = %_ZNK6vectorIP3appLb0EjE5emptyEv.exit, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit44, %bb.as, %_ZN22symmetry_reduce_tactic3imp12select_constERK10ptr_vectorI3appES5_.exit, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit10.i, %bb.ac, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit, %_ZNK6vectorIP3appLb0EjE8containsERKS1_.exit.i, %.preheader, %.noexc40, %_ZN22symmetry_reduce_tactic3imp25invariant_by_permutationsEP4exprR10ptr_vectorI3appE.exit
  %.3 = phi i32 [ %.018101, %_ZN22symmetry_reduce_tactic3imp25invariant_by_permutationsEP4exprR10ptr_vectorI3appE.exit ], [ %.018101, %.noexc40 ], [ %.193, %_ZNK6vectorIP3appLb0EjE8containsERKS1_.exit.i ], [ %.018101, %.preheader ], [ %.193, %_ZNK6vectorIP3appLb0EjE5emptyEv.exit ], [ %.193, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit44 ], [ %i.en, %bb.as ], [ %.193, %_ZN22symmetry_reduce_tactic3imp12select_constERK10ptr_vectorI3appES5_.exit ], [ %.193, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit10.i ], [ %.193, %bb.ac ], [ %.193, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.fn = load ptr, ptr %5, align 8, !tbaa !164   ; 2 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %.critedge65, label %_ZNK6vectorI10ptr_vectorI3appELb1EjE4sizeEv.exit, !llvm.loop !341

bb.aw:                                            ; preds = %.critedge65
  %i.fp = load ptr, ptr %9, align 8, !tbaa !131   ; 2 uses
  %.not.i.i51 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i51, label %_ZN6vectorIP3appLb0EjED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fq)
          to label %_ZN6vectorIP3appLb0EjED2Ev.exit unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #22
  unreachable

_ZN6vectorIP3appLb0EjED2Ev.exit:                  ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.ft = load ptr, ptr %8, align 8, !tbaa !131   ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i52, label %_ZN6vectorIP3appLb0EjED2Ev.exit53, label %bb.az

bb.az:                                            ; preds = %_ZN6vectorIP3appLb0EjED2Ev.exit
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fu)
          to label %_ZN6vectorIP3appLb0EjED2Ev.exit53 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fv = landingpad { ptr, i32 }
          catch ptr null
  %i.fw = extractvalue { ptr, i32 } %i.fv, 0
  call void @__clang_call_terminate(ptr %i.fw) #22
  unreachable

_ZN6vectorIP3appLb0EjED2Ev.exit53:                ; preds = %_ZN6vectorIP3appLb0EjED2Ev.exit, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %_ZNK6vectorI10ptr_vectorI3appELb1EjE5emptyEv.exit.thread

_ZNK6vectorI10ptr_vectorI3appELb1EjE5emptyEv.exit.thread: ; preds = %bb.e, %_ZNK6vectorI10ptr_vectorI3appELb1EjE5emptyEv.exit, %_ZN6vectorIP3appLb0EjED2Ev.exit53
  %i.fx = load ptr, ptr %7, align 8, !tbaa !177   ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %_ZN7obj_mapI3appjED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNK6vectorI10ptr_vectorI3appELb1EjE5emptyEv.exit.thread
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fx)
          to label %_ZN7obj_mapI3appjED2Ev.exit unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #22
  unreachable

_ZN7obj_mapI3appjED2Ev.exit:                      ; preds = %_ZNK6vectorI10ptr_vectorI3appELb1EjE5emptyEv.exit.thread, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.gb = load ptr, ptr %6, align 8, !tbaa !110   ; 3 uses
  %.not.i.i54 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i54, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit55, label %bb.bd

bb.bd:                                            ; preds = %_ZN7obj_mapI3appjED2Ev.exit
  %i.gc = load ptr, ptr %i.e, align 8, !tbaa !111, !nonnull !68, !align !69
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !81
  %i.gf = add i32 %i.ge, -1                       ; 2 uses
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !81
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.be, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit55

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gc, ptr noundef nonnull %i.gb)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit55 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #22
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit55:       ; preds = %_ZN7obj_mapI3appjED2Ev.exit, %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.gj = load ptr, ptr %5, align 8, !tbaa !164   ; 4 uses
  %.not.i.i56 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i56, label %_ZN6vectorI10ptr_vectorI3appELb1EjED2Ev.exit, label %_ZNK6vectorI10ptr_vectorI3appELb1EjE4sizeEv.exit.i.i.i

_ZNK6vectorI10ptr_vectorI3appELb1EjE4sizeEv.exit.i.i.i: ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit55
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 -4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !38 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.gl, 0
  br i1 %.not6.i.i.i.i.i.i, label %_ZN6vectorI10ptr_vectorI3appELb1EjE16destroy_elementsEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNK6vectorI10ptr_vectorI3appELb1EjE4sizeEv.exit.i.i.i, %_ZSt8_DestroyI10ptr_vectorI3appEEvPT_.exit.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi i32 [ %i.gr, %_ZSt8_DestroyI10ptr_vectorI3appEEvPT_.exit.i.i.i.i.i.i ], [ %i.gl, %_ZNK6vectorI10ptr_vectorI3appELb1EjE4sizeEv.exit.i.i.i ]
  %.047.i.i.i.i.i.i = phi ptr [ %i.gq, %_ZSt8_DestroyI10ptr_vectorI3appEEvPT_.exit.i.i.i.i.i.i ], [ %i.gj, %_ZNK6vectorI10ptr_vectorI3appELb1EjE4sizeEv.exit.i.i.i ] ; 2 uses
  %i.gm = load ptr, ptr %.047.i.i.i.i.i.i, align 8, !tbaa !131 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI10ptr_vectorI3appEEvPT_.exit.i.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gn)
          to label %_ZSt8_DestroyI10ptr_vectorI3appEEvPT_.exit.i.i.i.i.i.i unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #22
  unreachable

_ZSt8_DestroyI10ptr_vectorI3appEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.bg, %.lr.ph.i.i.i.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i, i64 8
  %i.gr = add i32 %.08.i.i.i.i.i.i, -1            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.gr, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN6vectorI10ptr_vectorI3appELb1EjE16destroy_elementsEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5

_ZN6vectorI10ptr_vectorI3appELb1EjE16destroy_elementsEv.exit.loopexit.i.i: ; preds = %_ZSt8_DestroyI10ptr_vectorI3appEEvPT_.exit.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !164
  br label %_ZN6vectorI10ptr_vectorI3appELb1EjE16destroy_elementsEv.exit.i.i

_ZN6vectorI10ptr_vectorI3appELb1EjE16destroy_elementsEv.exit.i.i: ; preds = %_ZN6vectorI10ptr_vectorI3appELb1EjE16destroy_elementsEv.exit.loopexit.i.i, %_ZNK6vectorI10ptr_vectorI3appELb1EjE4sizeEv.exit.i.i.i
  %i.gs = phi ptr [ %.pre.i.i, %_ZN6vectorI10ptr_vectorI3appELb1EjE16destroy_elementsEv.exit.loopexit.i.i ], [ %i.gj, %_ZNK6vectorI10ptr_vectorI3appELb1EjE4sizeEv.exit.i.i.i ]
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gt)
          to label %_ZN6vectorI10ptr_vectorI3appELb1EjED2Ev.exit unwind label %bb.bi

bb.bi:                                            ; preds = %_ZN6vectorI10ptr_vectorI3appELb1EjE16destroy_elementsEv.exit.i.i
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  call void @__clang_call_terminate(ptr %i.gv) #22
  unreachable

_ZN6vectorI10ptr_vectorI3appELb1EjED2Ev.exit:     ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit55, %_ZN6vectorI10ptr_vectorI3appELb1EjE16destroy_elementsEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @_ZN13tactic_reportD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.bj

bb.bj:                                            ; preds = %bb.a, %_ZN6vectorI10ptr_vectorI3appELb1EjED2Ev.exit
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ab, %bb.av
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.av ], [ %i.dg, %bb.ab ], [ %lpad.loopexit.split-lp185, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6vectorIP3appLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN6vectorIP3appLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.bk

bb.bk:                                            ; preds = %.body, %bb.h
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %.body ], [ %i.z, %bb.h ]
  call void @_ZN7obj_mapI3appjED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #19
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.g
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.bk ], [ %i.y, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.f
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.bl ], [ %i.x, %bb.f ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN6vectorI10ptr_vectorI3appELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @_ZN13tactic_reportD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN22symmetry_reduce_tactic7cleanupEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef ptr @_Z25mk_symmetry_reduce_tacticR11ast_managerRK10params_ref(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 2 uses
  tail call void @_ZN22symmetry_reduce_tacticC2ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(952) %0)
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI15ac_rewriter_cfgED2Ev(ptr noundef nonnull align 8 dead_on_return(536) dereferenceable(536) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV12rewriter_tplI15ac_rewriter_cfgE, i64 16), ptr %0, align 8, !tbaa !126
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6vectorIjLb0EjED2Ev.exit, label %bb.b
end_hunk_0
