Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice15IterMutProducerINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall14floyd_warshallNtCs68Jln09rRqb_8petgraph8DirectedEs0_0EEB38_:bb.a
  %.val.i.i3.i.i.i = load ptr, ptr %.sroa.0.021.i.i.i, align 8, !alias.scope !43495, !noalias !43496, !nonnull !67, !noundef !67 ; 9 uses
  %.val10.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !43495, !noalias !43496, !noundef !67 ; 5 uses
  %.sroa.0.07.i.i.i.i = and i64 %.val10.i.i.i.i.i, %i.cj ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.val.i.i3.i.i.i, i64 %.sroa.0.07.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i = load <16 x i8>, ptr %i.ew, align 1, !noalias !43500
  %i.ex = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i, zeroinitializer
  %i.ey = bitcast <16 x i1> %i.ex to i16          ; 2 uses
  %.not.i9.i.i.i.i = icmp eq i16 %i.ey, 0
  br i1 %.not.i9.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !prof !80

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjdEE7reserveNCINvNtB8_3map11make_hasherjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %.sroa.0.07.i.i.i.i, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjdEE7reserveNCINvNtB8_3map11make_hasherjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %.sroa.0.0.i5.i.i.i, %.lr.ph.i.i.i.i ]
  %.lcssa.i.i.i.i = phi i16 [ %i.ey, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjdEE7reserveNCINvNtB8_3map11make_hasherjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %i.fp, %.lr.ph.i.i.i.i ]
  %i.ez = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.fa = zext nneg i16 %i.ez to i64
  %i.fb = add i64 %.sroa.0.0.lcssa.i.i.i.i, %i.fa
  %i.fc = and i64 %i.fb, %.val10.i.i.i.i.i        ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.val.i.i3.i.i.i, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !noalias !43494, !noundef !67 ; 2 uses
  %i.ff = icmp sgt i8 %i.fe, -1
  br i1 %i.ff, label %bb.u, label %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit.i.i.i, !prof !71

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  %.val62.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i3.i.i.i, align 16, !noalias !43494
  %i.fg = icmp slt <16 x i8> %.val62.i.i.i.i.i, zeroinitializer
  %i.fh = bitcast <16 x i1> %i.fg to i16          ; 2 uses
  %.not.i6.i.i.i.i = icmp ne i16 %i.fh, 0
  %i.fi = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fh, i1 true)
  %i.fj = zext nneg i16 %i.fi to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i.i.i.i), !noalias !43501
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i3.i.i.i, i64 %i.fj
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !43502
  br label %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjdEE7reserveNCINvNtB8_3map11make_hasherjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.010.i.i.i.i = phi i64 [ %.sroa.0.0.i5.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.07.i.i.i.i, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjdEE7reserveNCINvNtB8_3map11make_hasherjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ]
  %i.fk = phi i64 [ %i.fl, %.lr.ph.i.i.i.i ], [ 0, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjdEE7reserveNCINvNtB8_3map11make_hasherjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ]
  %i.fl = add i64 %i.fk, 16                       ; 2 uses
  %i.fm = add i64 %i.fl, %.sroa.0.010.i.i.i.i
  %.sroa.0.0.i5.i.i.i = and i64 %i.fm, %.val10.i.i.i.i.i ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.val.i.i3.i.i.i, i64 %.sroa.0.0.i5.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i.i = load <16 x i8>, ptr %i.fn, align 1, !noalias !43500
  %i.fo = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i.i, zeroinitializer
  %i.fp = bitcast <16 x i1> %i.fo to i16          ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.fp, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !prof !81

_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit.i.i.i: ; preds = %bb.u, %._crit_edge.i.i.i.i
  %i.fq = phi i8 [ %.pre.i.i.i, %bb.u ], [ %i.fe, %._crit_edge.i.i.i.i ]
  %.sroa.0.0.i5.i.i.i.i = phi i64 [ %i.fj, %bb.u ], [ %i.fc, %._crit_edge.i.i.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43503)
  %i.fr = getelementptr inbounds nuw i8, ptr %.val.i.i3.i.i.i, i64 %.sroa.0.0.i5.i.i.i.i
  %i.fs = and i8 %i.fq, 1
  %i.ft = zext nneg i8 %i.fs to i64
  %i.fu = add i64 %.sroa.0.0.i5.i.i.i.i, -16
  %i.fv = and i64 %i.fu, %.val10.i.i.i.i.i
  store i8 %i.cl, ptr %i.fr, align 1, !noalias !43502
  %i.fw = getelementptr i8, ptr %.val.i.i3.i.i.i, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fw, i64 16
  store i8 %i.cl, ptr %i.fx, align 1, !noalias !43502
  %i.fy = load <2 x i64>, ptr %i.bi, align 8, !alias.scope !43504, !noalias !43496
  %i.fz = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ft, i64 0
  %i.ga = sub <2 x i64> %i.fy, %i.fz
  store <2 x i64> %i.ga, ptr %i.bi, align 8, !alias.scope !43504, !noalias !43496
  %i.gb = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i
  %i.gc = getelementptr inbounds [16 x i8], ptr %.val.i.i3.i.i.i, i64 %i.gb ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 -16
  store i64 %i.cb, ptr %i.gd, align 8, !noalias !43502
  %i.ge = getelementptr inbounds i8, ptr %i.gc, i64 -8
  store double %i.ca, ptr %i.ge, align 8, !noalias !43502
  br label %_RNvMs1d_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_5EntryjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE9or_insertCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs1d_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_5EntryjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE9or_insertCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit.i.i.i, %bb.t, %bb.q, %bb.p
  %i.gf = phi ptr [ %.val.i.i3.i.i.i, %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit.i.i.i ], [ %i.bj, %bb.t ], [ %i.bj, %bb.q ], [ %i.bj, %bb.p ]
  %i.gg = phi i64 [ %.val10.i.i.i.i.i, %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit.i.i.i ], [ %i.bk, %bb.t ], [ %i.bk, %bb.q ], [ %i.bk, %bb.p ]
  %i.gh = icmp eq i64 %i.bw, 0
  br i1 %i.gh, label %_RNvXs_NtNtNtCslwFuT2d6ECx_4core3ops8function5implsRNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall14floyd_warshallNtCs68Jln09rRqb_8petgraph8DirectedEs0_0INtB6_5FnMutTQINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEEE8call_mutBW_.exit.i.i.i, label %bb.l

_RNvXs_NtNtNtCslwFuT2d6ECx_4core3ops8function5implsRNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall14floyd_warshallNtCs68Jln09rRqb_8petgraph8DirectedEs0_0INtB6_5FnMutTQINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEEE8call_mutBW_.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %_RNvMs1d_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_5EntryjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE9or_insertCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjdE9get_innerjECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.g
  %i.gi = icmp eq ptr %i.o, %i.k
  br i1 %i.gi, label %_RINvYINtNtCs1JJT1bG4y5L_5rayon5slice15IterMutProducerINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEENtNtNtB8_4iter8plumbing8Producer9fold_withINtNtB1C_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall14floyd_warshallNtCs68Jln09rRqb_8petgraph8DirectedEs0_0EEB2W_.exit, label %bb.g

bb.v:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi i64 [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  store i64 %.sink.i, ptr %i.c, align 8, !alias.scope !43460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %i.b, align 8
  %.not.i.i = icmp ugt i64 %i.f, %5
  br i1 %.not.i.i, label %bb.w, label %_RNvXsa_NtCs1JJT1bG4y5L_5rayon5sliceINtB5_15IterMutProducerINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEENtNtNtB7_4iter8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1533, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4282) #60, !noalias !43505
  unreachable

_RNvXsa_NtCs1JJT1bG4y5L_5rayon5sliceINtB5_15IterMutProducerINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEENtNtNtB7_4iter8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.v
  %i.gj = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %i.f
  %i.gk = sub nuw nsw i64 %5, %i.f
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.gj, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.gk, ptr %.sroa.75.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %6, ptr %.sroa.8.0..sroa_idx, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.gl, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %4, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.f, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %6, ptr %.sroa.7.0..sroa_idx, align 8
  %i.gm = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCslLviULm4Laq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %.val.i.i = load ptr, ptr %i.gm, align 8, !noalias !43506, !noundef !67 ; 2 uses
  %i.gn = icmp eq ptr %.val.i.i, null
  br i1 %i.gn, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_RNvXsa_NtCs1JJT1bG4y5L_5rayon5sliceINtB5_15IterMutProducerINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEENtNtNtB7_4iter8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice15IterMutProducerINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEEINtNtBY_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall14floyd_warshallNtCs68Jln09rRqb_8petgraph8DirectedEs0_0EE0NCBR_s_0uuE0B41_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.a, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_5slice15IterMutProducerINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall14floyd_warshallNtCs68Jln09rRqb_8petgraph8DirectedEs0_0EE0NCB1i_s_0uuE0TuuEEB4t_.exit

bb.y:                                             ; preds = %_RNvXsa_NtCs1JJT1bG4y5L_5rayon5sliceINtB5_15IterMutProducerINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEENtNtNtB7_4iter8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit
  %i.go = call noundef nonnull align 8 ptr @_RNvNtCslLviULm4Laq_10rayon_core8registry15global_registry(), !noalias !43506, !inline_history !43456
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !43506, !nonnull !67, !noundef !67 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 128 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.gm, align 8, !noalias !43507, !noundef !67 ; 4 uses
  %i.gr = icmp eq ptr %.val.i.i.i, null
  br i1 %i.gr, label %bb.aa, label %bb.z, !prof !71

bb.z:                                             ; preds = %bb.y
  %i.gs = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 272
  %i.gt = load ptr, ptr %i.gs, align 16, !noalias !43507, !nonnull !67, !noundef !67
  %.not.i12 = icmp eq ptr %i.gt, %i.gp
  br i1 %.not.i12, label %bb.ab, label %bb.ac, !prof !77

bb.aa:                                            ; preds = %bb.y
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_5slice15IterMutProducerINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEEINtNtB1N_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall14floyd_warshallNtCs68Jln09rRqb_8petgraph8DirectedEs0_0EE0NCB1G_s_0uuE0TuuEEB4R_(ptr noundef nonnull align 128 %i.gq, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.a), !inline_history !43459
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_5slice15IterMutProducerINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall14floyd_warshallNtCs68Jln09rRqb_8petgraph8DirectedEs0_0EE0NCB1i_s_0uuE0TuuEEB4t_.exit

bb.ab:                                            ; preds = %bb.z
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice15IterMutProducerINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEEINtNtBY_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall14floyd_warshallNtCs68Jln09rRqb_8petgraph8DirectedEs0_0EE0NCBR_s_0uuE0B41_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.a, ptr noundef nonnull align 128 %.val.i.i.i, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_5slice15IterMutProducerINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall14floyd_warshallNtCs68Jln09rRqb_8petgraph8DirectedEs0_0EE0NCB1i_s_0uuE0TuuEEB4t_.exit

bb.ac:                                            ; preds = %bb.z
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_5slice15IterMutProducerINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEEINtNtB1O_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall14floyd_warshallNtCs68Jln09rRqb_8petgraph8DirectedEs0_0EE0NCB1H_s_0uuE0TuuEEB4S_(ptr noundef nonnull align 128 %i.gq, ptr noundef nonnull align 128 %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.a), !inline_history !43459
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_5slice15IterMutProducerINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall14floyd_warshallNtCs68Jln09rRqb_8petgraph8DirectedEs0_0EE0NCB1i_s_0uuE0TuuEEB4t_.exit

_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_5slice15IterMutProducerINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall14floyd_warshallNtCs68Jln09rRqb_8petgraph8DirectedEs0_0EE0NCB1i_s_0uuE0TuuEEB4t_.exit: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvYINtNtCs1JJT1bG4y5L_5rayon5slice15IterMutProducerINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEENtNtNtB8_4iter8plumbing8Producer9fold_withINtNtB1C_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall14floyd_warshallNtCs68Jln09rRqb_8petgraph8DirectedEs0_0EEB2W_.exit

_RINvYINtNtCs1JJT1bG4y5L_5rayon5slice15IterMutProducerINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEENtNtNtB8_4iter8plumbing8Producer9fold_withINtNtB1C_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall14floyd_warshallNtCs68Jln09rRqb_8petgraph8DirectedEs0_0EEB2W_.exit: ; preds = %_RNvXs_NtNtNtCslwFuT2d6ECx_4core3ops8function5implsRNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall14floyd_warshallNtCs68Jln09rRqb_8petgraph8DirectedEs0_0INtB6_5FnMutTQINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEEE8call_mutBW_.exit.i.i.i, %bb.f, %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_5slice15IterMutProducerINtNtCs3sCKvcUjPpt_9hashbrown3map7HashMapjdEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall14floyd_warshallNtCs68Jln09rRqb_8petgraph8DirectedEs0_0EE0NCB1i_s_0uuE0TuuEEB4t_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EEB40_(i64 noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 25 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %3, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43549)
  %i.f = lshr i64 %0, 1                           ; 4 uses
  %.not.i = icmp ult i64 %i.f, %3
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not1.i = icmp eq i64 %2, 0
  br i1 %.not1.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads(), !noalias !43549
  %i.h = lshr i64 %2, 1
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.h)
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.j = lshr i64 %2, 1
  br label %bb.o

bb.f:                                             ; preds = %bb.a, %bb.c
  %.sroa.033.0.copyload = load i64, ptr %4, align 8 ; 3 uses
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.434.0.copyload = load i64, ptr %.sroa.434.0..sroa_idx, align 8 ; 3 uses
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.535.0.copyload = load i64, ptr %.sroa.535.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx36, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx37, align 8 ; 5 uses
  %.sroa.838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.838.0.copyload = load ptr, ptr %.sroa.838.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43551)
  %.val.i.i = load ptr, ptr %5, align 8, !alias.scope !43552, !noalias !43553 ; 3 uses
  %.not.i12.i.i.i.i = icmp ult i64 %.sroa.033.0.copyload, %.sroa.434.0.copyload
  br i1 %.not.i12.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvYINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing8Producer9fold_withINtNtB2b_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EEB3M_.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val1.i.i = load ptr, ptr %i.k, align 8, !alias.scope !43552, !noalias !43553 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.838.0.copyload) ]
  %i.l = icmp eq i64 %.sroa.7.0.copyload, 1
  %i.m = icmp ult i64 %.sroa.6.0.copyload, 2
  %spec.select.i.i.i.i.i.i.i.i.i.i = or i1 %i.m, %i.l
  %spec.select.i.i.i.i.i.i.i.fr.i.i.i = freeze i1 %spec.select.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %.sroa.6.0.i.idx.i.i.i.i.i.i.i = select i1 %spec.select.i.i.i.i.i.i.i.fr.i.i.i, i64 %.sroa.6.0.copyload, i64 0 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %spec.select.i.i.i.i.i.i.i.fr.i.i.i, i64 2, i64 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 40 ; 2 uses
  br i1 %spec.select.i.i.i.i.i.i.i.fr.i.i.i, label %.lr.ph.i.split.us.i.i.i, label %.lr.ph.i.split.i.i.i

.lr.ph.i.split.us.i.i.i:                          ; preds = %.lr.ph.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0E0B2S_.exit.i.us.i.i.i
  %i.q = phi i64 [ %i.r, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0E0B2S_.exit.i.us.i.i.i ], [ %.sroa.033.0.copyload, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.r = add i64 %i.q, 1                          ; 2 uses
  %i.s = load i64, ptr %.val.i.i, align 8, !noalias !43554, !noundef !67 ; 2 uses
  %i.t = icmp ult i64 %i.s, %.sroa.6.0.copyload
  br i1 %i.t, label %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i, label %.split.us.i.i.i, !prof !77

_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i: ; preds = %.lr.ph.i.split.us.i.i.i
  %i.u = mul i64 %i.q, %.sroa.535.0.copyload
  %i.v = getelementptr inbounds [8 x i8], ptr %.sroa.838.0.copyload, i64 %i.u ; 3 uses
  %i.w = mul i64 %i.s, %.sroa.7.0.copyload
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !noalias !43554, !noundef !67
  %.sroa.6.0.i.i.i.i.i.us.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.6.0.i.idx.i.i.i.i.i.i.i ; 2 uses
  %6 = ptrtoint ptr %i.v to i64
  %i.z = load ptr, ptr %i.n, align 8, !alias.scope !43555, !noalias !43556, !nonnull !67, !noundef !67 ; 3 uses
  %.val7.i1.i.i.i.i.us.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !43555, !noalias !43556 ; 3 uses
  %.val.i2.i.i.i.i.us.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !43555, !noalias !43556 ; 2 uses
  %i.aa = icmp ne i64 %.val.i2.i.i.i.i.us.i.i.i, 1
  %i.ab = icmp ugt i64 %.val7.i1.i.i.i.i.us.i.i.i, 1
  %spec.select.i.i.not.i.i.i.i.i.us.i.i.i = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %spec.select.i.i.not.i.i.i.i.i.us.i.i.i, label %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.val7.i1.i.i.i.i.us.i.i.i
  %i.ad = ptrtoint ptr %i.z to i64
  br label %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i

_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i: ; preds = %bb.g, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i
  %.sroa.89.0.i.i.i.i.us.i.i.i = phi i64 [ undef, %bb.g ], [ %.val7.i1.i.i.i.i.us.i.i.i, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i ]
  %.sink31.i.i.i.i.i.us.i.i.i = phi i64 [ 2, %bb.g ], [ 1, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i ]
  %.sink30.i.i.i.i.i.us.i.i.i = phi i64 [ %i.ad, %bb.g ], [ 0, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i ]
  %.sink.i.i.i.i.i.us.i.i.i = phi ptr [ %i.ac, %bb.g ], [ %i.z, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i ] ; 2 uses
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.a

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.a: ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.backedge, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i
  %.sroa.13.0.i.i.i.i.us.i.i.i = phi i64 [ %.sink30.i.i.i.i.i.us.i.i.i, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i ], [ %.sroa.13.1.i.i.i.i.us.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.backedge ] ; 3 uses
  %.sroa.4.0.i.i.i.i.us.i.i.i = phi i64 [ %6, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i ], [ %.sroa.4.1.i.i.i.i.us.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.backedge ] ; 3 uses
  %spec.select.i.i13.i14.i.i.i.i.i.us.i.i.i = phi i64 [ %.sink31.i.i.i.i.i.us.i.i.i, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i ], [ %spec.select.i.i13.i13.i.i.i.i.i.us.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.backedge ]
  %spec.select.i.i.i11.i.i.i.i.i.us.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i ], [ %spec.select.i.i.i10.i.i.i.i.i.us.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.backedge ]
  switch i64 %spec.select.i.i.i11.i.i.i.i.i.us.i.i.i, label %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.us.i.i.i [
    i64 2, label %7
    i64 0, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0E0B2S_.exit.i.us.i.i.i
  ]

7:                                                ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.a
  %8 = inttoptr i64 %.sroa.4.0.i.i.i.i.us.i.i.i to ptr ; 3 uses
  %9 = icmp eq ptr %.sroa.6.0.i.i.i.i.i.us.i.i.i, %8
  br i1 %9, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0E0B2S_.exit.i.us.i.i.i, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %12 = ptrtoint ptr %11 to i64
  br label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i

_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.us.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.a
  %13 = mul i64 %.sroa.4.0.i.i.i.i.us.i.i.i, %.sroa.7.0.copyload
  %14 = add i64 %.sroa.4.0.i.i.i.i.us.i.i.i, 1    ; 2 uses
  %15 = icmp ult i64 %14, %.sroa.6.0.copyload
  %spec.select.i.i.i.i.i.i.i.i.us.i.i.i = zext i1 %15 to i64
  %16 = getelementptr inbounds [8 x i8], ptr %.sroa.6.0.i.i.i.i.i.us.i.i.i, i64 %13
  br label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i

_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i: ; preds = %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.us.i.i.i, %10
  %.sroa.4.1.i.i.i.i.us.i.i.i = phi i64 [ %14, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.us.i.i.i ], [ %12, %10 ]
  %spec.select.i.i.i10.i.i.i.i.i.us.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.us.i.i.i, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.us.i.i.i ], [ 2, %10 ]
  %.sroa.0.0.i.i.i.i.i.i.i.us.i.i.i = phi ptr [ %16, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.us.i.i.i ], [ %8, %10 ] ; 2 uses
  switch i64 %spec.select.i.i13.i14.i.i.i.i.i.us.i.i.i, label %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.us.i.i.i [
    i64 2, label %bb.h
    i64 0, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0E0B2S_.exit.i.us.i.i.i
  ]

bb.h:                                             ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i
  %i.ae = inttoptr i64 %.sroa.13.0.i.i.i.i.us.i.i.i to ptr ; 3 uses
  %i.af = icmp eq ptr %.sink.i.i.i.i.i.us.i.i.i, %i.ae
  br i1 %i.af, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0E0B2S_.exit.i.us.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = ptrtoint ptr %i.ag to i64
  br label %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i

_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.us.i.i.i: ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i
  %i.ai = mul i64 %.sroa.13.0.i.i.i.i.us.i.i.i, %.val.i2.i.i.i.i.us.i.i.i
  %i.aj = add i64 %.sroa.13.0.i.i.i.i.us.i.i.i, 1 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %.sroa.89.0.i.i.i.i.us.i.i.i
  %spec.select.i.i13.i.i.i.i.i.i.us.i.i.i = zext i1 %i.ak to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i.i.us.i.i.i, i64 %i.ai
  br label %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i

_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i: ; preds = %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.us.i.i.i, %bb.i
  %.sroa.13.1.i.i.i.i.us.i.i.i = phi i64 [ %i.aj, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.us.i.i.i ], [ %i.ah, %bb.i ]
  %spec.select.i.i13.i13.i.i.i.i.i.us.i.i.i = phi i64 [ %spec.select.i.i13.i.i.i.i.i.i.us.i.i.i, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.us.i.i.i ], [ 2, %bb.i ]
  %.sroa.4.0.i.i.i.i.i.i.us.i.i.i = phi ptr [ %i.al, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.us.i.i.i ], [ %i.ae, %bb.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i.i.i.i.i.i.us.i.i.i) ]
  %.val4.i.i.i.i.i.us.i.i.i = load double, ptr %.sroa.4.0.i.i.i.i.i.i.us.i.i.i, align 8, !noalias !43557, !noundef !67
  %i.am = fadd double %i.y, %.val4.i.i.i.i.i.us.i.i.i ; 2 uses
  %i.an = load double, ptr %.sroa.0.0.i.i.i.i.i.i.i.us.i.i.i, align 8, !alias.scope !43558, !noalias !43557, !noundef !67
  %i.ao = fcmp olt double %i.am, %i.an
  br i1 %i.ao, label %bb.j, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.backedge

bb.j:                                             ; preds = %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i
  store double %i.am, ptr %.sroa.0.0.i.i.i.i.i.i.i.us.i.i.i, align 8, !alias.scope !43558, !noalias !43557
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.backedge

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.backedge: ; preds = %bb.j, %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.a

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0E0B2S_.exit.i.us.i.i.i: ; preds = %bb.h, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i, %7, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.a
  %exitcond.not.i.us.i.i.i = icmp eq i64 %i.r, %.sroa.434.0.copyload
  br i1 %exitcond.not.i.us.i.i.i, label %_RINvYINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing8Producer9fold_withINtNtB2b_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EEB3M_.exit, label %.lr.ph.i.split.us.i.i.i

.lr.ph.i.split.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0E0B2S_.exit.i.i.i.i
  %i.ap = phi i64 [ %i.aq, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0E0B2S_.exit.i.i.i.i ], [ %.sroa.033.0.copyload, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aq = add i64 %i.ap, 1                        ; 2 uses
  %i.ar = load i64, ptr %.val.i.i, align 8, !noalias !43554, !noundef !67 ; 2 uses
  %i.as = icmp ult i64 %i.ar, %.sroa.6.0.copyload
  br i1 %i.as, label %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, label %.split.us.i.i.i, !prof !77

.split.us.i.i.i:                                  ; preds = %.lr.ph.i.split.i.i.i, %.lr.ph.i.split.us.i.i.i
  tail call void @_RNvNtCshByAT0BfsDP_7ndarray11arraytraits19array_out_of_bounds() #60, !noalias !43559
  unreachable

_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.split.i.i.i
  %i.at = mul i64 %i.ap, %.sroa.535.0.copyload
  %i.au = getelementptr inbounds [8 x i8], ptr %.sroa.838.0.copyload, i64 %i.at ; 2 uses
  %i.av = mul i64 %i.ar, %.sroa.7.0.copyload
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !noalias !43554, !noundef !67
  %.sroa.6.0.i.i.i.i.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.sroa.6.0.i.idx.i.i.i.i.i.i.i ; 2 uses
  %i.ay = load ptr, ptr %i.n, align 8, !alias.scope !43555, !noalias !43556, !nonnull !67, !noundef !67 ; 3 uses
  %.val7.i1.i.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !43555, !noalias !43556 ; 3 uses
  %.val.i2.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !43555, !noalias !43556 ; 2 uses
  %i.az = icmp ne i64 %.val.i2.i.i.i.i.i.i.i, 1
  %i.ba = icmp ugt i64 %.val7.i1.i.i.i.i.i.i.i, 1
  %spec.select.i.i.not.i.i.i.i.i.i.i.i = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %spec.select.i.i.not.i.i.i.i.i.i.i.i, label %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.val7.i1.i.i.i.i.i.i.i
  %i.bc = ptrtoint ptr %i.ay to i64
  br label %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i

_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %.sroa.89.0.i.i.i.i.i.i.i = phi i64 [ undef, %bb.k ], [ %.val7.i1.i.i.i.i.i.i.i, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ]
  %.sink31.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.k ], [ 1, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ]
  %.sink30.i.i.i.i.i.i.i.i = phi i64 [ %i.bc, %bb.k ], [ 0, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.k ], [ %i.ay, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ] ; 2 uses
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.a

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.a: ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.backedge, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %.sroa.13.0.i.i.i.i.i.i.i = phi i64 [ %.sink30.i.i.i.i.i.i.i.i, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ %.sroa.13.1.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.backedge ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ %.sroa.4.1.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.backedge ] ; 3 uses
  %spec.select.i.i13.i14.i.i.i.i.i.i.i.i = phi i64 [ %.sink31.i.i.i.i.i.i.i.i, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ %spec.select.i.i13.i13.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.backedge ]
  %spec.select.i.i.i11.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ %spec.select.i.i.i10.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.backedge ]
  switch i64 %spec.select.i.i.i11.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.i.i [
    i64 2, label %21
    i64 0, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0E0B2S_.exit.i.i.i.i
  ]

_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.a
  %17 = mul i64 %.sroa.4.0.i.i.i.i.i.i.i, %.sroa.7.0.copyload
  %18 = add i64 %.sroa.4.0.i.i.i.i.i.i.i, 1       ; 2 uses
  %19 = icmp ult i64 %18, %.sroa.6.0.copyload
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = zext i1 %19 to i64
  %20 = getelementptr inbounds [8 x i8], ptr %.sroa.6.0.i.i.i.i.i.i.i.i, i64 %17
  br label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

21:                                               ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.a
  %22 = inttoptr i64 %.sroa.4.0.i.i.i.i.i.i.i to ptr ; 3 uses
  %23 = icmp eq ptr %.sroa.6.0.i.i.i.i.i.i.i.i, %22
  br i1 %23, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0E0B2S_.exit.i.i.i.i, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 8
  %26 = ptrtoint ptr %25 to i64
  br label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %24, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.1.i.i.i.i.i.i.i = phi i64 [ %18, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %26, %24 ]
  %spec.select.i.i.i10.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 2, %24 ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %20, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %22, %24 ] ; 2 uses
  switch i64 %spec.select.i.i13.i14.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.i.i [
    i64 2, label %bb.l
    i64 0, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0E0B2S_.exit.i.i.i.i
  ]

_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  %i.bd = mul i64 %.sroa.13.0.i.i.i.i.i.i.i, %.val.i2.i.i.i.i.i.i.i
  %i.be = add i64 %.sroa.13.0.i.i.i.i.i.i.i, 1    ; 2 uses
  %i.bf = icmp ult i64 %i.be, %.sroa.89.0.i.i.i.i.i.i.i
  %spec.select.i.i13.i.i.i.i.i.i.i.i.i = zext i1 %i.bf to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i.i.i.i.i, i64 %i.bd
  br label %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  %i.bh = inttoptr i64 %.sroa.13.0.i.i.i.i.i.i.i to ptr ; 3 uses
  %i.bi = icmp eq ptr %.sink.i.i.i.i.i.i.i.i, %i.bh
  br i1 %i.bi, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0E0B2S_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = ptrtoint ptr %i.bj to i64
  br label %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.m, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.i.i
  %.sroa.13.1.i.i.i.i.i.i.i = phi i64 [ %i.be, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.i.i ], [ %i.bk, %bb.m ]
  %spec.select.i.i13.i13.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i13.i.i.i.i.i.i.i.i.i, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.i.i ], [ 2, %bb.m ]
  %.sroa.4.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bg, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.i.i ], [ %i.bh, %bb.m ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i.i.i.i.i.i.i.i.i) ]
  %.val4.i.i.i.i.i.i.i.i = load double, ptr %.sroa.4.0.i.i.i.i.i.i.i.i.i, align 8, !noalias !43557, !noundef !67
  %i.bl = fadd double %i.ax, %.val4.i.i.i.i.i.i.i.i ; 2 uses
  %i.bm = load double, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !43558, !noalias !43557, !noundef !67
  %i.bn = fcmp olt double %i.bl, %i.bm
  br i1 %i.bn, label %bb.n, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.backedge

bb.n:                                             ; preds = %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  store double %i.bl, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !43558, !noalias !43557
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.backedge

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.backedge: ; preds = %bb.n, %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.a

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0E0B2S_.exit.i.i.i.i: ; preds = %bb.l, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %21, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.a
  %exitcond.not.i.i.i.i = icmp eq i64 %i.aq, %.sroa.434.0.copyload
  br i1 %exitcond.not.i.i.i.i, label %_RINvYINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing8Producer9fold_withINtNtB2b_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EEB3M_.exit, label %.lr.ph.i.split.i.i.i

bb.o:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi i64 [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  store i64 %.sink.i, ptr %i.c, align 8, !alias.scope !43549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43560)
  %.sroa.026.0.copyload.i = load i64, ptr %4, align 8, !alias.scope !43560, !noalias !43561 ; 3 uses
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.427.0.copyload.i = load i64, ptr %.sroa.427.0..sroa_idx.i, align 8, !alias.scope !43560, !noalias !43561 ; 2 uses
  %i.bo = sub i64 %.sroa.427.0.copyload.i, %.sroa.026.0.copyload.i
  %.not.i.i = icmp ugt i64 %i.f, %i.bo
  br i1 %.not.i.i, label %bb.p, label %_RNvXsg_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB5_16ParallelProducerINtNtB9_9iterators11AxisIterMutdINtNtNtB9_9dimension3dim3DimAjj1_EEENtNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2341, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4316) #60, !noalias !43562
  unreachable

_RNvXsg_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB5_16ParallelProducerINtNtB9_9iterators11AxisIterMutdINtNtNtB9_9dimension3dim3DimAjj1_EEENtNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.o
  %.sroa.831.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.831.0.copyload.i = load ptr, ptr %.sroa.831.0..sroa_idx.i, align 8, !alias.scope !43560, !noalias !43561 ; 2 uses
  %.sroa.730.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.730.0.copyload.i = load i64, ptr %.sroa.730.0..sroa_idx.i, align 8, !alias.scope !43560, !noalias !43561 ; 2 uses
  %.sroa.629.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.629.0.copyload.i = load i64, ptr %.sroa.629.0..sroa_idx.i, align 8, !alias.scope !43560, !noalias !43561 ; 2 uses
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.528.0.copyload.i = load i64, ptr %.sroa.528.0..sroa_idx.i, align 8, !alias.scope !43560, !noalias !43561 ; 2 uses
  %i.bp = add i64 %.sroa.026.0.copyload.i, %i.f   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !43560, !noalias !43561, !noundef !67 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %5, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.bp, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.427.0.copyload.i, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %.sroa.528.0.copyload.i, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.629.0.copyload.i, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.730.0.copyload.i, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %.sroa.831.0.copyload.i, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.br, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.b, ptr %i.bs, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %5, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 %.sroa.026.0.copyload.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 %i.bp, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 %.sroa.528.0.copyload.i, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %.sroa.629.0.copyload.i, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 %.sroa.730.0.copyload.i, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %.sroa.831.0.copyload.i, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i64 %i.br, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %i.bt = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCslLviULm4Laq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %.val.i.i13 = load ptr, ptr %i.bt, align 8, !noalias !43563, !noundef !67 ; 2 uses
  %i.bu = icmp eq ptr %.val.i.i13, null
  br i1 %i.bu, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RNvXsg_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB5_16ParallelProducerINtNtB9_9iterators11AxisIterMutdINtNtNtB9_9dimension3dim3DimAjj1_EEENtNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2c_9iterators11AxisIterMutdINtNtNtB2c_9dimension3dim3DimAjj1_EEEINtNtBY_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE0NCBR_s_0uuE0B4S_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(168) %i.a, ptr noundef nonnull align 128 %.val.i.i13, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2D_9iterators11AxisIterMutdINtNtNtB2D_9dimension3dim3DimAjj1_EEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE0NCB1i_s_0uuE0TuuEEB5k_.exit

bb.r:                                             ; preds = %_RNvXsg_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB5_16ParallelProducerINtNtB9_9iterators11AxisIterMutdINtNtNtB9_9dimension3dim3DimAjj1_EEENtNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit
  %i.bv = call noundef nonnull align 8 ptr @_RNvNtCslLviULm4Laq_10rayon_core8registry15global_registry(), !noalias !43563, !inline_history !43545
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !43563, !nonnull !67, !noundef !67 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 128 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.bt, align 8, !noalias !43564, !noundef !67 ; 4 uses
  %i.by = icmp eq ptr %.val.i.i.i, null
  br i1 %i.by, label %bb.t, label %bb.s, !prof !71

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 272
  %i.ca = load ptr, ptr %i.bz, align 16, !noalias !43564, !nonnull !67, !noundef !67
  %.not.i12 = icmp eq ptr %i.ca, %i.bw
  br i1 %.not.i12, label %bb.u, label %bb.v, !prof !77

bb.t:                                             ; preds = %bb.r
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB31_9iterators11AxisIterMutdINtNtNtB31_9dimension3dim3DimAjj1_EEEINtNtB1N_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE0NCB1G_s_0uuE0TuuEEB5I_(ptr noundef nonnull align 128 %i.bx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.a), !inline_history !43548
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2D_9iterators11AxisIterMutdINtNtNtB2D_9dimension3dim3DimAjj1_EEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE0NCB1i_s_0uuE0TuuEEB5k_.exit

bb.u:                                             ; preds = %bb.s
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2c_9iterators11AxisIterMutdINtNtNtB2c_9dimension3dim3DimAjj1_EEEINtNtBY_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE0NCBR_s_0uuE0B4S_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(168) %i.a, ptr noundef nonnull align 128 %.val.i.i.i, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2D_9iterators11AxisIterMutdINtNtNtB2D_9dimension3dim3DimAjj1_EEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE0NCB1i_s_0uuE0TuuEEB5k_.exit

bb.v:                                             ; preds = %bb.s
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB32_9iterators11AxisIterMutdINtNtNtB32_9dimension3dim3DimAjj1_EEEINtNtB1O_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE0NCB1H_s_0uuE0TuuEEB5J_(ptr noundef nonnull align 128 %i.bx, ptr noundef nonnull align 128 %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.a), !inline_history !43548
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2D_9iterators11AxisIterMutdINtNtNtB2D_9dimension3dim3DimAjj1_EEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE0NCB1i_s_0uuE0TuuEEB5k_.exit

_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2D_9iterators11AxisIterMutdINtNtNtB2D_9dimension3dim3DimAjj1_EEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE0NCB1i_s_0uuE0TuuEEB5k_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvYINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing8Producer9fold_withINtNtB2b_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EEB3M_.exit

_RINvYINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing8Producer9fold_withINtNtB2b_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EEB3M_.exit: ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0E0B2S_.exit.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0E0B2S_.exit.i.us.i.i.i, %bb.f, %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2D_9iterators11AxisIterMutdINtNtNtB2D_9dimension3dim3DimAjj1_EEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE0NCB1i_s_0uuE0TuuEEB5k_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0EEB40_(i64 noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 25 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %3, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43606)
  %i.f = lshr i64 %0, 1                           ; 4 uses
  %.not.i = icmp ult i64 %i.f, %3
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not1.i = icmp eq i64 %2, 0
  br i1 %.not1.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads(), !noalias !43606
  %i.h = lshr i64 %2, 1
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.h)
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.j = lshr i64 %2, 1
  br label %bb.o

bb.f:                                             ; preds = %bb.a, %bb.c
  %.sroa.033.0.copyload = load i64, ptr %4, align 8 ; 3 uses
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.434.0.copyload = load i64, ptr %.sroa.434.0..sroa_idx, align 8 ; 3 uses
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.535.0.copyload = load i64, ptr %.sroa.535.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx36, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx37, align 8 ; 5 uses
  %.sroa.838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.838.0.copyload = load ptr, ptr %.sroa.838.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43608)
  %.val.i.i = load ptr, ptr %5, align 8, !alias.scope !43609, !noalias !43610 ; 3 uses
  %.not.i12.i.i.i.i = icmp ult i64 %.sroa.033.0.copyload, %.sroa.434.0.copyload
  br i1 %.not.i12.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvYINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing8Producer9fold_withINtNtB2b_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0EEB3M_.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val1.i.i = load ptr, ptr %i.k, align 8, !alias.scope !43609, !noalias !43610 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.838.0.copyload) ]
  %i.l = icmp eq i64 %.sroa.7.0.copyload, 1
  %i.m = icmp ult i64 %.sroa.6.0.copyload, 2
  %spec.select.i.i.i.i.i.i.i.i.i.i = or i1 %i.m, %i.l
  %spec.select.i.i.i.i.i.i.i.fr.i.i.i = freeze i1 %spec.select.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %.sroa.6.0.i.idx.i.i.i.i.i.i.i = select i1 %spec.select.i.i.i.i.i.i.i.fr.i.i.i, i64 %.sroa.6.0.copyload, i64 0 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %spec.select.i.i.i.i.i.i.i.fr.i.i.i, i64 2, i64 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 40 ; 2 uses
  br i1 %spec.select.i.i.i.i.i.i.i.fr.i.i.i, label %.lr.ph.i.split.us.i.i.i, label %.lr.ph.i.split.i.i.i

.lr.ph.i.split.us.i.i.i:                          ; preds = %.lr.ph.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0E0B2S_.exit.i.us.i.i.i
  %i.q = phi i64 [ %i.r, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0E0B2S_.exit.i.us.i.i.i ], [ %.sroa.033.0.copyload, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.r = add i64 %i.q, 1                          ; 2 uses
  %i.s = load i64, ptr %.val.i.i, align 8, !noalias !43611, !noundef !67 ; 2 uses
  %i.t = icmp ult i64 %i.s, %.sroa.6.0.copyload
  br i1 %i.t, label %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i, label %.split.us.i.i.i, !prof !77

_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i: ; preds = %.lr.ph.i.split.us.i.i.i
  %i.u = mul i64 %i.q, %.sroa.535.0.copyload
  %i.v = getelementptr inbounds [8 x i8], ptr %.sroa.838.0.copyload, i64 %i.u ; 3 uses
  %i.w = mul i64 %i.s, %.sroa.7.0.copyload
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !noalias !43611, !noundef !67
  %.sroa.6.0.i.i.i.i.i.us.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.6.0.i.idx.i.i.i.i.i.i.i ; 2 uses
  %6 = ptrtoint ptr %i.v to i64
  %i.z = load ptr, ptr %i.n, align 8, !alias.scope !43612, !noalias !43613, !nonnull !67, !noundef !67 ; 3 uses
  %.val7.i1.i.i.i.i.us.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !43612, !noalias !43613 ; 3 uses
  %.val.i2.i.i.i.i.us.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !43612, !noalias !43613 ; 2 uses
  %i.aa = icmp ne i64 %.val.i2.i.i.i.i.us.i.i.i, 1
  %i.ab = icmp ugt i64 %.val7.i1.i.i.i.i.us.i.i.i, 1
  %spec.select.i.i.not.i.i.i.i.i.us.i.i.i = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %spec.select.i.i.not.i.i.i.i.i.us.i.i.i, label %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.val7.i1.i.i.i.i.us.i.i.i
  %i.ad = ptrtoint ptr %i.z to i64
  br label %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i

_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i: ; preds = %bb.g, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i
  %.sroa.89.0.i.i.i.i.us.i.i.i = phi i64 [ undef, %bb.g ], [ %.val7.i1.i.i.i.i.us.i.i.i, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i ]
  %.sink31.i.i.i.i.i.us.i.i.i = phi i64 [ 2, %bb.g ], [ 1, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i ]
  %.sink30.i.i.i.i.i.us.i.i.i = phi i64 [ %i.ad, %bb.g ], [ 0, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i ]
  %.sink.i.i.i.i.i.us.i.i.i = phi ptr [ %i.ac, %bb.g ], [ %i.z, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i ] ; 2 uses
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.a

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.a: ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.backedge, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i
  %.sroa.13.0.i.i.i.i.us.i.i.i = phi i64 [ %.sink30.i.i.i.i.i.us.i.i.i, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i ], [ %.sroa.13.1.i.i.i.i.us.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.backedge ] ; 3 uses
  %.sroa.4.0.i.i.i.i.us.i.i.i = phi i64 [ %6, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i ], [ %.sroa.4.1.i.i.i.i.us.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.backedge ] ; 3 uses
  %spec.select.i.i13.i14.i.i.i.i.i.us.i.i.i = phi i64 [ %.sink31.i.i.i.i.i.us.i.i.i, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i ], [ %spec.select.i.i13.i13.i.i.i.i.i.us.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.backedge ]
  %spec.select.i.i.i11.i.i.i.i.i.us.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i ], [ %spec.select.i.i.i10.i.i.i.i.i.us.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.backedge ]
  switch i64 %spec.select.i.i.i11.i.i.i.i.i.us.i.i.i, label %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.us.i.i.i [
    i64 2, label %7
    i64 0, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0E0B2S_.exit.i.us.i.i.i
  ]

7:                                                ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.a
  %8 = inttoptr i64 %.sroa.4.0.i.i.i.i.us.i.i.i to ptr ; 3 uses
  %9 = icmp eq ptr %.sroa.6.0.i.i.i.i.i.us.i.i.i, %8
  br i1 %9, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0E0B2S_.exit.i.us.i.i.i, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %12 = ptrtoint ptr %11 to i64
  br label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i

_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.us.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.a
  %13 = mul i64 %.sroa.4.0.i.i.i.i.us.i.i.i, %.sroa.7.0.copyload
  %14 = add i64 %.sroa.4.0.i.i.i.i.us.i.i.i, 1    ; 2 uses
  %15 = icmp ult i64 %14, %.sroa.6.0.copyload
  %spec.select.i.i.i.i.i.i.i.i.us.i.i.i = zext i1 %15 to i64
  %16 = getelementptr inbounds [8 x i8], ptr %.sroa.6.0.i.i.i.i.i.us.i.i.i, i64 %13
  br label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i

_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i: ; preds = %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.us.i.i.i, %10
  %.sroa.4.1.i.i.i.i.us.i.i.i = phi i64 [ %14, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.us.i.i.i ], [ %12, %10 ]
  %spec.select.i.i.i10.i.i.i.i.i.us.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.us.i.i.i, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.us.i.i.i ], [ 2, %10 ]
  %.sroa.0.0.i.i.i.i.i.i.i.us.i.i.i = phi ptr [ %16, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.us.i.i.i ], [ %8, %10 ] ; 2 uses
  switch i64 %spec.select.i.i13.i14.i.i.i.i.i.us.i.i.i, label %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.us.i.i.i [
    i64 2, label %bb.h
    i64 0, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0E0B2S_.exit.i.us.i.i.i
  ]

bb.h:                                             ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i
  %i.ae = inttoptr i64 %.sroa.13.0.i.i.i.i.us.i.i.i to ptr ; 3 uses
  %i.af = icmp eq ptr %.sink.i.i.i.i.i.us.i.i.i, %i.ae
  br i1 %i.af, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0E0B2S_.exit.i.us.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = ptrtoint ptr %i.ag to i64
  br label %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i

_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.us.i.i.i: ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i
  %i.ai = mul i64 %.sroa.13.0.i.i.i.i.us.i.i.i, %.val.i2.i.i.i.i.us.i.i.i
  %i.aj = add i64 %.sroa.13.0.i.i.i.i.us.i.i.i, 1 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %.sroa.89.0.i.i.i.i.us.i.i.i
  %spec.select.i.i13.i.i.i.i.i.i.us.i.i.i = zext i1 %i.ak to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i.i.us.i.i.i, i64 %i.ai
  br label %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i

_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i: ; preds = %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.us.i.i.i, %bb.i
  %.sroa.13.1.i.i.i.i.us.i.i.i = phi i64 [ %i.aj, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.us.i.i.i ], [ %i.ah, %bb.i ]
  %spec.select.i.i13.i13.i.i.i.i.i.us.i.i.i = phi i64 [ %spec.select.i.i13.i.i.i.i.i.i.us.i.i.i, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.us.i.i.i ], [ 2, %bb.i ]
  %.sroa.4.0.i.i.i.i.i.i.us.i.i.i = phi ptr [ %i.al, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.us.i.i.i ], [ %i.ae, %bb.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i.i.i.i.i.i.us.i.i.i) ]
  %.val4.i.i.i.i.i.us.i.i.i = load double, ptr %.sroa.4.0.i.i.i.i.i.i.us.i.i.i, align 8, !noalias !43614, !noundef !67
  %i.am = fadd double %i.y, %.val4.i.i.i.i.i.us.i.i.i ; 2 uses
  %i.an = load double, ptr %.sroa.0.0.i.i.i.i.i.i.i.us.i.i.i, align 8, !alias.scope !43615, !noalias !43614, !noundef !67
  %i.ao = fcmp olt double %i.am, %i.an
  br i1 %i.ao, label %bb.j, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.backedge

bb.j:                                             ; preds = %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i
  store double %i.am, ptr %.sroa.0.0.i.i.i.i.i.i.i.us.i.i.i, align 8, !alias.scope !43615, !noalias !43614
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.backedge

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.backedge: ; preds = %bb.j, %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.a

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0E0B2S_.exit.i.us.i.i.i: ; preds = %bb.h, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.us.i.i.i, %7, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.us.i.i.i.a
  %exitcond.not.i.us.i.i.i = icmp eq i64 %i.r, %.sroa.434.0.copyload
  br i1 %exitcond.not.i.us.i.i.i, label %_RINvYINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing8Producer9fold_withINtNtB2b_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0EEB3M_.exit, label %.lr.ph.i.split.us.i.i.i

.lr.ph.i.split.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0E0B2S_.exit.i.i.i.i
  %i.ap = phi i64 [ %i.aq, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0E0B2S_.exit.i.i.i.i ], [ %.sroa.033.0.copyload, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aq = add i64 %i.ap, 1                        ; 2 uses
  %i.ar = load i64, ptr %.val.i.i, align 8, !noalias !43611, !noundef !67 ; 2 uses
  %i.as = icmp ult i64 %i.ar, %.sroa.6.0.copyload
  br i1 %i.as, label %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, label %.split.us.i.i.i, !prof !77

.split.us.i.i.i:                                  ; preds = %.lr.ph.i.split.i.i.i, %.lr.ph.i.split.us.i.i.i
  tail call void @_RNvNtCshByAT0BfsDP_7ndarray11arraytraits19array_out_of_bounds() #60, !noalias !43616
  unreachable

_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.split.i.i.i
  %i.at = mul i64 %i.ap, %.sroa.535.0.copyload
  %i.au = getelementptr inbounds [8 x i8], ptr %.sroa.838.0.copyload, i64 %i.at ; 2 uses
  %i.av = mul i64 %i.ar, %.sroa.7.0.copyload
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !noalias !43611, !noundef !67
  %.sroa.6.0.i.i.i.i.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.sroa.6.0.i.idx.i.i.i.i.i.i.i ; 2 uses
  %i.ay = load ptr, ptr %i.n, align 8, !alias.scope !43612, !noalias !43613, !nonnull !67, !noundef !67 ; 3 uses
  %.val7.i1.i.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !43612, !noalias !43613 ; 3 uses
  %.val.i2.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !43612, !noalias !43613 ; 2 uses
  %i.az = icmp ne i64 %.val.i2.i.i.i.i.i.i.i, 1
  %i.ba = icmp ugt i64 %.val7.i1.i.i.i.i.i.i.i, 1
  %spec.select.i.i.not.i.i.i.i.i.i.i.i = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %spec.select.i.i.not.i.i.i.i.i.i.i.i, label %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.val7.i1.i.i.i.i.i.i.i
  %i.bc = ptrtoint ptr %i.ay to i64
  br label %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i

_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %.sroa.89.0.i.i.i.i.i.i.i = phi i64 [ undef, %bb.k ], [ %.val7.i1.i.i.i.i.i.i.i, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ]
  %.sink31.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.k ], [ 1, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ]
  %.sink30.i.i.i.i.i.i.i.i = phi i64 [ %i.bc, %bb.k ], [ 0, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.k ], [ %i.ay, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ] ; 2 uses
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.a

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.a: ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.backedge, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %.sroa.13.0.i.i.i.i.i.i.i = phi i64 [ %.sink30.i.i.i.i.i.i.i.i, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ %.sroa.13.1.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.backedge ] ; 3 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ %.sroa.4.1.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.backedge ] ; 3 uses
  %spec.select.i.i13.i14.i.i.i.i.i.i.i.i = phi i64 [ %.sink31.i.i.i.i.i.i.i.i, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ %spec.select.i.i13.i13.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.backedge ]
  %spec.select.i.i.i11.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ %spec.select.i.i.i10.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.backedge ]
  switch i64 %spec.select.i.i.i11.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.i.i [
    i64 2, label %21
    i64 0, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0E0B2S_.exit.i.i.i.i
  ]

_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.a
  %17 = mul i64 %.sroa.4.0.i.i.i.i.i.i.i, %.sroa.7.0.copyload
  %18 = add i64 %.sroa.4.0.i.i.i.i.i.i.i, 1       ; 2 uses
  %19 = icmp ult i64 %18, %.sroa.6.0.copyload
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = zext i1 %19 to i64
  %20 = getelementptr inbounds [8 x i8], ptr %.sroa.6.0.i.i.i.i.i.i.i.i, i64 %17
  br label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

21:                                               ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.a
  %22 = inttoptr i64 %.sroa.4.0.i.i.i.i.i.i.i to ptr ; 3 uses
  %23 = icmp eq ptr %.sroa.6.0.i.i.i.i.i.i.i.i, %22
  br i1 %23, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0E0B2S_.exit.i.i.i.i, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 8
  %26 = ptrtoint ptr %25 to i64
  br label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %24, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.1.i.i.i.i.i.i.i = phi i64 [ %18, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %26, %24 ]
  %spec.select.i.i.i10.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 2, %24 ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %20, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %22, %24 ] ; 2 uses
  switch i64 %spec.select.i.i13.i14.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.i.i [
    i64 2, label %bb.l
    i64 0, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0E0B2S_.exit.i.i.i.i
  ]

_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  %i.bd = mul i64 %.sroa.13.0.i.i.i.i.i.i.i, %.val.i2.i.i.i.i.i.i.i
  %i.be = add i64 %.sroa.13.0.i.i.i.i.i.i.i, 1    ; 2 uses
  %i.bf = icmp ult i64 %i.be, %.sroa.89.0.i.i.i.i.i.i.i
  %spec.select.i.i13.i.i.i.i.i.i.i.i.i = zext i1 %i.bf to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i.i.i.i.i, i64 %i.bd
  br label %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  %i.bh = inttoptr i64 %.sroa.13.0.i.i.i.i.i.i.i to ptr ; 3 uses
  %i.bi = icmp eq ptr %.sink.i.i.i.i.i.i.i.i, %i.bh
  br i1 %i.bi, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0E0B2S_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = ptrtoint ptr %i.bj to i64
  br label %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.m, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.i.i
  %.sroa.13.1.i.i.i.i.i.i.i = phi i64 [ %i.be, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.i.i ], [ %i.bk, %bb.m ]
  %spec.select.i.i13.i13.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i13.i.i.i.i.i.i.i.i.i, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.i.i ], [ 2, %bb.m ]
  %.sroa.4.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bg, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.i.i ], [ %i.bh, %bb.m ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i.i.i.i.i.i.i.i.i) ]
  %.val4.i.i.i.i.i.i.i.i = load double, ptr %.sroa.4.0.i.i.i.i.i.i.i.i.i, align 8, !noalias !43614, !noundef !67
  %i.bl = fadd double %i.ax, %.val4.i.i.i.i.i.i.i.i ; 2 uses
  %i.bm = load double, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !43615, !noalias !43614, !noundef !67
  %i.bn = fcmp olt double %i.bl, %i.bm
  br i1 %i.bn, label %bb.n, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.backedge

bb.n:                                             ; preds = %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  store double %i.bl, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !43615, !noalias !43614
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.backedge

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.backedge: ; preds = %bb.n, %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.a

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0E0B2S_.exit.i.i.i.i: ; preds = %bb.l, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %21, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTQdRdENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_00E0B1w_.exit.i.i.i.i.i.i.i.i.a
  %exitcond.not.i.i.i.i = icmp eq i64 %i.aq, %.sroa.434.0.copyload
  br i1 %exitcond.not.i.i.i.i, label %_RINvYINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing8Producer9fold_withINtNtB2b_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0EEB3M_.exit, label %.lr.ph.i.split.i.i.i

bb.o:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi i64 [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  store i64 %.sink.i, ptr %i.c, align 8, !alias.scope !43606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43617)
  %.sroa.026.0.copyload.i = load i64, ptr %4, align 8, !alias.scope !43617, !noalias !43618 ; 3 uses
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.427.0.copyload.i = load i64, ptr %.sroa.427.0..sroa_idx.i, align 8, !alias.scope !43617, !noalias !43618 ; 2 uses
  %i.bo = sub i64 %.sroa.427.0.copyload.i, %.sroa.026.0.copyload.i
  %.not.i.i = icmp ugt i64 %i.f, %i.bo
  br i1 %.not.i.i, label %bb.p, label %_RNvXsg_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB5_16ParallelProducerINtNtB9_9iterators11AxisIterMutdINtNtNtB9_9dimension3dim3DimAjj1_EEENtNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2341, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4316) #60, !noalias !43619
  unreachable

_RNvXsg_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB5_16ParallelProducerINtNtB9_9iterators11AxisIterMutdINtNtNtB9_9dimension3dim3DimAjj1_EEENtNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.o
  %.sroa.831.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.831.0.copyload.i = load ptr, ptr %.sroa.831.0..sroa_idx.i, align 8, !alias.scope !43617, !noalias !43618 ; 2 uses
  %.sroa.730.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.730.0.copyload.i = load i64, ptr %.sroa.730.0..sroa_idx.i, align 8, !alias.scope !43617, !noalias !43618 ; 2 uses
  %.sroa.629.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.629.0.copyload.i = load i64, ptr %.sroa.629.0..sroa_idx.i, align 8, !alias.scope !43617, !noalias !43618 ; 2 uses
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.528.0.copyload.i = load i64, ptr %.sroa.528.0..sroa_idx.i, align 8, !alias.scope !43617, !noalias !43618 ; 2 uses
  %i.bp = add i64 %.sroa.026.0.copyload.i, %i.f   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !43617, !noalias !43618, !noundef !67 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %5, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.bp, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.427.0.copyload.i, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %.sroa.528.0.copyload.i, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.629.0.copyload.i, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.730.0.copyload.i, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %.sroa.831.0.copyload.i, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.br, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.b, ptr %i.bs, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %5, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 %.sroa.026.0.copyload.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 %i.bp, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 %.sroa.528.0.copyload.i, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %.sroa.629.0.copyload.i, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 %.sroa.730.0.copyload.i, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %.sroa.831.0.copyload.i, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i64 %i.br, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %i.bt = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCslLviULm4Laq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %.val.i.i13 = load ptr, ptr %i.bt, align 8, !noalias !43620, !noundef !67 ; 2 uses
  %i.bu = icmp eq ptr %.val.i.i13, null
  br i1 %i.bu, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RNvXsg_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB5_16ParallelProducerINtNtB9_9iterators11AxisIterMutdINtNtNtB9_9dimension3dim3DimAjj1_EEENtNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2c_9iterators11AxisIterMutdINtNtNtB2c_9dimension3dim3DimAjj1_EEEINtNtBY_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE0NCBR_s_0uuE0B4S_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(168) %i.a, ptr noundef nonnull align 128 %.val.i.i13, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2D_9iterators11AxisIterMutdINtNtNtB2D_9dimension3dim3DimAjj1_EEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE0NCB1i_s_0uuE0TuuEEB5k_.exit

bb.r:                                             ; preds = %_RNvXsg_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB5_16ParallelProducerINtNtB9_9iterators11AxisIterMutdINtNtNtB9_9dimension3dim3DimAjj1_EEENtNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit
  %i.bv = call noundef nonnull align 8 ptr @_RNvNtCslLviULm4Laq_10rayon_core8registry15global_registry(), !noalias !43620, !inline_history !43602
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !43620, !nonnull !67, !noundef !67 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 128 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.bt, align 8, !noalias !43621, !noundef !67 ; 4 uses
  %i.by = icmp eq ptr %.val.i.i.i, null
  br i1 %i.by, label %bb.t, label %bb.s, !prof !71

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 272
  %i.ca = load ptr, ptr %i.bz, align 16, !noalias !43621, !nonnull !67, !noundef !67
  %.not.i12 = icmp eq ptr %i.ca, %i.bw
  br i1 %.not.i12, label %bb.u, label %bb.v, !prof !77

bb.t:                                             ; preds = %bb.r
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB31_9iterators11AxisIterMutdINtNtNtB31_9dimension3dim3DimAjj1_EEEINtNtB1N_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE0NCB1G_s_0uuE0TuuEEB5I_(ptr noundef nonnull align 128 %i.bx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.a), !inline_history !43605
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2D_9iterators11AxisIterMutdINtNtNtB2D_9dimension3dim3DimAjj1_EEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE0NCB1i_s_0uuE0TuuEEB5k_.exit

bb.u:                                             ; preds = %bb.s
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2c_9iterators11AxisIterMutdINtNtNtB2c_9dimension3dim3DimAjj1_EEEINtNtBY_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE0NCBR_s_0uuE0B4S_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(168) %i.a, ptr noundef nonnull align 128 %.val.i.i.i, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2D_9iterators11AxisIterMutdINtNtNtB2D_9dimension3dim3DimAjj1_EEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE0NCB1i_s_0uuE0TuuEEB5k_.exit

bb.v:                                             ; preds = %bb.s
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB32_9iterators11AxisIterMutdINtNtNtB32_9dimension3dim3DimAjj1_EEEINtNtB1O_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE0NCB1H_s_0uuE0TuuEEB5J_(ptr noundef nonnull align 128 %i.bx, ptr noundef nonnull align 128 %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.a), !inline_history !43605
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2D_9iterators11AxisIterMutdINtNtNtB2D_9dimension3dim3DimAjj1_EEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE0NCB1i_s_0uuE0TuuEEB5k_.exit

_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2D_9iterators11AxisIterMutdINtNtNtB2D_9dimension3dim3DimAjj1_EEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE0NCB1i_s_0uuE0TuuEEB5k_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvYINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing8Producer9fold_withINtNtB2b_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0EEB3M_.exit

_RINvYINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing8Producer9fold_withINtNtB2b_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0EEB3M_.exit: ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0E0B2S_.exit.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1i_8ViewReprQdEINtNtNtB1i_9dimension3dim3DimAjj1_EdERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0E0B2S_.exit.i.us.i.i.i, %bb.f, %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2D_9iterators11AxisIterMutdINtNtNtB2D_9dimension3dim3DimAjj1_EEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE0NCB1i_s_0uuE0TuuEEB5k_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path32single_source_all_shortest_paths32single_source_all_shortest_paths13collect_pathsRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3p_5types3any5PyAnyEB3k_EECskcxRuJ53GpR_9rustworkx(i32 noundef %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = icmp eq i32 %0, %2
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %0 to i64                       ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !67 ; 2 uses
  %i.j = icmp ugt i64 %i.i, %i.g
  br i1 %i.j, label %bb.g, label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val14 = load ptr, ptr %i.k, align 8, !nonnull !67, !noundef !67 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val15 = load i64, ptr %i.l, align 8, !noundef !67 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43651)
  %i.m = shl nuw nsw i64 %.val15, 2               ; 2 uses
  %i.n = icmp eq i64 %.val15, 0
  br i1 %i.n, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !43652
  %i.o = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !43652 ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %.lr.ph.preheader.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.m) #61, !noalias !43653
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val14, i64 %.val15
  %i.r = and i64 %.val15, 4611686018427387903
  %i.s = add i64 %.val15, -1
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.s) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.t, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %i.v = and i64 %i.u, 7                          ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 8, i64 %i.v
  %n.vec = sub nsw i64 %i.u, %i.x                 ; 4 uses
  %i.y = shl i64 %n.vec, 2
  %i.z = getelementptr i8, ptr %.val14, i64 %i.y
  %i.aa = sub i64 %.val15, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.val14, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !43654, !noalias !43655
  %wide.load26 = load <4 x i32>, ptr %i.ac, align 4, !alias.scope !43654, !noalias !43655
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <4 x i32> %wide.load, ptr %i.ad, align 4, !noalias !43653
  store <4 x i32> %wide.load26, ptr %i.ae, align 4, !noalias !43653
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %.lr.ph.i.i.preheader, label %vector.body, !llvm.loop !43631

.lr.ph.i.i.preheader:                             ; preds = %vector.body, %.lr.ph.preheader.i.i
  %.sroa.016.034.i.i.ph = phi ptr [ %.val14, %.lr.ph.preheader.i.i ], [ %i.z, %vector.body ]
  %.sroa.7.033.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %vector.body ]
  %.sroa.10.032.i.i.ph = phi i64 [ %.val15, %.lr.ph.preheader.i.i ], [ %i.aa, %vector.body ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.f
  %.sroa.016.034.i.i = phi ptr [ %i.aj, %bb.f ], [ %.sroa.016.034.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.7.033.i.i = phi i64 [ %i.ai, %bb.f ], [ %.sroa.7.033.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs1_NtCskcxRuJ53GpR_9rustworkx5graphNtB5_7PyGraph9__add_edge:bb.a
  %i.z = load i64, ptr %i.d, align 8, !range !123, !noalias !59151, !noundef !67 ; 3 uses
  %cond.i = icmp eq i64 %i.z, 2
  br i1 %cond.i, label %.noexc12, label %bb.g, !prof !79

bb.g:                                             ; preds = %.thread22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59152)
  %.not.i.i = icmp eq i64 %i.z, -1
  br i1 %.not.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8add_edgeCskcxRuJ53GpR_9rustworkx.exit, label %.noexc11, !prof !77

.noexc11:                                         ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !59153
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !59152, !noalias !59154
  store i64 %i.z, ptr %i.a, align 8, !noalias !59153
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !noalias !59153
  call void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1552, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1646) #60
  unreachable

.noexc12:                                         ; preds = %.thread22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !59151
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !59151, !noundef !67
  store i64 %i.ae, ptr %i.c, align 8, !noalias !59151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !59151
  store ptr %i.c, ptr %i.b, align 8, !noalias !59151
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !59151
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1725, ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1646) #60
  unreachable

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8add_edgeCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !alias.scope !59152, !noalias !59154, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !59151
  br label %bb.k

.loopexit:                                        ; preds = %bb.f, %bb.d
  %.pre-phi = phi i64 [ %i.p, %bb.d ], [ %i.u, %bb.f ]
  %.sroa.0.0.i10.i = phi i32 [ %.sroa.04.0.1.i.i.i, %bb.d ], [ %.sroa.04.0.i.i.i, %bb.f ]
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %.val4.i.i, i64 %.pre-phi ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noundef !67 ; 3 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %select.unfold, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE15edge_weight_mutCskcxRuJ53GpR_9rustworkx.exit

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE15edge_weight_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit
  %i.aj = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i = load i64, ptr %i.aj, align 8, !noundef !67
  %i.ak = icmp sgt i64 %.val.i.i.i.i, 0
  br i1 %i.ak, label %bb.i, label %bb.h, !prof !125

bb.h:                                             ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE15edge_weight_mutCskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %i.ai)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit unwind label %.thread

bb.i:                                             ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE15edge_weight_mutCskcxRuJ53GpR_9rustworkx.exit
  tail call void @_Py_DecRef(ptr noundef nonnull %i.ai) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit

select.unfold:                                    ; preds = %.loopexit
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1645) #61
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %select.unfold
  unreachable

.thread:                                          ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  store ptr %3, ptr %i.ah, align 8
  br label %bb.l

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.i, %bb.h
  store ptr %3, ptr %i.ah, align 8
  br label %bb.k

bb.k:                                             ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8add_edgeCskcxRuJ53GpR_9rustworkx.exit, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.0.0.in = phi i32 [ %.sroa.0.0.i10.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit ], [ %i.ag, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8add_edgeCskcxRuJ53GpR_9rustworkx.exit ]
  %.sroa.0.0 = zext i32 %.sroa.0.0.in to i64
  ret i64 %.sroa.0.0

bb.l:                                             ; preds = %.thread, %bb.m
  %.pn17 = phi { ptr, i32 } [ %i.al, %.thread ], [ %lpad.thr_comm.split-lp, %bb.m ]
  resume { ptr, i32 } %.pn17

bb.m:                                             ; preds = %select.unfold
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx(ptr nonnull %3) #63
          to label %bb.l unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraph14insert_between(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 10 uses
  %i.g = trunc i64 %2 to i32                      ; 4 uses
  %i.h = trunc i64 %3 to i32                      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59195)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !59195, !noalias !59196, !nonnull !67, !noundef !67 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !59195, !noalias !59196, !noundef !67 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val6.i = load i64, ptr %i.m, align 8, !alias.scope !59195, !noalias !59196, !noundef !67
  %i.n = and i64 %3, 4294967295                   ; 2 uses
  %i.o = icmp ugt i64 %.val6.i, %i.n
  br i1 %i.o, label %bb.b, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E14edges_directedCskcxRuJ53GpR_9rustworkx.exit

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !59195, !noalias !59196, !nonnull !67, !noundef !67
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.n ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !noalias !59197, !noundef !67
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E14edges_directedCskcxRuJ53GpR_9rustworkx.exit, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.s, align 8, !noalias !59197
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !59197
  br label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E14edges_directedCskcxRuJ53GpR_9rustworkx.exit

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E14edges_directedCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.a, %bb.b, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.5.0.i = phi i32 [ %.sroa.5.0.copyload.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i ], [ -1, %bb.a ], [ -1, %bb.b ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.copyload.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i ], [ -1, %bb.a ], [ -1, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !59198
  br i1 %4, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E14edges_directedCskcxRuJ53GpR_9rustworkx.exit
  %i.t = zext i32 %.sroa.0.0.i to i64             ; 2 uses
  %i.u = icmp ugt i64 %i.l, %i.t
  br i1 %i.u, label %bb.d, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB14_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2a_5types3any5PyAnyEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB14_12stable_graph5EdgesB25_NtB16_8DirectedENCNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5l_9PyDiGraph14insert_between0EE9from_iterB5n_.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.t ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !noalias !59199, !noundef !67 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB14_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2a_5types3any5PyAnyEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB14_12stable_graph5EdgesB25_NtB16_8DirectedENCNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5l_9PyDiGraph14insert_between0EE9from_iterB5n_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i32, ptr %i.x, align 8, !noalias !59199, !noundef !67
  br label %bb.j

bb.f:                                             ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E14edges_directedCskcxRuJ53GpR_9rustworkx.exit
  %i.z = zext i32 %.sroa.5.0.i to i64             ; 2 uses
  %i.aa = icmp ugt i64 %i.l, %i.z
  br i1 %i.aa, label %bb.g, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB14_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2a_5types3any5PyAnyEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB14_12stable_graph5EdgesB25_NtB16_8DirectedENCNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5l_9PyDiGraph14insert_between0EE9from_iterB5n_.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.z ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !noalias !59199, !noundef !67
  %i.ae = load ptr, ptr %i.ab, align 8, !noalias !59199, !noundef !67 ; 2 uses
  %.not43.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not43.i.i.i, label %bb.h, label %bb.j, !prof !71

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4319) #60, !noalias !59199
  unreachable

bb.i:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBE_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1J_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx(ptr nonnull %.sink.i.i.i) #63
          to label %common.resume unwind label %bb.u, !noalias !59198

bb.j:                                             ; preds = %bb.g, %bb.e
  %.sroa.11.0 = phi i32 [ %.sroa.5.0.i, %bb.e ], [ %i.ad, %bb.g ] ; 2 uses
  %.sroa.870.0 = phi i32 [ %i.y, %bb.e ], [ %.sroa.0.0.i, %bb.g ] ; 2 uses
  %i.ag = phi ptr [ %i.w, %bb.e ], [ %i.ae, %bb.g ]
  %.sroa.9.0.i.i = phi i32 [ %.sroa.0.0.i, %bb.e ], [ %.sroa.5.0.i, %bb.g ]
  %.sroa.0.0.i.i = phi ptr [ %i.v, %bb.e ], [ %i.ab, %bb.g ] ; 2 uses
  %.sroa.7.0.in.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %.sroa.7.0.i.i = load i64, ptr %.sroa.7.0.in.i.i, align 8, !noalias !59199
  tail call void @_Py_IncRef(ptr noundef nonnull %i.ag) #59, !noalias !59200
  %.sink.i.i.i = load ptr, ptr %.sroa.0.0.i.i, align 8, !noalias !59200, !nonnull !67, !noundef !67 ; 2 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !59201
  %i.ah = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !59201 ; 7 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 64) #61
          to label %bb.v unwind label %bb.i, !noalias !59198

bb.l:                                             ; preds = %bb.j
  %i.aj = select i1 %4, i64 32, i64 0             ; 3 uses
  %.sink2.i.v.i.i = lshr i64 %.sroa.7.0.i.i, %i.aj
  %.sink2.i.i.i = trunc i64 %.sink2.i.v.i.i to i32
  store i32 %.sink2.i.i.i, ptr %i.ah, align 8, !noalias !59198
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %.sroa.9.0.i.i, ptr %.sroa.414.0..sroa_idx.i, align 4, !noalias !59198
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.sink.i.i.i, ptr %.sroa.515.0..sroa_idx.i, align 8, !noalias !59198
  store i64 4, ptr %i.a, align 8, !noalias !59198
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !59198
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !59198
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59203)
  br i1 %4, label %.split.us.i.i.i, label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.l
  %i.ak = zext i32 %.sroa.870.0 to i64            ; 2 uses
  %i.al = icmp ugt i64 %i.l, %i.ak
  br i1 %i.al, label %.lr.ph19.i.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBU_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1Z_5types3any5PyAnyEEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtBU_12stable_graph5EdgesB1U_NtBW_8DirectedENCNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB4Z_9PyDiGraph14insert_between0EE11spec_extendB51_.exit.i

.lr.ph19.i.i.i:                                   ; preds = %.split.us.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i
  %i.am = phi ptr [ %i.ax, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i ], [ %i.ah, %.split.us.i.i.i ]
  %i.an = phi i64 [ %i.az, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i ], [ 1, %.split.us.i.i.i ] ; 6 uses
  %i.ao = phi i64 [ %i.ba, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i ], [ %i.ak, %.split.us.i.i.i ]
  %i.ap = phi i32 [ %i.at, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i ], [ %.sroa.870.0, %.split.us.i.i.i ]
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.ao ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !59204, !noundef !67 ; 2 uses
  %.not.i.i.us.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.us.i.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBU_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1Z_5types3any5PyAnyEEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtBU_12stable_graph5EdgesB1U_NtBW_8DirectedENCNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB4Z_9PyDiGraph14insert_between0EE11spec_extendB51_.exit.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph19.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load i32, ptr %i.as, align 8, !noalias !59204, !noundef !67 ; 2 uses
  %.sroa.7.0.in.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.7.0.i.us.i.i.i = load i64, ptr %.sroa.7.0.in.i.us.i.i.i, align 8, !noalias !59204
  %.sink2.i.v.i.us.i.i.i = lshr i64 %.sroa.7.0.i.us.i.i.i, %i.aj
  %.sink2.i.i.us.i.i.i = trunc i64 %.sink2.i.v.i.us.i.i.i to i32
  tail call void @_Py_IncRef(ptr noundef nonnull %i.ar) #59, !noalias !59205
  %.sink.i.i.us.i.i.i = load ptr, ptr %i.aq, align 8, !noalias !59205, !nonnull !67, !noundef !67 ; 2 uses
  %i.au = icmp samesign ult i64 %i.an, 576460752303423488
  tail call void @llvm.assume(i1 %i.au)
  %i.av = load i64, ptr %i.a, align 8, !range !70, !alias.scope !59206, !noalias !59207, !noundef !67
  %i.aw = icmp eq i64 %i.an, %i.av
  br i1 %i.aw, label %bb.n, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.an, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.us.i.i_crit_edge.i unwind label %.split17.us.i.i.i, !noalias !59207

._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.us.i.i_crit_edge.i: ; preds = %bb.n
  %.pre39.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !59206, !noalias !59207
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i: ; preds = %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.us.i.i_crit_edge.i, %bb.m
  %i.ax = phi ptr [ %.pre39.i, %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.us.i.i_crit_edge.i ], [ %i.am, %bb.m ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.an ; 3 uses
  store i32 %.sink2.i.i.us.i.i.i, ptr %i.ay, align 8, !noalias !59208
  %.sroa.47.0..sroa_idx.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 %i.ap, ptr %.sroa.47.0..sroa_idx.us.i.i.i, align 4, !noalias !59208
  %.sroa.58.0..sroa_idx.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %.sink.i.i.us.i.i.i, ptr %.sroa.58.0..sroa_idx.us.i.i.i, align 8, !noalias !59208
  %i.az = add nuw nsw i64 %i.an, 1                ; 3 uses
  store i64 %i.az, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !59206, !noalias !59207
  %i.ba = zext i32 %i.at to i64                   ; 2 uses
  %i.bb = icmp ugt i64 %i.l, %i.ba
  br i1 %i.bb, label %.lr.ph19.i.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBU_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1Z_5types3any5PyAnyEEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtBU_12stable_graph5EdgesB1U_NtBW_8DirectedENCNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB4Z_9PyDiGraph14insert_between0EE11spec_extendB51_.exit.i

.split17.us.i.i.i:                                ; preds = %bb.n
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.split.i.i.i:                                     ; preds = %bb.l
  %i.bd = zext i32 %.sroa.11.0 to i64             ; 2 uses
  %i.be = icmp ugt i64 %i.l, %i.bd
  br i1 %i.be, label %.lr.ph.i.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBU_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1Z_5types3any5PyAnyEEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtBU_12stable_graph5EdgesB1U_NtBW_8DirectedENCNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB4Z_9PyDiGraph14insert_between0EE11spec_extendB51_.exit.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.bf = phi ptr [ %i.bq, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.ah, %.split.i.i.i ]
  %i.bg = phi i64 [ %i.bs, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 1, %.split.i.i.i ] ; 5 uses
  %i.bh = phi i64 [ %i.bt, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.bd, %.split.i.i.i ]
  %i.bi = phi i32 [ %i.bl, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %.sroa.11.0, %.split.i.i.i ]
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.bh ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !noalias !59204, !noundef !67 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !noalias !59204, !noundef !67 ; 2 uses
  %.not43.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not43.i.i.i.i.i, label %bb.o, label %bb.p, !prof !71

bb.o:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4319) #60
          to label %.noexc.i unwind label %bb.t, !noalias !59198

.noexc.i:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %.sroa.7.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.sroa.7.0.i.i.i.i = load i64, ptr %.sroa.7.0.in.i.i.i.i, align 8, !noalias !59204
  %.sink2.i.v.i.i.i.i = lshr i64 %.sroa.7.0.i.i.i.i, %i.aj
  %.sink2.i.i.i.i.i = trunc i64 %.sink2.i.v.i.i.i.i to i32
  tail call void @_Py_IncRef(ptr noundef nonnull %i.bm) #59, !noalias !59205
  %.sink.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !noalias !59205, !nonnull !67, !noundef !67 ; 2 uses
  %i.bn = icmp samesign ult i64 %i.bg, 576460752303423488
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = load i64, ptr %i.a, align 8, !range !70, !alias.scope !59206, !noalias !59207, !noundef !67
  %i.bp = icmp eq i64 %i.bg, %i.bo
  br i1 %i.bp, label %bb.r, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i, %bb.p
  %i.bq = phi ptr [ %.pre.i, %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i ], [ %i.bf, %bb.p ] ; 2 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bg ; 3 uses
  store i32 %.sink2.i.i.i.i.i, ptr %i.br, align 8, !noalias !59208
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 %i.bi, ptr %.sroa.47.0..sroa_idx.i.i.i, align 4, !noalias !59208
  %.sroa.58.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %.sink.i.i.i.i.i, ptr %.sroa.58.0..sroa_idx.i.i.i, align 8, !noalias !59208
  %i.bs = add nuw nsw i64 %i.bg, 1                ; 3 uses
  store i64 %i.bs, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !59206, !noalias !59207
  %i.bt = zext i32 %i.bl to i64                   ; 2 uses
  %i.bu = icmp ugt i64 %i.l, %i.bt
  br i1 %i.bu, label %.lr.ph.i.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBU_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1Z_5types3any5PyAnyEEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtBU_12stable_graph5EdgesB1U_NtBW_8DirectedENCNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB4Z_9PyDiGraph14insert_between0EE11spec_extendB51_.exit.i

.split17.i.i.i:                                   ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.split17.i.i.i, %.split17.us.i.i.i
  %.us-phi.i.i.i = phi ptr [ %.sink.i.i.i.i.i, %.split17.i.i.i ], [ %.sink.i.i.us.i.i.i, %.split17.us.i.i.i ]
  %.us-phi18.i.i.i = phi { ptr, i32 } [ %i.bv, %.split17.i.i.i ], [ %i.bc, %.split17.us.i.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBE_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1J_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx(ptr nonnull %.us-phi.i.i.i) #63
          to label %.body.i unwind label %bb.s, !noalias !59208

bb.r:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.bg, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i unwind label %.split17.i.i.i, !noalias !59207

._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i: ; preds = %bb.r
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !59206, !noalias !59207
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !59208
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.t, %bb.q
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bx, %bb.t ], [ %.us-phi18.i.i.i, %bb.q ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB1b_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2h_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #63
          to label %common.resume unwind label %bb.u, !noalias !59198

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBU_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1Z_5types3any5PyAnyEEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtBU_12stable_graph5EdgesB1U_NtBW_8DirectedENCNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB4Z_9PyDiGraph14insert_between0EE11spec_extendB51_.exit.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i, %.lr.ph19.i.i.i, %.split.i.i.i, %.split.us.i.i.i
  %.sroa.8.0.copyload = phi i64 [ %i.az, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.us.i.i.i ], [ 1, %.split.us.i.i.i ], [ 1, %.split.i.i.i ], [ %i.an, %.lr.ph19.i.i.i ], [ %i.bs, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBH_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1M_5types3any5PyAnyEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i ]
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !noalias !59209
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !59209
  br label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB14_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2a_5types3any5PyAnyEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB14_12stable_graph5EdgesB25_NtB16_8DirectedENCNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5l_9PyDiGraph14insert_between0EE9from_iterB5n_.exit

bb.u:                                             ; preds = %.body.i, %bb.i
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !59198
  unreachable

bb.v:                                             ; preds = %bb.k
  unreachable

common.resume:                                    ; preds = %bb.w, %bb.i, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.af, %bb.i ], [ %.pn, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB14_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2a_5types3any5PyAnyEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB14_12stable_graph5EdgesB25_NtB16_8DirectedENCNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5l_9PyDiGraph14insert_between0EE9from_iterB5n_.exit: ; preds = %bb.c, %bb.d, %bb.f, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBU_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1Z_5types3any5PyAnyEEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtBU_12stable_graph5EdgesB1U_NtBW_8DirectedENCNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB4Z_9PyDiGraph14insert_between0EE11spec_extendB51_.exit.i
  %.sroa.8.0 = phi i64 [ %.sroa.8.0.copyload, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBU_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1Z_5types3any5PyAnyEEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtBU_12stable_graph5EdgesB1U_NtBW_8DirectedENCNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB4Z_9PyDiGraph14insert_between0EE11spec_extendB51_.exit.i ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %.sroa.6.0 = phi ptr [ %.sroa.6.0.copyload, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBU_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1Z_5types3any5PyAnyEEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtBU_12stable_graph5EdgesB1U_NtBW_8DirectedENCNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB4Z_9PyDiGraph14insert_between0EE11spec_extendB51_.exit.i ], [ inttoptr (i64 8 to ptr), %bb.f ], [ inttoptr (i64 8 to ptr), %bb.d ], [ inttoptr (i64 8 to ptr), %bb.c ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBU_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1Z_5types3any5PyAnyEEEINtB2_10SpecExtendBR_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtBU_12stable_graph5EdgesB1U_NtBW_8DirectedENCNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB4Z_9PyDiGraph14insert_between0EE11spec_extendB51_.exit.i ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !59198
  %i.bz = icmp ult i64 %.sroa.8.0, 576460752303423488
  tail call void @llvm.assume(i1 %i.bz)
  %.idx = shl nuw nsw i64 %.sroa.8.0, 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.6.0, i64 %.idx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.6.0, ptr %i.f, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.0.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.ca, ptr %.sroa.7.0..sroa_idx, align 8
  %i.cb = icmp eq i64 %.sroa.8.0, 0
  br i1 %i.cb, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBZ_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBZ_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBZ_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph: ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB14_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2a_5types3any5PyAnyEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB14_12stable_graph5EdgesB25_NtB16_8DirectedENCNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5l_9PyDiGraph14insert_between0EE9from_iterB5n_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cf = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  br label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBZ_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit

bb.w:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.ab ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB1s_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2y_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #63
          to label %common.resume unwind label %bb.bh

.loopexit:                                        ; preds = %bb.bf
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cg, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.w

.loopexit.split-lp:                               ; preds = %bb.au
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBZ_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBZ_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit63
  %.sroa.6.8.77115 = phi ptr [ %.sroa.6.0, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBZ_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.lr.ph ], [ %i.cg, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit63 ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.6.8.77115, i64 16 ; 10 uses
  %.sroa.078.0.copyload = load i32, ptr %.sroa.6.8.77115, align 8, !noalias !59210 ; 2 uses
  %.sroa.679.0..sroa.6.8.77.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6.8.77115, i64 4
  %.sroa.679.0.copyload = load i32, ptr %.sroa.679.0..sroa.6.8.77.sroa_idx, align 4, !noalias !59210 ; 6 uses
  %.sroa.7.0..sroa.6.8.77.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6.8.77115, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa.6.8.77.sroa_idx, align 8, !noalias !59210 ; 14 uses
  %.not = icmp eq ptr %.sroa.7.0.copyload, null
  br i1 %.not, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBZ_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.x

bb.x:                                             ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBZ_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit
  br i1 %4, label %bb.aa, label %bb.z

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBZ_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBZ_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit63, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB14_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2a_5types3any5PyAnyEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB14_12stable_graph5EdgesB25_NtB16_8DirectedENCNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5l_9PyDiGraph14insert_between0EE9from_iterB5n_.exit
  %i.ch = phi ptr [ %.sroa.6.0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB14_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2a_5types3any5PyAnyEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB14_12stable_graph5EdgesB25_NtB16_8DirectedENCNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5l_9PyDiGraph14insert_between0EE9from_iterB5n_.exit ], [ %i.cg, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit63 ], [ %i.cg, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBZ_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit ]
  store ptr %i.ch, ptr %.sroa.5.0..sroa_idx, align 8
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB1s_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2y_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 0, ptr %0, align 8
  br label %bb.y

bb.y:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtBZ_9EdgeIndexINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread
  ret void

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @_Py_IncRef(ptr noundef nonnull %.sroa.7.0.copyload) #59
  invoke fastcc void @_RNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraph9__add_edge(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef align 8 dereferenceable(136) %1, i32 noundef %.sroa.078.0.copyload, i32 noundef %i.g, ptr noundef nonnull %.sroa.7.0.copyload)
          to label %bb.ac unwind label %bb.ab

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @_Py_IncRef(ptr noundef nonnull %.sroa.7.0.copyload) #59
  invoke fastcc void @_RNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraph9__add_edge(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.e, ptr noalias nofree noundef align 8 dereferenceable(136) %1, i32 noundef %i.h, i32 noundef %i.g, ptr noundef nonnull %.sroa.7.0.copyload)
          to label %bb.aw unwind label %bb.ab

bb.ab:                                            ; preds = %bb.bd, %bb.ay, %bb.ae, %bb.aa, %bb.z
  %i.ci = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cg, ptr %.sroa.5.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx(ptr nonnull %.sroa.7.0.copyload) #63
          to label %bb.w unwind label %bb.bh

bb.ac:                                            ; preds = %bb.z
  %i.cj = load i64, ptr %i.c, align 8, !range !68, !noundef !67
  %i.ck = trunc nuw i64 %i.cj to i1
  br i1 %i.ck, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.cg, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.042.0.copyload = load i64, ptr %i.cl, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.445.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.443.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.at

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @_Py_IncRef(ptr noundef nonnull %.sroa.7.0.copyload) #59
  invoke fastcc void @_RNvMs1_NtCskcxRuJ53GpR_9rustworkx7digraphNtB5_9PyDiGraph9__add_edge(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef align 8 dereferenceable(136) %1, i32 noundef %i.g, i32 noundef %i.h, ptr noundef nonnull %.sroa.7.0.copyload)
          to label %bb.af unwind label %bb.ab

bb.af:                                            ; preds = %bb.ae
  %i.cm = load i64, ptr %i.b, align 8, !range !68, !noundef !67
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store ptr %i.cg, ptr %.sroa.5.0..sroa_idx, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.048.0.copyload = load i64, ptr %i.co, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.451.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.449.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.at

bb.ah:                                            ; preds = %bb.af
end_hunk_1
