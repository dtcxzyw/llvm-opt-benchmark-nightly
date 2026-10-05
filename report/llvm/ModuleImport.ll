Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ModuleImport?download=true
inline.NumInlined: 13241
inline.NumDeleted: 6436
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4mlir4LLVM12ModuleImport37processDebugOpArgumentsAndInsertionPtENS_8LocationEN4llvm12function_refIFNS3_9FailureOrINS_5ValueEEEvEEEPNS3_5ValueENS3_12PointerUnionIJSB_PNS3_15DILocalVariableEEEEPNS3_12DIExpressionERNS_13DominanceInfoE:bb.a
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 35, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !196
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !165  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !164
  %.not.i.i.i.i.i = icmp ult i32 %i.s, %i.u
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g, !prof !173

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %13)
  br label %_ZN4mlir10Diagnostic6appendIRA36_KcEERS0_OT_.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = zext i32 %i.s to i64
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !137
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false)
  %i.y = load i32, ptr %i.r, align 8, !tbaa !165
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.r, align 8, !tbaa !165
  br label %_ZN4mlir10Diagnostic6appendIRA36_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA36_KcEERS0_OT_.exit.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA36_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA36_KcEEOS0_OT_.exit: ; preds = %bb.e, %_ZN4mlir10Diagnostic6appendIRA36_KcEERS0_OT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.aa, ptr %15, align 8, !tbaa !198, !alias.scope !1271
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !200, !alias.scope !1271
  store i8 0, ptr %i.aa, align 8, !tbaa !201, !alias.scope !1271
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22, !noalias !1271
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 0, ptr %i.ac, align 8, !tbaa !205, !noalias !1271
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i8 0, ptr %i.ad, align 8, !tbaa !206, !noalias !1271
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 44
  store i32 1, ptr %i.ae, align 4, !tbaa !207, !noalias !1271
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false), !noalias !1271
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %12, align 8, !tbaa !136, !noalias !1271
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 48
  store ptr %15, ptr %i.ag, align 8, !tbaa !209, !noalias !1271
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef null, i64 noundef 0, i32 noundef 0) #22
  call void @_ZNK4llvm5Value5printERNS_11raw_ostreamEb(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(48) %12, i1 noundef zeroext false) #22
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22, !noalias !1271
  %i.ah = load ptr, ptr %14, align 8, !tbaa !189
  %.not.i.i9 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i9, label %_ZNO4mlir18InFlightDiagnosticlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA36_KcEEOS0_OT_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 4, ptr %i.aj, align 8, !tbaa !212
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.ak, align 1, !tbaa !213
  store ptr %15, ptr %11, align 8, !tbaa !201
  %i.al = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.ai, ptr noundef nonnull align 8 dereferenceable(34) %11) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA36_KcEEOS0_OT_.exit, %bb.i
  %i.am = load ptr, ptr %15, align 8, !tbaa !214  ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.aa
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNO4mlir18InFlightDiagnosticlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit
  %i.ao = load i64, ptr %i.aa, align 8, !tbaa !201
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.aq = load ptr, ptr %14, align 8, !tbaa !189
  %.not.i10 = icmp eq ptr %i.aq, null
  br i1 %.not.i10, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %14) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 200 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !215, !range !216, !noundef !217
  %i.at = trunc nuw i8 %i.as to i1
  store i8 0, ptr %i.ar, align 8, !tbaa !215
  br i1 %i.at, label %bb.l, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.au) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.aa

bb.m:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.l, ptr %10, align 8
  %i.av = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #22 ; 3 uses
  %.not.i11 = icmp eq ptr %i.av, null
  br i1 %.not.i11, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.o, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i, !prof !132

bb.o:                                             ; preds = %bb.n
  %i.ay = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #22
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.180, i64 49), i64 34) #22
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #22
  br label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i

_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %.sroa.01.0.copyload.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !134
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !469 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !136
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr %.sroa.01.0.copyload.i.i.i.i.i.i) #22, !inline_history !1270
  br i1 %i.bf, label %_ZN4mlir6detail17DominanceInfoBaseILb0EE7getNodeEPNS_5BlockE.exit.i, label %bb.r

_ZN4mlir6detail17DominanceInfoBaseILb0EE7getNodeEPNS_5BlockE.exit.i: ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !284 ; 2 uses
  %i.bi = call noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bh) #22
  %i.bj = call i64 @_ZNK4mlir6detail17DominanceInfoBaseILb0EE16getDominanceInfoEPNS_6RegionEb(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.bi, i1 noundef zeroext true) #22
  %i.bk = and i64 %i.bj, -8
  %i.bl = inttoptr i64 %i.bk to ptr               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !1289
  %i.bo = add i32 %i.bn, 1                        ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !165
  %i.br = icmp ugt i32 %i.bq, %i.bo
  call void @llvm.assume(i1 %i.br)
  %i.bs = zext i32 %i.bo to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !137
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1291
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1294 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.y, label %bb.q

bb.q:                                             ; preds = %_ZN4mlir6detail17DominanceInfoBaseILb0EE7getNodeEPNS_5BlockE.exit.i
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !1295
  %i.cb = call noundef ptr @_ZN4mlir5Block13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ca) #22 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !284
  %i.ce = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.cb) #22
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !161
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.ce, ptr %i.cg, align 8
  br label %bb.z

bb.r:                                             ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait12IsTerminatorEEEbv.exit.i, %bb.m
  %.sroa.04.0.copyload.i = load ptr, ptr %10, align 8, !tbaa !359 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ch, align 8
  %i.ci = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  %i.cj = icmp ne i64 %i.ci, 7
  %.not2122.i = icmp eq ptr %.sroa.04.0.copyload.i, null
  %.not21.i = or i1 %.not2122.i, %i.cj
  br i1 %.not21.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = call noundef ptr @_ZN4mlir5Value14getParentBlockEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #22 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !273
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 48 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !160
  %i.cq = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.cp) #22
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.cr, align 8, !tbaa !470
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !373
  %i.cu = icmp eq ptr %i.ct, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM12LandingpadOpEvE2idE
  br i1 %i.cu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !160
  %i.cw = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.cv) #22
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -16
  %i.cy = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 noundef 0) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.sroa.04.1.i = phi ptr [ %.sroa.04.0.copyload.i, %bb.r ], [ %.sroa.04.0.copyload.i, %bb.s ], [ %i.cy, %bb.u ], [ %.sroa.04.0.copyload.i, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %.sroa.04.1.i, ptr %9, align 8
  %i.cz = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #22 ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i12, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !284
  %i.dc = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.cz) #22
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  br label %_ZN4mlir9OpBuilder27setInsertionPointAfterValueENS_5ValueE.exit.i

bb.x:                                             ; preds = %bb.v
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %9, align 8, !tbaa !359
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1301 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  br label %_ZN4mlir9OpBuilder27setInsertionPointAfterValueENS_5ValueE.exit.i

_ZN4mlir9OpBuilder27setInsertionPointAfterValueENS_5ValueE.exit.i: ; preds = %bb.x, %bb.w
  %.sink3.i.i = phi ptr [ %i.df, %bb.x ], [ %i.db, %bb.w ]
  %.sink.in.i.i = phi ptr [ %i.dg, %bb.x ], [ %i.dd, %bb.w ]
  %.sink.i.i = load ptr, ptr %.sink.in.i.i, align 8, !tbaa !160
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sink3.i.i, ptr %i.dh, align 8, !tbaa !161
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sink.i.i, ptr %i.di, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.z

bb.y:                                             ; preds = %_ZN4mlir6detail17DominanceInfoBaseILb0EE7getNodeEPNS_5BlockE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.aa

bb.z:                                             ; preds = %_ZN4mlir9OpBuilder27setInsertionPointAfterValueENS_5ValueE.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.dj = load ptr, ptr %i.g, align 8, !tbaa !138
  %i.dk = call ptr @_ZN4mlir4LLVM6detail13DebugImporter19translateExpressionEPN4llvm12DIExpressionE(ptr noundef nonnull align 8 dereferenceable(265) %i.dj, ptr noundef %7) #22
  %i.dl = ptrtoint ptr %i.l to i64
  store i64 %i.dl, ptr %0, align 8, !tbaa !359
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dn = ptrtoint ptr %i.dk to i64
  store i64 %i.dn, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dp = ptrtoint ptr %i.i to i64
  store i64 %i.dp, ptr %i.do, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %bb.y, %bb.z, %bb.c
  ret void
}

declare ptr @_ZN4mlir4LLVM6detail13DebugImporter19translateExpressionEPN4llvm12DIExpressionE(ptr noundef nonnull align 8 dereferenceable(265), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i8 @_ZN4mlir4LLVM12ModuleImport21processDebugIntrinsicEPN4llvm20DbgVariableIntrinsicERNS_13DominanceInfoE(ptr noundef nonnull align 8 dereferenceable(498) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.llvm::iterator_range.3740", align 8 ; 6 uses
  %4 = alloca %"class.llvm::RawLocationWrapper", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %5 = alloca %"class.mlir::Location", align 8    ; 7 uses
  %6 = alloca %class.anon.1742, align 8           ; 9 uses
  %7 = alloca %class.anon.1743, align 8           ; 5 uses
  %8 = alloca %"class.std::tuple.1732", align 8   ; 6 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !472
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !361
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !138
  %i.g = tail call ptr @_ZN4mlir4LLVM6detail13DebugImporter12translateLocEPN4llvm10DILocationE(ptr noundef nonnull align 8 dereferenceable(265) %i.f, ptr noundef %i.d) #22
  store ptr %i.g, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %0, ptr %6, align 8, !tbaa !475
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.h, align 8, !tbaa !425
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.b, ptr %i.i, align 8, !tbaa !1321
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.k = load <2 x ptr>, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %0, ptr %7, align 8, !tbaa !477
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.b, ptr %i.m, align 8, !tbaa !1321
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, 268435455
  %i.q = zext nneg i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q                      ; 2 uses
  %i.s = getelementptr inbounds [32 x i8], ptr %1, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !282
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !427  ; 2 uses
  %i.w = load i8, ptr %i.v, align 4, !tbaa !181   ; 2 uses
  %i.x = icmp eq i8 %i.w, 4
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = call fastcc i8 @"_ZZN4mlir4LLVM12ModuleImport21processDebugIntrinsicEPN4llvm20DbgVariableIntrinsicERNS_13DominanceInfoEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.v, ptr %4, align 8
  %i.z = add i8 %i.w, -5
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.z, 33
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.thread.i, label %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i.i

_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZNK4llvm18RawLocationWrapper12location_opsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.3740") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  %i.aa = load i64, ptr %3, align 8, !noalias !1322 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !1323 ; 3 uses
  %.not3.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aa, %i.ac
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit.thread.sink.split, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i.i, %bb.f
  %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i.i = phi i64 [ %storemerge.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.aa, %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i.i ] ; 5 uses
  %i.ad = and i64 %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i.i, 4
  %i.ae = icmp eq i64 %i.ad, 0                    ; 2 uses
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.af = inttoptr i64 %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ag = and i64 %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i.i, -5
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1325, !noalias !1326
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.aj = phi ptr [ %i.af, %bb.d ], [ %i.ai, %bb.e ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 136
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !224, !noalias !1326
  %i.am = load i8, ptr %i.al, align 8, !tbaa !228, !noalias !1326
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.am, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i.i.i
  %storemerge.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.ae, i64 144, i64 8
  %storemerge.i.i.i.i.i.i.i.i.i.i = add nuw i64 %storemerge.v.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %storemerge.i.i.i.i.i.i.i.i.i.i, %i.ac
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit.thread.sink.split, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1320

_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.g

_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.i: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i.i.i
  %.not12.i = icmp eq i64 %i.ac, %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.not12.i, label %_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit.thread, label %_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.i._crit_edge

_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.i._crit_edge: ; preds = %_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.i
  %.pre = load i32, ptr %i.n, align 4
  %.pre29 = and i32 %.pre, 268435455
  %.pre30 = zext nneg i32 %.pre29 to i64
  %.pre32 = sub nsw i64 0, %.pre30
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.i._crit_edge, %_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.thread.i
  %.pre-phi33 = phi i64 [ %.pre32, %_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.i._crit_edge ], [ %i.r, %_ZNK4llvm20DbgVariableIntrinsic14isKillLocationEv.exit.thread.i ]
  %i.an = getelementptr inbounds [32 x i8], ptr %1, i64 %.pre-phi33
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !282 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !228
  %.not.i = icmp eq i8 %i.ap, 25
  br i1 %.not.i, label %_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit, label %_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit.thread

_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit: ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !427
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !181
  %i.at = add i8 %i.as, -3
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.at, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.h, label %_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit.thread

bb.h:                                             ; preds = %_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit
  %i.au = call fastcc i8 @"_ZZN4mlir4LLVM12ModuleImport21processDebugIntrinsicEPN4llvm20DbgVariableIntrinsicERNS_13DominanceInfoEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %bb.q

_ZL22isMetadataKillLocationPN4llvm20DbgVariableIntrinsicE.exit.thread.sink.split: ; preds = %bb.f, %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_0
