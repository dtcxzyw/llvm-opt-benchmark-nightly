Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mvfst/original/build?download=true
inline.NumInlined: 1798
inline.NumDeleted: 911
begin_hunk_0_@_ZN4Plan16UnmarkDependentsEPK4NodePSt3setIPS0_St4lessIS4_ESaIS4_EE:bb.a
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %.lr.ph33.split ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.f, %.lr.ph33.split ]
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !363
  %i.r = icmp ult ptr %i.q, %i.o                  ; 2 uses
  %.19.i.i.i = select i1 %i.r, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.r, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !362 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.s = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.s, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit

_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !363
  %i.v = icmp ult ptr %i.o, %i.u
  br i1 %i.v, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 104 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !7046
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.w, align 8, !tbaa !7046
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !365  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !365 ; 2 uses
  %.not2729 = icmp eq ptr %i.z, %i.ab
  br i1 %.not2729, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertERKS1_.exit
  %i.ac = phi ptr [ %i.az, %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertERKS1_.exit ], [ %i.ab, %bb.c ]
  %.sroa.08.030 = phi ptr [ %i.ba, %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertERKS1_.exit ], [ %i.z, %bb.c ] ; 6 uses
  %.02022.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !362 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %.lr.ph
  %i.ad = load ptr, ptr %.sroa.08.030, align 8, !tbaa !297 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i6
  %.02024.i.i.i = phi ptr [ %.02022.i.i.i, %.lr.ph.i.i.i6 ], [ %.020.i.i.i, %bb.d ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !297 ; 2 uses
  %i.ag = icmp ult ptr %i.ad, %i.af               ; 2 uses
  %.in.v.i.i.i = select i1 %i.ag, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !362 ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i7, label %._crit_edge.i.i.i, label %bb.d, !llvm.loop !7043

._crit_edge.i.i.i:                                ; preds = %bb.d
  br i1 %i.ag, label %._crit_edge.thread.i.i.i, label %bb.f

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %.lr.ph
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.h, %.lr.ph ] ; 4 uses
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !265
  %i.ai = icmp eq ptr %.019.lcssa29.i.i.i, %i.ah
  br i1 %i.ai, label %select.unfold.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.aj = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #24
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !297
  %.pre18.i.i = load ptr, ptr %.sroa.08.030, align 8, !tbaa !297
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i
  %i.ak = phi ptr [ %.pre18.i.i, %bb.e ], [ %i.ad, %._crit_edge.i.i.i ]
  %i.al = phi ptr [ %.pre.i.i, %bb.e ], [ %i.af, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.e ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.am = icmp ult ptr %i.al, %i.ak
  br i1 %i.am, label %select.unfold.i.i, label %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertERKS1_.exit

select.unfold.i.i:                                ; preds = %bb.f, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.f ] ; 3 uses
  %i.an = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.h
  br i1 %i.an, label %bb.h, label %bb.g

bb.g:                                             ; preds = %select.unfold.i.i
  %i.ao = load ptr, ptr %.sroa.08.030, align 8, !tbaa !297
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !297
  %i.ar = icmp ult ptr %i.ao, %i.aq
  br label %bb.h

bb.h:                                             ; preds = %select.unfold.i.i, %bb.g
  %i.as = phi i1 [ %i.ar, %bb.g ], [ true, %select.unfold.i.i ]
  %i.at = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %.sroa.08.030, align 8, !tbaa !297
  store ptr %i.av, ptr %i.au, align 8, !tbaa !297
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.as, ptr noundef nonnull %i.at, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #23
  %i.aw = load i64, ptr %i.j, align 8, !tbaa !293
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.j, align 8, !tbaa !293
  %i.ay = load ptr, ptr %.sroa.08.030, align 8, !tbaa !297
  tail call void @_ZN4Plan16UnmarkDependentsEPK4NodePSt3setIPS0_St4lessIS4_ESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.ay, ptr noundef nonnull %2)
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !365
  br label %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertERKS1_.exit

_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertERKS1_.exit: ; preds = %bb.f, %bb.h
  %i.az = phi ptr [ %i.ac, %bb.f ], [ %.pre, %bb.h ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.08.030, i64 8 ; 2 uses
  %.not27 = icmp eq ptr %i.ba, %i.az
  br i1 %.not27, label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.loopexit, label %.lr.ph, !llvm.loop !7044

_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.loopexit: ; preds = %_ZNSt3setIP4NodeSt4lessIS1_ESaIS1_EE6insertERKS1_.exit
  %.pre36 = load ptr, ptr %i.c, align 8, !tbaa !366
  br label %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread

_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread: ; preds = %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.loopexit, %bb.c, %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, %.lr.ph33.split, %bb.b, %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit
  %i.bb = phi ptr [ %.pre36, %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.loopexit ], [ %i.n, %bb.c ], [ %i.n, %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_N4Plan4WantEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i ], [ %i.n, %.lr.ph33.split ], [ %i.n, %bb.b ], [ %i.n, %_ZNSt3mapIP4EdgeN4Plan4WantESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.018.032, i64 8 ; 2 uses
  %.not26 = icmp eq ptr %i.bc, %i.bb
  br i1 %.not26, label %._crit_edge, label %.lr.ph33.splitthread-pre-split, !llvm.loop !7045
}

declare noundef zeroext i1 @_ZN14DependencyScan14RecomputeDirtyEP4NodePSt6vectorIS1_SaIS1_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4Plan19ComputeCriticalPathEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator.8", align 1  ; 3 uses
  %3 = alloca %struct.ScopedMetric, align 8       ; 4 uses
  %4 = alloca %struct.TopoSort, align 8           ; 15 uses
  %i.a = load atomic i8, ptr @_ZGVZN4Plan19ComputeCriticalPathEvE16metrics_h_metric acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !389

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4Plan19ComputeCriticalPathEvE16metrics_h_metric) #23
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @g_metrics, align 8, !tbaa !391 ; 2 uses
  %.not35.not = icmp eq ptr %i.d, null
  br i1 %.not35.not, label %.critedge38, label %.critedge

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.e = call noundef ptr @_ZN7Metrics9NewMetricERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1) #23
  %i.f = load ptr, ptr %1, align 8, !tbaa !313    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  call void @_ZdlPv(ptr noundef %i.f) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %.critedge38

.critedge38:                                      ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = phi ptr [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %bb.c ]
  store ptr %i.i, ptr @_ZZN4Plan19ComputeCriticalPathEvE16metrics_h_metric, align 8, !tbaa !393
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4Plan19ComputeCriticalPathEvE16metrics_h_metric) #23
  br label %bb.d

bb.d:                                             ; preds = %.critedge38, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.j = load ptr, ptr @_ZZN4Plan19ComputeCriticalPathEvE16metrics_h_metric, align 8, !tbaa !393
  call void @_ZN12ScopedMetricC1EP6Metric(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.j) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !400
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 1, ptr %i.l, align 8, !tbaa !401
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.n, align 8, !tbaa !7053
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, i8 0, i64 40, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !365  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !365  ; 2 uses
  %.not5357 = icmp eq ptr %i.q, %i.s
  br i1 %.not5357, label %_ZNSt6vectorIP4EdgeSaIS1_EED2Ev.exit.i, label %.lr.ph

._crit_edge:                                      ; preds = %_ZZN4Plan19ComputeCriticalPathEvEN8TopoSort11VisitTargetEPK4Node.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !366 ; 3 uses
  %.phi.trans.insert74 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.pre75 = load ptr, ptr %.phi.trans.insert74, align 8, !tbaa !366 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.not5459 = icmp eq ptr %.pre, %.pre75
  br i1 %.not5459, label %._crit_edge72, label %.lr.ph62

.lr.ph:                                           ; preds = %bb.d, %_ZZN4Plan19ComputeCriticalPathEvEN8TopoSort11VisitTargetEPK4Node.exit
  %.sroa.050.058 = phi ptr [ %i.x, %_ZZN4Plan19ComputeCriticalPathEvEN8TopoSort11VisitTargetEPK4Node.exit ], [ %i.q, %bb.d ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.050.058, align 8, !tbaa !297
  %i.w = getelementptr i8, ptr %i.v, i64 56
  %.val = load ptr, ptr %i.w, align 8, !tbaa !306 ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_ZZN4Plan19ComputeCriticalPathEvEN8TopoSort11VisitTargetEPK4Node.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  call fastcc void @_ZZN4Plan19ComputeCriticalPathEvEN8TopoSort5VisitEP4Edge(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %.val)
  br label %_ZZN4Plan19ComputeCriticalPathEvEN8TopoSort11VisitTargetEPK4Node.exit

_ZZN4Plan19ComputeCriticalPathEvEN8TopoSort11VisitTargetEPK4Node.exit: ; preds = %.lr.ph, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.050.058, i64 8 ; 2 uses
  %.not53 = icmp eq ptr %i.x, %i.s
  br i1 %.not53, label %._crit_edge, label %.lr.ph

._crit_edge63:                                    ; preds = %.lr.ph62
  %.pre76 = load ptr, ptr %i.u, align 8, !tbaa !366, !noalias !7054 ; 2 uses
  %.pre77 = load ptr, ptr %i.t, align 8, !tbaa !366, !noalias !7055 ; 3 uses
  %.not5568 = icmp eq ptr %.pre76, %.pre77
  br i1 %.not5568, label %._crit_edge72, label %.lr.ph71

.lr.ph62:                                         ; preds = %._crit_edge, %.lr.ph62
  %.sroa.046.060 = phi ptr [ %i.ac, %.lr.ph62 ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.046.060, align 8, !tbaa !363 ; 2 uses
  %i.z = call noundef zeroext i1 @_ZNK4Edge8is_phonyEv(ptr noundef nonnull align 8 dereferenceable(168) %i.y) #23
  %not..i = xor i1 %i.z, true
  %i.aa = zext i1 %not..i to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !367
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.046.060, i64 8 ; 2 uses
  %.not54 = icmp eq ptr %i.ac, %.pre75
  br i1 %.not54, label %._crit_edge63, label %.lr.ph62

.loopexit.loopexit:                               ; preds = %bb.j
  %.pre78 = load ptr, ptr %i.t, align 8, !tbaa !366, !noalias !7055
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph71
  %i.ad = phi ptr [ %.pre78, %.loopexit.loopexit ], [ %i.al, %.lr.ph71 ] ; 3 uses
  %.not55 = icmp eq ptr %i.am, %i.ad
  br i1 %.not55, label %._crit_edge72, label %.lr.ph71, !llvm.loop !7051

._crit_edge72:                                    ; preds = %.loopexit, %._crit_edge, %._crit_edge63
  %.lcssa = phi ptr [ %.pre77, %._crit_edge63 ], [ %.pre, %._crit_edge ], [ %i.ad, %.loopexit ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.lcssa, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIP4EdgeSaIS1_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge72
  call void @_ZdlPv(ptr noundef nonnull %.lcssa) #22
  br label %_ZNSt6vectorIP4EdgeSaIS1_EED2Ev.exit.i

_ZNSt6vectorIP4EdgeSaIS1_EED2Ev.exit.i:           ; preds = %bb.d, %bb.f, %._crit_edge72
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !402 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIP4EdgeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIP4EdgeSaIS1_EED2Ev.exit.i, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.ae, %_ZNSt6vectorIP4EdgeSaIS1_EED2Ev.exit.i ] ; 2 uses
  %i.af = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !403 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #22
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIP4EdgeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !7052

_ZNSt10_HashtableIP4EdgeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt6vectorIP4EdgeSaIS1_EED2Ev.exit.i
  %i.ag = load ptr, ptr %4, align 8, !tbaa !400
  %i.ah = load i64, ptr %i.l, align 8, !tbaa !401
  %i.ai = shl i64 %i.ah, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %i.ai, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.aj = load ptr, ptr %4, align 8, !tbaa !400   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.k
  br i1 %i.ak, label %_ZZN4Plan19ComputeCriticalPathEvEN8TopoSortD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableIP4EdgeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.aj) #22
  br label %_ZZN4Plan19ComputeCriticalPathEvEN8TopoSortD2Ev.exit

_ZZN4Plan19ComputeCriticalPathEvEN8TopoSortD2Ev.exit: ; preds = %_ZNSt10_HashtableIP4EdgeS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN12ScopedMetricD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

.lr.ph71:                                         ; preds = %._crit_edge63, %.loopexit
  %i.al = phi ptr [ %i.ad, %.loopexit ], [ %.pre77, %._crit_edge63 ]
  %.sroa.044.069 = phi ptr [ %i.am, %.loopexit ], [ %.pre76, %._crit_edge63 ]
  %i.am = getelementptr inbounds i8, ptr %.sroa.044.069, i64 -8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !363 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !367
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !365 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !365 ; 2 uses
  %.not5664 = icmp eq ptr %i.ar, %i.at
  br i1 %.not5664, label %.loopexit, label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph71, %bb.j
  %.sroa.040.065 = phi ptr [ %i.bd, %bb.j ], [ %i.ar, %.lr.ph71 ] ; 2 uses
  %i.au = load ptr, ptr %.sroa.040.065, align 8, !tbaa !297
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !306 ; 3 uses
  %.not36 = icmp eq ptr %i.aw, null
  br i1 %.not36, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph67
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 120 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !367
  %i.az = call noundef zeroext i1 @_ZNK4Edge8is_phonyEv(ptr noundef nonnull align 8 dereferenceable(168) %i.aw) #23
  %not..i39 = xor i1 %i.az, true
  %i.ba = zext i1 %not..i39 to i64
  %i.bb = add nsw i64 %i.ap, %i.ba                ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, %i.ay
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %i.bb, ptr %i.ax, align 8, !tbaa !367
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %.lr.ph67
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.040.065, i64 8 ; 2 uses
  %.not56 = icmp eq ptr %i.bd, %i.at
  br i1 %.not56, label %.loopexit.loopexit, label %.lr.ph67
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #5

declare noundef ptr @_ZN7Metrics9NewMetricERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

declare void @_ZN12ScopedMetricC1EP6Metric(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN12ScopedMetricD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4Plan20ScheduleInitialEdgesEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.std::set.77", align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  store i32 0, ptr %i.b, align 8, !tbaa !263
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !264
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !265
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !266
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !293
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !265  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not19 = icmp eq ptr %i.h, %i.i
  br i1 %.not19, label %._crit_edge25, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4Plan12ScheduleWorkESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEE.exit
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !265 ; 2 uses
  %.not1621 = icmp eq ptr %.pre, %i.b
  br i1 %.not1621, label %._crit_edge25, label %.lr.ph24

.lr.ph24:                                         ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.n

bb.b:                                             ; preds = %.lr.ph, %_ZN4Plan12ScheduleWorkESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEE.exit
  %.sroa.012.020 = phi ptr [ %i.h, %.lr.ph ], [ %i.at, %_ZN4Plan12ScheduleWorkESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEE.exit ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.012.020, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !371  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.012.020, i64 40 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !370
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %_ZN4Plan12ScheduleWorkESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEE.exit

bb.c:                                             ; preds = %bb.b
  %i.q = call noundef zeroext i1 @_ZNK4Edge14AllInputsReadyEv(ptr noundef nonnull align 8 dereferenceable(168) %i.m) #23
  br i1 %i.q, label %bb.d, label %_ZN4Plan12ScheduleWorkESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !372  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !379
  %.not17 = icmp eq i32 %i.u, 0
  br i1 %.not17, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4Pool9DelayEdgeEP4Edge(ptr noundef nonnull align 8 dereferenceable(88) %i.s, ptr noundef nonnull %i.m) #23
  %.02022.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !362 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %bb.e ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !7059 ; 2 uses
  %i.x = icmp ult ptr %i.s, %i.w                  ; 2 uses
  %.in.v.i.i.i = select i1 %i.x, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !362 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !7056

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.x, label %._crit_edge.thread.i.i.i, label %bb.g

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.e
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.b, %bb.e ] ; 4 uses
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !265
  %i.z = icmp eq ptr %.019.lcssa29.i.i.i, %i.y
  br i1 %i.z, label %select.unfold.i.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.aa = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #24
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !7059
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %i.ab = phi ptr [ %.pre.i.i, %bb.f ], [ %i.w, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.f ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ac = icmp ult ptr %i.ab, %i.s
  br i1 %i.ac, label %select.unfold.i.i, label %_ZN4Plan12ScheduleWorkESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEE.exit

select.unfold.i.i:                                ; preds = %bb.g, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.g ] ; 3 uses
  %i.ad = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.b
  br i1 %i.ad, label %_ZNSt8_Rb_treeIP4PoolS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %select.unfold.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !7059
  %i.ag = icmp ult ptr %i.s, %i.af
  br label %_ZNSt8_Rb_treeIP4PoolS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIP4PoolS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i: ; preds = %bb.h, %select.unfold.i.i
  %i.ah = phi i1 [ %i.ag, %bb.h ], [ true, %select.unfold.i.i ]
  %i.ai = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %i.s, ptr %i.aj, align 8, !tbaa !7059
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ah, ptr noundef nonnull %i.ai, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #23
  %i.ak = load i64, ptr %i.f, align 8, !tbaa !293
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.f, align 8, !tbaa !293
  br label %_ZN4Plan12ScheduleWorkESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEE.exit

bb.i:                                             ; preds = %bb.d
  %i.am = load i32, ptr %i.n, align 8, !tbaa !370
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %_ZN4Plan12ScheduleWorkESt17_Rb_tree_iteratorISt4pairIKP4EdgeNS_4WantEEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 2, ptr %i.n, align 8, !tbaa !370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !371 ; 4 uses
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !363
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !372 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !379
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN4Pool9DelayEdgeEP4Edge(ptr noundef nonnull align 8 dereferenceable(88) %i.aq, ptr noundef nonnull %i.ao) #23
  call void @_ZN4Pool18RetrieveReadyEdgesEP17EdgePriorityQueue(ptr noundef nonnull align 8 dereferenceable(88) %i.aq, ptr noundef nonnull %i.j) #23
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @_ZN4Pool13EdgeScheduledERK4Edge(ptr noundef nonnull align 8 dereferenceable(88) %i.aq, ptr noundef nonnull align 8 dereferenceable(168) %i.ao) #23
  call void @_ZNSt14priority_queueIP4EdgeSt6vectorIS1_SaIS1_EE16EdgePriorityLessE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
end_hunk_0
