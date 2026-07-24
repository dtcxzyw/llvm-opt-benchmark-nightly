inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN9Stockfish10Tablebases4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %10 = alloca %"class.std::vector.37", align 8   ; 62 uses
  %11 = alloca %"class.std::vector.37", align 8   ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(98328) @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i8 0, i64 98328, i1 false)
  %i.a = load <4 x ptr>, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98344), align 8, !tbaa !76, !noalias !77 ; 3 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98344), align 8, !tbaa !55, !noalias !77 ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98376), align 8, !tbaa !55, !noalias !80
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98384), align 8, !tbaa !67, !noalias !80
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98400), align 8, !tbaa !63, !noalias !80 ; 3 uses
  %i.f = extractelement <4 x ptr> %i.a, i64 3     ; 4 uses
  %.01.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.g = icmp ult ptr %.01.i.i.i.i.i, %i.e
  br i1 %i.g, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.not.i.i.i.i.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE15_M_destroy_dataESt15_Deque_iteratorIS4_RS4_PS4_ESA_RKS5_.exit.i.i.i, label %bb.b

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.02.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.01.i.i.i.i.i, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.02.i.i.i.i.i, align 8, !tbaa !68 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1976
  tail call fastcc void @_ZSt8_DestroyIPN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEEEvT_S6_(ptr noundef %i.h, ptr noundef nonnull %i.i)
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i.i, i64 8 ; 2 uses
  %i.j = icmp ult ptr %.0.i.i.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !69

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.k = extractelement <4 x ptr> %i.a, i64 2
  tail call fastcc void @_ZSt8_DestroyIPN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEEEvT_S6_(ptr noundef %i.b, ptr noundef %i.k)
  br label %_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE15_M_destroy_dataESt15_Deque_iteratorIS4_RS4_PS4_ESA_RKS5_.exit.i.i.i

_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE15_M_destroy_dataESt15_Deque_iteratorIS4_RS4_PS4_ESA_RKS5_.exit.i.i.i: ; preds = %bb.b, %._crit_edge.i.i.i.i.i
  %.sink.i.i.i.i.i = phi ptr [ %i.d, %bb.b ], [ %i.b, %._crit_edge.i.i.i.i.i ]
  tail call fastcc void @_ZSt8_DestroyIPN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEEEvT_S6_(ptr noundef %.sink.i.i.i.i.i, ptr noundef %i.c)
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98400), align 8, !tbaa !73 ; 2 uses
  %i.m = icmp ult ptr %i.f, %i.l
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE5clearEv.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE15_M_destroy_dataESt15_Deque_iteratorIS4_RS4_PS4_ESA_RKS5_.exit.i.i.i, %.lr.ph.i.i.i.i
  %.01.i.pn.i.i.i = phi ptr [ %.01.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.f, %_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE15_M_destroy_dataESt15_Deque_iteratorIS4_RS4_PS4_ESA_RKS5_.exit.i.i.i ]
  %.01.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01.i.pn.i.i.i, i64 8 ; 3 uses
  %i.n = load ptr, ptr %.01.i.i.i.i, align 8, !tbaa !68
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef 1976) #30
  %i.o = icmp ult ptr %.01.i.i.i.i, %i.l
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE5clearEv.exit.i, !llvm.loop !74

_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE15_M_destroy_dataESt15_Deque_iteratorIS4_RS4_PS4_ESA_RKS5_.exit.i.i.i
  store <4 x ptr> %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98376), align 8, !tbaa !76
  %i.p = load <4 x ptr>, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98424), align 8, !tbaa !76, !noalias !83 ; 3 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98424), align 8, !tbaa !33, !noalias !83 ; 2 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98456), align 8, !tbaa !33, !noalias !86
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98464), align 8, !tbaa !46, !noalias !86
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98480), align 8, !tbaa !42, !noalias !86 ; 3 uses
  %i.u = extractelement <4 x ptr> %i.p, i64 3     ; 4 uses
  %.01.i.i.i.i1.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.v = icmp ult ptr %.01.i.i.i.i1.i, %i.t
  br i1 %i.v, label %.lr.ph.i.i.i.i8.i, label %._crit_edge.i.i.i.i2.i

._crit_edge.i.i.i.i2.i:                           ; preds = %.lr.ph.i.i.i.i8.i, %_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE5clearEv.exit.i
  %.not.i.i.i.i3.i = icmp eq ptr %i.u, %i.t
  br i1 %.not.i.i.i.i3.i, label %_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE15_M_destroy_dataESt15_Deque_iteratorIS4_RS4_PS4_ESA_RKS5_.exit.i.i.i, label %bb.c

.lr.ph.i.i.i.i8.i:                                ; preds = %_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE5clearEv.exit.i, %.lr.ph.i.i.i.i8.i
  %.02.i.i.i.i9.i = phi ptr [ %.0.i.i.i.i10.i, %.lr.ph.i.i.i.i8.i ], [ %.01.i.i.i.i1.i, %_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE0EEESaIS4_EE5clearEv.exit.i ] ; 2 uses
  %i.w = load ptr, ptr %.02.i.i.i.i9.i, align 8, !tbaa !47 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1016
  tail call fastcc void @_ZSt8_DestroyIPN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEEEvT_S6_(ptr noundef %i.w, ptr noundef nonnull %i.x)
  %.0.i.i.i.i10.i = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i9.i, i64 8 ; 2 uses
  %i.y = icmp ult ptr %.0.i.i.i.i10.i, %i.t
  br i1 %i.y, label %.lr.ph.i.i.i.i8.i, label %._crit_edge.i.i.i.i2.i, !llvm.loop !48

bb.c:                                             ; preds = %._crit_edge.i.i.i.i2.i
  %i.z = extractelement <4 x ptr> %i.p, i64 2
  tail call fastcc void @_ZSt8_DestroyIPN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEEEvT_S6_(ptr noundef %i.q, ptr noundef %i.z)
  br label %_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE15_M_destroy_dataESt15_Deque_iteratorIS4_RS4_PS4_ESA_RKS5_.exit.i.i.i

_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE15_M_destroy_dataESt15_Deque_iteratorIS4_RS4_PS4_ESA_RKS5_.exit.i.i.i: ; preds = %bb.c, %._crit_edge.i.i.i.i2.i
  %.sink.i.i.i.i4.i = phi ptr [ %i.s, %bb.c ], [ %i.q, %._crit_edge.i.i.i.i2.i ]
  tail call fastcc void @_ZSt8_DestroyIPN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEEEvT_S6_(ptr noundef %.sink.i.i.i.i4.i, ptr noundef %i.r)
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98480), align 8, !tbaa !52 ; 2 uses
  %i.ab = icmp ult ptr %i.u, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i.i5.i, label %_ZN9Stockfish12_GLOBAL__N_18TBTables5clearEv.exit

.lr.ph.i.i.i5.i:                                  ; preds = %_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE15_M_destroy_dataESt15_Deque_iteratorIS4_RS4_PS4_ESA_RKS5_.exit.i.i.i, %.lr.ph.i.i.i5.i
  %.01.i.pn.i.i6.i = phi ptr [ %.01.i.i.i7.i, %.lr.ph.i.i.i5.i ], [ %i.u, %_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE15_M_destroy_dataESt15_Deque_iteratorIS4_RS4_PS4_ESA_RKS5_.exit.i.i.i ]
  %.01.i.i.i7.i = getelementptr inbounds nuw i8, ptr %.01.i.pn.i.i6.i, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %.01.i.i.i7.i, align 8, !tbaa !47
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef 1016) #30
  %i.ad = icmp ult ptr %.01.i.i.i7.i, %i.aa
  br i1 %i.ad, label %.lr.ph.i.i.i5.i, label %_ZN9Stockfish12_GLOBAL__N_18TBTables5clearEv.exit, !llvm.loop !53

_ZN9Stockfish12_GLOBAL__N_18TBTables5clearEv.exit: ; preds = %.lr.ph.i.i.i5.i, %_ZNSt5dequeIN9Stockfish12_GLOBAL__N_17TBTableILNS1_6TBTypeE1EEESaIS4_EE15_M_destroy_dataESt15_Deque_iteratorIS4_RS4_PS4_ESA_RKS5_.exit.i.i.i
  store <4 x ptr> %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98456), align 8, !tbaa !76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98488), i8 0, i64 16, i1 false)
  store i32 0, ptr @_ZN9Stockfish10Tablebases14MaxCardinalityE, align 4, !tbaa !89
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) @_ZN9Stockfish12_GLOBAL__N_16TBFile5PathsB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %0) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !90
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EED2Ev.exit, label %.preheader342

.preheader342:                                    ; preds = %_ZN9Stockfish12_GLOBAL__N_18TBTables5clearEv.exit, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %bb.k ], [ 0, %_ZN9Stockfish12_GLOBAL__N_18TBTables5clearEv.exit ] ; 15 uses
  %.0360 = phi i32 [ %.1.7, %bb.k ], [ 0, %_ZN9Stockfish12_GLOBAL__N_18TBTables5clearEv.exit ] ; 3 uses
  %i.ah = and i64 %indvars.iv, 248
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.d, label %.preheader342.2

bb.d:                                             ; preds = %.preheader342
  %i.aj = add nsw i32 %.0360, 1
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapB1H1H7E, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 %.0360, ptr %i.al, align 4, !tbaa !89
  br label %.preheader342.2

.preheader342.2:                                  ; preds = %bb.d, %.preheader342
  %.1.1 = phi i32 [ %i.aj, %bb.d ], [ %.0360, %.preheader342 ] ; 3 uses
  %i.am = and i64 %indvars.iv, 240
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.e, label %.preheader342.3

bb.e:                                             ; preds = %.preheader342.2
  %i.ao = add nsw i32 %.1.1, 1
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapB1H1H7E, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 %.1.1, ptr %i.aq, align 8, !tbaa !89
  br label %.preheader342.3

.preheader342.3:                                  ; preds = %bb.e, %.preheader342.2
  %.1.2 = phi i32 [ %i.ao, %bb.e ], [ %.1.1, %.preheader342.2 ] ; 3 uses
  %i.ar = trunc i64 %indvars.iv to i8
  %i.as = icmp ult i8 %i.ar, 24
  br i1 %i.as, label %bb.f, label %.preheader342.4

bb.f:                                             ; preds = %.preheader342.3
  %i.at = add nsw i32 %.1.2, 1
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapB1H1H7E, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 %.1.2, ptr %i.av, align 4, !tbaa !89
  br label %.preheader342.4

.preheader342.4:                                  ; preds = %bb.f, %.preheader342.3
  %.1.3 = phi i32 [ %i.at, %bb.f ], [ %.1.2, %.preheader342.3 ] ; 3 uses
  %i.aw = and i64 %indvars.iv, 224
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.g, label %.preheader342.5

bb.g:                                             ; preds = %.preheader342.4
  %i.ay = add nsw i32 %.1.3, 1
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapB1H1H7E, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i32 %.1.3, ptr %i.ba, align 16, !tbaa !89
  br label %.preheader342.5

.preheader342.5:                                  ; preds = %bb.g, %.preheader342.4
  %.1.4 = phi i32 [ %i.ay, %bb.g ], [ %.1.3, %.preheader342.4 ] ; 3 uses
  %i.bb = trunc i64 %indvars.iv to i8
  %i.bc = icmp ult i8 %i.bb, 40
  br i1 %i.bc, label %bb.h, label %.preheader342.6

bb.h:                                             ; preds = %.preheader342.5
  %i.bd = add nsw i32 %.1.4, 1
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapB1H1H7E, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  store i32 %.1.4, ptr %i.bf, align 4, !tbaa !89
  br label %.preheader342.6

.preheader342.6:                                  ; preds = %bb.h, %.preheader342.5
  %.1.5 = phi i32 [ %i.bd, %bb.h ], [ %.1.4, %.preheader342.5 ] ; 3 uses
  %i.bg = trunc i64 %indvars.iv to i8
  %i.bh = icmp ult i8 %i.bg, 48
  br i1 %i.bh, label %bb.i, label %.preheader342.7

bb.i:                                             ; preds = %.preheader342.6
  %i.bi = add nsw i32 %.1.5, 1
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapB1H1H7E, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i32 %.1.5, ptr %i.bk, align 8, !tbaa !89
  br label %.preheader342.7

.preheader342.7:                                  ; preds = %bb.i, %.preheader342.6
  %.1.6 = phi i32 [ %i.bi, %bb.i ], [ %.1.5, %.preheader342.6 ] ; 3 uses
  %i.bl = trunc i64 %indvars.iv to i8
  %i.bm = icmp ult i8 %i.bl, 56
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader342.7
  %i.bn = add nsw i32 %.1.6, 1
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapB1H1H7E, i64 %indvars.iv
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  store i32 %.1.6, ptr %i.bp, align 4, !tbaa !89
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader342.7
  %.1.7 = phi i32 [ %i.bn, %bb.j ], [ %.1.6, %.preheader342.7 ]
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, 64
  br i1 %exitcond.not.7, label %.preheader341, label %.preheader342, !llvm.loop !94

.preheader340:                                    ; preds = %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit
  %.sroa.7298.1556.le = ptrtoaddr ptr %.sroa.7298.1 to i64
  %.sroa.0295.1557.le = ptrtoaddr ptr %.sroa.0295.1 to i64
  %.not325366 = icmp eq ptr %.sroa.0295.1, %.sroa.7298.1
  br i1 %.not325366, label %.preheader338.preheader, label %iter.check

iter.check:                                       ; preds = %.preheader340
  %i.bq = sub i64 %.sroa.7298.1556.le, %.sroa.0295.1557.le ; 7 uses
  %min.iters.check = icmp ult i64 %i.bq, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check558 = icmp ult i64 %i.bq, 16
  br i1 %min.iters.check558, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bq, 12
  %n.vec = and i64 %i.bq, -16                     ; 5 uses
  %i.br = trunc i64 %n.vec to i32
  %i.bs = add i32 %.3, %i.br                      ; 2 uses
  %i.bt = getelementptr i8, ptr %.sroa.0295.1, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %.3, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.0295.1, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !95
  %i.bu = zext <16 x i8> %wide.load to <16 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapA1D1D4E, <16 x i64> %i.bu
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %vec.ind, <16 x ptr> align 4 %wide.gep, <16 x i1> splat (i1 true)), !tbaa !89
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nsw <16 x i32> %vec.ind, splat (i32 16)
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %.preheader338.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !100

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.bs, %vec.epilog.iter.check ], [ %.3, %vector.main.loop.iter.check ]
  %n.vec561 = and i64 %i.bq, -4                   ; 4 uses
  %i.bw = trunc i64 %n.vec561 to i32
  %i.bx = add i32 %.3, %i.bw
  %i.by = getelementptr i8, ptr %.sroa.0295.1, i64 %n.vec561
  %broadcast.splatinsert562 = insertelement <4 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat563 = shufflevector <4 x i32> %broadcast.splatinsert562, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction564 = add nsw <4 x i32> %broadcast.splat563, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index565 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next570, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind566 = phi <4 x i32> [ %induction564, %vec.epilog.ph ], [ %vec.ind.next571, %vec.epilog.vector.body ] ; 2 uses
  %next.gep567 = getelementptr i8, ptr %.sroa.0295.1, i64 %index565
  %wide.load568 = load <4 x i8>, ptr %next.gep567, align 1, !tbaa !95
  %i.bz = zext <4 x i8> %wide.load568 to <4 x i64>
  %wide.gep569 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapA1D1D4E, <4 x i64> %i.bz
  tail call void @llvm.masked.scatter.v4i32.v4p0(<4 x i32> %vec.ind566, <4 x ptr> align 4 %wide.gep569, <4 x i1> splat (i1 true)), !tbaa !89
  %index.next570 = add nuw i64 %index565, 4       ; 2 uses
  %vec.ind.next571 = add nsw <4 x i32> %vec.ind566, splat (i32 4)
  %i.ca = icmp eq i64 %index.next570, %n.vec561
  br i1 %i.ca, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !101

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n572 = icmp eq i64 %i.bq, %n.vec561
  br i1 %cmp.n572, label %.preheader338.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.4368.ph = phi i32 [ %.3, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.bx, %vec.epilog.middle.block ]
  %.sroa.0284.0367.ph = phi ptr [ %.sroa.0295.1, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader341:                                    ; preds = %bb.k, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit
  %indvars.iv434 = phi i64 [ %indvars.iv.next435, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit ], [ 0, %bb.k ] ; 3 uses
  %.2365 = phi i32 [ %.3, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit ], [ 0, %bb.k ] ; 6 uses
  %.sroa.0295.0364 = phi ptr [ %.sroa.0295.1, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit ], [ null, %bb.k ] ; 8 uses
  %.sroa.7298.0363 = phi ptr [ %.sroa.7298.1, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit ], [ null, %bb.k ] ; 7 uses
  %.sroa.11300.0362 = phi ptr [ %.sroa.11300.1, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit ], [ null, %bb.k ] ; 5 uses
  %i.cb = trunc nuw nsw i64 %indvars.iv434 to i8  ; 4 uses
  %i.cc = lshr i8 %i.cb, 3                        ; 2 uses
  %i.cd = and i8 %i.cb, 7                         ; 4 uses
  %i.ce = icmp samesign ult i8 %i.cc, %i.cd
  br i1 %i.ce, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.preheader341
  %i.cf = icmp samesign ult i8 %i.cd, 4
  br i1 %i.cf, label %bb.m, label %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit

bb.m:                                             ; preds = %bb.l
  %i.cg = add nsw i32 %.2365, 1
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapA1D1D4E, i64 %indvars.iv434
  store i32 %.2365, ptr %i.ch, align 4, !tbaa !89
  br label %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit

bb.n:                                             ; preds = %.preheader341
  %.not85 = icmp eq i8 %i.cc, %i.cd
  %i.ci = icmp samesign ult i8 %i.cd, 4
  %or.cond324 = select i1 %.not85, i1 %i.ci, i1 false
  br i1 %or.cond324, label %bb.o, label %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit

bb.o:                                             ; preds = %bb.n
  %.not.i = icmp eq ptr %.sroa.7298.0363, %.sroa.11300.0362
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 %i.cb, ptr %.sroa.7298.0363, align 1, !tbaa !95
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.7298.0363, i64 1
  br label %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit

bb.q:                                             ; preds = %bb.o
  %i.ck = ptrtoint ptr %.sroa.7298.0363 to i64
  %i.cl = ptrtoint ptr %.sroa.0295.0364 to i64
  %i.cm = sub i64 %i.ck, %i.cl                    ; 8 uses
  %i.cn = icmp eq i64 %i.cm, 9223372036854775807
  br i1 %i.cn, label %bb.r, label %_ZNKSt6vectorIN9Stockfish6SquareESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #31
  unreachable

_ZNKSt6vectorIN9Stockfish6SquareESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  %i.co = add i64 %.sroa.speculated.i.i.i, %i.cm  ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cm
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.co, i64 9223372036854775807)
  %i.cr = select i1 %i.cp, i64 9223372036854775807, i64 %i.cq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #29 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cm ; 2 uses
  store i8 %i.cb, ptr %i.ct, align 1, !tbaa !95
  %i.cu = icmp sgt i64 %i.cm, 0
  br i1 %i.cu, label %bb.s, label %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.s:                                             ; preds = %_ZNKSt6vectorIN9Stockfish6SquareESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr align 1 %.sroa.0295.0364, i64 %i.cm, i1 false)
  br label %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.s, %_ZNKSt6vectorIN9Stockfish6SquareESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %.not.i17.i.i = icmp eq ptr %.sroa.0295.0364, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0295.0364, i64 noundef %i.cm) #30
  br label %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr
  br label %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.l, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.p, %bb.m, %bb.n
  %.sroa.11300.1 = phi ptr [ %.sroa.11300.0362, %bb.m ], [ %.sroa.11300.0362, %bb.p ], [ %.sroa.11300.0362, %bb.l ], [ %.sroa.11300.0362, %bb.n ], [ %i.cw, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.7298.1 = phi ptr [ %.sroa.7298.0363, %bb.m ], [ %i.cj, %bb.p ], [ %.sroa.7298.0363, %bb.l ], [ %.sroa.7298.0363, %bb.n ], [ %i.cv, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 4 uses
  %.sroa.0295.1 = phi ptr [ %.sroa.0295.0364, %bb.m ], [ %.sroa.0295.0364, %bb.p ], [ %.sroa.0295.0364, %bb.l ], [ %.sroa.0295.0364, %bb.n ], [ %i.cs, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 11 uses
  %.3 = phi i32 [ %i.cg, %bb.m ], [ %.2365, %bb.p ], [ %.2365, %bb.l ], [ %.2365, %bb.n ], [ %.2365, %_ZNSt6vectorIN9Stockfish6SquareESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 6 uses
  %indvars.iv.next435 = add nuw nsw i64 %indvars.iv434, 1 ; 2 uses
  %exitcond437.not = icmp eq i64 %indvars.iv.next435, 28
  br i1 %exitcond437.not, label %.preheader340, label %.preheader341, !llvm.loop !102

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.4368 = phi i32 [ %i.cy, %.lr.ph ], [ %.4368.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0284.0367 = phi ptr [ %i.db, %.lr.ph ], [ %.sroa.0284.0367.ph, %.lr.ph.preheader ] ; 2 uses
  %i.cx = load i8, ptr %.sroa.0284.0367, align 1, !tbaa !95
  %i.cy = add nsw i32 %.4368, 1
  %i.cz = zext i8 %i.cx to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapA1D1D4E, i64 %i.cz
  store i32 %.4368, ptr %i.da, align 4, !tbaa !89
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0284.0367, i64 1 ; 2 uses
  %.not325 = icmp eq ptr %i.db, %.sroa.7298.1
  br i1 %.not325, label %.preheader338.preheader, label %.lr.ph, !llvm.loop !103

.preheader338.preheader:                          ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader340
  br label %.preheader338

.preheader338:                                    ; preds = %.preheader338.preheader, %bb.u
  %indvars.iv450 = phi i64 [ %indvars.iv.next451, %bb.u ], [ 0, %.preheader338.preheader ] ; 6 uses
  %.5387 = phi i32 [ %.9, %bb.u ], [ 0, %.preheader338.preheader ]
  %.sroa.0277.0385 = phi ptr [ %.sroa.0277.4, %bb.u ], [ null, %.preheader338.preheader ]
  %.sroa.7280.0384 = phi ptr [ %.sroa.7280.4, %bb.u ], [ null, %.preheader338.preheader ]
  %.sroa.11.0383 = phi ptr [ %.sroa.11.4, %bb.u ], [ null, %.preheader338.preheader ]
  %i.dc = icmp ne i64 %indvars.iv450, 0
  %i.dd = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_15MapKKE, i64 %indvars.iv450 ; 9 uses
  %i.de = trunc nuw nsw i64 %indvars.iv450 to i32
  %i.df = trunc nuw nsw i64 %indvars.iv450 to i32
  br label %bb.v

.preheader336:                                    ; preds = %bb.u
  %.not326388 = icmp eq ptr %.sroa.0277.4, %.sroa.7280.4
  br i1 %.not326388, label %._crit_edge, label %.lr.ph391

bb.u:                                             ; preds = %.loopexit
  %indvars.iv.next451 = add nuw nsw i64 %indvars.iv450, 1 ; 2 uses
  %exitcond453.not = icmp eq i64 %indvars.iv.next451, 10
end_hunk_0
begin_hunk_1_@_ZN9Stockfish12_GLOBAL__N_18TBTables3addERKSt6vectorINS_9PieceTypeESaIS3_EE:bb.a
_ZN9Stockfish12_GLOBAL__N_18TBTables6insertEmPNS0_7TBTableILNS0_6TBTypeE0EEEPNS2_ILS3_1EEE.exit48: ; preds = %bb.bl, %bb.bm
  store i64 %.sroa.0.017.i31, ptr %i.ng, align 8, !tbaa !17
  %.sroa.6.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  store ptr %.sroa.6.016.i32, ptr %.sroa.6.0..sroa_idx.i46, align 8, !tbaa !68
  %.sroa.7.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  store ptr %.sroa.7.015.i33, ptr %.sroa.7.0..sroa_idx.i47, align 8, !tbaa !47
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN9Stockfish12_GLOBAL__N_18TBTables6insertEmPNS0_7TBTableILNS0_6TBTypeE0EEEPNS2_ILS3_1EEE.exit48
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 24), ptr %4, align 8, !tbaa !132
  %i.np = getelementptr inbounds nuw i8, ptr %4, i64 288 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 64), ptr %i.np, align 8, !tbaa !132
  %i.nq = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !175 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %4, i64 272 ; 2 uses
  %i.nt = icmp eq ptr %i.nr, %i.ns
  br i1 %i.nt, label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bq
  %i.nu = load i64, ptr %i.ns, align 8, !tbaa !156
  %i.nv = add i64 %i.nu, 1
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nv) #30, !inline_history !230
  br label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit

_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit:      ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 24), ptr %4, align 8, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 64), ptr %i.np, align 8, !tbaa !132
  %i.nw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.nw, align 8, !tbaa !132
  %i.nx = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.nw) #26, !inline_history !230 ; 0 uses
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.bv) #26, !inline_history !230
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.nw, align 8, !tbaa !132
  %i.ny = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ny) #26, !inline_history !230
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 24), ptr %4, align 8, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 64), ptr %i.np, align 8, !tbaa !132
  %i.nz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.nz, align 8, !tbaa !231
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.np) #26, !inline_history !233
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 24), ptr %2, align 8, !tbaa !132
  %i.oa = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 64), ptr %i.oa, align 8, !tbaa !132
  %i.ob = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !175 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.oe = icmp eq ptr %i.oc, %i.od
  br i1 %i.oe, label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49: ; preds = %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit
  %i.of = load i64, ptr %i.od, align 8, !tbaa !156
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.og) #30, !inline_history !230
  br label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit51

_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit51:    ; preds = %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 24), ptr %2, align 8, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 64), ptr %i.oa, align 8, !tbaa !132
  %i.oh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.oh, align 8, !tbaa !132
  %i.oi = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.oh) #26, !inline_history !230 ; 0 uses
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.aa) #26, !inline_history !230
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.oh, align 8, !tbaa !132
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.oj) #26, !inline_history !230
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 24), ptr %2, align 8, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 64), ptr %i.oa, align 8, !tbaa !132
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ok, align 8, !tbaa !231
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.oa) #26, !inline_history !233
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ol = load ptr, ptr %1, align 8, !tbaa !175   ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.a
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit51
  %i.on = load i64, ptr %i.a, align 8, !tbaa !156
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.oo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 -2, -2147483648) i32 @_ZN9Stockfish10Tablebases9probe_wdlERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) local_unnamed_addr #4 {
bb.a:
  store i32 1, ptr %1, align 4, !tbaa !234
  %i.a = tail call fastcc noundef i32 @_ZN9Stockfish12_GLOBAL__N_16searchILb0EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 -2, -2147483648) i32 @_ZN9Stockfish12_GLOBAL__N_16searchILb0EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr nofree noundef captures(none) %1) unnamed_addr #4 {
bb.a:
  %2 = alloca %"struct.Stockfish::StateInfo", align 8 ; 3 uses
  %3 = alloca %"struct.Stockfish::MoveList", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 512
  %i.b = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(520) %3) #26 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !236
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %3 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 1
  %.not73 = icmp eq ptr %3, %i.b
  br i1 %.not73, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 622
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.04476 = phi i32 [ -2, %.lr.ph ], [ %.246.ph, %bb.f ] ; 3 uses
  %.04875 = phi i64 [ 0, %.lr.ph ], [ %.149.ph, %bb.f ] ; 2 uses
  %.05174 = phi ptr [ %3, %.lr.ph ], [ %i.x, %bb.f ] ; 2 uses
  %.sroa.04.0.copyload = load i16, ptr %.05174, align 2, !tbaa !239 ; 6 uses
  %i.j = and i16 %.sroa.04.0.copyload, 63
  %i.k = zext nneg i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !241
  %i.n = icmp ne i8 %i.m, 0
  %.not.i = icmp ult i16 %.sroa.04.0.copyload, -16384
  %or.cond.not.i = and i1 %.not.i, %i.n
  %i.o = icmp slt i16 %.sroa.04.0.copyload, -16384
  %spec.select.i = or i1 %i.o, %or.cond.not.i
  br i1 %spec.select.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = add i64 %.04875, 1                       ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !243
  %i.q = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.04.0.copyload) #26
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.04.0.copyload, ptr noundef nonnull align 8 dereferenceable(192) %2, i1 noundef zeroext %i.q, ptr noundef nonnull align 1 dereferenceable(7) %i.i, ptr noundef nonnull align 8 dereferenceable(416) %i.g, ptr noundef null, ptr noundef null) #26
  %i.r = call fastcc noundef i32 @_ZN9Stockfish12_GLOBAL__N_16searchILb0EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef %1) ; 2 uses
  %i.s = sub nsw i32 0, %i.r                      ; 3 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.04.0.copyload) #26
  %i.t = load i32, ptr %1, align 4, !tbaa !234
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.thread64, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = icmp slt i32 %.04476, %i.s
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = icmp slt i32 %i.r, -1
  br i1 %i.w, label %.thread64.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d
  %.149.ph = phi i64 [ %i.p, %bb.d ], [ %i.p, %bb.e ], [ %.04875, %bb.b ] ; 2 uses
  %.246.ph = phi i32 [ %.04476, %bb.d ], [ %i.s, %bb.e ], [ %.04476, %bb.b ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05174, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.b
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.f
  %i.y = icmp eq i64 %.149.ph, %i.f
  br i1 %i.y, label %.thread, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.044.lcssa84 = phi i32 [ %.246.ph, %._crit_edge ], [ -2, %bb.a ] ; 2 uses
  %i.z = call fastcc noundef i32 @_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE0ENS_10Tablebases8WDLScoreEEET0_RKNS_8PositionEPNS3_10ProbeStateES4_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef %1) ; 2 uses
  %i.aa = load i32, ptr %1, align 4, !tbaa !234
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.thread64, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread
  %.not55 = icmp slt i32 %.044.lcssa84, %i.z
  br i1 %.not55, label %.thread64.sink.split, label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.g
  %.044.lcssa8589 = phi i32 [ %.044.lcssa84, %bb.g ], [ %.246.ph, %._crit_edge ] ; 2 uses
  %i.ac = phi i1 [ false, %bb.g ], [ true, %._crit_edge ]
  %i.ad = icmp sgt i32 %.044.lcssa8589, 0
  %i.ae = or i1 %i.ad, %i.ac
  %i.af = select i1 %i.ae, i32 2, i32 1
  br label %.thread64.sink.split

.thread64.sink.split:                             ; preds = %bb.e, %bb.g, %.thread
  %.sink = phi i32 [ 1, %bb.g ], [ %i.af, %.thread ], [ 2, %bb.e ]
  %.4.ph = phi i32 [ %i.z, %bb.g ], [ %.044.lcssa8589, %.thread ], [ %i.s, %bb.e ]
  store i32 %.sink, ptr %1, align 4, !tbaa !234
  br label %.thread64

.thread64:                                        ; preds = %bb.c, %.thread64.sink.split, %._crit_edge.thread
  %.4 = phi i32 [ 0, %._crit_edge.thread ], [ %.4.ph, %.thread64.sink.split ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 74 uses
  %2 = ptrtoaddr ptr %i.a to i64
  %i.b = alloca [7 x i8], align 1                 ; 18 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.Stockfish::(anonymous namespace)::TBFile", align 8 ; 14 uses
  %13 = alloca %"struct.Stockfish::StateInfo", align 8 ; 6 uses
  %14 = alloca %"struct.Stockfish::MoveList", align 8 ; 10 uses
  %15 = alloca %"struct.Stockfish::StateInfo", align 8 ; 3 uses
  %16 = alloca %"struct.Stockfish::MoveList", align 8 ; 7 uses
  %17 = alloca %"struct.Stockfish::MoveList", align 8 ; 6 uses
  store i32 1, ptr %1, align 4, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 512
  %i.f = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(520) %14) #26 ; 4 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !236
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %14 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 1
  %.not76.i = icmp eq ptr %14, %i.f
  br i1 %.not76.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 622
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.04779.i = phi i32 [ -2, %.lr.ph.i ], [ %.249.ph.i, %bb.g ] ; 3 uses
  %.05178.i = phi i64 [ 0, %.lr.ph.i ], [ %.152.ph.i, %bb.g ] ; 2 uses
  %.05477.i = phi ptr [ %14, %.lr.ph.i ], [ %i.ah, %bb.g ] ; 2 uses
  %.sroa.05.0.copyload.i = load i16, ptr %.05477.i, align 2, !tbaa !239 ; 7 uses
  %i.n = and i16 %.sroa.05.0.copyload.i, 63
  %i.o = zext nneg i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !241
  %i.r = icmp ne i8 %i.q, 0
  %.not.i.i = icmp ult i16 %.sroa.05.0.copyload.i, -16384
  %or.cond.not.i.i = and i1 %.not.i.i, %i.r
  %i.s = icmp slt i16 %.sroa.05.0.copyload.i, -16384
  %spec.select.i.i = or i1 %i.s, %or.cond.not.i.i
  br i1 %spec.select.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = lshr i16 %.sroa.05.0.copyload.i, 6
  %i.u = and i16 %i.t, 63
  %i.v = zext nneg i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !241
  %i.y = and i8 %i.x, 7
  %.not58.i = icmp eq i8 %i.y, 1
  br i1 %.not58.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = add i64 %.05178.i, 1                     ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !243
  %i.aa = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.05.0.copyload.i) #26
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.05.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(192) %13, i1 noundef zeroext %i.aa, ptr noundef nonnull align 1 dereferenceable(7) %i.m, ptr noundef nonnull align 8 dereferenceable(416) %i.k, ptr noundef null, ptr noundef null) #26
  %i.ab = call fastcc noundef i32 @_ZN9Stockfish12_GLOBAL__N_16searchILb0EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1) ; 2 uses
  %i.ac = sub nsw i32 0, %i.ab                    ; 2 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.05.0.copyload.i) #26
  %i.ad = load i32, ptr %1, align 4, !tbaa !234
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = icmp slt i32 %.04779.i, %i.ac
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp slt i32 %i.ab, -1
  br i1 %i.ag, label %.thread104, label %bb.g

.thread104:                                       ; preds = %bb.f
  store i32 2, ptr %1, align 4, !tbaa !234
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.152.ph.i = phi i64 [ %i.z, %bb.e ], [ %i.z, %bb.f ], [ %.05178.i, %bb.c ] ; 2 uses
  %.249.ph.i = phi i32 [ %.04779.i, %bb.e ], [ %i.ac, %bb.f ], [ %.04779.i, %bb.c ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05477.i, i64 2 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, %i.f
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.g
  %i.ai = icmp eq i64 %.152.ph.i, %i.j
  br i1 %i.ai, label %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.047.lcssa86.i = phi i32 [ %.249.ph.i, %._crit_edge.i ], [ -2, %bb.a ] ; 2 uses
  %i.aj = call fastcc noundef i32 @_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE0ENS_10Tablebases8WDLScoreEEET0_RKNS_8PositionEPNS3_10ProbeStateES4_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull %1) ; 3 uses
  %i.ak = load i32, ptr %1, align 4, !tbaa !234
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread.i
  %.not59.i = icmp slt i32 %.047.lcssa86.i, %i.aj
  br i1 %.not59.i, label %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread83, label %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit

_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread: ; preds = %bb.d, %._crit_edge.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit

_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit: ; preds = %._crit_edge.i, %bb.h
  %.047.lcssa8791.i = phi i32 [ %.047.lcssa86.i, %bb.h ], [ %.249.ph.i, %._crit_edge.i ] ; 6 uses
  %i.am = phi i1 [ false, %bb.h ], [ true, %._crit_edge.i ]
  %i.an = icmp sgt i32 %.047.lcssa8791.i, 0
  %i.ao = or i1 %i.an, %i.am                      ; 2 uses
  %i.ap = select i1 %i.ao, i32 2, i32 1
  store i32 %i.ap, ptr %1, align 4, !tbaa !234
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.aq = icmp eq i32 %.047.lcssa8791.i, 0
  br i1 %i.aq, label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit, label %bb.i

_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread83: ; preds = %bb.h
  store i32 1, ptr %1, align 4, !tbaa !234
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.ar = icmp eq i32 %i.aj, 0
  br i1 %i.ar, label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit, label %.thread

bb.i:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit
  br i1 %i.ao, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  switch i32 %.047.lcssa8791.i, label %bb.k [
    i32 2, label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit
    i32 1, label %.fold.split.i
  ]

bb.k:                                             ; preds = %bb.j
  %i.as = icmp eq i32 %.047.lcssa8791.i, -1
  %i.at = icmp eq i32 %.047.lcssa8791.i, -2
  %i.au = sext i1 %i.at to i32
  %i.av = select i1 %i.as, i32 -101, i32 %i.au
  br label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit

.fold.split.i:                                    ; preds = %bb.j
  br label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit

.thread:                                          ; preds = %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread83, %bb.i
  %.4.ph.i8891 = phi i32 [ %.047.lcssa8791.i, %bb.i ], [ %i.aj, %_ZN9Stockfish12_GLOBAL__N_16searchILb1EEENS_10Tablebases8WDLScoreERNS_8PositionEPNS2_10ProbeStateE.exit.thread83 ] ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !89
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !89
  %i.ba = add nsw i32 %i.az, %i.ax
  %i.bb = icmp eq i32 %i.ba, 2
  br i1 %i.bb, label %_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE1EiEET0_RKNS_8PositionEPNS_10Tablebases10ProbeStateENS7_8WDLScoreE.exit, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !245
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !254 ; 3 uses
  %i.bf = and i64 %i.be, 4095
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 %i.bf ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !218
  %i.bi = icmp eq i64 %i.bh, %i.be
  br i1 %i.bi, label %_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE1EEEPNS0_7TBTableIXT_EEEm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %bb.m
  %.01.i.i = phi ptr [ %i.bk, %bb.m ], [ %i.bg, %bb.l ] ; 3 uses
  %i.bj = getelementptr i8, ptr %.01.i.i, i64 16
  %.0.val6.i.i = load ptr, ptr %i.bj, align 8, !tbaa !256
  %.not.i.i74 = icmp eq ptr %.0.val6.i.i, null
  br i1 %.not.i.i74, label %_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE1EEEPNS0_7TBTableIXT_EEEm.exit.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.01.i.i, i64 24 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !218
  %i.bm = icmp eq i64 %i.bl, %i.be
  br i1 %i.bm, label %_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE1EEEPNS0_7TBTableIXT_EEEm.exit.i, label %.lr.ph.i.i, !llvm.loop !257

_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE1EEEPNS0_7TBTableIXT_EEEm.exit.i: ; preds = %bb.m, %.lr.ph.i.i, %bb.l
  %.0.lcssa.i.i = phi ptr [ %i.bg, %bb.l ], [ %.01.i.i, %.lr.ph.i.i ], [ %i.bk, %bb.m ]
  %i.bn = getelementptr i8, ptr %.0.lcssa.i.i, i64 16
  %.0.val.i.i = load ptr, ptr %i.bn, align 8, !tbaa !256 ; 99 uses
  %.0.val.i.i280 = ptrtoaddr ptr %.0.val.i.i to i64
  %.not.i75 = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i75, label %_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE1EiEET0_RKNS_8PositionEPNS_10Tablebases10ProbeStateENS7_8WDLScoreE.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE1EEEPNS0_7TBTableIXT_EEEm.exit.i
  %i.bo = load atomic i8, ptr %.0.val.i.i acquire, align 1, !range !206, !noundef !207
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.o, label %bb.p

end_hunk_1
begin_hunk_2_@_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE:bb.a
  %.masked.i.i.1 = and i8 %i.bui, 56
  %i.buj = or i8 %.masked.i.i.1, %i.buh
  store i8 %i.buj, ptr %i.buf, align 1, !tbaa !95
  %i.buk = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv271.i.i
  %i.bul = getelementptr inbounds nuw i8, ptr %i.buk, i64 2 ; 2 uses
  %i.bum = load i8, ptr %i.bul, align 1, !tbaa !95 ; 2 uses
  %i.bun = lshr i8 %i.bum, 3
  %i.buo = shl i8 %i.bum, 3
  %.masked.i.i.2 = and i8 %i.buo, 56
  %i.bup = or i8 %.masked.i.i.2, %i.bun
  store i8 %i.bup, ptr %i.bul, align 1, !tbaa !95
  %i.buq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv271.i.i
  %i.bur = getelementptr inbounds nuw i8, ptr %i.buq, i64 3 ; 2 uses
  %i.bus = load i8, ptr %i.bur, align 1, !tbaa !95 ; 2 uses
  %i.but = lshr i8 %i.bus, 3
  %i.buu = shl i8 %i.bus, 3
  %.masked.i.i.3 = and i8 %i.buu, 56
  %i.buv = or i8 %.masked.i.i.3, %i.but
  store i8 %i.buv, ptr %i.bur, align 1, !tbaa !95
  %i.buw = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv271.i.i
  %i.bux = getelementptr inbounds nuw i8, ptr %i.buw, i64 4 ; 2 uses
  %i.buy = load i8, ptr %i.bux, align 1, !tbaa !95 ; 2 uses
  %i.buz = lshr i8 %i.buy, 3
  %i.bva = shl i8 %i.buy, 3
  %.masked.i.i.4 = and i8 %i.bva, 56
  %i.bvb = or i8 %.masked.i.i.4, %i.buz
  store i8 %i.bvb, ptr %i.bux, align 1, !tbaa !95
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv271.i.i
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.bvc, i64 5 ; 2 uses
  %i.bve = load i8, ptr %i.bvd, align 1, !tbaa !95 ; 2 uses
  %i.bvf = lshr i8 %i.bve, 3
  %i.bvg = shl i8 %i.bve, 3
  %.masked.i.i.5 = and i8 %i.bvg, 56
  %i.bvh = or i8 %.masked.i.i.5, %i.bvf
  store i8 %i.bvh, ptr %i.bvd, align 1, !tbaa !95
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv271.i.i
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.bvi, i64 6 ; 2 uses
  %i.bvk = load i8, ptr %i.bvj, align 1, !tbaa !95 ; 2 uses
  %i.bvl = lshr i8 %i.bvk, 3
  %i.bvm = shl i8 %i.bvk, 3
  %.masked.i.i.6 = and i8 %i.bvm, 56
  %i.bvn = or i8 %.masked.i.i.6, %i.bvl
  store i8 %i.bvn, ptr %i.bvj, align 1, !tbaa !95
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv271.i.i
  %i.bvp = getelementptr inbounds nuw i8, ptr %i.bvo, i64 7 ; 2 uses
  %i.bvq = load i8, ptr %i.bvp, align 1, !tbaa !95 ; 2 uses
  %i.bvr = lshr i8 %i.bvq, 3
  %i.bvs = shl i8 %i.bvq, 3
  %.masked.i.i.7 = and i8 %i.bvs, 56
  %i.bvt = or i8 %.masked.i.i.7, %i.bvr
  store i8 %i.bvt, ptr %i.bvp, align 1, !tbaa !95
  %indvars.iv.next272.i.i.7 = add nuw nsw i64 %indvars.iv271.i.i, 8 ; 2 uses
  %exitcond276.not.i.i.7 = icmp eq i64 %indvars.iv.next272.i.i.7, %wide.trip.count275.i.i
  br i1 %exitcond276.not.i.i.7, label %.loopexit162.i.i, label %.lr.ph193.i.i, !llvm.loop !334

bb.cz:                                            ; preds = %.lr.ph190.i.i
  %indvars.iv.next266.i.i = add nuw nsw i64 %indvars.iv265.i.i, 1 ; 2 uses
  %exitcond269.not.i.i = icmp eq i64 %indvars.iv.next266.i.i, %wide.trip.count268.i.i
  br i1 %exitcond269.not.i.i, label %.loopexit162.i.i, label %.lr.ph190.i.i, !llvm.loop !335

.loopexit162.i.i:                                 ; preds = %bb.cz, %.lr.ph193.i.i.prol.loopexit, %.lr.ph193.i.i, %bb.cy, %.loopexit165.i.i
  %i.bvu = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 53
  %i.bvv = load i8, ptr %i.bvu, align 1, !tbaa !210, !range !206, !noundef !207
  %i.bvw = trunc nuw i8 %i.bvv to i1
  br i1 %i.bvw, label %bb.da, label %bb.dh

bb.da:                                            ; preds = %.loopexit162.i.i
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.bvy = load i8, ptr %i.bvx, align 1, !tbaa !95 ; 6 uses
  %i.bvz = load i8, ptr %i.a, align 1, !tbaa !95  ; 5 uses
  %i.bwa = icmp ugt i8 %i.bvy, %i.bvz
  %.neg.i.i = sext i1 %i.bwa to i32               ; 2 uses
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.bwc = load i8, ptr %i.bwb, align 1, !tbaa !95 ; 7 uses
  %i.bwd = icmp ugt i8 %i.bwc, %i.bvz
  %.neg217.i.i = sext i1 %i.bwd to i32
  %i.bwe = icmp ugt i8 %i.bwc, %i.bvy
  %.neg218.i.i = sext i1 %i.bwe to i32
  %.neg219.i.i = add nsw i32 %.neg217.i.i, %.neg218.i.i ; 3 uses
  %i.bwf = lshr i8 %i.bvz, 3                      ; 2 uses
  %i.bwg = zext nneg i8 %i.bwf to i32             ; 3 uses
  %i.bwh = and i8 %i.bvz, 7
  %.not139.i.i = icmp eq i8 %i.bwf, %i.bwh
  br i1 %.not139.i.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.bwi = zext i8 %i.bvz to i64
  %i.bwj = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapA1D1D4E, i64 %i.bwi
  %i.bwk = load i32, ptr %i.bwj, align 4, !tbaa !89
  %i.bwl = mul nsw i32 %i.bwk, 63
  %i.bwm = zext i8 %i.bvy to i32
  %i.bwn = add nsw i32 %.neg.i.i, %i.bwm
  %i.bwo = add nsw i32 %i.bwn, %i.bwl
  %i.bwp = mul nsw i32 %i.bwo, 62
  %i.bwq = zext i8 %i.bwc to i32
  %i.bwr = add nsw i32 %.neg219.i.i, %i.bwq
  %i.bws = add i32 %i.bwr, %i.bwp
  %i.bwt = sext i32 %i.bws to i64
  br label %.loopexit.i.i

bb.dc:                                            ; preds = %bb.da
  %i.bwu = lshr i8 %i.bvy, 3                      ; 2 uses
  %i.bwv = and i8 %i.bvy, 7
  %.not140.i.i = icmp eq i8 %i.bwu, %i.bwv
  br i1 %.not140.i.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.bww = mul nuw nsw i32 %i.bwg, 28
  %i.bwx = add nuw nsw i32 %i.bww, 378
  %i.bwy = zext i8 %i.bvy to i64
  %i.bwz = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapB1H1H7E, i64 %i.bwy
  %i.bxa = load i32, ptr %i.bwz, align 4, !tbaa !89
  %i.bxb = add nsw i32 %i.bwx, %i.bxa
  %i.bxc = mul nsw i32 %i.bxb, 62
  %i.bxd = zext i8 %i.bwc to i32
  %i.bxe = add nsw i32 %.neg219.i.i, %i.bxd
  %i.bxf = add i32 %i.bxe, %i.bxc
  %i.bxg = sext i32 %i.bxf to i64
  br label %.loopexit.i.i

bb.de:                                            ; preds = %bb.dc
  %i.bxh = zext nneg i8 %i.bwu to i32
  %i.bxi = lshr i8 %i.bwc, 3                      ; 2 uses
  %i.bxj = and i8 %i.bwc, 7
  %.not141.i.i = icmp eq i8 %i.bxi, %i.bxj
  %i.bxk = add nsw i32 %.neg.i.i, %i.bxh          ; 2 uses
  br i1 %.not141.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.bxl = mul nuw nsw i32 %i.bwg, 196
  %i.bxm = add nuw nsw i32 %i.bxl, 30380
  %i.bxn = mul nsw i32 %i.bxk, 28
  %i.bxo = add nsw i32 %i.bxm, %i.bxn
  %i.bxp = zext i8 %i.bwc to i64
  %i.bxq = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapB1H1H7E, i64 %i.bxp
  %i.bxr = load i32, ptr %i.bxq, align 4, !tbaa !89
  %i.bxs = add nsw i32 %i.bxo, %i.bxr
  %i.bxt = sext i32 %i.bxs to i64
  br label %.loopexit.i.i

bb.dg:                                            ; preds = %bb.de
  %i.bxu = zext nneg i8 %i.bxi to i32
  %i.bxv = mul nuw nsw i32 %i.bwg, 42
  %i.bxw = mul nsw i32 %i.bxk, 6
  %i.bxx = add nuw nsw i32 %i.bxv, 31164
  %i.bxy = add nuw nsw i32 %i.bxx, %i.bxu
  %i.bxz = add nsw i32 %i.bxy, %i.bxw
  %i.bya = add nsw i32 %i.bxz, %.neg219.i.i
  %i.byb = zext nneg i32 %i.bya to i64
  br label %.loopexit.i.i

bb.dh:                                            ; preds = %.loopexit162.i.i
  %i.byc = load i8, ptr %i.a, align 1, !tbaa !95
  %i.byd = zext i8 %i.byc to i64
  %i.bye = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapA1D1D4E, i64 %i.byd
  %i.byf = load i32, ptr %i.bye, align 4, !tbaa !89
  %i.byg = sext i32 %i.byf to i64
  %i.byh = getelementptr inbounds [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_15MapKKE, i64 %i.byg
  %i.byi = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.byj = load i8, ptr %i.byi, align 1, !tbaa !95
  %i.byk = zext i8 %i.byj to i64
  %i.byl = getelementptr inbounds nuw [4 x i8], ptr %i.byh, i64 %i.byk
  %i.bym = load i32, ptr %i.byl, align 4, !tbaa !89
  %i.byn = sext i32 %i.bym to i64
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph196.i.i, %middle.block329, %vec.epilog.middle.block353, %bb.dh, %bb.dg, %bb.df, %bb.dd, %bb.db, %_ZSt11stable_sortIPN9Stockfish6SquareEPFbS1_S1_EEvT_S5_T0_.exit.i.i, %bb.cq
  %.2.i.i = phi i64 [ %i.byn, %bb.dh ], [ %i.byb, %bb.dg ], [ %i.bwt, %bb.db ], [ %i.bxg, %bb.dd ], [ %i.bxt, %bb.df ], [ %i.bpp, %_ZSt11stable_sortIPN9Stockfish6SquareEPFbS1_S1_EEvT_S5_T0_.exit.i.i ], [ %i.bpp, %bb.cq ], [ %i.brl, %vec.epilog.middle.block353 ], [ %i.brb, %middle.block329 ], [ %i.brw, %.lr.ph196.i.i ]
  %i.byo = getelementptr inbounds nuw i8, ptr %i.bkq, i64 136 ; 2 uses
  %i.byp = load i64, ptr %i.byo, align 8, !tbaa !17
  %i.byq = mul i64 %i.byp, %.2.i.i                ; 2 uses
  %i.byr = getelementptr inbounds nuw i8, ptr %i.bkq, i64 200 ; 2 uses
  %i.bys = load i32, ptr %i.byr, align 8, !tbaa !89
  %i.byt = sext i32 %i.bys to i64
  %i.byu = getelementptr inbounds i8, ptr %i.a, i64 %i.byt
  %i.byv = load i8, ptr %i.bgv, align 4, !tbaa !208, !range !206, !noundef !207
  %i.byw = trunc nuw i8 %i.byv to i1              ; 2 uses
  br i1 %i.byw, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %.loopexit.i.i
  %i.byx = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 55
  %i.byy = load i8, ptr %i.byx, align 1, !tbaa !156
  %.not143.i.i = icmp eq i8 %i.byy, 0
  %i.byz = select i1 %.not143.i.i, i64 0, i64 8
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %.loopexit.i.i
  %i.bza = phi i64 [ 0, %.loopexit.i.i ], [ %i.byz, %bb.di ]
  %i.bzb = getelementptr inbounds nuw i8, ptr %i.bkq, i64 204 ; 2 uses
  %i.bzc = load i32, ptr %i.bzb, align 4, !tbaa !89 ; 2 uses
  %.not142205.i.i = icmp eq i32 %i.bzc, 0
  br i1 %.not142205.i.i, label %._crit_edge212.i.i, label %.lr.ph211.i.i

.lr.ph211.i.i:                                    ; preds = %bb.dj, %._crit_edge201.i.i
  %indvars.iv292.i.i = phi i64 [ %indvars.iv.next293.i.i, %._crit_edge201.i.i ], [ 1, %bb.dj ] ; 2 uses
  %i.bzd = phi i32 [ %i.cbl, %._crit_edge201.i.i ], [ %i.bzc, %bb.dj ]
  %i.bze = phi ptr [ %i.cbk, %._crit_edge201.i.i ], [ %i.bzb, %bb.dj ]
  %.3209.i.i = phi i64 [ %i.cbh, %._crit_edge201.i.i ], [ %i.byq, %bb.dj ]
  %.0123208.i.i = phi i64 [ 0, %._crit_edge201.i.i ], [ %i.bza, %bb.dj ] ; 4 uses
  %.0158206.i.i = phi ptr [ %i.cbj, %._crit_edge201.i.i ], [ %i.byu, %bb.dj ] ; 7 uses
  %.0158206.i.i426 = ptrtoaddr ptr %.0158206.i.i to i64
  %i.bzf = sext i32 %i.bzd to i64
  %i.bzg = getelementptr inbounds i8, ptr %.0158206.i.i, i64 %i.bzf
  call void @_ZSt13__stable_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef %.0158206.i.i, ptr noundef nonnull %i.bzg)
  %i.bzh = load i32, ptr %i.bze, align 4, !tbaa !89 ; 5 uses
  %i.bzi = icmp sgt i32 %i.bzh, 0
  br i1 %i.bzi, label %.lr.ph200.i.i, label %._crit_edge201.i.i

.lr.ph200.i.i:                                    ; preds = %.lr.ph211.i.i
  %.not7.i.i.i.i = icmp eq ptr %i.a, %.0158206.i.i
  %wide.trip.count290.i.i = zext nneg i32 %i.bzh to i64 ; 7 uses
  br i1 %.not7.i.i.i.i, label %iter.check400, label %.lr.ph.i.i146.i.i.preheader

.lr.ph.i.i146.i.i.preheader:                      ; preds = %.lr.ph200.i.i
  %i.bzj = sub i64 %.0158206.i.i426, %2           ; 7 uses
  %min.iters.check427 = icmp ult i64 %i.bzj, 8
  %min.iters.check429 = icmp ult i64 %i.bzj, 32
  %n.mod.vf431 = and i64 %i.bzj, 24
  %n.vec432 = and i64 %i.bzj, -32                 ; 4 uses
  %i.bzk = getelementptr i8, ptr %i.a, i64 %n.vec432
  %cmp.n451 = icmp eq i64 %i.bzj, %n.vec432
  %min.epilog.iters.check458 = icmp eq i64 %n.mod.vf431, 0
  %n.vec461 = and i64 %i.bzj, -8                  ; 3 uses
  %i.bzl = getelementptr i8, ptr %i.a, i64 %n.vec461
  %cmp.n471 = icmp eq i64 %i.bzj, %n.vec461
  br label %iter.check455

iter.check400:                                    ; preds = %.lr.ph200.i.i
  %min.iters.check357 = icmp ult i32 %i.bzh, 8
  br i1 %min.iters.check357, label %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i.preheader, label %vector.main.loop.iter.check358

vector.main.loop.iter.check358:                   ; preds = %iter.check400
  %min.iters.check359 = icmp ult i32 %i.bzh, 32
  br i1 %min.iters.check359, label %vec.epilog.ph404, label %vector.ph360

vector.ph360:                                     ; preds = %vector.main.loop.iter.check358
  %n.mod.vf361 = and i64 %wide.trip.count290.i.i, 24
  %n.vec362 = and i64 %wide.trip.count290.i.i, 2147483616 ; 4 uses
  %broadcast.splatinsert363 = insertelement <8 x i64> poison, i64 %.0123208.i.i, i64 0
  %broadcast.splat364 = shufflevector <8 x i64> %broadcast.splatinsert363, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body365

vector.body365:                                   ; preds = %vector.body365, %vector.ph360
  %index366 = phi i64 [ 0, %vector.ph360 ], [ %index.next391, %vector.body365 ] ; 2 uses
  %vec.ind367 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph360 ], [ %vec.ind.next392, %vector.body365 ] ; 5 uses
  %vec.phi368 = phi <8 x i64> [ zeroinitializer, %vector.ph360 ], [ %i.cag, %vector.body365 ]
  %vec.phi369 = phi <8 x i64> [ zeroinitializer, %vector.ph360 ], [ %i.cah, %vector.body365 ]
  %vec.phi370 = phi <8 x i64> [ zeroinitializer, %vector.ph360 ], [ %i.cai, %vector.body365 ]
  %vec.phi371 = phi <8 x i64> [ zeroinitializer, %vector.ph360 ], [ %i.caj, %vector.body365 ]
  %i.bzm = add nuw nsw <8 x i64> %vec.ind367, splat (i64 1)
  %i.bzn = add nuw <8 x i64> %vec.ind367, splat (i64 9)
  %i.bzo = add nuw <8 x i64> %vec.ind367, splat (i64 17)
  %i.bzp = add nuw <8 x i64> %vec.ind367, splat (i64 25)
  %wide.gep375 = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <8 x i64> %i.bzm
  %wide.gep376 = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <8 x i64> %i.bzn
  %wide.gep377 = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <8 x i64> %i.bzo
  %wide.gep378 = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <8 x i64> %i.bzp
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.a, i64 %index366 ; 4 uses
  %i.bzr = getelementptr inbounds nuw i8, ptr %i.bzq, i64 8
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.bzq, i64 16
  %i.bzt = getelementptr inbounds nuw i8, ptr %i.bzq, i64 24
  %wide.load379 = load <8 x i8>, ptr %i.bzq, align 1, !tbaa !95
  %wide.load380 = load <8 x i8>, ptr %i.bzr, align 1, !tbaa !95
  %wide.load381 = load <8 x i8>, ptr %i.bzs, align 1, !tbaa !95
  %wide.load382 = load <8 x i8>, ptr %i.bzt, align 1, !tbaa !95
  %i.bzu = zext <8 x i8> %wide.load379 to <8 x i64>
  %i.bzv = zext <8 x i8> %wide.load380 to <8 x i64>
  %i.bzw = zext <8 x i8> %wide.load381 to <8 x i64>
  %i.bzx = zext <8 x i8> %wide.load382 to <8 x i64>
  %i.bzy = sub nsw <8 x i64> %i.bzu, %broadcast.splat364
  %i.bzz = sub nsw <8 x i64> %i.bzv, %broadcast.splat364
  %i.caa = sub nsw <8 x i64> %i.bzw, %broadcast.splat364
  %i.cab = sub nsw <8 x i64> %i.bzx, %broadcast.splat364
  %wide.gep383 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep375, <8 x i64> %i.bzy
  %wide.gep384 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep376, <8 x i64> %i.bzz
  %wide.gep385 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep377, <8 x i64> %i.caa
  %wide.gep386 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep378, <8 x i64> %i.cab
  %wide.masked.gather387 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep383, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %wide.masked.gather388 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep384, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %wide.masked.gather389 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep385, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %wide.masked.gather390 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep386, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %i.cac = sext <8 x i32> %wide.masked.gather387 to <8 x i64>
  %i.cad = sext <8 x i32> %wide.masked.gather388 to <8 x i64>
  %i.cae = sext <8 x i32> %wide.masked.gather389 to <8 x i64>
  %i.caf = sext <8 x i32> %wide.masked.gather390 to <8 x i64>
  %i.cag = add <8 x i64> %vec.phi368, %i.cac      ; 2 uses
  %i.cah = add <8 x i64> %vec.phi369, %i.cad      ; 2 uses
  %i.cai = add <8 x i64> %vec.phi370, %i.cae      ; 2 uses
  %i.caj = add <8 x i64> %vec.phi371, %i.caf      ; 2 uses
  %index.next391 = add nuw i64 %index366, 32      ; 2 uses
  %vec.ind.next392 = add nuw <8 x i64> %vec.ind367, splat (i64 32)
  %i.cak = icmp eq i64 %index.next391, %n.vec362
  br i1 %i.cak, label %middle.block393, label %vector.body365, !llvm.loop !336

middle.block393:                                  ; preds = %vector.body365
  %bin.rdx394 = add <8 x i64> %i.cah, %i.cag
  %bin.rdx395 = add <8 x i64> %i.cai, %bin.rdx394
  %bin.rdx396 = add <8 x i64> %i.caj, %bin.rdx395
  %i.cal = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %bin.rdx396) ; 3 uses
  %cmp.n397 = icmp eq i64 %n.vec362, %wide.trip.count290.i.i
  br i1 %cmp.n397, label %._crit_edge201.i.i, label %vec.epilog.iter.check402

vec.epilog.iter.check402:                         ; preds = %middle.block393
  %min.epilog.iters.check403 = icmp eq i64 %n.mod.vf361, 0
  br i1 %min.epilog.iters.check403, label %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i.preheader, label %vec.epilog.ph404, !prof !114

vec.epilog.ph404:                                 ; preds = %vector.main.loop.iter.check358, %vec.epilog.iter.check402
  %vec.epilog.resume.val398 = phi i64 [ %n.vec362, %vec.epilog.iter.check402 ], [ 0, %vector.main.loop.iter.check358 ] ; 2 uses
  %bc.merge.rdx399 = phi i64 [ %i.cal, %vec.epilog.iter.check402 ], [ 0, %vector.main.loop.iter.check358 ]
  %n.vec406 = and i64 %wide.trip.count290.i.i, 2147483640 ; 3 uses
  %i.cam = insertelement <8 x i64> <i64 poison, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx399, i64 0
  %broadcast.splatinsert407 = insertelement <8 x i64> poison, i64 %.0123208.i.i, i64 0
  %broadcast.splat408 = shufflevector <8 x i64> %broadcast.splatinsert407, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert409 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val398, i64 0
  %broadcast.splat410 = shufflevector <8 x i64> %broadcast.splatinsert409, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction411 = or disjoint <8 x i64> %broadcast.splat410, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body412

vec.epilog.vector.body412:                        ; preds = %vec.epilog.vector.body412, %vec.epilog.ph404
  %index413 = phi i64 [ %vec.epilog.resume.val398, %vec.epilog.ph404 ], [ %index.next420, %vec.epilog.vector.body412 ] ; 2 uses
  %vec.ind414 = phi <8 x i64> [ %induction411, %vec.epilog.ph404 ], [ %vec.ind.next421, %vec.epilog.vector.body412 ] ; 2 uses
  %vec.phi415 = phi <8 x i64> [ %i.cam, %vec.epilog.ph404 ], [ %i.cas, %vec.epilog.vector.body412 ]
  %i.can = add nuw nsw <8 x i64> %vec.ind414, splat (i64 1)
  %wide.gep416 = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <8 x i64> %i.can
  %i.cao = getelementptr inbounds nuw i8, ptr %i.a, i64 %index413
  %wide.load417 = load <8 x i8>, ptr %i.cao, align 1, !tbaa !95
  %i.cap = zext <8 x i8> %wide.load417 to <8 x i64>
  %i.caq = sub nsw <8 x i64> %i.cap, %broadcast.splat408
  %wide.gep418 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep416, <8 x i64> %i.caq
  %wide.masked.gather419 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep418, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %i.car = sext <8 x i32> %wide.masked.gather419 to <8 x i64>
  %i.cas = add <8 x i64> %vec.phi415, %i.car      ; 2 uses
  %index.next420 = add nuw i64 %index413, 8       ; 2 uses
  %vec.ind.next421 = add nuw nsw <8 x i64> %vec.ind414, splat (i64 8)
  %i.cat = icmp eq i64 %index.next420, %n.vec406
  br i1 %i.cat, label %vec.epilog.middle.block422, label %vec.epilog.vector.body412, !llvm.loop !337

vec.epilog.middle.block422:                       ; preds = %vec.epilog.vector.body412
  %i.cau = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.cas) ; 2 uses
  %cmp.n423 = icmp eq i64 %n.vec406, %wide.trip.count290.i.i
  br i1 %cmp.n423, label %._crit_edge201.i.i, label %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i.preheader

_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i.preheader: ; preds = %iter.check400, %vec.epilog.iter.check402, %vec.epilog.middle.block422
  %indvars.iv287.i.i.ph = phi i64 [ 0, %iter.check400 ], [ %n.vec362, %vec.epilog.iter.check402 ], [ %n.vec406, %vec.epilog.middle.block422 ]
  %.0122198.us.i.i.ph = phi i64 [ 0, %iter.check400 ], [ %i.cal, %vec.epilog.iter.check402 ], [ %i.cau, %vec.epilog.middle.block422 ]
  br label %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i

_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i: ; preds = %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i.preheader, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i
  %indvars.iv287.i.i = phi i64 [ %indvars.iv.next288.i.i, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i ], [ %indvars.iv287.i.i.ph, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i.preheader ] ; 2 uses
  %.0122198.us.i.i = phi i64 [ %i.cbd, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i ], [ %.0122198.us.i.i.ph, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i.preheader ]
  %indvars.iv.next288.i.i = add nuw nsw i64 %indvars.iv287.i.i, 1 ; 3 uses
  %i.cav = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %indvars.iv.next288.i.i
  %i.caw = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv287.i.i
  %i.cax = load i8, ptr %i.caw, align 1, !tbaa !95
  %i.cay = zext i8 %i.cax to i64
  %i.caz = sub nsw i64 %i.cay, %.0123208.i.i
  %i.cba = getelementptr inbounds [4 x i8], ptr %i.cav, i64 %i.caz
  %i.cbb = load i32, ptr %i.cba, align 4, !tbaa !89
  %i.cbc = sext i32 %i.cbb to i64
  %i.cbd = add i64 %.0122198.us.i.i, %i.cbc       ; 2 uses
  %exitcond291.not.i.i = icmp eq i64 %indvars.iv.next288.i.i, %wide.trip.count290.i.i
  br i1 %exitcond291.not.i.i, label %._crit_edge201.i.i, label %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i, !llvm.loop !338

._crit_edge201.i.i:                               ; preds = %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.loopexit.i.i, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i, %middle.block393, %vec.epilog.middle.block422, %.lr.ph211.i.i
  %.0122.lcssa.i.i = phi i64 [ 0, %.lr.ph211.i.i ], [ %i.cbd, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.us.i.i ], [ %i.cau, %vec.epilog.middle.block422 ], [ %i.cal, %middle.block393 ], [ %i.ccv, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.loopexit.i.i ]
  %i.cbe = getelementptr inbounds nuw [8 x i8], ptr %i.byo, i64 %indvars.iv292.i.i
  %i.cbf = load i64, ptr %i.cbe, align 8, !tbaa !17
  %i.cbg = mul i64 %i.cbf, %.0122.lcssa.i.i
  %i.cbh = add i64 %i.cbg, %.3209.i.i             ; 2 uses
  %i.cbi = sext i32 %i.bzh to i64
  %i.cbj = getelementptr inbounds i8, ptr %.0158206.i.i, i64 %i.cbi
  %indvars.iv.next293.i.i = add nuw nsw i64 %indvars.iv292.i.i, 1 ; 2 uses
  %i.cbk = getelementptr inbounds nuw [4 x i8], ptr %i.byr, i64 %indvars.iv.next293.i.i ; 2 uses
  %i.cbl = load i32, ptr %i.cbk, align 4, !tbaa !89 ; 2 uses
  %.not142.i.i = icmp eq i32 %i.cbl, 0
  br i1 %.not142.i.i, label %._crit_edge212.loopexit.i.i, label %.lr.ph211.i.i, !llvm.loop !339

iter.check455:                                    ; preds = %.lr.ph.i.i146.i.i.preheader, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.loopexit.i.i
  %indvars.iv282.i.i = phi i64 [ %indvars.iv.next283.i.i, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.loopexit.i.i ], [ 0, %.lr.ph.i.i146.i.i.preheader ] ; 2 uses
  %.0122198.i.i = phi i64 [ %i.ccv, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE1EEEiEET0_RKNS0_8PositionEPT_NS0_10Tablebases8WDLScoreEPNSE_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISC_E15difference_typeESC_SC_S8_.exit.loopexit.i.i ], [ 0, %.lr.ph.i.i146.i.i.preheader ]
  %i.cbm = getelementptr inbounds nuw i8, ptr %.0158206.i.i, i64 %indvars.iv282.i.i
  %i.cbn = load i8, ptr %i.cbm, align 1, !tbaa !95 ; 4 uses
  br i1 %min.iters.check427, label %vec.epilog.scalar.ph456.preheader, label %vector.main.loop.iter.check428

vector.main.loop.iter.check428:                   ; preds = %iter.check455
  br i1 %min.iters.check429, label %vec.epilog.ph459, label %vector.ph430

vector.ph430:                                     ; preds = %vector.main.loop.iter.check428
  %broadcast.splatinsert433 = insertelement <8 x i8> poison, i8 %i.cbn, i64 0
  %broadcast.splat434 = shufflevector <8 x i8> %broadcast.splatinsert433, <8 x i8> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body435

vector.body435:                                   ; preds = %vector.body435, %vector.ph430
  %index436 = phi i64 [ 0, %vector.ph430 ], [ %index.next446, %vector.body435 ] ; 2 uses
  %vec.phi437 = phi <8 x i64> [ zeroinitializer, %vector.ph430 ], [ %i.cbz, %vector.body435 ]
  %vec.phi438 = phi <8 x i64> [ zeroinitializer, %vector.ph430 ], [ %i.cca, %vector.body435 ]
  %vec.phi439 = phi <8 x i64> [ zeroinitializer, %vector.ph430 ], [ %i.ccb, %vector.body435 ]
  %vec.phi440 = phi <8 x i64> [ zeroinitializer, %vector.ph430 ], [ %i.ccc, %vector.body435 ]
  %next.gep441 = getelementptr i8, ptr %i.a, i64 %index436 ; 4 uses
  %i.cbo = getelementptr i8, ptr %next.gep441, i64 8
  %i.cbp = getelementptr i8, ptr %next.gep441, i64 16
end_hunk_2
begin_hunk_3_@_ZN9Stockfish10Tablebases15rank_root_movesERKNS_10OptionsMapERNS_8PositionERSt6vectorINS_6Search8RootMoveESaIS8_EEbRKSt8functionIFbvEE:bb.a

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.01321.i.i.i.i.i = phi ptr [ %.013.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i ], [ %.01321.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.020.i.i.i.i.i = phi ptr [ %i.ga, %.lr.ph.i.i.i.i.i ], [ %.020.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 41 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.01321.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.020.i.i.i.i.i, i64 44, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 120
  %i.dy = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 48 ; 2 uses
  %i.dz = load <2 x ptr>, ptr %i.dy, align 8, !tbaa !365
  store <2 x ptr> %i.dz, ptr %i.dx, align 8, !tbaa !365
  %i.ea = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 136
  %i.eb = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 64
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !364
  store ptr %i.ec, ptr %i.ea, align 8, !tbaa !364
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i8 0, i64 24, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 72
  %.013.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01321.i.i.i.i.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.ed, i64 44, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 192
  %i.ef = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 120 ; 2 uses
  %i.eg = load <2 x ptr>, ptr %i.ef, align 8, !tbaa !365
  store <2 x ptr> %i.eg, ptr %i.ee, align 8, !tbaa !365
  %i.eh = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 208
  %i.ei = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 136
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !364
  store ptr %i.ej, ptr %i.eh, align 8, !tbaa !364
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i8 0, i64 24, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 144
  %.013.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01321.i.i.i.i.i, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.013.i.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(72) %i.ek, i64 44, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 264
  %i.em = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 192 ; 2 uses
  %i.en = load <2 x ptr>, ptr %i.em, align 8, !tbaa !365
  store <2 x ptr> %i.en, ptr %i.el, align 8, !tbaa !365
  %i.eo = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 280
  %i.ep = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 208
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !364
  store ptr %i.eq, ptr %i.eo, align 8, !tbaa !364
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, i8 0, i64 24, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 216
  %.013.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.01321.i.i.i.i.i, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.013.i.i.i.i.i.2, ptr noundef nonnull align 8 dereferenceable(72) %i.er, i64 44, i1 false)
  %i.es = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 336
  %i.et = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 264 ; 2 uses
  %i.eu = load <2 x ptr>, ptr %i.et, align 8, !tbaa !365
  store <2 x ptr> %i.eu, ptr %i.es, align 8, !tbaa !365
  %i.ev = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 352
  %i.ew = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 280
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !364
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !364
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.et, i8 0, i64 24, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 288
  %.013.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.01321.i.i.i.i.i, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.013.i.i.i.i.i.3, ptr noundef nonnull align 8 dereferenceable(72) %i.ey, i64 44, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 408
  %i.fa = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 336 ; 2 uses
  %i.fb = load <2 x ptr>, ptr %i.fa, align 8, !tbaa !365
  store <2 x ptr> %i.fb, ptr %i.ez, align 8, !tbaa !365
  %i.fc = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 424
  %i.fd = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 352
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !364
  store ptr %i.fe, ptr %i.fc, align 8, !tbaa !364
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, i8 0, i64 24, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 360
  %.013.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.01321.i.i.i.i.i, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.013.i.i.i.i.i.4, ptr noundef nonnull align 8 dereferenceable(72) %i.ff, i64 44, i1 false)
  %i.fg = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 480
  %i.fh = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 408 ; 2 uses
  %i.fi = load <2 x ptr>, ptr %i.fh, align 8, !tbaa !365
  store <2 x ptr> %i.fi, ptr %i.fg, align 8, !tbaa !365
  %i.fj = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 496
  %i.fk = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 424
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !364
  store ptr %i.fl, ptr %i.fj, align 8, !tbaa !364
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fh, i8 0, i64 24, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 432
  %.013.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.01321.i.i.i.i.i, i64 432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.013.i.i.i.i.i.5, ptr noundef nonnull align 8 dereferenceable(72) %i.fm, i64 44, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 552
  %i.fo = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 480 ; 2 uses
  %i.fp = load <2 x ptr>, ptr %i.fo, align 8, !tbaa !365
  store <2 x ptr> %i.fp, ptr %i.fn, align 8, !tbaa !365
  %i.fq = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 568
  %i.fr = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 496
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !364
  store ptr %i.fs, ptr %i.fq, align 8, !tbaa !364
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, i8 0, i64 24, i1 false)
  %i.ft = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 504
  %.013.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.01321.i.i.i.i.i, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.013.i.i.i.i.i.6, ptr noundef nonnull align 8 dereferenceable(72) %i.ft, i64 44, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 624
  %i.fv = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 552 ; 2 uses
  %i.fw = load <2 x ptr>, ptr %i.fv, align 8, !tbaa !365 ; 3 uses
  store <2 x ptr> %i.fw, ptr %i.fu, align 8, !tbaa !365
  %i.fx = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 640
  %i.fy = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 568
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !364 ; 2 uses
  store ptr %i.fz, ptr %i.fx, align 8, !tbaa !364
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fv, i8 0, i64 24, i1 false)
  %i.ga = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 576 ; 2 uses
  %.013.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.01321.i.i.i.i.i, i64 576 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq ptr %.013.i.i.i.i.i.7, %i.da
  br i1 %.not.i.i.i.i.i.7, label %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !367

_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %i.gb = extractelement <2 x ptr> %i.fw, i64 1
  %i.gc = extractelement <2 x ptr> %i.fw, i64 0
  br label %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.i.i

_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.i.i: ; preds = %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.prol.loopexit, %bb.f
  %i.gd = phi ptr [ %i.dj, %bb.f ], [ %.lcssa151.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.fz, %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.i.i.loopexit.unr-lcssa ]
  %i.ge = phi ptr [ %i.dg, %bb.f ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.gb, %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.i.i.loopexit.unr-lcssa ]
  %i.gf = phi ptr [ %i.dd, %bb.f ], [ %.lcssa149.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.gc, %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.i.i.loopexit.unr-lcssa ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cw, %bb.f ], [ %.lcssa150.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ga, %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef nonnull align 8 dereferenceable(72) %.0.lcssa.i.i.i.i.i, i64 44, i1 false)
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 48
  store ptr %i.gf, ptr %i.dc, align 8, !tbaa !348
  store ptr %i.ge, ptr %i.df, align 8, !tbaa !363
  store ptr %i.gd, ptr %i.di, align 8, !tbaa !364
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gg, i8 0, i64 24, i1 false)
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i: ; preds = %select.unfold.i.i.i.i, %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.i.i, %bb.e
  %.sroa.11.0.i.i = phi ptr [ null, %bb.e ], [ %i.cw, %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.i.i ], [ null, %select.unfold.i.i.i.i ] ; 8 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.e ], [ %.010.i.i.i.i, %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.i.i ], [ 0, %select.unfold.i.i.i.i ] ; 4 uses
  %i.gh = icmp eq i64 %i.ct, %.sroa.4.0.i.i
  br i1 %i.gh, label %bb.g, label %bb.h, !prof !190

bb.g:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i
  %i.gi = getelementptr inbounds [72 x i8], ptr %i.cl, i64 %i.ct ; 4 uses
  call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_T1_"(ptr %i.cl, ptr %i.gi, ptr noundef %.sroa.11.0.i.i)
  call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_T1_"(ptr %i.gi, ptr %i.cm, ptr noundef %.sroa.11.0.i.i)
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = sub i64 %i.co, %i.gj
  %i.gl = sdiv exact i64 %i.gk, 72
  call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_SQ_T0_SR_T1_T2_"(ptr %i.cl, ptr %i.gi, ptr %i.cm, i64 noundef %i.ct, i64 noundef %i.gl, ptr noundef %.sroa.11.0.i.i)
  br label %bb.k

bb.h:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i
  %i.gm = icmp eq ptr %.sroa.11.0.i.i, null
  br i1 %i.gm, label %bb.i, label %bb.j, !prof !191

bb.i:                                             ; preds = %bb.h
  call fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_"(ptr %i.cl, ptr %i.cm)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_T1_T2_"(ptr %i.cl, ptr %i.cm, ptr noundef nonnull %.sroa.11.0.i.i, i64 noundef %.sroa.4.0.i.i)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.idx.i.i.i = mul i64 %.sroa.4.0.i.i, 72        ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %.sroa.11.0.i.i, i64 %.idx.i.i.i
  %.not4.i.i.i.i.i = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %.not4.i.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_ED2Ev.exit.i.i, label %.lr.ph.i.i.i14.i.i

.lr.ph.i.i.i14.i.i:                               ; preds = %bb.k, %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.gv, %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i.i.i ], [ %.sroa.11.0.i.i, %bb.k ] ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !348 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i14.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !364
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gp to i64
  %i.gu = sub i64 %i.gs, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.gu) #30
  br label %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i.i.i: ; preds = %bb.l, %.lr.ph.i.i.i14.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i15.i.i = icmp eq ptr %i.gv, %i.gn
  br i1 %.not.i.i.i15.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_ED2Ev.exit.i.i, label %.lr.ph.i.i.i14.i.i, !llvm.loop !368

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_ED2Ev.exit.i.i: ; preds = %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i.i.i, %bb.k
  call void @_ZdlPvm(ptr noundef %.sroa.11.0.i.i, i64 noundef %.idx.i.i.i) #26
  br label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EvT_SN_T0_.exit"

"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EvT_SN_T0_.exit": ; preds = %.thread62, %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_ED2Ev.exit.i.i
  br i1 %i.bn, label %bb.n, label %bb.m

bb.m:                                             ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EvT_SN_T0_.exit"
  %i.gw = load ptr, ptr %2, align 8, !tbaa !369
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !360
  %i.gz = icmp slt i32 %i.gy, 1
  br i1 %i.gz, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEEZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EvT_SN_T0_.exit"
  br i1 %.not123, label %.loopexit.thread, label %bb.o

.thread:                                          ; preds = %_ZNKSt8functionIFbvEEclEv.exit, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43
  %i.ha = load ptr, ptr %2, align 8, !tbaa !346   ; 7 uses
  %i.hb = load ptr, ptr %i.g, align 8, !tbaa !346 ; 3 uses
  %.not6978 = icmp eq ptr %i.ha, %i.hb
  br i1 %.not6978, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.thread
  %10 = ptrtoaddr ptr %i.hb to i64
  %11 = ptrtoaddr ptr %i.ha to i64
  %i.hc = add i64 %10, -72
  %i.hd = sub i64 %i.hc, %11                      ; 3 uses
  %i.he = udiv i64 %i.hd, 72
  %i.hf = add nuw nsw i64 %i.he, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.hd, 1080
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check132 = icmp ult i64 %i.hd, 4536
  br i1 %min.iters.check132, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.hf, 48
  %n.vec = and i64 %i.hf, 576460752303423424      ; 4 uses
  %i.hg = mul i64 %n.vec, 72
  %i.hh = getelementptr i8, ptr %i.ha, i64 %i.hg  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.ha, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <16 x i64> <i64 0, i64 72, i64 144, i64 216, i64 288, i64 360, i64 432, i64 504, i64 576, i64 648, i64 720, i64 792, i64 864, i64 936, i64 1008, i64 1080> ; 4 uses
  %wide.gep = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 36
  %wide.gep133 = getelementptr i8, <16 x ptr> %vector.gep, i64 1188
  %wide.gep134 = getelementptr i8, <16 x ptr> %vector.gep, i64 2340
  %wide.gep135 = getelementptr i8, <16 x ptr> %vector.gep, i64 3492
  call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> zeroinitializer, <16 x ptr> align 4 %wide.gep, <16 x i1> splat (i1 true)), !tbaa !355
  call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> zeroinitializer, <16 x ptr> align 4 %wide.gep133, <16 x i1> splat (i1 true)), !tbaa !355
  call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> zeroinitializer, <16 x ptr> align 4 %wide.gep134, <16 x i1> splat (i1 true)), !tbaa !355
  call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> zeroinitializer, <16 x ptr> align 4 %wide.gep135, <16 x i1> splat (i1 true)), !tbaa !355
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 4608
  %i.hi = icmp eq i64 %index.next, %n.vec
  br i1 %i.hi, label %middle.block, label %vector.body, !llvm.loop !371

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hf, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !372

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.hh, %vec.epilog.iter.check ], [ %i.ha, %vector.main.loop.iter.check ]
  %n.vec137 = and i64 %i.hf, 576460752303423472   ; 3 uses
  %i.hj = mul i64 %n.vec137, 72
  %i.hk = getelementptr i8, ptr %i.ha, i64 %i.hj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index138 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next142, %vec.epilog.vector.body ]
  %pointer.phi139 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind143, %vec.epilog.vector.body ] ; 2 uses
  %vector.gep140 = getelementptr i8, ptr %pointer.phi139, <16 x i64> <i64 0, i64 72, i64 144, i64 216, i64 288, i64 360, i64 432, i64 504, i64 576, i64 648, i64 720, i64 792, i64 864, i64 936, i64 1008, i64 1080>
  %wide.gep141 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep140, i64 36
  call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> zeroinitializer, <16 x ptr> align 4 %wide.gep141, <16 x i1> splat (i1 true)), !tbaa !355
  %index.next142 = add nuw i64 %index138, 16      ; 2 uses
  %ptr.ind143 = getelementptr i8, ptr %pointer.phi139, i64 1152
  %i.hl = icmp eq i64 %index.next142, %n.vec137
  br i1 %i.hl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !373

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n144 = icmp eq i64 %i.hf, %n.vec137
  br i1 %cmp.n144, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.045.079.ph = phi ptr [ %i.ha, %iter.check ], [ %i.hh, %vec.epilog.iter.check ], [ %i.hk, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.045.079 = phi ptr [ %i.hn, %.lr.ph ], [ %.sroa.045.079.ph, %.lr.ph.preheader ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.045.079, i64 36
  store i32 0, ptr %i.hm, align 4, !tbaa !355
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.045.079, i64 72 ; 2 uses
  %.not69 = icmp eq ptr %i.hn, %i.hb
  br i1 %.not69, label %.loopexit, label %.lr.ph, !llvm.loop !374

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.thread, %bb.m
  %.sroa.7.1 = phi i64 [ 4294967296, %bb.m ], [ 0, %.thread ], [ 0, %middle.block ], [ 0, %vec.epilog.middle.block ], [ 0, %.lr.ph ] ; 2 uses
  br i1 %.not123, label %.loopexit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n, %.loopexit
  %.sroa.7.1113 = phi i64 [ 4294967296, %bb.n ], [ %.sroa.7.1, %.loopexit ]
  %.sroa.053.1112 = phi i32 [ 0, %bb.n ], [ %spec.select, %.loopexit ]
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.a, %bb.n, %.loopexit, %bb.o
  %.sroa.15.sroa.1.1111 = phi i32 [ %spec.select67, %bb.o ], [ %spec.select67, %.loopexit ], [ %spec.select67, %bb.n ], [ 0, %bb.a ]
  %.sroa.7.1110 = phi i64 [ %.sroa.7.1113, %bb.o ], [ %.sroa.7.1, %.loopexit ], [ 4294967296, %bb.n ], [ 0, %bb.a ]
  %.sroa.053.1109 = phi i32 [ %.sroa.053.1112, %bb.o ], [ %spec.select, %.loopexit ], [ 0, %bb.n ], [ 0, %bb.a ]
  %i.ho = phi i64 [ 1099511627776, %bb.o ], [ 0, %.loopexit ], [ 0, %bb.n ], [ 0, %bb.a ]
  %.sroa.053.0.insert.ext = zext i32 %.sroa.053.1109 to i64
  %.sroa.7.0.insert.insert = or disjoint i64 %.sroa.7.1110, %.sroa.053.0.insert.ext
  %.sroa.053.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.insert, %i.ho
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.053.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.15.sroa.1.1111, 1
  ret { i64, i32 } %.fca.1.insert
}

declare noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init.6() #0 section ".text.startup" comdat($_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E) {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i8 0, i64 24, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev, ptr nonnull @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !375    ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !378
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #30
  br label %_ZNSt12_Vector_baseIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare noundef i32 @_ZNSt6thread20hardware_concurrencyEv() local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @__sched_cpualloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nounwind
declare i32 @sched_getaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__sched_cpufree(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !379
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !380  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #30
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !381

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
end_hunk_3
begin_hunk_4_@_ZTv0_n24_N9Stockfish12_GLOBAL__N_16TBFileD0Ev:bb.a
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 64), ptr %i.e, align 8, !tbaa !132
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !231
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.e) #26, !inline_history !402
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(288) %i.d, i64 noundef 552) #30, !inline_history !403
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #7

declare void @_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(240)) unnamed_addr #5

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEC2ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4 align 2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9)) unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN9Stockfish12_GLOBAL__N_17TBTableILNS0_6TBTypeE0EEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1976) initializes((0, 1), (8, 16), (32, 56), (136, 184), (376, 424), (616, 664), (856, 904), (1096, 1144), (1336, 1384), (1576, 1624), (1816, 1864)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"struct.Stockfish::StateInfo", align 8 ; 4 uses
  %3 = alloca %"class.Stockfish::Position", align 8 ; 14 uses
  store i8 0, ptr %0, align 8, !tbaa !197
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !384
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 856
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i8 0, i64 48, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 1016
  store i64 0, ptr %i.j, align 8, !tbaa !243
  %i.k = call noundef nonnull align 8 dereferenceable(1048) ptr @_ZN9Stockfish8Position3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5ColorEPNS_9StateInfoE(ptr noundef nonnull align 8 dereferenceable(1048) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext 0, ptr noundef nonnull %2) #26
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 608
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !245
  %i.n = load i64, ptr %i.m, align 8, !tbaa !254
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.n, ptr %i.o, align 8, !tbaa !214
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.q = load i32, ptr %i.p, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.s = load i32, ptr %i.r, align 8, !tbaa !89
  %i.t = add nsw i32 %i.s, %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.t, ptr %i.u, align 8, !tbaa !202
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 3 uses
  store i8 0, ptr %i.x, align 1, !tbaa !209
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !17
  %i.ab = load <4 x i64>, ptr %i.v, align 8, !tbaa !17 ; 4 uses
  %i.ac = extractelement <4 x i64> %i.ab, i64 0   ; 2 uses
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = zext i1 %i.ad to i8
  store i8 %i.ae, ptr %i.w, align 4, !tbaa !205
  %i.af = extractelement <4 x i64> %i.ab, i64 1
  %i.ag = load <2 x i64>, ptr %i.y, align 8, !tbaa !17 ; 3 uses
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !17  ; 2 uses
  %i.ai = and i64 %i.ac, %i.ah
  %i.aj = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ai)
  %i.ak = icmp eq i64 %i.aj, 1
  %i.al = and i64 %i.af, %i.ah
  %i.am = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.al)
  %i.an = icmp eq i64 %i.am, 1
  %narrow = select i1 %i.an, i1 true, i1 %i.ak
  %spec.store.select25 = zext i1 %narrow to i8    ; 2 uses
  store i8 %spec.store.select25, ptr %i.x, align 1
  %i.ao = shufflevector <2 x i64> %i.ag, <2 x i64> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ap = shufflevector <4 x i64> %i.ab, <4 x i64> %i.ao, <4 x i32> <i32 4, i32 5, i32 3, i32 2>
  %i.aq = shufflevector <2 x i64> %i.ag, <2 x i64> poison, <2 x i32> <i32 poison, i32 0>
  %i.ar = insertelement <2 x i64> %i.aq, i64 %i.aa, i64 0
  %i.as = shufflevector <2 x i64> %i.ar, <2 x i64> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.at = and <4 x i64> %i.ap, %i.as
  %i.au = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.at)
  %i.av = icmp eq <4 x i64> %i.au, splat (i64 1)  ; 4 uses
  %i.aw = extractelement <4 x i1> %i.av, i64 3
  %i.ax = extractelement <4 x i1> %i.av, i64 2
  %i.ay = extractelement <4 x i1> %i.av, i64 1
  %i.az = select i1 %i.ay, i1 true, i1 %i.ax
  %i.ba = select i1 %i.az, i1 true, i1 %i.aw
  %spec.store.select28 = select i1 %i.ba, i8 1, i8 %spec.store.select25
  %i.bb = shufflevector <2 x i64> %i.ag, <2 x i64> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bc = and <4 x i64> %i.ab, %i.bb
  %i.bd = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.bc)
  %i.be = icmp eq <4 x i64> %i.bd, splat (i64 1)
  %i.bf = bitcast <4 x i1> %i.be to i4
  %i.bg = icmp ne i4 %i.bf, 0
  %i.bh = extractelement <4 x i1> %i.av, i64 0
  %op.rdx = or i1 %i.bg, %i.bh
  %spec.select29 = select i1 %op.rdx, i8 1, i8 %spec.store.select28
  store i8 %spec.select29, ptr %i.x, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 180
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !89 ; 2 uses
  %.not11 = icmp eq i32 %i.bj, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 148
  %i.bl = load i32, ptr %i.bk, align 4            ; 2 uses
  %.not12 = icmp ne i32 %i.bl, 0
  %i.bm = icmp sge i32 %i.bj, %i.bl
  %spec.select = and i1 %.not12, %i.bm
  %i.bn = select i1 %.not11, i1 true, i1 %spec.select ; 2 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 148
  %.sroa.gep19 = getelementptr inbounds nuw i8, ptr %3, i64 180
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 4 ; 2 uses
  %.sroa.gep19.val = load i32, ptr %.sroa.gep19, align 4 ; 2 uses
  %i.bo = select i1 %i.bn, i32 %.sroa.gep.val, i32 %.sroa.gep19.val
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 %i.bp, ptr %i.bq, align 2, !tbaa !156
  %i.br = select i1 %i.bn, i32 %.sroa.gep19.val, i32 %.sroa.gep.val
  %i.bs = trunc i32 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !156
  %i.bu = call noundef nonnull align 8 dereferenceable(1048) ptr @_ZN9Stockfish8Position3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5ColorEPNS_9StateInfoE(ptr noundef nonnull align 8 dereferenceable(1048) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext 1, ptr noundef nonnull %2) #26
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 608
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !245
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !254
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !226
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

declare noundef nonnull align 8 dereferenceable(1048) ptr @_ZN9Stockfish8Position3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5ColorEPNS_9StateInfoE(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #11

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN9StockfishlsERSoNS_8SyncCoutE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048), i16, ptr noundef nonnull align 8 dereferenceable(192), i1 noundef zeroext, ptr noundef nonnull align 1 dereferenceable(7), ptr noundef nonnull align 8 dereferenceable(416), ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048), i16) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #14

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 -2, 4094) i32 @_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE0ENS_10Tablebases8WDLScoreEEET0_RKNS_8PositionEPNS3_10ProbeStateES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 74 uses
  %2 = ptrtoaddr ptr %i.a to i64
  %i.b = alloca [7 x i8], align 1                 ; 18 uses
  %i.c = alloca [2 x [2 x i32]], align 16         ; 7 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.Stockfish::(anonymous namespace)::TBFile", align 8 ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load i32, ptr %i.f, align 8, !tbaa !89
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load i32, ptr %i.h, align 8, !tbaa !89
  %i.j = add nsw i32 %i.i, %i.g
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.dn, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !245
  %i.n = load i64, ptr %i.m, align 8, !tbaa !254  ; 3 uses
  %i.o = and i64 %i.n, 4095
  %i.p = getelementptr inbounds nuw [24 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 %i.o ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !218
  %i.r = icmp eq i64 %i.q, %i.n
  br i1 %i.r, label %_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE0EEEPNS0_7TBTableIXT_EEEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.01.i = phi ptr [ %i.t, %bb.c ], [ %i.p, %bb.b ] ; 3 uses
  %i.s = getelementptr i8, ptr %.01.i, i64 8
  %.0.val6.i = load ptr, ptr %i.s, align 8, !tbaa !220
  %.not.i = icmp eq ptr %.0.val6.i, null
  br i1 %.not.i, label %_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE0EEEPNS0_7TBTableIXT_EEEm.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.01.i, i64 24 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !218
  %i.v = icmp eq i64 %i.u, %i.n
  br i1 %i.v, label %_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE0EEEPNS0_7TBTableIXT_EEEm.exit, label %.lr.ph.i, !llvm.loop !404

_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE0EEEPNS0_7TBTableIXT_EEEm.exit: ; preds = %.lr.ph.i, %bb.c, %bb.b
  %.0.lcssa.i = phi ptr [ %i.p, %bb.b ], [ %i.t, %bb.c ], [ %.01.i, %.lr.ph.i ]
  %i.w = getelementptr i8, ptr %.0.lcssa.i, i64 8
  %.0.val.i = load ptr, ptr %i.w, align 8, !tbaa !220 ; 25 uses
  %.0.val.i24 = ptrtoaddr ptr %.0.val.i to i64
  %.not = icmp eq ptr %.0.val.i, null
  br i1 %.not, label %bb.bw, label %bb.d

bb.d:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE0EEEPNS0_7TBTableIXT_EEEm.exit
  %i.x = load atomic i8, ptr %.0.val.i acquire, align 1, !range !206, !noundef !207
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !384
  br label %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE0EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE0EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionEE5mutex) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i, label %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.ab) #31
  unreachable

_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i:     ; preds = %bb.f
  %i.ac = load atomic i8, ptr %.0.val.i monotonic, align 1, !range !206, !noundef !207
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !384
  br label %bb.bv

bb.i:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ag, ptr %3, align 8, !tbaa !171
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.ah, align 8, !tbaa !90
  store i8 0, ptr %i.ag, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ai, ptr %4, align 8, !tbaa !171
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !90
  store i8 0, ptr %i.ai, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ak, ptr %5, align 8, !tbaa !171
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.al, align 8, !tbaa !90
  store i8 0, ptr %i.ak, align 8, !tbaa !156
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.at = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 32 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !214
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !245
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !254
  %.not25.i = icmp eq i64 %i.au, %i.aw            ; 2 uses
  br i1 %.not25.i, label %bb.n, label %bb.s

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i, %bb.i
  %indvars.iv.i = phi i64 [ 6, %bb.i ], [ %indvars.iv.next.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ax = load i64, ptr %i.am, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !17
  %i.ba = and i64 %i.az, %i.ax
  %i.bb = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ba)
  %i.bc = getelementptr inbounds nuw i8, ptr @.str.11, i64 %indvars.iv.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !156 ; 2 uses
  store ptr %i.ao, ptr %6, align 8, !tbaa !171
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.bb, i8 noundef signext %i.bd) #26
  %i.be = load i64, ptr %i.ap, align 8, !tbaa !90 ; 2 uses
  %i.bf = load i64, ptr %i.aj, align 8, !tbaa !90
  %i.bg = sub i64 4611686018427387903, %i.bf
  %i.bh = icmp ult i64 %i.bg, %i.be
  br i1 %i.bh, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %bb.k
  %i.bi = load ptr, ptr %6, align 8, !tbaa !175
  %i.bj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.bi, i64 noundef %i.be) #26 ; 0 uses
  %i.bk = load ptr, ptr %6, align 8, !tbaa !175   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ao
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.bm = load i64, ptr %i.ao, align 8, !tbaa !156
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.bo = load i64, ptr %i.aq, align 8, !tbaa !17
  %i.bp = load i64, ptr %i.ay, align 8, !tbaa !17
  %i.bq = and i64 %i.bp, %i.bo
  %i.br = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bq)
  store ptr %i.ar, ptr %7, align 8, !tbaa !171
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.br, i8 noundef signext %i.bd) #26
  %i.bs = load i64, ptr %i.as, align 8, !tbaa !90 ; 2 uses
  %i.bt = load i64, ptr %i.al, align 8, !tbaa !90
  %i.bu = sub i64 4611686018427387903, %i.bt
  %i.bv = icmp ult i64 %i.bu, %i.bs
  br i1 %i.bv, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit31.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit31.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bw = load ptr, ptr %7, align 8, !tbaa !175
  %i.bx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.bw, i64 noundef %i.bs) #26 ; 0 uses
  %i.by = load ptr, ptr %7, align 8, !tbaa !175   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ar
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit31.i
  %i.ca = load i64, ptr %i.ar, align 8, !tbaa !156
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit31.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %.not.i12 = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not.i12, label %bb.j, label %bb.k, !llvm.loop !405

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 118, ptr %i.e, align 1, !tbaa !156, !noalias !406
  %i.cc = load ptr, ptr %4, align 8, !tbaa !175, !noalias !406
  %i.cd = load i64, ptr %i.aj, align 8, !tbaa !90, !noalias !406 ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE0ENS_10Tablebases8WDLScoreEEET0_RKNS_8PositionEPNS3_10ProbeStateES4_:bb.a
  %.masked.i.1 = and i8 %i.amf, 56
  %i.amg = or i8 %.masked.i.1, %i.ame
  store i8 %i.amg, ptr %i.amc, align 1, !tbaa !95
  %i.amh = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv121.i
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 2 ; 2 uses
  %i.amj = load i8, ptr %i.ami, align 1, !tbaa !95 ; 2 uses
  %i.amk = lshr i8 %i.amj, 3
  %i.aml = shl i8 %i.amj, 3
  %.masked.i.2 = and i8 %i.aml, 56
  %i.amm = or i8 %.masked.i.2, %i.amk
  store i8 %i.amm, ptr %i.ami, align 1, !tbaa !95
  %i.amn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv121.i
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 3 ; 2 uses
  %i.amp = load i8, ptr %i.amo, align 1, !tbaa !95 ; 2 uses
  %i.amq = lshr i8 %i.amp, 3
  %i.amr = shl i8 %i.amp, 3
  %.masked.i.3 = and i8 %i.amr, 56
  %i.ams = or i8 %.masked.i.3, %i.amq
  store i8 %i.ams, ptr %i.amo, align 1, !tbaa !95
  %i.amt = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv121.i
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 4 ; 2 uses
  %i.amv = load i8, ptr %i.amu, align 1, !tbaa !95 ; 2 uses
  %i.amw = lshr i8 %i.amv, 3
  %i.amx = shl i8 %i.amv, 3
  %.masked.i.4 = and i8 %i.amx, 56
  %i.amy = or i8 %.masked.i.4, %i.amw
  store i8 %i.amy, ptr %i.amu, align 1, !tbaa !95
  %i.amz = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv121.i
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 5 ; 2 uses
  %i.anb = load i8, ptr %i.ana, align 1, !tbaa !95 ; 2 uses
  %i.anc = lshr i8 %i.anb, 3
  %i.and = shl i8 %i.anb, 3
  %.masked.i.5 = and i8 %i.and, 56
  %i.ane = or i8 %.masked.i.5, %i.anc
  store i8 %i.ane, ptr %i.ana, align 1, !tbaa !95
  %i.anf = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv121.i
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 6 ; 2 uses
  %i.anh = load i8, ptr %i.ang, align 1, !tbaa !95 ; 2 uses
  %i.ani = lshr i8 %i.anh, 3
  %i.anj = shl i8 %i.anh, 3
  %.masked.i.6 = and i8 %i.anj, 56
  %i.ank = or i8 %.masked.i.6, %i.ani
  store i8 %i.ank, ptr %i.ang, align 1, !tbaa !95
  %i.anl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv121.i
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 7 ; 2 uses
  %i.ann = load i8, ptr %i.anm, align 1, !tbaa !95 ; 2 uses
  %i.ano = lshr i8 %i.ann, 3
  %i.anp = shl i8 %i.ann, 3
  %.masked.i.7 = and i8 %i.anp, 56
  %i.anq = or i8 %.masked.i.7, %i.ano
  store i8 %i.anq, ptr %i.anm, align 1, !tbaa !95
  %indvars.iv.next122.i.7 = add nuw nsw i64 %indvars.iv121.i, 8 ; 2 uses
  %exitcond126.not.i.7 = icmp eq i64 %indvars.iv.next122.i.7, %wide.trip.count125.i
  br i1 %exitcond126.not.i.7, label %.loopexit13.i, label %.lr.ph44.i, !llvm.loop !470

bb.dc:                                            ; preds = %.lr.ph41.i
  %indvars.iv.next116.i = add nuw nsw i64 %indvars.iv115.i, 1 ; 2 uses
  %exitcond119.not.i = icmp eq i64 %indvars.iv.next116.i, %wide.trip.count118.i
  br i1 %exitcond119.not.i, label %.loopexit13.i, label %.lr.ph41.i, !llvm.loop !471

.loopexit13.i:                                    ; preds = %bb.dc, %.lr.ph44.i.prol.loopexit, %.lr.ph44.i, %bb.db, %.loopexit16.i
  %i.anr = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 53
  %i.ans = load i8, ptr %i.anr, align 1, !tbaa !209, !range !206, !noundef !207
  %i.ant = trunc nuw i8 %i.ans to i1
  br i1 %i.ant, label %bb.dd, label %bb.dk

bb.dd:                                            ; preds = %.loopexit13.i
  %i.anu = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.anv = load i8, ptr %i.anu, align 1, !tbaa !95 ; 6 uses
  %i.anw = load i8, ptr %i.a, align 1, !tbaa !95  ; 5 uses
  %i.anx = icmp ugt i8 %i.anv, %i.anw
  %.neg.i = sext i1 %i.anx to i32                 ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.anz = load i8, ptr %i.any, align 1, !tbaa !95 ; 7 uses
  %i.aoa = icmp ugt i8 %i.anz, %i.anw
  %.neg67.i = sext i1 %i.aoa to i32
  %i.aob = icmp ugt i8 %i.anz, %i.anv
  %.neg68.i = sext i1 %i.aob to i32
  %.neg69.i = add nsw i32 %.neg67.i, %.neg68.i    ; 3 uses
  %i.aoc = lshr i8 %i.anw, 3                      ; 2 uses
  %i.aod = zext nneg i8 %i.aoc to i32             ; 3 uses
  %i.aoe = and i8 %i.anw, 7
  %.not139.i = icmp eq i8 %i.aoc, %i.aoe
  br i1 %.not139.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.aof = zext i8 %i.anw to i64
  %i.aog = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapA1D1D4E, i64 %i.aof
  %i.aoh = load i32, ptr %i.aog, align 4, !tbaa !89
  %i.aoi = mul nsw i32 %i.aoh, 63
  %i.aoj = zext i8 %i.anv to i32
  %i.aok = add nsw i32 %.neg.i, %i.aoj
  %i.aol = add nsw i32 %i.aok, %i.aoi
  %i.aom = mul nsw i32 %i.aol, 62
  %i.aon = zext i8 %i.anz to i32
  %i.aoo = add nsw i32 %.neg69.i, %i.aon
  %i.aop = add i32 %i.aoo, %i.aom
  %i.aoq = sext i32 %i.aop to i64
  br label %.loopexit.i

bb.df:                                            ; preds = %bb.dd
  %i.aor = lshr i8 %i.anv, 3                      ; 2 uses
  %i.aos = and i8 %i.anv, 7
  %.not140.i = icmp eq i8 %i.aor, %i.aos
  br i1 %.not140.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.aot = mul nuw nsw i32 %i.aod, 28
  %i.aou = add nuw nsw i32 %i.aot, 378
  %i.aov = zext i8 %i.anv to i64
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapB1H1H7E, i64 %i.aov
  %i.aox = load i32, ptr %i.aow, align 4, !tbaa !89
  %i.aoy = add nsw i32 %i.aou, %i.aox
  %i.aoz = mul nsw i32 %i.aoy, 62
  %i.apa = zext i8 %i.anz to i32
  %i.apb = add nsw i32 %.neg69.i, %i.apa
  %i.apc = add i32 %i.apb, %i.aoz
  %i.apd = sext i32 %i.apc to i64
  br label %.loopexit.i

bb.dh:                                            ; preds = %bb.df
  %i.ape = zext nneg i8 %i.aor to i32
  %i.apf = lshr i8 %i.anz, 3                      ; 2 uses
  %i.apg = and i8 %i.anz, 7
  %.not141.i = icmp eq i8 %i.apf, %i.apg
  %i.aph = add nsw i32 %.neg.i, %i.ape            ; 2 uses
  br i1 %.not141.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.api = mul nuw nsw i32 %i.aod, 196
  %i.apj = add nuw nsw i32 %i.api, 30380
  %i.apk = mul nsw i32 %i.aph, 28
  %i.apl = add nsw i32 %i.apj, %i.apk
  %i.apm = zext i8 %i.anz to i64
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapB1H1H7E, i64 %i.apm
  %i.apo = load i32, ptr %i.apn, align 4, !tbaa !89
  %i.app = add nsw i32 %i.apl, %i.apo
  %i.apq = sext i32 %i.app to i64
  br label %.loopexit.i

bb.dj:                                            ; preds = %bb.dh
  %i.apr = zext nneg i8 %i.apf to i32
  %i.aps = mul nuw nsw i32 %i.aod, 42
  %i.apt = mul nsw i32 %i.aph, 6
  %i.apu = add nuw nsw i32 %i.aps, 31164
  %i.apv = add nuw nsw i32 %i.apu, %i.apr
  %i.apw = add nsw i32 %i.apv, %i.apt
  %i.apx = add nsw i32 %i.apw, %.neg69.i
  %i.apy = zext nneg i32 %i.apx to i64
  br label %.loopexit.i

bb.dk:                                            ; preds = %.loopexit13.i
  %i.apz = load i8, ptr %i.a, align 1, !tbaa !95
  %i.aqa = zext i8 %i.apz to i64
  %i.aqb = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapA1D1D4E, i64 %i.aqa
  %i.aqc = load i32, ptr %i.aqb, align 4, !tbaa !89
  %i.aqd = sext i32 %i.aqc to i64
  %i.aqe = getelementptr inbounds [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_15MapKKE, i64 %i.aqd
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.aqg = load i8, ptr %i.aqf, align 1, !tbaa !95
  %i.aqh = zext i8 %i.aqg to i64
  %i.aqi = getelementptr inbounds nuw [4 x i8], ptr %i.aqe, i64 %i.aqh
  %i.aqj = load i32, ptr %i.aqi, align 4, !tbaa !89
  %i.aqk = sext i32 %i.aqj to i64
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph47.i, %middle.block108, %vec.epilog.middle.block132, %bb.dk, %bb.dj, %bb.di, %bb.dg, %bb.de, %_ZSt11stable_sortIPN9Stockfish6SquareEPFbS1_S1_EEvT_S5_T0_.exit.i, %bb.ct
  %.2.i = phi i64 [ %i.aqk, %bb.dk ], [ %i.apy, %bb.dj ], [ %i.aoq, %bb.de ], [ %i.apd, %bb.dg ], [ %i.apq, %bb.di ], [ %i.ahm, %_ZSt11stable_sortIPN9Stockfish6SquareEPFbS1_S1_EEvT_S5_T0_.exit.i ], [ %i.ahm, %bb.ct ], [ %i.aji, %vec.epilog.middle.block132 ], [ %i.aiy, %middle.block108 ], [ %i.ajt, %.lr.ph47.i ]
  %i.aql = getelementptr inbounds nuw i8, ptr %i.adh, i64 136 ; 2 uses
  %i.aqm = load i64, ptr %i.aql, align 8, !tbaa !17
  %i.aqn = mul i64 %i.aqm, %.2.i                  ; 2 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.adh, i64 200 ; 2 uses
  %i.aqp = load i32, ptr %i.aqo, align 8, !tbaa !89
  %i.aqq = sext i32 %i.aqp to i64
  %i.aqr = getelementptr inbounds i8, ptr %i.a, i64 %i.aqq
  %i.aqs = load i8, ptr %i.yv, align 4, !tbaa !205, !range !206, !noundef !207
  %i.aqt = trunc nuw i8 %i.aqs to i1
  br i1 %i.aqt, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %.loopexit.i
  %i.aqu = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 55
  %i.aqv = load i8, ptr %i.aqu, align 1, !tbaa !156
  %.not143.i = icmp eq i8 %i.aqv, 0
  %i.aqw = select i1 %.not143.i, i64 0, i64 8
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %.loopexit.i
  %i.aqx = phi i64 [ 0, %.loopexit.i ], [ %i.aqw, %bb.dl ]
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.adh, i64 204 ; 2 uses
  %i.aqz = load i32, ptr %i.aqy, align 4, !tbaa !89 ; 2 uses
  %.not14256.i = icmp eq i32 %i.aqz, 0
  br i1 %.not14256.i, label %_ZN9Stockfish12_GLOBAL__N_114do_probe_tableINS0_7TBTableILNS0_6TBTypeE0EEENS_10Tablebases8WDLScoreEEET0_RKNS_8PositionEPT_S6_PNS5_10ProbeStateE.exit, label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %bb.dm, %._crit_edge52.i
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %._crit_edge52.i ], [ 1, %bb.dm ] ; 2 uses
  %i.ara = phi i32 [ %i.ati, %._crit_edge52.i ], [ %i.aqz, %bb.dm ]
  %i.arb = phi ptr [ %i.ath, %._crit_edge52.i ], [ %i.aqy, %bb.dm ]
  %.360.i = phi i64 [ %i.ate, %._crit_edge52.i ], [ %i.aqn, %bb.dm ]
  %.012359.i = phi i64 [ 0, %._crit_edge52.i ], [ %i.aqx, %bb.dm ] ; 4 uses
  %.0957.i = phi ptr [ %i.atg, %._crit_edge52.i ], [ %i.aqr, %bb.dm ] ; 7 uses
  %.0957.i205 = ptrtoaddr ptr %.0957.i to i64
  %i.arc = sext i32 %i.ara to i64
  %i.ard = getelementptr inbounds i8, ptr %.0957.i, i64 %i.arc
  call void @_ZSt13__stable_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef %.0957.i, ptr noundef nonnull %i.ard)
  %i.are = load i32, ptr %i.arb, align 4, !tbaa !89 ; 5 uses
  %i.arf = icmp sgt i32 %i.are, 0
  br i1 %i.arf, label %.lr.ph51.i, label %._crit_edge52.i

.lr.ph51.i:                                       ; preds = %.lr.ph62.i
  %.not7.i.i.i = icmp eq ptr %i.a, %.0957.i
  %wide.trip.count140.i = zext nneg i32 %i.are to i64 ; 7 uses
  br i1 %.not7.i.i.i, label %iter.check179, label %.lr.ph.i.i146.i.preheader

.lr.ph.i.i146.i.preheader:                        ; preds = %.lr.ph51.i
  %i.arg = sub i64 %.0957.i205, %2                ; 7 uses
  %min.iters.check206 = icmp ult i64 %i.arg, 8
  %min.iters.check208 = icmp ult i64 %i.arg, 32
  %n.mod.vf210 = and i64 %i.arg, 24
  %n.vec211 = and i64 %i.arg, -32                 ; 4 uses
  %i.arh = getelementptr i8, ptr %i.a, i64 %n.vec211
  %cmp.n230 = icmp eq i64 %i.arg, %n.vec211
  %min.epilog.iters.check237 = icmp eq i64 %n.mod.vf210, 0
  %n.vec240 = and i64 %i.arg, -8                  ; 3 uses
  %i.ari = getelementptr i8, ptr %i.a, i64 %n.vec240
  %cmp.n250 = icmp eq i64 %i.arg, %n.vec240
  br label %iter.check234

iter.check179:                                    ; preds = %.lr.ph51.i
  %min.iters.check136 = icmp ult i32 %i.are, 8
  br i1 %min.iters.check136, label %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE0EEENS0_10Tablebases8WDLScoreEEET0_RKNS0_8PositionEPT_S9_PNS8_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISE_E15difference_typeESE_SE_SA_.exit.us.i.preheader, label %vector.main.loop.iter.check137

vector.main.loop.iter.check137:                   ; preds = %iter.check179
  %min.iters.check138 = icmp ult i32 %i.are, 32
  br i1 %min.iters.check138, label %vec.epilog.ph183, label %vector.ph139

vector.ph139:                                     ; preds = %vector.main.loop.iter.check137
  %n.mod.vf140 = and i64 %wide.trip.count140.i, 24
  %n.vec141 = and i64 %wide.trip.count140.i, 2147483616 ; 4 uses
  %broadcast.splatinsert142 = insertelement <8 x i64> poison, i64 %.012359.i, i64 0
  %broadcast.splat143 = shufflevector <8 x i64> %broadcast.splatinsert142, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph139
  %index145 = phi i64 [ 0, %vector.ph139 ], [ %index.next170, %vector.body144 ] ; 2 uses
  %vec.ind146 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph139 ], [ %vec.ind.next171, %vector.body144 ] ; 5 uses
  %vec.phi147 = phi <8 x i64> [ zeroinitializer, %vector.ph139 ], [ %i.asd, %vector.body144 ]
  %vec.phi148 = phi <8 x i64> [ zeroinitializer, %vector.ph139 ], [ %i.ase, %vector.body144 ]
  %vec.phi149 = phi <8 x i64> [ zeroinitializer, %vector.ph139 ], [ %i.asf, %vector.body144 ]
  %vec.phi150 = phi <8 x i64> [ zeroinitializer, %vector.ph139 ], [ %i.asg, %vector.body144 ]
  %i.arj = add nuw nsw <8 x i64> %vec.ind146, splat (i64 1)
  %i.ark = add nuw <8 x i64> %vec.ind146, splat (i64 9)
  %i.arl = add nuw <8 x i64> %vec.ind146, splat (i64 17)
  %i.arm = add nuw <8 x i64> %vec.ind146, splat (i64 25)
  %wide.gep154 = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <8 x i64> %i.arj
  %wide.gep155 = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <8 x i64> %i.ark
  %wide.gep156 = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <8 x i64> %i.arl
  %wide.gep157 = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <8 x i64> %i.arm
  %i.arn = getelementptr inbounds nuw i8, ptr %i.a, i64 %index145 ; 4 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 8
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arn, i64 16
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arn, i64 24
  %wide.load158 = load <8 x i8>, ptr %i.arn, align 1, !tbaa !95
  %wide.load159 = load <8 x i8>, ptr %i.aro, align 1, !tbaa !95
  %wide.load160 = load <8 x i8>, ptr %i.arp, align 1, !tbaa !95
  %wide.load161 = load <8 x i8>, ptr %i.arq, align 1, !tbaa !95
  %i.arr = zext <8 x i8> %wide.load158 to <8 x i64>
  %i.ars = zext <8 x i8> %wide.load159 to <8 x i64>
  %i.art = zext <8 x i8> %wide.load160 to <8 x i64>
  %i.aru = zext <8 x i8> %wide.load161 to <8 x i64>
  %i.arv = sub nsw <8 x i64> %i.arr, %broadcast.splat143
  %i.arw = sub nsw <8 x i64> %i.ars, %broadcast.splat143
  %i.arx = sub nsw <8 x i64> %i.art, %broadcast.splat143
  %i.ary = sub nsw <8 x i64> %i.aru, %broadcast.splat143
  %wide.gep162 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep154, <8 x i64> %i.arv
  %wide.gep163 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep155, <8 x i64> %i.arw
  %wide.gep164 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep156, <8 x i64> %i.arx
  %wide.gep165 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep157, <8 x i64> %i.ary
  %wide.masked.gather166 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep162, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %wide.masked.gather167 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep163, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %wide.masked.gather168 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep164, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %wide.masked.gather169 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep165, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %i.arz = sext <8 x i32> %wide.masked.gather166 to <8 x i64>
  %i.asa = sext <8 x i32> %wide.masked.gather167 to <8 x i64>
  %i.asb = sext <8 x i32> %wide.masked.gather168 to <8 x i64>
  %i.asc = sext <8 x i32> %wide.masked.gather169 to <8 x i64>
  %i.asd = add <8 x i64> %vec.phi147, %i.arz      ; 2 uses
  %i.ase = add <8 x i64> %vec.phi148, %i.asa      ; 2 uses
  %i.asf = add <8 x i64> %vec.phi149, %i.asb      ; 2 uses
  %i.asg = add <8 x i64> %vec.phi150, %i.asc      ; 2 uses
  %index.next170 = add nuw i64 %index145, 32      ; 2 uses
  %vec.ind.next171 = add nuw <8 x i64> %vec.ind146, splat (i64 32)
  %i.ash = icmp eq i64 %index.next170, %n.vec141
  br i1 %i.ash, label %middle.block172, label %vector.body144, !llvm.loop !472

middle.block172:                                  ; preds = %vector.body144
  %bin.rdx173 = add <8 x i64> %i.ase, %i.asd
  %bin.rdx174 = add <8 x i64> %i.asf, %bin.rdx173
  %bin.rdx175 = add <8 x i64> %i.asg, %bin.rdx174
  %i.asi = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %bin.rdx175) ; 3 uses
  %cmp.n176 = icmp eq i64 %n.vec141, %wide.trip.count140.i
  br i1 %cmp.n176, label %._crit_edge52.i, label %vec.epilog.iter.check181

vec.epilog.iter.check181:                         ; preds = %middle.block172
  %min.epilog.iters.check182 = icmp eq i64 %n.mod.vf140, 0
  br i1 %min.epilog.iters.check182, label %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE0EEENS0_10Tablebases8WDLScoreEEET0_RKNS0_8PositionEPT_S9_PNS8_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISE_E15difference_typeESE_SE_SA_.exit.us.i.preheader, label %vec.epilog.ph183, !prof !114

vec.epilog.ph183:                                 ; preds = %vector.main.loop.iter.check137, %vec.epilog.iter.check181
  %vec.epilog.resume.val177 = phi i64 [ %n.vec141, %vec.epilog.iter.check181 ], [ 0, %vector.main.loop.iter.check137 ] ; 2 uses
  %bc.merge.rdx178 = phi i64 [ %i.asi, %vec.epilog.iter.check181 ], [ 0, %vector.main.loop.iter.check137 ]
  %n.vec185 = and i64 %wide.trip.count140.i, 2147483640 ; 3 uses
  %i.asj = insertelement <8 x i64> <i64 poison, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx178, i64 0
  %broadcast.splatinsert186 = insertelement <8 x i64> poison, i64 %.012359.i, i64 0
  %broadcast.splat187 = shufflevector <8 x i64> %broadcast.splatinsert186, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert188 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val177, i64 0
  %broadcast.splat189 = shufflevector <8 x i64> %broadcast.splatinsert188, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction190 = or disjoint <8 x i64> %broadcast.splat189, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body191

vec.epilog.vector.body191:                        ; preds = %vec.epilog.vector.body191, %vec.epilog.ph183
  %index192 = phi i64 [ %vec.epilog.resume.val177, %vec.epilog.ph183 ], [ %index.next199, %vec.epilog.vector.body191 ] ; 2 uses
  %vec.ind193 = phi <8 x i64> [ %induction190, %vec.epilog.ph183 ], [ %vec.ind.next200, %vec.epilog.vector.body191 ] ; 2 uses
  %vec.phi194 = phi <8 x i64> [ %i.asj, %vec.epilog.ph183 ], [ %i.asp, %vec.epilog.vector.body191 ]
  %i.ask = add nuw nsw <8 x i64> %vec.ind193, splat (i64 1)
  %wide.gep195 = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <8 x i64> %i.ask
  %i.asl = getelementptr inbounds nuw i8, ptr %i.a, i64 %index192
  %wide.load196 = load <8 x i8>, ptr %i.asl, align 1, !tbaa !95
  %i.asm = zext <8 x i8> %wide.load196 to <8 x i64>
  %i.asn = sub nsw <8 x i64> %i.asm, %broadcast.splat187
  %wide.gep197 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep195, <8 x i64> %i.asn
  %wide.masked.gather198 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep197, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %i.aso = sext <8 x i32> %wide.masked.gather198 to <8 x i64>
  %i.asp = add <8 x i64> %vec.phi194, %i.aso      ; 2 uses
  %index.next199 = add nuw i64 %index192, 8       ; 2 uses
  %vec.ind.next200 = add nuw nsw <8 x i64> %vec.ind193, splat (i64 8)
  %i.asq = icmp eq i64 %index.next199, %n.vec185
  br i1 %i.asq, label %vec.epilog.middle.block201, label %vec.epilog.vector.body191, !llvm.loop !473

vec.epilog.middle.block201:                       ; preds = %vec.epilog.vector.body191
  %i.asr = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.asp) ; 2 uses
  %cmp.n202 = icmp eq i64 %n.vec185, %wide.trip.count140.i
  br i1 %cmp.n202, label %._crit_edge52.i, label %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE0EEENS0_10Tablebases8WDLScoreEEET0_RKNS0_8PositionEPT_S9_PNS8_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISE_E15difference_typeESE_SE_SA_.exit.us.i.preheader

_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE0EEENS0_10Tablebases8WDLScoreEEET0_RKNS0_8PositionEPT_S9_PNS8_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISE_E15difference_typeESE_SE_SA_.exit.us.i.preheader: ; preds = %iter.check179, %vec.epilog.iter.check181, %vec.epilog.middle.block201
  %indvars.iv137.i.ph = phi i64 [ 0, %iter.check179 ], [ %n.vec141, %vec.epilog.iter.check181 ], [ %n.vec185, %vec.epilog.middle.block201 ]
  %.012249.us.i.ph = phi i64 [ 0, %iter.check179 ], [ %i.asi, %vec.epilog.iter.check181 ], [ %i.asr, %vec.epilog.middle.block201 ]
  br label %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE0EEENS0_10Tablebases8WDLScoreEEET0_RKNS0_8PositionEPT_S9_PNS8_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISE_E15difference_typeESE_SE_SA_.exit.us.i

_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE0EEENS0_10Tablebases8WDLScoreEEET0_RKNS0_8PositionEPT_S9_PNS8_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISE_E15difference_typeESE_SE_SA_.exit.us.i: ; preds = %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE0EEENS0_10Tablebases8WDLScoreEEET0_RKNS0_8PositionEPT_S9_PNS8_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISE_E15difference_typeESE_SE_SA_.exit.us.i.preheader, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE0EEENS0_10Tablebases8WDLScoreEEET0_RKNS0_8PositionEPT_S9_PNS8_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISE_E15difference_typeESE_SE_SA_.exit.us.i
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE0EEENS0_10Tablebases8WDLScoreEEET0_RKNS0_8PositionEPT_S9_PNS8_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISE_E15difference_typeESE_SE_SA_.exit.us.i ], [ %indvars.iv137.i.ph, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE0EEENS0_10Tablebases8WDLScoreEEET0_RKNS0_8PositionEPT_S9_PNS8_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISE_E15difference_typeESE_SE_SA_.exit.us.i.preheader ] ; 2 uses
  %.012249.us.i = phi i64 [ %i.ata, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE0EEENS0_10Tablebases8WDLScoreEEET0_RKNS0_8PositionEPT_S9_PNS8_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISE_E15difference_typeESE_SE_SA_.exit.us.i ], [ %.012249.us.i.ph, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE0EEENS0_10Tablebases8WDLScoreEEET0_RKNS0_8PositionEPT_S9_PNS8_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISE_E15difference_typeESE_SE_SA_.exit.us.i.preheader ]
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1 ; 3 uses
  %i.ass = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %indvars.iv.next138.i
  %i.ast = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv137.i
  %i.asu = load i8, ptr %i.ast, align 1, !tbaa !95
  %i.asv = zext i8 %i.asu to i64
  %i.asw = sub nsw i64 %i.asv, %.012359.i
  %i.asx = getelementptr inbounds [4 x i8], ptr %i.ass, i64 %i.asw
  %i.asy = load i32, ptr %i.asx, align 4, !tbaa !89
  %i.asz = sext i32 %i.asy to i64
  %i.ata = add i64 %.012249.us.i, %i.asz          ; 2 uses
  %exitcond141.not.i = icmp eq i64 %indvars.iv.next138.i, %wide.trip.count140.i
  br i1 %exitcond141.not.i, label %._crit_edge52.i, label %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE0EEENS0_10Tablebases8WDLScoreEEET0_RKNS0_8PositionEPT_S9_PNS8_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISE_E15difference_typeESE_SE_SA_.exit.us.i, !llvm.loop !474

._crit_edge52.i:                                  ; preds = %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE0EEENS0_10Tablebases8WDLScoreEEET0_RKNS0_8PositionEPT_S9_PNS8_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISE_E15difference_typeESE_SE_SA_.exit.loopexit.i, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE0EEENS0_10Tablebases8WDLScoreEEET0_RKNS0_8PositionEPT_S9_PNS8_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISE_E15difference_typeESE_SE_SA_.exit.us.i, %middle.block172, %vec.epilog.middle.block201, %.lr.ph62.i
  %.0122.lcssa.i = phi i64 [ 0, %.lr.ph62.i ], [ %i.ata, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE0EEENS0_10Tablebases8WDLScoreEEET0_RKNS0_8PositionEPT_S9_PNS8_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISE_E15difference_typeESE_SE_SA_.exit.us.i ], [ %i.asr, %vec.epilog.middle.block201 ], [ %i.asi, %middle.block172 ], [ %i.aus, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE0EEENS0_10Tablebases8WDLScoreEEET0_RKNS0_8PositionEPT_S9_PNS8_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISE_E15difference_typeESE_SE_SA_.exit.loopexit.i ]
  %i.atb = getelementptr inbounds nuw [8 x i8], ptr %i.aql, i64 %indvars.iv142.i
  %i.atc = load i64, ptr %i.atb, align 8, !tbaa !17
  %i.atd = mul i64 %i.atc, %.0122.lcssa.i
  %i.ate = add i64 %i.atd, %.360.i                ; 2 uses
  %i.atf = sext i32 %i.are to i64
  %i.atg = getelementptr inbounds i8, ptr %.0957.i, i64 %i.atf
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %i.ath = getelementptr inbounds nuw [4 x i8], ptr %i.aqo, i64 %indvars.iv.next143.i ; 2 uses
  %i.ati = load i32, ptr %i.ath, align 4, !tbaa !89 ; 2 uses
  %.not142.i = icmp eq i32 %i.ati, 0
  br i1 %.not142.i, label %_ZN9Stockfish12_GLOBAL__N_114do_probe_tableINS0_7TBTableILNS0_6TBTypeE0EEENS_10Tablebases8WDLScoreEEET0_RKNS_8PositionEPT_S6_PNS5_10ProbeStateE.exit, label %.lr.ph62.i, !llvm.loop !475

iter.check234:                                    ; preds = %.lr.ph.i.i146.i.preheader, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE0EEENS0_10Tablebases8WDLScoreEEET0_RKNS0_8PositionEPT_S9_PNS8_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISE_E15difference_typeESE_SE_SA_.exit.loopexit.i
  %indvars.iv132.i = phi i64 [ %indvars.iv.next133.i, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE0EEENS0_10Tablebases8WDLScoreEEET0_RKNS0_8PositionEPT_S9_PNS8_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISE_E15difference_typeESE_SE_SA_.exit.loopexit.i ], [ 0, %.lr.ph.i.i146.i.preheader ] ; 2 uses
  %.012249.i = phi i64 [ %i.aus, %_ZSt8count_ifIPN9Stockfish6SquareEZNS0_12_GLOBAL__N_114do_probe_tableINS3_7TBTableILNS3_6TBTypeE0EEENS0_10Tablebases8WDLScoreEEET0_RKNS0_8PositionEPT_S9_PNS8_10ProbeStateEEUlS1_E_ENSt15iterator_traitsISE_E15difference_typeESE_SE_SA_.exit.loopexit.i ], [ 0, %.lr.ph.i.i146.i.preheader ]
  %i.atj = getelementptr inbounds nuw i8, ptr %.0957.i, i64 %indvars.iv132.i
  %i.atk = load i8, ptr %i.atj, align 1, !tbaa !95 ; 4 uses
  br i1 %min.iters.check206, label %vec.epilog.scalar.ph235.preheader, label %vector.main.loop.iter.check207

vector.main.loop.iter.check207:                   ; preds = %iter.check234
  br i1 %min.iters.check208, label %vec.epilog.ph238, label %vector.ph209

vector.ph209:                                     ; preds = %vector.main.loop.iter.check207
  %broadcast.splatinsert212 = insertelement <8 x i8> poison, i8 %i.atk, i64 0
  %broadcast.splat213 = shufflevector <8 x i8> %broadcast.splatinsert212, <8 x i8> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph209
  %index215 = phi i64 [ 0, %vector.ph209 ], [ %index.next225, %vector.body214 ] ; 2 uses
  %vec.phi216 = phi <8 x i64> [ zeroinitializer, %vector.ph209 ], [ %i.atw, %vector.body214 ]
  %vec.phi217 = phi <8 x i64> [ zeroinitializer, %vector.ph209 ], [ %i.atx, %vector.body214 ]
  %vec.phi218 = phi <8 x i64> [ zeroinitializer, %vector.ph209 ], [ %i.aty, %vector.body214 ]
  %vec.phi219 = phi <8 x i64> [ zeroinitializer, %vector.ph209 ], [ %i.atz, %vector.body214 ]
  %next.gep220 = getelementptr i8, ptr %i.a, i64 %index215 ; 4 uses
  %i.atl = getelementptr i8, ptr %next.gep220, i64 8
  %i.atm = getelementptr i8, ptr %next.gep220, i64 16
end_hunk_5
begin_hunk_6_@_ZSt22__merge_without_bufferIPN9Stockfish6SquareElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_S9_T0_SA_T1_:bb.a
  %i.g = load i8, ptr %.tr73, align 1, !tbaa !95
  %i.h = tail call noundef zeroext i1 %5(i8 noundef zeroext %i.f, i8 noundef zeroext %i.g) #26, !inline_history !527
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %.tr73, align 1, !tbaa !95
  %i.j = load i8, ptr %.tr6575, align 1, !tbaa !95
  store i8 %i.j, ptr %.tr73, align 1, !tbaa !95
  store i8 %i.i, ptr %.tr6575, align 1, !tbaa !95
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.k = icmp sgt i64 %.tr6777, %.tr6878
  %i.l = ptrtoint ptr %.tr6575 to i64             ; 4 uses
  br i1 %i.k, label %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit44

_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.m = sdiv i64 %.tr6777, 2                     ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.tr73, i64 %i.m ; 2 uses
  %i.o = sub i64 %i.c, %i.l                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.017.i = phi ptr [ %.1.i, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr6575, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.01116.i = phi i64 [ %.112.i, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.o, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.q = lshr i64 %.01116.i, 1                    ; 3 uses
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %.017.i, i64 %i.q ; 2 uses
  %i.r = load i8, ptr %.sink.i.i, align 1, !tbaa !95
  %i.s = load i8, ptr %i.n, align 1, !tbaa !95
  %i.t = tail call noundef zeroext i1 %5(i8 noundef zeroext %i.r, i8 noundef zeroext %i.s) #26, !inline_history !528 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 1
  %i.v = xor i64 %i.q, -1
  %i.w = add nsw i64 %.01116.i, %i.v
  %.112.i = select i1 %i.t, i64 %i.w, i64 %i.q    ; 2 uses
  %.1.i = select i1 %i.t, ptr %i.u, ptr %.017.i   ; 3 uses
  %i.x = icmp sgt i64 %.112.i, 0
  br i1 %i.x, label %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit, !llvm.loop !529

_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.1.i to i64
  br label %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit

_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %i.l, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.0.lcssa.i = phi ptr [ %.1.i, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %.tr6575, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.y = sub i64 %.pre-phi, %i.l
  br label %tailrecurse

_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit44: ; preds = %bb.e
  %i.z = sdiv i64 %.tr6878, 2                     ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.tr6575, i64 %i.z ; 2 uses
  %i.ab = ptrtoint ptr %.tr73 to i64              ; 3 uses
  %i.ac = sub i64 %i.l, %i.ab                     ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i46, label %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i46: ; preds = %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit44, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i46
  %.017.i47 = phi ptr [ %.1.i51, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i46 ], [ %.tr73, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit44 ] ; 2 uses
  %.01116.i48 = phi i64 [ %.112.i50, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i46 ], [ %i.ac, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit44 ] ; 2 uses
  %i.ae = lshr i64 %.01116.i48, 1                 ; 3 uses
  %.sink.i.i49 = getelementptr inbounds nuw i8, ptr %.017.i47, i64 %i.ae ; 2 uses
  %i.af = load i8, ptr %i.aa, align 1, !tbaa !95
  %i.ag = load i8, ptr %.sink.i.i49, align 1, !tbaa !95
  %i.ah = tail call noundef zeroext i1 %5(i8 noundef zeroext %i.af, i8 noundef zeroext %i.ag) #26, !inline_history !530 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink.i.i49, i64 1
  %i.aj = xor i64 %i.ae, -1
  %i.ak = add nsw i64 %.01116.i48, %i.aj
  %.112.i50 = select i1 %i.ah, i64 %i.ae, i64 %i.ak ; 2 uses
  %.1.i51 = select i1 %i.ah, ptr %.017.i47, ptr %i.ai ; 3 uses
  %i.al = icmp sgt i64 %.112.i50, 0
  br i1 %i.al, label %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i46, label %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit, !llvm.loop !531

_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit.i46
  %.pre81 = ptrtoint ptr %.1.i51 to i64
  br label %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit

_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit44
  %.pre-phi82 = phi i64 [ %.pre81, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %i.ab, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit44 ]
  %.0.lcssa.i45 = phi ptr [ %.1.i51, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %.tr73, %_ZSt9__advanceIPN9Stockfish6SquareElEvRT_T0_St26random_access_iterator_tag.exit44 ]
  %i.am = sub i64 %.pre-phi82, %i.ab
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit
  %.062 = phi ptr [ %i.n, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit ], [ %.0.lcssa.i45, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.061 = phi ptr [ %.0.lcssa.i, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit ], [ %i.aa, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.038 = phi i64 [ %i.y, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit ], [ %i.z, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.m, %_ZSt13__lower_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit ], [ %i.am, %_ZSt13__upper_boundIPN9Stockfish6SquareES1_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS1_S1_EEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %i.an = tail call noundef ptr @_ZNSt3_V28__rotateIPN9Stockfish6SquareEEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %.062, ptr noundef %.tr6575, ptr noundef %.061) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIPN9Stockfish6SquareElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_S9_T0_SA_T1_(ptr noundef %.tr73, ptr noundef %.062, ptr noundef %i.an, i64 noundef %.0, i64 noundef %.038, ptr %5)
  %i.ao = sub nsw i64 %.tr6777, %.0               ; 2 uses
  %i.ap = sub nsw i64 %.tr6878, %.038             ; 2 uses
  %i.aq = icmp eq i64 %i.ao, 0
  %i.ar = icmp eq i64 %i.ap, 0
  %or.cond = or i1 %i.aq, %i.ar
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3_V28__rotateIPN9Stockfish6SquareEEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.g = sub i64 %i.f, %i.d                       ; 10 uses
  %i.h = sub nsw i64 %i.e, %i.g
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %iter.check226, label %bb.d

iter.check226:                                    ; preds = %bb.c
  %min.iters.check203 = icmp ult i64 %i.g, 16
  br i1 %min.iters.check203, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check204

vector.main.loop.iter.check204:                   ; preds = %iter.check226
  %min.iters.check205 = icmp ult i64 %i.g, 256
  br i1 %min.iters.check205, label %vec.epilog.ph230, label %vector.ph206

vector.ph206:                                     ; preds = %vector.main.loop.iter.check204
  %n.mod.vf207 = and i64 %i.g, 240
  %n.vec208 = and i64 %i.g, -256                  ; 5 uses
  %i.j = getelementptr i8, ptr %1, i64 %n.vec208
  %i.k = getelementptr i8, ptr %0, i64 %n.vec208
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph206
  %index210 = phi i64 [ 0, %vector.ph206 ], [ %index.next221, %vector.body209 ] ; 3 uses
  %next.gep211 = getelementptr i8, ptr %1, i64 %index210 ; 5 uses
  %next.gep212 = getelementptr i8, ptr %0, i64 %index210 ; 5 uses
  %i.l = getelementptr i8, ptr %next.gep212, i64 64 ; 2 uses
  %i.m = getelementptr i8, ptr %next.gep212, i64 128 ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep212, i64 192 ; 2 uses
  %wide.load213 = load <64 x i8>, ptr %next.gep212, align 1, !tbaa !95, !alias.scope !532, !noalias !535
  %wide.load214 = load <64 x i8>, ptr %i.l, align 1, !tbaa !95, !alias.scope !532, !noalias !535
  %wide.load215 = load <64 x i8>, ptr %i.m, align 1, !tbaa !95, !alias.scope !532, !noalias !535
  %wide.load216 = load <64 x i8>, ptr %i.n, align 1, !tbaa !95, !alias.scope !532, !noalias !535
  %i.o = getelementptr i8, ptr %next.gep211, i64 64 ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep211, i64 128 ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep211, i64 192 ; 2 uses
  %wide.load217 = load <64 x i8>, ptr %next.gep211, align 1, !tbaa !95, !alias.scope !535
  %wide.load218 = load <64 x i8>, ptr %i.o, align 1, !tbaa !95, !alias.scope !535
  %wide.load219 = load <64 x i8>, ptr %i.p, align 1, !tbaa !95, !alias.scope !535
  %wide.load220 = load <64 x i8>, ptr %i.q, align 1, !tbaa !95, !alias.scope !535
  store <64 x i8> %wide.load217, ptr %next.gep212, align 1, !tbaa !95, !alias.scope !532, !noalias !535
  store <64 x i8> %wide.load218, ptr %i.l, align 1, !tbaa !95, !alias.scope !532, !noalias !535
  store <64 x i8> %wide.load219, ptr %i.m, align 1, !tbaa !95, !alias.scope !532, !noalias !535
  store <64 x i8> %wide.load220, ptr %i.n, align 1, !tbaa !95, !alias.scope !532, !noalias !535
  store <64 x i8> %wide.load213, ptr %next.gep211, align 1, !tbaa !95, !alias.scope !535
  store <64 x i8> %wide.load214, ptr %i.o, align 1, !tbaa !95, !alias.scope !535
  store <64 x i8> %wide.load215, ptr %i.p, align 1, !tbaa !95, !alias.scope !535
  store <64 x i8> %wide.load216, ptr %i.q, align 1, !tbaa !95, !alias.scope !535
  %index.next221 = add nuw i64 %index210, 256     ; 2 uses
  %i.r = icmp eq i64 %index.next221, %n.vec208
  br i1 %i.r, label %middle.block222, label %vector.body209, !llvm.loop !537

middle.block222:                                  ; preds = %vector.body209
  %cmp.n223 = icmp eq i64 %i.g, %n.vec208
  br i1 %cmp.n223, label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %vec.epilog.iter.check228

vec.epilog.iter.check228:                         ; preds = %middle.block222
  %min.epilog.iters.check229 = icmp eq i64 %n.mod.vf207, 0
  br i1 %min.epilog.iters.check229, label %.lr.ph.i.preheader, label %vec.epilog.ph230, !prof !289

vec.epilog.ph230:                                 ; preds = %vector.main.loop.iter.check204, %vec.epilog.iter.check228
  %vec.epilog.resume.val224 = phi i64 [ %n.vec208, %vec.epilog.iter.check228 ], [ 0, %vector.main.loop.iter.check204 ]
  %n.vec232 = and i64 %i.g, -16                   ; 4 uses
  %i.s = getelementptr i8, ptr %1, i64 %n.vec232
  %i.t = getelementptr i8, ptr %0, i64 %n.vec232
  br label %vec.epilog.vector.body233

vec.epilog.vector.body233:                        ; preds = %vec.epilog.vector.body233, %vec.epilog.ph230
  %index234 = phi i64 [ %vec.epilog.resume.val224, %vec.epilog.ph230 ], [ %index.next239, %vec.epilog.vector.body233 ] ; 3 uses
  %next.gep235 = getelementptr i8, ptr %1, i64 %index234 ; 2 uses
  %next.gep236 = getelementptr i8, ptr %0, i64 %index234 ; 2 uses
  %wide.load237 = load <16 x i8>, ptr %next.gep236, align 1, !tbaa !95, !alias.scope !532, !noalias !535
  %wide.load238 = load <16 x i8>, ptr %next.gep235, align 1, !tbaa !95, !alias.scope !535
  store <16 x i8> %wide.load238, ptr %next.gep236, align 1, !tbaa !95, !alias.scope !532, !noalias !535
  store <16 x i8> %wide.load237, ptr %next.gep235, align 1, !tbaa !95, !alias.scope !535
  %index.next239 = add nuw i64 %index234, 16      ; 2 uses
  %i.u = icmp eq i64 %index.next239, %n.vec232
  br i1 %i.u, label %vec.epilog.middle.block240, label %vec.epilog.vector.body233, !llvm.loop !538

vec.epilog.middle.block240:                       ; preds = %vec.epilog.vector.body233
  %cmp.n241 = icmp eq i64 %i.g, %n.vec232
  br i1 %cmp.n241, label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check226, %vec.epilog.iter.check228, %vec.epilog.middle.block240
  %.010.i.ph = phi ptr [ %1, %iter.check226 ], [ %i.j, %vec.epilog.iter.check228 ], [ %i.s, %vec.epilog.middle.block240 ] ; 2 uses
  %.079.i.ph = phi ptr [ %0, %iter.check226 ], [ %i.k, %vec.epilog.iter.check228 ], [ %i.t, %vec.epilog.middle.block240 ] ; 3 uses
  %.079.i.ph253 = ptrtoaddr ptr %.079.i.ph to i64 ; 2 uses
  %i.v = sub i64 %i.f, %.079.i.ph253
  %xtraiter254 = and i64 %i.v, 7                  ; 2 uses
  %lcmp.mod255.not = icmp eq i64 %xtraiter254, 0
  br i1 %lcmp.mod255.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.010.i.prol = phi ptr [ %i.z, %.lr.ph.i.prol ], [ %.010.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.079.i.prol = phi ptr [ %i.y, %.lr.ph.i.prol ], [ %.079.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter256 = phi i64 [ %prol.iter256.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.w = load i8, ptr %.079.i.prol, align 1, !tbaa !95
  %i.x = load i8, ptr %.010.i.prol, align 1, !tbaa !95
  store i8 %i.x, ptr %.079.i.prol, align 1, !tbaa !95
  store i8 %i.w, ptr %.010.i.prol, align 1, !tbaa !95
  %i.y = getelementptr inbounds nuw i8, ptr %.079.i.prol, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.010.i.prol, i64 1 ; 2 uses
  %prol.iter256.next = add i64 %prol.iter256, 1   ; 2 uses
  %prol.iter256.cmp.not = icmp eq i64 %prol.iter256.next, %xtraiter254
  br i1 %prol.iter256.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !539

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.010.i.unr = phi ptr [ %.010.i.ph, %.lr.ph.i.preheader ], [ %i.z, %.lr.ph.i.prol ]
  %.079.i.unr = phi ptr [ %.079.i.ph, %.lr.ph.i.preheader ], [ %i.y, %.lr.ph.i.prol ]
  %i.aa = sub i64 %.079.i.ph253, %i.f
  %i.ab = icmp ugt i64 %i.aa, -8
  br i1 %i.ab, label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.010.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %.010.i.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %.079.i = phi ptr [ %i.bg, %.lr.ph.i ], [ %.079.i.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %i.ac = load i8, ptr %.079.i, align 1, !tbaa !95
  %i.ad = load i8, ptr %.010.i, align 1, !tbaa !95
  store i8 %i.ad, ptr %.079.i, align 1, !tbaa !95
  store i8 %i.ac, ptr %.010.i, align 1, !tbaa !95
  %i.ae = getelementptr inbounds nuw i8, ptr %.079.i, i64 1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !95
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !95
  store i8 %i.ah, ptr %i.ae, align 1, !tbaa !95
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !95
  %i.ai = getelementptr inbounds nuw i8, ptr %.079.i, i64 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i, i64 2 ; 2 uses
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !95
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !95
  store i8 %i.al, ptr %i.ai, align 1, !tbaa !95
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !95
  %i.am = getelementptr inbounds nuw i8, ptr %.079.i, i64 3 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i, i64 3 ; 2 uses
  %i.ao = load i8, ptr %i.am, align 1, !tbaa !95
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !95
  store i8 %i.ap, ptr %i.am, align 1, !tbaa !95
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !95
  %i.aq = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %i.as = load i8, ptr %i.aq, align 1, !tbaa !95
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !95
  store i8 %i.at, ptr %i.aq, align 1, !tbaa !95
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !95
  %i.au = getelementptr inbounds nuw i8, ptr %.079.i, i64 5 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.010.i, i64 5 ; 2 uses
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !95
  %i.ax = load i8, ptr %i.av, align 1, !tbaa !95
  store i8 %i.ax, ptr %i.au, align 1, !tbaa !95
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !95
  %i.ay = getelementptr inbounds nuw i8, ptr %.079.i, i64 6 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.010.i, i64 6 ; 2 uses
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !95
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !95
  store i8 %i.bb, ptr %i.ay, align 1, !tbaa !95
  store i8 %i.ba, ptr %i.az, align 1, !tbaa !95
  %i.bc = getelementptr inbounds nuw i8, ptr %.079.i, i64 7 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.010.i, i64 7 ; 2 uses
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !95
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !95
  store i8 %i.bf, ptr %i.bc, align 1, !tbaa !95
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !95
  %i.bg = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i.7 = icmp eq ptr %i.bg, %1
  br i1 %.not.i.7, label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %.lr.ph.i, !llvm.loop !540

bb.d:                                             ; preds = %bb.c
  %i.bi = sub i64 %i.c, %i.f
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.e, %bb.d ], [ %.086.be, %.backedge ] ; 11 uses
  %.082 = phi i64 [ %i.g, %bb.d ], [ %.082.be, %.backedge ] ; 20 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 26 uses
  %i.bk = sub nsw i64 %.086, %.082                ; 16 uses
  %i.bl = icmp slt i64 %.082, %i.bk
  br i1 %i.bl, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bm = icmp eq i64 %.082, 1
  br i1 %i.bm, label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %bb.g

_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit: ; preds = %bb.f
  %i.bn = load i8, ptr %.058, align 1, !tbaa !95
  %i.bo = getelementptr inbounds nuw i8, ptr %.058, i64 1
  %i.bp = getelementptr inbounds i8, ptr %.058, i64 %.086
  %gepdiff = add nsw i64 %.086, -1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.058, ptr nonnull align 1 %i.bo, i64 %gepdiff, i1 false)
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -1
  store i8 %i.bn, ptr %i.bq, align 1, !tbaa !95
  br label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit

bb.g:                                             ; preds = %bb.f
  %i.br = icmp sgt i64 %i.bk, 0
  br i1 %i.br, label %iter.check, label %._crit_edge110

iter.check:                                       ; preds = %bb.g
  %i.bs = getelementptr i8, ptr %.058, i64 %.082  ; 7 uses
  %min.iters.check = icmp ult i64 %i.bk, 8
  br i1 %min.iters.check, label %.lr.ph109.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.058, i64 %i.bk
  %scevgep135 = getelementptr i8, ptr %.058, i64 %.086
  %bound0 = icmp ult ptr %.058, %scevgep135
  %bound1 = icmp ult ptr %i.bs, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph109.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check136 = icmp ult i64 %i.bk, 128
  br i1 %min.iters.check136, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bk, 120
  %n.vec = and i64 %i.bk, 9223372036854775680     ; 6 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 %n.vec
  %i.bu = getelementptr i8, ptr %.058, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.bs, i64 %index ; 3 uses
  %next.gep137 = getelementptr i8, ptr %.058, i64 %index ; 3 uses
  %i.bv = getelementptr i8, ptr %next.gep137, i64 64 ; 2 uses
  %wide.load = load <64 x i8>, ptr %next.gep137, align 1, !tbaa !95, !alias.scope !541, !noalias !544
  %wide.load138 = load <64 x i8>, ptr %i.bv, align 1, !tbaa !95, !alias.scope !541, !noalias !544
  %i.bw = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %wide.load139 = load <64 x i8>, ptr %next.gep, align 1, !tbaa !95, !alias.scope !544
  %wide.load140 = load <64 x i8>, ptr %i.bw, align 1, !tbaa !95, !alias.scope !544
  store <64 x i8> %wide.load139, ptr %next.gep137, align 1, !tbaa !95, !alias.scope !541, !noalias !544
  store <64 x i8> %wide.load140, ptr %i.bv, align 1, !tbaa !95, !alias.scope !541, !noalias !544
  store <64 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !95, !alias.scope !544
  store <64 x i8> %wide.load138, ptr %i.bw, align 1, !tbaa !95, !alias.scope !544
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !546

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %._crit_edge110, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph109.preheader, label %vec.epilog.ph, !prof !547

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec143 = and i64 %i.bk, 9223372036854775800  ; 5 uses
  %i.by = getelementptr i8, ptr %i.bs, i64 %n.vec143
  %i.bz = getelementptr i8, ptr %.058, i64 %n.vec143 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index144 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next149, %vec.epilog.vector.body ] ; 3 uses
  %next.gep145 = getelementptr i8, ptr %i.bs, i64 %index144 ; 2 uses
  %next.gep146 = getelementptr i8, ptr %.058, i64 %index144 ; 2 uses
  %wide.load147 = load <8 x i8>, ptr %next.gep146, align 1, !tbaa !95, !alias.scope !541, !noalias !544
  %wide.load148 = load <8 x i8>, ptr %next.gep145, align 1, !tbaa !95, !alias.scope !544
  store <8 x i8> %wide.load148, ptr %next.gep146, align 1, !tbaa !95, !alias.scope !541, !noalias !544
  store <8 x i8> %wide.load147, ptr %next.gep145, align 1, !tbaa !95, !alias.scope !544
  %index.next149 = add nuw i64 %index144, 8       ; 2 uses
  %i.ca = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.ca, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !548

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n150 = icmp eq i64 %i.bk, %n.vec143
  br i1 %cmp.n150, label %._crit_edge110, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.054107.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec143, %vec.epilog.middle.block ] ; 3 uses
  %.055106.ph = phi ptr [ %i.bs, %iter.check ], [ %i.bs, %vector.memcheck ], [ %i.bt, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ] ; 2 uses
  %.159105.ph = phi ptr [ %.058, %iter.check ], [ %.058, %vector.memcheck ], [ %i.bu, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ] ; 2 uses
  %i.cb = sub i64 %.086, %.082
  %xtraiter250 = and i64 %i.cb, 7                 ; 2 uses
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  br i1 %lcmp.mod251.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol

.lr.ph109.prol:                                   ; preds = %.lr.ph109.preheader, %.lr.ph109.prol
  %.054107.prol = phi i64 [ %i.cg, %.lr.ph109.prol ], [ %.054107.ph, %.lr.ph109.preheader ]
  %.055106.prol = phi ptr [ %i.cf, %.lr.ph109.prol ], [ %.055106.ph, %.lr.ph109.preheader ] ; 3 uses
  %.159105.prol = phi ptr [ %i.ce, %.lr.ph109.prol ], [ %.159105.ph, %.lr.ph109.preheader ] ; 3 uses
  %prol.iter252 = phi i64 [ %prol.iter252.next, %.lr.ph109.prol ], [ 0, %.lr.ph109.preheader ]
  %i.cc = load i8, ptr %.159105.prol, align 1, !tbaa !95
  %i.cd = load i8, ptr %.055106.prol, align 1, !tbaa !95
end_hunk_6
begin_hunk_7_@_ZSt21__inplace_stable_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_:bb.a

bb.l:                                             ; preds = %.lr.ph.i
  %i.af = load i8, ptr %.pn18.i, align 1, !tbaa !95 ; 2 uses
  %i.ag = icmp ult i8 %i.x, %i.af
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %i.ah = phi i8 [ %i.ai, %.lr.ph.i.i ], [ %i.af, %bb.l ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.l ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.019.i, %bb.l ]
  store i8 %i.ah, ptr %.0912.i.i, align 1, !tbaa !95
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -1 ; 2 uses
  %i.ai = load i8, ptr %.0.i.i, align 1, !tbaa !95 ; 2 uses
  %i.aj = icmp ult i8 %i.x, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i, !llvm.loop !562

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i: ; preds = %.lr.ph.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.019.i, %bb.l ], [ %.013.i.i, %.lr.ph.i.i ]
  store i8 %i.x, ptr %.sink.i, align 1, !tbaa !95
  %.0.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 6 uses
  %i.ak = load i8, ptr %.0.i, align 1, !tbaa !95  ; 4 uses
  %i.al = load i8, ptr %0, align 1, !tbaa !95     ; 2 uses
  %i.am = icmp ult i8 %i.ak, %i.al
  br i1 %i.am, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i
  %i.an = load i8, ptr %.019.i, align 1, !tbaa !95 ; 2 uses
  %i.ao = icmp ult i8 %i.ak, %i.an
  br i1 %i.ao, label %.lr.ph.i.i.1, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.m, %.lr.ph.i.i.1
  %i.ap = phi i8 [ %i.aq, %.lr.ph.i.i.1 ], [ %i.an, %bb.m ]
  %.013.i.i.1 = phi ptr [ %.0.i.i.1, %.lr.ph.i.i.1 ], [ %.019.i, %bb.m ] ; 3 uses
  %.0912.i.i.1 = phi ptr [ %.013.i.i.1, %.lr.ph.i.i.1 ], [ %.0.i, %bb.m ]
  store i8 %i.ap, ptr %.0912.i.i.1, align 1, !tbaa !95
  %.0.i.i.1 = getelementptr inbounds i8, ptr %.013.i.i.1, i64 -1 ; 2 uses
  %i.aq = load i8, ptr %.0.i.i.1, align 1, !tbaa !95 ; 2 uses
  %i.ar = icmp ult i8 %i.ak, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i.1, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.1, !llvm.loop !562

bb.n:                                             ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i
  %i.as = ptrtoint ptr %.0.i to i64
  %i.at = sub i64 %i.as, %i.b                     ; 3 uses
  %i.au = icmp sgt i64 %i.at, 1
  br i1 %i.au, label %bb.q, label %bb.o, !prof !190

bb.o:                                             ; preds = %bb.n
  %i.av = icmp eq i64 %i.at, 1
  br i1 %i.av, label %bb.p, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.1

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %.019.i, i64 1
  store i8 %i.al, ptr %i.aw, align 1, !tbaa !95
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.1

bb.q:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.016.i, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.at, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.1

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.1: ; preds = %.lr.ph.i.i.1, %bb.q, %bb.p, %bb.o, %bb.m
  %.sink.i.1 = phi ptr [ %0, %bb.p ], [ %0, %bb.q ], [ %0, %bb.o ], [ %.0.i, %bb.m ], [ %.013.i.i.1, %.lr.ph.i.i.1 ]
  store i8 %i.ak, ptr %.sink.i.1, align 1, !tbaa !95
  %.0.i.1 = getelementptr inbounds nuw i8, ptr %.019.i, i64 2 ; 6 uses
  %i.ax = load i8, ptr %.0.i.1, align 1, !tbaa !95 ; 4 uses
  %i.ay = load i8, ptr %0, align 1, !tbaa !95     ; 2 uses
  %i.az = icmp ult i8 %i.ax, %i.ay
  br i1 %i.az, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.1
  %i.ba = load i8, ptr %.0.i, align 1, !tbaa !95  ; 2 uses
  %i.bb = icmp ult i8 %i.ax, %i.ba
  br i1 %i.bb, label %.lr.ph.i.i.2, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.r, %.lr.ph.i.i.2
  %i.bc = phi i8 [ %i.bd, %.lr.ph.i.i.2 ], [ %i.ba, %bb.r ]
  %.013.i.i.2 = phi ptr [ %.0.i.i.2, %.lr.ph.i.i.2 ], [ %.0.i, %bb.r ] ; 3 uses
  %.0912.i.i.2 = phi ptr [ %.013.i.i.2, %.lr.ph.i.i.2 ], [ %.0.i.1, %bb.r ]
  store i8 %i.bc, ptr %.0912.i.i.2, align 1, !tbaa !95
  %.0.i.i.2 = getelementptr inbounds i8, ptr %.013.i.i.2, i64 -1 ; 2 uses
  %i.bd = load i8, ptr %.0.i.i.2, align 1, !tbaa !95 ; 2 uses
  %i.be = icmp ult i8 %i.ax, %i.bd
  br i1 %i.be, label %.lr.ph.i.i.2, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.2, !llvm.loop !562

bb.s:                                             ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.1
  %i.bf = ptrtoint ptr %.0.i.1 to i64
  %i.bg = sub i64 %i.bf, %i.b                     ; 3 uses
  %i.bh = icmp sgt i64 %i.bg, 1
  br i1 %i.bh, label %bb.v, label %bb.t, !prof !190

bb.t:                                             ; preds = %bb.s
  %i.bi = icmp eq i64 %i.bg, 1
  br i1 %i.bi, label %bb.u, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.2

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %.019.i, i64 2
  store i8 %i.ay, ptr %i.bj, align 1, !tbaa !95
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.2

bb.v:                                             ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.016.i, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.bg, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.2

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.2: ; preds = %.lr.ph.i.i.2, %bb.v, %bb.u, %bb.t, %bb.r
  %.sink.i.2 = phi ptr [ %0, %bb.u ], [ %0, %bb.v ], [ %0, %bb.t ], [ %.0.i.1, %bb.r ], [ %.013.i.i.2, %.lr.ph.i.i.2 ]
  store i8 %i.ax, ptr %.sink.i.2, align 1, !tbaa !95
  %.0.i.2 = getelementptr inbounds nuw i8, ptr %.019.i, i64 3 ; 5 uses
  %i.bk = load i8, ptr %.0.i.2, align 1, !tbaa !95 ; 4 uses
  %i.bl = load i8, ptr %0, align 1, !tbaa !95     ; 2 uses
  %i.bm = icmp ult i8 %i.bk, %i.bl
  br i1 %i.bm, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.2
  %i.bn = load i8, ptr %.0.i.1, align 1, !tbaa !95 ; 2 uses
  %i.bo = icmp ult i8 %i.bk, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i.3, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.w, %.lr.ph.i.i.3
  %i.bp = phi i8 [ %i.bq, %.lr.ph.i.i.3 ], [ %i.bn, %bb.w ]
  %.013.i.i.3 = phi ptr [ %.0.i.i.3, %.lr.ph.i.i.3 ], [ %.0.i.1, %bb.w ] ; 3 uses
  %.0912.i.i.3 = phi ptr [ %.013.i.i.3, %.lr.ph.i.i.3 ], [ %.0.i.2, %bb.w ]
  store i8 %i.bp, ptr %.0912.i.i.3, align 1, !tbaa !95
  %.0.i.i.3 = getelementptr inbounds i8, ptr %.013.i.i.3, i64 -1 ; 2 uses
  %i.bq = load i8, ptr %.0.i.i.3, align 1, !tbaa !95 ; 2 uses
  %i.br = icmp ult i8 %i.bk, %i.bq
  br i1 %i.br, label %.lr.ph.i.i.3, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.3, !llvm.loop !562

bb.x:                                             ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.2
  %i.bs = ptrtoint ptr %.0.i.2 to i64
  %i.bt = sub i64 %i.bs, %i.b                     ; 3 uses
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %bb.aa, label %bb.y, !prof !190

bb.y:                                             ; preds = %bb.x
  %i.bv = icmp eq i64 %i.bt, 1
  br i1 %i.bv, label %bb.z, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.3

bb.z:                                             ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %.019.i, i64 3
  store i8 %i.bl, ptr %i.bw, align 1, !tbaa !95
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.3

bb.aa:                                            ; preds = %bb.x
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.016.i, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.bt, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.3

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.3: ; preds = %.lr.ph.i.i.3, %bb.aa, %bb.z, %bb.y, %bb.w
  %.sink.i.3 = phi ptr [ %0, %bb.z ], [ %0, %bb.aa ], [ %0, %bb.y ], [ %.0.i.2, %bb.w ], [ %.013.i.i.3, %.lr.ph.i.i.3 ]
  store i8 %i.bk, ptr %.sink.i.3, align 1, !tbaa !95
  %.0.i.3 = getelementptr inbounds nuw i8, ptr %.019.i, i64 4 ; 2 uses
  %.not.i.3 = icmp eq ptr %.0.i.3, %1
  br i1 %.not.i.3, label %common.ret24, label %.lr.ph.i, !llvm.loop !564

common.ret24:                                     ; preds = %.preheader.i, %bb.b, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.3, %.lr.ph.i.prol.loopexit, %bb.ab
  ret void

bb.ab:                                            ; preds = %bb.a
  %i.bx = lshr i64 %i.c, 1                        ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %i.bx ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef %0, ptr noundef %i.by)
  tail call void @_ZSt21__inplace_stable_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef %i.by, ptr noundef %1)
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.a, %i.bz
  tail call void @_ZSt22__merge_without_bufferIPN9Stockfish6SquareElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_S7_T1_(ptr noundef %0, ptr noundef %i.by, ptr noundef %1, i64 noundef %i.bx, i64 noundef %i.ca)
  br label %common.ret24
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt29__stable_sort_adaptive_resizeIPN9Stockfish6SquareES2_lN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %reass.sub = sub i64 %i.a, %i.b
  %i.c = add i64 %reass.sub, 1
  %i.d = sdiv i64 %i.c, 2                         ; 4 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 7 uses
  %i.f = icmp sgt i64 %i.d, %3
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.a, %i.g                       ; 2 uses
  br i1 %i.f, label %bb.b, label %common.ret

common.ret27:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIPN9Stockfish6SquareES2_lN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_T2_(ptr noundef %0, ptr noundef %i.e, ptr noundef %2, i64 noundef %3)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIPN9Stockfish6SquareES2_lN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_T2_(ptr noundef %i.e, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  tail call void @_ZSt23__merge_adaptive_resizeIPN9Stockfish6SquareElS2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_S7_T1_S7_T2_(ptr noundef %0, ptr noundef %i.e, ptr noundef %1, i64 noundef %i.d, i64 noundef %i.h, ptr noundef %2, i64 noundef %3)
  br label %common.ret27

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %i.e, ptr noundef %2)
  tail call void @_ZSt24__merge_sort_with_bufferIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %i.e, ptr noundef %1, ptr noundef %2)
  tail call void @_ZSt16__merge_adaptiveIPN9Stockfish6SquareElS2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_S7_T1_T2_(ptr noundef %0, ptr noundef %i.e, ptr noundef %1, i64 noundef %i.d, i64 noundef %i.h, ptr noundef %2)
  br label %common.ret27
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt24__merge_sort_with_bufferIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not25.i = icmp slt i64 %i.c, 7
  br i1 %.not25.i, label %._crit_edge.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.5
  %3 = phi i64 [ %i.aw, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.5 ], [ %i.b, %bb.a ] ; 6 uses
  %.026.i = phi ptr [ %i.av, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.5 ], [ %0, %bb.a ] ; 42 uses
  %.016.i.i.ptr = getelementptr inbounds nuw i8, ptr %.026.i, i64 1 ; 12 uses
  %i.e = load i8, ptr %.016.i.i.ptr, align 1, !tbaa !95 ; 2 uses
  %i.f = load i8, ptr %.026.i, align 1, !tbaa !95 ; 2 uses
  %i.g = icmp ult i8 %i.e, %i.f
  br i1 %i.g, label %4, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i

4:                                                ; preds = %.preheader.i.i
  %5 = ptrtoint ptr %.016.i.i.ptr to i64
  %6 = sub i64 %5, %3                             ; 3 uses
  %7 = icmp sgt i64 %6, 1
  br i1 %7, label %8, label %9, !prof !190

8:                                                ; preds = %4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.016.i.i.ptr, ptr noundef nonnull align 1 dereferenceable(1) %.026.i, i64 %6, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i

9:                                                ; preds = %4
  %10 = icmp eq i64 %6, 1
  br i1 %10, label %bb.b, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i

bb.b:                                             ; preds = %9
  store i8 %i.f, ptr %.016.i.i.ptr, align 1, !tbaa !95
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i: ; preds = %.preheader.i.i, %bb.b, %9, %8
  %.sink.i.i = phi ptr [ %.026.i, %bb.b ], [ %.026.i, %8 ], [ %.026.i, %9 ], [ %.016.i.i.ptr, %.preheader.i.i ]
  store i8 %i.e, ptr %.sink.i.i, align 1, !tbaa !95
  %.019.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %.026.i, i64 2 ; 6 uses
  %i.h = load i8, ptr %.019.i.i.ptr.1, align 1, !tbaa !95 ; 4 uses
  %i.i = load i8, ptr %.026.i, align 1, !tbaa !95 ; 2 uses
  %i.j = icmp ult i8 %i.h, %i.i
  br i1 %i.j, label %11, label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i
  %i.k = load i8, ptr %.016.i.i.ptr, align 1, !tbaa !95 ; 2 uses
  %i.l = icmp ult i8 %i.h, %i.k
  br i1 %i.l, label %.lr.ph.i.i.i.1, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.c, %.lr.ph.i.i.i.1
  %i.m = phi i8 [ %i.n, %.lr.ph.i.i.i.1 ], [ %i.k, %bb.c ]
  %.013.i.i.i.1 = phi ptr [ %.0.i.i.i.1, %.lr.ph.i.i.i.1 ], [ %.016.i.i.ptr, %bb.c ] ; 3 uses
  %.0912.i.i.i.1 = phi ptr [ %.013.i.i.i.1, %.lr.ph.i.i.i.1 ], [ %.019.i.i.ptr.1, %bb.c ]
  store i8 %i.m, ptr %.0912.i.i.i.1, align 1, !tbaa !95
  %.0.i.i.i.1 = getelementptr inbounds i8, ptr %.013.i.i.i.1, i64 -1 ; 2 uses
  %i.n = load i8, ptr %.0.i.i.i.1, align 1, !tbaa !95 ; 2 uses
  %i.o = icmp ult i8 %i.h, %i.n
  br i1 %i.o, label %.lr.ph.i.i.i.1, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.1, !llvm.loop !562

11:                                               ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i
  %12 = ptrtoint ptr %.019.i.i.ptr.1 to i64
  %13 = sub i64 %12, %3                           ; 3 uses
  %14 = icmp sgt i64 %13, 1
  br i1 %14, label %18, label %15, !prof !190

15:                                               ; preds = %11
  %16 = icmp eq i64 %13, 1
  br i1 %16, label %bb.d, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.1

bb.d:                                             ; preds = %15
  %17 = getelementptr inbounds nuw i8, ptr %.026.i, i64 2
  store i8 %i.i, ptr %17, align 1, !tbaa !95
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.1

18:                                               ; preds = %11
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.016.i.i.ptr, ptr noundef nonnull align 1 dereferenceable(1) %.026.i, i64 %13, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.1

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.1: ; preds = %.lr.ph.i.i.i.1, %18, %bb.d, %15, %bb.c
  %.sink.i.i.1 = phi ptr [ %.026.i, %bb.d ], [ %.026.i, %18 ], [ %.026.i, %15 ], [ %.019.i.i.ptr.1, %bb.c ], [ %.013.i.i.i.1, %.lr.ph.i.i.i.1 ]
  store i8 %i.h, ptr %.sink.i.i.1, align 1, !tbaa !95
  %.019.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %.026.i, i64 3 ; 6 uses
  %i.p = load i8, ptr %.019.i.i.ptr.2, align 1, !tbaa !95 ; 4 uses
  %i.q = load i8, ptr %.026.i, align 1, !tbaa !95 ; 2 uses
  %i.r = icmp ult i8 %i.p, %i.q
  br i1 %i.r, label %19, label %bb.e

bb.e:                                             ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.1
  %i.s = load i8, ptr %.019.i.i.ptr.1, align 1, !tbaa !95 ; 2 uses
  %i.t = icmp ult i8 %i.p, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i.2, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.e, %.lr.ph.i.i.i.2
  %i.u = phi i8 [ %i.v, %.lr.ph.i.i.i.2 ], [ %i.s, %bb.e ]
  %.013.i.i.i.2 = phi ptr [ %.0.i.i.i.2, %.lr.ph.i.i.i.2 ], [ %.019.i.i.ptr.1, %bb.e ] ; 3 uses
  %.0912.i.i.i.2 = phi ptr [ %.013.i.i.i.2, %.lr.ph.i.i.i.2 ], [ %.019.i.i.ptr.2, %bb.e ]
  store i8 %i.u, ptr %.0912.i.i.i.2, align 1, !tbaa !95
  %.0.i.i.i.2 = getelementptr inbounds i8, ptr %.013.i.i.i.2, i64 -1 ; 2 uses
  %i.v = load i8, ptr %.0.i.i.i.2, align 1, !tbaa !95 ; 2 uses
  %i.w = icmp ult i8 %i.p, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i.2, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.2, !llvm.loop !562

19:                                               ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.1
  %20 = ptrtoint ptr %.019.i.i.ptr.2 to i64
  %21 = sub i64 %20, %3                           ; 3 uses
  %22 = icmp sgt i64 %21, 1
  br i1 %22, label %bb.f, label %23, !prof !190

23:                                               ; preds = %19
  %24 = icmp eq i64 %21, 1
  br i1 %24, label %25, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.2

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %.026.i, i64 3
  store i8 %i.q, ptr %26, align 1, !tbaa !95
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.2

bb.f:                                             ; preds = %19
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.016.i.i.ptr, ptr noundef nonnull align 1 dereferenceable(1) %.026.i, i64 %21, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.2

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.2: ; preds = %.lr.ph.i.i.i.2, %bb.f, %25, %23, %bb.e
  %.sink.i.i.2 = phi ptr [ %.026.i, %25 ], [ %.026.i, %bb.f ], [ %.026.i, %23 ], [ %.019.i.i.ptr.2, %bb.e ], [ %.013.i.i.i.2, %.lr.ph.i.i.i.2 ]
  store i8 %i.p, ptr %.sink.i.i.2, align 1, !tbaa !95
  %.019.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %.026.i, i64 4 ; 6 uses
  %i.x = load i8, ptr %.019.i.i.ptr.3, align 1, !tbaa !95 ; 4 uses
  %i.y = load i8, ptr %.026.i, align 1, !tbaa !95 ; 2 uses
  %i.z = icmp ult i8 %i.x, %i.y
  br i1 %i.z, label %27, label %bb.g

bb.g:                                             ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.2
  %i.aa = load i8, ptr %.019.i.i.ptr.2, align 1, !tbaa !95 ; 2 uses
  %i.ab = icmp ult i8 %i.x, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i.i.3, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.g, %.lr.ph.i.i.i.3
  %i.ac = phi i8 [ %i.ad, %.lr.ph.i.i.i.3 ], [ %i.aa, %bb.g ]
  %.013.i.i.i.3 = phi ptr [ %.0.i.i.i.3, %.lr.ph.i.i.i.3 ], [ %.019.i.i.ptr.2, %bb.g ] ; 3 uses
  %.0912.i.i.i.3 = phi ptr [ %.013.i.i.i.3, %.lr.ph.i.i.i.3 ], [ %.019.i.i.ptr.3, %bb.g ]
  store i8 %i.ac, ptr %.0912.i.i.i.3, align 1, !tbaa !95
  %.0.i.i.i.3 = getelementptr inbounds i8, ptr %.013.i.i.i.3, i64 -1 ; 2 uses
  %i.ad = load i8, ptr %.0.i.i.i.3, align 1, !tbaa !95 ; 2 uses
  %i.ae = icmp ult i8 %i.x, %i.ad
  br i1 %i.ae, label %.lr.ph.i.i.i.3, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.3, !llvm.loop !562

27:                                               ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.2
  %28 = ptrtoint ptr %.019.i.i.ptr.3 to i64
  %29 = sub i64 %28, %3                           ; 3 uses
  %30 = icmp sgt i64 %29, 1
  br i1 %30, label %34, label %31, !prof !190

31:                                               ; preds = %27
  %32 = icmp eq i64 %29, 1
  br i1 %32, label %bb.h, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.3

bb.h:                                             ; preds = %31
  %33 = getelementptr inbounds nuw i8, ptr %.026.i, i64 4
  store i8 %i.y, ptr %33, align 1, !tbaa !95
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.3

34:                                               ; preds = %27
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.016.i.i.ptr, ptr noundef nonnull align 1 dereferenceable(1) %.026.i, i64 %29, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.3

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.3: ; preds = %.lr.ph.i.i.i.3, %34, %bb.h, %31, %bb.g
  %.sink.i.i.3 = phi ptr [ %.026.i, %bb.h ], [ %.026.i, %34 ], [ %.026.i, %31 ], [ %.019.i.i.ptr.3, %bb.g ], [ %.013.i.i.i.3, %.lr.ph.i.i.i.3 ]
  store i8 %i.x, ptr %.sink.i.i.3, align 1, !tbaa !95
  %.019.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %.026.i, i64 5 ; 6 uses
  %i.af = load i8, ptr %.019.i.i.ptr.4, align 1, !tbaa !95 ; 4 uses
  %i.ag = load i8, ptr %.026.i, align 1, !tbaa !95 ; 2 uses
  %i.ah = icmp ult i8 %i.af, %i.ag
  br i1 %i.ah, label %35, label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.3
  %i.ai = load i8, ptr %.019.i.i.ptr.3, align 1, !tbaa !95 ; 2 uses
  %i.aj = icmp ult i8 %i.af, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i.i.4, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %bb.i, %.lr.ph.i.i.i.4
  %i.ak = phi i8 [ %i.al, %.lr.ph.i.i.i.4 ], [ %i.ai, %bb.i ]
  %.013.i.i.i.4 = phi ptr [ %.0.i.i.i.4, %.lr.ph.i.i.i.4 ], [ %.019.i.i.ptr.3, %bb.i ] ; 3 uses
  %.0912.i.i.i.4 = phi ptr [ %.013.i.i.i.4, %.lr.ph.i.i.i.4 ], [ %.019.i.i.ptr.4, %bb.i ]
  store i8 %i.ak, ptr %.0912.i.i.i.4, align 1, !tbaa !95
  %.0.i.i.i.4 = getelementptr inbounds i8, ptr %.013.i.i.i.4, i64 -1 ; 2 uses
  %i.al = load i8, ptr %.0.i.i.i.4, align 1, !tbaa !95 ; 2 uses
  %i.am = icmp ult i8 %i.af, %i.al
  br i1 %i.am, label %.lr.ph.i.i.i.4, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.4, !llvm.loop !562

35:                                               ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.3
  %36 = ptrtoint ptr %.019.i.i.ptr.4 to i64
  %37 = sub i64 %36, %3                           ; 3 uses
  %38 = icmp sgt i64 %37, 1
  br i1 %38, label %bb.j, label %39, !prof !190

39:                                               ; preds = %35
  %40 = icmp eq i64 %37, 1
  br i1 %40, label %41, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.4

41:                                               ; preds = %39
  %42 = getelementptr inbounds nuw i8, ptr %.026.i, i64 5
  store i8 %i.ag, ptr %42, align 1, !tbaa !95
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.4

bb.j:                                             ; preds = %35
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.016.i.i.ptr, ptr noundef nonnull align 1 dereferenceable(1) %.026.i, i64 %37, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.4

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.4: ; preds = %.lr.ph.i.i.i.4, %bb.j, %41, %39, %bb.i
  %.sink.i.i.4 = phi ptr [ %.026.i, %41 ], [ %.026.i, %bb.j ], [ %.026.i, %39 ], [ %.019.i.i.ptr.4, %bb.i ], [ %.013.i.i.i.4, %.lr.ph.i.i.i.4 ]
  store i8 %i.af, ptr %.sink.i.i.4, align 1, !tbaa !95
  %.019.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %.026.i, i64 6 ; 4 uses
  %i.an = load i8, ptr %.019.i.i.ptr.5, align 1, !tbaa !95 ; 4 uses
  %i.ao = load i8, ptr %.026.i, align 1, !tbaa !95 ; 2 uses
  %i.ap = icmp ult i8 %i.an, %i.ao
  br i1 %i.ap, label %43, label %bb.k

bb.k:                                             ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.4
  %i.aq = load i8, ptr %.019.i.i.ptr.4, align 1, !tbaa !95 ; 2 uses
  %i.ar = icmp ult i8 %i.an, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i.i.5, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.5

.lr.ph.i.i.i.5:                                   ; preds = %bb.k, %.lr.ph.i.i.i.5
  %i.as = phi i8 [ %i.at, %.lr.ph.i.i.i.5 ], [ %i.aq, %bb.k ]
  %.013.i.i.i.5 = phi ptr [ %.0.i.i.i.5, %.lr.ph.i.i.i.5 ], [ %.019.i.i.ptr.4, %bb.k ] ; 3 uses
  %.0912.i.i.i.5 = phi ptr [ %.013.i.i.i.5, %.lr.ph.i.i.i.5 ], [ %.019.i.i.ptr.5, %bb.k ]
  store i8 %i.as, ptr %.0912.i.i.i.5, align 1, !tbaa !95
  %.0.i.i.i.5 = getelementptr inbounds i8, ptr %.013.i.i.i.5, i64 -1 ; 2 uses
  %i.at = load i8, ptr %.0.i.i.i.5, align 1, !tbaa !95 ; 2 uses
  %i.au = icmp ult i8 %i.an, %i.at
  br i1 %i.au, label %.lr.ph.i.i.i.5, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.5, !llvm.loop !562

43:                                               ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.4
  %44 = ptrtoint ptr %.019.i.i.ptr.5 to i64
  %45 = sub i64 %44, %3                           ; 3 uses
  %46 = icmp sgt i64 %45, 1
  br i1 %46, label %bb.l, label %47, !prof !190

47:                                               ; preds = %43
  %48 = icmp eq i64 %45, 1
  br i1 %48, label %49, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.5

49:                                               ; preds = %47
  %50 = getelementptr inbounds nuw i8, ptr %.026.i, i64 6
  store i8 %i.ao, ptr %50, align 1, !tbaa !95
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.5

bb.l:                                             ; preds = %43
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.016.i.i.ptr, ptr noundef nonnull align 1 dereferenceable(1) %.026.i, i64 %45, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.5

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.5: ; preds = %.lr.ph.i.i.i.5, %bb.l, %49, %47, %bb.k
  %.sink.i.i.5 = phi ptr [ %.026.i, %49 ], [ %.026.i, %bb.l ], [ %.026.i, %47 ], [ %.019.i.i.ptr.5, %bb.k ], [ %.013.i.i.i.5, %.lr.ph.i.i.i.5 ]
  store i8 %i.an, ptr %.sink.i.i.5, align 1, !tbaa !95
  %i.av = getelementptr inbounds nuw i8, ptr %.026.i, i64 7 ; 3 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.a, %i.aw
  %.not.i = icmp slt i64 %i.ax, 7
  br i1 %.not.i, label %._crit_edge.i, label %.preheader.i.i, !llvm.loop !565

._crit_edge.i:                                    ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.5, %bb.a
  %.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.av, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.5 ] ; 30 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.aw, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i.i.5 ] ; 5 uses
  %.0.lcssa.i59 = ptrtoaddr ptr %.0.lcssa.i to i64 ; 2 uses
  %i.ay = icmp eq ptr %.0.lcssa.i, %1
  br i1 %i.ay, label %_ZSt22__chunk_insertion_sortIPN9Stockfish6SquareElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_.exit, label %.preheader.i10.i

.preheader.i10.i:                                 ; preds = %._crit_edge.i
  %.016.i11.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1 ; 8 uses
  %.not17.i12.i = icmp eq ptr %.016.i11.i, %1
  br i1 %.not17.i12.i, label %_ZSt22__chunk_insertion_sortIPN9Stockfish6SquareElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_.exit, label %.lr.ph.i13.i.preheader

.lr.ph.i13.i.preheader:                           ; preds = %.preheader.i10.i
  %i.az = xor i64 %.0.lcssa.i59, -1
  %i.ba = add i64 %i.az, %i.a
  %i.bb = add i64 %i.a, -2
  %i.bc = sub i64 %i.bb, %.0.lcssa.i59
  %xtraiter = and i64 %i.ba, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i13.i.prol.loopexit, label %.lr.ph.i13.i.prol

.lr.ph.i13.i.prol:                                ; preds = %.lr.ph.i13.i.preheader, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.prol
  %.019.i14.i.prol = phi ptr [ %.0.i18.i.prol, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.prol ], [ %.016.i11.i, %.lr.ph.i13.i.preheader ] ; 7 uses
  %.pn18.i15.i.prol = phi ptr [ %.019.i14.i.prol, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.prol ], [ %.0.lcssa.i, %.lr.ph.i13.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.prol ], [ 0, %.lr.ph.i13.i.preheader ]
  %i.bd = load i8, ptr %.019.i14.i.prol, align 1, !tbaa !95 ; 4 uses
  %i.be = load i8, ptr %.0.lcssa.i, align 1, !tbaa !95 ; 2 uses
  %i.bf = icmp ult i8 %i.bd, %i.be
  br i1 %i.bf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i13.i.prol
  %i.bg = load i8, ptr %.pn18.i15.i.prol, align 1, !tbaa !95 ; 2 uses
  %i.bh = icmp ult i8 %i.bd, %i.bg
  br i1 %i.bh, label %.lr.ph.i.i20.i.prol, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.prol

.lr.ph.i.i20.i.prol:                              ; preds = %bb.m, %.lr.ph.i.i20.i.prol
  %i.bi = phi i8 [ %i.bj, %.lr.ph.i.i20.i.prol ], [ %i.bg, %bb.m ]
  %.013.i.i21.i.prol = phi ptr [ %.0.i.i23.i.prol, %.lr.ph.i.i20.i.prol ], [ %.pn18.i15.i.prol, %bb.m ] ; 3 uses
  %.0912.i.i22.i.prol = phi ptr [ %.013.i.i21.i.prol, %.lr.ph.i.i20.i.prol ], [ %.019.i14.i.prol, %bb.m ]
  store i8 %i.bi, ptr %.0912.i.i22.i.prol, align 1, !tbaa !95
  %.0.i.i23.i.prol = getelementptr inbounds i8, ptr %.013.i.i21.i.prol, i64 -1 ; 2 uses
  %i.bj = load i8, ptr %.0.i.i23.i.prol, align 1, !tbaa !95 ; 2 uses
  %i.bk = icmp ult i8 %i.bd, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i20.i.prol, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.prol, !llvm.loop !562

bb.n:                                             ; preds = %.lr.ph.i13.i.prol
  %i.bl = ptrtoint ptr %.019.i14.i.prol to i64
  %i.bm = sub i64 %i.bl, %.lcssa.i                ; 3 uses
  %i.bn = icmp sgt i64 %i.bm, 1
  br i1 %i.bn, label %bb.q, label %bb.o, !prof !190

bb.o:                                             ; preds = %bb.n
  %i.bo = icmp eq i64 %i.bm, 1
  br i1 %i.bo, label %bb.p, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.prol

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn18.i15.i.prol, i64 1
  store i8 %i.be, ptr %i.bp, align 1, !tbaa !95
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.prol

bb.q:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.016.i11.i, ptr noundef nonnull align 1 dereferenceable(1) %.0.lcssa.i, i64 %i.bm, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.prol

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.prol: ; preds = %.lr.ph.i.i20.i.prol, %bb.q, %bb.p, %bb.o, %bb.m
  %.sink.i17.i.prol = phi ptr [ %.0.lcssa.i, %bb.p ], [ %.0.lcssa.i, %bb.q ], [ %.0.lcssa.i, %bb.o ], [ %.019.i14.i.prol, %bb.m ], [ %.013.i.i21.i.prol, %.lr.ph.i.i20.i.prol ]
  store i8 %i.bd, ptr %.sink.i17.i.prol, align 1, !tbaa !95
  %.0.i18.i.prol = getelementptr inbounds nuw i8, ptr %.019.i14.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i13.i.prol.loopexit, label %.lr.ph.i13.i.prol, !llvm.loop !566

.lr.ph.i13.i.prol.loopexit:                       ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.prol, %.lr.ph.i13.i.preheader
  %.019.i14.i.unr = phi ptr [ %.016.i11.i, %.lr.ph.i13.i.preheader ], [ %.0.i18.i.prol, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.prol ]
  %.pn18.i15.i.unr = phi ptr [ %.0.lcssa.i, %.lr.ph.i13.i.preheader ], [ %.019.i14.i.prol, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.prol ]
  %i.bq = icmp ult i64 %i.bc, 3
  br i1 %i.bq, label %_ZSt22__chunk_insertion_sortIPN9Stockfish6SquareElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_.exit, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %.lr.ph.i13.i.prol.loopexit, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.3
  %.019.i14.i = phi ptr [ %.0.i18.i.3, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.3 ], [ %.019.i14.i.unr, %.lr.ph.i13.i.prol.loopexit ] ; 13 uses
  %.pn18.i15.i = phi ptr [ %.0.i18.i.2, %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.3 ], [ %.pn18.i15.i.unr, %.lr.ph.i13.i.prol.loopexit ] ; 3 uses
  %i.br = load i8, ptr %.019.i14.i, align 1, !tbaa !95 ; 4 uses
  %i.bs = load i8, ptr %.0.lcssa.i, align 1, !tbaa !95 ; 2 uses
  %i.bt = icmp ult i8 %i.br, %i.bs
  br i1 %i.bt, label %bb.r, label %bb.v

bb.r:                                             ; preds = %.lr.ph.i13.i
  %i.bu = ptrtoint ptr %.019.i14.i to i64
  %i.bv = sub i64 %i.bu, %.lcssa.i                ; 3 uses
  %i.bw = icmp sgt i64 %i.bv, 1
  br i1 %i.bw, label %bb.s, label %bb.t, !prof !190

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.016.i11.i, ptr noundef nonnull align 1 dereferenceable(1) %.0.lcssa.i, i64 %i.bv, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i

bb.t:                                             ; preds = %bb.r
  %i.bx = icmp eq i64 %i.bv, 1
  br i1 %i.bx, label %bb.u, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i

bb.u:                                             ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %.pn18.i15.i, i64 1
  store i8 %i.bs, ptr %i.by, align 1, !tbaa !95
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i

bb.v:                                             ; preds = %.lr.ph.i13.i
  %i.bz = load i8, ptr %.pn18.i15.i, align 1, !tbaa !95 ; 2 uses
  %i.ca = icmp ult i8 %i.br, %i.bz
  br i1 %i.ca, label %.lr.ph.i.i20.i, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i

.lr.ph.i.i20.i:                                   ; preds = %bb.v, %.lr.ph.i.i20.i
  %i.cb = phi i8 [ %i.cc, %.lr.ph.i.i20.i ], [ %i.bz, %bb.v ]
  %.013.i.i21.i = phi ptr [ %.0.i.i23.i, %.lr.ph.i.i20.i ], [ %.pn18.i15.i, %bb.v ] ; 3 uses
  %.0912.i.i22.i = phi ptr [ %.013.i.i21.i, %.lr.ph.i.i20.i ], [ %.019.i14.i, %bb.v ]
  store i8 %i.cb, ptr %.0912.i.i22.i, align 1, !tbaa !95
  %.0.i.i23.i = getelementptr inbounds i8, ptr %.013.i.i21.i, i64 -1 ; 2 uses
  %i.cc = load i8, ptr %.0.i.i23.i, align 1, !tbaa !95 ; 2 uses
  %i.cd = icmp ult i8 %i.br, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i20.i, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i, !llvm.loop !562

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i: ; preds = %.lr.ph.i.i20.i, %bb.v, %bb.u, %bb.t, %bb.s
  %.sink.i17.i = phi ptr [ %.0.lcssa.i, %bb.u ], [ %.0.lcssa.i, %bb.s ], [ %.0.lcssa.i, %bb.t ], [ %.019.i14.i, %bb.v ], [ %.013.i.i21.i, %.lr.ph.i.i20.i ]
  store i8 %i.br, ptr %.sink.i17.i, align 1, !tbaa !95
  %.0.i18.i = getelementptr inbounds nuw i8, ptr %.019.i14.i, i64 1 ; 6 uses
  %i.ce = load i8, ptr %.0.i18.i, align 1, !tbaa !95 ; 4 uses
  %i.cf = load i8, ptr %.0.lcssa.i, align 1, !tbaa !95 ; 2 uses
  %i.cg = icmp ult i8 %i.ce, %i.cf
  br i1 %i.cg, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i
  %i.ch = load i8, ptr %.019.i14.i, align 1, !tbaa !95 ; 2 uses
  %i.ci = icmp ult i8 %i.ce, %i.ch
  br i1 %i.ci, label %.lr.ph.i.i20.i.1, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.1

.lr.ph.i.i20.i.1:                                 ; preds = %bb.w, %.lr.ph.i.i20.i.1
  %i.cj = phi i8 [ %i.ck, %.lr.ph.i.i20.i.1 ], [ %i.ch, %bb.w ]
  %.013.i.i21.i.1 = phi ptr [ %.0.i.i23.i.1, %.lr.ph.i.i20.i.1 ], [ %.019.i14.i, %bb.w ] ; 3 uses
  %.0912.i.i22.i.1 = phi ptr [ %.013.i.i21.i.1, %.lr.ph.i.i20.i.1 ], [ %.0.i18.i, %bb.w ]
  store i8 %i.cj, ptr %.0912.i.i22.i.1, align 1, !tbaa !95
  %.0.i.i23.i.1 = getelementptr inbounds i8, ptr %.013.i.i21.i.1, i64 -1 ; 2 uses
  %i.ck = load i8, ptr %.0.i.i23.i.1, align 1, !tbaa !95 ; 2 uses
  %i.cl = icmp ult i8 %i.ce, %i.ck
  br i1 %i.cl, label %.lr.ph.i.i20.i.1, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.1, !llvm.loop !562

bb.x:                                             ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i
  %i.cm = ptrtoint ptr %.0.i18.i to i64
  %i.cn = sub i64 %i.cm, %.lcssa.i                ; 3 uses
  %i.co = icmp sgt i64 %i.cn, 1
  br i1 %i.co, label %bb.aa, label %bb.y, !prof !190

bb.y:                                             ; preds = %bb.x
  %i.cp = icmp eq i64 %i.cn, 1
  br i1 %i.cp, label %bb.z, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.1

bb.z:                                             ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %.019.i14.i, i64 1
  store i8 %i.cf, ptr %i.cq, align 1, !tbaa !95
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.1

bb.aa:                                            ; preds = %bb.x
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.016.i11.i, ptr noundef nonnull align 1 dereferenceable(1) %.0.lcssa.i, i64 %i.cn, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.1

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.1: ; preds = %.lr.ph.i.i20.i.1, %bb.aa, %bb.z, %bb.y, %bb.w
  %.sink.i17.i.1 = phi ptr [ %.0.lcssa.i, %bb.z ], [ %.0.lcssa.i, %bb.aa ], [ %.0.lcssa.i, %bb.y ], [ %.0.i18.i, %bb.w ], [ %.013.i.i21.i.1, %.lr.ph.i.i20.i.1 ]
  store i8 %i.ce, ptr %.sink.i17.i.1, align 1, !tbaa !95
  %.0.i18.i.1 = getelementptr inbounds nuw i8, ptr %.019.i14.i, i64 2 ; 6 uses
  %i.cr = load i8, ptr %.0.i18.i.1, align 1, !tbaa !95 ; 4 uses
  %i.cs = load i8, ptr %.0.lcssa.i, align 1, !tbaa !95 ; 2 uses
  %i.ct = icmp ult i8 %i.cr, %i.cs
  br i1 %i.ct, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.1
  %i.cu = load i8, ptr %.0.i18.i, align 1, !tbaa !95 ; 2 uses
  %i.cv = icmp ult i8 %i.cr, %i.cu
  br i1 %i.cv, label %.lr.ph.i.i20.i.2, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.2

.lr.ph.i.i20.i.2:                                 ; preds = %bb.ab, %.lr.ph.i.i20.i.2
  %i.cw = phi i8 [ %i.cx, %.lr.ph.i.i20.i.2 ], [ %i.cu, %bb.ab ]
  %.013.i.i21.i.2 = phi ptr [ %.0.i.i23.i.2, %.lr.ph.i.i20.i.2 ], [ %.0.i18.i, %bb.ab ] ; 3 uses
  %.0912.i.i22.i.2 = phi ptr [ %.013.i.i21.i.2, %.lr.ph.i.i20.i.2 ], [ %.0.i18.i.1, %bb.ab ]
  store i8 %i.cw, ptr %.0912.i.i22.i.2, align 1, !tbaa !95
  %.0.i.i23.i.2 = getelementptr inbounds i8, ptr %.013.i.i21.i.2, i64 -1 ; 2 uses
  %i.cx = load i8, ptr %.0.i.i23.i.2, align 1, !tbaa !95 ; 2 uses
  %i.cy = icmp ult i8 %i.cr, %i.cx
  br i1 %i.cy, label %.lr.ph.i.i20.i.2, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.2, !llvm.loop !562

bb.ac:                                            ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.1
  %i.cz = ptrtoint ptr %.0.i18.i.1 to i64
  %i.da = sub i64 %i.cz, %.lcssa.i                ; 3 uses
  %i.db = icmp sgt i64 %i.da, 1
  br i1 %i.db, label %bb.af, label %bb.ad, !prof !190

bb.ad:                                            ; preds = %bb.ac
  %i.dc = icmp eq i64 %i.da, 1
  br i1 %i.dc, label %bb.ae, label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.2

bb.ae:                                            ; preds = %bb.ad
  %i.dd = getelementptr inbounds nuw i8, ptr %.019.i14.i, i64 2
  store i8 %i.cs, ptr %i.dd, align 1, !tbaa !95
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.2

bb.af:                                            ; preds = %bb.ac
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.016.i11.i, ptr noundef nonnull align 1 dereferenceable(1) %.0.lcssa.i, i64 %i.da, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.2

_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.2: ; preds = %.lr.ph.i.i20.i.2, %bb.af, %bb.ae, %bb.ad, %bb.ab
  %.sink.i17.i.2 = phi ptr [ %.0.lcssa.i, %bb.ae ], [ %.0.lcssa.i, %bb.af ], [ %.0.lcssa.i, %bb.ad ], [ %.0.i18.i.1, %bb.ab ], [ %.013.i.i21.i.2, %.lr.ph.i.i20.i.2 ]
  store i8 %i.cr, ptr %.sink.i17.i.2, align 1, !tbaa !95
  %.0.i18.i.2 = getelementptr inbounds nuw i8, ptr %.019.i14.i, i64 3 ; 5 uses
  %i.de = load i8, ptr %.0.i18.i.2, align 1, !tbaa !95 ; 4 uses
  %i.df = load i8, ptr %.0.lcssa.i, align 1, !tbaa !95 ; 2 uses
  %i.dg = icmp ult i8 %i.de, %i.df
  br i1 %i.dg, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit.i16.i.2
  %i.dh = load i8, ptr %.0.i18.i.1, align 1, !tbaa !95 ; 2 uses
end_hunk_7
