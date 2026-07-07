inline.NumInlined: 673
inline.NumDeleted: 368
begin_hunk_0_@"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19ContextWorklistPairESt6vectorIS4_SaIS4_EEEEZNKS3_16MarkingWorklists7IsEmptyEvE3$_0EbT_SD_T0_":bb.a
  %i.d = ashr i64 %i.c, 6                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %.051.i.i.i = phi i64 [ %i.w, %bb.e ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.025.050.i.i.i = phi ptr [ %i.v, %bb.e ], [ %0, %bb.a ] ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %.not36.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not36.i.i.i, label %bb.b, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19ContextWorklistPairESt6vectorIS4_SaIS4_EEEEZNKS3_16MarkingWorklists7IsEmptyEvE3$_0ET_SD_SD_T0_.exit"

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load atomic i64, ptr %i.l monotonic, align 8
  %.not37.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not37.i.i.i, label %bb.c, label %.loopexit.split.loop.exit41.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load atomic i64, ptr %i.p monotonic, align 8
  %.not38.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not38.i.i.i, label %bb.d, label %.loopexit.split.loop.exit43.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i, i64 56
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load atomic i64, ptr %i.t monotonic, align 8
  %.not39.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not39.i.i.i, label %bb.e, label %.loopexit.split.loop.exit45.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i, i64 64 ; 3 uses
  %i.w = add nsw i64 %.051.i.i.i, -1
  %i.x = icmp sgt i64 %.051.i.i.i, 1
  br i1 %i.x, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !20

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.e
  %.pre.i.i.i = ptrtoint ptr %i.v to i64
  %.pre56.i.i.i = sub i64 %i.a, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi57.i.i.i = phi i64 [ %.pre56.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.c, %bb.a ]
  %.sroa.025.0.lcssa.i.i.i = phi ptr [ %i.v, %._crit_edge.loopexit.i.i.i ], [ %0, %bb.a ] ; 5 uses
  %i.y = ashr exact i64 %.pre-phi57.i.i.i, 4
  switch i64 %i.y, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19ContextWorklistPairESt6vectorIS4_SaIS4_EEEEZNKS3_16MarkingWorklists7IsEmptyEvE3$_0ET_SD_SD_T0_.exit" [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load atomic i64, ptr %i.ab monotonic, align 8
  %.not.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.g, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19ContextWorklistPairESt6vectorIS4_SaIS4_EEEEZNKS3_16MarkingWorklists7IsEmptyEvE3$_0ET_SD_SD_T0_.exit"

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %.sroa.025.1.i.i.i = phi ptr [ %i.ad, %bb.g ], [ %.sroa.025.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load atomic i64, ptr %i.ag monotonic, align 8
  %.not34.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not34.i.i.i, label %bb.i, label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19ContextWorklistPairESt6vectorIS4_SaIS4_EEEEZNKS3_16MarkingWorklists7IsEmptyEvE3$_0ET_SD_SD_T0_.exit"

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %.sroa.025.2.i.i.i = phi ptr [ %i.ai, %bb.i ], [ %.sroa.025.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.2.i.i.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load atomic i64, ptr %i.al monotonic, align 8
  %.not35.i.i.i = icmp eq i64 %i.am, 0
  %spec.select.i.i.i = select i1 %.not35.i.i.i, ptr %1, ptr %.sroa.025.2.i.i.i
  br label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19ContextWorklistPairESt6vectorIS4_SaIS4_EEEEZNKS3_16MarkingWorklists7IsEmptyEvE3$_0ET_SD_SD_T0_.exit"

.loopexit.split.loop.exit41.i.i.i:                ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i, i64 16
  br label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19ContextWorklistPairESt6vectorIS4_SaIS4_EEEEZNKS3_16MarkingWorklists7IsEmptyEvE3$_0ET_SD_SD_T0_.exit"

.loopexit.split.loop.exit43.i.i.i:                ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i, i64 32
  br label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19ContextWorklistPairESt6vectorIS4_SaIS4_EEEEZNKS3_16MarkingWorklists7IsEmptyEvE3$_0ET_SD_SD_T0_.exit"

.loopexit.split.loop.exit45.i.i.i:                ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i, i64 48
  br label %"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19ContextWorklistPairESt6vectorIS4_SaIS4_EEEEZNKS3_16MarkingWorklists7IsEmptyEvE3$_0ET_SD_SD_T0_.exit"

"_ZSt11find_if_notIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19ContextWorklistPairESt6vectorIS4_SaIS4_EEEEZNKS3_16MarkingWorklists7IsEmptyEvE3$_0ET_SD_SD_T0_.exit": ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i, %bb.f, %bb.h, %bb.j, %.loopexit.split.loop.exit41.i.i.i, %.loopexit.split.loop.exit43.i.i.i, %.loopexit.split.loop.exit45.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.025.1.i.i.i, %bb.h ], [ %spec.select.i.i.i, %bb.j ], [ %1, %._crit_edge.i.i.i ], [ %.sroa.025.0.lcssa.i.i.i, %bb.f ], [ %i.ao, %.loopexit.split.loop.exit43.i.i.i ], [ %i.an, %.loopexit.split.loop.exit41.i.i.i ], [ %i.ap, %.loopexit.split.loop.exit45.i.i.i ], [ %.sroa.025.050.i.i.i, %.lr.ph.i.i.i ]
  %i.aq = icmp eq ptr %1, %.sroa.08.0.in.sroa.speculated.i.i.i
  ret i1 %i.aq
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal16MarkingWorklists22CreateContextWorklistsERKSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"struct.v8::internal::ContextWorklistPair", align 8 ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.l = icmp ugt i64 %i.j, 576460752303423487
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 4
  %i.t = icmp ult i64 %i.s, %i.j
  br i1 %i.t, label %_ZNSt12_Vector_baseIN2v88internal19ContextWorklistPairESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN2v88internal19ContextWorklistPairESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.q
  %i.y = shl nuw nsw i64 %i.i, 1
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #23 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, %i.v
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN2v88internal19ContextWorklistPairESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.z, %_ZNSt12_Vector_baseIN2v88internal19ContextWorklistPairESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN2v88internal19ContextWorklistPairESaIS2_EE11_M_allocateEm.exit.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ab = load <2 x i64>, ptr %.0911.i.i.i.i, align 8, !alias.scope !24, !noalias !21
  store <2 x i64> %i.ab, ptr %.012.i.i.i.i, align 8, !alias.scope !21, !noalias !24
  store ptr null, ptr %i.aa, align 8, !alias.scope !24, !noalias !21
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.v
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !26

_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = load ptr, ptr %i.k, align 8
  br label %_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit.i, %_ZNSt12_Vector_baseIN2v88internal19ContextWorklistPairESaIS2_EE11_M_allocateEm.exit.i
  %i.ae = phi ptr [ %.pre.i, %_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit.i ], [ %i.o, %_ZNSt12_Vector_baseIN2v88internal19ContextWorklistPairESaIS2_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.ae, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN2v88internal19ContextWorklistPairESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.af = load ptr, ptr %i.m, align 8
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #22
  br label %_ZNSt12_Vector_baseIN2v88internal19ContextWorklistPairESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN2v88internal19ContextWorklistPairESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.z, ptr %i.k, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store ptr %i.aj, ptr %i.u, align 8
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.j
  store ptr %i.ak, ptr %i.m, align 8
  br label %_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE7reserveEm.exit: ; preds = %bb.d, %_ZNSt12_Vector_baseIN2v88internal19ContextWorklistPairESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %3 = uitofp nneg i64 %i.j to double
  %i.an = load float, ptr %i.am, align 8
  %i.ao = fpext float %i.an to double             ; 2 uses
  %4 = fdiv double %3, %i.ao
  %5 = tail call double @llvm.ceil.f64(double %4)
  %6 = fptoui double %5 to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = add i64 %i.as, 1
  %7 = uitofp i64 %i.at to double
  %8 = fdiv double %7, %i.ao
  %i.au = tail call double @llvm.ceil.f64(double %8)
  %i.av = fptoui double %i.au to i64
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %6, i64 %i.av)
  %i.aw = tail call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 noundef %.sroa.speculated.i.i.i) #20 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ay = load i64, ptr %i.ax, align 8
  %.not.i.i.i = icmp eq i64 %i.aw, %i.ay
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE7reserveEm.exit
  tail call void @_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImEN2v88internal16MarkingWorklists11ContextHashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.al, i64 noundef %i.aw)
  br label %_ZNSt13unordered_mapImjN2v88internal16MarkingWorklists11ContextHashESt8equal_toImESaISt4pairIKmjEEE7reserveEm.exit

bb.g:                                             ; preds = %_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE7reserveEm.exit
  store i64 %i.aq, ptr %i.ap, align 8
  br label %_ZNSt13unordered_mapImjN2v88internal16MarkingWorklists11ContextHashESt8equal_toImESaISt4pairIKmjEEE7reserveEm.exit

_ZNSt13unordered_mapImjN2v88internal16MarkingWorklists11ContextHashESt8equal_toImESaISt4pairIKmjEEE7reserveEm.exit: ; preds = %bb.f, %bb.g
  %i.az = load ptr, ptr %1, align 8               ; 2 uses
  %i.ba = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt13unordered_mapImjN2v88internal16MarkingWorklists11ContextHashESt8equal_toImESaISt4pairIKmjEEE7reserveEm.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN2v88internal19ContextWorklistPairD2Ev.exit
  %.014 = phi i32 [ 0, %.lr.ph ], [ %i.br, %_ZN2v88internal19ContextWorklistPairD2Ev.exit ] ; 2 uses
  %.sroa.09.013 = phi ptr [ %i.az, %.lr.ph ], [ %i.bt, %_ZN2v88internal19ContextWorklistPairD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.be = load i64, ptr %.sroa.09.013, align 8    ; 2 uses
  store i64 %i.be, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i64 %i.be, ptr %2, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.bf = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23, !noalias !27 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false), !noalias !27
  call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.bf) #20, !noalias !27
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false), !noalias !27
  store ptr %i.bf, ptr %i.bc, align 8, !alias.scope !27
  %i.bh = load ptr, ptr %i.bd, align 8            ; 4 uses
  %i.bi = load ptr, ptr %i.m, align 8
  %.not.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i, label %_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE9push_backEOS2_.exit, label %_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE9push_backEOS2_.exit.thread

_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE9push_backEOS2_.exit.thread: ; preds = %bb.h
  %i.bj = load i64, ptr %2, align 8
  store i64 %i.bj, ptr %i.bh, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load i64, ptr %i.bc, align 8
  store i64 %i.bl, ptr %i.bk, align 8
  %i.bm = load ptr, ptr %i.bd, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.bn, ptr %i.bd, align 8
  br label %_ZN2v88internal19ContextWorklistPairD2Ev.exit

_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.h
  call void @_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %.pr = load ptr, ptr %i.bc, align 8             ; 4 uses
  %.not.i.i8 = icmp eq ptr %.pr, null
  br i1 %.not.i.i8, label %_ZN2v88internal19ContextWorklistPairD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE9push_backEOS2_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.bp = load atomic i64, ptr %i.bo monotonic, align 8
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_ZNKSt14default_deleteIN4heap4base8WorklistIN2v88internal6TaggedINS4_10HeapObjectEEELt64EEEEclEPS8_.exit.i.i, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #21
  unreachable

_ZNKSt14default_deleteIN4heap4base8WorklistIN2v88internal6TaggedINS4_10HeapObjectEEELt64EEEEclEPS8_.exit.i.i: ; preds = %bb.i
  call void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.pr) #20
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 24) #22
  br label %_ZN2v88internal19ContextWorklistPairD2Ev.exit

_ZN2v88internal19ContextWorklistPairD2Ev.exit:    ; preds = %_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE9push_backEOS2_.exit.thread, %_ZNSt6vectorIN2v88internal19ContextWorklistPairESaIS2_EE9push_backEOS2_.exit, %_ZNKSt14default_deleteIN4heap4base8WorklistIN2v88internal6TaggedINS4_10HeapObjectEEELt64EEEEclEPS8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.br = add i32 %.014, 1
  store i32 %.014, ptr %i.b, align 4
  %i.bs = call { ptr, i8 } @_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImEN2v88internal16MarkingWorklists11ContextHashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRmjEEES0_INS4_14_Node_iteratorIS2_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 8 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.ba
  br i1 %i.bu, label %.loopexit, label %bb.h

.loopexit:                                        ; preds = %_ZN2v88internal19ContextWorklistPairD2Ev.exit, %_ZNSt13unordered_mapImjN2v88internal16MarkingWorklists11ContextHashESt8equal_toImESaISt4pairIKmjEEE7reserveEm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal16MarkingWorklists5LocalC2EPS1_St10unique_ptrINS0_15CppMarkingStateESt14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #20
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #20
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #20
  store ptr %i.i, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #20
  store ptr %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.m, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #20
  store ptr %i.o, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #20
  store ptr %i.q, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp ne ptr %i.u, %i.w
  %i.y = zext i1 %i.x to i8
  store i8 %i.y, ptr %i.s, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.ab, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ad = load i64, ptr %2, align 8
  store i64 %i.ad, ptr %i.ac, align 8
  store ptr null, ptr %2, align 8
  %i.ae = load i8, ptr %i.s, align 8, !range !30, !noundef !31
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.b, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19ContextWorklistPairESt6vectorIS4_SaIS4_EEEEZNS3_16MarkingWorklists5LocalC1EPSB_St10unique_ptrINS3_15CppMarkingStateESt14default_deleteISF_EEE3$_0ET0_T_SL_SK_.exit"

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %i.v, align 8
  %i.ah = load ptr, ptr %i.t, align 8
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 4
  tail call void @_ZNSt6vectorIN4heap4base8WorklistIN2v88internal6TaggedINS4_10HeapObjectEEELt64EE5LocalESaIS9_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %i.al)
  %i.am = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19ContextWorklistPairESt6vectorIS4_SaIS4_EEEEZNS3_16MarkingWorklists5LocalC1EPSB_St10unique_ptrINS3_15CppMarkingStateESt14default_deleteISF_EEE3$_0ET0_T_SL_SK_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.c

bb.c:                                             ; preds = %"_ZZN2v88internal16MarkingWorklists5LocalC1EPS1_St10unique_ptrINS0_15CppMarkingStateESt14default_deleteIS5_EEENK3$_0clERKNS0_19ContextWorklistPairE.exit.i", %.lr.ph.i
  %.sroa.03.06.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.ba, %"_ZZN2v88internal16MarkingWorklists5LocalC1EPS1_St10unique_ptrINS0_15CppMarkingStateESt14default_deleteIS5_EEENK3$_0clERKNS0_19ContextWorklistPairE.exit.i" ] ; 2 uses
  %i.ar = getelementptr i8, ptr %.sroa.03.06.i, i64 8
  %.val1.i = load ptr, ptr %i.ar, align 8         ; 2 uses
  %i.as = load ptr, ptr %i.ap, align 8            ; 5 uses
  %i.at = load ptr, ptr %i.aq, align 8
  %.not.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %.val1.i, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #20
  store ptr %i.av, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ax = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #20
  store ptr %i.ax, ptr %i.aw, align 8
  %i.ay = load ptr, ptr %i.ap, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %i.az, ptr %i.ap, align 8
  br label %"_ZZN2v88internal16MarkingWorklists5LocalC1EPS1_St10unique_ptrINS0_15CppMarkingStateESt14default_deleteIS5_EEENK3$_0clERKNS0_19ContextWorklistPairE.exit.i"

bb.e:                                             ; preds = %bb.c
  tail call void @_ZNSt6vectorIN4heap4base8WorklistIN2v88internal6TaggedINS4_10HeapObjectEEELt64EE5LocalESaIS9_EE17_M_realloc_insertIJRS8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr %i.as, ptr noundef nonnull align 8 dereferenceable(24) %.val1.i)
  br label %"_ZZN2v88internal16MarkingWorklists5LocalC1EPS1_St10unique_ptrINS0_15CppMarkingStateESt14default_deleteIS5_EEENK3$_0clERKNS0_19ContextWorklistPairE.exit.i"

"_ZZN2v88internal16MarkingWorklists5LocalC1EPS1_St10unique_ptrINS0_15CppMarkingStateESt14default_deleteIS5_EEENK3$_0clERKNS0_19ContextWorklistPairE.exit.i": ; preds = %bb.e, %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.an
  br i1 %i.bb, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19ContextWorklistPairESt6vectorIS4_SaIS4_EEEEZNS3_16MarkingWorklists5LocalC1EPSB_St10unique_ptrINS3_15CppMarkingStateESt14default_deleteISF_EEE3$_0ET0_T_SL_SK_.exit", label %bb.c, !llvm.loop !32

"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPKN2v88internal19ContextWorklistPairESt6vectorIS4_SaIS4_EEEEZNS3_16MarkingWorklists5LocalC1EPSB_St10unique_ptrINS3_15CppMarkingStateESt14default_deleteISF_EEE3$_0ET0_T_SL_SK_.exit": ; preds = %"_ZZN2v88internal16MarkingWorklists5LocalC1EPS1_St10unique_ptrINS0_15CppMarkingStateESt14default_deleteIS5_EEENK3$_0clERKNS0_19ContextWorklistPairE.exit.i", %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
