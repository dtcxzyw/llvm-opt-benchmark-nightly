Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MasmParser?download=true
inline.NumInlined: 7445
inline.NumDeleted: 2644
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN12_GLOBAL__N_110MasmParser15parseIdentifierERN4llvm9StringRefENS0_22IdentifierPositionKindE:bb.a
    i32 3, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !431  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call fastcc void @_ZN12_GLOBAL__N_110MasmParser7peekTokEb(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(1136) %0, i1 noundef zeroext false)
  %i.f = load i32, ptr %3, align 8, !tbaa !387
  %.not30 = icmp eq i32 %i.f, 2
  br i1 %.not30, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.h = call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #24
  %.not10 = icmp eq ptr %i.g, %i.h
  br i1 %.not10, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4llvm8AsmLexer3LexEv(ptr noundef nonnull align 8 dereferenceable(176) %i.a) ; 0 uses
  %i.j = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %0) #24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !387
  %i.l = icmp eq i32 %i.k, 2
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !322 ; 4 uses
  br i1 %i.l, label %_ZNK4llvm8AsmToken13getIdentifierEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add i64 %.sroa.2.0.copyload.i.i, -1
  %i.n = icmp ne i64 %.sroa.2.0.copyload.i.i, 0
  %.sroa.speculated3.i.i.i = zext i1 %i.n to i64  ; 2 uses
  %i.o = icmp eq i64 %.sroa.2.0.copyload.i.i, 0
  %.sroa.speculate.load.false.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.m, i64 %.sroa.speculated3.i.i.i)
  %.sroa.speculated.i.i.i = select i1 %i.o, i64 0, i64 %.sroa.speculate.load.false.sroa.speculated.i.i.i
  %i.p = sub i64 %.sroa.speculated.i.i.i, %.sroa.speculated3.i.i.i
  br label %_ZNK4llvm8AsmToken13getIdentifierEv.exit

_ZNK4llvm8AsmToken13getIdentifierEv.exit:         ; preds = %bb.d, %bb.e
  %.sroa.2.0.copyload.i.pn.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.2.0.copyload.i.i, %bb.d ]
  %i.q = add i64 %.sroa.2.0.copyload.i.pn.i, 1
  store ptr %i.e, ptr %1, align 8, !tbaa !315
  %.sroa.4.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx25, align 8, !tbaa !322
  %i.r = load ptr, ptr %0, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef nonnull align 8 dereferenceable(40) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(1136) %0) #24 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.b, %_ZNK4llvm8AsmToken13getIdentifierEv.exit
  %.0 = phi i1 [ false, %_ZNK4llvm8AsmToken13getIdentifierEv.exit ], [ true, %bb.b ], [ true, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !564
  %i.x = icmp ugt i32 %i.w, 64
  br i1 %i.x, label %bb.g, label %_ZN4llvm8AsmTokenD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !293  ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN4llvm8AsmTokenD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.z) #26
  br label %_ZN4llvm8AsmTokenD2Ev.exit

_ZN4llvm8AsmTokenD2Ev.exit:                       ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.m

bb.i:                                             ; preds = %bb.a, %bb.a
  %i.ab = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %0) #24 ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !387
  %i.ad = icmp eq i32 %i.ac, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i18 = load ptr, ptr %i.ae, align 8, !tbaa !315
  %.sroa.2.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.2.0.copyload.i.i20 = load i64, ptr %.sroa.2.0..sroa_idx.i.i19, align 8, !tbaa !322
  br label %_ZNK4llvm8AsmToken13getIdentifierEv.exit21

bb.k:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !320 ; 3 uses
  %i.ah = add i64 %i.ag, -1
  %i.ai = icmp ne i64 %i.ag, 0
  %.sroa.speculated3.i.i.i11 = zext i1 %i.ai to i64 ; 3 uses
  %i.aj = icmp eq i64 %i.ag, 0
  %.sroa.speculate.load.false.sroa.speculated.i.i.i12 = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %.sroa.speculated3.i.i.i11)
  %.sroa.speculated.i.i.i13 = select i1 %i.aj, i64 0, i64 %.sroa.speculate.load.false.sroa.speculated.i.i.i12
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !319
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sroa.speculated3.i.i.i11
  %i.am = sub i64 %.sroa.speculated.i.i.i13, %.sroa.speculated3.i.i.i11
  br label %_ZNK4llvm8AsmToken13getIdentifierEv.exit21

_ZNK4llvm8AsmToken13getIdentifierEv.exit21:       ; preds = %bb.j, %bb.k
  %.sroa.0.0.copyload.i.pn.i14 = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.j ], [ %i.al, %bb.k ] ; 2 uses
  %.sroa.2.0.copyload.i.pn.i15 = phi i64 [ %.sroa.2.0.copyload.i.i20, %bb.j ], [ %i.am, %bb.k ] ; 4 uses
  store ptr %.sroa.0.0.copyload.i.pn.i14, ptr %1, align 8, !tbaa !315
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.2.0.copyload.i.pn.i15, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !322
  %.not = icmp eq i32 %2, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  br i1 %.not, label %_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm8AsmToken13getIdentifierEv.exit21
  store ptr %.sroa.0.0.copyload.i.pn.i14, ptr %4, align 8, !tbaa !315
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 %.sroa.2.0.copyload.i.pn.i15, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !322
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 17 ; 6 uses
  store i8 0, ptr %i.an, align 1, !tbaa !706
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.not29 = icmp eq i64 %.sroa.2.0.copyload.i.pn.i15, 4
  br i1 %.not29, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i, label %_ZN4llvm12StringSwitchIbbE9CaseLowerENS_13StringLiteralEb.exit.thread45

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i: ; preds = %bb.l
  %i.ap = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(18) %4, ptr nonnull @.str.82, i64 4) #24
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZN4llvm12StringSwitchIbbE9CaseLowerENS_13StringLiteralEb.exit.thread, label %_ZN4llvm12StringSwitchIbbE9CaseLowerENS_13StringLiteralEb.exit

_ZN4llvm12StringSwitchIbbE9CaseLowerENS_13StringLiteralEb.exit.thread: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i
  store i16 257, ptr %i.ao, align 8
  br label %_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit.loopexit.thread

_ZN4llvm12StringSwitchIbbE9CaseLowerENS_13StringLiteralEb.exit: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i
  %.pre = load i8, ptr %i.an, align 1, !tbaa !706, !range !416
  %i.ar = trunc nuw i8 %.pre to i1
  br i1 %i.ar, label %_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit.loopexit.thread, label %_ZN4llvm12StringSwitchIbbE9CaseLowerENS_13StringLiteralEb.exit.thread45thread-pre-split

_ZN4llvm12StringSwitchIbbE9CaseLowerENS_13StringLiteralEb.exit.thread45thread-pre-split: ; preds = %_ZN4llvm12StringSwitchIbbE9CaseLowerENS_13StringLiteralEb.exit
  %.pr58 = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !320
  br label %_ZN4llvm12StringSwitchIbbE9CaseLowerENS_13StringLiteralEb.exit.thread45

_ZN4llvm12StringSwitchIbbE9CaseLowerENS_13StringLiteralEb.exit.thread45: ; preds = %_ZN4llvm12StringSwitchIbbE9CaseLowerENS_13StringLiteralEb.exit.thread45thread-pre-split, %bb.l
  %i.as = phi i64 [ %.pr58, %_ZN4llvm12StringSwitchIbbE9CaseLowerENS_13StringLiteralEb.exit.thread45thread-pre-split ], [ %.sroa.2.0.copyload.i.pn.i15, %bb.l ] ; 2 uses
  %i.at = icmp eq i64 %i.as, 5
  br i1 %i.at, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i22, label %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i22: ; preds = %_ZN4llvm12StringSwitchIbbE9CaseLowerENS_13StringLiteralEb.exit.thread45
  %i.au = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(18) %4, ptr nonnull @.str.36, i64 5) #24
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit, label %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i

_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i22
  %.pre31 = load i8, ptr %i.an, align 1, !tbaa !706, !range !416
  %i.aw = trunc nuw i8 %.pre31 to i1
  br i1 %i.aw, label %_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit.loopexit.thread, label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !320
  br label %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.thread

_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.thread: ; preds = %_ZN4llvm12StringSwitchIbbE9CaseLowerENS_13StringLiteralEb.exit.thread45, %thread-pre-split
  %i.ax = phi i64 [ %.pr, %thread-pre-split ], [ %i.as, %_ZN4llvm12StringSwitchIbbE9CaseLowerENS_13StringLiteralEb.exit.thread45 ]
  %i.ay = icmp eq i64 %i.ax, 6
  br i1 %i.ay, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i22.1, label %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.1.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i22.1: ; preds = %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.thread
  %i.az = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(18) %4, ptr nonnull @.str.37, i64 6) #24
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit, label %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.1

_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.1: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i22.1
  %.pre32 = load i8, ptr %i.an, align 1, !tbaa !706, !range !416
  %i.bb = trunc nuw i8 %.pre32 to i1
  br i1 %i.bb, label %_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit.loopexit.thread, label %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.1.thread

_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.1.thread: ; preds = %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.thread, %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.1
  %i.bc = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !320 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 9
  br i1 %i.bd, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i22.2, label %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.2.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i22.2: ; preds = %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.1.thread
  %i.be = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(18) %4, ptr nonnull @.str.43, i64 9) #24
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit, label %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.2

_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.2: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i22.2
  %.pre33 = load i8, ptr %i.an, align 1, !tbaa !706, !range !416
  %i.bg = trunc nuw i8 %.pre33 to i1
  br i1 %i.bg, label %_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit.loopexit.thread, label %thread-pre-split49

thread-pre-split49:                               ; preds = %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.2
  %.pr50 = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !320
  br label %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.2.thread

_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.2.thread: ; preds = %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.1.thread, %thread-pre-split49
  %i.bh = phi i64 [ %.pr50, %thread-pre-split49 ], [ %i.bc, %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.1.thread ]
  %i.bi = icmp eq i64 %i.bh, 10
  br i1 %i.bi, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i22.3, label %_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i22.3: ; preds = %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.2.thread
  %i.bj = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(18) %4, ptr nonnull @.str.44, i64 10) #24
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit, label %_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit.loopexit

_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit.loopexit.thread: ; preds = %_ZN4llvm12StringSwitchIbbE9CaseLowerENS_13StringLiteralEb.exit.thread, %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.2, %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.1, %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i, %_ZN4llvm12StringSwitchIbbE9CaseLowerENS_13StringLiteralEb.exit
  %.pre3552 = load i8, ptr %i.ao, align 8, !range !416
  br label %_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit

_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit.loopexit: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i22.3
  %.pre34.pre.pre = load i8, ptr %i.an, align 1, !tbaa !706, !range !416
  %.pre34.pre.pre.fr = freeze i8 %.pre34.pre.pre
  %i.bl = trunc i8 %.pre34.pre.pre.fr to i1
  %.pre35 = load i8, ptr %i.ao, align 8, !range !416
  %narrow = select i1 %i.bl, i8 %.pre35, i8 0
  br label %_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit

_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit: ; preds = %_ZNK4llvm8AsmToken13getIdentifierEv.exit21, %_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit.loopexit.thread, %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.2.thread, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i22.3, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i22.2, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i22.1, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i22, %_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit.loopexit
  %.09.shrunk = phi i8 [ 1, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i22.1 ], [ 0, %_ZN4llvm12StringSwitchIbbE13CaseLowerImplENS_13StringLiteralERb.exit.i.2.thread ], [ 1, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i22 ], [ %narrow, %_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit.loopexit ], [ %.pre3552, %_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit.loopexit.thread ], [ 1, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i22.3 ], [ 1, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.i.i22.2 ], [ 0, %_ZNK4llvm8AsmToken13getIdentifierEv.exit21 ]
  %.09 = zext i8 %.09.shrunk to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bm = call fastcc noundef nonnull align 8 dereferenceable(40) ptr @_ZN12_GLOBAL__N_110MasmParser3LexENS0_10ExpandKindE(ptr noundef nonnull align 8 dereferenceable(1136) %0, i32 noundef %.09) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit, %_ZN4llvm8AsmTokenD2Ev.exit
  %.1 = phi i1 [ %.0, %_ZN4llvm8AsmTokenD2Ev.exit ], [ false, %_ZN4llvm12StringSwitchIbbE10CasesLowerESt16initializer_listINS_13StringLiteralEEb.exit ], [ true, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN4llvm9StringMapIN12_GLOBAL__N_110MasmParser13DirectiveKindENS_15MallocAllocatorEE4findENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %1, i64 %2) #24
  %i.b = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr %1, i64 %2, i32 noundef %i.a) #24 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  %.val.i = load ptr, ptr %0, align 8, !tbaa !290
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i = load i32, ptr %i.d, align 8, !tbaa !335
  %i.e = zext i32 %.val5.i to i64
  br label %_ZN4llvm9StringMapIN12_GLOBAL__N_110MasmParser13DirectiveKindENS_15MallocAllocatorEE4findENS_9StringRefEj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = sext i32 %i.b to i64
  br label %_ZN4llvm9StringMapIN12_GLOBAL__N_110MasmParser13DirectiveKindENS_15MallocAllocatorEE4findENS_9StringRefEj.exit

_ZN4llvm9StringMapIN12_GLOBAL__N_110MasmParser13DirectiveKindENS_15MallocAllocatorEE4findENS_9StringRefEj.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi i64 [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  %i.g = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %.sink.i
  ret ptr %i.g
}

declare void @_ZNK4llvm9StringRef5lowerB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_110MasmParser16parseDirectiveIfEN4llvm5SMLocENS0_13DirectiveKindE(ptr noundef nonnull align 8 dereferenceable(1136) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !708  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !356
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.c, align 8
  store i64 %i.h, ptr %i.e, align 4
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !708
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.d, align 8, !tbaa !708
  br label %_ZNSt6vectorIN4llvm7AsmCondESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !355  ; 7 uses
  %i.l = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 4 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorIN4llvm7AsmCondESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #25
  unreachable

_ZNKSt6vectorIN4llvm7AsmCondESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #23 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = load i64, ptr %i.c, align 8
  store i64 %i.x, ptr %i.w, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7AsmCondESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN4llvm7AsmCondESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.y = ptrtoaddr ptr %i.v to i64
  %i.z = add i64 %i.l, -8
  %i.aa = sub i64 %i.z, %i.m                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 72
  %i.ad = sub i64 %i.m, %i.y
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.v, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.k, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ah ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.k, i64 %i.ah ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  %i.ai = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep5, align 4, !alias.scope !712, !noalias !709
  %wide.load6 = load <2 x i64>, ptr %i.ai, align 4, !alias.scope !712, !noalias !709
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !709, !noalias !712
  store <2 x i64> %wide.load6, ptr %i.aj, align 4, !alias.scope !709, !noalias !712
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !714

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4llvm7AsmCondESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.preheader8:                      ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader8 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  %i.al = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !712, !noalias !709
  store i64 %i.al, ptr %.012.i.i.i.i.i, align 4, !alias.scope !709, !noalias !712
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7AsmCondESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !717

_ZNSt6vectorIN4llvm7AsmCondESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN4llvm7AsmCondESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorIN4llvm7AsmCondESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4llvm7AsmCondESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4llvm7AsmCondESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !356
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ar) #26
  br label %_ZNSt6vectorIN4llvm7AsmCondESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN4llvm7AsmCondESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN4llvm7AsmCondESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.v, ptr %i.b, align 8, !tbaa !355
  store ptr %i.ao, ptr %i.d, align 8, !tbaa !708
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.as, ptr %i.f, align 8, !tbaa !356
  br label %_ZNSt6vectorIN4llvm7AsmCondESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN4llvm7AsmCondESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4llvm7AsmCondESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  store i32 1, ptr %i.c, align 8, !tbaa !422
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 413 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !423, !range !416, !noundef !116
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIN4llvm7AsmCondESaIS1_EE9push_backERKS1_.exit
  %i.aw = load ptr, ptr %0, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 192
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(1136) %0) #24
  br label %bb.j

bb.g:                                             ; preds = %_ZNSt6vectorIN4llvm7AsmCondESaIS1_EE9push_backERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.az = load ptr, ptr %0, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 224
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #24
  br i1 %i.bc, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = call noundef zeroext i1 @_ZN4llvm11MCAsmParser8parseEOLEv(ptr noundef nonnull align 8 dereferenceable(243) %0) #24
  br i1 %i.bd, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = icmp eq i32 %1, 38
  %.pre = load i64, ptr %i.a, align 8, !tbaa !322
  %i.bf = icmp eq i64 %.pre, 0
  %i.bg = xor i1 %i.be, %i.bf                     ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.bi = zext i1 %i.bg to i8
  store i8 %i.bi, ptr %i.bh, align 4, !tbaa !718
  %i.bj = xor i1 %i.bg, true
  %i.bk = zext i1 %i.bj to i8
  store i8 %i.bk, ptr %i.at, align 1, !tbaa !423
end_hunk_0
