Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1284
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(40) %0) #52
  br i1 %i.e, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(40) %0) #52 ; 4 uses
  %.not = icmp eq ptr %i.h, null                  ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load i64, ptr %i.i, align 8, !tbaa !188
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.ah, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(40) %0) #52 ; 3 uses
  %.not13 = icmp eq ptr %i.n, null
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !189
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !189
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.ah, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.t = icmp eq i64 %1, 0
  br i1 %i.t, label %bb.g, label %.preheader242.i

bb.g:                                             ; preds = %bb.f
  br i1 %.not, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 4 uses
  %.0810.i.i.i.i.i.i.i55 = load ptr, ptr %i.u, align 8, !tbaa !191 ; 2 uses
  %.not11.i.i.i.i.i.i.i56 = icmp eq ptr %.0810.i.i.i.i.i.i.i55, null
  br i1 %.not11.i.i.i.i.i.i.i56, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i57

.lr.ph.i.i.i.i.i.i.i57:                           ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i57
  %.0813.i.i.i.i.i.i.i58 = phi ptr [ %.08.i.i.i.i.i.i.i67, %.lr.ph.i.i.i.i.i.i.i57 ], [ %.0810.i.i.i.i.i.i.i55, %bb.h ] ; 3 uses
  %.012.i.i.i.i.i.i.i59 = phi ptr [ %.1.i.i.i.i.i.i.i66, %.lr.ph.i.i.i.i.i.i.i57 ], [ %i.v, %bb.h ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i.i58, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !14
  %i.y = icmp slt i64 %i.x, 0                     ; 2 uses
  %.19.in.v.i.i.i.i.i.i.i64 = select i1 %i.y, i64 24, i64 16
  %.19.in.i.i.i.i.i.i.i65 = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i.i58, i64 %.19.in.v.i.i.i.i.i.i.i64
  %.1.i.i.i.i.i.i.i66 = select i1 %i.y, ptr %.012.i.i.i.i.i.i.i59, ptr %.0813.i.i.i.i.i.i.i58 ; 5 uses
  %.08.i.i.i.i.i.i.i67 = load ptr, ptr %.19.in.i.i.i.i.i.i.i65, align 8, !tbaa !191 ; 2 uses
  %.not.i.i.i.i.i.i.i68 = icmp eq ptr %.08.i.i.i.i.i.i.i67, null
  br i1 %.not.i.i.i.i.i.i.i68, label %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i69, label %.lr.ph.i.i.i.i.i.i.i57, !llvm.loop !192

_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i69: ; preds = %.lr.ph.i.i.i.i.i.i.i57
  %.not.i.i.i.i.i.i70 = icmp eq ptr %.1.i.i.i.i.i.i.i66, %i.v
  br i1 %.not.i.i.i.i.i.i70, label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i76, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i69
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i66, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !14
  %notsub108 = add i64 %i.aa, -1
  %i.ab = icmp slt i64 %notsub108, 0
  %spec.select.i.i.i.i.i.i75 = select i1 %i.ab, ptr %.1.i.i.i.i.i.i.i66, ptr %i.v
  br label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i76

_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i76: ; preds = %bb.i, %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i69
  %.sroa.03.0.i.i.i.i.i.i77 = phi ptr [ %.1.i.i.i.i.i.i.i66, %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i69 ], [ %spec.select.i.i.i.i.i.i75, %bb.i ] ; 2 uses
  %.not.i.i.i78 = icmp eq ptr %.sroa.03.0.i.i.i.i.i.i77, %i.v
  br i1 %.not.i.i.i78, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit

.preheader242.i:                                  ; preds = %bb.f, %.backedge.i
  %i.ac = phi ptr [ %i.eh, %.backedge.i ], [ %0, %bb.f ] ; 10 uses
  %.097285.i = phi i64 [ %.097.be.i, %.backedge.i ], [ 0, %bb.f ] ; 7 uses
  %.0106284.i = phi i1 [ %.0106.be.i, %.backedge.i ], [ false, %bb.f ]
  %.0113283.i = phi i8 [ %.0113.be.i, %.backedge.i ], [ 1, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.097285.i ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !17
  switch i8 %i.ae, label %.lr.ph.i.i.i [
    i8 91, label %.preheader.i
    i8 46, label %bb.u
    i8 93, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread
  ], !prof !193

.preheader.i:                                     ; preds = %.preheader242.i
  %.0120267.i = add nuw i64 %.097285.i, 1         ; 4 uses
  %.not268.i = icmp ult i64 %.0120267.i, %1
  br i1 %.not268.i, label %.lr.ph.i.preheader, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, !prof !194

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.0120267.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !17  ; 3 uses
  %i.ah = add i8 %i.ag, -48
  %i.ai = icmp ult i8 %i.ah, 10
  br i1 %i.ai, label %.lr.ph.i._crit_edge, label %.lr.ph, !prof !195

.lr.ph.i:                                         ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.0120.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17  ; 3 uses
  %i.al = add i8 %i.ak, -48
  %i.am = icmp ult i8 %i.al, 10
  br i1 %i.am, label %.lr.ph.i._crit_edge, label %.lr.ph, !prof !196

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.an = phi i8 [ %i.ak, %.lr.ph.i ], [ %i.ag, %.lr.ph.i.preheader ]
  %.0120270.i126 = phi i64 [ %.0120.i, %.lr.ph.i ], [ %.0120267.i, %.lr.ph.i.preheader ] ; 2 uses
  switch i8 %i.an, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread [
    i8 32, label %bb.j
    i8 9, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph, %.lr.ph
  %.0120.i = add nuw i64 %.0120270.i126, 1        ; 4 uses
  %exitcond.not.i = icmp eq i64 %.0120.i, %1
  br i1 %exitcond.not.i, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %.lr.ph.i, !prof !197

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.0120270.i.lcssa125 = phi i64 [ %.0120267.i, %.lr.ph.i.preheader ], [ %.0120.i, %.lr.ph.i ] ; 3 uses
  %.0120.in269.i.lcssa = phi i64 [ %.097285.i, %.lr.ph.i.preheader ], [ %.0120270.i126, %.lr.ph.i ]
  %.lcssa = phi i8 [ %i.ag, %.lr.ph.i.preheader ], [ %i.ak, %.lr.ph.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %.0120270.i.lcssa125 ; 3 uses
  %i.ap = add i64 %.0120.in269.i.lcssa, 2         ; 3 uses
  %.not135272.i = icmp ult i64 %i.ap, %1
  br i1 %.not135272.i, label %.lr.ph274.i, label %.thread187.i, !prof !194

.lr.ph274.i:                                      ; preds = %.lr.ph.i._crit_edge, %bb.l
  %.0131273.i = phi i64 [ %i.at, %bb.l ], [ %i.ap, %.lr.ph.i._crit_edge ] ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.0131273.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !17  ; 2 uses
  %i.as = add i8 %i.ar, -48
  %or.cond6.i = icmp ult i8 %i.as, 10
  br i1 %or.cond6.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph274.i
  switch i8 %i.ar, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread [
    i8 93, label %.thread187.i
    i8 91, label %.thread187.i
    i8 46, label %.thread187.i
    i8 32, label %.thread187.i
    i8 9, label %.thread187.i
  ]

bb.l:                                             ; preds = %.lr.ph274.i
  %i.at = add nuw i64 %.0131273.i, 1              ; 2 uses
  %exitcond299.not.i = icmp eq i64 %i.at, %1
  br i1 %exitcond299.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, label %.lr.ph274.i, !prof !197

.thread187.i:                                     ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %.lr.ph.i._crit_edge
  %.0131249.i = phi i64 [ %.0131273.i, %bb.k ], [ %.0131273.i, %bb.k ], [ %.0131273.i, %bb.k ], [ %.0131273.i, %bb.k ], [ %.0131273.i, %bb.k ], [ %i.ap, %.lr.ph.i._crit_edge ] ; 8 uses
  %.not136275.i = icmp ult i64 %.0131249.i, %1
  br i1 %.not136275.i, label %.lr.ph277.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, !prof !198

.lr.ph277.i:                                      ; preds = %.thread187.i, %bb.n
  %.198276.i = phi i64 [ %i.ax, %bb.n ], [ %.0131249.i, %.thread187.i ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %.198276.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !17
  switch i8 %i.av, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread [
    i8 93, label %bb.m
    i8 91, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
    i8 46, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
    i8 32, label %bb.n
    i8 9, label %bb.n
  ], !prof !199

bb.m:                                             ; preds = %.lr.ph277.i
  %i.aw = add nuw i64 %.198276.i, 1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.n:                                             ; preds = %.lr.ph277.i, %.lr.ph277.i
  %i.ax = add i64 %.198276.i, 1                   ; 2 uses
  %exitcond300.not.i = icmp eq i64 %i.ax, %1
  br i1 %exitcond300.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, label %.lr.ph277.i, !prof !197

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %bb.l, %bb.n, %.lr.ph277.i, %.lr.ph277.i, %bb.m, %.thread187.i
  %.0131249313.i = phi i64 [ %.0131249.i, %bb.m ], [ %.0131249.i, %.thread187.i ], [ %.0131249.i, %bb.n ], [ %.0131249.i, %.lr.ph277.i ], [ %.0131249.i, %.lr.ph277.i ], [ %1, %bb.l ]
  %.3100.i = phi i64 [ %i.aw, %bb.m ], [ %.0131249.i, %.thread187.i ], [ %1, %bb.n ], [ %.198276.i, %.lr.ph277.i ], [ %.198276.i, %.lr.ph277.i ], [ %1, %bb.l ]
  %i.ay = sub i64 %.0131249313.i, %.0120270.i.lcssa125
  %i.az = sub nuw i64 %1, %.0120270.i.lcssa125
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %i.ay) ; 3 uses
  %i.ba = icmp eq i64 %.sroa.speculated.i.i, 1
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.bb = zext nneg i8 %.lcssa to i64
  %i.bc = add nsw i64 %i.bb, -48
  br label %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.speculated.i.i ; 2 uses
  %.not36.i.i.i = icmp samesign eq i64 %.sroa.speculated.i.i, 0
  br i1 %.not36.i.i.i, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %.lr.ph.i36.i.i

.lr.ph.i36.i.i:                                   ; preds = %bb.p, %.critedge.i37.i.i
  %.364.i.i = phi ptr [ %i.bo, %.critedge.i37.i.i ], [ %i.ao, %bb.p ] ; 3 uses
  %.9.i.i = phi i64 [ %.10.i.i, %.critedge.i37.i.i ], [ 0, %bb.p ] ; 4 uses
  %.02237.i.i.i = phi i32 [ %i.bg, %.critedge.i37.i.i ], [ 64, %bb.p ]
  %i.be = load i8, ptr %.364.i.i, align 1, !tbaa !17
  %i.bf = add i8 %i.be, -48                       ; 3 uses
  %.not30.i.i.i = icmp ult i8 %i.bf, 10
  br i1 %.not30.i.i.i, label %bb.q, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i

bb.q:                                             ; preds = %.lr.ph.i36.i.i
  %i.bg = add i32 %.02237.i.i.i, -4               ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, -1
  br i1 %i.bh, label %bb.r, label %bb.s, !prof !200

bb.r:                                             ; preds = %bb.q
  %i.bi = mul i64 %.9.i.i, 10
  %i.bj = zext nneg i8 %i.bf to i64
  %i.bk = add i64 %i.bi, %i.bj
  br label %.critedge.i37.i.i

bb.s:                                             ; preds = %bb.q
  %3 = icmp ugt i64 %.9.i.i, 1844674407370955161
  br i1 %3, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %.split.i.i.i, !prof !201

.split.i.i.i:                                     ; preds = %bb.s
  %4 = mul nuw i64 %.9.i.i, 10                    ; 2 uses
  %i.bl = zext nneg i8 %i.bf to i64               ; 2 uses
  %i.bm = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %i.bl)
  %i.bn = extractvalue { i64, i1 } %i.bm, 1
  %5 = add nuw i64 %4, %i.bl
  br i1 %i.bn, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %.critedge.i37.i.i, !prof !173

.critedge.i37.i.i:                                ; preds = %.split.i.i.i, %bb.r
  %.10.i.i = phi i64 [ %i.bk, %bb.r ], [ %5, %.split.i.i.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.364.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bo, %i.bd
  br i1 %.not.i.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i, label %.lr.ph.i36.i.i, !llvm.loop !202

_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i: ; preds = %.critedge.i37.i.i, %.lr.ph.i36.i.i
  %.061.i.i = phi ptr [ %.364.i.i, %.lr.ph.i36.i.i ], [ %i.bd, %.critedge.i37.i.i ]
  %.0.i.i = phi i64 [ %.9.i.i, %.lr.ph.i36.i.i ], [ %.10.i.i, %.critedge.i37.i.i ]
  %.not235.i = icmp eq ptr %.061.i.i, %i.ao
  br i1 %.not235.i, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i, !prof !203

_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i, %bb.o
  %.0.i = phi i64 [ %i.bc, %bb.o ], [ %.0.i.i, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i ] ; 2 uses
  %i.bp = load ptr, ptr %i.ac, align 8, !tbaa !70
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 152
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef ptr %i.br(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #52, !inline_history !204 ; 3 uses
  %.not.i.i52 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i52, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !205
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !207 ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 3
  %i.cb = icmp ult i64 %.0.i, %i.ca
  br i1 %i.cb, label %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_18__invokeEPvm.exit", label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread

"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_18__invokeEPvm.exit": ; preds = %bb.t
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.0.i
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !208 ; 2 uses
  %.not106 = icmp eq ptr %i.cd, null
  br i1 %.not106, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %.backedge.i

bb.u:                                             ; preds = %.preheader242.i
  %i.ce = trunc nuw i8 %.0113283.i to i1
  br i1 %i.ce, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cf = load ptr, ptr %i.ac, align 8, !tbaa !70
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 144
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef ptr %i.ch(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #52, !inline_history !209 ; 3 uses
  %.not.i.i16 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i16, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 48 ; 4 uses
  %.0810.i.i.i.i.i.i.i17 = load ptr, ptr %i.cj, align 8, !tbaa !191 ; 2 uses
  %.not11.i.i.i.i.i.i.i18 = icmp eq ptr %.0810.i.i.i.i.i.i.i17, null
  br i1 %.not11.i.i.i.i.i.i.i18, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i19

.lr.ph.i.i.i.i.i.i.i19:                           ; preds = %bb.w, %.lr.ph.i.i.i.i.i.i.i19
  %.0813.i.i.i.i.i.i.i20 = phi ptr [ %.08.i.i.i.i.i.i.i29, %.lr.ph.i.i.i.i.i.i.i19 ], [ %.0810.i.i.i.i.i.i.i17, %bb.w ] ; 3 uses
  %.012.i.i.i.i.i.i.i21 = phi ptr [ %.1.i.i.i.i.i.i.i28, %.lr.ph.i.i.i.i.i.i.i19 ], [ %i.ck, %bb.w ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i.i20, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !14
  %i.cn = icmp slt i64 %i.cm, 0                   ; 2 uses
  %.19.in.v.i.i.i.i.i.i.i26 = select i1 %i.cn, i64 24, i64 16
  %.19.in.i.i.i.i.i.i.i27 = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i.i20, i64 %.19.in.v.i.i.i.i.i.i.i26
  %.1.i.i.i.i.i.i.i28 = select i1 %i.cn, ptr %.012.i.i.i.i.i.i.i21, ptr %.0813.i.i.i.i.i.i.i20 ; 5 uses
  %.08.i.i.i.i.i.i.i29 = load ptr, ptr %.19.in.i.i.i.i.i.i.i27, align 8, !tbaa !191 ; 2 uses
  %.not.i.i.i.i.i.i.i30 = icmp eq ptr %.08.i.i.i.i.i.i.i29, null
  br i1 %.not.i.i.i.i.i.i.i30, label %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i31, label %.lr.ph.i.i.i.i.i.i.i19, !llvm.loop !192

_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i.i.i.i.i19
  %.not.i.i.i.i.i.i32 = icmp eq ptr %.1.i.i.i.i.i.i.i28, %i.ck
  br i1 %.not.i.i.i.i.i.i32, label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i38, label %bb.x

bb.x:                                             ; preds = %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i31
  %i.co = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i28, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !14
  %notsub = add i64 %i.cp, -1
  %i.cq = icmp slt i64 %notsub, 0
  %spec.select.i.i.i.i.i.i37 = select i1 %i.cq, ptr %.1.i.i.i.i.i.i.i28, ptr %i.ck
  br label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i38

_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i38: ; preds = %bb.x, %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i31
  %.sroa.03.0.i.i.i.i.i.i39 = phi ptr [ %.1.i.i.i.i.i.i.i28, %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i31 ], [ %spec.select.i.i.i.i.i.i37, %bb.x ] ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %.sroa.03.0.i.i.i.i.i.i39, %i.ck
  br i1 %.not.i.i.i40, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_08__invokeEPvS6_.exit51"

"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_08__invokeEPvS6_.exit51": ; preds = %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i38
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i39, i64 96
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !208 ; 2 uses
  %.not105 = icmp eq ptr %i.cs, null
  br i1 %.not105, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %bb.y

bb.y:                                             ; preds = %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_08__invokeEPvS6_.exit51", %bb.u
  %i.ct = phi ptr [ %i.cs, %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_08__invokeEPvS6_.exit51" ], [ %i.ac, %bb.u ]
  %i.cu = add nuw i64 %.097285.i, 1
  br label %.backedge.i

.lr.ph.i.i.i:                                     ; preds = %.preheader242.i
  %i.cv = add nuw i64 %.097285.i, 1               ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %1
  br i1 %i.cw, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %.lr.ph.i.i.i, %bb.z
  %.0111420.i.i.i = phi i64 [ %i.cz, %bb.z ], [ %i.cv, %.lr.ph.i.i.i ] ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 %.0111420.i.i.i
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !17
  switch i8 %i.cy, label %bb.z [
    i8 46, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i
    i8 91, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i
    i8 93, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i
  ]

bb.z:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.cz = add i64 %.0111420.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cz, %1
  br i1 %exitcond.not.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i: ; preds = %bb.z, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.2.i.i.ph.i = phi i64 [ -1, %bb.z ], [ %.0111420.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ], [ %.0111420.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ], [ %.0111420.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ]
  %i.da = tail call i64 @llvm.umin.i64(i64 %.2.i.i.ph.i, i64 %1)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i, %.lr.ph.i.i.i
  %.2.i.i.i = phi i64 [ %1, %.lr.ph.i.i.i ], [ %i.da, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i ] ; 5 uses
  %i.db = sub i64 %.2.i.i.i, %.097285.i
  %i.dc = sub nuw i64 %1, %.097285.i
  %.sroa.speculated.i143.i = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 %i.db) ; 6 uses
  br i1 %.0106284.i, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i
  %.not236.i = icmp eq i64 %.sroa.speculated.i143.i, 0
  br i1 %.not236.i, label %.backedge.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i148.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i148.i: ; preds = %bb.aa, %bb.ab
  %.0710.i.i.i = phi i64 [ %i.df, %bb.ab ], [ 0, %bb.aa ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.0710.i.i.i
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !17
  switch i8 %i.de, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i [
    i8 32, label %bb.ab
    i8 9, label %bb.ab
  ]

bb.ab:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i148.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i148.i
  %i.df = add nuw i64 %.0710.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i150.i = icmp eq i64 %i.df, %.sroa.speculated.i143.i
  br i1 %exitcond.not.i.i150.i, label %.backedge.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i148.i, !llvm.loop !210

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i148.i
  %i.dg = icmp eq i64 %.0710.i.i.i, -1
  br i1 %i.dg, label %.backedge.i, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread

bb.ac:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i
  %i.dh = load ptr, ptr %i.ac, align 8, !tbaa !70
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 144
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = tail call noundef ptr %i.dj(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #52, !inline_history !209 ; 3 uses
  %.not.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 48 ; 4 uses
  %.0810.i.i.i.i.i.i.i = load ptr, ptr %i.dl, align 8, !tbaa !191 ; 2 uses
  %.not11.i.i.i.i.i.i.i = icmp eq ptr %.0810.i.i.i.i.i.i.i, null
  br i1 %.not11.i.i.i.i.i.i.i, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ad, %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i.i
  %.0813.i.i.i.i.i.i.i = phi ptr [ %.08.i.i.i.i.i.i.i, %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i.i ], [ %.0810.i.i.i.i.i.i.i, %bb.ad ] ; 4 uses
  %.012.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i, %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i.i ], [ %i.dm, %bb.ad ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i.i, i64 40
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !14 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated.i143.i, i64 %i.do) ; 2 uses
  %i.dp = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dp, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i.i, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !8
  %i.ds = tail call i32 @memcmp(ptr noundef %i.dr, ptr noundef nonnull readonly %i.ad, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i) #50 ; 2 uses
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.du = sub i64 %i.do, %.sroa.speculated.i143.i
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.du, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i.i

_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ds, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.dv = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %.19.in.v.i.i.i.i.i.i.i = select i1 %i.dv, i64 24, i64 16
  %.19.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i.i, i64 %.19.in.v.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i = select i1 %i.dv, ptr %.012.i.i.i.i.i.i.i, ptr %.0813.i.i.i.i.i.i.i ; 6 uses
  %.08.i.i.i.i.i.i.i = load ptr, ptr %.19.in.i.i.i.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !192

_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN4toml2v34impl18node_deep_equalityEPKNS0_4nodeES4_:bb.a
  %i.dc = load i8, ptr %i.db, align 2, !tbaa !105
  %i.dd = icmp eq i8 %i.da, %i.dc
  br i1 %i.dd, label %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i.i, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i.i:   ; preds = %bb.u
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.df = load i8, ptr %i.de, align 1, !tbaa !106
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 43
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !106
  %i.di = icmp eq i8 %i.df, %i.dh
  br i1 %i.di, label %bb.v, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.v:                                             ; preds = %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 44
  %i.dl = load i8, ptr %i.dj, align 4, !tbaa !107
  %i.dm = load i8, ptr %i.dk, align 4, !tbaa !107
  %i.dn = icmp eq i8 %i.dl, %i.dm
  br i1 %i.dn, label %bb.w, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.w:                                             ; preds = %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !109
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ct, i64 45
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !109
  %i.ds = icmp eq i8 %i.dp, %i.dr
  br i1 %i.ds, label %bb.x, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.x:                                             ; preds = %bb.w
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.du = load i8, ptr %i.dt, align 2, !tbaa !110
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ct, i64 46
  %i.dw = load i8, ptr %i.dv, align 2, !tbaa !110
  %i.dx = icmp eq i8 %i.du, %i.dw
  br i1 %i.dx, label %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i.i, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i.i:   ; preds = %bb.x
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !111
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !111
  %i.ec = icmp eq i32 %i.dz, %i.eb
  br i1 %i.ec, label %bb.y, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.y:                                             ; preds = %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ct, i64 52
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.eg = load i8, ptr %i.ef, align 2, !tbaa !117, !range !120, !noundef !121 ; 2 uses
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ct, i64 54
  %i.ej = load i8, ptr %i.ei, align 2, !tbaa !117, !range !120, !noundef !121
  %i.ek = icmp eq i8 %i.eg, %i.ej                 ; 2 uses
  %brmerge.not.i.i.i.i.i.i.i = and i1 %i.ek, %i.eh
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.ed, align 4
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.ee, align 4
  %i.el = icmp eq i16 %.sroa.01.0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i
  %i.em = select i1 %brmerge.not.i.i.i.i.i.i.i, i1 %i.el, i1 %i.ek
  br label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.z:                                             ; preds = %bb.d
  unreachable

"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit": ; preds = %bb.y, %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i.i, %bb.x, %bb.w, %bb.v, %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i.i, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.thread.i.i.i.i.i, %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i.i, %bb.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.g, %bb.f, %bb.e, %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ false, %bb.c ], [ %i.n, %bb.e ], [ %i.r, %bb.f ], [ %i.cq, %bb.s ], [ %i.ak, %bb.i ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %i.bb, %bb.l ], [ false, %.thread.i.i.i.i.i ], [ %i.bt, %bb.o ], [ false, %bb.g ], [ true, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ], [ true, %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i.i ], [ %i.au, %bb.k ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.p ], [ false, %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i.i ], [ false, %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i.i ], [ %i.em, %bb.y ], [ false, %bb.t ], [ false, %bb.u ], [ false, %bb.x ], [ false, %bb.w ], [ false, %bb.v ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE(i64 %0, ptr %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.b, label %.preheader242

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 %3(ptr noundef %2, i64 0, ptr nonnull @.str.7)
  br label %.thread204

.preheader242:                                    ; preds = %bb.a, %.backedge
  %.097285 = phi i64 [ %.097.be, %.backedge ], [ 0, %bb.a ] ; 7 uses
  %.0106284 = phi i1 [ %.0106.be, %.backedge ], [ false, %bb.a ]
  %.0113283 = phi i8 [ %.0113.be, %.backedge ], [ 1, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.097285 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !17
  switch i8 %i.d, label %.lr.ph.i.i [
    i8 91, label %.preheader
    i8 46, label %bb.m
    i8 93, label %.thread204
  ], !prof !193

.preheader:                                       ; preds = %.preheader242
  %.0120267 = add nuw i64 %.097285, 1             ; 4 uses
  %.not268 = icmp ult i64 %.0120267, %0
  br i1 %.not268, label %.lr.ph.preheader, label %.thread204, !prof !194

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.0120267
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17    ; 3 uses
  %i.g = add i8 %i.f, -48
  %i.h = icmp ult i8 %i.g, 10
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph345, !prof !195

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.0120
  %i.j = load i8, ptr %i.i, align 1, !tbaa !17    ; 3 uses
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  br i1 %i.l, label %.lr.ph._crit_edge, label %.lr.ph345, !prof !196

.lr.ph345:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.m = phi i8 [ %i.j, %.lr.ph ], [ %i.f, %.lr.ph.preheader ]
  %.0120270344 = phi i64 [ %.0120, %.lr.ph ], [ %.0120267, %.lr.ph.preheader ] ; 2 uses
  switch i8 %i.m, label %.thread204 [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph345, %.lr.ph345
  %.0120 = add nuw i64 %.0120270344, 1            ; 4 uses
  %exitcond.not = icmp eq i64 %.0120, %0
  br i1 %exitcond.not, label %.thread204, label %.lr.ph, !prof !197

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.0120270.lcssa = phi i64 [ %.0120267, %.lr.ph.preheader ], [ %.0120, %.lr.ph ] ; 3 uses
  %.0120.in269.lcssa = phi i64 [ %.097285, %.lr.ph.preheader ], [ %.0120270344, %.lr.ph ]
  %.lcssa = phi i8 [ %i.f, %.lr.ph.preheader ], [ %i.j, %.lr.ph ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.0120270.lcssa ; 3 uses
  %i.o = add i64 %.0120.in269.lcssa, 2            ; 3 uses
  %.not135272 = icmp ult i64 %i.o, %0
  br i1 %.not135272, label %.lr.ph274, label %.thread187, !prof !194

.lr.ph274:                                        ; preds = %.lr.ph._crit_edge, %bb.e
  %.0131273 = phi i64 [ %i.s, %bb.e ], [ %i.o, %.lr.ph._crit_edge ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.0131273
  %i.q = load i8, ptr %i.p, align 1, !tbaa !17    ; 2 uses
  %i.r = add i8 %i.q, -48
  %or.cond6 = icmp ult i8 %i.r, 10
  br i1 %or.cond6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph274
  switch i8 %i.q, label %.thread204 [
    i8 93, label %.thread187
    i8 91, label %.thread187
    i8 46, label %.thread187
    i8 32, label %.thread187
    i8 9, label %.thread187
  ]

bb.e:                                             ; preds = %.lr.ph274
  %i.s = add nuw i64 %.0131273, 1                 ; 2 uses
  %exitcond299.not = icmp eq i64 %i.s, %0
  br i1 %exitcond299.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, label %.lr.ph274, !prof !197

.thread187:                                       ; preds = %.lr.ph._crit_edge, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %.0131249 = phi i64 [ %.0131273, %bb.d ], [ %.0131273, %bb.d ], [ %.0131273, %bb.d ], [ %.0131273, %bb.d ], [ %.0131273, %bb.d ], [ %i.o, %.lr.ph._crit_edge ] ; 8 uses
  %.not136275 = icmp ult i64 %.0131249, %0
  br i1 %.not136275, label %.lr.ph277, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, !prof !198

.lr.ph277:                                        ; preds = %.thread187, %bb.g
  %.198276 = phi i64 [ %i.w, %bb.g ], [ %.0131249, %.thread187 ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.198276
  %i.u = load i8, ptr %i.t, align 1, !tbaa !17
  switch i8 %i.u, label %.thread204 [
    i8 93, label %bb.f
    i8 91, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
    i8 46, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
    i8 32, label %bb.g
    i8 9, label %bb.g
  ], !prof !199

bb.f:                                             ; preds = %.lr.ph277
  %i.v = add nuw i64 %.198276, 1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.g:                                             ; preds = %.lr.ph277, %.lr.ph277
  %i.w = add i64 %.198276, 1                      ; 2 uses
  %exitcond300.not = icmp eq i64 %i.w, %0
  br i1 %exitcond300.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, label %.lr.ph277, !prof !197

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.e, %.lr.ph277, %.lr.ph277, %bb.g, %bb.f, %.thread187
  %.0131249313 = phi i64 [ %.0131249, %bb.f ], [ %.0131249, %.thread187 ], [ %.0131249, %.lr.ph277 ], [ %.0131249, %bb.g ], [ %.0131249, %.lr.ph277 ], [ %0, %bb.e ]
  %.3100 = phi i64 [ %i.v, %bb.f ], [ %.0131249, %.thread187 ], [ %.198276, %.lr.ph277 ], [ %.198276, %.lr.ph277 ], [ %0, %bb.g ], [ %0, %bb.e ]
  %i.x = sub i64 %.0131249313, %.0120270.lcssa
  %i.y = sub nuw i64 %0, %.0120270.lcssa
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.x) ; 3 uses
  %i.z = icmp eq i64 %.sroa.speculated.i, 1
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.aa = zext nneg i8 %.lcssa to i64
  %i.ab = add nsw i64 %i.aa, -48
  br label %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit

bb.i:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.speculated.i ; 2 uses
  %.not36.i.i = icmp samesign eq i64 %.sroa.speculated.i, 0
  br i1 %.not36.i.i, label %.thread204, label %.lr.ph.i36.i

.lr.ph.i36.i:                                     ; preds = %bb.i, %.critedge.i37.i
  %.364.i = phi ptr [ %i.an, %.critedge.i37.i ], [ %i.n, %bb.i ] ; 3 uses
  %.9.i = phi i64 [ %.10.i, %.critedge.i37.i ], [ 0, %bb.i ] ; 4 uses
  %.02237.i.i = phi i32 [ %i.af, %.critedge.i37.i ], [ 64, %bb.i ]
  %i.ad = load i8, ptr %.364.i, align 1, !tbaa !17
  %i.ae = add i8 %i.ad, -48                       ; 3 uses
  %.not30.i.i = icmp ult i8 %i.ae, 10
  br i1 %.not30.i.i, label %bb.j, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i

bb.j:                                             ; preds = %.lr.ph.i36.i
  %i.af = add i32 %.02237.i.i, -4                 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %bb.k, label %bb.l, !prof !200

bb.k:                                             ; preds = %bb.j
  %i.ah = mul i64 %.9.i, 10
  %i.ai = zext nneg i8 %i.ae to i64
  %i.aj = add i64 %i.ah, %i.ai
  br label %.critedge.i37.i

bb.l:                                             ; preds = %bb.j
  %5 = icmp ugt i64 %.9.i, 1844674407370955161
  br i1 %5, label %.thread204, label %.split.i.i, !prof !201

.split.i.i:                                       ; preds = %bb.l
  %6 = mul nuw i64 %.9.i, 10                      ; 2 uses
  %i.ak = zext nneg i8 %i.ae to i64               ; 2 uses
  %i.al = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %6, i64 %i.ak)
  %i.am = extractvalue { i64, i1 } %i.al, 1
  %7 = add nuw i64 %6, %i.ak
  br i1 %i.am, label %.thread204, label %.critedge.i37.i, !prof !173

.critedge.i37.i:                                  ; preds = %.split.i.i, %bb.k
  %.10.i = phi i64 [ %i.aj, %bb.k ], [ %7, %.split.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.364.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, %i.ac
  br i1 %.not.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i, label %.lr.ph.i36.i, !llvm.loop !202

_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i: ; preds = %.critedge.i37.i, %.lr.ph.i36.i
  %.061.i = phi ptr [ %.364.i, %.lr.ph.i36.i ], [ %i.ac, %.critedge.i37.i ]
  %.0.i = phi i64 [ %.9.i, %.lr.ph.i36.i ], [ %.10.i, %.critedge.i37.i ]
  %.not235 = icmp eq ptr %.061.i, %i.n
  br i1 %.not235, label %.thread204, label %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit, !prof !203

_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i, %bb.h
  %.0 = phi i64 [ %i.ab, %bb.h ], [ %.0.i, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i ]
  %i.ao = tail call noundef zeroext i1 %4(ptr noundef %2, i64 noundef %.0)
  br i1 %i.ao, label %.backedge, label %.thread204

bb.m:                                             ; preds = %.preheader242
  %i.ap = trunc nuw i8 %.0113283 to i1
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aq = tail call noundef zeroext i1 %3(ptr noundef %2, i64 0, ptr nonnull @.str.7)
  br i1 %i.aq, label %bb.o, label %.thread204

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ar = add nuw i64 %.097285, 1
  br label %.backedge

.lr.ph.i.i:                                       ; preds = %.preheader242
  %i.as = add nuw i64 %.097285, 1                 ; 2 uses
  %i.at = icmp ult i64 %i.as, %0
  br i1 %i.at, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph.i.i, %bb.p
  %.0111420.i.i = phi i64 [ %i.aw, %bb.p ], [ %i.as, %.lr.ph.i.i ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %.0111420.i.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !17
  switch i8 %i.av, label %bb.p [
    i8 46, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit
    i8 91, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit
    i8 93, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit
  ]

bb.p:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.aw = add i64 %.0111420.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aw, %0
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.p
  %.2.i.i.ph = phi i64 [ -1, %bb.p ], [ %.0111420.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %.0111420.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %.0111420.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %i.ax = tail call i64 @llvm.umin.i64(i64 %.2.i.i.ph, i64 %0)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit, %.lr.ph.i.i
  %.2.i.i = phi i64 [ %0, %.lr.ph.i.i ], [ %i.ax, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit ] ; 5 uses
  %i.ay = sub i64 %.2.i.i, %.097285
  %i.az = sub nuw i64 %0, %.097285
  %.sroa.speculated.i143 = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %i.ay) ; 3 uses
  br i1 %.0106284, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit
  %.not236 = icmp eq i64 %.sroa.speculated.i143, 0
  br i1 %.not236, label %.backedge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i148

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i148:  ; preds = %bb.q, %bb.r
  %.0710.i.i = phi i64 [ %i.bc, %bb.r ], [ 0, %bb.q ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0710.i.i
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !17
  switch i8 %i.bb, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit [
    i8 32, label %bb.r
    i8 9, label %bb.r
  ]

bb.r:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i148, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i148
  %i.bc = add nuw i64 %.0710.i.i, 1               ; 2 uses
  %exitcond.not.i.i150 = icmp eq i64 %i.bc, %.sroa.speculated.i143
  br i1 %exitcond.not.i.i150, label %.backedge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i148, !llvm.loop !210

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i148
  %i.bd = icmp eq i64 %.0710.i.i, -1
  br i1 %i.bd, label %.backedge, label %.thread204

bb.s:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit
  %i.be = tail call noundef zeroext i1 %3(ptr noundef %2, i64 %.sroa.speculated.i143, ptr nonnull %i.c)
  br i1 %i.be, label %.backedge, label %.thread204

.backedge:                                        ; preds = %bb.r, %bb.o, %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit, %bb.s, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit, %bb.q
  %.0113.be = phi i8 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit ], [ 0, %bb.s ], [ 0, %bb.q ], [ 0, %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit ], [ 1, %bb.o ], [ 0, %bb.r ] ; 2 uses
  %.0106.be = phi i1 [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit ], [ false, %bb.s ], [ false, %bb.q ], [ true, %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit ], [ false, %bb.o ], [ false, %bb.r ]
  %.097.be = phi i64 [ %.2.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit ], [ %.2.i.i, %bb.s ], [ %.2.i.i, %bb.q ], [ %.3100, %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit ], [ %i.ar, %bb.o ], [ %.2.i.i, %bb.r ] ; 2 uses
  %i.bf = icmp ult i64 %.097.be, %0
  br i1 %i.bf, label %.preheader242, label %bb.t, !llvm.loop !211

bb.t:                                             ; preds = %.backedge
  %i.bg = trunc nuw i8 %.0113.be to i1
  br i1 %i.bg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bh = tail call noundef zeroext i1 %3(ptr noundef %2, i64 0, ptr nonnull @.str.7)
  br i1 %i.bh, label %bb.v, label %.thread204

bb.v:                                             ; preds = %bb.u, %bb.t
  br label %.thread204

.thread204:                                       ; preds = %.preheader242, %bb.s, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit, %bb.i, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i, %bb.d, %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit, %bb.n, %.preheader, %bb.c, %.lr.ph345, %.lr.ph277, %bb.l, %.split.i.i, %bb.v, %bb.u, %bb.b
  %.18 = phi i1 [ %i.b, %bb.b ], [ false, %bb.u ], [ false, %.lr.ph277 ], [ false, %bb.c ], [ false, %bb.l ], [ true, %bb.v ], [ false, %.split.i.i ], [ false, %.lr.ph345 ], [ false, %.preheader ], [ false, %bb.n ], [ false, %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit ], [ false, %bb.d ], [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i ], [ false, %bb.i ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit ], [ false, %bb.s ], [ false, %.preheader242 ]
  ret i1 %.18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #50 ; 0 uses
  tail call void @_ZSt9terminatev() #53
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4toml2v314path_componentC2Ev(ptr noundef nonnull align 8 dereferenceable(33) initializes((32, 33)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i.i.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.a, align 8, !tbaa !215
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !14
  store i8 0, ptr %i.b, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4toml2v314path_componentC2Em(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(33) initializes((0, 8), (32, 33)) %0, i64 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.a, align 8, !tbaa !215
  store i64 %1, ptr %0, align 8, !tbaa !139
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v314path_componentC2ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(33) initializes((32, 33)) %0, i64 %1, ptr nofree readonly captures(address_is_null) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.b, align 8, !tbaa !215
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !89
  %i.d = icmp eq ptr %2, null
  %i.e = icmp ne i64 %1, 0
  %or.cond.i.i.i.i = and i1 %i.e, %i.d
  br i1 %or.cond.i.i.i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.62) #54
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i64 %1, ptr %i.a, align 8, !tbaa !139
  %i.f = icmp ugt i64 %1, 15
  br i1 %i.f, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !8
  %i.h = load i64, ptr %i.a, align 8, !tbaa !139
  store i64 %i.h, ptr %i.c, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %1, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN4toml2v314path_component9store_keyESt17basic_string_viewIcSt11char_traitsIcEERNS1_9storage_tE.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.j = load i8, ptr %2, align 1, !tbaa !17
  store i8 %i.j, ptr %i.i, align 1, !tbaa !17
  br label %_ZN4toml2v314path_component9store_keyESt17basic_string_viewIcSt11char_traitsIcEERNS1_9storage_tE.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %2, i64 %1, i1 false)
  br label %_ZN4toml2v314path_component9store_keyESt17basic_string_viewIcSt11char_traitsIcEERNS1_9storage_tE.exit

_ZN4toml2v314path_component9store_keyESt17basic_string_viewIcSt11char_traitsIcEERNS1_9storage_tE.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.c, %bb.d
  %i.k = load i64, ptr %i.a, align 8, !tbaa !139  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !14
  %i.m = load ptr, ptr %0, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
end_hunk_1
begin_hunk_2_@_ZN4toml2v34path5equalERKS1_S3_:bb.a

_ZN4toml2v314path_component5equalERKS1_S3_.exit.thread10.i.i.i.i.i: ; preds = %_ZN4toml2v314path_component5equalERKS1_S3_.exit.i.i.i.i.i, %.split.i.i.i.i.i, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i, i64 40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40
  %.not.i.i.i.i.i = icmp eq ptr %i.af, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZSteqIN4toml2v314path_componentESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !245

_ZSteqIN4toml2v314path_componentESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit: ; preds = %_ZN4toml2v314path_component5equalERKS1_S3_.exit.thread10.i.i.i.i.i, %_ZN4toml2v314path_component5equalERKS1_S3_.exit.i.i.i.i.i, %.split.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i.i, %bb.b, %bb.a
  %i.ah = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %_ZN4toml2v314path_component5equalERKS1_S3_.exit.i.i.i.i.i ], [ true, %_ZN4toml2v314path_component5equalERKS1_S3_.exit.thread10.i.i.i.i.i ], [ false, %.split.i.i.i.i.i ], [ false, %.lr.ph.i.i.i.i.i ], [ false, %bb.d ]
  ret i1 %i.ah
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34pathC2ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, i64 %1, ptr %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EE(i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #50
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EE(i64 %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 17 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !242  ; 4 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !244
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 40                  ; 3 uses
  %i.i = icmp eq i64 %0, 0
  br i1 %i.i, label %bb.b, label %.preheader242.i.preheader

.preheader242.i.preheader:                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %.preheader242.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 0, ptr %3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.7, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !246
  %.not.i.i.i12 = icmp eq ptr %i.c, %i.o
  br i1 %.not.i.i.i12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4toml2v314path_componentC1ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(33) %i.c, i64 0, ptr nonnull @.str.7)
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !242
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %i.q, ptr %i.b, align 8, !tbaa !242
  br label %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit13"

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit13"

"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit13": ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit

.preheader242.i:                                  ; preds = %.preheader242.i.preheader, %.backedge.i
  %.097285.i = phi i64 [ %.097.be.i, %.backedge.i ], [ 0, %.preheader242.i.preheader ] ; 7 uses
  %.0106284.i = phi i1 [ %.0106.be.i, %.backedge.i ], [ false, %.preheader242.i.preheader ]
  %.0113283.i = phi i8 [ %.0113.be.i, %.backedge.i ], [ 1, %.preheader242.i.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.097285.i ; 4 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !17
  switch i8 %i.s, label %.lr.ph.i.i.i [
    i8 91, label %.preheader.i
    i8 46, label %bb.q
    i8 93, label %.loopexit
  ], !prof !193

.preheader.i:                                     ; preds = %.preheader242.i
  %.0120267.i = add nuw i64 %.097285.i, 1         ; 4 uses
  %.not268.i = icmp ult i64 %.0120267.i, %0
  br i1 %.not268.i, label %.lr.ph.i.preheader, label %.loopexit, !prof !194

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.0120267.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !17    ; 3 uses
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %.lr.ph.i._crit_edge, label %.lr.ph, !prof !195

.lr.ph.i:                                         ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.0120.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17    ; 3 uses
  %i.z = add i8 %i.y, -48
  %i.aa = icmp ult i8 %i.z, 10
  br i1 %i.aa, label %.lr.ph.i._crit_edge, label %.lr.ph, !prof !196

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ab = phi i8 [ %i.y, %.lr.ph.i ], [ %i.u, %.lr.ph.i.preheader ]
  %.0120270.i33 = phi i64 [ %.0120.i, %.lr.ph.i ], [ %.0120267.i, %.lr.ph.i.preheader ] ; 2 uses
  switch i8 %i.ab, label %.loopexit [
    i8 32, label %bb.e
    i8 9, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph, %.lr.ph
  %.0120.i = add nuw i64 %.0120270.i33, 1         ; 4 uses
  %exitcond.not.i = icmp eq i64 %.0120.i, %0
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !prof !197

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.0120270.i.lcssa32 = phi i64 [ %.0120267.i, %.lr.ph.i.preheader ], [ %.0120.i, %.lr.ph.i ] ; 3 uses
  %.0120.in269.i.lcssa = phi i64 [ %.097285.i, %.lr.ph.i.preheader ], [ %.0120270.i33, %.lr.ph.i ]
  %.lcssa = phi i8 [ %i.u, %.lr.ph.i.preheader ], [ %i.y, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.0120270.i.lcssa32 ; 3 uses
  %i.ad = add i64 %.0120.in269.i.lcssa, 2         ; 3 uses
  %.not135272.i = icmp ult i64 %i.ad, %0
  br i1 %.not135272.i, label %.lr.ph274.i, label %.thread187.i, !prof !194

.lr.ph274.i:                                      ; preds = %.lr.ph.i._crit_edge, %bb.g
  %.0131273.i = phi i64 [ %i.ah, %bb.g ], [ %i.ad, %.lr.ph.i._crit_edge ] ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.0131273.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !17  ; 2 uses
  %i.ag = add i8 %i.af, -48
  %or.cond6.i = icmp ult i8 %i.ag, 10
  br i1 %or.cond6.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph274.i
  switch i8 %i.af, label %.loopexit [
    i8 93, label %.thread187.i
    i8 91, label %.thread187.i
    i8 46, label %.thread187.i
    i8 32, label %.thread187.i
    i8 9, label %.thread187.i
  ]

bb.g:                                             ; preds = %.lr.ph274.i
  %i.ah = add nuw i64 %.0131273.i, 1              ; 2 uses
  %exitcond299.not.i = icmp eq i64 %i.ah, %0
  br i1 %exitcond299.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, label %.lr.ph274.i, !prof !197

.thread187.i:                                     ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %.lr.ph.i._crit_edge
  %.0131249.i = phi i64 [ %.0131273.i, %bb.f ], [ %.0131273.i, %bb.f ], [ %.0131273.i, %bb.f ], [ %.0131273.i, %bb.f ], [ %.0131273.i, %bb.f ], [ %i.ad, %.lr.ph.i._crit_edge ] ; 8 uses
  %.not136275.i = icmp ult i64 %.0131249.i, %0
  br i1 %.not136275.i, label %.lr.ph277.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, !prof !198

.lr.ph277.i:                                      ; preds = %.thread187.i, %bb.i
  %.198276.i = phi i64 [ %i.al, %bb.i ], [ %.0131249.i, %.thread187.i ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.198276.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !17
  switch i8 %i.aj, label %.loopexit [
    i8 93, label %bb.h
    i8 91, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
    i8 46, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
    i8 32, label %bb.i
    i8 9, label %bb.i
  ], !prof !199

bb.h:                                             ; preds = %.lr.ph277.i
  %i.ak = add nuw i64 %.198276.i, 1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.i:                                             ; preds = %.lr.ph277.i, %.lr.ph277.i
  %i.al = add i64 %.198276.i, 1                   ; 2 uses
  %exitcond300.not.i = icmp eq i64 %i.al, %0
  br i1 %exitcond300.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, label %.lr.ph277.i, !prof !197

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %bb.g, %bb.i, %.lr.ph277.i, %.lr.ph277.i, %bb.h, %.thread187.i
  %.0131249313.i = phi i64 [ %.0131249.i, %bb.h ], [ %.0131249.i, %.thread187.i ], [ %.0131249.i, %bb.i ], [ %.0131249.i, %.lr.ph277.i ], [ %.0131249.i, %.lr.ph277.i ], [ %0, %bb.g ]
  %.3100.i = phi i64 [ %i.ak, %bb.h ], [ %.0131249.i, %.thread187.i ], [ %0, %bb.i ], [ %.198276.i, %.lr.ph277.i ], [ %.198276.i, %.lr.ph277.i ], [ %0, %bb.g ]
  %i.am = sub i64 %.0131249313.i, %.0120270.i.lcssa32
  %i.an = sub nuw i64 %0, %.0120270.i.lcssa32
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.an, i64 %i.am) ; 3 uses
  %i.ao = icmp eq i64 %.sroa.speculated.i.i, 1
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.ap = zext nneg i8 %.lcssa to i64
  %i.aq = add nsw i64 %i.ap, -48
  br label %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i

bb.k:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.speculated.i.i ; 2 uses
  %.not36.i.i.i = icmp samesign eq i64 %.sroa.speculated.i.i, 0
  br i1 %.not36.i.i.i, label %.loopexit, label %.lr.ph.i36.i.i

.lr.ph.i36.i.i:                                   ; preds = %bb.k, %.critedge.i37.i.i
  %.364.i.i = phi ptr [ %i.bc, %.critedge.i37.i.i ], [ %i.ac, %bb.k ] ; 3 uses
  %.9.i.i = phi i64 [ %.10.i.i, %.critedge.i37.i.i ], [ 0, %bb.k ] ; 4 uses
  %.02237.i.i.i = phi i32 [ %i.au, %.critedge.i37.i.i ], [ 64, %bb.k ]
  %i.as = load i8, ptr %.364.i.i, align 1, !tbaa !17
  %i.at = add i8 %i.as, -48                       ; 3 uses
  %.not30.i.i.i = icmp ult i8 %i.at, 10
  br i1 %.not30.i.i.i, label %bb.l, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i

bb.l:                                             ; preds = %.lr.ph.i36.i.i
  %i.au = add i32 %.02237.i.i.i, -4               ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bb.m, label %bb.n, !prof !200

bb.m:                                             ; preds = %bb.l
  %i.aw = mul i64 %.9.i.i, 10
  %i.ax = zext nneg i8 %i.at to i64
  %i.ay = add i64 %i.aw, %i.ax
  br label %.critedge.i37.i.i

bb.n:                                             ; preds = %bb.l
  %7 = icmp ugt i64 %.9.i.i, 1844674407370955161
  br i1 %7, label %.loopexit, label %.split.i.i.i, !prof !201

.split.i.i.i:                                     ; preds = %bb.n
  %8 = mul nuw i64 %.9.i.i, 10                    ; 2 uses
  %i.az = zext nneg i8 %i.at to i64               ; 2 uses
  %i.ba = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %i.az)
  %i.bb = extractvalue { i64, i1 } %i.ba, 1
  %9 = add nuw i64 %8, %i.az
  br i1 %i.bb, label %.loopexit, label %.critedge.i37.i.i, !prof !173

.critedge.i37.i.i:                                ; preds = %.split.i.i.i, %bb.m
  %.10.i.i = phi i64 [ %i.ay, %bb.m ], [ %9, %.split.i.i.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.364.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bc, %i.ar
  br i1 %.not.i.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i, label %.lr.ph.i36.i.i, !llvm.loop !202

_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i: ; preds = %.critedge.i37.i.i, %.lr.ph.i36.i.i
  %.061.i.i = phi ptr [ %.364.i.i, %.lr.ph.i36.i.i ], [ %i.ar, %.critedge.i37.i.i ]
  %.0.i.i = phi i64 [ %.9.i.i, %.lr.ph.i36.i.i ], [ %.10.i.i, %.critedge.i37.i.i ]
  %.not235.i = icmp eq ptr %.061.i.i, %i.ac
  br i1 %.not235.i, label %.loopexit, label %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i, !prof !203

_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i, %bb.j
  %.0.i = phi i64 [ %i.aq, %bb.j ], [ %.0.i.i, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.0.i, ptr %i.a, align 8, !tbaa !139
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !242 ; 3 uses
  %i.be = load ptr, ptr %i.k, align 8, !tbaa !246
  %.not.i.i.i11 = icmp eq ptr %i.bd, %i.be
  br i1 %.not.i.i.i11, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i
  call void @_ZN4toml2v314path_componentC1Em(ptr noundef nonnull align 8 dereferenceable(33) %i.bd, i64 noundef %.0.i) #50
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !242
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  store ptr %i.bg, ptr %i.b, align 8, !tbaa !242
  br label %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_18__invokeEPvm.exit"

bb.p:                                             ; preds = %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i
  call void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_18__invokeEPvm.exit"

"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_18__invokeEPvm.exit": ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.backedge.i

bb.q:                                             ; preds = %.preheader242.i
  %i.bh = trunc nuw i8 %.0113283.i to i1
  br i1 %i.bh, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 0, ptr %4, align 8
  store ptr @.str.7, ptr %i.j, align 8
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !242 ; 3 uses
  %i.bj = load ptr, ptr %i.k, align 8, !tbaa !246
  %.not.i.i.i9 = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i.i9, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN4toml2v314path_componentC1ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(33) %i.bi, i64 0, ptr nonnull @.str.7)
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !242
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store ptr %i.bl, ptr %i.b, align 8, !tbaa !242
  br label %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit10"

bb.t:                                             ; preds = %bb.r
  call void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit10"

"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit10": ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.u

bb.u:                                             ; preds = %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit10", %bb.q
  %i.bm = add nuw i64 %.097285.i, 1
  br label %.backedge.i

.lr.ph.i.i.i:                                     ; preds = %.preheader242.i
  %i.bn = add nuw i64 %.097285.i, 1               ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %0
  br i1 %i.bo, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %.lr.ph.i.i.i, %bb.v
  %.0111420.i.i.i = phi i64 [ %i.br, %bb.v ], [ %i.bn, %.lr.ph.i.i.i ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %.0111420.i.i.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !17
  switch i8 %i.bq, label %bb.v [
    i8 46, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i
    i8 91, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i
    i8 93, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i
  ]

bb.v:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.br = add i64 %.0111420.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.br, %0
  br i1 %exitcond.not.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i: ; preds = %bb.v, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.2.i.i.ph.i = phi i64 [ -1, %bb.v ], [ %.0111420.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ], [ %.0111420.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ], [ %.0111420.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ]
  %i.bs = call i64 @llvm.umin.i64(i64 %.2.i.i.ph.i, i64 %0)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i, %.lr.ph.i.i.i
  %.2.i.i.i = phi i64 [ %0, %.lr.ph.i.i.i ], [ %i.bs, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i ] ; 5 uses
  %i.bt = sub i64 %.2.i.i.i, %.097285.i
  %i.bu = sub nuw i64 %0, %.097285.i
  %.sroa.speculated.i143.i = call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bt) ; 4 uses
  br i1 %.0106284.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i
  %.not236.i = icmp eq i64 %.sroa.speculated.i143.i, 0
  br i1 %.not236.i, label %.backedge.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i148.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i148.i: ; preds = %bb.w, %bb.x
  %.0710.i.i.i = phi i64 [ %i.bx, %bb.x ], [ 0, %bb.w ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.r, i64 %.0710.i.i.i
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !17
  switch i8 %i.bw, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i [
    i8 32, label %bb.x
    i8 9, label %bb.x
  ]

bb.x:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i148.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i148.i
  %i.bx = add nuw i64 %.0710.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i150.i = icmp eq i64 %i.bx, %.sroa.speculated.i143.i
  br i1 %exitcond.not.i.i150.i, label %.backedge.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i148.i, !llvm.loop !210

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i148.i
  %i.by = icmp eq i64 %.0710.i.i.i, -1
  br i1 %i.by, label %.backedge.i, label %.loopexit

bb.y:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %.sroa.speculated.i143.i, ptr %5, align 8
  store ptr %i.r, ptr %i.l, align 8
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !242 ; 3 uses
  %i.ca = load ptr, ptr %i.k, align 8, !tbaa !246
  %.not.i.i.i7 = icmp eq ptr %i.bz, %i.ca
  br i1 %.not.i.i.i7, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN4toml2v314path_componentC1ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(33) %i.bz, i64 %.sroa.speculated.i143.i, ptr nonnull %i.r)
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !242
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  store ptr %i.cc, ptr %i.b, align 8, !tbaa !242
  br label %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit8"

bb.aa:                                            ; preds = %bb.y
  call void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %5)
  br label %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit8"

"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit8": ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.x, %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit8", %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_18__invokeEPvm.exit", %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i, %bb.w, %bb.u
  %.0113.be.i = phi i8 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ], [ 0, %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit8" ], [ 0, %bb.w ], [ 0, %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_18__invokeEPvm.exit" ], [ 1, %bb.u ], [ 0, %bb.x ] ; 2 uses
  %.0106.be.i = phi i1 [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ], [ false, %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit8" ], [ false, %bb.w ], [ true, %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_18__invokeEPvm.exit" ], [ false, %bb.u ], [ false, %bb.x ]
  %.097.be.i = phi i64 [ %.2.i.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ], [ %.2.i.i.i, %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit8" ], [ %.2.i.i.i, %bb.w ], [ %.3100.i, %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_18__invokeEPvm.exit" ], [ %i.bm, %bb.u ], [ %.2.i.i.i, %bb.x ] ; 2 uses
  %i.cd = icmp ult i64 %.097.be.i, %0
  br i1 %i.cd, label %.preheader242.i, label %bb.ab, !llvm.loop !211

bb.ab:                                            ; preds = %.backedge.i
  %i.ce = trunc nuw i8 %.0113.be.i to i1
  br i1 %i.ce, label %bb.ac, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %6, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.7, ptr %i.cf, align 8
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !242 ; 3 uses
  %i.ch = load ptr, ptr %i.k, align 8, !tbaa !246
  %.not.i.i.i6 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not.i.i.i6, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4toml2v314path_componentC1ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(33) %i.cg, i64 0, ptr nonnull @.str.7)
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !242
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  store ptr %i.cj, ptr %i.b, align 8, !tbaa !242
  br label %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit"

bb.ae:                                            ; preds = %bb.ac
  call void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit"

"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit": ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit

.loopexit:                                        ; preds = %bb.k, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i, %.preheader.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i, %.preheader242.i, %bb.f, %bb.e, %.lr.ph, %.lr.ph277.i, %bb.n, %.split.i.i.i
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !242 ; 3 uses
  %i.cl = load ptr, ptr %2, align 8, !tbaa !244   ; 2 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = sdiv exact i64 %i.co, 40                ; 3 uses
  %i.cq = icmp ugt i64 %i.h, %i.cp
  br i1 %i.cq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.loopexit
  %i.cr = sub nuw nsw i64 %i.h, %i.cp
  call void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.cr)
  br label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit

bb.ag:                                            ; preds = %.loopexit
  %i.cs = icmp ult i64 %i.h, %i.cp
  br i1 %i.cs, label %bb.ah, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit

bb.ah:                                            ; preds = %bb.ag
end_hunk_2
begin_hunk_3_@_ZSt12__to_chars_iIyENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i:bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.cj
  store i8 %i.ci, ptr %i.ck, align 1, !tbaa !17
  %i.cl = lshr i64 %.02830.i40, 6                 ; 2 uses
  %i.cm = lshr i8 %i.cg, 3
  %i.cn = and i8 %i.cm, 7
  %i.co = or disjoint i8 %i.cn, 48
  %i.cp = add nsw i32 %.031.i39, -1
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %i.cq
  store i8 %i.co, ptr %i.cr, align 1, !tbaa !17
  %i.cs = add nsw i32 %.031.i39, -2
  %i.ct = icmp ugt i64 %.02830.i40, 4095
  br i1 %i.ct, label %.lr.ph.i38, label %._crit_edge.i29, !llvm.loop !789

._crit_edge.i29:                                  ; preds = %.lr.ph.i38, %bb.s
  %.028.lcssa.i30 = phi i64 [ %2, %bb.s ], [ %i.cl, %.lr.ph.i38 ] ; 4 uses
  %i.cu = icmp samesign ugt i64 %.028.lcssa.i30, 7
  br i1 %i.cu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i29
  %i.cv = lshr i64 %.028.lcssa.i30, 3
  %i.cw = trunc nuw nsw i64 %.028.lcssa.i30 to i8
  %i.cx = and i8 %i.cw, 7
  %i.cy = or disjoint i8 %i.cx, 48
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i29
  %storemerge.in.in.i = phi i64 [ %i.cv, %bb.t ], [ %.028.lcssa.i30, %._crit_edge.i29 ]
  %storemerge.in.i31 = trunc nuw nsw i64 %storemerge.in.in.i to i8
  %storemerge.i32 = or disjoint i8 %storemerge.in.i31, 48
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.v:                                             ; preds = %bb.c
  %i.da = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true) ; 5 uses
  %i.db = sub nuw nsw i64 64, %i.da               ; 4 uses
  %i.dc = ptrtoint ptr %1 to i64
  %i.dd = ptrtoint ptr %0 to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = icmp slt i64 %i.de, %i.db
  br i1 %i.df, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !173

.preheader.i:                                     ; preds = %bb.v
  %.not16.i = icmp eq i64 %i.da, 63
  br i1 %.not16.i, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.preheader.i41

.lr.ph.preheader.i41:                             ; preds = %.preheader.i
  %.015.i = xor i64 %i.da, 63                     ; 3 uses
  %i.dg = trunc nuw nsw i64 %.015.i to i32
  %xtraiter = and i32 %i.dg, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i42.prol.loopexit, label %.lr.ph.i42.prol

.lr.ph.i42.prol:                                  ; preds = %.lr.ph.preheader.i41
  %i.dh = trunc i64 %2 to i8
  %i.di = and i8 %i.dh, 1
  %i.dj = or disjoint i8 %i.di, 48
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 %.015.i
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !17
  %i.dl = lshr i64 %2, 1
  %indvars.iv.next.i.prol = sub nsw i64 62, %i.da
  br label %.lr.ph.i42.prol.loopexit

.lr.ph.i42.prol.loopexit:                         ; preds = %.lr.ph.i42.prol, %.lr.ph.preheader.i41
  %indvars.iv.i.unr = phi i64 [ %.015.i, %.lr.ph.preheader.i41 ], [ %indvars.iv.next.i.prol, %.lr.ph.i42.prol ]
  %.01317.i.unr = phi i64 [ %2, %.lr.ph.preheader.i41 ], [ %i.dl, %.lr.ph.i42.prol ]
  %i.dm = icmp eq i64 %i.da, 62
  br i1 %i.dm, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i42 ], [ %indvars.iv.i.unr, %.lr.ph.i42.prol.loopexit ] ; 3 uses
  %.01317.i = phi i64 [ %i.dx, %.lr.ph.i42 ], [ %.01317.i.unr, %.lr.ph.i42.prol.loopexit ] ; 3 uses
  %i.dn = trunc i64 %.01317.i to i8
  %i.do = and i8 %i.dn, 1
  %i.dp = or disjoint i8 %i.do, 48
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !17
  %i.dr = lshr i64 %.01317.i, 1
  %i.ds = trunc i64 %i.dr to i8
  %i.dt = and i8 %i.ds, 1
  %i.du = or disjoint i8 %i.dt, 48
  %i.dv = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.dw = getelementptr i8, ptr %i.dv, i64 -1
  store i8 %i.du, ptr %i.dw, align 1, !tbaa !17
  %i.dx = lshr i64 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.dy = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.1, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i42, !llvm.loop !790

bb.w:                                             ; preds = %bb.c
  %i.dz = mul nsw i32 %3, %3                      ; 2 uses
  %i.ea = mul i32 %i.dz, %3                       ; 2 uses
  %i.eb = mul i32 %i.ea, %3
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = zext i32 %3 to i64                      ; 3 uses
  %i.ee = icmp ult i64 %2, %i.ed
  br i1 %i.ee, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %bb.w
  %i.ef = zext nneg i32 %i.dz to i64
  %i.eg = zext i32 %i.ea to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %.lr.ph.i.i48
  %.029.i.i49 = phi i32 [ 1, %.lr.ph.i.i48 ], [ %i.eo, %bb.ad ] ; 4 uses
  %.02328.i.i50 = phi i64 [ %2, %.lr.ph.i.i48 ], [ %i.en, %bb.ad ] ; 4 uses
  %i.eh = icmp ult i64 %.02328.i.i50, %i.ef
  br i1 %i.eh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ei = add i32 %.029.i.i49, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51

bb.z:                                             ; preds = %bb.x
  %i.ej = icmp ult i64 %.02328.i.i50, %i.eg
  br i1 %i.ej, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ek = add i32 %.029.i.i49, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51

bb.ab:                                            ; preds = %bb.z
  %i.el = icmp ult i64 %.02328.i.i50, %i.ec
  br i1 %i.el, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.em = add i32 %.029.i.i49, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51

bb.ad:                                            ; preds = %bb.ab
  %i.en = udiv i64 %.02328.i.i50, %i.ec           ; 2 uses
  %i.eo = add i32 %.029.i.i49, 4                  ; 2 uses
  %i.ep = icmp ult i64 %i.en, %i.ed
  br i1 %i.ep, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51, label %bb.x, !llvm.loop !240

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51:  ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.y
  %.022.i.i52 = phi i32 [ %i.em, %bb.ac ], [ %i.ei, %bb.y ], [ %i.ek, %bb.aa ], [ %i.eo, %bb.ad ] ; 2 uses
  %i.eq = ptrtoint ptr %1 to i64
  %i.er = ptrtoint ptr %0 to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = zext i32 %.022.i.i52 to i64             ; 2 uses
  %i.eu = icmp slt i64 %i.es, %i.et
  br i1 %i.eu, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i53, !prof !173

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i: ; preds = %bb.w
  %i.ev = ptrtoint ptr %1 to i64
  %i.ew = ptrtoint ptr %0 to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = icmp slt i64 %i.ex, 1
  br i1 %i.ey, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i56, !prof !173

.preheader.i53:                                   ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51
  %i.ez = sext i32 %3 to i64                      ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.preheader.i53
  %.0.in27.i = phi i32 [ %.022.i.i52, %.preheader.i53 ], [ %.0.i, %bb.ae ]
  %.02026.i = phi i64 [ %2, %.preheader.i53 ], [ %i.fa, %bb.ae ] ; 2 uses
  %.0.i = add i32 %.0.in27.i, -1                  ; 2 uses
  %i.fa = udiv i64 %.02026.i, %i.ez               ; 3 uses
  %i.fb = urem i64 %.02026.i, %i.ez
  %i.fc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !17
  %i.fe = zext i32 %.0.i to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 %i.fe
  store i8 %i.fd, ptr %i.ff, align 1, !tbaa !17
  %.not.i55 = icmp ult i64 %i.fa, %i.ed
  br i1 %.not.i55, label %._crit_edge.i56, label %bb.ae, !llvm.loop !791

._crit_edge.i56:                                  ; preds = %bb.ae, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i
  %i.fg = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.et, %bb.ae ]
  %.020.lcssa.i = phi i64 [ %2, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.fa, %bb.ae ]
  %i.fh = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %.020.lcssa.i
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !17
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split: ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42, %.preheader.i, %bb.p, %bb.q, %bb.b, %bb.g, %bb.u, %._crit_edge.i56
  %.sink109 = phi i8 [ %i.fi, %._crit_edge.i56 ], [ %i.bt, %bb.p ], [ %storemerge.i32, %bb.u ], [ 48, %bb.b ], [ %storemerge.i, %bb.g ], [ %i.bv, %bb.q ], [ 49, %.preheader.i ], [ 49, %.lr.ph.i42 ], [ 49, %.lr.ph.i42.prol.loopexit ]
  %.sink = phi i64 [ %i.fg, %._crit_edge.i56 ], [ %i.av, %bb.p ], [ %i.cc, %bb.u ], [ 1, %bb.b ], [ %i.j, %bb.g ], [ %i.av, %bb.q ], [ %i.db, %.preheader.i ], [ %i.db, %.lr.ph.i42 ], [ %i.db, %.lr.ph.i42.prol.loopexit ]
  store i8 %.sink109, ptr %0, align 1, !tbaa !17
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51, %bb.v, %bb.r, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, %bb.d, %bb.a
  %.pn63 = phi ptr [ %1, %bb.r ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51 ], [ %1, %bb.v ], [ %1, %bb.a ], [ %1, %bb.d ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.fj, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn61 = phi i32 [ 75, %bb.r ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51 ], [ 75, %bb.v ], [ 75, %bb.a ], [ 75, %bb.d ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ 0, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn63, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn61, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #43

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not104 = icmp eq ptr %2, %3
  br i1 %.not104, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 6 uses
  %i.d = sdiv exact i64 %i.c, 40                  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !246
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !242  ; 14 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 5 uses
  %i.n = sdiv exact i64 %i.m, 40                  ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @_ZN4toml2v314path_componentC1EOS1_(ptr noundef nonnull align 8 dereferenceable(33) %.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(33) %.sroa.08.012.i.i.i.i.i) #50
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN4toml2v314path_componentES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !850

_ZSt22__uninitialized_move_aIPN4toml2v314path_componentES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !242
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.c
  store ptr %i.t, ptr %i.g, align 8, !tbaa !242
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = sub i64 %i.u, %i.l                       ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPN4toml2v314path_componentES3_ET0_T_S5_S4_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt22__uninitialized_move_aIPN4toml2v314path_componentES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.x = udiv exact i64 %i.v, 40
  br label %.lr.ph.i.i.i.i.i51

.lr.ph.i.i.i.i.i51:                               ; preds = %.lr.ph.i.i.i.i.i51, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i51 ], [ %i.x, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i51 ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i ]
  %.078.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i51 ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i ]
  %i.y = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40 ; 2 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZN4toml2v314path_componentaSEOS1_(ptr noundef nonnull align 8 dereferenceable(33) %i.z, ptr noundef nonnull align 8 dereferenceable(33) %i.y) #50 ; 0 uses
  %i.ab = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ac = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPN4toml2v314path_componentES3_ET0_T_S5_S4_.exit, !llvm.loop !851

_ZSt13move_backwardIPN4toml2v314path_componentES3_ET0_T_S5_S4_.exit: ; preds = %.lr.ph.i.i.i.i.i51, %_ZSt22__uninitialized_move_aIPN4toml2v314path_componentES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.ad = icmp sgt i64 %i.c, 0
  br i1 %i.ad, label %.lr.ph.preheader.i.i.i.i.i52, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

.lr.ph.preheader.i.i.i.i.i52:                     ; preds = %_ZSt13move_backwardIPN4toml2v314path_componentES3_ET0_T_S5_S4_.exit
  %i.ae = udiv exact i64 %i.c, 40
  br label %.lr.ph.i.i.i.i.i53

.lr.ph.i.i.i.i.i53:                               ; preds = %.lr.ph.i.i.i.i.i53, %.lr.ph.preheader.i.i.i.i.i52
  %.012.i.i.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i53 ], [ %i.ae, %.lr.ph.preheader.i.i.i.i.i52 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i53 ], [ %1, %.lr.ph.preheader.i.i.i.i.i52 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i53 ], [ %2, %.lr.ph.preheader.i.i.i.i.i52 ] ; 2 uses
  %i.af = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZN4toml2v314path_componentaSERKS1_(ptr noundef nonnull align 8 dereferenceable(33) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(33) %.0910.i.i.i.i.i) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  %i.ai = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aj = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i53, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, !llvm.loop !852

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ak = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.ak, %3
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt10_ConstructIN4toml2v314path_componentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.am, %_ZSt10_ConstructIN4toml2v314path_componentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.al, %_ZSt10_ConstructIN4toml2v314path_componentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.ak, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  invoke void @_ZN4toml2v314path_componentC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(33) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(33) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN4toml2v314path_componentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.e

_ZSt10_ConstructIN4toml2v314path_componentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %.not.i.i.i.i = icmp eq ptr %i.al, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !853

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  %i.ap = tail call ptr @__cxa_begin_catch(ptr %i.ao) #50 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4toml2v314path_componentEEvT_S4_(ptr noundef %i.h, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #54
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.h

common.resume:                                    ; preds = %bb.u, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.g ], [ %i.cw, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #53
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit.loopexit: ; preds = %_ZSt10_ConstructIN4toml2v314path_componentEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !242
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.at = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.au = sub nuw nsw i64 %i.d, %i.n
  %i.av = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %i.au ; 3 uses
  store ptr %i.av, ptr %i.g, align 8, !tbaa !242
  %.not11.i.i.i.i.i54 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i54, label %_ZSt22__uninitialized_move_aIPN4toml2v314path_componentES3_SaIS2_EET0_T_S6_S5_RT1_.exit60, label %.lr.ph.i.i.i.i.i55

.lr.ph.i.i.i.i.i55:                               ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, %.lr.ph.i.i.i.i.i55
  %.013.i.i.i.i.i56 = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i55 ], [ %i.av, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i57 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i55 ], [ %1, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit ] ; 2 uses
  tail call void @_ZN4toml2v314path_componentC1EOS1_(ptr noundef nonnull align 8 dereferenceable(33) %.013.i.i.i.i.i56, ptr noundef nonnull align 8 dereferenceable(33) %.sroa.08.012.i.i.i.i.i57) #50
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i57, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i56, i64 40
  %.not.i.i.i.i.i58 = icmp eq ptr %i.aw, %i.h
  br i1 %.not.i.i.i.i.i58, label %_ZSt22__uninitialized_move_aIPN4toml2v314path_componentES3_SaIS2_EET0_T_S6_S5_RT1_.exit60.loopexit, label %.lr.ph.i.i.i.i.i55, !llvm.loop !850

_ZSt22__uninitialized_move_aIPN4toml2v314path_componentES3_SaIS2_EET0_T_S6_S5_RT1_.exit60.loopexit: ; preds = %.lr.ph.i.i.i.i.i55
  %.pre115 = load ptr, ptr %i.g, align 8, !tbaa !242
  br label %_ZSt22__uninitialized_move_aIPN4toml2v314path_componentES3_SaIS2_EET0_T_S6_S5_RT1_.exit60

_ZSt22__uninitialized_move_aIPN4toml2v314path_componentES3_SaIS2_EET0_T_S6_S5_RT1_.exit60: ; preds = %_ZSt22__uninitialized_move_aIPN4toml2v314path_componentES3_SaIS2_EET0_T_S6_S5_RT1_.exit60.loopexit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit
  %i.ay = phi ptr [ %.pre115, %_ZSt22__uninitialized_move_aIPN4toml2v314path_componentES3_SaIS2_EET0_T_S6_S5_RT1_.exit60.loopexit ], [ %i.av, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.m
  store ptr %i.az, ptr %i.g, align 8, !tbaa !242
  %i.ba = icmp sgt i64 %i.m, 0
  br i1 %i.ba, label %.lr.ph.preheader.i.i.i.i.i62, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

.lr.ph.preheader.i.i.i.i.i62:                     ; preds = %_ZSt22__uninitialized_move_aIPN4toml2v314path_componentES3_SaIS2_EET0_T_S6_S5_RT1_.exit60
  %i.bb = udiv exact i64 %i.m, 40
  br label %.lr.ph.i.i.i.i.i63

.lr.ph.i.i.i.i.i63:                               ; preds = %.lr.ph.i.i.i.i.i63, %.lr.ph.preheader.i.i.i.i.i62
  %.012.i.i.i.i.i64 = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i63 ], [ %i.bb, %.lr.ph.preheader.i.i.i.i.i62 ] ; 2 uses
  %.0811.i.i.i.i.i65 = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i63 ], [ %1, %.lr.ph.preheader.i.i.i.i.i62 ] ; 2 uses
  %.0910.i.i.i.i.i66 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i63 ], [ %2, %.lr.ph.preheader.i.i.i.i.i62 ] ; 2 uses
  %i.bc = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZN4toml2v314path_componentaSERKS1_(ptr noundef nonnull align 8 dereferenceable(33) %.0811.i.i.i.i.i65, ptr noundef nonnull align 8 dereferenceable(33) %.0910.i.i.i.i.i66) ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i66, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i65, i64 40
  %i.bf = add nsw i64 %.012.i.i.i.i.i64, -1
  %i.bg = icmp samesign ugt i64 %.012.i.i.i.i.i64, 1
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i63, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4toml2v314path_componentESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, !llvm.loop !852

bb.j:                                             ; preds = %bb.b
  %i.bh = load ptr, ptr %0, align 8, !tbaa !244   ; 7 uses
  %i.bi = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bj = sub i64 %i.j, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 40                ; 4 uses
  %i.bl = sub nsw i64 230584300921369395, %i.bk
  %i.bm = icmp ult i64 %i.bl, %i.d
  br i1 %i.bm, label %bb.k, label %_ZNKSt6vectorIN4toml2v314path_componentESaIS2_EE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.216) #54
  unreachable

_ZNKSt6vectorIN4toml2v314path_componentESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 %i.d)
  %i.bn = add nsw i64 %.sroa.speculated.i, %i.bk  ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bk
end_hunk_3
