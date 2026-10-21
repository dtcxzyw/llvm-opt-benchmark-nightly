Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/ply_decoder?download=true
inline.NumInlined: 2053
inline.NumDeleted: 1122
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5draco10PlyDecoder16DecodeVertexDataEPKNS_10PlyElementE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #15
  store i64 22, ptr %i.l, align 8, !tbaa !27
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.o, ptr %3, align 8, !tbaa !29
  %i.p = load i64, ptr %i.l, align 8, !tbaa !27   ; 3 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.o, ptr noundef nonnull align 1 dereferenceable(22) @.str.7, i64 22, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.q, align 8, !tbaa !31
  %i.r = load ptr, ptr %3, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  store i32 -3, ptr %0, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !26
  %i.v = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.w = load i64, ptr %i.q, align 8, !tbaa !31   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #15
  store i64 %i.w, ptr %i.k, align 8, !tbaa !27
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc230 unwind label %bb.f  ; 2 uses

.noexc230:                                        ; preds = %.noexc.i.i
  store ptr %i.y, ptr %i.t, align 8, !tbaa !29
  %i.z = load i64, ptr %i.k, align 8, !tbaa !27
  store i64 %i.z, ptr %i.u, align 8, !tbaa !30
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc230, %.noexc
  %i.aa = phi ptr [ %i.y, %.noexc230 ], [ %i.u, %.noexc ] ; 2 uses
  switch i64 %i.w, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !30
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !30
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.v, i64 %i.w, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !27  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !31
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #15
  %i.ag = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.n
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !30
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.en

bb.e:                                             ; preds = %.noexc.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

bb.f:                                             ; preds = %.noexc.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.n
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %bb.f
  %i.ao = load i64, ptr %i.n, align 8, !tbaa !30
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231, %bb.e
  %.pn227 = phi { ptr, i32 } [ %i.ak, %bb.e ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231 ], [ %i.al, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.eo

._crit_edge.i.i234:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.aq, ptr %4, align 8, !tbaa !26
  store i8 120, ptr %i.aq, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.ar, align 8, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.as, align 1, !tbaa !30
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !43 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 20 uses
  %.not10.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not10.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240.thread, label %.lr.ph.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240.thread: ; preds = %._crit_edge.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314.thread

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i234
  %rhsc = load i8, ptr %i.aq, align 8
  %rhsv = zext i8 %rhsc to i32
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !31 ; 2 uses
  %.not862 = icmp eq i64 %i.ax, 0
  br i1 %.not862, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !29
  %lhsc = load i8, ptr %i.az, align 1
  %lhsv = zext i8 %lhsc to i32
  %chardiff = sub nsw i32 %lhsv, %rhsv            ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %chardiff, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.g
  %i.ba = add i64 %i.ax, -1
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ba, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %chardiff, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.bb = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.bb, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.bb, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %bb.g, !llvm.loop !0

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.bc = icmp eq ptr %.19.i.i.i.i, %i.av
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !31 ; 2 uses
  %.not863 = icmp eq i64 %i.be, 0
  br i1 %.not863, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !29
  %lhsc864 = load i8, ptr %i.aq, align 8
  %lhsv865 = zext i8 %lhsc864 to i32
  %rhsc866 = load i8, ptr %i.bg, align 1
  %rhsv867 = zext i8 %rhsc866 to i32
  %chardiff868 = sub nsw i32 %lhsv865, %rhsv867   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %chardiff868, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.h
  %i.bh = sub i64 1, %i.be
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bh, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %chardiff868, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.bi = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %bb.i

bb.i:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !47
  %i.bm = sext i32 %i.bl to i64
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !57
  %i.bo = getelementptr inbounds nuw [96 x i8], ptr %i.bn, i64 %i.bm
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %bb.i, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %.0.i = phi ptr [ %i.bo, %bb.i ], [ null, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i ], [ null, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.bp, ptr %5, align 8, !tbaa !26
  store i8 121, ptr %i.bp, align 8, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.bq, align 8, !tbaa !31
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 0, ptr %i.br, align 1, !tbaa !30
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  %.012.i.i.i.i247 = phi ptr [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ], [ %.1.i.i.i.i257, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i252 ] ; 4 uses
  %.0811.i.i.i.i248 = phi ptr [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ], [ %.19.i.i.i.i254, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i252 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i247, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !31 ; 2 uses
  %.not869 = icmp eq i64 %i.bt, 0
  br i1 %.not869, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i270, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i250

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i250: ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i247, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !29
  %lhsc870 = load i8, ptr %i.bv, align 1
  %lhsv871 = zext i8 %lhsc870 to i32
  %chardiff874 = add nsw i32 %lhsv871, -121       ; 2 uses
  %.not.i.i.i.i.i.i.i251 = icmp eq i32 %chardiff874, 0
  br i1 %.not.i.i.i.i.i.i.i251, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i270, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i252

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i270: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i250, %bb.j
  %i.bw = add i64 %i.bt, -1
  %spec.select7.i.i.i.i.i.i.i.i271 = call i64 @llvm.smax.i64(i64 %i.bw, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i272 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i271, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i273 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i272 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i252

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i252: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i270, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i250
  %.0.i.i.i.i.i.i.i253 = phi i32 [ %chardiff874, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i250 ], [ %.0.i6.i.i.i.i.i.i.i273, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i270 ]
  %i.bx = icmp slt i32 %.0.i.i.i.i.i.i.i253, 0    ; 2 uses
  %.19.i.i.i.i254 = select i1 %i.bx, ptr %.0811.i.i.i.i248, ptr %.012.i.i.i.i247 ; 5 uses
  %.1.in.v.i.i.i.i255 = select i1 %i.bx, i64 24, i64 16
  %.1.in.i.i.i.i256 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i247, i64 %.1.in.v.i.i.i.i255
  %.1.i.i.i.i257 = load ptr, ptr %.1.in.i.i.i.i256, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i.i258 = icmp eq ptr %.1.i.i.i.i257, null
  br i1 %.not.i.i.i.i258, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i259, label %bb.j, !llvm.loop !0

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i259: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i252
  %i.by = icmp eq ptr %.19.i.i.i.i254, %i.av
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, label %bb.k

bb.k:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i259
  %i.bz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i254, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !31 ; 2 uses
  %.not875 = icmp eq i64 %i.ca, 0
  br i1 %.not875, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i266, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i261

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i261: ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i254, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !29
  %lhsc876 = load i8, ptr %i.bp, align 8
  %lhsv877 = zext i8 %lhsc876 to i32
  %rhsc878 = load i8, ptr %i.cc, align 1
  %rhsv879 = zext i8 %rhsc878 to i32
  %chardiff880 = sub nsw i32 %lhsv877, %rhsv879   ; 2 uses
  %.not.i.i.i.i.i.i262 = icmp eq i32 %chardiff880, 0
  br i1 %.not.i.i.i.i.i.i262, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i266, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i263

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i266: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i261, %bb.k
  %i.cd = sub i64 1, %i.ca
  %spec.select7.i.i.i.i.i.i.i267 = call i64 @llvm.smax.i64(i64 %i.cd, i64 -2147483648)
  %.08.i.i.i.i.i.i.i268 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i267, i64 2147483647)
  %.0.i6.i.i.i.i.i.i269 = trunc nsw i64 %.08.i.i.i.i.i.i.i268 to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i263

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i263: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i266, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i261
  %.0.i.i.i.i.i.i264 = phi i32 [ %chardiff880, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i261 ], [ %.0.i6.i.i.i.i.i.i269, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i266 ]
  %i.ce = icmp slt i32 %.0.i.i.i.i.i.i264, 0
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, label %bb.l

bb.l:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i263
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i254, i64 64
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !47
  %i.ci = sext i32 %i.ch to i64
  %i.cj = load ptr, ptr %i.cf, align 8, !tbaa !57
  %i.ck = getelementptr inbounds nuw [96 x i8], ptr %i.cj, i64 %i.ci
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277: ; preds = %bb.l, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i263, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i259
  %.0.i265 = phi ptr [ %i.ck, %bb.l ], [ null, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i263 ], [ null, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i259 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.cl, ptr %6, align 8, !tbaa !26
  store i8 122, ptr %i.cl, align 8, !tbaa !30
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.cm, align 8, !tbaa !31
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.cn, align 1, !tbaa !30
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i289, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277
  %.012.i.i.i.i284 = phi ptr [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277 ], [ %.1.i.i.i.i294, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i289 ] ; 4 uses
  %.0811.i.i.i.i285 = phi ptr [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277 ], [ %.19.i.i.i.i291, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i289 ]
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i284, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !31 ; 2 uses
  %.not881 = icmp eq i64 %i.cp, 0
  br i1 %.not881, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i307, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i287

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i287: ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i284, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !29
  %lhsc882 = load i8, ptr %i.cr, align 1
  %lhsv883 = zext i8 %lhsc882 to i32
  %chardiff886 = add nsw i32 %lhsv883, -122       ; 2 uses
  %.not.i.i.i.i.i.i.i288 = icmp eq i32 %chardiff886, 0
  br i1 %.not.i.i.i.i.i.i.i288, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i307, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i289

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i307: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i287, %bb.m
  %i.cs = add i64 %i.cp, -1
  %spec.select7.i.i.i.i.i.i.i.i308 = call i64 @llvm.smax.i64(i64 %i.cs, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i309 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i308, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i310 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i309 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i289

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i289: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i307, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i287
  %.0.i.i.i.i.i.i.i290 = phi i32 [ %chardiff886, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i287 ], [ %.0.i6.i.i.i.i.i.i.i310, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i307 ]
  %i.ct = icmp slt i32 %.0.i.i.i.i.i.i.i290, 0    ; 2 uses
  %.19.i.i.i.i291 = select i1 %i.ct, ptr %.0811.i.i.i.i285, ptr %.012.i.i.i.i284 ; 5 uses
  %.1.in.v.i.i.i.i292 = select i1 %i.ct, i64 24, i64 16
  %.1.in.i.i.i.i293 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i284, i64 %.1.in.v.i.i.i.i292
  %.1.i.i.i.i294 = load ptr, ptr %.1.in.i.i.i.i293, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i.i295 = icmp eq ptr %.1.i.i.i.i294, null
  br i1 %.not.i.i.i.i295, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i296, label %bb.m, !llvm.loop !0

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i296: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i289
  %i.cu = icmp eq ptr %.19.i.i.i.i291, %i.av
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314.thread, label %bb.n

bb.n:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i296
  %i.cv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i291, i64 40
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !31 ; 2 uses
  %.not887 = icmp eq i64 %i.cw, 0
  br i1 %.not887, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i303, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i298

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i298: ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i291, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !29
  %lhsc888 = load i8, ptr %i.cl, align 8
  %lhsv889 = zext i8 %lhsc888 to i32
  %rhsc890 = load i8, ptr %i.cy, align 1
  %rhsv891 = zext i8 %rhsc890 to i32
  %chardiff892 = sub nsw i32 %lhsv889, %rhsv891   ; 2 uses
  %.not.i.i.i.i.i.i299 = icmp eq i32 %chardiff892, 0
  br i1 %.not.i.i.i.i.i.i299, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i303, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i300

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i303: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i298, %bb.n
  %i.cz = sub i64 1, %i.cw
  %spec.select7.i.i.i.i.i.i.i304 = call i64 @llvm.smax.i64(i64 %i.cz, i64 -2147483648)
  %.08.i.i.i.i.i.i.i305 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i304, i64 2147483647)
  %.0.i6.i.i.i.i.i.i306 = trunc nsw i64 %.08.i.i.i.i.i.i.i305 to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i300

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i300: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i303, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i298
  %.0.i.i.i.i.i.i301 = phi i32 [ %chardiff892, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i298 ], [ %.0.i6.i.i.i.i.i.i306, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i303 ]
  %i.da = icmp slt i32 %.0.i.i.i.i.i.i301, 0
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240.thread, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i300, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i296
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %.noexc.i316

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i300
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i291, i64 64
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !47
  %i.de = sext i32 %i.dd to i64
  %i.df = load ptr, ptr %i.db, align 8, !tbaa !57 ; 2 uses
  %i.dg = getelementptr inbounds nuw [96 x i8], ptr %i.df, i64 %i.de ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.dh = icmp ne ptr %.0.i, null
  %i.di = icmp ne ptr %.0.i265, null
  %or.cond = select i1 %i.dh, i1 %i.di, i1 false
  %i.dj = icmp ne ptr %i.df, null
  %or.cond4 = and i1 %or.cond, %i.dj
  br i1 %or.cond4, label %bb.t, label %.noexc.i316

.noexc.i316:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.dk, ptr %7, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #15
  store i64 30, ptr %i.j, align 8, !tbaa !27
  %i.dl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc317 unwind label %bb.r  ; 2 uses

.noexc317:                                        ; preds = %.noexc.i316
  store ptr %i.dl, ptr %7, align 8, !tbaa !29
  %i.dm = load i64, ptr %i.j, align 8, !tbaa !27  ; 3 uses
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.dl, ptr noundef nonnull align 1 dereferenceable(30) @.str.11, i64 30, i1 false)
end_hunk_0
begin_hunk_1_@_ZN5draco10PlyDecoder16DecodeVertexDataEPKNS_10PlyElementE:bb.a
  store ptr %i.ff, ptr %i.fe, align 8, !tbaa !26
  %i.fg = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.fh = load i64, ptr %i.fc, align 8, !tbaa !31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  store i64 %i.fh, ptr %i.g, align 8, !tbaa !27
  %i.fi = icmp ugt i64 %i.fh, 15
  br i1 %i.fi, label %.noexc.i.i343, label %._crit_edge.i.i.i342

.noexc.i.i343:                                    ; preds = %.noexc340
  %i.fj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.fe, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc344 unwind label %bb.z  ; 2 uses

.noexc344:                                        ; preds = %.noexc.i.i343
  store ptr %i.fj, ptr %i.fe, align 8, !tbaa !29
  %i.fk = load i64, ptr %i.g, align 8, !tbaa !27
  store i64 %i.fk, ptr %i.ff, align 8, !tbaa !30
  br label %._crit_edge.i.i.i342

._crit_edge.i.i.i342:                             ; preds = %.noexc344, %.noexc340
  %i.fl = phi ptr [ %i.fj, %.noexc344 ], [ %i.ff, %.noexc340 ] ; 2 uses
  switch i64 %i.fh, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i342
  %i.fm = load i8, ptr %i.fg, align 1, !tbaa !30
  store i8 %i.fm, ptr %i.fl, align 1, !tbaa !30
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i.i342
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fl, ptr align 1 %i.fg, i64 %i.fh, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i.i342
  %i.fn = load i64, ptr %i.g, align 8, !tbaa !27  ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !31
  %i.fp = load ptr, ptr %i.fe, align 8, !tbaa !29
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fn
  store i8 0, ptr %i.fq, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  %i.fr = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.ez
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346: ; preds = %bb.x
  %i.ft = load i64, ptr %i.ez, align 8, !tbaa !30
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.en

bb.y:                                             ; preds = %.noexc.i339
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351

bb.z:                                             ; preds = %.noexc.i.i343
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.ez
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349: ; preds = %bb.z
  %i.fz = load i64, ptr %i.ez, align 8, !tbaa !30
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349, %bb.y
  %.pn221 = phi { ptr, i32 } [ %i.fv, %bb.y ], [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349 ], [ %i.fw, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.eo

bb.aa:                                            ; preds = %bb.u
  switch i32 %i.eu, label %.noexc.i353 [
    i32 9, label %_ZNKSt6vectorIPKN5draco11PlyPropertyESaIS3_EE12_M_check_lenEmPKc.exit.i.i
    i32 5, label %_ZNKSt6vectorIPKN5draco11PlyPropertyESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  ]

.noexc.i353:                                      ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.gb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.gb, ptr %9, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  store i64 55, ptr %i.f, align 8, !tbaa !27
  %i.gc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc354 unwind label %bb.ae ; 3 uses

.noexc354:                                        ; preds = %.noexc.i353
  store ptr %i.gc, ptr %9, align 8, !tbaa !29
  %i.gd = load i64, ptr %i.f, align 8, !tbaa !27  ; 3 uses
  store i64 %i.gd, ptr %i.gb, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.gc, ptr noundef nonnull align 1 dereferenceable(55) @.str.13, i64 55, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !31
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gd
  store i8 0, ptr %i.gf, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  store i32 -3, ptr %0, align 8, !tbaa !34
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.gh, ptr %i.gg, align 8, !tbaa !26
  %i.gi = load ptr, ptr %9, align 8, !tbaa !29    ; 2 uses
  %i.gj = load i64, ptr %i.ge, align 8, !tbaa !31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store i64 %i.gj, ptr %i.e, align 8, !tbaa !27
  %i.gk = icmp ugt i64 %i.gj, 15
  br i1 %i.gk, label %.noexc.i.i357, label %._crit_edge.i.i.i356

.noexc.i.i357:                                    ; preds = %.noexc354
  %i.gl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.gg, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc358 unwind label %bb.af ; 2 uses

.noexc358:                                        ; preds = %.noexc.i.i357
  store ptr %i.gl, ptr %i.gg, align 8, !tbaa !29
  %i.gm = load i64, ptr %i.e, align 8, !tbaa !27
  store i64 %i.gm, ptr %i.gh, align 8, !tbaa !30
  br label %._crit_edge.i.i.i356

._crit_edge.i.i.i356:                             ; preds = %.noexc358, %.noexc354
  %i.gn = phi ptr [ %i.gl, %.noexc358 ], [ %i.gh, %.noexc354 ] ; 2 uses
  switch i64 %i.gj, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i356
  %i.go = load i8, ptr %i.gi, align 1, !tbaa !30
  store i8 %i.go, ptr %i.gn, align 1, !tbaa !30
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i.i356
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gn, ptr align 1 %i.gi, i64 %i.gj, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i.i356
  %i.gp = load i64, ptr %i.e, align 8, !tbaa !27  ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !31
  %i.gr = load ptr, ptr %i.gg, align 8, !tbaa !29
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gp
  store i8 0, ptr %i.gs, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  %i.gt = load ptr, ptr %9, align 8, !tbaa !29    ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.gb
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360: ; preds = %bb.ad
  %i.gv = load i64, ptr %i.gb, align 8, !tbaa !30
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.al

bb.ae:                                            ; preds = %.noexc.i353
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365

bb.af:                                            ; preds = %.noexc.i.i357
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gz = load ptr, ptr %9, align 8, !tbaa !29    ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.gb
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363: ; preds = %bb.af
  %i.hb = load i64, ptr %i.gb, align 8, !tbaa !30
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363, %bb.ae
  %.pn162 = phi { ptr, i32 } [ %i.gx, %bb.ae ], [ %i.gy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363 ], [ %i.gy, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.eo

_ZNKSt6vectorIPKN5draco11PlyPropertyESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @_ZN5draco17GeometryAttributeC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %10)
  %i.hd = call noundef i32 @_ZN5draco14DataTypeLengthENS_8DataTypeE(i32 noundef %i.eu)
  %i.he = mul nsw i32 %i.hd, 3
  %i.hf = sext i32 %i.he to i64
  call void @_ZN5draco17GeometryAttribute4InitENS0_4TypeEPNS_10DataBufferEhNS_8DataTypeEbll(ptr noundef nonnull align 8 dereferenceable(64) %10, i32 noundef 0, ptr noundef null, i8 noundef zeroext 3, i32 noundef %i.eu, i1 noundef zeroext false, i64 noundef %i.hf, i64 noundef 0)
  %i.hg = load ptr, ptr %i.eq, align 8, !tbaa !35
  %i.hh = call noundef i32 @_ZN5draco10PointCloud12AddAttributeERKNS_17GeometryAttributeEbj(ptr noundef nonnull align 8 dereferenceable(164) %i.hg, ptr noundef nonnull align 8 dereferenceable(64) %10, i1 noundef zeroext true, i32 noundef %i.ep) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.hk = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #19
          to label %_ZNKSt6vectorIPKN5draco11PlyPropertyESaIS3_EE12_M_check_lenEmPKc.exit.i.i369 unwind label %bb.ah ; 5 uses

_ZNKSt6vectorIPKN5draco11PlyPropertyESaIS3_EE12_M_check_lenEmPKc.exit.i.i369: ; preds = %_ZNKSt6vectorIPKN5draco11PlyPropertyESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  store ptr %.0.i, ptr %i.hk, align 8, !tbaa !90
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 2 uses
  store ptr %i.hk, ptr %11, align 8, !tbaa !94
  store ptr %i.hl, ptr %i.hi, align 8, !tbaa !95
  store ptr %i.hl, ptr %i.hj, align 8, !tbaa !193
  %i.hm = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19
          to label %_ZNKSt6vectorIPKN5draco11PlyPropertyESaIS3_EE12_M_check_lenEmPKc.exit.i.i379 unwind label %bb.ah ; 7 uses

_ZNKSt6vectorIPKN5draco11PlyPropertyESaIS3_EE12_M_check_lenEmPKc.exit.i.i379: ; preds = %_ZNKSt6vectorIPKN5draco11PlyPropertyESaIS3_EE12_M_check_lenEmPKc.exit.i.i369
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store ptr %.0.i265, ptr %i.hn, align 8, !tbaa !90
  %38 = load i64, ptr %i.hk, align 8
  store i64 %38, ptr %i.hm, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef 8) #16
  store ptr %i.hm, ptr %11, align 8, !tbaa !94
  store ptr %i.ho, ptr %i.hi, align 8, !tbaa !95
  %39 = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store ptr %39, ptr %i.hj, align 8, !tbaa !193
  %i.hp = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19
          to label %_ZNSt6vectorIPKN5draco11PlyPropertyESaIS3_EE9push_backERKS3_.exit387 unwind label %bb.ah ; 6 uses

_ZNSt6vectorIPKN5draco11PlyPropertyESaIS3_EE9push_backERKS3_.exit387: ; preds = %_ZNKSt6vectorIPKN5draco11PlyPropertyESaIS3_EE12_M_check_lenEmPKc.exit.i.i379
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store ptr %i.dg, ptr %i.hq, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hp, ptr noundef nonnull align 8 dereferenceable(16) %i.hm, i64 16, i1 false)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef 16) #16
  store ptr %i.hp, ptr %11, align 8, !tbaa !94
  store ptr %i.hr, ptr %i.hi, align 8, !tbaa !95
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  store ptr %i.hs, ptr %i.hj, align 8, !tbaa !193
  switch i32 %i.eu, label %.thread [
    i32 9, label %bb.ag
    i32 5, label %bb.aj
  ]

bb.ag:                                            ; preds = %_ZNSt6vectorIPKN5draco11PlyPropertyESaIS3_EE9push_backERKS3_.exit387
  %i.ht = load ptr, ptr %i.eq, align 8, !tbaa !35
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = sext i32 %i.hh to i64
  %i.hw = load ptr, ptr %i.hu, align 8, !tbaa !194
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.hv
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !196
  %i.hz = invoke noundef zeroext i1 @_ZN5draco10PlyDecoder25ReadPropertiesToAttributeIfEEbRKSt6vectorIPKNS_11PlyPropertyESaIS5_EEPNS_14PointAttributeEi(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %i.hy, i32 noundef %i.ep)
          to label %bb.ak unwind label %bb.ah     ; 0 uses

bb.ah:                                            ; preds = %_ZNKSt6vectorIPKN5draco11PlyPropertyESaIS3_EE12_M_check_lenEmPKc.exit.i.i379, %_ZNKSt6vectorIPKN5draco11PlyPropertyESaIS3_EE12_M_check_lenEmPKc.exit.i.i369, %_ZNKSt6vectorIPKN5draco11PlyPropertyESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.aj, %bb.ag
  %i.ia = landingpad { ptr, i32 }
          cleanup
  %i.ib = load ptr, ptr %11, align 8, !tbaa !94   ; 3 uses
  %.not.i.i.i388 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i388, label %_ZNSt6vectorIPKN5draco11PlyPropertyESaIS3_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ic = load ptr, ptr %i.hj, align 8, !tbaa !193
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = ptrtoint ptr %i.ib to i64
  %i.if = sub i64 %i.id, %i.ie
  call void @_ZdlPvm(ptr noundef nonnull %i.ib, i64 noundef %i.if) #16
  br label %_ZNSt6vectorIPKN5draco11PlyPropertyESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN5draco11PlyPropertyESaIS3_EED2Ev.exit: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.eo

bb.aj:                                            ; preds = %_ZNSt6vectorIPKN5draco11PlyPropertyESaIS3_EE9push_backERKS3_.exit387
  %i.ig = load ptr, ptr %i.eq, align 8, !tbaa !35
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = sext i32 %i.hh to i64
  %i.ij = load ptr, ptr %i.ih, align 8, !tbaa !194
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ii
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !196
  %i.im = invoke noundef zeroext i1 @_ZN5draco10PlyDecoder25ReadPropertiesToAttributeIiEEbRKSt6vectorIPKNS_11PlyPropertyESaIS5_EEPNS_14PointAttributeEi(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %i.il, i32 noundef %i.ep)
          to label %bb.ak unwind label %bb.ah     ; 0 uses

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %.pr = load ptr, ptr %11, align 8, !tbaa !94    ; 2 uses
  %.not.i.i.i389 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i389, label %_ZNSt6vectorIPKN5draco11PlyPropertyESaIS3_EED2Ev.exit390, label %.thread

.thread:                                          ; preds = %_ZNSt6vectorIPKN5draco11PlyPropertyESaIS3_EE9push_backERKS3_.exit387, %bb.ak
  %i.in = phi ptr [ %.pr, %bb.ak ], [ %i.hp, %_ZNSt6vectorIPKN5draco11PlyPropertyESaIS3_EE9push_backERKS3_.exit387 ] ; 2 uses
  %i.io = load ptr, ptr %i.hj, align 8, !tbaa !193
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.in to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.ir) #16
  br label %_ZNSt6vectorIPKN5draco11PlyPropertyESaIS3_EED2Ev.exit390

_ZNSt6vectorIPKN5draco11PlyPropertyESaIS3_EED2Ev.exit390: ; preds = %bb.ak, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIPKN5draco11PlyPropertyESaIS3_EED2Ev.exit390, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362
  switch i32 %i.eu, label %bb.en [
    i32 9, label %._crit_edge.i.i391
    i32 5, label %._crit_edge.i.i391
  ]

._crit_edge.i.i391:                               ; preds = %bb.al, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.is = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.is, ptr %12, align 8, !tbaa !26
  store i16 30830, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 2, ptr %i.it, align 8, !tbaa !31
  %i.iu = getelementptr inbounds nuw i8, ptr %12, i64 18
  store i8 0, ptr %i.iu, align 2, !tbaa !30
  %i.iv = load ptr, ptr %i.at, align 8, !tbaa !43 ; 9 uses
  %.not10.i.i.i.i395 = icmp eq ptr %i.iv, null
  br i1 %.not10.i.i.i.i395, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.thread, label %.lr.ph.i.i.i.i396

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.thread: ; preds = %._crit_edge.i.i391
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501.thread

.lr.ph.i.i.i.i396:                                ; preds = %._crit_edge.i.i391, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i402
  %.012.i.i.i.i397 = phi ptr [ %.1.i.i.i.i407, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i402 ], [ %i.iv, %._crit_edge.i.i391 ] ; 4 uses
  %.0811.i.i.i.i398 = phi ptr [ %.19.i.i.i.i404, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i402 ], [ %i.av, %._crit_edge.i.i391 ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i397, i64 40
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !31 ; 3 uses
  %i.iy = icmp eq i64 %i.ix, 0
  br i1 %i.iy, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i420, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i400

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i400: ; preds = %.lr.ph.i.i.i.i396
  %.sroa.speculated.i.i.i.i.i.i.i399 = call i64 @llvm.umin.i64(i64 %i.ix, i64 2)
  %i.iz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i397, i64 32
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !29
  %i.jb = call i32 @memcmp(ptr noundef %i.ja, ptr noundef nonnull %i.is, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i399) #15 ; 2 uses
  %.not.i.i.i.i.i.i.i401 = icmp eq i32 %i.jb, 0
  br i1 %.not.i.i.i.i.i.i.i401, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i420, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i402

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i420: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i400, %.lr.ph.i.i.i.i396
  %i.jc = add i64 %i.ix, -2
  %spec.select7.i.i.i.i.i.i.i.i421 = call i64 @llvm.smax.i64(i64 %i.jc, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i422 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i421, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i423 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i422 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i402

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i402: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i420, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i400
  %.0.i.i.i.i.i.i.i403 = phi i32 [ %i.jb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i400 ], [ %.0.i6.i.i.i.i.i.i.i423, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i420 ]
  %i.jd = icmp slt i32 %.0.i.i.i.i.i.i.i403, 0    ; 2 uses
  %.19.i.i.i.i404 = select i1 %i.jd, ptr %.0811.i.i.i.i398, ptr %.012.i.i.i.i397 ; 5 uses
  %.1.in.v.i.i.i.i405 = select i1 %i.jd, i64 24, i64 16
  %.1.in.i.i.i.i406 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i397, i64 %.1.in.v.i.i.i.i405
  %.1.i.i.i.i407 = load ptr, ptr %.1.in.i.i.i.i406, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i.i408 = icmp eq ptr %.1.i.i.i.i407, null
  br i1 %.not.i.i.i.i408, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i409, label %.lr.ph.i.i.i.i396, !llvm.loop !0

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i409: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i402
  %i.je = icmp eq ptr %.19.i.i.i.i404, %i.av
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, label %bb.am

bb.am:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i409
  %i.jf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i404, i64 40
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !31 ; 3 uses
  %i.jh = icmp eq i64 %i.jg, 0
  br i1 %i.jh, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i416, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i411

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i411: ; preds = %bb.am
  %.sroa.speculated.i.i.i.i.i.i410 = call i64 @llvm.umin.i64(i64 %i.jg, i64 2)
  %i.ji = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i404, i64 32
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !29
  %i.jk = call i32 @memcmp(ptr noundef nonnull %i.is, ptr noundef %i.jj, i64 noundef %.sroa.speculated.i.i.i.i.i.i410) #15 ; 2 uses
  %.not.i.i.i.i.i.i412 = icmp eq i32 %i.jk, 0
  br i1 %.not.i.i.i.i.i.i412, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i416, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i413

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i416: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i411, %bb.am
  %i.jl = sub i64 2, %i.jg
  %spec.select7.i.i.i.i.i.i.i417 = call i64 @llvm.smax.i64(i64 %i.jl, i64 -2147483648)
  %.08.i.i.i.i.i.i.i418 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i417, i64 2147483647)
  %.0.i6.i.i.i.i.i.i419 = trunc nsw i64 %.08.i.i.i.i.i.i.i418 to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i413

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i413: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i416, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i411
  %.0.i.i.i.i.i.i414 = phi i32 [ %i.jk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i411 ], [ %.0.i6.i.i.i.i.i.i419, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i416 ]
  %i.jm = icmp slt i32 %.0.i.i.i.i.i.i414, 0
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, label %bb.an

bb.an:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i413
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.jo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i404, i64 64
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !47
  %i.jq = sext i32 %i.jp to i64
  %i.jr = load ptr, ptr %i.jn, align 8, !tbaa !57
  %i.js = getelementptr inbounds nuw [96 x i8], ptr %i.jr, i64 %i.jq
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427: ; preds = %bb.an, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i413, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i409
  %.0.i415 = phi ptr [ %i.js, %bb.an ], [ null, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE4findERS9_.exit.i413 ], [ null, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i409 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.jt = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.jt, ptr %13, align 8, !tbaa !26
  store i16 31086, ptr %i.jt, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 2, ptr %i.ju, align 8, !tbaa !31
  %i.jv = getelementptr inbounds nuw i8, ptr %13, i64 18
  store i8 0, ptr %i.jv, align 2, !tbaa !30
  br label %.lr.ph.i.i.i.i433

.lr.ph.i.i.i.i433:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i439
  %.012.i.i.i.i434 = phi ptr [ %.1.i.i.i.i444, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i439 ], [ %i.iv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427 ] ; 4 uses
  %.0811.i.i.i.i435 = phi ptr [ %.19.i.i.i.i441, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i439 ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427 ]
  %i.jw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i434, i64 40
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !31 ; 3 uses
  %i.jy = icmp eq i64 %i.jx, 0
  br i1 %i.jy, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i457, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i437

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i437: ; preds = %.lr.ph.i.i.i.i433
  %.sroa.speculated.i.i.i.i.i.i.i436 = call i64 @llvm.umin.i64(i64 %i.jx, i64 2)
  %i.jz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i434, i64 32
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !29
  %i.kb = call i32 @memcmp(ptr noundef %i.ka, ptr noundef nonnull %i.jt, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i436) #15 ; 2 uses
  %.not.i.i.i.i.i.i.i438 = icmp eq i32 %i.kb, 0
end_hunk_1
