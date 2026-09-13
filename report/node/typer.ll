Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/typer?download=true
inline.NumInlined: 789
inline.NumDeleted: 390
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE35RestrictionForLessThanOrEqual_FalseERKNS2_9FloatTypeILm64EEES8_PNS0_4ZoneE:bb.a
  %.sroa.0.0.i.i3.i29 = select i1 %i.bn, ptr %i.bo, ptr %i.bp
  %i.bq = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i29, i64 %i.bm
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %i.bs = load double, ptr %i.br, align 8         ; 2 uses
  br i1 %.not10.i22, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34, label %.thread111

.thread111:                                       ; preds = %bb.i, %bb.k
  %i.bt = phi double [ %i.bs, %bb.k ], [ %i.bb, %bb.i ] ; 2 uses
  %i.bu = fcmp ogt double %i.bt, 0.000000e+00
  %.sroa.speculated.i30 = select i1 %i.bu, double %i.bt, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread127, %.thread110, %bb.k, %.thread111
  %.0.i31 = phi double [ %..i33, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread ], [ %i.bh, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread.thread127 ], [ %.sroa.speculated5.i32, %.thread110 ], [ %.sroa.speculated.i30, %.thread111 ], [ %i.bs, %bb.k ]
  %i.bv = tail call noundef double @nextafter(double noundef %.0.i31, double noundef -inf) #15 ; 4 uses
  %i.bw = tail call noundef i1 @llvm.is.fpclass.f64(double %i.bv, /* (nzero) */ i32 32)
  br i1 %i.bw, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit39, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i, !prof !8

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34
  %i.bx = fcmp oge double %i.bv, 0.000000e+00
  %i.by = select i1 %i.bx, i32 3, i32 1
  %i.bz = fcmp oeq double %i.bv, -inf
  %spec.select117 = zext i1 %i.bz to i8           ; 2 uses
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit39

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit39: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread125, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34
  %.sroa.758.0 = phi i8 [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34 ], [ 0, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit ], [ 2, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit ], [ %spec.select117, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i ], [ 2, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread125 ]
  %.sroa.10.0 = phi i8 [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34 ], [ 0, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit ], [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit ], [ %spec.select117, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i ], [ 0, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread125 ]
  %.sroa.16.0 = phi i32 [ 3, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34 ], [ 3, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit ], [ 1, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit ], [ %i.by, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i ], [ 1, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread125 ]
  %.sroa.19.0 = phi double [ -inf, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34 ], [ -inf, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit ], [ -inf, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread125 ]
  %.sroa.22.0 = phi double [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit34 ], [ +inf, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddjPNS0_4ZoneE.exit ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit ], [ %i.bv, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i ], [ 0.000000e+00, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv.exit.thread125 ]
  store i8 5, ptr %0, align 8
  %.sroa.780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.780.0, ptr %.sroa.780.0..sroa_idx, align 1
  %.sroa.1081.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.1081.0, ptr %.sroa.1081.0..sroa_idx, align 2
  %.sroa.1382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %.sroa.1382.0..sroa_idx, align 1
  %.sroa.1683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.1683.0, ptr %.sroa.1683.0..sroa_idx, align 4
  %.sroa.1984.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.1984.0, ptr %.sroa.1984.0..sroa_idx, align 8
  %.sroa.2285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.2285.0, ptr %.sroa.2285.0..sroa_idx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 5, ptr %i.ca, align 8
  %.sroa.758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %.sroa.758.0, ptr %.sroa.758.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.1359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 0, ptr %.sroa.1359.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sroa.19.0, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.22.0, ptr %.sroa.22.0..sroa_idx, align 8
  ret void
}

declare void @_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE9IntersectERKS4_S6_PNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft4Type11IsSubtypeOfERKS3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

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
  br i1 %i.q, label %_ZSt15__adjacent_findIPjN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !57

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
  br i1 %.not.i.i, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i, !llvm.loop !58

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.am = icmp samesign ult i64 %i.ak, 3
  br i1 %i.am, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.an = load i32, ptr %i.z, align 4, !noalias !69
  %i.ao = icmp eq i64 %i.aj, 8
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !noalias !69
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw i64 %i.ar, 32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.4.0.i.i = phi i64 [ %i.as, %bb.h ], [ 0, %bb.g ]
  %i.at = trunc nuw nsw i64 %i.ak to i8
  store i8 2, ptr %0, align 8, !alias.scope !69
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.au, align 1, !alias.scope !69
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.at, ptr %i.av, align 2, !alias.scope !69
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %i.aw, align 1, !alias.scope !69
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ax, align 4, !alias.scope !69
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.04.0.insert.ext.i.i = zext i32 %i.an to i64
  %.sroa.04.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.i.i, %.sroa.04.0.insert.ext.i.i
  store i64 %.sroa.04.0.insert.insert.i.i, ptr %i.ay, align 8, !alias.scope !69
  br label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetILm16EEES4_RKNS_4base11SmallVectorIjXT_ESaIjEEEPNS0_4ZoneE.exit

bb.j:                                             ; preds = %bb.f
  %i.az = add nuw nsw i64 %i.aj, 4
  %i.ba = and i64 %i.az, -8                       ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !69
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8, !noalias !69 ; 2 uses
  %i.bf = sub i64 %i.bc, %i.be
  %i.bg = icmp ugt i64 %i.ba, %i.bf
  br i1 %i.bg, label %bb.k, label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i, !prof !8

bb.k:                                             ; preds = %bb.j
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.ba) #15, !noalias !69
  %.pre.i.i.i.i = load i64, ptr %i.bd, align 8, !noalias !69
  br label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i

_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit.i.i: ; preds = %bb.k, %bb.j
  %i.bh = phi i64 [ %.pre.i.i.i.i, %bb.k ], [ %i.be, %bb.j ] ; 4 uses
  %i.bi = inttoptr i64 %i.bh to ptr               ; 6 uses
  %i.bj = add i64 %i.bh, %i.ba
  store i64 %i.bj, ptr %i.bd, align 8, !noalias !69
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
  %wide.load = load <4 x i32>, ptr %i.bm, align 4, !noalias !69
  %wide.load27 = load <4 x i32>, ptr %i.bn, align 4, !noalias !69
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <4 x i32> %wide.load, ptr %i.bo, align 4, !noalias !69
  store <4 x i32> %wide.load27, ptr %i.bp, align 4, !noalias !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %i.ak
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !63

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
  %i.bs = load i32, ptr %i.br, align 4, !noalias !69
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.014.i.i.epil
  store i32 %i.bs, ptr %i.bt, align 4, !noalias !69
  %i.bu = add nuw nsw i64 %.014.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %scalar.ph.epil, !llvm.loop !64

middle.block:                                     ; preds = %vector.body, %middle.block.loopexit.unr-lcssa, %scalar.ph.epil
  %i.bv = trunc nuw nsw i64 %i.ak to i8
  store i8 2, ptr %0, align 8, !alias.scope !69
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.bw, align 1, !alias.scope !69
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.bv, ptr %i.bx, align 2, !alias.scope !69
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %i.by, align 1, !alias.scope !69
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bz, align 4, !alias.scope !69
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bh, ptr %i.ca, align 8, !alias.scope !69
  br label %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetILm16EEES4_RKNS_4base11SmallVectorIjXT_ESaIjEEEPNS0_4ZoneE.exit

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.014.i.i = phi i64 [ 0, %scalar.ph.preheader.new ], [ %i.cq, %scalar.ph ] ; 6 uses
  %niter = phi i64 [ 0, %scalar.ph.preheader.new ], [ %niter.next.3, %scalar.ph ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.014.i.i
  %i.cc = load i32, ptr %i.cb, align 4, !noalias !69
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.014.i.i
  store i32 %i.cc, ptr %i.cd, align 4, !noalias !69
  %i.ce = or disjoint i64 %.014.i.i, 1            ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !noalias !69
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ce
  store i32 %i.cg, ptr %i.ch, align 4, !noalias !69
  %i.ci = or disjoint i64 %.014.i.i, 2            ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !noalias !69
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ci
  store i32 %i.ck, ptr %i.cl, align 4, !noalias !69
  %i.cm = or disjoint i64 %.014.i.i, 3            ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !noalias !69
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cm
  store i32 %i.co, ptr %i.cp, align 4, !noalias !69
  %i.cq = add nuw nsw i64 %.014.i.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !65

_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetILm16EEES4_RKNS_4base11SmallVectorIjXT_ESaIjEEEPNS0_4ZoneE.exit: ; preds = %bb.i, %middle.block
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cr, align 8, !alias.scope !69
  br label %bb.m

bb.l:                                             ; preds = %_ZSt6uniqueIPjET_S1_S1_.exit
  %i.cs = add nsw i64 %i.ak, -1                   ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4            ; 4 uses
  %i.cv = load i32, ptr %i.z, align 4             ; 4 uses
  %i.cw = sub i32 %i.cu, %i.cv
  %i.cx = icmp sgt i32 %i.cw, -1
  br i1 %i.cx, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l
  %3 = icmp ugt i64 %i.cs, 1
  br i1 %3, label %.lr.ph.i, label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.cy = phi i32 [ %i.dm, %.lr.ph.i ], [ %i.cu, %.preheader.i ] ; 2 uses
  %i.cz = phi i32 [ %i.dl, %.lr.ph.i ], [ %i.cv, %.preheader.i ] ; 2 uses
  %i.da = phi i64 [ %i.dj, %.lr.ph.i ], [ 1, %.preheader.i ] ; 2 uses
  %.026.i = phi i64 [ %.1.i, %.lr.ph.i ], [ 0, %.preheader.i ]
  %.01025.i = phi i64 [ %.111.i, %.lr.ph.i ], [ %i.cs, %.preheader.i ] ; 2 uses
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
  br i1 %i.dk, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !66

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.111.i
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4
  %.phi.trans.insert28.i = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.1.i
  %.pre29.i = load i32, ptr %.phi.trans.insert28.i, align 4
  br label %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit

_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit: ; preds = %bb.l, %.preheader.i, %._crit_edge.loopexit.i
  %.sroa.024.0.i = phi i32 [ %i.cv, %bb.l ], [ %i.cu, %.preheader.i ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.sroa.3.0.i = phi i32 [ %i.cu, %bb.l ], [ %i.cv, %.preheader.i ], [ %.pre29.i, %._crit_edge.loopexit.i ]
  tail call void @_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE5RangeEjjPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8 %0, i32 noundef %.sroa.024.0.i, i32 noundef %.sroa.3.0.i, ptr noundef %2)
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WordOperationTyperILm32EE9MakeRangeENS_4base6VectorIKjEE.exit, %_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE3SetILm16EEES4_RKNS_4base11SmallVectorIjXT_ESaIjEEEPNS0_4ZoneE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZN2v88internal8compiler10turboshaft8WordTypeILm32EE5RangeEjjPNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::WordType") align 8, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2v88internal8compiler10turboshaft4Type8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #15
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 344
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 352
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 353
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.f, ptr %2, align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 -24      ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8
  %i.l = load ptr, ptr %2, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.o, ptr noundef null) #15
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.p, i64 %i.x
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.y, ptr noundef null) #15
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.z, ptr %2, align 8
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %2, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %2, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.p, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #15
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 24, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  store ptr %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 0, ptr %i.ak, align 8
  store i8 0, ptr %i.aj, align 8
  %i.al = load ptr, ptr %2, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, ptr noundef nonnull %i.ae) #15
  call void @_ZNK2v88internal8compiler10turboshaft4Type7PrintToERSo(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.p) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ap, ptr %0, align 8, !alias.scope !79
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.aq, align 8, !alias.scope !79
  store i8 0, ptr %i.ap, align 8, !alias.scope !79
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !79 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.as, null
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !noalias !79 ; 2 uses
  %i.av = icmp ugt ptr %i.as, %i.au
  %.08.i.i.i = select i1 %i.av, ptr %i.as, ptr %i.au ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !79 ; 2 uses
  %i.ay = ptrtoint ptr %.08.i.i.i to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ax, i64 noundef %i.ba) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.c
  %i.bc = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bc, ptr %2, align 8
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %2, i64 %i.bf
  store ptr %i.bd, ptr %i.bg, align 8
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bh, ptr %i.p, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8
  %i.bi = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.aj
  br i1 %i.bj, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bk = load i64, ptr %i.aj, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #17
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #15
  store ptr %i.f, ptr %2, align 8
  %i.bm = load i64, ptr %i.h, align 8
  %i.bn = getelementptr inbounds i8, ptr %2, i64 %i.bm
  store ptr %i.g, ptr %i.bn, align 8
  store i64 0, ptr %i.k, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIjLm16ESaIjEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
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
  br i1 %i.k, label %bb.b, label %bb.e, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 2305843009213693951
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #16
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 4, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #18 ; 5 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp sgt i64 %i.t, 4
  br i1 %i.u, label %bb.f, label %bb.g, !prof !7
end_hunk_0
