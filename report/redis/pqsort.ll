inline.NumInlined: 11
inline.NumDeleted: 2
begin_hunk_0_@_pqsort:bb.a
  %i.g = and i64 %2, 3
  %cmp.n900 = icmp eq i64 %2, %n.vec891
  %min.iters.check837 = icmp ult i64 %2, 32
  %n.vec840 = and i64 %i.d, 2305843009213693948   ; 4 uses
  %6 = shl nuw i64 %n.vec840, 3
  %i.h = shl nuw i64 %n.vec840, 3
  %i.i = and i64 %i.d, 3
  %cmp.n853 = icmp eq i64 %i.d, %n.vec840
  %min.iters.check790 = icmp ult i64 %2, 4
end_hunk_0
begin_hunk_1_@_pqsort:bb.a
  %i.k = and i64 %2, 3
  %cmp.n826 = icmp eq i64 %2, %n.vec817
  %min.iters.check763 = icmp ult i64 %2, 32
  %n.vec766 = and i64 %i.d, 2305843009213693948   ; 4 uses
  %7 = shl nuw i64 %n.vec766, 3
  %i.l = shl nuw i64 %n.vec766, 3
  %i.m = and i64 %i.d, 3
  %cmp.n779 = icmp eq i64 %i.d, %n.vec766
  %min.iters.check714 = icmp ult i64 %2, 4
end_hunk_1
begin_hunk_2_@_pqsort:bb.a
  %i.o = and i64 %2, 3
  %cmp.n750 = icmp eq i64 %2, %n.vec741
  %min.iters.check687 = icmp ult i64 %2, 32
  %n.vec690 = and i64 %i.d, 2305843009213693948   ; 4 uses
  %8 = shl nuw i64 %n.vec690, 3
  %i.p = shl nuw i64 %n.vec690, 3
  %i.q = and i64 %i.d, 3
  %cmp.n703 = icmp eq i64 %i.d, %n.vec690
  %min.iters.check640 = icmp ult i64 %2, 4
end_hunk_2
begin_hunk_3_@_pqsort:bb.a
  %i.s = and i64 %2, 3
  %cmp.n676 = icmp eq i64 %2, %n.vec667
  %min.iters.check613 = icmp ult i64 %2, 48
  %n.vec616 = and i64 %i.d, 2305843009213693948   ; 4 uses
  %9 = shl nuw i64 %n.vec616, 3
  %i.t = shl nuw i64 %n.vec616, 3
  %i.u = and i64 %i.d, 3
  %cmp.n629 = icmp eq i64 %i.d, %n.vec616
  br label %bb.b
end_hunk_3
begin_hunk_4_@_pqsort:bb.a
  %i.ao = and i64 %2, -8                          ; 2 uses
  %i.ap = add i64 %2, %i.ao
  %min.iters.check957 = icmp ult i64 %2, 32
  %n.vec960 = and i64 %i.d, 2305843009213693948   ; 4 uses
  %10 = shl nuw i64 %n.vec960, 3
  %i.aq = shl nuw i64 %n.vec960, 3
  %i.ar = and i64 %i.d, 3
  %cmp.n973 = icmp eq i64 %i.d, %n.vec960
  br label %.preheader.us373
end_hunk_4
begin_hunk_5_@_pqsort:bb.a
  br i1 %found.conflict955, label %.preheader381.preheader977, label %vector.ph958

vector.ph958:                                     ; preds = %vector.memcheck945
  %i.be = getelementptr i8, ptr %i.bb, i64 %10
  %i.bf = getelementptr i8, ptr %.0223363.us366.us, i64 %i.aq
  br label %vector.body961

vector.body961:                                   ; preds = %vector.body961, %vector.ph958
  %index962 = phi i64 [ 0, %vector.ph958 ], [ %index.next971, %vector.body961 ] ; 3 uses
  %offset.idx963 = shl i64 %index962, 3
  %next.gep964 = getelementptr i8, ptr %i.bb, i64 %offset.idx963 ; 3 uses
  %offset.idx965 = shl i64 %index962, 3
  %next.gep966 = getelementptr i8, ptr %.0223363.us366.us, i64 %offset.idx965 ; 3 uses
  %i.bg = getelementptr i8, ptr %next.gep966, i64 16 ; 2 uses
  %wide.load967 = load <2 x i64>, ptr %next.gep966, align 8, !tbaa !15, !alias.scope !18, !noalias !21
  %wide.load968 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !15, !alias.scope !18, !noalias !21
end_hunk_5
begin_hunk_6_@_pqsort:bb.a
  br i1 %found.conflict835, label %.preheader396.preheader992, label %vector.ph838

vector.ph838:                                     ; preds = %vector.memcheck830
  %i.gf = getelementptr i8, ptr %.2227, i64 %6
  %i.gg = getelementptr i8, ptr %.0, i64 %i.h
  br label %vector.body841

vector.body841:                                   ; preds = %vector.body841, %vector.ph838
  %index842 = phi i64 [ 0, %vector.ph838 ], [ %index.next851, %vector.body841 ] ; 3 uses
  %offset.idx843 = shl i64 %index842, 3
  %next.gep844 = getelementptr i8, ptr %.2227, i64 %offset.idx843 ; 3 uses
  %offset.idx845 = shl i64 %index842, 3
  %next.gep846 = getelementptr i8, ptr %.0, i64 %offset.idx845 ; 3 uses
  %i.gh = getelementptr i8, ptr %next.gep846, i64 16 ; 2 uses
  %wide.load847 = load <2 x i64>, ptr %next.gep846, align 8, !tbaa !15, !alias.scope !43, !noalias !46
  %wide.load848 = load <2 x i64>, ptr %i.gh, align 8, !tbaa !15, !alias.scope !43, !noalias !46
end_hunk_6
begin_hunk_7_@_pqsort:bb.a
  br i1 %found.conflict761, label %.preheader386.preheader982, label %vector.ph764

vector.ph764:                                     ; preds = %vector.memcheck754
  %i.jg = getelementptr i8, ptr %.1217340, i64 %7
  %i.jh = getelementptr i8, ptr %.1342, i64 %i.l
  br label %vector.body767

vector.body767:                                   ; preds = %vector.body767, %vector.ph764
  %index768 = phi i64 [ 0, %vector.ph764 ], [ %index.next777, %vector.body767 ] ; 3 uses
  %offset.idx769 = shl i64 %index768, 3
  %next.gep770 = getelementptr i8, ptr %.1217340, i64 %offset.idx769 ; 3 uses
  %offset.idx771 = shl i64 %index768, 3
  %next.gep772 = getelementptr i8, ptr %.1342, i64 %offset.idx771 ; 3 uses
  %i.ji = getelementptr i8, ptr %next.gep772, i64 16 ; 2 uses
  %wide.load773 = load <2 x i64>, ptr %next.gep772, align 8, !tbaa !15, !alias.scope !61, !noalias !64
  %wide.load774 = load <2 x i64>, ptr %i.ji, align 8, !tbaa !15, !alias.scope !61, !noalias !64
end_hunk_7
begin_hunk_8_@_pqsort:bb.a
  br i1 %found.conflict685, label %.preheader384.preheader980, label %vector.ph688

vector.ph688:                                     ; preds = %vector.memcheck680
  %i.ma = getelementptr i8, ptr %.1221351, i64 %8
  %i.mb = getelementptr i8, ptr %.1219352, i64 %i.p
  br label %vector.body691

vector.body691:                                   ; preds = %vector.body691, %vector.ph688
  %index692 = phi i64 [ 0, %vector.ph688 ], [ %index.next701, %vector.body691 ] ; 3 uses
  %offset.idx693 = shl i64 %index692, 3
  %next.gep694 = getelementptr i8, ptr %.1221351, i64 %offset.idx693 ; 3 uses
  %offset.idx695 = shl i64 %index692, 3
  %next.gep696 = getelementptr i8, ptr %.1219352, i64 %offset.idx695 ; 3 uses
  %i.mc = getelementptr i8, ptr %next.gep696, i64 16 ; 2 uses
  %wide.load697 = load <2 x i64>, ptr %next.gep696, align 8, !tbaa !15, !alias.scope !78, !noalias !81
  %wide.load698 = load <2 x i64>, ptr %i.mc, align 8, !tbaa !15, !alias.scope !78, !noalias !81
end_hunk_8
begin_hunk_9_@_pqsort:bb.a
  br i1 %found.conflict611, label %.preheader388.preheader984, label %vector.ph614

vector.ph614:                                     ; preds = %vector.memcheck606
  %i.or = getelementptr i8, ptr %.1219352, i64 %9
  %i.os = getelementptr i8, ptr %.1217.lcssa, i64 %i.t
  br label %vector.body617

vector.body617:                                   ; preds = %vector.body617, %vector.ph614
  %index618 = phi i64 [ 0, %vector.ph614 ], [ %index.next627, %vector.body617 ] ; 3 uses
  %offset.idx619 = shl i64 %index618, 3
  %next.gep620 = getelementptr i8, ptr %.1219352, i64 %offset.idx619 ; 3 uses
  %offset.idx621 = shl i64 %index618, 3
  %next.gep622 = getelementptr i8, ptr %.1217.lcssa, i64 %offset.idx621 ; 3 uses
  %i.ot = getelementptr i8, ptr %next.gep622, i64 16 ; 2 uses
  %wide.load623 = load <2 x i64>, ptr %next.gep622, align 8, !tbaa !15, !alias.scope !96, !noalias !99
  %wide.load624 = load <2 x i64>, ptr %i.ot, align 8, !tbaa !15, !alias.scope !96, !noalias !99
end_hunk_9
begin_hunk_10_@_pqsort:bb.a
  br i1 %found.conflict538, label %scalar.ph539.preheader, label %vector.ph541

vector.ph541:                                     ; preds = %vector.memcheck533
  %n.vec543 = and i64 %i.rm, 2305843009213693948  ; 4 uses
  %i.rp = shl nuw i64 %n.vec543, 3
  %i.rq = getelementptr i8, ptr %i.qu, i64 %i.rp
  %11 = shl nuw i64 %n.vec543, 3
  %i.rr = getelementptr i8, ptr %.0, i64 %11
  %i.rs = and i64 %i.rm, 3
  br label %vector.body544

vector.body544:                                   ; preds = %vector.body544, %vector.ph541
  %index545 = phi i64 [ 0, %vector.ph541 ], [ %index.next554, %vector.body544 ] ; 3 uses
  %offset.idx546 = shl i64 %index545, 3
  %next.gep547 = getelementptr i8, ptr %i.qu, i64 %offset.idx546 ; 3 uses
  %offset.idx548 = shl i64 %index545, 3
  %next.gep549 = getelementptr i8, ptr %.0, i64 %offset.idx548 ; 3 uses
  %i.rt = getelementptr i8, ptr %next.gep549, i64 16 ; 2 uses
  %wide.load550.a = load <2 x i64>, ptr %next.gep549, align 8, !tbaa !15, !alias.scope !113, !noalias !116
  %wide.load551 = load <2 x i64>, ptr %i.rt, align 8, !tbaa !15, !alias.scope !113, !noalias !116
end_hunk_10
begin_hunk_11_@_pqsort:bb.a
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.uk, 2305843009213693948     ; 4 uses
  %i.uo = shl nuw i64 %n.vec, 3
  %i.up = getelementptr i8, ptr %i.ts, i64 %i.uo
  %12 = shl nuw i64 %n.vec, 3
  %i.uq = getelementptr i8, ptr %.1217.lcssa, i64 %12
  %i.ur = and i64 %i.uk, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ts, i64 %offset.idx ; 3 uses
  %offset.idx489 = shl i64 %index, 3
  %next.gep490 = getelementptr i8, ptr %.1217.lcssa, i64 %offset.idx489 ; 3 uses
  %i.us = getelementptr i8, ptr %next.gep490, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep490, align 8, !tbaa !15, !alias.scope !130, !noalias !133
  %wide.load491.a = load <2 x i64>, ptr %i.us, align 8, !tbaa !15, !alias.scope !130, !noalias !133
end_hunk_11
