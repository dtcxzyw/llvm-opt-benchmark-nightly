Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Compiler?download=true
inline.NumInlined: 3176
inline.NumDeleted: 1468
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4Luau8CompilerC2ERNS_15BytecodeBuilderERKNS_14CompileOptionsERNS_12AstNameTableE:bb.a
_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8VariableENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit: ; preds = %bb.ad, %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit
  %i.er = load ptr, ptr %i.d, align 8, !tbaa !213 ; 2 uses
  %.not.i.i70 = icmp eq ptr %i.er, null
  br i1 %.not.i.i70, label %_ZN4Luau12DenseHashMapINS_7AstNameENS_7Compile6GlobalESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8VariableENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.er) #30
  br label %_ZN4Luau12DenseHashMapINS_7AstNameENS_7Compile6GlobalESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit

_ZN4Luau12DenseHashMapINS_7AstNameENS_7Compile6GlobalESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit: ; preds = %bb.ae, %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8VariableENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit
  %i.es = load ptr, ptr %i.c, align 8, !tbaa !250 ; 2 uses
  %.not.i.i71 = icmp eq ptr %i.es, null
  br i1 %.not.i.i71, label %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_8Compiler5LocalENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN4Luau12DenseHashMapINS_7AstNameENS_7Compile6GlobalESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.es) #30
  br label %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_8Compiler5LocalENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit

_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_8Compiler5LocalENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit: ; preds = %bb.af, %_ZN4Luau12DenseHashMapINS_7AstNameENS_7Compile6GlobalESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit
  tail call void @_ZN4Luau12DenseHashMapIPNS_15AstExprFunctionENS_8Compiler8FunctionENS_16DenseHashPointerESt8equal_toIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.b) #30
  resume { ptr, i32 } %.pn26.pn
}

declare void @_ZN4Luau7Compile13assignMutableERNS_12DenseHashMapINS_7AstNameENS0_6GlobalESt4hashIS2_ESt8equal_toIS2_EEERKNS_12AstNameTableEPKPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #12

declare void @_ZN4Luau7Compile11trackValuesERNS_12DenseHashMapINS_7AstNameENS0_6GlobalESt4hashIS2_ESt8equal_toIS2_EEERNS1_IPNS_8AstLocalENS0_8VariableENS_16DenseHashPointerES6_ISB_EEERNS1_IS2_SB_S5_S7_EERNS_12DenseHashSetISB_SD_SE_EERSt6vectorISB_SaISB_EEPNS_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #12

declare void @_ZN4Luau7Compile22trackValues_DEPRECATEDERNS_12DenseHashMapINS_7AstNameENS0_6GlobalESt4hashIS2_ESt8equal_toIS2_EEERNS1_IPNS_8AstLocalENS0_8VariableENS_16DenseHashPointerES6_ISB_EEERNS1_IS2_SB_S5_S7_EEPNS_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #12

declare ptr @_ZNK4Luau12AstNameTable3getEPKc(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #12

declare void @_ZN4Luau7Compile15analyzeBuiltinsERNS_12DenseHashMapIPNS_11AstExprCallEiNS_16DenseHashPointerESt8equal_toIS3_EEERKNS1_INS_7AstNameENS0_6GlobalESt4hashIS9_ES5_IS9_EEERKNS1_IPNS_8AstLocalENS0_8VariableES4_S5_ISI_EEERKNS_14CompileOptionsEPNS_7AstNodeERKNS_12AstNameTableE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #12

declare void @_ZN4Luau7Compile21buildTableConstantMapERNS_12DenseHashMapIPNS_8AstLocalENS0_17TableConstantKindENS_16DenseHashPointerESt8equal_toIS3_EEERKNS1_IS3_NS0_8VariableES5_S7_EEPNS_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #12

declare void @_ZN4Luau7Compile13foldConstantsERNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEERNS1_IPNS_8AstLocalENS0_8VariableES5_S6_ISB_EEERNS1_ISB_S4_S5_SD_EEPKNS1_IPNS_11AstExprCallEiS5_S6_ISJ_EEEbbPFvPKcSP_PPvEPNS_7AstNodeERNS_12AstNameTableERKNS1_ISB_NS0_17TableConstantKindES5_SD_EEPSt6vectorINS0_18ExprConstantChangeESaIS13_EEPS12_INS0_19LocalConstantChangeESaIS17_EE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #12

declare void @_ZN4Luau7Compile18predictTableShapesERNS_12DenseHashMapIPNS_12AstExprTableENS0_10TableShapeENS_16DenseHashPointerESt8equal_toIS3_EEEPNS_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #12

declare noundef i32 @_ZN4Luau15BytecodeBuilder15addUserdataTypeEPKc(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN4Luau12DenseHashMapINS_7AstNameEhSt4hashIS1_ESt8equal_toIS1_EEixERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !633  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !251  ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_hES3_IKS2_hENS0_16ItemInterfaceMapIS2_hEESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %1, align 8, !tbaa !211    ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !211  ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.d, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.n = lshr i64 %i.m, 4
  %i.o = lshr i64 %i.m, 9
  %i.p = xor i64 %i.n, %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !244
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.p, %bb.d ], [ %i.w, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.v, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.l            ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.01929.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !211  ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_hES3_IKS2_hENS0_16ItemInterfaceMapIS2_hEESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS5_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.s, %i.j
  br i1 %i.u, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.w = add i64 %i.v, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.v, %i.l
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !632

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_hES3_IKS2_hENS0_16ItemInterfaceMapIS2_hEESt4hashIS2_ESt8equal_toIS2_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !251
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_hES3_IKS2_hENS0_16ItemInterfaceMapIS2_hEESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS5_.exit

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_hES3_IKS2_hENS0_16ItemInterfaceMapIS2_hEESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS5_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.x = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = load ptr, ptr %1, align 8                ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ab = lshr i64 %i.aa, 4
  %i.ac = lshr i64 %i.aa, 9
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = load ptr, ptr %0, align 8, !tbaa !244   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !211 ; 2 uses
  %.02131.i5 = and i64 %i.ad, %i.y                ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i5 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !211 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_hES3_IKS2_hENS0_16ItemInterfaceMapIS2_hEESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS5_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_hES3_IKS2_hENS0_16ItemInterfaceMapIS2_hEESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS5_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_hES3_IKS2_hENS0_16ItemInterfaceMapIS2_hEESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS5_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_hES3_IKS2_hENS0_16ItemInterfaceMapIS2_hEESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS5_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
  store i64 %i.aa, ptr %.lcssa, align 8, !tbaa !55
  %i.al = load i64, ptr %i.a, align 8, !tbaa !633
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !633
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_hES3_IKS2_hENS0_16ItemInterfaceMapIS2_hEESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS5_.exit

.lr.ph:                                           ; preds = %.lr.ph26
  %i.an = icmp eq ptr %i.ar, %i.z
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_hES3_IKS2_hENS0_16ItemInterfaceMapIS2_hEESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS5_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i625 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i724 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i5, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i625, 1                 ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i724
  %.not.i3 = icmp ule i64 %i.ao, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02131.i = and i64 %i.ap, %i.y                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !211 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_hES3_IKS2_hENS0_16ItemInterfaceMapIS2_hEESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS5_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  ret ptr %i.au
}

declare void @_ZN4Luau12buildTypeMapERNS_12DenseHashMapIPNS_15AstExprFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16DenseHashPointerESt8equal_toIS2_EEERNS0_IPNS_8AstLocalE16LuauBytecodeTypeS9_SA_ISF_EEERNS0_IPNS_7AstExprESG_S9_SA_ISL_EEEPNS_7AstNodeEPKcRKNS0_INS_7AstNameEhSt4hashIST_ESA_IST_EEERKNS_15BuiltinAstTypesERKNS0_IPNS_11AstExprCallEiS9_SA_IS14_EEERKNS0_IST_NS_7Compile6GlobalESV_SW_EEPFiSS_SS_ERNS_15BytecodeBuilderE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(720), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(1048)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4Luau8Compiler15compileFunctionEPNS_15AstExprFunctionERh(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::Compiler::ConstUpvalueVisitor", align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.std::vector.116", align 8   ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"struct.Luau::Compiler::ReturnVisitor", align 8 ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !218
  %i.b = load i8, ptr @_ZN5FFlag21LuauExportValueSyntaxE, align 8, !tbaa !91, !range !86, !noundef !87
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNK4Luau8Compiler10atTopLevelEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1560
  store ptr %1, ptr %i.d, align 8, !tbaa !252
  %i.e = load i8, ptr @_ZN5FFlag23LuauOptimizeExportTableE, align 8, !tbaa !91, !range !86, !noundef !87
  %i.f = trunc nuw i8 %i.e to i1
  %.not.i = icmp ne ptr %1, null
  %or.cond.not = and i1 %.not.i, %i.f
  br i1 %or.cond.not, label %bb.c, label %_ZNK4Luau8Compiler10atTopLevelEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.h = load i64, ptr %i.g, align 8, !tbaa !263
  %i.i = icmp eq i64 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, 0
  %or.cond.i = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond.i, label %_ZNK4Luau8Compiler10atTopLevelEv.exit, label %_ZNK4Luau8Compiler10atTopLevelEv.exit.thread

_ZNK4Luau8Compiler10atTopLevelEv.exit:            ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !264
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !264
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.d, label %_ZNK4Luau8Compiler10atTopLevelEv.exit.thread

bb.d:                                             ; preds = %_ZNK4Luau8Compiler10atTopLevelEv.exit
  tail call void @_ZN4Luau8Compiler21buildExportTableShapeEv(ptr noundef nonnull align 8 dereferenceable(1904) %0)
  br label %_ZNK4Luau8Compiler10atTopLevelEv.exit.thread

_ZNK4Luau8Compiler10atTopLevelEv.exit.thread:     ; preds = %bb.c, %bb.a, %bb.d, %_ZNK4Luau8Compiler10atTopLevelEv.exit, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1532 ; 7 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !220  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !637
  %i.v = icmp ne ptr %i.u, null                   ; 3 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.x = zext i1 %i.v to i64                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 6 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !267
  %i.aa = add i64 %i.z, %i.x
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !268, !range !86, !noundef !87
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = invoke noundef i32 @_ZN4Luau15BytecodeBuilder13beginFunctionEhb(ptr noundef nonnull align 8 dereferenceable(1048) %i.w, i8 noundef zeroext %i.ab, i1 noundef zeroext %i.ae)
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %_ZNK4Luau8Compiler10atTopLevelEv.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !269
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %_ZN4Luau8Compiler12setDebugLineEPNS_7AstNodeE.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !270
  %i.am = add i32 %i.al, 1
  invoke void @_ZN4Luau15BytecodeBuilder12setDebugLineEi(ptr noundef nonnull align 8 dereferenceable(1048) %i.aj, i32 noundef %i.am)
          to label %_ZN4Luau8Compiler12setDebugLineEPNS_7AstNodeE.exit unwind label %bb.h

_ZN4Luau8Compiler12setDebugLineEPNS_7AstNodeE.exit: ; preds = %bb.e, %bb.f
  %i.an = load i8, ptr %i.ac, align 8, !tbaa !268, !range !86, !noundef !87
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN4Luau8Compiler12setDebugLineEPNS_7AstNodeE.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.aq = load i64, ptr %i.y, align 8, !tbaa !267
  %i.ar = add i64 %i.aq, %i.x
  %i.as = trunc i64 %i.ar to i8
  invoke void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.ap, i32 noundef 65, i8 noundef zeroext %i.as, i8 noundef zeroext 0, i8 noundef zeroext 0)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZNK4Luau8Compiler10atTopLevelEv.exit.thread
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g, %_ZN4Luau8Compiler12setDebugLineEPNS_7AstNodeE.exit
  %i.au = zext i1 %i.v to i32
  %i.av = load i64, ptr %i.y, align 8, !tbaa !267 ; 2 uses
  %i.aw = trunc i64 %i.av to i32
  %i.ax = add i32 %i.aw, %i.au                    ; 2 uses
  %i.ay = load i32, ptr %i.r, align 4, !tbaa !220 ; 2 uses
  %i.az = add i32 %i.ax, %i.ay                    ; 3 uses
  %i.ba = icmp ugt i32 %i.az, 255
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 12
  invoke void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.bb, ptr noundef nonnull @.str.135, i32 noundef %i.ax, i32 noundef 255) #28
          to label %.noexc92 unwind label %bb.m

.noexc92:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  store i32 %i.az, ptr %i.r, align 4, !tbaa !220
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 7 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !40
  %i.be = tail call i32 @llvm.umax.i32(i32 %i.bd, i32 %i.az)
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !221
  %7 = trunc i32 %i.ay to i8                      ; 2 uses
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !637 ; 2 uses
  %.not = icmp eq ptr %i.bf, null
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4Luau8Compiler9pushLocalEPNS_8AstLocalEhj(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef nonnull %i.bf, i8 noundef zeroext %7, i32 noundef -1)
          to label %._crit_edge234 unwind label %bb.m

._crit_edge234:                                   ; preds = %bb.l
  %.pre = load i64, ptr %i.y, align 8, !tbaa !267
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.l
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %._crit_edge234, %bb.k
  %i.bh = phi i64 [ %.pre, %._crit_edge234 ], [ %i.av, %bb.k ]
  %.not215 = icmp eq i64 %i.bh, 0
  br i1 %.not215, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %8 = zext i1 %i.v to i8
  %9 = add i8 %7, %8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.p
  %.068204 = phi i64 [ 0, %.lr.ph ], [ %i.bm, %bb.p ] ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !271
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.068204
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !272
  %10 = trunc i64 %.068204 to i8
  %11 = add i8 %9, %10
  invoke void @_ZN4Luau8Compiler9pushLocalEPNS_8AstLocalEhj(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.bl, i8 noundef zeroext %11, i32 noundef -1)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bm = add nuw i64 %.068204, 1                 ; 2 uses
  %i.bn = load i64, ptr %i.y, align 8, !tbaa !267
  %i.bo = icmp ult i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.o, label %._crit_edge, !llvm.loop !634

bb.q:                                             ; preds = %bb.o
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge:                                      ; preds = %bb.p, %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !229
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !228
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 2 uses
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !222
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !273 ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 3 uses
  store ptr %1, ptr %i.cb, align 8, !tbaa !252
  %i.cc = load i8, ptr @_ZN5FFlag27DebugLuauUserDefinedClassesE, align 8, !tbaa !91, !range !86, !noundef !87
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.r, label %_ZN4Luau8Compiler25preallocateHoistedClassesEPNS_12AstStatBlockE.exit

bb.r:                                             ; preds = %._crit_edge
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !263
  %i.cg = icmp eq i64 %i.cf, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = icmp eq i64 %i.ci, 0
  %or.cond.i94 = select i1 %i.cg, i1 %i.cj, i1 false
  br i1 %or.cond.i94, label %_ZNK4Luau8Compiler10atTopLevelEv.exit95, label %_ZN4Luau8Compiler25preallocateHoistedClassesEPNS_12AstStatBlockE.exit

_ZNK4Luau8Compiler10atTopLevelEv.exit95:          ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !264
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !264
  %i.co = icmp eq ptr %i.cl, %i.cn
  br i1 %i.co, label %bb.s, label %_ZN4Luau8Compiler25preallocateHoistedClassesEPNS_12AstStatBlockE.exit

bb.s:                                             ; preds = %_ZNK4Luau8Compiler10atTopLevelEv.exit95
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !638 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !639 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.cs, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx.i
  %.not16.i = icmp eq i64 %i.cs, 0
  br i1 %.not16.i, label %_ZN4Luau8Compiler25preallocateHoistedClassesEPNS_12AstStatBlockE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s
  %.pre19.i = load i32, ptr @_ZN4Luau7AstRttiINS_12AstStatClassEE5valueE, align 4, !tbaa !40
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph.i
  %i.cu = phi i32 [ %.pre19.i, %.lr.ph.i ], [ %i.dj, %bb.w ] ; 2 uses
  %.017.i = phi ptr [ %i.cq, %.lr.ph.i ], [ %i.dk, %bb.w ] ; 2 uses
  %i.cv = load ptr, ptr %.017.i, align 8, !tbaa !277 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !278
  %i.cy = icmp ne i32 %i.cx, %i.cu
  %.not1415.i = icmp eq ptr %i.cv, null
  %.not14.i = or i1 %.not1415.i, %i.cy
  br i1 %.not14.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = load i32, ptr %i.r, align 4, !tbaa !220 ; 2 uses
  %i.da = add i32 %i.cz, 1                        ; 3 uses
  %i.db = icmp ugt i32 %i.da, 255
  br i1 %i.db, label %bb.v, label %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  invoke void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.dc, ptr noundef nonnull @.str.135, i32 noundef 1, i32 noundef 255) #28
          to label %.noexc97 unwind label %.loopexit.split-lp

.noexc97:                                         ; preds = %bb.v
  unreachable

_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i: ; preds = %bb.u
  store i32 %i.da, ptr %i.r, align 4, !tbaa !220
  %i.dd = load i32, ptr %i.bc, align 8, !tbaa !40
  %i.de = tail call i32 @llvm.umax.i32(i32 %i.dd, i32 %i.da)
  store i32 %i.de, ptr %i.bc, align 8, !tbaa !221
  %i.df = trunc i32 %i.cz to i8                   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !283
  invoke void @_ZN4Luau8Compiler9pushLocalEPNS_8AstLocalEhj(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.dh, i8 noundef zeroext %i.df, i32 noundef -1)
          to label %.noexc98 unwind label %.loopexit183

.noexc98:                                         ; preds = %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i
  %i.di = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  invoke void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.di, i32 noundef 2, i8 noundef zeroext %i.df, i8 noundef zeroext 0, i8 noundef zeroext 0)
          to label %.noexc99 unwind label %.loopexit183

.noexc99:                                         ; preds = %.noexc98
  %.pre.i = load i32, ptr @_ZN4Luau7AstRttiINS_12AstStatClassEE5valueE, align 4, !tbaa !40
  br label %bb.w

bb.w:                                             ; preds = %.noexc99, %bb.t
  %i.dj = phi i32 [ %.pre.i, %.noexc99 ], [ %i.cu, %bb.t ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.017.i, i64 8 ; 2 uses
  %.not.i96 = icmp eq ptr %i.dk, %i.ct
  br i1 %.not.i96, label %_ZN4Luau8Compiler25preallocateHoistedClassesEPNS_12AstStatBlockE.exit, label %bb.t

.loopexit183:                                     ; preds = %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i, %.noexc98
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %._crit_edge.thread.i.invoke, %_ZN4Luau8Compiler11closeLocalsEm.exit.invoke, %bb.ae, %bb.aw, %bb.az, %bb.bo, %bb.bp, %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.bs, %bb.bu, %bb.ci, %bb.v, %bb.ac, %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN4Luau8Compiler25preallocateHoistedClassesEPNS_12AstStatBlockE.exit: ; preds = %bb.w, %bb.r, %bb.s, %_ZNK4Luau8Compiler10atTopLevelEv.exit95, %._crit_edge
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ca, i64 40 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !285
  %.not216 = icmp eq i64 %i.dm, 0
  br i1 %.not216, label %._crit_edge207.thread, label %.lr.ph206

.lr.ph206:                                        ; preds = %_ZN4Luau8Compiler25preallocateHoistedClassesEPNS_12AstStatBlockE.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.y

bb.x:                                             ; preds = %_ZNK4Luau8Compiler16alwaysTerminatesEPNS_7AstStatE.exit
  %i.dp = add nuw i64 %.070205, 1                 ; 2 uses
  %i.dq = load i64, ptr %i.dl, align 8, !tbaa !285
  %i.dr = icmp ult i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.y, label %._crit_edge207, !llvm.loop !635

bb.y:                                             ; preds = %.lr.ph206, %bb.x
  %.070205 = phi i64 [ 0, %.lr.ph206 ], [ %i.dp, %bb.x ] ; 2 uses
  %i.ds = load ptr, ptr %i.dn, align 8, !tbaa !286
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.070205
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !277 ; 2 uses
  invoke void @_ZN4Luau8Compiler11compileStatEPNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.du)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dv = invoke noundef zeroext i1 @_ZN4Luau7Compile16alwaysTerminatesERKNS_12DenseHashMapIPNS_7AstExprENS0_8ConstantENS_16DenseHashPointerESt8equal_toIS3_EEEPNS_7AstStatE(ptr noundef nonnull align 8 dereferenceable(40) %i.do, ptr noundef %i.du)
          to label %_ZNK4Luau8Compiler16alwaysTerminatesEPNS_7AstStatE.exit unwind label %bb.aa ; 3 uses

_ZNK4Luau8Compiler16alwaysTerminatesEPNS_7AstStatE.exit: ; preds = %bb.z
  br i1 %i.dv, label %._crit_edge207, label %bb.x

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge207:                                   ; preds = %_ZNK4Luau8Compiler16alwaysTerminatesEPNS_7AstStatE.exit, %bb.x
  %i.dx = load i8, ptr @_ZN5FFlag21LuauExportValueSyntaxE, align 8, !tbaa !91, !range !86, !noundef !87
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.ab, label %bb.ai

._crit_edge207.thread:                            ; preds = %_ZN4Luau8Compiler25preallocateHoistedClassesEPNS_12AstStatBlockE.exit
  %i.dz = load i8, ptr @_ZN5FFlag21LuauExportValueSyntaxE, align 8, !tbaa !91, !range !86, !noundef !87
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %._crit_edge207.thread, %._crit_edge207
  %.lcssa197290 = phi i1 [ false, %._crit_edge207.thread ], [ %i.dv, %._crit_edge207 ]
  %i.eb = load i32, ptr %i.ag, align 4, !tbaa !269
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %bb.ac, label %_ZN4Luau8Compiler15setDebugLineEndEPNS_7AstNodeE.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ed = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !287
  %i.eg = add i32 %i.ef, 1
  invoke void @_ZN4Luau15BytecodeBuilder12setDebugLineEi(ptr noundef nonnull align 8 dereferenceable(1048) %i.ed, i32 noundef %i.eg)
          to label %_ZN4Luau8Compiler15setDebugLineEndEPNS_7AstNodeE.exit unwind label %.loopexit.split-lp

_ZN4Luau8Compiler15setDebugLineEndEPNS_7AstNodeE.exit: ; preds = %bb.ab, %bb.ac
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1900
  %i.ei = load i8, ptr %i.eh, align 4, !tbaa !226, !range !86, !noundef !87
  %i.ej = trunc nuw i8 %i.ei to i1
  %.not.i102 = xor i1 %i.ej, true
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = icmp eq i64 %i.el, 0
  %or.cond.i103 = select i1 %.not.i102, i1 %i.em, i1 false
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = icmp eq i64 %i.eo, 0
  %or.cond7.i = select i1 %or.cond.i103, i1 %i.ep, i1 false
end_hunk_0
begin_hunk_1_@_ZN4Luau8Compiler17compileStatReturnEPNS_13AstStatReturnE:bb.a
  %.01828.i.i14.i = phi i64 [ %i.bw, %.lr.ph.i ], [ 0, %bb.t ]
  %i.bw = add i64 %.01828.i.i14.i, 1              ; 3 uses
  %i.bx = add i64 %i.bw, %.01929.i.i15.i
  %.not.i.i.i = icmp ule i64 %i.bw, %i.bk
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %.01929.i.i.i = and i64 %i.bx, %i.bk            ; 2 uses
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.01929.i.i.i ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !272
  %i.ca = icmp eq ptr %i.bz, %i.bn
  br i1 %i.ca, label %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_8Compiler5LocalENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.i, label %.lr.ph.i

_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_8Compiler5LocalENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.i: ; preds = %.lr.ph.i, %bb.t
  %.lcssa.i = phi ptr [ %i.bt, %bb.t ], [ %i.by, %.lr.ph.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 10
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !291, !range !86, !noundef !87
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %.thread.i, label %bb.u

bb.u:                                             ; preds = %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_8Compiler5LocalENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.i
  %i.ce = add nuw i64 %.018.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ce, %i.be
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.t, !llvm.loop !1

.thread.i:                                        ; preds = %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_8Compiler5LocalENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !41
  %.sroa.speculated.i = tail call i8 @llvm.umin.i8(i8 %i.cg, i8 %.01116.ph.i) ; 2 uses
  %i.ch = add nuw i64 %.018.i, 1                  ; 2 uses
  %exitcond.not29.i = icmp eq i64 %i.ch, %i.be
  br i1 %exitcond.not29.i, label %._crit_edge.thread.i, label %.outer.i, !llvm.loop !1

._crit_edge.thread.i:                             ; preds = %.thread.i, %._crit_edge.i
  %.1123034.i = phi i8 [ %.01116.ph.i, %._crit_edge.i ], [ %.sroa.speculated.i, %.thread.i ]
  %i.ci = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  invoke void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.ci, i32 noundef 11, i8 noundef zeroext %.1123034.i, i8 noundef zeroext 0, i8 noundef zeroext 0)
          to label %_ZN4Luau8Compiler11closeLocalsEm.exit unwind label %bb.n

_ZN4Luau8Compiler11closeLocalsEm.exit:            ; preds = %._crit_edge.i, %.loopexit, %._crit_edge.thread.i
  br i1 %.2, label %.thread67, label %bb.v

.thread67:                                        ; preds = %_ZN4Luau8Compiler11closeLocalsEm.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1553
  store i8 1, ptr %i.cj, align 1, !tbaa !224
  br label %bb.w

bb.v:                                             ; preds = %_ZN4Luau8Compiler11closeLocalsEm.exit
  %i.ck = load i64, ptr %i.b, align 8, !tbaa !468
  %i.cl = trunc i64 %i.ck to i8
  %i.cm = add i8 %i.cl, 1
  br label %bb.w

bb.w:                                             ; preds = %.thread67, %bb.v
  %i.cn = phi i8 [ %i.cm, %bb.v ], [ 0, %.thread67 ]
  %i.co = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  invoke void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.co, i32 noundef 22, i8 noundef zeroext %.145, i8 noundef zeroext %i.cn, i8 noundef zeroext 0)
          to label %bb.x unwind label %bb.n

bb.x:                                             ; preds = %bb.w
  store i32 %i.g, ptr %i.f, align 4, !tbaa !220
  ret void

.body:                                            ; preds = %bb.p, %bb.r, %bb.h, %bb.k, %bb.n
  %.pn52 = phi { ptr, i32 } [ %i.ag, %bb.n ], [ %i.o, %bb.h ], [ %i.v, %bb.k ], [ %i.aq, %bb.p ], [ %i.au, %bb.r ]
  store i32 %i.g, ptr %i.f, align 4, !tbaa !220
  resume { ptr, i32 } %.pn52
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Compiler15compileExprCallEPNS_11AstExprCallEhhbb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !269
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4Luau8Compiler12setDebugLineEPNS_7AstNodeE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !270
  %i.g = add i32 %i.f, 1
  tail call void @_ZN4Luau15BytecodeBuilder12setDebugLineEi(ptr noundef nonnull align 8 dereferenceable(1048) %i.d, i32 noundef %i.g)
  br label %_ZN4Luau8Compiler12setDebugLineEPNS_7AstNodeE.exit

_ZN4Luau8Compiler12setDebugLineEPNS_7AstNodeE.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !292
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %.thread339

bb.c:                                             ; preds = %_ZN4Luau8Compiler12setDebugLineEPNS_7AstNodeE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load i8, ptr %i.k, align 8, !tbaa !723, !range !86, !noundef !87
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.thread339, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !471
  %i.p = tail call noundef ptr @_ZN4Luau8Compiler15getFunctionExprEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.o) ; 7 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.thread339, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.s = load i64, ptr %i.r, align 8, !tbaa !443
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.thread330, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !218  ; 2 uses
  %i.w = icmp eq ptr %i.p, %i.v
  br i1 %i.w, label %.thread330, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load i64, ptr %i.x, align 8, !tbaa !329
  %i.z = add i64 %i.y, -1                         ; 2 uses
  %i.aa = ptrtoint ptr %i.p to i64
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !328
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.pn.i.i = phi i64 [ %i.ad, %bb.g ], [ %i.ak, %bb.j ]
  %.01828.i.i = phi i64 [ 0, %bb.g ], [ %i.aj, %bb.j ]
  %.01929.i.i = and i64 %.pn.i.i, %i.z            ; 2 uses
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %i.ae, i64 %.01929.i.i ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !218 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.p
  br i1 %i.ah, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp eq ptr %i.ag, %i.v
  br i1 %i.ai, label %.thread330, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = add i64 %.01828.i.i, 1                  ; 3 uses
  %i.ak = add i64 %i.aj, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.aj, %i.z
  br i1 %.not.i.i, label %.thread330, label %bb.h, !llvm.loop !14

bb.k:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 52 ; 2 uses
  %i.am = load i8, ptr %i.al, align 4, !tbaa !312, !range !86, !noundef !87
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.l, label %.thread333

bb.l:                                             ; preds = %bb.k
  %i.ao = load i32, ptr @_ZN4FInt26LuauCompileInlineThresholdE, align 8, !tbaa !474
  %i.ap = load i32, ptr @_ZN4FInt34LuauCompileInlineThresholdMaxBoostE, align 8, !tbaa !474
  %i.aq = load i32, ptr @_ZN4FInt22LuauCompileInlineDepthE, align 8, !tbaa !474
  %i.ar = tail call noundef zeroext i1 @_ZN4Luau8Compiler21tryCompileInlinedCallEPNS_11AstExprCallEPNS_15AstExprFunctionEhhbiii(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1, ptr noundef nonnull %i.p, i8 noundef zeroext %2, i8 noundef zeroext %3, i1 noundef zeroext %5, i32 noundef %i.ao, i32 noundef %i.ap, i32 noundef %i.aq)
  br i1 %i.ar, label %bb.eb, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.pre = load i8, ptr %i.al, align 4, !tbaa !312, !range !86
  %i.as = trunc nuw i8 %.pre to i1
  br i1 %i.as, label %.thread339, label %.thread333

.thread330:                                       ; preds = %bb.j, %bb.i, %bb.f, %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.au = load i8, ptr %i.at, align 8, !tbaa !268, !range !86, !noundef !87
  %i.av = trunc nuw i8 %i.au to i1
  %spec.select = select i1 %i.av, ptr @.str.153, ptr @.str.154
  br label %.thread339.sink.split

.thread333:                                       ; preds = %bb.k, %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !268, !range !86, !noundef !87
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %.thread339.sink.split, label %bb.n

bb.n:                                             ; preds = %.thread333
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !308, !range !86, !noundef !87
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %.thread339.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1577
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !309, !range !86, !noundef !87
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %.thread339.sink.split, label %.thread339

.thread339.sink.split:                            ; preds = %.thread330, %bb.n, %bb.o, %.thread333
  %.str.154.sink = phi ptr [ @.str.155, %bb.n ], [ %spec.select, %.thread330 ], [ @.str.153, %.thread333 ], [ @.str.155, %bb.o ]
  %i.bf = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  tail call void (ptr, ptr, ...) @_ZN4Luau15BytecodeBuilder14addDebugRemarkEPKcz(ptr noundef nonnull align 8 dereferenceable(1048) %i.bf, ptr noundef nonnull %.str.154.sink)
  br label %.thread339

.thread339:                                       ; preds = %.thread339.sink.split, %bb.d, %bb.m, %bb.o, %bb.c, %_ZN4Luau8Compiler12setDebugLineEPNS_7AstNodeE.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1532 ; 17 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !220 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !723, !range !86, !noundef !87 ; 2 uses
  %narrow = add nuw nsw i8 %i.bj, 1
  %6 = zext nneg i8 %narrow to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 12 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !475
  %7 = trunc i64 %i.bl to i32
  %8 = add i32 %7, %6
  %i.bm = zext i8 %3 to i32                       ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %8, i32 %i.bm) ; 3 uses
  br i1 %4, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.thread339
  %i.bn = sub i32 %.sroa.speculated, %i.bm        ; 2 uses
  %i.bo = add i32 %i.bn, %i.bh                    ; 3 uses
  %i.bp = icmp ugt i32 %i.bo, 255
  br i1 %i.bp, label %.invoke, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.bo, ptr %i.bg, align 4, !tbaa !220
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !40
  %i.bs = tail call i32 @llvm.umax.i32(i32 %i.br, i32 %i.bo)
  store i32 %i.bs, ptr %i.bq, align 8, !tbaa !221
  %i.bt = trunc i32 %i.bh to i8
  %i.bu = sub i8 %i.bt, %3
  br label %bb.s

bb.r:                                             ; preds = %.thread339
  %i.bv = add i32 %.sroa.speculated, %i.bh        ; 3 uses
  %i.bw = icmp ugt i32 %i.bv, 255
  br i1 %i.bw, label %.invoke, label %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit226

.invoke:                                          ; preds = %bb.r, %bb.p
  %i.bx = phi i32 [ %i.bn, %bb.p ], [ %.sroa.speculated, %bb.r ]
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 12
  invoke void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.by, ptr noundef nonnull @.str.135, i32 noundef %i.bx, i32 noundef 255) #28
          to label %.cont unwind label %bb.aa

.cont:                                            ; preds = %.invoke
  unreachable

_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit226: ; preds = %bb.r
  store i32 %i.bv, ptr %i.bg, align 4, !tbaa !220
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !40
  %i.cb = tail call i32 @llvm.umax.i32(i32 %i.ca, i32 %i.bv)
  store i32 %i.cb, ptr %i.bz, align 8, !tbaa !221
  %i.cc = trunc i32 %i.bh to i8
  br label %bb.s

bb.s:                                             ; preds = %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit226, %bb.q
  %i.cd = phi i8 [ %i.bu, %bb.q ], [ %i.cc, %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit226 ] ; 15 uses
  %i.ce = load i32, ptr %i.h, align 8, !tbaa !292
  %i.cf = icmp slt i32 %i.ce, 1
  %i.cg = trunc nuw i8 %i.bj to i1
  %or.cond375 = or i1 %i.cf, %i.cg
  br i1 %or.cond375, label %.critedge220, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !476
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %.critedge220, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !477 ; 2 uses
  %i.cn = icmp eq ptr %1, %i.cm
  br i1 %i.cn, label %.critedge220, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !478
  %i.cq = add i64 %i.cp, -1                       ; 2 uses
  %i.cr = ptrtoint ptr %1 to i64
  %i.cs = mul i64 %i.cr, -4658895280553007687     ; 2 uses
  %i.ct = lshr i64 %i.cs, 31
  %i.cu = xor i64 %i.ct, %i.cs
  %i.cv = load ptr, ptr %i.ch, align 8, !tbaa !240
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %bb.v
  %.pn.i.i227 = phi i64 [ %i.cu, %bb.v ], [ %i.db, %bb.y ]
  %.01828.i.i228 = phi i64 [ 0, %bb.v ], [ %i.da, %bb.y ]
  %.01929.i.i229 = and i64 %.pn.i.i227, %i.cq     ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %.01929.i.i229 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !477 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %1
  br i1 %i.cy, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cz = icmp eq ptr %i.cx, %i.cm
  br i1 %i.cz, label %.critedge220, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.da = add i64 %.01828.i.i228, 1               ; 3 uses
  %i.db = add i64 %i.da, %.01929.i.i229
  %.not.i.i230 = icmp ugt i64 %i.da, %i.cq
  br i1 %.not.i.i230, label %.critedge220, label %bb.w, !llvm.loop !18

bb.z:                                             ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !40 ; 6 uses
  %.not192 = icmp eq i32 %i.dd, 0
  br i1 %.not192, label %.critedge220, label %bb.ab

bb.aa:                                            ; preds = %.invoke
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.ab:                                            ; preds = %bb.z
  %i.df = icmp sgt i32 %i.dd, -1
  br i1 %i.df, label %bb.ac, label %.critedge220

bb.ac:                                            ; preds = %bb.ab
  %i.dg = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 944
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !775
  %i.dj = and i32 %i.di, 16
  %.not376 = icmp eq i32 %i.dj, 0
  br i1 %.not376, label %bb.an, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !471
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.do = invoke { ptr, ptr } @_ZN4Luau7Compile10getBuiltinEPNS_7AstExprERKNS_12DenseHashMapINS_7AstNameENS0_6GlobalESt4hashIS4_ESt8equal_toIS4_EEERKNS3_IPNS_8AstLocalENS0_8VariableENS_16DenseHashPointerES8_ISE_EEE(ptr noundef %i.dl, ptr noundef nonnull align 8 dereferenceable(40) %i.dm, ptr noundef nonnull align 8 dereferenceable(40) %i.dn)
          to label %bb.ae unwind label %bb.aj     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.dp = extractvalue { ptr, ptr } %i.do, 0      ; 2 uses
  %i.dq = extractvalue { ptr, ptr } %i.do, 1      ; 3 uses
  %i.dr = load i64, ptr %i.bk, align 8, !tbaa !475 ; 2 uses
  %.not193 = icmp eq i64 %i.dr, 0
  br i1 %.not193, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !482
  %i.du = getelementptr [8 x i8], ptr %i.dt, i64 %i.dr
  %i.dv = getelementptr i8, ptr %i.du, i64 -8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !447
  %i.dx = invoke noundef zeroext i1 @_ZN4Luau8Compiler13isExprMultRetEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.dw)
          to label %bb.ag unwind label %bb.ak

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dy = phi i1 [ false, %bb.ae ], [ %i.dx, %bb.af ] ; 2 uses
  %.not194 = icmp eq ptr %i.dp, null
  br i1 %.not194, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dz = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.ea = load i64, ptr %i.bk, align 8, !tbaa !475
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = select i1 %i.dy, ptr @.str.157, ptr @.str.145
  invoke void (ptr, ptr, ...) @_ZN4Luau15BytecodeBuilder14addDebugRemarkEPKcz(ptr noundef nonnull align 8 dereferenceable(1048) %i.dz, ptr noundef nonnull @.str.156, ptr noundef nonnull %i.dp, ptr noundef %i.dq, i32 noundef %i.eb, ptr noundef nonnull %i.ec)
          to label %bb.an unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ap
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.aj:                                            ; preds = %bb.ad
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.ak:                                            ; preds = %bb.am, %bb.ah, %bb.af
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.al:                                            ; preds = %bb.ag
  %.not195 = icmp eq ptr %i.dq, null
  br i1 %.not195, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eg = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.eh = load i64, ptr %i.bk, align 8, !tbaa !475
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = select i1 %i.dy, ptr @.str.157, ptr @.str.145
  invoke void (ptr, ptr, ...) @_ZN4Luau15BytecodeBuilder14addDebugRemarkEPKcz(ptr noundef nonnull align 8 dereferenceable(1048) %i.eg, ptr noundef nonnull @.str.158, ptr noundef nonnull %i.dq, i32 noundef %i.ei, ptr noundef nonnull %i.ej)
          to label %bb.an unwind label %bb.ak

bb.an:                                            ; preds = %bb.ah, %bb.am, %bb.al, %bb.ac
  switch i32 %i.dd, label %.thread365 [
    i32 57, label %bb.ao
    i32 34, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.an
  %i.ek = icmp ne i8 %3, 1
  %or.cond.not = or i1 %i.ek, %5
  br i1 %or.cond.not, label %.critedge220, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN4Luau8Compiler23compileExprSelectVarargEPNS_11AstExprCallEhhbbh(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext 1, i1 noundef zeroext %4, i1 noundef zeroext false, i8 noundef zeroext %i.cd)
          to label %.critedge224 unwind label %bb.ai

bb.aq:                                            ; preds = %bb.an
  %i.el = load i64, ptr %i.bk, align 8, !tbaa !475 ; 2 uses
  %i.em = icmp eq i64 %i.el, 3
  br i1 %i.em, label %bb.ar, label %.loopexit
end_hunk_1
begin_hunk_2_@_ZN4Luau8Compiler15compileExprCallEPNS_11AstExprCallEhhbb:bb.a
  %i.hf = invoke noundef i32 @_ZN4Luau15BytecodeBuilder17addConstantNumberEd(ptr noundef nonnull align 8 dereferenceable(1048) %i.hd, double noundef %i.he)
          to label %bb.bk unwind label %bb.bn     ; 2 uses

bb.bk:                                            ; preds = %bb.bj
  %i.hg = icmp slt i32 %i.hf, 0
  br i1 %i.hg, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 12
  invoke void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.hh, ptr noundef nonnull @.str.134) #28
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  unreachable

bb.bn:                                            ; preds = %bb.bo, %bb.bl, %bb.bj
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.bo:                                            ; preds = %bb.bk
  invoke void @_ZN4Luau8Compiler20compileExprFastcallNEPNS_11AstExprCallEhhbbhii(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i8 noundef zeroext %i.cd, i32 noundef 59, i32 noundef %i.hf)
          to label %.critedge224 unwind label %bb.bn

.thread365:                                       ; preds = %bb.an
  %.pre423 = load i64, ptr %i.bk, align 8, !tbaa !475 ; 2 uses
  %i.hj = icmp eq i64 %.pre423, 3
  br i1 %i.hj, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.aw, %bb.av, %bb.ba, %bb.bb, %bb.bg, %bb.bh, %bb.ax, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit237, %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit247, %bb.bi, %bb.as, %bb.ar, %.thread365
  %.2174356368464 = phi i32 [ %i.dd, %.thread365 ], [ 34, %bb.ar ], [ 34, %bb.as ], [ 34, %bb.bi ], [ 34, %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit247 ], [ 34, %bb.ba ], [ 34, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit237 ], [ 34, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit ], [ 34, %bb.bg ], [ 34, %bb.ax ], [ 34, %bb.bh ], [ 34, %bb.bb ], [ 34, %bb.av ], [ 34, %bb.aw ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.bq

bb.bp:                                            ; preds = %bb.br
  %i.hl = add nuw i64 %.0167396, 1                ; 2 uses
  %i.hm = icmp ult i64 %i.hl, %.pre424.pre
  br i1 %i.hm, label %bb.bq, label %.loopexit, !llvm.loop !720

bb.bq:                                            ; preds = %.lr.ph, %bb.bp
  %.0167396 = phi i64 [ 0, %.lr.ph ], [ %i.hl, %bb.bp ] ; 2 uses
  %i.hn = load ptr, ptr %i.hk, align 8, !tbaa !482
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.0167396
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !447
  %i.hq = invoke noundef i32 @_ZN4Luau8Compiler15getExprLocalRegEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.hp)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.hr = icmp slt i32 %i.hq, 0
  %.pre424.pre = load i64, ptr %i.bk, align 8, !tbaa !475 ; 3 uses
  br i1 %i.hr, label %bb.bp, label %.loopexit

bb.bs:                                            ; preds = %bb.bq
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.body249

.loopexit:                                        ; preds = %bb.bp, %bb.br, %bb.aq, %.thread365
  %.2174356368463 = phi i32 [ %i.dd, %.thread365 ], [ 34, %bb.aq ], [ %.2174356368464, %bb.br ], [ %.2174356368464, %bb.bp ] ; 6 uses
  %i.ht = phi i64 [ %.pre423, %.thread365 ], [ %i.el, %bb.aq ], [ %.pre424.pre, %bb.br ], [ %.pre424.pre, %bb.bp ] ; 2 uses
  %.3171 = phi i64 [ 2, %.thread365 ], [ 2, %bb.aq ], [ 2, %bb.bp ], [ 3, %bb.br ]
  %i.hu = add i64 %i.ht, -1
  %or.cond221.not = icmp ult i64 %i.hu, %.3171
  br i1 %or.cond221.not, label %bb.bt, label %.critedge220

bb.bt:                                            ; preds = %.loopexit
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !482
  %i.hx = getelementptr [8 x i8], ptr %i.hw, i64 %i.ht
  %i.hy = getelementptr i8, ptr %i.hx, i64 -8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !447
  %i.ia = invoke noundef zeroext i1 @_ZN4Luau8Compiler13isExprMultRetEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.hz)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.ia, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN4Luau8Compiler20compileExprFastcallNEPNS_11AstExprCallEhhbbhii(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef nonnull %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i8 noundef zeroext %i.cd, i32 noundef %.2174356368463, i32 noundef -1)
          to label %.critedge224 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bt
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.bx:                                            ; preds = %bb.bu
  %i.ic = load i32, ptr %i.h, align 8, !tbaa !292
  %i.id = icmp sgt i32 %i.ic, 1
  br i1 %i.id, label %bb.by, label %.critedge220

bb.by:                                            ; preds = %bb.bx
  %i.ie = invoke { i64, i32 } @_ZN4Luau7Compile14getBuiltinInfoEi(i32 noundef %.2174356368463)
          to label %bb.bz unwind label %bb.cb     ; 2 uses

bb.bz:                                            ; preds = %bb.by
  %.fca.0.extract = extractvalue { i64, i32 } %i.ie, 0
  %i.if = load i64, ptr %i.bk, align 8, !tbaa !475
  %i.ig = trunc i64 %i.if to i32
  %.sroa.046.0.extract.trunc = trunc i64 %.fca.0.extract to i32
  %i.ih = icmp ne i32 %i.ig, %.sroa.046.0.extract.trunc
  %.fca.1.extract = extractvalue { i64, i32 } %i.ie, 1
  %i.ii = and i32 %.fca.1.extract, 1
  %.not200 = icmp eq i32 %i.ii, 0
  %or.cond222 = select i1 %i.ih, i1 true, i1 %.not200
  br i1 %or.cond222, label %.critedge220, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN4Luau8Compiler20compileExprFastcallNEPNS_11AstExprCallEhhbbhii(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef nonnull %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i8 noundef zeroext %i.cd, i32 noundef %.2174356368463, i32 noundef -1)
          to label %.critedge224 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.by
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %.body249

.critedge220:                                     ; preds = %bb.y, %bb.x, %bb.ao, %bb.ab, %bb.s, %bb.u, %bb.t, %bb.z, %bb.bz, %bb.bx, %.loopexit
  %i.ik = phi i1 [ false, %bb.ab ], [ true, %bb.bz ], [ true, %bb.bx ], [ true, %.loopexit ], [ false, %bb.z ], [ false, %bb.s ], [ false, %bb.ao ], [ false, %bb.t ], [ false, %bb.u ], [ false, %bb.x ], [ false, %bb.y ]
  %.2174356367 = phi i32 [ %i.dd, %bb.ab ], [ %.2174356368463, %bb.bz ], [ %.2174356368463, %bb.bx ], [ %.2174356368463, %.loopexit ], [ -1, %bb.z ], [ -1, %bb.s ], [ -1, %bb.ao ], [ -1, %bb.t ], [ -1, %bb.u ], [ -1, %bb.x ], [ -1, %bb.y ] ; 3 uses
  %i.il = load i8, ptr %i.bi, align 8, !tbaa !723, !range !86, !noundef !87
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %bb.cc, label %bb.ci

bb.cc:                                            ; preds = %.critedge220
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !471 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !278
  %i.ir = load i32, ptr @_ZN4Luau7AstRttiINS_16AstExprIndexNameEE5valueE, align 4, !tbaa !40
  %i.is = icmp eq i32 %i.iq, %i.ir
  %..i248 = select i1 %i.is, ptr %i.io, ptr null
  %i.it = getelementptr inbounds nuw i8, ptr %..i248, i64 32 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !485
  %i.iv = invoke noundef i32 @_ZN4Luau8Compiler15getExprLocalRegEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.iu)
          to label %bb.cd unwind label %bb.cf     ; 2 uses

bb.cd:                                            ; preds = %bb.cc
  %i.iw = icmp sgt i32 %i.iv, -1
  br i1 %i.iw, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.ix = trunc i32 %i.iv to i8
  br label %bb.cl

bb.cf:                                            ; preds = %bb.cc
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.cg:                                            ; preds = %bb.cd
  %i.iz = load ptr, ptr %i.it, align 8, !tbaa !485
  %i.ja = zext i8 %i.cd to i32
  %i.jb = add nuw nsw i32 %i.ja, 1
  %i.jc = load i32, ptr %i.bg, align 4, !tbaa !220 ; 2 uses
  store i32 %i.jb, ptr %i.bg, align 4, !tbaa !220
  invoke void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.iz, i8 noundef zeroext %i.cd, i1 noundef zeroext true)
          to label %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit unwind label %bb.ch, !inline_history !17

bb.ch:                                            ; preds = %bb.cg
  %i.jd = landingpad { ptr, i32 }
          cleanup
  store i32 %i.jc, ptr %i.bg, align 4, !tbaa !220
  br label %.body249

_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit: ; preds = %bb.cg
  store i32 %i.jc, ptr %i.bg, align 4, !tbaa !220
  br label %bb.cl

bb.ci:                                            ; preds = %.critedge220
  %i.je = icmp slt i32 %.2174356367, 0
  br i1 %i.je, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !471
  %i.jh = zext i8 %i.cd to i32
  %i.ji = add nuw nsw i32 %i.jh, 1
  %i.jj = load i32, ptr %i.bg, align 4, !tbaa !220 ; 2 uses
  store i32 %i.ji, ptr %i.bg, align 4, !tbaa !220
  invoke void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.jg, i8 noundef zeroext %i.cd, i1 noundef zeroext true)
          to label %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit251 unwind label %bb.ck, !inline_history !17

bb.ck:                                            ; preds = %bb.cj
  %i.jk = landingpad { ptr, i32 }
          cleanup
  store i32 %i.jj, ptr %i.bg, align 4, !tbaa !220
  br label %.body249

_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit251: ; preds = %bb.cj
  store i32 %i.jj, ptr %i.bg, align 4, !tbaa !220
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit251, %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit, %bb.ce, %bb.ci
  %.1166 = phi i8 [ 0, %bb.ci ], [ 0, %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit251 ], [ %i.ix, %bb.ce ], [ %i.cd, %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit ] ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.jm = load i64, ptr %i.bk, align 8, !tbaa !475 ; 2 uses
  %.not406 = icmp eq i64 %i.jm, 0
  br i1 %.not406, label %._crit_edge, label %.lr.ph401

.lr.ph401:                                        ; preds = %bb.cl
  %9 = add i8 %i.cd, 1
  br label %bb.cn

._crit_edge:                                      ; preds = %bb.cs, %bb.cl
  %.0152.lcssa = phi i1 [ false, %bb.cl ], [ %.1153, %bb.cs ] ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.jo = load i32, ptr %i.a, align 4, !tbaa !269
  %i.jp = icmp sgt i32 %i.jo, 0
  br i1 %i.jp, label %bb.cm, label %_ZN4Luau8Compiler15setDebugLineEndEPNS_7AstNodeE.exit

bb.cm:                                            ; preds = %._crit_edge
  %i.jq = load ptr, ptr %i.jn, align 8, !tbaa !471
  %i.jr = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 20
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !287
  %i.ju = add i32 %i.jt, 1
  invoke void @_ZN4Luau15BytecodeBuilder12setDebugLineEi(ptr noundef nonnull align 8 dereferenceable(1048) %i.jr, i32 noundef %i.ju)
          to label %_ZN4Luau8Compiler15setDebugLineEndEPNS_7AstNodeE.exit unwind label %bb.cy

bb.cn:                                            ; preds = %.lr.ph401, %bb.cs
  %i.jv = phi i64 [ %i.jm, %.lr.ph401 ], [ %i.kh, %bb.cs ]
  %.0151400 = phi i64 [ 0, %.lr.ph401 ], [ %i.jw, %bb.cs ] ; 3 uses
  %.0152399 = phi i1 [ false, %.lr.ph401 ], [ %.1153, %bb.cs ]
  %i.jw = add nuw i64 %.0151400, 1                ; 3 uses
  %i.jx = icmp eq i64 %i.jw, %i.jv
  %i.jy = load ptr, ptr %i.jl, align 8, !tbaa !482
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %.0151400
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !447 ; 2 uses
  %i.kb = load i8, ptr %i.bi, align 8, !tbaa !723, !range !86, !noundef !87
  %10 = trunc i64 %.0151400 to i8
  %11 = add i8 %9, %10
  %12 = add i8 %11, %i.kb                         ; 3 uses
  br i1 %i.jx, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.kc = invoke noundef zeroext i1 @_ZN4Luau8Compiler22compileExprTempMultRetEPNS_7AstExprEh(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.ka, i8 noundef zeroext %12)
          to label %bb.cs unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.cq:                                            ; preds = %bb.cn
  %13 = zext i8 %12 to i32
  %i.ke = add nuw nsw i32 %13, 1
  %i.kf = load i32, ptr %i.bg, align 4, !tbaa !220 ; 2 uses
  store i32 %i.ke, ptr %i.bg, align 4, !tbaa !220
  invoke void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.ka, i8 noundef zeroext %12, i1 noundef zeroext true)
          to label %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit255 unwind label %bb.cr, !inline_history !17

bb.cr:                                            ; preds = %bb.cq
  %i.kg = landingpad { ptr, i32 }
          cleanup
  store i32 %i.kf, ptr %i.bg, align 4, !tbaa !220
  br label %.body249

_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit255: ; preds = %bb.cq
  store i32 %i.kf, ptr %i.bg, align 4, !tbaa !220
  br label %bb.cs

bb.cs:                                            ; preds = %bb.co, %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit255
  %.1153 = phi i1 [ %.0152399, %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit255 ], [ %i.kc, %bb.co ] ; 2 uses
  %i.kh = load i64, ptr %i.bk, align 8, !tbaa !475 ; 2 uses
  %i.ki = icmp ult i64 %i.jw, %i.kh
  br i1 %i.ki, label %bb.cn, label %._crit_edge, !llvm.loop !721

_ZN4Luau8Compiler15setDebugLineEndEPNS_7AstNodeE.exit: ; preds = %._crit_edge, %bb.cm
  %i.kj = load i8, ptr %i.bi, align 8, !tbaa !723, !range !86, !noundef !87
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %bb.ct, label %bb.df

bb.ct:                                            ; preds = %_ZN4Luau8Compiler15setDebugLineEndEPNS_7AstNodeE.exit
  %i.kl = load ptr, ptr %i.jn, align 8, !tbaa !471 ; 4 uses
  %i.km = load i32, ptr %i.a, align 4, !tbaa !269
  %i.kn = icmp sgt i32 %i.km, 0
  %.pre426 = load ptr, ptr %0, align 8, !tbaa !265 ; 2 uses
  br i1 %i.kn, label %bb.cu, label %_ZN4Luau8Compiler12setDebugLineERKNS_8LocationE.exit

bb.cu:                                            ; preds = %bb.ct
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 48
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !352
  %i.kq = add i32 %i.kp, 1
  invoke void @_ZN4Luau15BytecodeBuilder12setDebugLineEi(ptr noundef nonnull align 8 dereferenceable(1048) %.pre426, i32 noundef %i.kq)
          to label %._ZN4Luau8Compiler12setDebugLineERKNS_8LocationE.exit_crit_edge unwind label %bb.cz

._ZN4Luau8Compiler12setDebugLineERKNS_8LocationE.exit_crit_edge: ; preds = %bb.cu
  %.pre425 = load ptr, ptr %0, align 8, !tbaa !265
  br label %_ZN4Luau8Compiler12setDebugLineERKNS_8LocationE.exit

_ZN4Luau8Compiler12setDebugLineERKNS_8LocationE.exit: ; preds = %._ZN4Luau8Compiler12setDebugLineERKNS_8LocationE.exit_crit_edge, %bb.ct
  %i.kr = phi ptr [ %.pre425, %._ZN4Luau8Compiler12setDebugLineERKNS_8LocationE.exit_crit_edge ], [ %.pre426, %bb.ct ]
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kl, i64 40
  %.sroa.024.0.copyload = load ptr, ptr %i.ks, align 8, !tbaa !55 ; 3 uses
  %i.kt = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.024.0.copyload) #27 ; 2 uses
  %i.ku = invoke noundef i32 @_ZN4Luau15BytecodeBuilder17addConstantStringENS0_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1048) %i.kr, ptr nonnull %.sroa.024.0.copyload, i64 %i.kt)
          to label %bb.cv unwind label %bb.da     ; 2 uses

bb.cv:                                            ; preds = %_ZN4Luau8Compiler12setDebugLineERKNS_8LocationE.exit
  %i.kv = icmp slt i32 %i.ku, 0
  br i1 %i.kv, label %bb.cw, label %bb.db

bb.cw:                                            ; preds = %bb.cv
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kl, i64 12
  invoke void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.kw, ptr noundef nonnull @.str.134) #28
          to label %bb.cx unwind label %bb.da

bb.cx:                                            ; preds = %bb.cw
  unreachable

bb.cy:                                            ; preds = %bb.cm
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.cz:                                            ; preds = %bb.cu
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.da:                                            ; preds = %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.cw, %_ZN4Luau8Compiler12setDebugLineERKNS_8LocationE.exit
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.db:                                            ; preds = %bb.cv
  %i.la = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.lb = invoke noundef i32 @_ZN4Luau15BytecodeBuilder13getStringHashENS0_9StringRefE(ptr nonnull %.sroa.024.0.copyload, i64 %i.kt)
          to label %bb.dc unwind label %bb.da

bb.dc:                                            ; preds = %bb.db
  %i.lc = trunc i32 %i.lb to i8
  invoke void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.la, i32 noundef 20, i8 noundef zeroext %i.cd, i8 noundef zeroext %.1166, i8 noundef zeroext %i.lc)
          to label %bb.dd unwind label %bb.da

bb.dd:                                            ; preds = %bb.dc
  %i.ld = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  invoke void @_ZN4Luau15BytecodeBuilder7emitAuxEj(ptr noundef nonnull align 8 dereferenceable(1048) %i.ld, i32 noundef %i.ku)
          to label %bb.de unwind label %bb.da

bb.de:                                            ; preds = %bb.dd
  %i.le = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !485
  %i.lg = zext i8 %.1166 to i32
  invoke void @_ZN4Luau8Compiler24hintTemporaryExprRegTypeEPNS_7AstExprEi16LuauBytecodeTypei(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.lf, i32 noundef %i.lg, i32 noundef 4, i32 noundef 2)
          to label %bb.dp unwind label %bb.da

bb.df:                                            ; preds = %_ZN4Luau8Compiler15setDebugLineEndEPNS_7AstNodeE.exit
  br i1 %i.ik, label %bb.dg, label %bb.dp

bb.dg:                                            ; preds = %bb.df
  %i.lh = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.li = invoke noundef i64 @_ZN4Luau15BytecodeBuilder9emitLabelEv(ptr noundef nonnull align 8 dereferenceable(1048) %i.lh)
          to label %bb.dh unwind label %bb.dn

bb.dh:                                            ; preds = %bb.dg
  %i.lj = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.lk = trunc i32 %.2174356367 to i8
  invoke void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.lj, i32 noundef 68, i8 noundef zeroext %i.lk, i8 noundef zeroext 0, i8 noundef zeroext 0)
          to label %bb.di unwind label %bb.dn

bb.di:                                            ; preds = %bb.dh
  %i.ll = load ptr, ptr %i.jn, align 8, !tbaa !471
  invoke void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.ll, i8 noundef zeroext %i.cd, i1 noundef zeroext true)
          to label %_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit unwind label %bb.dn, !inline_history !19

_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit: ; preds = %bb.di
  %i.lm = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.ln = invoke noundef i64 @_ZN4Luau15BytecodeBuilder9emitLabelEv(ptr noundef nonnull align 8 dereferenceable(1048) %i.lm)
          to label %bb.dj unwind label %bb.do

bb.dj:                                            ; preds = %_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit
  %i.lo = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.lp = invoke noundef zeroext i1 @_ZN4Luau15BytecodeBuilder10patchSkipCEmm(ptr noundef nonnull align 8 dereferenceable(1048) %i.lo, i64 noundef %i.li, i64 noundef %i.ln)
          to label %bb.dk unwind label %bb.do

bb.dk:                                            ; preds = %bb.dj
  br i1 %i.lp, label %bb.dp, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.lq = load ptr, ptr %i.jn, align 8, !tbaa !471
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 12
  invoke void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.lr, ptr noundef nonnull @.str.148) #28
          to label %bb.dm unwind label %bb.do

bb.dm:                                            ; preds = %bb.dl
  unreachable

bb.dn:                                            ; preds = %bb.di, %bb.dh, %bb.dg
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.do:                                            ; preds = %bb.dl, %bb.dj, %_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.dp:                                            ; preds = %bb.dk, %bb.de, %bb.df
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !252
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 152
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !263
  %i.ly = icmp eq i64 %i.lx, 0
  %or.cond8 = select i1 %i.ly, i1 true, i1 %.0152.lcssa
  %.demorgan = or i1 %5, %or.cond8
  %i.lz = load i8, ptr @_ZN5FFlag20LuauEmitCallFeedbackE, align 8, !tbaa !91, !range !86, !noundef !87
  %i.ma = trunc nuw i8 %i.lz to i1
  %i.mb = icmp slt i32 %.2174356367, 0
  %or.cond10 = and i1 %i.mb, %i.ma
  %not.or.cond10 = xor i1 %or.cond10, true
  %i.mc = select i1 %not.or.cond10, i1 true, i1 %.demorgan
  %i.md = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266 ; 2 uses
  br i1 %i.mc, label %bb.dv, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.me = invoke noundef i32 @_ZN4Luau15BytecodeBuilder9addFbSlotE16LuauFeedbackType(ptr noundef nonnull align 8 dereferenceable(1048) %i.md, i32 noundef 0)
          to label %bb.dr unwind label %bb.du

bb.dr:                                            ; preds = %bb.dq
  %i.mf = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.mg = load i8, ptr %i.bi, align 8, !tbaa !723, !range !86, !noundef !87
  %i.mh = load i64, ptr %i.bk, align 8, !tbaa !475
  %i.mi = trunc i64 %i.mh to i8
  %i.mj = add nuw nsw i8 %i.mg, 1
  %i.mk = add i8 %i.mj, %i.mi
  %i.ml = add i8 %3, 1
  invoke void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.mf, i32 noundef 87, i8 noundef zeroext %i.cd, i8 noundef zeroext %i.mk, i8 noundef zeroext %i.ml)
          to label %bb.ds unwind label %bb.du

bb.ds:                                            ; preds = %bb.dr
  %i.mm = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  invoke void @_ZN4Luau15BytecodeBuilder7emitAuxEj(ptr noundef nonnull align 8 dereferenceable(1048) %i.mm, i32 noundef %i.me)
          to label %bb.dy unwind label %bb.du

bb.dt:                                            ; preds = %bb.dx
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.du:                                            ; preds = %bb.ds, %bb.dr, %bb.dq
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.dv:                                            ; preds = %bb.dp
  br i1 %.0152.lcssa, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
end_hunk_2
begin_hunk_3_@_ZN4Luau8Compiler25compileStatCompoundAssignEPNS_21AstStatCompoundAssignE:bb.a
  unreachable

_ZN4Luau8Compiler17getConstantNumberEPNS_7AstExprE.exit: ; preds = %.noexc56
  %or.cond = icmp samesign ult i32 %i.ba, 256
  br i1 %or.cond, label %bb.t, label %_ZN4Luau8Compiler17getConstantNumberEPNS_7AstExprE.exit._ZN4Luau8Compiler17getConstantNumberEPNS_7AstExprE.exit.thread_crit_edge

_ZN4Luau8Compiler17getConstantNumberEPNS_7AstExprE.exit._ZN4Luau8Compiler17getConstantNumberEPNS_7AstExprE.exit.thread_crit_edge: ; preds = %_ZN4Luau8Compiler17getConstantNumberEPNS_7AstExprE.exit
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !810
  br label %_ZN4Luau8Compiler17getConstantNumberEPNS_7AstExprE.exit.thread

bb.t:                                             ; preds = %_ZN4Luau8Compiler17getConstantNumberEPNS_7AstExprE.exit
  %i.bd = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.be = load i32, ptr %i.s, align 8, !tbaa !809 ; 2 uses
  %i.bf = icmp ult i32 %i.be, 7
  br i1 %i.bf, label %switch.lookup, label %_ZN4Luau8Compiler16getBinaryOpArithENS_13AstExprBinary2OpEb.exit

switch.lookup:                                    ; preds = %bb.t
  %i.bg = zext nneg i32 %i.be to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4Luau8Compiler17compileExprBinaryEPNS_13AstExprBinaryEhb.2, i64 %i.bg
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN4Luau8Compiler16getBinaryOpArithENS_13AstExprBinary2OpEb.exit

_ZN4Luau8Compiler16getBinaryOpArithENS_13AstExprBinary2OpEb.exit: ; preds = %switch.lookup, %bb.t
  %.0.i58 = phi i32 [ 0, %bb.t ], [ %switch.ext, %switch.lookup ]
  %i.bh = trunc nuw i32 %i.ba to i8
  invoke void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.bd, i32 noundef %.0.i58, i8 noundef zeroext %i.r, i8 noundef zeroext %i.r, i8 noundef zeroext %i.bh)
          to label %bb.av unwind label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.r, %_ZN4Luau8Compiler16getBinaryOpArithENS_13AstExprBinary2OpEb.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

_ZN4Luau8Compiler17getConstantNumberEPNS_7AstExprE.exit.thread: ; preds = %bb.o, %bb.p, %_ZN4Luau8Compiler17getConstantNumberEPNS_7AstExprE.exit._ZN4Luau8Compiler17getConstantNumberEPNS_7AstExprE.exit.thread_crit_edge, %bb.k, %bb.l, %bb.q
  %i.bj = phi ptr [ %.pre, %_ZN4Luau8Compiler17getConstantNumberEPNS_7AstExprE.exit._ZN4Luau8Compiler17getConstantNumberEPNS_7AstExprE.exit.thread_crit_edge ], [ %i.y, %bb.q ], [ %i.y, %bb.k ], [ %i.y, %bb.l ], [ %i.y, %bb.p ], [ %i.y, %bb.o ] ; 3 uses
  %i.bk = invoke noundef i32 @_ZN4Luau8Compiler15getExprLocalRegEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.bj)
          to label %.noexc60 unwind label %bb.ag, !inline_history !486 ; 2 uses

.noexc60:                                         ; preds = %_ZN4Luau8Compiler17getConstantNumberEPNS_7AstExprE.exit.thread
  %i.bl = icmp slt i32 %i.bk, 0
  %i.bm = trunc i32 %i.bk to i8
  br i1 %i.bl, label %bb.v, label %_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit

bb.v:                                             ; preds = %.noexc60
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !220 ; 2 uses
  %i.bo = add i32 %i.bn, 1                        ; 3 uses
  %i.bp = icmp ugt i32 %i.bo, 255
  br i1 %i.bp, label %bb.w, label %.noexc61

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  invoke void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.bq, ptr noundef nonnull @.str.135, i32 noundef 1, i32 noundef 255) #28
          to label %.noexc83 unwind label %bb.ag

.noexc83:                                         ; preds = %bb.w
  unreachable

.noexc61:                                         ; preds = %bb.v
  store i32 %i.bo, ptr %i.b, align 4, !tbaa !220
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = call i32 @llvm.umax.i32(i32 %i.bs, i32 %i.bo)
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !221
  %i.bu = trunc i32 %i.bn to i8                   ; 2 uses
  invoke void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.bj, i8 noundef zeroext %i.bu, i1 noundef zeroext true)
          to label %_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit unwind label %bb.ag, !inline_history !20

_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit: ; preds = %.noexc60, %.noexc61
  %.1.i = phi i8 [ %i.bm, %.noexc60 ], [ %i.bu, %.noexc61 ] ; 2 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.bw = load i32, ptr %i.s, align 8, !tbaa !809 ; 2 uses
  %i.bx = icmp ult i32 %i.bw, 7
  br i1 %i.bx, label %switch.lookup123, label %_ZN4Luau8Compiler16getBinaryOpArithENS_13AstExprBinary2OpEb.exit64

switch.lookup123:                                 ; preds = %_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit
  %i.by = zext nneg i32 %i.bw to i64
  %switch.gep124 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4Luau8Compiler17compileExprBinaryEPNS_13AstExprBinaryEhb.3, i64 %i.by
  %switch.load125 = load i8, ptr %switch.gep124, align 1
  %switch.ext126 = zext i8 %switch.load125 to i32
  br label %_ZN4Luau8Compiler16getBinaryOpArithENS_13AstExprBinary2OpEb.exit64

_ZN4Luau8Compiler16getBinaryOpArithENS_13AstExprBinary2OpEb.exit64: ; preds = %switch.lookup123, %_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit
  %.0.i63 = phi i32 [ 0, %_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit ], [ %switch.ext126, %switch.lookup123 ]
  invoke void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.bv, i32 noundef %.0.i63, i8 noundef zeroext %i.r, i8 noundef zeroext %i.r, i8 noundef zeroext %.1.i)
          to label %bb.x unwind label %bb.ag

bb.x:                                             ; preds = %_ZN4Luau8Compiler16getBinaryOpArithENS_13AstExprBinary2OpEb.exit64
  %i.bz = load i32, ptr %3, align 8, !tbaa !503
  %.not49 = icmp eq i32 %i.bz, 0
  br i1 %.not49, label %_ZN4Luau8Compiler20hintTemporaryRegTypeEPNS_7AstExprEi16LuauBytecodeTypei.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !808 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !512
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %_ZN4Luau8Compiler20hintTemporaryRegTypeEPNS_7AstExprEi16LuauBytecodeTypei.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !447 ; 2 uses
  %i.ch = icmp eq ptr %i.ca, %i.cg
  br i1 %i.ch, label %_ZN4Luau8Compiler20hintTemporaryRegTypeEPNS_7AstExprEi16LuauBytecodeTypei.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !513
  %i.ck = add i64 %i.cj, -1                       ; 2 uses
  %i.cl = ptrtoint ptr %i.ca to i64
  %i.cm = mul i64 %i.cl, -4658895280553007687     ; 2 uses
  %i.cn = lshr i64 %i.cm, 31
  %i.co = xor i64 %i.cn, %i.cm
  %i.cp = load ptr, ptr %i.cb, align 8, !tbaa !242
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  %.pn.i.i.i65 = phi i64 [ %i.co, %bb.aa ], [ %i.cv, %bb.ad ]
  %.01828.i.i.i66 = phi i64 [ 0, %bb.aa ], [ %i.cu, %bb.ad ]
  %.01929.i.i.i67 = and i64 %.pn.i.i.i65, %i.ck   ; 2 uses
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %.01929.i.i.i67 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !447 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.ca
  br i1 %i.cs, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = icmp eq ptr %i.cr, %i.cg
  br i1 %i.ct, label %_ZN4Luau8Compiler20hintTemporaryRegTypeEPNS_7AstExprEi16LuauBytecodeTypei.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = add i64 %.01828.i.i.i66, 1              ; 3 uses
  %i.cv = add i64 %i.cu, %.01929.i.i.i67
  %.not.i.i.i68 = icmp ugt i64 %i.cu, %i.ck
  br i1 %.not.i.i.i68, label %_ZN4Luau8Compiler20hintTemporaryRegTypeEPNS_7AstExprEi16LuauBytecodeTypei.exit, label %bb.ab, !llvm.loop !21

bb.ae:                                            ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !301 ; 2 uses
  %.not7.i = icmp eq i32 %i.cx, 2
  br i1 %.not7.i, label %_ZN4Luau8Compiler20hintTemporaryRegTypeEPNS_7AstExprEi16LuauBytecodeTypei.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266 ; 2 uses
  %i.cz = invoke noundef i32 @_ZNK4Luau15BytecodeBuilder10getDebugPCEv(ptr noundef nonnull align 8 dereferenceable(1048) %i.cy)
          to label %.noexc69 unwind label %bb.ag

.noexc69:                                         ; preds = %bb.af
  %i.da = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.db = invoke noundef i32 @_ZNK4Luau15BytecodeBuilder10getDebugPCEv(ptr noundef nonnull align 8 dereferenceable(1048) %i.da)
          to label %.noexc70 unwind label %bb.ag

.noexc70:                                         ; preds = %.noexc69
  %i.dc = add i32 %i.cz, -1
  invoke void @_ZN4Luau15BytecodeBuilder17pushLocalTypeInfoE16LuauBytecodeTypehjj(ptr noundef nonnull align 8 dereferenceable(1048) %i.cy, i32 noundef %i.cx, i8 noundef zeroext %i.r, i32 noundef %i.dc, i32 noundef %i.db)
          to label %_ZN4Luau8Compiler20hintTemporaryRegTypeEPNS_7AstExprEi16LuauBytecodeTypei.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.w, %.noexc61, %.noexc70, %.noexc69, %bb.af, %_ZN4Luau8Compiler17getConstantNumberEPNS_7AstExprE.exit.thread, %_ZN4Luau8Compiler20hintTemporaryRegTypeEPNS_7AstExprEi16LuauBytecodeTypei.exit, %_ZN4Luau8Compiler16getBinaryOpArithENS_13AstExprBinary2OpEb.exit64
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

_ZN4Luau8Compiler20hintTemporaryRegTypeEPNS_7AstExprEi16LuauBytecodeTypei.exit: ; preds = %bb.ad, %bb.ac, %bb.ae, %bb.z, %bb.y, %.noexc70, %bb.x
  %i.de = load ptr, ptr %i.x, align 8, !tbaa !810
  %i.df = zext i8 %.1.i to i32
  invoke void @_ZN4Luau8Compiler24hintTemporaryExprRegTypeEPNS_7AstExprEi16LuauBytecodeTypei(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.de, i32 noundef %i.df, i32 noundef 2, i32 noundef 1)
          to label %bb.av unwind label %bb.ag

bb.ah:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !810
  %i.di = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #31
          to label %bb.aj unwind label %bb.ai     ; 3 uses

bb.ai:                                            ; preds = %bb.ah
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aj:                                            ; preds = %bb.ah
  store ptr %i.di, ptr %4, align 8, !tbaa !515
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !516
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !447
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !517
  invoke void @_ZN4Luau8Compiler13unrollConcatsERSt6vectorIPNS_7AstExprESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !517
  %i.do = load ptr, ptr %4, align 8, !tbaa !515
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = lshr exact i64 %i.dr, 3
  %i.dt = trunc i64 %i.ds to i32
  %i.du = add i32 %i.dt, 1                        ; 2 uses
  %i.dv = load i32, ptr %i.b, align 4, !tbaa !220 ; 2 uses
  %i.dw = add i32 %i.du, %i.dv                    ; 3 uses
  %i.dx = icmp ugt i32 %i.dw, 255
  br i1 %i.dx, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 12
  invoke void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.dy, ptr noundef nonnull @.str.135, i32 noundef %i.du, i32 noundef 255) #28
          to label %.noexc72 unwind label %bb.ao

.noexc72:                                         ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak
  store i32 %i.dw, ptr %i.b, align 4, !tbaa !220
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !40
  %i.eb = call i32 @llvm.umax.i32(i32 %i.ea, i32 %i.dw)
  store i32 %i.eb, ptr %i.dz, align 8, !tbaa !221
  %i.ec = trunc i32 %i.dv to i8                   ; 4 uses
  %i.ed = load ptr, ptr %i.d, align 8, !tbaa !808
  invoke void @_ZN4Luau8Compiler16compileLValueUseERKNS0_6LValueEhbPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i8 noundef zeroext %i.ec, i1 noundef zeroext false, ptr noundef %i.ed)
          to label %.preheader unwind label %bb.ao

.preheader:                                       ; preds = %bb.am
  %i.ee = load ptr, ptr %i.dm, align 8, !tbaa !517
  %i.ef = load ptr, ptr %4, align 8, !tbaa !515   ; 2 uses
  %.not = icmp eq ptr %i.ee, %i.ef
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %5 = add i8 %i.ec, 1
  br label %bb.ap

._crit_edge.loopexit:                             ; preds = %_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit
  %i.eg = trunc i64 %i.eu to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.lcssa91 = phi i8 [ 0, %.preheader ], [ %i.eg, %._crit_edge.loopexit ]
  %i.eh = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.ei = add i8 %.lcssa91, %i.ec
  invoke void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.eh, i32 noundef 49, i8 noundef zeroext %i.r, i8 noundef zeroext %i.ec, i8 noundef zeroext %i.ei)
          to label %bb.ar unwind label %bb.ao

bb.an:                                            ; preds = %bb.aj
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ao:                                            ; preds = %bb.al, %._crit_edge, %bb.am
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ap:                                            ; preds = %.lr.ph, %_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit
  %i.el = phi ptr [ %i.ef, %.lr.ph ], [ %i.eq, %_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit ]
  %.093 = phi i64 [ 0, %.lr.ph ], [ %i.eo, %_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.093
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !447
  %6 = trunc i64 %.093 to i8
  %7 = add i8 %5, %6
  invoke void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.en, i8 noundef zeroext %7, i1 noundef zeroext true)
          to label %_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit unwind label %bb.aq, !inline_history !19

_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit: ; preds = %bb.ap
  %i.eo = add nuw i64 %.093, 1                    ; 2 uses
  %i.ep = load ptr, ptr %i.dm, align 8, !tbaa !517
  %i.eq = load ptr, ptr %4, align 8, !tbaa !515   ; 2 uses
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = ashr exact i64 %i.et, 3                 ; 2 uses
  %i.ev = icmp ult i64 %i.eo, %i.eu
  br i1 %i.ev, label %bb.ap, label %._crit_edge.loopexit, !llvm.loop !806

bb.aq:                                            ; preds = %bb.ap
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ar:                                            ; preds = %._crit_edge
  %i.ex = load ptr, ptr %4, align 8, !tbaa !515   ; 3 uses
  %.not.i.i.i75 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ey = load ptr, ptr %i.dl, align 8, !tbaa !516
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fb) #29
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit:   ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.av

bb.at:                                            ; preds = %bb.ao, %bb.aq, %bb.an
  %.pn.pn = phi { ptr, i32 } [ %i.ej, %bb.an ], [ %i.ew, %bb.aq ], [ %i.ek, %bb.ao ] ; 2 uses
  %i.fc = load ptr, ptr %4, align 8, !tbaa !515   ; 3 uses
  %.not.i.i.i77 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i77, label %.body, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fd = load ptr, ptr %i.dl, align 8, !tbaa !516
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = sub i64 %i.fe, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fg) #29
  br label %.body

.body:                                            ; preds = %bb.ai, %bb.au, %bb.at
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dj, %bb.ai ], [ %.pn.pn, %bb.au ], [ %.pn.pn, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ax

bb.av:                                            ; preds = %_ZN4Luau8Compiler16getBinaryOpArithENS_13AstExprBinary2OpEb.exit, %_ZN4Luau8Compiler20hintTemporaryRegTypeEPNS_7AstExprEi16LuauBytecodeTypei.exit, %bb.f, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EED2Ev.exit
  %i.fh = load i32, ptr %3, align 8, !tbaa !503
  %.not52 = icmp eq i32 %i.fh, 0
  br i1 %.not52, label %_ZN4Luau8Compiler13compileAssignERKNS0_6LValueEhPNS_7AstExprE.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fi = load ptr, ptr %i.d, align 8, !tbaa !808
  invoke void @_ZN4Luau8Compiler16compileLValueUseERKNS0_6LValueEhbPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i8 noundef zeroext %i.r, i1 noundef zeroext true, ptr noundef %i.fi)
          to label %_ZN4Luau8Compiler13compileAssignERKNS0_6LValueEhPNS_7AstExprE.exit unwind label %bb.h

_ZN4Luau8Compiler13compileAssignERKNS0_6LValueEhPNS_7AstExprE.exit: ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.fj = load i32, ptr %i.a, align 8, !tbaa !500
  %i.fk = load ptr, ptr %2, align 8, !tbaa !499
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 1532
  store i32 %i.fj, ptr %i.fl, align 4, !tbaa !220
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.ax:                                            ; preds = %bb.h, %.body, %bb.ag, %bb.u, %bb.g
  %.pn53.pn = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.v, %bb.h ], [ %.pn.pn.pn, %.body ], [ %i.bi, %bb.u ], [ %i.dd, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.fm = load i32, ptr %i.a, align 8, !tbaa !500
  %i.fn = load ptr, ptr %2, align 8, !tbaa !499
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 1532
  store i32 %i.fm, ptr %i.fo, align 4, !tbaa !220
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn53.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Compiler19compileStatFunctionEPNS_15AstStatFunctionE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::Compiler::RegScope", align 8 ; 8 uses
  %3 = alloca %"struct.Luau::Compiler::LValue", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !812
  %i.c = tail call noundef i32 @_ZN4Luau8Compiler15getExprLocalRegEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !813
  %i.g = trunc i32 %i.c to i8
  tail call void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.f, i8 noundef zeroext %i.g, i1 noundef zeroext false)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %0, ptr %2, align 8, !tbaa !499
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1532 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !220  ; 4 uses
  store i32 %i.j, ptr %i.h, align 8, !tbaa !500
  %i.k = add i32 %i.j, 1                          ; 3 uses
  %i.l = icmp ugt i32 %i.k, 255
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  invoke void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull @.str.135, i32 noundef 1, i32 noundef 255) #28
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  store i32 %i.k, ptr %i.i, align 4, !tbaa !220
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !40
  %i.p = tail call i32 @llvm.umax.i32(i32 %i.o, i32 %i.k)
  store i32 %i.p, ptr %i.n, align 8, !tbaa !221
  %i.q = trunc i32 %i.j to i8                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !813
  invoke void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.s, i8 noundef zeroext %i.q, i1 noundef zeroext true)
          to label %_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit unwind label %bb.h, !inline_history !19

_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !812
  invoke void @_ZN4Luau8Compiler13compileLValueEPNS_7AstExprERNS0_8RegScopeE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Compiler::LValue") align 8 %3, ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !812
  invoke void @_ZN4Luau8Compiler16compileLValueUseERKNS0_6LValueEhbPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i8 noundef zeroext %i.q, i1 noundef zeroext true, ptr noundef %i.u)
          to label %_ZN4Luau8Compiler13compileAssignERKNS0_6LValueEhPNS_7AstExprE.exit unwind label %bb.i

_ZN4Luau8Compiler13compileAssignERKNS0_6LValueEhPNS_7AstExprE.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.v = load i32, ptr %i.h, align 8, !tbaa !500
  %i.w = load ptr, ptr %2, align 8, !tbaa !499
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1532
  store i32 %i.v, ptr %i.x, align 4, !tbaa !220
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %_ZN4Luau8Compiler13compileAssignERKNS0_6LValueEhPNS_7AstExprE.exit
  ret void

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f, %_ZN4Luau8Compiler15compileExprTempEPNS_7AstExprEh.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %.pre = load i32, ptr %i.h, align 8, !tbaa !500
  %.pre19 = load ptr, ptr %2, align 8, !tbaa !499
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aa = phi ptr [ %.pre19, %bb.i ], [ %0, %bb.h ]
  %i.ab = phi i32 [ %.pre, %bb.i ], [ %i.j, %bb.h ]
  %.pn = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.y, %bb.h ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1532
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !220
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Compiler17ensureExportTableEPNS_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1728 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1900
  store i8 1, ptr %i.b, align 4, !tbaa !814
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load i64, ptr %i.d, align 8, !tbaa !439
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !272  ; 2 uses
  %i.i = icmp eq ptr %i.a, %i.h
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
end_hunk_3
begin_hunk_4_@_ZN4Luau8Compiler21tryCompileInlinedCallEPNS_11AstExprCallEPNS_15AstExprFunctionEhhbiii:bb.a
  %.4 = phi i1 [ true, %.critedge77 ], [ false, %bb.ae ], [ false, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.ai

bb.ai:                                            ; preds = %bb.l, %bb.ah, %bb.m, %bb.j, %bb.h
  %.5 = phi i1 [ false, %bb.h ], [ false, %bb.j ], [ false, %bb.m ], [ %.4, %bb.ah ], [ false, %bb.l ]
  ret i1 %.5
}

declare { ptr, ptr } @_ZN4Luau7Compile10getBuiltinEPNS_7AstExprERKNS_12DenseHashMapINS_7AstNameENS0_6GlobalESt4hashIS4_ESt8equal_toIS4_EEERKNS3_IPNS_8AstLocalENS0_8VariableENS_16DenseHashPointerES8_ISE_EEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Compiler23compileExprSelectVarargEPNS_11AstExprCallEhhbbh(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !482
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !447  ; 2 uses
  %i.d = tail call noundef i32 @_ZN4Luau8Compiler15getExprLocalRegEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.c) ; 3 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i32 %i.d to i8
  %.pre = and i32 %i.d, 255
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = add i8 %6, 1                             ; 3 uses
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = add nuw nsw i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1532 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !220  ; 2 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !220
  invoke void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.c, i8 noundef zeroext %i.g, i1 noundef zeroext true)
          to label %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit unwind label %bb.d, !inline_history !17

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  store i32 %i.k, ptr %i.j, align 4, !tbaa !220
  resume { ptr, i32 } %i.l

_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit: ; preds = %bb.c
  store i32 %i.k, ptr %i.j, align 4, !tbaa !220
  br label %bb.e

bb.e:                                             ; preds = %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit, %bb.b
  %.pre-phi = phi i32 [ %i.h, %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit ], [ %.pre, %bb.b ]
  %.029 = phi i8 [ %i.g, %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit ], [ %i.f, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.n = tail call noundef i64 @_ZN4Luau15BytecodeBuilder9emitLabelEv(ptr noundef nonnull align 8 dereferenceable(1048) %i.m)
  %i.o = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.o, i32 noundef 73, i8 noundef zeroext 57, i8 noundef zeroext %.029, i8 noundef zeroext 0)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !471
  tail call void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.q, i8 noundef zeroext %6, i1 noundef zeroext true), !inline_history !19
  %i.r = zext i8 %6 to i32
  %i.s = add nuw nsw i32 %i.r, 1                  ; 2 uses
  %.not = icmp eq i32 %i.s, %.pre-phi
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.u = trunc i32 %i.s to i8
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.t, i32 noundef 6, i8 noundef zeroext %i.u, i8 noundef zeroext %.029, i8 noundef zeroext 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.w = add i8 %6, 2
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.v, i32 noundef 63, i8 noundef zeroext %i.w, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %i.x = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.y = tail call noundef i64 @_ZN4Luau15BytecodeBuilder9emitLabelEv(ptr noundef nonnull align 8 dereferenceable(1048) %i.x)
  %i.z = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.aa = tail call noundef zeroext i1 @_ZN4Luau15BytecodeBuilder10patchSkipCEmm(ptr noundef nonnull align 8 dereferenceable(1048) %i.z, i64 noundef %i.n, i64 noundef %i.y)
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !471
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  tail call void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, ptr noundef nonnull @.str.148) #28
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.ae = add i8 %3, 1
  %i.af = select i1 %5, i8 0, i8 %i.ae
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.ad, i32 noundef 21, i8 noundef zeroext %6, i8 noundef zeroext 0, i8 noundef zeroext %i.af)
  br i1 %4, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.ag = zext i8 %3 to i64
  %.not35 = icmp eq i8 %3, 0
  br i1 %.not35, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.034 = phi i64 [ %i.al, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.ai = trunc nuw i64 %.034 to i8               ; 2 uses
  %i.aj = add i8 %2, %i.ai
  %i.ak = add i8 %6, %i.ai
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.ah, i32 noundef 6, i8 noundef zeroext %i.aj, i8 noundef zeroext %i.ak, i8 noundef zeroext 0)
  %i.al = add nuw nsw i64 %.034, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.ag
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !920

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Compiler20compileExprFastcallNEPNS_11AstExprCallEhhbbhii(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i8 noundef zeroext %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 8 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !475  ; 3 uses
  %i.e = icmp eq i64 %i.d, 1                      ; 2 uses
  br i1 %i.e, label %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %8, -1
  br i1 %i.f, label %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not90 = icmp eq i64 %i.d, 2
  br i1 %.not90, label %bb.d, label %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !482
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !447  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.l = load i64, ptr %i.k, align 8, !tbaa !446
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !447  ; 2 uses
  %i.p = icmp eq ptr %i.i, %i.o
  br i1 %i.p, label %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.r = load i64, ptr %i.q, align 8, !tbaa !448
  %i.s = add i64 %i.r, -1                         ; 2 uses
  %i.t = ptrtoint ptr %i.i to i64
  %i.u = mul i64 %i.t, -4658895280553007687       ; 2 uses
  %i.v = lshr i64 %i.u, 31
  %i.w = xor i64 %i.v, %i.u
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !248
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.pn.i.i.i = phi i64 [ %i.w, %bb.f ], [ %i.ad, %bb.i ]
  %.01828.i.i.i = phi i64 [ 0, %bb.f ], [ %i.ac, %bb.i ]
  %.01929.i.i.i = and i64 %.pn.i.i.i, %i.s        ; 2 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %.01929.i.i.i ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !447  ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.i
  br i1 %i.aa, label %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp eq ptr %i.z, %i.o
  br i1 %i.ab, label %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = add i64 %.01828.i.i.i, 1                ; 3 uses
  %i.ad = add i64 %i.ac, %.01929.i.i.i
  %.not.i.i.i = icmp ugt i64 %i.ac, %i.s
  br i1 %.not.i.i.i, label %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread, label %bb.g, !llvm.loop !15

_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !406
  %.not77 = icmp ne i32 %i.af, 0                  ; 2 uses
  %spec.select89 = select i1 %.not77, i32 75, i32 74
  br label %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread

_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread.thread: ; preds = %bb.e, %bb.d, %bb.a
  %.069.ph = phi i32 [ 74, %bb.d ], [ 74, %bb.e ], [ 73, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  br label %bb.j

_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread: ; preds = %bb.i, %bb.h, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit, %bb.c, %bb.b
  %i.ag = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit ], [ false, %bb.h ], [ false, %bb.i ] ; 2 uses
  %i.ah = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ %.not77, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit ], [ false, %bb.h ], [ false, %bb.i ] ; 2 uses
  %.069 = phi i32 [ 75, %bb.b ], [ 60, %bb.c ], [ %spec.select89, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit ], [ 74, %bb.h ], [ 74, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  %.not91 = icmp eq i64 %i.d, 0
  br i1 %.not91, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread.thread
  %.069125 = phi i32 [ %.069.ph, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread.thread ], [ %.069, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread ] ; 2 uses
  %i.ai = phi i1 [ false, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread.thread ], [ %i.ah, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread ] ; 3 uses
  %i.aj = phi i1 [ false, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread.thread ], [ %i.ag, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread ] ; 2 uses
  %9 = add i8 %6, 1                               ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1532 ; 7 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !482
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !447
  %i.an = tail call noundef i32 @_ZN4Luau8Compiler15getExprLocalRegEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.am) ; 2 uses
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %10 = zext i8 %9 to i32                         ; 3 uses
  store i32 %10, ptr %i.a, align 4, !tbaa !40
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !482
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !447
  %i.ar = add nuw nsw i32 %10, 1
  %i.as = load i32, ptr %i.ak, align 4, !tbaa !220 ; 2 uses
  store i32 %i.ar, ptr %i.ak, align 4, !tbaa !220
  invoke void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.aq, i8 noundef zeroext %9, i1 noundef zeroext true)
          to label %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit.peel unwind label %.loopexit.split-lp, !inline_history !17

_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit.peel: ; preds = %bb.k
  store i32 %i.as, ptr %i.ak, align 4, !tbaa !220
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.at = and i32 %i.an, 255                      ; 2 uses
  store i32 %i.at, ptr %i.a, align 4, !tbaa !40
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit.peel
  %i.au = phi i32 [ %10, %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit.peel ], [ %i.at, %bb.l ] ; 2 uses
  %i.av = load i64, ptr %i.c, align 8, !tbaa !475
  %i.aw = icmp ugt i64 %i.av, 1
  br i1 %i.aw, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %bb.t, %bb.m, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread
  %.069126 = phi i32 [ %.069, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread ], [ %.069125, %bb.m ], [ %.069125, %bb.t ]
  %i.ax = phi i1 [ %i.ah, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread ], [ %i.ai, %bb.m ], [ %i.ai, %bb.t ]
  %i.ay = phi i1 [ %i.ag, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread ], [ %i.aj, %bb.m ], [ %i.aj, %bb.t ]
  %i.az = phi i32 [ 0, %_ZN4Luau8Compiler10isConstantEPNS_7AstExprE.exit.thread ], [ %i.au, %bb.m ], [ %i.au, %bb.t ] ; 2 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.bb = tail call noundef i64 @_ZN4Luau15BytecodeBuilder9emitLabelEv(ptr noundef nonnull align 8 dereferenceable(1048) %i.ba)
  %i.bc = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.bd = trunc i32 %7 to i8
  %i.be = trunc nuw i32 %i.az to i8               ; 2 uses
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.bc, i32 noundef %.069126, i8 noundef zeroext %i.bd, i8 noundef zeroext %i.be, i8 noundef zeroext 0)
  br i1 %i.ay, label %bb.u, label %bb.v

.peel.next:                                       ; preds = %bb.m, %bb.t
  %.06882 = phi i64 [ %i.bx, %bb.t ], [ 1, %bb.m ] ; 7 uses
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !482
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.06882
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !447 ; 2 uses
  br i1 %i.ai, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.peel.next
  %i.bi = tail call noundef i32 @_ZN4Luau8Compiler16getConstantIndexEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.bh) ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %.loopexit100, label %bb.o

.loopexit100:                                     ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 12
  tail call void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.bk, ptr noundef nonnull @.str.134) #28
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.06882
  store i32 %i.bi, ptr %i.bl, align 4, !tbaa !40
  br label %bb.t

bb.p:                                             ; preds = %.peel.next
  %i.bm = tail call noundef i32 @_ZN4Luau8Compiler15getExprLocalRegEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.bh) ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bo = and i32 %i.bm, 255
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.06882
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !40
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.bq = trunc i64 %.06882 to i8
  %11 = add i8 %9, %i.bq                          ; 2 uses
  %12 = zext i8 %11 to i32                        ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.06882
  store i32 %12, ptr %i.br, align 4, !tbaa !40
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !482
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.06882
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !447
  %i.bv = add nuw nsw i32 %12, 1
  %i.bw = load i32, ptr %i.ak, align 4, !tbaa !220 ; 2 uses
  store i32 %i.bv, ptr %i.ak, align 4, !tbaa !220
  invoke void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.bu, i8 noundef zeroext %11, i1 noundef zeroext true)
          to label %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit unwind label %.loopexit99, !inline_history !17

.loopexit99:                                      ; preds = %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp, %.loopexit99
  %.lcssa = phi i32 [ %i.bw, %.loopexit99 ], [ %i.as, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit99 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  store i32 %.lcssa, ptr %i.ak, align 4, !tbaa !220
  resume { ptr, i32 } %lpad.phi

_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit: ; preds = %bb.r
  store i32 %i.bw, ptr %i.ak, align 4, !tbaa !220
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %_ZN4Luau8Compiler18compileExprTempTopEPNS_7AstExprEh.exit, %bb.o
  %i.bx = add nuw i64 %.06882, 1                  ; 2 uses
  %i.by = load i64, ptr %i.c, align 8, !tbaa !475
  %i.bz = icmp ult i64 %i.bx, %i.by
  br i1 %i.bz, label %.peel.next, label %._crit_edge, !llvm.loop !921

bb.u:                                             ; preds = %._crit_edge
  %i.ca = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !40
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !40
  %i.cf = shl i32 %i.ce, 8
  %i.cg = or i32 %i.cf, %i.cc
  tail call void @_ZN4Luau15BytecodeBuilder7emitAuxEj(ptr noundef nonnull align 8 dereferenceable(1048) %i.ca, i32 noundef %i.cg)
  br label %bb.x

bb.v:                                             ; preds = %._crit_edge
  br i1 %i.e, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = icmp slt i32 %8, 0
  %i.cl = select i1 %i.ck, i32 %i.cj, i32 %8
  tail call void @_ZN4Luau15BytecodeBuilder7emitAuxEj(ptr noundef nonnull align 8 dereferenceable(1048) %i.ch, i32 noundef %i.cl)
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u
  %i.cm = load i64, ptr %i.c, align 8, !tbaa !475 ; 3 uses
  %.not92 = icmp eq i64 %i.cm, 0
  br i1 %.not92, label %._crit_edge86, label %.lr.ph85

.lr.ph85:                                         ; preds = %bb.x
  %i.cn = zext i8 %6 to i64
  %i.co = add nuw nsw i64 %i.cn, 1                ; 3 uses
  %13 = add i8 %6, 1
  br i1 %i.ax, label %.lr.ph85.split.preheader, label %.lr.ph85.split.us

.lr.ph85.split.preheader:                         ; preds = %.lr.ph85
  %i.cp = zext nneg i32 %i.az to i64
  %.not.peel = icmp eq i64 %i.co, %i.cp
  br i1 %.not.peel, label %_ZN4Luau8Compiler9emitLoadKEhi.exit.peel, label %bb.y

bb.y:                                             ; preds = %.lr.ph85.split.preheader
  %i.cq = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.cr = trunc i64 %i.co to i8
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.cq, i32 noundef 6, i8 noundef zeroext %i.cr, i8 noundef zeroext %i.be, i8 noundef zeroext 0)
  %.pre103 = load i64, ptr %i.c, align 8, !tbaa !475
  br label %_ZN4Luau8Compiler9emitLoadKEhi.exit.peel

_ZN4Luau8Compiler9emitLoadKEhi.exit.peel:         ; preds = %bb.y, %.lr.ph85.split.preheader
  %i.cs = phi i64 [ %.pre103, %bb.y ], [ %i.cm, %.lr.ph85.split.preheader ]
  %i.ct = icmp ugt i64 %i.cs, 1
  br i1 %i.ct, label %.lr.ph85.split.peel.next, label %._crit_edge86

.lr.ph85.split.us:                                ; preds = %.lr.ph85, %_ZN4Luau8Compiler9emitLoadKEhi.exit.us
  %i.cu = phi i64 [ %i.dc, %_ZN4Luau8Compiler9emitLoadKEhi.exit.us ], [ %i.cm, %.lr.ph85 ]
  %.06783.us = phi i64 [ %i.dd, %_ZN4Luau8Compiler9emitLoadKEhi.exit.us ], [ 0, %.lr.ph85 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.06783.us
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !40 ; 2 uses
  %i.cx = zext i32 %i.cw to i64
  %i.cy = add i64 %i.co, %.06783.us               ; 2 uses
  %.not.us = icmp eq i64 %i.cy, %i.cx
  br i1 %.not.us, label %_ZN4Luau8Compiler9emitLoadKEhi.exit.us, label %bb.z

bb.z:                                             ; preds = %.lr.ph85.split.us
  %i.cz = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.da = trunc i64 %i.cy to i8
  %i.db = trunc i32 %i.cw to i8
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.cz, i32 noundef 6, i8 noundef zeroext %i.da, i8 noundef zeroext %i.db, i8 noundef zeroext 0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !475
  br label %_ZN4Luau8Compiler9emitLoadKEhi.exit.us

_ZN4Luau8Compiler9emitLoadKEhi.exit.us:           ; preds = %bb.z, %.lr.ph85.split.us
  %i.dc = phi i64 [ %.pre, %bb.z ], [ %i.cu, %.lr.ph85.split.us ] ; 2 uses
  %i.dd = add nuw i64 %.06783.us, 1               ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.dc
  br i1 %i.de, label %.lr.ph85.split.us, label %._crit_edge86, !llvm.loop !922

._crit_edge86:                                    ; preds = %_ZN4Luau8Compiler9emitLoadKEhi.exit.us, %_ZN4Luau8Compiler9emitLoadKEhi.exit, %_ZN4Luau8Compiler9emitLoadKEhi.exit.peel, %bb.x
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !471
  tail call void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.dg, i8 noundef zeroext %6, i1 noundef zeroext true), !inline_history !19
  %i.dh = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.di = tail call noundef i64 @_ZN4Luau15BytecodeBuilder9emitLabelEv(ptr noundef nonnull align 8 dereferenceable(1048) %i.dh)
  %i.dj = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.dk = tail call noundef zeroext i1 @_ZN4Luau15BytecodeBuilder10patchSkipCEmm(ptr noundef nonnull align 8 dereferenceable(1048) %i.dj, i64 noundef %i.bb, i64 noundef %i.di)
  br i1 %i.dk, label %bb.ad, label %bb.ac

.lr.ph85.split.peel.next:                         ; preds = %_ZN4Luau8Compiler9emitLoadKEhi.exit.peel, %_ZN4Luau8Compiler9emitLoadKEhi.exit
  %.06783 = phi i64 [ %i.dr, %_ZN4Luau8Compiler9emitLoadKEhi.exit ], [ 1, %_ZN4Luau8Compiler9emitLoadKEhi.exit.peel ] ; 3 uses
  %14 = trunc i64 %.06783 to i8
  %15 = add i8 %13, %14                           ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.06783
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !40 ; 3 uses
  %i.dn = icmp slt i32 %i.dm, 32768
  %i.do = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266 ; 2 uses
  br i1 %i.dn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph85.split.peel.next
  %i.dp = trunc i32 %i.dm to i16
  tail call void @_ZN4Luau15BytecodeBuilder6emitADE10LuauOpcodehs(ptr noundef nonnull align 8 dereferenceable(1048) %i.do, i32 noundef 5, i8 noundef zeroext %15, i16 noundef signext %i.dp)
  br label %_ZN4Luau8Compiler9emitLoadKEhi.exit

bb.ab:                                            ; preds = %.lr.ph85.split.peel.next
  tail call void @_ZN4Luau15BytecodeBuilder6emitADE10LuauOpcodehs(ptr noundef nonnull align 8 dereferenceable(1048) %i.do, i32 noundef 66, i8 noundef zeroext %15, i16 noundef signext 0)
  %i.dq = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  tail call void @_ZN4Luau15BytecodeBuilder7emitAuxEj(ptr noundef nonnull align 8 dereferenceable(1048) %i.dq, i32 noundef %i.dm)
  br label %_ZN4Luau8Compiler9emitLoadKEhi.exit

_ZN4Luau8Compiler9emitLoadKEhi.exit:              ; preds = %bb.ab, %bb.aa
  %i.dr = add nuw i64 %.06783, 1                  ; 2 uses
  %i.ds = load i64, ptr %i.c, align 8, !tbaa !475
  %i.dt = icmp ult i64 %i.dr, %i.ds
  br i1 %i.dt, label %.lr.ph85.split.peel.next, label %._crit_edge86, !llvm.loop !923

bb.ac:                                            ; preds = %._crit_edge86
  %i.du = load ptr, ptr %i.df, align 8, !tbaa !471
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  tail call void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.dv, ptr noundef nonnull @.str.148) #28
  unreachable

bb.ad:                                            ; preds = %._crit_edge86
  %i.dw = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.dx = load i64, ptr %i.c, align 8, !tbaa !475
  %i.dy = trunc i64 %i.dx to i8
  %i.dz = add i8 %i.dy, 1
  %i.ea = add i8 %3, 1
  %i.eb = select i1 %5, i8 0, i8 %i.ea
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.dw, i32 noundef 21, i8 noundef zeroext %6, i8 noundef zeroext %i.dz, i8 noundef zeroext %i.eb)
  br i1 %4, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ad
  %i.ec = zext i8 %3 to i64
  %.not94 = icmp eq i8 %3, 0
  br i1 %.not94, label %.loopexit, label %.lr.ph88

.lr.ph88:                                         ; preds = %.preheader, %.lr.ph88
  %.087 = phi i64 [ %i.eh, %.lr.ph88 ], [ 0, %.preheader ] ; 2 uses
  %i.ed = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.ee = trunc nuw i64 %.087 to i8               ; 2 uses
  %i.ef = add i8 %2, %i.ee
  %i.eg = add i8 %6, %i.ee
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.ed, i32 noundef 6, i8 noundef zeroext %i.ef, i8 noundef zeroext %i.eg, i8 noundef zeroext 0)
  %i.eh = add nuw nsw i64 %.087, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.eh, %i.ec
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph88, !llvm.loop !924

.loopexit:                                        ; preds = %.lr.ph88, %.preheader, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

declare noundef zeroext i1 @_ZN4Luau15BytecodeBuilder10patchSkipCEmm(ptr noundef nonnull align 8 dereferenceable(1048), i64 noundef, i64 noundef) local_unnamed_addr #12

declare noundef i32 @_ZN4Luau15BytecodeBuilder9addFbSlotE16LuauFeedbackType(ptr noundef nonnull align 8 dereferenceable(1048), i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4Luau8Compiler20costModelInlinedCallEPNS_11AstExprCallEPNS_15AstExprFunctionE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !267  ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread
  %i.p = phi i64 [ %i.d, %.lr.ph ], [ %i.bu, %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread ]
  %.03275 = phi i64 [ 0, %.lr.ph ], [ %i.z, %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !271
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.03275
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !272
  store ptr %i.s, ptr %i.a, align 8, !tbaa !272
  %i.t = load i64, ptr %i.e, align 8, !tbaa !475  ; 3 uses
  %i.u = icmp ult i64 %.03275, %i.t
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !482
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.03275
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !447
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.y = phi ptr [ %i.x, %bb.c ], [ null, %bb.b ] ; 5 uses
  %i.z = add nuw i64 %.03275, 1                   ; 3 uses
  %i.aa = icmp eq i64 %i.z, %i.t
  %i.ab = icmp ugt i64 %i.p, %i.t
  %or.cond = and i1 %i.aa, %i.ab
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = call noundef zeroext i1 @_ZN4Luau8Compiler13isExprMultRetEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %i.y)
  br i1 %i.ac, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = load i64, ptr %i.h, align 8, !tbaa !413
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8VariableENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !272 ; 3 uses
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !272 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8VariableENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i64, ptr %i.j, align 8, !tbaa !414
  %i.aj = add i64 %i.ai, -1                       ; 2 uses
  %i.ak = ptrtoint ptr %i.af to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !249
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.pn.i.i = phi i64 [ %i.an, %bb.h ], [ %i.au, %bb.k ]
  %.01828.i.i = phi i64 [ 0, %bb.h ], [ %i.at, %bb.k ]
  %.01929.i.i = and i64 %.pn.i.i, %i.aj           ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.01929.i.i ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !272 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.af
  br i1 %i.ar, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = icmp eq ptr %i.aq, %i.ag
  br i1 %i.as, label %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8VariableENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = add i64 %.01828.i.i, 1                  ; 3 uses
  %i.au = add i64 %i.at, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.at, %i.aj
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8VariableENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.i, !llvm.loop !12

bb.l:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !417, !range !86, !noundef !87
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8VariableENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread

_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8VariableENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread: ; preds = %bb.j, %bb.k, %bb.f, %bb.g, %bb.l
  %i.ay = icmp eq ptr %i.y, null
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8VariableENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread
  %i.az = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  store i32 1, ptr %i.az, align 8, !tbaa !483
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.4.0..sroa_idx, i8 0, i64 36, i1 false)
  br label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread

bb.n:                                             ; preds = %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8VariableENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread
  %i.ba = load i64, ptr %i.l, align 8, !tbaa !446
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !447 ; 2 uses
  %i.bd = icmp eq ptr %i.y, %i.bc
  br i1 %i.bd, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load i64, ptr %i.n, align 8, !tbaa !448
  %i.bf = add i64 %i.be, -1                       ; 2 uses
  %i.bg = ptrtoint ptr %i.y to i64
  %i.bh = mul i64 %i.bg, -4658895280553007687     ; 2 uses
  %i.bi = lshr i64 %i.bh, 31
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = load ptr, ptr %i.k, align 8, !tbaa !248
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %.pn.i.i41 = phi i64 [ %i.bj, %bb.p ], [ %i.bq, %bb.s ]
  %.01828.i.i42 = phi i64 [ 0, %bb.p ], [ %i.bp, %bb.s ]
  %.01929.i.i43 = and i64 %.pn.i.i41, %i.bf       ; 2 uses
  %i.bl = getelementptr inbounds nuw [48 x i8], ptr %i.bk, i64 %.01929.i.i43 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !447 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.y
  br i1 %i.bn, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = icmp eq ptr %i.bm, %i.bc
  br i1 %i.bo, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = add i64 %.01828.i.i42, 1                ; 3 uses
  %i.bq = add i64 %i.bp, %.01929.i.i43
  %.not.i.i44 = icmp ugt i64 %i.bp, %i.bf
  br i1 %.not.i.i44, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit.thread, label %bb.q, !llvm.loop !15
end_hunk_4
