Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Parser?download=true
inline.NumInlined: 5872
inline.NumDeleted: 2424
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN4Luau6Parser15parseSimpleTypeEbb:bb.a
bb.g:                                             ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !373, !nonnull !53, !align !374
  %i.ad = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef 32) ; 2 uses
  call void @_ZN4Luau20AstTypeSingletonBoolC1ERKNS_8LocationEb(ptr noundef nonnull align 8 dereferenceable(29) %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %6, i1 noundef zeroext true)
  %i.ae = insertvalue { ptr, ptr } poison, ptr %i.ad, 0
  %i.af = insertvalue { ptr, ptr } %i.ae, ptr null, 1
  br label %bb.bb

bb.h:                                             ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !373, !nonnull !53, !align !374
  %i.ai = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 noundef 32) ; 2 uses
  call void @_ZN4Luau20AstTypeSingletonBoolC1ERKNS_8LocationEb(ptr noundef nonnull align 8 dereferenceable(29) %i.ai, ptr noundef nonnull align 4 dereferenceable(16) %6, i1 noundef zeroext false)
  %i.aj = insertvalue { ptr, ptr } poison, ptr %i.ai, 0
  %i.ak = insertvalue { ptr, ptr } %i.aj, ptr null, 1
  br label %bb.bb

bb.i:                                             ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit, %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !393, !range !52, !noundef !53
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ao = icmp eq i32 %i.m, 279
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = tail call noundef i32 @_ZNK4Luau6Lexeme13getQuoteStyleEv(ptr noundef nonnull align 8 dereferenceable(32) %i.j)
  %i.aq = icmp eq i32 %i.ap, 1
  %i.ar = zext i1 %i.aq to i64
  br label %_ZN4Luau6Parser20extractStringDetailsEv.exit

bb.l:                                             ; preds = %bb.j
  %i.as = tail call noundef i32 @_ZNK4Luau6Lexeme13getBlockDepthEv(ptr noundef nonnull align 8 dereferenceable(32) %i.j)
  %i.at = zext i32 %i.as to i64
  %i.au = shl nuw i64 %i.at, 32
  %i.av = or disjoint i64 %i.au, 2
  br label %_ZN4Luau6Parser20extractStringDetailsEv.exit

_ZN4Luau6Parser20extractStringDetailsEv.exit:     ; preds = %bb.k, %bb.l
  %.0.i = phi i64 [ %i.av, %bb.l ], [ %i.ar, %bb.k ] ; 2 uses
  %.sroa.049.0.extract.trunc = trunc i64 %.0.i to i32
  %.sroa.450.0.extract.shift = lshr i64 %.0.i, 32
  %.sroa.450.0.extract.trunc = trunc nuw i64 %.sroa.450.0.extract.shift to i32
  %.pre = load i8, ptr %i.al, align 8, !tbaa !393, !range !52
  %i.aw = trunc nuw i8 %.pre to i1
  %i.ax = select i1 %i.aw, ptr %9, ptr null
  br label %bb.m

bb.m:                                             ; preds = %_ZN4Luau6Parser20extractStringDetailsEv.exit, %bb.i
  %.091 = phi i32 [ %.sroa.450.0.extract.trunc, %_ZN4Luau6Parser20extractStringDetailsEv.exit ], [ 0, %bb.i ]
  %.090 = phi i32 [ %.sroa.049.0.extract.trunc, %_ZN4Luau6Parser20extractStringDetailsEv.exit ], [ undef, %bb.i ]
  %. = phi ptr [ %i.ax, %_ZN4Luau6Parser20extractStringDetailsEv.exit ], [ null, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @_ZN4Luau6Parser14parseCharArrayEPNS_8AstArrayIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.280") align 8 %10, ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef %.)
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !623, !range !52, !noundef !53
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !1023
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !373, !nonnull !53, !align !374
  %i.bd = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 noundef 48) ; 3 uses
  call void @_ZN4Luau22AstTypeSingletonStringC1ERKNS_8LocationERKNS_8AstArrayIcEE(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %11)
  %i.be = load i8, ptr %i.al, align 8, !tbaa !393, !range !52, !noundef !53
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !373, !nonnull !53, !align !374
  %i.bh = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 noundef 32) ; 2 uses
  %.sroa.0.0.copyload.i61 = load ptr, ptr %9, align 8, !tbaa !45
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !19
  call void @_ZN4Luau22CstTypeSingletonStringC1ENS_8AstArrayIcEENS_21CstExprConstantString10QuoteStyleEj(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr %.sroa.0.0.copyload.i61, i64 %.sroa.2.0.copyload.i, i32 noundef %.090, i32 noundef %.091)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr %i.bd, ptr %i.a, align 8, !tbaa !394
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.bk = call noundef ptr (ptr, ptr, ptr, ptr, ...) @_ZN4Luau6Parser15reportTypeErrorERKNS_8LocationERKNS_8AstArrayIPNS_7AstTypeEEEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull @.str.270)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.020.0 = phi ptr [ %i.bd, %bb.p ], [ %i.bk, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.bl = insertvalue { ptr, ptr } poison, ptr %.sroa.020.0, 0
  %i.bm = insertvalue { ptr, ptr } %i.bl, ptr null, 1
  br label %bb.bb

bb.s:                                             ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit, %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  %i.bn = tail call noundef ptr @_ZN4Luau6Parser17parseInterpStringEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.bo = call noundef ptr (ptr, ptr, ptr, ptr, ...) @_ZN4Luau6Parser15reportTypeErrorERKNS_8LocationERKNS_8AstArrayIPNS_7AstTypeEEEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.271)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.bp = insertvalue { ptr, ptr } poison, ptr %i.bo, 0
  %i.bq = insertvalue { ptr, ptr } %i.bp, ptr null, 1
  br label %bb.bb

bb.t:                                             ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.br = call noundef ptr (ptr, ptr, ptr, ptr, ...) @_ZN4Luau6Parser15reportTypeErrorERKNS_8LocationERKNS_8AstArrayIPNS_7AstTypeEEEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull @.str.272)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  %i.bs = insertvalue { ptr, ptr } poison, ptr %i.br, 0
  %i.bt = insertvalue { ptr, ptr } %i.bs, ptr null, 1
  br label %bb.bb

_ZN4Luau6Parser9parseNameEPKc.exit:               ; preds = %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.081)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !22, !noalias !1027 ; 4 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false)
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0), !noalias !1027
  store i64 %i.bw, ptr %15, align 8, !tbaa !45, !alias.scope !1024
  %i.bx = load i32, ptr %i.j, align 8, !tbaa !110 ; 2 uses
  switch i32 %i.bx, label %bb.ad [
    i32 46, label %_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit
    i32 262, label %bb.ac
  ]

_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit: ; preds = %_ZN4Luau6Parser9parseNameEPKc.exit
  %i.by = load i64, ptr %i.k, align 4             ; 2 uses
  %.sroa.083.0.extract.trunc = trunc i64 %i.by to i32
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.081, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i64 16, i1 false)
  %i.bz = load i8, ptr @_ZN5FFlag20LuauTrackPrefixLocalE, align 8, !tbaa !385, !range !52, !noundef !53
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cc = call noundef ptr @_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %15) ; 2 uses
  %.not = icmp eq ptr %i.cc, null
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !103
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit
  %.089 = phi ptr [ null, %_ZNSt8optionalIN4Luau8LocationEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit ], [ null, %bb.u ], [ %i.cd, %bb.v ]
  %i.ce = load i32, ptr %i.j, align 8, !tbaa !110, !noalias !1030
  %.not.i.i63 = icmp eq i32 %i.ce, 281
  br i1 %.not.i.i63, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cf = load ptr, ptr %i.bu, align 8, !tbaa !22, !noalias !1030
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = load <2 x i64>, ptr %i.k, align 4
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0), !noalias !1030
  br label %_ZN4Luau6Parser14parseIndexNameEPKcRKNS_8PositionE.exit

bb.y:                                             ; preds = %bb.w
  call void @_ZN4Luau6Parser15reportNameErrorEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull @.str.167), !noalias !1030
  %i.ci = load i32, ptr %i.j, align 8, !tbaa !110, !noalias !1035
  %i.cj = add i32 %i.ci, -291
  %or.cond.i = icmp ult i32 %i.cj, 21
  br i1 %or.cond.i, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ck = load i32, ptr %i.k, align 4, !tbaa !494, !noalias !1035
  %i.cl = icmp eq i32 %i.ck, %.sroa.083.0.extract.trunc
  br i1 %i.cl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cm = load ptr, ptr %i.bu, align 8, !tbaa !22, !noalias !1035
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = load <2 x i64>, ptr %i.k, align 4
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0), !noalias !1035
  br label %_ZN4Luau6Parser14parseIndexNameEPKcRKNS_8PositionE.exit

bb.ab:                                            ; preds = %bb.z, %bb.y
  %28 = load <2 x i64>, ptr %i.k, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !45, !noalias !1035
  %i.cr = shufflevector <2 x i64> %28, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %_ZN4Luau6Parser14parseIndexNameEPKcRKNS_8PositionE.exit

_ZN4Luau6Parser14parseIndexNameEPKcRKNS_8PositionE.exit: ; preds = %bb.x, %bb.aa, %bb.ab
  %.sroa.077.0 = phi i64 [ %i.cg, %bb.x ], [ %i.cn, %bb.aa ], [ %i.cq, %bb.ab ]
  %i.cs = phi <2 x i64> [ %i.ch, %bb.x ], [ %i.co, %bb.aa ], [ %i.cr, %bb.ab ]
  store i64 %.sroa.077.0, ptr %15, align 8, !tbaa !45
  store <2 x i64> %i.cs, ptr %.sroa.4.0..sroa_idx.i, align 8
  br label %_ZNK4Luau7AstNameeqEPKc.exit.thread

bb.ac:                                            ; preds = %_ZN4Luau6Parser9parseNameEPKc.exit
  tail call void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull @.str.273)
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %_ZNK4Luau7AstNameeqEPKc.exit.thread

bb.ad:                                            ; preds = %_ZN4Luau6Parser9parseNameEPKc.exit
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %_ZNK4Luau7AstNameeqEPKc.exit.thread, label %_ZNK4Luau7AstNameeqEPKc.exit

_ZNK4Luau7AstNameeqEPKc.exit:                     ; preds = %bb.ad
  %i.ct = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bv, ptr noundef nonnull dereferenceable(7) @.str.274) #40
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.ae, label %_ZNK4Luau7AstNameeqEPKc.exit.thread

bb.ae:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit
  %.sroa.445.0.copyload = load i64, ptr %i.k, align 4 ; 2 uses
  %i.cv = tail call noundef zeroext i1 @_ZN4Luau6Parser16expectAndConsumeEcPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i8 noundef signext 40, ptr noundef nonnull @.str.275)
  %i.cw = tail call noundef ptr @_ZN4Luau6Parser9parseExprEj(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 0)
  %.sroa.042.0.copyload = load i64, ptr %i.k, align 4
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %.sroa.443.0.copyload = load i64, ptr %.sroa.443.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  store i32 %i.bx, ptr %16, align 4, !tbaa !327
  %i.cx = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i64 %.sroa.445.0.copyload, ptr %i.cx, align 4
  %i.cy = call noundef zeroext i1 @_ZN4Luau6Parser21expectMatchAndConsumeEcRKNS0_11MatchLexemeEb(ptr noundef nonnull align 8 dereferenceable(1232) %0, i8 noundef signext 41, ptr noundef nonnull align 4 dereferenceable(12) %16, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !373, !nonnull !53, !align !374
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  %i.db = load i64, ptr %6, align 8
  store i64 %i.db, ptr %17, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %.sroa.443.0.copyload, ptr %i.dc, align 8
  %i.dd = tail call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i64 noundef 40) ; 4 uses
  call void @_ZN4Luau13AstTypeTypeofC1ERKNS_8LocationEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(40) %i.dd, ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.df = load i8, ptr %i.de, align 8, !tbaa !393, !range !52, !noundef !53
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.af, label %bb.au

bb.af:                                            ; preds = %bb.ae
  %i.dh = load ptr, ptr %i.cz, align 8, !tbaa !373, !nonnull !53, !align !374
  %spec.select = select i1 %i.cv, i64 %.sroa.445.0.copyload, i64 -1
  %storemerge27 = select i1 %i.cy, i64 %.sroa.042.0.copyload, i64 -1
  %i.di = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i64 noundef 20) ; 2 uses
  call void @_ZN4Luau13CstTypeTypeofC1ENS_8PositionES1_(ptr noundef nonnull align 4 dereferenceable(20) %i.di, i64 %spec.select, i64 %storemerge27)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store ptr %i.dd, ptr %i.b, align 8, !tbaa !394
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.dj, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.au

_ZNK4Luau7AstNameeqEPKc.exit.thread:              ; preds = %bb.ad, %_ZN4Luau6Parser14parseIndexNameEPKcRKNS_8PositionE.exit, %_ZNK4Luau7AstNameeqEPKc.exit, %bb.ac
  %.sroa.586.0 = phi i8 [ 0, %bb.ad ], [ 0, %_ZNK4Luau7AstNameeqEPKc.exit ], [ 1, %_ZN4Luau6Parser14parseIndexNameEPKcRKNS_8PositionE.exit ], [ 0, %bb.ac ] ; 2 uses
  %.sroa.085.0 = phi ptr [ undef, %bb.ad ], [ undef, %_ZNK4Luau7AstNameeqEPKc.exit ], [ %i.bv, %_ZN4Luau6Parser14parseIndexNameEPKcRKNS_8PositionE.exit ], [ undef, %bb.ac ]
  %.sroa.784.0 = phi i64 [ -1, %bb.ad ], [ -1, %_ZNK4Luau7AstNameeqEPKc.exit ], [ %i.by, %_ZN4Luau6Parser14parseIndexNameEPKcRKNS_8PositionE.exit ], [ -1, %bb.ac ]
  %.1 = phi ptr [ null, %bb.ad ], [ null, %_ZNK4Luau7AstNameeqEPKc.exit ], [ %.089, %_ZN4Luau6Parser14parseIndexNameEPKcRKNS_8PositionE.exit ], [ null, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  %i.dl = getelementptr inbounds nuw i8, ptr %18, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #34
  store i64 -1, ptr %19, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #34
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  store ptr %i.dm, ptr %20, align 8, !tbaa !420
  %i.dn = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !422
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !119
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 3
  store i64 %i.du, ptr %i.dn, align 8, !tbaa !423
  %i.dv = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store i64 0, ptr %i.dv, align 8, !tbaa !425
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #34
  store i64 -1, ptr %21, align 8
  %i.dw = load i32, ptr %i.j, align 8, !tbaa !110
  %i.dx = icmp eq i32 %i.dw, 60                   ; 2 uses
  br i1 %i.dx, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit.thread
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dz = load i8, ptr %i.dy, align 8, !tbaa !393, !range !52, !noundef !53
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.eb = invoke { ptr, i64 } @_ZN4Luau6Parser15parseTypeParamsEPNS_8PositionEPNS_10TempVectorIS1_EES2_(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21)
          to label %.sink.split unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.aj:                                            ; preds = %bb.ag
  %i.ed = invoke { ptr, i64 } @_ZN4Luau6Parser15parseTypeParamsEPNS_8PositionEPNS_10TempVectorIS1_EES2_(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %.sink.split unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.sink.split:                                      ; preds = %bb.aj, %bb.ah
  %.sink = phi { ptr, i64 } [ %i.eb, %bb.ah ], [ %i.ed, %bb.aj ] ; 2 uses
  %i.ef = extractvalue { ptr, i64 } %.sink, 0
  %i.eg = extractvalue { ptr, i64 } %.sink, 1
  store ptr %i.ef, ptr %18, align 8, !tbaa !1036
  store i64 %i.eg, ptr %i.dl, align 8, !tbaa !19
  br label %bb.al

bb.al:                                            ; preds = %.sink.split, %_ZNK4Luau7AstNameeqEPKc.exit.thread
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !373, !nonnull !53, !align !374
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #34
  %i.ej = load i64, ptr %6, align 8
  store i64 %i.ej, ptr %22, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %.sroa.4.0.copyload, ptr %i.ek, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.el = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i64 noundef 120)
          to label %.noexc unwind label %bb.ap    ; 3 uses

.noexc:                                           ; preds = %bb.al
  %.sroa.0.0.copyload.i68 = load ptr, ptr %15, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.081, i64 16, i1 false)
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %.sroa.586.0, ptr %.sroa.582.0..sroa_idx, align 8
  invoke void @_ZN4Luau16AstTypeReferenceC1ERKNS_8LocationESt8optionalINS_7AstNameEES5_S4_IS1_ES3_bRKNS_8AstArrayINS_13AstTypeOrPackEEEPNS_8AstLocalE(ptr noundef nonnull align 8 dereferenceable(120) %i.el, ptr noundef nonnull align 4 dereferenceable(16) %22, ptr %.sroa.085.0, i8 %.sroa.586.0, ptr %.sroa.0.0.copyload.i68, ptr noundef nonnull byval(%"class.std::optional.182") align 8 %3, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i1 noundef zeroext %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef %.1)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.en = load i8, ptr %i.em, align 8, !tbaa !393, !range !52, !noundef !53
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.ep = load ptr, ptr %i.eh, align 8, !tbaa !373, !nonnull !53, !align !374 ; 2 uses
  %i.eq = load i64, ptr %i.dv, align 8, !tbaa !425 ; 9 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %.loopexit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.an
  %i.es = load ptr, ptr %20, align 8, !tbaa !435, !nonnull !53, !align !374
  %i.et = load i64, ptr %i.dn, align 8, !tbaa !423 ; 2 uses
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !119 ; 2 uses
  %i.ev = ptrtoaddr ptr %i.eu to i64
  %i.ew = getelementptr [8 x i8], ptr %i.eu, i64 %i.et ; 6 uses
  %i.ex = shl i64 %i.eq, 3
  %i.ey = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i64 noundef %i.ex)
          to label %.lr.ph.i.i.preheader unwind label %bb.aq ; 10 uses

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i
  %min.iters.check = icmp ult i64 %i.eq, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader101, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ez = ptrtoaddr ptr %i.ey to i64
  %i.fa = shl i64 %i.et, 3
  %i.fb = add i64 %i.fa, %i.ev
  %i.fc = sub i64 %i.fb, %i.ez
  %diff.check = icmp ugt i64 %i.fc, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader101, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eq, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %index ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %wide.load = load <2 x i64>, ptr %i.fe, align 4
  %wide.load100 = load <2 x i64>, ptr %i.ff, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <2 x i64> %wide.load, ptr %i.fd, align 4
  store <2 x i64> %wide.load100, ptr %i.fg, align 4
end_hunk_0
