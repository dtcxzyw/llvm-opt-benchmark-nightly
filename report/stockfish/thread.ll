Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/thread?download=true
inline.NumInlined: 2122
inline.NumDeleted: 1239
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm:bb.a
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #30
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !37     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !37
  %i.g = icmp ult i64 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, label %bb.b, !llvm.loop !8

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !37
  %i.k = icmp ult i64 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i64, ptr %1, align 8, !tbaa !37
  store i64 %i.n, ptr %i.m, align 8, !tbaa !149
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !150
  %i.p = tail call { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i64, ptr %i.m, align 8, !tbaa !37
  %i.v = load i64, ptr %i.t, align 8, !tbaa !37
  %i.w = icmp ult i64 %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.x = phi i1 [ %i.w, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #26
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !47
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !47
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #30
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ab
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_2clEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #3 align 2 !type !365 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %2 = alloca %"class.Stockfish::OptionalThreadToNumaNodeBinder", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !366, !nonnull !76, !align !77
  %i.d = load i64, ptr %i.c, align 8, !tbaa !37
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNSt10unique_ptrIN9Stockfish6Search13SearchManagerESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN9Stockfish6Search17NullSearchManagerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN9Stockfish6Search17NullSearchManagerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29, !noalias !367 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9Stockfish6Search17NullSearchManagerE, i64 16), ptr %i.e, align 8, !tbaa !51, !noalias !367
  br label %.critedge10

_ZNSt10unique_ptrIN9Stockfish6Search13SearchManagerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !368, !nonnull !76, !align !77
  %i.h = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #29, !noalias !369 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9Stockfish6Search13SearchManagerE, i64 16), ptr %i.h, align 8, !tbaa !51, !noalias !369
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 -1, ptr %i.i, align 8, !tbaa !370, !noalias !369
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i8 0, ptr %i.j, align 8, !tbaa !371, !noalias !369
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store ptr %i.g, ptr %i.k, align 8, !tbaa !141, !noalias !369
  br label %.critedge10

.critedge10:                                      ; preds = %_ZNSt10unique_ptrIN9Stockfish6Search17NullSearchManagerESt14default_deleteIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN9Stockfish6Search13SearchManagerESt14default_deleteIS2_EED2Ev.exit
  %.sroa.022.024 = phi ptr [ %i.e, %_ZNSt10unique_ptrIN9Stockfish6Search17NullSearchManagerESt14default_deleteIS2_EED2Ev.exit ], [ %i.h, %_ZNSt10unique_ptrIN9Stockfish6Search13SearchManagerESt14default_deleteIS2_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !372, !nonnull !76
  %i.n = load i8, ptr %i.m, align 1, !tbaa !133, !range !97, !noundef !76
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !373, !nonnull !76, !align !77
  br label %bb.c

bb.c:                                             ; preds = %.critedge10, %bb.b
  %.sink26 = phi ptr [ %i.q, %bb.b ], [ null, %.critedge10 ]
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %.in, align 8, !tbaa !374, !nonnull !76, !align !77 ; 2 uses
  %.sink = load i64, ptr %i.r, align 8, !tbaa !37
  store ptr %.sink26, ptr %2, align 8, !tbaa !153
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sink, ptr %i.s, align 8, !tbaa !154
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !375, !nonnull !76, !align !77
  %i.w = load ptr, ptr %0, align 8, !tbaa !366, !nonnull !76, !align !77
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !376, !nonnull !76, !align !77
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.r) ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !37 ; 2 uses
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !377, !nonnull !76, !align !77
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !374, !nonnull !76, !align !77
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ah = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #29, !noalias !378 ; 3 uses
  %i.ai = ptrtoint ptr %.sroa.022.024 to i64
  store i64 %i.ai, ptr %1, align 8, !tbaa !111, !noalias !378
  %i.aj = load i64, ptr %i.w, align 8, !tbaa !37, !noalias !378
  %i.ak = load i64, ptr %i.ag, align 8, !tbaa !37, !noalias !378
  call void @_ZN9Stockfish6ThreadC2ERNS_6Search11SharedStateESt10unique_ptrINS1_14ISearchManagerESt14default_deleteIS5_EEmmmNS_30OptionalThreadToNumaNodeBinderE(ptr noundef nonnull align 8 dereferenceable(192) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 %1, i64 noundef %i.aj, i64 noundef %i.ab, i64 noundef %i.ak, ptr noundef nonnull byval(%"class.Stockfish::OptionalThreadToNumaNodeBinder") align 8 %2), !noalias !378
  %i.al = load ptr, ptr %1, align 8, !tbaa !111, !noalias !378 ; 3 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %_ZSt11make_uniqueIN9Stockfish6ThreadEJRNS0_6Search11SharedStateESt10unique_ptrINS2_14ISearchManagerESt14default_deleteIS6_EERKmmRmRNS0_30OptionalThreadToNumaNodeBinderEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %_ZNKSt14default_deleteIN9Stockfish6Search14ISearchManagerEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN9Stockfish6Search14ISearchManagerEEclEPS2_.exit.i.i: ; preds = %bb.c
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !51, !noalias !378
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !378
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.al) #26, !noalias !378, !inline_history !355
  br label %_ZSt11make_uniqueIN9Stockfish6ThreadEJRNS0_6Search11SharedStateESt10unique_ptrINS2_14ISearchManagerESt14default_deleteIS6_EERKmmRmRNS0_30OptionalThreadToNumaNodeBinderEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN9Stockfish6ThreadEJRNS0_6Search11SharedStateESt10unique_ptrINS2_14ISearchManagerESt14default_deleteIS6_EERKmmRmRNS0_30OptionalThreadToNumaNodeBinderEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN9Stockfish6Search14ISearchManagerEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !113 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !379
  %.not.i13 = icmp eq ptr %i.aq, %i.as
  br i1 %.not.i13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt11make_uniqueIN9Stockfish6ThreadEJRNS0_6Search11SharedStateESt10unique_ptrINS2_14ISearchManagerESt14default_deleteIS6_EERKmmRmRNS0_30OptionalThreadToNumaNodeBinderEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.at = ptrtoint ptr %i.ah to i64
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !88
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.au, ptr %i.ap, align 8, !tbaa !113
  br label %_ZNSt10unique_ptrIN9Stockfish6Search14ISearchManagerESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %_ZSt11make_uniqueIN9Stockfish6ThreadEJRNS0_6Search11SharedStateESt10unique_ptrINS2_14ISearchManagerESt14default_deleteIS6_EERKmmRmRNS0_30OptionalThreadToNumaNodeBinderEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.av = load ptr, ptr %i.t, align 8, !tbaa !114 ; 12 uses
  %i.aw = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 4 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #31
  unreachable

_ZNKSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 3 uses
  %.not.i.i16 = icmp ne i64 %i.be, 0
  call void @llvm.assume(i1 %.not.i.i16)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #29 ; 12 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  %i.bi = ptrtoint ptr %i.ah to i64
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !88
  %.not10.i.i.i.i = icmp eq ptr %i.av, %i.aq
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bj = add i64 %i.aw, -8
  %3 = sub i64 %i.bj, %i.ax                       ; 3 uses
  %i.bk = lshr i64 %3, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %3, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %4 = add i64 %i.aw, -8
  %5 = sub i64 %4, %i.ax
  %i.bm = and i64 %5, -8
  %6 = add i64 %i.bm, 8                           ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bg, i64 %6
  %scevgep30 = getelementptr i8, ptr %i.av, i64 %6
  %bound0 = icmp ult ptr %i.bg, %scevgep30
  %bound1 = icmp ult ptr %i.av, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check31 = icmp ult i64 %3, 248
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bn = and i64 %i.bl, 24
  %n.vec = and i64 %i.bl, 4611686018427387872     ; 4 uses
  %i.bo = shl i64 %n.vec, 3                       ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bg, i64 %i.bo  ; 2 uses
  %i.bq = getelementptr i8, ptr %i.av, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.br ; 4 uses
  %next.gep32 = getelementptr i8, ptr %i.av, i64 %i.br ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.bs = getelementptr i8, ptr %next.gep32, i64 64
  %i.bt = getelementptr i8, ptr %next.gep32, i64 128
  %i.bu = getelementptr i8, ptr %next.gep32, i64 192
  %wide.load = load <8 x i64>, ptr %next.gep32, align 8, !tbaa !88, !alias.scope !382, !noalias !380
  %wide.load33 = load <8 x i64>, ptr %i.bs, align 8, !tbaa !88, !alias.scope !382, !noalias !380
  %wide.load34 = load <8 x i64>, ptr %i.bt, align 8, !tbaa !88, !alias.scope !382, !noalias !380
  %wide.load35 = load <8 x i64>, ptr %i.bu, align 8, !tbaa !88, !alias.scope !382, !noalias !380
  %i.bv = getelementptr i8, ptr %next.gep, i64 64
  %i.bw = getelementptr i8, ptr %next.gep, i64 128
  %i.bx = getelementptr i8, ptr %next.gep, i64 192
  store <8 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !88, !alias.scope !383, !noalias !382
  store <8 x i64> %wide.load33, ptr %i.bv, align 8, !tbaa !88, !alias.scope !383, !noalias !382
  store <8 x i64> %wide.load34, ptr %i.bw, align 8, !tbaa !88, !alias.scope !383, !noalias !382
  store <8 x i64> %wide.load35, ptr %i.bx, align 8, !tbaa !88, !alias.scope !383, !noalias !382
  %i.by = getelementptr i8, ptr %next.gep32, i64 64
  %i.bz = getelementptr i8, ptr %next.gep32, i64 128
  %i.ca = getelementptr i8, ptr %next.gep32, i64 192
  store <8 x ptr> splat (ptr null), ptr %next.gep32, align 8, !tbaa !88, !alias.scope !382, !noalias !380
  store <8 x ptr> splat (ptr null), ptr %i.by, align 8, !tbaa !88, !alias.scope !382, !noalias !380
  store <8 x ptr> splat (ptr null), ptr %i.bz, align 8, !tbaa !88, !alias.scope !382, !noalias !380
  store <8 x ptr> splat (ptr null), ptr %i.ca, align 8, !tbaa !88, !alias.scope !382, !noalias !380
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !362

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !132

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %i.bl, 4611686018427387896   ; 3 uses
  %i.cc = shl i64 %n.vec37, 3                     ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bg, i64 %i.cc  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.av, i64 %i.cc
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %i.cf = shl i64 %index38, 3                     ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.bg, i64 %i.cf
  %next.gep40 = getelementptr i8, ptr %i.av, i64 %i.cf ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %wide.load41 = load <8 x i64>, ptr %next.gep40, align 8, !tbaa !88, !alias.scope !382, !noalias !380
  store <8 x i64> %wide.load41, ptr %next.gep39, align 8, !tbaa !88, !alias.scope !383, !noalias !382
  store <8 x ptr> splat (ptr null), ptr %next.gep40, align 8, !tbaa !88, !alias.scope !382, !noalias !380
  %index.next42 = add nuw i64 %index38, 8         ; 2 uses
  %i.cg = icmp eq i64 %index.next42, %n.vec37
  br i1 %i.cg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !363

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.bl, %n.vec37
  br i1 %cmp.n43, label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bg, %iter.check ], [ %i.bg, %vector.memcheck ], [ %i.bp, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.av, %iter.check ], [ %i.av, %vector.memcheck ], [ %i.bq, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.ch = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !88, !alias.scope !381, !noalias !380
  store i64 %i.ch, ptr %.012.i.i.i.i, align 8, !tbaa !88, !alias.scope !380, !noalias !381
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !88, !alias.scope !381, !noalias !380
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ci, %i.aq
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !364

_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bg, %_ZNKSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.cd, %vec.epilog.middle.block ], [ %i.bp, %middle.block ], [ %i.cj, %.lr.ph.i.i.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.av, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.cl = load ptr, ptr %i.ar, align 8, !tbaa !379
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.cm, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.cn) #30
  br label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.g
  store ptr %i.bg, ptr %i.t, align 8, !tbaa !114
  store ptr %i.ck, ptr %i.ap, align 8, !tbaa !113
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.co, ptr %i.ar, align 8, !tbaa !379
  br label %_ZNSt10unique_ptrIN9Stockfish6Search14ISearchManagerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN9Stockfish6Search14ISearchManagerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish10ThreadPool5clearEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::unique_lock", align 8  ; 6 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !113  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !114  ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.b:                                             ; preds = %_ZN9Stockfish6Thread12clear_workerEv.exit
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !109  ; 3 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %.not1416 = icmp eq ptr %i.i, %i.j
  br i1 %.not1416, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.e

bb.c:                                             ; preds = %.preheader, %_ZN9Stockfish6Thread12clear_workerEv.exit
  %.sroa.011.015 = phi ptr [ %i.d, %.preheader ], [ %i.p, %_ZN9Stockfish6Thread12clear_workerEv.exit ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.011.015, align 8, !tbaa !88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.m = ptrtoint ptr %i.l to i64
  store i64 0, ptr %i.h, align 8
  store i64 %i.m, ptr %2, align 8, !tbaa !88
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish6Thread12clear_workerEvE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.g, align 8, !tbaa !91
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish6Thread12clear_workerEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation", ptr %i.f, align 8, !tbaa !92
  call void @_ZN9Stockfish6Thread14run_custom_jobESt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(192) %i.l, ptr noundef nonnull align 8 %2)
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !92   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZN9Stockfish6Thread12clear_workerEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #26, !inline_history !384 ; 0 uses
  br label %_ZN9Stockfish6Thread12clear_workerEv.exit

_ZN9Stockfish6Thread12clear_workerEv.exit:        ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.c
  br i1 %.not, label %bb.b, label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !109
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.q = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.i, %bb.b ]
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !88
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !107
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 11422176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111  ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 92
  store i32 32001, ptr %i.w, align 4, !tbaa !385
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store double 8.500000e-01, ptr %i.x, align 8, !tbaa !386
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store i32 0, ptr %i.y, align 8, !tbaa !387
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store i32 32001, ptr %i.z, align 8, !tbaa !388
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store double -1.000000e+00, ptr %i.aa, align 8, !tbaa !389
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @_ZN9Stockfish14TimeManagement5clearEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ab) #26
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph, %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit
  %.sroa.07.017 = phi ptr [ %i.i, %.lr.ph ], [ %i.am, %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit ] ; 2 uses
  %i.ac = load ptr, ptr %.sroa.07.017, align 8, !tbaa !88 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeImSt4pairIKmN9Stockfish15SharedHistoriesEESt10_Select1stIS4_ESt4lessImESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish15SharedHistoriesC2Em(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !427
  %i.b = shl i64 %1, 16                           ; 3 uses
  store i64 %i.b, ptr %0, align 8, !tbaa !428
  %i.c = shl i64 %1, 20                           ; 2 uses
  %i.d = or disjoint i64 %i.c, 8
  %i.e = tail call noundef ptr @_ZN9Stockfish25aligned_large_pages_allocEm(i64 noundef %i.d) #26, !noalias !429, !inline_history !423 ; 3 uses
  store i64 %i.b, ptr %i.e, align 8, !tbaa !37, !noalias !429
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN9Stockfish22make_unique_large_pageIA_NS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEEEENSt9enable_ifIXsr3stdE10is_array_vIT_EENSt11conditionalIXsr3stdE10is_array_vIS7_EESt10unique_ptrIS7_NS_21LargePageArrayDeleterINSt13remove_extentIS7_E4typeEEEES9_IS7_NS_16LargePageDeleterIS7_EEEE4typeEE4typeEm.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.c, i1 false), !noalias !429
  br label %_ZN9Stockfish22make_unique_large_pageIA_NS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEEEENSt9enable_ifIXsr3stdE10is_array_vIT_EENSt11conditionalIXsr3stdE10is_array_vIS7_EESt10unique_ptrIS7_NS_21LargePageArrayDeleterINSt13remove_extentIS7_E4typeEEEES9_IS7_NS_16LargePageDeleterIS7_EEEE4typeEE4typeEm.exit.i

_ZN9Stockfish22make_unique_large_pageIA_NS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEEEENSt9enable_ifIXsr3stdE10is_array_vIT_EENSt11conditionalIXsr3stdE10is_array_vIS7_EESt10unique_ptrIS7_NS_21LargePageArrayDeleterINSt13remove_extentIS7_E4typeEEEES9_IS7_NS_16LargePageDeleterIS7_EEEE4typeEE4typeEm.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !283  ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !283
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEELi65536EEC2Em.exit, label %_ZNK9Stockfish21LargePageArrayDeleterINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEEEclEPS4_.exit.i.i.i.i.i

_ZNK9Stockfish21LargePageArrayDeleterINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEEEclEPS4_.exit.i.i.i.i.i: ; preds = %_ZN9Stockfish22make_unique_large_pageIA_NS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEEEENSt9enable_ifIXsr3stdE10is_array_vIT_EENSt11conditionalIXsr3stdE10is_array_vIS7_EESt10unique_ptrIS7_NS_21LargePageArrayDeleterINSt13remove_extentIS7_E4typeEEEES9_IS7_NS_16LargePageDeleterIS7_EEEE4typeEE4typeEm.exit.i
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8
  tail call void @_ZN9Stockfish24aligned_large_pages_freeEPv(ptr noundef nonnull %i.i) #26, !inline_history !11
  br label %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEELi65536EEC2Em.exit

_ZN9Stockfish8DynStatsINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEELi65536EEC2Em.exit: ; preds = %_ZN9Stockfish22make_unique_large_pageIA_NS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEEEENSt9enable_ifIXsr3stdE10is_array_vIT_EENSt11conditionalIXsr3stdE10is_array_vIS7_EESt10unique_ptrIS7_NS_21LargePageArrayDeleterINSt13remove_extentIS7_E4typeEEEES9_IS7_NS_16LargePageDeleterIS7_EEEE4typeEE4typeEm.exit.i, %_ZNK9Stockfish21LargePageArrayDeleterINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEEEclEPS4_.exit.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !430
  %i.l = shl i64 %1, 13                           ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !431
  %i.m = shl i64 %1, 24                           ; 2 uses
  %i.n = or disjoint i64 %i.m, 8
  %i.o = tail call noundef ptr @_ZN9Stockfish25aligned_large_pages_allocEm(i64 noundef %i.n) #26, !noalias !432, !inline_history !426 ; 3 uses
  store i64 %i.l, ptr %i.o, align 8, !tbaa !37, !noalias !432
  %.not.i.i.i2 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i2, label %_ZN9Stockfish22make_unique_large_pageIA_NS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEEEENSt9enable_ifIXsr3stdE10is_array_vIT_EENSt11conditionalIXsr3stdE10is_array_vIS7_EESt10unique_ptrIS7_NS_21LargePageArrayDeleterINSt13remove_extentIS7_E4typeEEEES9_IS7_NS_16LargePageDeleterIS7_EEEE4typeEE4typeEm.exit.i, label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEELi65536EEC2Em.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.p, i8 0, i64 %i.m, i1 false), !noalias !432
  br label %_ZN9Stockfish22make_unique_large_pageIA_NS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEEEENSt9enable_ifIXsr3stdE10is_array_vIT_EENSt11conditionalIXsr3stdE10is_array_vIS7_EESt10unique_ptrIS7_NS_21LargePageArrayDeleterINSt13remove_extentIS7_E4typeEEEES9_IS7_NS_16LargePageDeleterIS7_EEEE4typeEE4typeEm.exit.i

_ZN9Stockfish22make_unique_large_pageIA_NS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEEEENSt9enable_ifIXsr3stdE10is_array_vIT_EENSt11conditionalIXsr3stdE10is_array_vIS7_EESt10unique_ptrIS7_NS_21LargePageArrayDeleterINSt13remove_extentIS7_E4typeEEEES9_IS7_NS_16LargePageDeleterIS7_EEEE4typeEE4typeEm.exit.i: ; preds = %.lr.ph.i.i.i3, %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEELi65536EEC2Em.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !282  ; 2 uses
  store ptr %i.q, ptr %i.k, align 8, !tbaa !282
  %.not.i.i.i.i.i4 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i4, label %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEELi8192EEC2Em.exit, label %_ZNK9Stockfish21LargePageArrayDeleterINS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEEEclEPS4_.exit.i.i.i.i.i

_ZNK9Stockfish21LargePageArrayDeleterINS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEEEclEPS4_.exit.i.i.i.i.i: ; preds = %_ZN9Stockfish22make_unique_large_pageIA_NS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEEEENSt9enable_ifIXsr3stdE10is_array_vIT_EENSt11conditionalIXsr3stdE10is_array_vIS7_EESt10unique_ptrIS7_NS_21LargePageArrayDeleterINSt13remove_extentIS7_E4typeEEEES9_IS7_NS_16LargePageDeleterIS7_EEEE4typeEE4typeEm.exit.i
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -8
  tail call void @_ZN9Stockfish24aligned_large_pages_freeEPv(ptr noundef nonnull %i.s) #26, !inline_history !10
  br label %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEELi8192EEC2Em.exit

_ZN9Stockfish8DynStatsINS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEELi8192EEC2Em.exit: ; preds = %_ZN9Stockfish22make_unique_large_pageIA_NS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEEEENSt9enable_ifIXsr3stdE10is_array_vIT_EENSt11conditionalIXsr3stdE10is_array_vIS7_EESt10unique_ptrIS7_NS_21LargePageArrayDeleterINSt13remove_extentIS7_E4typeEEEES9_IS7_NS_16LargePageDeleterIS7_EEEE4typeEE4typeEm.exit.i, %_ZNK9Stockfish21LargePageArrayDeleterINS_10MultiArrayINS_10StatsEntryIsLi8192ELb1EEELm16EJLm64EEEEEclEPS4_.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = tail call <3 x i64> @llvm.masked.load.v3i64.p0(ptr nonnull align 8 %0, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i64> poison), !tbaa !37
  %i.v = shufflevector <3 x i64> %i.u, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.w = add <2 x i64> %i.v, splat (i64 -1)
  store <2 x i64> %i.w, ptr %i.t, align 8, !tbaa !37
  ret void
}

declare noundef ptr @_ZN9Stockfish25aligned_large_pages_allocEm(i64 noundef) local_unnamed_addr #6

declare void @_ZN9Stockfish24aligned_large_pages_freeEPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyILb0ENS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.d = load i32, ptr %1, align 8, !tbaa !434
  store i32 %i.d, ptr %i.b, align 8, !tbaa !434
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.f, align 8, !tbaa !435
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !138  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyILb0ENS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.i, ptr %i.j, align 8, !tbaa !138
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.in30 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.031 = load ptr, ptr %.0.in30, align 8, !tbaa !137 ; 2 uses
  %.not2832 = icmp eq ptr %.031, null
  br i1 %.not2832, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.034 = phi ptr [ %.0, %bb.e ], [ %.031, %bb.c ] ; 4 uses
  %.02733 = phi ptr [ %i.l, %bb.e ], [ %i.b, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.034, i64 32
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.n = load i32, ptr %.034, align 8, !tbaa !434
  store i32 %i.n, ptr %i.l, align 8, !tbaa !434
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.02733, i64 16
  store ptr %i.l, ptr %i.p, align 8, !tbaa !137
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.02733, ptr %i.q, align 8, !tbaa !435
  %i.r = getelementptr inbounds nuw i8, ptr %.034, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !138  ; 2 uses
  %.not29 = icmp eq ptr %i.s, null
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.t = tail call noundef ptr @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE7_M_copyILb0ENS8_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.s, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !138
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.0.in = getelementptr inbounds nuw i8, ptr %.034, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !137 ; 2 uses
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !433

._crit_edge:                                      ; preds = %bb.e, %bb.c
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish6Search14ISearchManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish6Search17NullSearchManagerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish6Search17NullSearchManager10check_timeERNS0_6WorkerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 64 dereferenceable(14279296) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #30
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !436

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 17 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not49 = icmp ult i64 %i.h, %2
  br i1 %.not49, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !37     ; 9 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !284

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre76 = load ptr, ptr %i.c, align 8, !tbaa !118
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !37
  store i64 %i.s, ptr %i.d, align 8, !tbaa !37
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = phi ptr [ %.pre76, %bb.e ], [ %i.d, %bb.f ], [ %i.d, %bb.g ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !118
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !284

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %iter.check143

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %iter.check143

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !37
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !37
  br label %iter.check143

iter.check143:                                    ; preds = %bb.h, %bb.i, %bb.j
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 3 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 5 uses
  %min.iters.check129 = icmp ult i64 %i.ae, 56
  br i1 %min.iters.check129, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check130

vector.main.loop.iter.check130:                   ; preds = %iter.check143
  %min.iters.check131 = icmp ult i64 %i.ae, 248
  br i1 %min.iters.check131, label %vec.epilog.ph147, label %vector.ph132

vector.ph132:                                     ; preds = %vector.main.loop.iter.check130
  %i.ah = and i64 %i.ag, 24
  %n.vec133 = and i64 %i.ag, 4611686018427387872  ; 4 uses
  %i.ai = shl i64 %n.vec133, 3
  %i.aj = getelementptr i8, ptr %1, i64 %i.ai
  %broadcast.splatinsert134 = insertelement <8 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat135 = shufflevector <8 x i64> %broadcast.splatinsert134, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph132
  %index137 = phi i64 [ 0, %vector.ph132 ], [ %index.next139, %vector.body136 ] ; 2 uses
  %i.ak = shl i64 %index137, 3
  %next.gep138 = getelementptr i8, ptr %1, i64 %i.ak ; 4 uses
  %i.al = getelementptr i8, ptr %next.gep138, i64 64
  %i.am = getelementptr i8, ptr %next.gep138, i64 128
  %i.an = getelementptr i8, ptr %next.gep138, i64 192
  store <8 x i64> %broadcast.splat135, ptr %next.gep138, align 8, !tbaa !37
  store <8 x i64> %broadcast.splat135, ptr %i.al, align 8, !tbaa !37
  store <8 x i64> %broadcast.splat135, ptr %i.am, align 8, !tbaa !37
  store <8 x i64> %broadcast.splat135, ptr %i.an, align 8, !tbaa !37
  %index.next139 = add nuw i64 %index137, 32      ; 2 uses
  %i.ao = icmp eq i64 %index.next139, %n.vec133
  br i1 %i.ao, label %middle.block140, label %vector.body136, !llvm.loop !437

middle.block140:                                  ; preds = %vector.body136
  %cmp.n141 = icmp eq i64 %i.ag, %n.vec133
  br i1 %cmp.n141, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %vec.epilog.iter.check145

vec.epilog.iter.check145:                         ; preds = %middle.block140
  %min.epilog.iters.check146 = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check146, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph147, !prof !132

vec.epilog.ph147:                                 ; preds = %vector.main.loop.iter.check130, %vec.epilog.iter.check145
  %vec.epilog.resume.val142 = phi i64 [ %n.vec133, %vec.epilog.iter.check145 ], [ 0, %vector.main.loop.iter.check130 ]
  %n.vec148 = and i64 %i.ag, 4611686018427387896  ; 3 uses
  %i.ap = shl i64 %n.vec148, 3
  %i.aq = getelementptr i8, ptr %1, i64 %i.ap
  %broadcast.splatinsert149 = insertelement <8 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat150 = shufflevector <8 x i64> %broadcast.splatinsert149, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body151

vec.epilog.vector.body151:                        ; preds = %vec.epilog.vector.body151, %vec.epilog.ph147
  %index152 = phi i64 [ %vec.epilog.resume.val142, %vec.epilog.ph147 ], [ %index.next154, %vec.epilog.vector.body151 ] ; 2 uses
  %i.ar = shl i64 %index152, 3
  %next.gep153 = getelementptr i8, ptr %1, i64 %i.ar
  store <8 x i64> %broadcast.splat150, ptr %next.gep153, align 8, !tbaa !37
  %index.next154 = add nuw i64 %index152, 8       ; 2 uses
  %i.as = icmp eq i64 %index.next154, %n.vec148
  br i1 %i.as, label %vec.epilog.middle.block155, label %vec.epilog.vector.body151, !llvm.loop !438

vec.epilog.middle.block155:                       ; preds = %vec.epilog.vector.body151
  %cmp.n156 = icmp eq i64 %i.ag, %n.vec148
  br i1 %cmp.n156, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check143, %vec.epilog.iter.check145, %vec.epilog.middle.block155
  %.06.i.i.i.ph = phi ptr [ %1, %iter.check143 ], [ %i.aj, %vec.epilog.iter.check145 ], [ %i.aq, %vec.epilog.middle.block155 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8, !tbaa !37
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !439

bb.k:                                             ; preds = %bb.c
  %i.au = icmp eq i64 %2, %i.l
  br i1 %i.au, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %i.av = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.av, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 4 uses
  %4 = shl i64 %2, 3
  %i.ax = add i64 %4, -8
  %5 = sub i64 %i.ax, %i.k                        ; 3 uses
  %i.ay = lshr i64 %5, 3
  %i.az = add nuw nsw i64 %i.ay, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %5, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check91 = icmp ult i64 %5, 248
  br i1 %min.iters.check91, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.az, 24
  %n.vec = and i64 %i.az, 4611686018427387872     ; 4 uses
  %i.bb = shl i64 %n.vec, 3
  %i.bc = getelementptr i8, ptr %i.d, i64 %i.bb
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.bd ; 4 uses
  %i.be = getelementptr i8, ptr %next.gep, i64 64
  %i.bf = getelementptr i8, ptr %next.gep, i64 128
  %i.bg = getelementptr i8, ptr %next.gep, i64 192
  store <8 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !37
  store <8 x i64> %broadcast.splat, ptr %i.be, align 8, !tbaa !37
  store <8 x i64> %broadcast.splat, ptr %i.bf, align 8, !tbaa !37
  store <8 x i64> %broadcast.splat, ptr %i.bg, align 8, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !440

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !132

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec92 = and i64 %i.az, 4611686018427387896   ; 3 uses
  %i.bi = shl i64 %n.vec92, 3
  %i.bj = getelementptr i8, ptr %i.d, i64 %i.bi
  %broadcast.splatinsert93 = insertelement <8 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat94 = shufflevector <8 x i64> %broadcast.splatinsert93, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index95 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next97, %vec.epilog.vector.body ] ; 2 uses
  %i.bk = shl i64 %index95, 3
  %next.gep96 = getelementptr i8, ptr %i.d, i64 %i.bk
  store <8 x i64> %broadcast.splat94, ptr %next.gep96, align 8, !tbaa !37
  %index.next97 = add nuw i64 %index95, 8         ; 2 uses
  %i.bl = icmp eq i64 %index.next97, %n.vec92
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !441

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n98 = icmp eq i64 %i.az, %n.vec92
  br i1 %cmp.n98, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !37
  %i.bm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.aw
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !442

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.k
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.k ], [ %i.aw, %middle.block ], [ %i.aw, %vec.epilog.middle.block ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !118
  %i.bn = icmp sgt i64 %i.k, 8
  br i1 %i.bn, label %bb.l, label %bb.m, !prof !284

bb.l:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !118
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit50

bb.m:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bo = icmp eq i64 %i.k, 8
  br i1 %i.bo, label %bb.n, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit50

bb.n:                                             ; preds = %bb.m
  %i.bp = load i64, ptr %1, align 8, !tbaa !37
  store i64 %i.bp, ptr %.0.i.i.i.i.i, align 8, !tbaa !37
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit50

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit50: ; preds = %bb.l, %bb.m, %bb.n
  %i.bq = phi ptr [ %.pre, %bb.l ], [ %.0.i.i.i.i.i, %bb.m ], [ %.0.i.i.i.i.i, %bb.n ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.k
  store ptr %i.br, ptr %i.c, align 8, !tbaa !118
  %.not5.i.i.i51 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i51, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %iter.check114

iter.check114:                                    ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit50
  %i.bs = add i64 %i.f, -8
  %6 = sub i64 %i.bs, %i.j                        ; 3 uses
  %i.bt = lshr i64 %6, 3
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 5 uses
  %min.iters.check100 = icmp ult i64 %6, 56
  br i1 %min.iters.check100, label %.lr.ph.i.i.i52.preheader, label %vector.main.loop.iter.check101

vector.main.loop.iter.check101:                   ; preds = %iter.check114
  %min.iters.check102 = icmp ult i64 %6, 248
  br i1 %min.iters.check102, label %vec.epilog.ph118, label %vector.ph103

vector.ph103:                                     ; preds = %vector.main.loop.iter.check101
  %i.bv = and i64 %i.bu, 24
  %n.vec104 = and i64 %i.bu, 4611686018427387872  ; 4 uses
  %i.bw = shl i64 %n.vec104, 3
  %i.bx = getelementptr i8, ptr %1, i64 %i.bw
  %broadcast.splatinsert105 = insertelement <8 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat106 = shufflevector <8 x i64> %broadcast.splatinsert105, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph103
  %index108 = phi i64 [ 0, %vector.ph103 ], [ %index.next110, %vector.body107 ] ; 2 uses
  %i.by = shl i64 %index108, 3
  %next.gep109 = getelementptr i8, ptr %1, i64 %i.by ; 4 uses
  %i.bz = getelementptr i8, ptr %next.gep109, i64 64
  %i.ca = getelementptr i8, ptr %next.gep109, i64 128
  %i.cb = getelementptr i8, ptr %next.gep109, i64 192
  store <8 x i64> %broadcast.splat106, ptr %next.gep109, align 8, !tbaa !37
  store <8 x i64> %broadcast.splat106, ptr %i.bz, align 8, !tbaa !37
  store <8 x i64> %broadcast.splat106, ptr %i.ca, align 8, !tbaa !37
  store <8 x i64> %broadcast.splat106, ptr %i.cb, align 8, !tbaa !37
  %index.next110 = add nuw i64 %index108, 32      ; 2 uses
  %i.cc = icmp eq i64 %index.next110, %n.vec104
  br i1 %i.cc, label %middle.block111, label %vector.body107, !llvm.loop !443

middle.block111:                                  ; preds = %vector.body107
  %cmp.n112 = icmp eq i64 %i.bu, %n.vec104
  br i1 %cmp.n112, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %vec.epilog.iter.check116

vec.epilog.iter.check116:                         ; preds = %middle.block111
  %min.epilog.iters.check117 = icmp eq i64 %i.bv, 0
  br i1 %min.epilog.iters.check117, label %.lr.ph.i.i.i52.preheader, label %vec.epilog.ph118, !prof !132

vec.epilog.ph118:                                 ; preds = %vector.main.loop.iter.check101, %vec.epilog.iter.check116
  %vec.epilog.resume.val113 = phi i64 [ %n.vec104, %vec.epilog.iter.check116 ], [ 0, %vector.main.loop.iter.check101 ]
  %n.vec119 = and i64 %i.bu, 4611686018427387896  ; 3 uses
  %i.cd = shl i64 %n.vec119, 3
  %i.ce = getelementptr i8, ptr %1, i64 %i.cd
  %broadcast.splatinsert120 = insertelement <8 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat121 = shufflevector <8 x i64> %broadcast.splatinsert120, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body122

vec.epilog.vector.body122:                        ; preds = %vec.epilog.vector.body122, %vec.epilog.ph118
  %index123 = phi i64 [ %vec.epilog.resume.val113, %vec.epilog.ph118 ], [ %index.next125, %vec.epilog.vector.body122 ] ; 2 uses
  %i.cf = shl i64 %index123, 3
  %next.gep124 = getelementptr i8, ptr %1, i64 %i.cf
  store <8 x i64> %broadcast.splat121, ptr %next.gep124, align 8, !tbaa !37
  %index.next125 = add nuw i64 %index123, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next125, %n.vec119
  br i1 %i.cg, label %vec.epilog.middle.block126, label %vec.epilog.vector.body122, !llvm.loop !444

vec.epilog.middle.block126:                       ; preds = %vec.epilog.vector.body122
  %cmp.n127 = icmp eq i64 %i.bu, %n.vec119
  br i1 %cmp.n127, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i52.preheader

.lr.ph.i.i.i52.preheader:                         ; preds = %iter.check114, %vec.epilog.iter.check116, %vec.epilog.middle.block126
  %.06.i.i.i53.ph = phi ptr [ %1, %iter.check114 ], [ %i.bx, %vec.epilog.iter.check116 ], [ %i.ce, %vec.epilog.middle.block126 ]
  br label %.lr.ph.i.i.i52

.lr.ph.i.i.i52:                                   ; preds = %.lr.ph.i.i.i52.preheader, %.lr.ph.i.i.i52
  %.06.i.i.i53 = phi ptr [ %i.ch, %.lr.ph.i.i.i52 ], [ %.06.i.i.i53.ph, %.lr.ph.i.i.i52.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i53, align 8, !tbaa !37
  %i.ch = getelementptr inbounds nuw i8, ptr %.06.i.i.i53, i64 8 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.ch, %i.d
  br i1 %.not.i.i.i54, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i52, !llvm.loop !445

bb.o:                                             ; preds = %bb.b
  %i.ci = load ptr, ptr %0, align 8, !tbaa !117   ; 5 uses
  %i.cj = ptrtoint ptr %i.ci to i64               ; 3 uses
  %i.ck = sub i64 %i.f, %i.cj
  %i.cl = ashr exact i64 %i.ck, 3                 ; 4 uses
  %i.cm = sub nsw i64 1152921504606846975, %i.cl
  %i.cn = icmp ult i64 %i.cm, %2
  br i1 %i.cn, label %bb.p, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #31
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.o
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 %2)
  %i.co = add nsw i64 %.sroa.speculated.i, %i.cl  ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cl
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.co, i64 1152921504606846975)
  %i.cr = select i1 %i.cp, i64 1152921504606846975, i64 %i.cq ; 3 uses
  %i.cs = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ct = sub i64 %i.cs, %i.cj                    ; 4 uses
  %.not.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i, label %iter.check172, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.cu = shl nuw nsw i64 %i.cr, 3
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #29
  br label %iter.check172

iter.check172:                                    ; preds = %bb.q, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.cw = phi ptr [ %i.cv, %bb.q ], [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.ct ; 7 uses
  %.idx.i.i.i.i.i56 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx.i.i.i.i.i56
  %i.cz = load i64, ptr %3, align 8, !tbaa !37    ; 3 uses
  %i.da = add nsw i64 %.idx.i.i.i.i.i56, -8       ; 3 uses
  %i.db = lshr exact i64 %i.da, 3
  %i.dc = add nuw nsw i64 %i.db, 1                ; 5 uses
  %min.iters.check158 = icmp ult i64 %i.da, 56
  br i1 %min.iters.check158, label %.lr.ph.i.i.i.i.i.i.i57.preheader, label %vector.main.loop.iter.check159

vector.main.loop.iter.check159:                   ; preds = %iter.check172
  %min.iters.check160 = icmp ult i64 %i.da, 248
  br i1 %min.iters.check160, label %vec.epilog.ph176, label %vector.ph161

vector.ph161:                                     ; preds = %vector.main.loop.iter.check159
  %i.dd = and i64 %i.dc, 24
  %n.vec162 = and i64 %i.dc, 4611686018427387872  ; 4 uses
  %i.de = shl i64 %n.vec162, 3
  %i.df = getelementptr i8, ptr %i.cx, i64 %i.de
  %broadcast.splatinsert163 = insertelement <8 x i64> poison, i64 %i.cz, i64 0
  %broadcast.splat164 = shufflevector <8 x i64> %broadcast.splatinsert163, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph161
  %index166 = phi i64 [ 0, %vector.ph161 ], [ %index.next168, %vector.body165 ] ; 2 uses
  %i.dg = shl i64 %index166, 3
  %next.gep167 = getelementptr i8, ptr %i.cx, i64 %i.dg ; 4 uses
  %i.dh = getelementptr i8, ptr %next.gep167, i64 64
  %i.di = getelementptr i8, ptr %next.gep167, i64 128
  %i.dj = getelementptr i8, ptr %next.gep167, i64 192
  store <8 x i64> %broadcast.splat164, ptr %next.gep167, align 8, !tbaa !37
  store <8 x i64> %broadcast.splat164, ptr %i.dh, align 8, !tbaa !37
  store <8 x i64> %broadcast.splat164, ptr %i.di, align 8, !tbaa !37
  store <8 x i64> %broadcast.splat164, ptr %i.dj, align 8, !tbaa !37
  %index.next168 = add nuw i64 %index166, 32      ; 2 uses
  %i.dk = icmp eq i64 %index.next168, %n.vec162
  br i1 %i.dk, label %middle.block169, label %vector.body165, !llvm.loop !446

middle.block169:                                  ; preds = %vector.body165
  %cmp.n170 = icmp eq i64 %i.dc, %n.vec162
  br i1 %cmp.n170, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit61, label %vec.epilog.iter.check174

vec.epilog.iter.check174:                         ; preds = %middle.block169
  %min.epilog.iters.check175 = icmp eq i64 %i.dd, 0
  br i1 %min.epilog.iters.check175, label %.lr.ph.i.i.i.i.i.i.i57.preheader, label %vec.epilog.ph176, !prof !132

vec.epilog.ph176:                                 ; preds = %vector.main.loop.iter.check159, %vec.epilog.iter.check174
  %vec.epilog.resume.val171 = phi i64 [ %n.vec162, %vec.epilog.iter.check174 ], [ 0, %vector.main.loop.iter.check159 ]
  %n.vec177 = and i64 %i.dc, 4611686018427387896  ; 3 uses
  %i.dl = shl i64 %n.vec177, 3
  %i.dm = getelementptr i8, ptr %i.cx, i64 %i.dl
  %broadcast.splatinsert178 = insertelement <8 x i64> poison, i64 %i.cz, i64 0
  %broadcast.splat179 = shufflevector <8 x i64> %broadcast.splatinsert178, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body180

vec.epilog.vector.body180:                        ; preds = %vec.epilog.vector.body180, %vec.epilog.ph176
  %index181 = phi i64 [ %vec.epilog.resume.val171, %vec.epilog.ph176 ], [ %index.next183, %vec.epilog.vector.body180 ] ; 2 uses
  %i.dn = shl i64 %index181, 3
  %next.gep182 = getelementptr i8, ptr %i.cx, i64 %i.dn
  store <8 x i64> %broadcast.splat179, ptr %next.gep182, align 8, !tbaa !37
  %index.next183 = add nuw i64 %index181, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next183, %n.vec177
  br i1 %i.do, label %vec.epilog.middle.block184, label %vec.epilog.vector.body180, !llvm.loop !447

vec.epilog.middle.block184:                       ; preds = %vec.epilog.vector.body180
  %cmp.n185 = icmp eq i64 %i.dc, %n.vec177
  br i1 %cmp.n185, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit61, label %.lr.ph.i.i.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i.i.i57.preheader:                 ; preds = %iter.check172, %vec.epilog.iter.check174, %vec.epilog.middle.block184
  %.06.i.i.i.i.i.i.i58.ph = phi ptr [ %i.cx, %iter.check172 ], [ %i.df, %vec.epilog.iter.check174 ], [ %i.dm, %vec.epilog.middle.block184 ]
  br label %.lr.ph.i.i.i.i.i.i.i57

.lr.ph.i.i.i.i.i.i.i57:                           ; preds = %.lr.ph.i.i.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i.i.i57
  %.06.i.i.i.i.i.i.i58 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i.i57 ], [ %.06.i.i.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i.i.i57.preheader ] ; 2 uses
  store i64 %i.cz, ptr %.06.i.i.i.i.i.i.i58, align 8, !tbaa !37
  %i.dp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i58, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i59 = icmp eq ptr %i.dp, %i.cy
  br i1 %.not.i.i.i.i.i.i.i59, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit61, label %.lr.ph.i.i.i.i.i.i.i57, !llvm.loop !448

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit61: ; preds = %.lr.ph.i.i.i.i.i.i.i57, %vec.epilog.middle.block184, %middle.block169
  %i.dq = icmp sgt i64 %i.ct, 8
  br i1 %i.dq, label %bb.r, label %bb.s, !prof !284

bb.r:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit61
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cw, ptr align 8 %i.ci, i64 %i.ct, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.s:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit61
  %i.dr = icmp eq i64 %i.ct, 8
  br i1 %i.dr, label %bb.t, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.t:                                             ; preds = %bb.s
  %i.ds = load i64, ptr %i.ci, align 8, !tbaa !37
  store i64 %i.ds, ptr %i.cw, align 8, !tbaa !37
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.r, %bb.s, %bb.t
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %2 ; 3 uses
  %i.du = sub i64 %i.f, %i.cs                     ; 4 uses
  %i.dv = icmp sgt i64 %i.du, 8
  br i1 %i.dv, label %bb.u, label %bb.v, !prof !284

end_hunk_1
