Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Timing?download=true
inline.NumInlined: 4598
inline.NumDeleted: 1515
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN20TimingControlVisitor30getCreateDynamicTriggerSenTreeEv:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 160) #25
  resume { ptr, i32 } %.pn21.pn

bb.s:                                             ; preds = %bb.a, %_ZN11AstTopScope12addSenTreespEP10AstSenTree.exit
  %.017 = phi ptr [ %i.au, %_ZN11AstTopScope12addSenTreespEP10AstSenTree.exit ], [ %i.b, %bb.a ]
  ret ptr %.017
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZN14SenExprBuilder5buildEPK10AstSenTree(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !274
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !273  ; 2 uses
  %.not32 = icmp eq ptr %i.d, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.023.lcssa = phi ptr [ null, %bb.a ], [ %.124, %bb.g ]
  %.022.lcssa = phi i8 [ 0, %bb.a ], [ %.1, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.023.lcssa, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.022.lcssa, 1
  ret { ptr, i8 } %.fca.1.insert

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.035 = phi ptr [ %i.s, %bb.h ], [ %i.d, %bb.a ] ; 2 uses
  %.02234 = phi i8 [ %.1, %bb.h ], [ 0, %bb.a ]   ; 2 uses
  %.02333 = phi ptr [ %.124, %bb.h ], [ null, %bb.a ] ; 4 uses
  %i.e = tail call { ptr, i8 } @_ZN14SenExprBuilder5buildEPK10AstSenItem(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull %.035) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.e, 0 ; 3 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.e, 1
  %.not15 = icmp eq ptr %.fca.0.extract, null
  br i1 %.not15, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not16 = icmp eq ptr %.02333, null
  br i1 %.not16, label %_ZN5AstOrC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #29 ; 10 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.f, i16 273, ptr noundef %i.b)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.f, align 8, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  store i64 0, ptr %i.g, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.f, ptr noundef nonnull %.02333)
          to label %.noexc17 unwind label %bb.f

.noexc17:                                         ; preds = %.noexc
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.f, ptr noundef nonnull %.fca.0.extract)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.noexc17
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV5AstOr, i64 16), ptr %i.f, align 8, !tbaa !104
  %i.h = getelementptr inbounds nuw i8, ptr %.02333, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !319  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !319
  %.not.i.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i.i, label %_ZN5AstOrC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.i, ptr %i.j, align 8, !tbaa !319
  %i.l = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  br label %_ZN5AstOrC2EP8FileLineP11AstNodeExprS3_.exit

_ZN5AstOrC2EP8FileLineP11AstNodeExprS3_.exit:     ; preds = %bb.e, %bb.d, %bb.b
  %i.n = phi ptr [ %.fca.0.extract, %bb.b ], [ %i.f, %bb.d ], [ %i.f, %bb.e ]
  %i.o = and i8 %.fca.1.extract, 1
  %i.p = or i8 %i.o, %.02234
  br label %bb.g

bb.f:                                             ; preds = %.noexc17, %.noexc, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 160) #25
  resume { ptr, i32 } %i.q

bb.g:                                             ; preds = %_ZN5AstOrC2EP8FileLineP11AstNodeExprS3_.exit, %.lr.ph
  %.124 = phi ptr [ %.02333, %.lr.ph ], [ %i.n, %_ZN5AstOrC2EP8FileLineP11AstNodeExprS3_.exit ] ; 2 uses
  %.1 = phi i8 [ %.02234, %.lr.ph ], [ %i.p, %_ZN5AstOrC2EP8FileLineP11AstNodeExprS3_.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.035, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !262  ; 5 uses
  %cond = icmp eq ptr %i.s, null
  br i1 %cond, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.t, align 8, !tbaa !220
  %.not6.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 55
  br i1 %.not6.i, label %.lr.ph, label %bb.i, !prof !200

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.v = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.6, i32 noundef 1063) ; 0 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.32)
  %.sroa.0.0.copyload.i.i5.i = load i16, ptr %i.u, align 8, !tbaa !220
  %i.y = zext i16 %.sroa.0.0.copyload.i.i5.i to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !263
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.aa)
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.28)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.s, ptr noundef nonnull align 8 dereferenceable(112) %i.ac) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14SenExprBuilder18getAndClearResultsEv(ptr dead_on_unwind noalias writable sret(%"struct.SenExprBuilder::Results") align 8 %0, ptr noundef nonnull align 8 dereferenceable(560) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !471  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapI5VNRefI7AstNodeEP11AstVarScopeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !182 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 32) #25
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapI5VNRefI7AstNodeEP11AstVarScopeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !10

_ZNSt13unordered_mapI5VNRefI7AstNodeEP11AstVarScopeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !472
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.g = load i64, ptr %i.f, align 8, !tbaa !473
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !471  ; 2 uses
  %.not5.i.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not5.i.i.i1, label %_ZNSt13unordered_mapI5VNRefI7AstNodeEP11AstVarScopeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5clearEv.exit5, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt13unordered_mapI5VNRefI7AstNodeEP11AstVarScopeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5clearEv.exit, %.lr.ph.i.i.i2
  %.06.i.i.i3 = phi ptr [ %i.k, %.lr.ph.i.i.i2 ], [ %i.j, %_ZNSt13unordered_mapI5VNRefI7AstNodeEP11AstVarScopeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5clearEv.exit ] ; 2 uses
  %i.k = load ptr, ptr %.06.i.i.i3, align 8, !tbaa !182 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i3, i64 noundef 32) #25
  %.not.i.i.i4 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i4, label %_ZNSt13unordered_mapI5VNRefI7AstNodeEP11AstVarScopeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5clearEv.exit5, label %.lr.ph.i.i.i2, !llvm.loop !10

_ZNSt13unordered_mapI5VNRefI7AstNodeEP11AstVarScopeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5clearEv.exit5: ; preds = %.lr.ph.i.i.i2, %_ZNSt13unordered_mapI5VNRefI7AstNodeEP11AstVarScopeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5clearEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !472
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.o = load i64, ptr %i.n, align 8, !tbaa !473
  %i.p = shl i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.p, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !477  ; 2 uses
  %.not5.i.i.i6 = icmp eq ptr %i.r, null
  br i1 %.not5.i.i.i6, label %_ZNSt13unordered_setI5VNRefI7AstNodeESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE5clearEv.exit, label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %_ZNSt13unordered_mapI5VNRefI7AstNodeEP11AstVarScopeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5clearEv.exit5, %.lr.ph.i.i.i7
  %.06.i.i.i8 = phi ptr [ %i.s, %.lr.ph.i.i.i7 ], [ %i.r, %_ZNSt13unordered_mapI5VNRefI7AstNodeEP11AstVarScopeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5clearEv.exit5 ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i.i8, align 8, !tbaa !182 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i8, i64 noundef 24) #25
  %.not.i.i.i9 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i9, label %_ZNSt13unordered_setI5VNRefI7AstNodeESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE5clearEv.exit, label %.lr.ph.i.i.i7, !llvm.loop !11

_ZNSt13unordered_setI5VNRefI7AstNodeESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE5clearEv.exit: ; preds = %.lr.ph.i.i.i7, %_ZNSt13unordered_mapI5VNRefI7AstNodeEP11AstVarScopeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE5clearEv.exit5
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !478
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.w = load i64, ptr %i.v, align 8, !tbaa !479
  %i.x = shl i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.x, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !477  ; 2 uses
  %.not5.i.i.i10 = icmp eq ptr %i.z, null
  br i1 %.not5.i.i.i10, label %_ZNSt13unordered_setI5VNRefI7AstNodeESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE5clearEv.exit14, label %.lr.ph.i.i.i11

.lr.ph.i.i.i11:                                   ; preds = %_ZNSt13unordered_setI5VNRefI7AstNodeESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE5clearEv.exit, %.lr.ph.i.i.i11
  %.06.i.i.i12 = phi ptr [ %i.aa, %.lr.ph.i.i.i11 ], [ %i.z, %_ZNSt13unordered_setI5VNRefI7AstNodeESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE5clearEv.exit ] ; 2 uses
  %i.aa = load ptr, ptr %.06.i.i.i12, align 8, !tbaa !182 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i12, i64 noundef 24) #25
  %.not.i.i.i13 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i13, label %_ZNSt13unordered_setI5VNRefI7AstNodeESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE5clearEv.exit14, label %.lr.ph.i.i.i11, !llvm.loop !11

_ZNSt13unordered_setI5VNRefI7AstNodeESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE5clearEv.exit14: ; preds = %.lr.ph.i.i.i11, %_ZNSt13unordered_setI5VNRefI7AstNodeESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE5clearEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !478
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !479
  %i.af = shl i64 %i.ae, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.af, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !369
  store <2 x ptr> %i.ah, ptr %0, align 8, !tbaa !369
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %4 = load ptr, ptr %i.aj, align 8, !tbaa !382
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ag, i8 0, i64 24, i1 false)
  %5 = load ptr, ptr %2, align 8, !tbaa !381
  %i.ak = load <2 x ptr>, ptr %3, align 8, !tbaa !369
  %6 = insertelement <4 x ptr> poison, ptr %4, i64 0
  %7 = insertelement <4 x ptr> %6, ptr %5, i64 1
  %8 = shufflevector <2 x ptr> %i.ak, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %9 = shufflevector <4 x ptr> %7, <4 x ptr> %8, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %9, ptr %i.ai, align 8, !tbaa !369
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %10 = load ptr, ptr %i.am, align 8, !tbaa !381
  store ptr %10, ptr %i.al, align 8, !tbaa !381
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %13 = load ptr, ptr %12, align 8, !tbaa !480
  store ptr %13, ptr %11, align 8, !tbaa !480
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !382
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !382
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !369
  store <2 x ptr> %i.as, ptr %i.aq, align 8, !tbaa !369
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !382
  store ptr %i.av, ptr %i.at, align 8, !tbaa !382
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !481
  store <2 x ptr> %i.ay, ptr %i.aw, align 8, !tbaa !481
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !379
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !379
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20TimingControlVisitor12localizeVarsEP7AstNodeRKSt6vectorIP6AstVarSaIS4_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %_ZN7AstNode4castI16AstNodeProcedureS_EEPT_PT0_.exit, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 817) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.589)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.c) #28
  unreachable

_ZN7AstNode4castI16AstNodeProcedureS_EEPT_PT0_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.d, align 8, !tbaa !220 ; 2 uses
  %i.e = add i16 %.sroa.0.0.copyload.i.i.i, -401
  %spec.select.i.i = icmp ult i16 %i.e, -10
  br i1 %spec.select.i.i, label %_ZN7AstNode4castI8AstCFuncS_EEPT_PT0_.exit, label %bb.m

_ZN7AstNode4castI8AstCFuncS_EEPT_PT0_.exit:       ; preds = %_ZN7AstNode4castI16AstNodeProcedureS_EEPT_PT0_.exit
  switch i16 %.sroa.0.0.copyload.i.i.i, label %bb.f [
    i16 5, label %bb.c
    i16 472, label %bb.m
  ]

bb.c:                                             ; preds = %_ZN7AstNode4castI8AstCFuncS_EEPT_PT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !173  ; 2 uses
  %.not49 = icmp eq ptr %i.g, null
  br i1 %.not49, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %1, align 8, !tbaa !481    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !481  ; 2 uses
  %.not8794 = icmp eq ptr %i.h, %i.j
  br i1 %.not8794, label %.critedge, label %.lr.ph96

.lr.ph96:                                         ; preds = %bb.d, %_ZN8AstCFunc8addVarspEP6AstVar.exit
  %.sroa.077.095 = phi ptr [ %i.p, %_ZN8AstCFunc8addVarspEP6AstVar.exit ], [ %i.h, %bb.d ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.077.095, align 8, !tbaa !482 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 260 ; 2 uses
  %i.m = load i64, ptr %i.l, align 4
  %i.n = or i64 %i.m, 24576
  store i64 %i.n, ptr %i.l, align 4
  %i.o = tail call noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(280) %i.k, ptr noundef null) ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN8AstCFunc8addVarspEP6AstVar.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph96
  tail call void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull %i.o)
  br label %_ZN8AstCFunc8addVarspEP6AstVar.exit

_ZN8AstCFunc8addVarspEP6AstVar.exit:              ; preds = %.lr.ph96, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.077.095, i64 8 ; 2 uses
  %.not87 = icmp eq ptr %i.p, %i.j
  br i1 %.not87, label %.critedge, label %.lr.ph96

bb.f:                                             ; preds = %_ZN7AstNode4castI8AstCFuncS_EEPT_PT0_.exit
  %i.q = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 836) ; 0 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNK7AstNode11prettyNameQB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(152) %0)
  %i.s = load ptr, ptr %2, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !31
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.f
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.590, i64 noundef 69)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNK7AstNode14prettyTypeNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.x = load ptr, ptr %3, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !31
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.x, i64 noundef %i.z)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit61 unwind label %bb.k

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit61: ; preds = %bb.g
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.aa) #28
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit61
  unreachable

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.g, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit61
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !32
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ad, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ab, %bb.i ]
  %i.aj = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.l
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.q

bb.m:                                             ; preds = %_ZN7AstNode4castI8AstCFuncS_EEPT_PT0_.exit, %_ZN7AstNode4castI16AstNodeProcedureS_EEPT_PT0_.exit
  %.3.in = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.3 = load ptr, ptr %.3.in, align 8, !tbaa !173 ; 2 uses
  %.not50 = icmp eq ptr %.3, null
  br i1 %.not50, label %bb.n, label %.thread, !prof !776

bb.n:                                             ; preds = %bb.m
  %i.ao = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 840) ; 0 uses
  %i.ap = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNK7AstNode11prettyNameQB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(152) %0)
  %i.aq = load ptr, ptr %4, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !31
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef %i.aq, i64 noundef %i.as)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit65 unwind label %bb.p ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit65: ; preds = %bb.n
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull @.str.591, i64 noundef 103)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit65
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.at) #28
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  unreachable

bb.p:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit65, %bb.n, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.p
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !32
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.q

.thread:                                          ; preds = %bb.c, %bb.m
  %.383 = phi ptr [ %.3, %bb.m ], [ %i.g, %bb.c ]
  %i.bb = load ptr, ptr %1, align 8, !tbaa !481   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !481 ; 2 uses
  %.not9092 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not9092, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread, %.lr.ph
  %.sroa.071.093 = phi ptr [ %i.bj, %.lr.ph ], [ %i.bb, %.thread ] ; 2 uses
  %i.be = load ptr, ptr %.sroa.071.093, align 8, !tbaa !482 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 260 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 4
  %i.bh = or i64 %i.bg, 24576
  store i64 %i.bh, ptr %i.bf, align 4
  %i.bi = tail call noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(280) %i.be, ptr noundef null)
  tail call void @_ZN7AstNode17addHereThisAsNextEPS_(ptr noundef nonnull align 8 dereferenceable(152) %.383, ptr noundef %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.071.093, i64 8 ; 2 uses
  %.not90 = icmp eq ptr %i.bj, %i.bd
  br i1 %.not90, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph, %_ZN8AstCFunc8addVarspEP6AstVar.exit, %.thread, %bb.d
  ret void

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %.pn51 = phi { ptr, i32 } [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ]
  resume { ptr, i32 } %.pn51
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode2asI14AstCMethodHard11AstNodeExprEEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !220
  %.not6 = icmp eq i16 %.sroa.0.0.copyload.i.i, 107
  br i1 %.not6, label %.critedge, label %bb.c, !prof !200

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.6, i32 noundef 1063) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.32)
  %.sroa.0.0.copyload.i.i5 = load i16, ptr %i.a, align 8, !tbaa !220
  %i.e = zext i16 %.sroa.0.0.copyload.i.i5 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !263
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.g)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.28)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.i) #28
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9AstCAwait5exprpEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !273
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14SenExprBuilder7ResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !378  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP6AstVarSaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !379
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIP6AstVarSaIS1_EED2Ev.exit

_ZNSt6vectorIP6AstVarSaIS1_EED2Ev.exit:           ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !381  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIP6AstVarSaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !382
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #25
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EED2Ev.exit

_ZNSt6vectorIP11AstNodeStmtSaIS1_EED2Ev.exit:     ; preds = %_ZNSt6vectorIP6AstVarSaIS1_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !381  ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EED2Ev.exit3, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIP11AstNodeStmtSaIS1_EED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !382
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EED2Ev.exit3

_ZNSt6vectorIP11AstNodeStmtSaIS1_EED2Ev.exit3:    ; preds = %_ZNSt6vectorIP11AstNodeStmtSaIS1_EED2Ev.exit, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !381  ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EED2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIP11AstNodeStmtSaIS1_EED2Ev.exit3
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !382
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #25
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EED2Ev.exit5

_ZNSt6vectorIP11AstNodeStmtSaIS1_EED2Ev.exit5:    ; preds = %_ZNSt6vectorIP11AstNodeStmtSaIS1_EED2Ev.exit3, %bb.e
  %i.ac = load ptr, ptr %0, align 8, !tbaa !381   ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EED2Ev.exit7, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIP11AstNodeStmtSaIS1_EED2Ev.exit5
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !382
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #25
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EED2Ev.exit7

_ZNSt6vectorIP11AstNodeStmtSaIS1_EED2Ev.exit7:    ; preds = %_ZNSt6vectorIP11AstNodeStmtSaIS1_EED2Ev.exit5, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN13SenTreeFinder10getSenTreeEP10AstSenTree(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !401
  %.not.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.07.0.in.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.07.0.i, %bb.d ]
  %.sroa.07.0.i = load ptr, ptr %.sroa.07.0.in.i, align 8, !tbaa !182 ; 4 uses
  %.not.i = icmp eq ptr %.sroa.07.0.i, null
  br i1 %.not.i, label %_ZNSt10_HashtableI5VNRefI10AstSenTreeES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS2_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8
  %i.f = tail call noundef zeroext i1 @_ZN7AstNode12sameTreeIterEPKS_S1_bb(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull %.sroa.0.0.copyload.i.i, i1 noundef zeroext true, i1 noundef zeroext false)
  br i1 %i.f, label %_ZNSt10_HashtableI5VNRefI10AstSenTreeES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS2_.exit.thread11, label %bb.c, !llvm.loop !777

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_Z20V3HasherUncachedHashRK7AstNode(ptr noundef nonnull align 8 dereferenceable(152) %1) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !185
  %i.j = urem i64 %i.g, %i.i                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !184
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.j
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !402  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableI5VNRefI10AstSenTreeES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS2_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !182  ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !404
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.p = phi i64 [ %.pre.i.i.i, %bb.f ], [ %i.w, %bb.h ]
  %.015.i.i.i = phi ptr [ %i.n, %bb.f ], [ %.0.i.i.i, %bb.h ]
  %.0.i.i.i = phi ptr [ %i.o, %bb.f ], [ %i.t, %bb.h ] ; 3 uses
  %i.q = icmp eq i64 %i.g, %i.p
  br i1 %i.q, label %_ZNKSt8__detail15_Hashtable_baseI5VNRefI10AstSenTreeES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseI5VNRefI10AstSenTreeES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseI5VNRefI10AstSenTreeES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i: ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.r, align 8
  %i.s = tail call noundef zeroext i1 @_ZN7AstNode12sameTreeIterEPKS_S1_bb(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull %.sroa.0.0.copyload.i.i.i.i.i, i1 noundef zeroext true, i1 noundef zeroext false)
  br i1 %i.s, label %_ZNSt10_HashtableI5VNRefI10AstSenTreeES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS2_.exit, label %_ZNKSt8__detail15_Hashtable_baseI5VNRefI10AstSenTreeES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseI5VNRefI10AstSenTreeES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseI5VNRefI10AstSenTreeES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i, %bb.g
  %i.t = load ptr, ptr %.0.i.i.i, align 8, !tbaa !182 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not18.i.i.i, label %_ZNSt10_HashtableI5VNRefI10AstSenTreeES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS2_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseI5VNRefI10AstSenTreeES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i
  %i.u = load i64, ptr %i.h, align 8, !tbaa !185
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !404  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN20TimingControlVisitor26getCreateTriggerSchedulerpEP10AstSenTree:bb.a

bb.g:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %2, align 8, !tbaa !30, !noalias !781 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i: ; preds = %bb.g
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !32, !noalias !781
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16.i
  %common.resume.op = phi { ptr, i32 } [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16.i ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %i.v, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !781
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !781
  br label %common.resume

_ZN13V3UniqueNames3getB5cxx11EPK7AstNode.exit:    ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !781
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !781
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !780
  %i.am = invoke noundef ptr @_ZN8AstScope10createTempERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP12AstNodeDType(ptr noundef nonnull align 8 dereferenceable(208) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.al)
          to label %bb.h unwind label %bb.i       ; 4 uses

bb.h:                                             ; preds = %_ZN13V3UniqueNames3getB5cxx11EPK7AstNode.exit
  %i.an = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !32
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.i:                                             ; preds = %_ZN13V3UniqueNames3getB5cxx11EPK7AstNode.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !32
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ay = ptrtoint ptr %i.am to i64
  store i64 %i.ay, ptr %i.e, align 8, !tbaa !32
  %i.az = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !101
  store i32 %i.az, ptr %i.a, align 8, !tbaa !312
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZN7AstNode2asI11AstVarScopeS_EEPT_PT0_.exit, label %bb.j

bb.j:                                             ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ba = phi ptr [ %i.g, %.thread ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.bb, align 8, !tbaa !220
  %.not6.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 69
  br i1 %.not6.i, label %_ZN7AstNode2asI11AstVarScopeS_EEPT_PT0_.exit, label %bb.k, !prof !200

bb.k:                                             ; preds = %bb.j
  %i.bc = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.6, i32 noundef 1063) ; 0 uses
  %i.bd = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.32)
  %.sroa.0.0.copyload.i.i5.i = load i16, ptr %i.bb, align 8, !tbaa !220
  %i.bf = zext i16 %.sroa.0.0.copyload.i.i5.i to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !263
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef %i.bh)
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull @.str.28)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.ba, ptr noundef nonnull align 8 dereferenceable(112) %i.bj) #28
  unreachable

_ZN7AstNode2asI11AstVarScopeS_EEPT_PT0_.exit:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.j
  %i.bk = phi ptr [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.ba, %bb.j ]
  ret ptr %i.bk
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_b(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %.ptr128 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !223
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !223
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  br i1 %2, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !262  ; 2 uses
  %.not45 = icmp eq ptr %i.e, null
  br i1 %.not45, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.e, ptr %.ptr128, align 16, !tbaa !223
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i.i, label %.split.i, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %.094.idx = phi i64 [ 16, %bb.d ], [ 24, %bb.c ], [ 16, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %i.f, align 8, !tbaa !220
  %i.g = add i16 %.sroa.0.0.copyload.i.i.i.i.i, -369
  %spec.select.i.i.i.i = icmp ult i16 %i.g, 2
  br i1 %spec.select.i.i.i.i, label %_ZZNK20TimingControlVisitor18needDynamicTriggerEP7AstNodeENKUlS1_E_clES1_.exit.i, label %.split.i

.split.i:                                         ; preds = %.thread, %bb.d
  %.095.idx = phi i64 [ %.094.idx, %.thread ], [ 16, %bb.d ]
  %i.h = load ptr, ptr %0, align 8, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(152) %0), !inline_history !782
  br i1 %i.k, label %bb.e, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit

_ZZNK20TimingControlVisitor18needDynamicTriggerEP7AstNodeENKUlS1_E_clES1_.exit.i: ; preds = %.thread
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !332
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 260
  %i.o = load i64, ptr %i.n, align 4
  %i.p = and i64 %i.o, 8192
  %.not24.i = icmp eq i64 %i.p, 0
  br i1 %.not24.i, label %bb.e, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %_ZZNK20TimingControlVisitor18needDynamicTriggerEP7AstNodeENKUlS1_E_clES1_.exit.i, %.split.i
  %.093.idx = phi i64 [ %.094.idx, %_ZZNK20TimingControlVisitor18needDynamicTriggerEP7AstNodeENKUlS1_E_clES1_.exit.i ], [ %.095.idx, %.split.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !243  ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.093.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.093.idx
  %.093.add = add nuw nsw i64 %.093.idx, 8
  store ptr %i.r, ptr %.093.ptr, align 8, !tbaa !223
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4.idx = phi i64 [ %.093.idx, %bb.e ], [ %.093.add, %bb.f ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !222  ; 2 uses
  %.not21.i = icmp eq ptr %i.t, null
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.4.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.idx
  %.4.add = add nuw nsw i64 %.4.idx, 8
  store ptr %i.t, ptr %.4.ptr, align 8, !tbaa !223
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.5.idx = phi i64 [ %.4.idx, %bb.g ], [ %.4.add, %bb.h ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !173  ; 2 uses
  %.not22.i = icmp eq ptr %i.v, null
  br i1 %.not22.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.5.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.5.idx
  %.5.add = add nuw nsw i64 %.5.idx, 8
  store ptr %i.v, ptr %.5.ptr, align 8, !tbaa !223
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.6.idx = phi i64 [ %.5.idx, %bb.i ], [ %.5.add, %bb.j ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !273  ; 2 uses
  %.not23.i = icmp eq ptr %i.x, null
  br i1 %.not23.i, label %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit, label %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit.thread

_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit.thread: ; preds = %bb.k
  %.6.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.6.idx
  %.6.add = add nuw nsw i64 %.6.idx, 8
  store ptr %i.x, ptr %.6.ptr, align 8, !tbaa !223
  br label %.lr.ph.preheader

_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit: ; preds = %bb.k
  %i.y = icmp samesign ugt i64 %.6.idx, 16
  br i1 %i.y, label %.lr.ph.preheader, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit, !prof !483

.lr.ph.preheader:                                 ; preds = %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit.thread, %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit
  %.7.idx145 = phi i64 [ %.6.add, %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit.thread ], [ %.6.idx, %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit ]
  %.7.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.7.idx145
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit62
  %.035119 = phi ptr [ %.136, %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit62 ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.037118 = phi ptr [ %.138, %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit62 ], [ %.ptr128, %.lr.ph.preheader ] ; 3 uses
  %.039117 = phi i64 [ %.140, %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit62 ], [ 32, %.lr.ph.preheader ] ; 3 uses
  %.sroa.074.0116 = phi ptr [ %.sroa.074.1, %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit62 ], [ null, %.lr.ph.preheader ] ; 4 uses
  %.1115 = phi ptr [ %.11, %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit62 ], [ %.7.ptr, %.lr.ph.preheader ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.1115, i64 -8 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !223 ; 9 uses
  %i.ab = getelementptr inbounds i8, ptr %.1115, i64 -24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !223 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.prefetch.p0(ptr nonnull %i.ad, i32 0, i32 3, i32 1)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.ae, i32 0, i32 3, i32 1)
  %.not46 = icmp ult ptr %i.z, %.035119
  br i1 %.not46, label %bb.o, label %bb.l, !prof !200

bb.l:                                             ; preds = %.lr.ph
  %i.af = shl i64 %.039117, 1                     ; 3 uses
  %i.ag = icmp ugt i64 %i.af, 2305843009213693951
  %i.ah = shl i64 %.039117, 4
  %i.ai = select i1 %i.ag, i64 -1, i64 %i.ah
  %i.aj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ai) #29
          to label %bb.m unwind label %bb.n       ; 4 uses

bb.m:                                             ; preds = %bb.l
  %i.ak = ptrtoint ptr %i.z to i64
  %i.al = ptrtoint ptr %.037118 to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.037118, i64 -16
  %i.ao = add i64 %i.am, 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull align 8 %i.an, i64 %i.ao, i1 false)
  %.not.i.i = icmp eq ptr %.sroa.074.0116, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i: ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %.sroa.074.0116) #25
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit: ; preds = %bb.m, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.am
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.af
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -40
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.o:                                             ; preds = %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit, %.lr.ph
  %.290 = phi ptr [ %i.z, %.lr.ph ], [ %i.aq, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ] ; 3 uses
  %.sroa.074.1 = phi ptr [ %.sroa.074.0116, %.lr.ph ], [ %i.aj, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ] ; 4 uses
  %.140 = phi i64 [ %.039117, %.lr.ph ], [ %i.af, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ]
  %.138 = phi ptr [ %.037118, %.lr.ph ], [ %i.ap, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ] ; 2 uses
  %.136 = phi ptr [ %.035119, %.lr.ph ], [ %i.as, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !262 ; 2 uses
  %.not47 = icmp eq ptr %i.av, null
  br i1 %.not47, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %.290, i64 8
  store ptr %i.av, ptr %.290, align 8, !tbaa !223
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.3 = phi ptr [ %.290, %bb.o ], [ %i.aw, %bb.p ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i51 = load i16, ptr %i.ax, align 8, !tbaa !220
  %i.ay = add i16 %.sroa.0.0.copyload.i.i.i.i.i51, -369
  %spec.select.i.i.i.i52 = icmp ult i16 %i.ay, 2
  br i1 %spec.select.i.i.i.i52, label %_ZZNK20TimingControlVisitor18needDynamicTriggerEP7AstNodeENKUlS1_E_clES1_.exit.i59, label %.split.i53

.split.i53:                                       ; preds = %bb.q
  %i.az = load ptr, ptr %i.aa, align 8, !tbaa !104
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 208
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(152) %i.aa)
          to label %.noexc61 unwind label %bb.z, !inline_history !782

.noexc61:                                         ; preds = %.split.i53
  br i1 %i.bc, label %bb.r, label %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit62.thread

_ZZNK20TimingControlVisitor18needDynamicTriggerEP7AstNodeENKUlS1_E_clES1_.exit.i59: ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !332
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 260
  %i.bg = load i64, ptr %i.bf, align 4
  %i.bh = and i64 %i.bg, 8192
  %.not24.i60 = icmp eq i64 %i.bh, 0
  br i1 %.not24.i60, label %bb.r, label %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit62.thread

bb.r:                                             ; preds = %_ZZNK20TimingControlVisitor18needDynamicTriggerEP7AstNodeENKUlS1_E_clES1_.exit.i59, %.noexc61
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !243 ; 2 uses
  %.not.i55 = icmp eq ptr %i.bj, null
  br i1 %.not.i55, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %.3, i64 8
  store ptr %i.bj, ptr %.3, align 8, !tbaa !223
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.8 = phi ptr [ %.3, %bb.r ], [ %i.bk, %bb.s ]  ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !222 ; 2 uses
  %.not21.i56 = icmp eq ptr %i.bm, null
  br i1 %.not21.i56, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %.8, i64 8
  store ptr %i.bm, ptr %.8, align 8, !tbaa !223
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.9 = phi ptr [ %.8, %bb.t ], [ %i.bn, %bb.u ]  ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !173 ; 2 uses
  %.not22.i57 = icmp eq ptr %i.bp, null
  br i1 %.not22.i57, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %.9, i64 8
  store ptr %i.bp, ptr %.9, align 8, !tbaa !223
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.10 = phi ptr [ %.9, %bb.v ], [ %i.bq, %bb.w ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !273 ; 2 uses
  %.not23.i58 = icmp eq ptr %i.bs, null
  br i1 %.not23.i58, label %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit62, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = getelementptr inbounds nuw i8, ptr %.10, i64 8
  store ptr %i.bs, ptr %.10, align 8, !tbaa !223
  br label %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit62

bb.z:                                             ; preds = %.split.i53
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit62: ; preds = %bb.y, %bb.x
  %.11 = phi ptr [ %.10, %bb.x ], [ %i.bt, %bb.y ] ; 2 uses
  %i.bv = icmp ugt ptr %.11, %.138
  br i1 %i.bv, label %.lr.ph, label %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit62.thread, !prof !448, !llvm.loop !783

_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit62.thread: ; preds = %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit62, %_ZZNK20TimingControlVisitor18needDynamicTriggerEP7AstNodeENKUlS1_E_clES1_.exit.i59, %.noexc61
  %.lcssa = phi i1 [ true, %.noexc61 ], [ false, %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit62 ], [ true, %_ZZNK20TimingControlVisitor18needDynamicTriggerEP7AstNodeENKUlS1_E_clES1_.exit.i59 ] ; 2 uses
  %.not.i63 = icmp eq ptr %.sroa.074.1, null
  br i1 %.not.i63, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i: ; preds = %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit62.thread
  call void @_ZdaPv(ptr noundef nonnull %.sroa.074.1) #25
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit, %_ZZNK20TimingControlVisitor18needDynamicTriggerEP7AstNodeENKUlS1_E_clES1_.exit.i, %.split.i, %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit62.thread, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i
  %.2104 = phi i1 [ %.lcssa, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i ], [ %.lcssa, %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit62.thread ], [ true, %.split.i ], [ true, %_ZZNK20TimingControlVisitor18needDynamicTriggerEP7AstNodeENKUlS1_E_clES1_.exit.i ], [ false, %_ZZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS2_E_clES2_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i1 %.2104

bb.aa:                                            ; preds = %bb.n, %bb.z
  %.sroa.074.3 = phi ptr [ %.sroa.074.1, %bb.z ], [ %.sroa.074.0116, %bb.n ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.bu, %bb.z ], [ %i.at, %bb.n ]
  %.not.i64 = icmp eq ptr %.sroa.074.3, null
  br i1 %.not.i64, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit66, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i65

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i65: ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %.sroa.074.3) #25
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit66

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit66: ; preds = %bb.aa, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode4castI13AstNodeVarRefS_EEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !220
  %i.b = add i16 %.sroa.0.0.copyload.i.i, -369
  %spec.select.i = icmp ult i16 %i.b, 2
  %spec.select = select i1 %spec.select.i, ptr %0, ptr null
  br label %bb.c

end_hunk_1
begin_hunk_2_@_ZN14SenExprBuilder10createTermEPK10AstSenItem:bb.a
_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlvE_clEv.exit115: ; preds = %bb.bo
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.fw, i16 330, ptr noundef %i.b)
          to label %.noexc119 unwind label %bb.cg

.noexc119:                                        ; preds = %_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlvE_clEv.exit115
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTV12AstNodeUniop, i64 16), ptr %i.fw, align 8, !tbaa !104
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 152
  store i64 0, ptr %i.fy, align 8
  %.not.i.i.i116 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i116, label %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i, label %bb.bp

bb.bp:                                            ; preds = %.noexc119
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 72 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !319 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 72 ; 4 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !319
  %.not.i.i.i.i117 = icmp eq ptr %i.gc, %i.ga
  br i1 %.not.i.i.i.i117, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !319
  %i.gd = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  %i.ge = add i64 %i.gd, 1
  store i64 %i.ge, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  br label %bb.br

_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i: ; preds = %.noexc119
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.fw, ptr noundef null)
          to label %.noexc120 unwind label %bb.cg

.noexc120:                                        ; preds = %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTV6AstNot, i64 16), ptr %i.fw, align 8, !tbaa !104
  br label %_ZN6AstNotC2EP8FileLineP11AstNodeExpr.exit122

bb.br:                                            ; preds = %bb.bq, %bb.bp
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.fw, ptr noundef nonnull %i.fx)
          to label %.noexc121 unwind label %bb.cg

.noexc121:                                        ; preds = %bb.br
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTV6AstNot, i64 16), ptr %i.fw, align 8, !tbaa !104
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !319 ; 2 uses
  %i.gg = load ptr, ptr %i.gb, align 8, !tbaa !319
  %.not.i.i5.i118 = icmp eq ptr %i.gg, %i.gf
  br i1 %.not.i.i5.i118, label %_ZN6AstNotC2EP8FileLineP11AstNodeExpr.exit122, label %bb.bs

bb.bs:                                            ; preds = %.noexc121
  store ptr %i.gf, ptr %i.gb, align 8, !tbaa !319
  %i.gh = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  %i.gi = add i64 %i.gh, 1
  store i64 %i.gi, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  br label %_ZN6AstNotC2EP8FileLineP11AstNodeExpr.exit122

_ZN6AstNotC2EP8FileLineP11AstNodeExpr.exit122:    ; preds = %bb.bs, %.noexc121, %.noexc120
  %i.gj = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #29
          to label %.noexc130 unwind label %bb.cf ; 12 uses

.noexc130:                                        ; preds = %_ZN6AstNotC2EP8FileLineP11AstNodeExpr.exit122
  %i.gk = invoke noundef ptr @_ZN14SenExprBuilder7getPrevEP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %i.d)
          to label %bb.bt unwind label %bb.bz     ; 2 uses

bb.bt:                                            ; preds = %.noexc130
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 168
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !321 ; 3 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(232) %i.gj, i16 369, ptr noundef %i.b)
          to label %.noexc.i124 unwind label %bb.ca

.noexc.i124:                                      ; preds = %bb.bt
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV13AstNodeVarRef, i64 16), ptr %i.gj, align 8, !tbaa !104
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 152 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.gn, i8 0, i64 25, i1 false)
  %i.gp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN16VSelfPointerText8s_emptypB5cxx11E, i64 8), align 8, !tbaa !324 ; 2 uses
  %i.gq = load <2 x ptr>, ptr @_ZN16VSelfPointerText8s_emptypB5cxx11E, align 8, !tbaa !325
  store <2 x ptr> %i.gq, ptr %i.go, align 8, !tbaa !325
  %.not.i.i.i.i.i.i.i125 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i.i.i125, label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i.i127, label %bb.bu

bb.bu:                                            ; preds = %.noexc.i124
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 3 uses
  %i.gs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i.i.i.i126 = icmp eq i8 %i.gs, 0
  br i1 %.not.i.i.i.i.i.i.i.i126, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gt = load i32, ptr %i.gr, align 4, !tbaa !101
  %i.gu = add nsw i32 %i.gt, 1
  store i32 %i.gu, ptr %i.gr, align 4, !tbaa !101
  br label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i.i127

bb.bw:                                            ; preds = %bb.bu
  %i.gv = atomicrmw volatile add ptr %i.gr, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i.i127

_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i.i127: ; preds = %bb.bw, %bb.bv, %.noexc.i124
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !332
  %.not.i.i.i.i.i128 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i.i.i128, label %bb.cc, label %bb.bx

bb.bx:                                            ; preds = %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i.i127
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gm, i64 72
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !319 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gj, i64 72 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !319
  %.not.i.i.i.i.i.i129 = icmp eq ptr %i.gz, %i.gx
  br i1 %.not.i.i.i.i.i.i129, label %bb.cc, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !319
  %i.ha = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  %i.hb = add i64 %i.ha, 1
  store i64 %i.hb, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  br label %bb.cc

bb.bz:                                            ; preds = %.noexc130
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bt
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pn.i123 = phi { ptr, i32 } [ %i.hd, %bb.ca ], [ %i.hc, %bb.bz ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef 232) #25
  br label %.body131

bb.cc:                                            ; preds = %bb.by, %bb.bx, %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i.i127
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV9AstVarRef, i64 16), ptr %i.gj, align 8, !tbaa !104
  %i.he = getelementptr inbounds nuw i8, ptr %i.gj, i64 200
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gj, i64 216 ; 2 uses
  store ptr %i.hf, ptr %i.he, align 8, !tbaa !100
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gj, i64 208
  store i64 0, ptr %i.hg, align 8, !tbaa !31
  store i8 0, ptr %i.hf, align 8, !tbaa !32
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gj, i64 160
  store ptr %i.gk, ptr %i.hh, align 8, !tbaa !333
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.fv, i16 269, ptr noundef %i.b)
          to label %.noexc136 unwind label %bb.cf

.noexc136:                                        ; preds = %bb.cc
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.fv, align 8, !tbaa !104
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fv, i64 152
  store i64 0, ptr %i.hi, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.fv, ptr noundef nonnull %i.fw)
          to label %.noexc137 unwind label %bb.cf

.noexc137:                                        ; preds = %.noexc136
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.fv, ptr noundef nonnull %i.gj)
          to label %.noexc138 unwind label %bb.cf

.noexc138:                                        ; preds = %.noexc137
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV6AstAnd, i64 16), ptr %i.fv, align 8, !tbaa !104
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fw, i64 72
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !319 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fv, i64 72 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !319
  %.not.i.i.i135 = icmp eq ptr %i.hm, %i.hk
  br i1 %.not.i.i.i135, label %_ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit139, label %bb.cd

bb.cd:                                            ; preds = %.noexc138
  store ptr %i.hk, ptr %i.hl, align 8, !tbaa !319
  %i.hn = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  %i.ho = add i64 %i.hn, 1
  store i64 %i.ho, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  br label %_ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit139

_ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit139: ; preds = %bb.cd, %.noexc138
  %i.hp = call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #29 ; 3 uses
  invoke void @_ZN6AstSelC2EP8FileLineP11AstNodeExprii(ptr noundef nonnull align 8 dereferenceable(184) %i.hp, ptr noundef %i.b, ptr noundef nonnull %i.fv, i32 noundef 0, i32 noundef 1)
          to label %_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlP11AstNodeExprE_clES4_.exit140 unwind label %bb.ce

bb.ce:                                            ; preds = %_ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit139
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef 184) #25
  br label %common.resume

_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlP11AstNodeExprE_clES4_.exit140: ; preds = %_ZN6AstAndC2EP8FileLineP11AstNodeExprS3_.exit139
  %i.hr = call noundef ptr @_ZN14SenExprBuilder21wrapExprWithNullCheckEP8FileLineP11AstNodeExprPKS2_(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %i.b, ptr noundef nonnull %i.hp, ptr noundef %i.p)
  br label %_ZN8AstConstC2EP8FileLineNS_8BitFalseE.exit

bb.cf:                                            ; preds = %.noexc137, %.noexc136, %bb.cc, %_ZN6AstNotC2EP8FileLineP11AstNodeExpr.exit122, %bb.bn
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.body131

bb.cg:                                            ; preds = %bb.br, %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i, %_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlvE_clEv.exit115, %bb.bo
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef 160) #25
  br label %.body131

.body131:                                         ; preds = %bb.cf, %bb.cb, %bb.cg
  %.pn49 = phi { ptr, i32 } [ %i.ht, %bb.cg ], [ %i.hs, %bb.cf ], [ %.pn.i123, %bb.cb ]
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef 160) #25
  br label %common.resume

bb.ch:                                            ; preds = %_ZN14SenExprBuilder15getBaseClassRefEPK11AstNodeExpr.exit
  %i.hu = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 46), align 2, !tbaa !484, !range !98, !noundef !99
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.cj, label %bb.ci, !prof !200

bb.ci:                                            ; preds = %bb.ch
  %i.hw = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.583, i32 noundef 278) ; 0 uses
  %i.hx = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.hy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.hx, ptr noundef nonnull @.str.584)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.hy) #28
  unreachable

bb.cj:                                            ; preds = %bb.ch
  %i.hz = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #29 ; 12 uses
  %i.ia = invoke noundef ptr @_ZN14SenExprBuilder7getCurrEP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %i.d)
          to label %_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlvE_clEv.exit142 unwind label %bb.cx

_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlvE_clEv.exit142: ; preds = %bb.cj
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.hz, i16 107, ptr noundef %i.b)
          to label %.noexc144 unwind label %bb.cx

.noexc144:                                        ; preds = %_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlvE_clEv.exit142
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV14AstCMethodHard, i64 16), ptr %i.hz, align 8, !tbaa !104
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 152
  store i8 64, ptr %i.ib, align 8, !tbaa !360
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 153
  store i8 0, ptr %i.ic, align 1, !tbaa !363
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 154
  store i8 0, ptr %i.id, align 2, !tbaa !364
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.hz, ptr noundef %i.ia)
          to label %.noexc145 unwind label %bb.cx

.noexc145:                                        ; preds = %.noexc144
  invoke void @_ZN14AstCMethodHard9setPurityEv(ptr noundef nonnull align 8 dereferenceable(160) %i.hz)
          to label %_ZN14AstCMethodHardC2EP8FileLineP11AstNodeExpr8VCMethodS3_.exit147 unwind label %bb.cx

_ZN14AstCMethodHardC2EP8FileLineP11AstNodeExpr8VCMethodS3_.exit147: ; preds = %.noexc145
  %i.ie = call noundef ptr @_ZNK7AstNode13findVoidDTypeEv(ptr noundef nonnull align 8 dereferenceable(152) %i.hz) ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 72 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !319
  %.not.i.i148 = icmp eq ptr %i.ig, %i.ie
  br i1 %.not.i.i148, label %_ZN7AstNode12dtypeSetVoidEv.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZN14AstCMethodHardC2EP8FileLineP11AstNodeExpr8VCMethodS3_.exit147
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !319
  %i.ih = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  %i.ii = add i64 %i.ih, 1
  store i64 %i.ii, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  br label %_ZN7AstNode12dtypeSetVoidEv.exit

_ZN7AstNode12dtypeSetVoidEv.exit:                 ; preds = %_ZN14AstCMethodHardC2EP8FileLineP11AstNodeExpr8VCMethodS3_.exit147, %bb.ck
  %i.ij = call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #29 ; 5 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hz, i64 88
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !274
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.ij, i16 455, ptr noundef %i.il)
          to label %.noexc.i149 unwind label %bb.cl

.noexc.i149:                                      ; preds = %_ZN7AstNode12dtypeSetVoidEv.exit
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV11AstStmtExpr, i64 16), ptr %i.ij, align 8, !tbaa !104
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.ij, ptr noundef nonnull align 8 dereferenceable(152) %i.hz)
          to label %_ZN11AstNodeExpr8makeStmtEv.exit unwind label %bb.cl

bb.cl:                                            ; preds = %.noexc.i149, %_ZN7AstNode12dtypeSetVoidEv.exit
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ij, i64 noundef 152) #25
  br label %common.resume

_ZN11AstNodeExpr8makeStmtEv.exit:                 ; preds = %.noexc.i149
  %i.in = call noundef ptr @_ZN14SenExprBuilder21wrapStmtWithNullCheckEP8FileLineP11AstNodeStmtPK11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %i.b, ptr noundef nonnull %i.ij, ptr noundef %i.p) ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !480 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !382
  %.not.i150 = icmp eq ptr %i.iq, %i.is
  br i1 %.not.i150, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %_ZN11AstNodeExpr8makeStmtEv.exit
  store ptr %i.in, ptr %i.iq, align 8, !tbaa !375
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store ptr %i.it, ptr %i.ip, align 8, !tbaa !480
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backERKS1_.exit

bb.cn:                                            ; preds = %_ZN11AstNodeExpr8makeStmtEv.exit
  %i.iu = load ptr, ptr %i.io, align 8, !tbaa !381 ; 4 uses
  %i.iv = ptrtoint ptr %i.iq to i64
  %i.iw = ptrtoint ptr %i.iu to i64               ; 2 uses
  %i.ix = sub i64 %i.iv, %i.iw                    ; 5 uses
  %i.iy = icmp eq i64 %i.ix, 9223372036854775800
  br i1 %i.iy, label %bb.co, label %_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.co:                                            ; preds = %bb.cn
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.530) #28
  unreachable

_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cn
  %i.iz = ashr exact i64 %i.ix, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.iz, i64 1)
  %i.ja = add nsw i64 %.sroa.speculated.i.i.i, %i.iz ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %i.iz
  %i.jc = call i64 @llvm.umin.i64(i64 %i.ja, i64 1152921504606846975)
  %i.jd = select i1 %i.jb, i64 1152921504606846975, i64 %i.jc ; 3 uses
  %.not.i.i.i151 = icmp ne i64 %i.jd, 0
  call void @llvm.assume(i1 %.not.i.i.i151)
  %i.je = shl nuw nsw i64 %i.jd, 3
  %i.jf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.je) #29 ; 4 uses
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 %i.ix ; 2 uses
  store ptr %i.in, ptr %i.jg, align 8, !tbaa !375
  %i.jh = icmp sgt i64 %i.ix, 0
  br i1 %i.jh, label %bb.cp, label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.cp:                                            ; preds = %_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jf, ptr align 8 %i.iu, i64 %i.ix, i1 false)
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.cp, %_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %.not.i17.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.jj = load ptr, ptr %i.ir, align 8, !tbaa !382
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = sub i64 %i.jk, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.jl) #25
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.cq, %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.jf, ptr %i.io, align 8, !tbaa !381
  store ptr %i.ji, ptr %i.ip, align 8, !tbaa !480
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.jd
  store ptr %i.jm, ptr %i.ir, align 8, !tbaa !382
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.cm, %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !480 ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !382
  %.not.i152 = icmp eq ptr %i.jp, %i.jr
  br i1 %.not.i152, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backERKS1_.exit
  store ptr %i.in, ptr %i.jp, align 8, !tbaa !375
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store ptr %i.js, ptr %i.jo, align 8, !tbaa !480
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backERKS1_.exit159

bb.cs:                                            ; preds = %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backERKS1_.exit
  %i.jt = load ptr, ptr %i.jn, align 8, !tbaa !381 ; 4 uses
  %i.ju = ptrtoint ptr %i.jp to i64
  %i.jv = ptrtoint ptr %i.jt to i64               ; 2 uses
  %i.jw = sub i64 %i.ju, %i.jv                    ; 5 uses
  %i.jx = icmp eq i64 %i.jw, 9223372036854775800
  br i1 %i.jx, label %bb.ct, label %_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i153

bb.ct:                                            ; preds = %bb.cs
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.530) #28
  unreachable

_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i153: ; preds = %bb.cs
  %i.jy = ashr exact i64 %i.jw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i154 = call i64 @llvm.umax.i64(i64 %i.jy, i64 1)
  %i.jz = add nsw i64 %.sroa.speculated.i.i.i154, %i.jy ; 2 uses
  %i.ka = icmp ult i64 %i.jz, %i.jy
  %i.kb = call i64 @llvm.umin.i64(i64 %i.jz, i64 1152921504606846975)
  %i.kc = select i1 %i.ka, i64 1152921504606846975, i64 %i.kb ; 3 uses
  %.not.i.i.i155 = icmp ne i64 %i.kc, 0
  call void @llvm.assume(i1 %.not.i.i.i155)
  %i.kd = shl nuw nsw i64 %i.kc, 3
  %i.ke = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kd) #29 ; 4 uses
  %i.kf = getelementptr inbounds i8, ptr %i.ke, i64 %i.jw ; 2 uses
  store ptr %i.in, ptr %i.kf, align 8, !tbaa !375
  %i.kg = icmp sgt i64 %i.jw, 0
  br i1 %i.kg, label %bb.cu, label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i156

bb.cu:                                            ; preds = %_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i153
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ke, ptr align 8 %i.jt, i64 %i.jw, i1 false)
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i156

_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i156: ; preds = %bb.cu, %_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i153
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %.not.i17.i.i157 = icmp eq ptr %i.jt, null
  br i1 %.not.i17.i.i157, label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i158, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i156
  %i.ki = load ptr, ptr %i.jq, align 8, !tbaa !382
  %i.kj = ptrtoint ptr %i.ki to i64
  %i.kk = sub i64 %i.kj, %i.jv
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef %i.kk) #25
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i158

_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i158: ; preds = %bb.cv, %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i156
  store ptr %i.ke, ptr %i.jn, align 8, !tbaa !381
  store ptr %i.kh, ptr %i.jo, align 8, !tbaa !480
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.kc
  store ptr %i.kl, ptr %i.jq, align 8, !tbaa !382
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backERKS1_.exit159

_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backERKS1_.exit159: ; preds = %bb.cr, %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i158
  %i.km = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #29 ; 11 uses
  %i.kn = invoke noundef ptr @_ZN14SenExprBuilder7getCurrEP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %i.d)
          to label %_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlvE_clEv.exit161 unwind label %bb.cy

_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlvE_clEv.exit161: ; preds = %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backERKS1_.exit159
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.km, i16 107, ptr noundef %i.b)
          to label %.noexc163 unwind label %bb.cy

.noexc163:                                        ; preds = %_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlvE_clEv.exit161
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV14AstCMethodHard, i64 16), ptr %i.km, align 8, !tbaa !104
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 152
  store i8 67, ptr %i.ko, align 8, !tbaa !360
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 153
  store i8 0, ptr %i.kp, align 1, !tbaa !363
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 154
  store i8 0, ptr %i.kq, align 2, !tbaa !364
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.km, ptr noundef %i.kn)
          to label %.noexc164 unwind label %bb.cy

.noexc164:                                        ; preds = %.noexc163
  invoke void @_ZN14AstCMethodHard9setPurityEv(ptr noundef nonnull align 8 dereferenceable(160) %i.km)
          to label %_ZN14AstCMethodHardC2EP8FileLineP11AstNodeExpr8VCMethodS3_.exit166 unwind label %bb.cy

_ZN14AstCMethodHardC2EP8FileLineP11AstNodeExpr8VCMethodS3_.exit166: ; preds = %.noexc164
  %i.kr = call noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(152) %i.km, i8 1) ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.km, i64 72 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !319
  %.not.i.i167 = icmp eq ptr %i.kt, %i.kr
  br i1 %.not.i.i167, label %_ZN7AstNode11dtypeSetBitEv.exit168, label %bb.cw

bb.cw:                                            ; preds = %_ZN14AstCMethodHardC2EP8FileLineP11AstNodeExpr8VCMethodS3_.exit166
  store ptr %i.kr, ptr %i.ks, align 8, !tbaa !319
  %i.ku = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  %i.kv = add i64 %i.ku, 1
  store i64 %i.kv, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  br label %_ZN7AstNode11dtypeSetBitEv.exit168

_ZN7AstNode11dtypeSetBitEv.exit168:               ; preds = %_ZN14AstCMethodHardC2EP8FileLineP11AstNodeExpr8VCMethodS3_.exit166, %bb.cw
  %i.kw = call noundef ptr @_ZN14SenExprBuilder21wrapExprWithNullCheckEP8FileLineP11AstNodeExprPKS2_(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %i.b, ptr noundef nonnull %i.km, ptr noundef %i.p)
  br label %_ZN8AstConstC2EP8FileLineNS_8BitFalseE.exit

bb.cx:                                            ; preds = %.noexc145, %.noexc144, %_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlvE_clEv.exit142, %bb.cj
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef 160) #25
  br label %common.resume

bb.cy:                                            ; preds = %.noexc164, %.noexc163, %_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlvE_clEv.exit161, %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backERKS1_.exit159
  %i.ky = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.km, i64 noundef 160) #25
  br label %common.resume

bb.cz:                                            ; preds = %_ZN14SenExprBuilder15getBaseClassRefEPK11AstNodeExpr.exit
  %i.kz = call noundef ptr @_ZN14SenExprBuilder7getCurrEP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %i.d)
  br label %_ZN8AstConstC2EP8FileLineNS_8BitFalseE.exit

bb.da:                                            ; preds = %_ZN14SenExprBuilder15getBaseClassRefEPK11AstNodeExpr.exit
  %i.la = call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #29 ; 9 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.la, i16 121, ptr noundef %i.b)
          to label %.noexc171 unwind label %bb.dd

.noexc171:                                        ; preds = %bb.da
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.la, align 8, !tbaa !104
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.lb, ptr noundef nonnull align 8 dereferenceable(208) %i.la, i32 noundef 1, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc172 unwind label %bb.dd

.noexc172:                                        ; preds = %.noexc171
  %i.lc = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(208) %i.la, i8 1)
          to label %.noexc.i169 unwind label %bb.dc ; 2 uses

.noexc.i169:                                      ; preds = %.noexc172
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 72 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !319
  %.not.i.i.i170 = icmp eq ptr %i.le, %i.lc
  br i1 %.not.i.i.i170, label %_ZN8AstConstC2EP8FileLineNS_8BitFalseE.exit, label %bb.db

bb.db:                                            ; preds = %.noexc.i169
  store ptr %i.lc, ptr %i.ld, align 8, !tbaa !319
  %i.lf = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  %i.lg = add i64 %i.lf, 1
  store i64 %i.lg, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  br label %_ZN8AstConstC2EP8FileLineNS_8BitFalseE.exit

bb.dc:                                            ; preds = %.noexc172
  %i.lh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.lb) #24
  br label %.body173

bb.dd:                                            ; preds = %.noexc171, %bb.da
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %.body173

.body173:                                         ; preds = %bb.dc, %bb.dd
  %eh.lpad-body174 = phi { ptr, i32 } [ %i.li, %bb.dd ], [ %i.lh, %bb.dc ]
  call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef 208) #25
  br label %common.resume

bb.de:                                            ; preds = %_ZN14SenExprBuilder15getBaseClassRefEPK11AstNodeExpr.exit
  %i.lj = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.583, i32 noundef 300) ; 0 uses
  %i.lk = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ll = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.lk, ptr noundef nonnull @.str.585)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.ll) #28
  unreachable

_ZN8AstConstC2EP8FileLineNS_8BitFalseE.exit:      ; preds = %.noexc.i169, %bb.db, %bb.cz, %_ZN7AstNode11dtypeSetBitEv.exit168, %_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlP11AstNodeExprE_clES4_.exit140, %_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlP11AstNodeExprE_clES4_.exit113, %_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlP11AstNodeExprE_clES4_.exit, %bb.ab, %_ZN7AstNode11dtypeSetBitEv.exit
  %.sroa.0229.0 = phi ptr [ %i.bf, %_ZN7AstNode11dtypeSetBitEv.exit ], [ %i.ci, %bb.ab ], [ %i.du, %_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlP11AstNodeExprE_clES4_.exit ], [ %i.fs, %_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlP11AstNodeExprE_clES4_.exit113 ], [ %i.hr, %_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlP11AstNodeExprE_clES4_.exit140 ], [ %i.kw, %_ZN7AstNode11dtypeSetBitEv.exit168 ], [ %i.kz, %bb.cz ], [ %i.la, %bb.db ], [ %i.la, %.noexc.i169 ]
  %.sroa.9230.0 = phi i8 [ 1, %_ZN7AstNode11dtypeSetBitEv.exit ], [ 1, %bb.ab ], [ 0, %_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlP11AstNodeExprE_clES4_.exit ], [ 0, %_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlP11AstNodeExprE_clES4_.exit113 ], [ 0, %_ZZN14SenExprBuilder10createTermEPK10AstSenItemENKUlP11AstNodeExprE_clES4_.exit140 ], [ 0, %_ZN7AstNode11dtypeSetBitEv.exit168 ], [ 0, %bb.cz ], [ 1, %bb.db ], [ 1, %.noexc.i169 ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0229.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.9230.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10AstSenItem5condpEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10AstSenItem5senspEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !273
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !220
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN14SenExprBuilder21wrapExprWithNullCheckEP8FileLineP11AstNodeExprPKS2_(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %_ZN7AstNode11dtypeSetBitEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #29 ; 9 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.a, i16 121, ptr noundef %1)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.a, align 8, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeNS_4NullE(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %i.a)
          to label %.noexc23 unwind label %bb.j

.noexc23:                                         ; preds = %.noexc
  %i.c = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(208) %i.a, i8 1)
          to label %.noexc.i unwind label %bb.d   ; 2 uses

.noexc.i:                                         ; preds = %.noexc23
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !319
  %.not.i.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i.i, label %_ZN7AstNode11dtypeSetBitEv.exit.i, label %bb.c

bb.c:                                             ; preds = %.noexc.i
  store ptr %i.c, ptr %i.d, align 8, !tbaa !319
  %i.f = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  br label %_ZN7AstNode11dtypeSetBitEv.exit.i

_ZN7AstNode11dtypeSetBitEv.exit.i:                ; preds = %bb.c, %.noexc.i
  invoke void @_ZN8AstConst14initWithNumberEv(ptr noundef nonnull align 8 dereferenceable(208) %i.a)
          to label %_ZN8AstConstC2EP8FileLineNS_4NullE.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN7AstNode11dtypeSetBitEv.exit.i, %.noexc23
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.b) #24
  br label %.body

_ZN8AstConstC2EP8FileLineNS_4NullE.exit:          ; preds = %_ZN7AstNode11dtypeSetBitEv.exit.i
  %i.i = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #29 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN14SenExprBuilder21wrapStmtWithNullCheckEP8FileLineP11AstNodeStmtPK11AstNodeExpr:bb.a

.noexc17:                                         ; preds = %.noexc
  %i.c = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(208) %i.a, i8 1)
          to label %.noexc.i unwind label %bb.d   ; 2 uses

.noexc.i:                                         ; preds = %.noexc17
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !319
  %.not.i.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i.i, label %_ZN7AstNode11dtypeSetBitEv.exit.i, label %bb.c

bb.c:                                             ; preds = %.noexc.i
  store ptr %i.c, ptr %i.d, align 8, !tbaa !319
  %i.f = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  br label %_ZN7AstNode11dtypeSetBitEv.exit.i

_ZN7AstNode11dtypeSetBitEv.exit.i:                ; preds = %bb.c, %.noexc.i
  invoke void @_ZN8AstConst14initWithNumberEv(ptr noundef nonnull align 8 dereferenceable(208) %i.a)
          to label %_ZN8AstConstC2EP8FileLineNS_4NullE.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN7AstNode11dtypeSetBitEv.exit.i, %.noexc17
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.b) #24
  br label %.body

_ZN8AstConstC2EP8FileLineNS_4NullE.exit:          ; preds = %_ZN7AstNode11dtypeSetBitEv.exit.i
  %i.i = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #29 ; 3 uses
  %i.j = invoke noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %3, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN11AstNodeExpr9cloneTreeEbb.exit unwind label %bb.h

_ZN11AstNodeExpr9cloneTreeEbb.exit:               ; preds = %_ZN8AstConstC2EP8FileLineNS_4NullE.exit
  invoke void @_ZN6AstNeqC2EP8FileLineP11AstNodeExprS3_(ptr noundef nonnull align 8 dereferenceable(160) %i.i, ptr noundef %1, ptr noundef %i.j, ptr noundef nonnull %i.a)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZN11AstNodeExpr9cloneTreeEbb.exit
  %i.k = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #29 ; 9 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.k, i16 481, ptr noundef %1)
          to label %.noexc19 unwind label %bb.i

.noexc19:                                         ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV9AstNodeIf, i64 16), ptr %i.k, align 8, !tbaa !104
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  store i8 0, ptr %i.l, align 8, !tbaa !348
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.k, ptr noundef nonnull %i.i)
          to label %.noexc20 unwind label %bb.i

.noexc20:                                         ; preds = %.noexc19
  %.not.i.i.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i.i.i, label %_ZN5AstIfC2EP8FileLineP11AstNodeExprP7AstNodeS5_.exit, label %bb.f

bb.f:                                             ; preds = %.noexc20
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.k, ptr noundef nonnull %2)
          to label %_ZN5AstIfC2EP8FileLineP11AstNodeExprP7AstNodeS5_.exit unwind label %bb.i

_ZN5AstIfC2EP8FileLineP11AstNodeExprP7AstNodeS5_.exit: ; preds = %bb.f, %.noexc20
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 153
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV5AstIf, i64 16), ptr %i.k, align 8, !tbaa !104
  store <4 x i8> zeroinitializer, ptr %i.m, align 1, !tbaa !186
  br label %bb.k

bb.g:                                             ; preds = %.noexc, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.h, %bb.d ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 208) #25
  br label %bb.j

bb.h:                                             ; preds = %_ZN8AstConstC2EP8FileLineNS_4NullE.exit, %_ZN11AstNodeExpr9cloneTreeEbb.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 160) #25
  br label %bb.j

bb.i:                                             ; preds = %bb.f, %.noexc19, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 160) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.p, %bb.i ], [ %i.o, %bb.h ]
  resume { ptr, i32 } %.pn.pn

bb.k:                                             ; preds = %_ZN5AstIfC2EP8FileLineP11AstNodeExprP7AstNodeS5_.exit, %bb.a
  %.013 = phi ptr [ %2, %bb.a ], [ %i.k, %_ZN5AstIfC2EP8FileLineP11AstNodeExprP7AstNodeS5_.exit ]
  ret ptr %.013
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_b(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %.ptr127 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %0, ptr %i.a, align 16, !tbaa !223
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !223
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  br i1 %2, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !262  ; 2 uses
  %.not45 = icmp eq ptr %i.e, null
  br i1 %.not45, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.e, ptr %.ptr127, align 16, !tbaa !223
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i.i, label %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.thread.i, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %.095.idx = phi i64 [ 16, %bb.d ], [ 24, %bb.c ], [ 16, %bb.b ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %i.f, align 8, !tbaa !220
  %i.g = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i, 153
  br i1 %i.g, label %_ZN7AstNode4castI12AstMemberSelS_EEPKT_PKT0_.exit.i.i, label %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.thread.i

_ZN7AstNode4castI12AstMemberSelS_EEPKT_PKT0_.exit.i.i: ; preds = %.thread
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !273
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !319  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.k, null
  br i1 %.not7.i.i, label %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.thread.i, label %.noexc

.noexc:                                           ; preds = %_ZN7AstNode4castI12AstMemberSelS_EEPKT_PKT0_.exit.i.i
  %i.l = tail call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.k, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i8.i.i, label %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.thread.i, label %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.i

_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.i: ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %.sroa.0.0.copyload.i.i.i9.i.i = load i16, ptr %i.m, align 8, !tbaa !220
  %i.n = icmp eq i16 %.sroa.0.0.copyload.i.i.i9.i.i, 77
  br i1 %i.n, label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit, label %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.thread.i

_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.thread.i: ; preds = %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.i, %.noexc, %_ZN7AstNode4castI12AstMemberSelS_EEPKT_PKT0_.exit.i.i, %.thread, %bb.d
  %.096.idx = phi i64 [ %.095.idx, %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.i ], [ %.095.idx, %.noexc ], [ %.095.idx, %_ZN7AstNode4castI12AstMemberSelS_EEPKT_PKT0_.exit.i.i ], [ %.095.idx, %.thread ], [ 16, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !243  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.thread.i
  %.096.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.096.idx
  %.096.add = add nuw nsw i64 %.096.idx, 8
  store ptr %i.p, ptr %.096.ptr, align 8, !tbaa !223
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.thread.i
  %.4.idx = phi i64 [ %.096.idx, %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.thread.i ], [ %.096.add, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !222  ; 2 uses
  %.not21.i = icmp eq ptr %i.r, null
  br i1 %.not21.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.4.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.idx
  %.4.add = add nuw nsw i64 %.4.idx, 8
  store ptr %i.r, ptr %.4.ptr, align 8, !tbaa !223
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.5.idx = phi i64 [ %.4.idx, %bb.f ], [ %.4.add, %bb.g ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !173  ; 2 uses
  %.not22.i = icmp eq ptr %i.t, null
  br i1 %.not22.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.5.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.5.idx
  %.5.add = add nuw nsw i64 %.5.idx, 8
  store ptr %i.t, ptr %.5.ptr, align 8, !tbaa !223
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.6.idx = phi i64 [ %.5.idx, %bb.h ], [ %.5.add, %bb.i ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !273  ; 2 uses
  %.not23.i = icmp eq ptr %i.v, null
  br i1 %.not23.i, label %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit, label %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit.thread

_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit.thread: ; preds = %bb.j
  %.6.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.6.idx
  %.6.add = add nuw nsw i64 %.6.idx, 8
  store ptr %i.v, ptr %.6.ptr, align 8, !tbaa !223
  br label %.lr.ph.preheader

_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit: ; preds = %bb.j
  %i.w = icmp samesign ugt i64 %.6.idx, 16
  br i1 %i.w, label %.lr.ph.preheader, label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit, !prof !483

.lr.ph.preheader:                                 ; preds = %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit.thread, %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit
  %.7.idx148 = phi i64 [ %.6.add, %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit.thread ], [ %.6.idx, %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit ]
  %.7.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.7.idx148
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit64
  %.035120 = phi ptr [ %.136, %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit64 ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.037119 = phi ptr [ %.138, %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit64 ], [ %.ptr127, %.lr.ph.preheader ] ; 3 uses
  %.039118 = phi i64 [ %.140, %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit64 ], [ 32, %.lr.ph.preheader ] ; 3 uses
  %.sroa.076.0117 = phi ptr [ %.sroa.076.1, %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit64 ], [ null, %.lr.ph.preheader ] ; 4 uses
  %.1116 = phi ptr [ %.11, %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit64 ], [ %.7.ptr, %.lr.ph.preheader ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.1116, i64 -8 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !223  ; 7 uses
  %i.z = getelementptr inbounds i8, ptr %.1116, i64 -24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !223 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.prefetch.p0(ptr nonnull %i.ab, i32 0, i32 3, i32 1)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.ac, i32 0, i32 3, i32 1)
  %.not46 = icmp ult ptr %i.x, %.035120
  br i1 %.not46, label %bb.n, label %bb.k, !prof !200

bb.k:                                             ; preds = %.lr.ph
  %i.ad = shl i64 %.039118, 1                     ; 3 uses
  %i.ae = icmp ugt i64 %i.ad, 2305843009213693951
  %i.af = shl i64 %.039118, 4
  %i.ag = select i1 %i.ae, i64 -1, i64 %i.af
  %i.ah = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #29
          to label %bb.l unwind label %bb.m       ; 4 uses

bb.l:                                             ; preds = %bb.k
  %i.ai = ptrtoint ptr %i.x to i64
  %i.aj = ptrtoint ptr %.037119 to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.037119, i64 -16
  %i.am = add i64 %i.ak, 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull align 8 %i.al, i64 %i.am, i1 false)
  %.not.i.i = icmp eq ptr %.sroa.076.0117, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit, label %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i

_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %.sroa.076.0117) #25
  br label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit

_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit: ; preds = %bb.l, %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.ak
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ad
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -40
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.n:                                             ; preds = %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit, %.lr.ph
  %.292 = phi ptr [ %i.x, %.lr.ph ], [ %i.ao, %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit ] ; 3 uses
  %.sroa.076.1 = phi ptr [ %.sroa.076.0117, %.lr.ph ], [ %i.ah, %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit ] ; 4 uses
  %.140 = phi i64 [ %.039118, %.lr.ph ], [ %i.ad, %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit ]
  %.138 = phi ptr [ %.037119, %.lr.ph ], [ %i.an, %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit ] ; 2 uses
  %.136 = phi ptr [ %.035120, %.lr.ph ], [ %i.aq, %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !262 ; 2 uses
  %.not47 = icmp eq ptr %i.at, null
  br i1 %.not47, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.292, i64 8
  store ptr %i.at, ptr %.292, align 8, !tbaa !223
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.3 = phi ptr [ %.292, %bb.n ], [ %i.au, %bb.o ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i51 = load i16, ptr %i.av, align 8, !tbaa !220
  %i.aw = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i51, 153
  br i1 %i.aw, label %_ZN7AstNode4castI12AstMemberSelS_EEPKT_PKT0_.exit.i.i58, label %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.thread.i52

_ZN7AstNode4castI12AstMemberSelS_EEPKT_PKT0_.exit.i.i58: ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !273
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !319 ; 2 uses
  %.not7.i.i59 = icmp eq ptr %i.ba, null
  br i1 %.not7.i.i59, label %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.thread.i52, label %bb.q

bb.q:                                             ; preds = %_ZN7AstNode4castI12AstMemberSelS_EEPKT_PKT0_.exit.i.i58
  %i.bb = invoke noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.ba, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %.noexc63 unwind label %bb.y   ; 2 uses

.noexc63:                                         ; preds = %bb.q
  %.not.i8.i.i60 = icmp eq ptr %i.bb, null
  br i1 %.not.i8.i.i60, label %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.thread.i52, label %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.i61

_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.i61: ; preds = %.noexc63
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %.sroa.0.0.copyload.i.i.i9.i.i62 = load i16, ptr %i.bc, align 8, !tbaa !220
  %i.bd = icmp eq i16 %.sroa.0.0.copyload.i.i.i9.i.i62, 77
  br i1 %i.bd, label %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit64.thread, label %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.thread.i52

_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.thread.i52: ; preds = %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.i61, %.noexc63, %_ZN7AstNode4castI12AstMemberSelS_EEPKT_PKT0_.exit.i.i58, %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !243 ; 2 uses
  %.not.i53 = icmp eq ptr %i.bf, null
  br i1 %.not.i53, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.thread.i52
  %i.bg = getelementptr inbounds nuw i8, ptr %.3, i64 8
  store ptr %i.bf, ptr %.3, align 8, !tbaa !223
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.thread.i52
  %.8 = phi ptr [ %.3, %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.thread.i52 ], [ %i.bg, %bb.r ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !222 ; 2 uses
  %.not21.i54 = icmp eq ptr %i.bi, null
  br i1 %.not21.i54, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %.8, i64 8
  store ptr %i.bi, ptr %.8, align 8, !tbaa !223
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.9 = phi ptr [ %.8, %bb.s ], [ %i.bj, %bb.t ]  ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !173 ; 2 uses
  %.not22.i55 = icmp eq ptr %i.bl, null
  br i1 %.not22.i55, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %.9, i64 8
  store ptr %i.bl, ptr %.9, align 8, !tbaa !223
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.10 = phi ptr [ %.9, %bb.u ], [ %i.bm, %bb.v ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !273 ; 2 uses
  %.not23.i56 = icmp eq ptr %i.bo, null
  br i1 %.not23.i56, label %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit64, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %.10, i64 8
  store ptr %i.bo, ptr %.10, align 8, !tbaa !223
  br label %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit64

bb.y:                                             ; preds = %bb.q
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit64: ; preds = %bb.x, %bb.w
  %.11 = phi ptr [ %.10, %bb.w ], [ %i.bp, %bb.x ] ; 2 uses
  %i.br = icmp ugt ptr %.11, %.138
  br i1 %i.br, label %.lr.ph, label %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit64.thread, !prof !448, !llvm.loop !798

_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit64.thread: ; preds = %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit64, %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.i61
  %.lcssa = phi i1 [ true, %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.i61 ], [ false, %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit64 ] ; 2 uses
  %.not.i65 = icmp eq ptr %.sroa.076.1, null
  br i1 %.not.i65, label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i

_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i: ; preds = %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit64.thread
  call void @_ZdaPv(ptr noundef nonnull %.sroa.076.1) #25
  br label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit, %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.i, %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit64.thread, %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i
  %.2105 = phi i1 [ %.lcssa, %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i ], [ %.lcssa, %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit64.thread ], [ true, %_ZZN14SenExprBuilder20hasClassMemberAccessEPK7AstNodeENKUlS2_E_clES2_.exit.i ], [ false, %_ZZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i1 %.2105

bb.z:                                             ; preds = %bb.m, %bb.y
  %.sroa.076.3 = phi ptr [ %.sroa.076.1, %bb.y ], [ %.sroa.076.0117, %bb.m ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.y ], [ %i.ar, %bb.m ]
  %.not.i66 = icmp eq ptr %.sroa.076.3, null
  br i1 %.not.i66, label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit68, label %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i67

_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i67: ; preds = %bb.z
  call void @_ZdaPv(ptr noundef nonnull %.sroa.076.3) #25
  br label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit68

_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit68: ; preds = %bb.z, %_ZNKSt14default_deleteIA_PK7AstNodeEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode4castI12AstMemberSelS_EEPKT_PKT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !220
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 153
  %spec.select = select i1 %i.b, ptr %0, ptr null
  br label %bb.c
end_hunk_3
begin_hunk_4_@_ZN7AstNode4castI12AstMemberSel11AstNodeExprEEPKT_PKT0_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !220
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 153
  %spec.select = select i1 %i.b, ptr %0, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN14SenExprBuilder7getPrevEP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit:
  %2 = alloca %class.anon.331, align 1            ; 3 uses
  %3 = alloca %class.anon.331, align 1            ; 3 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !274  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.d = call noundef zeroext i1 @_ZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_b(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %i.d, label %_ZN7AstNode4castI12AstMemberSel11AstNodeExprEEPKT_PKT0_.exit.i.preheader, label %_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit

_ZN7AstNode4castI12AstMemberSel11AstNodeExprEEPKT_PKT0_.exit.i.preheader: ; preds = %_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i.i.i173 = load i16, ptr %i.e, align 8, !tbaa !220
  %.not27.i174 = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i173, 153
  br i1 %.not27.i174, label %.lr.ph, label %_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit

.lr.ph:                                           ; preds = %_ZN7AstNode4castI12AstMemberSel11AstNodeExprEEPKT_PKT0_.exit.i.preheader, %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.thread.i
  %.01229.i175 = phi ptr [ %i.g, %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.thread.i ], [ %1, %_ZN7AstNode4castI12AstMemberSel11AstNodeExprEEPKT_PKT0_.exit.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.01229.i175, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !273  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !319  ; 2 uses
  %.not19.i = icmp eq ptr %i.i, null
  br i1 %.not19.i, label %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.thread.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  %i.j = call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.i, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) ; 2 uses
  %.not.i20.i = icmp eq ptr %i.j, null
  br i1 %.not.i20.i, label %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.thread.i, label %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.i

_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.sroa.0.0.copyload.i.i.i21.i = load i16, ptr %i.k, align 8, !tbaa !220
  %i.l = icmp eq i16 %.sroa.0.0.copyload.i.i.i21.i, 77
  br i1 %i.l, label %_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit.i, label %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.thread.i

_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit.i: ; preds = %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.m = call noundef zeroext i1 @_ZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_b(ptr noundef nonnull align 8 dereferenceable(152) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %2, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %i.m, label %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.thread.i, label %_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit..thread_crit_edge.i, !llvm.loop !12

_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.thread.i: ; preds = %_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit.i, %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.i, %bb.a, %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.n, align 8, !tbaa !220
  %.not27.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, 153
  br i1 %.not27.i, label %.lr.ph, label %_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit

_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit..thread_crit_edge.i: ; preds = %_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit.i
  br label %_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit, !llvm.loop !12

_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit: ; preds = %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.thread.i, %_ZN7AstNode4castI12AstMemberSel11AstNodeExprEEPKT_PKT0_.exit.i.preheader, %_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit..thread_crit_edge.i, %_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit
  %i.o = phi ptr [ null, %_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit ], [ %i.g, %_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit..thread_crit_edge.i ], [ null, %_ZN7AstNode4castI12AstMemberSel11AstNodeExprEEPKT_PKT0_.exit.i.preheader ], [ null, %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.thread.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.p, align 8, !tbaa !220
  %.not = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 369
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !333
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit
  %.049 = phi ptr [ %i.r, %bb.b ], [ %1, %_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !486
  %i.t = call { ptr, i8 } @_ZNSt10_HashtableI5VNRefI7AstNodeESt4pairIKS2_P11AstVarScopeESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS1_DnEEES3_INS9_14_Node_iteratorIS7_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(152) %.049, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.fca.0.extract16 = extractvalue { ptr, i8 } %i.t, 0 ; 2 uses
  %.fca.1.extract17 = extractvalue { ptr, i8 } %i.t, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.u = trunc nuw i8 %.fca.1.extract17 to i1
  br i1 %i.u, label %bb.d, label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.v = call noundef ptr @_ZN14SenExprBuilder9crateTempEP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull %1) ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.fca.0.extract16, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !490
  %i.x = call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #29 ; 8 uses
  %i.y = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #29
          to label %bb.e unwind label %bb.r       ; 14 uses

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !321 ; 3 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(232) %i.y, i16 369, ptr noundef %i.c)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV13AstNodeVarRef, i64 16), ptr %i.y, align 8, !tbaa !104
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 152 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.ac, align 8, !tbaa !334
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 184
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN16VSelfPointerText8s_emptypB5cxx11E, i64 8), align 8, !tbaa !324 ; 2 uses
  %i.af = load <2 x ptr>, ptr @_ZN16VSelfPointerText8s_emptypB5cxx11E, align 8, !tbaa !325
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !tbaa !325
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !101
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !101
  br label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.ak = atomicrmw volatile add ptr %i.ag, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i

_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i:      ; preds = %bb.h, %bb.g, %.noexc
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !332
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !319 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 72 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !319
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.am
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.am, ptr %i.an, align 8, !tbaa !319
  %i.ap = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV9AstVarRef, i64 16), ptr %i.y, align 8, !tbaa !104
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 200
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 216 ; 2 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !100
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 208
  store i64 0, ptr %i.at, align 8, !tbaa !31
  store i8 0, ptr %i.as, align 8, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 160
  store ptr %i.v, ptr %i.au, align 8, !tbaa !333
  %i.av = invoke noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %1, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN11AstNodeExpr9cloneTreeEbb.exit unwind label %.thread

_ZN11AstNodeExpr9cloneTreeEbb.exit:               ; preds = %bb.k
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.x, i16 466, ptr noundef %i.c)
          to label %.noexc68 unwind label %.thread

.noexc68:                                         ; preds = %_ZN11AstNodeExpr9cloneTreeEbb.exit
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV13AstNodeAssign, i64 16), ptr %i.x, align 8, !tbaa !104
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.x, ptr noundef %i.av)
          to label %.noexc69 unwind label %.thread

.noexc69:                                         ; preds = %.noexc68
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.x, ptr noundef nonnull %i.y)
          to label %.noexc70 unwind label %.thread

.noexc70:                                         ; preds = %.noexc69
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !319 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 72 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !319
  %.not.i.i8.i.i = icmp eq ptr %i.az, %i.ax
  br i1 %.not.i.i8.i.i, label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit, label %bb.l

bb.l:                                             ; preds = %.noexc70
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !319
  %i.ba = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit

_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit: ; preds = %.noexc70, %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV9AstAssign, i64 16), ptr %i.x, align 8, !tbaa !104
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bd = call noundef ptr @_ZN14SenExprBuilder21wrapStmtWithNullCheckEP8FileLineP11AstNodeStmtPK11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %i.c, ptr noundef nonnull %i.x, ptr noundef %i.o) ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !480 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !382
  %.not.i.i = icmp eq ptr %i.bf, %i.bh
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !375
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !480
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit

bb.n:                                             ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit
  %i.bj = load ptr, ptr %i.bc, align 8, !tbaa !381 ; 4 uses
  %i.bk = ptrtoint ptr %i.bf to i64
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 5 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %bb.o, label %_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.530) #28
  unreachable

_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.bo = ashr exact i64 %i.bm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %i.br = call i64 @llvm.umin.i64(i64 %i.bp, i64 1152921504606846975)
  %i.bs = select i1 %i.bq, i64 1152921504606846975, i64 %i.br ; 3 uses
  %.not.i.i.i.i71 = icmp ne i64 %i.bs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i71)
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #29 ; 4 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bm ; 2 uses
  store ptr %i.bd, ptr %i.bv, align 8, !tbaa !375
  %i.bw = icmp sgt i64 %i.bm, 0
  br i1 %i.bw, label %bb.p, label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %i.bj, i64 %i.bm, i1 false)
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.p, %_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.by = load ptr, ptr %i.bg, align 8, !tbaa !382
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.bz, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.ca) #25
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.bu, ptr %i.bc, align 8, !tbaa !381
  store ptr %i.bx, ptr %i.be, align 8, !tbaa !480
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.cb, ptr %i.bg, align 8, !tbaa !382
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit

bb.r:                                             ; preds = %bb.d
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.thread:                                          ; preds = %.noexc69, %bb.k, %_ZN11AstNodeExpr9cloneTreeEbb.exit, %.noexc68
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 232) #25
  br label %bb.t

bb.t:                                             ; preds = %.thread, %bb.r, %bb.s
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.s ], [ %lpad.thr_comm, %.thread ], [ %i.cc, %bb.r ]
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 152) #25
  br label %common.resume

_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.m, %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %.fca.0.extract16, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !490 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cg = call { ptr, i8 } @_ZNSt10_HashtableI5VNRefI7AstNodeES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE10_M_emplaceIJR11AstNodeExprEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(64) %i.cf, ptr noundef nonnull align 8 dereferenceable(152) %1)
  %.fca.1.extract = extractvalue { ptr, i8 } %i.cg, 1
  %i.ch = trunc i8 %.fca.1.extract to i1
  br i1 %i.ch, label %bb.u, label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit114.thread

bb.u:                                             ; preds = %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !319
  %i.ck = call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.cj, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) ; 3 uses
  %i.cl = call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.ck, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true), !inline_history !799 ; 2 uses
  %.not.i20.i72 = icmp eq ptr %i.cl, null
  br i1 %.not.i20.i72, label %_ZN14SenExprBuilder16isSupportedDTypeEP12AstNodeDType.exit.thread, label %_ZN7AstNode2isI13AstBasicDType12AstNodeDTypeEEbPKT0_.exit.i

_ZN7AstNode2isI13AstBasicDType12AstNodeDTypeEEbPKT0_.exit.i: ; preds = %bb.u, %tailrecurse.i
  %i.cm = phi ptr [ %i.cs, %tailrecurse.i ], [ %i.cl, %bb.u ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  %.sroa.0.0.copyload.i.i.i.i73 = load i16, ptr %i.cn, align 8, !tbaa !220
  switch i16 %.sroa.0.0.copyload.i.i.i.i73, label %_ZN14SenExprBuilder16isSupportedDTypeEP12AstNodeDType.exit.thread [
    i16 74, label %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit
    i16 98, label %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit
    i16 99, label %tailrecurse.i
    i16 101, label %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit
    i16 100, label %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit
    i16 77, label %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit
  ]

tailrecurse.i:                                    ; preds = %_ZN7AstNode2isI13AstBasicDType12AstNodeDTypeEEbPKT0_.exit.i
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !104
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 408
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call noundef ptr %i.cq(ptr noundef nonnull align 8 dereferenceable(162) %i.cm), !inline_history !799
  %i.cs = call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.cr, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true), !inline_history !799 ; 2 uses
  %.not.i.i74 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i74, label %_ZN14SenExprBuilder16isSupportedDTypeEP12AstNodeDType.exit.thread, label %_ZN7AstNode2isI13AstBasicDType12AstNodeDTypeEEbPKT0_.exit.i

_ZN14SenExprBuilder16isSupportedDTypeEP12AstNodeDType.exit.thread: ; preds = %_ZN7AstNode2isI13AstBasicDType12AstNodeDTypeEEbPKT0_.exit.i, %tailrecurse.i, %bb.u
  %i.ct = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 21) ; 0 uses
  %i.cu = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.cv = icmp eq i8 %i.cu, 0
  br i1 %i.cv, label %bb.v, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, !prof !177

bb.v:                                             ; preds = %_ZN14SenExprBuilder16isSupportedDTypeEP12AstNodeDType.exit.thread
  %i.cw = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  %.not.i.i77 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i77, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cx = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit

common.resume:                                    ; preds = %bb.t, %.body122, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %bb.ao, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.cy, %bb.y ], [ %i.fx, %bb.ao ], [ %.pn, %bb.t ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body123, %.body122 ], [ %.pn60.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ]
  resume { ptr, i32 } %common.resume.op

bb.y:                                             ; preds = %bb.w
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit:            ; preds = %_ZN14SenExprBuilder16isSupportedDTypeEP12AstNodeDType.exit.thread, %bb.v, %bb.x
  %i.cz = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.30, ptr nonnull @.str.31, i32 481, ptr null) ; 2 uses
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull @.str.586, i64 noundef 65) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNK12AstNodeDType16prettyDTypeNameQB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(162) %i.ck)
  %i.db = load ptr, ptr %4, align 8, !tbaa !30
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !31
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef %i.db, i64 noundef %i.dd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.aa ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull @.str.587, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !274, !noalias !802
  invoke void @_ZNK8FileLine8warnMoreB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.dg)
          to label %_ZNK7AstNode8warnMoreB5cxx11Ev.exit unwind label %bb.ab

_ZNK7AstNode8warnMoreB5cxx11Ev.exit:              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dh = load ptr, ptr %5, align 8, !tbaa !30
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !31
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.dh, i64 noundef %i.dj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit82 unwind label %bb.ac ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit82: ; preds = %_ZNK7AstNode8warnMoreB5cxx11Ev.exit
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull @.str.588, i64 noundef 65)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84 unwind label %bb.ac ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit82
  invoke void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.dk)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84
  %i.dm = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.z
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !32
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.dr = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !32
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #25
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit114

bb.aa:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZN7V3Error10v3errorStrB5cxx11Ev.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.ac:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit82, %_ZNK7AstNode8warnMoreB5cxx11Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.ac
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !32
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.ab
  %.pn60 = phi { ptr, i32 } [ %i.dx, %bb.ab ], [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.dy, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %bb.aa
  %.pn60.pn = phi { ptr, i32 } [ %.pn60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.dw, %bb.aa ]
  %i.ee = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.ad
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !32
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit: ; preds = %_ZN7AstNode2isI13AstBasicDType12AstNodeDTypeEEbPKT0_.exit.i, %_ZN7AstNode2isI13AstBasicDType12AstNodeDTypeEEbPKT0_.exit.i, %_ZN7AstNode2isI13AstBasicDType12AstNodeDTypeEEbPKT0_.exit.i, %_ZN7AstNode2isI13AstBasicDType12AstNodeDTypeEEbPKT0_.exit.i, %_ZN7AstNode2isI13AstBasicDType12AstNodeDTypeEEbPKT0_.exit.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %.sroa.0.0.copyload.i.i.i95 = load i16, ptr %i.ej, align 8, !tbaa !220
  %i.ek = icmp eq i16 %.sroa.0.0.copyload.i.i.i95, 99
  br i1 %i.ek, label %bb.ae, label %bb.av

bb.ae:                                            ; preds = %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit
  %i.el = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #29 ; 13 uses
  %i.em = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #29
          to label %.noexc99 unwind label %bb.au  ; 13 uses

.noexc99:                                         ; preds = %bb.ae
  %i.en = getelementptr inbounds nuw i8, ptr %i.ce, i64 168
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !321 ; 3 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(232) %i.em, i16 369, ptr noundef %i.c)
          to label %.noexc.i unwind label %bb.ak

.noexc.i:                                         ; preds = %.noexc99
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV13AstNodeVarRef, i64 16), ptr %i.em, align 8, !tbaa !104
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 152 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.eq, align 8, !tbaa !334
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 184
  %i.es = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN16VSelfPointerText8s_emptypB5cxx11E, i64 8), align 8, !tbaa !324 ; 2 uses
  %i.et = load <2 x ptr>, ptr @_ZN16VSelfPointerText8s_emptypB5cxx11E, align 8, !tbaa !325
  store <2 x ptr> %i.et, ptr %i.er, align 8, !tbaa !325
  %.not.i.i.i.i.i.i.i96 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i.i.i.i96, label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %.noexc.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 3 uses
  %i.ev = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ev, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ew = load i32, ptr %i.eu, align 4, !tbaa !101
  %i.ex = add nsw i32 %i.ew, 1
  store i32 %i.ex, ptr %i.eu, align 4, !tbaa !101
  br label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.ey = atomicrmw volatile add ptr %i.eu, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i.i

_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i.i:    ; preds = %bb.ah, %bb.ag, %.noexc.i
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !332
  %.not.i.i.i.i.i97 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i97, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 72
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !319 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.em, i64 72 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !319
  %.not.i.i.i.i.i.i98 = icmp eq ptr %i.fc, %i.fa
  br i1 %.not.i.i.i.i.i.i98, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !319
  %i.fd = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  %i.fe = add i64 %i.fd, 1
  store i64 %i.fe, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  br label %bb.al

bb.ak:                                            ; preds = %.noexc99
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef 232) #25
  br label %.body

bb.al:                                            ; preds = %bb.aj, %bb.ai, %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV9AstVarRef, i64 16), ptr %i.em, align 8, !tbaa !104
  %i.fg = getelementptr inbounds nuw i8, ptr %i.em, i64 200
  %i.fh = getelementptr inbounds nuw i8, ptr %i.em, i64 216 ; 2 uses
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !100
  %i.fi = getelementptr inbounds nuw i8, ptr %i.em, i64 208
  store i64 0, ptr %i.fi, align 8, !tbaa !31
  store i8 0, ptr %i.fh, align 8, !tbaa !32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.em, i64 160
  store ptr %i.ce, ptr %i.fj, align 8, !tbaa !333
  %i.fk = invoke noundef ptr @_ZN14SenExprBuilder7getCurrEP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull %1)
          to label %_ZZN14SenExprBuilder7getPrevEP11AstNodeExprENKUlvE_clEv.exit unwind label %bb.au ; 2 uses

_ZZN14SenExprBuilder7getPrevEP11AstNodeExprENKUlvE_clEv.exit: ; preds = %bb.al
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.el, i16 107, ptr noundef %i.c)
          to label %.noexc101 unwind label %bb.au

.noexc101:                                        ; preds = %_ZZN14SenExprBuilder7getPrevEP11AstNodeExprENKUlvE_clEv.exit
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV14AstCMethodHard, i64 16), ptr %i.el, align 8, !tbaa !104
  %i.fl = getelementptr inbounds nuw i8, ptr %i.el, i64 152
  store i8 112, ptr %i.fl, align 8, !tbaa !360
  %i.fm = getelementptr inbounds nuw i8, ptr %i.el, i64 153
  store i8 0, ptr %i.fm, align 1, !tbaa !363
  %i.fn = getelementptr inbounds nuw i8, ptr %i.el, i64 154
  store i8 0, ptr %i.fn, align 2, !tbaa !364
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.el, ptr noundef nonnull %i.em)
          to label %.noexc102 unwind label %bb.au

.noexc102:                                        ; preds = %.noexc101
  %.not.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i, label %_ZN14AstCMethodHard8addPinspEP11AstNodeExpr.exit.i, label %bb.am

bb.am:                                            ; preds = %.noexc102
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.el, ptr noundef nonnull %i.fk)
          to label %_ZN14AstCMethodHard8addPinspEP11AstNodeExpr.exit.i unwind label %bb.au

_ZN14AstCMethodHard8addPinspEP11AstNodeExpr.exit.i: ; preds = %bb.am, %.noexc102
  invoke void @_ZN14AstCMethodHard9setPurityEv(ptr noundef nonnull align 8 dereferenceable(160) %i.el)
          to label %_ZN14AstCMethodHardC2EP8FileLineP11AstNodeExpr8VCMethodS3_.exit unwind label %bb.au

_ZN14AstCMethodHardC2EP8FileLineP11AstNodeExpr8VCMethodS3_.exit: ; preds = %_ZN14AstCMethodHard8addPinspEP11AstNodeExpr.exit.i
  %i.fo = call noundef ptr @_ZNK7AstNode13findVoidDTypeEv(ptr noundef nonnull align 8 dereferenceable(152) %i.el) ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.el, i64 72 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !319
  %.not.i.i105 = icmp eq ptr %i.fq, %i.fo
  br i1 %.not.i.i105, label %_ZN7AstNode12dtypeSetVoidEv.exit, label %bb.an

bb.an:                                            ; preds = %_ZN14AstCMethodHardC2EP8FileLineP11AstNodeExpr8VCMethodS3_.exit
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !319
  %i.fr = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  %i.fs = add i64 %i.fr, 1
  store i64 %i.fs, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  br label %_ZN7AstNode12dtypeSetVoidEv.exit

_ZN7AstNode12dtypeSetVoidEv.exit:                 ; preds = %_ZN14AstCMethodHardC2EP8FileLineP11AstNodeExpr8VCMethodS3_.exit, %bb.an
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fu = call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #29 ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.el, i64 88
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !274
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.fu, i16 455, ptr noundef %i.fw)
          to label %.noexc.i106 unwind label %bb.ao

.noexc.i106:                                      ; preds = %_ZN7AstNode12dtypeSetVoidEv.exit
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV11AstStmtExpr, i64 16), ptr %i.fu, align 8, !tbaa !104
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.fu, ptr noundef nonnull align 8 dereferenceable(152) %i.el)
          to label %_ZN11AstNodeExpr8makeStmtEv.exit unwind label %bb.ao

bb.ao:                                            ; preds = %.noexc.i106, %_ZN7AstNode12dtypeSetVoidEv.exit
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fu, i64 noundef 152) #25
  br label %common.resume

_ZN11AstNodeExpr8makeStmtEv.exit:                 ; preds = %.noexc.i106
  %i.fy = call noundef ptr @_ZN14SenExprBuilder21wrapStmtWithNullCheckEP8FileLineP11AstNodeStmtPK11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %i.c, ptr noundef nonnull %i.fu, ptr noundef %i.o) ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !480 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !382
  %.not.i.i107 = icmp eq ptr %i.ga, %i.gc
  br i1 %.not.i.i107, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZN11AstNodeExpr8makeStmtEv.exit
  store ptr %i.fy, ptr %i.ga, align 8, !tbaa !375
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %i.gd, ptr %i.fz, align 8, !tbaa !480
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit114.thread

bb.aq:                                            ; preds = %_ZN11AstNodeExpr8makeStmtEv.exit
  %i.ge = load ptr, ptr %i.ft, align 8, !tbaa !381 ; 4 uses
  %i.gf = ptrtoint ptr %i.ga to i64
  %i.gg = ptrtoint ptr %i.ge to i64               ; 2 uses
  %i.gh = sub i64 %i.gf, %i.gg                    ; 5 uses
  %i.gi = icmp eq i64 %i.gh, 9223372036854775800
  br i1 %i.gi, label %bb.ar, label %_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i108

bb.ar:                                            ; preds = %bb.aq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.530) #28
  unreachable

_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i108: ; preds = %bb.aq
  %i.gj = ashr exact i64 %i.gh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i109 = call i64 @llvm.umax.i64(i64 %i.gj, i64 1)
  %i.gk = add nsw i64 %.sroa.speculated.i.i.i.i109, %i.gj ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %i.gj
  %i.gm = call i64 @llvm.umin.i64(i64 %i.gk, i64 1152921504606846975)
  %i.gn = select i1 %i.gl, i64 1152921504606846975, i64 %i.gm ; 3 uses
  %.not.i.i.i.i110 = icmp ne i64 %i.gn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i110)
  %i.go = shl nuw nsw i64 %i.gn, 3
  %i.gp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.go) #29 ; 4 uses
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 %i.gh ; 2 uses
  store ptr %i.fy, ptr %i.gq, align 8, !tbaa !375
  %i.gr = icmp sgt i64 %i.gh, 0
  br i1 %i.gr, label %bb.as, label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i111

bb.as:                                            ; preds = %_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i108
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gp, ptr align 8 %i.ge, i64 %i.gh, i1 false)
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i111

_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i111: ; preds = %bb.as, %_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i108
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %.not.i17.i.i.i112 = icmp eq ptr %i.ge, null
  br i1 %.not.i17.i.i.i112, label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i113, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i111
  %i.gt = load ptr, ptr %i.gb, align 8, !tbaa !382
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gu, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.gv) #25
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i113

_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i113: ; preds = %bb.at, %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i111
  store ptr %i.gp, ptr %i.ft, align 8, !tbaa !381
  store ptr %i.gs, ptr %i.fz, align 8, !tbaa !480
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gn
  store ptr %i.gw, ptr %i.gb, align 8, !tbaa !382
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit114.thread

bb.au:                                            ; preds = %_ZN14AstCMethodHard8addPinspEP11AstNodeExpr.exit.i, %bb.am, %.noexc101, %_ZZN14SenExprBuilder7getPrevEP11AstNodeExprENKUlvE_clEv.exit, %bb.al, %bb.ae
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ak, %bb.au
  %eh.lpad-body = phi { ptr, i32 } [ %i.gx, %bb.au ], [ %i.ff, %bb.ak ]
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef 160) #25
  br label %common.resume

bb.av:                                            ; preds = %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gz = call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #29 ; 8 uses
  %i.ha = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #29
          to label %.noexc121 unwind label %bb.bj ; 14 uses

.noexc121:                                        ; preds = %bb.av
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ce, i64 168
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !321 ; 3 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(232) %i.ha, i16 369, ptr noundef %i.c)
          to label %.noexc.i115 unwind label %bb.bb

.noexc.i115:                                      ; preds = %.noexc121
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV13AstNodeVarRef, i64 16), ptr %i.ha, align 8, !tbaa !104
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 152 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hd, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.he, align 8, !tbaa !334
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 184
  %i.hg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN16VSelfPointerText8s_emptypB5cxx11E, i64 8), align 8, !tbaa !324 ; 2 uses
  %i.hh = load <2 x ptr>, ptr @_ZN16VSelfPointerText8s_emptypB5cxx11E, align 8, !tbaa !325
  store <2 x ptr> %i.hh, ptr %i.hf, align 8, !tbaa !325
  %.not.i.i.i.i.i.i.i116 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i.i.i.i116, label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i.i118, label %bb.aw

bb.aw:                                            ; preds = %.noexc.i115
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 3 uses
  %i.hj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i.i.i.i117 = icmp eq i8 %i.hj, 0
  br i1 %.not.i.i.i.i.i.i.i.i117, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hk = load i32, ptr %i.hi, align 4, !tbaa !101
  %i.hl = add nsw i32 %i.hk, 1
  store i32 %i.hl, ptr %i.hi, align 4, !tbaa !101
  br label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i.i118

bb.ay:                                            ; preds = %bb.aw
  %i.hm = atomicrmw volatile add ptr %i.hi, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i.i118

_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i.i118: ; preds = %bb.ay, %bb.ax, %.noexc.i115
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !332
  %.not.i.i.i.i.i119 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i.i.i119, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i.i118
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hc, i64 72
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !319 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ha, i64 72 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !319
  %.not.i.i.i.i.i.i120 = icmp eq ptr %i.hq, %i.ho
  br i1 %.not.i.i.i.i.i.i120, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !319
  %i.hr = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  %i.hs = add i64 %i.hr, 1
  store i64 %i.hs, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  br label %bb.bc

bb.bb:                                            ; preds = %.noexc121
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef 232) #25
  br label %.body122

bb.bc:                                            ; preds = %bb.ba, %bb.az, %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i.i118
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV9AstVarRef, i64 16), ptr %i.ha, align 8, !tbaa !104
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ha, i64 200
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ha, i64 216 ; 2 uses
  store ptr %i.hv, ptr %i.hu, align 8, !tbaa !100
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ha, i64 208
  store i64 0, ptr %i.hw, align 8, !tbaa !31
  store i8 0, ptr %i.hv, align 8, !tbaa !32
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ha, i64 160
  store ptr %i.ce, ptr %i.hx, align 8, !tbaa !333
  %i.hy = invoke noundef ptr @_ZN14SenExprBuilder7getCurrEP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull %1)
          to label %_ZZN14SenExprBuilder7getPrevEP11AstNodeExprENKUlvE_clEv.exit126 unwind label %bb.bj

_ZZN14SenExprBuilder7getPrevEP11AstNodeExprENKUlvE_clEv.exit126: ; preds = %bb.bc
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.gz, i16 466, ptr noundef %i.c)
          to label %.noexc132 unwind label %bb.bj

.noexc132:                                        ; preds = %_ZZN14SenExprBuilder7getPrevEP11AstNodeExprENKUlvE_clEv.exit126
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV13AstNodeAssign, i64 16), ptr %i.gz, align 8, !tbaa !104
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.gz, ptr noundef %i.hy)
          to label %.noexc133 unwind label %bb.bj

.noexc133:                                        ; preds = %.noexc132
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.gz, ptr noundef nonnull %i.ha)
          to label %.noexc134 unwind label %bb.bj

.noexc134:                                        ; preds = %.noexc133
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ha, i64 72
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !319 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gz, i64 72 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !319
  %.not.i.i8.i.i128 = icmp eq ptr %i.ic, %i.ia
  br i1 %.not.i.i8.i.i128, label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit135, label %bb.bd

bb.bd:                                            ; preds = %.noexc134
  store ptr %i.ia, ptr %i.ib, align 8, !tbaa !319
  %i.id = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  %i.ie = add i64 %i.id, 1
  store i64 %i.ie, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit135

_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit135: ; preds = %.noexc134, %bb.bd
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV9AstAssign, i64 16), ptr %i.gz, align 8, !tbaa !104
  %i.if = call noundef ptr @_ZN14SenExprBuilder21wrapStmtWithNullCheckEP8FileLineP11AstNodeStmtPK11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %i.c, ptr noundef nonnull %i.gz, ptr noundef %i.o) ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !480 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !382
  %.not.i.i136 = icmp eq ptr %i.ih, %i.ij
  br i1 %.not.i.i136, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit135
  store ptr %i.if, ptr %i.ih, align 8, !tbaa !375
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store ptr %i.ik, ptr %i.ig, align 8, !tbaa !480
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit114.thread

bb.bf:                                            ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit135
  %i.il = load ptr, ptr %i.gy, align 8, !tbaa !381 ; 4 uses
  %i.im = ptrtoint ptr %i.ih to i64
  %i.in = ptrtoint ptr %i.il to i64               ; 2 uses
  %i.io = sub i64 %i.im, %i.in                    ; 5 uses
  %i.ip = icmp eq i64 %i.io, 9223372036854775800
  br i1 %i.ip, label %bb.bg, label %_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i137

bb.bg:                                            ; preds = %bb.bf
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.530) #28
  unreachable

_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i137: ; preds = %bb.bf
  %i.iq = ashr exact i64 %i.io, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i138 = call i64 @llvm.umax.i64(i64 %i.iq, i64 1)
  %i.ir = add nsw i64 %.sroa.speculated.i.i.i.i138, %i.iq ; 2 uses
  %i.is = icmp ult i64 %i.ir, %i.iq
  %i.it = call i64 @llvm.umin.i64(i64 %i.ir, i64 1152921504606846975)
  %i.iu = select i1 %i.is, i64 1152921504606846975, i64 %i.it ; 3 uses
  %.not.i.i.i.i139 = icmp ne i64 %i.iu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i139)
  %i.iv = shl nuw nsw i64 %i.iu, 3
  %i.iw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iv) #29 ; 4 uses
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 %i.io ; 2 uses
  store ptr %i.if, ptr %i.ix, align 8, !tbaa !375
  %i.iy = icmp sgt i64 %i.io, 0
  br i1 %i.iy, label %bb.bh, label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i140

bb.bh:                                            ; preds = %_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i137
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iw, ptr align 8 %i.il, i64 %i.io, i1 false)
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i140

_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i140: ; preds = %bb.bh, %_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i137
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %.not.i17.i.i.i141 = icmp eq ptr %i.il, null
  br i1 %.not.i17.i.i.i141, label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i142, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i140
  %i.ja = load ptr, ptr %i.ii, align 8, !tbaa !382
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = sub i64 %i.jb, %i.in
  call void @_ZdlPvm(ptr noundef nonnull %i.il, i64 noundef %i.jc) #25
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i142

_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i142: ; preds = %bb.bi, %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i140
  store ptr %i.iw, ptr %i.gy, align 8, !tbaa !381
  store ptr %i.iz, ptr %i.ig, align 8, !tbaa !480
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.iu
  store ptr %i.jd, ptr %i.ii, align 8, !tbaa !382
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit114.thread

bb.bj:                                            ; preds = %.noexc133, %.noexc132, %_ZZN14SenExprBuilder7getPrevEP11AstNodeExprENKUlvE_clEv.exit126, %bb.bc, %bb.av
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %.body122

.body122:                                         ; preds = %bb.bb, %bb.bj
  %eh.lpad-body123 = phi { ptr, i32 } [ %i.je, %bb.bj ], [ %i.ht, %bb.bb ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef 152) #25
  br label %common.resume

_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit114.thread

_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit114.thread: ; preds = %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i142, %bb.be, %bb.ap, %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i113, %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit114
  ret ptr %i.ce
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !220
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 369
  %spec.select = select i1 %i.b, ptr %0, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN14SenExprBuilder9crateTempEP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  store i64 0, ptr %i.c, align 8, !tbaa !31
  store i8 0, ptr %i.b, align 8, !tbaa !32
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.d, align 8, !tbaa !220
  %i.e = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 369
  br i1 %i.e, label %_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit, label %bb.ah

_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !333  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !406
  invoke void @_ZNK8AstScope11nameDotlessB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %i.i)
          to label %bb.c unwind label %bb.ab

bb.c:                                             ; preds = %_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.558, i64 noundef 2)
          to label %.noexc unwind label %bb.ac    ; 6 uses

.noexc:                                           ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !100, !alias.scope !811
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 5 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.r, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.l, ptr %5, align 8, !tbaa !30, !alias.scope !811
  %i.s = load i64, ptr %i.m, align 8, !tbaa !32
  store i64 %i.s, ptr %i.k, align 8, !tbaa !32, !alias.scope !811
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.t = phi i64 [ %i.p, %bb.d ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.t, ptr %i.v, align 8, !tbaa !31, !alias.scope !811
  store ptr %i.m, ptr %i.j, align 8, !tbaa !30
  store i64 0, ptr %i.u, align 8, !tbaa !31
  store i8 0, ptr %i.m, align 8, !tbaa !32
  call void @llvm.experimental.noalias.scope.decl(metadata !812)
  %i.w = load i64, ptr %i.v, align 8, !tbaa !31, !noalias !812
  %i.x = and i64 %i.w, -2
  %i.y = icmp eq i64 %i.x, 4611686018427387902
  br i1 %i.y, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
          to label %.noexc34 unwind label %bb.ad

.noexc34:                                         ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.e
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.558, i64 noundef 2)
          to label %.noexc35 unwind label %bb.ad  ; 6 uses

.noexc35:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.aa, ptr %4, align 8, !tbaa !100, !alias.scope !812
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !30  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 5 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

bb.g:                                             ; preds = %.noexc35
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !31 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %.noexc35
  store ptr %i.ab, ptr %4, align 8, !tbaa !30, !alias.scope !812
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !32
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !32, !alias.scope !812
  %.phi.trans.insert.i32 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.pre.i33 = load i64, ptr %.phi.trans.insert.i32, align 8, !tbaa !31
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.g
  %i.aj = phi i64 [ %i.af, %bb.g ], [ %.pre.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !31, !alias.scope !812
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !30
  store i64 0, ptr %i.ak, align 8, !tbaa !31
  store i8 0, ptr %i.ac, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !321 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 152
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.ap, ptr %7, align 8, !tbaa !100, !alias.scope !813
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !30, !noalias !813 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !31, !noalias !813 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !813
  store i64 %i.as, ptr %i.a, align 8, !tbaa !180, !noalias !813
  %i.at = icmp ugt i64 %i.as, 15
  br i1 %i.at, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.au = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc36 unwind label %bb.ae  ; 2 uses

.noexc36:                                         ; preds = %.noexc.i.i
  store ptr %i.au, ptr %7, align 8, !tbaa !30, !alias.scope !813
  %i.av = load i64, ptr %i.a, align 8, !tbaa !180, !noalias !813
  store i64 %i.av, ptr %i.ap, align 8, !tbaa !32, !alias.scope !813
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc36, %bb.h
  %i.aw = phi ptr [ %i.au, %.noexc36 ], [ %i.ap, %bb.h ] ; 2 uses
  switch i64 %i.as, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.ax = load i8, ptr %i.aq, align 1, !tbaa !32
end_hunk_4
begin_hunk_5_@_ZN14SenExprBuilder9crateTempEP11AstNodeExpr:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.f
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

bb.ae:                                            ; preds = %.noexc.i.i
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.o, %.critedge.i
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fm = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.ap
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.af
  %i.fo = load i64, ptr %i.ap, align 8, !tbaa !32
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.fk, %bb.ae ], [ %i.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ], [ %i.fl, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.fq = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.aa
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.fs = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %i.fj, %bb.ad ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 2 uses
  %i.fu = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.k
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.fw = load i64, ptr %i.k, align 8, !tbaa !32
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %bb.ac
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fi, %bb.ac ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ] ; 2 uses
  %i.fy = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !32
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78, %bb.ab
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fh, %bb.ab ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.ay

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ay

bb.ah:                                            ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 472
  invoke void @_ZN13V3UniqueNames3getB5cxx11EPK7AstNode(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(88) %i.ge, ptr noundef %1)
          to label %bb.ai unwind label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.gf = load ptr, ptr %2, align 8, !tbaa !30    ; 6 uses
  %i.gg = icmp eq ptr %i.gf, %i.b
  %i.gh = load ptr, ptr %9, align 8, !tbaa !30    ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi                ; 2 uses
  br i1 %i.gg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i86: ; preds = %bb.ai
  br i1 %i.gj, label %bb.aj, label %.thread.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i81: ; preds = %bb.ai
  br i1 %i.gj, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i82

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i86
  %i.gk = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !31 ; 3 uses
  %i.gm = icmp ult i64 %i.gl, 16
  call void @llvm.assume(i1 %i.gm)
  switch i64 %i.gl, label %bb.al [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i84
    i64 1, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.gn = load i8, ptr %i.gh, align 1, !tbaa !32
  store i8 %i.gn, ptr %i.gf, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i84

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gf, ptr align 1 %i.gh, i64 %i.gl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i84: ; preds = %bb.al, %bb.ak, %bb.aj
  %i.go = load i64, ptr %i.gk, align 8, !tbaa !31 ; 2 uses
  store i64 %i.go, ptr %i.c, align 8, !tbaa !31
  %i.gp = load ptr, ptr %2, align 8, !tbaa !30
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.go
  store i8 0, ptr %i.gq, align 1, !tbaa !32
  %.pre.i85 = load ptr, ptr %9, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit88

.thread.i87:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i86
  store ptr %i.gh, ptr %2, align 8, !tbaa !30
  %i.gr = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gs = load <2 x i64>, ptr %i.gr, align 8, !tbaa !32
  store <2 x i64> %i.gs, ptr %i.c, align 8, !tbaa !32
  br label %bb.an

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i82: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i81
  %i.gt = load i64, ptr %i.b, align 8, !tbaa !32
  store ptr %i.gh, ptr %2, align 8, !tbaa !30
  %i.gu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gv = load <2 x i64>, ptr %i.gu, align 8, !tbaa !32
  store <2 x i64> %i.gv, ptr %i.c, align 8, !tbaa !32
  %.not.i83 = icmp eq ptr %i.gf, null
  br i1 %.not.i83, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i82
  store ptr %i.gf, ptr %9, align 8, !tbaa !30
  store i64 %i.gt, ptr %i.gi, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit88

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i82, %.thread.i87
  store ptr %i.gi, ptr %9, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i84, %bb.am, %bb.an
  %i.gw = phi ptr [ %i.gf, %bb.am ], [ %i.gi, %bb.an ], [ %.pre.i85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i84 ]
  %i.gx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.gx, align 8, !tbaa !31
  store i8 0, ptr %i.gw, align 1, !tbaa !32
  %i.gy = load ptr, ptr %9, align 8, !tbaa !30    ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit88
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !32
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ah
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.ay

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.he = load ptr, ptr %0, align 8, !tbaa !501
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !319
  %i.hh = invoke noundef ptr @_ZN8AstScope10createTempERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP12AstNodeDType(ptr noundef nonnull align 8 dereferenceable(208) %i.he, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.hg)
          to label %bb.aq unwind label %bb.aw     ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 168 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !321
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 260 ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 4
  %i.hm = or i64 %i.hl, 68719476736
  store i64 %i.hm, ptr %i.hk, align 4
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ho = load ptr, ptr %i.hi, align 8, !tbaa !321 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !815 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !379
  %.not.i.i = icmp eq ptr %i.hq, %i.hs
  br i1 %.not.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.ho, ptr %i.hq, align 8, !tbaa !482
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store ptr %i.ht, ptr %i.hp, align 8, !tbaa !815
  br label %_ZNSt6vectorIP6AstVarSaIS1_EE9push_backEOS1_.exit

bb.as:                                            ; preds = %bb.aq
  %i.hu = load ptr, ptr %i.hn, align 8, !tbaa !378 ; 4 uses
  %i.hv = ptrtoint ptr %i.hq to i64
  %i.hw = ptrtoint ptr %i.hu to i64               ; 2 uses
  %i.hx = sub i64 %i.hv, %i.hw                    ; 5 uses
  %i.hy = icmp eq i64 %i.hx, 9223372036854775800
  br i1 %i.hy, label %bb.at, label %_ZNKSt6vectorIP6AstVarSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.530) #28
          to label %.noexc92 unwind label %bb.ax

.noexc92:                                         ; preds = %bb.at
  unreachable

_ZNKSt6vectorIP6AstVarSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.as
  %i.hz = ashr exact i64 %i.hx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hz, i64 1)
  %i.ia = add nsw i64 %.sroa.speculated.i.i.i.i, %i.hz ; 2 uses
  %i.ib = icmp ult i64 %i.ia, %i.hz
  %i.ic = call i64 @llvm.umin.i64(i64 %i.ia, i64 1152921504606846975)
  %i.id = select i1 %i.ib, i64 1152921504606846975, i64 %i.ic ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.id, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ie = shl nuw nsw i64 %i.id, 3
  %i.if = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #29
          to label %.noexc93 unwind label %bb.ax  ; 4 uses

.noexc93:                                         ; preds = %_ZNKSt6vectorIP6AstVarSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 %i.hx ; 2 uses
  store ptr %i.ho, ptr %i.ig, align 8, !tbaa !482
  %i.ih = icmp sgt i64 %i.hx, 0
  br i1 %i.ih, label %bb.au, label %_ZNSt6vectorIP6AstVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.au:                                            ; preds = %.noexc93
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.if, ptr align 8 %i.hu, i64 %i.hx, i1 false)
  br label %_ZNSt6vectorIP6AstVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP6AstVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.au, %.noexc93
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.hu, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP6AstVarSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIP6AstVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ij = load ptr, ptr %i.hr, align 8, !tbaa !379
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = sub i64 %i.ik, %i.hw
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.il) #25
  br label %_ZNSt6vectorIP6AstVarSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP6AstVarSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.av, %_ZNSt6vectorIP6AstVarSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.if, ptr %i.hn, align 8, !tbaa !378
  store ptr %i.ii, ptr %i.hp, align 8, !tbaa !815
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.id
  store ptr %i.im, ptr %i.hr, align 8, !tbaa !379
  br label %_ZNSt6vectorIP6AstVarSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIP6AstVarSaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIP6AstVarSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ar
  %i.in = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.b
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt6vectorIP6AstVarSaIS1_EE9push_backEOS1_.exit
  %i.ip = load i64, ptr %i.b, align 8, !tbaa !32
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt6vectorIP6AstVarSaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret ptr %i.hh

bb.aw:                                            ; preds = %bb.ap
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %_ZNKSt6vectorIP6AstVarSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.at
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.ao, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %.pn28.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %i.hd, %bb.ao ], [ %i.gd, %bb.ag ], [ %i.is, %bb.ax ], [ %i.ir, %bb.aw ]
  %i.it = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.b
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.ay
  %i.iv = load i64, ptr %i.b, align 8, !tbaa !32
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn28.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK12AstNodeDType16prettyDTypeNameQB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(162) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = load ptr, ptr %1, align 8, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(162) %1, i1 noundef zeroext false)
  %i.d = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.28, i64 noundef 1)
          to label %.noexc unwind label %bb.f     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !100, !alias.scope !820
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %.thread, label %bb.b

.thread:                                          ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.n, align 8, !tbaa !31, !alias.scope !820
  store ptr %i.g, ptr %i.d, align 8, !tbaa !30
  store i64 0, ptr %i.m, align 8, !tbaa !31
  store i8 0, ptr %i.g, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.b:                                             ; preds = %.noexc
  store ptr %i.f, ptr %2, align 8, !tbaa !30, !alias.scope !820
  %i.o = load i64, ptr %i.g, align 8, !tbaa !32
  store i64 %i.o, ptr %i.e, align 8, !tbaa !32, !alias.scope !820
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !31 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.pre.i, ptr %i.q, align 8, !tbaa !31, !alias.scope !820
  store ptr %i.g, ptr %i.d, align 8, !tbaa !30
  store i64 0, ptr %i.p, align 8, !tbaa !31
  store i8 0, ptr %i.g, align 8, !tbaa !32
  %i.r = icmp eq i64 %.pre.i, 4611686018427387903
  br i1 %i.r, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
          to label %.noexc7 unwind label %bb.g

.noexc7:                                          ; preds = %bb.c
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.thread, %bb.b
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.28, i64 noundef 1)
          to label %.noexc8 unwind label %bb.g    ; 6 uses

.noexc8:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !100, !alias.scope !821
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !30   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

bb.d:                                             ; preds = %.noexc8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !31   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %.noexc8
  store ptr %i.u, ptr %0, align 8, !tbaa !30, !alias.scope !821
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !32
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !32, !alias.scope !821
  %.phi.trans.insert.i5 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.pre.i6 = load i64, ptr %.phi.trans.insert.i5, align 8, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4, %bb.d
  %i.ac = phi i64 [ %i.y, %bb.d ], [ %.pre.i6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !31, !alias.scope !821
  store ptr %i.v, ptr %i.s, align 8, !tbaa !30
  store i64 0, ptr %i.ad, align 8, !tbaa !31
  store i8 0, ptr %i.v, align 8, !tbaa !32
  %i.af = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.e
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.e
  %i.ah = load i64, ptr %i.e, align 8, !tbaa !32
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.aj = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN14SenExprBuilder7getCurrEP11AstNodeExpr:bb.a
bb.a:
  %2 = alloca %class.anon.331, align 1            ; 3 uses
  %3 = alloca %class.anon.331, align 1            ; 3 uses
  %4 = alloca %class.anon.382, align 1            ; 3 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.b = call noundef zeroext i1 @_ZN7AstNode13predicateImplIKS_Lb1EZN14SenExprBuilder12isSimpleExprEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_b(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %1, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !274  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !486
  %i.g = call { ptr, i8 } @_ZNSt10_HashtableI5VNRefI7AstNodeESt4pairIKS2_P11AstVarScopeESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJR11AstNodeExprDnEEES3_INS9_14_Node_iteratorIS7_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.fca.0.extract9 = extractvalue { ptr, i8 } %i.g, 0 ; 2 uses
  %.fca.1.extract10 = extractvalue { ptr, i8 } %i.g, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.h = trunc nuw i8 %.fca.1.extract10 to i1
  br i1 %i.h, label %bb.d, label %._ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit_crit_edge

._ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit_crit_edge: ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.fca.0.extract9, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !490
  br label %_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit

bb.d:                                             ; preds = %bb.c
  %i.i = call noundef ptr @_ZN14SenExprBuilder9crateTempEP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull %1) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.fca.0.extract9, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !490
  br label %_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit

_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit: ; preds = %._ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit_crit_edge, %bb.d
  %i.k = phi ptr [ %.pre, %._ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit_crit_edge ], [ %i.i, %bb.d ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.l = call noundef zeroext i1 @_ZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_b(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %i.l, label %_ZN7AstNode4castI12AstMemberSel11AstNodeExprEEPKT_PKT0_.exit.i.preheader, label %_ZN14SenExprBuilder15getBaseClassRefEPK11AstNodeExpr.exit

_ZN7AstNode4castI12AstMemberSel11AstNodeExprEEPKT_PKT0_.exit.i.preheader: ; preds = %_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i.i.i.i70 = load i16, ptr %i.m, align 8, !tbaa !220
  %.not27.i71 = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i70, 153
  br i1 %.not27.i71, label %.lr.ph, label %_ZN14SenExprBuilder15getBaseClassRefEPK11AstNodeExpr.exit

.lr.ph:                                           ; preds = %_ZN7AstNode4castI12AstMemberSel11AstNodeExprEEPKT_PKT0_.exit.i.preheader, %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.thread.i
  %.01229.i72 = phi ptr [ %i.o, %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.thread.i ], [ %1, %_ZN7AstNode4castI12AstMemberSel11AstNodeExprEEPKT_PKT0_.exit.i.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %.01229.i72, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !273  ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !319  ; 2 uses
  %.not19.i = icmp eq ptr %i.q, null
  br i1 %.not19.i, label %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.r = call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.q, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) ; 2 uses
  %.not.i20.i = icmp eq ptr %i.r, null
  br i1 %.not.i20.i, label %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.thread.i, label %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.i

_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.i: ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %.sroa.0.0.copyload.i.i.i21.i = load i16, ptr %i.s, align 8, !tbaa !220
  %i.t = icmp eq i16 %.sroa.0.0.copyload.i.i.i21.i, 77
  br i1 %i.t, label %_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit.i, label %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.thread.i

_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit.i: ; preds = %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.u = call noundef zeroext i1 @_ZN7AstNode13predicateImplIKS_Lb0EZN14SenExprBuilder20hasClassMemberAccessEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_b(ptr noundef nonnull align 8 dereferenceable(152) %i.o, ptr noundef nonnull align 1 dereferenceable(1) %2, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %i.u, label %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.thread.i, label %_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit..thread_crit_edge.i, !llvm.loop !12

_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.thread.i: ; preds = %_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit.i, %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.i, %bb.e, %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.v, align 8, !tbaa !220
  %.not27.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, 153
  br i1 %.not27.i, label %.lr.ph, label %_ZN14SenExprBuilder15getBaseClassRefEPK11AstNodeExpr.exit

_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit..thread_crit_edge.i: ; preds = %_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit.i
  br label %_ZN14SenExprBuilder15getBaseClassRefEPK11AstNodeExpr.exit, !llvm.loop !12

_ZN14SenExprBuilder15getBaseClassRefEPK11AstNodeExpr.exit: ; preds = %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.thread.i, %_ZN7AstNode4castI12AstMemberSel11AstNodeExprEEPKT_PKT0_.exit.i.preheader, %_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit..thread_crit_edge.i, %_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit
  %i.w = phi ptr [ null, %_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit ], [ %i.o, %_ZN14SenExprBuilder20hasClassMemberAccessEPK7AstNode.exit..thread_crit_edge.i ], [ null, %_ZN7AstNode4castI12AstMemberSel11AstNodeExprEEPKT_PKT0_.exit.i.preheader ], [ null, %_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_.exit.thread.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.y = call { ptr, i8 } @_ZNSt10_HashtableI5VNRefI7AstNodeES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE10_M_emplaceIJR11AstVarScopeEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(176) %i.k)
  %.fca.1.extract = extractvalue { ptr, i8 } %i.y, 1
  %i.z = trunc i8 %.fca.1.extract to i1
  br i1 %i.z, label %bb.f, label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit

bb.f:                                             ; preds = %_ZN14SenExprBuilder15getBaseClassRefEPK11AstNodeExpr.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #29 ; 8 uses
  %i.ac = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #29
          to label %bb.g unwind label %bb.s       ; 14 uses

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !321 ; 3 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(232) %i.ac, i16 369, ptr noundef %i.e)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV13AstNodeVarRef, i64 16), ptr %i.ac, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 152 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.ag, align 8, !tbaa !334
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 184
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN16VSelfPointerText8s_emptypB5cxx11E, i64 8), align 8, !tbaa !324 ; 2 uses
  %i.aj = load <2 x ptr>, ptr @_ZN16VSelfPointerText8s_emptypB5cxx11E, align 8, !tbaa !325
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !325
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !101
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !101
  br label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i

_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i:      ; preds = %bb.j, %bb.i, %.noexc
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !332
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !319 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 72 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !319
  %.not.i.i.i.i.i = icmp eq ptr %i.as, %i.aq
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !319
  %i.at = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV9AstVarRef, i64 16), ptr %i.ac, align 8, !tbaa !104
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 200
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 216 ; 2 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !100
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 208
  store i64 0, ptr %i.ax, align 8, !tbaa !31
  store i8 0, ptr %i.aw, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 160
  store ptr %i.k, ptr %i.ay, align 8, !tbaa !333
  %i.az = invoke noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %1, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN11AstNodeExpr9cloneTreeEbb.exit unwind label %.thread67

_ZN11AstNodeExpr9cloneTreeEbb.exit:               ; preds = %bb.m
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.ab, i16 466, ptr noundef %i.e)
          to label %.noexc37 unwind label %.thread67

.noexc37:                                         ; preds = %_ZN11AstNodeExpr9cloneTreeEbb.exit
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV13AstNodeAssign, i64 16), ptr %i.ab, align 8, !tbaa !104
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.ab, ptr noundef %i.az)
          to label %.noexc38 unwind label %.thread67

.noexc38:                                         ; preds = %.noexc37
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.ab, ptr noundef nonnull %i.ac)
          to label %.noexc39 unwind label %.thread67

.noexc39:                                         ; preds = %.noexc38
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !319 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 72 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !319
  %.not.i.i8.i.i = icmp eq ptr %i.bd, %i.bb
  br i1 %.not.i.i8.i.i, label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit, label %bb.n

bb.n:                                             ; preds = %.noexc39
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !319
  %i.be = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit

_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit: ; preds = %.noexc39, %bb.n
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV9AstAssign, i64 16), ptr %i.ab, align 8, !tbaa !104
  %i.bg = call noundef ptr @_ZN14SenExprBuilder21wrapStmtWithNullCheckEP8FileLineP11AstNodeStmtPK11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef %i.e, ptr noundef nonnull %i.ab, ptr noundef %i.w) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !480 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !382
  %.not.i.i = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !375
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !480
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit

bb.p:                                             ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit
  %i.bm = load ptr, ptr %i.aa, align 8, !tbaa !381 ; 4 uses
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 5 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %.noexc41, label %_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

.noexc41:                                         ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.530) #28
  unreachable

_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i40 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i40)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #29 ; 4 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %i.bp ; 2 uses
  store ptr %i.bg, ptr %i.by, align 8, !tbaa !375
  %i.bz = icmp sgt i64 %i.bp, 0
  br i1 %i.bz, label %bb.q, label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bx, ptr align 8 %i.bm, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.q, %_ZNKSt6vectorIP11AstNodeStmtSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.cb = load ptr, ptr %i.bj, align 8, !tbaa !382
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.cd) #25
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.bx, ptr %i.aa, align 8, !tbaa !381
  store ptr %i.ca, ptr %i.bh, align 8, !tbaa !480
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.ce, ptr %i.bj, align 8, !tbaa !382
  br label %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit

bb.s:                                             ; preds = %bb.f
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.thread58

bb.t:                                             ; preds = %bb.g
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 232) #25
  br label %.thread58

.thread67:                                        ; preds = %.noexc37, %_ZN11AstNodeExpr9cloneTreeEbb.exit, %bb.m, %.noexc38
  %lpad.thr_comm65 = landingpad { ptr, i32 }
          cleanup
  br label %.thread58

.thread58:                                        ; preds = %bb.s, %bb.t, %.thread67
  %.pn62 = phi { ptr, i32 } [ %lpad.thr_comm65, %.thread67 ], [ %i.cf, %bb.s ], [ %lpad.thr_comm.split-lp, %bb.t ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 152) #25
  br label %bb.ab

_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit: ; preds = %bb.o, %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %_ZN14SenExprBuilder15getBaseClassRefEPK11AstNodeExpr.exit
  %i.cg = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #29 ; 12 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !321 ; 3 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(232) %i.cg, i16 369, ptr noundef %i.e)
          to label %.noexc48 unwind label %bb.aa

.noexc48:                                         ; preds = %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV13AstNodeVarRef, i64 16), ptr %i.cg, align 8, !tbaa !104
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 152 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cj, i8 0, i64 25, i1 false)
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN16VSelfPointerText8s_emptypB5cxx11E, i64 8), align 8, !tbaa !324 ; 2 uses
  %i.cm = load <2 x ptr>, ptr @_ZN16VSelfPointerText8s_emptypB5cxx11E, align 8, !tbaa !325
  store <2 x ptr> %i.cm, ptr %i.ck, align 8, !tbaa !325
  %.not.i.i.i.i.i.i43 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i.i43, label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i45, label %bb.u

bb.u:                                             ; preds = %.noexc48
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 3 uses
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i.i.i44 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i.i.i.i44, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !101
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.cn, align 4, !tbaa !101
  br label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i45

bb.w:                                             ; preds = %bb.u
  %i.cr = atomicrmw volatile add ptr %i.cn, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i45

_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i45:    ; preds = %bb.w, %bb.v, %.noexc48
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !332
  %.not.i.i.i.i46 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i46, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i45
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !319 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 72 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !319
  %.not.i.i.i.i.i47 = icmp eq ptr %i.cv, %i.ct
  br i1 %.not.i.i.i.i.i47, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !319
  %i.cw = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  %i.cx = add i64 %i.cw, 1
  store i64 %i.cx, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i45
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV9AstVarRef, i64 16), ptr %i.cg, align 8, !tbaa !104
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cg, i64 200
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cg, i64 216 ; 2 uses
  store ptr %i.cz, ptr %i.cy, align 8, !tbaa !100
  %i.da = getelementptr inbounds nuw i8, ptr %i.cg, i64 208
  store i64 0, ptr %i.da, align 8, !tbaa !31
  store i8 0, ptr %i.cz, align 8, !tbaa !32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 160
  store ptr %i.k, ptr %i.db, align 8, !tbaa !333
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt6vectorIP11AstNodeStmtSaIS1_EE9push_backEOS1_.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef 232) #25
  br label %bb.ab

bb.ab:                                            ; preds = %.thread58, %bb.aa
  %.pn34 = phi { ptr, i32 } [ %i.dc, %bb.aa ], [ %.pn62, %.thread58 ]
  resume { ptr, i32 } %.pn34

bb.ac:                                            ; preds = %bb.z, %bb.b
  %.032 = phi ptr [ %i.c, %bb.b ], [ %i.cg, %bb.z ]
  ret ptr %.032
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode13predicateImplIKS_Lb1EZN14SenExprBuilder12isSimpleExprEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_b(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %.ptr114 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %.090.idx.sroa.gep119 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.a, align 16, !tbaa !223
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !223
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  br i1 %2, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !262  ; 2 uses
  %.not45 = icmp eq ptr %i.e, null
  br i1 %.not45, label %_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.e, ptr %.ptr114, align 16, !tbaa !223
  br label %_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit.i.i

bb.d:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit, label %_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit.i.i

_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit.i.i:      ; preds = %bb.b, %bb.c, %bb.d
  %.090.idx.sroa.phi = phi ptr [ %.ptr114, %bb.d ], [ %.090.idx.sroa.gep119, %bb.c ], [ %.ptr114, %bb.b ]
  %.090.idx = phi i64 [ 16, %bb.d ], [ 24, %bb.c ], [ 16, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %i.f, align 8, !tbaa !220
  switch i16 %.sroa.0.0.copyload.i.i.i.i.i, label %_ZNSt10unique_ptrIA_PK7AstNodeSt14default_deleteIS3_EED2Ev.exit [
    i16 370, label %_ZZN14SenExprBuilder12isSimpleExprEPK7AstNodeENKUlS2_E_clES2_.exit.i
    i16 369, label %_ZZN14SenExprBuilder12isSimpleExprEPK7AstNodeENKUlS2_E_clES2_.exit.i
    i16 282, label %_ZZN14SenExprBuilder12isSimpleExprEPK7AstNodeENKUlS2_E_clES2_.exit.i
    i16 281, label %_ZZN14SenExprBuilder12isSimpleExprEPK7AstNodeENKUlS2_E_clES2_.exit.i
    i16 280, label %_ZZN14SenExprBuilder12isSimpleExprEPK7AstNodeENKUlS2_E_clES2_.exit.i
    i16 279, label %_ZZN14SenExprBuilder12isSimpleExprEPK7AstNodeENKUlS2_E_clES2_.exit.i
    i16 246, label %_ZZN14SenExprBuilder12isSimpleExprEPK7AstNodeENKUlS2_E_clES2_.exit.i
    i16 153, label %_ZZN14SenExprBuilder12isSimpleExprEPK7AstNodeENKUlS2_E_clES2_.exit.i
    i16 121, label %_ZZN14SenExprBuilder12isSimpleExprEPK7AstNodeENKUlS2_E_clES2_.exit.i
    i16 107, label %_ZZN14SenExprBuilder12isSimpleExprEPK7AstNodeENKUlS2_E_clES2_.exit.i
  ]

_ZZN14SenExprBuilder12isSimpleExprEPK7AstNodeENKUlS2_E_clES2_.exit.i: ; preds = %_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit.i.i, %_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit.i.i, %_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit.i.i, %_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit.i.i, %_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit.i.i, %_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit.i.i, %_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit.i.i, %_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit.i.i, %_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit.i.i, %_ZN7AstNode2isI8AstConstS_EEbPKT0_.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !243  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZZN14SenExprBuilder12isSimpleExprEPK7AstNodeENKUlS2_E_clES2_.exit.i
  %.090.add = add nuw nsw i64 %.090.idx, 8
  store ptr %i.h, ptr %.090.idx.sroa.phi, align 8, !tbaa !223
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZZN14SenExprBuilder12isSimpleExprEPK7AstNodeENKUlS2_E_clES2_.exit.i
  %.4.idx = phi i64 [ %.090.idx, %_ZZN14SenExprBuilder12isSimpleExprEPK7AstNodeENKUlS2_E_clES2_.exit.i ], [ %.090.add, %bb.e ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !222  ; 2 uses
  %.not21.i = icmp eq ptr %i.j, null
  br i1 %.not21.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.4.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.idx
  %.4.add = add nuw nsw i64 %.4.idx, 8
  store ptr %i.j, ptr %.4.ptr, align 8, !tbaa !223
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.5.idx = phi i64 [ %.4.idx, %bb.f ], [ %.4.add, %bb.g ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !173  ; 2 uses
  %.not22.i = icmp eq ptr %i.l, null
  br i1 %.not22.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.5.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.5.idx
  %.5.add = add nuw nsw i64 %.5.idx, 8
  store ptr %i.l, ptr %.5.ptr, align 8, !tbaa !223
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.6.idx = phi i64 [ %.5.idx, %bb.h ], [ %.5.add, %bb.i ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !273  ; 2 uses
  %.not23.i = icmp eq ptr %i.n, null
  br i1 %.not23.i, label %_ZZN7AstNode13predicateImplIKS_Lb1EZN14SenExprBuilder12isSimpleExprEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit, label %_ZZN7AstNode13predicateImplIKS_Lb1EZN14SenExprBuilder12isSimpleExprEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit.thread

_ZZN7AstNode13predicateImplIKS_Lb1EZN14SenExprBuilder12isSimpleExprEPS1_EUlS3_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueES1_S_E4typeERKT1_bENKUlS3_E_clES3_.exit.thread: ; preds = %bb.j
  %.6.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.6.idx
  %.6.add = add nuw nsw i64 %.6.idx, 8
  store ptr %i.n, ptr %.6.ptr, align 8, !tbaa !223
  br label %.lr.ph.preheader
end_hunk_6
begin_hunk_7_@_ZNK14AstCMethodHard4nameB5cxx11Ev:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !180  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !31
  %i.q = load ptr, ptr %0, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14AstCMethodHard5frompEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !273
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local i8 @_ZNK14AstCMethodHard6methodEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.0.0.copyload = load i8, ptr %i.a, align 8, !tbaa !360
  ret i8 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK8VCMethod5asciiEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !850
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw [24 x i8], ptr @_ZN8VCMethod10s_itemDataE, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !506
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK20TimingControlVisitor22factorOutTimingControlEP13AstNodeAssign(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222  ; 6 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN7AstNode4castI8AstBeginS_EEPT_PT0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.c, align 8, !tbaa !220
  switch i16 %.sroa.0.0.copyload.i.i.i, label %_ZN7AstNode4castI8AstBeginS_EEPT_PT0_.exit.thread [
    i16 419, label %_ZN7AstNode4castI8AstBeginS_EEPT_PT0_.exit.thread.sink.split.sink.split
    i16 56, label %_ZN7AstNode4castI10AstSenTreeS_EEPT_PT0_.exit
    i16 472, label %_ZN7AstNode4castI8AstBeginS_EEPT_PT0_.exit.thread.sink.split.sink.split
  ]

_ZN7AstNode4castI10AstSenTreeS_EEPT_PT0_.exit:    ; preds = %bb.b
  %i.d = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #29 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !274
  %i.g = invoke noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef null)
          to label %_ZN10AstSenTree12unlinkFrBackEP10VNRelinker.exit unwind label %bb.d ; 2 uses

_ZN10AstSenTree12unlinkFrBackEP10VNRelinker.exit: ; preds = %_ZN7AstNode4castI10AstSenTreeS_EEPT_PT0_.exit
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.d, i16 424, ptr noundef %i.f)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_ZN10AstSenTree12unlinkFrBackEP10VNRelinker.exit
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV15AstEventControl, i64 16), ptr %i.d, align 8, !tbaa !104
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN7AstNode4castI8AstBeginS_EEPT_PT0_.exit.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %.noexc
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.d, ptr noundef nonnull %i.g)
          to label %_ZN7AstNode4castI8AstBeginS_EEPT_PT0_.exit.thread.sink.split unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN10AstSenTree12unlinkFrBackEP10VNRelinker.exit, %_ZN7AstNode4castI10AstSenTreeS_EEPT_PT0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 152) #25
  resume { ptr, i32 } %i.h

_ZN7AstNode4castI8AstBeginS_EEPT_PT0_.exit.thread.sink.split.sink.split: ; preds = %bb.b, %bb.b
  %i.i = tail call noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef null)
  br label %_ZN7AstNode4castI8AstBeginS_EEPT_PT0_.exit.thread.sink.split

_ZN7AstNode4castI8AstBeginS_EEPT_PT0_.exit.thread.sink.split: ; preds = %_ZN7AstNode4castI8AstBeginS_EEPT_PT0_.exit.thread.sink.split.sink.split, %bb.c, %.noexc
  %.sink50 = phi ptr [ %i.d, %.noexc ], [ %i.d, %bb.c ], [ %i.i, %_ZN7AstNode4castI8AstBeginS_EEPT_PT0_.exit.thread.sink.split.sink.split ]
  %.sink = phi ptr [ %i.d, %.noexc ], [ %i.d, %bb.c ], [ %i.b, %_ZN7AstNode4castI8AstBeginS_EEPT_PT0_.exit.thread.sink.split.sink.split ] ; 2 uses
  tail call void @_ZN7AstNode11replaceWithEPS_(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef %.sink50)
  tail call void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %.sink, ptr noundef nonnull %1)
  br label %_ZN7AstNode4castI8AstBeginS_EEPT_PT0_.exit.thread

_ZN7AstNode4castI8AstBeginS_EEPT_PT0_.exit.thread: ; preds = %_ZN7AstNode4castI8AstBeginS_EEPT_PT0_.exit.thread.sink.split, %bb.b, %bb.a
  %.2 = phi ptr [ %1, %bb.a ], [ %1, %bb.b ], [ %.sink, %_ZN7AstNode4castI8AstBeginS_EEPT_PT0_.exit.thread.sink.split ] ; 2 uses
  %i.j = icmp eq ptr %.2, %1
  %i.k = select i1 %i.j, ptr null, ptr %.2
  ret ptr %i.k
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI12AstAssignDly13AstNodeAssignEEbPKT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !220
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 469
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode4castI7AstForkS_EEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !220
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 473
  %spec.select = select i1 %i.b, ptr %0, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN20TimingControlVisitor21createNbaEventControlEP8FileLine(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !158
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !851
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #29 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !174
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !274
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(184) %i.e, i16 74, ptr noundef %i.i)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.j, i8 0, i64 10, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTV13AstBasicDType, i64 16), ptr %i.e, align 8, !tbaa !104
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 164
  store i8 0, ptr %i.k, align 4, !tbaa !451
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.l, i8 0, i64 9, i1 false)
  invoke void @_ZN13AstBasicDType4initE14VBasicDTypeKwd8VSigningiiP8AstRange(ptr noundef nonnull align 8 dereferenceable(184) %i.e, i8 5, i8 0, i32 noundef 0, i32 noundef -1, ptr noundef null)
          to label %_ZN13AstBasicDTypeC2EP8FileLine14VBasicDTypeKwdRK8VSigning.exit unwind label %bb.d

_ZN13AstBasicDTypeC2EP8FileLine14VBasicDTypeKwdRK8VSigning.exit: ; preds = %.noexc
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !158
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 304
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !459
  tail call void @_ZN7AstNode7addOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(464) %i.o, ptr noundef nonnull %i.e)
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !158
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.r, ptr noundef nonnull align 1 dereferenceable(11) @.str.598, i64 11, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 11, ptr %i.s, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 27
  store i8 0, ptr %i.t, align 1, !tbaa !32
  %i.u = invoke noundef ptr @_ZN8AstScope10createTempERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP12AstNodeDType(ptr noundef nonnull align 8 dereferenceable(208) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %i.e)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN13AstBasicDTypeC2EP8FileLine14VBasicDTypeKwdRK8VSigning.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 376
  store ptr %i.u, ptr %i.v, align 8, !tbaa !851
  %i.w = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.r
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.y = load i64, ptr %i.r, align 8, !tbaa !32
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 46), align 2, !tbaa !484
  br label %bb.f

bb.d:                                             ; preds = %.noexc, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 184) #25
  br label %bb.w

bb.e:                                             ; preds = %_ZN13AstBasicDTypeC2EP8FileLine14VBasicDTypeKwdRK8VSigning.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.r
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.e
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !32
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.w

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.ag = call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #29 ; 5 uses
  %i.ah = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #29
          to label %bb.g unwind label %bb.p       ; 6 uses

bb.g:                                             ; preds = %bb.f
  %i.ai = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #29
          to label %bb.h unwind label %bb.q       ; 6 uses

bb.h:                                             ; preds = %bb.g
  %i.aj = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #29
          to label %bb.i unwind label %bb.r       ; 12 uses

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !158
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 376
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !851 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 168
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !321 ; 3 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(232) %i.aj, i16 369, ptr noundef %1)
          to label %.noexc37 unwind label %bb.s

.noexc37:                                         ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV13AstNodeVarRef, i64 16), ptr %i.aj, align 8, !tbaa !104
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 152 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ap, i8 0, i64 25, i1 false)
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN16VSelfPointerText8s_emptypB5cxx11E, i64 8), align 8, !tbaa !324 ; 2 uses
  %i.as = load <2 x ptr>, ptr @_ZN16VSelfPointerText8s_emptypB5cxx11E, align 8, !tbaa !325
  store <2 x ptr> %i.as, ptr %i.aq, align 8, !tbaa !325
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.noexc37
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = load i32, ptr %i.at, align 4, !tbaa !101
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !101
  br label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ax = atomicrmw volatile add ptr %i.at, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i

_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i:      ; preds = %bb.l, %bb.k, %.noexc37
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !332
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !319 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 72 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !319
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.az
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !319
  %i.bc = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !180
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV9AstVarRef, i64 16), ptr %i.aj, align 8, !tbaa !104
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 200
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aj, i64 216 ; 2 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !100
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 208
  store i64 0, ptr %i.bg, align 8, !tbaa !31
  store i8 0, ptr %i.bf, align 8, !tbaa !32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 160
  store ptr %i.am, ptr %i.bh, align 8, !tbaa !333
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.ai, i16 55, ptr noundef %1)
          to label %.noexc38 unwind label %bb.t

.noexc38:                                         ; preds = %bb.o
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV10AstSenItem, i64 16), ptr %i.ai, align 8, !tbaa !104
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 152
  store i8 4, ptr %i.bi, align 8, !tbaa !398
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.ai, ptr noundef nonnull %i.aj)
          to label %_ZN10AstSenItemC2EP8FileLine9VEdgeTypeP11AstNodeExprS4_.exit unwind label %bb.t

_ZN10AstSenItemC2EP8FileLine9VEdgeTypeP11AstNodeExprS4_.exit: ; preds = %.noexc38
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.ah, i16 56, ptr noundef %1)
          to label %.noexc40 unwind label %.thread75

.noexc40:                                         ; preds = %_ZN10AstSenItemC2EP8FileLine9VEdgeTypeP11AstNodeExprS4_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV10AstSenTree, i64 16), ptr %i.ah, align 8, !tbaa !104
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 152
  store i8 0, ptr %i.bj, align 8, !tbaa !318
  invoke void @_ZN7AstNode7addOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.ah, ptr noundef nonnull %i.ai)
          to label %_ZN10AstSenTreeC2EP8FileLineP10AstSenItem.exit unwind label %.thread75

_ZN10AstSenTreeC2EP8FileLineP10AstSenItem.exit:   ; preds = %.noexc40
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.ag, i16 424, ptr noundef %1)
          to label %.noexc42 unwind label %bb.u

.noexc42:                                         ; preds = %_ZN10AstSenTreeC2EP8FileLineP10AstSenItem.exit
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV15AstEventControl, i64 16), ptr %i.ag, align 8, !tbaa !104
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.ag, ptr noundef nonnull %i.ah)
          to label %_ZN15AstEventControlC2EP8FileLineP10AstSenTreeP7AstNode.exit unwind label %bb.u

_ZN15AstEventControlC2EP8FileLineP10AstSenTreeP7AstNode.exit: ; preds = %.noexc42
  ret ptr %i.ag

bb.p:                                             ; preds = %bb.f
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.q:                                             ; preds = %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.thread68

bb.r:                                             ; preds = %bb.h
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.thread53

bb.s:                                             ; preds = %bb.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 232) #25
  br label %.thread53

bb.t:                                             ; preds = %.noexc38, %bb.o
  %lpad.thr_comm.split-lp62 = landingpad { ptr, i32 }
          cleanup
  br label %.thread53

.thread53:                                        ; preds = %bb.r, %bb.s, %bb.t
  %.pn2757 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp62, %bb.t ], [ %i.bm, %bb.r ], [ %lpad.thr_comm.split-lp, %bb.s ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 160) #25
  br label %.thread68

.thread75:                                        ; preds = %.noexc40, %_ZN10AstSenItemC2EP8FileLine9VEdgeTypeP11AstNodeExprS4_.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread68

bb.u:                                             ; preds = %_ZN10AstSenTreeC2EP8FileLineP10AstSenItem.exit, %.noexc42
  %lpad.thr_comm.split-lp74 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.thread68:                                        ; preds = %bb.q, %.thread53, %.thread75
  %.pn27.pn71 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread75 ], [ %i.bl, %bb.q ], [ %.pn2757, %.thread53 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 160) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.p, %.thread68
  %.pn27.pn.pn = phi { ptr, i32 } [ %.pn27.pn71, %.thread68 ], [ %lpad.thr_comm.split-lp74, %bb.u ], [ %i.bk, %bb.p ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 152) #25
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %bb.d, %bb.v
  %.pn27.pn.pn.pn = phi { ptr, i32 } [ %.pn27.pn.pn, %bb.v ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.aa, %bb.d ]
  resume { ptr, i32 } %.pn27.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN20TimingControlVisitor31createNbaEventTriggerAssignmentEP8FileLine(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158
end_hunk_7
begin_hunk_8_@llvm.smin.i64
!280 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7AstNodeESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !55, i64 0, !59, i64 8}
!281 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7AstNodeESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !280, i64 0}
!282 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7AstNodeSt4lessIS5_ESaISt4pairIKS5_S7_EEE", !281, i64 0}
!283 = !{!"_ZTSSt4pairIKPK7AstNodeSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessISA_ESaIS_IKSA_SB_EEEE", !111, i64 0, !282, i64 8}
!284 = !{!283, !111, i64 0}
!285 = !{!"p1 _ZTSSt8_Rb_treeIPK7AstNodeSt4pairIKS2_St3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessISB_ESaIS3_IKSB_SC_EEEESt10_Select1stISJ_ESD_IS2_ESaISJ_EE", !25, i64 0}
!286 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKPK7AstNodeSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_St4lessISB_ESaIS0_IKSB_SC_EEEEE", !25, i64 0}
!287 = !{!"_ZTSNSt8_Rb_treeIPK7AstNodeSt4pairIKS2_St3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessISB_ESaIS3_IKSB_SC_EEEESt10_Select1stISJ_ESD_IS2_ESaISJ_EE10_Auto_nodeE", !285, i64 0, !286, i64 8}
!288 = !{!287, !286, i64 8}
!289 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7AstNodeESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !25, i64 0}
!290 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7AstNodeEE", !25, i64 0}
!291 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P7AstNodeESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeE", !289, i64 0, !290, i64 8}
!292 = !{!291, !290, i64 8}
!293 = !{!"_ZTSN11V3ErrorCode2enE", !20, i64 0}
!294 = !{!"_ZTS11V3ErrorCode", !293, i64 0}
!295 = !{!"p3 _ZTS8FileLine", !246, i64 0}
!296 = !{!"_ZTSSt15_Deque_iteratorIPK8FileLineRS2_PS2_E", !134, i64 0, !134, i64 8, !134, i64 16, !295, i64 24}
!297 = !{!"_ZTSNSt11_Deque_baseIPK8FileLineSaIS2_EE16_Deque_impl_dataE", !295, i64 0, !28, i64 8, !296, i64 16, !296, i64 48}
!298 = !{!"_ZTSNSt11_Deque_baseIPK8FileLineSaIS2_EE11_Deque_implE", !297, i64 0}
!299 = !{!"_ZTSSt11_Deque_baseIPK8FileLineSaIS2_EE", !298, i64 0}
!300 = !{!"_ZTSSt5dequeIPK8FileLineSaIS2_EE", !299, i64 0}
!301 = !{!"_ZTS13VErrorMessage", !294, i64 0, !29, i64 8, !117, i64 40, !300, i64 48}
!302 = !{!"short", !20, i64 0}
!303 = !{!297, !295, i64 0}
!304 = !{!297, !295, i64 40}
!305 = !{!297, !295, i64 72}
!306 = !{!297, !28, i64 8}
!307 = !{!296, !295, i64 24}
!308 = !{!142, !41, i64 80}
!309 = !{!155, !146, i64 0}
!310 = !{!47, !46, i64 0}
!311 = !{!157, !133, i64 64}
!312 = !{!119, !21, i64 112}
!313 = !{!157, !111, i64 72}
!314 = !{!157, !41, i64 80}
!315 = !{!157, !41, i64 89}
!316 = !{!"_ZTSN9VEdgeType2enE", !20, i64 0}
!317 = !{!"_ZTS10AstSenTree", !119, i64 0, !41, i64 152}
!318 = !{!317, !41, i64 152}
!319 = !{!119, !116, i64 72}
!320 = !{!"_ZTS11AstVarScope", !119, i64 0, !41, i64 152, !41, i64 152, !131, i64 160, !170, i64 168}
!321 = !{!320, !170, i64 168}
!322 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !25, i64 0}
!323 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !322, i64 0}
!324 = !{!323, !322, i64 0}
!325 = !{!25, !25, i64 0}
!326 = !{!"_ZTSN7VAccess2enE", !20, i64 0}
!327 = !{!"_ZTS7VAccess", !326, i64 0}
!328 = !{!"_ZTSSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EE", !63, i64 0, !323, i64 8}
!329 = !{!"_ZTSSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !328, i64 0}
!330 = !{!"_ZTS16VSelfPointerText", !329, i64 0}
!331 = !{!"_ZTS13AstNodeVarRef", !270, i64 0, !170, i64 152, !144, i64 160, !229, i64 168, !327, i64 176, !330, i64 184}
!332 = !{!331, !170, i64 152}
!333 = !{!331, !144, i64 160}
!334 = !{!326, !326, i64 0}
!335 = !{!"p1 _ZTS12VFileContent", !25, i64 0}
!336 = !{!"_ZTS8FileLine", !302, i64 0, !302, i64 2, !41, i64 4, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !302, i64 24, !335, i64 32, !117, i64 40}
!337 = !{!336, !302, i64 0}
!338 = !{!"_ZTS11AstNodeStmt", !119, i64 0}
!339 = !{!"_ZTS8AstDelay", !338, i64 0, !92, i64 152, !41, i64 153}
!340 = !{!339, !41, i64 153}
!341 = !{!"_ZTSN12V3NumberData16V3NumberDataTypeE", !20, i64 0}
!342 = !{!"_ZTS12V3NumberData", !20, i64 0, !21, i64 32, !341, i64 36, !41, i64 37, !41, i64 37, !41, i64 37, !41, i64 37, !41, i64 37, !41, i64 37, !41, i64 37}
!343 = !{!342, !21, i64 32}
!344 = !{!"_ZTS12AstNodeBlock", !338, i64 0, !29, i64 152, !41, i64 184}
!345 = !{!344, !41, i64 184}
!346 = !{!"_ZTSN11VBranchPred2enE", !20, i64 0}
!347 = !{!"_ZTS11VBranchPred", !346, i64 0}
!348 = !{!347, !346, i64 0}
!349 = !{!"_ZTS8AstCExpr", !270, i64 0, !41, i64 152}
!350 = !{!349, !41, i64 152}
!351 = !{!"_ZTS9VIsCached", !28, i64 0, !28, i64 7}
!352 = !{!"_ZTS12AstNodeUniop", !270, i64 0, !351, i64 152}
!353 = !{!"_ZTS9AstLogNot", !352, i64 0, !41, i64 160}
!354 = !{!353, !41, i64 160}
!355 = !{!157, !132, i64 48}
!356 = !{!"_ZTSN10VCStmtType2enE", !20, i64 0}
!357 = !{!356, !356, i64 0}
!358 = !{!135, !134, i64 8}
!359 = !{!"_ZTSN8VCMethod2enE", !20, i64 0}
!360 = !{!359, !359, i64 0}
!361 = !{!"_ZTS8VCMethod", !359, i64 0}
!362 = !{!"_ZTS14AstCMethodHard", !270, i64 0, !361, i64 152, !41, i64 153, !41, i64 154}
!363 = !{!362, !41, i64 153}
!364 = !{!362, !41, i64 154}
!365 = !{!"_ZTS9AstCAwait", !338, i64 0, !145, i64 152}
!366 = !{!365, !145, i64 152}
!367 = !{!157, !156, i64 960}
!368 = !{!"p2 _ZTS11AstNodeStmt", !42, i64 0}
!369 = !{!368, !368, i64 0}
!370 = !{!90, !89, i64 0}
!371 = !{!"p1 _ZTS7AstLoop", !25, i64 0}
!372 = !{!"_ZTS11AstLoopTest", !338, i64 0, !371, i64 152}
!373 = !{!372, !371, i64 152}
!374 = !{!"p1 _ZTS11AstNodeStmt", !25, i64 0}
!375 = !{!374, !374, i64 0}
!376 = !{!"p2 _ZTS6AstVar", !42, i64 0}
!377 = !{!"_ZTSNSt12_Vector_baseIP6AstVarSaIS1_EE17_Vector_impl_dataE", !376, i64 0, !376, i64 8, !376, i64 16}
!378 = !{!377, !376, i64 0}
!379 = !{!377, !376, i64 16}
!380 = !{!"_ZTSNSt12_Vector_baseIP11AstNodeStmtSaIS1_EE17_Vector_impl_dataE", !368, i64 0, !368, i64 8, !368, i64 16}
!381 = !{!380, !368, i64 0}
!382 = !{!380, !368, i64 16}
!383 = !{!157, !21, i64 84}
!384 = !{!157, !41, i64 88}
!385 = !{!"p1 _ZTS13AstNodeAssign", !25, i64 0}
!386 = !{!385, !385, i64 0}
!387 = !{!119, !111, i64 16}
!388 = !{!"p1 _ZTS20TimingControlVisitor", !25, i64 0}
!389 = !{!"_ZTSZN20TimingControlVisitor5visitEP13AstNodeAssignEUlP11AstNodeExprRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_", !388, i64 0, !134, i64 8, !112, i64 16, !112, i64 24}
!390 = !{!389, !388, i64 0}
!391 = !{!112, !112, i64 0}
!392 = !{!"p2 _ZTS13AstNodeAssign", !42, i64 0}
!393 = !{!"_ZTSZN20TimingControlVisitor5visitEP13AstNodeAssignEUlP6AstSelE_", !25, i64 0, !388, i64 8, !392, i64 16}
!394 = !{!393, !388, i64 8}
!395 = !{!"_ZTSZN20TimingControlVisitor5visitEP13AstNodeAssignEUlP10AstNodeSelE_", !25, i64 0, !388, i64 8, !392, i64 16}
!396 = !{!395, !388, i64 8}
!397 = !{!157, !131, i64 56}
!398 = !{!316, !316, i64 0}
!399 = !{!"_ZTSSt17reference_wrapperI10AstSenTreeE", !145, i64 0}
!400 = !{!399, !145, i64 0}
!401 = !{!153, !28, i64 32}
!402 = !{!44, !44, i64 0}
!403 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !28, i64 0}
!404 = !{!403, !28, i64 0}
!405 = !{!47, !28, i64 8}
!406 = !{!320, !131, i64 160}
!407 = !{!"_ZTSN14VBasicDTypeKwd2enE", !20, i64 0}
!408 = !{!407, !407, i64 0}
!409 = !{!"_ZTSN8VVarType2enE", !20, i64 0}
!410 = !{!"_ZTS8VVarType", !409, i64 0}
!411 = !{!410, !409, i64 0}
!412 = !{!63, !63, i64 0}
!413 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !25, i64 0}
!414 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEE", !25, i64 0}
!415 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeE", !413, i64 0, !414, i64 8}
!416 = !{!415, !414, i64 8}
!417 = !{!"_ZTSN17FileLineSingleton11MsgEnBitSet4HashE"}
!418 = !{!"_ZTSNSt8__detail21_Hashtable_ebo_helperILi1EN17FileLineSingleton11MsgEnBitSet4HashELb0EEE", !417, i64 0}
!419 = !{!"_ZTSNSt8__detail15_Hash_code_baseIN17FileLineSingleton11MsgEnBitSetESt4pairIKS2_tENS_10_Select1stENS2_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EEE", !418, i64 0}
!420 = !{!"_ZTSN17FileLineSingleton11MsgEnBitSet5EqualE"}
!421 = !{!"_ZTSNSt8__detail21_Hashtable_ebo_helperILi0EN17FileLineSingleton11MsgEnBitSet5EqualELb0EEE", !420, i64 0}
!422 = !{!"_ZTSNSt8__detail15_Hashtable_baseIN17FileLineSingleton11MsgEnBitSetESt4pairIKS2_tENS_10_Select1stENS2_5EqualENS2_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEEE", !419, i64 0, !421, i64 1}
!423 = !{!"_ZTSSt10_HashtableIN17FileLineSingleton11MsgEnBitSetESt4pairIKS1_tESaIS4_ENSt8__detail10_Select1stENS1_5EqualENS1_4HashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE", !422, i64 0, !43, i64 8, !28, i64 16, !45, i64 24, !28, i64 32, !47, i64 40, !44, i64 56}
!424 = !{!423, !43, i64 8}
!425 = !{!423, !28, i64 16}
!426 = !{!"p2 _ZTS10V3LangCode", !42, i64 0}
!427 = !{!"p1 _ZTS10V3LangCode", !25, i64 0}
!428 = !{!"_ZTSSt15_Deque_iteratorI10V3LangCodeRS0_PS0_E", !427, i64 0, !427, i64 8, !427, i64 16, !426, i64 24}
!429 = !{!"_ZTSNSt11_Deque_baseI10V3LangCodeSaIS0_EE16_Deque_impl_dataE", !426, i64 0, !28, i64 8, !428, i64 16, !428, i64 48}
!430 = !{!429, !426, i64 0}
!431 = !{!427, !427, i64 0}
!432 = !{!429, !28, i64 8}
!433 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !42, i64 0}
!434 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !63, i64 0, !63, i64 8, !63, i64 16, !433, i64 24}
!435 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !433, i64 0, !28, i64 8, !434, i64 16, !434, i64 48}
!436 = !{!435, !433, i64 0}
!437 = !{!435, !28, i64 8}
!438 = !{!434, !433, i64 24}
!439 = !{!434, !63, i64 8}
!440 = !{!434, !63, i64 16}
!441 = !{!434, !63, i64 0}
!442 = !{!"p3 _ZTS7AstNode", !246, i64 0}
!443 = !{!442, !442, i64 0}
!444 = !{!"branch_weights", i32 127, i32 1}
!445 = !{!"_ZTSZN7AstNode11foreachImplI9AstVarRefZN20TimingControlVisitor5visitEP10AstAssignWEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bEUlPS_E_", !25, i64 0, !442, i64 8}
!446 = !{!445, !442, i64 8}
!447 = !{i64 8}
!448 = !{!"branch_weights", i32 255873, i32 127}
!449 = !{!342, !341, i64 36}
!450 = !{!"_ZTS14VBasicDTypeKwd", !407, i64 0}
!451 = !{!450, !407, i64 0}
!452 = !{!"p1 _ZTSN12V3NumberData9ValueAndXE", !25, i64 0}
!453 = !{!"_ZTSNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE17_Vector_impl_dataE", !452, i64 0, !452, i64 8, !452, i64 16}
!454 = !{!453, !452, i64 0}
!455 = !{!453, !452, i64 16}
!456 = !{!"llvm.loop.isvectorized", i32 1}
!457 = !{!"llvm.loop.unroll.runtime.disable"}
!458 = !{!453, !452, i64 8}
!459 = !{!171, !166, i64 304}
!460 = !{!95, !41, i64 817}
!461 = !{!336, !21, i64 12}
!462 = !{!336, !302, i64 24}
!463 = !{!336, !302, i64 2}
!464 = !{!"_ZTSSt4hashI5VNRefI7AstNodeEE"}
!465 = !{!"_ZTSNSt8__detail21_Hashtable_ebo_helperILi1ESt4hashI5VNRefI7AstNodeEELb0EEE", !464, i64 0}
!466 = !{!"_ZTSNSt8__detail15_Hash_code_baseI5VNRefI7AstNodeESt4pairIKS3_P11AstVarScopeENS_10_Select1stESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EEE", !465, i64 0}
!467 = !{!"_ZTSSt8equal_toI5VNRefI7AstNodeEE"}
!468 = !{!"_ZTSNSt8__detail21_Hashtable_ebo_helperILi0ESt8equal_toI5VNRefI7AstNodeEELb0EEE", !467, i64 0}
!469 = !{!"_ZTSNSt8__detail15_Hashtable_baseI5VNRefI7AstNodeESt4pairIKS3_P11AstVarScopeENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEEE", !466, i64 0, !468, i64 1}
!470 = !{!"_ZTSSt10_HashtableI5VNRefI7AstNodeESt4pairIKS2_P11AstVarScopeESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE", !469, i64 0, !43, i64 8, !28, i64 16, !45, i64 24, !28, i64 32, !47, i64 40, !44, i64 56}
!471 = !{!470, !44, i64 24}
!472 = !{!470, !43, i64 8}
!473 = !{!470, !28, i64 16}
!474 = !{!"_ZTSNSt8__detail15_Hash_code_baseI5VNRefI7AstNodeES3_NS_9_IdentityESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EEE", !465, i64 0}
!475 = !{!"_ZTSNSt8__detail15_Hashtable_baseI5VNRefI7AstNodeES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEEE", !474, i64 0, !468, i64 1}
!476 = !{!"_ZTSSt10_HashtableI5VNRefI7AstNodeES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE", !475, i64 0, !43, i64 8, !28, i64 16, !45, i64 24, !28, i64 32, !47, i64 40, !44, i64 56}
!477 = !{!476, !44, i64 24}
!478 = !{!476, !43, i64 8}
!479 = !{!476, !28, i64 16}
!480 = !{!380, !368, i64 8}
!481 = !{!376, !376, i64 0}
!482 = !{!170, !170, i64 0}
!483 = !{!"branch_weights", i32 2102744406, i32 44739242}
!484 = !{!96, !41, i64 46}
!485 = !{!"std::nullptr_t", !20, i64 0}
!486 = !{!485, !485, i64 0}
!487 = !{!"_ZTSSt17reference_wrapperI7AstNodeE", !111, i64 0}
!488 = !{!"_ZTS5VNRefI7AstNodeE", !487, i64 0}
!489 = !{!"_ZTSSt4pairIK5VNRefI7AstNodeEP11AstVarScopeE", !488, i64 0, !144, i64 8}
!490 = !{!489, !144, i64 8}
!491 = !{!"_ZTSNSt12_Vector_baseIP11AstNodeStmtSaIS1_EE12_Vector_implE", !380, i64 0}
!492 = !{!"_ZTSSt12_Vector_baseIP11AstNodeStmtSaIS1_EE", !491, i64 0}
!493 = !{!"_ZTSSt6vectorIP11AstNodeStmtSaIS1_EE", !492, i64 0}
!494 = !{!"_ZTSNSt12_Vector_baseIP6AstVarSaIS1_EE12_Vector_implE", !377, i64 0}
!495 = !{!"_ZTSSt12_Vector_baseIP6AstVarSaIS1_EE", !494, i64 0}
!496 = !{!"_ZTSSt6vectorIP6AstVarSaIS1_EE", !495, i64 0}
!497 = !{!"_ZTSN14SenExprBuilder7ResultsE", !493, i64 0, !493, i64 24, !493, i64 48, !493, i64 72, !496, i64 96}
!498 = !{!"_ZTSSt13unordered_mapI5VNRefI7AstNodeEP11AstVarScopeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE", !470, i64 0}
!499 = !{!"_ZTSSt13unordered_setI5VNRefI7AstNodeESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE", !476, i64 0}
!500 = !{!"_ZTS14SenExprBuilder", !131, i64 0, !497, i64 8, !498, i64 128, !498, i64 192, !499, i64 256, !499, i64 320, !142, i64 384, !142, i64 472}
!501 = !{!500, !131, i64 0}
!502 = !{!487, !111, i64 0}
!503 = !{!470, !28, i64 32}
!504 = !{!476, !28, i64 32}
!505 = !{!"_ZTSN8VCMethod4ItemE", !359, i64 0, !26, i64 8, !41, i64 16}
!506 = !{!505, !26, i64 8}
!507 = !{!"_ZTSZN7AstNode11foreachImplI6AstSelZN20TimingControlVisitor5visitEP13AstNodeAssignEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bEUlPS_E_", !25, i64 0, !442, i64 8}
!508 = !{!507, !25, i64 0}
!509 = !{!393, !25, i64 0}
!510 = !{!393, !392, i64 16}
!511 = !{!507, !442, i64 8}
!512 = !{!"_ZTSZN7AstNode11foreachImplI10AstNodeSelZN20TimingControlVisitor5visitEP13AstNodeAssignEUlPS1_E_EEvPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT0_bEUlPS_E_", !25, i64 0, !442, i64 8}
!513 = !{!512, !25, i64 0}
!514 = !{!395, !25, i64 0}
!515 = !{!395, !392, i64 16}
!516 = !{!512, !442, i64 8}
!517 = !{!109, !109, i64 0}
!518 = !{!110, !109, i64 0}
!519 = !{!157, !28, i64 968}
!520 = !{!157, !28, i64 976}
!521 = !{!157, !28, i64 984}
!522 = distinct !{!522, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!523 = distinct !{!523, !522, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!524 = distinct !{!524, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!525 = distinct !{!525, !524, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!526 = !{!523}
!527 = !{!525}
!528 = !{!525, !523}
!529 = distinct !{null}
!530 = distinct !{null}
!531 = distinct !{null}
!532 = distinct !{!532, !183}
!533 = distinct !{!533, !"_ZNK8AstCFunc4nameB5cxx11Ev"}
!534 = distinct !{!534, !533, !"_ZNK8AstCFunc4nameB5cxx11Ev: argument 0"}
!535 = !{!250, !248, i64 64}
!536 = !{!250, !248, i64 32}
!537 = !{!250, !248, i64 24}
!538 = !{!534}
!539 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!540 = distinct !{!540, !183}
!541 = distinct !{!541, !183}
!542 = distinct !{!542, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_"}
!543 = distinct !{!543, !542, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_: argument 0"}
!544 = distinct !{!544, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!545 = distinct !{!545, !544, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!546 = distinct !{!546, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!547 = distinct !{!547, !546, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!548 = distinct !{!548, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_"}
!549 = distinct !{!549, !548, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_: argument 0"}
!550 = !{!543}
!551 = !{!545}
!552 = !{!547}
!553 = !{!549}
!554 = !{!236, !21, i64 68}
!555 = !{!236, !235, i64 56}
!556 = distinct !{!556, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!557 = distinct !{!557, !556, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!558 = distinct !{!558, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!559 = distinct !{!559, !558, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!560 = !{!557}
!561 = !{!559}
!562 = !{!559, !557}
!563 = distinct !{!563, !183}
!564 = distinct !{!564, !183}
!565 = distinct !{!565, !183}
!566 = distinct !{!566, !183}
!567 = distinct !{!567, !183}
!568 = distinct !{!568, !183}
!569 = distinct !{!569, !183}
!570 = !{!285, !285, i64 0}
!571 = !{!58, !57, i64 8}
!572 = distinct !{!572, !183}
!573 = !{!289, !289, i64 0}
!574 = distinct !{!574, !183}
!575 = distinct !{!575, !"_ZNSt8literals15string_literalsli1sB5cxx11EPKcm"}
!576 = distinct !{!576, !575, !"_ZNSt8literals15string_literalsli1sB5cxx11EPKcm: argument 0"}
!577 = distinct !{!577, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!578 = distinct !{!578, !577, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!579 = distinct !{!579, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!580 = distinct !{!580, !579, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!581 = !{!576}
!582 = !{!578}
!583 = !{!580}
!584 = !{!"_ZTSSt12_Base_bitsetILm3EE", !20, i64 0}
!585 = !{!"_ZTSSt6bitsetILm146EE", !584, i64 0}
!586 = !{!"_ZTS12VErrorBitSet", !585, i64 0}
!587 = !{!"_ZTSSo"}
!588 = !{!"_ZTSSt13_Ios_Openmode", !20, i64 0}
!589 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !197, i64 0, !588, i64 64, !29, i64 72}
!590 = !{!"_ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !587, i64 0, !589, i64 8}
!591 = !{!"_ZTSSt22__recursive_mutex_base", !20, i64 0}
!592 = !{!"_ZTSSt15recursive_mutex", !591, i64 0}
!593 = !{!"_ZTS10V3MutexImpISt15recursive_mutexE", !592, i64 0}
!594 = !{!"_ZTS14V3ErrorGuarded", !41, i64 0, !41, i64 1, !301, i64 8, !41, i64 136, !62, i64 144, !25, i64 192, !41, i64 200, !21, i64 204, !21, i64 208, !586, i64 216, !586, i64 240, !586, i64 264, !21, i64 288, !21, i64 292, !41, i64 296, !590, i64 304, !593, i64 680}
!595 = !{!594, !41, i64 0}
!596 = !{!594, !41, i64 1}
!597 = !{!594, !41, i64 136}
!598 = !{!594, !25, i64 192}
!599 = !{!594, !41, i64 200}
!600 = !{!594, !21, i64 204}
!601 = !{!594, !21, i64 208}
!602 = !{!594, !21, i64 288}
!603 = !{!594, !21, i64 292}
!604 = !{!594, !41, i64 296}
!605 = !{!"p1 _ZTS23__pthread_internal_list", !25, i64 0}
!606 = !{!"_ZTS23__pthread_internal_list", !605, i64 0, !605, i64 8}
!607 = !{!"_ZTS17__pthread_mutex_s", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !302, i64 20, !302, i64 22, !606, i64 24}
!608 = !{!607, !21, i64 16}
!609 = distinct !{!609, !"_ZNSt5dequeIPK8FileLineSaIS2_EE5beginEv"}
!610 = distinct !{!610, !609, !"_ZNSt5dequeIPK8FileLineSaIS2_EE5beginEv: argument 0"}
!611 = !{!294, !293, i64 0}
!612 = !{!293, !293, i64 0}
!613 = !{!301, !117, i64 40}
!614 = !{!610}
!615 = !{!42, !42, i64 0}
!616 = distinct !{!616, !183}
!617 = !{!296, !134, i64 8}
!618 = !{!296, !134, i64 16}
!619 = !{!297, !134, i64 16}
!620 = !{!297, !134, i64 48}
!621 = distinct !{!621, !183}
!622 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!623 = !{!155, !145, i64 72}
!624 = !{!155, !145, i64 80}
!625 = !{!133, !133, i64 0}
!626 = !{!"_ZTS9AstActive", !119, i64 0, !29, i64 152, !145, i64 184}
!627 = !{!626, !145, i64 184}
!628 = !{!"_ZTS9VEdgeType", !316, i64 0}
!629 = !{!628, !316, i64 0}
!630 = distinct !{!630, !"_ZN13V3UniqueNames3getB5cxx11EPK7AstNode"}
!631 = distinct !{!631, !630, !"_ZN13V3UniqueNames3getB5cxx11EPK7AstNode: argument 0"}
!632 = distinct !{!632, !"_ZNK6AstVar4nameB5cxx11Ev"}
!633 = distinct !{!633, !632, !"_ZNK6AstVar4nameB5cxx11Ev: argument 0"}
!634 = distinct !{!634, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!635 = distinct !{!635, !634, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!636 = distinct !{!636, !"_ZN13V3UniqueNames3getB5cxx11EPK7AstNode"}
!637 = distinct !{!637, !636, !"_ZN13V3UniqueNames3getB5cxx11EPK7AstNode: argument 0"}
!638 = !{!631}
!639 = !{!633}
!640 = !{!635}
!641 = !{!637}
!642 = distinct !{!642, !"_ZNK7AstNode8warnMoreB5cxx11Ev"}
!643 = distinct !{!643, !642, !"_ZNK7AstNode8warnMoreB5cxx11Ev: argument 0"}
!644 = !{!89, !89, i64 0}
!645 = !{!96, !41, i64 55}
!646 = !{!643}
!647 = !{!157, !41, i64 90}
!648 = distinct !{!648, !"_ZN13V3UniqueNames3getB5cxx11EPK7AstNode"}
!649 = distinct !{!649, !648, !"_ZN13V3UniqueNames3getB5cxx11EPK7AstNode: argument 0"}
!650 = !{!649}
!651 = distinct !{!651, !"_ZNSt7__cxx119to_stringEi"}
!652 = distinct !{!652, !651, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!653 = distinct !{!653, !183}
!654 = distinct !{!654, !183}
!655 = distinct !{!655, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!656 = distinct !{!656, !655, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!657 = distinct !{!657, !"_ZNK12AstNodeBlock4nameB5cxx11Ev"}
!658 = distinct !{!658, !657, !"_ZNK12AstNodeBlock4nameB5cxx11Ev: argument 0"}
!659 = distinct !{!659, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!660 = distinct !{!660, !659, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!661 = distinct !{!661, !"_ZNSt7__cxx119to_stringEm"}
!662 = distinct !{!662, !661, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!663 = distinct !{!663, !183}
!664 = distinct !{!664, !183}
!665 = distinct !{!665, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!666 = distinct !{!666, !665, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!667 = distinct !{!667, !183}
!668 = !{!652}
!669 = !{!656}
!670 = !{!658}
!671 = !{!660}
!672 = !{!662}
!673 = !{!666}
!674 = !{!"branch_weights", !"expected", i32 1898749, i32 2145584899}
!675 = !{!392, !392, i64 0}
!676 = !{!131, !131, i64 0}
!677 = !{!156, !156, i64 0}
!678 = distinct !{!678, !183}
!679 = distinct !{!679, !183}
!680 = distinct !{!680, !183}
!681 = !{!153, !44, i64 56}
!682 = !{!91, !91, i64 0}
!683 = !{ptr @_ZNK7AstNode8isDoubleEv}
!684 = !{!"_ZTSN10VDirection2enE", !20, i64 0}
end_hunk_8
