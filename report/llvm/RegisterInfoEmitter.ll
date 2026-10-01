Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegisterInfoEmitter?download=true
inline.NumInlined: 8854
inline.NumDeleted: 3653
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 22
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZNSt8_Rb_treeISt6vectorIN4llvm3MVTESaIS2_EESt4pairIKS4_jESt10_Select1stIS7_ENS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS6_:bb.a
_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit27: ; preds = %bb.k, %bb.i
  %.sroa.0.0.copyload.i.i.i3.i.i.i25 = phi ptr [ %i.ai, %bb.i ], [ %i.bt, %bb.k ]
  %.not88 = icmp eq ptr %.sroa.0.0.copyload.i.i.i3.i.i.i25, %i.aj
  br i1 %.not88, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit27.thread74, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit27.thread

_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit27.thread: ; preds = %.lr.ph.i.i.i21, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit27
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !515
  %i.ca = icmp eq ptr %i.bz, null                 ; 2 uses
  %spec.select = select i1 %i.ca, ptr null, ptr %1
  %spec.select82 = select i1 %i.ca, ptr %i.bg, ptr %1
  br label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread

_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit27.thread74: ; preds = %bb.j, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit27
  %i.cb = tail call { ptr, ptr } @_ZNSt8_Rb_treeISt6vectorIN4llvm3MVTESaIS2_EESt4pairIKS4_jESt10_Select1stIS7_ENS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaIS7_EE24_M_get_insert_unique_posERS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %i.cc = extractvalue { ptr, ptr } %i.cb, 0
  %i.cd = extractvalue { ptr, ptr } %i.cb, 1
  br label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread

_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit18.thread71: ; preds = %bb.g, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit18
  %i.ce = icmp slt i64 %i.ar, %i.as
  %i.cf = sub i64 %i.ap, %i.ar
  %storemerge.i.i.i.i28 = select i1 %i.ce, i64 %i.cf, i64 %i.aq ; 2 uses
  %i.cg = inttoptr i64 %storemerge.i.i.i.i28 to ptr
  %.not17.i.i.i29 = icmp eq i64 %storemerge.i.i.i.i28, %i.ap
  br i1 %.not17.i.i.i29, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit36, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit18.thread71, %bb.m
  %.sroa.01.0.i.i31 = phi ptr [ %i.cj, %bb.m ], [ %i.ai, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit18.thread71 ]
  %i.ch = phi ptr [ %i.ci, %bb.m ], [ %i.al, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit18.thread71 ]
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -2 ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %.sroa.01.0.i.i31, i64 -2 ; 3 uses
  %i.ck = load i16, ptr %i.ci, align 2, !tbaa !533 ; 2 uses
  %i.cl = load i16, ptr %i.cj, align 2, !tbaa !533 ; 2 uses
  %i.cm = icmp ult i16 %i.ck, %i.cl
  br i1 %i.cm, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit36.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i30
  %i.cn = icmp ult i16 %i.cl, %i.ck
  br i1 %i.cn, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i32 = icmp eq ptr %i.ci, %i.cg
  br i1 %.not.i.i.i32, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit36, label %.lr.ph.i.i.i30, !llvm.loop !20

_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit36: ; preds = %bb.m, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit18.thread71
  %.sroa.0.0.copyload.i.i.i3.i.i.i34 = phi ptr [ %i.ai, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit18.thread71 ], [ %i.cj, %bb.m ]
  %.not86 = icmp eq ptr %.sroa.0.0.copyload.i.i.i3.i.i.i34, %i.aj
  br i1 %.not86, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit36.thread

_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit36.thread: ; preds = %.lr.ph.i.i.i30, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit36
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !338 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %1
  br i1 %i.cq, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit36.thread
  %i.cr = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %1) #26 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !520, !noalias !2054 ; 3 uses
  %i.cv = load ptr, ptr %i.cs, align 8, !tbaa !520, !noalias !2055 ; 2 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 2 uses
  %i.cz = icmp slt i64 %i.cy, %i.ar
  %i.da = sub i64 %i.an, %i.cy
  %storemerge.i.i.i.i37 = select i1 %i.cz, i64 %i.da, i64 %i.ao ; 2 uses
  %i.db = inttoptr i64 %storemerge.i.i.i.i37 to ptr
  %.not17.i.i.i38 = icmp eq i64 %storemerge.i.i.i.i37, %i.an
  br i1 %.not17.i.i.i38, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit45, label %.lr.ph.i.i.i39

.lr.ph.i.i.i39:                                   ; preds = %bb.n, %bb.p
  %.sroa.01.0.i.i40 = phi ptr [ %i.de, %bb.p ], [ %i.cu, %bb.n ]
  %i.dc = phi ptr [ %i.dd, %bb.p ], [ %i.ai, %bb.n ]
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -2 ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.01.0.i.i40, i64 -2 ; 3 uses
  %i.df = load i16, ptr %i.dd, align 2, !tbaa !533 ; 2 uses
  %i.dg = load i16, ptr %i.de, align 2, !tbaa !533 ; 2 uses
  %i.dh = icmp ult i16 %i.df, %i.dg
  br i1 %i.dh, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit45.thread, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i39
  %i.di = icmp ult i16 %i.dg, %i.df
  br i1 %i.di, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit45.thread80, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i.i.i41 = icmp eq ptr %i.dd, %i.db
  br i1 %.not.i.i.i41, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit45, label %.lr.ph.i.i.i39, !llvm.loop !20

_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit45: ; preds = %bb.p, %bb.n
  %.sroa.0.0.copyload.i.i.i3.i.i.i43 = phi ptr [ %i.cu, %bb.n ], [ %i.de, %bb.p ]
  %.not87 = icmp eq ptr %.sroa.0.0.copyload.i.i.i3.i.i.i43, %i.cv
  br i1 %.not87, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit45.thread80, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit45.thread

_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit45.thread: ; preds = %.lr.ph.i.i.i39, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit45
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !515
  %i.dl = icmp eq ptr %i.dk, null                 ; 2 uses
  %spec.select83 = select i1 %i.dl, ptr null, ptr %i.cr
  %spec.select84 = select i1 %i.dl, ptr %1, ptr %i.cr
  br label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread

_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit45.thread80: ; preds = %bb.o, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit45
  %i.dm = tail call { ptr, ptr } @_ZNSt8_Rb_treeISt6vectorIN4llvm3MVTESaIS2_EESt4pairIKS4_jESt10_Select1stIS7_ENS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaIS7_EE24_M_get_insert_unique_posERS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %i.dn = extractvalue { ptr, ptr } %i.dm, 0
  %i.do = extractvalue { ptr, ptr } %i.dm, 1
  br label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread

_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread: ; preds = %bb.l, %.lr.ph.i.i.i, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit45.thread, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit27.thread, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit36, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit45.thread80, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit36.thread, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit27.thread74, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit18.thread, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread68
  %.sroa.066.2 = phi ptr [ %i.ae, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread68 ], [ %spec.select, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit27.thread ], [ null, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit ], [ %spec.select83, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit45.thread ], [ %1, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit36 ], [ %i.cc, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit27.thread74 ], [ %i.be, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit18.thread ], [ null, %.lr.ph.i.i.i ], [ %i.dn, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit45.thread80 ], [ null, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit36.thread ], [ %1, %bb.l ]
  %.sroa.12.2 = phi ptr [ %i.af, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread68 ], [ %spec.select82, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit27.thread ], [ %i.f, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit ], [ %spec.select84, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit45.thread ], [ null, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit36 ], [ %i.cd, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit27.thread74 ], [ %i.be, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit18.thread ], [ %i.f, %.lr.ph.i.i.i ], [ %i.do, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit45.thread80 ], [ %i.cp, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit36.thread ], [ null, %bb.l ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.066.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeISt6vectorIN4llvm3MVTESaIS2_EESt4pairIKS4_jESt10_Select1stIS7_ENS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaIS7_EE10_M_insert_IS7_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSM_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.not = icmp ne ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = icmp eq ptr %2, %i.a
  %or.cond = select i1 %.not, i1 true, i1 %i.b
  br i1 %or.cond, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !520, !noalias !2067 ; 2 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !520, !noalias !2068
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !520, !noalias !2069 ; 3 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !520, !noalias !2070 ; 2 uses
  %i.j = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.k = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.j, %i.k
  %i.o = sub i64 %i.l, %i.m                       ; 2 uses
  %i.p = icmp slt i64 %i.o, %i.n
  %i.q = sub i64 %i.j, %i.o
  %storemerge.i.i.i.i = select i1 %i.p, i64 %i.q, i64 %i.k ; 2 uses
  %i.r = inttoptr i64 %storemerge.i.i.i.i to ptr
  %.not17.i.i.i = icmp eq i64 %storemerge.i.i.i.i, %i.j
  br i1 %.not17.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i = phi ptr [ %i.u, %bb.c ], [ %i.h, %bb.b ]
  %i.s = phi ptr [ %i.t, %bb.c ], [ %i.e, %bb.b ]
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -2 ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -2 ; 3 uses
  %i.v = load i16, ptr %i.t, align 2, !tbaa !533  ; 2 uses
  %i.w = load i16, ptr %i.u, align 2, !tbaa !533  ; 2 uses
  %or.cond41.not = icmp eq i16 %i.w, %i.v
  br i1 %or.cond41.not, label %bb.c, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.loopexit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.t, %i.r
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !20

._crit_edge.i.i.i:                                ; preds = %bb.c, %bb.b
  %.sroa.0.0.copyload.i.i.i3.i.i.i = phi ptr [ %i.h, %bb.b ], [ %i.u, %bb.c ]
  %i.x = icmp ne ptr %.sroa.0.0.copyload.i.i.i3.i.i.i, %i.i
  br label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit

_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %i.y = icmp ult i16 %i.v, %i.w
  br label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit

_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit: ; preds = %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.loopexit, %._crit_edge.i.i.i, %bb.a
  %i.z = phi i1 [ %i.x, %._crit_edge.i.i.i ], [ true, %bb.a ], [ %i.y, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.loopexit ]
  %i.aa = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !518 ; 3 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !519   ; 3 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN4llvm3MVTESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit
  %i.ai = icmp ugt i64 %i.ah, 9223372036854775806
  br i1 %i.ai, label %bb.e, label %_ZNSt15__new_allocatorIN4llvm3MVTEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !500

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIN4llvm3MVTEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #25
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !520
  %.pre4.i.i = load ptr, ptr %i.ac, align 8, !tbaa !520
  br label %_ZNSt12_Vector_baseIN4llvm3MVTESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i

_ZNSt12_Vector_baseIN4llvm3MVTESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i: ; preds = %_ZNSt15__new_allocatorIN4llvm3MVTEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit
  %i.ak = phi ptr [ %.pre4.i.i, %_ZNSt15__new_allocatorIN4llvm3MVTEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ %i.ad, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit ] ; 3 uses
  %i.al = phi ptr [ %.pre.i.i, %_ZNSt15__new_allocatorIN4llvm3MVTEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ %i.ae, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit ] ; 7 uses
  %i.am = phi ptr [ %i.aj, %_ZNSt15__new_allocatorIN4llvm3MVTEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ null, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit ] ; 8 uses
  store ptr %i.am, ptr %i.ab, align 8, !tbaa !519
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !523
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.ak
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %_ZNKSt8_Rb_treeISt6vectorIN4llvm3MVTESaIS2_EESt4pairIKS4_jESt10_Select1stIS7_ENS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaIS7_EE11_Alloc_nodeclIS7_EEPSt13_Rb_tree_nodeIS7_EOT_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt12_Vector_baseIN4llvm3MVTESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i
  %i.ap = ptrtoaddr ptr %i.al to i64
  %i.aq = ptrtoaddr ptr %i.ak to i64
  %i.ar = add i64 %i.aq, -2
  %i.as = sub i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = lshr i64 %i.as, 1
  %i.au = add nuw i64 %i.at, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.as, 6
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check28 = icmp ult i64 %i.as, 30
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.av = and i64 %i.au, 12
  %n.vec = and i64 %i.au, -16                     ; 4 uses
  %i.aw = shl i64 %n.vec, 1                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.am, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %i.al, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.az ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.al, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep29, align 2, !tbaa !522
  %wide.load30 = load <8 x i16>, ptr %i.ba, align 2, !tbaa !522
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !522
  store <8 x i16> %wide.load30, ptr %i.bb, align 2, !tbaa !522
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !2064

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZNKSt8_Rb_treeISt6vectorIN4llvm3MVTESaIS2_EESt4pairIKS4_jESt10_Select1stIS7_ENS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaIS7_EE11_Alloc_nodeclIS7_EEPSt13_Rb_tree_nodeIS7_EOT_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.av, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !527

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %i.au, -4                    ; 3 uses
  %i.bd = shl i64 %n.vec32, 1                     ; 2 uses
  %i.be = getelementptr i8, ptr %i.am, i64 %i.bd  ; 2 uses
  %i.bf = getelementptr i8, ptr %i.al, i64 %i.bd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 2 uses
  %i.bg = shl i64 %index33, 1                     ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.am, i64 %i.bg
  %next.gep35 = getelementptr i8, ptr %i.al, i64 %i.bg
  %wide.load36 = load <4 x i16>, ptr %next.gep35, align 2, !tbaa !522
  store <4 x i16> %wide.load36, ptr %next.gep34, align 2, !tbaa !522
  %index.next37 = add nuw i64 %index33, 4         ; 2 uses
  %i.bh = icmp eq i64 %index.next37, %n.vec32
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2065

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n38 = icmp eq i64 %i.au, %n.vec32
  br i1 %cmp.n38, label %_ZNKSt8_Rb_treeISt6vectorIN4llvm3MVTESaIS2_EESt4pairIKS4_jESt10_Select1stIS7_ENS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaIS7_EE11_Alloc_nodeclIS7_EEPSt13_Rb_tree_nodeIS7_EOT_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.am, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.be, %vec.epilog.middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.al, %iter.check ], [ %i.ay, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.bi = load i16, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i, align 2, !tbaa !522
  store i16 %i.bi, ptr %.09.i.i.i.i.i.i.i.i.i, align 2, !tbaa !522
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.ak
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt8_Rb_treeISt6vectorIN4llvm3MVTESaIS2_EESt4pairIKS4_jESt10_Select1stIS7_ENS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaIS7_EE11_Alloc_nodeclIS7_EEPSt13_Rb_tree_nodeIS7_EOT_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !2066

_ZNKSt8_Rb_treeISt6vectorIN4llvm3MVTESaIS2_EESt4pairIKS4_jESt10_Select1stIS7_ENS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaIS7_EE11_Alloc_nodeclIS7_EEPSt13_Rb_tree_nodeIS7_EOT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNSt12_Vector_baseIN4llvm3MVTESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %_ZNSt12_Vector_baseIN4llvm3MVTESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i ], [ %i.be, %vec.epilog.middle.block ], [ %i.ax, %middle.block ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.bl, align 8, !tbaa !518
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !538
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !538
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.z, ptr noundef nonnull %i.aa, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #22
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !339
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !339
  ret ptr %i.aa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeISt6vectorIN4llvm3MVTESaIS2_EESt4pairIKS4_jESt10_Select1stIS7_ENS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaIS7_EE24_M_get_insert_unique_posERS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02945 = load ptr, ptr %i.a, align 8, !tbaa !338 ; 2 uses
  %.not46 = icmp eq ptr %.02945, null
  br i1 %.not46, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !520, !noalias !2088 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !520, !noalias !2089
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread
  %.02947 = phi ptr [ %.02945, %.lr.ph ], [ %.029, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.02947, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %.02947, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !520, !noalias !2090 ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !520, !noalias !2091 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = icmp slt i64 %i.o, %i.h
  %i.q = sub i64 %i.f, %i.o
  %storemerge.i.i.i.i = select i1 %i.p, i64 %i.q, i64 %i.g ; 2 uses
  %i.r = inttoptr i64 %storemerge.i.i.i.i to ptr
  %.not17.i.i.i = icmp eq i64 %storemerge.i.i.i.i, %i.f
  br i1 %.not17.i.i.i, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.d
  %.sroa.01.0.i.i = phi ptr [ %i.u, %bb.d ], [ %i.k, %bb.b ]
  %i.s = phi ptr [ %i.t, %bb.d ], [ %i.d, %bb.b ]
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -2 ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -2 ; 3 uses
  %i.v = load i16, ptr %i.t, align 2, !tbaa !533  ; 2 uses
  %i.w = load i16, ptr %i.u, align 2, !tbaa !533  ; 2 uses
  %i.x = icmp ult i16 %i.v, %i.w
  br i1 %i.x, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.y = icmp ult i16 %i.w, %i.v
  br i1 %i.y, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq ptr %i.t, %i.r
  br i1 %.not.i.i.i, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit, label %.lr.ph.i.i.i, !llvm.loop !20

_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit: ; preds = %bb.d, %bb.b
  %.sroa.0.0.copyload.i.i.i3.i.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %bb.d ]
  %.not39 = icmp eq ptr %.sroa.0.0.copyload.i.i.i3.i.i.i, %i.l
  br i1 %.not39, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread33, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread

_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread33: ; preds = %bb.c, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit
  br label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread

_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread: ; preds = %.lr.ph.i.i.i, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread33
  %.sink = phi i64 [ 24, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread33 ], [ 16, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit ], [ 16, %.lr.ph.i.i.i ]
  %.0.i.i.i31 = phi i1 [ false, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread33 ], [ true, %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit ], [ true, %.lr.ph.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.02947, i64 %.sink
  %.029 = load ptr, ptr %i.z, align 8, !tbaa !338 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2079

._crit_edge:                                      ; preds = %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit.thread
  br i1 %.0.i.i.i31, label %._crit_edge.thread, label %bb.f

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa63 = phi ptr [ %.02947, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !329
  %i.ac = icmp eq ptr %.028.lcssa63, %i.ab
  br i1 %i.ac, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit13.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa63) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.028.lcssa62 = phi ptr [ %.028.lcssa63, %bb.e ], [ %.02947, %._crit_edge ] ; 2 uses
  %.sroa.014.0 = phi ptr [ %i.ad, %bb.e ], [ %.02947, %._crit_edge ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !520, !noalias !2092 ; 2 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !520, !noalias !2093
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !520, !noalias !2094 ; 3 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !520, !noalias !2095 ; 2 uses
  %i.al = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.am = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.al, %i.am
  %i.aq = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.ar = icmp slt i64 %i.aq, %i.ap
  %i.as = sub i64 %i.al, %i.aq
  %storemerge.i.i.i.i5 = select i1 %i.ar, i64 %i.as, i64 %i.am ; 2 uses
  %i.at = inttoptr i64 %storemerge.i.i.i.i5 to ptr
  %.not17.i.i.i6 = icmp eq i64 %storemerge.i.i.i.i5, %i.al
  br i1 %.not17.i.i.i6, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorINS_3MVTESaIS2_EESt4lessIS2_EE7SeqLessclERKS4_SA_.exit13, label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %bb.f, %bb.h
  %.sroa.01.0.i.i8 = phi ptr [ %i.aw, %bb.h ], [ %i.aj, %bb.f ]
  %i.au = phi ptr [ %i.av, %bb.h ], [ %i.ag, %bb.f ]
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -2 ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.sroa.01.0.i.i8, i64 -2 ; 3 uses
end_hunk_0
begin_hunk_1_@llvm.ctpop.v2i64
!1866 = distinct !{!1866, !1865, !"_ZN4llvm6formatIJmEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!1867 = !{!1866}
!1868 = !{!"_ZTSZN4llvmlsIJmEEERNS_11raw_ostreamES2_NS_13format_objectIJDpT_EEEEUlPcmE_", !300, i64 0}
!1869 = !{!1868, !300, i64 0}
!1870 = distinct !{!1870, !266}
!1871 = distinct !{!1871, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv"}
!1872 = distinct !{!1872, !1871, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv: argument 0"}
!1873 = distinct !{!1873, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv"}
!1874 = distinct !{!1874, !1873, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv: argument 0"}
!1875 = distinct !{!1875, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv"}
!1876 = distinct !{!1876, !1875, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv: argument 0"}
!1877 = distinct !{!1877, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv"}
!1878 = distinct !{!1878, !1877, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv: argument 0"}
!1879 = distinct !{!1879, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv"}
!1880 = distinct !{!1880, !1879, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv: argument 0"}
!1881 = distinct !{!1881, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv"}
!1882 = distinct !{!1882, !1881, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv: argument 0"}
!1883 = distinct !{!1883, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv"}
!1884 = distinct !{!1884, !1883, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv: argument 0"}
!1885 = distinct !{!1885, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv"}
!1886 = distinct !{!1886, !1885, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv: argument 0"}
!1887 = distinct !{!1887, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv"}
!1888 = distinct !{!1888, !1887, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv: argument 0"}
!1889 = distinct !{!1889, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv"}
!1890 = distinct !{!1890, !1889, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv: argument 0"}
!1891 = distinct !{!1891, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv"}
!1892 = distinct !{!1892, !1891, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv: argument 0"}
!1893 = distinct !{!1893, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv"}
!1894 = distinct !{!1894, !1893, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv: argument 0"}
!1895 = !{!1872}
!1896 = !{!1874}
!1897 = !{!1876}
!1898 = !{!1878}
!1899 = !{!1880}
!1900 = !{!1882}
!1901 = !{!1884}
!1902 = !{!1886}
!1903 = !{!1888}
!1904 = !{!1890}
!1905 = !{!1892}
!1906 = !{!1894}
!1907 = distinct !{!1907, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv"}
!1908 = distinct !{!1908, !1907, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv: argument 0"}
!1909 = distinct !{!1909, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv"}
!1910 = distinct !{!1910, !1909, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv: argument 0"}
!1911 = distinct !{!1911, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv"}
!1912 = distinct !{!1912, !1911, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv: argument 0"}
!1913 = distinct !{!1913, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv"}
!1914 = distinct !{!1914, !1913, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv: argument 0"}
!1915 = !{!1908}
!1916 = !{!1910}
!1917 = !{!1912}
!1918 = !{!1914}
!1919 = distinct !{!1919, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv"}
!1920 = distinct !{!1920, !1919, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv: argument 0"}
!1921 = distinct !{!1921, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv"}
!1922 = distinct !{!1922, !1921, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv: argument 0"}
!1923 = distinct !{!1923, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv"}
!1924 = distinct !{!1924, !1923, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv: argument 0"}
!1925 = distinct !{!1925, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv"}
!1926 = distinct !{!1926, !1925, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv: argument 0"}
!1927 = distinct !{!1927, !266}
!1928 = distinct !{!1928, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv"}
!1929 = distinct !{!1929, !1928, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv: argument 0"}
!1930 = distinct !{!1930, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv"}
!1931 = distinct !{!1931, !1930, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv: argument 0"}
!1932 = distinct !{!1932, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv"}
!1933 = distinct !{!1933, !1932, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE6rbeginEv: argument 0"}
!1934 = distinct !{!1934, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv"}
!1935 = distinct !{!1935, !1934, !"_ZNKSt6vectorIPKN4llvm18CodeGenSubRegIndexESaIS3_EE4rendEv: argument 0"}
!1936 = !{!1920}
!1937 = !{!1922}
!1938 = !{!1924}
!1939 = !{!1926}
!1940 = !{!1929}
!1941 = !{!1931}
!1942 = !{!1933}
!1943 = !{!1935}
!1944 = !{!"_ZTSZN4llvmlsIJhEEERNS_11raw_ostreamES2_NS_13format_objectIJDpT_EEEEUlPcmE_", !498, i64 0}
!1945 = !{!1944, !498, i64 0}
!1946 = !{!"_ZTSZN4llvmlsIJjjEEERNS_11raw_ostreamES2_NS_13format_objectIJDpT_EEEEUlPcmE_", !510, i64 0}
!1947 = !{!1946, !510, i64 0}
!1948 = distinct !{!1948, !"_ZSt19__relocate_object_aISt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEES8_SaIS8_EEvPT_PT0_RT1_"}
!1949 = distinct !{!1949, !1948, !"_ZSt19__relocate_object_aISt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEES8_SaIS8_EEvPT_PT0_RT1_: argument 0"}
!1950 = distinct !{!1950, !1948, !"_ZSt19__relocate_object_aISt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEES8_SaIS8_EEvPT_PT0_RT1_: argument 1"}
!1951 = distinct !{!1951, !266}
!1952 = distinct !{!1952, !"_ZSt19__relocate_object_aISt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEES8_SaIS8_EEvPT_PT0_RT1_"}
!1953 = distinct !{!1953, !1952, !"_ZSt19__relocate_object_aISt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEES8_SaIS8_EEvPT_PT0_RT1_: argument 0"}
!1954 = distinct !{!1954, !1952, !"_ZSt19__relocate_object_aISt4pairIPKN4llvm6RecordESt6vectorIlSaIlEEES8_SaIS8_EEvPT_PT0_RT1_: argument 1"}
!1955 = !{!1949}
!1956 = !{!1950}
!1957 = !{!1953}
!1958 = !{!1954}
!1959 = distinct !{!1959, !266}
!1960 = distinct !{!1960, !266}
!1961 = distinct !{!1961, !266}
!1962 = distinct !{!1962, !266}
!1963 = distinct !{!1963, !266}
!1964 = distinct !{!1964, !266}
!1965 = distinct !{!1965, !266}
!1966 = distinct !{!1966, !266}
!1967 = distinct !{!1967, !"_ZN4llvm18LessRecordRegister11RecordParts7getPartEm"}
!1968 = distinct !{!1968, !1967, !"_ZN4llvm18LessRecordRegister11RecordParts7getPartEm: argument 0"}
!1969 = distinct !{!1969, !"_ZN4llvm18LessRecordRegister11RecordParts7getPartEm"}
!1970 = distinct !{!1970, !1969, !"_ZN4llvm18LessRecordRegister11RecordParts7getPartEm: argument 0"}
!1971 = distinct !{!1971, !266}
!1972 = distinct !{!1972, !266}
!1973 = distinct !{!1973, !"_ZN4llvm18LessRecordRegister11RecordParts7getPartEm"}
!1974 = distinct !{!1974, !1973, !"_ZN4llvm18LessRecordRegister11RecordParts7getPartEm: argument 0"}
!1975 = distinct !{!1975, !"_ZN4llvm18LessRecordRegister11RecordParts7getPartEm"}
!1976 = distinct !{!1976, !1975, !"_ZN4llvm18LessRecordRegister11RecordParts7getPartEm: argument 0"}
!1977 = !{!1968}
!1978 = !{!1970}
!1979 = !{!1974}
!1980 = !{!1976}
!1981 = distinct !{!1981, !266}
!1982 = distinct !{!1982, !266}
!1983 = distinct !{!1983, !266}
!1984 = distinct !{!1984, !266}
!1985 = distinct !{!1985, !266}
!1986 = distinct !{!1986, !266}
!1987 = distinct !{!1987, !266}
!1988 = distinct !{!1988, !266}
!1989 = distinct !{!1989, !266}
!1990 = distinct !{!1990, !266}
!1991 = distinct !{!1991, !266}
!1992 = distinct !{!1992, !266}
!1993 = distinct !{!1993, !266}
!1994 = distinct !{!1994, !266}
!1995 = distinct !{!1995, !266}
!1996 = distinct !{!1996, !266}
!1997 = distinct !{!1997, !266}
!1998 = distinct !{!1998, !266}
!1999 = distinct !{!1999, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv"}
!2000 = distinct !{!2000, !1999, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv: argument 0"}
!2001 = distinct !{!2001, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv"}
!2002 = distinct !{!2002, !2001, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv: argument 0"}
!2003 = distinct !{!2003, !266}
!2004 = distinct !{!2004, !266}
!2005 = distinct !{!2005, !266, !525, !526}
!2006 = distinct !{!2006, !266, !525, !526}
!2007 = distinct !{!2007, !266, !525}
!2008 = !{!2000}
!2009 = !{!2002}
!2010 = !{!"p1 _ZTSSt8_Rb_treeISt6vectorIN4llvm3MVTESaIS2_EESt4pairIKS4_jESt10_Select1stIS7_ENS1_21SequenceToOffsetTableIS4_St4lessIS2_EE7SeqLessESaIS7_EE", !42, i64 0}
!2011 = !{!2010, !2010, i64 0}
!2012 = distinct !{!2012, !"LVerDomain"}
!2013 = distinct !{!2013, !2012}
!2014 = distinct !{!2014, !2012}
!2015 = distinct !{!2015, !266, !525, !526}
!2016 = distinct !{!2016, !543}
!2017 = distinct !{!2017, !266, !525}
!2018 = !{!2013}
!2019 = !{!2014}
!2020 = distinct !{!2020, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv"}
!2021 = distinct !{!2021, !2020, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv: argument 0"}
!2022 = distinct !{!2022, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv"}
!2023 = distinct !{!2023, !2022, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv: argument 0"}
!2024 = distinct !{!2024, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv"}
!2025 = distinct !{!2025, !2024, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv: argument 0"}
!2026 = distinct !{!2026, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv"}
!2027 = distinct !{!2027, !2026, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv: argument 0"}
!2028 = distinct !{!2028, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv"}
!2029 = distinct !{!2029, !2028, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv: argument 0"}
!2030 = distinct !{!2030, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv"}
!2031 = distinct !{!2031, !2030, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv: argument 0"}
!2032 = distinct !{!2032, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv"}
!2033 = distinct !{!2033, !2032, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv: argument 0"}
!2034 = distinct !{!2034, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv"}
!2035 = distinct !{!2035, !2034, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv: argument 0"}
!2036 = distinct !{!2036, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv"}
!2037 = distinct !{!2037, !2036, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv: argument 0"}
!2038 = distinct !{!2038, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv"}
!2039 = distinct !{!2039, !2038, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv: argument 0"}
!2040 = distinct !{!2040, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv"}
!2041 = distinct !{!2041, !2040, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv: argument 0"}
!2042 = distinct !{!2042, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv"}
!2043 = distinct !{!2043, !2042, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv: argument 0"}
!2044 = !{!2021}
!2045 = !{!2023}
!2046 = !{!2025}
!2047 = !{!2027}
!2048 = !{!2029}
!2049 = !{!2031}
!2050 = !{!2033}
!2051 = !{!2035}
!2052 = !{!2037}
!2053 = !{!2039}
!2054 = !{!2041}
!2055 = !{!2043}
!2056 = distinct !{!2056, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv"}
!2057 = distinct !{!2057, !2056, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv: argument 0"}
!2058 = distinct !{!2058, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv"}
!2059 = distinct !{!2059, !2058, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv: argument 0"}
!2060 = distinct !{!2060, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv"}
!2061 = distinct !{!2061, !2060, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv: argument 0"}
!2062 = distinct !{!2062, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv"}
!2063 = distinct !{!2063, !2062, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv: argument 0"}
!2064 = distinct !{!2064, !266, !525, !526}
!2065 = distinct !{!2065, !266, !525, !526}
!2066 = distinct !{!2066, !266, !526, !525}
!2067 = !{!2057}
!2068 = !{!2059}
!2069 = !{!2061}
!2070 = !{!2063}
!2071 = distinct !{!2071, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv"}
!2072 = distinct !{!2072, !2071, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv: argument 0"}
!2073 = distinct !{!2073, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv"}
!2074 = distinct !{!2074, !2073, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv: argument 0"}
!2075 = distinct !{!2075, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv"}
!2076 = distinct !{!2076, !2075, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv: argument 0"}
!2077 = distinct !{!2077, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv"}
!2078 = distinct !{!2078, !2077, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv: argument 0"}
!2079 = distinct !{!2079, !266}
!2080 = distinct !{!2080, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv"}
!2081 = distinct !{!2081, !2080, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv: argument 0"}
!2082 = distinct !{!2082, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv"}
!2083 = distinct !{!2083, !2082, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv: argument 0"}
!2084 = distinct !{!2084, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv"}
!2085 = distinct !{!2085, !2084, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE6rbeginEv: argument 0"}
!2086 = distinct !{!2086, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv"}
!2087 = distinct !{!2087, !2086, !"_ZNKSt6vectorIN4llvm3MVTESaIS1_EE4rendEv: argument 0"}
!2088 = !{!2072}
!2089 = !{!2074}
!2090 = !{!2076}
!2091 = !{!2078}
!2092 = !{!2081}
!2093 = !{!2083}
!2094 = !{!2085}
!2095 = !{!2087}
!2096 = distinct !{!2096, !266, !525, !526}
!2097 = distinct !{!2097, !266, !526, !525}
!2098 = distinct !{!2098, !266, !525, !526}
!2099 = distinct !{!2099, !266, !526, !525}
!2100 = distinct !{!2100, !266, !525, !526}
!2101 = distinct !{!2101, !266, !526, !525}
!2102 = distinct !{!2102, !266, !525, !526}
!2103 = distinct !{!2103, !266, !526, !525}
!2104 = distinct !{!2104, !266, !525, !526}
!2105 = distinct !{!2105, !266, !525, !526}
!2106 = distinct !{!2106, !266, !525, !526}
!2107 = distinct !{!2107, !266, !525, !526}
!2108 = distinct !{!2108, !266}
!2109 = !{i64 0, i64 8, !227, i64 8, i64 1, !62}
!2110 = !{!"_ZTSN4llvm7support6detail13FormatFunctorIRPKcEE", !544, i64 0}
!2111 = !{!2110, !544, i64 0}
!2112 = !{!"_ZTSN4llvm7support6detail13FormatFunctorIRKmEE", !136, i64 0}
!2113 = !{!2112, !136, i64 0}
!2114 = !{!"_ZTSN4llvm7support6detail13FormatFunctorIRmEE", !136, i64 0}
!2115 = !{!2114, !136, i64 0}
!2116 = distinct !{!2116, !"_ZNKSt6vectorIiSaIiEE6rbeginEv"}
!2117 = distinct !{!2117, !2116, !"_ZNKSt6vectorIiSaIiEE6rbeginEv: argument 0"}
!2118 = distinct !{!2118, !"_ZNKSt6vectorIiSaIiEE4rendEv"}
!2119 = distinct !{!2119, !2118, !"_ZNKSt6vectorIiSaIiEE4rendEv: argument 0"}
!2120 = distinct !{!2120, !266}
!2121 = distinct !{!2121, !266}
!2122 = !{!2117}
!2123 = !{!2119}
!2124 = !{!"p1 _ZTSSt8_Rb_treeISt6vectorIiSaIiEESt4pairIKS2_jESt10_Select1stIS5_EN4llvm21SequenceToOffsetTableIS2_St4lessIiEE7SeqLessESaIS5_EE", !42, i64 0}
!2125 = !{!2124, !2124, i64 0}
!2126 = distinct !{!2126, !266}
!2127 = distinct !{!2127, !266}
!2128 = distinct !{!2128, !266}
!2129 = distinct !{!2129, !266}
!2130 = distinct !{!2130, !266}
!2131 = distinct !{!2131, !266}
!2132 = distinct !{!2132, !266}
!2133 = distinct !{!2133, !266}
!2134 = distinct !{!2134, !266}
!2135 = distinct !{!2135, !"_ZNKSt6vectorIiSaIiEE6rbeginEv"}
!2136 = distinct !{!2136, !2135, !"_ZNKSt6vectorIiSaIiEE6rbeginEv: argument 0"}
!2137 = distinct !{!2137, !"_ZNKSt6vectorIiSaIiEE4rendEv"}
!2138 = distinct !{!2138, !2137, !"_ZNKSt6vectorIiSaIiEE4rendEv: argument 0"}
!2139 = distinct !{!2139, !"_ZNKSt6vectorIiSaIiEE6rbeginEv"}
!2140 = distinct !{!2140, !2139, !"_ZNKSt6vectorIiSaIiEE6rbeginEv: argument 0"}
!2141 = distinct !{!2141, !"_ZNKSt6vectorIiSaIiEE4rendEv"}
!2142 = distinct !{!2142, !2141, !"_ZNKSt6vectorIiSaIiEE4rendEv: argument 0"}
!2143 = distinct !{!2143, !"_ZNKSt6vectorIiSaIiEE6rbeginEv"}
!2144 = distinct !{!2144, !2143, !"_ZNKSt6vectorIiSaIiEE6rbeginEv: argument 0"}
!2145 = distinct !{!2145, !"_ZNKSt6vectorIiSaIiEE4rendEv"}
!2146 = distinct !{!2146, !2145, !"_ZNKSt6vectorIiSaIiEE4rendEv: argument 0"}
!2147 = distinct !{!2147, !"_ZNKSt6vectorIiSaIiEE6rbeginEv"}
!2148 = distinct !{!2148, !2147, !"_ZNKSt6vectorIiSaIiEE6rbeginEv: argument 0"}
!2149 = distinct !{!2149, !"_ZNKSt6vectorIiSaIiEE4rendEv"}
!2150 = distinct !{!2150, !2149, !"_ZNKSt6vectorIiSaIiEE4rendEv: argument 0"}
!2151 = distinct !{!2151, !"_ZNKSt6vectorIiSaIiEE6rbeginEv"}
!2152 = distinct !{!2152, !2151, !"_ZNKSt6vectorIiSaIiEE6rbeginEv: argument 0"}
!2153 = distinct !{!2153, !"_ZNKSt6vectorIiSaIiEE4rendEv"}
!2154 = distinct !{!2154, !2153, !"_ZNKSt6vectorIiSaIiEE4rendEv: argument 0"}
!2155 = distinct !{!2155, !"_ZNKSt6vectorIiSaIiEE6rbeginEv"}
!2156 = distinct !{!2156, !2155, !"_ZNKSt6vectorIiSaIiEE6rbeginEv: argument 0"}
!2157 = distinct !{!2157, !"_ZNKSt6vectorIiSaIiEE4rendEv"}
!2158 = distinct !{!2158, !2157, !"_ZNKSt6vectorIiSaIiEE4rendEv: argument 0"}
!2159 = !{!2136}
!2160 = !{!2138}
!2161 = !{!2140}
!2162 = !{!2142}
!2163 = !{!2144}
!2164 = !{!2146}
!2165 = !{!2148}
!2166 = !{!2150}
!2167 = !{!2152}
!2168 = !{!2154}
!2169 = !{!2156}
!2170 = !{!2158}
!2171 = distinct !{!2171, !"_ZNKSt6vectorIiSaIiEE6rbeginEv"}
!2172 = distinct !{!2172, !2171, !"_ZNKSt6vectorIiSaIiEE6rbeginEv: argument 0"}
!2173 = distinct !{!2173, !"_ZNKSt6vectorIiSaIiEE4rendEv"}
!2174 = distinct !{!2174, !2173, !"_ZNKSt6vectorIiSaIiEE4rendEv: argument 0"}
!2175 = distinct !{!2175, !"_ZNKSt6vectorIiSaIiEE6rbeginEv"}
!2176 = distinct !{!2176, !2175, !"_ZNKSt6vectorIiSaIiEE6rbeginEv: argument 0"}
!2177 = distinct !{!2177, !"_ZNKSt6vectorIiSaIiEE4rendEv"}
!2178 = distinct !{!2178, !2177, !"_ZNKSt6vectorIiSaIiEE4rendEv: argument 0"}
!2179 = !{!2172}
!2180 = !{!2174}
!2181 = !{!2176}
!2182 = !{!2178}
!2183 = distinct !{!2183, !"_ZNKSt6vectorIiSaIiEE6rbeginEv"}
!2184 = distinct !{!2184, !2183, !"_ZNKSt6vectorIiSaIiEE6rbeginEv: argument 0"}
!2185 = distinct !{!2185, !"_ZNKSt6vectorIiSaIiEE4rendEv"}
!2186 = distinct !{!2186, !2185, !"_ZNKSt6vectorIiSaIiEE4rendEv: argument 0"}
!2187 = distinct !{!2187, !"_ZNKSt6vectorIiSaIiEE6rbeginEv"}
!2188 = distinct !{!2188, !2187, !"_ZNKSt6vectorIiSaIiEE6rbeginEv: argument 0"}
!2189 = distinct !{!2189, !"_ZNKSt6vectorIiSaIiEE4rendEv"}
!2190 = distinct !{!2190, !2189, !"_ZNKSt6vectorIiSaIiEE4rendEv: argument 0"}
!2191 = distinct !{!2191, !266}
!2192 = distinct !{!2192, !"_ZNKSt6vectorIiSaIiEE6rbeginEv"}
!2193 = distinct !{!2193, !2192, !"_ZNKSt6vectorIiSaIiEE6rbeginEv: argument 0"}
!2194 = distinct !{!2194, !"_ZNKSt6vectorIiSaIiEE4rendEv"}
!2195 = distinct !{!2195, !2194, !"_ZNKSt6vectorIiSaIiEE4rendEv: argument 0"}
!2196 = distinct !{!2196, !"_ZNKSt6vectorIiSaIiEE6rbeginEv"}
!2197 = distinct !{!2197, !2196, !"_ZNKSt6vectorIiSaIiEE6rbeginEv: argument 0"}
!2198 = distinct !{!2198, !"_ZNKSt6vectorIiSaIiEE4rendEv"}
!2199 = distinct !{!2199, !2198, !"_ZNKSt6vectorIiSaIiEE4rendEv: argument 0"}
!2200 = !{!2184}
!2201 = !{!2186}
!2202 = !{!2188}
!2203 = !{!2190}
!2204 = !{!2193}
!2205 = !{!2195}
!2206 = !{!2197}
!2207 = !{!2199}
!2208 = distinct !{!2208, !266}
!2209 = distinct !{!2209, !266}
!2210 = distinct !{!2210, !266}
!2211 = distinct !{!2211, !266}
!2212 = distinct !{!2212, !266}
!2213 = distinct !{!2213, !266}
!2214 = distinct !{!2214, !266}
!2215 = distinct !{!2215, !266}
!2216 = distinct !{!2216, !266}
!2217 = distinct !{!2217, !266}
!2218 = distinct !{!2218, !"LVerDomain"}
!2219 = distinct !{!2219, !2218}
!2220 = distinct !{!2220, !2218}
!2221 = distinct !{!2221, !266, !525, !526}
!2222 = distinct !{!2222, !266, !525}
!2223 = distinct !{!2223, !"LVerDomain"}
!2224 = distinct !{!2224, !2223}
!2225 = distinct !{!2225, !2223}
!2226 = distinct !{!2226, !266, !525, !526}
!2227 = distinct !{!2227, !543}
!2228 = distinct !{!2228, !266, !525}
!2229 = distinct !{!2229, !"LVerDomain"}
!2230 = distinct !{!2230, !2229}
!2231 = distinct !{!2231, !2229}
!2232 = distinct !{!2232, !266, !525, !526}
!2233 = distinct !{!2233, !543}
!2234 = distinct !{!2234, !266}
!2235 = distinct !{!2235, !266, !525}
!2236 = !{!2219}
!2237 = !{!2220}
!2238 = !{!2224}
!2239 = !{!2225}
!2240 = !{!2230}
!2241 = !{!2231}
!2242 = !{!"_ZTSN4llvm7support6detail13FormatFunctorIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !129, i64 0}
!2243 = !{!2242, !129, i64 0}
!2244 = !{!"_ZTSN4llvm7support6detail13FormatFunctorIRNS_9StringRefEEE", !555, i64 0}
!2245 = !{!2244, !555, i64 0}
!2246 = !{!556, !556, i64 0}
!2247 = distinct !{!2247, !266}
!2248 = distinct !{!2248, !266}
!2249 = distinct !{!2249, !266}
!2250 = distinct !{!2250, !266}
!2251 = distinct !{!2251, !266}
!2252 = distinct !{!2252, !266}
!2253 = !{!"_ZTSZN12_GLOBAL__N_119RegisterInfoEmitter13printByHwModeIN4llvm11RegSizeInfoEZNS0_9debugDumpERNS2_11raw_ostreamEE3$_0EENS2_9PrintableERKNS2_12InfoByHwModeIT_EET0_EUlS5_E_", !289, i64 0, !42, i64 8, !292, i64 16}
!2254 = !{!2253, !292, i64 16}
!2255 = !{!2253, !289, i64 0}
!2256 = distinct !{!2256, !266}
!2257 = !{!"_ZTSZN12_GLOBAL__N_119RegisterInfoEmitter13printByHwModeIN4llvm11RegSizeInfoEZNS0_9debugDumpERNS2_11raw_ostreamEE3$_1EENS2_9PrintableERKNS2_12InfoByHwModeIT_EET0_EUlS5_E_", !289, i64 0, !42, i64 8, !292, i64 16}
!2258 = !{!2257, !292, i64 16}
!2259 = !{!2257, !289, i64 0}
!2260 = distinct !{!2260, !266}
!2261 = !{!"_ZTSZN12_GLOBAL__N_119RegisterInfoEmitter13printByHwModeIN4llvm11SubRegRangeEZNS0_9debugDumpERNS2_11raw_ostreamEE3$_2EENS2_9PrintableERKNS2_12InfoByHwModeIT_EET0_EUlS5_E_", !326, i64 0, !42, i64 8, !292, i64 16}
!2262 = !{!2261, !292, i64 16}
!2263 = !{!2261, !326, i64 0}
!2264 = distinct !{!2264, !266}
!2265 = !{!"_ZTSZN12_GLOBAL__N_119RegisterInfoEmitter13printByHwModeIN4llvm11SubRegRangeEZNS0_9debugDumpERNS2_11raw_ostreamEE3$_3EENS2_9PrintableERKNS2_12InfoByHwModeIT_EET0_EUlS5_E_", !326, i64 0, !42, i64 8, !292, i64 16}
!2266 = !{!2265, !292, i64 16}
end_hunk_1
