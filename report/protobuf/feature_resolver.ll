inline.NumInlined: 1808
inline.NumDeleted: 750
begin_hunk_0_@_ZN6google8protobuf15FeatureResolver6CreateENS0_7EditionERKNS0_18FeatureSetDefaultsE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !152
  store i64 59, ptr %4, align 8, !noalias !152
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.13, ptr %i.bn, align 8, !noalias !152
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.bc, ptr %i.bo, align 8, !noalias !152
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.bb, ptr %i.bp, align 8, !noalias !152
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 37, ptr %i.bq, align 8, !noalias !152
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @.str.14, ptr %i.br, align 8, !noalias !152
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.bm, ptr %i.bs, align 8, !noalias !152
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.bl, ptr %i.bt, align 8, !noalias !152
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 1, ptr %i.bu, align 8, !noalias !152
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr @.str.15, ptr %i.bv, align 8, !noalias !152
  invoke void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull %4, i64 5)
          to label %bb.t unwind label %bb.x, !noalias !149

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !152
  %i.bw = load ptr, ptr %9, align 8, !tbaa !35, !noalias !149
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !38, !noalias !149
  invoke void @_ZN4absl12lts_2025051223FailedPreconditionErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %15, i64 %i.by, ptr %i.bw)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.bz = load ptr, ptr %9, align 8, !tbaa !35, !noalias !149 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.u
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !39, !noalias !149
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ce = load ptr, ptr %11, align 8, !tbaa !35, !noalias !149 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.bd
  br i1 %i.cf, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cg = load i64, ptr %i.bd, align 8, !tbaa !39, !noalias !149
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #24
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit.i

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22, !noalias !149
  %i.ci = load ptr, ptr %10, align 8, !tbaa !35, !noalias !149 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.at
  br i1 %i.cj, label %_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcNS0_7EditionES4_S5_S4_EEEN4absl12lts_202505126StatusEDpT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17.i: ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit.i
  %i.ck = load i64, ptr %i.at, align 8, !tbaa !39, !noalias !149
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #24
  br label %_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcNS0_7EditionES4_S5_S4_EEEN4absl12lts_202505126StatusEDpT_.exit

bb.v:                                             ; preds = %.noexc.i, %bb.q
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.w:                                             ; preds = %.noexc13.i, %bb.r
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i

bb.x:                                             ; preds = %bb.s
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i

bb.y:                                             ; preds = %bb.t
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %9, align 8, !tbaa !35, !noalias !149 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i: ; preds = %bb.y
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !39, !noalias !149
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i, %bb.x, %bb.w
  %.pn.pn.i = phi { ptr, i32 } [ %i.cn, %bb.w ], [ %i.co, %bb.x ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i ], [ %i.cp, %bb.y ]
  %i.cv = load ptr, ptr %11, align 8, !tbaa !35, !noalias !149 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.bd
  br i1 %i.cw, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit25.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i
  %i.cx = load i64, ptr %i.bd, align 8, !tbaa !39, !noalias !149
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #24
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit25.i

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit25.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22, !noalias !149
  br label %bb.z

bb.z:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit25.i, %bb.v
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.cm, %bb.v ], [ %.pn.pn.i, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit25.i ]
  %i.cz = load ptr, ptr %10, align 8, !tbaa !35, !noalias !149 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.at
  br i1 %i.da, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit28.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26.i: ; preds = %bb.z
  %i.db = load i64, ptr %i.at, align 8, !tbaa !39, !noalias !149
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #24
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit28.i

common.resume:                                    ; preds = %.body, %.body71, %bb.cd, %bb.al, %.body79, %.body75, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit28.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit28.i ], [ %i.f, %.body ], [ %i.q, %.body71 ], [ %.pn61.pn, %bb.cd ], [ %i.ao, %.body75 ], [ %i.df, %.body79 ], [ %.pn55, %bb.al ]
  resume { ptr, i32 } %common.resume.op

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit28.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !149
  br label %common.resume

_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcNS0_7EditionES4_S5_S4_EEEN4absl12lts_202505126StatusEDpT_.exit: ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !149
  %i.dd = load i64, ptr %15, align 8, !tbaa !7    ; 2 uses
  store i64 %i.dd, ptr %0, align 8, !tbaa !7
  store i64 55, ptr %15, align 8, !tbaa !7
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.aa, label %_ZN4absl12lts_202505126StatusD2Ev.exit82, !prof !10

bb.aa:                                            ; preds = %_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcNS0_7EditionES4_S5_S4_EEEN4absl12lts_202505126StatusEDpT_.exit
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit81 unwind label %.body79

.body79:                                          ; preds = %bb.aa
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(80) %0) #22
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %common.resume

_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit81: ; preds = %bb.aa
  %.pre = load i64, ptr %15, align 8, !tbaa !7    ; 2 uses
  %i.dg = trunc i64 %.pre to i1
  br i1 %i.dg, label %_ZN4absl12lts_202505126StatusD2Ev.exit82, label %bb.ab

bb.ab:                                            ; preds = %_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit81
  %i.dh = inttoptr i64 %.pre to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.dh)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit82 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #23
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit82:         ; preds = %_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcNS0_7EditionES4_S5_S4_EEEN4absl12lts_202505126StatusEDpT_.exit, %_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOS9_.exit81, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %.thread

bb.ad:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !39 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dl, null
  %i.dm = select i1 %.not.i.i, ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.dl
  call void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.dm)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !39 ; 2 uses
  %.not.i.i83 = icmp eq ptr %i.do, null
  %i.dp = select i1 %.not.i.i83, ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.do
  invoke void @_ZN6google8protobuf10FeatureSet9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %i.dp)
          to label %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit unwind label %bb.ag

_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit: ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_122ValidateMergedFeaturesERKNS0_10FeatureSetE(ptr dead_on_unwind noalias writable align 8 %17, ptr noundef nonnull align 8 dereferenceable(72) %16)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit
  %i.dq = load i64, ptr %17, align 8, !tbaa !7
  %i.dr = icmp eq i64 %i.dq, 1
  br i1 %i.dr, label %bb.aj, label %bb.af, !prof !11

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOSA_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %.critedge68.critedge unwind label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ah:                                            ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ai:                                            ; preds = %bb.af
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #22
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.dv = load i32, ptr %i.aj, align 8, !tbaa !39
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.088.0108, i64 8 ; 2 uses
  %.not97 = icmp eq ptr %i.dw, %i.ah
  br i1 %.not97, label %.critedge68.a, label %.lr.ph

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.du, %bb.ai ], [ %i.dt, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ag
  %.pn55 = phi { ptr, i32 } [ %i.ds, %bb.ag ], [ %.pn, %bb.ak ]
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %common.resume

.critedge68.critedge:                             ; preds = %bb.af
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.thread

.critedge68.a:                                    ; preds = %bb.aj, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @_ZN6google8protobuf8internal28GetEditionFeatureSetDefaultsENS0_7EditionERKNS0_18FeatureSetDefaultsE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.49") align 8 %18, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.dx = load i64, ptr %18, align 8, !tbaa !7    ; 4 uses
  store i64 %i.dx, ptr %19, align 8, !tbaa !7
  %i.dy = trunc i64 %i.dx to i1
  br i1 %i.dy, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.critedge68.a
  %i.dz = inttoptr i64 %i.dx to ptr
  %i.ea = atomicrmw add ptr %i.dz, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %.critedge68.a, %bb.am
  %i.eb = icmp eq i64 %i.dx, 1
  br i1 %i.eb, label %bb.ar, label %bb.ao, !prof !11

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOSA_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.cd

bb.aq:                                            ; preds = %bb.ao
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.bz

bb.ar:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ed = load i64, ptr %18, align 8, !tbaa !7    ; 4 uses
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i64 %i.ed, ptr %3, align 8, !tbaa !7
  %i.ef = trunc i64 %i.ed to i1
  br i1 %i.ef, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eg = inttoptr i64 %i.ed to ptr
  %i.eh = atomicrmw add ptr %i.eg, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i:     ; preds = %bb.at, %bb.as
  invoke void @_ZN4absl12lts_2025051217internal_statusor22ThrowBadStatusOrAccessENS0_6StatusE(ptr noundef nonnull %3) #27
          to label %bb.au unwind label %.body86

bb.au:                                            ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i
  unreachable

.body86:                                          ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.cd

bb.av:                                            ; preds = %bb.ar
  %i.ej = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(72) %21, ptr noundef null)
          to label %bb.aw unwind label %bb.be

bb.aw:                                            ; preds = %bb.av
  %i.ek = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !69 ; 3 uses
  %i.em = trunc i64 %i.el to i1
  br i1 %i.em, label %bb.ax, label %bb.ay, !prof !10

bb.ax:                                            ; preds = %bb.aw
  %i.en = add nsw i64 %i.el, -1
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.eq = inttoptr i64 %i.el to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i = phi ptr [ %i.ep, %bb.ax ], [ %i.eq, %bb.ay ]
  %i.er = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.es = load i64, ptr %i.er, align 8, !tbaa !69 ; 3 uses
  %i.et = trunc i64 %i.es to i1
  br i1 %i.et, label %bb.az, label %bb.ba, !prof !10

bb.az:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i
  %i.eu = add nsw i64 %i.es, -1
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i

bb.ba:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i
  %i.ex = inttoptr i64 %i.es to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i: ; preds = %bb.ba, %bb.az
  %.0.i.i7.i.i.i = phi ptr [ %i.ew, %bb.az ], [ %i.ex, %bb.ba ]
  %i.ey = icmp eq ptr %.0.i.i.i.i.i, %.0.i.i7.i.i.i
  br i1 %i.ey, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i
  invoke void @_ZN6google8protobuf10FeatureSet12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(72) %21, ptr noundef nonnull align 8 dereferenceable(72) %i.ej)
          to label %_ZN6google8protobuf10FeatureSetC2EOS1_.exit unwind label %bb.bd

bb.bc:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i
  invoke void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %21, ptr noundef nonnull align 8 dereferenceable(72) %i.ej)
          to label %_ZN6google8protobuf10FeatureSetC2EOS1_.exit unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #23
  unreachable

bb.be:                                            ; preds = %bb.av
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #23
  unreachable

_ZN6google8protobuf10FeatureSetC2EOS1_.exit:      ; preds = %bb.bb, %bb.bc
  invoke void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(72) %20, ptr noundef null)
          to label %bb.bf unwind label %bb.bn

bb.bf:                                            ; preds = %_ZN6google8protobuf10FeatureSetC2EOS1_.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !69 ; 3 uses
  %i.ff = trunc i64 %i.fe to i1
  br i1 %i.ff, label %bb.bg, label %bb.bh, !prof !10

bb.bg:                                            ; preds = %bb.bf
  %i.fg = add nsw i64 %i.fe, -1
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.fj = inttoptr i64 %i.fe to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i.i = phi ptr [ %i.fi, %bb.bg ], [ %i.fj, %bb.bh ]
  %i.fk = load i64, ptr %i.ek, align 8, !tbaa !69 ; 3 uses
  %i.fl = trunc i64 %i.fk to i1
  br i1 %i.fl, label %bb.bi, label %bb.bj, !prof !10

bb.bi:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i
  %i.fm = add nsw i64 %i.fk, -1
  %i.fn = inttoptr i64 %i.fm to ptr
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i

bb.bj:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i
  %i.fp = inttoptr i64 %i.fk to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i: ; preds = %bb.bj, %bb.bi
  %.0.i.i7.i.i.i.i = phi ptr [ %i.fo, %bb.bi ], [ %i.fp, %bb.bj ]
  %i.fq = icmp eq ptr %.0.i.i.i.i.i.i, %.0.i.i7.i.i.i.i
  br i1 %i.fq, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i
  invoke void @_ZN6google8protobuf10FeatureSet12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(72) %20, ptr noundef nonnull align 8 dereferenceable(72) %21)
          to label %_ZN6google8protobuf15FeatureResolverC2ENS0_10FeatureSetE.exit unwind label %bb.bm

bb.bl:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i
  invoke void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %20, ptr noundef nonnull align 8 dereferenceable(72) %21)
          to label %_ZN6google8protobuf15FeatureResolverC2ENS0_10FeatureSetE.exit unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #23
  unreachable

bb.bn:                                            ; preds = %_ZN6google8protobuf10FeatureSetC2EOS1_.exit
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  call void @__clang_call_terminate(ptr %i.fu) #23
  unreachable

_ZN6google8protobuf15FeatureResolverC2ENS0_10FeatureSetE.exit: ; preds = %bb.bk, %bb.bl
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  invoke void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(72) %i.fv, ptr noundef null)
          to label %bb.bo unwind label %bb.bx

bb.bo:                                            ; preds = %_ZN6google8protobuf15FeatureResolverC2ENS0_10FeatureSetE.exit
  %i.fw = icmp eq ptr %i.fv, %20
  br i1 %i.fw, label %bb.by, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !69 ; 3 uses
  %i.fz = trunc i64 %i.fy to i1
  br i1 %i.fz, label %bb.bq, label %bb.br, !prof !10

bb.bq:                                            ; preds = %bb.bp
  %i.ga = add nsw i64 %i.fy, -1
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i.i.i

bb.br:                                            ; preds = %bb.bp
  %i.gd = inttoptr i64 %i.fy to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i.i.i: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gc, %bb.bq ], [ %i.gd, %bb.br ]
  %i.ge = load i64, ptr %i.fd, align 8, !tbaa !69 ; 3 uses
  %i.gf = trunc i64 %i.ge to i1
  br i1 %i.gf, label %bb.bs, label %bb.bt, !prof !10

bb.bs:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i.i.i
  %i.gg = add nsw i64 %i.ge, -1
  %i.gh = inttoptr i64 %i.gg to ptr
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i.i.i

bb.bt:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i.i.i
  %i.gj = inttoptr i64 %i.ge to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i.i.i: ; preds = %bb.bt, %bb.bs
  %.0.i.i7.i.i.i.i.i.i.i = phi ptr [ %i.gi, %bb.bs ], [ %i.gj, %bb.bt ]
  %i.gk = icmp eq ptr %.0.i.i.i.i.i.i.i.i.i, %.0.i.i7.i.i.i.i.i.i.i
  br i1 %i.gk, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i.i.i
  invoke void @_ZN6google8protobuf10FeatureSet12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.fv, ptr noundef nonnull align 8 dereferenceable(72) %20)
          to label %bb.by unwind label %bb.bw

bb.bv:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i.i.i
  invoke void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.fv, ptr noundef nonnull align 8 dereferenceable(72) %20)
          to label %bb.by unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  call void @__clang_call_terminate(ptr %i.gm) #23
  unreachable

bb.bx:                                            ; preds = %_ZN6google8protobuf15FeatureResolverC2ENS0_10FeatureSetE.exit
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #23
  unreachable

bb.by:                                            ; preds = %bb.bv, %bb.bu, %bb.bo
  store i64 1, ptr %0, align 8, !tbaa !7
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %20) #22
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.bz

bb.bz:                                            ; preds = %bb.aq, %bb.by
  %i.gp = load i64, ptr %18, align 8, !tbaa !7    ; 3 uses
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.ca

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.bz
  %i.gr = getelementptr inbounds nuw i8, ptr %18, i64 8
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.gr) #22
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit

bb.ca:                                            ; preds = %bb.bz
  %i.gs = trunc i64 %i.gp to i1
  br i1 %i.gs, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gt = inttoptr i64 %i.gp to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.gt)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  call void @__clang_call_terminate(ptr %i.gv) #23
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %.thread

bb.cd:                                            ; preds = %.body86, %bb.ap
  %.pn61.pn = phi { ptr, i32 } [ %i.ei, %.body86 ], [ %i.ec, %bb.ap ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %common.resume

.thread:                                          ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit82, %_ZN4absl12lts_202505126StatusD2Ev.exit78, %.critedge68.critedge, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf10FeatureSetEED2Ev.exit, %_ZN4absl12lts_202505126StatusD2Ev.exit74, %_ZN4absl12lts_202505126StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf12_GLOBAL__N_122ValidateMergedFeaturesERKNS0_10FeatureSetE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %i.c = add i32 %i.b, -4
  %or.cond = icmp ult i32 %i.c, -3
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.54)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !39
  %i.f = add i32 %i.e, -3
  %or.cond16 = icmp ult i32 %i.f, -2
  br i1 %or.cond16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.55)
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !39
  %i.i = add i32 %i.h, -3
  %or.cond17 = icmp ult i32 %i.i, -2
  br i1 %or.cond17, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.56)
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.k = load i32, ptr %i.j, align 4, !tbaa !39   ; 2 uses
  %i.l = lshr i32 13, %i.k
  %i.m = trunc i32 %i.l to i1
  %i.n = add i32 %i.k, -1
  %i.o = icmp ult i32 %i.n, 3
  %or.cond18.not = select i1 %i.o, i1 %i.m, i1 false
  br i1 %or.cond18.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.57)
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load i32, ptr %i.p, align 8, !tbaa !39
  %i.r = add i32 %i.q, -3
  %or.cond19 = icmp ult i32 %i.r, -2
  br i1 %or.cond19, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.58)
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.t = load i32, ptr %i.s, align 4, !tbaa !39
  %i.u = add i32 %i.t, -3
  %or.cond20 = icmp ult i32 %i.u, -2
  br i1 %or.cond20, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.59)
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !39
  %i.x = add i32 %i.w, -3
  %or.cond21 = icmp ult i32 %i.x, -2
  br i1 %or.cond21, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.60)
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.z = load i32, ptr %i.y, align 4, !tbaa !39
  %i.aa = add i32 %i.z, -5
  %or.cond22 = icmp ult i32 %i.aa, -4
  br i1 %or.cond22, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcEEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.61)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store i64 1, ptr %0, align 8, !tbaa !7, !alias.scope !155
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf15FeatureResolverEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOSA_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !7      ; 4 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !7
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  %.pr.i = load i64, ptr %0, align 8, !tbaa !7
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i:     ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %i.a, %bb.a ], [ %.pr.i, %bb.b ]
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf15FeatureResolverEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS8_OT_EE5valueEiE4typeELi0EEESC_.exit, !prof !10

bb.c:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf15FeatureResolverEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS8_OT_EE5valueEiE4typeELi0EEESC_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(80) %0) #22
  resume { ptr, i32 } %i.g

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf15FeatureResolverEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS8_OT_EE5valueEiE4typeELi0EEESC_.exit: ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal28GetEditionFeatureSetDefaultsENS0_7EditionERKNS0_18FeatureSetDefaultsE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::StatusOr.49") align 8 %0, i32 noundef %1, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(48) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 10 uses
  %9 = alloca %"class.google::protobuf::FeatureSetDefaults_FeatureSetEditionDefault", align 8 ; 8 uses
  %10 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %11 = alloca %"class.google::protobuf::FeatureSet", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN6google8protobuf43FeatureSetDefaults_FeatureSetEditionDefaultC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef null)
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 %1, ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3
  %i.d = or i32 %i.c, 4
  store i32 %i.d, ptr %i.b, align 8, !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = and i64 %i.g, 1
  %i.i = icmp eq i64 %i.h, 0
  %i.j = add i64 %i.g, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = select i1 %i.i, ptr %i.e, ptr %i.l       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !97   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.i, label %"_ZN4absl12lts_2025051213c_upper_boundIKN6google8protobuf16RepeatedPtrFieldINS3_43FeatureSetDefaults_FeatureSetEditionDefaultEEES5_RZNS3_8internal28GetEditionFeatureSetDefaultsENS3_7EditionERKNS3_18FeatureSetDefaultsEE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESG_RKT0_OT1_.exit.thread"

_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.i: ; preds = %bb.a
  %i.q = zext nneg i32 %i.o to i64
  br label %_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.i
  %.05.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.q, %_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.i ] ; 2 uses
  %.sroa.02.04.i.i.i = phi ptr [ %.sroa.02.1.i.i.i, %_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.m, %_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.i ] ; 2 uses
  %i.r = lshr i64 %.05.i.i.i, 1                   ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.02.04.i.i.i, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !98
  %i.u = getelementptr i8, ptr %i.t, i64 40
  %.val2.i.i.i.i = load i32, ptr %i.u, align 8, !tbaa !39
  %i.v = icmp slt i32 %1, %.val2.i.i.i.i          ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = xor i64 %i.r, -1
  %i.y = add nsw i64 %.05.i.i.i, %i.x
  %.sroa.02.1.i.i.i = select i1 %i.v, ptr %.sroa.02.04.i.i.i, ptr %i.w ; 3 uses
  %.1.i.i.i = select i1 %i.v, i64 %i.r, i64 %i.y  ; 2 uses
  %i.z = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.z, label %_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %"_ZN4absl12lts_2025051213c_upper_boundIKN6google8protobuf16RepeatedPtrFieldINS3_43FeatureSetDefaults_FeatureSetEditionDefaultEEES5_RZNS3_8internal28GetEditionFeatureSetDefaultsENS3_7EditionERKNS3_18FeatureSetDefaultsEE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESG_RKT0_OT1_.exit", !llvm.loop !158

"_ZN4absl12lts_2025051213c_upper_boundIKN6google8protobuf16RepeatedPtrFieldINS3_43FeatureSetDefaults_FeatureSetEditionDefaultEEES5_RZNS3_8internal28GetEditionFeatureSetDefaultsENS3_7EditionERKNS3_18FeatureSetDefaultsEE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESG_RKT0_OT1_.exit": ; preds = %_ZSt9__advanceIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_43FeatureSetDefaults_FeatureSetEditionDefaultEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.aa = icmp eq ptr %.sroa.02.1.i.i.i, %i.m
  br i1 %i.aa, label %"_ZN4absl12lts_2025051213c_upper_boundIKN6google8protobuf16RepeatedPtrFieldINS3_43FeatureSetDefaults_FeatureSetEditionDefaultEEES5_RZNS3_8internal28GetEditionFeatureSetDefaultsENS3_7EditionERKNS3_18FeatureSetDefaultsEE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESG_RKT0_OT1_.exit.thread", label %bb.j

"_ZN4absl12lts_2025051213c_upper_boundIKN6google8protobuf16RepeatedPtrFieldINS3_43FeatureSetDefaults_FeatureSetEditionDefaultEEES5_RZNS3_8internal28GetEditionFeatureSetDefaultsENS3_7EditionERKNS3_18FeatureSetDefaultsEE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESG_RKT0_OT1_.exit.thread": ; preds = %bb.a, %"_ZN4absl12lts_2025051213c_upper_boundIKN6google8protobuf16RepeatedPtrFieldINS3_43FeatureSetDefaults_FeatureSetEditionDefaultEEES5_RZNS3_8internal28GetEditionFeatureSetDefaultsENS3_7EditionERKNS3_18FeatureSetDefaultsEE3$_0EEDTcl5beginclsr3stdE7declvalIRT_EEEESG_RKT0_OT1_.exit"
end_hunk_0
