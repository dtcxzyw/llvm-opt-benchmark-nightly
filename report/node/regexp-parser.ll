inline.NumInlined: 2670
inline.NumDeleted: 831
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE5ParseEPNS0_17RegExpCompileDataE:bb.a
  %.019.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val10.val.i.i.i.i.i, %bb.f ], [ %i.bd, %bb.h ]
  %.not5.i.i.i.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %.val10.val12.i.i.i.i.i
  br i1 %.not5.i.i.i.i.i, label %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.thread3.i.i.i.i.i, label %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.thread.i.i.i.i.i

_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.thread.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.i.i.i.i.i
  br label %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.thread3.i.i.i.i.i

_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.thread3.i.i.i.i.i: ; preds = %bb.g, %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.thread.i.i.i.i.i, %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.i.i.i.i.i
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.thread.i.i.i.i.i ], [ 16, %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.i.i.i.i.i ], [ 16, %bb.g ]
  %.19.i.i.i.i.i = phi ptr [ %.087.i.i.i.i.i, %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.thread.i.i.i.i.i ], [ %.09.i.i.i.i.i, %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.i.i.i.i.i ], [ %.09.i.i.i.i.i, %bb.g ] ; 4 uses
  %i.be = getelementptr i8, ptr %.09.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.be, align 8    ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal13RegExpCaptureESt4pairIKS3_PNS1_8ZoneListIiEEESt10_Select1stIS9_ENS1_12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, label %bb.f, !llvm.loop !10

_ZNSt8_Rb_treeIPN2v88internal13RegExpCaptureESt4pairIKS3_PNS1_8ZoneListIiEEESt10_Select1stIS9_ENS1_12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i: ; preds = %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.thread3.i.i.i.i.i
  %i.bf = icmp eq ptr %.19.i.i.i.i.i, %i.ah
  br i1 %i.bf, label %_ZNSt3mapIPN2v88internal13RegExpCaptureEPNS1_8ZoneListIiEENS1_12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessENS1_13ZoneAllocatorISt4pairIKS3_S6_EEEE4findERSD_.exit.thread.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt8_Rb_treeIPN2v88internal13RegExpCaptureESt4pairIKS3_PNS1_8ZoneListIiEEESt10_Select1stIS9_ENS1_12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr i8, ptr %i.bh, i64 32
  %.val4.i.i.i.i = load ptr, ptr %i.bi, align 8   ; 2 uses
  %i.bj = getelementptr i8, ptr %.val4.i.i.i.i, i64 8
  %.val4.val.i.i.i.i = load ptr, ptr %i.bj, align 8 ; 3 uses
  %i.bk = getelementptr i8, ptr %.val4.i.i.i.i, i64 16
  %.val4.val6.i.i.i.i = load ptr, ptr %i.bk, align 8 ; 2 uses
  %i.bl = ptrtoint ptr %.val4.val6.i.i.i.i to i64
  %i.bm = ptrtoint ptr %.val4.val.i.i.i.i to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = icmp slt i64 %i.bn, %i.am
  %i.bp = getelementptr inbounds i8, ptr %.val10.val.i.i.i.i.i, i64 %i.bn
  %i.bq = select i1 %i.bo, ptr %i.bp, ptr %.val10.val12.i.i.i.i.i ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val10.val.i.i.i.i.i, %i.bq
  br i1 %.not22.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.i, %bb.k
  %.01924.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bw, %bb.k ], [ %.val4.val.i.i.i.i, %bb.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bv, %bb.k ], [ %.val10.val.i.i.i.i.i, %bb.i ] ; 2 uses
  %i.br = load i16, ptr %.02023.i.i.i.i.i.i.i.i.i.i.i, align 2 ; 2 uses
  %i.bs = load i16, ptr %.01924.i.i.i.i.i.i.i.i.i.i.i, align 2 ; 2 uses
  %i.bt = icmp ult i16 %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt3mapIPN2v88internal13RegExpCaptureEPNS1_8ZoneListIiEENS1_12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessENS1_13ZoneAllocatorISt4pairIKS3_S6_EEEE4findERSD_.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.bu = icmp ult i16 %i.bs, %i.br
  br i1 %i.bu, label %_ZNSt3mapIPN2v88internal13RegExpCaptureEPNS1_8ZoneListIiEENS1_12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessENS1_13ZoneAllocatorISt4pairIKS3_S6_EEEE4findERSD_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bv, %i.bq
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !8

_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.i.i.i.i: ; preds = %bb.k, %bb.i
  %.019.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val4.val.i.i.i.i, %bb.i ], [ %i.bw, %bb.k ]
  %.not.i.i19.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i.i.i.i, %.val4.val6.i.i.i.i
  br i1 %.not.i.i19.i.i, label %_ZNSt3mapIPN2v88internal13RegExpCaptureEPNS1_8ZoneListIiEENS1_12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessENS1_13ZoneAllocatorISt4pairIKS3_S6_EEEE4findERSD_.exit.i.i, label %_ZNSt3mapIPN2v88internal13RegExpCaptureEPNS1_8ZoneListIiEENS1_12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessENS1_13ZoneAllocatorISt4pairIKS3_S6_EEEE4findERSD_.exit.thread.i.i

_ZNSt3mapIPN2v88internal13RegExpCaptureEPNS1_8ZoneListIiEENS1_12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessENS1_13ZoneAllocatorISt4pairIKS3_S6_EEEE4findERSD_.exit.thread.i.i: ; preds = %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.i.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal13RegExpCaptureESt4pairIKS3_PNS1_8ZoneListIiEEESt10_Select1stIS9_ENS1_12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessENS1_13ZoneAllocatorIS9_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i.i, %_ZN2v88internal4Zone3NewINS0_13RegExpCaptureEJRKiEEEPT_DpOT0_.exit.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = load i8, ptr %i.b, align 1, !range !5, !noundef !6
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE12ParsePatternEv.exit, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit.sink.split.i.i

_ZNSt3mapIPN2v88internal13RegExpCaptureEPNS1_8ZoneListIiEENS1_12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessENS1_13ZoneAllocatorISt4pairIKS3_S6_EEEE4findERSD_.exit.i.i: ; preds = %bb.j, %_ZNK2v88internal12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessclEPKNS0_13RegExpCaptureES7_.exit.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.cd = load i32, ptr %i.cc, align 4            ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %.idx.i.i = shl nsw i64 %i.ce, 2
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 %.idx.i.i
  %.not31.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not31.i.i, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit25.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3mapIPN2v88internal13RegExpCaptureEPNS1_8ZoneListIiEENS1_12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessENS1_13ZoneAllocatorISt4pairIKS3_S6_EEEE4findERSD_.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 20 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal19RegExpBackReference11add_captureEPNS0_13RegExpCaptureEPNS0_4ZoneE.exit.i.i, %.lr.ph.i.i
  %.01632.i.i = phi ptr [ %i.cb, %.lr.ph.i.i ], [ %i.dn, %_ZN2v88internal19RegExpBackReference11add_captureEPNS0_13RegExpCaptureEPNS0_4ZoneE.exit.i.i ] ; 2 uses
  %i.cj = load i32, ptr %.01632.i.i, align 4
  %i.ck = tail call fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE10GetCaptureEi(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %i.cj)
  %.val.i.i = load ptr, ptr %i.n, align 8         ; 3 uses
  %i.cl = load i32, ptr %i.ch, align 4            ; 2 uses
  %i.cm = load i32, ptr %i.ci, align 8            ; 3 uses
  %i.cn = icmp slt i32 %i.cl, %i.cm
  br i1 %i.cn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.co = load ptr, ptr %i.cg, align 8
  br label %_ZN2v88internal19RegExpBackReference11add_captureEPNS0_13RegExpCaptureEPNS0_4ZoneE.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.cp = shl nsw i32 %i.cm, 1
  %i.cq = or disjoint i32 %i.cp, 1                ; 2 uses
  %i.cr = icmp sgt i32 %i.cm, -1
  br i1 %i.cr, label %bb.p, label %bb.o, !prof !11

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cs = zext nneg i32 %i.cq to i64
  %i.ct = shl nuw nsw i64 %i.cs, 3                ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.cx = load i64, ptr %i.cw, align 8            ; 2 uses
  %i.cy = sub i64 %i.cv, %i.cx
  %i.cz = icmp ugt i64 %i.ct, %i.cy
  br i1 %i.cz, label %bb.q, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_13RegExpCaptureEA_S4_EEPT_m.exit.i.i.i.i.i.i.i, !prof !7

bb.q:                                             ; preds = %bb.p
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val.i.i, i64 noundef %i.ct) #19
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cw, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_13RegExpCaptureEA_S4_EEPT_m.exit.i.i.i.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayIPNS0_13RegExpCaptureEA_S4_EEPT_m.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %i.da = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %bb.q ], [ %i.cx, %bb.p ] ; 2 uses
  %i.db = inttoptr i64 %i.da to ptr               ; 5 uses
  %i.dc = add i64 %i.da, %i.ct
  store i64 %i.dc, ptr %i.cw, align 8
  %i.dd = load i32, ptr %i.ch, align 4            ; 3 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %bb.r, label %_ZN2v88internal8ZoneListIPNS0_13RegExpCaptureEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i.i.i.i

bb.r:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_13RegExpCaptureEA_S4_EEPT_m.exit.i.i.i.i.i.i.i
  %i.df = load ptr, ptr %i.cg, align 8            ; 3 uses
  switch i32 %i.dd, label %bb.u [
    i32 2, label %bb.t
    i32 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.dg = load i64, ptr %i.df, align 1
  store i64 %i.dg, ptr %i.db, align 1
  br label %_ZN2v88internal8ZoneListIPNS0_13RegExpCaptureEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.db, ptr noundef nonnull align 1 dereferenceable(16) %i.df, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_13RegExpCaptureEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i.i.i.i

bb.u:                                             ; preds = %bb.r
  %i.dh = zext nneg i32 %i.dd to i64
  %i.di = shl nuw nsw i64 %i.dh, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %i.df, i64 %i.di, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_13RegExpCaptureEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i.i.i.i

_ZN2v88internal8ZoneListIPNS0_13RegExpCaptureEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i.i.i.i: ; preds = %bb.u, %bb.t, %bb.s, %_ZN2v88internal4Zone13AllocateArrayIPNS0_13RegExpCaptureEA_S4_EEPT_m.exit.i.i.i.i.i.i.i
  store ptr %i.db, ptr %i.cg, align 8
  store i32 %i.cq, ptr %i.ci, align 8
  %i.dj = load i32, ptr %i.ch, align 4
  br label %_ZN2v88internal19RegExpBackReference11add_captureEPNS0_13RegExpCaptureEPNS0_4ZoneE.exit.i.i

_ZN2v88internal19RegExpBackReference11add_captureEPNS0_13RegExpCaptureEPNS0_4ZoneE.exit.i.i: ; preds = %_ZN2v88internal8ZoneListIPNS0_13RegExpCaptureEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i.i.i.i, %bb.m
  %.sink12.i.i.i.i = phi i32 [ %i.dj, %_ZN2v88internal8ZoneListIPNS0_13RegExpCaptureEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i.i.i.i ], [ %i.cl, %bb.m ] ; 2 uses
  %.sink8.i.i.i.i = phi ptr [ %i.db, %_ZN2v88internal8ZoneListIPNS0_13RegExpCaptureEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i.i.i.i ], [ %i.co, %bb.m ]
  %i.dk = add nsw i32 %.sink12.i.i.i.i, 1
  store i32 %i.dk, ptr %i.ch, align 4
  %i.dl = sext i32 %.sink12.i.i.i.i to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %.sink8.i.i.i.i, i64 %i.dl
  store ptr %i.ck, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %.01632.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dn, %i.cf
  br i1 %.not.i.i, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit25.i.i, label %bb.l

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit25.i.i: ; preds = %_ZN2v88internal19RegExpBackReference11add_captureEPNS0_13RegExpCaptureEPNS0_4ZoneE.exit.i.i, %_ZNSt3mapIPN2v88internal13RegExpCaptureEPNS1_8ZoneListIiEENS1_12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessENS1_13ZoneAllocatorISt4pairIKS3_S6_EEEE4findERSD_.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.do = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp slt i64 %indvars.iv.next.i.i, %i.dr
  br i1 %i.ds, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE24PatchNamedBackReferencesEv.exit.i, !llvm.loop !12

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit.sink.split.i.i: ; preds = %_ZNSt3mapIPN2v88internal13RegExpCaptureEPNS1_8ZoneListIiEENS1_12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessENS1_13ZoneAllocatorISt4pairIKS3_S6_EEEE4findERSD_.exit.thread.i.i, %bb.c
  store i8 1, ptr %i.b, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 25, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %.val2.i20.i.i = load i32, ptr %i.du, align 4   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val3.i21.i.i = load i32, ptr %i.dv, align 8
  %.not.i.i22.i.i = icmp eq i32 %.val2.i20.i.i, 2097152
  %i.dw = icmp ult i32 %.val2.i20.i.i, 65536
  %i.dx = or i1 %.not.i.i22.i.i, %i.dw
  %.neg2.i.i23.i.i = select i1 %i.dx, i32 -1, i32 -2
  %i.dy = add i32 %.neg2.i.i23.i.i, %.val3.i21.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.dy, ptr %i.dz, align 4
  store i32 2097152, ptr %i.du, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i24.i.i = load i32, ptr %i.ea, align 8
  store i32 %.val.i24.i.i, ptr %i.dv, align 8
  br label %bb.x

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE24PatchNamedBackReferencesEv.exit.i: ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit25.i.i
  %.pre.i = load i8, ptr %i.b, align 1, !range !5
  %i.eb = trunc nuw i8 %.pre.i to i1
  br i1 %i.eb, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE12ParsePatternEv.exit, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE24PatchNamedBackReferencesEv.exit.thread25.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE24PatchNamedBackReferencesEv.exit.thread25.i: ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE24PatchNamedBackReferencesEv.exit.i, %.preheader.i.i, %bb.b
  %i.ec = load ptr, ptr %i.a, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 192
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = tail call noundef zeroext i1 %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19, !inline_history !13
  br i1 %i.ef, label %bb.v, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE12ParsePatternEv.exit

bb.v:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE24PatchNamedBackReferencesEv.exit.thread25.i
  %i.eg = load ptr, ptr %i.a, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 184
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = tail call noundef ptr %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19, !inline_history !13
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load i64, ptr %i.ek, align 8            ; 2 uses
  %i.em = icmp ult i64 %i.el, 2147483648
  br i1 %i.em, label %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i, label %bb.w, !prof !11

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #20
  unreachable

_ZNK2v88internal10RegExpAtom6lengthEv.exit.i:     ; preds = %bb.v
  %i.en = trunc nuw nsw i64 %i.el to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i = load i32, ptr %i.eo, align 8
  %i.ep = icmp eq i32 %.val.i, %i.en
  br i1 %i.ep, label %bb.x, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE12ParsePatternEv.exit

bb.x:                                             ; preds = %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit.sink.split.i.i
  %.sink29.i = phi i64 [ 92, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit.sink.split.i.i ], [ 93, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i ]
  %.sink.i = phi i8 [ 0, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit.sink.split.i.i ], [ 1, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i ]
  %.0.ph.i = phi ptr [ null, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE11ReportErrorENS0_11RegExpErrorE.exit.sink.split.i.i ], [ %i.a, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 %.sink29.i
  store i8 %.sink.i, ptr %i.eq, align 1
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE12ParsePatternEv.exit

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE12ParsePatternEv.exit: ; preds = %bb.a, %_ZNSt3mapIPN2v88internal13RegExpCaptureEPNS1_8ZoneListIiEENS1_12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessENS1_13ZoneAllocatorISt4pairIKS3_S6_EEEE4findERSD_.exit.thread.i.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE24PatchNamedBackReferencesEv.exit.i, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE24PatchNamedBackReferencesEv.exit.thread25.i, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i, %bb.x
  %.0.i = phi ptr [ null, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE24PatchNamedBackReferencesEv.exit.i ], [ null, %bb.a ], [ null, %_ZNSt3mapIPN2v88internal13RegExpCaptureEPNS1_8ZoneListIiEENS1_12_GLOBAL__N_116RegExpParserImplIhE21RegExpCaptureNameLessENS1_13ZoneAllocatorISt4pairIKS3_S6_EEEE4findERSD_.exit.thread.i.i ], [ %i.a, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i ], [ %i.a, %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE24PatchNamedBackReferencesEv.exit.thread25.i ], [ %.0.ph.i, %bb.x ] ; 4 uses
  %.val13 = load i8, ptr %i.b, align 1, !range !5, !noundef !6
  %i.er = trunc nuw i8 %.val13 to i1              ; 2 uses
  br i1 %i.er, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE12ParsePatternEv.exit
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.et = load i32, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.et, ptr %i.eu, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 %i.ew, ptr %i.ex, align 4
  br label %bb.ak

bb.z:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE12ParsePatternEv.exit
  %i.ey = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1606), align 2, !range !5, !noundef !6
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 6 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.fa) #19
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 304
  store ptr null, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 312
  store i8 0, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 313
  store i8 0, ptr %i.fd, align 1
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fe, i8 0, i64 32, i1 false)
  %i.ff = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.ff) #19
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %2, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.fa, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.fh = call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #19 ; 2 uses
  store ptr %i.fh, ptr %i.fg, align 8
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fh) #19
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.fi, align 8
  %i.fj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal10RegExpTree5PrintERSoPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %.val) #19 ; 0 uses
  %i.fk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i64 noundef 1) #19 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %2, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.fa, align 8
  %i.fl = load ptr, ptr %i.fg, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #19, !inline_history !14
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %bb.aa, %bb.ab
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %2, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.fa, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fn) #19, !inline_history !14
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.fa) #19, !inline_history !14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN2v88internal12StdoutStreamD1Ev.exit, %bb.z
  store ptr %.0.i, ptr %1, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.val14 = load i32, ptr %i.fo, align 4          ; 2 uses
  %i.fp = load ptr, ptr %.0.i, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 192
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = call noundef zeroext i1 %i.fr(ptr noundef nonnull align 8 dereferenceable(8) %.0.i) #19
  br i1 %i.fs, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 93
  %.val15 = load i8, ptr %i.ft, align 1, !range !5, !noundef !6
  %i.fu = trunc nuw i8 %.val15 to i1
  br i1 %i.fu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fv = icmp eq i32 %.val14, 0
  %i.fw = zext i1 %i.fv to i8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.fx = phi i8 [ 0, %bb.ad ], [ 0, %bb.ac ], [ %i.fw, %bb.ae ]
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 %i.fx, ptr %i.fy, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 94
  %.val16 = load i8, ptr %i.fz, align 2, !range !5, !noundef !6
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 %.val16, ptr %i.ga, align 1
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %.val14, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE16GetNamedCapturesEv.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val13.i = load ptr, ptr %i.gf, align 8        ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.val13.i, i64 24
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %.val13.i, i64 16 ; 3 uses
  %i.gj = load i64, ptr %i.gi, align 8            ; 2 uses
  %i.gk = sub i64 %i.gh, %i.gj
  %i.gl = icmp ult i64 %i.gk, 32
  br i1 %i.gl, label %bb.ah, label %_ZN2v88internal4Zone3NewINS0_10ZoneVectorIPNS0_13RegExpCaptureEEEJPS1_EEEPT_DpOT0_.exit.i, !prof !7

bb.ah:                                            ; preds = %bb.ag
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %.val13.i, i64 noundef 32) #19
  %.pre.i.i.i = load i64, ptr %i.gi, align 8
  br label %_ZN2v88internal4Zone3NewINS0_10ZoneVectorIPNS0_13RegExpCaptureEEEJPS1_EEEPT_DpOT0_.exit.i

_ZN2v88internal4Zone3NewINS0_10ZoneVectorIPNS0_13RegExpCaptureEEEJPS1_EEEPT_DpOT0_.exit.i: ; preds = %bb.ah, %bb.ag
  %i.gm = phi i64 [ %.pre.i.i.i, %bb.ah ], [ %i.gj, %bb.ag ] ; 2 uses
  %i.gn = inttoptr i64 %i.gm to ptr               ; 7 uses
  %i.go = add i64 %i.gm, 32
  store i64 %i.go, ptr %i.gi, align 8
  store ptr %.val13.i, ptr %i.gn, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gp, i8 0, i64 24, i1 false)
  %i.gq = load ptr, ptr %i.gc, align 8            ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 32
  %.val14.i = load ptr, ptr %i.gr, align 8        ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %i.gt = icmp eq ptr %.val14.i, %i.gs
  br i1 %i.gt, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE16GetNamedCapturesEv.exit, label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %_ZN2v88internal4Zone3NewINS0_10ZoneVectorIPNS0_13RegExpCaptureEEEJPS1_EEEPT_DpOT0_.exit.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i, %.lr.ph23.i
  %.sroa.016.022.i = phi ptr [ %.val14.i, %.lr.ph23.i ], [ %i.hb, %._crit_edge.i ] ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.016.022.i, i64 40
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8 ; 2 uses
  %i.gw = load ptr, ptr %.sroa.3.0.copyload.i, align 8 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i, i64 12
  %i.gy = load i32, ptr %i.gx, align 4            ; 2 uses
  %i.gz = sext i32 %i.gy to i64
  %.idx.i = shl nsw i64 %i.gz, 2
  %i.ha = getelementptr inbounds i8, ptr %i.gw, i64 %.idx.i
  %.not20.i = icmp eq i32 %i.gy, 0
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN2v88internal10ZoneVectorIPNS0_13RegExpCaptureEE9push_backEOS3_.exit.i, %bb.ai
  %i.hb = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.016.022.i) #21 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.gs
  br i1 %i.hc, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE16GetNamedCapturesEv.exit, label %bb.ai

.lr.ph.i:                                         ; preds = %bb.ai, %_ZN2v88internal10ZoneVectorIPNS0_13RegExpCaptureEE9push_backEOS3_.exit.i
  %.01221.i = phi ptr [ %i.hq, %_ZN2v88internal10ZoneVectorIPNS0_13RegExpCaptureEE9push_backEOS3_.exit.i ], [ %i.gw, %bb.ai ] ; 2 uses
  %i.hd = load i32, ptr %.01221.i, align 4
  %i.he = call fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE10GetCaptureEi(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %i.hd)
  %i.hf = load ptr, ptr %i.gu, align 8            ; 2 uses
  %i.hg = load ptr, ptr %i.gv, align 8            ; 2 uses
  %i.hh = icmp ult ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZN2v88internal10ZoneVectorIPNS0_13RegExpCaptureEE9push_backEOS3_.exit.i, label %bb.aj, !prof !11

bb.aj:                                            ; preds = %.lr.ph.i
  %i.hi = load ptr, ptr %i.gp, align 8
  %i.hj = ptrtoint ptr %i.hg to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = ashr exact i64 %i.hl, 3
  %i.hn = add nsw i64 %i.hm, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_13RegExpCaptureEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.gn, i64 noundef %i.hn)
  %.pre.i.i15.i = load ptr, ptr %i.gu, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_13RegExpCaptureEE9push_backEOS3_.exit.i

_ZN2v88internal10ZoneVectorIPNS0_13RegExpCaptureEE9push_backEOS3_.exit.i: ; preds = %bb.aj, %.lr.ph.i
  %i.ho = phi ptr [ %i.hf, %.lr.ph.i ], [ %.pre.i.i15.i, %bb.aj ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store ptr %i.hp, ptr %i.gu, align 8
  store ptr %i.he, ptr %i.ho, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %.01221.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.hq, %i.ha
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE16GetNamedCapturesEv.exit: ; preds = %._crit_edge.i, %bb.af, %_ZN2v88internal4Zone3NewINS0_10ZoneVectorIPNS0_13RegExpCaptureEEEJPS1_EEEPT_DpOT0_.exit.i
  %.0.i17 = phi ptr [ null, %bb.af ], [ %i.gn, %_ZN2v88internal4Zone3NewINS0_10ZoneVectorIPNS0_13RegExpCaptureEEEJPS1_EEEPT_DpOT0_.exit.i ], [ %i.gn, %._crit_edge.i ]
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %.0.i17, ptr %i.hr, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE16GetNamedCapturesEv.exit, %bb.y
  %.0 = xor i1 %i.er, true
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
