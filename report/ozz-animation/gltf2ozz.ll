Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/gltf2ozz?download=true
inline.NumInlined: 15962
inline.NumDeleted: 4531
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN8tinygltfL16ParseJsonAsValueEPNS_5ValueERKN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEE:bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 112
  store ptr null, ptr %i.bw, align 8, !tbaa !352
  br label %_ZN8tinygltf5ValueC2EOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_St4lessIS7_ESaISt4pairIKS7_S0_EEE.exit

_ZN8tinygltf5ValueC2EOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_St4lessIS7_ESaISt4pairIKS7_S0_EEE.exit: ; preds = %bb.s, %bb.t
  %.sink45 = phi ptr [ %i.bp, %bb.t ], [ %i.bt, %bb.s ]
  %.sink44 = phi ptr [ %i.bp, %bb.t ], [ %i.bu, %bb.s ]
  %.sink = phi i64 [ 0, %bb.t ], [ %i.at, %bb.s ]
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.t ], [ %i.br, %bb.s ]
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 120
  store ptr %.sink45, ptr %i.bx, align 8, !tbaa !128
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 128
  store ptr %.sink44, ptr %i.by, align 8, !tbaa !387
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 136
  store i64 %.sink, ptr %i.bz, align 8, !tbaa !127
  store i32 %.sink.i.i.i.i.i, ptr %i.bp, align 8, !tbaa !386
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 144
  store i8 0, ptr %i.ca, align 8, !tbaa !397
  %i.cb = call noundef nonnull align 8 dereferenceable(145) ptr @_ZN8tinygltf5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(145) %2, ptr noundef nonnull align 8 dereferenceable(145) %7) #41 ; 0 uses
  call void @_ZN8tinygltf5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %bb.u

bb.u:                                             ; preds = %_ZN8tinygltf5ValueC2EOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_St4lessIS7_ESaISt4pairIKS7_S0_EEE.exit, %bb.g
  %i.cc = load ptr, ptr %i.n, align 8, !tbaa !352
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8tinygltf5ValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.cc)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8tinygltf5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.v, !inline_history !6

bb.v:                                             ; preds = %bb.u
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #40, !inline_history !6
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8tinygltf5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.bi

_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !75 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !580 ; 2 uses
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !587 ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 4                 ; 3 uses
  %i.co = icmp ugt i64 %i.cn, 60680079189834051
  br i1 %i.co, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.105) #44
          to label %.noexc unwind label %bb.aj

.noexc:                                           ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %.not67 = icmp eq ptr %i.ci, %i.cj
  br i1 %.not67, label %_ZNSt6vectorIN8tinygltf5ValueESaIS1_EE7reserveEm.exit.thread, label %_ZNSt12_Vector_baseIN8tinygltf5ValueESaIS1_EE11_M_allocateEm.exit.i

_ZNSt6vectorIN8tinygltf5ValueESaIS1_EE7reserveEm.exit.thread: ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  store ptr %1, ptr %9, align 8, !tbaa !443, !alias.scope !3571
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store i64 0, ptr %i.cq, align 8
  store i64 -9223372036854775808, ptr %i.cr, align 8, !tbaa !444, !alias.scope !3571
  br label %bb.aa

_ZNSt12_Vector_baseIN8tinygltf5ValueESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ct = mul nuw nsw i64 %i.cn, 152
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #45
          to label %.noexc28 unwind label %bb.aj  ; 4 uses

.noexc28:                                         ; preds = %_ZNSt12_Vector_baseIN8tinygltf5ValueESaIS1_EE11_M_allocateEm.exit.i
  %i.cv = call noundef ptr @_ZNSt6vectorIN8tinygltf5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef null, ptr noundef null, ptr noundef nonnull %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %8) #41 ; 0 uses
  %i.cw = load ptr, ptr %8, align 8, !tbaa !393   ; 3 uses
  %.not.i8.i = icmp eq ptr %i.cw, null
  br i1 %.not.i8.i, label %_ZNSt6vectorIN8tinygltf5ValueESaIS1_EE7reserveEm.exit, label %bb.y

bb.y:                                             ; preds = %.noexc28
  %i.cx = load ptr, ptr %i.cp, align 8, !tbaa !596
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.da) #42
  br label %_ZNSt6vectorIN8tinygltf5ValueESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN8tinygltf5ValueESaIS1_EE7reserveEm.exit: ; preds = %.noexc28, %bb.y
  store ptr %i.cu, ptr %8, align 8, !tbaa !393
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !392
  %i.db = getelementptr inbounds nuw [152 x i8], ptr %i.cu, i64 %i.cn
  store ptr %i.db, ptr %i.cp, align 8, !tbaa !596
  %.pre46 = load i8, ptr %1, align 8, !tbaa !436, !noalias !3572 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !3573)
  call void @llvm.experimental.noalias.scope.decl(metadata !3574)
  store ptr %1, ptr %9, align 8, !tbaa !443, !alias.scope !3572
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false), !alias.scope !3572
  store i64 -9223372036854775808, ptr %i.dd, align 8, !tbaa !444, !alias.scope !3572
  switch i8 %.pre46, label %bb.ac [
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 0, label %bb.ab
  ]

bb.z:                                             ; preds = %_ZNSt6vectorIN8tinygltf5ValueESaIS1_EE7reserveEm.exit
  %i.de = load ptr, ptr %i.cf, align 8, !tbaa !75, !noalias !3572
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !128, !noalias !3572
  store ptr %i.dg, ptr %i.dc, align 8, !tbaa !353, !alias.scope !3572
  br label %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit29

bb.aa:                                            ; preds = %_ZNSt6vectorIN8tinygltf5ValueESaIS1_EE7reserveEm.exit.thread, %_ZNSt6vectorIN8tinygltf5ValueESaIS1_EE7reserveEm.exit
  %i.dh = phi ptr [ %i.cr, %_ZNSt6vectorIN8tinygltf5ValueESaIS1_EE7reserveEm.exit.thread ], [ %i.dd, %_ZNSt6vectorIN8tinygltf5ValueESaIS1_EE7reserveEm.exit ]
  %i.di = phi ptr [ %i.cq, %_ZNSt6vectorIN8tinygltf5ValueESaIS1_EE7reserveEm.exit.thread ], [ %i.dc, %_ZNSt6vectorIN8tinygltf5ValueESaIS1_EE7reserveEm.exit ]
  %i.dj = load ptr, ptr %i.cf, align 8, !tbaa !75, !noalias !3572
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !445, !noalias !3572
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !445, !alias.scope !3572
  br label %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit29

bb.ab:                                            ; preds = %_ZNSt6vectorIN8tinygltf5ValueESaIS1_EE7reserveEm.exit
  store i64 1, ptr %i.dd, align 8, !tbaa !444, !alias.scope !3572
  br label %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit29

bb.ac:                                            ; preds = %_ZNSt6vectorIN8tinygltf5ValueESaIS1_EE7reserveEm.exit
  store i64 0, ptr %i.dd, align 8, !tbaa !444, !alias.scope !3572
  br label %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit29

_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit29: ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac
  %i.dm = phi ptr [ %i.dd, %bb.z ], [ %i.dh, %bb.aa ], [ %i.dd, %bb.ab ], [ %i.dd, %bb.ac ] ; 2 uses
  %i.dn = phi ptr [ %i.dc, %bb.z ], [ %i.di, %bb.aa ], [ %i.dc, %bb.ab ], [ %i.dc, %bb.ac ] ; 2 uses
  %i.do = phi i8 [ 1, %bb.z ], [ 2, %bb.aa ], [ 0, %bb.ab ], [ %.pre46, %bb.ac ]
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 104 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 112
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 120
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 136
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNR8nlohmann16json_abi_v3_11_36detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEi.exit37, %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit29
  %i.ed = phi i8 [ %.pre47, %_ZNR8nlohmann16json_abi_v3_11_36detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEi.exit37 ], [ %i.do, %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit29 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !3575)
  call void @llvm.experimental.noalias.scope.decl(metadata !3576)
  store ptr %1, ptr %10, align 8, !tbaa !443, !alias.scope !3577
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i8 0, i64 16, i1 false), !alias.scope !3577
  store i64 -9223372036854775808, ptr %i.dq, align 8, !tbaa !444, !alias.scope !3577
  switch i8 %i.ed, label %bb.ag [
    i8 1, label %bb.ae
    i8 2, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.ee = load ptr, ptr %i.cf, align 8, !tbaa !75, !noalias !3577
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.ef, ptr %i.dp, align 8, !tbaa !353, !alias.scope !3577
  br label %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit30

bb.af:                                            ; preds = %bb.ad
  %i.eg = load ptr, ptr %i.cf, align 8, !tbaa !75, !noalias !3577
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !445, !noalias !3577
  store ptr %i.ei, ptr %i.dr, align 8, !tbaa !445, !alias.scope !3577
  br label %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit30

bb.ag:                                            ; preds = %bb.ad
  store i64 1, ptr %i.dq, align 8, !tbaa !444, !alias.scope !3577
  br label %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit30

_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit30: ; preds = %bb.ae, %bb.af, %bb.ag
  %i.ej = invoke noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_11_36detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br i1 %i.ej, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !392 ; 2 uses
  %i.em = load ptr, ptr %8, align 8, !tbaa !393   ; 3 uses
  %.not = icmp eq ptr %i.el, %i.em
  br i1 %.not, label %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.i, label %bb.at

bb.aj:                                            ; preds = %_ZNSt12_Vector_baseIN8tinygltf5ValueESaIS1_EE11_M_allocateEm.exit.i, %bb.w
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ak:                                            ; preds = %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit30
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %bb.as

bb.al:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(145) %11, i8 0, i64 16, i1 false)
  store ptr %i.dt, ptr %i.ds, align 8, !tbaa !396
  store i64 0, ptr %i.du, align 8, !tbaa !129
  store i8 0, ptr %i.dt, align 8, !tbaa !75
  store i32 0, ptr %i.dw, align 8, !tbaa !386
  store ptr null, ptr %i.dx, align 8, !tbaa !352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dv, i8 0, i64 48, i1 false)
  store ptr %i.dw, ptr %i.dy, align 8, !tbaa !128
  store ptr %i.dw, ptr %i.dz, align 8, !tbaa !387
  store i64 0, ptr %i.ea, align 8, !tbaa !127
  store i8 0, ptr %i.eb, align 8, !tbaa !397
  %i.ep = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_11_36detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNK8nlohmann16json_abi_v3_11_36detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE5valueEv.exit34 unwind label %bb.ao

_ZNK8nlohmann16json_abi_v3_11_36detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE5valueEv.exit34: ; preds = %bb.al
  %i.eq = invoke fastcc noundef zeroext i1 @_ZN8tinygltfL16ParseJsonAsValueEPNS_5ValueERKN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEE(ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(16) %i.ep)
          to label %bb.am unwind label %bb.ao     ; 0 uses

bb.am:                                            ; preds = %_ZNK8nlohmann16json_abi_v3_11_36detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE5valueEv.exit34
  %i.er = load i32, ptr %11, align 8, !tbaa !383
  %i.es = and i32 %i.er, 255
  %.not19 = icmp eq i32 %i.es, 0
  br i1 %.not19, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.et = invoke noundef nonnull align 8 dereferenceable(145) ptr @_ZNSt6vectorIN8tinygltf5ValueESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(145) %11)
          to label %bb.ap unwind label %bb.ao     ; 0 uses

bb.ao:                                            ; preds = %bb.al, %bb.an, %_ZNK8nlohmann16json_abi_v3_11_36detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE5valueEv.exit34
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8tinygltf5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %11) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %bb.as

bb.ap:                                            ; preds = %bb.an, %bb.am
  call void @_ZN8tinygltf5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %11) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  %i.ev = load ptr, ptr %9, align 8, !tbaa !443, !noalias !3578
  %i.ew = load i8, ptr %i.ev, align 8, !tbaa !436, !noalias !3578
  switch i8 %i.ew, label %bb.ar [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i.i35
    i8 2, label %bb.aq
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i.i35: ; preds = %bb.ap
  %.promoted11.i.i.i36 = load ptr, ptr %i.dn, align 8, !tbaa !447, !noalias !3578
  %i.ex = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i.i36) #43, !noalias !3578
  store ptr %i.ex, ptr %i.dn, align 8, !tbaa !447, !noalias !3578
  br label %_ZNR8nlohmann16json_abi_v3_11_36detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEi.exit37

bb.aq:                                            ; preds = %bb.ap
  %i.ey = load ptr, ptr %i.ec, align 8, !tbaa !474, !noalias !3578
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store ptr %i.ez, ptr %i.ec, align 8, !tbaa !474, !noalias !3578
  br label %_ZNR8nlohmann16json_abi_v3_11_36detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEi.exit37

bb.ar:                                            ; preds = %bb.ap
  %i.fa = load i64, ptr %i.dm, align 8, !tbaa !444, !noalias !3578
  %i.fb = add nsw i64 %i.fa, 1
  store i64 %i.fb, ptr %i.dm, align 8, !tbaa !444, !noalias !3578
  br label %_ZNR8nlohmann16json_abi_v3_11_36detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEi.exit37

_ZNR8nlohmann16json_abi_v3_11_36detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEi.exit37: ; preds = %bb.ar, %bb.aq, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i.i35
  %.pre47 = load i8, ptr %1, align 8, !tbaa !436, !noalias !3577
  br label %bb.ad, !llvm.loop !3559

bb.as:                                            ; preds = %bb.ao, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.eo, %bb.ak ], [ %i.eu, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.av

bb.at:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  store i32 5, ptr %12, align 8, !tbaa !383
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 0, ptr %i.fc, align 4, !tbaa !582
  %i.fd = getelementptr inbounds nuw i8, ptr %12, i64 8
  store double 0.000000e+00, ptr %i.fd, align 8, !tbaa !583
  %i.fe = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store ptr %i.ff, ptr %i.fe, align 8, !tbaa !396
  %i.fg = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 0, ptr %i.fg, align 8, !tbaa !129
  store i8 0, ptr %i.ff, align 8, !tbaa !75
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fh, i8 0, i64 24, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %12, i64 72
  store ptr %i.em, ptr %i.fi, align 8, !tbaa !393
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 80
  store ptr %i.el, ptr %i.fj, align 8, !tbaa !392
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.fl = load ptr, ptr %i.cp, align 8, !tbaa !596
  store ptr %i.fl, ptr %i.fk, align 8, !tbaa !596
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %12, i64 104 ; 3 uses
  store i32 0, ptr %i.fm, align 8, !tbaa !386
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 112
  store ptr null, ptr %i.fn, align 8, !tbaa !352
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 120
  store ptr %i.fm, ptr %i.fo, align 8, !tbaa !128
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 128
  store ptr %i.fm, ptr %i.fp, align 8, !tbaa !387
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i64 0, ptr %i.fq, align 8, !tbaa !127
  %i.fr = getelementptr inbounds nuw i8, ptr %12, i64 144
  store i8 0, ptr %i.fr, align 8, !tbaa !397
  %i.fs = call noundef nonnull align 8 dereferenceable(145) ptr @_ZN8tinygltf5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(145) %2, ptr noundef nonnull align 8 dereferenceable(145) %12) #41 ; 0 uses
  call void @_ZN8tinygltf5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  %.pre48 = load ptr, ptr %8, align 8, !tbaa !393 ; 3 uses
  %.pre49 = load ptr, ptr %i.ek, align 8, !tbaa !392 ; 2 uses
  %.not.i.i2.i = icmp eq ptr %.pre48, %.pre49
  br i1 %.not.i.i2.i, label %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.at, %.lr.ph.i
  %.0.i.i3.i = phi ptr [ %i.ft, %.lr.ph.i ], [ %.pre48, %bb.at ] ; 2 uses
  call void @_ZSt8_DestroyIN8tinygltf5ValueEEvPT_(ptr noundef %.0.i.i3.i) #39, !inline_history !37
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 152 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ft, %.pre49
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !35

_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.loopexit.i: ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !393
  br label %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.ai, %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.loopexit.i, %bb.at
  %18 = phi ptr [ %.pre.i, %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.loopexit.i ], [ %.pre48, %bb.at ], [ %i.em, %bb.ai ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %18, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN8tinygltf5ValueESaIS1_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.i
  %i.fu = load ptr, ptr %i.cp, align 8, !tbaa !596
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %18 to i64
  %i.fx = sub i64 %i.fv, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %18, i64 noundef %i.fx) #42, !inline_history !606
  br label %_ZNSt6vectorIN8tinygltf5ValueESaIS1_EED2Ev.exit

_ZNSt6vectorIN8tinygltf5ValueESaIS1_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPN8tinygltf5ValueES1_EvT_S3_RSaIT0_E.exit.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.bi

bb.av:                                            ; preds = %bb.as, %bb.aj
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.as ], [ %i.en, %bb.aj ]
  call void @_ZNSt6vectorIN8tinygltf5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.bl

bb.aw:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  %i.fy = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 11 uses
  store ptr %i.fy, ptr %14, align 8, !tbaa !396, !alias.scope !3579
  %i.fz = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 0, ptr %i.fz, align 8, !tbaa !129, !alias.scope !3579
  store i8 0, ptr %i.fy, align 8, !tbaa !75, !alias.scope !3579
  invoke void @_ZN8nlohmann16json_abi_v3_11_36detail9from_jsonINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEEvRKT_RNSG_8string_tE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3getIS9_S9_EEDTcldtclL_ZSt7declvalIRKSD_EDTcl9__declvalIT_ELi0EEEvEE8get_implIT0_EtlNS0_6detail12priority_tagILj4EEEEEEv.exit unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ga = landingpad { ptr, i32 }
          cleanup
  %i.gb = load ptr, ptr %14, align 8, !tbaa !89, !alias.scope !3579 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.fy
  br i1 %i.gc, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ax
  %i.gd = load i64, ptr %i.fy, align 8, !tbaa !75, !alias.scope !3579
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #42
  br label %.body

_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3getIS9_S9_EEDTcldtclL_ZSt7declvalIRKSD_EDTcl9__declvalIT_ELi0EEEvEE8get_implIT0_EtlNS0_6detail12priority_tagILj4EEEEEEv.exit: ; preds = %bb.aw
  store i32 4, ptr %13, align 8, !tbaa !383
  %i.gf = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 0, ptr %i.gf, align 4, !tbaa !582
  %i.gg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store double 0.000000e+00, ptr %i.gg, align 8, !tbaa !583
  %i.gh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  store ptr %i.gi, ptr %i.gh, align 8, !tbaa !396
  %i.gj = load ptr, ptr %14, align 8, !tbaa !89   ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.fy
  br i1 %i.gk, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.ay:                                            ; preds = %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3getIS9_S9_EEDTcldtclL_ZSt7declvalIRKSD_EDTcl9__declvalIT_ELi0EEEvEE8get_implIT0_EtlNS0_6detail12priority_tagILj4EEEEEEv.exit
  %i.gl = load i64, ptr %i.fz, align 8, !tbaa !129 ; 3 uses
  %i.gm = icmp ult i64 %i.gl, 16
  call void @llvm.assume(i1 %i.gm)
  %i.gn = add nuw nsw i64 %i.gl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gi, ptr noundef nonnull align 8 dereferenceable(1) %i.fy, i64 %i.gn, i1 false)
  br label %_ZN8tinygltf5ValueC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3getIS9_S9_EEDTcldtclL_ZSt7declvalIRKSD_EDTcl9__declvalIT_ELi0EEEvEE8get_implIT0_EtlNS0_6detail12priority_tagILj4EEEEEEv.exit
  store ptr %i.gj, ptr %i.gh, align 8, !tbaa !89
  %i.go = load i64, ptr %i.fy, align 8, !tbaa !75
  store i64 %i.go, ptr %i.gi, align 8, !tbaa !75
  %.pre = load i64, ptr %i.fz, align 8, !tbaa !129
  br label %_ZN8tinygltf5ValueC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8tinygltf5ValueC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.gp = phi i64 [ %i.gl, %bb.ay ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.gq = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !129
  store ptr %i.fy, ptr %14, align 8, !tbaa !89
  store i64 0, ptr %i.fz, align 8, !tbaa !129
  store i8 0, ptr %i.fy, align 8, !tbaa !75
  %i.gr = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.gs = getelementptr inbounds nuw i8, ptr %13, i64 104 ; 3 uses
  store i32 0, ptr %i.gs, align 8, !tbaa !386
  %i.gt = getelementptr inbounds nuw i8, ptr %13, i64 112
  store ptr null, ptr %i.gt, align 8, !tbaa !352
  %i.gu = getelementptr inbounds nuw i8, ptr %13, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gr, i8 0, i64 48, i1 false)
  store ptr %i.gs, ptr %i.gu, align 8, !tbaa !128
  %i.gv = getelementptr inbounds nuw i8, ptr %13, i64 128
  store ptr %i.gs, ptr %i.gv, align 8, !tbaa !387
  %i.gw = getelementptr inbounds nuw i8, ptr %13, i64 136
  store i64 0, ptr %i.gw, align 8, !tbaa !127
  %i.gx = getelementptr inbounds nuw i8, ptr %13, i64 144
  store i8 0, ptr %i.gx, align 8, !tbaa !397
  %i.gy = call noundef nonnull align 8 dereferenceable(145) ptr @_ZN8tinygltf5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(145) %2, ptr noundef nonnull align 8 dereferenceable(145) %13) #41 ; 0 uses
  call void @_ZN8tinygltf5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %13) #41
  %i.gz = load ptr, ptr %14, align 8, !tbaa !89   ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.fy
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZN8tinygltf5ValueC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.hb = load i64, ptr %i.fy, align 8, !tbaa !75
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8tinygltf5ValueC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  br label %bb.bi

.body:                                            ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  br label %bb.bl

bb.az:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i8 0, ptr %i.c, align 1, !tbaa !384
  invoke void @_ZN8nlohmann16json_abi_v3_11_36detail9from_jsonINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEEvRKT_RNSG_9boolean_tE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hd = load i8, ptr %i.c, align 1, !tbaa !384, !range !135, !noundef !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  store i32 3, ptr %15, align 8, !tbaa !383
  %i.he = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 0, ptr %i.he, align 4, !tbaa !582
  %i.hf = getelementptr inbounds nuw i8, ptr %15, i64 8
  store double 0.000000e+00, ptr %i.hf, align 8, !tbaa !583
  %i.hg = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.hh = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  store ptr %i.hh, ptr %i.hg, align 8, !tbaa !396
  %i.hi = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i64 0, ptr %i.hi, align 8, !tbaa !129
  store i8 0, ptr %i.hh, align 8, !tbaa !75
  %i.hj = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.hk = getelementptr inbounds nuw i8, ptr %15, i64 104 ; 3 uses
  store i32 0, ptr %i.hk, align 8, !tbaa !386
  %i.hl = getelementptr inbounds nuw i8, ptr %15, i64 112
  store ptr null, ptr %i.hl, align 8, !tbaa !352
  %i.hm = getelementptr inbounds nuw i8, ptr %15, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hj, i8 0, i64 48, i1 false)
  store ptr %i.hk, ptr %i.hm, align 8, !tbaa !128
  %i.hn = getelementptr inbounds nuw i8, ptr %15, i64 128
  store ptr %i.hk, ptr %i.hn, align 8, !tbaa !387
  %i.ho = getelementptr inbounds nuw i8, ptr %15, i64 136
  store i64 0, ptr %i.ho, align 8, !tbaa !127
  %i.hp = getelementptr inbounds nuw i8, ptr %15, i64 144
  store i8 %i.hd, ptr %i.hp, align 8, !tbaa !397
  %i.hq = call noundef nonnull align 8 dereferenceable(145) ptr @_ZN8tinygltf5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(145) %2, ptr noundef nonnull align 8 dereferenceable(145) %15) #41 ; 0 uses
  call void @_ZN8tinygltf5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %15) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %bb.bi

bb.bb:                                            ; preds = %bb.az
  %i.hr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %bb.bl

bb.bc:                                            ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i64 0, ptr %i.b, align 8, !tbaa !398
  invoke void @_ZN8nlohmann16json_abi_v3_11_36detail20get_arithmetic_valueINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEElTnNSt9enable_ifIXaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISH_NT_9boolean_tEEE5valueEiE4typeELi0EEEvRKSI_RSH_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hs = load i64, ptr %i.b, align 8, !tbaa !398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  %i.ht = trunc i64 %i.hs to i32                  ; 2 uses
  store i32 2, ptr %16, align 8, !tbaa !383
  %i.hu = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.hv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.hx = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  store ptr %i.hx, ptr %i.hw, align 8, !tbaa !396
  %i.hy = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i64 0, ptr %i.hy, align 8, !tbaa !129
  store i8 0, ptr %i.hx, align 8, !tbaa !75
  %i.hz = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.ia = getelementptr inbounds nuw i8, ptr %16, i64 104 ; 3 uses
  store i32 0, ptr %i.ia, align 8, !tbaa !386
  %i.ib = getelementptr inbounds nuw i8, ptr %16, i64 112
  store ptr null, ptr %i.ib, align 8, !tbaa !352
  %i.ic = getelementptr inbounds nuw i8, ptr %16, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hz, i8 0, i64 48, i1 false)
  store ptr %i.ia, ptr %i.ic, align 8, !tbaa !128
  %i.id = getelementptr inbounds nuw i8, ptr %16, i64 128
  store ptr %i.ia, ptr %i.id, align 8, !tbaa !387
  %i.ie = getelementptr inbounds nuw i8, ptr %16, i64 136
  store i64 0, ptr %i.ie, align 8, !tbaa !127
  %i.if = getelementptr inbounds nuw i8, ptr %16, i64 144
  store i8 0, ptr %i.if, align 8, !tbaa !397
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !582
  %i.ig = sitofp i32 %i.ht to double
  store double %i.ig, ptr %i.hv, align 8, !tbaa !583
  %i.ih = call noundef nonnull align 8 dereferenceable(145) ptr @_ZN8tinygltf5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(145) %2, ptr noundef nonnull align 8 dereferenceable(145) %16) #41 ; 0 uses
  call void @_ZN8tinygltf5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(145) dereferenceable(145) %16) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  br label %bb.bi

bb.be:                                            ; preds = %bb.bc
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  br label %bb.bl
end_hunk_0
