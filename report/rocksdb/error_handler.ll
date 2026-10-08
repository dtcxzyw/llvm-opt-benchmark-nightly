Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/error_handler?download=true
inline.NumInlined: 1447
inline.NumDeleted: 669
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN7rocksdb12ErrorHandler17HandleKnownErrorsERKNS_6StatusENS_21BackgroundErrorReasonE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78, !nonnull !35, !align !79
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !169, !range !34, !noundef !35 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !131   ; 8 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb16ErrorSeverityMapE, i64 16), align 8, !tbaa !21 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not10.i.i.i, label %bb.j, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.f
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %bb.f ], [ %i.m, %bb.b ] ; 7 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %bb.f ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb16ErrorSeverityMapE, i64 8), %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27   ; 2 uses
  %i.q = icmp eq i32 %i.p, %2
  %i.r = icmp slt i32 %i.p, %2
  br i1 %i.q, label %bb.c, label %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEEEclERKS6_S9_.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 34
  %i.t = load i8, ptr %i.s, align 2, !tbaa !29    ; 2 uses
  %i.u = icmp eq i8 %i.t, %i.d
  %i.v = icmp ult i8 %i.t, %i.d
  br i1 %i.u, label %bb.d, label %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEEEclERKS6_S9_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 33
  %i.x = load i8, ptr %i.w, align 1, !tbaa !31    ; 2 uses
  %i.y = icmp eq i8 %i.x, %i.l
  %i.z = icmp ult i8 %i.x, %i.l
  br i1 %i.y, label %.split.i.i.i, label %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEEEclERKS6_S9_.exit.i.i.i

.split.i.i.i:                                     ; preds = %bb.d
  %i.aa = load i8, ptr %i.n, align 4, !tbaa !33, !range !34, !noundef !35
  %i.ab = icmp samesign ult i8 %i.aa, %i.i
  br i1 %i.ab, label %bb.e, label %bb.f

_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEEEclERKS6_S9_.exit.i.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i
  %.sroa.06.0.i.i.i.i.i.i = phi i1 [ %i.r, %.lr.ph.i.i.i ], [ %i.v, %bb.c ], [ %i.z, %bb.d ]
  br i1 %.sroa.06.0.i.i.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEEEclERKS6_S9_.exit.i.i.i, %.split.i.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEEEclERKS6_S9_.exit.i.i.i, %.split.i.i.i
  %.sink.i.i.i = phi i64 [ 24, %bb.e ], [ 16, %.split.i.i.i ], [ 16, %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEEEclERKS6_S9_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0811.i.i.i, %bb.e ], [ %.012.i.i.i, %.split.i.i.i ], [ %.012.i.i.i, %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEEEclERKS6_S9_.exit.i.i.i ] ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !25 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEESt4pairIKS6_NS3_8SeverityEESt10_Select1stISA_ESt4lessIS6_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS8_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !166

_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEESt4pairIKS6_NS3_8SeverityEESt10_Select1stISA_ESt4lessIS6_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS8_.exit.i.i: ; preds = %bb.f
  %i.ad = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb16ErrorSeverityMapE, i64 8)
  br i1 %i.ad, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEESt4pairIKS6_NS3_8SeverityEESt10_Select1stISA_ESt4lessIS6_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS8_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !27 ; 2 uses
  %i.ah = icmp eq i32 %2, %i.ag
  %i.ai = icmp slt i32 %2, %i.ag
  br i1 %i.ah, label %bb.h, label %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEEEclERKS6_S9_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 34
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !29  ; 2 uses
  %i.al = icmp eq i8 %i.d, %i.ak
  %i.am = icmp ult i8 %i.d, %i.ak
  br i1 %i.al, label %bb.i, label %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEEEclERKS6_S9_.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 33
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !31  ; 2 uses
  %i.ap = icmp eq i8 %i.l, %i.ao
  %i.aq = icmp ult i8 %i.l, %i.ao
  br i1 %i.ap, label %.split.i.i, label %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEEEclERKS6_S9_.exit.i.i

.split.i.i:                                       ; preds = %bb.i
  %i.ar = load i8, ptr %i.ae, align 4, !tbaa !33, !range !34, !noundef !35
  %i.as = icmp samesign ult i8 %i.i, %i.ar
  br i1 %i.as, label %bb.j, label %.thread186.sink.split

_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEEEclERKS6_S9_.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.06.0.i.i.i.i.i = phi i1 [ %i.ai, %bb.g ], [ %i.am, %bb.h ], [ %i.aq, %bb.i ]
  br i1 %.sroa.06.0.i.i.i.i.i, label %bb.j, label %.thread186.sink.split

bb.j:                                             ; preds = %bb.b, %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEEEclERKS6_S9_.exit.i.i, %_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEESt4pairIKS6_NS3_8SeverityEESt10_Select1stISA_ESt4lessIS6_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS8_.exit.i.i, %.split.i.i
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb23DefaultErrorSeverityMapE, i64 16), align 8, !tbaa !21 ; 2 uses
  %.not10.i.i.i32 = icmp eq ptr %i.at, null
  br i1 %.not10.i.i.i32, label %bb.p, label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %bb.j, %bb.m
  %.012.i.i.i34 = phi ptr [ %.1.i.i.i39, %bb.m ], [ %i.at, %bb.j ] ; 6 uses
  %.0811.i.i.i35 = phi ptr [ %.19.i.i.i38, %bb.m ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb23DefaultErrorSeverityMapE, i64 8), %bb.j ]
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i34, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i34, i64 36
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !27 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, %2
  %i.ay = icmp slt i32 %i.aw, %2
  br i1 %i.ax, label %bb.k, label %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeEbEEEclERKS5_S8_.exit.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i33
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i34, i64 33
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !29  ; 2 uses
  %i.bb = icmp eq i8 %i.ba, %i.d
  %i.bc = icmp ult i8 %i.ba, %i.d
  br i1 %i.bb, label %.split.i.i.i44, label %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeEbEEEclERKS5_S8_.exit.i.i.i

.split.i.i.i44:                                   ; preds = %bb.k
  %i.bd = load i8, ptr %i.au, align 4, !tbaa !33, !range !34, !noundef !35
  %i.be = icmp samesign ult i8 %i.bd, %i.i
  br i1 %i.be, label %bb.l, label %bb.m

_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeEbEEEclERKS5_S8_.exit.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i33
  %.sroa.06.0.i.i.i.i.i.i36 = phi i1 [ %i.ay, %.lr.ph.i.i.i33 ], [ %i.bc, %bb.k ]
  br i1 %.sroa.06.0.i.i.i.i.i.i36, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeEbEEEclERKS5_S8_.exit.i.i.i, %.split.i.i.i44
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeEbEEEclERKS5_S8_.exit.i.i.i, %.split.i.i.i44
  %.sink.i.i.i37 = phi i64 [ 24, %bb.l ], [ 16, %.split.i.i.i44 ], [ 16, %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeEbEEEclERKS5_S8_.exit.i.i.i ]
  %.19.i.i.i38 = phi ptr [ %.0811.i.i.i35, %bb.l ], [ %.012.i.i.i34, %.split.i.i.i44 ], [ %.012.i.i.i34, %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeEbEEEclERKS5_S8_.exit.i.i.i ] ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i34, i64 %.sink.i.i.i37
  %.1.i.i.i39 = load ptr, ptr %i.bf, align 8, !tbaa !25 ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %.1.i.i.i39, null
  br i1 %.not.i.i.i40, label %_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeEbEESt4pairIKS5_NS3_8SeverityEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %.lr.ph.i.i.i33, !llvm.loop !167

_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeEbEESt4pairIKS5_NS3_8SeverityEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %bb.m
  %i.bg = icmp eq ptr %.19.i.i.i38, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb23DefaultErrorSeverityMapE, i64 8)
  br i1 %i.bg, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeEbEESt4pairIKS5_NS3_8SeverityEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.19.i.i.i38, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.19.i.i.i38, i64 36
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !27 ; 2 uses
  %i.bk = icmp eq i32 %2, %i.bj
  %i.bl = icmp slt i32 %2, %i.bj
  br i1 %i.bk, label %bb.o, label %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeEbEEEclERKS5_S8_.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %.19.i.i.i38, i64 33
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !29  ; 2 uses
  %i.bo = icmp eq i8 %i.d, %i.bn
  %i.bp = icmp ult i8 %i.d, %i.bn
  br i1 %i.bo, label %.split.i.i43, label %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeEbEEEclERKS5_S8_.exit.i.i

.split.i.i43:                                     ; preds = %bb.o
  %i.bq = load i8, ptr %i.bh, align 4, !tbaa !33, !range !34, !noundef !35
  %i.br = icmp samesign ult i8 %i.i, %i.bq
  br i1 %i.br, label %bb.p, label %.thread186.sink.split

_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeEbEEEclERKS5_S8_.exit.i.i: ; preds = %bb.o, %bb.n
  %.sroa.06.0.i.i.i.i.i41 = phi i1 [ %i.bl, %bb.n ], [ %i.bp, %bb.o ]
  br i1 %.sroa.06.0.i.i.i.i.i41, label %bb.p, label %.thread186.sink.split

bb.p:                                             ; preds = %bb.j, %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeEbEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeEbEESt4pairIKS5_NS3_8SeverityEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %.split.i.i43
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb16DefaultReasonMapE, i64 16), align 8, !tbaa !21 ; 2 uses
  %.not10.i.i.i45 = icmp eq ptr %i.bs, null
  br i1 %.not10.i.i.i45, label %.thread186, label %.lr.ph.i.i.i46

.lr.ph.i.i.i46:                                   ; preds = %bb.p, %.lr.ph.i.i.i46
  %.012.i.i.i47 = phi ptr [ %.1.i.i.i51, %.lr.ph.i.i.i46 ], [ %i.bs, %bb.p ] ; 4 uses
  %.0811.i.i.i48 = phi ptr [ %.19.i.i.i50, %.lr.ph.i.i.i46 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb16DefaultReasonMapE, i64 8), %bb.p ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i47, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i47, i64 36
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !27 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, %2
  %i.bx = icmp slt i32 %i.bv, %2
  %i.by = load i8, ptr %i.bt, align 4, !range !34
  %i.bz = icmp samesign ult i8 %i.by, %i.i
  %.sroa.06.0.i.i.i.i.i.i49 = select i1 %i.bw, i1 %i.bz, i1 %i.bx ; 2 uses
  %.19.i.i.i50 = select i1 %.sroa.06.0.i.i.i.i.i.i49, ptr %.0811.i.i.i48, ptr %.012.i.i.i47 ; 5 uses
  %.1.in.v.i.i.i = select i1 %.sroa.06.0.i.i.i.i.i.i49, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i47, i64 %.1.in.v.i.i.i
  %.1.i.i.i51 = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !25 ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %.1.i.i.i51, null
  br i1 %.not.i.i.i52, label %_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonEbEESt4pairIKS3_NS1_6Status8SeverityEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %.lr.ph.i.i.i46, !llvm.loop !168

_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonEbEESt4pairIKS3_NS1_6Status8SeverityEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %.lr.ph.i.i.i46
  %i.ca = icmp eq ptr %.19.i.i.i50, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb16DefaultReasonMapE, i64 8)
  br i1 %i.ca, label %.thread186, label %bb.q

bb.q:                                             ; preds = %_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonEbEESt4pairIKS3_NS1_6Status8SeverityEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i50, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %.19.i.i.i50, i64 36
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !27 ; 2 uses
  %i.ce = icmp eq i32 %2, %i.cd
  %i.cf = icmp slt i32 %2, %i.cd
  %i.cg = load i8, ptr %i.cb, align 4, !range !34
  %i.ch = icmp samesign ult i8 %i.i, %i.cg
  %.sroa.06.0.i.i.i.i.i53 = select i1 %i.ce, i1 %i.ch, i1 %i.cf
  br i1 %.sroa.06.0.i.i.i.i.i53, label %.thread186, label %.thread186.sink.split

.thread186.sink.split:                            ; preds = %bb.q, %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeEbEEEclERKS5_S8_.exit.i.i, %.split.i.i43, %.split.i.i, %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEEEclERKS6_S9_.exit.i.i
  %.19.i.i.i38.lcssa.sink = phi ptr [ %.19.i.i.i38, %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeEbEEEclERKS5_S8_.exit.i.i ], [ %.19.i.i.i, %.split.i.i ], [ %.19.i.i.i, %_ZNKSt4lessISt5tupleIJN7rocksdb21BackgroundErrorReasonENS1_6Status4CodeENS3_7SubCodeEbEEEclERKS6_S9_.exit.i.i ], [ %.19.i.i.i38, %.split.i.i43 ], [ %.19.i.i.i50, %bb.q ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.19.i.i.i38.lcssa.sink, i64 40
  %i.cj = load i8, ptr %i.ci, align 4, !tbaa !170
  br label %.thread186

.thread186:                                       ; preds = %.thread186.sink.split, %bb.q, %_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonEbEESt4pairIKS3_NS1_6Status8SeverityEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, %bb.p
  %.4 = phi i8 [ 3, %bb.p ], [ 3, %_ZNSt8_Rb_treeISt5tupleIJN7rocksdb21BackgroundErrorReasonEbEESt4pairIKS3_NS1_6Status8SeverityEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS5_.exit.i.i ], [ 3, %bb.q ], [ %i.cj, %.thread186.sink.split ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !132, !range !34, !noundef !35 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !133, !range !34, !noundef !35 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !134 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !135 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %.thread186
  call void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull %i.cr)
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !135
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %.thread186, %bb.r
  %.sroa.21147.0 = phi ptr [ null, %.thread186 ], [ %.pre.i, %bb.r ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  store i8 %i.d, ptr %7, align 8, !tbaa !87
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 2 uses
  store i8 %i.l, ptr %i.cs, align 1, !tbaa !131
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 %.4, ptr %i.ct, align 2, !tbaa !136
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 3
  store i8 %i.cl, ptr %i.cu, align 1, !tbaa !132
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  store i8 %i.cn, ptr %i.cv, align 4, !tbaa !133
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 5 ; 2 uses
  store i8 %i.cp, ptr %i.cw, align 1, !tbaa !134
  store ptr %.sroa.21147.0, ptr %i.j, align 8, !tbaa !135
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 153 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !83, !range !34, !noundef !35
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.s, label %_ZN7rocksdb6StatusD2Ev.exit82

bb.s:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.db = load i8, ptr %i.da, align 8, !tbaa !87
  %i.dc = icmp eq i8 %i.db, 0
  br i1 %i.dc, label %bb.t, label %_ZN7rocksdb6StatusD2Ev.exit82

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %.not.i.i59 = icmp eq ptr %.sroa.21147.0, null
  br i1 %.not.i.i59, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef nonnull %.sroa.21147.0)
          to label %bb.v unwind label %.body.thread193

bb.v:                                             ; preds = %bb.u
  %.pre.i63 = load ptr, ptr %5, align 8, !tbaa !135
  br label %bb.w

.body.thread193:                                  ; preds = %bb.u
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i128

bb.w:                                             ; preds = %bb.v, %bb.t
  %.sroa.21130.0 = phi ptr [ null, %bb.t ], [ %.pre.i63, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  store i8 %i.d, ptr %i.da, align 8, !tbaa !87
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.l, ptr %i.de, align 1, !tbaa !131
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %i.cl, ptr %i.df, align 1, !tbaa !132
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.cn, ptr %i.dg, align 4, !tbaa !133
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 %i.cp, ptr %i.dh, align 1, !tbaa !134
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !135 ; 2 uses
  store ptr %.sroa.21130.0, ptr %i.di, align 8, !tbaa !135
  %.not.i.i.i.i.i74 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i.i74, label %_ZN7rocksdb6StatusD2Ev.exit82, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i75

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i75: ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.dj) #20
  br label %_ZN7rocksdb6StatusD2Ev.exit82

_ZN7rocksdb6StatusD2Ev.exit82:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i75, %bb.w, %bb.s, %_ZN7rocksdb6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !77, !range !34, !noundef !35 ; 2 uses
  %i.dm = icmp ugt i8 %.4, 2
  %i.dn = trunc nuw i8 %i.dl to i1
  %or.cond = and i1 %i.dm, %i.dn
  %spec.store.select = select i1 %or.cond, i8 0, i8 %i.dl
  store i8 %spec.store.select, ptr %i.a, align 1, !tbaa !33
  switch i8 %i.l, label %bb.aa [
    i8 4, label %bb.x
    i8 8, label %bb.x
  ]

bb.x:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit82, %_ZN7rocksdb6StatusD2Ev.exit82
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZN7rocksdb12ErrorHandler20OverrideNoSpaceErrorERKNS_6StatusEPb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.a)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.do = load <4 x i8>, ptr %8, align 8, !tbaa !15 ; 5 uses
  store <4 x i8> %i.do, ptr %7, align 8, !tbaa !15
  store <4 x i8> zeroinitializer, ptr %8, align 8, !tbaa !15
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 4, !tbaa !33, !range !34, !noundef !35 ; 2 uses
  store i8 %i.dq, ptr %i.cv, align 4, !tbaa !133
  store i8 0, ptr %i.dp, align 4, !tbaa !133
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 5
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !15  ; 2 uses
  store i8 %i.ds, ptr %i.cw, align 1, !tbaa !134
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !135 ; 2 uses
  store ptr %i.du, ptr %i.j, align 8, !tbaa !135
  %.not.i.i.i.i.i86 = icmp eq ptr %.sroa.21147.0, null
  br i1 %.not.i.i.i.i.i86, label %_ZN7rocksdb6StatusD2Ev.exit92, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i87

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i87: ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %.sroa.21147.0) #20
  br label %_ZN7rocksdb6StatusD2Ev.exit92

_ZN7rocksdb6StatusD2Ev.exit92:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i87, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.dv = extractelement <4 x i8> %i.do, i64 0
  %i.dw = extractelement <4 x i8> %i.do, i64 1
  %i.dx = extractelement <4 x i8> %i.do, i64 2
  %i.dy = extractelement <4 x i8> %i.do, i64 3
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.body

bb.aa:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit82, %_ZN7rocksdb6StatusD2Ev.exit92
  %i.ea = phi i8 [ %i.ds, %_ZN7rocksdb6StatusD2Ev.exit92 ], [ %i.cp, %_ZN7rocksdb6StatusD2Ev.exit82 ]
  %i.eb = phi i8 [ %i.dq, %_ZN7rocksdb6StatusD2Ev.exit92 ], [ %i.cn, %_ZN7rocksdb6StatusD2Ev.exit82 ]
  %i.ec = phi i8 [ %i.dy, %_ZN7rocksdb6StatusD2Ev.exit92 ], [ %i.cl, %_ZN7rocksdb6StatusD2Ev.exit82 ]
  %i.ed = phi i8 [ %i.dx, %_ZN7rocksdb6StatusD2Ev.exit92 ], [ %.4, %_ZN7rocksdb6StatusD2Ev.exit82 ]
  %i.ee = phi i8 [ %i.dw, %_ZN7rocksdb6StatusD2Ev.exit92 ], [ %i.l, %_ZN7rocksdb6StatusD2Ev.exit82 ]
  %i.ef = phi i8 [ %i.dv, %_ZN7rocksdb6StatusD2Ev.exit92 ], [ %i.d, %_ZN7rocksdb6StatusD2Ev.exit82 ] ; 2 uses
  %i.eg = phi ptr [ %i.du, %_ZN7rocksdb6StatusD2Ev.exit92 ], [ %.sroa.21147.0, %_ZN7rocksdb6StatusD2Ev.exit82 ] ; 6 uses
  %i.eh = icmp eq i8 %i.ef, 0
  br i1 %i.eh, label %bb.ao, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store i8 %i.ef, ptr %9, align 8, !tbaa !87
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 1 ; 2 uses
  store i8 %i.ee, ptr %i.ei, align 1, !tbaa !131
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 2 ; 2 uses
  store i8 %i.ed, ptr %i.ej, align 2, !tbaa !136
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 3 ; 2 uses
  store i8 %i.ec, ptr %i.ek, align 1, !tbaa !132
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  store i8 %i.eb, ptr %i.el, align 4, !tbaa !133
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 5 ; 2 uses
  store i8 %i.ea, ptr %i.em, align 1, !tbaa !134
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 9 uses
  store ptr null, ptr %i.en, align 8, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %.not.i.i93 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i93, label %.thread.i104, label %bb.ac

.thread.i104:                                     ; preds = %bb.ab
  store ptr null, ptr %i.en, align 8, !tbaa !135
  br label %bb.af

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, ptr noundef nonnull %i.eg)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.pre.i97 = load ptr, ptr %4, align 8, !tbaa !135
  %.pre16.i98 = load ptr, ptr %i.en, align 8, !tbaa !135 ; 2 uses
  store ptr null, ptr %4, align 8, !tbaa !135
  store ptr %.pre.i97, ptr %i.en, align 8, !tbaa !135
  %.not.i.i.i.i.i99 = icmp eq ptr %.pre16.i98, null
  br i1 %.not.i.i.i.i.i99, label %bb.af, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i100

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i100: ; preds = %bb.ad
  call void @_ZdaPv(ptr noundef nonnull %.pre16.i98) #20
  %.pr.i101 = load ptr, ptr %4, align 8, !tbaa !135 ; 2 uses
  %.not.i11.i102 = icmp eq ptr %.pr.i101, null
  br i1 %.not.i11.i102, label %bb.af, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i103

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i103: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i100
  call void @_ZdaPv(ptr noundef nonnull %.pr.i101) #20
  br label %bb.af

end_hunk_0
