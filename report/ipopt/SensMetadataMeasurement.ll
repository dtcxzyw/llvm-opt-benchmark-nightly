Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/SensMetadataMeasurement?download=true
inline.NumInlined: 991
inline.NumDeleted: 424
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5Ipopt19MetadataMeasurement23GetInitialEqConstraintsEv:bb.a
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.au, ptr %2, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 16, ptr %i.a, align 8, !tbaa !84
  %i.av = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.e unwind label %bb.n       ; 2 uses

bb.e:                                             ; preds = %.noexc.i
  store ptr %i.av, ptr %2, align 8, !tbaa !59
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !84  ; 3 uses
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.av, ptr noundef nonnull align 1 dereferenceable(16) @.str.2, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !57
  %i.ay = load ptr, ptr %2, align 8, !tbaa !59
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !66 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 72 ; 5 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not10.i.i.i.i, label %bb.h, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !57 ; 4 uses
  %i.be = load ptr, ptr %2, align 8               ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !57 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bg) ; 2 uses
  %i.bh = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.bh, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !59
  %i.bk = call i32 @memcmp(ptr noundef %i.bj, ptr noundef %i.be, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #20 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.f
  %i.bl = sub i64 %i.bg, %i.bd
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bl, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.bm = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.bm, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.bm, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !67 ; 2 uses
  %.not.i.i.i.i31 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i31, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIiSaIiEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %bb.f, !llvm.loop !3

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIiSaIiEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.bn = icmp eq ptr %.19.i.i.i.i, %i.bc
  br i1 %i.bn, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIiSaIiEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !57 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bp, i64 %i.bd) ; 2 uses
  %i.bq = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.bq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !59
  %i.bt = call i32 @memcmp(ptr noundef %i.be, ptr noundef %i.bs, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #20 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.g
  %i.bu = sub i64 %i.bd, %i.bp
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bu, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.bt, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.bv = icmp slt i32 %.0.i.i.i.i.i.i, 0
  %spec.select.i.i.i = select i1 %i.bv, ptr %i.bc, ptr %.19.i.i.i.i
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIiSaIiEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %bb.e
  %.sroa.0.0.i.i.i = phi ptr [ %i.bc, %bb.e ], [ %i.bc, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIiSaIiEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ %spec.select.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 64 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 72 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !71 ; 2 uses
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !72 ; 3 uses
  %i.ca = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 4 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i.i.i.i32, label %.noexc34, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cd = icmp ugt i64 %i.cc, 9223372036854775804
  br i1 %i.cd, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !73

.noexc.i.i:                                       ; preds = %bb.i
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc33 unwind label %bb.o

.noexc33:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.i
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #23
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc34_crit_edge unwind label %bb.o

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc34_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.bw, align 8, !tbaa !74 ; 3 uses
  %.pre87 = load ptr, ptr %i.bx, align 8, !tbaa !74 ; 2 uses
  %.pre88 = ptrtoint ptr %.pre87 to i64
  %.pre89 = ptrtoint ptr %.pre to i64
  %i.cf = icmp eq ptr %.pre87, %.pre
  br label %.noexc34

.noexc34:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc34_crit_edge, %bb.h
  %.pre-phi90 = phi i64 [ %.pre89, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc34_crit_edge ], [ %i.cb, %bb.h ]
  %.pre-phi = phi i64 [ %.pre88, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc34_crit_edge ], [ %i.ca, %bb.h ]
  %.not79 = phi i1 [ %i.cf, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc34_crit_edge ], [ true, %bb.h ]
  %i.cg = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc34_crit_edge ], [ %i.bz, %bb.h ] ; 2 uses
  %i.ch = phi ptr [ %i.ce, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc34_crit_edge ], [ null, %bb.h ] ; 6 uses
  %i.ci = sub i64 %.pre-phi, %.pre-phi90          ; 4 uses
  %i.cj = icmp sgt i64 %i.ci, 4
  br i1 %i.cj, label %bb.j, label %bb.k, !prof !75

bb.j:                                             ; preds = %.noexc34
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ch, ptr align 4 %i.cg, i64 %i.ci, i1 false)
  br label %bb.m

bb.k:                                             ; preds = %.noexc34
  %i.ck = icmp eq i64 %i.ci, 4
  br i1 %i.ck, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cl = load i32, ptr %i.cg, align 4, !tbaa !76
  store i32 %i.cl, ptr %i.ch, align 4, !tbaa !76
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.cm = load ptr, ptr %2, align 8, !tbaa !59    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.au
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.co = load i64, ptr %i.au, align 8, !tbaa !58
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %.not79, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = ashr exact i64 %i.ci, 2
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %umax = call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  br label %bb.p

bb.n:                                             ; preds = %.noexc.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %2, align 8, !tbaa !59    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.au
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.o
  %i.cx = load i64, ptr %i.au, align 8, !tbaa !58
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.n
  %.pn18 = phi { ptr, i32 } [ %i.ct, %bb.n ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %i.cu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.ab

bb.p:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.cz = phi ptr [ null, %.lr.ph ], [ %i.dw, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 4 uses
  %i.da = phi ptr [ null, %.lr.ph ], [ %i.dx, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 4 uses
  %.078 = phi i64 [ 0, %.lr.ph ], [ %i.dz, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %i.db = phi ptr [ null, %.lr.ph ], [ %i.dy, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 10 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.078
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !76
  %.not = icmp eq i32 %i.dd, 0
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.de = trunc i64 %.078 to i32
  %i.df = add i32 %i.ah, %i.de                    ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.da, %i.cz
  br i1 %.not.i.i42, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.df, ptr %i.da, align 4, !tbaa !76
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  store ptr %i.dg, ptr %i.cr, align 8, !tbaa !71
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.s:                                             ; preds = %bb.q
  %i.dh = ptrtoint ptr %i.cz to i64
  %i.di = ptrtoint ptr %i.db to i64
  %i.dj = sub i64 %i.dh, %i.di                    ; 7 uses
  %i.dk = icmp eq i64 %i.dj, 9223372036854775804
  br i1 %i.dk, label %bb.t, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  store ptr %i.db, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
          to label %.noexc44 unwind label %.loopexit.split-lp

.noexc44:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.s
  %i.dl = ashr exact i64 %i.dj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  %i.dm = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dl ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %i.do = call i64 @llvm.umin.i64(i64 %i.dm, i64 2305843009213693951)
  %i.dp = select i1 %i.dn, i64 2305843009213693951, i64 %i.do ; 3 uses
  %.not.i.i.i.i43 = icmp ne i64 %i.dp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i43)
  %i.dq = shl nuw nsw i64 %i.dp, 2
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #23
          to label %.noexc45 unwind label %.loopexit ; 4 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 %i.dj ; 2 uses
  store i32 %i.df, ptr %i.ds, align 4, !tbaa !76
  %i.dt = icmp sgt i64 %i.dj, 0
  br i1 %i.dt, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.u:                                             ; preds = %.noexc45
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dr, ptr align 4 %i.db, i64 %i.dj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.u, %.noexc45
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.dj) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.du, ptr %i.cr, align 8, !tbaa !71
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dp ; 2 uses
  store ptr %i.dv, ptr %i.cs, align 8, !tbaa !85
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.db, ptr %0, align 8
  br label %bb.w

.loopexit.split-lp:                               ; preds = %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i46 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIiSaIiEED2Ev.exit48, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.dj) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit48

_ZNSt6vectorIiSaIiEED2Ev.exit48:                  ; preds = %bb.w, %bb.x
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cc) #21
  br label %bb.ab

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.p
  %i.dw = phi ptr [ %i.cz, %bb.r ], [ %i.dv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.cz, %bb.p ]
  %i.dx = phi ptr [ %i.dg, %bb.r ], [ %i.du, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.da, %bb.p ]
  %i.dy = phi ptr [ %i.db, %bb.r ], [ %i.dr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.db, %bb.p ] ; 2 uses
  %i.dz = add nuw i64 %.078, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dz, %umax
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.p, !llvm.loop !222

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  store ptr %i.dy, ptr %0, align 8
  br label %bb.y

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not.i.i.i49 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIiSaIiEED2Ev.exit50, label %bb.y

bb.y:                                             ; preds = %._crit_edge.thread, %._crit_edge
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cc) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit50

_ZNSt6vectorIiSaIiEED2Ev.exit50:                  ; preds = %._crit_edge, %bb.y
  br i1 %.not.i.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit50
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !14
  %i.ec = add nsw i32 %i.eb, -1                   ; 2 uses
  store i32 %i.ec, ptr %i.ea, align 8, !tbaa !14
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.aa, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.ee = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(280) %i.e) #20, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit50, %bb.z, %bb.aa
  ret void

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt6vectorIiSaIiEED2Ev.exit48
  %.pn20.pn = phi { ptr, i32 } [ %.pn18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %lpad.phi, %_ZNSt6vectorIiSaIiEED2Ev.exit48 ]
  br i1 %.not.i.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit53, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !14
  %i.ej = add nsw i32 %i.ei, -1                   ; 2 uses
  store i32 %i.ej, ptr %i.eh, align 8, !tbaa !14
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.ad, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit53

bb.ad:                                            ; preds = %bb.ac
  %i.el = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(280) %i.e) #20, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit53

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit53: ; preds = %bb.ab, %bb.ac, %bb.ad
  resume { ptr, i32 } %.pn20.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt19MetadataMeasurement14GetMeasurementEi(ptr dead_on_unwind noalias nofree writable sret(%"class.Ipopt::SmartPtr.48") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, i32 noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !57
  store i8 0, ptr %i.c, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !57
  store i8 0, ptr %i.e, align 8, !tbaa !58
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.3, i64 noundef 11)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.an ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !57
  %i.i = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.h, ptr noundef nonnull @.str.4, i64 noundef 17)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit42 unwind label %bb.an ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  invoke void @_ZN5Ipopt12append_IndexERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %2)
          to label %bb.b unwind label %bb.an

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit42
  invoke void @_ZN5Ipopt12append_IndexERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %2)
          to label %bb.c unwind label %bb.an

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.l = load ptr, ptr %3, align 8, !tbaa !59     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !54
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.6) #22
          to label %.noexc unwind label %bb.ao

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 %i.o, ptr %i.b, align 8, !tbaa !84
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc43 unwind label %bb.ao  ; 2 uses

.noexc43:                                         ; preds = %.noexc.i
  store ptr %i.q, ptr %5, align 8, !tbaa !59
  %i.r = load i64, ptr %i.b, align 8, !tbaa !84
  store i64 %i.r, ptr %i.m, align 8, !tbaa !58
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc43, %bb.e
  %i.s = phi ptr [ %i.q, %.noexc43 ], [ %i.m, %bb.e ] ; 2 uses
  switch i64 %i.o, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.l, align 1, !tbaa !58
  store i8 %i.t, ptr %i.s, align 1, !tbaa !58
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.l, i64 %i.o, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.u = load i64, ptr %i.b, align 8, !tbaa !84   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !57
  %i.w = load ptr, ptr %5, align 8, !tbaa !59
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !66   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 5 uses
  %.not10.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not10.i.i.i.i, label %bb.k, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !57  ; 4 uses
  %i.ac = load ptr, ptr %5, align 8               ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !57 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ae) ; 2 uses
  %i.af = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !59
  %i.ai = call i32 @memcmp(ptr noundef %i.ah, ptr noundef %i.ac, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #20 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.i
  %i.aj = sub i64 %i.ae, %i.ab
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.aj, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
end_hunk_0
