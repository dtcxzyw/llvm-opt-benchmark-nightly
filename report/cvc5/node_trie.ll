Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/node_trie?download=true
inline.NumInlined: 755
inline.NumDeleted: 372
begin_hunk_0_@_ZN4cvc58internal16NodeTemplateTrieILb1EE12addOrGetTermENS0_12NodeTemplateILb1EEERKSt6vectorIS4_SaIS4_EE:bb.a
  %.1.in.v.i.i.i.i14 = select i1 %i.ak, i64 24, i64 16
  %.1.in.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i11, i64 %.1.in.v.i.i.i.i14
  %.1.i.i.i.i16 = load ptr, ptr %.1.in.i.i.i.i15, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i.i17 = icmp eq ptr %.1.i.i.i.i16, null
  br i1 %.not.i.i.i.i17, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_16NodeTemplateTrieILb1EEESt4lessIS3_ESaISt4pairIKS3_S5_EEE11lower_boundERS9_.exit.i18, label %bb.e, !llvm.loop !66

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_16NodeTemplateTrieILb1EEESt4lessIS3_ESaISt4pairIKS3_S5_EEE11lower_boundERS9_.exit.i18: ; preds = %bb.e
  %i.al = icmp eq ptr %.19.i.i.i.i13, %i.ac
  br i1 %i.al, label %.critedge.i20, label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_16NodeTemplateTrieILb1EEESt4lessIS3_ESaISt4pairIKS3_S5_EEE11lower_boundERS9_.exit.i18
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i13, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = and i64 %i.ao, 1099511627775
  %i.aq = icmp samesign ult i64 %i.af, %i.ap
  br i1 %i.aq, label %.critedge.i20, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_16NodeTemplateTrieILb1EEESt4lessIS3_ESaISt4pairIKS3_S5_EEEixERS9_.exit22

.critedge.i20:                                    ; preds = %bb.f, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_16NodeTemplateTrieILb1EEESt4lessIS3_ESaISt4pairIKS3_S5_EEE11lower_boundERS9_.exit.i18, %bb.d
  %.08.lcssa.i.i.i11.i21 = phi ptr [ %.19.i.i.i.i13, %bb.f ], [ %.19.i.i.i.i13, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_16NodeTemplateTrieILb1EEESt4lessIS3_ESaISt4pairIKS3_S5_EEE11lower_boundERS9_.exit.i18 ], [ %i.ac, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %2, ptr %4, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ar = call ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_16NodeTemplateTrieILb1EEEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %.0.lcssa, ptr %.08.lcssa.i.i.i11.i21, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_16NodeTemplateTrieILb1EEESt4lessIS3_ESaISt4pairIKS3_S5_EEEixERS9_.exit22

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_16NodeTemplateTrieILb1EEESt4lessIS3_ESaISt4pairIKS3_S5_EEEixERS9_.exit22: ; preds = %bb.f, %.critedge.i20
  %.sroa.06.0.i19 = phi ptr [ %i.ar, %.critedge.i20 ], [ %.19.i.i.i.i13, %bb.f ] ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i19, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i19, i64 56 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !22
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_16NodeTemplateTrieILb1EEEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef %i.au)
          to label %_ZN4cvc58internal16NodeTemplateTrieILb1EE5clearEv.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_16NodeTemplateTrieILb1EEESt4lessIS3_ESaISt4pairIKS3_S5_EEEixERS9_.exit22
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #18
  unreachable

_ZN4cvc58internal16NodeTemplateTrieILb1EE5clearEv.exit: ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_16NodeTemplateTrieILb1EEESt4lessIS3_ESaISt4pairIKS3_S5_EEEixERS9_.exit22
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i19, i64 48 ; 2 uses
  store ptr null, ptr %i.at, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i19, i64 64
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i19, i64 72
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !36
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i19, i64 80
  store i64 0, ptr %i.ba, align 8, !tbaa !32
  %i.bb = load ptr, ptr %2, align 8, !tbaa !29    ; 5 uses
  store ptr %i.bb, ptr %0, align 8, !tbaa !29
  %i.bc = load i64, ptr %i.bb, align 8            ; 3 uses
  %i.bd = lshr i64 %i.bc, 40
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %i.bf = and i32 %i.be, 1048575                  ; 3 uses
  %i.bg = icmp samesign ult i32 %i.bf, 1048574
  br i1 %i.bg, label %bb.h, label %bb.i, !prof !30

bb.h:                                             ; preds = %_ZN4cvc58internal16NodeTemplateTrieILb1EE5clearEv.exit
  %i.bh = add nuw nsw i32 %i.bf, 1
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 40
  %i.bk = and i64 %i.bc, -1152920405095219201
  %i.bl = or i64 %i.bj, %i.bk
  store i64 %i.bl, ptr %i.bb, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.i:                                             ; preds = %_ZN4cvc58internal16NodeTemplateTrieILb1EE5clearEv.exit
  %i.bm = icmp eq i32 %i.bf, 1048574
  br i1 %i.bm, label %bb.j, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !31

bb.j:                                             ; preds = %bb.i
  %i.bn = or i64 %i.bc, 1152920405095219200
  store i64 %i.bn, ptr %i.bb, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bb)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.k:                                             ; preds = %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !33
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !29 ; 5 uses
  store ptr %i.br, ptr %0, align 8, !tbaa !29
  %i.bs = load i64, ptr %i.br, align 8            ; 3 uses
  %i.bt = lshr i64 %i.bs, 40
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = and i32 %i.bu, 1048575                  ; 3 uses
  %i.bw = icmp samesign ult i32 %i.bv, 1048574
  br i1 %i.bw, label %bb.l, label %bb.m, !prof !30

bb.l:                                             ; preds = %bb.k
  %i.bx = add nuw nsw i32 %i.bv, 1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 40
  %i.ca = and i64 %i.bs, -1152920405095219201
  %i.cb = or i64 %i.bz, %i.ca
  store i64 %i.cb, ptr %i.br, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.m:                                             ; preds = %bb.k
  %i.cc = icmp eq i32 %i.bv, 1048574
  br i1 %i.cc, label %bb.n, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !31

bb.n:                                             ; preds = %bb.m
  %i.cd = or i64 %i.bs, 1152920405095219200
  store i64 %i.cd, ptr %i.br, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.br)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK4cvc58internal16NodeTemplateTrieILb0EE10debugPrintEPKcj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not21 = icmp eq ptr %i.b, %i.c
  br i1 %.not21, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = add i32 %2, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.sroa.018.022 = phi ptr [ %i.b, %.preheader.lr.ph ], [ %i.f, %.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.018.022, i64 40
  tail call void @_ZNK4cvc58internal16NodeTemplateTrieILb0EE10debugPrintEPKcj(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %1, i32 noundef %i.d)
  %i.f = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.018.022) #20 ; 2 uses
  %.not = icmp eq ptr %i.f, %i.c
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK4cvc58internal16NodeTemplateTrieILb1EE10debugPrintEPKcj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not21 = icmp eq ptr %i.b, %i.c
  br i1 %.not21, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = add i32 %2, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.sroa.018.022 = phi ptr [ %i.b, %.preheader.lr.ph ], [ %i.f, %.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.018.022, i64 40
  tail call void @_ZNK4cvc58internal16NodeTemplateTrieILb1EE10debugPrintEPKcj(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %1, i32 noundef %i.d)
  %i.f = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.018.022) #20 ; 2 uses
  %.not = icmp eq ptr %i.f, %i.c
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK4cvc58internal16NodeTemplateTrieILb0EE9getLeavesEm(ptr dead_on_unwind noalias writable sret(%"class.std::vector.5") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE12_M_check_lenEmPKc.exit.i.i:
  %3 = alloca %"class.cvc5::internal::NodeTemplate.3", align 8 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21
          to label %bb.a unwind label %.thread    ; 4 uses

bb.a:                                             ; preds = %_ZNKSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  store ptr %1, ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.b, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.sroa.046.0 = phi ptr [ %i.a, %bb.a ], [ %.sroa.046.197, %.loopexit ] ; 4 uses
  %.sroa.11.0 = phi ptr [ %i.c, %bb.a ], [ %.sroa.11.191, %.loopexit ] ; 2 uses
  %.sroa.21.0 = phi ptr [ %i.c, %bb.a ], [ %.sroa.21.183, %.loopexit ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.11.0, i64 -16 ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.f, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 2 uses
  %.not73102 = icmp eq ptr %i.h, %i.i
  br i1 %.not73102, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.11.0, i64 -8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.5.0.copyload, 0
  %i.j = add i64 %.sroa.5.0.copyload, -1          ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %4 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %5 = load ptr, ptr %4, align 8, !tbaa !25       ; 5 uses
  store ptr %5, ptr %3, align 8, !tbaa !29
  %6 = load i64, ptr %5, align 8                  ; 3 uses
  %7 = lshr i64 %6, 40
  %8 = trunc nuw nsw i64 %7 to i32
  %9 = and i32 %8, 1048575                        ; 3 uses
  %10 = icmp samesign ult i32 %9, 1048574
  br i1 %10, label %bb.c, label %bb.d, !prof !30

.thread:                                          ; preds = %_ZNKSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EED2Ev.exit38

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.t
  %.sroa.041.0106 = phi ptr [ %i.bl, %bb.t ], [ %i.h, %.lr.ph ] ; 2 uses
  %.sroa.21.1105 = phi ptr [ %.sroa.21.2.ph, %bb.t ], [ %.sroa.21.0, %.lr.ph ] ; 7 uses
  %.sroa.11.1104 = phi ptr [ %.sroa.11.2.ph, %bb.t ], [ %i.f, %.lr.ph ] ; 4 uses
  %.sroa.046.1103 = phi ptr [ %.sroa.046.2.ph, %bb.t ], [ %.sroa.046.0, %.lr.ph ] ; 7 uses
  %12 = getelementptr inbounds nuw i8, ptr %.sroa.041.0106, i64 40 ; 2 uses
  %.not.i22 = icmp eq ptr %.sroa.11.1104, %.sroa.21.1105
  br i1 %.not.i22, label %bb.r, label %bb.q

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.k = add nuw nsw i32 %9, 1
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 40
  %i.n = and i64 %6, -1152920405095219201
  %i.o = or i64 %i.m, %i.n
  store i64 %i.o, ptr %5, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.p = icmp eq i32 %9, 1048574
  br i1 %i.p, label %bb.e, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !31

bb.e:                                             ; preds = %bb.d
  %i.q = or i64 %6, 1152920405095219200
  store i64 %i.q, ptr %5, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit unwind label %bb.n

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.d, %bb.c, %bb.e
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !38   ; 3 uses
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !39
  %.not.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.t = load ptr, ptr %3, align 8, !tbaa !29     ; 5 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !29
  %i.u = load i64, ptr %i.t, align 8              ; 3 uses
  %i.v = lshr i64 %i.u, 40
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = and i32 %i.w, 1048575                    ; 3 uses
  %i.y = icmp samesign ult i32 %i.x, 1048574
  br i1 %i.y, label %bb.g, label %bb.h, !prof !30

bb.g:                                             ; preds = %bb.f
  %i.z = add nuw nsw i32 %i.x, 1
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 40
  %i.ac = and i64 %i.u, -1152920405095219201
  %i.ad = or i64 %i.ab, %i.ac
  store i64 %i.ad, ptr %i.t, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = icmp eq i32 %i.x, 1048574
  br i1 %i.ae, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !31

bb.i:                                             ; preds = %bb.h
  %i.af = or i64 %i.u, 1152920405095219200
  store i64 %i.af, ptr %i.t, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %bb.o

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ah, ptr %i.d, align 8, !tbaa !38
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit

bb.j:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.r, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit unwind label %bb.o

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, %bb.j
  %i.ai = load ptr, ptr %3, align 8, !tbaa !29    ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8            ; 3 uses
  %i.ak = and i64 %i.aj, 1152920405095219200
  %.not.i.i21 = icmp eq i64 %i.ak, 1152920405095219200
  br i1 %.not.i.i21, label %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE12emplace_backIJS6_mEEERS7_DpOT_.exit, label %bb.k, !prof !31

bb.k:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit
  %i.al = add i64 %i.aj, 1152920405095219200
  %i.am = and i64 %i.al, 1152920405095219200      ; 2 uses
  %i.an = and i64 %i.aj, -1152920405095219201
  %i.ao = or disjoint i64 %i.am, %i.an
  store i64 %i.ao, ptr %i.ai, align 8
  %i.ap = icmp eq i64 %i.am, 0
  br i1 %i.ap, label %bb.l, label %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE12emplace_backIJS6_mEEERS7_DpOT_.exit, !prof !31

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE12emplace_backIJS6_mEEERS7_DpOT_.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #18
  unreachable

bb.n:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.j, %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.at, %bb.o ], [ %i.as, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.u

bb.q:                                             ; preds = %.lr.ph.split
  store ptr %12, ptr %.sroa.11.1104, align 8, !tbaa !74
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.11.1104, i64 8
  store i64 %i.j, ptr %i.au, align 8, !tbaa !75
  br label %bb.t

bb.r:                                             ; preds = %.lr.ph.split
  %i.av = ptrtoint ptr %.sroa.21.1105 to i64
  %i.aw = ptrtoint ptr %.sroa.046.1103 to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 4 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775792
  br i1 %i.ay, label %bb.s, label %_ZNKSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE12_M_check_lenEmPKc.exit.i.i23

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #22
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE12_M_check_lenEmPKc.exit.i.i23: ; preds = %bb.r
  %i.az = ashr exact i64 %i.ax, 4                 ; 3 uses
  %.sroa.speculated.i.i.i24 = call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.ba = add nsw i64 %.sroa.speculated.i.i.i24, %i.az ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.az
  %i.bc = call i64 @llvm.umin.i64(i64 %i.ba, i64 576460752303423487)
  %i.bd = select i1 %i.bb, i64 576460752303423487, i64 %i.bc ; 3 uses
  %.not.i.i.i25 = icmp ne i64 %i.bd, 0
  call void @llvm.assume(i1 %.not.i.i.i25)
  %i.be = shl nuw nsw i64 %i.bd, 4
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #21
          to label %.noexc35 unwind label %.loopexit74 ; 5 uses

.noexc35:                                         ; preds = %_ZNKSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE12_M_check_lenEmPKc.exit.i.i23
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax ; 2 uses
  store ptr %12, ptr %i.bg, align 8, !tbaa !74
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.j, ptr %i.bh, align 8, !tbaa !75
  %.not10.i.i.i.i.i26 = icmp eq ptr %.sroa.046.1103, %.sroa.21.1105
  br i1 %.not10.i.i.i.i.i26, label %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE17_M_realloc_insertIJS6_mEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.noexc35, %.lr.ph.i.i.i.i.i27
  %.012.i.i.i.i.i28 = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i27 ], [ %i.bf, %.noexc35 ] ; 2 uses
  %.0911.i.i.i.i.i29 = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i27 ], [ %.sroa.046.1103, %.noexc35 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i28, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i29, i64 16, i1 false), !alias.scope !76
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i29, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i28, i64 16 ; 2 uses
  %.not.i.i.i.i.i30 = icmp eq ptr %i.bi, %.sroa.21.1105
  br i1 %.not.i.i.i.i.i30, label %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE17_M_realloc_insertIJS6_mEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i27, !llvm.loop !70

_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE17_M_realloc_insertIJS6_mEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i27, %.noexc35
  %.0.lcssa.i.i.i.i.i32 = phi ptr [ %i.bf, %.noexc35 ], [ %i.bj, %.lr.ph.i.i.i.i.i27 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.046.1103, i64 noundef %i.ax) #23
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bd
  br label %bb.t

_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE12emplace_backIJS6_mEEERS7_DpOT_.exit: ; preds = %bb.l, %bb.k, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %.loopexit

bb.t:                                             ; preds = %bb.q, %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE17_M_realloc_insertIJS6_mEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  %.sroa.046.2.ph = phi ptr [ %.sroa.046.1103, %bb.q ], [ %i.bf, %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE17_M_realloc_insertIJS6_mEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.11.1.pn = phi ptr [ %.sroa.11.1104, %bb.q ], [ %.0.lcssa.i.i.i.i.i32, %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE17_M_realloc_insertIJS6_mEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ]
  %.sroa.21.2.ph = phi ptr [ %.sroa.21.1105, %bb.q ], [ %i.bk, %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE17_M_realloc_insertIJS6_mEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.11.2.ph = getelementptr inbounds nuw i8, ptr %.sroa.11.1.pn, i64 16 ; 2 uses
  %i.bl = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.041.0106) #20 ; 2 uses
  %.not73 = icmp eq ptr %i.bl, %i.i
  br i1 %.not73, label %.loopexit, label %.lr.ph.split

.loopexit74:                                      ; preds = %_ZNKSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE12_M_check_lenEmPKc.exit.i.i23
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit:                                        ; preds = %bb.t, %bb.b, %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE12emplace_backIJS6_mEEERS7_DpOT_.exit
  %.sroa.046.197 = phi ptr [ %.sroa.046.0, %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE12emplace_backIJS6_mEEERS7_DpOT_.exit ], [ %.sroa.046.0, %bb.b ], [ %.sroa.046.2.ph, %bb.t ] ; 4 uses
  %.sroa.11.191 = phi ptr [ %i.f, %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE12emplace_backIJS6_mEEERS7_DpOT_.exit ], [ %i.f, %bb.b ], [ %.sroa.11.2.ph, %bb.t ] ; 2 uses
  %.sroa.21.183 = phi ptr [ %.sroa.21.0, %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EE12emplace_backIJS6_mEEERS7_DpOT_.exit ], [ %.sroa.21.0, %bb.b ], [ %.sroa.21.2.ph, %bb.t ] ; 2 uses
  %i.bm = icmp eq ptr %.sroa.046.197, %.sroa.11.191
  br i1 %i.bm, label %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EED2Ev.exit, label %bb.b, !llvm.loop !71

_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EED2Ev.exit: ; preds = %.loopexit
  %i.bn = ptrtoint ptr %.sroa.21.183 to i64
  %i.bo = ptrtoint ptr %.sroa.046.197 to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.046.197, i64 noundef %i.bp) #23
  ret void

bb.u:                                             ; preds = %bb.p, %.loopexit.split-lp, %.loopexit74
  %.sroa.046.195 = phi ptr [ %.sroa.046.0, %bb.p ], [ %.sroa.046.1103, %.loopexit74 ], [ %.sroa.046.1103, %.loopexit.split-lp ] ; 2 uses
  %.sroa.21.181 = phi ptr [ %.sroa.21.0, %bb.p ], [ %.sroa.21.1105, %.loopexit74 ], [ %.sroa.21.1105, %.loopexit.split-lp ]
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %lpad.loopexit, %.loopexit74 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bq = ptrtoint ptr %.sroa.21.181 to i64
  %i.br = ptrtoint ptr %.sroa.046.195 to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.046.195, i64 noundef %i.bs) #23
  br label %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EED2Ev.exit38

_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb0EEEmESaIS7_EED2Ev.exit38: ; preds = %.thread, %bb.u
  %.pn.pn.pn72 = phi { ptr, i32 } [ %11, %.thread ], [ %.pn.pn.pn, %bb.u ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #19
  resume { ptr, i32 } %.pn.pn.pn72
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.n, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !29 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = and i64 %i.e, 1152920405095219200
  %.not.i.i.i.i.i = icmp eq i64 %i.f, 1152920405095219200
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, label %bb.b, !prof !31

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = add i64 %i.e, 1152920405095219200
  %i.h = and i64 %i.g, 1152920405095219200        ; 2 uses
  %i.i = and i64 %i.e, -1152920405095219201
  %i.j = or disjoint i64 %i.h, %i.i
  store i64 %i.j, ptr %i.d, align 8
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.c, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, !prof !31

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #18
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.o = phi ptr [ %.pr, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK4cvc58internal16NodeTemplateTrieILb1EE9getLeavesEm(ptr dead_on_unwind noalias writable sret(%"class.std::vector.5") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb1EEEmESaIS7_EE12_M_check_lenEmPKc.exit.i.i:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21
          to label %bb.a unwind label %.thread    ; 4 uses

bb.a:                                             ; preds = %_ZNKSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb1EEEmESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  store ptr %1, ptr %i.a, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.b, align 8, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.thread, %bb.a
  %.sroa.043.0 = phi ptr [ %i.a, %bb.a ], [ %.sroa.043.183, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.thread ] ; 5 uses
  %.sroa.11.0 = phi ptr [ %i.c, %bb.a ], [ %.sroa.11.177, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.thread ] ; 2 uses
  %.sroa.21.0 = phi ptr [ %i.c, %bb.a ], [ %.sroa.21.173, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.thread ] ; 5 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.11.0, i64 -16 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.f, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 2 uses
  %.not6787 = icmp eq ptr %i.h, %i.i
  br i1 %.not6787, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.11.0, i64 -8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.5.0.copyload, 0
  %i.j = add i64 %.sroa.5.0.copyload, -1          ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %3 = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %4 = load ptr, ptr %i.d, align 8, !tbaa !38     ; 3 uses
  %5 = load ptr, ptr %i.e, align 8, !tbaa !39
  %.not.i16 = icmp eq ptr %4, %5
  br i1 %.not.i16, label %bb.g, label %bb.c

.thread:                                          ; preds = %_ZNKSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb1EEEmESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb1EEEmESaIS7_EED2Ev.exit35

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %.sroa.038.091 = phi ptr [ %i.at, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit ], [ %i.h, %.lr.ph ] ; 2 uses
  %.sroa.21.190 = phi ptr [ %.sroa.21.2, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.21.0, %.lr.ph ] ; 7 uses
  %.sroa.11.189 = phi ptr [ %.sroa.11.2, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit ], [ %i.f, %.lr.ph ] ; 4 uses
  %.sroa.043.188 = phi ptr [ %.sroa.043.2, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.043.0, %.lr.ph ] ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.038.091, i64 40 ; 2 uses
  %.not.i19 = icmp eq ptr %.sroa.11.189, %.sroa.21.190
  br i1 %.not.i19, label %bb.j, label %bb.i

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.m = load ptr, ptr %3, align 8, !tbaa !29     ; 5 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !29
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = lshr i64 %i.n, 40
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = and i32 %i.p, 1048575                    ; 3 uses
  %i.r = icmp samesign ult i32 %i.q, 1048574
  br i1 %i.r, label %bb.d, label %bb.e, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.s = add nuw nsw i32 %i.q, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 40
  %i.v = and i64 %i.n, -1152920405095219201
  %i.w = or i64 %i.u, %i.v
  store i64 %i.w, ptr %i.m, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.x = icmp eq i32 %i.q, 1048574
  br i1 %i.x, label %bb.f, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, !prof !31

bb.f:                                             ; preds = %bb.e
  %i.y = or i64 %i.n, 1152920405095219200
  store i64 %i.y, ptr %i.m, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i unwind label %bb.h

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !38
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.thread

bb.g:                                             ; preds = %.lr.ph.split.us
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.thread unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph.split
  store ptr %i.l, ptr %.sroa.11.189, align 8, !tbaa !84
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.11.189, i64 8
  store i64 %i.j, ptr %i.ac, align 8, !tbaa !85
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit

bb.j:                                             ; preds = %.lr.ph.split
  %i.ad = ptrtoint ptr %.sroa.21.190 to i64
  %i.ae = ptrtoint ptr %.sroa.043.188 to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775792
  br i1 %i.ag, label %bb.k, label %_ZNKSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb1EEEmESaIS7_EE12_M_check_lenEmPKc.exit.i.i20

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #22
          to label %.noexc31 unwind label %.loopexit.split-lp

.noexc31:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb1EEEmESaIS7_EE12_M_check_lenEmPKc.exit.i.i20: ; preds = %bb.j
  %i.ah = ashr exact i64 %i.af, 4                 ; 3 uses
  %.sroa.speculated.i.i.i21 = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i21, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 576460752303423487)
  %i.al = select i1 %i.aj, i64 576460752303423487, i64 %i.ak ; 3 uses
  %.not.i.i.i22 = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i22)
  %i.am = shl nuw nsw i64 %i.al, 4
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #21
          to label %.noexc32 unwind label %.loopexit ; 5 uses

.noexc32:                                         ; preds = %_ZNKSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb1EEEmESaIS7_EE12_M_check_lenEmPKc.exit.i.i20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af ; 2 uses
  store ptr %i.l, ptr %i.ao, align 8, !tbaa !84
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.j, ptr %i.ap, align 8, !tbaa !85
  %.not10.i.i.i.i.i23 = icmp eq ptr %.sroa.043.188, %.sroa.21.190
  br i1 %.not10.i.i.i.i.i23, label %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb1EEEmESaIS7_EE17_M_realloc_insertIJS6_mEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i24

.lr.ph.i.i.i.i.i24:                               ; preds = %.noexc32, %.lr.ph.i.i.i.i.i24
  %.012.i.i.i.i.i25 = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i24 ], [ %i.an, %.noexc32 ] ; 2 uses
  %.0911.i.i.i.i.i26 = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i24 ], [ %.sroa.043.188, %.noexc32 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i25, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i26, i64 16, i1 false), !alias.scope !86
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i26, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i25, i64 16 ; 2 uses
  %.not.i.i.i.i.i27 = icmp eq ptr %i.aq, %.sroa.21.190
  br i1 %.not.i.i.i.i.i27, label %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb1EEEmESaIS7_EE17_M_realloc_insertIJS6_mEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i24, !llvm.loop !80

_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb1EEEmESaIS7_EE17_M_realloc_insertIJS6_mEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i24, %.noexc32
  %.0.lcssa.i.i.i.i.i29 = phi ptr [ %i.an, %.noexc32 ], [ %i.ar, %.lr.ph.i.i.i.i.i24 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.043.188, i64 noundef %i.af) #23
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.al
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb1EEEmESaIS7_EE17_M_realloc_insertIJS6_mEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, %bb.i
  %.sroa.043.2 = phi ptr [ %i.an, %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb1EEEmESaIS7_EE17_M_realloc_insertIJS6_mEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.sroa.043.188, %bb.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i29.pn = phi ptr [ %.0.lcssa.i.i.i.i.i29, %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb1EEEmESaIS7_EE17_M_realloc_insertIJS6_mEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.sroa.11.189, %bb.i ]
  %.sroa.21.2 = phi ptr [ %i.as, %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb1EEEmESaIS7_EE17_M_realloc_insertIJS6_mEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.sroa.21.190, %bb.i ] ; 2 uses
  %.sroa.11.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i29.pn, i64 16 ; 2 uses
  %i.at = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.038.091) #20 ; 2 uses
  %.not67 = icmp eq ptr %i.at, %i.i
  br i1 %.not67, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.thread, label %.lr.ph.split

.loopexit:                                        ; preds = %_ZNKSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb1EEEmESaIS7_EE12_M_check_lenEmPKc.exit.i.i20
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.thread: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit, %bb.b, %bb.g, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i
  %.sroa.043.183 = phi ptr [ %.sroa.043.0, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i ], [ %.sroa.043.0, %bb.g ], [ %.sroa.043.0, %bb.b ], [ %.sroa.043.2, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit ] ; 4 uses
  %.sroa.11.177 = phi ptr [ %i.f, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i ], [ %i.f, %bb.g ], [ %i.f, %bb.b ], [ %.sroa.11.2, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %.sroa.21.173 = phi ptr [ %.sroa.21.0, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i ], [ %.sroa.21.0, %bb.g ], [ %.sroa.21.0, %bb.b ], [ %.sroa.21.2, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %i.au = icmp eq ptr %.sroa.043.183, %.sroa.11.177
  br i1 %i.au, label %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb1EEEmESaIS7_EED2Ev.exit, label %bb.b, !llvm.loop !81

_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb1EEEmESaIS7_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit.thread
  %i.av = ptrtoint ptr %.sroa.21.173 to i64
  %i.aw = ptrtoint ptr %.sroa.043.183 to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.043.183, i64 noundef %i.ax) #23
  ret void

bb.l:                                             ; preds = %bb.h, %.loopexit.split-lp, %.loopexit
  %.sroa.043.181 = phi ptr [ %.sroa.043.0, %bb.h ], [ %.sroa.043.188, %.loopexit ], [ %.sroa.043.188, %.loopexit.split-lp ] ; 2 uses
  %.sroa.21.171 = phi ptr [ %.sroa.21.0, %bb.h ], [ %.sroa.21.190, %.loopexit ], [ %.sroa.21.190, %.loopexit.split-lp ]
  %.pn.pn = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ay = ptrtoint ptr %.sroa.21.171 to i64
  %i.az = ptrtoint ptr %.sroa.043.181 to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.043.181, i64 noundef %i.ba) #23
  br label %_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb1EEEmESaIS7_EED2Ev.exit35

_ZNSt6vectorISt4pairIPKN4cvc58internal16NodeTemplateTrieILb1EEEmESaIS7_EED2Ev.exit35: ; preds = %.thread, %bb.l
  %.pn.pn66 = phi { ptr, i32 } [ %i.k, %.thread ], [ %.pn.pn, %bb.l ]
  tail call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #19
  resume { ptr, i32 } %.pn.pn66
}

; Function Attrs: uwtable
define internal void @__cxx_global_var_init() #3 section ".text.startup" comdat($_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE) personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZGVN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8
  %i.c = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue4nullEv.exit, !prof !87

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #19
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue4nullEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %bb.e unwind label %bb.f       ; 3 uses

bb.e:                                             ; preds = %bb.d
  store i64 1152920405095219200, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr %i.f, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !88
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #19
  br label %_ZN4cvc58internal4expr9NodeValue4nullEv.exit

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #19
  resume { ptr, i32 } %i.h

_ZN4cvc58internal4expr9NodeValue4nullEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.i = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !88 ; 5 uses
  store ptr %i.i, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8, !tbaa !29
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = lshr i64 %i.j, 40
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = and i32 %i.l, 1048575                    ; 3 uses
  %i.n = icmp samesign ult i32 %i.m, 1048574
  br i1 %i.n, label %bb.g, label %bb.h, !prof !30

bb.g:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue4nullEv.exit
  %i.o = add nuw nsw i32 %i.m, 1
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 40
  %i.r = and i64 %i.j, -1152920405095219201
  %i.s = or i64 %i.q, %i.r
  store i64 %i.s, ptr %i.i, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit

bb.h:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue4nullEv.exit
  %i.t = icmp eq i32 %i.m, 1048574
  br i1 %i.t, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit, !prof !31

bb.i:                                             ; preds = %bb.h
  %i.u = or i64 %i.j, 1152920405095219200
  store i64 %i.u, ptr %i.i, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.v = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4cvc58internal12NodeTemplateILb1EED2Ev, ptr nonnull @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, ptr nonnull @__dso_handle) #19 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6
end_hunk_0
