Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1284
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE22_M_emplace_hint_uniqueIJS2_S9_EEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_:bb.a
  %i.ae = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !66
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.ai = tail call i32 @memcmp(ptr noundef %i.ah, ptr noundef %i.ag, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #50 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.aj = sub i64 %i.ab, %i.ad
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.aj, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i

_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ai, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ak = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i
  %i.al = phi i1 [ %i.ak, %_ZNKSt4lessIvEclIRKN4toml2v33keyES6_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOS7_OS8_.exit.i.i ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.al, ptr noundef nonnull %i.a, ptr noundef nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #50
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !157
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !157
  br label %_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a) #50
  resume { ptr, i32 } %i.ap

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a) #50
  br label %_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeD2Ev.exit8: ; preds = %.thread, %bb.g
  %.sroa.014.018 = phi ptr [ %i.a, %.thread ], [ %i.x, %bb.g ]
  ret ptr %.sroa.014.018
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull align 8 dereferenceable(16) ptr @_ZNK12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE11source_pathB5cxx11Ev(ptr nofree noundef nonnull readnone align 32 captures(ret: address, provenance) dereferenceable(896) %0) unnamed_addr #44 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE9read_nextEv(ptr noundef nonnull align 32 dereferenceable(896) %0) unnamed_addr #26 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 32               ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.d = load i64, ptr %i.c, align 32, !tbaa !918 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 8 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !348  ; 2 uses
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !306  ; 4 uses
  %i.k = load i64, ptr %i.h, align 8, !tbaa !324  ; 3 uses
  %.not2 = icmp ult i64 %i.j, %i.k
  br i1 %.not2, label %bb.c, label %.critedge, !prof !168

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.l = add i64 %i.j, 32                         ; 2 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.k) ; 2 uses
  %i.m = sub i64 %.sroa.speculated.i.i, %i.j      ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !323
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 32 %i.a, ptr align 1 %i.p, i64 %i.m, i1 false)
  store i64 %.sroa.speculated.i.i, ptr %i.i, align 8, !tbaa !306
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(800) %i.b, i8 0, i64 800, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !349  ; 2 uses
  switch i32 %i.r, label %.lr.ph54.i [
    i32 12, label %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit26.thread.i
    i32 0, label %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit26.thread.i
  ]

_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit26.thread.i: ; preds = %bb.c, %bb.c
  %i.s = ptrtoaddr ptr %i.a to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  %i.u = and i64 %i.m, -16                        ; 2 uses
  %.not.i34.i = icmp eq i64 %i.u, 0
  br i1 %.not.i34.i, label %bb.d, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit26.thread.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.u
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.w = bitcast <2 x i64> %i.aa to <16 x i8>
  %i.x = icmp slt <16 x i8> %i.w, zeroinitializer
  %i.y = bitcast <16 x i1> %i.x to i16
  %.not32.i.i = icmp eq i16 %i.y, 0
  br i1 %.not32.i.i, label %._crit_edge._crit_edge.i.i, label %.lr.ph54.i

._crit_edge._crit_edge.i.i:                       ; preds = %._crit_edge.i.i
  %.pre.i.i = ptrtoaddr ptr %i.ab to i64
  br label %bb.d

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.02634.i.i = phi <2 x i64> [ %i.aa, %.lr.ph.i.i ], [ zeroinitializer, %.lr.ph.preheader.i.i ]
  %.02733.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.a, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.z = load <2 x i64>, ptr %.02733.i.i, align 1, !tbaa !69
  %i.aa = or <2 x i64> %i.z, %.02634.i.i          ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02733.i.i, i64 16 ; 4 uses
  %i.ac = icmp ult ptr %i.ab, %i.v
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !28

bb.d:                                             ; preds = %._crit_edge._crit_edge.i.i, %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit26.thread.i
  %.22943.pre-phi.i.i = phi i64 [ %.pre.i.i, %._crit_edge._crit_edge.i.i ], [ %i.s, %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit26.thread.i ]
  %.229.i.i = phi ptr [ %i.ab, %._crit_edge._crit_edge.i.i ], [ %i.a, %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit26.thread.i ] ; 3 uses
  %i.ad = icmp ult ptr %.229.i.i, %i.t
  br i1 %i.ad, label %.lr.ph38.preheader.i.i, label %.lr.ph.preheader.i

.lr.ph38.preheader.i.i:                           ; preds = %bb.d
  %i.ae = add i64 %i.m, %i.s
  %i.af = sub i64 %i.ae, %.22943.pre-phi.i.i
  %scevgep.i.i = getelementptr i8, ptr %.229.i.i, i64 %i.af
  br label %.lr.ph38.i.i

bb.e:                                             ; preds = %.lr.ph38.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.33036.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.ag, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph.preheader.i, label %.lr.ph38.i.i, !llvm.loop !29

.lr.ph38.i.i:                                     ; preds = %bb.e, %.lr.ph38.preheader.i.i
  %.33036.i.i = phi ptr [ %i.ag, %bb.e ], [ %.229.i.i, %.lr.ph38.preheader.i.i ] ; 2 uses
  %i.ah = load i8, ptr %.33036.i.i, align 1, !tbaa !69
  %i.ai = icmp sgt i8 %i.ah, -1
  br i1 %i.ai, label %bb.e, label %.lr.ph54.i

.lr.ph.preheader.i:                               ; preds = %bb.e, %bb.d
  store i32 0, ptr %i.q, align 8, !tbaa !349
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.aj, align 8, !tbaa !312
  store i64 %i.m, ptr %i.e, align 8, !tbaa !348
  %umax.i = call i64 @llvm.umax.i64(i64 %i.m, i64 1) ; 3 uses
  %xtraiter = and i64 %umax.i, 1
  %i.ak = icmp ult i64 %i.m, 2
  br i1 %i.ak, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %umax.i, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.02352.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.ay, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.02352.i ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02352.i
  %i.an = load i8, ptr %i.am, align 2, !tbaa !69  ; 2 uses
  %i.ao = sext i8 %i.an to i32
  store i32 %i.ao, ptr %i.al, align 16, !tbaa !334
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i8 %i.an, ptr %i.ap, align 4, !tbaa !69
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 1, ptr %i.aq, align 8, !tbaa !246
  %i.ar = or disjoint i64 %.02352.i, 1            ; 2 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ar
  %i.au = load i8, ptr %i.at, align 1, !tbaa !69  ; 2 uses
  %i.av = sext i8 %i.au to i32
  store i32 %i.av, ptr %i.as, align 8, !tbaa !334
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i8 %i.au, ptr %i.aw, align 4, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 1, ptr %i.ax, align 16, !tbaa !246
  %i.ay = add nuw nsw i64 %.02352.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i40.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !916

.lr.ph54.i:                                       ; preds = %.lr.ph38.i.i, %._crit_edge.i.i, %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %.promoted58.i = load i32, ptr %i.az, align 4
  %umax69.i = call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  br label %bb.g

bb.f:                                             ; preds = %bb.o
  store i32 %i.cb, ptr %i.q, align 8, !tbaa !349
  store i32 %i.bv, ptr %i.az, align 4, !tbaa !350
  %i.bc = icmp uge i64 %i.l, %i.k
  %i.bd = freeze i1 %i.bc
  %cond.i = icmp ne i8 %i.ca, 0
  %or.cond.not.i = and i1 %i.bd, %cond.i
  br i1 %or.cond.not.i, label %bb.p, label %..lr.ph.i40.i_crit_edge, !prof !339

..lr.ph.i40.i_crit_edge:                          ; preds = %bb.f
  %.pre = load i64, ptr %i.e, align 8, !tbaa !348
  br label %.lr.ph.i40.i

bb.g:                                             ; preds = %bb.o, %.lr.ph54.i
  %i.be = phi i32 [ %.promoted58.i, %.lr.ph54.i ], [ %i.bv, %bb.o ]
  %i.bf = phi i32 [ %i.r, %.lr.ph54.i ], [ %i.cb, %bb.o ] ; 3 uses
  %.02253.i = phi i64 [ 0, %.lr.ph54.i ], [ %i.dc, %bb.o ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02253.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !69  ; 4 uses
  %i.bi = icmp ne i32 %i.bf, 12
  call void @llvm.assume(i1 %i.bi)
  %i.bj = zext i8 %i.bh to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !69  ; 2 uses
  %i.bm = icmp eq i32 %i.bf, 0
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = zext i8 %i.bl to i32                    ; 2 uses
  %i.bo = lshr i32 255, %i.bn
  %i.bp = zext i8 %i.bh to i32
  %i.bq = and i32 %i.bo, %i.bp
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit.i

bb.i:                                             ; preds = %bb.g
  %i.br = and i8 %i.bh, 63
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = shl i32 %i.be, 6
  %i.bu = or disjoint i32 %i.bt, %i.bs
  %.pre.i35.i = zext i8 %i.bl to i32
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit.i

_ZN4toml2v34impl12utf8_decoderclEh.exit.i:        ; preds = %bb.i, %bb.h
  %.pre-phi.i.i = phi i32 [ %.pre.i35.i, %bb.i ], [ %i.bn, %bb.h ]
  %i.bv = phi i32 [ %i.bu, %bb.i ], [ %i.bq, %bb.h ] ; 5 uses
  %i.bw = add i32 %i.bf, 256
  %i.bx = add i32 %i.bw, %.pre-phi.i.i
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !69  ; 4 uses
  %i.cb = zext i8 %i.ca to i32                    ; 4 uses
  %i.cc = icmp eq i8 %i.ca, 12
  br i1 %i.cc, label %bb.j, label %bb.k, !prof !155

bb.j:                                             ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit.i
  store i32 %i.cb, ptr %i.q, align 8, !tbaa !349
  store i32 %i.bv, ptr %i.az, align 4, !tbaa !350
  call fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE15read_next_blockEvENKUlvE_clEv(ptr nonnull align 32 dereferenceable(896) %0) #50
  %i.cd = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.ce = load i64, ptr %i.e, align 8, !tbaa !348 ; 2 uses
  %.not.i36.i = icmp eq i64 %i.ce, 0
  %i.cf = getelementptr [24 x i8], ptr %0, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 56
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ci = select i1 %.not.i36.i, ptr %i.ch, ptr %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef @.str.223, ptr noundef nonnull align 4 dereferenceable(8) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #50
  call void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

bb.k:                                             ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit.i
  %i.ck = load i64, ptr %i.bb, align 8, !tbaa !312 ; 2 uses
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.bb, align 8, !tbaa !312
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ck
  store i8 %i.bh, ptr %i.cm, align 1, !tbaa !69
  %1 = icmp eq i8 %i.ca, 0
  br i1 %1, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cn = load i64, ptr %i.e, align 8, !tbaa !348 ; 2 uses
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %i.e, align 8, !tbaa !348
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.cn ; 3 uses
  store i32 %i.bv, ptr %i.cp, align 8, !tbaa !334
  %i.cq = load i64, ptr %i.bb, align 8, !tbaa !312 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !246
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cs, ptr nonnull align 16 %i.ba, i64 %i.cq, i1 false)
  store i64 0, ptr %i.bb, align 8, !tbaa !312
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.ct = load i64, ptr %i.bb, align 8, !tbaa !312
  %i.cu = icmp eq i64 %i.ct, 4
  br i1 %i.cu, label %bb.n, label %bb.o, !prof !155

bb.n:                                             ; preds = %bb.m
  store i32 %i.cb, ptr %i.q, align 8, !tbaa !349
  store i32 %i.bv, ptr %i.az, align 4, !tbaa !350
  call fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE15read_next_blockEvENKUlvE_clEv(ptr nonnull align 32 dereferenceable(896) %0) #50
  %i.cv = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.cw = load i64, ptr %i.e, align 8, !tbaa !348 ; 2 uses
  %.not.i37.i = icmp eq i64 %i.cw, 0
  %i.cx = getelementptr [24 x i8], ptr %0, i64 %i.cw
  %i.cy = getelementptr i8, ptr %i.cx, i64 56
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.da = select i1 %.not.i37.i, ptr %i.cz, ptr %i.cy
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.cv, ptr noundef @.str.224, ptr noundef nonnull align 4 dereferenceable(8) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.db) #50
  call void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.dc = add nuw nsw i64 %.02253.i, 1            ; 2 uses
  %exitcond70.not.i = icmp eq i64 %i.dc, %umax69.i
  br i1 %exitcond70.not.i, label %bb.f, label %bb.g, !llvm.loop !917

bb.p:                                             ; preds = %bb.f
  call fastcc void @_ZZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE15read_next_blockEvENKUlvE_clEv(ptr nonnull align 32 dereferenceable(896) %0) #50
  %i.dd = call ptr @__cxa_allocate_exception(i64 48) #50 ; 2 uses
  %i.de = load i64, ptr %i.e, align 8, !tbaa !348 ; 2 uses
  %.not.i38.i = icmp eq i64 %i.de, 0
  %i.df = getelementptr [24 x i8], ptr %0, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 56
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.di = select i1 %.not.i38.i, ptr %i.dh, ptr %i.dg
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 864
  call void @_ZN4toml2v32ex11parse_errorC2EPKcRKNS0_15source_positionERKSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.dd, ptr noundef @.str.221, ptr noundef nonnull align 4 dereferenceable(8) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #50
  call void @__cxa_throw(ptr nonnull %i.dd, ptr nonnull @_ZTIN4toml2v32ex11parse_errorE, ptr nonnull @_ZN4toml2v32ex11parse_errorD2Ev) #54
  unreachable

.lr.ph.i40.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i40.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i40.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.02352.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ay, %.lr.ph.i40.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod64 = trunc i64 %umax.i to i1
  call void @llvm.assume(i1 %lcmp.mod64)
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.02352.i.epil.init ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02352.i.epil.init
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !69  ; 2 uses
  %i.dn = sext i8 %i.dm to i32
  store i32 %i.dn, ptr %i.dk, align 8, !tbaa !334
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store i8 %i.dm, ptr %i.do, align 4, !tbaa !69
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 1, ptr %i.dp, align 8, !tbaa !246
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i.epil.preheader, %.lr.ph.i40.i.loopexit.unr-lcssa, %..lr.ph.i40.i_crit_edge
  %i.dq = phi i64 [ %.pre, %..lr.ph.i40.i_crit_edge ], [ %i.m, %.lr.ph.i40.i.loopexit.unr-lcssa ], [ %i.m, %.lr.ph.i.epil.preheader ] ; 3 uses
  %i.dr = icmp ne i64 %i.dq, 0
  call void @llvm.assume(i1 %i.dr)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph.i40.i
  %.01.i.i = phi i64 [ 0, %.lr.ph.i40.i ], [ %i.ee, %bb.t ] ; 2 uses
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.01.i.i ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load i64, ptr %i.ds, align 32           ; 3 uses
  store i64 %i.dw, ptr %i.dv, align 8
  %i.dx = load i32, ptr %i.du, align 8, !tbaa !241
  %i.dy = icmp eq i32 %i.dx, 10
  br i1 %i.dy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dz = trunc i64 %i.dw to i32
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr %i.ds, align 32, !tbaa !351
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.eb = lshr i64 %i.dw, 32
  %i.ec = trunc nuw i64 %i.eb to i32
  %i.ed = add i32 %i.ec, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %storemerge.i.i = phi i32 [ %i.ed, %bb.s ], [ 1, %bb.r ]
  store i32 %storemerge.i.i, ptr %i.dt, align 4, !tbaa !352
  %i.ee = add nuw i64 %.01.i.i, 1                 ; 2 uses
  %exitcond.not.i41.i = icmp eq i64 %i.ee, %i.dq
  br i1 %exitcond.not.i41.i, label %bb.u, label %bb.q, !llvm.loop !51

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.a
  %i.ef = phi i64 [ 0, %bb.u ], [ %i.d, %bb.a ]   ; 3 uses
  %i.eg = phi i64 [ %i.dq, %bb.u ], [ %i.f, %bb.a ]
  %i.eh = icmp ult i64 %i.ef, %i.eg
  call void @llvm.assume(i1 %i.eh)
  %i.ei = add nuw nsw i64 %i.ef, 1
  store i64 %i.ei, ptr %i.c, align 32, !tbaa !918
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ef
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.v
  %.0 = phi ptr [ %i.ej, %bb.v ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE8peek_eofEv(ptr nofree noundef nonnull readonly align 32 captures(none) dereferenceable(896) %0) unnamed_addr #45 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !306
  %i.d = load i64, ptr %i.a, align 8, !tbaa !324
  %i.e = icmp uge i64 %i.c, %i.d
  ret i1 %i.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED0Ev(ptr noundef nonnull align 32 dereferenceable(896) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !153
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50, !inline_history !35
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50, !inline_history !35
  br label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !154
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, !prof !155

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50
  br label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 896, i64 noundef 32) #51
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvEJRSt17basic_string_viewIcS7_EEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
