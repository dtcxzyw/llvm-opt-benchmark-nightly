Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMAsmPrinter?download=true
inline.NumInlined: 3402
inline.NumDeleted: 998
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm13ARMAsmPrinter14emitAttributesEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i118: ; preds = %bb.o, %bb.n, %bb.m
  %i.bz = load i64, ptr %i.bo, align 8, !tbaa !661 ; 2 uses
  store i64 %i.bz, ptr %i.y, align 8, !tbaa !661
  %i.ca = load ptr, ptr %2, align 8, !tbaa !660
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  store i8 0, ptr %i.cb, align 1, !tbaa !194
  %.pre.i119 = load ptr, ptr %6, align 8, !tbaa !660
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit122

.thread.i121:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i120
  store ptr %i.bu, ptr %2, align 8, !tbaa !660
  %i.cc = load <2 x i64>, ptr %i.bo, align 8, !tbaa !194
  store <2 x i64> %i.cc, ptr %i.y, align 8, !tbaa !194
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i116: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i115
  %i.cd = load i64, ptr %i.bs, align 8, !tbaa !194
  store ptr %i.bu, ptr %2, align 8, !tbaa !660
  %i.ce = load <2 x i64>, ptr %i.bo, align 8, !tbaa !194
  store <2 x i64> %i.ce, ptr %i.y, align 8, !tbaa !194
  %.not.i117 = icmp eq ptr %i.br, null
  br i1 %.not.i117, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i116
  store ptr %i.br, ptr %6, align 8, !tbaa !660
  store i64 %i.cd, ptr %i.bg, align 8, !tbaa !194
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit122

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i116, %.thread.i121
  store ptr %i.bg, ptr %6, align 8, !tbaa !660
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i118, %bb.p, %bb.q
  %i.cf = phi ptr [ %i.br, %bb.p ], [ %i.bg, %bb.q ], [ %.pre.i119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i118 ]
  store i64 0, ptr %i.bo, align 8, !tbaa !661
  store i8 0, ptr %i.cf, align 1, !tbaa !194
  %i.cg = load ptr, ptr %6, align 8, !tbaa !660   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit122
  %i.ci = load i64, ptr %i.bg, align 8, !tbaa !194
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %bb.a
  %i.ck = load ptr, ptr %i.m, align 8, !tbaa !165, !nonnull !166, !align !167 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.cl, ptr %8, align 8, !tbaa !871
  %i.cm = icmp eq ptr %i.q, null
  %i.cn = icmp ne i64 %i.s, 0
  %or.cond.i.i.i126 = and i1 %i.cm, %i.cn
  br i1 %or.cond.i.i.i126, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.46) #18
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.s, ptr %i.a, align 8, !tbaa !658
  %i.co = icmp ugt i64 %i.s, 15
  br i1 %i.co, label %bb.u, label %._crit_edge.i.i.i.i127

bb.u:                                             ; preds = %bb.t
  %i.cp = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #17 ; 2 uses
  store ptr %i.cp, ptr %8, align 8, !tbaa !660
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !658
  store i64 %i.cq, ptr %i.cl, align 8, !tbaa !194
  br label %._crit_edge.i.i.i.i127

._crit_edge.i.i.i.i127:                           ; preds = %bb.u, %bb.t
  %i.cr = phi ptr [ %i.cp, %bb.u ], [ %i.cl, %bb.t ] ; 2 uses
  switch i64 %i.s, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit128
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i127
  %i.cs = load i8, ptr %i.q, align 1, !tbaa !194
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !194
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit128

bb.w:                                             ; preds = %._crit_edge.i.i.i.i127
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit128: ; preds = %._crit_edge.i.i.i.i127, %bb.v, %bb.w
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !658 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !661
  %i.cv = load ptr, ptr %8, align 8, !tbaa !660
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ct
  store i8 0, ptr %i.cw, align 1, !tbaa !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ck, i64 1744
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !656, !range !169, !noundef !166
  %i.cz = trunc nuw i8 %i.cy to i1
  call void @_ZN4llvm12ARMSubtargetC1ERKNS_6TripleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS_20ARMBaseTargetMachineEbbNS_12DenormalModeE(ptr noundef nonnull align 8 dereferenceable(519368) %7, ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(1776) %i.ck, i1 noundef zeroext %i.cz, i1 noundef zeroext false, i16 0) #17
  %i.da = load ptr, ptr %8, align 8, !tbaa !660   ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cl
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit128
  %i.dc = load i64, ptr %i.cl, align 8, !tbaa !194
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN4llvm17ARMTargetStreamer20emitTargetAttributesERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(320) %7) #17
  %i.de = call noundef zeroext i1 @_ZNK4llvm10AsmPrinter21isPositionIndependentEv(ptr noundef nonnull align 8 dereferenceable(1073) %0) #17
  br i1 %i.de, label %.sink.split, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %i.df = call noundef zeroext i1 @_ZNK4llvm12ARMSubtarget6isRWPIEv(ptr noundef nonnull align 8 dereferenceable(519368) %7) #17
  br i1 %i.df, label %.sink.split, label %bb.y

.sink.split:                                      ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %.sink = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ], [ 2, %bb.x ]
  %i.dg = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 184
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i32 noundef 15, i32 noundef %.sink) #17
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.x
  %i.dj = call noundef zeroext i1 @_ZNK4llvm10AsmPrinter21isPositionIndependentEv(ptr noundef nonnull align 8 dereferenceable(1073) %0) #17
  br i1 %i.dj, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = call noundef zeroext i1 @_ZNK4llvm12ARMSubtarget6isROPIEv(ptr noundef nonnull align 8 dereferenceable(519368) %7) #17
  br i1 %i.dk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dl = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 184
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i32 noundef 16, i32 noundef 1) #17
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.do = call noundef zeroext i1 @_ZNK4llvm10AsmPrinter21isPositionIndependentEv(ptr noundef nonnull align 8 dereferenceable(1073) %0) #17
  %i.dp = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 184
  %i.dr = load ptr, ptr %i.dq, align 8
  %. = select i1 %i.do, i32 2, i32 1
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i32 noundef 17, i32 noundef %.) #17
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !318
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 2224
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !872
  %i.dw = call noundef ptr @_ZNK4llvm6Module13getModuleFlagENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %i.dv, ptr nonnull @.str.21, i64 20) #17 ; 2 uses
  %.not.not.i = icmp eq ptr %i.dw, null
  br i1 %.not.not.i, label %_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit.thread, label %_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit

_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit: ; preds = %bb.ab
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 136
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !879 ; 3 uses
  %.not = icmp eq ptr %i.dy, null
  br i1 %.not, label %_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !663
  %i.ec = icmp ult i32 %i.eb, 65
  %i.ed = load ptr, ptr %i.dz, align 8
  %spec.select.i.i = select i1 %i.ec, ptr %i.dz, ptr %i.ed
  %.0.i.i132 = load i64, ptr %spec.select.i.i, align 8, !tbaa !194
  %i.ee = trunc i64 %.0.i.i132 to i32             ; 2 uses
  %.not86 = icmp eq i32 %i.ee, 0
  br i1 %.not86, label %bb.aj, label %.sink.split356

_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit.thread: ; preds = %bb.ab, %_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit
  %i.ef = load ptr, ptr %i.ds, align 8, !tbaa !318
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 2224
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !872 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !664 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 24 ; 3 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %i.ej, %i.ek
  br i1 %.not6.i.i.i.i.i.i.i, label %.sink.split356, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit.thread, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i"
  %.sroa.03.07.i.i.i.i.i.i.i = phi ptr [ %i.ep, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i" ], [ %i.ej, %_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit.thread ] ; 3 uses
  %i.el = getelementptr inbounds i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.em = call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(140) %i.el) #17
  br i1 %i.em, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i.i.a"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i.i.a": ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.en = call i32 @_ZNK4llvm8Function16getDenormalFPEnvEv(ptr noundef nonnull align 8 dereferenceable(140) %i.el) #17
  %spec.select.i.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.en, 16843009
  br i1 %spec.select.i.i.not.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i", label %_ZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS_13DenormalFPEnvE.exit

"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i.i.a", %.lr.ph.i.i.i.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !664 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ep, %i.ek
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split356, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !866

_ZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS_13DenormalFPEnvE.exit: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i.i.a"
  %i.eq = icmp eq ptr %i.ek, %.sroa.03.07.i.i.i.i.i.i.i
  br i1 %i.eq, label %.sink.split356, label %bb.ad

bb.ad:                                            ; preds = %_ZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS_13DenormalFPEnvE.exit
  %i.er = load ptr, ptr %i.ds, align 8, !tbaa !318
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 2224
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !872 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !664 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 24 ; 3 uses
  %.not6.i.i.i.i.i.i.i133 = icmp eq ptr %i.ev, %i.ew
  br i1 %.not6.i.i.i.i.i.i.i133, label %.sink.split356, label %.lr.ph.i.i.i.i.i.i.i134

.lr.ph.i.i.i.i.i.i.i134:                          ; preds = %bb.ad, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i141"
  %.sroa.03.07.i.i.i.i.i.i.i135 = phi ptr [ %i.fb, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i141" ], [ %i.ev, %bb.ad ] ; 3 uses
  %i.ex = getelementptr inbounds i8, ptr %.sroa.03.07.i.i.i.i.i.i.i135, i64 -64 ; 2 uses
  %i.ey = call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(140) %i.ex) #17
  br i1 %i.ey, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i141", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i.i136"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i.i136": ; preds = %.lr.ph.i.i.i.i.i.i.i134
  %i.ez = call i32 @_ZNK4llvm8Function16getDenormalFPEnvEv(ptr noundef nonnull align 8 dereferenceable(140) %i.ex) #17
  %spec.select.i.i.not.i.i.i.i.i.i.i137 = icmp eq i32 %i.ez, 33686018
  br i1 %spec.select.i.i.not.i.i.i.i.i.i.i137, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i141", label %_ZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS_13DenormalFPEnvE.exit143

"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i141": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i.i136", %.lr.ph.i.i.i.i.i.i.i134
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i135, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !664 ; 2 uses
  %.not.i.i.i.i.i.i.i142 = icmp eq ptr %i.fb, %i.ew
  br i1 %.not.i.i.i.i.i.i.i142, label %.sink.split356, label %.lr.ph.i.i.i.i.i.i.i134, !llvm.loop !866

_ZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS_13DenormalFPEnvE.exit143: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i.i136"
  %i.fc = icmp eq ptr %i.ew, %.sroa.03.07.i.i.i.i.i.i.i135
  br i1 %i.fc, label %.sink.split356, label %bb.ae

bb.ae:                                            ; preds = %_ZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS_13DenormalFPEnvE.exit143
  %i.fd = load ptr, ptr %i.ds, align 8, !tbaa !318
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 2224
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !872 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !664 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 24 ; 4 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleE.exit.thread239, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fk = getelementptr inbounds i8, ptr %i.fh, i64 -64
  %i.fl = call i32 @_ZNK4llvm8Function16getDenormalFPEnvEv(ptr noundef nonnull align 8 dereferenceable(140) %i.fk) #17
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !664 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.fn, %i.fi
  br i1 %.not5.i.i.i.i.i.i, label %_ZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleE.exit.thread239, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.af, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i"
  %.sroa.03.06.i.i.i.i.i.i = phi ptr [ %i.fs, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i" ], [ %i.fn, %bb.af ] ; 3 uses
  %i.fo = getelementptr inbounds i8, ptr %.sroa.03.06.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.fp = call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(140) %i.fo) #17
  br i1 %i.fp, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i.a"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i.a": ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fq = call i32 @_ZNK4llvm8Function16getDenormalFPEnvEv(ptr noundef nonnull align 8 dereferenceable(140) %i.fo) #17
  %spec.select.i.i.not.i.i.i.i.i.i = icmp eq i32 %i.fl, %i.fq
  br i1 %spec.select.i.i.not.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i", label %_ZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleE.exit

"_ZN9__gnu_cxx5__ops10_Iter_predIZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i.a", %.lr.ph.i.i.i.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i.i, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !664 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fs, %i.fi
  br i1 %.not.i.i.i.i.i.i, label %_ZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleE.exit.thread239, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !867

_ZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleE.exit: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i.a"
  %.not258 = icmp eq ptr %i.fi, %.sroa.03.06.i.i.i.i.i.i
  br i1 %.not258, label %_ZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleE.exit.thread239, label %.sink.split356

_ZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleE.exit.thread239: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i", %bb.af, %bb.ae, %_ZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleE.exit
  %i.ft = load ptr, ptr %i.ds, align 8, !tbaa !318
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 2224
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !872 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !664 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 24 ; 3 uses
  %.not6.i.i.i.i.i.i.i144 = icmp eq ptr %i.fx, %i.fy
  br i1 %.not6.i.i.i.i.i.i.i144, label %.sink.split356, label %.lr.ph.i.i.i.i.i.i.i145

.lr.ph.i.i.i.i.i.i.i145:                          ; preds = %_ZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleE.exit.thread239, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i152"
  %.sroa.03.07.i.i.i.i.i.i.i146 = phi ptr [ %i.gd, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i152" ], [ %i.fx, %_ZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleE.exit.thread239 ] ; 3 uses
  %i.fz = getelementptr inbounds i8, ptr %.sroa.03.07.i.i.i.i.i.i.i146, i64 -64 ; 2 uses
  %i.ga = call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(140) %i.fz) #17
  br i1 %i.ga, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i152", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i.i147"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i.i147": ; preds = %.lr.ph.i.i.i.i.i.i.i145
  %i.gb = call i32 @_ZNK4llvm8Function16getDenormalFPEnvEv(ptr noundef nonnull align 8 dereferenceable(140) %i.fz) #17
  %spec.select.i.i.not.i.i.i.i.i.i.i148 = icmp eq i32 %i.gb, 0
  br i1 %spec.select.i.i.not.i.i.i.i.i.i.i148, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i152", label %_ZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS_13DenormalFPEnvE.exit154

"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i152": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i.i147", %.lr.ph.i.i.i.i.i.i.i145
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i146, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !664 ; 2 uses
  %.not.i.i.i.i.i.i.i153 = icmp eq ptr %i.gd, %i.fy
  br i1 %.not.i.i.i.i.i.i.i153, label %.sink.split356, label %.lr.ph.i.i.i.i.i.i.i145, !llvm.loop !866

_ZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS_13DenormalFPEnvE.exit154: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i.i147"
  %i.ge = icmp eq ptr %i.fy, %.sroa.03.07.i.i.i.i.i.i.i146
  br i1 %i.ge, label %.sink.split356, label %bb.ag

bb.ag:                                            ; preds = %_ZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS_13DenormalFPEnvE.exit154
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 443
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !880, !range !169, !noundef !166
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gi = getelementptr inbounds nuw i8, ptr %7, i64 420
  %i.gj = load i8, ptr %i.gi, align 4, !tbaa !881, !range !169, !noundef !166
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %.sink.split356, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.gl = getelementptr inbounds nuw i8, ptr %7, i64 446
  %i.gm = load i8, ptr %i.gl, align 2, !tbaa !882, !range !169, !noundef !166
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %.sink.split356, label %bb.aj

.sink.split356:                                   ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i141", %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i152", %bb.ai, %bb.ah, %_ZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleE.exit, %_ZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS_13DenormalFPEnvE.exit154, %_ZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleE.exit.thread239, %_ZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS_13DenormalFPEnvE.exit143, %bb.ad, %_ZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS_13DenormalFPEnvE.exit, %_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit.thread, %bb.ac
  %.sink357 = phi i32 [ 2, %_ZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS_13DenormalFPEnvE.exit ], [ %i.ee, %bb.ac ], [ 0, %_ZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS_13DenormalFPEnvE.exit143 ], [ 2, %bb.ah ], [ 1, %_ZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleE.exit ], [ 1, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i152" ], [ 2, %_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit.thread ], [ 0, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i141" ], [ 0, %bb.ad ], [ 2, %bb.ai ], [ 1, %_ZL35checkDenormalAttributeInconsistencyRKN4llvm6ModuleE.exit.thread239 ], [ 1, %_ZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS_13DenormalFPEnvE.exit154 ], [ 2, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL33checkDenormalAttributeConsistencyRKN4llvm6ModuleENS2_13DenormalFPEnvEE3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i" ]
  %i.go = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 184
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i32 noundef 20, i32 noundef %.sink357) #17
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split356, %bb.ac, %bb.ai, %bb.ah
  %i.gr = load ptr, ptr %i.ds, align 8, !tbaa !318
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 2224
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !872
  %i.gu = call noundef ptr @_ZNK4llvm6Module13getModuleFlagENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %i.gt, ptr nonnull @.str.22, i64 22) #17 ; 2 uses
  %.not.not.i155 = icmp eq ptr %i.gu, null
  br i1 %.not.not.i155, label %_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit157.thread, label %_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit157

_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit157: ; preds = %bb.aj
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 136
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !879 ; 3 uses
  %.not87 = icmp eq ptr %i.gw, null
  br i1 %.not87, label %_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit157.thread, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit157
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !663
  %i.ha = icmp ult i32 %i.gz, 65
  %i.hb = load ptr, ptr %i.gx, align 8
  %spec.select.i.i158 = select i1 %i.ha, ptr %i.gx, ptr %i.hb
  %.0.i.i159 = load i64, ptr %spec.select.i.i158, align 8, !tbaa !194
  %i.hc = trunc i64 %.0.i.i159 to i32             ; 2 uses
  %.not90 = icmp eq i32 %i.hc, 0
  br i1 %.not90, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hd = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 184
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i32 noundef 21, i32 noundef %i.hc) #17
  br label %bb.aq

_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit157.thread: ; preds = %bb.aj, %_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit157
  %i.hg = load ptr, ptr %i.ds, align 8, !tbaa !318
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 2224
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !872 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 32
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !664 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 24 ; 3 uses
  %.not14.i.i.i.i.i.i.i = icmp eq ptr %i.hk, %i.hl
  br i1 %.not14.i.i.i.i.i.i.i, label %_ZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS_9StringRefES3_.exit, label %.lr.ph.i.i.i.i.i.i.i160

.lr.ph.i.i.i.i.i.i.i160:                          ; preds = %_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit157.thread, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS2_9StringRefES6_E3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i"
  %.sroa.04.015.i.i.i.i.i.i.i = phi ptr [ %i.hw, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS2_9StringRefES6_E3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i" ], [ %i.hk, %_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit157.thread ] ; 4 uses
  %i.hm = getelementptr inbounds i8, ptr %.sroa.04.015.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.hn = call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(140) %i.hm) #17
  br i1 %i.hn, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS2_9StringRefES6_E3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i", label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i160
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.ho = call ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %i.hm, ptr nonnull @.str.23, i64 16) #17
  store ptr %i.ho, ptr %1, align 8
  %i.hp = call { ptr, i64 } @_ZNK4llvm9Attribute16getValueAsStringEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #17 ; 2 uses
  %i.hq = extractvalue { ptr, i64 } %i.hp, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hq, 4
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS2_9StringRefES6_E3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS2_9StringRefES6_E3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread7.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS2_9StringRefES6_E3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread7.i.i.i.i.i.i.i": ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %_ZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS_9StringRefES3_.exit

"_ZN9__gnu_cxx5__ops10_Iter_predIZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS2_9StringRefES6_E3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i.i": ; preds = %bb.am
  %i.hr = extractvalue { ptr, i64 } %i.hp, 0
  %i.hs = load i32, ptr %i.hr, align 1
  %i.ht = icmp ne i32 %i.hs, 1702195828
  %i.hu = zext i1 %i.ht to i32
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.hu, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br i1 %.not11.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS2_9StringRefES6_E3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i", label %_ZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS_9StringRefES3_.exit

"_ZN9__gnu_cxx5__ops10_Iter_predIZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS2_9StringRefES6_E3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS2_9StringRefES6_E3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i160
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.04.015.i.i.i.i.i.i.i, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !664 ; 2 uses
  %.not.i.i.i.i.i.i.i162 = icmp eq ptr %i.hw, %i.hl
  br i1 %.not.i.i.i.i.i.i.i162, label %_ZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS_9StringRefES3_.exit.thread, label %.lr.ph.i.i.i.i.i.i.i160, !llvm.loop !868

_ZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS_9StringRefES3_.exit: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS2_9StringRefES6_E3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i.i", %_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit157.thread, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS2_9StringRefES6_E3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread7.i.i.i.i.i.i.i"
  %.sroa.04.013.i.i.i.i.i.i.i = phi ptr [ %.sroa.04.015.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS2_9StringRefES6_E3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread7.i.i.i.i.i.i.i" ], [ %i.hk, %_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit157.thread ], [ %.sroa.04.015.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS2_9StringRefES6_E3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i.i" ]
  %.not.i161 = icmp eq ptr %i.hl, %.sroa.04.013.i.i.i.i.i.i.i
  br i1 %.not.i161, label %_ZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS_9StringRefES3_.exit.thread, label %bb.an

bb.an:                                            ; preds = %_ZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS_9StringRefES3_.exit
  %i.hx = load ptr, ptr %i.m, align 8, !tbaa !165, !nonnull !166, !align !167
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 1296
  %i.hz = load i8, ptr %i.hy, align 8
  %i.ia = and i8 %i.hz, 1
  %.not88 = icmp eq i8 %i.ia, 0
  br i1 %.not88, label %bb.ao, label %_ZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS_9StringRefES3_.exit.thread

_ZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS_9StringRefES3_.exit.thread: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS2_9StringRefES6_E3$_0EclINS2_14ilist_iteratorINS2_12ilist_detail12node_optionsINS2_8FunctionELb0ELb0EvLb0EvEELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i.i", %bb.an, %_ZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS_9StringRefES3_.exit
  %i.ib = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 184
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i32 noundef 21, i32 noundef 0) #17
  br label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ie = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 184
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i32 noundef 21, i32 noundef 1) #17
  %i.ih = load ptr, ptr %i.m, align 8, !tbaa !165, !nonnull !166, !align !167
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 1296
  %i.ij = load i8, ptr %i.ii, align 8
  %i.ik = and i8 %i.ij, 4
  %.not89 = icmp eq i8 %i.ik, 0
  br i1 %.not89, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.il = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 184
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i32 noundef 19, i32 noundef 1) #17
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ak, %bb.al, %_ZL34checkFunctionsAttributeConsistencyRKN4llvm6ModuleENS_9StringRefES3_.exit.thread, %bb.ap, %bb.ao
  %i.io = load ptr, ptr %i.ds, align 8, !tbaa !318
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 2224
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !872
  %i.ir = call noundef ptr @_ZNK4llvm6Module13getModuleFlagENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %i.iq, ptr nonnull @.str.25, i64 24) #17 ; 2 uses
  %.not.not.i163 = icmp eq ptr %i.ir, null
  br i1 %.not.not.i163, label %.sink.split361, label %_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit165

_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit165: ; preds = %bb.aq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 136
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !879 ; 3 uses
  %.not91 = icmp eq ptr %i.it, null
  br i1 %.not91, label %.sink.split361, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm7mdconst15extract_or_nullINS_11ConstantIntEPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS6_E4typeEOS7_.exit165
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !663
  %i.ix = icmp ult i32 %i.iw, 65
  %i.iy = load ptr, ptr %i.iu, align 8
  %spec.select.i.i166 = select i1 %i.ix, ptr %i.iu, ptr %i.iy
  %.0.i.i167 = load i64, ptr %spec.select.i.i166, align 8, !tbaa !194
  %i.iz = trunc i64 %.0.i.i167 to i32             ; 2 uses
  %.not92 = icmp eq i32 %i.iz, 0
end_hunk_0
