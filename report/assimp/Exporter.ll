inline.NumInlined: 2188
inline.NumDeleted: 850
begin_hunk_0_@_ZN6Assimp16ExportPropertiesC2ERKS0_:bb.a
  %.not.i.i.i.i.i.i29 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i29, label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i27, !llvm.loop !120

_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i27
  store ptr %.0.i.i.i.i.i.i28, ptr %i.av, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i30 = phi ptr [ %i.ba, %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.be, %bb.l ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i30, i64 24
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not.i.i8.i.i.i.i31 = icmp eq ptr %i.be, null
  br i1 %.not.i.i8.i.i.i.i31, label %bb.m, label %bb.l, !llvm.loop !121

bb.m:                                             ; preds = %bb.l
  store ptr %.0.i.i7.i.i.i.i30, ptr %i.aw, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bg = load i64, ptr %i.bf, align 8
  store i64 %i.bg, ptr %i.ax, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  store ptr %i.ba, ptr %i.au, align 8
  br label %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEEC2ERKS8_.exit

_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEEC2ERKS8_.exit: ; preds = %bb.m, %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEEC2ERKSC_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  store i32 0, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr null, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr %i.bh, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store ptr %i.bh, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i64 0, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i33, label %_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEEC2ERKSA_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEEC2ERKS8_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %i.bo, ptr %2, align 8
  %i.bp = invoke noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFPvS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE7_M_copyILb0ENSC_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ESH_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i.i34 unwind label %bb.t ; 3 uses

.noexc.i.i34:                                     ; preds = %bb.n, %.noexc.i.i34
  %.0.i.i.i.i.i.i35 = phi ptr [ %i.br, %.noexc.i.i34 ], [ %i.bp, %bb.n ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i35, i64 16
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not.i.i.i.i.i.i36 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i36, label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFPvS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i34, !llvm.loop !120

_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFPvS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i34
  store ptr %.0.i.i.i.i.i.i35, ptr %i.bj, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFPvS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i37 = phi ptr [ %i.bp, %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFPvS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.bt, %bb.o ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i37, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not.i.i8.i.i.i.i38 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i8.i.i.i.i38, label %bb.p, label %bb.o, !llvm.loop !121

bb.p:                                             ; preds = %bb.o
  store ptr %.0.i.i7.i.i.i.i37, ptr %i.bk, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.bv = load i64, ptr %i.bu, align 8
  store i64 %i.bv, ptr %i.bl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  store ptr %i.bp, ptr %i.bi, align 8
  br label %_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEEC2ERKSA_.exit

_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEEC2ERKSA_.exit: ; preds = %bb.p, %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEEC2ERKS8_.exit
  ret void

bb.q:                                             ; preds = %bb.e
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %bb.h
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %bb.k
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.as) #30
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.t ], [ %i.by, %bb.s ]
  call void @_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ad) #30
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.bx, %bb.r ]
  call void @_ZNSt3mapIjfSt4lessIjESaISt4pairIKjfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.o) #30
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.v ], [ %i.bw, %bb.q ]
  call void @_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #30
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable

_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable

_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIjfSt4lessIjESaISt4pairIKjfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable

_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIjiSt4lessIjESaISt4pairIKjiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable

_ZNSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6Assimp16ExportProperties19SetPropertyCallbackEPKcRKSt8functionIFPvS4_EE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = tail call noundef zeroext i1 @_Z18SetGenericPropertyISt8functionIFPvS1_EEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS5_EEEPKcRKS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_Z18SetGenericPropertyISt8functionIFPvS1_EEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS5_EEEPKcRKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %3 = alloca %"class.std::function", align 8     ; 11 uses
  %4 = alloca %"struct.std::pair.90", align 8     ; 8 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_Z13SuperFastHashPKcjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #33
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = and i32 %i.c, 3
  %i.e = lshr i32 %i.c, 2                         ; 4 uses
  switch i32 %i.e, label %.lr.ph.i.preheader.new [
    i32 0, label %._crit_edge.i
    i32 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.b
  %unroll_iter = and i32 %i.e, 1073741822
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.05463.i = phi ptr [ %1, %.lr.ph.i.preheader.new ], [ %i.ac, %.lr.ph.i ] ; 5 uses
  %.05562.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ae, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.f = load i16, ptr %.05463.i, align 1
  %i.g = zext i16 %i.f to i32
  %i.h = add i32 %.05562.i, %i.g                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05463.i, i64 2
  %i.j = load i16, ptr %i.i, align 1
  %i.k = zext i16 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 11
  %i.m = shl i32 %i.h, 16
  %i.n = xor i32 %i.l, %i.m
  %i.o = xor i32 %i.n, %i.h                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05463.i, i64 4
  %i.q = lshr i32 %i.o, 11
  %i.r = add i32 %i.q, %i.o
  %i.s = load i16, ptr %i.p, align 1
  %i.t = zext i16 %i.s to i32
  %i.u = add i32 %i.r, %i.t                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05463.i, i64 6
  %i.w = load i16, ptr %i.v, align 1
  %i.x = zext i16 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 11
  %i.z = shl i32 %i.u, 16
  %i.aa = xor i32 %i.y, %i.z
  %i.ab = xor i32 %i.aa, %i.u                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05463.i, i64 8 ; 2 uses
  %i.ad = lshr i32 %i.ab, 11
  %i.ae = add i32 %i.ad, %i.ab                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !122

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.af = and i32 %i.c, 4
  %lcmp.mod.not = icmp eq i32 %i.af, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.b, %._crit_edge.loopexit.i.unr-lcssa
  %.05463.i.epil.init = phi ptr [ %1, %bb.b ], [ %i.ac, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.05562.i.epil.init = phi i32 [ 0, %bb.b ], [ %i.ae, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod32 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.ag = load i16, ptr %.05463.i.epil.init, align 1
  %i.ah = zext i16 %i.ag to i32
  %i.ai = add i32 %.05562.i.epil.init, %i.ah      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05463.i.epil.init, i64 2
  %i.ak = load i16, ptr %i.aj, align 1
  %i.al = zext i16 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 11
  %i.an = shl i32 %i.ai, 16
  %i.ao = xor i32 %i.am, %i.an
  %i.ap = xor i32 %i.ao, %i.ai                    ; 2 uses
  %i.aq = lshr i32 %i.ap, 11
  %i.ar = add i32 %i.aq, %i.ap
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa = phi i32 [ %i.ae, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.ar, %.lr.ph.i.epil.preheader ]
  %i.as = add nsw i32 %i.e, -1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 2
  %i.av = getelementptr i8, ptr %1, i64 %i.au
  %scevgep.i = getelementptr i8, ptr %i.av, i64 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %._crit_edge.loopexit.i
  %.055.lcssa.i = phi i32 [ 0, %bb.b ], [ %.lcssa, %._crit_edge.loopexit.i ] ; 4 uses
  %.054.lcssa.i = phi ptr [ %1, %bb.b ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 4 uses
  switch i32 %i.d, label %default.unreachable [
    i32 3, label %bb.c
    i32 2, label %bb.d
    i32 1, label %bb.e
    i32 0, label %bb.f
  ]

bb.c:                                             ; preds = %._crit_edge.i
  %i.aw = load i16, ptr %.054.lcssa.i, align 1
  %i.ax = zext i16 %i.aw to i32
  %i.ay = add i32 %.055.lcssa.i, %i.ax            ; 2 uses
  %i.az = shl i32 %i.ay, 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 2
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = tail call i8 @llvm.abs.i8(i8 %i.bb, i1 false)
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 18
  %i.bf = xor i32 %i.az, %i.be
  %i.bg = xor i32 %i.bf, %i.ay                    ; 2 uses
  %i.bh = lshr i32 %i.bg, 11
  %i.bi = add i32 %i.bh, %i.bg
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge.i
  %i.bj = load i16, ptr %.054.lcssa.i, align 1
  %i.bk = zext i16 %i.bj to i32
  %i.bl = add i32 %.055.lcssa.i, %i.bk            ; 2 uses
  %i.bm = shl i32 %i.bl, 11
  %i.bn = xor i32 %i.bm, %i.bl                    ; 2 uses
  %i.bo = lshr i32 %i.bn, 17
  %i.bp = add i32 %i.bo, %i.bn
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.bq = load i8, ptr %.054.lcssa.i, align 1
  %i.br = sext i8 %i.bq to i32
  %i.bs = add i32 %.055.lcssa.i, %i.br            ; 2 uses
  %i.bt = shl i32 %i.bs, 10
  %i.bu = xor i32 %i.bt, %i.bs                    ; 2 uses
  %i.bv = lshr i32 %i.bu, 1
  %i.bw = add i32 %i.bv, %i.bu
  br label %bb.f

default.unreachable:                              ; preds = %._crit_edge.i
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge.i
  %.1.i = phi i32 [ %.055.lcssa.i, %._crit_edge.i ], [ %i.bi, %bb.c ], [ %i.bp, %bb.d ], [ %i.bw, %bb.e ] ; 2 uses
  %i.bx = shl i32 %.1.i, 3
  %i.by = xor i32 %i.bx, %.1.i                    ; 2 uses
  %i.bz = lshr i32 %i.by, 5
  %i.ca = add i32 %i.bz, %i.by                    ; 2 uses
  %i.cb = shl i32 %i.ca, 4
  %i.cc = xor i32 %i.cb, %i.ca                    ; 2 uses
  %i.cd = lshr i32 %i.cc, 17
  %i.ce = add i32 %i.cd, %i.cc                    ; 2 uses
  %i.cf = shl i32 %i.ce, 25
  %i.cg = xor i32 %i.cf, %i.ce                    ; 2 uses
  %i.ch = lshr i32 %i.cg, 6
  %i.ci = add i32 %i.ch, %i.cg
  br label %_Z13SuperFastHashPKcjj.exit

_Z13SuperFastHashPKcjj.exit:                      ; preds = %bb.a, %bb.f
  %.0.i = phi i32 [ %i.ci, %bb.f ], [ 0, %bb.a ]  ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_Z13SuperFastHashPKcjj.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ck, %_Z13SuperFastHashPKcjj.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.cl, %_Z13SuperFastHashPKcjj.exit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = icmp ult i32 %i.cn, %.0.i               ; 2 uses
  %.19.i.i.i = select i1 %i.co, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.co, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFPvS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !123

_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFPvS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.cp = icmp eq ptr %.19.i.i.i, %i.cl
  br i1 %i.cp, label %_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread, label %_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit

_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFPvS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp ult i32 %.0.i, %i.cr
  br i1 %i.cs, label %_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread, label %bb.t

_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFPvS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %_Z13SuperFastHashPKcjj.exit, %_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store i32 %.0.i, ptr %4, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i8 0, i64 32, i1 false)
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt4pairIjSt8functionIFPvS1_EEEC2IjS3_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS7_S8_EEEbE4typeELb1EEERKjRKS3_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread
  %i.cx = invoke noundef zeroext i1 %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.cy = load <2 x ptr>, ptr %i.cv, align 8
  %i.cz = load ptr, ptr %i.cv, align 8
  store <2 x ptr> %i.cy, ptr %i.cu, align 8
  %.pre = load ptr, ptr %i.cj, align 8
  br label %_ZNSt4pairIjSt8functionIFPvS1_EEEC2IjS3_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS7_S8_EEEbE4typeELb1EEERKjRKS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %i.cu, align 8            ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i8, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dc = invoke noundef zeroext i1 %i.db(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i32 noundef 3)
          to label %common.resume unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #29
  unreachable

common.resume:                                    ; preds = %bb.w, %bb.x, %bb.i, %bb.j, %_ZNSt4pairIjSt8functionIFPvS1_EEED2Ev.exit10
  %common.resume.op = phi { ptr, i32 } [ %i.da, %bb.i ], [ %i.du, %_ZNSt4pairIjSt8functionIFPvS1_EEED2Ev.exit10 ], [ %i.da, %bb.j ], [ %i.ef, %bb.x ], [ %i.ef, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_ZNSt4pairIjSt8functionIFPvS1_EEEC2IjS3_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS7_S8_EEEbE4typeELb1EEERKjRKS3_.exit: ; preds = %_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread, %bb.h
  %i.df = phi ptr [ null, %_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread ], [ %i.cz, %bb.h ]
  %i.dg = phi ptr [ %i.ck, %_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread ], [ %.pre, %bb.h ] ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt4pairIjSt8functionIFPvS1_EEEC2IjS3_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS7_S8_EEEbE4typeELb1EEERKjRKS3_.exit
  %i.dh = load i32, ptr %4, align 8               ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.l ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.l ]
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = icmp ult i32 %i.dj, %i.dh               ; 2 uses
  %.19.i.i.i.i = select i1 %i.dk, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.dk, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit.i, label %bb.l, !llvm.loop !123

_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.l
  %i.dl = icmp eq ptr %.19.i.i.i.i, %i.cl
  br i1 %i.dl, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = icmp ult i32 %i.dh, %i.dn
  br i1 %i.do, label %.critedge.i, label %bb.n

.critedge.i:                                      ; preds = %bb.m, %_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit.i, %_ZNSt4pairIjSt8functionIFPvS1_EEEC2IjS3_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS7_S8_EEEbE4typeELb1EEERKjRKS3_.exit
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.m ], [ %.19.i.i.i.i, %_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEE11lower_boundERS7_.exit.i ], [ %i.cl, %_ZNSt4pairIjSt8functionIFPvS1_EEEC2IjS3_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS7_S8_EEEbE4typeELb1EEERKjRKS3_.exit ]
  %i.dp = invoke ptr @_ZNSt8_Rb_treeIjSt4pairIKjSt8functionIFPvS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE22_M_emplace_hint_uniqueIJS0_IjS5_EEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %.critedge.i._crit_edge unwind label %bb.q ; 0 uses

.critedge.i._crit_edge:                           ; preds = %.critedge.i
  %.pre19 = load ptr, ptr %i.cu, align 8
  br label %bb.n

bb.n:                                             ; preds = %.critedge.i._crit_edge, %bb.m
  %i.dq = phi ptr [ %.pre19, %.critedge.i._crit_edge ], [ %i.df, %bb.m ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i, label %_ZNSt4pairIjSt8functionIFPvS1_EEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dr = invoke noundef zeroext i1 %i.dq(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i32 noundef 3)
          to label %_ZNSt4pairIjSt8functionIFPvS1_EEED2Ev.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #29
  unreachable

_ZNSt4pairIjSt8functionIFPvS1_EEED2Ev.exit:       ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ab

bb.q:                                             ; preds = %.critedge.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  %i.dv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i9, label %_ZNSt4pairIjSt8functionIFPvS1_EEED2Ev.exit10, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dw = invoke noundef zeroext i1 %i.dv(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i32 noundef 3)
          to label %_ZNSt4pairIjSt8functionIFPvS1_EEED2Ev.exit10 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #29
  unreachable

_ZNSt4pairIjSt8functionIFPvS1_EEED2Ev.exit10:     ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %common.resume

bb.t:                                             ; preds = %_ZNSt3mapIjSt8functionIFPvS1_EESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
  %.not.i.i.not.i.i11 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.not.i.i11, label %_ZNSt8functionIFPvS0_EEC2ERKS2_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.v unwind label %bb.w       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ee = load <2 x ptr>, ptr %i.eb, align 8
  br label %_ZNSt8functionIFPvS0_EEC2ERKS2_.exit.i

bb.w:                                             ; preds = %bb.u
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = load ptr, ptr %i.ea, align 8            ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i12, label %common.resume, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eh = invoke noundef zeroext i1 %i.eg(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %common.resume unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #29
  unreachable

_ZNSt8functionIFPvS0_EEC2ERKS2_.exit.i:           ; preds = %bb.v, %bb.t
  %i.ek = phi <2 x ptr> [ splat (ptr null), %bb.t ], [ %i.ee, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.dz, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dz, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.el = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 56 ; 3 uses
  %i.em = load <2 x ptr>, ptr %i.el, align 8
  %i.en = load ptr, ptr %i.el, align 8            ; 2 uses
  store <2 x ptr> %i.em, ptr %i.ea, align 8
  store <2 x ptr> %i.ek, ptr %i.el, align 8
  %.not.i.i14 = icmp eq ptr %i.en, null
  br i1 %.not.i.i14, label %_ZNSt8functionIFPvS0_EEaSERKS2_.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt8functionIFPvS0_EEC2ERKS2_.exit.i
  %i.eo = invoke noundef zeroext i1 %i.en(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt8functionIFPvS0_EEaSERKS2_.exit unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #29
  unreachable

_ZNSt8functionIFPvS0_EEaSERKS2_.exit:             ; preds = %_ZNSt8functionIFPvS0_EEC2ERKS2_.exit.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt8functionIFPvS0_EEaSERKS2_.exit, %_ZNSt4pairIjSt8functionIFPvS1_EEED2Ev.exit
  %.0 = phi i1 [ true, %_ZNSt8functionIFPvS0_EEaSERKS2_.exit ], [ false, %_ZNSt4pairIjSt8functionIFPvS1_EEED2Ev.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6Assimp16ExportProperties19GetPropertyCallbackEPKc(ptr dead_on_unwind noalias writable sret(%"class.std::function") align 8 %0, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 8     ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_Z18GetGenericPropertyISt8functionIFPvS1_EEERKT_RKSt3mapIjS4_St4lessIjESaISt4pairIKjS4_EEEPKcS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.j       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFPvS0_EEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 2)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  store ptr %i.i, ptr %i.d, align 8
  %i.j = load ptr, ptr %i.e, align 8
  store ptr %i.j, ptr %i.c, align 8
  br label %_ZNSt8functionIFPvS0_EEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %.body unwind label %bb.g      ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #29
  unreachable

_ZNSt8functionIFPvS0_EEC2ERKS2_.exit:             ; preds = %bb.d, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt8functionIFPvS0_EEC2ERKS2_.exit
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt8functionIFPvS0_EEC2ERKS2_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.j:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.k, %bb.f ], [ %i.k, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i3 = icmp eq ptr %i.w, null
  br i1 %.not.i3, label %_ZNSt14_Function_baseD2Ev.exit4, label %bb.k

bb.k:                                             ; preds = %.body
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit4:                  ; preds = %.body, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_Z18GetGenericPropertyISt8functionIFPvS1_EEERKT_RKSt3mapIjS4_St4lessIjESaISt4pairIKjS4_EEEPKcS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_Z13SuperFastHashPKcjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #33
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = and i32 %i.c, 3
  %i.e = lshr i32 %i.c, 2                         ; 4 uses
  switch i32 %i.e, label %.lr.ph.i.preheader.new [
    i32 0, label %._crit_edge.i
    i32 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.b
  %unroll_iter = and i32 %i.e, 1073741822
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.05463.i = phi ptr [ %1, %.lr.ph.i.preheader.new ], [ %i.ac, %.lr.ph.i ] ; 5 uses
  %.05562.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ae, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.f = load i16, ptr %.05463.i, align 1
  %i.g = zext i16 %i.f to i32
  %i.h = add i32 %.05562.i, %i.g                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05463.i, i64 2
  %i.j = load i16, ptr %i.i, align 1
  %i.k = zext i16 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 11
  %i.m = shl i32 %i.h, 16
  %i.n = xor i32 %i.l, %i.m
  %i.o = xor i32 %i.n, %i.h                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05463.i, i64 4
  %i.q = lshr i32 %i.o, 11
  %i.r = add i32 %i.q, %i.o
  %i.s = load i16, ptr %i.p, align 1
  %i.t = zext i16 %i.s to i32
  %i.u = add i32 %i.r, %i.t                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05463.i, i64 6
  %i.w = load i16, ptr %i.v, align 1
  %i.x = zext i16 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 11
  %i.z = shl i32 %i.u, 16
  %i.aa = xor i32 %i.y, %i.z
  %i.ab = xor i32 %i.aa, %i.u                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05463.i, i64 8 ; 2 uses
  %i.ad = lshr i32 %i.ab, 11
  %i.ae = add i32 %i.ad, %i.ab                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !122

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.af = and i32 %i.c, 4
  %lcmp.mod.not = icmp eq i32 %i.af, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.b, %._crit_edge.loopexit.i.unr-lcssa
  %.05463.i.epil.init = phi ptr [ %1, %bb.b ], [ %i.ac, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.05562.i.epil.init = phi i32 [ 0, %bb.b ], [ %i.ae, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod12 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.ag = load i16, ptr %.05463.i.epil.init, align 1
  %i.ah = zext i16 %i.ag to i32
  %i.ai = add i32 %.05562.i.epil.init, %i.ah      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05463.i.epil.init, i64 2
  %i.ak = load i16, ptr %i.aj, align 1
  %i.al = zext i16 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 11
  %i.an = shl i32 %i.ai, 16
  %i.ao = xor i32 %i.am, %i.an
  %i.ap = xor i32 %i.ao, %i.ai                    ; 2 uses
  %i.aq = lshr i32 %i.ap, 11
  %i.ar = add i32 %i.aq, %i.ap
  br label %._crit_edge.loopexit.i

end_hunk_0
begin_hunk_1_@_Z18SetGenericPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS7_EEEPKcRKS7_:bb.a
  %i.bn = shl i32 %i.bm, 11
  %i.bo = xor i32 %i.bn, %i.bm                    ; 2 uses
  %i.bp = lshr i32 %i.bo, 17
  %i.bq = add i32 %i.bp, %i.bo
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.br = load i8, ptr %.054.lcssa.i, align 1
  %i.bs = sext i8 %i.br to i32
  %i.bt = add i32 %.055.lcssa.i, %i.bs            ; 2 uses
  %i.bu = shl i32 %i.bt, 10
  %i.bv = xor i32 %i.bu, %i.bt                    ; 2 uses
  %i.bw = lshr i32 %i.bv, 1
  %i.bx = add i32 %i.bw, %i.bv
  br label %bb.f

default.unreachable:                              ; preds = %._crit_edge.i
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge.i
  %.1.i = phi i32 [ %.055.lcssa.i, %._crit_edge.i ], [ %i.bj, %bb.c ], [ %i.bq, %bb.d ], [ %i.bx, %bb.e ] ; 2 uses
  %i.by = shl i32 %.1.i, 3
  %i.bz = xor i32 %i.by, %.1.i                    ; 2 uses
  %i.ca = lshr i32 %i.bz, 5
  %i.cb = add i32 %i.ca, %i.bz                    ; 2 uses
  %i.cc = shl i32 %i.cb, 4
  %i.cd = xor i32 %i.cc, %i.cb                    ; 2 uses
  %i.ce = lshr i32 %i.cd, 17
  %i.cf = add i32 %i.ce, %i.cd                    ; 2 uses
  %i.cg = shl i32 %i.cf, 25
  %i.ch = xor i32 %i.cg, %i.cf                    ; 2 uses
  %i.ci = lshr i32 %i.ch, 6
  %i.cj = add i32 %i.ci, %i.ch
  br label %_Z13SuperFastHashPKcjj.exit

_Z13SuperFastHashPKcjj.exit:                      ; preds = %bb.a, %bb.f
  %.0.i = phi i32 [ %i.cj, %bb.f ], [ 0, %bb.a ]  ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_Z13SuperFastHashPKcjj.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.cl, %_Z13SuperFastHashPKcjj.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.cm, %_Z13SuperFastHashPKcjj.exit ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = icmp ult i32 %i.co, %.0.i               ; 2 uses
  %.19.i.i.i = select i1 %i.cp, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.cp, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !127

_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.cq = icmp eq ptr %.19.i.i.i, %i.cm
  br i1 %i.cq, label %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit.thread, label %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit

_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = icmp ult i32 %.0.i, %i.cs
  br i1 %i.ct, label %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit.thread, label %bb.m

_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit.thread: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %_Z13SuperFastHashPKcjj.exit, %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i32 %.0.i, ptr %3, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  store ptr %i.cv, ptr %i.cu, align 8
  %i.cw = load ptr, ptr %2, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cy = load i64, ptr %i.cx, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.cy, ptr %i.a, align 8
  %i.cz = icmp ugt i64 %i.cy, 15
  br i1 %i.cz, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit.thread
  %i.da = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.da, ptr %i.cu, align 8
  %i.db = load i64, ptr %i.a, align 8
  store i64 %i.db, ptr %i.cv, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit.thread
  %i.dc = phi ptr [ %i.da, %.noexc.i.i ], [ %i.cv, %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit.thread ] ; 2 uses
  switch i64 %i.cy, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IjS5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKjRKS5_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.dd = load i8, ptr %i.cw, align 1
  store i8 %i.dd, ptr %i.dc, align 1
  br label %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IjS5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKjRKS5_.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr align 1 %i.cw, i64 %i.cy, i1 false)
  br label %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IjS5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKjRKS5_.exit

_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IjS5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKjRKS5_.exit: ; preds = %._crit_edge.i.i.i, %bb.g, %bb.h
  %i.de = load i64, ptr %i.a, align 8             ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.de, ptr %i.df, align 8
  %i.dg = load ptr, ptr %i.cu, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de
  store i8 0, ptr %i.dh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.di = load ptr, ptr %i.ck, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IjS5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKjRKS5_.exit
  %i.dj = load i32, ptr %3, align 8               ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = icmp ult i32 %i.dl, %i.dj               ; 2 uses
  %.19.i.i.i.i = select i1 %i.dm, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.dm, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i, label %bb.i, !llvm.loop !127

_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i: ; preds = %bb.i
  %i.dn = icmp eq ptr %.19.i.i.i.i, %i.cm
  br i1 %i.dn, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = icmp ult i32 %i.dj, %i.dp
  br i1 %i.dq, label %.critedge.i, label %bb.k

.critedge.i:                                      ; preds = %bb.j, %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i, %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IjS5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKjRKS5_.exit
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.j ], [ %.19.i.i.i.i, %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i ], [ %i.cm, %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IjS5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKjRKS5_.exit ]
  %i.dr = invoke ptr @_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE22_M_emplace_hint_uniqueIJS0_IjS7_EEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.k unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %bb.j, %.critedge.i
  %i.ds = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.cv
  br i1 %i.dt, label %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.du = load i64, ptr %i.cv, align 8
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #28
  br label %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.n

bb.l:                                             ; preds = %.critedge.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %i.dx = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.cv
  br i1 %i.dy, label %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %bb.l
  %i.dz = load i64, ptr %i.cv, align 8
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #28
  br label %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit10

_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit10: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.dw

bb.m:                                             ; preds = %_ZNSt3mapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIjESaISt4pairIKjS5_EEE4findERS9_.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %.0 = phi i1 [ true, %bb.m ], [ false, %_ZNSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6Assimp16ExportProperties17SetPropertyMatrixEPKcRK12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = tail call noundef zeroext i1 @_Z18SetGenericPropertyI12aiMatrix4x4tIfEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS3_EEEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2)
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_Z18SetGenericPropertyI12aiMatrix4x4tIfEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS3_EEEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2) local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.5 = alloca %class.aiMatrix4x4t, align 8  ; 6 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_Z13SuperFastHashPKcjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #33
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = and i32 %i.c, 3
  %i.e = lshr i32 %i.c, 2                         ; 4 uses
  switch i32 %i.e, label %.lr.ph.i.preheader.new [
    i32 0, label %._crit_edge.i
    i32 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.b
  %unroll_iter = and i32 %i.e, 1073741822
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.05463.i = phi ptr [ %1, %.lr.ph.i.preheader.new ], [ %i.ac, %.lr.ph.i ] ; 5 uses
  %.05562.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ae, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.f = load i16, ptr %.05463.i, align 1
  %i.g = zext i16 %i.f to i32
  %i.h = add i32 %.05562.i, %i.g                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05463.i, i64 2
  %i.j = load i16, ptr %i.i, align 1
  %i.k = zext i16 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 11
  %i.m = shl i32 %i.h, 16
  %i.n = xor i32 %i.l, %i.m
  %i.o = xor i32 %i.n, %i.h                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05463.i, i64 4
  %i.q = lshr i32 %i.o, 11
  %i.r = add i32 %i.q, %i.o
  %i.s = load i16, ptr %i.p, align 1
  %i.t = zext i16 %i.s to i32
  %i.u = add i32 %i.r, %i.t                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05463.i, i64 6
  %i.w = load i16, ptr %i.v, align 1
  %i.x = zext i16 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 11
  %i.z = shl i32 %i.u, 16
  %i.aa = xor i32 %i.y, %i.z
  %i.ab = xor i32 %i.aa, %i.u                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05463.i, i64 8 ; 2 uses
  %i.ad = lshr i32 %i.ab, 11
  %i.ae = add i32 %i.ad, %i.ab                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !122

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.af = and i32 %i.c, 4
  %lcmp.mod.not = icmp eq i32 %i.af, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.b, %._crit_edge.loopexit.i.unr-lcssa
  %.05463.i.epil.init = phi ptr [ %1, %bb.b ], [ %i.ac, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.05562.i.epil.init = phi i32 [ 0, %bb.b ], [ %i.ae, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod21 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.ag = load i16, ptr %.05463.i.epil.init, align 1
  %i.ah = zext i16 %i.ag to i32
  %i.ai = add i32 %.05562.i.epil.init, %i.ah      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05463.i.epil.init, i64 2
  %i.ak = load i16, ptr %i.aj, align 1
  %i.al = zext i16 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 11
  %i.an = shl i32 %i.ai, 16
  %i.ao = xor i32 %i.am, %i.an
  %i.ap = xor i32 %i.ao, %i.ai                    ; 2 uses
  %i.aq = lshr i32 %i.ap, 11
  %i.ar = add i32 %i.aq, %i.ap
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa = phi i32 [ %i.ae, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.ar, %.lr.ph.i.epil.preheader ]
  %i.as = add nsw i32 %i.e, -1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 2
  %i.av = getelementptr i8, ptr %1, i64 %i.au
  %scevgep.i = getelementptr i8, ptr %i.av, i64 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %._crit_edge.loopexit.i
  %.055.lcssa.i = phi i32 [ 0, %bb.b ], [ %.lcssa, %._crit_edge.loopexit.i ] ; 4 uses
  %.054.lcssa.i = phi ptr [ %1, %bb.b ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 4 uses
  switch i32 %i.d, label %default.unreachable [
    i32 3, label %bb.c
    i32 2, label %bb.d
    i32 1, label %bb.e
    i32 0, label %bb.f
  ]

bb.c:                                             ; preds = %._crit_edge.i
  %i.aw = load i16, ptr %.054.lcssa.i, align 1
  %i.ax = zext i16 %i.aw to i32
  %i.ay = add i32 %.055.lcssa.i, %i.ax            ; 2 uses
  %i.az = shl i32 %i.ay, 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 2
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = tail call i8 @llvm.abs.i8(i8 %i.bb, i1 false)
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 18
  %i.bf = xor i32 %i.az, %i.be
  %i.bg = xor i32 %i.bf, %i.ay                    ; 2 uses
  %i.bh = lshr i32 %i.bg, 11
  %i.bi = add i32 %i.bh, %i.bg
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge.i
  %i.bj = load i16, ptr %.054.lcssa.i, align 1
  %i.bk = zext i16 %i.bj to i32
  %i.bl = add i32 %.055.lcssa.i, %i.bk            ; 2 uses
  %i.bm = shl i32 %i.bl, 11
  %i.bn = xor i32 %i.bm, %i.bl                    ; 2 uses
  %i.bo = lshr i32 %i.bn, 17
  %i.bp = add i32 %i.bo, %i.bn
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.bq = load i8, ptr %.054.lcssa.i, align 1
  %i.br = sext i8 %i.bq to i32
  %i.bs = add i32 %.055.lcssa.i, %i.br            ; 2 uses
  %i.bt = shl i32 %i.bs, 10
  %i.bu = xor i32 %i.bt, %i.bs                    ; 2 uses
  %i.bv = lshr i32 %i.bu, 1
  %i.bw = add i32 %i.bv, %i.bu
  br label %bb.f

default.unreachable:                              ; preds = %._crit_edge.i
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge.i
  %.1.i = phi i32 [ %.055.lcssa.i, %._crit_edge.i ], [ %i.bi, %bb.c ], [ %i.bp, %bb.d ], [ %i.bw, %bb.e ] ; 2 uses
  %i.bx = shl i32 %.1.i, 3
  %i.by = xor i32 %i.bx, %.1.i                    ; 2 uses
  %i.bz = lshr i32 %i.by, 5
  %i.ca = add i32 %i.bz, %i.by                    ; 2 uses
  %i.cb = shl i32 %i.ca, 4
  %i.cc = xor i32 %i.cb, %i.ca                    ; 2 uses
  %i.cd = lshr i32 %i.cc, 17
  %i.ce = add i32 %i.cd, %i.cc                    ; 2 uses
  %i.cf = shl i32 %i.ce, 25
  %i.cg = xor i32 %i.cf, %i.ce                    ; 2 uses
  %i.ch = lshr i32 %i.cg, 6
  %i.ci = add i32 %i.ch, %i.cg
  br label %_Z13SuperFastHashPKcjj.exit

_Z13SuperFastHashPKcjj.exit:                      ; preds = %bb.a, %bb.f
  %.0.i = phi i32 [ %i.ci, %bb.f ], [ 0, %bb.a ]  ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %.not10.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not10.i.i.i, label %.thread15, label %.lr.ph.i.i.i

.thread15:                                        ; preds = %_Z13SuperFastHashPKcjj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 64, i1 false)
  br label %.critedge.i

.lr.ph.i.i.i:                                     ; preds = %_Z13SuperFastHashPKcjj.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ck, %_Z13SuperFastHashPKcjj.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.cl, %_Z13SuperFastHashPKcjj.exit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = icmp ult i32 %i.cn, %.0.i               ; 2 uses
  %.19.i.i.i = select i1 %i.co, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.co, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !128

_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.cp = icmp eq ptr %.19.i.i.i, %i.cl
  br i1 %i.cp, label %.lr.ph.i.i.i.i, label %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit

_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp ult i32 %.0.i, %i.cr
  br i1 %i.cs, label %.lr.ph.i.i.i.i, label %bb.m

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 64, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.g ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.g ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = icmp ult i32 %i.cu, %.0.i               ; 2 uses
  %.19.i.i.i.i = select i1 %i.cv, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.cv, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i, label %bb.g, !llvm.loop !128

_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i: ; preds = %bb.g
  %i.cw = icmp eq ptr %.19.i.i.i.i, %i.cl
  br i1 %i.cw, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = icmp ult i32 %.0.i, %i.cy
  br i1 %i.cz, label %.critedge.i, label %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE6insertIS4_IjS1_EEENSt9enable_ifIXsr16is_constructibleIS6_T_EE5valueES4_ISt17_Rb_tree_iteratorIS6_EbEE4typeEOSC_.exit

.critedge.i:                                      ; preds = %.thread15, %bb.h, %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.h ], [ %.19.i.i.i.i, %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i ], [ %i.cl, %.thread15 ]
  %i.da = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #31 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32 ; 3 uses
  store i32 %.0.i, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.dc, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, i64 64, i1 false)
  %i.dd = invoke { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 4 dereferenceable(4) %i.db)
          to label %bb.i unwind label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.i:                                             ; preds = %.critedge.i
  %i.de = extractvalue { ptr, ptr } %i.dd, 1      ; 4 uses
  %.not.i7 = icmp eq ptr %i.de, null
  br i1 %.not.i7, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.df = extractvalue { ptr, ptr } %i.dd, 0
  %.not.i.i.i8 = icmp ne ptr %i.df, null
  %i.dg = icmp eq ptr %i.de, %i.cl
  %or.cond.i.i.i = select i1 %.not.i.i.i8, i1 true, i1 %i.dg
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.di = load i32, ptr %i.db, align 4
  %i.dj = load i32, ptr %i.dh, align 4
  %i.dk = icmp ult i32 %i.di, %i.dj
  br label %.thread.i

.thread.i:                                        ; preds = %bb.k, %bb.j
  %i.dl = phi i1 [ %i.dk, %bb.k ], [ true, %bb.j ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dl, ptr noundef nonnull %i.da, ptr noundef nonnull %i.de, ptr noundef nonnull align 8 dereferenceable(32) %i.cl) #30
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8
  br label %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE6insertIS4_IjS1_EEENSt9enable_ifIXsr16is_constructibleIS6_T_EE5valueES4_ISt17_Rb_tree_iteratorIS6_EbEE4typeEOSC_.exit

_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 104) #28
  resume { ptr, i32 } %i.dp

bb.l:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 104) #28
  br label %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE6insertIS4_IjS1_EEENSt9enable_ifIXsr16is_constructibleIS6_T_EE5valueES4_ISt17_Rb_tree_iteratorIS6_EbEE4typeEOSC_.exit

_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE6insertIS4_IjS1_EEENSt9enable_ifIXsr16is_constructibleIS6_T_EE5valueES4_ISt17_Rb_tree_iteratorIS6_EbEE4typeEOSC_.exit: ; preds = %bb.l, %.thread.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.dq, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 64, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE6insertIS4_IjS1_EEENSt9enable_ifIXsr16is_constructibleIS6_T_EE5valueES4_ISt17_Rb_tree_iteratorIS6_EbEE4typeEOSC_.exit
  %.0 = phi i1 [ true, %bb.m ], [ false, %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE6insertIS4_IjS1_EEENSt9enable_ifIXsr16is_constructibleIS6_T_EE5valueES4_ISt17_Rb_tree_iteratorIS6_EbEE4typeEOSC_.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6Assimp16ExportProperties18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %2, ptr %i.a, align 4
  %i.b = call noundef nonnull align 4 dereferenceable(4) ptr @_Z18GetGenericPropertyIiERKT_RKSt3mapIjS0_St4lessIjESaISt4pairIKjS0_EEEPKcS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.c = load i32, ptr %i.b, align 4
  ret i32 %i.c
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_Z18GetGenericPropertyIiERKT_RKSt3mapIjS0_St4lessIjESaISt4pairIKjS0_EEEPKcS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_Z13SuperFastHashPKcjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #33
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = and i32 %i.c, 3
  %i.e = lshr i32 %i.c, 2                         ; 4 uses
  switch i32 %i.e, label %.lr.ph.i.preheader.new [
    i32 0, label %._crit_edge.i
    i32 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.b
  %unroll_iter = and i32 %i.e, 1073741822
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.05463.i = phi ptr [ %1, %.lr.ph.i.preheader.new ], [ %i.ac, %.lr.ph.i ] ; 5 uses
  %.05562.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ae, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.f = load i16, ptr %.05463.i, align 1
  %i.g = zext i16 %i.f to i32
  %i.h = add i32 %.05562.i, %i.g                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05463.i, i64 2
  %i.j = load i16, ptr %i.i, align 1
  %i.k = zext i16 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 11
  %i.m = shl i32 %i.h, 16
  %i.n = xor i32 %i.l, %i.m
  %i.o = xor i32 %i.n, %i.h                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05463.i, i64 4
  %i.q = lshr i32 %i.o, 11
  %i.r = add i32 %i.q, %i.o
  %i.s = load i16, ptr %i.p, align 1
  %i.t = zext i16 %i.s to i32
  %i.u = add i32 %i.r, %i.t                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05463.i, i64 6
  %i.w = load i16, ptr %i.v, align 1
  %i.x = zext i16 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 11
  %i.z = shl i32 %i.u, 16
  %i.aa = xor i32 %i.y, %i.z
  %i.ab = xor i32 %i.aa, %i.u                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05463.i, i64 8 ; 2 uses
  %i.ad = lshr i32 %i.ab, 11
  %i.ae = add i32 %i.ad, %i.ab                    ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !122

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.af = and i32 %i.c, 4
  %lcmp.mod.not = icmp eq i32 %i.af, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.b, %._crit_edge.loopexit.i.unr-lcssa
  %.05463.i.epil.init = phi ptr [ %1, %bb.b ], [ %i.ac, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.05562.i.epil.init = phi i32 [ 0, %bb.b ], [ %i.ae, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod12 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.ag = load i16, ptr %.05463.i.epil.init, align 1
  %i.ah = zext i16 %i.ag to i32
  %i.ai = add i32 %.05562.i.epil.init, %i.ah      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05463.i.epil.init, i64 2
  %i.ak = load i16, ptr %i.aj, align 1
  %i.al = zext i16 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 11
  %i.an = shl i32 %i.ai, 16
  %i.ao = xor i32 %i.am, %i.an
  %i.ap = xor i32 %i.ao, %i.ai                    ; 2 uses
  %i.aq = lshr i32 %i.ap, 11
  %i.ar = add i32 %i.aq, %i.ap
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa = phi i32 [ %i.ae, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.ar, %.lr.ph.i.epil.preheader ]
  %i.as = add nsw i32 %i.e, -1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 2
  %i.av = getelementptr i8, ptr %1, i64 %i.au
  %scevgep.i = getelementptr i8, ptr %i.av, i64 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %._crit_edge.loopexit.i
  %.055.lcssa.i = phi i32 [ 0, %bb.b ], [ %.lcssa, %._crit_edge.loopexit.i ] ; 4 uses
  %.054.lcssa.i = phi ptr [ %1, %bb.b ], [ %scevgep.i, %._crit_edge.loopexit.i ] ; 4 uses
  switch i32 %i.d, label %default.unreachable [
    i32 3, label %bb.c
    i32 2, label %bb.d
    i32 1, label %bb.e
    i32 0, label %bb.f
  ]

bb.c:                                             ; preds = %._crit_edge.i
  %i.aw = load i16, ptr %.054.lcssa.i, align 1
  %i.ax = zext i16 %i.aw to i32
  %i.ay = add i32 %.055.lcssa.i, %i.ax            ; 2 uses
  %i.az = shl i32 %i.ay, 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 2
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = tail call i8 @llvm.abs.i8(i8 %i.bb, i1 false)
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 18
  %i.bf = xor i32 %i.az, %i.be
  %i.bg = xor i32 %i.bf, %i.ay                    ; 2 uses
  %i.bh = lshr i32 %i.bg, 11
  %i.bi = add i32 %i.bh, %i.bg
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge.i
  %i.bj = load i16, ptr %.054.lcssa.i, align 1
  %i.bk = zext i16 %i.bj to i32
  %i.bl = add i32 %.055.lcssa.i, %i.bk            ; 2 uses
  %i.bm = shl i32 %i.bl, 11
  %i.bn = xor i32 %i.bm, %i.bl                    ; 2 uses
  %i.bo = lshr i32 %i.bn, 17
  %i.bp = add i32 %i.bo, %i.bn
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.bq = load i8, ptr %.054.lcssa.i, align 1
  %i.br = sext i8 %i.bq to i32
  %i.bs = add i32 %.055.lcssa.i, %i.br            ; 2 uses
  %i.bt = shl i32 %i.bs, 10
  %i.bu = xor i32 %i.bt, %i.bs                    ; 2 uses
  %i.bv = lshr i32 %i.bu, 1
  %i.bw = add i32 %i.bv, %i.bu
  br label %bb.f

default.unreachable:                              ; preds = %._crit_edge.i
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge.i
  %.1.i = phi i32 [ %.055.lcssa.i, %._crit_edge.i ], [ %i.bi, %bb.c ], [ %i.bp, %bb.d ], [ %i.bw, %bb.e ] ; 2 uses
  %i.bx = shl i32 %.1.i, 3
  %i.by = xor i32 %i.bx, %.1.i                    ; 2 uses
  %i.bz = lshr i32 %i.by, 5
  %i.ca = add i32 %i.bz, %i.by                    ; 2 uses
  %i.cb = shl i32 %i.ca, 4
  %i.cc = xor i32 %i.cb, %i.ca                    ; 2 uses
  %i.cd = lshr i32 %i.cc, 17
  %i.ce = add i32 %i.cd, %i.cc                    ; 2 uses
  %i.cf = shl i32 %i.ce, 25
  %i.cg = xor i32 %i.cf, %i.ce                    ; 2 uses
  %i.ch = lshr i32 %i.cg, 6
  %i.ci = add i32 %i.ch, %i.cg
  br label %_Z13SuperFastHashPKcjj.exit

_Z13SuperFastHashPKcjj.exit:                      ; preds = %bb.a, %bb.f
  %.0.i = phi i32 [ %i.ci, %bb.f ], [ 0, %bb.a ]  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIjiSt4lessIjESaISt4pairIKjiEEE4findERS3_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_Z13SuperFastHashPKcjj.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ck, %_Z13SuperFastHashPKcjj.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.cl, %_Z13SuperFastHashPKcjj.exit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = icmp ult i32 %i.cn, %.0.i               ; 2 uses
  %.19.i.i.i = select i1 %i.co, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.co, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !129

_ZNKSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.cp = icmp eq ptr %.19.i.i.i, %i.cl
  br i1 %i.cp, label %_ZNKSt3mapIjiSt4lessIjESaISt4pairIKjiEEE4findERS3_.exit.thread, label %_ZNKSt3mapIjiSt4lessIjESaISt4pairIKjiEEE4findERS3_.exit

_ZNKSt3mapIjiSt4lessIjESaISt4pairIKjiEEE4findERS3_.exit: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp ult i32 %.0.i, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %spec.select = select i1 %i.cs, ptr %2, ptr %i.ct
  br label %_ZNKSt3mapIjiSt4lessIjESaISt4pairIKjiEEE4findERS3_.exit.thread

_ZNKSt3mapIjiSt4lessIjESaISt4pairIKjiEEE4findERS3_.exit.thread: ; preds = %_ZNKSt3mapIjiSt4lessIjESaISt4pairIKjiEEE4findERS3_.exit, %_ZNKSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %_Z13SuperFastHashPKcjj.exit
  %.0 = phi ptr [ %2, %_ZNKSt8_Rb_treeIjSt4pairIKjiESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i ], [ %spec.select, %_ZNKSt3mapIjiSt4lessIjESaISt4pairIKjiEEE4findERS3_.exit ], [ %2, %_Z13SuperFastHashPKcjj.exit ]
end_hunk_1
