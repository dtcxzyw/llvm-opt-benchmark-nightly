inline.NumInlined: 3406
inline.NumDeleted: 1747
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN9Stockfish10NumaConfig29indices_from_shortened_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig12from_l3_infoEOSt6vectorINS_8L3DomainESaIS2_EEm(ptr dead_on_unwind noalias writable sret(%"class.Stockfish::NumaConfig") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::tuple.202", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.205", align 1    ; 3 uses
  %5 = alloca %"class.std::map.193", align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  store i32 0, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !36
  %i.f = load ptr, ptr %1, align 8, !tbaa !459    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !459  ; 2 uses
  %.not85100 = icmp eq ptr %i.f, %i.h
  br i1 %.not85100, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !34
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.i = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %0, i8 0, i64 24, i1 false), !alias.scope !486
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  store i32 0, ptr %i.j, align 8, !tbaa !27, !alias.scope !486
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !33, !alias.scope !486
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.j, ptr %i.l, align 8, !tbaa !34, !alias.scope !486
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.j, ptr %i.m, align 8, !tbaa !35, !alias.scope !486
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.n, i8 0, i64 17, i1 false), !alias.scope !486
  %.not86120 = icmp eq ptr %i.i, %i.a
  br i1 %.not86120, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.h

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.sroa.081.0101 = phi ptr [ %i.ba, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ], [ %i.f, %bb.a ] ; 10 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph
  %i.t = load i64, ptr %.sroa.081.0101, align 8, !tbaa !25 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.b ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25
  %i.w = icmp ult i64 %i.v, %i.t                  ; 3 uses
  %.19.i.i.i.i = select i1 %i.w, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.w, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i, label %bb.b, !llvm.loop !489

_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i: ; preds = %bb.b
  %i.x = icmp eq ptr %.19.i.i.i.i, %i.a
  br i1 %i.x, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.w, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.y = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !25
  %i.z = icmp ult i64 %i.t, %i.y
  br i1 %i.z, label %.critedge.i, label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i, %.lr.ph
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i ], [ %i.a, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %.sroa.081.0101, ptr %3, align 8, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.aa = call ptr @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit

_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit: ; preds = %bb.c, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.aa, %.critedge.i ], [ %.19.i.i.i.i, %bb.c ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !455 ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !458
  %.not.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit
  %i.af = load i64, ptr %.sroa.081.0101, align 8, !tbaa !450
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !450
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.081.0101, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.081.0101, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.081.0101, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.081.0101, i64 40
  %i.ap = load <2 x ptr>, ptr %i.am, align 8, !tbaa !37
  store <2 x ptr> %i.ap, ptr %i.an, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ag, ptr %i.aq, align 8, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.081.0101, i64 48 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i64 %i.as, ptr %i.at, align 8, !tbaa !36
  store ptr null, ptr %i.ah, align 8, !tbaa !33
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !34
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !35
  store i64 0, ptr %i.ar, align 8, !tbaa !36
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr null, ptr %i.au, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.ag, ptr %i.av, align 8, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr %i.ag, ptr %i.aw, align 8, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i64 0, ptr %i.ax, align 8, !tbaa !36
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit.i

_ZN9Stockfish8L3DomainC2EOS0_.exit.i:             ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i.i.i = phi i32 [ 0, %bb.f ], [ %i.ak, %bb.e ]
  store i32 %.sink.i.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store ptr %i.ay, ptr %i.ab, align 8, !tbaa !455
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.g:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  call void @_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.081.0101)
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %_ZN9Stockfish8L3DomainC2EOS0_.exit.i, %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.081.0101, i64 56 ; 2 uses
  %.not85 = icmp eq ptr %i.ba, %i.h
  br i1 %.not85, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge125:                                   ; preds = %._crit_edge118, %._crit_edge
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.h:                                             ; preds = %.lr.ph124, %._crit_edge118
  %.0122 = phi i64 [ 0, %.lr.ph124 ], [ %.1.lcssa, %._crit_edge118 ] ; 2 uses
  %.sroa.077.0121 = phi ptr [ %i.i, %.lr.ph124 ], [ %i.er, %._crit_edge118 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.077.0121, i64 40 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.077.0121, i64 48 ; 5 uses
  %.pre137 = load ptr, ptr %i.bd, align 8, !tbaa !455
  %.pre138 = load ptr, ptr %i.bc, align 8, !tbaa !460
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge106, %bb.h
  %i.be = phi ptr [ %i.ej, %._crit_edge106 ], [ %.pre138, %bb.h ] ; 3 uses
  %i.bf = phi ptr [ %i.ek, %._crit_edge106 ], [ %.pre137, %bb.h ] ; 3 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = sdiv exact i64 %i.bi, 56
  %i.bk = icmp ugt i64 %i.bj, 1
  br i1 %i.bk, label %.lr.ph105, label %.preheader

._crit_edge106:                                   ; preds = %bb.r
  br i1 %.135, label %bb.i, label %.preheader, !llvm.loop !490

.preheader:                                       ; preds = %bb.i, %._crit_edge106
  %i.bl = phi ptr [ %i.ek, %._crit_edge106 ], [ %i.bf, %bb.i ] ; 2 uses
  %i.bm = phi ptr [ %i.ej, %._crit_edge106 ], [ %i.be, %bb.i ] ; 2 uses
  %.not87114 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not87114, label %._crit_edge118, label %.lr.ph117

.lr.ph105:                                        ; preds = %bb.i, %bb.r
  %i.bn = phi ptr [ %i.ej, %bb.r ], [ %i.be, %bb.i ] ; 4 uses
  %i.bo = phi ptr [ %i.ek, %bb.r ], [ %i.bf, %bb.i ] ; 2 uses
  %i.bp = phi i64 [ %i.el, %bb.r ], [ 1, %bb.i ]  ; 3 uses
  %.034103 = phi i1 [ %.135, %bb.r ], [ false, %bb.i ]
  %.036102 = phi i64 [ %i.bp, %bb.r ], [ 0, %bb.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [56 x i8], ptr %i.bn, i64 %.036102 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !36
  %6 = getelementptr inbounds nuw [56 x i8], ptr %i.bn, i64 %i.bp ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !36
  %i.bv = add i64 %i.bu, %i.bs
  %.not = icmp ugt i64 %i.bv, %2
  br i1 %.not, label %bb.r, label %bb.j

bb.j:                                             ; preds = %.lr.ph105
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !34 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %.not21.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not21.i, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i, %.lr.ph.i43
  %.sroa.013.022.i = phi ptr [ %i.bx, %.lr.ph.i43 ], [ %i.cc, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i ] ; 3 uses
  %i.cc = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.013.022.i) #30 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i, i64 32 ; 2 uses
  %.02022.i.i = load ptr, ptr %i.bz, align 8, !tbaa !37 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !25 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.l ] ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !25 ; 2 uses
  %i.ch = icmp ult i64 %i.ce, %i.cg               ; 2 uses
  %.in.v.i.i = select i1 %i.ch, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i44 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i44, label %._crit_edge.i.i, label %bb.l, !llvm.loop !38

._crit_edge.i.i:                                  ; preds = %bb.l
  br i1 %i.ch, label %._crit_edge.thread.i.i, label %bb.n

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.k
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.ca, %bb.k ] ; 4 uses
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !34
  %i.cj = icmp eq ptr %.019.lcssa29.i.i, %i.ci
  br i1 %i.cj, label %select.unfold.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i.i
  %i.ck = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #30
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %.pre.i47 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !25
  %.pre23.i = load i64, ptr %i.cd, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %i.cl = phi i64 [ %.pre23.i, %bb.m ], [ %i.ce, %._crit_edge.i.i ]
  %i.cm = phi i64 [ %.pre.i47, %bb.m ], [ %i.cg, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.m ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.cn = icmp ult i64 %i.cm, %i.cl
  br i1 %i.cn, label %select.unfold.i, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i

select.unfold.i:                                  ; preds = %bb.n, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %.019.lcssa28.i.i, %bb.n ] ; 3 uses
  %i.co = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.013.022.i, ptr noundef nonnull align 8 dereferenceable(32) %i.by) #28 ; 2 uses
  %i.cp = load i64, ptr %i.bt, align 8, !tbaa !36
  %i.cq = add i64 %i.cp, -1
  store i64 %i.cq, ptr %i.bt, align 8, !tbaa !36
  %i.cr = icmp eq ptr %.sroa.4.0.i.ph.i, %i.ca
  br i1 %i.cr, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i, label %bb.o

bb.o:                                             ; preds = %select.unfold.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !25
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !25
  %i.cw = icmp ult i64 %i.cu, %i.cv
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i: ; preds = %bb.o, %select.unfold.i
  %i.cx = phi i1 [ %i.cw, %bb.o ], [ true, %select.unfold.i ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cx, ptr noundef nonnull %i.co, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ca) #28
  %i.cy = load i64, ptr %i.br, align 8, !tbaa !36
  %i.cz = add i64 %i.cy, 1
  store i64 %i.cz, ptr %i.br, align 8, !tbaa !36
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i, %bb.n
  %.not.i45 = icmp eq ptr %i.cc, %i.by
  br i1 %.not.i45, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit, label %bb.k, !llvm.loop !491

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i
  %.pre139 = load ptr, ptr %i.bc, align 8, !tbaa !459
  %.pre140 = load ptr, ptr %i.bd, align 8, !tbaa !459
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit, %bb.j
  %i.da = phi ptr [ %.pre140, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit ], [ %i.bo, %bb.j ] ; 4 uses
  %i.db = phi ptr [ %.pre139, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit ], [ %i.bn, %bb.j ]
  %i.dc = getelementptr inbounds [56 x i8], ptr %i.db, i64 %.036102 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 112 ; 3 uses
  %.not.i.i = icmp eq ptr %i.dd, %i.da
  br i1 %.not.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 2 uses
  %i.dh = icmp sgt i64 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.p
  %i.di = udiv exact i64 %i.dg, 56
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.ec, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.di, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.pn = phi ptr [ %.0811.i.i.i.i.i.i.i, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.dc, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 7 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.eb, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.dd, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 7 uses
  %.0811.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 56 ; 2 uses
  %i.dj = load i64, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !450
  store i64 %i.dj, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !450
  %i.dk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 80 ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.dk, ptr noundef %i.dm)
  %i.dn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 72 ; 4 uses
  store ptr null, ptr %i.dl, align 8, !tbaa !33
  %i.do = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 88 ; 2 uses
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !34
  %i.dp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 96
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !35
  %i.dq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 104 ; 2 uses
  store i64 0, ptr %i.dq, align 8, !tbaa !36
  %i.dr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !27
  store i32 %i.du, ptr %i.dn, align 8, !tbaa !27
  store ptr %i.ds, ptr %i.dl, align 8, !tbaa !33
  %i.dv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 40
  %i.dx = load <2 x ptr>, ptr %i.dv, align 8, !tbaa !37
  store <2 x ptr> %i.dx, ptr %i.do, align 8, !tbaa !37
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dn, ptr %i.dy, align 8, !tbaa !57
  %i.dz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !36
  store i64 %i.ea, ptr %i.dq, align 8, !tbaa !36
  store ptr null, ptr %i.dr, align 8, !tbaa !33
  store ptr %i.dt, ptr %i.dv, align 8, !tbaa !34
  store ptr %i.dt, ptr %i.dw, align 8, !tbaa !35
  store i64 0, ptr %i.dz, align 8, !tbaa !36
  br label %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i

_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 56
  %i.ec = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.ed = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.ed, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i, !llvm.loop !492

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i: ; preds = %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.bd, align 8, !tbaa !455
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit, %bb.p, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i
  %i.ee = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i ], [ %i.da, %bb.p ], [ %i.da, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit ] ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -56
  store ptr %i.ef, ptr %i.bd, align 8, !tbaa !455
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -48
  %i.eh = getelementptr inbounds i8, ptr %i.ee, i64 -32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.eg, ptr noundef %i.ei)
  %.pre141 = load ptr, ptr %i.bd, align 8, !tbaa !455
  %.pre142 = load ptr, ptr %i.bc, align 8, !tbaa !460
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph105, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit
  %i.ej = phi ptr [ %.pre142, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %i.bn, %.lr.ph105 ] ; 4 uses
  %i.ek = phi ptr [ %.pre141, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %i.bo, %.lr.ph105 ] ; 4 uses
  %.135 = phi i1 [ true, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.034103, %.lr.ph105 ] ; 2 uses
  %i.el = add nuw i64 %i.bp, 1                    ; 2 uses
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = ptrtoint ptr %i.ej to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = sdiv exact i64 %i.eo, 56
  %i.eq = icmp ult i64 %i.el, %i.ep
  br i1 %i.eq, label %.lr.ph105, label %._crit_edge106, !llvm.loop !493

._crit_edge118:                                   ; preds = %._crit_edge113, %.preheader
  %.1.lcssa = phi i64 [ %.0122, %.preheader ], [ %i.es, %._crit_edge113 ]
  %i.er = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.077.0121) #30 ; 2 uses
  %.not86 = icmp eq ptr %i.er, %i.a
  br i1 %.not86, label %._crit_edge125, label %bb.h

.lr.ph117:                                        ; preds = %.preheader, %._crit_edge113
  %.1116 = phi i64 [ %i.es, %._crit_edge113 ], [ %.0122, %.preheader ] ; 5 uses
  %.sroa.069.0115 = phi ptr [ %i.ew, %._crit_edge113 ], [ %i.bm, %.preheader ] ; 3 uses
  %i.es = add i64 %.1116, 1                       ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.069.0115, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !34 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.069.0115, i64 16 ; 2 uses
  %.not88109 = icmp eq ptr %i.eu, %i.ev
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEZNS8_6EngineC1ES7_E3$_5E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation":bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_5E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_5E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_5", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !172
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_5E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_5E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_5E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEZNS8_6EngineC1ES7_E3$_6E9_M_invokeERKSt9_Any_dataSB_"(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional") align 8 captures(none) initializes((32, 33)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(152) %2) #4 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !756
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !758
  call void @_ZNK9Stockfish6OptioncvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(152) %2) #28, !noalias !758
  call void @_ZN9Stockfish6Engine16load_big_networkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1680) %.val, ptr noundef nonnull align 8 dereferenceable(32) %3), !noalias !758
  %i.a = load ptr, ptr %3, align 8, !tbaa !49, !noalias !758 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %"_ZSt10__invoke_rISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERZN9Stockfish6EngineC1ES7_E3$_6JRKNS8_6OptionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !52, !noalias !758
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #33, !noalias !758
  br label %"_ZSt10__invoke_rISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERZN9Stockfish6EngineC1ES7_E3$_6JRKNS8_6OptionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit"

"_ZSt10__invoke_rISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERZN9Stockfish6EngineC1ES7_E3$_6JRKNS8_6OptionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit": ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !758
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.f, align 8, !tbaa !41, !alias.scope !758
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEZNS8_6EngineC1ES7_E3$_6E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #23 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_6E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_6", ptr %0, align 8, !tbaa !731
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_6E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !172
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_6E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !119
  store i64 %.val.i, ptr %0, align 8, !tbaa !119
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_6E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_6E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEZNS8_6EngineC1ES7_E3$_7E9_M_invokeERKSt9_Any_dataSB_"(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional") align 8 captures(none) initializes((32, 33)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(152) %2) #4 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !761
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !763
  call void @_ZNK9Stockfish6OptioncvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(152) %2) #28, !noalias !763
  call void @_ZN9Stockfish6Engine18load_small_networkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1680) %.val, ptr noundef nonnull align 8 dereferenceable(32) %3), !noalias !763
  %i.a = load ptr, ptr %3, align 8, !tbaa !49, !noalias !763 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %"_ZSt10__invoke_rISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERZN9Stockfish6EngineC1ES7_E3$_7JRKNS8_6OptionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !52, !noalias !763
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #33, !noalias !763
  br label %"_ZSt10__invoke_rISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERZN9Stockfish6EngineC1ES7_E3$_7JRKNS8_6OptionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit"

"_ZSt10__invoke_rISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERZN9Stockfish6EngineC1ES7_E3$_7JRKNS8_6OptionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit": ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !763
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.f, align 8, !tbaa !41, !alias.scope !763
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEZNS8_6EngineC1ES7_E3$_7E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #23 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_7E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_7", ptr %0, align 8, !tbaa !731
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_7E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !172
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_7E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !119
  store i64 %.val.i, ptr %0, align 8, !tbaa !119
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_7E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_7E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE16_M_push_back_auxIJEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 1
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 192
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 192
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 48038396025285290
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !63
  %i.ag = load ptr, ptr %0, align 8, !tbaa !69
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #31
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !227
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !70
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !75
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ap, i8 0, i64 192, i1 false)
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !227
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !71
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !70 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !72
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 384
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !73
  store ptr %i.as, ptr %i.a, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !227  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !226  ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !63   ; 5 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !69
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !766

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !70
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !70
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

bb.g:                                             ; preds = %bb.b
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = sub i64 %i.ab, %i.f                     ; 3 uses
  %i.ad = ashr exact i64 %i.ac, 3                 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 1
  br i1 %i.ae, label %bb.h, label %bb.i, !prof !766

bb.h:                                             ; preds = %bb.g
  %i.af = sub nsw i64 0, %i.ad
  %i.ag = getelementptr inbounds [8 x i8], ptr %3, i64 %i.af
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.d, i64 %i.ac, i1 false)
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

bb.i:                                             ; preds = %bb.g
  %i.ah = icmp eq i64 %i.ac, 8
  br i1 %i.ah, label %bb.j, label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

bb.j:                                             ; preds = %bb.i
  %4 = getelementptr inbounds i8, ptr %3, i64 -8
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !70
  store ptr %i.ai, ptr %4, align 8, !tbaa !70
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.aj = add i64 %i.l, 2
  %i.ak = add i64 %i.aj, %.sroa.speculated        ; 5 uses
  %i.al = icmp ugt i64 %i.ak, 1152921504606846975
  br i1 %i.al, label %bb.l, label %_ZNSt11_Deque_baseIN9Stockfish9StateInfoESaIS1_EE15_M_allocate_mapEm.exit, !prof !578

bb.l:                                             ; preds = %bb.k
  %i.am = icmp ugt i64 %i.ak, 2305843009213693951
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt11_Deque_baseIN9Stockfish9StateInfoESaIS1_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.an = shl nuw nsw i64 %i.ak, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #31 ; 2 uses
  %i.ap = sub i64 %i.ak, %i.j
  %i.aq = lshr i64 %i.ap, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  %i.as = select i1 %2, i64 %1, i64 0
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.f                     ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, 8
  br i1 %i.ax, label %bb.o, label %bb.p, !prof !766

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIN9Stockfish9StateInfoESaIS1_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.at, ptr align 8 %i.d, i64 %i.aw, i1 false)
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIN9Stockfish9StateInfoESaIS1_EE15_M_allocate_mapEm.exit
  %i.ay = icmp eq i64 %i.aw, 8
  br i1 %i.ay, label %bb.q, label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24

bb.q:                                             ; preds = %bb.p
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !70
  store ptr %i.az, ptr %i.at, align 8, !tbaa !70
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24

_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.ba = load ptr, ptr %0, align 8, !tbaa !69
  %i.bb = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bb) #33
  store ptr %i.ao, ptr %0, align 8, !tbaa !69
  store i64 %i.ak, ptr %i.k, align 8, !tbaa !63
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24
  %.0 = phi ptr [ %i.at, %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !71
  %i.bc = load ptr, ptr %.0, align 8, !tbaa !70   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !72
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 384
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !73
  %5 = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bg = getelementptr inbounds i8, ptr %5, i64 -8 ; 2 uses
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !71
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !70 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !72
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 384
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 192153584101141162
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !184
  %i.d = load ptr, ptr %0, align 8, !tbaa !182    ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 48
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit, label %bb.g

_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !179  ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 48
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #31 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %i.p = load i32, ptr %.0911.i.i.i, align 8, !tbaa !185, !alias.scope !770, !noalias !767
  store i32 %i.p, ptr %.012.i.i.i, align 8, !tbaa !185, !alias.scope !767, !noalias !770
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  store i8 0, ptr %i.t, align 8, !tbaa !41, !alias.scope !767, !noalias !770
  %i.u = load i8, ptr %i.s, align 8, !tbaa !41, !range !44, !alias.scope !770, !noalias !767, !noundef !45
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.w, ptr %i.q, align 8, !tbaa !46, !alias.scope !767, !noalias !770
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !49, !alias.scope !770, !noalias !767 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !51, !alias.scope !770, !noalias !767 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !772
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  store ptr %i.x, ptr %i.q, align 8, !tbaa !49, !alias.scope !767, !noalias !770
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !52, !alias.scope !770, !noalias !767
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !52, !alias.scope !767, !noalias !770
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !51, !alias.scope !770, !noalias !767
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.af = phi i64 [ %i.ab, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !51, !alias.scope !767, !noalias !770
  store ptr %i.y, ptr %i.r, align 8, !tbaa !49, !alias.scope !770, !noalias !767
  store i64 0, ptr %i.ag, align 8, !tbaa !51, !alias.scope !770, !noalias !767
  store i8 0, ptr %i.y, align 8, !tbaa !52, !alias.scope !770, !noalias !767
  store i8 1, ptr %i.t, align 8, !tbaa !41, !alias.scope !767, !noalias !770
  br label %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  store i8 0, ptr %i.s, align 8, !tbaa !41, !alias.scope !770, !noalias !767
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i = icmp eq ptr %i.ai, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !773

_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.loopexit: ; preds = %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !182
  br label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit

_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit: ; preds = %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.loopexit, %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit
  %i.ak = phi ptr [ %.pre, %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.ak, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !184
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #33
  br label %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit

_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit: ; preds = %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !182
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !179
  %i.aq = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %1
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !184
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE17_M_realloc_insertIJS2_SA_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !179  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !182    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = load i32, ptr %2, align 4, !tbaa !203
  store i32 %i.r, ptr %i.q, align 8, !tbaa !185
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  store i8 0, ptr %i.u, align 8, !tbaa !41
  %i.v = load i8, ptr %i.t, align 8, !tbaa !41, !range !44, !noundef !45
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.x, ptr %i.s, align 8, !tbaa !46
  %i.y = load ptr, ptr %3, align 8, !tbaa !49     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !51 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.y, ptr %i.s, align 8, !tbaa !49
  %i.af = load i64, ptr %i.z, align 8, !tbaa !52
  store i64 %i.af, ptr %i.x, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !51
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.ag = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.ac, %bb.d ]
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !51
  store ptr %i.z, ptr %3, align 8, !tbaa !49
end_hunk_1
