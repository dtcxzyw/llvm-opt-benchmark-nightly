Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BinaryContext?download=true
inline.NumInlined: 12267
inline.NumDeleted: 6290
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4llvm4bolt13BinaryContext19updateObjectNestingESt17_Rb_tree_iteratorISt4pairIKmPNS0_10BinaryDataEEE:bb.a
bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 100
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !656
  %i.ba = load i32, ptr %i.u, align 4, !tbaa !656
  %i.bb = icmp eq i32 %i.az, %i.ba
  br i1 %i.bb, label %_ZNK4llvm4bolt13BinarySectioneqERKS1_.exit, label %_ZNK4llvm4bolt13BinarySectioneqERKS1_.exit.thread

_ZNK4llvm4bolt13BinarySectioneqERKS1_.exit:       ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !657
  %i.be = load i32, ptr %i.v, align 8, !tbaa !657
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.h, label %_ZNK4llvm4bolt13BinarySectioneqERKS1_.exit.thread

bb.h:                                             ; preds = %_ZNK4llvm4bolt13BinarySectioneqERKS1_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.055, i64 48
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !658 ; 4 uses
  %.not.i.i = icmp ugt i64 %i.bh, %i.e
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %.055, i64 56
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !659 ; 2 uses
  %i.bk = add i64 %i.bj, %i.bh
  %i.bl = icmp ult i64 %i.e, %i.bk
  br i1 %i.bl, label %_ZNK4llvm4bolt10BinaryData13containsRangeEmm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bm = icmp eq i64 %i.bh, %i.e
  br i1 %i.bm, label %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.i, label %_ZNK4llvm4bolt13BinarySectioneqERKS1_.exit.thread

_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.i: ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.055, i64 56
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !659
  %.not3.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not3.i.i, label %_ZNK4llvm4bolt10BinaryData13containsRangeEmm.exit, label %_ZNK4llvm4bolt13BinarySectioneqERKS1_.exit.thread

_ZNK4llvm4bolt10BinaryData13containsRangeEmm.exit: ; preds = %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.i, %bb.i
  %i.bp = phi i64 [ %i.bj, %bb.i ], [ 0, %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.i ]
  %i.bq = add i64 %i.bp, %i.bh
  %.not48 = icmp ugt i64 %i.w, %i.bq
  br i1 %.not48, label %_ZNK4llvm4bolt13BinarySectioneqERKS1_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm4bolt10BinaryData13containsRangeEmm.exit
  %i.br = load ptr, ptr %i.z, align 8, !tbaa !660
  %.fr11.i = freeze ptr %i.br                     ; 2 uses
  store ptr %.055, ptr %i.z, align 8, !tbaa !660
  %i.bs = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull readonly %1) #35 ; 2 uses
  %i.bt = icmp ne ptr %.fr11.i, null
  %i.bu = icmp ne ptr %i.bs, %i.x
  %or.cond8.i = and i1 %i.bt, %i.bu
  br i1 %or.cond8.i, label %.lr.ph.split.i, label %"_ZZN4llvm4bolt13BinaryContext19updateObjectNestingESt17_Rb_tree_iteratorISt4pairIKmPNS0_10BinaryDataEEEENK3$_0clES8_S6_.exit"

.lr.ph.split.i:                                   ; preds = %bb.k, %bb.l
  %.sroa.01.09.i = phi ptr [ %i.ca, %bb.l ], [ %i.bs, %bb.k ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.01.09.i, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !464
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !660
  %i.bz = icmp eq ptr %i.by, %.fr11.i
  br i1 %i.bz, label %bb.l, label %"_ZZN4llvm4bolt13BinaryContext19updateObjectNestingESt17_Rb_tree_iteratorISt4pairIKmPNS0_10BinaryDataEEEENK3$_0clES8_S6_.exit"

bb.l:                                             ; preds = %.lr.ph.split.i
  store ptr %.055, ptr %i.bx, align 8, !tbaa !660
  %i.ca = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.09.i) #35 ; 2 uses
  %.not.i17 = icmp eq ptr %i.ca, %i.x
  br i1 %.not.i17, label %"_ZZN4llvm4bolt13BinaryContext19updateObjectNestingESt17_Rb_tree_iteratorISt4pairIKmPNS0_10BinaryDataEEEENK3$_0clES8_S6_.exit", label %.lr.ph.split.i, !llvm.loop !1408

_ZNK4llvm4bolt13BinarySectioneqERKS1_.exit.thread: ; preds = %bb.j, %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.i, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %bb.d, %bb.e, %bb.f, %bb.g, %_ZNK4llvm4bolt10BinaryData13containsRangeEmm.exit, %_ZNK4llvm4bolt13BinarySectioneqERKS1_.exit
  %i.cb = load ptr, ptr %i.aa, align 8, !tbaa !660
  %.fr11.i18 = freeze ptr %i.cb                   ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !660
  %i.cc = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull readonly %1) #35 ; 2 uses
  %i.cd = icmp ne ptr %.fr11.i18, null
  %i.ce = icmp ne ptr %i.cc, %i.x
  %or.cond8.i19 = and i1 %i.cd, %i.ce
  br i1 %or.cond8.i19, label %.lr.ph.split.i20, label %"_ZZN4llvm4bolt13BinaryContext19updateObjectNestingESt17_Rb_tree_iteratorISt4pairIKmPNS0_10BinaryDataEEEENK3$_0clES8_S6_.exit"

.lr.ph.split.i20:                                 ; preds = %_ZNK4llvm4bolt13BinarySectioneqERKS1_.exit.thread, %bb.m
  %.sroa.01.09.i21 = phi ptr [ %i.ck, %bb.m ], [ %i.cc, %_ZNK4llvm4bolt13BinarySectioneqERKS1_.exit.thread ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.01.09.i21, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !464
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !660
  %i.cj = icmp eq ptr %i.ci, %.fr11.i18
  br i1 %i.cj, label %bb.m, label %"_ZZN4llvm4bolt13BinaryContext19updateObjectNestingESt17_Rb_tree_iteratorISt4pairIKmPNS0_10BinaryDataEEEENK3$_0clES8_S6_.exit"

bb.m:                                             ; preds = %.lr.ph.split.i20
  store ptr null, ptr %i.ch, align 8, !tbaa !660
  %i.ck = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.09.i21) #35 ; 2 uses
  %.not.i22 = icmp eq ptr %i.ck, %i.x
  br i1 %.not.i22, label %"_ZZN4llvm4bolt13BinaryContext19updateObjectNestingESt17_Rb_tree_iteratorISt4pairIKmPNS0_10BinaryDataEEEENK3$_0clES8_S6_.exit", label %.lr.ph.split.i20, !llvm.loop !1408

"_ZZN4llvm4bolt13BinaryContext19updateObjectNestingESt17_Rb_tree_iteratorISt4pairIKmPNS0_10BinaryDataEEEENK3$_0clES8_S6_.exit": ; preds = %bb.l, %.lr.ph.split.i, %bb.m, %.lr.ph.split.i20, %_ZNK4llvm4bolt13BinarySectioneqERKS1_.exit.thread, %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %.0 = load ptr, ptr %i.cl, align 8, !tbaa !670  ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !1409

.loopexit:                                        ; preds = %"_ZZN4llvm4bolt13BinaryContext19updateObjectNestingESt17_Rb_tree_iteratorISt4pairIKmPNS0_10BinaryDataEEEENK3$_0clES8_S6_.exit", %.lr.ph.i.preheader, %bb.a
  %.not13 = icmp eq i64 %i.g, 0
  br i1 %.not13, label %.critedge, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmPN4llvm4bolt10BinaryDataEEElEvRT_T0_St26bidirectional_iterator_tag.exit24.preheader

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmPN4llvm4bolt10BinaryDataEEElEvRT_T0_St26bidirectional_iterator_tag.exit24.preheader: ; preds = %.loopexit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !660
  %.not14 = icmp eq ptr %i.cn, null
  %spec.select = select i1 %.not14, ptr %i.a, ptr %i.c
  %.in = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.co = load ptr, ptr %.in, align 8, !tbaa !670 ; 3 uses
  %i.cp = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %1) #35 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 56 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %.not4956 = icmp eq ptr %i.cp, %i.cr
  br i1 %.not4956, label %.critedge, label %.lr.ph58

.lr.ph58:                                         ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmPN4llvm4bolt10BinaryDataEEElEvRT_T0_St26bidirectional_iterator_tag.exit24.preheader
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !658 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph58, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmPN4llvm4bolt10BinaryDataEEElEvRT_T0_St26bidirectional_iterator_tag.exit24
  %.sroa.030.057 = phi ptr [ %i.cp, %.lr.ph58 ], [ %i.dj, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmPN4llvm4bolt10BinaryDataEEElEvRT_T0_St26bidirectional_iterator_tag.exit24 ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.030.057, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !464 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !658 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !659
  %.not.i.i25 = icmp ugt i64 %i.ct, %i.cx
  br i1 %.not.i.i25, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.da = load i64, ptr %i.cq, align 8, !tbaa !659 ; 2 uses
  %i.db = add i64 %i.da, %i.ct
  %i.dc = icmp ult i64 %i.cx, %i.db
  br i1 %i.dc, label %_ZNK4llvm4bolt10BinaryData13containsRangeEmm.exit29, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dd = icmp eq i64 %i.ct, %i.cx
  br i1 %i.dd, label %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.i26, label %.critedge

_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.i26: ; preds = %bb.p
  %i.de = load i64, ptr %i.cq, align 8, !tbaa !659
  %.not3.i.i27 = icmp eq i64 %i.de, 0
  br i1 %.not3.i.i27, label %_ZNK4llvm4bolt10BinaryData13containsRangeEmm.exit29, label %.critedge

_ZNK4llvm4bolt10BinaryData13containsRangeEmm.exit29: ; preds = %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.i26, %bb.o
  %i.df = phi i64 [ %i.da, %bb.o ], [ 0, %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.i26 ]
  %i.dg = add i64 %i.cz, %i.cx
  %i.dh = add i64 %i.df, %i.ct
  %.not50 = icmp ugt i64 %i.dg, %i.dh
  br i1 %.not50, label %.critedge, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmPN4llvm4bolt10BinaryDataEEElEvRT_T0_St26bidirectional_iterator_tag.exit24

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmPN4llvm4bolt10BinaryDataEEElEvRT_T0_St26bidirectional_iterator_tag.exit24: ; preds = %_ZNK4llvm4bolt10BinaryData13containsRangeEmm.exit29
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.co, ptr %i.di, align 8, !tbaa !660
  %i.dj = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.030.057) #35 ; 2 uses
  %.not49 = icmp eq ptr %i.dj, %i.cr
  br i1 %.not49, label %.critedge, label %bb.n, !llvm.loop !1410

.critedge:                                        ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmPN4llvm4bolt10BinaryDataEEElEvRT_T0_St26bidirectional_iterator_tag.exit24, %_ZNK4llvm4bolt10BinaryData13containsRangeEmm.exit29, %_ZNK4llvm4bolt10BinaryData15containsAddressEm.exit.i26, %bb.p, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmPN4llvm4bolt10BinaryDataEEElEvRT_T0_St26bidirectional_iterator_tag.exit24.preheader, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local { ptr, ptr } @_ZN4llvm4bolt13BinaryContext16getSubBinaryDataEPNS0_10BinaryDataE(ptr noundef nonnull align 8 dereferenceable(2268) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !658  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !373  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 7 uses
  %.not10.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapImPN4llvm4bolt10BinaryDataESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !396
  %i.h = icmp ult i64 %i.g, %i.b                  ; 2 uses
  %.19.i.i.i = select i1 %i.h, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.h, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !668 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmPN4llvm4bolt10BinaryDataEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !26

_ZNSt8_Rb_treeImSt4pairIKmPN4llvm4bolt10BinaryDataEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = icmp eq ptr %.19.i.i.i, %i.e
  br i1 %i.i, label %_ZNSt3mapImPN4llvm4bolt10BinaryDataESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt8_Rb_treeImSt4pairIKmPN4llvm4bolt10BinaryDataEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !396
  %i.l = icmp ult i64 %i.b, %i.k
  %spec.select.i.i = select i1 %i.l, ptr %i.e, ptr %.19.i.i.i
  br label %_ZNSt3mapImPN4llvm4bolt10BinaryDataESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit

_ZNSt3mapImPN4llvm4bolt10BinaryDataESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit: ; preds = %bb.a, %_ZNSt8_Rb_treeImSt4pairIKmPN4llvm4bolt10BinaryDataEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.a ], [ %i.e, %_ZNSt8_Rb_treeImSt4pairIKmPN4llvm4bolt10BinaryDataEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ], [ %spec.select.i.i, %bb.b ]
  %i.m = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0.0.i.i) #35 ; 4 uses
  %.not11 = icmp eq ptr %i.m, %i.e
  br i1 %.not11, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3mapImPN4llvm4bolt10BinaryDataESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmPN4llvm4bolt10BinaryDataEEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %.sroa.07.012 = phi ptr [ %i.s, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmPN4llvm4bolt10BinaryDataEEElEvRT_T0_St26bidirectional_iterator_tag.exit ], [ %i.m, %_ZNSt3mapImPN4llvm4bolt10BinaryDataESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.07.012, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !464
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %.lr.ph
  %.tr.i = phi ptr [ %1, %.lr.ph ], [ %i.q, %tailrecurse.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.tr.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !660  ; 3 uses
  %.not.i = icmp ne ptr %i.q, null                ; 2 uses
  %i.r = icmp ne ptr %i.q, %i.o
  %or.cond.not.i = and i1 %i.r, %.not.i
  br i1 %or.cond.not.i, label %tailrecurse.i, label %_ZNK4llvm4bolt10BinaryData12isAncestorOfEPKS1_.exit

_ZNK4llvm4bolt10BinaryData12isAncestorOfEPKS1_.exit: ; preds = %tailrecurse.i
  br i1 %.not.i, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmPN4llvm4bolt10BinaryDataEEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.critedge

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmPN4llvm4bolt10BinaryDataEEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %_ZNK4llvm4bolt10BinaryData12isAncestorOfEPKS1_.exit
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.07.012) #35 ; 3 uses
  %.not = icmp eq ptr %i.s, %i.e
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !1411

.critedge:                                        ; preds = %_ZNK4llvm4bolt10BinaryData12isAncestorOfEPKS1_.exit, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmPN4llvm4bolt10BinaryDataEEElEvRT_T0_St26bidirectional_iterator_tag.exit, %_ZNSt3mapImPN4llvm4bolt10BinaryDataESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  %.sroa.07.0.lcssa = phi ptr [ %i.m, %_ZNSt3mapImPN4llvm4bolt10BinaryDataESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit ], [ %i.s, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmPN4llvm4bolt10BinaryDataEEElEvRT_T0_St26bidirectional_iterator_tag.exit ], [ %.sroa.07.012, %_ZNK4llvm4bolt10BinaryData12isAncestorOfEPKS1_.exit ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.07.0.lcssa, 1
  ret { ptr, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZN4llvm4bolt13BinaryContext16handleAddressRefEmRNS0_14BinaryFunctionEb(ptr noundef nonnull align 8 dereferenceable(2268) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(1360) %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !391
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !416
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.b, label %.critedge57.thread

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN4llvm4bolt14BinaryFunction23getOrCreateIslandAccessEm(ptr noundef nonnull align 8 dereferenceable(1360) %2, i64 noundef %1) ; 2 uses
  %.not.not = icmp eq ptr %i.f, null
  br i1 %.not.not, label %bb.c, label %.critedge57

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !373  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapImPN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.i, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !396
  %i.l = icmp ult i64 %i.k, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.l, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.l, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !668 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImPN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !1412

_ZNSt3mapImPN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit: ; preds = %.lr.ph.i.i.i, %bb.c
  %.08.lcssa.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.19.i.i.i, %.lr.ph.i.i.i ] ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !374
  %.not = icmp eq ptr %.08.lcssa.i.i.i, %i.n
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapImPN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit
  %i.o = icmp eq ptr %.08.lcssa.i.i.i, %i.i
  br i1 %i.o, label %.critedge5, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1418
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %.critedge5, label %.critedge

.critedge5:                                       ; preds = %bb.d, %bb.e
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i) #35
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt3mapImPN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit, %.critedge5, %bb.e
  %.sroa.0116.0 = phi ptr [ %i.s, %.critedge5 ], [ %.08.lcssa.i.i.i, %bb.e ], [ %.08.lcssa.i.i.i, %_ZNSt3mapImPN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit ] ; 2 uses
  %.not159 = icmp eq ptr %.sroa.0116.0, %i.i
  br i1 %.not159, label %.critedge57.thread, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0116.0, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1419 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1232
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !672  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNK4llvm4bolt14BinaryFunction28hasDynamicRelocationAtIslandEv.exit.thread, label %_ZNK4llvm4bolt14BinaryFunction28hasDynamicRelocationAtIslandEv.exit

_ZNK4llvm4bolt14BinaryFunction28hasDynamicRelocationAtIslandEv.exit: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.y = load i8, ptr %i.x, align 8, !tbaa !1432, !range !85, !noundef !86
  %i.z = trunc nuw i8 %i.y to i1
  %.not156 = xor i1 %i.z, true
  %i.aa = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19CloneConstantIslandE, i64 120), align 8, !range !85
  %i.ab = trunc nuw i8 %i.aa to i1
  %or.cond158 = select i1 %.not156, i1 %i.ab, i1 false
  br i1 %or.cond158, label %bb.h, label %bb.g

_ZNK4llvm4bolt14BinaryFunction28hasDynamicRelocationAtIslandEv.exit.thread: ; preds = %bb.f
  %.old = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL19CloneConstantIslandE, i64 120), align 8, !tbaa !431, !range !85, !noundef !86
  %.old157 = trunc nuw i8 %.old to i1
  br i1 %.old157, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm4bolt14BinaryFunction28hasDynamicRelocationAtIslandEv.exit.thread, %_ZNK4llvm4bolt14BinaryFunction28hasDynamicRelocationAtIslandEv.exit
  %i.ac = tail call noundef ptr @_ZN4llvm4bolt14BinaryFunction23getOrCreateIslandAccessEm(ptr noundef nonnull align 8 dereferenceable(1360) %i.u, i64 noundef %1) ; 2 uses
  %.not52 = icmp eq ptr %i.ac, null
  br i1 %.not52, label %.critedge57.thread, label %.critedge57

bb.h:                                             ; preds = %_ZNK4llvm4bolt14BinaryFunction28hasDynamicRelocationAtIslandEv.exit, %_ZNK4llvm4bolt14BinaryFunction28hasDynamicRelocationAtIslandEv.exit.thread
  %i.ad = tail call noundef ptr @_ZN4llvm4bolt14BinaryFunction28getOrCreateProxyIslandAccessEmRS1_(ptr noundef nonnull align 8 dereferenceable(1360) %i.u, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(1360) %2) ; 3 uses
  %.not51 = icmp eq ptr %i.ad, null
  br i1 %.not51, label %.critedge57.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !1419
  tail call void @_ZN4llvm4bolt14BinaryFunction22createIslandDependencyEPNS_8MCSymbolEPS1_(ptr noundef nonnull align 8 dereferenceable(1360) %2, ptr noundef nonnull %i.ad, ptr noundef %i.ae)
  br label %.critedge57

.critedge57.thread:                               ; preds = %bb.h, %.critedge, %bb.g, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !373, !noalias !1433 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not10.i.i.i.i, label %_ZNSt8multimapImPN4llvm4bolt13BinarySectionESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge57.thread, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ag, %.critedge57.thread ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ah, %.critedge57.thread ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !396, !noalias !1433
  %i.ak = icmp ult i64 %1, %i.aj                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.ak, ptr %.012.i.i.i.i, ptr %.0811.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %i.ak, i64 16, i64 24
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !668, !noalias !1433 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8multimapImPN4llvm4bolt13BinarySectionESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !27

_ZNSt8multimapImPN4llvm4bolt13BinarySectionESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.critedge57.thread
  %.08.lcssa.i.i.i.i = phi ptr [ %i.ah, %.critedge57.thread ], [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !374, !noalias !1433
  %.not12.i = icmp eq ptr %.08.lcssa.i.i.i.i, %i.am
  br i1 %.not12.i, label %_ZNK4llvm4bolt13BinarySection6isTextEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNSt8multimapImPN4llvm4bolt13BinarySectionESt4lessImESaISt4pairIKmS3_EEE11upper_boundERS7_.exit.i
  %i.an = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i.i) #35, !noalias !1433 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !689, !noalias !1433
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !690, !noalias !1433 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.at = load i64, ptr %i.as, align 8, !tbaa !653, !noalias !1433 ; 2 uses
  %i.au = add i64 %i.at, %i.ap
  %.not.i68 = icmp eq i64 %i.at, 0
  %i.av = zext i1 %.not.i68 to i64
  %spec.select.i = add i64 %i.au, %i.av
  %.not4.i = icmp ugt i64 %spec.select.i, %1
  br i1 %.not4.i, label %bb.k, label %_ZNK4llvm4bolt13BinarySection6isTextEv.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.aw = tail call noundef zeroext i1 @_ZNK4llvm4bolt13BinarySection5isELFEv(ptr noundef nonnull align 8 dereferenceable(391) %i.ar) #31
  br i1 %i.aw, label %.split, label %bb.l

.split:                                           ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !657
  %i.az = and i32 %i.ay, 4
  %.not160 = icmp eq i32 %i.az, 0
  br i1 %.not160, label %_ZNK4llvm4bolt13BinarySection6isTextEv.exit.thread, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !691 ; 3 uses
  %i.bd = icmp ne ptr %i.bc, null
  %lhsv.i.i.i.i.i = load i64, ptr %i.ba, align 8  ; 2 uses
  %.not.i.i.i.i.i = icmp ne i64 %lhsv.i.i.i.i.i, 0
  %.not2.i.i.i = select i1 %i.bd, i1 true, i1 %.not.i.i.i.i.i
  br i1 %.not2.i.i.i, label %_ZNK4llvm4bolt13BinarySection6isTextEv.exit, label %_ZNK4llvm4bolt13BinarySection6isTextEv.exit.thread

end_hunk_0
