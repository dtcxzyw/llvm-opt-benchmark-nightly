Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CFG?download=true
inline.NumInlined: 8087
inline.NumDeleted: 4157
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12_GLOBAL__N_110CFGBuilder23addAutomaticObjHandlingENS_10LocalScope14const_iteratorES2_PN5clang4StmtE:bb.a
  %i.d = load i8, ptr %i.c, align 8, !tbaa !238, !range !146, !noundef !138
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.g = load i8, ptr %i.f, align 1, !tbaa !179, !range !146, !noundef !138
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.j = load i8, ptr %i.i, align 4, !tbaa !145, !range !146, !noundef !138
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.ap

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.l = icmp eq ptr %1, %3                       ; 2 uses
  %i.m = icmp eq i32 %2, %4
  %i.n = select i1 %i.l, i1 %i.m, i1 false
  br i1 %i.n, label %bb.ap, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.l, label %bb.f, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110LocalScope14const_iteratorELb1EE9push_backES3_.exit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN12_GLOBAL__N_110CFGBuilder26addAutomaticObjDestructionENS_10LocalScope14const_iteratorES2_PN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef %5)
  br label %bb.ap

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110LocalScope14const_iteratorELb1EE9push_backES3_.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.o, ptr %10, align 8, !tbaa !130
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i32 10, ptr %i.q, align 4, !tbaa !131
  store ptr %1, ptr %i.o, align 8
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 %2, ptr %.sroa.32.0..sroa_idx.i, align 8
  store i32 1, ptr %i.p, align 8, !tbaa !132
  br label %bb.j

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_110LocalScope14const_iteratorppEv.exit
  %i.r = load i32, ptr %i.p, align 8, !tbaa !132  ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !131
  %.not.i75 = icmp ult i32 %i.r, %i.s
  br i1 %.not.i75, label %bb.i, label %bb.h, !prof !52

bb.h:                                             ; preds = %bb.g
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110LocalScope14const_iteratorELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %3, i32 %4)
  %.val57.pre = load i32, ptr %i.p, align 8, !tbaa !132
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110LocalScope14const_iteratorELb1EE9push_backES3_.exit78

bb.i:                                             ; preds = %bb.g
  %i.t = zext i32 %i.r to i64
  %.val.i76 = load ptr, ptr %10, align 8, !tbaa !130
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.val.i76, i64 %i.t ; 2 uses
  store ptr %3, ptr %i.u, align 1
  %.sroa.32.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %4, ptr %.sroa.32.0..sroa_idx.i77, align 1
  %i.v = load i32, ptr %i.p, align 8, !tbaa !132
  %i.w = add i32 %i.v, 1                          ; 2 uses
  store i32 %i.w, ptr %i.p, align 8, !tbaa !132
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110LocalScope14const_iteratorELb1EE9push_backES3_.exit78

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110LocalScope14const_iteratorELb1EE9push_backES3_.exit78: ; preds = %bb.h, %bb.i
  %.val57 = phi i32 [ %.val57.pre, %bb.h ], [ %i.w, %bb.i ] ; 2 uses
  %.val55 = load ptr, ptr %10, align 8, !tbaa !130 ; 3 uses
  %i.x = icmp ugt i32 %.val57, 1
  br i1 %i.x, label %.lr.ph.i.i.preheader, label %._crit_edge

.lr.ph.i.i.preheader:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110LocalScope14const_iteratorELb1EE9push_backES3_.exit78
  %i.y = zext i32 %.val57 to i64
  %.idx = shl nuw nsw i64 %i.y, 4
  %i.z = getelementptr i8, ptr %.val55, i64 %.idx
  %.012.i.i = getelementptr i8, ptr %i.z, i64 -16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.012.i.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %.0913.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.val55, %.lr.ph.i.i.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i, i64 16, i1 false), !tbaa.struct !377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.0913.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.014.i.i, i64 12, i1 false), !tbaa.struct !377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.014.i.i, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !377
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.aa = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 16 ; 2 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.014.i.i, i64 -16 ; 2 uses
  %i.ab = icmp ult ptr %i.aa, %.0.i.i
  br i1 %i.ab, label %.lr.ph.i.i, label %_ZSt7reverseIPN12_GLOBAL__N_110LocalScope14const_iteratorEEvT_S4_.exit, !llvm.loop !761

_ZSt7reverseIPN12_GLOBAL__N_110LocalScope14const_iteratorEEvT_S4_.exit: ; preds = %.lr.ph.i.i
  %.val58.pre = load ptr, ptr %10, align 8, !tbaa !130 ; 4 uses
  %.val59.pre = load i32, ptr %i.p, align 8, !tbaa !132 ; 2 uses
  %.pre121 = zext i32 %.val59.pre to i64
  %.pre122 = shl nuw nsw i64 %.pre121, 4
  %i.ac = icmp ugt i32 %.val59.pre, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.val58.pre, i64 %.pre122 ; 2 uses
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt7reverseIPN12_GLOBAL__N_110LocalScope14const_iteratorEEvT_S4_.exit
  %.sroa.088.0111 = getelementptr inbounds nuw i8, ptr %.val58.pre, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ai = ptrtoint ptr %5 to i64
  %i.aj = and i64 %i.ai, -4                       ; 2 uses
  %i.ak = or disjoint i64 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ap = or disjoint i64 %i.aj, 2
  br label %bb.q

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110LocalScope14const_iteratorELb1EE9push_backES3_.exit, %_ZN12_GLOBAL__N_110LocalScope14const_iteratorppEv.exit
  %.sroa.8.0110 = phi i32 [ %2, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110LocalScope14const_iteratorELb1EE9push_backES3_.exit ], [ %.sroa.8.1, %_ZN12_GLOBAL__N_110LocalScope14const_iteratorppEv.exit ] ; 4 uses
  %.sroa.093.0109 = phi ptr [ %1, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110LocalScope14const_iteratorELb1EE9push_backES3_.exit ], [ %.sroa.093.1, %_ZN12_GLOBAL__N_110LocalScope14const_iteratorppEv.exit ] ; 7 uses
  %.val65 = load ptr, ptr %10, align 8, !tbaa !130
  %.val66 = load i32, ptr %i.p, align 8, !tbaa !132 ; 2 uses
  %i.aq = zext i32 %.val66 to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.val65, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -16
  %.sroa.026.0.copyload = load ptr, ptr %i.as, align 8, !tbaa !177
  %i.at = icmp eq ptr %.sroa.093.0109, %.sroa.026.0.copyload
  br i1 %i.at, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110LocalScope14const_iteratorELb1EE9push_backES3_.exit82, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = load i32, ptr %i.q, align 4, !tbaa !131
  %.not.i79 = icmp ult i32 %.val66, %i.au
  br i1 %.not.i79, label %bb.m, label %bb.l, !prof !52

bb.l:                                             ; preds = %bb.k
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110LocalScope14const_iteratorELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %.sroa.093.0109, i32 %.sroa.8.0110)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110LocalScope14const_iteratorELb1EE9push_backES3_.exit82

bb.m:                                             ; preds = %bb.k
  store ptr %.sroa.093.0109, ptr %i.ar, align 8
  %.sroa.32.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 %.sroa.8.0110, ptr %.sroa.32.0..sroa_idx.i81, align 8
  %i.av = load i32, ptr %i.p, align 8, !tbaa !132
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.p, align 8, !tbaa !132
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110LocalScope14const_iteratorELb1EE9push_backES3_.exit82

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110LocalScope14const_iteratorELb1EE9push_backES3_.exit82: ; preds = %bb.m, %bb.l, %bb.j
  %.not.i83 = icmp eq ptr %.sroa.093.0109, null
  br i1 %.not.i83, label %_ZN12_GLOBAL__N_110LocalScope14const_iteratorppEv.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110LocalScope14const_iteratorELb1EE9push_backES3_.exit82
  %i.ax = add i32 %.sroa.8.0110, -1               ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.o, label %_ZN12_GLOBAL__N_110LocalScope14const_iteratorppEv.exit

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.093.0109, i64 32
  %.sroa.093.0.copyload94 = load ptr, ptr %i.az, align 8, !tbaa !177
  %.sroa.8.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %.sroa.093.0109, i64 40
  %.sroa.8.0.copyload96 = load i32, ptr %.sroa.8.0..sroa_idx95, align 8, !tbaa !178
  br label %_ZN12_GLOBAL__N_110LocalScope14const_iteratorppEv.exit

_ZN12_GLOBAL__N_110LocalScope14const_iteratorppEv.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110LocalScope14const_iteratorELb1EE9push_backES3_.exit82, %bb.n, %bb.o
  %.sroa.093.1 = phi ptr [ null, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110LocalScope14const_iteratorELb1EE9push_backES3_.exit82 ], [ %.sroa.093.0.copyload94, %bb.o ], [ %.sroa.093.0109, %bb.n ] ; 2 uses
  %.sroa.8.1 = phi i32 [ %.sroa.8.0110, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110LocalScope14const_iteratorELb1EE9push_backES3_.exit82 ], [ %.sroa.8.0.copyload96, %bb.o ], [ %i.ax, %bb.n ] ; 2 uses
  %i.ba = icmp ne ptr %.sroa.093.1, %3
  %i.bb = icmp ne i32 %.sroa.8.1, %4
  %.not6.i = select i1 %i.ba, i1 true, i1 %i.bb
  br i1 %.not6.i, label %bb.j, label %bb.g, !llvm.loop !762

._crit_edge.loopexit:                             ; preds = %_ZN12_GLOBAL__N_110CFGBuilder20addScopeExitHandlingENS_10LocalScope14const_iteratorES2_PN5clang4StmtE.exit
  %.pre = load ptr, ptr %10, align 8, !tbaa !130
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110LocalScope14const_iteratorELb1EE9push_backES3_.exit78, %._crit_edge.loopexit, %_ZSt7reverseIPN12_GLOBAL__N_110LocalScope14const_iteratorEEvT_S4_.exit
  %i.bc = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %.val58.pre, %_ZSt7reverseIPN12_GLOBAL__N_110LocalScope14const_iteratorEEvT_S4_.exit ], [ %.val55, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_110LocalScope14const_iteratorELb1EE9push_backES3_.exit78 ] ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.o
  br i1 %i.bd, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_110LocalScope14const_iteratorELj10EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.bc) #24
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_110LocalScope14const_iteratorELj10EED2Ev.exit

_ZN4llvm11SmallVectorIN12_GLOBAL__N_110LocalScope14const_iteratorELj10EED2Ev.exit: ; preds = %._crit_edge, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.ap

bb.q:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_110CFGBuilder20addScopeExitHandlingENS_10LocalScope14const_iteratorES2_PN5clang4StmtE.exit
  %.sroa.088.0115 = phi ptr [ %.sroa.088.0111, %.lr.ph ], [ %.sroa.088.0, %_ZN12_GLOBAL__N_110CFGBuilder20addScopeExitHandlingENS_10LocalScope14const_iteratorES2_PN5clang4StmtE.exit ] ; 3 uses
  %.sroa.7.0113 = phi ptr [ %.val58.pre, %.lr.ph ], [ %i.gu, %_ZN12_GLOBAL__N_110CFGBuilder20addScopeExitHandlingENS_10LocalScope14const_iteratorES2_PN5clang4StmtE.exit ] ; 6 uses
  %.sroa.010.0.copyload = load ptr, ptr %.sroa.7.0113, align 8, !tbaa !177 ; 3 uses
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.0113, i64 8 ; 2 uses
  %.val48 = load ptr, ptr %.sroa.088.0115, align 8, !tbaa !378 ; 4 uses
  %i.be = icmp eq ptr %.val48, %.sroa.010.0.copyload
  br i1 %i.be, label %_ZN12_GLOBAL__N_110CFGBuilder20addScopeExitHandlingENS_10LocalScope14const_iteratorES2_PN5clang4StmtE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.0113, i64 24
  %.sroa.28.0.copyload = load i32, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !178 ; 2 uses
  %.sroa.25.0.copyload = load i32, ptr %.sroa.211.0..sroa_idx, align 8, !tbaa !178 ; 2 uses
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !137 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 60
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !145, !range !146, !noundef !138
  %i.bi = trunc nuw i8 %i.bh to i1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !238, !range !146
  %i.bj = trunc nuw i8 %.pre.i to i1              ; 2 uses
  br i1 %i.bi, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.bj, label %.thread.i, label %_ZN12_GLOBAL__N_110CFGBuilder20addScopeExitHandlingENS_10LocalScope14const_iteratorES2_PN5clang4StmtE.exit

bb.t:                                             ; preds = %bb.r
  br i1 %i.bj, label %.thread.i, label %_ZN12_GLOBAL__N_110CFGBuilder14appendScopeEndEPN5clang8CFGBlockEPKNS1_7VarDeclEPKNS1_4StmtE.exit.i

.thread.i:                                        ; preds = %bb.t, %bb.s
  %i.bk = load ptr, ptr %i.ae, align 8, !tbaa !136 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %bb.u, label %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit.i

bb.u:                                             ; preds = %.thread.i
  %i.bl = load ptr, ptr %i.af, align 8, !tbaa !133
  %i.bm = call noundef ptr @_ZN5clang3CFG11createBlockEv(ptr noundef nonnull align 8 dereferenceable(112) %i.bl) ; 3 uses
  %i.bn = load ptr, ptr %i.ag, align 8, !tbaa !135 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_110CFGBuilder11createBlockEb.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @_ZN5clang8CFGBlock13AdjacentBlockC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.bn, i1 noundef zeroext true) #24
  %i.bo = load ptr, ptr %i.af, align 8, !tbaa !133
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %7, align 8
  %i.br = load i64, ptr %i.ah, align 8
  call void @_ZN5clang8CFGBlock12addSuccessorENS0_13AdjacentBlockERNS_17BumpVectorContextE(ptr noundef nonnull align 8 dereferenceable(120) %i.bm, ptr %i.bq, i64 %i.br, ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN12_GLOBAL__N_110CFGBuilder11createBlockEb.exit.i.i

_ZN12_GLOBAL__N_110CFGBuilder11createBlockEb.exit.i.i: ; preds = %bb.v, %bb.u
  store ptr %i.bm, ptr %i.ae, align 8, !tbaa !136
  %.val38.pre.i = load ptr, ptr %i.a, align 8, !tbaa !137
  br label %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit.i

_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit.i: ; preds = %_ZN12_GLOBAL__N_110CFGBuilder11createBlockEb.exit.i.i, %.thread.i
  %.val38.i = phi ptr [ %i.bf, %.thread.i ], [ %.val38.pre.i, %_ZN12_GLOBAL__N_110CFGBuilder11createBlockEb.exit.i.i ] ; 2 uses
  %11 = phi ptr [ %i.bk, %.thread.i ], [ %i.bm, %_ZN12_GLOBAL__N_110CFGBuilder11createBlockEb.exit.i.i ] ; 5 uses
  %12 = getelementptr i8, ptr %.val48, i64 8
  %.val36.val.i = load ptr, ptr %12, align 8, !tbaa !375
  %.val36.val.val.i = load ptr, ptr %.val36.val.i, align 8, !tbaa !376
  %.val38.pre.i.a = load ptr, ptr %i.af, align 8
  %.phi.trans.insert94.i = getelementptr i8, ptr %.val38.i, i64 64
  %.val38.val.pre.i = load i8, ptr %.phi.trans.insert94.i, align 8, !tbaa !238, !range !146, !noundef !138
  %i.bs = trunc nuw i8 %.val38.val.pre.i to i1
  br i1 %i.bs, label %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit.thread.i, label %_ZN12_GLOBAL__N_110CFGBuilder14appendScopeEndEPN5clang8CFGBlockEPKNS1_7VarDeclEPKNS1_4StmtE.exit.i

_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit.thread.i: ; preds = %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !73 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !77 ; 2 uses
  %i.bx = icmp ult ptr %i.bu, %i.bw
  br i1 %i.bx, label %_ZN5clang8CFGBlock14appendScopeEndEPKNS_7VarDeclEPKNS_4StmtERNS_17BumpVectorContextE.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit.thread.i
  %i.by = getelementptr inbounds nuw i8, ptr %.val38.pre.i.a, i64 32
  %i.bz = load ptr, ptr %11, align 8, !tbaa !72   ; 2 uses
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 3
  %spec.select.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cd, i64 1) ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.by, align 8
  %i.ce = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8
  %i.cf = inttoptr i64 %i.ce to ptr               ; 4 uses
  %i.cg = shl i64 %spec.select.i.i.i.i.i.i, 4     ; 3 uses
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !50 ; 2 uses
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = add i64 %i.cg, %i.ci                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !51
  %i.cm = icmp ult i64 %i.cj, %i.cl
  br i1 %i.cm, label %bb.x, label %bb.y, !prof !52

bb.x:                                             ; preds = %bb.w
  %i.cn = inttoptr i64 %i.cj to ptr
  store ptr %i.cn, ptr %i.cf, align 8, !tbaa !50
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang10CFGElementEEEPT_m.exit.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.co = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.cf, i64 noundef %i.cg, i64 noundef %i.cg, i8 3)
  %.pre.i.i.i.i.i.i = load ptr, ptr %11, align 8, !tbaa !72
  %.pre15.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !tbaa !73
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang10CFGElementEEEPT_m.exit.i.i.i.i.i.i

_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang10CFGElementEEEPT_m.exit.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %i.cp = phi ptr [ %i.bu, %bb.x ], [ %.pre15.i.i.i.i.i.i, %bb.y ] ; 2 uses
  %i.cq = phi ptr [ %i.bz, %bb.x ], [ %.pre.i.i.i.i.i.i, %bb.y ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ch, %bb.x ], [ %i.co, %bb.y ] ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cq, %i.cp
  br i1 %.not.i.i.i.i.i.i, label %_ZN5clang10BumpVectorINS_10CFGElementEE4growERNS_17BumpVectorContextEm.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang10CFGElementEEEPT_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang10CFGElementEEEPT_m.exit.i.i.i.i.i.i ] ; 2 uses
  %.0810.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.cq, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang10CFGElementEEEPT_m.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !75
  %i.cr = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cr, %i.cp
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN5clang10BumpVectorINS_10CFGElementEE4growERNS_17BumpVectorContextEm.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN5clang10BumpVectorINS_10CFGElementEE4growERNS_17BumpVectorContextEm.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang10CFGElementEEEPT_m.exit.i.i.i.i.i.i
  %i.ct = ptrtoint ptr %i.bu to i64
  %i.cu = sub i64 %i.ct, %i.cb
  store ptr %.0.i.i.i.i.i.i.i.i.i.i, ptr %11, align 8, !tbaa !72
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i, i64 %i.cu ; 2 uses
  store ptr %i.cv, ptr %i.bt, align 8, !tbaa !73
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i.i.i.i.i.i.i, i64 %spec.select.i.i.i.i.i.i
  store ptr %i.cw, ptr %i.bv, align 8, !tbaa !77
  br label %_ZN5clang8CFGBlock14appendScopeEndEPKNS_7VarDeclEPKNS_4StmtERNS_17BumpVectorContextE.exit.i.i

_ZN5clang8CFGBlock14appendScopeEndEPKNS_7VarDeclEPKNS_4StmtERNS_17BumpVectorContextE.exit.i.i: ; preds = %_ZN5clang10BumpVectorINS_10CFGElementEE4growERNS_17BumpVectorContextEm.exit.i.i.i.i.i, %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit.thread.i
  %i.cx = phi ptr [ %i.bu, %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit.thread.i ], [ %i.cv, %_ZN5clang10BumpVectorINS_10CFGElementEE4growERNS_17BumpVectorContextEm.exit.i.i.i.i.i ] ; 2 uses
  %i.cy = ptrtoint ptr %.val36.val.val.i to i64
  %i.cz = and i64 %i.cy, -4
  %i.da = or disjoint i64 %i.cz, 1
  store i64 %i.ak, ptr %i.cx, align 8, !tbaa !74
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %i.da, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !74
  %i.db = load ptr, ptr %i.bt, align 8, !tbaa !73
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store ptr %i.dc, ptr %i.bt, align 8, !tbaa !73
  %.pre96.i = load ptr, ptr %i.a, align 8, !tbaa !137
  br label %_ZN12_GLOBAL__N_110CFGBuilder14appendScopeEndEPN5clang8CFGBlockEPKNS1_7VarDeclEPKNS1_4StmtE.exit.i

_ZN12_GLOBAL__N_110CFGBuilder14appendScopeEndEPN5clang8CFGBlockEPKNS1_7VarDeclEPKNS1_4StmtE.exit.i: ; preds = %_ZN5clang8CFGBlock14appendScopeEndEPKNS_7VarDeclEPKNS_4StmtERNS_17BumpVectorContextE.exit.i.i, %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit.i, %bb.t
  %i.dd = phi ptr [ %.pre96.i, %_ZN5clang8CFGBlock14appendScopeEndEPKNS_7VarDeclEPKNS_4StmtERNS_17BumpVectorContextE.exit.i.i ], [ %.val38.i, %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit.i ], [ %i.bf, %bb.t ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 60
  %i.df = load i8, ptr %i.de, align 4, !tbaa !145, !range !146, !noundef !138
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.z, label %_ZN12_GLOBAL__N_110CFGBuilder20addScopeExitHandlingENS_10LocalScope14const_iteratorES2_PN5clang4StmtE.exit

bb.z:                                             ; preds = %_ZN12_GLOBAL__N_110CFGBuilder14appendScopeEndEPN5clang8CFGBlockEPKNS1_7VarDeclEPKNS1_4StmtE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr %i.al, ptr %8, align 8, !tbaa !130
  store i32 0, ptr %i.am, align 8, !tbaa !132
  store i32 10, ptr %i.an, align 4, !tbaa !131
  br label %.lr.ph.i.i85

.lr.ph.i.i85:                                     ; preds = %bb.z, %.lr.ph.i.i85
  %.sroa.6.015.i.i = phi i32 [ %.sroa.6.0.i.i, %.lr.ph.i.i85 ], [ %.sroa.28.0.copyload, %bb.z ]
  %.sroa.0.014.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i85 ], [ %.val48, %bb.z ] ; 2 uses
  %.013.i.i = phi i32 [ %i.dh, %.lr.ph.i.i85 ], [ 0, %bb.z ]
  %i.dh = add i32 %.013.i.i, %.sroa.6.015.i.i     ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 32
  %.sroa.0.0.i.i = load ptr, ptr %i.di, align 8, !tbaa !177 ; 2 uses
  %.sroa.6.0.in.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 40
  %.sroa.6.0.i.i = load i32, ptr %.sroa.6.0.in.i.i, align 8, !tbaa !178 ; 2 uses
  %.not.i39.i = icmp eq ptr %.sroa.0.0.i.i, %.sroa.010.0.copyload
  br i1 %.not.i39.i, label %_ZN12_GLOBAL__N_110LocalScope14const_iterator8distanceES1_.exit.i, label %.lr.ph.i.i85, !llvm.loop !5

_ZN12_GLOBAL__N_110LocalScope14const_iterator8distanceES1_.exit.i: ; preds = %.lr.ph.i.i85
  %i.dj = sub i32 %i.dh, %.sroa.25.0.copyload
  %i.dk = add i32 %i.dj, %.sroa.6.0.i.i           ; 2 uses
  %i.dl = icmp ugt i32 %i.dk, 10
  br i1 %i.dl, label %bb.aa, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.aa, %_ZN12_GLOBAL__N_110LocalScope14const_iterator8distanceES1_.exit.i
  br label %.lr.ph.i

bb.aa:                                            ; preds = %_ZN12_GLOBAL__N_110LocalScope14const_iterator8distanceES1_.exit.i
  %i.dm = sext i32 %i.dk to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.al, i64 noundef %i.dm, i64 noundef 8) #24
  br label %.lr.ph.i.preheader

._crit_edge.i:                                    ; preds = %_ZN12_GLOBAL__N_110LocalScope14const_iteratorppEv.exit.i
  %i.dn = load i32, ptr %i.am, align 8, !tbaa !132 ; 2 uses
  %.not.i42.i = icmp eq i32 %i.dn, 0
  br i1 %.not.i42.i, label %.loopexit.i, label %bb.ah

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN12_GLOBAL__N_110LocalScope14const_iteratorppEv.exit.i
  %.sroa.069.087.i = phi ptr [ %.sroa.069.1.i, %_ZN12_GLOBAL__N_110LocalScope14const_iteratorppEv.exit.i ], [ %.val48, %.lr.ph.i.preheader ] ; 5 uses
  %.sroa.7.086.i = phi i32 [ %.sroa.7.1.i, %_ZN12_GLOBAL__N_110LocalScope14const_iteratorppEv.exit.i ], [ %.sroa.28.0.copyload, %.lr.ph.i.preheader ] ; 2 uses
  %i.do = getelementptr i8, ptr %.sroa.069.087.i, i64 8
  %.val33.val.i = load ptr, ptr %i.do, align 8, !tbaa !375
  %i.dp = add i32 %.sroa.7.086.i, -1              ; 3 uses
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.val33.val.i, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !376 ; 5 uses
  %i.dt = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_110CFGBuilder20hasTrivialDestructorEPKN5clang7VarDeclE(ptr noundef nonnull readonly align 8 dereferenceable(392) %0, ptr noundef %i.ds)
  br i1 %i.dt, label %bb.ab, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.thread.i

bb.ab:                                            ; preds = %.lr.ph.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 28
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = and i32 %i.dv, 256
  %.not.i.i43.i = icmp eq i32 %i.dw, 0
  br i1 %.not.i.i43.i, label %_ZNK12_GLOBAL__N_110CFGBuilder25needsAutomaticDestructionEPKN5clang7VarDeclE.exit.thread80.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ds) #24 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !130 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !132 ; 2 uses
  %i.eb = zext i32 %i.ea to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.eb, 3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.idx.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i.i.i, label %_ZNK12_GLOBAL__N_110CFGBuilder25needsAutomaticDestructionEPKN5clang7VarDeclE.exit.thread80.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ac, %bb.ad
  %.sroa.07.1.i.i.i.i.i.i = phi ptr [ %i.eh, %bb.ad ], [ %i.dy, %bb.ac ] ; 3 uses
  %i.ed = load ptr, ptr %.sroa.07.1.i.i.i.i.i.i, align 8, !tbaa !323
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 36
  %i.ef = load i16, ptr %i.ee, align 4
  %i.eg = icmp eq i16 %i.ef, 184
  br i1 %i.eg, label %_ZNK12_GLOBAL__N_110CFGBuilder25needsAutomaticDestructionEPKN5clang7VarDeclE.exit.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.eh, %i.ec
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK12_GLOBAL__N_110CFGBuilder25needsAutomaticDestructionEPKN5clang7VarDeclE.exit.thread80.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

_ZNK12_GLOBAL__N_110CFGBuilder25needsAutomaticDestructionEPKN5clang7VarDeclE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.not83.i = icmp eq ptr %.sroa.07.1.i.i.i.i.i.i, %i.ec
  br i1 %.not83.i, label %_ZNK12_GLOBAL__N_110CFGBuilder25needsAutomaticDestructionEPKN5clang7VarDeclE.exit.thread80.i, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.i

_ZNK12_GLOBAL__N_110CFGBuilder25needsAutomaticDestructionEPKN5clang7VarDeclE.exit.thread80.i: ; preds = %bb.ad, %_ZNK12_GLOBAL__N_110CFGBuilder25needsAutomaticDestructionEPKN5clang7VarDeclE.exit.i, %bb.ac, %bb.ab
  %i.ei = load i32, ptr %i.am, align 8, !tbaa !132 ; 2 uses
  %i.ej = load i32, ptr %i.an, align 4, !tbaa !131
  %.not.i44.i = icmp ult i32 %i.ei, %i.ej
  br i1 %.not.i44.i, label %bb.af, label %bb.ae, !prof !52

bb.ae:                                            ; preds = %_ZNK12_GLOBAL__N_110CFGBuilder25needsAutomaticDestructionEPKN5clang7VarDeclE.exit.thread80.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.ds)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.i

bb.af:                                            ; preds = %_ZNK12_GLOBAL__N_110CFGBuilder25needsAutomaticDestructionEPKN5clang7VarDeclE.exit.thread80.i
  %i.ek = zext i32 %i.ei to i64
  %i.el = load ptr, ptr %8, align 8, !tbaa !130
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ek
  store ptr %i.ds, ptr %i.em, align 1
  %i.en = load i32, ptr %i.am, align 8, !tbaa !132
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.am, align 8, !tbaa !132
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.i: ; preds = %bb.af, %bb.ae, %_ZNK12_GLOBAL__N_110CFGBuilder25needsAutomaticDestructionEPKN5clang7VarDeclE.exit.i
  %.not.i45.i = icmp eq ptr %.sroa.069.087.i, null
  br i1 %.not.i45.i, label %_ZN12_GLOBAL__N_110LocalScope14const_iteratorppEv.exit.i, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.thread.i

_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.thread.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.i, %.lr.ph.i
  %i.ep = icmp eq i32 %i.dp, 0
  br i1 %i.ep, label %bb.ag, label %_ZN12_GLOBAL__N_110LocalScope14const_iteratorppEv.exit.i

bb.ag:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.thread.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.069.087.i, i64 32
  %.sroa.069.0.copyload.i = load ptr, ptr %i.eq, align 8, !tbaa !177
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.069.087.i, i64 40
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !178
  br label %_ZN12_GLOBAL__N_110LocalScope14const_iteratorppEv.exit.i

_ZN12_GLOBAL__N_110LocalScope14const_iteratorppEv.exit.i: ; preds = %bb.ag, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.thread.i, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.i
  %.sroa.7.1.i = phi i32 [ %.sroa.7.086.i, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.i ], [ %.sroa.7.0.copyload.i, %bb.ag ], [ %i.dp, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.thread.i ] ; 2 uses
  %.sroa.069.1.i = phi ptr [ null, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.i ], [ %.sroa.069.0.copyload.i, %bb.ag ], [ %.sroa.069.087.i, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang7VarDeclELb1EE9push_backES3_.exit.thread.i ] ; 2 uses
  %i.er = icmp ne ptr %.sroa.069.1.i, %.sroa.010.0.copyload
  %i.es = icmp ne i32 %.sroa.7.1.i, %.sroa.25.0.copyload
  %.not6.i.i = select i1 %i.er, i1 true, i1 %i.es
  br i1 %.not6.i.i, label %.lr.ph.i, label %._crit_edge.i

bb.ah:                                            ; preds = %._crit_edge.i
  %i.et = load ptr, ptr %i.ae, align 8, !tbaa !136
  %.not.i46.i = icmp eq ptr %i.et, null
  br i1 %.not.i46.i, label %bb.ai, label %.lr.ph90.i

bb.ai:                                            ; preds = %bb.ah
  %i.eu = load ptr, ptr %i.af, align 8, !tbaa !133
  %i.ev = call noundef ptr @_ZN5clang3CFG11createBlockEv(ptr noundef nonnull align 8 dereferenceable(112) %i.eu) ; 2 uses
  %i.ew = load ptr, ptr %i.ag, align 8, !tbaa !135 ; 2 uses
  %.not.i.i47.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i47.i, label %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit49.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZN5clang8CFGBlock13AdjacentBlockC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.ew, i1 noundef zeroext true) #24
  %i.ex = load ptr, ptr %i.af, align 8, !tbaa !133
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.ez = load ptr, ptr %6, align 8
  %i.fa = load i64, ptr %i.ao, align 8
  call void @_ZN5clang8CFGBlock12addSuccessorENS0_13AdjacentBlockERNS_17BumpVectorContextE(ptr noundef nonnull align 8 dereferenceable(120) %i.ev, ptr %i.ez, i64 %i.fa, ptr noundef nonnull align 8 dereferenceable(8) %i.ey)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit49.i

_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit49.i: ; preds = %bb.aj, %bb.ai
  store ptr %i.ev, ptr %i.ae, align 8, !tbaa !136
  %.pre97.i = load i32, ptr %i.am, align 8, !tbaa !132, !noalias !771 ; 2 uses
  %.not88.i = icmp eq i32 %.pre97.i, 0
  br i1 %.not88.i, label %.loopexit.i, label %.lr.ph90.i

.lr.ph90.i:                                       ; preds = %bb.ah, %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit49.i
  %i.fb = phi i32 [ %.pre97.i, %_ZN12_GLOBAL__N_110CFGBuilder15autoCreateBlockEv.exit49.i ], [ %i.dn, %bb.ah ]
  %i.fc = load ptr, ptr %8, align 8, !tbaa !130, !noalias !771 ; 2 uses
  %i.fd = zext i32 %i.fb to i64
  %.idx.i = shl nuw nsw i64 %i.fd, 3
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.idx.i
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN12_GLOBAL__N_110CFGBuilder18appendLifetimeEndsEPN5clang8CFGBlockEPNS1_7VarDeclEPNS1_4StmtE.exit.i, %.lr.ph90.i
  %.sroa.063.089.i = phi ptr [ %i.fe, %.lr.ph90.i ], [ %i.ff, %_ZN12_GLOBAL__N_110CFGBuilder18appendLifetimeEndsEPN5clang8CFGBlockEPNS1_7VarDeclEPNS1_4StmtE.exit.i ]
  %i.ff = getelementptr inbounds i8, ptr %.sroa.063.089.i, i64 -8 ; 3 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !376
  %i.fh = load ptr, ptr %i.ae, align 8, !tbaa !136 ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 5 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !73 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !77 ; 2 uses
  %i.fm = icmp ult ptr %i.fj, %i.fl
  br i1 %i.fm, label %_ZN12_GLOBAL__N_110CFGBuilder18appendLifetimeEndsEPN5clang8CFGBlockEPNS1_7VarDeclEPNS1_4StmtE.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val35.i = load ptr, ptr %i.af, align 8, !tbaa !133
  %i.fn = getelementptr inbounds nuw i8, ptr %.val35.i, i64 32
  %i.fo = load ptr, ptr %i.fh, align 8, !tbaa !72 ; 2 uses
  %i.fp = ptrtoint ptr %i.fl to i64
  %i.fq = ptrtoint ptr %i.fo to i64               ; 2 uses
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = ashr exact i64 %i.fr, 3
  %spec.select.i.i.i.i.i50.i = call i64 @llvm.umax.i64(i64 %i.fs, i64 1) ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i51.i = load i64, ptr %i.fn, align 8
  %i.ft = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i51.i, -8
  %i.fu = inttoptr i64 %i.ft to ptr               ; 4 uses
  %i.fv = shl i64 %spec.select.i.i.i.i.i50.i, 4   ; 3 uses
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !50 ; 2 uses
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = add i64 %i.fv, %i.fx                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !51
end_hunk_0
