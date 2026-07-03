inline.NumInlined: 32241
inline.NumDeleted: 11422
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 103
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft5Typer19TruncateWord32InputERKNS2_4TypeEbPNS0_4ZoneE:bb.a
  %i.ax = icmp eq i64 %i.au, %i.aw
  %i.ay = icmp ugt i64 %i.aw, %i.at
  %i.az = or i1 %i.ax, %i.ay
  %or.cond27 = select i1 %i.ar, i1 %i.az, i1 false
  br i1 %or.cond27, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 2, ptr %0, align 8, !alias.scope !155
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ba, i8 0, i64 7, i1 false), !alias.scope !155
  store i64 -4294967296, ptr %i.bb, align 8, !alias.scope !155
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bc, align 8, !alias.scope !155
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
  store i8 2, ptr %0, align 8, !alias.scope !160
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bf, i8 0, i64 7, i1 false), !alias.scope !160
  store i64 -4294967296, ptr %i.bg, align 8, !alias.scope !160
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bh, align 8, !alias.scope !160
  br label %bb.s

bb.r:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZNK2v88internal8compiler10turboshaft4Type8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.bi = load ptr, ptr %6, align 8
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.13, ptr noundef %i.bi) #23
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
  br i1 %i.q, label %_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !165

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
  br i1 %.not.i.i, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i, !llvm.loop !166

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.am = icmp samesign ult i64 %i.ak, 3
  br i1 %i.am, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.an = load i32, ptr %i.z, align 4, !noalias !173
  %i.ao = icmp eq i64 %i.aj, 8
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !noalias !173
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw i64 %i.ar, 32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.4.0.i.i = phi i64 [ %i.as, %bb.h ], [ 0, %bb.g ]
  %i.at = trunc nuw nsw i64 %i.ak to i8
  store i8 2, ptr %0, align 8, !alias.scope !173
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.au, align 1, !alias.scope !173
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.at, ptr %i.av, align 2, !alias.scope !173
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %i.aw, align 1, !alias.scope !173
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ax, align 4, !alias.scope !173
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.04.0.insert.ext.i.i = zext i32 %i.an to i64
  %.sroa.04.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.i.i, %.sroa.04.0.insert.ext.i.i
  store i64 %.sroa.04.0.insert.insert.i.i, ptr %i.ay, align 8, !alias.scope !173
  br label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetILm16EEES4_RKNS_4base11SmallVectorIjXT_ESaIjEEEPNS0_4ZoneE.exit

bb.j:                                             ; preds = %bb.f
  %i.az = add nuw i64 %i.aj, 4
  %i.ba = and i64 %i.az, -8                       ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !173
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8, !noalias !173 ; 2 uses
  %i.bf = sub i64 %i.bc, %i.be
  %i.bg = icmp ugt i64 %i.ba, %i.bf
  br i1 %i.bg, label %bb.k, label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i, !prof !5

bb.k:                                             ; preds = %bb.j
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.ba) #22, !noalias !173
  %.pre.i.i.i.i = load i64, ptr %i.bd, align 8, !noalias !173
  br label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i

_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i: ; preds = %bb.k, %bb.j
  %i.bh = phi i64 [ %.pre.i.i.i.i, %bb.k ], [ %i.be, %bb.j ] ; 4 uses
  %i.bi = inttoptr i64 %i.bh to ptr               ; 6 uses
  %i.bj = add i64 %i.bh, %i.ba
  store i64 %i.bj, ptr %i.bd, align 8, !noalias !173
  %min.iters.check.not = icmp ne i64 %i.aj, 32
  %i.bk = sub i64 %i.ai, %i.bh
  %diff.check = icmp ugt i64 %i.bk, -32
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
  %wide.load = load <4 x i32>, ptr %i.bm, align 4, !noalias !173
  %wide.load27 = load <4 x i32>, ptr %i.bn, align 4, !noalias !173
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <4 x i32> %wide.load, ptr %i.bo, align 4, !noalias !173
  store <4 x i32> %wide.load27, ptr %i.bp, align 4, !noalias !173
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %i.ak
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !174

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
  %i.bs = load i32, ptr %i.br, align 4, !noalias !173
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.014.i.i.epil
  store i32 %i.bs, ptr %i.bt, align 4, !noalias !173
  %i.bu = add nuw i64 %.014.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %scalar.ph.epil, !llvm.loop !177

middle.block:                                     ; preds = %vector.body, %middle.block.loopexit.unr-lcssa, %scalar.ph.epil
  %i.bv = trunc nuw nsw i64 %i.ak to i8
  store i8 2, ptr %0, align 8, !alias.scope !173
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.bw, align 1, !alias.scope !173
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.bv, ptr %i.bx, align 2, !alias.scope !173
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %i.by, align 1, !alias.scope !173
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bz, align 4, !alias.scope !173
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bh, ptr %i.ca, align 8, !alias.scope !173
  br label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetILm16EEES4_RKNS_4base11SmallVectorIjXT_ESaIjEEEPNS0_4ZoneE.exit

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.014.i.i = phi i64 [ 0, %scalar.ph.preheader.new ], [ %i.cq, %scalar.ph ] ; 6 uses
  %niter = phi i64 [ 0, %scalar.ph.preheader.new ], [ %niter.next.3, %scalar.ph ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.014.i.i
  %i.cc = load i32, ptr %i.cb, align 4, !noalias !173
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.014.i.i
  store i32 %i.cc, ptr %i.cd, align 4, !noalias !173
  %i.ce = or disjoint i64 %.014.i.i, 1            ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !noalias !173
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ce
  store i32 %i.cg, ptr %i.ch, align 4, !noalias !173
  %i.ci = or disjoint i64 %.014.i.i, 2            ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !noalias !173
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ci
  store i32 %i.ck, ptr %i.cl, align 4, !noalias !173
  %i.cm = or disjoint i64 %.014.i.i, 3            ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !noalias !173
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cm
  store i32 %i.co, ptr %i.cp, align 4, !noalias !173
  %i.cq = add nuw i64 %.014.i.i, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !179

_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetILm16EEES4_RKNS_4base11SmallVectorIjXT_ESaIjEEEPNS0_4ZoneE.exit: ; preds = %bb.i, %middle.block
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cr, align 8, !alias.scope !173
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
  %i.cy = phi i32 [ %i.dm, %.lr.ph.i ], [ %i.cu, %bb.l ] ; 2 uses
  %i.cz = phi i32 [ %i.dl, %.lr.ph.i ], [ %i.cv, %bb.l ] ; 2 uses
  %i.da = phi i64 [ %i.dj, %.lr.ph.i ], [ 1, %bb.l ] ; 2 uses
  %.026.i = phi i64 [ %.1.i, %.lr.ph.i ], [ 0, %bb.l ]
  %.01025.i = phi i64 [ %.111.i, %.lr.ph.i ], [ %i.cs, %bb.l ] ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4            ; 2 uses
  %i.dd = sub i32 %i.dc, %i.cz
  %i.de = add i64 %.01025.i, -1                   ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4            ; 2 uses
  %i.dh = sub i32 %i.cy, %i.dg
  %i.di = icmp ult i32 %i.dd, %i.dh               ; 4 uses
  %.111.i = select i1 %i.di, i64 %.01025.i, i64 %i.de ; 3 uses
  %.1.i = select i1 %i.di, i64 %i.da, i64 %.026.i ; 3 uses
  %i.dj = add i64 %.1.i, 1                        ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %.111.i
  %i.dl = select i1 %i.di, i32 %i.dc, i32 %i.cz
  %i.dm = select i1 %i.di, i32 %i.cy, i32 %i.dg
  br i1 %i.dk, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !180

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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 4, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 5 uses
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

end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE3AddERKNS2_8WordTypeILm64EEES8_PNS0_4ZoneE:bb.a
  %.026.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.01025.i.i = phi i64 [ %.111.i.i, %.lr.ph.i.i ], [ %i.bz, %.preheader.i.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cl = sub i64 %i.ck, %i.ch
  %i.cm = add i64 %.01025.i.i, -1                 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i19, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8            ; 2 uses
  %i.cp = sub i64 %i.cg, %i.co
  %i.cq = icmp ult i64 %i.cl, %i.cp               ; 4 uses
  %.111.i.i = select i1 %i.cq, i64 %.01025.i.i, i64 %i.cm ; 3 uses
  %.1.i.i = select i1 %i.cq, i64 %i.ci, i64 %.026.i.i ; 3 uses
  %i.cr = add i64 %.1.i.i, 1                      ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %.111.i.i
  %i.ct = select i1 %i.cq, i64 %i.ck, i64 %i.ch
  %i.cu = select i1 %i.cq, i64 %i.cg, i64 %i.co
  br i1 %i.cs, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !517

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
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cw = load i8, ptr %i.cv, align 2             ; 2 uses
  %i.cx = icmp ult i8 %i.cw, 3
  %.sroa.3.0.i.i21 = zext i8 %i.cw to i64
  %.sroa.0.0.i.i22 = select i1 %i.cx, ptr %i.r, ptr %i.v ; 6 uses
  %i.cy = add nsw i64 %.sroa.3.0.i.i21, -1        ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8            ; 4 uses
  %i.db = load i64, ptr %.sroa.0.0.i.i22, align 8 ; 4 uses
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = icmp sgt i64 %i.dc, -1
  br i1 %i.dd, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38, label %.preheader.i.i23

.preheader.i.i23:                                 ; preds = %bb.n
  %i.de = icmp ugt i64 %i.cy, 1
  br i1 %i.de, label %.lr.ph.i.i28, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38

.lr.ph.i.i28:                                     ; preds = %.preheader.i.i23, %.lr.ph.i.i28
  %i.df = phi i64 [ %i.dt, %.lr.ph.i.i28 ], [ %i.da, %.preheader.i.i23 ] ; 2 uses
  %i.dg = phi i64 [ %i.ds, %.lr.ph.i.i28 ], [ %i.db, %.preheader.i.i23 ] ; 2 uses
  %i.dh = phi i64 [ %i.dq, %.lr.ph.i.i28 ], [ 1, %.preheader.i.i23 ] ; 2 uses
  %.026.i.i29 = phi i64 [ %.1.i.i32, %.lr.ph.i.i28 ], [ 0, %.preheader.i.i23 ]
  %.01025.i.i30 = phi i64 [ %.111.i.i31, %.lr.ph.i.i28 ], [ %i.cy, %.preheader.i.i23 ] ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8            ; 2 uses
  %i.dk = sub i64 %i.dj, %i.dg
  %i.dl = add i64 %.01025.i.i30, -1               ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8            ; 2 uses
  %i.do = sub i64 %i.df, %i.dn
  %i.dp = icmp ult i64 %i.dk, %i.do               ; 4 uses
  %.111.i.i31 = select i1 %i.dp, i64 %.01025.i.i30, i64 %i.dl ; 3 uses
  %.1.i.i32 = select i1 %i.dp, i64 %i.dh, i64 %.026.i.i29 ; 3 uses
  %i.dq = add i64 %.1.i.i32, 1                    ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %.111.i.i31
  %i.ds = select i1 %i.dp, i64 %i.dj, i64 %i.dg
  %i.dt = select i1 %i.dp, i64 %i.df, i64 %i.dn
  br i1 %i.dr, label %.lr.ph.i.i28, label %._crit_edge.loopexit.i.i33, !llvm.loop !517

._crit_edge.loopexit.i.i33:                       ; preds = %.lr.ph.i.i28
  %.phi.trans.insert.i.i34 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %.111.i.i31
  %.pre.i.i35 = load i64, ptr %.phi.trans.insert.i.i34, align 8
  %.phi.trans.insert28.i.i36 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i22, i64 %.1.i.i32
  %.pre29.i.i37 = load i64, ptr %.phi.trans.insert28.i.i36, align 8
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38: ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit, %bb.n, %.preheader.i.i23, %._crit_edge.loopexit.i.i33
  %.pn12.i24 = phi i64 [ %.pre.i.i35, %._crit_edge.loopexit.i.i33 ], [ %i.db, %bb.n ], [ %i.da, %.preheader.i.i23 ], [ %i.s, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit ] ; 3 uses
  %.pn10.i25 = phi i64 [ %.pre29.i.i37, %._crit_edge.loopexit.i.i33 ], [ %i.da, %bb.n ], [ %i.db, %.preheader.i.i23 ], [ %i.p, %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit ] ; 3 uses
  %i.du = icmp ugt i64 %.pn12.i, %.pn10.i
  %.neg = zext i1 %i.du to i64
  %i.dv = icmp ugt i64 %.pn12.i24, %.pn10.i25
  %i.dw = sext i1 %i.dv to i64
  %.p.i.i39 = sub i64 %.pn10.i25, %.pn12.i24
  %i.dx = add i64 %.p.i.i39, %i.dw
  %.p.i.i.neg = add i64 %.pn12.i, -2
  %.neg48 = sub i64 %.p.i.i.neg, %.pn10.i
  %i.dy = add i64 %.neg48, %.neg
  %i.dz = icmp ugt i64 %i.dy, %i.dx
  br i1 %i.dz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38
  %i.ea = add i64 %.pn12.i24, %.pn12.i
  %i.eb = add i64 %.pn10.i25, %.pn10.i
  tail call void @_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::WordType.280") align 8 %0, i64 noundef %i.ea, i64 noundef %i.eb, ptr noundef %3)
  br label %bb.q

bb.p:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeERKNS2_8WordTypeILm64EEE.exit38
  store i8 3, ptr %0, align 8, !alias.scope !518
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.4.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ec, i8 0, i64 15, i1 false), !alias.scope !523
  store i64 -1, ptr %.sroa.4.0..sroa_idx.i.i40, align 8, !alias.scope !518
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %_ZN2v84base11SmallVectorImLm16ESaImEEC2EOS3_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE12FromElementsENS_4base11SmallVectorImLm16ESaImEEEPNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::WordType.280") align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
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
  br i1 %i.q, label %_ZSt15__adjacent_findIPmN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !524

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
  br i1 %.not.i.i, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i, !llvm.loop !525

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
  %i.aj = sub i64 %i.ah, %i.ai                    ; 7 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 7 uses
  %i.al = icmp ult i64 %i.ak, 9
  br i1 %i.al, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZSt6uniqueIPmET_S1_S1_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  %i.am = icmp samesign ult i64 %i.ak, 3
  br i1 %i.am, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.an = load i64, ptr %i.z, align 8, !noalias !532 ; 2 uses
  %i.ao = icmp eq i64 %i.aj, 16
  br i1 %i.ao, label %bb.h, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !532
  br label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit

bb.i:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !noalias !532
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !noalias !532 ; 2 uses
  %i.av = sub i64 %i.as, %i.au
  %i.aw = icmp ugt i64 %i.aj, %i.av
  br i1 %i.aw, label %bb.j, label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i, !prof !5

bb.j:                                             ; preds = %bb.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.aj) #22, !noalias !532
  %.pre.i.i.i.i = load i64, ptr %i.at, align 8, !noalias !532
  br label %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i

_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i: ; preds = %bb.j, %bb.i
  %i.ax = phi i64 [ %.pre.i.i.i.i, %bb.j ], [ %i.au, %bb.i ] ; 6 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 6 uses
  %i.az = add i64 %i.ax, %i.aj
  store i64 %i.az, ptr %i.at, align 8, !noalias !532
  %min.iters.check.not = icmp ne i64 %i.aj, 64
  %i.ba = sub i64 %i.ai, %i.ax
  %diff.check = icmp ugt i64 %i.ba, -32
  %or.cond = select i1 %min.iters.check.not, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i
  %xtraiter = and i64 %i.ak, 3                    ; 3 uses
  %3 = icmp eq i64 %i.aj, 24
  br i1 %3, label %scalar.ph.prol.loopexit, label %vector.ph

vector.ph:                                        ; preds = %scalar.ph.preheader
  %n.vec = and i64 %i.ak, 12
  br label %scalar.ph.prol

vector.body:                                      ; preds = %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %_ZN2v88internal4Zone13AllocateArrayImA_mEEPT_m.exit.i.i ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <2 x i64>, ptr %i.bb, align 8, !noalias !532
  %wide.load29 = load <2 x i64>, ptr %i.bc, align 8, !noalias !532
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <2 x i64> %wide.load, ptr %i.bd, align 8, !noalias !532
  store <2 x i64> %wide.load29, ptr %i.be, align 8, !noalias !532
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %i.ak
  br i1 %i.bf, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit, label %vector.body, !llvm.loop !533

scalar.ph.prol:                                   ; preds = %scalar.ph.prol, %vector.ph
  %.014.i.i.prol = phi i64 [ 0, %vector.ph ], [ %i.bj, %scalar.ph.prol ] ; 6 uses
  %prol.iter = phi i64 [ 0, %vector.ph ], [ %prol.iter.next, %scalar.ph.prol ]
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.014.i.i.prol
  %5 = load i64, ptr %4, align 8, !noalias !532
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.014.i.i.prol
  store i64 %5, ptr %6, align 8, !noalias !532
  %7 = or disjoint i64 %.014.i.i.prol, 1          ; 2 uses
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %7
  %9 = load i64, ptr %8, align 8, !noalias !532
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %7
  store i64 %9, ptr %10, align 8, !noalias !532
  %11 = or disjoint i64 %.014.i.i.prol, 2         ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %11
  %13 = load i64, ptr %12, align 8, !noalias !532
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %11
  store i64 %13, ptr %14, align 8, !noalias !532
  %15 = or disjoint i64 %.014.i.i.prol, 3         ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %15
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !532
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %15
  store i64 %i.bh, ptr %i.bi, align 8, !noalias !532
  %i.bj = add nuw i64 %.014.i.i.prol, 4           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 4         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %n.vec
  br i1 %prol.iter.cmp.not, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit.loopexit.unr-lcssa, label %scalar.ph.prol, !llvm.loop !534

_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit.loopexit.unr-lcssa: ; preds = %scalar.ph.prol
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit, label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit.loopexit.unr-lcssa, %scalar.ph.preheader
  %.014.i.i.unr = phi i64 [ 0, %scalar.ph.preheader ], [ %i.bj, %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit.loopexit.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %.014.i.i = phi i64 [ %i.bn, %scalar.ph ], [ %.014.i.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %epil.iter = phi i64 [ %i.bo, %scalar.ph ], [ 0, %scalar.ph.prol.loopexit ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.014.i.i
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !532
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.014.i.i
  store i64 %i.bl, ptr %i.bm, align 8, !noalias !532
  %i.bn = add nuw i64 %.014.i.i, 1
  %i.bo = add i64 %epil.iter, 1                   ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bo, %xtraiter
  br i1 %exitcond.not.i.i.3, label %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit, label %scalar.ph, !llvm.loop !535

_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit: ; preds = %vector.body, %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit.loopexit.unr-lcssa, %scalar.ph, %bb.g, %bb.h
  %.sink17.i.i = phi i64 [ %i.an, %bb.g ], [ %i.an, %bb.h ], [ %i.ax, %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit.loopexit.unr-lcssa ], [ %i.ax, %scalar.ph ], [ %i.ax, %vector.body ]
  %.sink.i.i = phi i64 [ undef, %bb.g ], [ %i.aq, %bb.h ], [ 0, %_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE.exit.loopexit.unr-lcssa ], [ 0, %scalar.ph ], [ 0, %vector.body ]
  %i.bp = trunc nuw nsw i64 %i.ak to i8
  store i8 3, ptr %0, align 8, !alias.scope !532
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.bq, align 1, !alias.scope !532
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.bp, ptr %i.br, align 2, !alias.scope !532
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %i.bs, align 1, !alias.scope !532
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bt, align 4, !alias.scope !532
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink17.i.i, ptr %i.bu, align 8, !alias.scope !532
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i.i, ptr %i.bv, align 8, !alias.scope !532
  br label %bb.l

bb.k:                                             ; preds = %_ZSt6uniqueIPmET_S1_S1_.exit
  %i.bw = add nsw i64 %i.ak, -1                   ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8            ; 3 uses
  %i.bz = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = icmp sgt i64 %i.ca, -1
  br i1 %i.cb, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeENS_4base6VectorIKmEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %i.cc = phi i64 [ %i.cq, %.lr.ph.i ], [ %i.by, %bb.k ] ; 2 uses
  %i.cd = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.bz, %bb.k ] ; 2 uses
  %i.ce = phi i64 [ %i.cn, %.lr.ph.i ], [ 1, %bb.k ] ; 2 uses
  %.026.i = phi i64 [ %.1.i, %.lr.ph.i ], [ 0, %bb.k ]
  %.01025.i = phi i64 [ %.111.i, %.lr.ph.i ], [ %i.bw, %bb.k ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.ch = sub i64 %i.cg, %i.cd
  %i.ci = add i64 %.01025.i, -1                   ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cl = sub i64 %i.cc, %i.ck
  %i.cm = icmp ult i64 %i.ch, %i.cl               ; 4 uses
  %.111.i = select i1 %i.cm, i64 %.01025.i, i64 %i.ci ; 3 uses
  %.1.i = select i1 %i.cm, i64 %i.ce, i64 %.026.i ; 3 uses
  %i.cn = add i64 %.1.i, 1                        ; 2 uses
  %i.co = icmp ult i64 %i.cn, %.111.i
  %i.cp = select i1 %i.cm, i64 %i.cg, i64 %i.cd
  %i.cq = select i1 %i.cm, i64 %i.cc, i64 %i.ck
  br i1 %i.co, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !517

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.111.i
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  %.phi.trans.insert28.i = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.1.i
  %.pre29.i = load i64, ptr %.phi.trans.insert28.i, align 8
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeENS_4base6VectorIKmEE.exit

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE9MakeRangeENS_4base6VectorIKmEE.exit: ; preds = %bb.k, %._crit_edge.loopexit.i
  %.sroa.024.0.i = phi i64 [ %i.bz, %bb.k ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.sroa.3.0.i = phi i64 [ %i.by, %bb.k ], [ %.pre29.i, %._crit_edge.loopexit.i ]
  tail call void @_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::WordType.280") align 8 %0, i64 noundef %.sroa.024.0.i, i64 noundef %.sroa.3.0.i, ptr noundef %2)
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 5 uses
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPmlET_S1_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm64EE8SubtractERKNS2_8WordTypeILm64EEES8_PNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::WordType.280") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::base::SmallVector.415", align 16 ; 12 uses
  %5 = alloca %"class.v8::base::SmallVector.415", align 16 ; 13 uses
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
  store i8 3, ptr %0, align 8, !alias.scope !536
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.w, i8 0, i64 15, i1 false), !alias.scope !541
  store i64 -1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !536
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.x = icmp eq i8 %i.b, 1
  br i1 %i.x, label %bb.e, label %bb.m
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_:bb.a
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi7 = phi i64 [ %i.i, %bb.a ], [ %.pre6, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi7 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi7, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 2, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 16
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 2, ptr %i.af, align 2
  store i8 76, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1860
  %.sroa.0.0.copyload.i = load i32, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.ak = lshr i64 %i.i, 4
  %i.al = and i64 %i.ak, 268435455                ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 216
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 208 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 2
  %.not.i.i = icmp ugt i64 %i.at, %i.al
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 200 ; 2 uses
  %i.av = lshr i64 %i.al, 1
  %i.aw = add nuw nsw i64 %i.al, 32
  %i.ax = add nuw nsw i64 %i.aw, %i.av
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 224
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = load ptr, ptr %i.ao, align 8
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.be)
  %.pre.i.i = load ptr, ptr %i.ao, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.bf = phi ptr [ %.pre.i.i, %bb.c ], [ %i.ap, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_18LoadRootRegisterOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit ]
  %i.bg = trunc i64 %i.i to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.al
  store i32 %.sroa.0.0.copyload.i, ptr %i.bh, align 4
  ret i32 %i.bg
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %1, i16 noundef zeroext %2, i8 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 8 uses
  %5 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE27ReduceIfReachableProjectionIJNS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT_.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -1704 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = zext i32 %1 to i64
  %i.k = add i64 %i.i, %i.j
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4
  %i.n = icmp eq i8 %i.m, 96
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = zext i16 %2 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.q, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE27ReduceIfReachableProjectionIJNS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_12ProjectionOpEJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(992) %i.d, i32 %1, i16 noundef zeroext %2, i8 %3), !inline_history !684 ; 4 uses
  %i.s = icmp ne i32 %i.r, -1
  %i.t = getelementptr inbounds i8, ptr %0, i64 -1700
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp eq i32 %i.u, 2
  %i.w = select i1 %i.s, i1 %i.v, i1 false
  br i1 %i.w, label %bb.e, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE27ReduceIfReachableProjectionIJNS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE7GetTypeENS2_7OpIndexE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %5, ptr noundef nonnull align 8 dereferenceable(992) %i.d, i32 %1), !inline_history !685
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  %i.x = load i8, ptr %5, align 8, !noalias !686
  switch i8 %i.x, label %bb.g [
    i8 1, label %bb.f
    i8 6, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %4, align 8, !alias.scope !689
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.y, i8 0, i64 23, i1 false), !alias.scope !689
  br label %_ZN2v88internal8compiler10turboshaft5Typer14TypeProjectionERKNS2_4TypeEt.exit.i.i

bb.g:                                             ; preds = %bb.e
  store i8 7, ptr %4, align 8, !alias.scope !692
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.z, i8 0, i64 23, i1 false), !alias.scope !692
  br label %_ZN2v88internal8compiler10turboshaft5Typer14TypeProjectionERKNS2_4TypeEt.exit.i.i

bb.h:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !686
  %i.ac = zext i16 %2 to i64
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft5Typer14TypeProjectionERKNS2_4TypeEt.exit.i.i

_ZN2v88internal8compiler10turboshaft5Typer14TypeProjectionERKNS2_4TypeEt.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE7SetTypeENS2_7OpIndexERKNS2_4TypeEb(ptr noundef nonnull align 8 dereferenceable(992) %i.d, i32 %i.r, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false), !inline_history !685
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE27ReduceIfReachableProjectionIJNS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE27ReduceIfReachableProjectionIJNS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Typer14TypeProjectionERKNS2_4TypeEt.exit.i.i, %bb.d, %bb.c, %bb.a
  %.sroa.05.0.i = phi i32 [ -1, %bb.a ], [ %.sroa.0.0.copyload.i.i, %bb.c ], [ %i.r, %bb.d ], [ %i.r, %_ZN2v88internal8compiler10turboshaft5Typer14TypeProjectionERKNS2_4TypeEt.exit.i.i ]
  ret i32 %.sroa.05.0.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 4, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -4
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 44
  %i.w = sub i64 %i.h, %i.r
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !695

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !696

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEES7_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEElET_S8_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEElET_S8_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft1VINS3_3AnyEEElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_12ProjectionOpEJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i16 noundef zeroext %2, i8 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 9
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre10 = ptrtoint ptr %.pre to i64
  %.pre11 = sub i64 %.pre10.i.i.i.i, %.pre10
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi12 = phi i64 [ %i.i, %bb.a ], [ %.pre11, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi12 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi12, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 2, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 16
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 2, ptr %i.af, align 2
  store i8 97, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 1, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i16 %2, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i8 %3, ptr %i.ak, align 2
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = zext i32 %1 to i64
  %i.ao = add i64 %i.am, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.ar, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit
  %i.as = add nuw i8 %i.ar, 1
  store i8 %i.as, ptr %i.aq, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_12ProjectionOpEE3NewIJNS2_14ShadowyOpIndexEtNS2_22RegisterRepresentationEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1860
  %.sroa.0.0.copyload.i = load i32, ptr %i.at, align 4
  %i.au = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.av = lshr i64 %i.i, 4
  %i.aw = and i64 %i.av, 268435455                ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 216
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 208 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  %.not.i.i8 = icmp ugt i64 %i.be, %i.aw
  br i1 %.not.i.i8, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !8

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 200 ; 2 uses
  %i.bg = lshr i64 %i.aw, 1
  %i.bh = add nuw nsw i64 %i.aw, 32
  %i.bi = add nuw nsw i64 %i.bh, %i.bg
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 224
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.az, align 8
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.bp)
  %.pre.i.i = load ptr, ptr %i.az, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit, %bb.d
  %i.bq = phi ptr [ %.pre.i.i, %bb.d ], [ %i.ba, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_12ProjectionOpEEEvRKT_.exit ]
  %i.br = trunc i64 %i.i to i32
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aw
  store i32 %.sroa.0.0.copyload.i, ptr %i.bs, align 4
  ret i32 %i.br
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE96ENS2_21UniformReducerAdapterIS3_SH_E27ReduceMakeTupleContinuationEJNS8_6VectorIKNS2_1VINS2_3AnyEEEEEEEENS2_7OpIndexEDpT1_(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_10RttCanonOpEJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEENS2_7OpIndexEDpT0_:bb.a
  store i32 %2, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.f, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = zext i32 %1 to i64
  %i.an = add i64 %i.al, %i.am
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.aq, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10RttCanonOpEE3NewIJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEERS4_PNS2_5GraphEDpT_.exit
  %i.ar = add nuw i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10RttCanonOpEE3NewIJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1860
  %.sroa.0.0.copyload.i = load i32, ptr %i.as, align 4
  %i.at = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.au = lshr i64 %i.i, 4
  %i.av = and i64 %i.au, 268435455                ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 216
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 208 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 2
  %.not.i.i8 = icmp ugt i64 %i.bd, %i.av
  br i1 %.not.i.i8, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !8

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 200 ; 2 uses
  %i.bf = lshr i64 %i.av, 1
  %i.bg = add nuw nsw i64 %i.av, 32
  %i.bh = add nuw nsw i64 %i.bg, %i.bf
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 noundef %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 224
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.ay, align 8
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 noundef %i.bo)
  %.pre.i.i = load ptr, ptr %i.ay, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit, %bb.d
  %i.bp = phi ptr [ %.pre.i.i, %bb.d ], [ %i.az, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10RttCanonOpEEEvRKT_.exit ]
  %i.bq = trunc i64 %i.i to i32
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.av
  store i32 %.sroa.0.0.copyload.i, ptr %i.br, align 4
  ret i32 %i.bq
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.b, i64 %i.q, i1 false)
  br label %_ZSt18uninitialized_moveIPPKN2v88internal8compiler10turboshaft12FrameStateOpES7_ET0_T_S9_S8_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.h, label %_ZSt18uninitialized_moveIPPKN2v88internal8compiler10turboshaft12FrameStateOpES7_ET0_T_S9_S8_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8
  store ptr %i.t, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPKN2v88internal8compiler10turboshaft12FrameStateOpES7_ET0_T_S9_S8_.exit

_ZSt18uninitialized_moveIPPKN2v88internal8compiler10turboshaft12FrameStateOpES7_ET0_T_S9_S8_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.u = shl nuw i64 1, %i.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft12FrameStateOpELm32ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #5 comdat align 2 {
_ZSt9destroy_nIPPKN2v88internal8compiler10turboshaft12FrameStateOpElET_S8_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPKN2v88internal8compiler10turboshaft12FrameStateOpElET_S8_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPKN2v88internal8compiler10turboshaft12FrameStateOpElET_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 4, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -4
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 44
  %i.w = sub i64 %i.h, %i.r
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !708

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !709

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #5 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE92ENS2_21UniformReducerAdapterIS3_SH_E28ReduceFrameStateContinuationEJNS8_6VectorIKNS2_7OpIndexEEEbPKNS2_14FrameStateDataEEEESP_DpT1_(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr %1, i64 %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 4 uses
  %i.a = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_12FrameStateOpEJNS2_27ShadowyOpIndexVectorWrapperEbPKNS2_14FrameStateDataEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2, i1 noundef zeroext %3, ptr noundef %4) ; 4 uses
  %i.b = icmp ne i32 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !align !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = zext i32 %i.a to i64                     ; 2 uses
  %i.m = add i64 %i.k, %i.l
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  %i.p = extractvalue { ptr, i64 } %i.o, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.q = load ptr, ptr %i.g, align 8, !nonnull !6, !align !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = add i64 %i.t, %i.l
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.v) ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  %i.z = load ptr, ptr %i.g, align 8, !nonnull !6, !align !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  %i.ab = load ptr, ptr %i.aa, align 8
  call void @_ZN2v88internal8compiler10turboshaft5Typer21TypeForRepresentationENS_4base6VectorIKNS2_22RegisterRepresentationEEEPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %5, ptr %i.x, i64 %i.y, ptr noundef %i.ab)
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE7SetTypeENS2_7OpIndexERKNS2_4TypeEb(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %i.a, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_12FrameStateOpEJNS2_27ShadowyOpIndexVectorWrapperEbPKNS2_14FrameStateDataEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = add i64 %2, 5
  %i.k = lshr i64 %i.j, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.k, i64 2) ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = sub i64 %i.n, %i.e
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ult i64 %i.p, %.sroa.speculated.i.i.i
  br i1 %i.q, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.r = sub i64 %i.n, %i.h
  %i.s = lshr exact i64 %i.r, 3
  %i.t = and i64 %i.s, 4294967295
  %i.u = add nuw i64 %i.t, %.sroa.speculated.i.i.i
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.u)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre10 = ptrtoint ptr %.pre to i64
  %.pre11 = sub i64 %.pre10.i.i.i.i, %.pre10
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi12 = phi i64 [ %.pre11, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 10 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.speculated.i.i.i
  store ptr %i.w, ptr %i.c, align 8
  %i.x = trunc i64 %.pre-phi12 to i32
  %i.y = trunc i64 %.sroa.speculated.i.i.i to i16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = lshr i64 %.pre-phi12, 4
  %i.ac = and i64 %i.ab, 268435455
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ac
  store i16 %i.y, ptr %i.ad, align 2
  %i.ae = load ptr, ptr %i.z, align 8
  %.tr.i.i.i.i = trunc i64 %.sroa.speculated.i.i.i to i32
  %i.af = shl i32 %.tr.i.i.i.i, 3
  %i.ag = add i32 %i.af, %i.x
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = add nsw i32 %i.ah, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.aj
  store i16 %i.y, ptr %i.ak, align 2
  store i8 92, ptr %i.v, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.an = trunc i64 %2 to i16                     ; 2 uses
  store i16 %i.an, ptr %i.am, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %i.ap = icmp ugt i64 %2, 1
  br i1 %i.ap, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  %.idx.i.i.i.i.i = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 4 %1, i64 %.idx.i.i.i.i.i, i1 false)
  br label %_ZN2v88internal8compiler10turboshaft10OperationTINS2_12FrameStateOpEE3NewIJbPKNS2_14FrameStateDataEEEERS4_PNS2_5GraphENS2_27ShadowyOpIndexVectorWrapperEDpT_.exit

end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_17CatchBlockBeginOpEJEEENS2_7OpIndexEDpT0_:bb.a
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi7, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 2, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 16
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 2, ptr %i.af, align 2
  store i8 94, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1860
  %.sroa.0.0.copyload.i = load i32, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.ak = lshr i64 %i.i, 4
  %i.al = and i64 %i.ak, 268435455                ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 216
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 208 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 2
  %.not.i.i = icmp ugt i64 %i.at, %i.al
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17CatchBlockBeginOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 200 ; 2 uses
  %i.av = lshr i64 %i.al, 1
  %i.aw = add nuw nsw i64 %i.al, 32
  %i.ax = add nuw nsw i64 %i.aw, %i.av
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 224
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = load ptr, ptr %i.ao, align 8
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef %i.be)
  %.pre.i.i = load ptr, ptr %i.ao, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17CatchBlockBeginOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.bf = phi ptr [ %.pre.i.i, %bb.c ], [ %i.ap, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm0ENS2_17CatchBlockBeginOpEE3NewIJEEERS4_PNS2_5GraphEDpT_.exit ]
  %i.bg = trunc i64 %i.i to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.al
  store i32 %.sroa.0.0.copyload.i, ptr %i.bh, align 4
  ret i32 %i.bg
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
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
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.b, i64 %i.q, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.h, label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8
  store ptr %i.t, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit

_ZSt18uninitialized_moveIPPN2v88internal8compiler10turboshaft5BlockES6_ET0_T_S8_S7_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.u = shl nuw i64 1, %i.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #5 comdat align 2 {
_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal8compiler10turboshaft5BlockElET_S7_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 4, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -4
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 44
  %i.w = sub i64 %i.h, %i.r
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !787

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !788

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE25ReduceInputGraphOperationINS2_10TailCallOpENS2_21UniformReducerAdapterIS3_SI_E26ReduceTailCallContinuationEEENS2_7OpIndexESP_RKT_(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = lshr i32 %1, 4
  %i.b = zext nneg i32 %i.a to i64                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !noalias !789
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !789 ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24
  %.not.i.i.i.i = icmp ugt i64 %i.j, %i.b
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE7GetTypeENS2_7OpIndexE.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = lshr i64 %i.b, 1
  %i.m = add nuw nsw i64 %i.b, 32
  %i.n = add nuw nsw i64 %i.m, %i.l
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.n), !noalias !789
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !789
  %i.q = load ptr, ptr %i.e, align 8, !noalias !789
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 24
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.u), !noalias !789
  %.pre.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !789
  br label %_ZN2v88internal8compiler10turboshaft25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE7GetTypeENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE7GetTypeENS2_7OpIndexE.exit: ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.f, %bb.a ]
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.x = load i8, ptr %3, align 8
  switch i8 %i.x, label %bb.e [
    i8 1, label %bb.c
    i8 0, label %bb.f
  ]

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE7GetTypeENS2_7OpIndexE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit.thread, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.ab = tail call i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE3ENS2_21UniformReducerAdapterIS3_SH_E29ReduceUnreachableContinuationEJEEENS2_7OpIndexEDpT1_(ptr noundef nonnull align 8 dereferenceable(992) %0) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit.thread

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE7GetTypeENS2_7OpIndexE.exit
  %i.ac = call i32 @_ZN2v88internal8compiler10turboshaft25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE26TryAssembleConstantForTypeERKNS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  %.not = icmp eq i32 %i.ac, -1
  br i1 %.not, label %bb.f, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit.thread

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit.thread: ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.05.1.ph = phi i32 [ -1, %bb.c ], [ -1, %bb.d ], [ %i.ac, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE7GetTypeENS2_7OpIndexE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ad = call i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE27AssembleOutputGraphTailCallERKNS2_10TailCallOpE(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit.thread, %bb.f
  %.sroa.05.2 = phi i32 [ %i.ad, %bb.f ], [ %.sroa.05.1.ph, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit.thread ]
  ret i32 %.sroa.05.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE27AssembleOutputGraphTailCallERKNS2_10TailCallOpE(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::base::SmallVector", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 8
  %i.b = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.c ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.k = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.k, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #27
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i = load i32, ptr %i.l, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i
  %.sroa.014.0.i.i = phi i32 [ %i.g, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.q = add nsw i64 %i.o, -1                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr %i.r, ptr %2, align 8, !alias.scope !800
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !800
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.u, ptr %i.t, align 8, !alias.scope !800
  %.idx.i.i = shl nuw nsw i64 %i.q, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i
  %.not11.i.i = icmp eq i64 %i.q, 0
  br i1 %.not11.i.i, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm16EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1640
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.al, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i ] ; 2 uses
  %.sroa.02.0.copyload.i.i = load i32, ptr %.012.i.i, align 4, !noalias !800
  %i.x = lshr i32 %.sroa.02.0.copyload.i.i, 4
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = load ptr, ptr %i.d, align 8, !noalias !800
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.y
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ab, -1
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.w, align 8, !noalias !800
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.y ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.ae = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i to i1
  br i1 %i.ae, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #27
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i: ; preds = %bb.e
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i = load i32, ptr %i.af, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, %bb.d
  %.sroa.014.0.i.i.i = phi i32 [ %i.ab, %bb.d ], [ %.sroa.02.0.copyload.i10.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i ]
  %i.ag = load ptr, ptr %i.s, align 8, !alias.scope !800 ; 2 uses
  %i.ah = load ptr, ptr %i.t, align 8, !alias.scope !800
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  %.pre.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !800
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i: ; preds = %bb.g, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i
  %i.aj = phi ptr [ %.pre.i.i.i.i, %bb.g ], [ %i.ag, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ak, ptr %i.s, align 8, !alias.scope !800
  store i32 %.sroa.014.0.i.i.i, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.al, %i.v
  br i1 %.not.i.i3, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm16EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit.loopexit, label %bb.d

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm16EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit.loopexit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE9push_backES5_.exit.i.i
  %.pre = load ptr, ptr %2, align 8
  %.pre4 = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm16EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm16EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm16EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit.loopexit, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit
  %i.am = phi ptr [ %.pre4, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm16EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit.loopexit ], [ %i.r, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit ]
  %i.an = phi ptr [ %.pre, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm16EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit.loopexit ], [ %i.r, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit ] ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE2ENS2_21UniformReducerAdapterIS3_SH_E26ReduceTailCallContinuationEJNS2_7OpIndexENS8_6VectorISO_EEPKNS2_16TSCallDescriptorEEEESO_DpT1_(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %.sroa.014.0.i.i, ptr %i.an, i64 %i.ar, ptr noundef %i.at)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i32 %i.au
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 4, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -4
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 44
  %i.w = sub i64 %i.h, %i.r
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !801

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !802

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #5 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE2ENS2_21UniformReducerAdapterIS3_SH_E26ReduceTailCallContinuationEJNS2_7OpIndexENS8_6VectorISO_EEPKNS2_16TSCallDescriptorEEEESO_DpT1_(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %1, ptr %2, i64 %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 4 uses
  %i.a = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_10TailCallOpEJNS2_14ShadowyOpIndexENS5_6VectorINS2_7OpIndexEEEPKNS2_16TSCallDescriptorEEEESI_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr %2, i64 %3, ptr noundef %4) ; 4 uses
  %i.b = icmp ne i32 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !align !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = zext i32 %i.a to i64                     ; 2 uses
  %i.m = add i64 %i.k, %i.l
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  %i.p = extractvalue { ptr, i64 } %i.o, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.q = load ptr, ptr %i.g, align 8, !nonnull !6, !align !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = add i64 %i.t, %i.l
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.v) ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  %i.z = load ptr, ptr %i.g, align 8, !nonnull !6, !align !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  %i.ab = load ptr, ptr %i.aa, align 8
  call void @_ZN2v88internal8compiler10turboshaft5Typer21TypeForRepresentationENS_4base6VectorIKNS2_22RegisterRepresentationEEEPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %5, ptr %i.x, i64 %i.y, ptr noundef %i.ab)
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE7SetTypeENS2_7OpIndexERKNS2_4TypeEb(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %i.a, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_10TailCallOpEJNS2_14ShadowyOpIndexENS5_6VectorINS2_7OpIndexEEEPKNS2_16TSCallDescriptorEEEESI_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr %2, i64 %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = add i64 %3, 6
  %i.k = lshr i64 %i.j, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.k, i64 2) ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = sub i64 %i.n, %i.e
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ult i64 %i.p, %.sroa.speculated.i.i.i
  br i1 %i.q, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.r = sub i64 %i.n, %i.h
  %i.s = lshr exact i64 %i.r, 3
  %i.t = and i64 %i.s, 4294967295
  %i.u = add nuw i64 %i.t, %.sroa.speculated.i.i.i
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.u)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre12 = ptrtoint ptr %.pre to i64
  %.pre13 = sub i64 %.pre10.i.i.i.i, %.pre12
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi14 = phi i64 [ %.pre13, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 8 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.speculated.i.i.i
  store ptr %i.w, ptr %i.c, align 8
  %i.x = trunc i64 %.pre-phi14 to i32
  %i.y = trunc i64 %.sroa.speculated.i.i.i to i16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = lshr i64 %.pre-phi14, 4
  %i.ac = and i64 %i.ab, 268435455
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ac
  store i16 %i.y, ptr %i.ad, align 2
  %i.ae = load ptr, ptr %i.z, align 8
  %.tr.i.i.i.i = trunc i64 %.sroa.speculated.i.i.i to i32
  %i.af = shl i32 %.tr.i.i.i.i, 3
  %i.ag = add i32 %i.af, %i.x
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = add nsw i32 %i.ah, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.aj
  store i16 %i.y, ptr %i.ak, align 2
  store i8 2, ptr %i.v, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.an = trunc i64 %3 to i16
  %i.ao = add i16 %i.an, 1                        ; 3 uses
  store i16 %i.ao, ptr %i.am, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %4, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  store i32 %1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 20 ; 2 uses
  %i.as = icmp ugt i64 %3, 1
  br i1 %i.as, label %bb.c, label %bb.d, !prof !8

end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE25ReduceInputGraphOperationINS2_8ReturnOpENS2_21UniformReducerAdapterIS3_SI_E24ReduceReturnContinuationEEENS2_7OpIndexESP_RKT_:bb.a
  %.not = icmp eq i32 %i.ac, -1
  br i1 %.not, label %bb.f, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit.thread

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit.thread: ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.05.1.ph = phi i32 [ -1, %bb.c ], [ -1, %bb.d ], [ %i.ac, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE7GetTypeENS2_7OpIndexE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ad = call i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE25AssembleOutputGraphReturnERKNS2_8ReturnOpE(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef nonnull align 4 dereferenceable(5) %2)
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit.thread, %bb.f
  %.sroa.05.2 = phi i32 [ %i.ad, %bb.f ], [ %.sroa.05.1.ph, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE11UnreachableEv.exit.thread ]
  ret i32 %.sroa.05.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE25AssembleOutputGraphReturnERKNS2_8ReturnOpE(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef nonnull align 4 dereferenceable(5) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::base::SmallVector.923", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 4
  %i.b = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.c ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.k = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.k, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #27
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i = load i32, ptr %i.l, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i
  %.sroa.014.0.i.i = phi i32 [ %i.g, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.q = add nsw i64 %i.o, -1                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr %i.r, ptr %2, align 8, !alias.scope !822
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !822
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.u, ptr %i.t, align 8, !alias.scope !822
  %.idx.i.i = shl nuw nsw i64 %i.q, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i
  %.not11.i.i = icmp eq i64 %i.q, 0
  br i1 %.not11.i.i, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm4EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1640
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.al, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i ] ; 2 uses
  %.sroa.02.0.copyload.i.i = load i32, ptr %.012.i.i, align 4, !noalias !822
  %i.x = lshr i32 %.sroa.02.0.copyload.i.i, 4
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = load ptr, ptr %i.d, align 8, !noalias !822
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.y
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ab, -1
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.w, align 8, !noalias !822
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.y ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.ae = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i to i1
  br i1 %i.ae, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZSt27__throw_bad_optional_accessv() #27
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i: ; preds = %bb.e
  %.sroa.02.0.copyload.i.i.i.i = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i = load i32, ptr %i.af, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i, %bb.d
  %.sroa.014.0.i.i.i = phi i32 [ %i.ab, %bb.d ], [ %.sroa.02.0.copyload.i10.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i ]
  %i.ag = load ptr, ptr %i.s, align 8, !alias.scope !822 ; 2 uses
  %i.ah = load ptr, ptr %i.t, align 8, !alias.scope !822
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i, !prof !5

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
  %.pre.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !822
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i: ; preds = %bb.g, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i
  %i.aj = phi ptr [ %.pre.i.i.i.i, %bb.g ], [ %i.ag, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S5_S8_EEEEEEEEEEEEEEEE13MapToNewGraphILb0EEENS2_7OpIndexESM_i.exit.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ak, ptr %i.s, align 8, !alias.scope !822
  store i32 %.sroa.014.0.i.i.i, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.al, %i.v
  br i1 %.not.i.i3, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm4EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit.loopexit, label %bb.d

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm4EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit.loopexit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE9push_backES5_.exit.i.i
  %.pre = load ptr, ptr %2, align 8
  %.pre4 = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm4EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm4EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm4EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit.loopexit, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit
  %i.am = phi ptr [ %.pre4, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm4EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit.loopexit ], [ %i.r, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit ]
  %i.an = phi ptr [ %.pre, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapILm4EEENSB_11SmallVectorINS2_7OpIndexEXT_ESaISR_EEENSB_6VectorIKSR_EE.exit.loopexit ], [ %i.r, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S6_S9_EEEEEEEEEEEEEEEEENS2_15VariableReducerISK_EEE3MapENS2_7OpIndexE.exit ] ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.at = load i8, ptr %i.as, align 4, !range !27, !noundef !6
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = call i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE4ENS2_21UniformReducerAdapterIS3_SH_E24ReduceReturnContinuationEJNS2_7OpIndexENS8_6VectorISO_EEbEEESO_DpT1_(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %.sroa.014.0.i.i, ptr %i.an, i64 %i.ar, i1 noundef zeroext %i.au)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i32 %i.av
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 4, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -4
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 44
  %i.w = sub i64 %i.h, %i.r
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !823

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !824

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE4ENS2_21UniformReducerAdapterIS3_SH_E24ReduceReturnContinuationEJNS2_7OpIndexENS8_6VectorISO_EEbEEESO_DpT1_(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %1, ptr %2, i64 %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 4 uses
  %i.a = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_8ReturnOpEJNS2_14ShadowyOpIndexENS5_6VectorINS2_7OpIndexEEEbEEESI_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr %2, i64 %3, i1 noundef zeroext %4) ; 4 uses
  %i.b = icmp ne i32 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !align !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = zext i32 %i.a to i64                     ; 2 uses
  %i.m = add i64 %i.k, %i.l
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  %i.p = extractvalue { ptr, i64 } %i.o, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.q = load ptr, ptr %i.g, align 8, !nonnull !6, !align !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = add i64 %i.t, %i.l
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.v) ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  %i.z = load ptr, ptr %i.g, align 8, !nonnull !6, !align !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  %i.ab = load ptr, ptr %i.aa, align 8
  call void @_ZN2v88internal8compiler10turboshaft5Typer21TypeForRepresentationENS_4base6VectorIKNS2_22RegisterRepresentationEEEPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %5, ptr %i.x, i64 %i.y, ptr noundef %i.ab)
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE7SetTypeENS2_7OpIndexERKNS2_4TypeEb(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %i.a, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_8ReturnOpEJNS2_14ShadowyOpIndexENS5_6VectorINS2_7OpIndexEEEbEEESI_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr %2, i64 %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = add i64 %3, 4
  %i.k = lshr i64 %i.j, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.k, i64 2) ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = sub i64 %i.n, %i.e
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ult i64 %i.p, %.sroa.speculated.i.i.i
  br i1 %i.q, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.r = sub i64 %i.n, %i.h
  %i.s = lshr exact i64 %i.r, 3
  %i.t = and i64 %i.s, 4294967295
  %i.u = add nuw i64 %i.t, %.sroa.speculated.i.i.i
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.u)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre13 = ptrtoint ptr %.pre to i64
  %.pre14 = sub i64 %.pre10.i.i.i.i, %.pre13
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi15 = phi i64 [ %.pre14, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.v = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 8 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.speculated.i.i.i
  store ptr %i.w, ptr %i.c, align 8
  %i.x = trunc i64 %.pre-phi15 to i32
  %i.y = trunc i64 %.sroa.speculated.i.i.i to i16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = lshr i64 %.pre-phi15, 4
  %i.ac = and i64 %i.ab, 268435455
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ac
  store i16 %i.y, ptr %i.ad, align 2
  %i.ae = load ptr, ptr %i.z, align 8
  %.tr.i.i.i.i = trunc i64 %.sroa.speculated.i.i.i to i32
  %i.af = shl i32 %.tr.i.i.i.i, 3
  %i.ag = add i32 %i.af, %i.x
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = add nsw i32 %i.ah, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.aj
  store i16 %i.y, ptr %i.ak, align 2
  %i.al = zext i1 %4 to i8
  store i8 4, ptr %i.v, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.ao = trunc i64 %3 to i16
  %i.ap = add i16 %i.ao, 1                        ; 3 uses
  store i16 %i.ap, ptr %i.an, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i8 %i.al, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  store i32 %1, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  %i.at = icmp ugt i64 %3, 1
  br i1 %i.at, label %bb.c, label %bb.d, !prof !8
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE171ENS2_21UniformReducerAdapterIS3_SH_E30ReduceJSStackCheckContinuationEJNS2_7OpIndexENS2_15OptionalOpIndexENS2_14JSStackCheckOp4KindEEEESO_DpT1_:bb.a
  %i.ab = load ptr, ptr %i.aa, align 8
  call void @_ZN2v88internal8compiler10turboshaft5Typer21TypeForRepresentationENS_4base6VectorIKNS2_22RegisterRepresentationEEEPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %4, ptr %i.x, i64 %i.y, ptr noundef %i.ab)
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE7SetTypeENS2_7OpIndexERKNS2_4TypeEb(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %i.a, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_14JSStackCheckOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 9
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre14 = ptrtoint ptr %.pre to i64
  %.pre15 = sub i64 %.pre10.i.i.i.i, %.pre14
  br label %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i

_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi16 = phi i64 [ %.pre15, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %i.s = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ %i.d, %bb.a ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi16 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi16, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 2, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 16
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 2, ptr %i.af, align 2
  %.not.i.i.i = icmp eq i32 %2, -1                ; 2 uses
  store i8 -85, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.ai = select i1 %.not.i.i.i, i16 1, i16 2
  store i16 %i.ai, ptr %i.ah, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %3, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store i32 %1, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 2 uses
  br i1 %.not.i.i.i, label %.lr.ph.i, label %_ZN2v88internal8compiler10turboshaft14JSStackCheckOp3NewEPNS2_5GraphENS2_1VINS0_7ContextEEENS2_9OptionalVINS2_10FrameStateEEENS3_4KindE.exit

_ZN2v88internal8compiler10turboshaft14JSStackCheckOp3NewEPNS2_5GraphENS2_1VINS0_7ContextEEENS2_9OptionalVINS2_10FrameStateEEENS3_4KindE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i
  store i32 %2, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i, %_ZN2v88internal8compiler10turboshaft14JSStackCheckOp3NewEPNS2_5GraphENS2_1VINS0_7ContextEEENS2_9OptionalVINS2_10FrameStateEEENS3_4KindE.exit
  %i.an = phi ptr [ %i.am, %_ZN2v88internal8compiler10turboshaft14JSStackCheckOp3NewEPNS2_5GraphENS2_1VINS0_7ContextEEENS2_9OptionalVINS2_10FrameStateEEENS3_4KindE.exit ], [ %i.al, %_ZN2v88internal8compiler10turboshaft5Graph8AllocateEm.exit.i.i ]
  br label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, %.lr.ph.i
  %.011.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.aw, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i ] ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.011.i, align 4
  %i.ao = load ptr, ptr %i.f, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = zext i32 %.sroa.01.0.copyload.i to i64
  %i.ar = add i64 %i.ap, %i.aq
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.au, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.av = add nuw i8 %i.au, 1
  store i8 %i.av, ptr %i.at, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i

_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i: ; preds = %bb.d, %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, %i.an
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14JSStackCheckOpEEEvRKT_.exit, label %bb.c

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14JSStackCheckOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84IncrEv.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1860
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.ax, align 4
  %i.ay = load ptr, ptr %i.a, align 8, !nonnull !6, !align !7 ; 4 uses
  %i.az = lshr i64 %i.i, 4
  %i.ba = and i64 %i.az, 268435455                ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 216
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 208 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 2
  %.not.i.i9 = icmp ugt i64 %i.bi, %i.ba
  br i1 %.not.i.i9, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.e, !prof !8

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14JSStackCheckOpEEEvRKT_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 200 ; 2 uses
  %i.bk = lshr i64 %i.ba, 1
  %i.bl = add nuw nsw i64 %i.ba, 32
  %i.bm = add nuw nsw i64 %i.bl, %i.bk
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 noundef %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 224
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %i.bd, align 8
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 noundef %i.bt)
  %.pre.i.i = load ptr, ptr %i.bd, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14JSStackCheckOpEEEvRKT_.exit, %bb.e
  %i.bu = phi ptr [ %.pre.i.i, %bb.e ], [ %i.be, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_14JSStackCheckOpEEEvRKT_.exit ]
  %i.bv = trunc i64 %i.i to i32
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.ba
  store i32 %.sroa.0.0.copyload.i8, ptr %i.bw, align 4
  ret i32 %i.bv
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 4, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -4
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 44
  %i.w = sub i64 %i.h, %i.r
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 9223372036854775800      ; 3 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4
  %wide.load13 = load <4 x i32>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !2413

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.04.07.i.i.i.i, align 4
  store i32 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2414

_ZSt18uninitialized_moveIPN2v88internal8compiler10turboshaft7OpIndexES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm64ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #5 comdat align 2 {
_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal8compiler10turboshaft7OpIndexElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_push_back_auxIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 4
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 5
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 5
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 576460752303423487
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = load ptr, ptr %i.ae, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.g, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %i.al = sub i64 %i.ag, %i.ak
  %i.am = icmp ult i64 %i.al, 2
  br i1 %i.am, label %bb.d, label %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE22_M_reserve_map_at_backEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %.not5.i.i.i = icmp ult i64 %i.aq, 16
  br i1 %.not5.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ao, align 8
  store ptr %i.ar, ptr %i.an, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_allocate_nodeEv.exit

bb.g:                                             ; preds = %bb.e, %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE22_M_reserve_map_at_backEm.exit
  %i.as = load ptr, ptr %0, align 8               ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = icmp ult i64 %i.ax, 512
  br i1 %i.ay, label %bb.h, label %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE8allocateEm.exit.i.i.i, !prof !5

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.as, i64 noundef 512) #22
  %.pre.i.i.i.i.i.i = load i64, ptr %i.av, align 8
  br label %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE8allocateEm.exit.i.i.i

_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE8allocateEm.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.az = phi i64 [ %.pre.i.i.i.i.i.i, %bb.h ], [ %i.aw, %bb.g ] ; 2 uses
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = add i64 %i.az, 512
  store i64 %i.bb, ptr %i.av, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_allocate_nodeEv.exit

_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_allocate_nodeEv.exit: ; preds = %bb.f, %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE8allocateEm.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ao, %bb.f ], [ %i.ba, %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEEE8allocateEm.exit.i.i.i ]
  %i.bc = load ptr, ptr %i.c, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %.0.i.i.i, ptr %i.bd, align 8
  %i.be = load ptr, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.bf = load ptr, ptr %i.c, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr %i.bg, ptr %i.c, align 8
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  store ptr %i.bh, ptr %i.o, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 512
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.bi, ptr %i.bj, align 8
  store ptr %i.bh, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
end_hunk_6
begin_hunk_7_@llvm.umax.i32
!334 = distinct !{!334, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE"}
!335 = distinct !{!335, !336, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd: argument 0"}
!336 = distinct !{!336, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd"}
!337 = !{!338, !340}
!338 = distinct !{!338, !339, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE: argument 0"}
!339 = distinct !{!339, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE"}
!340 = distinct !{!340, !341, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd: argument 0"}
!341 = distinct !{!341, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd"}
!342 = distinct !{!342, !10}
!343 = distinct !{!343, !10}
!344 = distinct !{!344, !10}
!345 = distinct !{!345, !10}
!346 = distinct !{!346, !10}
!347 = distinct !{!347, !10}
!348 = distinct !{!348, !10}
!349 = !{!350}
!350 = distinct !{!350, !351, !"_ZN2v88internal8compiler10turboshaft4Type7InvalidEv: argument 0"}
!351 = distinct !{!351, !"_ZN2v88internal8compiler10turboshaft4Type7InvalidEv"}
!352 = !{!353}
!353 = distinct !{!353, !354, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE: argument 0"}
!354 = distinct !{!354, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE"}
!355 = !{!356}
!356 = distinct !{!356, !357, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE: argument 0"}
!357 = distinct !{!357, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE"}
!358 = distinct !{null}
!359 = distinct !{!359, !10}
!360 = distinct !{!360, !10}
!361 = distinct !{!361, !10}
!362 = distinct !{!362, !10}
!363 = distinct !{!363, !10}
!364 = !{!365}
!365 = distinct !{!365, !366, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17OnlySpecialValuesEj: argument 0"}
!366 = distinct !{!366, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17OnlySpecialValuesEj"}
!367 = distinct !{!367, !10}
!368 = distinct !{!368, !10}
!369 = distinct !{!369, !10}
!370 = distinct !{!370, !10}
!371 = distinct !{!371, !10}
!372 = distinct !{!372, !10}
!373 = distinct !{!373, !10}
!374 = distinct !{!374, !10}
!375 = distinct !{!375, !10}
!376 = distinct !{!376, !10}
!377 = distinct !{!377, !10}
!378 = !{!379, !381}
!379 = distinct !{!379, !380, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE: argument 0"}
!380 = distinct !{!380, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE"}
!381 = distinct !{!381, !382, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd: argument 0"}
!382 = distinct !{!382, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd"}
!383 = !{!384, !386}
!384 = distinct !{!384, !385, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE: argument 0"}
!385 = distinct !{!385, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE"}
!386 = distinct !{!386, !387, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd: argument 0"}
!387 = distinct !{!387, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd"}
!388 = !{!389, !391}
!389 = distinct !{!389, !390, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE: argument 0"}
!390 = distinct !{!390, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE"}
!391 = distinct !{!391, !392, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd: argument 0"}
!392 = distinct !{!392, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd"}
!393 = !{!394, !396}
!394 = distinct !{!394, !395, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE: argument 0"}
!395 = distinct !{!395, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE"}
!396 = distinct !{!396, !397, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd: argument 0"}
!397 = distinct !{!397, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd"}
!398 = !{!399}
!399 = distinct !{!399, !400, !"_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE: argument 0"}
!400 = distinct !{!400, !"_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE"}
!401 = !{!402, !399}
!402 = distinct !{!402, !403, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE: argument 0"}
!403 = distinct !{!403, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE"}
!404 = !{!405, !407}
!405 = distinct !{!405, !406, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE: argument 0"}
!406 = distinct !{!406, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE"}
!407 = distinct !{!407, !408, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd: argument 0"}
!408 = distinct !{!408, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd"}
!409 = !{!410, !412}
!410 = distinct !{!410, !411, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE: argument 0"}
!411 = distinct !{!411, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE"}
!412 = distinct !{!412, !413, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd: argument 0"}
!413 = distinct !{!413, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd"}
!414 = distinct !{!414, !10}
!415 = !{!416, !418}
!416 = distinct !{!416, !417, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE: argument 0"}
!417 = distinct !{!417, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE"}
!418 = distinct !{!418, !419, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd: argument 0"}
!419 = distinct !{!419, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd"}
!420 = !{!421, !423}
!421 = distinct !{!421, !422, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE: argument 0"}
!422 = distinct !{!422, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE"}
!423 = distinct !{!423, !424, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd: argument 0"}
!424 = distinct !{!424, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd"}
!425 = !{!426, !428}
!426 = distinct !{!426, !427, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE: argument 0"}
!427 = distinct !{!427, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE"}
!428 = distinct !{!428, !429, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd: argument 0"}
!429 = distinct !{!429, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd"}
!430 = !{!431, !433}
!431 = distinct !{!431, !432, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE: argument 0"}
!432 = distinct !{!432, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetENS_4base6VectorIKdEEjPNS0_4ZoneE"}
!433 = distinct !{!433, !434, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd: argument 0"}
!434 = distinct !{!434, !"_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE8ConstantEd"}
!435 = !{!436}
!436 = distinct !{!436, !437, !"_ZN2v88internal8compiler10turboshaft9TupleType5TupleERKNS2_4TypeES6_PNS0_4ZoneE: argument 0"}
!437 = distinct !{!437, !"_ZN2v88internal8compiler10turboshaft9TupleType5TupleERKNS2_4TypeES6_PNS0_4ZoneE"}
!438 = !{!439}
!439 = distinct !{!439, !440, !"_ZN2v88internal8compiler10turboshaft9TupleType5TupleERKNS2_4TypeES6_PNS0_4ZoneE: argument 0"}
!440 = distinct !{!440, !"_ZN2v88internal8compiler10turboshaft9TupleType5TupleERKNS2_4TypeES6_PNS0_4ZoneE"}
!441 = !{!442}
!442 = distinct !{!442, !443, !"_ZN2v88internal8compiler10turboshaft4Type4NoneEv: argument 0"}
!443 = distinct !{!443, !"_ZN2v88internal8compiler10turboshaft4Type4NoneEv"}
!444 = !{!445}
!445 = distinct !{!445, !446, !"_ZN2v88internal8compiler10turboshaft9TupleType5TupleERKNS2_4TypeES6_PNS0_4ZoneE: argument 0"}
!446 = distinct !{!446, !"_ZN2v88internal8compiler10turboshaft9TupleType5TupleERKNS2_4TypeES6_PNS0_4ZoneE"}
!447 = !{!448}
!448 = distinct !{!448, !449, !"_ZN2v88internal8compiler10turboshaft9TupleType5TupleERKNS2_4TypeES6_PNS0_4ZoneE: argument 0"}
!449 = distinct !{!449, !"_ZN2v88internal8compiler10turboshaft9TupleType5TupleERKNS2_4TypeES6_PNS0_4ZoneE"}
!450 = !{!451}
!451 = distinct !{!451, !452, !"_ZN2v88internal8compiler10turboshaft9TupleType5TupleERKNS2_4TypeES6_PNS0_4ZoneE: argument 0"}
!452 = distinct !{!452, !"_ZN2v88internal8compiler10turboshaft9TupleType5TupleERKNS2_4TypeES6_PNS0_4ZoneE"}
!453 = !{!454}
!454 = distinct !{!454, !455, !"_ZN2v88internal8compiler10turboshaft9TupleType5TupleERKNS2_4TypeES6_PNS0_4ZoneE: argument 0"}
!455 = distinct !{!455, !"_ZN2v88internal8compiler10turboshaft9TupleType5TupleERKNS2_4TypeES6_PNS0_4ZoneE"}
!456 = !{!457, !459}
!457 = distinct !{!457, !458, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE5RangeEjjPNS0_4ZoneE: argument 0"}
!458 = distinct !{!458, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE5RangeEjjPNS0_4ZoneE"}
!459 = distinct !{!459, !460, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3AnyEv: argument 0"}
!460 = distinct !{!460, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3AnyEv"}
!461 = distinct !{!461, !10}
!462 = distinct !{!462, !10}
!463 = !{!464, !466}
!464 = distinct !{!464, !465, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE5RangeEjjPNS0_4ZoneE: argument 0"}
!465 = distinct !{!465, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE5RangeEjjPNS0_4ZoneE"}
!466 = distinct !{!466, !467, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3AnyEv: argument 0"}
!467 = distinct !{!467, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3AnyEv"}
!468 = distinct !{!468, !10}
!469 = distinct !{!469, !10}
!470 = distinct !{!470, !10}
!471 = distinct !{!471, !10}
!472 = distinct !{!472, !10}
!473 = distinct !{!473, !10}
!474 = distinct !{!474, !10}
!475 = distinct !{!475, !10}
!476 = distinct !{!476, !10}
!477 = distinct !{!477, !10}
!478 = distinct !{!478, !10}
!479 = !{!480}
!480 = distinct !{!480, !481, !"_ZN2v88internal8compiler10turboshaft5Typer13TypeWord32AddERKNS2_4TypeES6_PNS0_4ZoneE: argument 0"}
!481 = distinct !{!481, !"_ZN2v88internal8compiler10turboshaft5Typer13TypeWord32AddERKNS2_4TypeES6_PNS0_4ZoneE"}
!482 = !{!483, !480}
!483 = distinct !{!483, !484, !"_ZN2v88internal8compiler10turboshaft4Type4NoneEv: argument 0"}
!484 = distinct !{!484, !"_ZN2v88internal8compiler10turboshaft4Type4NoneEv"}
!485 = !{!486}
!486 = distinct !{!486, !487, !"_ZN2v88internal8compiler10turboshaft5Typer13TypeWord32SubERKNS2_4TypeES6_PNS0_4ZoneE: argument 0"}
!487 = distinct !{!487, !"_ZN2v88internal8compiler10turboshaft5Typer13TypeWord32SubERKNS2_4TypeES6_PNS0_4ZoneE"}
!488 = !{!489, !486}
!489 = distinct !{!489, !490, !"_ZN2v88internal8compiler10turboshaft4Type4NoneEv: argument 0"}
!490 = distinct !{!490, !"_ZN2v88internal8compiler10turboshaft4Type4NoneEv"}
!491 = !{!492}
!492 = distinct !{!492, !493, !"_ZN2v88internal8compiler10turboshaft4Type4NoneEv: argument 0"}
!493 = distinct !{!493, !"_ZN2v88internal8compiler10turboshaft4Type4NoneEv"}
!494 = !{!495}
!495 = distinct !{!495, !496, !"_ZN2v88internal8compiler10turboshaft4Type4NoneEv: argument 0"}
!496 = distinct !{!496, !"_ZN2v88internal8compiler10turboshaft4Type4NoneEv"}
!497 = !{!498, !500}
!498 = distinct !{!498, !499, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE5RangeEjjPNS0_4ZoneE: argument 0"}
!499 = distinct !{!499, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE5RangeEjjPNS0_4ZoneE"}
!500 = distinct !{!500, !501, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3AnyEv: argument 0"}
!501 = distinct !{!501, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3AnyEv"}
!502 = distinct !{!502, !10}
!503 = distinct !{!503, !10}
!504 = !{!505, !507}
!505 = distinct !{!505, !506, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE5RangeEjjPNS0_4ZoneE: argument 0"}
!506 = distinct !{!506, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE5RangeEjjPNS0_4ZoneE"}
!507 = distinct !{!507, !508, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3AnyEv: argument 0"}
!508 = distinct !{!508, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3AnyEv"}
!509 = !{!510, !512}
!510 = distinct !{!510, !511, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE: argument 0"}
!511 = distinct !{!511, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE"}
!512 = distinct !{!512, !513, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3AnyEv: argument 0"}
!513 = distinct !{!513, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3AnyEv"}
!514 = !{!512}
!515 = distinct !{!515, !10}
!516 = distinct !{!516, !10}
!517 = distinct !{!517, !10}
!518 = !{!519, !521}
!519 = distinct !{!519, !520, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE: argument 0"}
!520 = distinct !{!520, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE"}
!521 = distinct !{!521, !522, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3AnyEv: argument 0"}
!522 = distinct !{!522, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3AnyEv"}
!523 = !{!521}
!524 = distinct !{!524, !10}
!525 = distinct !{!525, !10}
!526 = !{!527}
!527 = distinct !{!527, !528, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE: argument 0"}
!528 = distinct !{!528, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetILm16EEES4_RKNS_4base11SmallVectorImXT_ESaImEEEPNS0_4ZoneE"}
!529 = !{!530}
!530 = distinct !{!530, !531, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetENS_4base6VectorIKmEEPNS0_4ZoneE: argument 0"}
!531 = distinct !{!531, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3SetENS_4base6VectorIKmEEPNS0_4ZoneE"}
!532 = !{!530, !527}
!533 = distinct !{!533, !10, !175, !176}
!534 = distinct !{!534, !10, !175}
!535 = distinct !{!535, !178}
!536 = !{!537, !539}
!537 = distinct !{!537, !538, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE: argument 0"}
!538 = distinct !{!538, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE"}
!539 = distinct !{!539, !540, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3AnyEv: argument 0"}
!540 = distinct !{!540, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3AnyEv"}
!541 = !{!539}
!542 = distinct !{!542, !10}
!543 = distinct !{!543, !10}
!544 = !{!545, !547}
!545 = distinct !{!545, !546, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE: argument 0"}
!546 = distinct !{!546, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE"}
!547 = distinct !{!547, !548, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3AnyEv: argument 0"}
!548 = distinct !{!548, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3AnyEv"}
!549 = !{!547}
!550 = !{!551, !553}
!551 = distinct !{!551, !552, !"_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrInvalidENS2_7OpIndexE: argument 0"}
!552 = distinct !{!552, !"_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrInvalidENS2_7OpIndexE"}
!553 = distinct !{!553, !554, !"_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE: argument 0"}
!554 = distinct !{!554, !"_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE"}
!555 = !{!553}
!556 = !{!557}
!557 = distinct !{!557, !558, !"_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_: argument 0"}
!558 = distinct !{!558, !"_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_"}
!559 = !{!560, !562}
!560 = distinct !{!560, !561, !"_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrInvalidENS2_7OpIndexE: argument 0"}
!561 = distinct !{!561, !"_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrInvalidENS2_7OpIndexE"}
!562 = distinct !{!562, !563, !"_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE: argument 0"}
!563 = distinct !{!563, !"_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis16GetTypeOrDefaultENS2_7OpIndexERKNS2_4TypeE"}
!564 = !{!562}
!565 = !{!566}
!566 = distinct !{!566, !567, !"_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_: argument 0"}
!567 = distinct !{!567, !"_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis17ComputeTypeForPhiERKNS2_5PhiOpEENKUlNS2_4TypeEE_clES7_"}
!568 = distinct !{!568, !10}
!569 = !{!570}
!570 = distinct !{!570, !571, !"_ZNK2v88internal8compiler10turboshaft21TypeInferenceAnalysis19GetTypeAtDefinitionENS2_7OpIndexE: argument 0"}
!571 = distinct !{!571, !"_ZNK2v88internal8compiler10turboshaft21TypeInferenceAnalysis19GetTypeAtDefinitionENS2_7OpIndexE"}
!572 = !{!573}
!573 = distinct !{!573, !574, !"_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis5WidenERKNS2_4TypeES6_: argument 0"}
!574 = distinct !{!574, !"_ZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis5WidenERKNS2_4TypeES6_"}
!575 = distinct !{!575, !10}
!576 = distinct !{!576, !10}
!577 = !{!578}
!578 = distinct !{!578, !579, !"_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis12ProcessBlockILb1EEEvRKNS2_5BlockEPjENKUlNS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEENS_4base6VectorIKSA_EEE_clESC_SG_: argument 0"}
!579 = distinct !{!579, !"_ZZN2v88internal8compiler10turboshaft21TypeInferenceAnalysis12ProcessBlockILb1EEEvRKNS2_5BlockEPjENKUlNS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEENS_4base6VectorIKSA_EEE_clESC_SG_"}
!580 = distinct !{!580, !10}
!581 = !{!582, !584}
!582 = distinct !{!582, !583, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE5RangeEjjPNS0_4ZoneE: argument 0"}
!583 = distinct !{!583, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE5RangeEjjPNS0_4ZoneE"}
!584 = distinct !{!584, !585, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3AnyEv: argument 0"}
!585 = distinct !{!585, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3AnyEv"}
!586 = !{!587, !589}
!587 = distinct !{!587, !588, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE: argument 0"}
!588 = distinct !{!588, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE5RangeEmmPNS0_4ZoneE"}
!589 = distinct !{!589, !590, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3AnyEv: argument 0"}
!590 = distinct !{!590, !"_ZN2v88internal8compiler10turboshaft8WordTypeILm64EE3AnyEv"}
!591 = !{!589}
!592 = distinct !{!592, !10}
!593 = distinct !{!593, !10, !175, !176}
!594 = !{!"branch_weights", i32 4001, i32 1}
!595 = distinct !{!595, !10, !176, !175}
!596 = distinct !{!596, !10}
!597 = distinct !{!597, !10}
!598 = distinct !{!598, !10}
!599 = !{!600}
!600 = distinct !{!600, !601, !"_ZN2v88internal8compiler10turboshaft5Graph10operationsERKNS2_5BlockE: argument 0"}
!601 = distinct !{!601, !"_ZN2v88internal8compiler10turboshaft5Graph10operationsERKNS2_5BlockE"}
!602 = distinct !{!602, !10}
!603 = distinct !{!603, !10}
!604 = !{!605}
!605 = distinct !{!605, !606, !"_ZNK2v88internal8compiler10turboshaft5Graph16OperationIndicesERKNS2_5BlockE: argument 0"}
!606 = distinct !{!606, !"_ZNK2v88internal8compiler10turboshaft5Graph16OperationIndicesERKNS2_5BlockE"}
!607 = !{!608}
!608 = distinct !{!608, !609, !"_ZNK2v88internal8compiler10turboshaft5Graph16OperationIndicesERKNS2_5BlockE: argument 0"}
!609 = distinct !{!609, !"_ZNK2v88internal8compiler10turboshaft5Graph16OperationIndicesERKNS2_5BlockE"}
!610 = !{!611, !613}
!611 = distinct !{!611, !612, !"_ZN2v84base18IterateWithoutLastINS0_14iterator_rangeINS_8internal8compiler10turboshaft5Graph15OpIndexIteratorEEEEEDaRT_: argument 0"}
!612 = distinct !{!612, !"_ZN2v84base18IterateWithoutLastINS0_14iterator_rangeINS_8internal8compiler10turboshaft5Graph15OpIndexIteratorEEEEEDaRT_"}
!613 = distinct !{!613, !614, !"_ZN2v84base18IterateWithoutLastINS_8internal8compiler10turboshaft5Graph15OpIndexIteratorEEEDaRKNS0_14iterator_rangeIT_EE: argument 0"}
!614 = distinct !{!614, !"_ZN2v84base18IterateWithoutLastINS_8internal8compiler10turboshaft5Graph15OpIndexIteratorEEEDaRKNS0_14iterator_rangeIT_EE"}
!615 = distinct !{null}
!616 = !{!617}
!617 = distinct !{!617, !618, !"_ZN2v88internal8compiler10turboshaft5Graph10operationsERKNS2_5BlockE: argument 0"}
!618 = distinct !{!618, !"_ZN2v88internal8compiler10turboshaft5Graph10operationsERKNS2_5BlockE"}
!619 = distinct !{!619, !10}
!620 = distinct !{!620, !10}
!621 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!622 = !{!623, !625, !627}
!623 = distinct !{!623, !624, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_: argument 0"}
!624 = distinct !{!624, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_"}
!625 = distinct !{!625, !626, !"_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE16try_emplace_implIS7_JEEESA_INS0_12raw_hash_setISI_SL_SN_SR_E8iteratorEbEOT_DpOT0_: argument 0"}
!626 = distinct !{!626, !"_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE16try_emplace_implIS7_JEEESA_INS0_12raw_hash_setISI_SL_SN_SR_E8iteratorEbEOT_DpOT0_"}
!627 = distinct !{!627, !628, !"_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISI_SL_SN_SR_E14const_iteratorEEE5valueEiE4typeELi0EEESA_INSX_8iteratorEbEOS7_DpOT1_: argument 0"}
!628 = distinct !{!628, !"_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISI_SL_SN_SR_E14const_iteratorEEE5valueEiE4typeELi0EEESA_INSX_8iteratorEbEOS7_DpOT1_"}
!629 = !{!630, !623, !625, !627}
!630 = distinct !{!630, !631, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE28find_or_prepare_insert_smallIS7_EESA_INSS_8iteratorEbERKT_: argument 0"}
!631 = distinct !{!631, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE28find_or_prepare_insert_smallIS7_EESA_INSS_8iteratorEbERKT_"}
!632 = !{!633}
!633 = distinct !{!633, !634, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE28find_or_prepare_insert_largeIS7_EESA_INSS_8iteratorEbERKT_: argument 0"}
!634 = distinct !{!634, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE28find_or_prepare_insert_largeIS7_EESA_INSS_8iteratorEbERKT_"}
!635 = !{!625, !627}
!636 = !{!637}
!637 = distinct !{!637, !638, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!638 = distinct !{!638, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!639 = distinct !{!639, !10}
!640 = distinct !{!640, !10}
!641 = !{!642}
!642 = distinct !{!642, !643, !"_ZZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEENS8_6VectorIKSM_EEE_clESO_SR_: argument 0"}
!643 = distinct !{!643, !"_ZZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockEENKUlNS2_16SnapshotTableKeyINS2_4TypeENS2_9NoKeyDataEEENS8_6VectorIKSM_EEE_clESO_SR_"}
!644 = distinct !{!644, !10}
!645 = !{!646, !648}
!646 = distinct !{!646, !647, !"_ZSt13__invoke_implIN2v88internal8compiler10turboshaft4TypeERZNS3_20TypeInferenceReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS0_4base3tmp5list1IJNS3_12GraphVisitorENS3_25TypedOptimizationsReducerES5_S8_EEEEEEEEEEEE22RefineTypesAfterBranchEPKNS3_8BranchOpEPNS3_5BlockEbEUlNS3_7OpIndexEE_JSQ_EET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!647 = distinct !{!647, !"_ZSt13__invoke_implIN2v88internal8compiler10turboshaft4TypeERZNS3_20TypeInferenceReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS0_4base3tmp5list1IJNS3_12GraphVisitorENS3_25TypedOptimizationsReducerES5_S8_EEEEEEEEEEEE22RefineTypesAfterBranchEPKNS3_8BranchOpEPNS3_5BlockEbEUlNS3_7OpIndexEE_JSQ_EET_St14__invoke_otherOT0_DpOT1_"}
!648 = distinct !{!648, !649, !"_ZSt10__invoke_rIN2v88internal8compiler10turboshaft4TypeERZNS3_20TypeInferenceReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS0_4base3tmp5list1IJNS3_12GraphVisitorENS3_25TypedOptimizationsReducerES5_S8_EEEEEEEEEEEE22RefineTypesAfterBranchEPKNS3_8BranchOpEPNS3_5BlockEbEUlNS3_7OpIndexEE_JSQ_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESU_E4typeEOSV_DpOSW_: argument 0"}
!649 = distinct !{!649, !"_ZSt10__invoke_rIN2v88internal8compiler10turboshaft4TypeERZNS3_20TypeInferenceReducerINS3_21EmitProjectionReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS0_4base3tmp5list1IJNS3_12GraphVisitorENS3_25TypedOptimizationsReducerES5_S8_EEEEEEEEEEEE22RefineTypesAfterBranchEPKNS3_8BranchOpEPNS3_5BlockEbEUlNS3_7OpIndexEE_JSQ_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESU_E4typeEOSV_DpOSW_"}
!650 = !{!651, !646, !648}
!651 = distinct !{!651, !652, !"_ZZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE22RefineTypesAfterBranchEPKNS2_8BranchOpEPNS2_5BlockEbENKUlNS2_7OpIndexEE_clESO_: argument 0"}
!652 = distinct !{!652, !"_ZZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE22RefineTypesAfterBranchEPKNS2_8BranchOpEPNS2_5BlockEbENKUlNS2_7OpIndexEE_clESO_"}
!653 = !{!654}
!654 = distinct !{!654, !655, !"_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE16GetTypeOrInvalidENS2_7OpIndexE: argument 0"}
!655 = distinct !{!655, !"_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE16GetTypeOrInvalidENS2_7OpIndexE"}
!656 = !{!657}
!657 = distinct !{!657, !658, !"_ZN2v88internal8compiler10turboshaft9TupleType5TupleENS_4base6VectorINS2_4TypeEEEPNS0_4ZoneE: argument 0"}
!658 = distinct !{!658, !"_ZN2v88internal8compiler10turboshaft9TupleType5TupleENS_4base6VectorINS2_4TypeEEEPNS0_4ZoneE"}
!659 = distinct !{!659, !10}
!660 = distinct !{!660, !10}
!661 = distinct !{!661, !10}
!662 = distinct !{!662, !10, !175, !176}
!663 = distinct !{!663, !10, !176, !175}
!664 = distinct !{null}
!665 = distinct !{!665, !10}
!666 = distinct !{!666, !10}
!667 = distinct !{!667, !10}
!668 = distinct !{!668, !10}
!669 = !{!670, !672}
!670 = distinct !{!670, !671, !"_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataEE6rbeginEv: argument 0"}
!671 = distinct !{!671, !"_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataEE6rbeginEv"}
!672 = distinct !{!672, !673, !"_ZN2v84base8ReversedINS_8internal10ZoneVectorIPNS2_8compiler10turboshaft13SnapshotTableINS5_7OpIndexENS5_12VariableDataEE12SnapshotDataEEEEEDaRT_: argument 0"}
!673 = distinct !{!673, !"_ZN2v84base8ReversedINS_8internal10ZoneVectorIPNS2_8compiler10turboshaft13SnapshotTableINS5_7OpIndexENS5_12VariableDataEE12SnapshotDataEEEEEDaRT_"}
!674 = !{!675, !672}
!675 = distinct !{!675, !676, !"_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataEE4rendEv: argument 0"}
!676 = distinct !{!676, !"_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataEE4rendEv"}
!677 = distinct !{!677, !10}
!678 = !{!679}
!679 = distinct !{!679, !680, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv: argument 0"}
!680 = distinct !{!680, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv"}
!681 = !{!682}
!682 = distinct !{!682, !683, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_4TypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE3endEv: argument 0"}
!683 = distinct !{!683, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_4TypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE3endEv"}
!684 = distinct !{null, null, null, null, null, null, null}
!685 = distinct !{null, null, null, null, null}
!686 = !{!687}
!687 = distinct !{!687, !688, !"_ZN2v88internal8compiler10turboshaft5Typer14TypeProjectionERKNS2_4TypeEt: argument 0"}
!688 = distinct !{!688, !"_ZN2v88internal8compiler10turboshaft5Typer14TypeProjectionERKNS2_4TypeEt"}
!689 = !{!690, !687}
!690 = distinct !{!690, !691, !"_ZN2v88internal8compiler10turboshaft4Type4NoneEv: argument 0"}
!691 = distinct !{!691, !"_ZN2v88internal8compiler10turboshaft4Type4NoneEv"}
!692 = !{!693, !687}
!693 = distinct !{!693, !694, !"_ZN2v88internal8compiler10turboshaft4Type3AnyEv: argument 0"}
!694 = distinct !{!694, !"_ZN2v88internal8compiler10turboshaft4Type3AnyEv"}
!695 = distinct !{!695, !10, !175, !176}
!696 = distinct !{!696, !10, !175}
!697 = !{!"branch_weights", !"expected", i32 3648897, i32 2143834751}
!698 = distinct !{!698, !10}
!699 = !{!700}
!700 = distinct !{!700, !701, !"_ZN2v88internal8compiler10turboshaft4Type4NoneEv: argument 0"}
!701 = distinct !{!701, !"_ZN2v88internal8compiler10turboshaft4Type4NoneEv"}
!702 = !{!703}
!703 = distinct !{!703, !704, !"_ZN2v88internal8compiler10turboshaft5Typer12TypeConstantENS2_10ConstantOp4KindENS4_7StorageE: argument 0"}
!704 = distinct !{!704, !"_ZN2v88internal8compiler10turboshaft5Typer12TypeConstantENS2_10ConstantOp4KindENS4_7StorageE"}
!705 = !{!706, !703}
!706 = distinct !{!706, !707, !"_ZN2v88internal8compiler10turboshaft4Type3AnyEv: argument 0"}
!707 = distinct !{!707, !"_ZN2v88internal8compiler10turboshaft4Type3AnyEv"}
!708 = distinct !{!708, !10, !175, !176}
!709 = distinct !{!709, !10, !175}
!710 = !{!711}
!711 = distinct !{!711, !712, !"_ZN2v88internal8compiler10turboshaft5Typer21TypeForRepresentationENS2_22RegisterRepresentationE: argument 0"}
!712 = distinct !{!712, !"_ZN2v88internal8compiler10turboshaft5Typer21TypeForRepresentationENS2_22RegisterRepresentationE"}
!713 = !{!714, !711}
!714 = distinct !{!714, !715, !"_ZN2v88internal8compiler10turboshaft4Type3AnyEv: argument 0"}
!715 = distinct !{!715, !"_ZN2v88internal8compiler10turboshaft4Type3AnyEv"}
!716 = distinct !{!716, !10}
!717 = !{i64 4}
!718 = distinct !{!718, !10}
!719 = distinct !{!719, !10}
!720 = distinct !{!720, !10}
!721 = distinct !{null}
!722 = !{!723}
!723 = distinct !{!723, !724, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE3endEv: argument 0"}
!724 = distinct !{!724, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE3endEv"}
!725 = !{!726, !728}
!726 = distinct !{!726, !727, !"_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE: argument 0"}
!727 = distinct !{!727, !"_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE"}
!728 = distinct !{!728, !729, !"_ZN2v88internal8compiler10turboshaft25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE7GetTypeENS2_7OpIndexE: argument 0"}
!729 = distinct !{!729, !"_ZN2v88internal8compiler10turboshaft25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE7GetTypeENS2_7OpIndexE"}
!730 = distinct !{null, null}
!731 = !{!732, !734}
!732 = distinct !{!732, !733, !"_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE: argument 0"}
!733 = distinct !{!733, !"_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25TypedOptimizationsReducerES3_S6_EEEEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE"}
!734 = distinct !{!734, !735, !"_ZN2v88internal8compiler10turboshaft25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE7GetTypeENS2_7OpIndexE: argument 0"}
!735 = distinct !{!735, !"_ZN2v88internal8compiler10turboshaft25TypedOptimizationsReducerINS2_20TypeInferenceReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S4_S7_EEEEEEEEEEEEEE7GetTypeENS2_7OpIndexE"}
end_hunk_7
