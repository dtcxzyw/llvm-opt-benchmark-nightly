Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-gc-operator-reducer?download=true
inline.NumInlined: 905
inline.NumDeleted: 380
begin_hunk_0_@_ZN2v88internal8compiler16ControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EE21ResetToCommonAncestorES5_:bb.a
_ZNK2v88internal8compiler14FunctionalListINS1_12NodeWithTypeEE4SizeEv.exit.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i
  %i.ay = phi i64 [ %i.ax, %bb.i ], [ 0, %.lr.ph.i.i ]
  %i.az = load ptr, ptr %.sroa.0.013.i.i, align 8 ; 4 uses
  %.not.i4.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i4.i.i.i.i, label %_ZNK2v88internal8compiler14FunctionalListINS1_12NodeWithTypeEE4SizeEv.exit5.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK2v88internal8compiler14FunctionalListINS1_12NodeWithTypeEE4SizeEv.exit.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load i64, ptr %i.ba, align 8
  br label %_ZNK2v88internal8compiler14FunctionalListINS1_12NodeWithTypeEE4SizeEv.exit5.i.i.i.i

_ZNK2v88internal8compiler14FunctionalListINS1_12NodeWithTypeEE4SizeEv.exit5.i.i.i.i: ; preds = %bb.j, %_ZNK2v88internal8compiler14FunctionalListINS1_12NodeWithTypeEE4SizeEv.exit.i.i.i.i
  %i.bc = phi i64 [ %i.bb, %bb.j ], [ 0, %_ZNK2v88internal8compiler14FunctionalListINS1_12NodeWithTypeEE4SizeEv.exit.i.i.i.i ]
  %.not.i.i.i.not.i = icmp eq i64 %i.ay, %i.bc
  br i1 %.not.i.i.i.not.i, label %.preheader.i.i.i.i, label %.loopexit

.preheader.i.i.i.i:                               ; preds = %_ZNK2v88internal8compiler14FunctionalListINS1_12NodeWithTypeEE4SizeEv.exit5.i.i.i.i
  %i.bd = icmp eq ptr %i.av, %i.az
  br i1 %i.bd, label %_ZNK2v88internal8compiler14FunctionalListINS1_12NodeWithTypeEEneERKS4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.k
  %.sroa.0.012.i.i.i.i = phi ptr [ %i.bt, %bb.k ], [ %i.az, %.preheader.i.i.i.i ] ; 4 uses
  %.sroa.08.011.i.i.i.i = phi ptr [ %i.br, %bb.k ], [ %i.av, %.preheader.i.i.i.i ] ; 4 uses
  %i.be = load ptr, ptr %.sroa.08.011.i.i.i.i, align 8
  %i.bf = load ptr, ptr %.sroa.0.012.i.i.i.i, align 8
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNK2v88internal8compiler12NodeWithTypeneERKS2_.exit.i.i.i.i, label %.loopexit

_ZNK2v88internal8compiler12NodeWithTypeneERKS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.bi, align 8
  %i.bj = load i32, ptr %i.bh, align 8
  %i.bk = icmp ne i32 %i.bj, %.sroa.0.0.copyload.i.i.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i.i.i, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = icmp ne ptr %i.bm, %i.bo
  %.not3.i.i.i.i.i = select i1 %i.bk, i1 true, i1 %i.bp
  br i1 %.not3.i.i.i.i.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %_ZNK2v88internal8compiler12NodeWithTypeneERKS2_.exit.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i, i64 24
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i.i.i, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = icmp eq ptr %i.br, %i.bt
  br i1 %i.bu, label %_ZNK2v88internal8compiler14FunctionalListINS1_12NodeWithTypeEEneERKS4_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNK2v88internal8compiler14FunctionalListINS1_12NodeWithTypeEEneERKS4_.exit.i.i: ; preds = %bb.k, %.preheader.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i, i64 8
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.bz = icmp eq ptr %i.bw, %i.by
  br i1 %i.bz, label %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEEneERKS5_.exit, label %.lr.ph.i.i, !llvm.loop !3

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler14FunctionalListINS1_12NodeWithTypeEE4SizeEv.exit5.i.i.i.i, %.lr.ph.i.i.i.i, %_ZNK2v88internal8compiler12NodeWithTypeneERKS2_.exit.i.i.i.i, %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit5.i.i
  %.sroa.037.068 = load ptr, ptr %i.am, align 8   ; 2 uses
  %.not69 = icmp eq ptr %.sroa.037.068, null
  br i1 %.not69, label %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.i21, label %.lr.ph72

._crit_edge73:                                    ; preds = %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit31
  %.pre92 = load ptr, ptr %0, align 8             ; 2 uses
  %.not.i.i20 = icmp eq ptr %.pre92, null
  br i1 %.not.i.i20, label %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.thread.i23, label %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.i21

_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.i21: ; preds = %.loopexit, %._crit_edge73
  %i.ca = phi ptr [ %.pre92, %._crit_edge73 ], [ %i.am, %.loopexit ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %i.cb, align 8
  %.not.i22 = icmp eq i64 %i.cc, 0
  br i1 %.not.i22, label %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.thread.i23, label %_ZN2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE9DropFrontEv.exit24, !prof !26

_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.thread.i23: ; preds = %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.i21, %._crit_edge73
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #14
  unreachable

_ZN2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE9DropFrontEv.exit24: ; preds = %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.i21
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  store ptr %i.ce, ptr %0, align 8
  br i1 %.not.i4.i.i, label %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.thread.i28, label %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.i26

_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.i26: ; preds = %_ZN2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE9DropFrontEv.exit24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.cg = load i64, ptr %i.cf, align 8
  %.not.i27 = icmp eq i64 %i.cg, 0
  br i1 %.not.i27, label %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.thread.i28, label %_ZN2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE9DropFrontEv.exit29, !prof !26

_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.thread.i28: ; preds = %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.i26, %_ZN2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE9DropFrontEv.exit24
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #14
  unreachable

_ZN2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE9DropFrontEv.exit29: ; preds = %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit.i26
  %i.ch = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.pre = load ptr, ptr %i.ch, align 8
  br label %bb.f, !llvm.loop !234

.lr.ph72:                                         ; preds = %.loopexit, %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit31
  %.sroa.037.070 = phi ptr [ %.sroa.037.0, %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit31 ], [ %.sroa.037.068, %.loopexit ] ; 2 uses
  %.sroa.035.0.copyload = load ptr, ptr %.sroa.037.070, align 8
  %i.ci = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i30 = icmp eq ptr %i.ci, null
  br i1 %.not.i30, label %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit31, label %bb.l

bb.l:                                             ; preds = %.lr.ph72
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i64, ptr %i.cj, align 8
  br label %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit31

_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEE4SizeEv.exit31: ; preds = %.lr.ph72, %bb.l
  %i.cl = phi i64 [ %i.ck, %bb.l ], [ 0, %.lr.ph72 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr null, ptr %2, align 8
  store i32 2, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.332.0..sroa_idx, align 8
  call void @_ZN2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_12NodeWithTypeENS_4base4hashIS6_EEE6ModifyIZNSB_3SetES6_S7_EUlPS7_E_EEvS6_T_(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr %.sroa.035.0.copyload, i64 %i.cl, ptr nonnull align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.037.070, i64 24
  %.sroa.037.0 = load ptr, ptr %i.cm, align 8     ; 2 uses
  %.not = icmp eq ptr %.sroa.037.0, null
  br i1 %.not, label %._crit_edge73, label %.lr.ph72

_ZNK2v88internal8compiler14FunctionalListINS2_INS1_12NodeWithTypeEEEEneERKS5_.exit: ; preds = %.preheader.i.i, %_ZNK2v88internal8compiler14FunctionalListINS1_12NodeWithTypeEEneERKS4_.exit.i.i
  ret void
}

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9TypeGuardENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(16), i64) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler13Int32ConstantEi(ptr noundef nonnull align 8 dereferenceable(161), i32 noundef) local_unnamed_addr #1

declare void @_ZN2v88internal8compiler4Node4KillEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare i64 @_ZN2v88internal8compiler15TypeGuardTypeOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler4Node11RemoveInputEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

declare void @_ZN2v88internal8compiler14GraphAssembler23InitializeEffectControlEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler18WasmGraphAssembler13AssertNotNullEPNS1_4NodeENS0_4wasm9ValueTypeENS1_6TrapIdE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, i32, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler21WasmGCOperatorReducer20UpdateSourcePositionEPNS1_4NodeES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 !guid !236 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @_ZNK2v88internal8compiler19SourcePositionTable17GetSourcePositionEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef %2) #13
  %i.d = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal8compiler19SourcePositionTable17SetSourcePositionEPNS1_4NodeENS0_14SourcePositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef %1, i64 %i.c) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef ptr @_ZN2v88internal8compiler18WasmGraphAssembler6IsNullEPNS1_4NodeENS0_4wasm9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, i32) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler18WasmGraphAssembler4NullENS0_4wasm9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(184), i32) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal8compiler18WasmGraphAssembler10simplifiedEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 comdat align 2 !guid !237 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  ret ptr %i.a
}

declare noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder12WasmTypeCastENS1_19WasmTypeCheckConfigE(ptr noundef nonnull align 8 dereferenceable(16), i64, i8) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder20WasmTypeCastAbstractENS1_19WasmTypeCheckConfigE(ptr noundef nonnull align 8 dereferenceable(16), i64, i8) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler18WasmGraphAssembler9IsNotNullEPNS1_4NodeENS0_4wasm9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, i32) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder13WasmTypeCheckENS1_19WasmTypeCheckConfigE(ptr noundef nonnull align 8 dereferenceable(16), i64, i8) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder21WasmTypeCheckAbstractENS1_19WasmTypeCheckConfigE(ptr noundef nonnull align 8 dereferenceable(16), i64, i8) local_unnamed_addr #1

declare i64 @_ZNK2v88internal8compiler19SourcePositionTable17GetSourcePositionEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare void @_ZN2v88internal8compiler19SourcePositionTable17SetSourcePositionEPNS1_4NodeENS0_14SourcePositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i64) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler21WasmGCOperatorReducerD2Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #3 comdat align 2 !guid !238 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN2v88internal8compiler14GraphAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %i.a) #13
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2v88internal8compiler35AdvancedReducerWithControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EEE, i64 16), ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler21WasmGCOperatorReducerD0Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #3 comdat align 2 !guid !239 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN2v88internal8compiler14GraphAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %i.a) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 312) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2v88internal8compiler21WasmGCOperatorReducer12reducer_nameEv(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #0 comdat align 2 !guid !240 {
bb.a:
  ret ptr @.str.9
}

declare void @_ZN2v88internal8compiler7Reducer8FinalizeEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN2v88internal8compiler14GraphAssemblerC2EPNS1_12MachineGraphEPNS0_4ZoneENS1_15BranchSemanticsESt8optionalISt8functionIFvPNS1_4NodeEEEEb(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #1

declare void @_ZN2v88internal8compiler25SimplifiedOperatorBuilderC1EPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2v88internal8compiler14GraphAssemblerD2Ev(ptr noundef nonnull align 8 dead_on_return(161) dereferenceable(161)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler18WasmGraphAssemblerD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #3 comdat align 2 !guid !241 {
bb.a:
  tail call void @_ZN2v88internal8compiler14GraphAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_8HeapTypeES2_PKNS1_10WasmModuleES5_(i32, i32, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder10TrapUnlessENS1_6TrapIdEb(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler35AdvancedReducerWithControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat align 2 !guid !242 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2v88internal8compiler35AdvancedReducerWithControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EEE, i64 16), ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler35AdvancedReducerWithControlPathStateINS1_12NodeWithTypeELNS1_14NodeUniquenessE1EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat align 2 !guid !243 {
bb.a:
  tail call void @llvm.trap() #14
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_12NodeWithTypeENS_4base4hashIS6_EEE3GetERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 !guid !246 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %1, align 8                ; 6 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = xor i64 %i.c, -1
  %i.e = shl i64 %i.c, 21
  %i.f = add i64 %i.e, %i.d                       ; 2 uses
  %i.g = lshr i64 %i.f, 24
  %i.h = xor i64 %i.g, %i.f
  %i.i = mul i64 %i.h, 265                        ; 2 uses
  %i.j = lshr i64 %i.i, 14
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, 21                         ; 2 uses
  %i.m = lshr i64 %i.l, 28
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, 8398540807049701781        ; 2 uses
  %i.p = lshr i64 %i.o, 47
  %i.q = xor i64 %i.p, %i.o
  %i.r = mul i64 %i.q, 678072505
  %i.s = load i64, ptr %i.a, align 8              ; 5 uses
  %i.t = xor i64 %i.s, -1
  %i.u = shl i64 %i.s, 21
  %i.v = add i64 %i.u, %i.t                       ; 2 uses
  %i.w = lshr i64 %i.v, 24
  %i.x = xor i64 %i.w, %i.v
  %i.y = mul i64 %i.x, 265                        ; 2 uses
  %i.z = lshr i64 %i.y, 14
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = mul i64 %i.aa, 21                       ; 2 uses
  %i.ac = lshr i64 %i.ab, 28
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = mul i64 %i.ad, 8398540807049701781      ; 2 uses
  %i.af = lshr i64 %i.ae, 47
  %i.ag = xor i64 %i.af, %i.ae
  %i.ah = mul i64 %i.ag, 1540483477
  %i.ai = xor i64 %i.ah, %i.r
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = mul i32 %i.aj, 1540483477               ; 2 uses
  %i.al = load ptr, ptr %0, align 8               ; 2 uses
  %.not16.i = icmp eq ptr %i.al, null
  br i1 %.not16.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.018.i = phi ptr [ %i.ay, %bb.d ], [ %i.al, %bb.a ] ; 7 uses
  %.01217.i = phi i32 [ %i.aq, %bb.d ], [ 0, %bb.a ]
  %i.am = getelementptr inbounds nuw i8, ptr %.018.i, i64 44
  %.sroa.01.0.copyload.i = load i32, ptr %i.am, align 4 ; 2 uses
  %.not15.i = icmp eq i32 %i.ak, %.sroa.01.0.copyload.i
  br i1 %.not15.i, label %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_12NodeWithTypeENS_4base4hashIS6_EEE8FindHashENSB_9HashValueE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.an = xor i32 %.sroa.01.0.copyload.i, %i.ak
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i
  %.1.i = phi i32 [ %i.aq, %bb.b ], [ %.01217.i, %.preheader.i ] ; 4 uses
  %i.ao = lshr exact i32 -2147483648, %.1.i
  %i.ap = and i32 %i.ao, %i.an
  %.not.i.not.i = icmp eq i32 %i.ap, 0
  %i.aq = add nsw i32 %.1.i, 1                    ; 2 uses
  br i1 %.not.i.not.i, label %bb.b, label %bb.c, !llvm.loop !244

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %.018.i, i64 40
  %i.as = load i8, ptr %i.ar, align 8
  %i.at = sext i8 %i.as to i32
  %i.au = icmp slt i32 %.1.i, %i.at
  br i1 %i.au, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %.018.i, i64 56
  %i.aw = sext i32 %.1.i to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !245

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_12NodeWithTypeENS_4base4hashIS6_EEE15GetFocusedValueEPKNSB_11FocusedTreeERKS6_.exit

_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_12NodeWithTypeENS_4base4hashIS6_EEE8FindHashENSB_9HashValueE.exit: ; preds = %.lr.ph.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.018.i, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  %.not11.i = icmp eq ptr %i.bb, null
  br i1 %.not11.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_12NodeWithTypeENS_4base4hashIS6_EEE8FindHashENSB_9HashValueE.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not10.i.i.i.i, label %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bd, %bb.e ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.be, %bb.e ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = icmp ult ptr %i.bg, %i.b
  %i.bi = icmp eq ptr %i.bg, %i.b
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = icmp ult i64 %i.bk, %i.s
  %.sroa.05.0.i.i.i.i.i.i = select i1 %i.bi, i1 %i.bl, i1 %i.bh ; 2 uses
  %.19.i.i.i.i = select i1 %.sroa.05.0.i.i.i.i.i.i, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %.sroa.05.0.i.i.i.i.i.i, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZNKSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bm = icmp eq ptr %.19.i.i.i.i, %i.be
  br i1 %i.bm, label %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i, label %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.i

_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.i: ; preds = %_ZNKSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = icmp ult ptr %i.b, %i.bo
  %i.bq = icmp eq ptr %i.b, %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = icmp ult i64 %i.s, %i.bs
  %.sroa.05.0.i.i.i.i.i = select i1 %i.bq, i1 %i.bt, i1 %i.bp
  br i1 %.sroa.05.0.i.i.i.i.i, label %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i, label %bb.f

_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i: ; preds = %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.i, %_ZNKSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_12NodeWithTypeEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %bb.e
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_12NodeWithTypeENS_4base4hashIS6_EEE15GetFocusedValueEPKNSB_11FocusedTreeERKS6_.exit

bb.f:                                             ; preds = %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_12NodeWithTypeESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.i
end_hunk_0
