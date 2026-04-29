inline.NumInlined: 10
inline.NumDeleted: 6
begin_hunk_0_@A__align:bb.a
  br i1 %found.conflict578, label %.lr.ph.i324.preheader, label %vector.ph581

vector.ph581:                                     ; preds = %vector.memcheck573
  %n.vec583 = and i64 %i.n, 4294967288            ; 5 uses
  %i.iu = shl nuw nsw i64 %n.vec583, 2
  %i.iv = getelementptr i8, ptr %i.io, i64 %i.iu
  %.cast = trunc nuw i64 %n.vec583 to i32
  %i.iw = sub i32 %i.o, %.cast
  %13 = shl nuw nsw i64 %n.vec583, 2
  %i.ix = getelementptr i8, ptr %i.gw, i64 %13
  br label %vector.body584

vector.body584:                                   ; preds = %vector.body584, %vector.ph581
  %index585 = phi i64 [ 0, %vector.ph581 ], [ %index.next592, %vector.body584 ] ; 3 uses
  %offset.idx = shl i64 %index585, 2
  %next.gep = getelementptr i8, ptr %i.io, i64 %offset.idx ; 2 uses
  %offset.idx586 = shl i64 %index585, 2
  %next.gep587 = getelementptr i8, ptr %i.gw, i64 %offset.idx586 ; 3 uses
  %i.iy = getelementptr i8, ptr %next.gep, i64 16
  %wide.load588.a = load <4 x float>, ptr %next.gep, align 4, !tbaa !14, !alias.scope !73
  %wide.load589.a = load <4 x float>, ptr %i.iy, align 4, !tbaa !14, !alias.scope !73
end_hunk_0
begin_hunk_1_@A__align:bb.a
  %i.ry = zext i32 %i.ru to i64
  %i.rz = add nuw nsw i64 %i.ry, 1                ; 2 uses
  %min.iters.check724 = icmp ult i32 %i.ru, 7
  %n.vec727 = and i64 %i.rz, 8589934584           ; 5 uses
  %i.sa = shl nuw nsw i64 %n.vec727, 2
  %.cast728 = trunc i64 %n.vec727 to i32
  %i.sb = sub i32 %i.o, %.cast728
  %14 = shl nuw nsw i64 %n.vec727, 2
  %cmp.n741 = icmp eq i64 %i.rz, %n.vec727
  br label %bb.u

end_hunk_1
begin_hunk_2_@A__align:bb.a

vector.ph725:                                     ; preds = %vector.memcheck717
  %i.si = getelementptr i8, ptr %i.sh, i64 %i.sa
  %i.sj = getelementptr i8, ptr %.0284396, i64 %14
  br label %vector.body729

vector.body729:                                   ; preds = %vector.body729, %vector.ph725
  %index730 = phi i64 [ 0, %vector.ph725 ], [ %index.next739, %vector.body729 ] ; 3 uses
  %offset.idx731 = shl i64 %index730, 2
  %next.gep732 = getelementptr i8, ptr %i.sh, i64 %offset.idx731 ; 2 uses
  %offset.idx733 = shl i64 %index730, 2
  %next.gep734 = getelementptr i8, ptr %.0284396, i64 %offset.idx733 ; 3 uses
  %i.sk = getelementptr i8, ptr %next.gep732, i64 16
  %wide.load735 = load <4 x float>, ptr %next.gep732, align 4, !tbaa !14, !alias.scope !115
  %wide.load736 = load <4 x float>, ptr %i.sk, align 4, !tbaa !14, !alias.scope !115
end_hunk_2
begin_hunk_3_@A__align:bb.a

vector.ph825:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf826 = and i64 %i.ace, 28
  %n.vec827 = and i64 %i.ace, 4294967264          ; 6 uses
  %.cast828 = trunc nuw i64 %n.vec827 to i32
  %i.acg = sub i32 %i.acd, %.cast828
  %i.ach = sub nsw i64 0, %n.vec827
  %i.aci = getelementptr i8, ptr %.012639.i, i64 %i.ach ; 2 uses
  %15 = sub nsw i64 0, %n.vec827
  %i.acj = getelementptr i8, ptr %.013238.i, i64 %15 ; 2 uses
  br label %vector.body829

vector.body829:                                   ; preds = %vector.body829, %vector.ph825
  %index830 = phi i64 [ 0, %vector.ph825 ], [ %index.next835, %vector.body829 ] ; 3 uses
  %offset.idx831 = sub i64 0, %index830
  %next.gep832 = getelementptr i8, ptr %.012639.i, i64 %offset.idx831 ; 2 uses
  %offset.idx833 = sub i64 0, %index830
  %next.gep834 = getelementptr i8, ptr %.013238.i, i64 %offset.idx833 ; 2 uses
  %i.ack = getelementptr inbounds i8, ptr %next.gep834, i64 -16
  %i.acl = getelementptr inbounds i8, ptr %next.gep834, i64 -32
  store <16 x i8> splat (i8 111), ptr %i.ack, align 1, !tbaa !18
end_hunk_3
begin_hunk_4_@A__align:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec827, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec842 = and i64 %i.ace, 4294967292          ; 5 uses
  %.cast843 = trunc nuw i64 %n.vec842 to i32
  %i.acp = sub i32 %i.acd, %.cast843
  %i.acq = sub nsw i64 0, %n.vec842
  %i.acr = getelementptr i8, ptr %.012639.i, i64 %i.acq ; 2 uses
  %16 = sub nsw i64 0, %n.vec842
  %i.acs = getelementptr i8, ptr %.013238.i, i64 %16 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index844 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next847, %vec.epilog.vector.body ] ; 3 uses
  %i.act = sub i64 0, %index844
  %next.gep845 = getelementptr i8, ptr %.012639.i, i64 %i.act
  %17 = sub i64 0, %index844
  %next.gep846 = getelementptr i8, ptr %.013238.i, i64 %17
  %i.acu = getelementptr inbounds i8, ptr %next.gep846, i64 -4
  store <4 x i8> splat (i8 111), ptr %i.acu, align 1, !tbaa !18
  %i.acv = getelementptr inbounds i8, ptr %next.gep845, i64 -4
end_hunk_4
begin_hunk_5_@A__align:bb.a
  br i1 %or.cond853, label %.lr.ph29.i.preheader, label %vector.ph801

vector.ph801:                                     ; preds = %.lr.ph29.preheader.i
  %n.vec803 = and i64 %i.adz, 2147483640          ; 5 uses
  %.cast804 = trunc nuw nsw i64 %n.vec803 to i32
  %i.aeb = sub nsw i32 %i.ady, %.cast804
  %i.aec = sub nsw i64 0, %n.vec803
  %i.aed = getelementptr i8, ptr %.1127.lcssa.i, i64 %i.aec ; 2 uses
  %18 = sub nsw i64 0, %n.vec803
  %i.aee = getelementptr i8, ptr %.1133.lcssa.i, i64 %18 ; 2 uses
  %i.aef = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1141.lcssa.i, i64 0
  br label %vector.body805

vector.body805:                                   ; preds = %vector.body805, %vector.ph801
  %index806 = phi i64 [ 0, %vector.ph801 ], [ %index.next812, %vector.body805 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.aef, %vector.ph801 ], [ %i.aek, %vector.body805 ]
  %vec.phi807 = phi <4 x i32> [ zeroinitializer, %vector.ph801 ], [ %i.ael, %vector.body805 ]
  %offset.idx808 = sub i64 0, %index806
  %next.gep809 = getelementptr i8, ptr %.1127.lcssa.i, i64 %offset.idx808 ; 2 uses
  %offset.idx810 = sub i64 0, %index806
  %next.gep811 = getelementptr i8, ptr %.1133.lcssa.i, i64 %offset.idx810 ; 2 uses
  %i.aeg = getelementptr inbounds i8, ptr %next.gep811, i64 -4
  %i.aeh = getelementptr inbounds i8, ptr %next.gep811, i64 -8
  store <4 x i8> splat (i8 45), ptr %i.aeg, align 1, !tbaa !18
end_hunk_5
begin_hunk_6_@Atracking:bb.a

vector.ph30:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf31 = and i64 %i.dv, 28
  %n.vec32 = and i64 %i.dv, 4294967264            ; 6 uses
  %.cast33 = trunc nuw i64 %n.vec32 to i32
  %i.dx = sub i32 %i.du, %.cast33
  %i.dy = sub nsw i64 0, %n.vec32
  %i.dz = getelementptr i8, ptr %.011839, i64 %i.dy ; 2 uses
  %9 = sub nsw i64 0, %n.vec32
  %i.ea = getelementptr i8, ptr %.012438, i64 %9  ; 2 uses
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph30
  %index35 = phi i64 [ 0, %vector.ph30 ], [ %index.next40, %vector.body34 ] ; 3 uses
  %offset.idx36 = sub i64 0, %index35
  %next.gep37 = getelementptr i8, ptr %.011839, i64 %offset.idx36 ; 2 uses
  %offset.idx38 = sub i64 0, %index35
  %next.gep39 = getelementptr i8, ptr %.012438, i64 %offset.idx38 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %next.gep39, i64 -16
  %i.ec = getelementptr inbounds i8, ptr %next.gep39, i64 -32
  store <16 x i8> splat (i8 111), ptr %i.eb, align 1, !tbaa !18
end_hunk_6
begin_hunk_7_@Atracking:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec32, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec47 = and i64 %i.dv, 4294967292            ; 5 uses
  %.cast48 = trunc nuw i64 %n.vec47 to i32
  %i.eg = sub i32 %i.du, %.cast48
  %i.eh = sub nsw i64 0, %n.vec47
  %i.ei = getelementptr i8, ptr %.011839, i64 %i.eh ; 2 uses
  %10 = sub nsw i64 0, %n.vec47
  %i.ej = getelementptr i8, ptr %.012438, i64 %10 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 3 uses
  %i.ek = sub i64 0, %index49
  %next.gep50 = getelementptr i8, ptr %.011839, i64 %i.ek
  %11 = sub i64 0, %index49
  %next.gep51 = getelementptr i8, ptr %.012438, i64 %11
  %i.el = getelementptr inbounds i8, ptr %next.gep51, i64 -4
  store <4 x i8> splat (i8 111), ptr %i.el, align 1, !tbaa !18
  %i.em = getelementptr inbounds i8, ptr %next.gep50, i64 -4
end_hunk_7
begin_hunk_8_@Atracking:bb.a
  br i1 %or.cond58, label %.lr.ph29.preheader59, label %vector.ph9

vector.ph9:                                       ; preds = %.lr.ph29.preheader
  %n.vec11 = and i64 %i.fq, 2147483640            ; 5 uses
  %.cast = trunc nuw nsw i64 %n.vec11 to i32
  %i.fs = sub nsw i32 %i.fp, %.cast
  %i.ft = sub nsw i64 0, %n.vec11
  %i.fu = getelementptr i8, ptr %.1119.lcssa, i64 %i.ft ; 2 uses
  %12 = sub nsw i64 0, %n.vec11
  %i.fv = getelementptr i8, ptr %.1125.lcssa, i64 %12 ; 2 uses
  %i.fw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1133.lcssa, i64 0
  br label %vector.body12

vector.body12:                                    ; preds = %vector.body12, %vector.ph9
  %index13 = phi i64 [ 0, %vector.ph9 ], [ %index.next17, %vector.body12 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.fw, %vector.ph9 ], [ %i.gb, %vector.body12 ]
  %vec.phi14 = phi <4 x i32> [ zeroinitializer, %vector.ph9 ], [ %i.gc, %vector.body12 ]
  %offset.idx = sub i64 0, %index13
  %next.gep = getelementptr i8, ptr %.1119.lcssa, i64 %offset.idx ; 2 uses
  %offset.idx15 = sub i64 0, %index13
  %next.gep16 = getelementptr i8, ptr %.1125.lcssa, i64 %offset.idx15 ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %next.gep16, i64 -4
  %i.fy = getelementptr inbounds i8, ptr %next.gep16, i64 -8
  store <4 x i8> splat (i8 45), ptr %i.fx, align 1, !tbaa !18
end_hunk_8
begin_hunk_9_@A__align_gapmap:bb.a

vector.ph747:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf748 = and i64 %i.aca, 28
  %n.vec749 = and i64 %i.aca, 4294967264          ; 6 uses
  %.cast750 = trunc nuw i64 %n.vec749 to i32
  %i.acc = sub i32 %i.abz, %.cast750
  %i.acd = sub nsw i64 0, %n.vec749
  %i.ace = getelementptr i8, ptr %.012839.i, i64 %i.acd ; 2 uses
  %11 = sub nsw i64 0, %n.vec749
  %i.acf = getelementptr i8, ptr %.013438.i, i64 %11 ; 2 uses
  br label %vector.body751

vector.body751:                                   ; preds = %vector.body751, %vector.ph747
  %index752 = phi i64 [ 0, %vector.ph747 ], [ %index.next757.a, %vector.body751 ] ; 3 uses
  %offset.idx753 = sub i64 0, %index752
  %next.gep754 = getelementptr i8, ptr %.012839.i, i64 %offset.idx753 ; 2 uses
  %offset.idx755 = sub i64 0, %index752
  %next.gep756.a = getelementptr i8, ptr %.013438.i, i64 %offset.idx755 ; 2 uses
  %i.acg = getelementptr inbounds i8, ptr %next.gep756.a, i64 -16
  %i.ach = getelementptr inbounds i8, ptr %next.gep756.a, i64 -32
  store <16 x i8> splat (i8 111), ptr %i.acg, align 1, !tbaa !18
end_hunk_9
begin_hunk_10_@A__align_gapmap:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec749, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec764 = and i64 %i.aca, 4294967292          ; 5 uses
  %.cast765 = trunc nuw i64 %n.vec764 to i32
  %i.acl = sub i32 %i.abz, %.cast765
  %i.acm = sub nsw i64 0, %n.vec764
  %i.acn = getelementptr i8, ptr %.012839.i, i64 %i.acm ; 2 uses
  %12 = sub nsw i64 0, %n.vec764
  %i.aco = getelementptr i8, ptr %.013438.i, i64 %12 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index766 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next769, %vec.epilog.vector.body ] ; 3 uses
  %i.acp = sub i64 0, %index766
  %next.gep767 = getelementptr i8, ptr %.012839.i, i64 %i.acp
  %13 = sub i64 0, %index766
  %next.gep768 = getelementptr i8, ptr %.013438.i, i64 %13
  %i.acq = getelementptr inbounds i8, ptr %next.gep768, i64 -4
  store <4 x i8> splat (i8 111), ptr %i.acq, align 1, !tbaa !18
  %i.acr = getelementptr inbounds i8, ptr %next.gep767, i64 -4
end_hunk_10
begin_hunk_11_@A__align_gapmap:bb.a
  br i1 %or.cond775, label %.lr.ph29.i.preheader, label %vector.ph725

vector.ph725:                                     ; preds = %.lr.ph29.preheader.i
  %n.vec727 = and i64 %i.adv, 2147483640          ; 5 uses
  %.cast = trunc nuw nsw i64 %n.vec727 to i32
  %i.adx = sub nsw i32 %i.adu, %.cast
  %i.ady = sub nsw i64 0, %n.vec727
  %i.adz = getelementptr i8, ptr %.1129.lcssa.i, i64 %i.ady ; 2 uses
  %14 = sub nsw i64 0, %n.vec727
  %i.aea = getelementptr i8, ptr %.1135.lcssa.i, i64 %14 ; 2 uses
  %i.aeb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1143.lcssa.i, i64 0
  br label %vector.body728

vector.body728:                                   ; preds = %vector.body728, %vector.ph725
  %index729 = phi i64 [ 0, %vector.ph725 ], [ %index.next734, %vector.body728 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.aeb, %vector.ph725 ], [ %i.aeg, %vector.body728 ]
  %vec.phi730 = phi <4 x i32> [ zeroinitializer, %vector.ph725 ], [ %i.aeh, %vector.body728 ]
  %offset.idx731 = sub i64 0, %index729
  %next.gep = getelementptr i8, ptr %.1129.lcssa.i, i64 %offset.idx731 ; 2 uses
  %offset.idx732 = sub i64 0, %index729
  %next.gep733 = getelementptr i8, ptr %.1135.lcssa.i, i64 %offset.idx732 ; 2 uses
  %i.aec = getelementptr inbounds i8, ptr %next.gep733, i64 -4
  %i.aed = getelementptr inbounds i8, ptr %next.gep733, i64 -8
  store <4 x i8> splat (i8 45), ptr %i.aec, align 1, !tbaa !18
end_hunk_11
