inline.NumInlined: 47242
inline.NumDeleted: 15222
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft5Typer19TruncateWord32InputERKNS2_4TypeEbPNS0_4ZoneE:bb.a
  store <2 x ptr> %i.w, ptr %5, align 16
  %i.x = load ptr, ptr %i.k, align 16
  br label %_ZN2v84base11SmallVectorIjLm16ESaIjEEC2EOS3_.exit

bb.h:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.y = phi ptr [ %i.s, %._crit_edge.thread ], [ %i.u, %._crit_edge ] ; 2 uses
  %i.z = phi ptr [ %i.i, %._crit_edge.thread ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.aa = load ptr, ptr %i.j, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.i to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = icmp sgt i64 %i.ad, 4
  br i1 %i.ae, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %bb.h
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 4 %i.z, i64 %i.ad, i1 false)
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.af = icmp eq i64 %i.ad, 4
  br i1 %i.af, label %bb.k, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ag = load i32, ptr %i.z, align 4
  store i32 %i.ag, ptr %i.y, align 4
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i:             ; preds = %bb.k, %bb.j, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ad
  br label %_ZN2v84base11SmallVectorIjLm16ESaIjEEC2EOS3_.exit

_ZN2v84base11SmallVectorIjLm16ESaIjEEC2EOS3_.exit: ; preds = %bb.g, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i
  %.sink16.i.i.sroa.phi = phi ptr [ %.sink16.i.i.sroa.gep, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i ], [ %.sink16.i.i.sroa.gep24, %bb.g ]
  %.sink.i.i = phi ptr [ %i.ai, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i ], [ %i.x, %bb.g ]
  store ptr %.sink.i.i, ptr %.sink16.i.i.sroa.phi, align 8
  store ptr %i.i, ptr %4, align 16
  store ptr %i.i, ptr %i.j, align 8
  store ptr %i.l, ptr %i.k, align 16
  call void @_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE12FromElementsENS_4base11SmallVectorIjLm16ESaIjEEEPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %0, ptr noundef nonnull %5, ptr noundef %3)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %5)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.s

.lr.ph:                                           ; preds = %bb.f, %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit
  %.029 = phi ptr [ %i.aq, %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit ], [ %.sroa.0.0.i, %bb.f ] ; 2 uses
  %i.aj = load i64, ptr %.029, align 8
  %i.ak = trunc i64 %i.aj to i32
  %i.al = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.am = load ptr, ptr %i.k, align 16
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.l, label %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit, !prof !5

bb.l:                                             ; preds = %.lr.ph
  call preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
  %.pre.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit

_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit: ; preds = %.lr.ph, %bb.l
  %i.ao = phi ptr [ %.pre.i.i, %bb.l ], [ %i.al, %.lr.ph ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store ptr %i.ap, ptr %i.j, align 8
  store i32 %i.ak, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.029, i64 8 ; 2 uses
  %.not23 = icmp eq ptr %i.aq, %i.r
  br i1 %.not23, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %bb.e
  %i.ar = icmp eq i8 %i.g, 0
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i64, ptr %i.as, align 8            ; 4 uses
  %i.au = add i64 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load i64, ptr %i.av, align 8            ; 3 uses
  %i.ax = icmp eq i64 %i.au, %i.aw
  %i.ay = icmp ugt i64 %i.aw, %i.at
  %i.az = or i1 %i.ax, %i.ay
  %or.cond27 = select i1 %i.ar, i1 %i.az, i1 false
  br i1 %or.cond27, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 2, ptr %0, align 8, !alias.scope !159
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ba, i8 0, i64 7, i1 false), !alias.scope !159
  store i64 -4294967296, ptr %i.bb, align 8, !alias.scope !159
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bc, align 8, !alias.scope !159
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %.not = icmp ugt i64 %i.at, 4294967295
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = trunc i64 %i.aw to i32
  %i.be = trunc nuw i64 %i.at to i32
  tail call void @_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE5RangeEjjPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %0, i32 noundef %i.bd, i32 noundef %i.be, ptr noundef %3)
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  store i8 2, ptr %0, align 8, !alias.scope !164
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bf, i8 0, i64 7, i1 false), !alias.scope !164
  store i64 -4294967296, ptr %i.bg, align 8, !alias.scope !164
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bh, align 8, !alias.scope !164
  br label %bb.s

bb.r:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNK2v88internal8compiler10turboshaft4Type8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.bi = load ptr, ptr %6, align 8
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.13, ptr noundef %i.bi) #24
  unreachable

bb.s:                                             ; preds = %_ZN2v84base11SmallVectorIjLm16ESaIjEEC2EOS3_.exit, %bb.n, %bb.p, %bb.q, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE12FromElementsENS_4base11SmallVectorIjLm16ESaIjEEEPNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i.i, label %_ZN2v84base4sortINS0_11SmallVectorIjLm16ESaIjEEEEEvRT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  tail call void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %i.a, ptr noundef %i.c, i64 noundef %i.j)
  tail call void @_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %i.a, ptr noundef %i.c)
  %.pre = load ptr, ptr %1, align 8
  %.pre7 = load ptr, ptr %i.b, align 8
  br label %_ZN2v84base4sortINS0_11SmallVectorIjLm16ESaIjEEEEEvRT_.exit

_ZN2v84base4sortINS0_11SmallVectorIjLm16ESaIjEEEEEvRT_.exit: ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.c, %bb.a ], [ %.pre7, %bb.b ] ; 9 uses
  %i.l = phi ptr [ %i.a, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.m = icmp eq ptr %i.l, %i.k
  br i1 %i.m, label %_ZSt6uniqueIPjET_S1_S1_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZN2v84base4sortINS0_11SmallVectorIjLm16ESaIjEEEEEvRT_.exit, %bb.c
  %.0.i.i.i = phi ptr [ %i.n, %bb.c ], [ %i.l, %_ZN2v84base4sortINS0_11SmallVectorIjLm16ESaIjEEEEEvRT_.exit ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.n, %i.k
  br i1 %.not.i.i.i4, label %_ZSt6uniqueIPjET_S1_S1_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i.i
  %i.o = load i32, ptr %.0.i.i.i, align 4         ; 2 uses
  %i.p = load i32, ptr %i.n, align 4
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !169

_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.r, %i.k
  br i1 %.not23.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i, %bb.e
  %i.s = phi i32 [ %i.u, %bb.e ], [ %i.o, %_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ]
  %i.t = phi ptr [ %i.x, %bb.e ], [ %i.r, %_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ] ; 2 uses
  %.024.i.i = phi ptr [ %.1.i.i, %bb.e ], [ %.0.i.i.i, %_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ] ; 2 uses
  %i.u = load i32, ptr %i.t, align 4              ; 3 uses
  %i.v = icmp eq i32 %i.s, %i.u
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4 ; 2 uses
  store i32 %i.u, ptr %i.w, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.1.i.i = phi ptr [ %.024.i.i, %.lr.ph.i.i ], [ %i.w, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.k
  br i1 %.not.i.i, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i, !llvm.loop !170

._crit_edge.i.i.loopexit:                         ; preds = %bb.e
  %.pre8.pre = load ptr, ptr %i.b, align 8
  %.pre9.pre = load ptr, ptr %1, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit, %_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i
  %.pre9 = phi ptr [ %i.l, %_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ], [ %.pre9.pre, %._crit_edge.i.i.loopexit ]
  %.pre8 = phi ptr [ %i.k, %_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ], [ %.pre8.pre, %._crit_edge.i.i.loopexit ]
  %.0.lcssa.i.i = phi ptr [ %.0.i.i.i, %_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ], [ %.1.i.i, %._crit_edge.i.i.loopexit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 4
  br label %_ZSt6uniqueIPjET_S1_S1_.exit

_ZSt6uniqueIPjET_S1_S1_.exit:                     ; preds = %.preheader.i.i.i, %_ZN2v84base4sortINS0_11SmallVectorIjLm16ESaIjEEEEEvRT_.exit, %._crit_edge.i.i
  %i.z = phi ptr [ %.pre9, %._crit_edge.i.i ], [ %i.l, %_ZN2v84base4sortINS0_11SmallVectorIjLm16ESaIjEEEEEvRT_.exit ], [ %i.l, %.preheader.i.i.i ] ; 15 uses
  %i.aa = phi ptr [ %.pre8, %._crit_edge.i.i ], [ %i.k, %_ZN2v84base4sortINS0_11SmallVectorIjLm16ESaIjEEEEEvRT_.exit ], [ %i.k, %.preheader.i.i.i ] ; 2 uses
  %.015.i.i = phi ptr [ %i.y, %._crit_edge.i.i ], [ %i.k, %_ZN2v84base4sortINS0_11SmallVectorIjLm16ESaIjEEEEEvRT_.exit ], [ %i.k, %.preheader.i.i.i ]
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %.015.i.i to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.af ; 2 uses
  store ptr %i.ag, ptr %i.b, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 5 uses
  %i.ak = ashr exact i64 %i.aj, 2                 ; 8 uses
  %i.al = icmp ult i64 %i.ak, 9
  br i1 %i.al, label %bb.f, label %bb.l

bb.f:                                             ; preds = %_ZSt6uniqueIPjET_S1_S1_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.am = icmp samesign ult i64 %i.ak, 3
  br i1 %i.am, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.an = load i32, ptr %i.z, align 4, !noalias !177
  %i.ao = icmp eq i64 %i.aj, 8
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !noalias !177
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw i64 %i.ar, 32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.4.0.i.i = phi i64 [ %i.as, %bb.h ], [ 0, %bb.g ]
  %i.at = trunc nuw nsw i64 %i.ak to i8
  store i8 2, ptr %0, align 8, !alias.scope !177
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.au, align 1, !alias.scope !177
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.at, ptr %i.av, align 2, !alias.scope !177
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %i.aw, align 1, !alias.scope !177
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ax, align 4, !alias.scope !177
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.04.0.insert.ext.i.i = zext i32 %i.an to i64
  %.sroa.04.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.i.i, %.sroa.04.0.insert.ext.i.i
  store i64 %.sroa.04.0.insert.insert.i.i, ptr %i.ay, align 8, !alias.scope !177
  br label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetILm16EEES4_RKNS_4base11SmallVectorIjXT_ESaIjEEEPNS0_4ZoneE.exit

bb.j:                                             ; preds = %bb.f
  %i.az = add nuw i64 %i.aj, 4
  %i.ba = and i64 %i.az, -8                       ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !177
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8, !noalias !177 ; 2 uses
  %i.bf = sub i64 %i.bc, %i.be
  %i.bg = icmp ugt i64 %i.ba, %i.bf
  br i1 %i.bg, label %bb.k, label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i, !prof !5

bb.k:                                             ; preds = %bb.j
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.ba) #23, !noalias !177
  %.pre.i.i.i.i = load i64, ptr %i.bd, align 8, !noalias !177
  br label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i

_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i: ; preds = %bb.k, %bb.j
  %i.bh = phi i64 [ %.pre.i.i.i.i, %bb.k ], [ %i.be, %bb.j ] ; 4 uses
  %i.bi = inttoptr i64 %i.bh to ptr               ; 6 uses
  %i.bj = add i64 %i.bh, %i.ba
  store i64 %i.bj, ptr %i.bd, align 8, !noalias !177
  %min.iters.check.not = icmp ne i64 %i.aj, 32
  %i.bk = sub i64 %i.bh, %i.ai
  %diff.check = icmp ult i64 %i.bk, 32
  %or.cond = select i1 %min.iters.check.not, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i
  %xtraiter = and i64 %i.ak, 3                    ; 3 uses
  %i.bl = icmp eq i64 %i.aj, 12
  br i1 %i.bl, label %scalar.ph.epil.preheader, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.preheader
  %unroll_iter = and i64 %i.ak, 12
  br label %scalar.ph

vector.body:                                      ; preds = %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load = load <4 x i32>, ptr %i.bm, align 4, !noalias !177
  %wide.load27 = load <4 x i32>, ptr %i.bn, align 4, !noalias !177
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <4 x i32> %wide.load, ptr %i.bo, align 4, !noalias !177
  store <4 x i32> %wide.load27, ptr %i.bp, align 4, !noalias !177
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %i.ak
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !178

middle.block.loopexit.unr-lcssa:                  ; preds = %scalar.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %middle.block.loopexit.unr-lcssa, %scalar.ph.preheader
  %.014.i.i.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %i.cq, %middle.block.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %scalar.ph.epil

scalar.ph.epil:                                   ; preds = %scalar.ph.epil, %scalar.ph.epil.preheader
  %.014.i.i.epil = phi i64 [ %i.bu, %scalar.ph.epil ], [ %.014.i.i.epil.init, %scalar.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %scalar.ph.epil ], [ 0, %scalar.ph.epil.preheader ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.014.i.i.epil
  %i.bs = load i32, ptr %i.br, align 4, !noalias !177
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.014.i.i.epil
  store i32 %i.bs, ptr %i.bt, align 4, !noalias !177
  %i.bu = add nuw i64 %.014.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %scalar.ph.epil, !llvm.loop !181

middle.block:                                     ; preds = %vector.body, %middle.block.loopexit.unr-lcssa, %scalar.ph.epil
  %i.bv = trunc nuw nsw i64 %i.ak to i8
  store i8 2, ptr %0, align 8, !alias.scope !177
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.bw, align 1, !alias.scope !177
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.bv, ptr %i.bx, align 2, !alias.scope !177
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %i.by, align 1, !alias.scope !177
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bz, align 4, !alias.scope !177
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bh, ptr %i.ca, align 8, !alias.scope !177
  br label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetILm16EEES4_RKNS_4base11SmallVectorIjXT_ESaIjEEEPNS0_4ZoneE.exit

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.014.i.i = phi i64 [ 0, %scalar.ph.preheader.new ], [ %i.cq, %scalar.ph ] ; 6 uses
  %niter = phi i64 [ 0, %scalar.ph.preheader.new ], [ %niter.next.3, %scalar.ph ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.014.i.i
  %i.cc = load i32, ptr %i.cb, align 4, !noalias !177
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.014.i.i
  store i32 %i.cc, ptr %i.cd, align 4, !noalias !177
  %i.ce = or disjoint i64 %.014.i.i, 1            ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !noalias !177
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ce
  store i32 %i.cg, ptr %i.ch, align 4, !noalias !177
  %i.ci = or disjoint i64 %.014.i.i, 2            ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !noalias !177
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ci
  store i32 %i.ck, ptr %i.cl, align 4, !noalias !177
  %i.cm = or disjoint i64 %.014.i.i, 3            ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !noalias !177
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cm
  store i32 %i.co, ptr %i.cp, align 4, !noalias !177
  %i.cq = add nuw i64 %.014.i.i, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !182

_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetILm16EEES4_RKNS_4base11SmallVectorIjXT_ESaIjEEEPNS0_4ZoneE.exit: ; preds = %bb.i, %middle.block
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cr, align 8, !alias.scope !177
  br label %bb.m

bb.l:                                             ; preds = %_ZSt6uniqueIPjET_S1_S1_.exit
  %i.cs = add nsw i64 %i.ak, -1                   ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4            ; 3 uses
  %i.cv = load i32, ptr %i.z, align 4             ; 3 uses
  %i.cw = sub i32 %i.cu, %i.cv
  %i.cx = icmp sgt i32 %i.cw, -1
  br i1 %i.cx, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %3 = phi i32 [ %6, %.lr.ph.i ], [ %i.cu, %bb.l ] ; 2 uses
  %4 = phi i32 [ %5, %.lr.ph.i ], [ %i.cv, %bb.l ] ; 2 uses
  %.01025.i.a = phi i64 [ %i.dg, %.lr.ph.i ], [ 1, %bb.l ] ; 2 uses
  %.026.i = phi i64 [ %.1.i, %.lr.ph.i ], [ 0, %bb.l ]
  %.01025.i = phi i64 [ %.111.i, %.lr.ph.i ], [ %i.cs, %bb.l ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.01025.i.a
  %i.cz = load i32, ptr %i.cy, align 4            ; 2 uses
  %i.da = sub i32 %i.cz, %4
  %i.db = add i64 %.01025.i, -1                   ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4            ; 2 uses
  %i.de = sub i32 %3, %i.dd
  %i.df = icmp ult i32 %i.da, %i.de               ; 4 uses
  %.111.i = select i1 %i.df, i64 %.01025.i, i64 %i.db ; 3 uses
  %.1.i = select i1 %i.df, i64 %.01025.i.a, i64 %.026.i ; 3 uses
  %i.dg = add i64 %.1.i, 1                        ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %.111.i
  %5 = select i1 %i.df, i32 %i.cz, i32 %4
  %6 = select i1 %i.df, i32 %3, i32 %i.dd
  br i1 %i.dh, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !183

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.111.i
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4
  %.phi.trans.insert28.i = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.1.i
  %.pre29.i = load i32, ptr %.phi.trans.insert28.i, align 4
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit: ; preds = %bb.l, %._crit_edge.loopexit.i
  %.sroa.024.0.i = phi i32 [ %i.cv, %bb.l ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.sroa.3.0.i = phi i32 [ %i.cu, %bb.l ], [ %.pre29.i, %._crit_edge.loopexit.i ]
  tail call void @_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE5RangeEjjPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %0, i32 noundef %.sroa.024.0.i, i32 noundef %.sroa.3.0.i, ptr noundef %2)
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit, %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetILm16EEES4_RKNS_4base11SmallVectorIjXT_ESaIjEEEPNS0_4ZoneE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE5RangeEjjPNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.k, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 4, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 4
  br i1 %i.r, label %bb.f, label %bb.g, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.b, i64 %i.q, i1 false)
  br label %_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 4
  br i1 %i.s, label %bb.h, label %_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load i32, ptr %i.b, align 4
  store i32 %i.t, ptr %i.o, align 4
  br label %_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit

_ZSt18uninitialized_moveIPjS0_ET0_T_S2_S1_.exit:  ; preds = %bb.f, %bb.g, %bb.h
  %i.u = shl nuw i64 1, %i.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #5 comdat align 2 {
_ZSt9destroy_nIPjlET_S1_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPjlET_S1_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #26
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPjlET_S1_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.au, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !184

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -4 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = load i32, ptr %0, align 4
  store i32 %i.j, ptr %i.h, align 4
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 2                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %i.o = sdiv i64 %i.n, 2
  %i.p = icmp sgt i64 %i.m, 2
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.q = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr [4 x i8], ptr %0, i64 %i.q
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.s, align 4
  %i.w = load i32, ptr %i.u, align 4
  %i.x = icmp ult i32 %i.v, %i.w
  %i.y = or disjoint i64 %i.q, 1
  %spec.select.i.i.i.i = select i1 %i.x, i64 %i.y, i64 %i.r ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i.i.i
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !185

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.l, 4
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.m, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.al, ptr %i.am, align 4
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.aj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE3AddERKNS2_8WordTypeILm32EEES8_PNS0_4ZoneE:bb.a
  %4 = alloca %"class.v8::base::SmallVector.434", align 16 ; 12 uses
  %5 = alloca %"class.v8::base::SmallVector.434", align 16 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = icmp eq i8 %i.b, 0                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.f, %i.h
  %i.j = select i1 %i.c, i1 %i.i, i1 false
  %.sink16.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %.sink16.i.i.sroa.gep50 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %i.m = icmp eq i8 %i.l, 0                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = add i32 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp eq i32 %i.p, %i.r
  %i.t = select i1 %i.m, i1 %i.s, i1 false
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 2, ptr %0, align 8, !alias.scope !459
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.u, i8 0, i64 7, i1 false), !alias.scope !459
  store i64 -4294967296, ptr %i.v, align 8, !alias.scope !459
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.w, align 8, !alias.scope !459
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.x = icmp eq i8 %i.b, 1
  br i1 %i.x, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.y = icmp eq i8 %i.l, 1
  br i1 %i.y, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 7 uses
  store ptr %i.z, ptr %4, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 2             ; 2 uses
  %.not = icmp eq i8 %i.ae, 0
  br i1 %.not, label %._crit_edge54.thread, label %.preheader.lr.ph

._crit_edge54.thread:                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %i.af, ptr %5, align 16
  store ptr %i.af, ptr %.sink16.i.i.sroa.gep, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 88
  store ptr %i.ag, ptr %.sink16.i.i.sroa.gep50, align 16
  br label %bb.h

.preheader.lr.ph:                                 ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %.pre = load i8, ptr %i.ah, align 2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.ai = phi i8 [ %i.ae, %.preheader.lr.ph ], [ %i.az, %._crit_edge ]
  %i.aj = phi i8 [ %.pre, %.preheader.lr.ph ], [ %i.ba, %._crit_edge ] ; 2 uses
  %indvars.iv56 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next57, %._crit_edge ] ; 2 uses
  %.not55 = icmp eq i8 %i.aj, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph

._crit_edge54:                                    ; preds = %._crit_edge
  %.pre60 = load ptr, ptr %4, align 16            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %i.ak, ptr %5, align 16
  store ptr %i.ak, ptr %.sink16.i.i.sroa.gep, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 88
  store ptr %i.al, ptr %.sink16.i.i.sroa.gep50, align 16
  %.not.i.i = icmp eq ptr %.pre60, %i.z
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge54
  call preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %5)
  %i.am = load <2 x ptr>, ptr %4, align 16
  store <2 x ptr> %i.am, ptr %5, align 16
  %i.an = load ptr, ptr %i.ab, align 16
  br label %_ZN2v84base11SmallVectorIjLm16ESaIjEEC2EOS3_.exit

bb.h:                                             ; preds = %._crit_edge54.thread, %._crit_edge54
  %i.ao = phi ptr [ %i.af, %._crit_edge54.thread ], [ %i.ak, %._crit_edge54 ] ; 2 uses
  %i.ap = phi ptr [ %i.z, %._crit_edge54.thread ], [ %.pre60, %._crit_edge54 ] ; 2 uses
  %i.aq = load ptr, ptr %i.aa, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.z to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 4 uses
  %i.au = icmp sgt i64 %i.at, 4
  br i1 %i.au, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %bb.h
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 4 %i.ap, i64 %i.at, i1 false)
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.at, 4
  br i1 %i.av, label %bb.k, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %i.ap, align 4
  store i32 %i.aw, ptr %i.ao, align 4
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i:             ; preds = %bb.k, %bb.j, %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.at
  br label %_ZN2v84base11SmallVectorIjLm16ESaIjEEC2EOS3_.exit

_ZN2v84base11SmallVectorIjLm16ESaIjEEC2EOS3_.exit: ; preds = %bb.g, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i
  %.sink16.i.i.sroa.phi = phi ptr [ %.sink16.i.i.sroa.gep, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i ], [ %.sink16.i.i.sroa.gep50, %bb.g ]
  %.sink.i.i = phi ptr [ %i.ay, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i ], [ %i.an, %bb.g ]
  store ptr %.sink.i.i, ptr %.sink16.i.i.sroa.phi, align 8
  store ptr %i.z, ptr %4, align 16
  store ptr %i.z, ptr %i.aa, align 8
  store ptr %i.ac, ptr %i.ab, align 16
  call void @_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE12FromElementsENS_4base11SmallVectorIjLm16ESaIjEEEPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %0, ptr noundef nonnull %5, ptr noundef %3)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %5)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.s

._crit_edge.loopexit:                             ; preds = %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit
  %.pre59 = load i8, ptr %i.ad, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.az = phi i8 [ %.pre59, %._crit_edge.loopexit ], [ %i.ai, %.preheader ] ; 2 uses
  %i.ba = phi i8 [ %i.bt, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %i.bb = zext i8 %i.az to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next57, %i.bb
  br i1 %i.bc, label %.preheader, label %._crit_edge54, !llvm.loop !464

.lr.ph:                                           ; preds = %.preheader, %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit ], [ 0, %.preheader ] ; 2 uses
  %i.bd = phi i8 [ %i.bt, %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit ], [ %i.aj, %.preheader ]
  %i.be = load i8, ptr %i.ad, align 2
  %i.bf = icmp ult i8 %i.be, 3
  %i.bg = load ptr, ptr %i.g, align 8
  %.sroa.0.0.i.i = select i1 %i.bf, ptr %i.g, ptr %i.bg
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv56
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = icmp ult i8 %i.bd, 3
  %i.bk = load ptr, ptr %i.q, align 8
  %.sroa.0.0.i.i18 = select i1 %i.bj, ptr %i.q, ptr %i.bk
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i18, i64 %indvars.iv
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = add i32 %i.bm, %i.bi
  %i.bo = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.bp = load ptr, ptr %i.ab, align 16
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.l, label %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit, !prof !5

bb.l:                                             ; preds = %.lr.ph
  call preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
  %.pre.i.i = load ptr, ptr %i.aa, align 8
  br label %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit

_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit: ; preds = %.lr.ph, %bb.l
  %i.br = phi ptr [ %.pre.i.i, %bb.l ], [ %i.bo, %.lr.ph ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store ptr %i.bs, ptr %i.aa, align 8
  store i32 %i.bn, ptr %i.br, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bt = load i8, ptr %i.ah, align 2             ; 3 uses
  %i.bu = zext i8 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !465

bb.m:                                             ; preds = %bb.d
  br i1 %i.c, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bw = load i64, ptr %i.g, align 8
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit

.thread:                                          ; preds = %bb.e, %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.by = load i8, ptr %i.bx, align 2             ; 2 uses
  %i.bz = icmp ult i8 %i.by, 3
  %i.ca = load ptr, ptr %i.g, align 8
  %.sroa.3.0.i.i = zext i8 %i.by to i64
  %.sroa.0.0.i.i19 = select i1 %i.bz, ptr %i.g, ptr %i.ca ; 6 uses
  %i.cb = add nsw i64 %.sroa.3.0.i.i, -1          ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i19, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4            ; 4 uses
  %i.ce = load i32, ptr %.sroa.0.0.i.i19, align 4 ; 4 uses
  %i.cf = sub i32 %i.cd, %i.ce
  %i.cg = icmp sgt i32 %i.cf, -1
  br i1 %i.cg, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.thread
  %i.ch = icmp ugt i64 %i.cb, 1
  br i1 %i.ch, label %.lr.ph.i.i, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %6 = phi i32 [ %9, %.lr.ph.i.i ], [ %i.cd, %.preheader.i.i ] ; 2 uses
  %7 = phi i32 [ %8, %.lr.ph.i.i ], [ %i.ce, %.preheader.i.i ] ; 2 uses
  %.01025.i.i.a = phi i64 [ %i.cq, %.lr.ph.i.i ], [ 1, %.preheader.i.i ] ; 2 uses
  %.026.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.01025.i.i = phi i64 [ %.111.i.i, %.lr.ph.i.i ], [ %i.cb, %.preheader.i.i ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i19, i64 %.01025.i.i.a
  %i.cj = load i32, ptr %i.ci, align 4            ; 2 uses
  %i.ck = sub i32 %i.cj, %7
  %i.cl = add i64 %.01025.i.i, -1                 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i19, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4            ; 2 uses
  %i.co = sub i32 %6, %i.cn
  %i.cp = icmp ult i32 %i.ck, %i.co               ; 4 uses
  %.111.i.i = select i1 %i.cp, i64 %.01025.i.i, i64 %i.cl ; 3 uses
  %.1.i.i = select i1 %i.cp, i64 %.01025.i.i.a, i64 %.026.i.i ; 3 uses
  %i.cq = add i64 %.1.i.i, 1                      ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %.111.i.i
  %8 = select i1 %i.cp, i32 %i.cj, i32 %7
  %9 = select i1 %i.cp, i32 %6, i32 %i.cn
  br i1 %i.cr, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !183

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i19, i64 %.111.i.i
  %.pre.i.i20 = load i32, ptr %.phi.trans.insert.i.i, align 4
  %.phi.trans.insert28.i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i19, i64 %.1.i.i
  %.pre29.i.i = load i32, ptr %.phi.trans.insert28.i.i, align 4
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i: ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i, %.thread
  %.sroa.024.0.i.i = phi i32 [ %i.ce, %.thread ], [ %i.cd, %.preheader.i.i ], [ %.pre.i.i20, %._crit_edge.loopexit.i.i ]
  %.sroa.3.0.i4.i = phi i32 [ %i.cd, %.thread ], [ %i.ce, %.preheader.i.i ], [ %.pre29.i.i, %._crit_edge.loopexit.i.i ]
  %.sroa.3.0.insert.ext.i.i = zext i32 %.sroa.3.0.i4.i to i64
  %.sroa.3.0.insert.shift.i.i = shl nuw i64 %.sroa.3.0.insert.ext.i.i, 32
  %.sroa.024.0.insert.ext.i.i = zext i32 %.sroa.024.0.i.i to i64
  %.sroa.024.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i, %.sroa.024.0.insert.ext.i.i
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit: ; preds = %bb.n, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i
  %.sroa.03.0.i = phi i64 [ %i.bw, %bb.n ], [ %.sroa.024.0.insert.insert.i.i, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i ] ; 2 uses
  %.sroa.046.0.extract.trunc = trunc i64 %.sroa.03.0.i to i32 ; 3 uses
  %.sroa.548.0.extract.shift = lshr i64 %.sroa.03.0.i, 32
  %.sroa.548.0.extract.trunc = trunc nuw i64 %.sroa.548.0.extract.shift to i32 ; 3 uses
  br i1 %i.m, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit
  %i.cs = load i64, ptr %i.q, align 8
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit42

bb.p:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cu = load i8, ptr %i.ct, align 2             ; 2 uses
  %i.cv = icmp ult i8 %i.cu, 3
  %i.cw = load ptr, ptr %i.q, align 8
  %.sroa.3.0.i.i21 = zext i8 %i.cu to i64
  %.sroa.0.0.i.i22 = select i1 %i.cv, ptr %i.q, ptr %i.cw ; 6 uses
  %i.cx = add nsw i64 %.sroa.3.0.i.i21, -1        ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i22, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4            ; 4 uses
  %i.da = load i32, ptr %.sroa.0.0.i.i22, align 4 ; 4 uses
  %i.db = sub i32 %i.cz, %i.da
  %i.dc = icmp sgt i32 %i.db, -1
  br i1 %i.dc, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i24, label %.preheader.i.i23

.preheader.i.i23:                                 ; preds = %bb.p
  %i.dd = icmp ugt i64 %i.cx, 1
  br i1 %i.dd, label %.lr.ph.i.i32, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i24

.lr.ph.i.i32:                                     ; preds = %.preheader.i.i23, %.lr.ph.i.i32
  %10 = phi i32 [ %13, %.lr.ph.i.i32 ], [ %i.cz, %.preheader.i.i23 ] ; 2 uses
  %11 = phi i32 [ %12, %.lr.ph.i.i32 ], [ %i.da, %.preheader.i.i23 ] ; 2 uses
  %.01025.i.i34.a = phi i64 [ %i.dm, %.lr.ph.i.i32 ], [ 1, %.preheader.i.i23 ] ; 2 uses
  %.026.i.i33 = phi i64 [ %.1.i.i36, %.lr.ph.i.i32 ], [ 0, %.preheader.i.i23 ]
  %.01025.i.i34 = phi i64 [ %.111.i.i35, %.lr.ph.i.i32 ], [ %i.cx, %.preheader.i.i23 ] ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i22, i64 %.01025.i.i34.a
  %i.df = load i32, ptr %i.de, align 4            ; 2 uses
  %i.dg = sub i32 %i.df, %11
  %i.dh = add i64 %.01025.i.i34, -1               ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i22, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4            ; 2 uses
  %i.dk = sub i32 %10, %i.dj
  %i.dl = icmp ult i32 %i.dg, %i.dk               ; 4 uses
  %.111.i.i35 = select i1 %i.dl, i64 %.01025.i.i34, i64 %i.dh ; 3 uses
  %.1.i.i36 = select i1 %i.dl, i64 %.01025.i.i34.a, i64 %.026.i.i33 ; 3 uses
  %i.dm = add i64 %.1.i.i36, 1                    ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %.111.i.i35
  %12 = select i1 %i.dl, i32 %i.df, i32 %11
  %13 = select i1 %i.dl, i32 %10, i32 %i.dj
  br i1 %i.dn, label %.lr.ph.i.i32, label %._crit_edge.loopexit.i.i37, !llvm.loop !183

._crit_edge.loopexit.i.i37:                       ; preds = %.lr.ph.i.i32
  %.phi.trans.insert.i.i38 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i22, i64 %.111.i.i35
  %.pre.i.i39 = load i32, ptr %.phi.trans.insert.i.i38, align 4
  %.phi.trans.insert28.i.i40 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i22, i64 %.1.i.i36
  %.pre29.i.i41 = load i32, ptr %.phi.trans.insert28.i.i40, align 4
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i24

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i24: ; preds = %._crit_edge.loopexit.i.i37, %.preheader.i.i23, %bb.p
  %.sroa.024.0.i.i25 = phi i32 [ %i.da, %bb.p ], [ %i.cz, %.preheader.i.i23 ], [ %.pre.i.i39, %._crit_edge.loopexit.i.i37 ]
  %.sroa.3.0.i4.i26 = phi i32 [ %i.cz, %bb.p ], [ %i.da, %.preheader.i.i23 ], [ %.pre29.i.i41, %._crit_edge.loopexit.i.i37 ]
  %.sroa.3.0.insert.ext.i.i27 = zext i32 %.sroa.3.0.i4.i26 to i64
  %.sroa.3.0.insert.shift.i.i28 = shl nuw i64 %.sroa.3.0.insert.ext.i.i27, 32
  %.sroa.024.0.insert.ext.i.i29 = zext i32 %.sroa.024.0.i.i25 to i64
  %.sroa.024.0.insert.insert.i.i30 = or disjoint i64 %.sroa.3.0.insert.shift.i.i28, %.sroa.024.0.insert.ext.i.i29
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit42

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit42: ; preds = %bb.o, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i24
  %.sroa.03.0.i31 = phi i64 [ %i.cs, %bb.o ], [ %.sroa.024.0.insert.insert.i.i30, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i24 ] ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.03.0.i31 to i32 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.03.0.i31, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32 ; 3 uses
  %i.do = icmp ugt i32 %.sroa.046.0.extract.trunc, %.sroa.548.0.extract.trunc
  %.neg = zext i1 %i.do to i32
  %i.dp = icmp ugt i32 %.sroa.0.0.extract.trunc, %.sroa.5.0.extract.trunc
  %i.dq = sext i1 %i.dp to i32
  %.p.i.i43 = sub i32 %.sroa.5.0.extract.trunc, %.sroa.0.0.extract.trunc
  %i.dr = add i32 %.p.i.i43, %i.dq
  %.p.i.i.neg = add i32 %.sroa.046.0.extract.trunc, -2
  %.neg51 = sub i32 %.p.i.i.neg, %.sroa.548.0.extract.trunc
  %i.ds = add i32 %.neg51, %.neg
  %i.dt = icmp ugt i32 %i.ds, %i.dr
  br i1 %i.dt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit42
  %i.du = add i32 %.sroa.0.0.extract.trunc, %.sroa.046.0.extract.trunc
  %i.dv = add i32 %.sroa.5.0.extract.trunc, %.sroa.548.0.extract.trunc
  tail call void @_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE5RangeEjjPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %0, i32 noundef %i.du, i32 noundef %i.dv, ptr noundef %3)
  br label %bb.s

bb.r:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit42
  store i8 2, ptr %0, align 8, !alias.scope !466
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.dw, i8 0, i64 7, i1 false), !alias.scope !466
  store i64 -4294967296, ptr %i.dx, align 8, !alias.scope !466
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dy, align 8, !alias.scope !466
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %_ZN2v84base11SmallVectorIjLm16ESaIjEEC2EOS3_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::WordType.433") align 8, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPmlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPmN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.au, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !471

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = load i64, ptr %0, align 8
  store i64 %i.j, ptr %i.h, align 8
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %i.o = sdiv i64 %i.n, 2
  %i.p = icmp sgt i64 %i.m, 2
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.q = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.q
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.s, align 8
  %i.w = load i64, ptr %i.u, align 8
  %i.x = icmp ult i64 %i.v, %i.w
  %i.y = or disjoint i64 %i.q, 1
  %spec.select.i.i.i.i = select i1 %i.x, i64 %i.y, i64 %i.r ; 4 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.i.i
  store i64 %i.aa, ptr %i.ab, align 8
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !472

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.l, 8
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.m, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i64 %i.al, ptr %i.am, align 8
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.aj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i67.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i67.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i67.i.i.i
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.i
  br i1 %i.ap, label %bb.e, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store i64 %i.ao, ptr %i.aq, align 8
  %.not8.i.i.i = icmp eq i64 %.018.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !473

_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i64 %i.i, ptr %i.ar, align 8
  %i.as = icmp sgt i64 %i.l, 8
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !474

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.at = phi i64 [ %i.bs, %bb.b ], [ %i.c, %.lr.ph ]
  %i.au = add nsw i64 %.0121944, -1               ; 3 uses
  %i.av = lshr i64 %i.at, 4
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %.02043, i64 -8 ; 3 uses
  %i.ay = load i64, ptr %i.e, align 8             ; 5 uses
  %i.az = load i64, ptr %i.aw, align 8            ; 5 uses
  %i.ba = icmp ult i64 %i.ay, %i.az
  %i.bb = load i64, ptr %i.ax, align 8            ; 6 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.bc = icmp ult i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = load i64, ptr %0, align 8
  store i64 %i.az, ptr %0, align 8
  store i64 %i.bd, ptr %i.aw, align 8
  br label %_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.be = icmp ult i64 %i.ay, %i.bb
  %i.bf = load i64, ptr %0, align 8               ; 2 uses
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %i.bb, ptr %0, align 8
  store i64 %i.bf, ptr %i.ax, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE8SubtractERKNS2_8WordTypeILm32EEES8_PNS0_4ZoneE:bb.a
  %4 = alloca %"class.v8::base::SmallVector.434", align 16 ; 12 uses
  %5 = alloca %"class.v8::base::SmallVector.434", align 16 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = icmp eq i8 %i.b, 0                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.f, %i.h
  %i.j = select i1 %i.c, i1 %i.i, i1 false
  %.sink16.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %.sink16.i.i.sroa.gep54 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %i.m = icmp eq i8 %i.l, 0                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = add i32 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp eq i32 %i.p, %i.r
  %i.t = select i1 %i.m, i1 %i.s, i1 false
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 2, ptr %0, align 8, !alias.scope !500
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.u, i8 0, i64 7, i1 false), !alias.scope !500
  store i64 -4294967296, ptr %i.v, align 8, !alias.scope !500
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.w, align 8, !alias.scope !500
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.x = icmp eq i8 %i.b, 1
  br i1 %i.x, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.y = icmp eq i8 %i.l, 1
  br i1 %i.y, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 7 uses
  store ptr %i.z, ptr %4, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 2             ; 2 uses
  %.not = icmp eq i8 %i.ae, 0
  br i1 %.not, label %._crit_edge57.thread, label %.preheader.lr.ph

._crit_edge57.thread:                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %i.af, ptr %5, align 16
  store ptr %i.af, ptr %.sink16.i.i.sroa.gep, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 88
  store ptr %i.ag, ptr %.sink16.i.i.sroa.gep54, align 16
  br label %bb.h

.preheader.lr.ph:                                 ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %.pre = load i8, ptr %i.ah, align 2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.ai = phi i8 [ %i.ae, %.preheader.lr.ph ], [ %i.az, %._crit_edge ]
  %i.aj = phi i8 [ %.pre, %.preheader.lr.ph ], [ %i.ba, %._crit_edge ] ; 2 uses
  %indvars.iv59 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next60, %._crit_edge ] ; 2 uses
  %.not58 = icmp eq i8 %i.aj, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph

._crit_edge57:                                    ; preds = %._crit_edge
  %.pre63 = load ptr, ptr %4, align 16            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %i.ak, ptr %5, align 16
  store ptr %i.ak, ptr %.sink16.i.i.sroa.gep, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 88
  store ptr %i.al, ptr %.sink16.i.i.sroa.gep54, align 16
  %.not.i.i = icmp eq ptr %.pre63, %i.z
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge57
  call preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %5)
  %i.am = load <2 x ptr>, ptr %4, align 16
  store <2 x ptr> %i.am, ptr %5, align 16
  %i.an = load ptr, ptr %i.ab, align 16
  br label %_ZN2v84base11SmallVectorIjLm16ESaIjEEC2EOS3_.exit

bb.h:                                             ; preds = %._crit_edge57.thread, %._crit_edge57
  %i.ao = phi ptr [ %i.af, %._crit_edge57.thread ], [ %i.ak, %._crit_edge57 ] ; 2 uses
  %i.ap = phi ptr [ %i.z, %._crit_edge57.thread ], [ %.pre63, %._crit_edge57 ] ; 2 uses
  %i.aq = load ptr, ptr %i.aa, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.z to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 4 uses
  %i.au = icmp sgt i64 %i.at, 4
  br i1 %i.au, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %bb.h
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 4 %i.ap, i64 %i.at, i1 false)
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.at, 4
  br i1 %i.av, label %bb.k, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %i.ap, align 4
  store i32 %i.aw, ptr %i.ao, align 4
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i:             ; preds = %bb.k, %bb.j, %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.at
  br label %_ZN2v84base11SmallVectorIjLm16ESaIjEEC2EOS3_.exit

_ZN2v84base11SmallVectorIjLm16ESaIjEEC2EOS3_.exit: ; preds = %bb.g, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i
  %.sink16.i.i.sroa.phi = phi ptr [ %.sink16.i.i.sroa.gep, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i ], [ %.sink16.i.i.sroa.gep54, %bb.g ]
  %.sink.i.i = phi ptr [ %i.ay, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit.i.i ], [ %i.an, %bb.g ]
  store ptr %.sink.i.i, ptr %.sink16.i.i.sroa.phi, align 8
  store ptr %i.z, ptr %4, align 16
  store ptr %i.z, ptr %i.aa, align 8
  store ptr %i.ac, ptr %i.ab, align 16
  call void @_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE12FromElementsENS_4base11SmallVectorIjLm16ESaIjEEEPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %0, ptr noundef nonnull %5, ptr noundef %3)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %5)
  call preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.t

._crit_edge.loopexit:                             ; preds = %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit
  %.pre62 = load i8, ptr %i.ad, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.az = phi i8 [ %.pre62, %._crit_edge.loopexit ], [ %i.ai, %.preheader ] ; 2 uses
  %i.ba = phi i8 [ %i.bt, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.bb = zext i8 %i.az to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next60, %i.bb
  br i1 %i.bc, label %.preheader, label %._crit_edge57, !llvm.loop !505

.lr.ph:                                           ; preds = %.preheader, %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit ], [ 0, %.preheader ] ; 2 uses
  %i.bd = phi i8 [ %i.bt, %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit ], [ %i.aj, %.preheader ]
  %i.be = load i8, ptr %i.ad, align 2
  %i.bf = icmp ult i8 %i.be, 3
  %i.bg = load ptr, ptr %i.g, align 8
  %.sroa.0.0.i.i = select i1 %i.bf, ptr %i.g, ptr %i.bg
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv59
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = icmp ult i8 %i.bd, 3
  %i.bk = load ptr, ptr %i.q, align 8
  %.sroa.0.0.i.i18 = select i1 %i.bj, ptr %i.q, ptr %i.bk
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i18, i64 %indvars.iv
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = sub i32 %i.bi, %i.bm
  %i.bo = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.bp = load ptr, ptr %i.ab, align 16
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.l, label %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit, !prof !5

bb.l:                                             ; preds = %.lr.ph
  call preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
  %.pre.i.i = load ptr, ptr %i.aa, align 8
  br label %_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit

_ZN2v84base11SmallVectorIjLm16ESaIjEE9push_backEj.exit: ; preds = %.lr.ph, %bb.l
  %i.br = phi ptr [ %.pre.i.i, %bb.l ], [ %i.bo, %.lr.ph ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store ptr %i.bs, ptr %i.aa, align 8
  store i32 %i.bn, ptr %i.br, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bt = load i8, ptr %i.ah, align 2             ; 3 uses
  %i.bu = zext i8 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !506

bb.m:                                             ; preds = %bb.d
  br i1 %i.c, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bw = load i64, ptr %i.g, align 8
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit

.thread:                                          ; preds = %bb.e, %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.by = load i8, ptr %i.bx, align 2             ; 2 uses
  %i.bz = icmp ult i8 %i.by, 3
  %i.ca = load ptr, ptr %i.g, align 8
  %.sroa.3.0.i.i = zext i8 %i.by to i64
  %.sroa.0.0.i.i19 = select i1 %i.bz, ptr %i.g, ptr %i.ca ; 6 uses
  %i.cb = add nsw i64 %.sroa.3.0.i.i, -1          ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i19, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4            ; 4 uses
  %i.ce = load i32, ptr %.sroa.0.0.i.i19, align 4 ; 4 uses
  %i.cf = sub i32 %i.cd, %i.ce
  %i.cg = icmp sgt i32 %i.cf, -1
  br i1 %i.cg, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.thread
  %i.ch = icmp ugt i64 %i.cb, 1
  br i1 %i.ch, label %.lr.ph.i.i, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %6 = phi i32 [ %9, %.lr.ph.i.i ], [ %i.cd, %.preheader.i.i ] ; 2 uses
  %7 = phi i32 [ %8, %.lr.ph.i.i ], [ %i.ce, %.preheader.i.i ] ; 2 uses
  %.01025.i.i.a = phi i64 [ %i.cq, %.lr.ph.i.i ], [ 1, %.preheader.i.i ] ; 2 uses
  %.026.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.01025.i.i = phi i64 [ %.111.i.i, %.lr.ph.i.i ], [ %i.cb, %.preheader.i.i ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i19, i64 %.01025.i.i.a
  %i.cj = load i32, ptr %i.ci, align 4            ; 2 uses
  %i.ck = sub i32 %i.cj, %7
  %i.cl = add i64 %.01025.i.i, -1                 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i19, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4            ; 2 uses
  %i.co = sub i32 %6, %i.cn
  %i.cp = icmp ult i32 %i.ck, %i.co               ; 4 uses
  %.111.i.i = select i1 %i.cp, i64 %.01025.i.i, i64 %i.cl ; 3 uses
  %.1.i.i = select i1 %i.cp, i64 %.01025.i.i.a, i64 %.026.i.i ; 3 uses
  %i.cq = add i64 %.1.i.i, 1                      ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %.111.i.i
  %8 = select i1 %i.cp, i32 %i.cj, i32 %7
  %9 = select i1 %i.cp, i32 %6, i32 %i.cn
  br i1 %i.cr, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !183

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i19, i64 %.111.i.i
  %.pre.i.i20 = load i32, ptr %.phi.trans.insert.i.i, align 4
  %.phi.trans.insert28.i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i19, i64 %.1.i.i
  %.pre29.i.i = load i32, ptr %.phi.trans.insert28.i.i, align 4
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i: ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i, %.thread
  %.sroa.024.0.i.i = phi i32 [ %i.ce, %.thread ], [ %i.cd, %.preheader.i.i ], [ %.pre.i.i20, %._crit_edge.loopexit.i.i ]
  %.sroa.3.0.i4.i = phi i32 [ %i.cd, %.thread ], [ %i.ce, %.preheader.i.i ], [ %.pre29.i.i, %._crit_edge.loopexit.i.i ]
  %.sroa.3.0.insert.ext.i.i = zext i32 %.sroa.3.0.i4.i to i64
  %.sroa.3.0.insert.shift.i.i = shl nuw i64 %.sroa.3.0.insert.ext.i.i, 32
  %.sroa.024.0.insert.ext.i.i = zext i32 %.sroa.024.0.i.i to i64
  %.sroa.024.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i, %.sroa.024.0.insert.ext.i.i
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit: ; preds = %bb.n, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i
  %.sroa.03.0.i = phi i64 [ %i.bw, %bb.n ], [ %.sroa.024.0.insert.insert.i.i, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i ] ; 2 uses
  %.sroa.048.0.extract.trunc = trunc i64 %.sroa.03.0.i to i32 ; 3 uses
  %.sroa.651.0.extract.shift = lshr i64 %.sroa.03.0.i, 32
  %.sroa.651.0.extract.trunc = trunc nuw i64 %.sroa.651.0.extract.shift to i32 ; 3 uses
  br i1 %i.m, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit
  %i.cs = load i64, ptr %i.q, align 8
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit42

bb.p:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cu = load i8, ptr %i.ct, align 2             ; 2 uses
  %i.cv = icmp ult i8 %i.cu, 3
  %i.cw = load ptr, ptr %i.q, align 8
  %.sroa.3.0.i.i21 = zext i8 %i.cu to i64
  %.sroa.0.0.i.i22 = select i1 %i.cv, ptr %i.q, ptr %i.cw ; 6 uses
  %i.cx = add nsw i64 %.sroa.3.0.i.i21, -1        ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i22, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4            ; 4 uses
  %i.da = load i32, ptr %.sroa.0.0.i.i22, align 4 ; 4 uses
  %i.db = sub i32 %i.cz, %i.da
  %i.dc = icmp sgt i32 %i.db, -1
  br i1 %i.dc, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i24, label %.preheader.i.i23

.preheader.i.i23:                                 ; preds = %bb.p
  %i.dd = icmp ugt i64 %i.cx, 1
  br i1 %i.dd, label %.lr.ph.i.i32, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i24

.lr.ph.i.i32:                                     ; preds = %.preheader.i.i23, %.lr.ph.i.i32
  %10 = phi i32 [ %13, %.lr.ph.i.i32 ], [ %i.cz, %.preheader.i.i23 ] ; 2 uses
  %11 = phi i32 [ %12, %.lr.ph.i.i32 ], [ %i.da, %.preheader.i.i23 ] ; 2 uses
  %.01025.i.i34.a = phi i64 [ %i.dm, %.lr.ph.i.i32 ], [ 1, %.preheader.i.i23 ] ; 2 uses
  %.026.i.i33 = phi i64 [ %.1.i.i36, %.lr.ph.i.i32 ], [ 0, %.preheader.i.i23 ]
  %.01025.i.i34 = phi i64 [ %.111.i.i35, %.lr.ph.i.i32 ], [ %i.cx, %.preheader.i.i23 ] ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i22, i64 %.01025.i.i34.a
  %i.df = load i32, ptr %i.de, align 4            ; 2 uses
  %i.dg = sub i32 %i.df, %11
  %i.dh = add i64 %.01025.i.i34, -1               ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i22, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4            ; 2 uses
  %i.dk = sub i32 %10, %i.dj
  %i.dl = icmp ult i32 %i.dg, %i.dk               ; 4 uses
  %.111.i.i35 = select i1 %i.dl, i64 %.01025.i.i34, i64 %i.dh ; 3 uses
  %.1.i.i36 = select i1 %i.dl, i64 %.01025.i.i34.a, i64 %.026.i.i33 ; 3 uses
  %i.dm = add i64 %.1.i.i36, 1                    ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %.111.i.i35
  %12 = select i1 %i.dl, i32 %i.df, i32 %11
  %13 = select i1 %i.dl, i32 %10, i32 %i.dj
  br i1 %i.dn, label %.lr.ph.i.i32, label %._crit_edge.loopexit.i.i37, !llvm.loop !183

._crit_edge.loopexit.i.i37:                       ; preds = %.lr.ph.i.i32
  %.phi.trans.insert.i.i38 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i22, i64 %.111.i.i35
  %.pre.i.i39 = load i32, ptr %.phi.trans.insert.i.i38, align 4
  %.phi.trans.insert28.i.i40 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i.i22, i64 %.1.i.i36
  %.pre29.i.i41 = load i32, ptr %.phi.trans.insert28.i.i40, align 4
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i24

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i24: ; preds = %._crit_edge.loopexit.i.i37, %.preheader.i.i23, %bb.p
  %.sroa.024.0.i.i25 = phi i32 [ %i.da, %bb.p ], [ %i.cz, %.preheader.i.i23 ], [ %.pre.i.i39, %._crit_edge.loopexit.i.i37 ]
  %.sroa.3.0.i4.i26 = phi i32 [ %i.cz, %bb.p ], [ %i.da, %.preheader.i.i23 ], [ %.pre29.i.i41, %._crit_edge.loopexit.i.i37 ]
  %.sroa.3.0.insert.ext.i.i27 = zext i32 %.sroa.3.0.i4.i26 to i64
  %.sroa.3.0.insert.shift.i.i28 = shl nuw i64 %.sroa.3.0.insert.ext.i.i27, 32
  %.sroa.024.0.insert.ext.i.i29 = zext i32 %.sroa.024.0.i.i25 to i64
  %.sroa.024.0.insert.insert.i.i30 = or disjoint i64 %.sroa.3.0.insert.shift.i.i28, %.sroa.024.0.insert.ext.i.i29
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit42

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit42: ; preds = %bb.o, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i24
  %.sroa.03.0.i31 = phi i64 [ %i.cs, %bb.o ], [ %.sroa.024.0.insert.insert.i.i30, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit.i24 ] ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.03.0.i31 to i32 ; 3 uses
  %.sroa.6.0.extract.shift = lshr i64 %.sroa.03.0.i31, 32
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32 ; 3 uses
  %i.do = icmp ugt i32 %.sroa.048.0.extract.trunc, %.sroa.651.0.extract.trunc
  %i.dp = icmp ugt i32 %.sroa.0.0.extract.trunc, %.sroa.6.0.extract.trunc
  %or.cond = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %or.cond, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit42
  %.p.i.i43 = sub nuw i32 %.sroa.6.0.extract.trunc, %.sroa.0.0.extract.trunc
  %.p.i.i.neg = add i32 %.sroa.048.0.extract.trunc, -2
  %i.dq = sub i32 %.p.i.i.neg, %.sroa.651.0.extract.trunc
  %i.dr = icmp ugt i32 %i.dq, %.p.i.i43
  br i1 %i.dr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ds = sub i32 %.sroa.048.0.extract.trunc, %.sroa.6.0.extract.trunc
  %i.dt = sub i32 %.sroa.651.0.extract.trunc, %.sroa.0.0.extract.trunc
  tail call void @_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE5RangeEjjPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %0, i32 noundef %i.ds, i32 noundef %i.dt, ptr noundef %3)
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeERKNS2_8WordTypeILm32EEE.exit42
  store i8 2, ptr %0, align 8, !alias.scope !507
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.du, i8 0, i64 7, i1 false), !alias.scope !507
  store i64 -4294967296, ptr %i.dv, align 8, !alias.scope !507
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dw, align 8, !alias.scope !507
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %_ZN2v84base11SmallVectorIjLm16ESaIjEEC2EOS3_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE3AddERKNS2_8WordTypeILm64EEES8_PNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::WordType.433") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::base::SmallVector.568", align 16 ; 12 uses
  %5 = alloca %"class.v8::base::SmallVector.568", align 16 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = icmp eq i8 %i.b, 0                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = add i64 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp eq i64 %i.f, %i.h
  %i.j = select i1 %i.c, i1 %i.i, i1 false
  %.sink16.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %.sink16.i.i.sroa.gep47 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.k = inttoptr i64 %i.h to ptr
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = icmp eq i8 %i.m, 0                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = add i64 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = icmp eq i64 %i.q, %i.s
  %i.u = select i1 %i.n, i1 %i.t, i1 false
  %i.v = inttoptr i64 %i.s to ptr
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 3, ptr %0, align 8, !alias.scope !512
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.w, i8 0, i64 15, i1 false), !alias.scope !517
  store i64 -1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !512
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.x = icmp eq i8 %i.b, 1
  br i1 %i.x, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.y = icmp eq i8 %i.m, 1
  br i1 %i.y, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 7 uses
  store ptr %i.z, ptr %4, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 2             ; 2 uses
  %.not = icmp eq i8 %i.ae, 0
  br i1 %.not, label %._crit_edge51.thread, label %.preheader.lr.ph

._crit_edge51.thread:                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %i.af, ptr %5, align 16
  store ptr %i.af, ptr %.sink16.i.i.sroa.gep, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 152
  store ptr %i.ag, ptr %.sink16.i.i.sroa.gep47, align 16
  br label %bb.h

.preheader.lr.ph:                                 ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %.pre = load i8, ptr %i.ah, align 2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.ai = phi i8 [ %i.ae, %.preheader.lr.ph ], [ %i.az, %._crit_edge ]
  %i.aj = phi i8 [ %.pre, %.preheader.lr.ph ], [ %i.ba, %._crit_edge ] ; 2 uses
  %indvars.iv53 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next54, %._crit_edge ] ; 2 uses
  %.not52 = icmp eq i8 %i.aj, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph

._crit_edge51:                                    ; preds = %._crit_edge
  %.pre57 = load ptr, ptr %4, align 16            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %i.ak, ptr %5, align 16
  store ptr %i.ak, ptr %.sink16.i.i.sroa.gep, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 152
  store ptr %i.al, ptr %.sink16.i.i.sroa.gep47, align 16
  %.not.i.i = icmp eq ptr %.pre57, %i.z
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge51
  call preserve_mostcc void @_ZN2v84base11SmallVectorImLm16ESaImEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %5)
  %i.am = load <2 x ptr>, ptr %4, align 16
  store <2 x ptr> %i.am, ptr %5, align 16
  %i.an = load ptr, ptr %i.ab, align 16
  br label %_ZN2v84base11SmallVectorImLm16ESaImEEC2EOS3_.exit

bb.h:                                             ; preds = %._crit_edge51.thread, %._crit_edge51
  %i.ao = phi ptr [ %i.af, %._crit_edge51.thread ], [ %i.ak, %._crit_edge51 ] ; 2 uses
  %i.ap = phi ptr [ %i.z, %._crit_edge51.thread ], [ %.pre57, %._crit_edge51 ] ; 2 uses
  %i.aq = load ptr, ptr %i.aa, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.z to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 4 uses
  %i.au = icmp sgt i64 %i.at, 8
  br i1 %i.au, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %bb.h
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.ap, i64 %i.at, i1 false)
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.at, 8
  br i1 %i.av, label %bb.k, label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.aw = load i64, ptr %i.ap, align 8
  store i64 %i.aw, ptr %i.ao, align 8
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i

_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i:             ; preds = %bb.k, %bb.j, %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.at
  br label %_ZN2v84base11SmallVectorImLm16ESaImEEC2EOS3_.exit

_ZN2v84base11SmallVectorImLm16ESaImEEC2EOS3_.exit: ; preds = %bb.g, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i
  %.sink16.i.i.sroa.phi = phi ptr [ %.sink16.i.i.sroa.gep, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i ], [ %.sink16.i.i.sroa.gep47, %bb.g ]
  %.sink.i.i = phi ptr [ %i.ay, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i ], [ %i.an, %bb.g ]
  store ptr %.sink.i.i, ptr %.sink16.i.i.sroa.phi, align 8
  store ptr %i.z, ptr %4, align 16
  store ptr %i.z, ptr %i.aa, align 8
  store ptr %i.ac, ptr %i.ab, align 16
  call void @_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE12FromElementsENS_4base11SmallVectorImLm16ESaImEEEPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::WordType.433") align 8 %0, ptr noundef nonnull %5, ptr noundef %3)
  call preserve_mostcc void @_ZN2v84base11SmallVectorImLm16ESaImEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %5)
  call preserve_mostcc void @_ZN2v84base11SmallVectorImLm16ESaImEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.q

._crit_edge.loopexit:                             ; preds = %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit
  %.pre56 = load i8, ptr %i.ad, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.az = phi i8 [ %.pre56, %._crit_edge.loopexit ], [ %i.ai, %.preheader ] ; 2 uses
  %i.ba = phi i8 [ %i.bt, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.bb = zext i8 %i.az to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next54, %i.bb
  br i1 %i.bc, label %.preheader, label %._crit_edge51, !llvm.loop !518

.lr.ph:                                           ; preds = %.preheader, %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit ], [ 0, %.preheader ] ; 2 uses
  %i.bd = phi i8 [ %i.bt, %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit ], [ %i.aj, %.preheader ]
  %i.be = load i8, ptr %i.ad, align 2
  %i.bf = icmp ult i8 %i.be, 3
  %i.bg = load ptr, ptr %i.g, align 8
  %.sroa.0.0.i.i = select i1 %i.bf, ptr %i.g, ptr %i.bg
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv53
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = icmp ult i8 %i.bd, 3
  %i.bk = load ptr, ptr %i.r, align 8
  %.sroa.0.0.i.i18 = select i1 %i.bj, ptr %i.r, ptr %i.bk
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i18, i64 %indvars.iv
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = add i64 %i.bm, %i.bi
  %i.bo = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.bp = load ptr, ptr %i.ab, align 16
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.l, label %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit, !prof !5

bb.l:                                             ; preds = %.lr.ph
  call preserve_mostcc void @_ZN2v84base11SmallVectorImLm16ESaImEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %4)
  %.pre.i.i = load ptr, ptr %i.aa, align 8
  br label %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit

_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit: ; preds = %.lr.ph, %bb.l
  %i.br = phi ptr [ %.pre.i.i, %bb.l ], [ %i.bo, %.lr.ph ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bs, ptr %i.aa, align 8
  store i64 %i.bn, ptr %i.br, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bt = load i8, ptr %i.ah, align 2             ; 3 uses
  %i.bu = zext i8 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !519

bb.m:                                             ; preds = %bb.d
  br i1 %i.c, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit, label %.thread

.thread:                                          ; preds = %bb.e, %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bx = load i8, ptr %i.bw, align 2             ; 2 uses
  %i.by = icmp ult i8 %i.bx, 3
  %.sroa.3.0.i.i = zext i8 %i.bx to i64
  %.sroa.0.0.i.i19 = select i1 %i.by, ptr %i.g, ptr %i.k ; 6 uses
  %i.bz = add nsw i64 %.sroa.3.0.i.i, -1          ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8            ; 4 uses
  %i.cc = load i64, ptr %.sroa.0.0.i.i19, align 8 ; 4 uses
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = icmp sgt i64 %i.cd, -1
  br i1 %i.ce, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.thread
  %i.cf = icmp ugt i64 %i.bz, 1
  br i1 %i.cf, label %.lr.ph.i.i, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.cg = phi i64 [ %7, %.lr.ph.i.i ], [ %i.cb, %.preheader.i.i ] ; 2 uses
  %.026.i.i.a = phi i64 [ %6, %.lr.ph.i.i ], [ %i.cc, %.preheader.i.i ] ; 2 uses
  %.01025.i.i.a = phi i64 [ %i.cp, %.lr.ph.i.i ], [ 1, %.preheader.i.i ] ; 2 uses
  %.026.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.01025.i.i = phi i64 [ %.111.i.i, %.lr.ph.i.i ], [ %i.bz, %.preheader.i.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %.01025.i.i.a
  %i.ci = load i64, ptr %i.ch, align 8            ; 2 uses
  %i.cj = sub i64 %i.ci, %.026.i.i.a
  %i.ck = add i64 %.01025.i.i, -1                 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8            ; 2 uses
  %i.cn = sub i64 %i.cg, %i.cm
  %i.co = icmp ult i64 %i.cj, %i.cn               ; 4 uses
  %.111.i.i = select i1 %i.co, i64 %.01025.i.i, i64 %i.ck ; 3 uses
  %.1.i.i = select i1 %i.co, i64 %.01025.i.i.a, i64 %.026.i.i ; 3 uses
  %i.cp = add i64 %.1.i.i, 1                      ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %.111.i.i
  %6 = select i1 %i.co, i64 %i.ci, i64 %.026.i.i.a
  %7 = select i1 %i.co, i64 %i.cg, i64 %i.cm
  br i1 %i.cq, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !520

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %.111.i.i
  %.pre.i.i20 = load i64, ptr %.phi.trans.insert.i.i, align 8
  %.phi.trans.insert28.i.i = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %.1.i.i
  %.pre29.i.i = load i64, ptr %.phi.trans.insert28.i.i, align 8
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit: ; preds = %bb.m, %.thread, %.preheader.i.i, %._crit_edge.loopexit.i.i
  %.pn12.i = phi i64 [ %.pre.i.i20, %._crit_edge.loopexit.i.i ], [ %i.cc, %.thread ], [ %i.cb, %.preheader.i.i ], [ %i.h, %bb.m ] ; 3 uses
  %.pn10.i = phi i64 [ %.pre29.i.i, %._crit_edge.loopexit.i.i ], [ %i.cb, %.thread ], [ %i.cc, %.preheader.i.i ], [ %i.e, %bb.m ] ; 3 uses
  br i1 %i.n, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cs = load i8, ptr %i.cr, align 2             ; 2 uses
  %i.ct = icmp ult i8 %i.cs, 3
  %.sroa.3.0.i.i21 = zext i8 %i.cs to i64
  %.sroa.0.0.i.i22 = select i1 %i.ct, ptr %i.r, ptr %i.v ; 6 uses
  %i.cu = add nsw i64 %.sroa.3.0.i.i21, -1        ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8            ; 4 uses
  %i.cx = load i64, ptr %.sroa.0.0.i.i22, align 8 ; 4 uses
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = icmp sgt i64 %i.cy, -1
  br i1 %i.cz, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38, label %.preheader.i.i23

.preheader.i.i23:                                 ; preds = %bb.n
  %i.da = icmp ugt i64 %i.cu, 1
  br i1 %i.da, label %.lr.ph.i.i28, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38

.lr.ph.i.i28:                                     ; preds = %.preheader.i.i23, %.lr.ph.i.i28
  %i.db = phi i64 [ %9, %.lr.ph.i.i28 ], [ %i.cw, %.preheader.i.i23 ] ; 2 uses
  %.026.i.i29.a = phi i64 [ %8, %.lr.ph.i.i28 ], [ %i.cx, %.preheader.i.i23 ] ; 2 uses
  %.01025.i.i30.a = phi i64 [ %i.dk, %.lr.ph.i.i28 ], [ 1, %.preheader.i.i23 ] ; 2 uses
  %.026.i.i29 = phi i64 [ %.1.i.i32, %.lr.ph.i.i28 ], [ 0, %.preheader.i.i23 ]
  %.01025.i.i30 = phi i64 [ %.111.i.i31, %.lr.ph.i.i28 ], [ %i.cu, %.preheader.i.i23 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %.01025.i.i30.a
  %i.dd = load i64, ptr %i.dc, align 8            ; 2 uses
  %i.de = sub i64 %i.dd, %.026.i.i29.a
  %i.df = add i64 %.01025.i.i30, -1               ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8            ; 2 uses
  %i.di = sub i64 %i.db, %i.dh
  %i.dj = icmp ult i64 %i.de, %i.di               ; 4 uses
  %.111.i.i31 = select i1 %i.dj, i64 %.01025.i.i30, i64 %i.df ; 3 uses
  %.1.i.i32 = select i1 %i.dj, i64 %.01025.i.i30.a, i64 %.026.i.i29 ; 3 uses
  %i.dk = add i64 %.1.i.i32, 1                    ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %.111.i.i31
  %8 = select i1 %i.dj, i64 %i.dd, i64 %.026.i.i29.a
  %9 = select i1 %i.dj, i64 %i.db, i64 %i.dh
  br i1 %i.dl, label %.lr.ph.i.i28, label %._crit_edge.loopexit.i.i33, !llvm.loop !520

._crit_edge.loopexit.i.i33:                       ; preds = %.lr.ph.i.i28
  %.phi.trans.insert.i.i34 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %.111.i.i31
  %.pre.i.i35 = load i64, ptr %.phi.trans.insert.i.i34, align 8
  %.phi.trans.insert28.i.i36 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %.1.i.i32
  %.pre29.i.i37 = load i64, ptr %.phi.trans.insert28.i.i36, align 8
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38: ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit, %bb.n, %.preheader.i.i23, %._crit_edge.loopexit.i.i33
  %.pn12.i24 = phi i64 [ %.pre.i.i35, %._crit_edge.loopexit.i.i33 ], [ %i.cx, %bb.n ], [ %i.cw, %.preheader.i.i23 ], [ %i.s, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit ] ; 3 uses
  %.pn10.i25 = phi i64 [ %.pre29.i.i37, %._crit_edge.loopexit.i.i33 ], [ %i.cw, %bb.n ], [ %i.cx, %.preheader.i.i23 ], [ %i.p, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit ] ; 3 uses
  %i.dm = icmp ugt i64 %.pn12.i, %.pn10.i
  %.neg = zext i1 %i.dm to i64
  %i.dn = icmp ugt i64 %.pn12.i24, %.pn10.i25
  %i.do = sext i1 %i.dn to i64
  %.p.i.i39 = sub i64 %.pn10.i25, %.pn12.i24
  %i.dp = add i64 %.p.i.i39, %i.do
  %.p.i.i.neg = add i64 %.pn12.i, -2
  %.neg48 = sub i64 %.p.i.i.neg, %.pn10.i
  %i.dq = add i64 %.neg48, %.neg
  %i.dr = icmp ugt i64 %i.dq, %i.dp
  br i1 %i.dr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38
  %i.ds = add i64 %.pn12.i24, %.pn12.i
  %i.dt = add i64 %.pn10.i25, %.pn10.i
  tail call void @_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::WordType.433") align 8 %0, i64 noundef %i.ds, i64 noundef %i.dt, ptr noundef %3)
  br label %bb.q

bb.p:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38
  store i8 3, ptr %0, align 8, !alias.scope !521
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.4.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.du, i8 0, i64 15, i1 false), !alias.scope !526
  store i64 -1, ptr %.sroa.4.0..sroa_idx.i.i40, align 8, !alias.scope !521
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %_ZN2v84base11SmallVectorImLm16ESaImEEC2EOS3_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE12FromElementsENS_4base11SmallVectorImLm16ESaImEEEPNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::WordType.433") align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i.i, label %_ZN2v84base4sortINS0_11SmallVectorImLm16ESaImEEEEEvRT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  tail call void @_ZSt16__introsort_loopIPmlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %i.a, ptr noundef %i.c, i64 noundef %i.j)
  tail call void @_ZSt22__final_insertion_sortIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %i.a, ptr noundef %i.c)
  %.pre = load ptr, ptr %1, align 8
  %.pre9 = load ptr, ptr %i.b, align 8
  br label %_ZN2v84base4sortINS0_11SmallVectorImLm16ESaImEEEEEvRT_.exit

_ZN2v84base4sortINS0_11SmallVectorImLm16ESaImEEEEEvRT_.exit: ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.c, %bb.a ], [ %.pre9, %bb.b ] ; 9 uses
  %i.l = phi ptr [ %i.a, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.m = icmp eq ptr %i.l, %i.k
  br i1 %i.m, label %_ZSt6uniqueIPmET_S1_S1_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZN2v84base4sortINS0_11SmallVectorImLm16ESaImEEEEEvRT_.exit, %bb.c
  %.0.i.i.i = phi ptr [ %i.n, %bb.c ], [ %i.l, %_ZN2v84base4sortINS0_11SmallVectorImLm16ESaImEEEEEvRT_.exit ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.n, %i.k
  br i1 %.not.i.i.i4, label %_ZSt6uniqueIPmET_S1_S1_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i.i
  %i.o = load i64, ptr %.0.i.i.i, align 8         ; 2 uses
  %i.p = load i64, ptr %i.n, align 8
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %_ZSt15__adjacent_findIPmN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !527

_ZSt15__adjacent_findIPmN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.r, %i.k
  br i1 %.not23.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt15__adjacent_findIPmN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i, %bb.e
  %i.s = phi i64 [ %i.u, %bb.e ], [ %i.o, %_ZSt15__adjacent_findIPmN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ]
  %i.t = phi ptr [ %i.x, %bb.e ], [ %i.r, %_ZSt15__adjacent_findIPmN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ] ; 2 uses
  %.024.i.i = phi ptr [ %.1.i.i, %bb.e ], [ %.0.i.i.i, %_ZSt15__adjacent_findIPmN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ] ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 3 uses
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 8 ; 2 uses
  store i64 %i.u, ptr %i.w, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.1.i.i = phi ptr [ %.024.i.i, %.lr.ph.i.i ], [ %i.w, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.k
  br i1 %.not.i.i, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i, !llvm.loop !528

._crit_edge.i.i.loopexit:                         ; preds = %bb.e
  %.pre10.pre = load ptr, ptr %i.b, align 8
  %.pre11.pre = load ptr, ptr %1, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit, %_ZSt15__adjacent_findIPmN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i
  %.pre11 = phi ptr [ %i.l, %_ZSt15__adjacent_findIPmN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ], [ %.pre11.pre, %._crit_edge.i.i.loopexit ]
  %.pre10 = phi ptr [ %i.k, %_ZSt15__adjacent_findIPmN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ], [ %.pre10.pre, %._crit_edge.i.i.loopexit ]
  %.0.lcssa.i.i = phi ptr [ %.0.i.i.i, %_ZSt15__adjacent_findIPmN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i ], [ %.1.i.i, %._crit_edge.i.i.loopexit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 8
  br label %_ZSt6uniqueIPmET_S1_S1_.exit

_ZSt6uniqueIPmET_S1_S1_.exit:                     ; preds = %.preheader.i.i.i, %_ZN2v84base4sortINS0_11SmallVectorImLm16ESaImEEEEEvRT_.exit, %._crit_edge.i.i
  %i.z = phi ptr [ %.pre11, %._crit_edge.i.i ], [ %i.l, %_ZN2v84base4sortINS0_11SmallVectorImLm16ESaImEEEEEvRT_.exit ], [ %i.l, %.preheader.i.i.i ] ; 15 uses
  %i.aa = phi ptr [ %.pre10, %._crit_edge.i.i ], [ %i.k, %_ZN2v84base4sortINS0_11SmallVectorImLm16ESaImEEEEEvRT_.exit ], [ %i.k, %.preheader.i.i.i ] ; 2 uses
  %.015.i.i = phi ptr [ %i.y, %._crit_edge.i.i ], [ %i.k, %_ZN2v84base4sortINS0_11SmallVectorImLm16ESaImEEEEEvRT_.exit ], [ %i.k, %.preheader.i.i.i ]
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %.015.i.i to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.af ; 2 uses
  store ptr %i.ag, ptr %i.b, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 5 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 10 uses
  %i.al = icmp ult i64 %i.ak, 9
  br i1 %i.al, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZSt6uniqueIPmET_S1_S1_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.am = icmp samesign ult i64 %i.ak, 3
  br i1 %i.am, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.an = load i64, ptr %i.z, align 8, !noalias !535 ; 2 uses
  %i.ao = icmp eq i64 %i.aj, 16
  br i1 %i.ao, label %bb.h, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !535
  br label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit

bb.i:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !noalias !535
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !noalias !535 ; 2 uses
  %i.av = sub i64 %i.as, %i.au
  %i.aw = icmp ugt i64 %i.aj, %i.av
  br i1 %i.aw, label %bb.j, label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i, !prof !5

bb.j:                                             ; preds = %bb.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.aj) #23, !noalias !535
  %.pre.i.i.i.i = load i64, ptr %i.at, align 8, !noalias !535
  br label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i

_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i: ; preds = %bb.j, %bb.i
  %i.ax = phi i64 [ %.pre.i.i.i.i, %bb.j ], [ %i.au, %bb.i ] ; 6 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 6 uses
  %i.az = add i64 %i.ax, %i.aj
  store i64 %i.az, ptr %i.at, align 8, !noalias !535
  %min.iters.check = icmp ult i64 %i.ak, 6
  %i.ba = sub i64 %i.ax, %i.ai
  %diff.check = icmp ult i64 %i.ba, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i
  %n.vec = and i64 %i.ak, 12                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <2 x i64>, ptr %i.bb, align 8, !noalias !535
  %wide.load29 = load <2 x i64>, ptr %i.bc, align 8, !noalias !535
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <2 x i64> %wide.load, ptr %i.bd, align 8, !noalias !535
  store <2 x i64> %wide.load29, ptr %i.be, align 8, !noalias !535
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !536

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i, %middle.block
  %.014.i.i.ph = phi i64 [ 0, %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.014.i.i.prol = phi i64 [ %i.bj, %scalar.ph.prol ], [ %.014.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.014.i.i.prol
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !535
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.014.i.i.prol
  store i64 %i.bh, ptr %i.bi, align 8, !noalias !535
  %i.bj = add nuw i64 %.014.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !537

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.014.i.i.unr = phi i64 [ %.014.i.i.ph, %scalar.ph.preheader ], [ %i.bj, %scalar.ph.prol ]
  %i.bk = sub nsw i64 %.014.i.i.ph, %i.ak
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.014.i.i = phi i64 [ %i.cb, %scalar.ph ], [ %.014.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.014.i.i
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !535
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.014.i.i
  store i64 %i.bn, ptr %i.bo, align 8, !noalias !535
  %i.bp = add nuw i64 %.014.i.i, 1                ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !noalias !535
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  store i64 %i.br, ptr %i.bs, align 8, !noalias !535
  %i.bt = add nuw i64 %.014.i.i, 2                ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !535
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bt
  store i64 %i.bv, ptr %i.bw, align 8, !noalias !535
  %i.bx = add nuw i64 %.014.i.i, 3                ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !noalias !535
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bx
  store i64 %i.bz, ptr %i.ca, align 8, !noalias !535
  %i.cb = add nuw i64 %.014.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cb, %i.ak
  br i1 %exitcond.not.i.i.3, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit, label %scalar.ph, !llvm.loop !538

_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.g, %bb.h
  %.sink17.i.i = phi i64 [ %i.an, %bb.g ], [ %i.an, %bb.h ], [ %i.ax, %middle.block ], [ %i.ax, %scalar.ph ], [ %i.ax, %scalar.ph.prol.loopexit ]
  %.sink.i.i = phi i64 [ undef, %bb.g ], [ %i.aq, %bb.h ], [ 0, %middle.block ], [ 0, %scalar.ph ], [ 0, %scalar.ph.prol.loopexit ]
  %i.cc = trunc nuw nsw i64 %i.ak to i8
  store i8 3, ptr %0, align 8, !alias.scope !535
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.cd, align 1, !alias.scope !535
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.cc, ptr %i.ce, align 2, !alias.scope !535
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %i.cf, align 1, !alias.scope !535
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.cg, align 4, !alias.scope !535
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink17.i.i, ptr %i.ch, align 8, !alias.scope !535
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i.i, ptr %i.ci, align 8, !alias.scope !535
  br label %bb.l

bb.k:                                             ; preds = %_ZSt6uniqueIPmET_S1_S1_.exit
  %i.cj = add nsw i64 %i.ak, -1                   ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8            ; 3 uses
  %i.cm = load i64, ptr %i.z, align 8             ; 3 uses
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = icmp sgt i64 %i.cn, -1
  br i1 %i.co, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeENS_4base6VectorIKmEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %i.cp = phi i64 [ %4, %.lr.ph.i ], [ %i.cl, %bb.k ] ; 2 uses
  %.026.i.a = phi i64 [ %3, %.lr.ph.i ], [ %i.cm, %bb.k ] ; 2 uses
  %.01025.i.a = phi i64 [ %i.cy, %.lr.ph.i ], [ 1, %bb.k ] ; 2 uses
  %.026.i = phi i64 [ %.1.i, %.lr.ph.i ], [ 0, %bb.k ]
  %.01025.i = phi i64 [ %.111.i, %.lr.ph.i ], [ %i.cj, %bb.k ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.01025.i.a
  %i.cr = load i64, ptr %i.cq, align 8            ; 2 uses
  %i.cs = sub i64 %i.cr, %.026.i.a
  %i.ct = add i64 %.01025.i, -1                   ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8            ; 2 uses
  %i.cw = sub i64 %i.cp, %i.cv
  %i.cx = icmp ult i64 %i.cs, %i.cw               ; 4 uses
  %.111.i = select i1 %i.cx, i64 %.01025.i, i64 %i.ct ; 3 uses
  %.1.i = select i1 %i.cx, i64 %.01025.i.a, i64 %.026.i ; 3 uses
  %i.cy = add i64 %.1.i, 1                        ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %.111.i
  %3 = select i1 %i.cx, i64 %i.cr, i64 %.026.i.a
  %4 = select i1 %i.cx, i64 %i.cp, i64 %i.cv
  br i1 %i.cz, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !520

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.111.i
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  %.phi.trans.insert28.i = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.1.i
  %.pre29.i = load i64, ptr %.phi.trans.insert28.i, align 8
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeENS_4base6VectorIKmEE.exit

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeENS_4base6VectorIKmEE.exit: ; preds = %bb.k, %._crit_edge.loopexit.i
  %.sroa.024.0.i = phi i64 [ %i.cm, %bb.k ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.sroa.3.0.i = phi i64 [ %i.cl, %bb.k ], [ %.pre29.i, %._crit_edge.loopexit.i ]
  tail call void @_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::WordType.433") align 8 %0, i64 noundef %.sroa.024.0.i, i64 noundef %.sroa.3.0.i, ptr noundef %2)
  br label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeENS_4base6VectorIKmEE.exit, %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorImLm16ESaImEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorImLm16ESaImEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorImLm16ESaImEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.k, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.b, i64 %i.q, i1 false)
  br label %_ZSt18uninitialized_moveIPmS0_ET0_T_S2_S1_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.h, label %_ZSt18uninitialized_moveIPmS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.b, align 8
  store i64 %i.t, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPmS0_ET0_T_S2_S1_.exit

_ZSt18uninitialized_moveIPmS0_ET0_T_S2_S1_.exit:  ; preds = %bb.f, %bb.g, %bb.h
  %i.u = shl nuw i64 1, %i.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorImLm16ESaImEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorImLm16ESaImEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #5 comdat align 2 {
_ZSt9destroy_nIPmlET_S1_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPmlET_S1_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #26
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPmlET_S1_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE8SubtractERKNS2_8WordTypeILm64EEES8_PNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::WordType.433") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::base::SmallVector.568", align 16 ; 12 uses
  %5 = alloca %"class.v8::base::SmallVector.568", align 16 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = icmp eq i8 %i.b, 0                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = add i64 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp eq i64 %i.f, %i.h
  %i.j = select i1 %i.c, i1 %i.i, i1 false
  %.sink16.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %.sink16.i.i.sroa.gep51 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.k = inttoptr i64 %i.h to ptr
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = icmp eq i8 %i.m, 0                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = add i64 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = icmp eq i64 %i.q, %i.s
  %i.u = select i1 %i.n, i1 %i.t, i1 false
  %i.v = inttoptr i64 %i.s to ptr
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 3, ptr %0, align 8, !alias.scope !539
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.w, i8 0, i64 15, i1 false), !alias.scope !544
  store i64 -1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !539
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.x = icmp eq i8 %i.b, 1
  br i1 %i.x, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.y = icmp eq i8 %i.m, 1
  br i1 %i.y, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 7 uses
  store ptr %i.z, ptr %4, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 2             ; 2 uses
  %.not = icmp eq i8 %i.ae, 0
  br i1 %.not, label %._crit_edge54.thread, label %.preheader.lr.ph

._crit_edge54.thread:                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %i.af, ptr %5, align 16
  store ptr %i.af, ptr %.sink16.i.i.sroa.gep, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 152
  store ptr %i.ag, ptr %.sink16.i.i.sroa.gep51, align 16
  br label %bb.h

.preheader.lr.ph:                                 ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %.pre = load i8, ptr %i.ah, align 2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.ai = phi i8 [ %i.ae, %.preheader.lr.ph ], [ %i.az, %._crit_edge ]
  %i.aj = phi i8 [ %.pre, %.preheader.lr.ph ], [ %i.ba, %._crit_edge ] ; 2 uses
  %indvars.iv56 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next57, %._crit_edge ] ; 2 uses
  %.not55 = icmp eq i8 %i.aj, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph

._crit_edge54:                                    ; preds = %._crit_edge
  %.pre60 = load ptr, ptr %4, align 16            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %i.ak, ptr %5, align 16
  store ptr %i.ak, ptr %.sink16.i.i.sroa.gep, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 152
  store ptr %i.al, ptr %.sink16.i.i.sroa.gep51, align 16
  %.not.i.i = icmp eq ptr %.pre60, %i.z
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge54
  call preserve_mostcc void @_ZN2v84base11SmallVectorImLm16ESaImEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %5)
  %i.am = load <2 x ptr>, ptr %4, align 16
  store <2 x ptr> %i.am, ptr %5, align 16
  %i.an = load ptr, ptr %i.ab, align 16
  br label %_ZN2v84base11SmallVectorImLm16ESaImEEC2EOS3_.exit

bb.h:                                             ; preds = %._crit_edge54.thread, %._crit_edge54
  %i.ao = phi ptr [ %i.af, %._crit_edge54.thread ], [ %i.ak, %._crit_edge54 ] ; 2 uses
  %i.ap = phi ptr [ %i.z, %._crit_edge54.thread ], [ %.pre60, %._crit_edge54 ] ; 2 uses
  %i.aq = load ptr, ptr %i.aa, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.z to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 4 uses
  %i.au = icmp sgt i64 %i.at, 8
  br i1 %i.au, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %bb.h
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.ap, i64 %i.at, i1 false)
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.at, 8
  br i1 %i.av, label %bb.k, label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.aw = load i64, ptr %i.ap, align 8
  store i64 %i.aw, ptr %i.ao, align 8
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i

_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i:             ; preds = %bb.k, %bb.j, %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.at
  br label %_ZN2v84base11SmallVectorImLm16ESaImEEC2EOS3_.exit

_ZN2v84base11SmallVectorImLm16ESaImEEC2EOS3_.exit: ; preds = %bb.g, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i
  %.sink16.i.i.sroa.phi = phi ptr [ %.sink16.i.i.sroa.gep, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i ], [ %.sink16.i.i.sroa.gep51, %bb.g ]
  %.sink.i.i = phi ptr [ %i.ay, %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit.i.i ], [ %i.an, %bb.g ]
  store ptr %.sink.i.i, ptr %.sink16.i.i.sroa.phi, align 8
  store ptr %i.z, ptr %4, align 16
  store ptr %i.z, ptr %i.aa, align 8
  store ptr %i.ac, ptr %i.ab, align 16
  call void @_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE12FromElementsENS_4base11SmallVectorImLm16ESaImEEEPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::WordType.433") align 8 %0, ptr noundef nonnull %5, ptr noundef %3)
  call preserve_mostcc void @_ZN2v84base11SmallVectorImLm16ESaImEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %5)
  call preserve_mostcc void @_ZN2v84base11SmallVectorImLm16ESaImEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.r

._crit_edge.loopexit:                             ; preds = %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit
  %.pre59 = load i8, ptr %i.ad, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.az = phi i8 [ %.pre59, %._crit_edge.loopexit ], [ %i.ai, %.preheader ] ; 2 uses
  %i.ba = phi i8 [ %i.bt, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %i.bb = zext i8 %i.az to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next57, %i.bb
  br i1 %i.bc, label %.preheader, label %._crit_edge54, !llvm.loop !545

.lr.ph:                                           ; preds = %.preheader, %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit ], [ 0, %.preheader ] ; 2 uses
  %i.bd = phi i8 [ %i.bt, %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit ], [ %i.aj, %.preheader ]
  %i.be = load i8, ptr %i.ad, align 2
  %i.bf = icmp ult i8 %i.be, 3
  %i.bg = load ptr, ptr %i.g, align 8
  %.sroa.0.0.i.i = select i1 %i.bf, ptr %i.g, ptr %i.bg
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %indvars.iv56
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = icmp ult i8 %i.bd, 3
  %i.bk = load ptr, ptr %i.r, align 8
  %.sroa.0.0.i.i18 = select i1 %i.bj, ptr %i.r, ptr %i.bk
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i18, i64 %indvars.iv
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = sub i64 %i.bi, %i.bm
  %i.bo = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.bp = load ptr, ptr %i.ab, align 16
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.l, label %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit, !prof !5

bb.l:                                             ; preds = %.lr.ph
  call preserve_mostcc void @_ZN2v84base11SmallVectorImLm16ESaImEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %4)
  %.pre.i.i = load ptr, ptr %i.aa, align 8
  br label %_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit

_ZN2v84base11SmallVectorImLm16ESaImEE9push_backEm.exit: ; preds = %.lr.ph, %bb.l
  %i.br = phi ptr [ %.pre.i.i, %bb.l ], [ %i.bo, %.lr.ph ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bs, ptr %i.aa, align 8
  store i64 %i.bn, ptr %i.br, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bt = load i8, ptr %i.ah, align 2             ; 3 uses
  %i.bu = zext i8 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !546

bb.m:                                             ; preds = %bb.d
  br i1 %i.c, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit, label %.thread

.thread:                                          ; preds = %bb.e, %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bx = load i8, ptr %i.bw, align 2             ; 2 uses
  %i.by = icmp ult i8 %i.bx, 3
  %.sroa.3.0.i.i = zext i8 %i.bx to i64
  %.sroa.0.0.i.i19 = select i1 %i.by, ptr %i.g, ptr %i.k ; 6 uses
  %i.bz = add nsw i64 %.sroa.3.0.i.i, -1          ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8            ; 4 uses
  %i.cc = load i64, ptr %.sroa.0.0.i.i19, align 8 ; 4 uses
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = icmp sgt i64 %i.cd, -1
  br i1 %i.ce, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.thread
  %i.cf = icmp ugt i64 %i.bz, 1
  br i1 %i.cf, label %.lr.ph.i.i, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.cg = phi i64 [ %7, %.lr.ph.i.i ], [ %i.cb, %.preheader.i.i ] ; 2 uses
  %.026.i.i.a = phi i64 [ %6, %.lr.ph.i.i ], [ %i.cc, %.preheader.i.i ] ; 2 uses
  %.01025.i.i.a = phi i64 [ %i.cp, %.lr.ph.i.i ], [ 1, %.preheader.i.i ] ; 2 uses
  %.026.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.01025.i.i = phi i64 [ %.111.i.i, %.lr.ph.i.i ], [ %i.bz, %.preheader.i.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %.01025.i.i.a
  %i.ci = load i64, ptr %i.ch, align 8            ; 2 uses
  %i.cj = sub i64 %i.ci, %.026.i.i.a
  %i.ck = add i64 %.01025.i.i, -1                 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8            ; 2 uses
  %i.cn = sub i64 %i.cg, %i.cm
  %i.co = icmp ult i64 %i.cj, %i.cn               ; 4 uses
  %.111.i.i = select i1 %i.co, i64 %.01025.i.i, i64 %i.ck ; 3 uses
  %.1.i.i = select i1 %i.co, i64 %.01025.i.i.a, i64 %.026.i.i ; 3 uses
  %i.cp = add i64 %.1.i.i, 1                      ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %.111.i.i
  %6 = select i1 %i.co, i64 %i.ci, i64 %.026.i.i.a
  %7 = select i1 %i.co, i64 %i.cg, i64 %i.cm
  br i1 %i.cq, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !520

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %.111.i.i
  %.pre.i.i20 = load i64, ptr %.phi.trans.insert.i.i, align 8
  %.phi.trans.insert28.i.i = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %.1.i.i
  %.pre29.i.i = load i64, ptr %.phi.trans.insert28.i.i, align 8
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit: ; preds = %bb.m, %.thread, %.preheader.i.i, %._crit_edge.loopexit.i.i
  %.pn12.i = phi i64 [ %.pre.i.i20, %._crit_edge.loopexit.i.i ], [ %i.cc, %.thread ], [ %i.cb, %.preheader.i.i ], [ %i.h, %bb.m ] ; 3 uses
  %.pn10.i = phi i64 [ %.pre29.i.i, %._crit_edge.loopexit.i.i ], [ %i.cb, %.thread ], [ %i.cc, %.preheader.i.i ], [ %i.e, %bb.m ] ; 3 uses
  br i1 %i.n, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cs = load i8, ptr %i.cr, align 2             ; 2 uses
  %i.ct = icmp ult i8 %i.cs, 3
  %.sroa.3.0.i.i21 = zext i8 %i.cs to i64
  %.sroa.0.0.i.i22 = select i1 %i.ct, ptr %i.r, ptr %i.v ; 6 uses
  %i.cu = add nsw i64 %.sroa.3.0.i.i21, -1        ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8            ; 4 uses
  %i.cx = load i64, ptr %.sroa.0.0.i.i22, align 8 ; 4 uses
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = icmp sgt i64 %i.cy, -1
  br i1 %i.cz, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38, label %.preheader.i.i23

.preheader.i.i23:                                 ; preds = %bb.n
  %i.da = icmp ugt i64 %i.cu, 1
  br i1 %i.da, label %.lr.ph.i.i28, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38

.lr.ph.i.i28:                                     ; preds = %.preheader.i.i23, %.lr.ph.i.i28
  %i.db = phi i64 [ %9, %.lr.ph.i.i28 ], [ %i.cw, %.preheader.i.i23 ] ; 2 uses
  %.026.i.i29.a = phi i64 [ %8, %.lr.ph.i.i28 ], [ %i.cx, %.preheader.i.i23 ] ; 2 uses
  %.01025.i.i30.a = phi i64 [ %i.dk, %.lr.ph.i.i28 ], [ 1, %.preheader.i.i23 ] ; 2 uses
  %.026.i.i29 = phi i64 [ %.1.i.i32, %.lr.ph.i.i28 ], [ 0, %.preheader.i.i23 ]
  %.01025.i.i30 = phi i64 [ %.111.i.i31, %.lr.ph.i.i28 ], [ %i.cu, %.preheader.i.i23 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %.01025.i.i30.a
  %i.dd = load i64, ptr %i.dc, align 8            ; 2 uses
  %i.de = sub i64 %i.dd, %.026.i.i29.a
  %i.df = add i64 %.01025.i.i30, -1               ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8            ; 2 uses
  %i.di = sub i64 %i.db, %i.dh
  %i.dj = icmp ult i64 %i.de, %i.di               ; 4 uses
  %.111.i.i31 = select i1 %i.dj, i64 %.01025.i.i30, i64 %i.df ; 3 uses
  %.1.i.i32 = select i1 %i.dj, i64 %.01025.i.i30.a, i64 %.026.i.i29 ; 3 uses
  %i.dk = add i64 %.1.i.i32, 1                    ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %.111.i.i31
  %8 = select i1 %i.dj, i64 %i.dd, i64 %.026.i.i29.a
  %9 = select i1 %i.dj, i64 %i.db, i64 %i.dh
  br i1 %i.dl, label %.lr.ph.i.i28, label %._crit_edge.loopexit.i.i33, !llvm.loop !520

._crit_edge.loopexit.i.i33:                       ; preds = %.lr.ph.i.i28
  %.phi.trans.insert.i.i34 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %.111.i.i31
  %.pre.i.i35 = load i64, ptr %.phi.trans.insert.i.i34, align 8
  %.phi.trans.insert28.i.i36 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %.1.i.i32
  %.pre29.i.i37 = load i64, ptr %.phi.trans.insert28.i.i36, align 8
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38: ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit, %bb.n, %.preheader.i.i23, %._crit_edge.loopexit.i.i33
  %.pn12.i24 = phi i64 [ %.pre.i.i35, %._crit_edge.loopexit.i.i33 ], [ %i.cx, %bb.n ], [ %i.cw, %.preheader.i.i23 ], [ %i.s, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit ] ; 3 uses
  %.pn10.i25 = phi i64 [ %.pre29.i.i37, %._crit_edge.loopexit.i.i33 ], [ %i.cw, %bb.n ], [ %i.cx, %.preheader.i.i23 ], [ %i.p, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit ] ; 3 uses
  %i.dm = icmp ugt i64 %.pn12.i, %.pn10.i
  %i.dn = icmp ugt i64 %.pn12.i24, %.pn10.i25
  %or.cond = select i1 %i.dm, i1 true, i1 %i.dn
  br i1 %or.cond, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38
  %.p.i.i39 = sub nuw i64 %.pn10.i25, %.pn12.i24
  %.p.i.i.neg = add i64 %.pn12.i, -2
  %i.do = sub i64 %.p.i.i.neg, %.pn10.i
  %i.dp = icmp ugt i64 %i.do, %.p.i.i39
  br i1 %i.dp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dq = sub i64 %.pn12.i, %.pn10.i25
  %i.dr = sub i64 %.pn10.i, %.pn12.i24
  tail call void @_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::WordType.433") align 8 %0, i64 noundef %i.dq, i64 noundef %i.dr, ptr noundef %3)
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38
  store i8 3, ptr %0, align 8, !alias.scope !547
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.4.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ds, i8 0, i64 15, i1 false), !alias.scope !552
  store i64 -1, ptr %.sroa.4.0..sroa_idx.i.i40, align 8, !alias.scope !547
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %_ZN2v84base11SmallVectorImLm16ESaImEEC2EOS3_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(496) %1, ptr noundef nonnull align 4 dereferenceable(5) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 9 uses
  %4 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 10 uses
  %5 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 6 uses
  %.sroa.3 = alloca [23 x i8], align 1            ; 3 uses
  %6 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %.sroa.03.0.copyload = load i32, ptr %i.a, align 4
  %i.c = lshr i32 %.sroa.03.0.copyload, 4
  %i.d = zext nneg i32 %i.c to i64                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !553
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !noalias !553 ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 4
  %.not.i.i.i.i = icmp ugt i64 %i.l, %i.d
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableISt8optionalINS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEEEEixENS2_7OpIndexE.exit.i.i, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.n = lshr i64 %i.d, 1
  %i.o = add nuw nsw i64 %i.d, 32
  %i.p = add nuw nsw i64 %i.o, %i.n
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft16SnapshotTableKeyINS4_4TypeENS4_9NoKeyDataEEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 noundef %i.p), !noalias !553
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.r = load ptr, ptr %i.q, align 8, !noalias !553
  %i.s = load ptr, ptr %i.g, align 8, !noalias !553
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 4
  tail call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft16SnapshotTableKeyINS4_4TypeENS4_9NoKeyDataEEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 noundef %i.w), !noalias !553
  %.pre.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !553
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableISt8optionalINS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEEEEixENS2_7OpIndexE.exit.i.i

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableISt8optionalINS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEEEEixENS2_7OpIndexE.exit.i.i: ; preds = %bb.b, %bb.a
  %i.x = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.h, %bb.a ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.d ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !553
  %i.z = trunc nuw i8 %.sroa.4.0.copyload.i.i to i1
  br i1 %i.z, label %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrInvalidENS2_7OpIndexE.exit.i, label %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit.thread

_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrInvalidENS2_7OpIndexE.exit.i: ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableISt8optionalINS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEEEEixENS2_7OpIndexE.exit.i.i
  %.sroa.0.0.copyload3.i.i = load ptr, ptr %i.y, align 8, !noalias !553 ; 2 uses
  %.sroa.0.0.copyload3.i = load i8, ptr %.sroa.0.0.copyload3.i.i, align 8, !noalias !558 ; 3 uses
  %i.aa = icmp eq i8 %.sroa.0.0.copyload3.i, 0
  br i1 %i.aa, label %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit.thread, label %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit

_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableISt8optionalINS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEEEEixENS2_7OpIndexE.exit.i.i, %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrInvalidENS2_7OpIndexE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i8 1, ptr %4, align 8
  %.sroa.337.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %4, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.337.0..sroa_idx42, i8 0, i64 23, i1 false)
  br label %bb.c

_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrInvalidENS2_7OpIndexE.exit.i
  %.sroa.6.0..sroa.0.0.copyload3.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i8 %.sroa.0.0.copyload3.i, ptr %4, align 8
  %.sroa.337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.337.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.0..sroa.0.0.copyload3.i.sroa_idx.i, i64 23, i1 false)
  %i.ab = icmp eq i8 %.sroa.0.0.copyload3.i, 1
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit.thread, %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  br label %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.02.0.copyload.i = load i8, ptr %i.ac, align 4, !noalias !559
  %i.ad = icmp eq i8 %.sroa.02.0.copyload.i, 0
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !559
  call void @_ZN2v88internal8compiler10turboshaft5Typer19TruncateWord32InputERKNS2_4TypeEbPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true, ptr noundef %i.af)
  br label %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  br label %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit

_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit: ; preds = %bb.c, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ag = load i16, ptr %i.b, align 2
  %i.ah = icmp ugt i16 %i.ag, 1
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 416
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit25, %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit
  ret void

bb.g:                                             ; preds = %.lr.ph, %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit25
  %.045 = phi i64 [ 1, %.lr.ph ], [ %i.bm, %_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_.exit25 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.045
  %.sroa.0.0.copyload = load i32, ptr %i.am, align 4
  %i.an = lshr i32 %.sroa.0.0.copyload, 4
  %i.ao = zext nneg i32 %i.an to i64              ; 4 uses
  %i.ap = load ptr, ptr %i.e, align 8, !noalias !562
  %i.aq = load ptr, ptr %i.g, align 8, !noalias !562 ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 4
  %.not.i.i.i.i12 = icmp ugt i64 %i.au, %i.ao
  br i1 %.not.i.i.i.i12, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableISt8optionalINS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEEEEixENS2_7OpIndexE.exit.i.i14, label %bb.h, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.av = lshr i64 %i.ao, 1
  %i.aw = add nuw nsw i64 %i.ao, 32
  %i.ax = add nuw nsw i64 %i.aw, %i.av
  call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft16SnapshotTableKeyINS4_4TypeENS4_9NoKeyDataEEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 noundef %i.ax), !noalias !562
  %i.ay = load ptr, ptr %i.aj, align 8, !noalias !562
  %i.az = load ptr, ptr %i.g, align 8, !noalias !562
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 4
  call void @_ZN2v88internal10ZoneVectorISt8optionalINS0_8compiler10turboshaft16SnapshotTableKeyINS4_4TypeENS4_9NoKeyDataEEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 noundef %i.bd), !noalias !562
  %.pre.i.i.i.i13 = load ptr, ptr %i.g, align 8, !noalias !562
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableISt8optionalINS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEEEEixENS2_7OpIndexE.exit.i.i14

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableISt8optionalINS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEEEEixENS2_7OpIndexE.exit.i.i14: ; preds = %bb.h, %bb.g
  %i.be = phi ptr [ %.pre.i.i.i.i13, %bb.h ], [ %i.aq, %bb.g ]
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.ao ; 2 uses
  %.sroa.4.0..sroa_idx.i.i15 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.4.0.copyload.i.i16 = load i8, ptr %.sroa.4.0..sroa_idx.i.i15, align 8, !noalias !562
  %i.bg = trunc nuw i8 %.sroa.4.0.copyload.i.i16 to i1
  br i1 %i.bg, label %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrInvalidENS2_7OpIndexE.exit.i18, label %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit23.thread

_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrInvalidENS2_7OpIndexE.exit.i18: ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableISt8optionalINS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEEEEixENS2_7OpIndexE.exit.i.i14
  %.sroa.0.0.copyload3.i.i19 = load ptr, ptr %i.bf, align 8, !noalias !562 ; 2 uses
  %.sroa.0.0.copyload3.i20 = load i8, ptr %.sroa.0.0.copyload3.i.i19, align 8, !noalias !567 ; 3 uses
  %i.bh = icmp eq i8 %.sroa.0.0.copyload3.i20, 0
  br i1 %i.bh, label %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit23.thread, label %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit23

_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE.exit23.thread: ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableISt8optionalINS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEEEEixENS2_7OpIndexE.exit.i.i14, %_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrInvalidENS2_7OpIndexE.exit.i18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.3, i8 0, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i8 1, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.3.0..sroa_idx, i8 0, i64 23, i1 false)
end_hunk_2
