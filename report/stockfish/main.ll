inline.NumInlined: 2325
inline.NumDeleted: 1332
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN9Stockfish10NumaConfig29indices_from_shortened_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig12from_l3_infoEOSt6vectorINS_8L3DomainESaIS2_EEm(ptr dead_on_unwind noalias writable sret(%"class.Stockfish::NumaConfig") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::tuple.276", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.279", align 1    ; 3 uses
  %5 = alloca %"class.std::map.267", align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
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
  %i.f = load ptr, ptr %1, align 8, !tbaa !354    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !354  ; 2 uses
  %.not85100 = icmp eq ptr %i.f, %i.h
  br i1 %.not85100, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !34
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.i = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %0, i8 0, i64 24, i1 false), !alias.scope !385
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  store i32 0, ptr %i.j, align 8, !tbaa !27, !alias.scope !385
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !33, !alias.scope !385
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.j, ptr %i.l, align 8, !tbaa !34, !alias.scope !385
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.j, ptr %i.m, align 8, !tbaa !35, !alias.scope !385
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.n, i8 0, i64 17, i1 false), !alias.scope !385
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
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i, label %bb.b, !llvm.loop !388

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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %.sroa.081.0101, ptr %3, align 8, !tbaa !342
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.aa = call ptr @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit

_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit: ; preds = %bb.c, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.aa, %.critedge.i ], [ %.19.i.i.i.i, %bb.c ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !350 ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !353
  %.not.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit
  %i.af = load i64, ptr %.sroa.081.0101, align 8, !tbaa !345
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !345
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
  store ptr %i.ag, ptr %i.aq, align 8, !tbaa !319
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
  store ptr %i.ay, ptr %i.ab, align 8, !tbaa !350
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
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

bb.h:                                             ; preds = %.lr.ph124, %._crit_edge118
  %.0122 = phi i64 [ 0, %.lr.ph124 ], [ %.1.lcssa, %._crit_edge118 ] ; 2 uses
  %.sroa.077.0121 = phi ptr [ %i.i, %.lr.ph124 ], [ %i.er, %._crit_edge118 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.077.0121, i64 40 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.077.0121, i64 48 ; 5 uses
  %.pre137 = load ptr, ptr %i.bd, align 8, !tbaa !350
  %.pre138 = load ptr, ptr %i.bc, align 8, !tbaa !355
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
  br i1 %.135, label %bb.i, label %.preheader, !llvm.loop !389

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
  %i.cc = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.013.022.i) #27 ; 2 uses
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
  %i.ck = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #27
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
  %i.co = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.013.022.i, ptr noundef nonnull align 8 dereferenceable(32) %i.by) #25 ; 2 uses
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
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cx, ptr noundef nonnull %i.co, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ca) #25
  %i.cy = load i64, ptr %i.br, align 8, !tbaa !36
  %i.cz = add i64 %i.cy, 1
  store i64 %i.cz, ptr %i.br, align 8, !tbaa !36
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i, %bb.n
  %.not.i45 = icmp eq ptr %i.cc, %i.by
  br i1 %.not.i45, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit, label %bb.k, !llvm.loop !390

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i
  %.pre139 = load ptr, ptr %i.bc, align 8, !tbaa !354
  %.pre140 = load ptr, ptr %i.bd, align 8, !tbaa !354
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
  %i.dj = load i64, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !345
  store i64 %i.dj, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !345
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
  store ptr %i.dn, ptr %i.dy, align 8, !tbaa !319
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
  br i1 %i.ed, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i, !llvm.loop !391

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i: ; preds = %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.bd, align 8, !tbaa !350
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit, %bb.p, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i
  %i.ee = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i ], [ %i.da, %bb.p ], [ %i.da, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit ] ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -56
  store ptr %i.ef, ptr %i.bd, align 8, !tbaa !350
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -48
  %i.eh = getelementptr inbounds i8, ptr %i.ee, i64 -32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.eg, ptr noundef %i.ei)
  %.pre141 = load ptr, ptr %i.bd, align 8, !tbaa !350
  %.pre142 = load ptr, ptr %i.bc, align 8, !tbaa !355
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
  br i1 %i.eq, label %.lr.ph105, label %._crit_edge106, !llvm.loop !392

._crit_edge118:                                   ; preds = %._crit_edge113, %.preheader
  %.1.lcssa = phi i64 [ %.0122, %.preheader ], [ %i.es, %._crit_edge113 ]
  %i.er = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.077.0121) #27 ; 2 uses
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
