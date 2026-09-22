Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Timing?download=true
inline.NumInlined: 4598
inline.NumDeleted: 1515
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN7AstNode13predicateImplIS_Lb0EZNK20TimingControlVisitor18needDynamicTriggerEPS_EUlS2_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_b:bb.a

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

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK20TimingControlVisitor22createEventDescriptionEP10AstSenTree(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !120
  %i.e = load i32, ptr @_ZN12VNUser2InUse12s_userCntGblE, align 4, !tbaa !101
  %i.f = icmp ne i32 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %.not37 = icmp eq i64 %i.h, 0
  %.not = select i1 %i.f, i1 true, i1 %.not37
  br i1 %.not, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 34, ptr %i.b, align 1, !tbaa !32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !104
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !791
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.e unwind label %bb.s       ; 0 uses

bb.d:                                             ; preds = %bb.b
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i8 noundef signext 34)
          to label %bb.e unwind label %bb.s       ; 0 uses

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_ZN7V3EmitV14verilogForTreeEPK7AstNodeRSo(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 34, ptr %i.a, align 1, !tbaa !32
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !104
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.j, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !791
  %.not.i19 = icmp eq i64 %i.x, 0
  br i1 %.not.i19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.i unwind label %bb.s       ; 0 uses

bb.h:                                             ; preds = %bb.f
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i8 noundef signext 34)
          to label %bb.i unwind label %bb.s       ; 0 uses

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !100, !alias.scope !794
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !31, !alias.scope !794
  store i8 0, ptr %i.aa, align 8, !tbaa !32, !alias.scope !794
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !198, !noalias !794 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ad, null
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !794 ; 2 uses
  %i.ag = icmp ugt ptr %i.ad, %i.af
  %.08.i.i.i = select i1 %i.ag, ptr %i.ad, ptr %i.af ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !199, !noalias !794 ; 2 uses
  %i.aj = ptrtoint ptr %.08.i.i.i to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.ai, i64 noundef %i.al)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !30, !alias.scope !794 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.aa
  br i1 %i.ap, label %.body, label %.body.sink.split

bb.l:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.ar = load ptr, ptr %3, align 8, !tbaa !30    ; 44 uses
  %i.as = load i64, ptr %i.ab, align 8, !tbaa !31 ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  %.not6.i = icmp samesign eq i64 %i.as, 0
  br i1 %.not6.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %min.iters.check = icmp ult i64 %i.as, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check47 = icmp ult i64 %i.as, 32
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.au = and i64 %i.as, 24
  %n.vec = and i64 %i.as, -32                     ; 4 uses
  %i.av = getelementptr i8, ptr %i.ar, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue141
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue141 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %index ; 3 uses
  %i.aw = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep48 = getelementptr i8, ptr %i.aw, i64 1
  %i.ax = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep49 = getelementptr i8, ptr %i.ax, i64 2
  %i.ay = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep50 = getelementptr i8, ptr %i.ay, i64 3
  %i.az = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep51 = getelementptr i8, ptr %i.az, i64 4
  %i.ba = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep52 = getelementptr i8, ptr %i.ba, i64 5
  %i.bb = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep53 = getelementptr i8, ptr %i.bb, i64 6
  %i.bc = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep54 = getelementptr i8, ptr %i.bc, i64 7
  %i.bd = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep55 = getelementptr i8, ptr %i.bd, i64 8
  %i.be = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep56 = getelementptr i8, ptr %i.be, i64 9
  %i.bf = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep57 = getelementptr i8, ptr %i.bf, i64 10
  %i.bg = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep58 = getelementptr i8, ptr %i.bg, i64 11
  %i.bh = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep59 = getelementptr i8, ptr %i.bh, i64 12
  %i.bi = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep60 = getelementptr i8, ptr %i.bi, i64 13
  %i.bj = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep61 = getelementptr i8, ptr %i.bj, i64 14
  %i.bk = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep62 = getelementptr i8, ptr %i.bk, i64 15
  %i.bl = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep63 = getelementptr i8, ptr %i.bl, i64 16
  %i.bm = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep64 = getelementptr i8, ptr %i.bm, i64 17
  %i.bn = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep65 = getelementptr i8, ptr %i.bn, i64 18
  %i.bo = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep66 = getelementptr i8, ptr %i.bo, i64 19
  %i.bp = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep67 = getelementptr i8, ptr %i.bp, i64 20
  %i.bq = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep68 = getelementptr i8, ptr %i.bq, i64 21
  %i.br = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep69 = getelementptr i8, ptr %i.br, i64 22
  %i.bs = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep70 = getelementptr i8, ptr %i.bs, i64 23
  %i.bt = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep71 = getelementptr i8, ptr %i.bt, i64 24
  %i.bu = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep72 = getelementptr i8, ptr %i.bu, i64 25
  %i.bv = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep73 = getelementptr i8, ptr %i.bv, i64 26
  %i.bw = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep74 = getelementptr i8, ptr %i.bw, i64 27
  %i.bx = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep75 = getelementptr i8, ptr %i.bx, i64 28
  %i.by = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep76 = getelementptr i8, ptr %i.by, i64 29
  %i.bz = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep77 = getelementptr i8, ptr %i.bz, i64 30
  %i.ca = getelementptr i8, ptr %i.ar, i64 %index
  %next.gep78 = getelementptr i8, ptr %i.ca, i64 31
  %i.cb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !32
  %wide.load79 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !32
  %i.cc = icmp eq <16 x i8> %wide.load, splat (i8 10) ; 16 uses
  %i.cd = icmp eq <16 x i8> %wide.load79, splat (i8 10) ; 16 uses
  %i.ce = extractelement <16 x i1> %i.cc, i64 0
  br i1 %i.ce, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 32, ptr %next.gep, align 1, !tbaa !32
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cf = extractelement <16 x i1> %i.cc, i64 1
  br i1 %i.cf, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue
  store i8 32, ptr %next.gep48, align 1, !tbaa !32
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue
  %i.cg = extractelement <16 x i1> %i.cc, i64 2
  br i1 %i.cg, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  store i8 32, ptr %next.gep49, align 1, !tbaa !32
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %i.ch = extractelement <16 x i1> %i.cc, i64 3
  br i1 %i.ch, label %pred.store.if84, label %pred.store.continue85

pred.store.if84:                                  ; preds = %pred.store.continue83
  store i8 32, ptr %next.gep50, align 1, !tbaa !32
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.if84, %pred.store.continue83
  %i.ci = extractelement <16 x i1> %i.cc, i64 4
  br i1 %i.ci, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue85
  store i8 32, ptr %next.gep51, align 1, !tbaa !32
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue85
  %i.cj = extractelement <16 x i1> %i.cc, i64 5
  br i1 %i.cj, label %pred.store.if88, label %pred.store.continue89

pred.store.if88:                                  ; preds = %pred.store.continue87
  store i8 32, ptr %next.gep52, align 1, !tbaa !32
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.if88, %pred.store.continue87
  %i.ck = extractelement <16 x i1> %i.cc, i64 6
  br i1 %i.ck, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue89
  store i8 32, ptr %next.gep53, align 1, !tbaa !32
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue89
  %i.cl = extractelement <16 x i1> %i.cc, i64 7
  br i1 %i.cl, label %pred.store.if92, label %pred.store.continue93

pred.store.if92:                                  ; preds = %pred.store.continue91
  store i8 32, ptr %next.gep54, align 1, !tbaa !32
  br label %pred.store.continue93

pred.store.continue93:                            ; preds = %pred.store.if92, %pred.store.continue91
  %i.cm = extractelement <16 x i1> %i.cc, i64 8
  br i1 %i.cm, label %pred.store.if94, label %pred.store.continue95

pred.store.if94:                                  ; preds = %pred.store.continue93
  store i8 32, ptr %next.gep55, align 1, !tbaa !32
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.if94, %pred.store.continue93
  %i.cn = extractelement <16 x i1> %i.cc, i64 9
  br i1 %i.cn, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue95
  store i8 32, ptr %next.gep56, align 1, !tbaa !32
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue95
  %i.co = extractelement <16 x i1> %i.cc, i64 10
  br i1 %i.co, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  store i8 32, ptr %next.gep57, align 1, !tbaa !32
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %i.cp = extractelement <16 x i1> %i.cc, i64 11
  br i1 %i.cp, label %pred.store.if100, label %pred.store.continue101

pred.store.if100:                                 ; preds = %pred.store.continue99
  store i8 32, ptr %next.gep58, align 1, !tbaa !32
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.if100, %pred.store.continue99
  %i.cq = extractelement <16 x i1> %i.cc, i64 12
  br i1 %i.cq, label %pred.store.if102, label %pred.store.continue103

pred.store.if102:                                 ; preds = %pred.store.continue101
  store i8 32, ptr %next.gep59, align 1, !tbaa !32
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.if102, %pred.store.continue101
  %i.cr = extractelement <16 x i1> %i.cc, i64 13
  br i1 %i.cr, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %pred.store.continue103
  store i8 32, ptr %next.gep60, align 1, !tbaa !32
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %pred.store.continue103
  %i.cs = extractelement <16 x i1> %i.cc, i64 14
  br i1 %i.cs, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue105
  store i8 32, ptr %next.gep61, align 1, !tbaa !32
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue105
  %i.ct = extractelement <16 x i1> %i.cc, i64 15
  br i1 %i.ct, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  store i8 32, ptr %next.gep62, align 1, !tbaa !32
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %i.cu = extractelement <16 x i1> %i.cd, i64 0
  br i1 %i.cu, label %pred.store.if110, label %pred.store.continue111

end_hunk_0
