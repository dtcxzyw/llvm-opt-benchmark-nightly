Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SimplifyCFG?download=true
inline.NumInlined: 15223
inline.NumDeleted: 6880
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 25
begin_hunk_0_@"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_114SimplifyCFGOpt29hoistCommonCodeFromSuccessorsEPN4llvm11InstructionEbE3$_3EclIPSt4pairINS4_21ilist_iterator_w_bitsINS4_12ilist_detail12node_optionsIS5_Lb0ELb0EvLb1ENS4_10BasicBlockEEELb0ELb0EEEjEEEbT_":bb.a
  ret i1 %i.ae
}

declare noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo19isProfitableToHoistEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo30hasConditionalLoadStoreForTypeEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm11Instruction8isAtomicEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #7

declare noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm13IRBuilderBase16CreateMaskedLoadEPNS_4TypeEPNS_5ValueENS_5AlignES4_S4_RKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef, i8, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm13IRBuilderBase17CreateMaskedStoreEPNS_5ValueES2_NS_5AlignES2_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef, i8, ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm28getConstantRangeFromMetadataERKNS_6MDNodeE(ptr dead_on_unwind writable sret(%"class.llvm::ConstantRange") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare void @_ZN4llvm11Instruction37dropUBImplyingAttrsAndUnknownMetadataENS_8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm2at23deleteAssignmentMarkersEPKNS_11InstructionE(ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm11Instruction15eraseMetadataIfENS_12function_refIFbjPNS_6MDNodeEEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64) local_unnamed_addr #4

declare ptr @_ZNK4llvm13AttributeList15addRangeRetAttrERNS_11LLVMContextERKNS_13ConstantRangeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @"_ZN4llvm12function_refIFbjPNS_6MDNodeEEE11callback_fnIZL27hoistConditionalLoadsStoresPNS_10CondBrInstERNS_15SmallVectorImplIPNS_11InstructionEEESt8optionalIbESA_E3$_0EEbljS2_"(i64 %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #19 align 2 {
bb.a:
  %.val = load i8, ptr %2, align 4, !tbaa !1726
  %i.a = icmp eq i8 %.val, 30
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121EphemeralValueTracker5trackEPKN4llvm11InstructionE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !107     ; 2 uses
  %i.b = icmp eq i8 %i.a, 88
  br i1 %i.b, label %bb.b, label %_ZN4llvm3isaIJNS_10AssumeInstEEPKNS_11InstructionEEEbRKT0_.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %1, i64 -32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106  ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm3isaIJNS_10AssumeInstEEPKNS_11InstructionEEEbRKT0_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.d, align 8, !tbaa !107
  %i.f = icmp eq i8 %i.e, 14
  br i1 %i.f, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i, label %_ZN4llvm3isaIJNS_10AssumeInstEEPKNS_11InstructionEEEbRKT0_.exit.thread.i

_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 8192
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm3isaIJNS_10AssumeInstEEPKNS_11InstructionEEEbRKT0_.exit.thread.i, label %_ZN4llvm3isaIJNS_10AssumeInstEEPKNS_11InstructionEEEbRKT0_.exit.i

_ZN4llvm3isaIJNS_10AssumeInstEEPKNS_11InstructionEEEbRKT0_.exit.i: ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !135
  %i.l = icmp eq i32 %i.k, 16
  br i1 %i.l, label %_ZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionE.exit, label %_ZN4llvm3isaIJNS_10AssumeInstEEPKNS_11InstructionEEEbRKT0_.exit.thread.i

_ZN4llvm3isaIJNS_10AssumeInstEEPKNS_11InstructionEEEbRKT0_.exit.thread.i: ; preds = %_ZN4llvm3isaIJNS_10AssumeInstEEPKNS_11InstructionEEEbRKT0_.exit.i, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %bb.a
  %i.m = tail call noundef zeroext i1 @_ZNK4llvm11Instruction18mayHaveSideEffectsEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #28
  %i.n = add i8 %i.a, -31
  %i.o = icmp ult i8 %i.n, 12
  %or.cond.i = or i1 %i.o, %i.m
  br i1 %or.cond.i, label %_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm3isaIJNS_10AssumeInstEEPKNS_11InstructionEEEbRKT0_.exit.thread.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !108  ; 3 uses
  %.not11.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not11.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.t = load i8, ptr %i.r, align 8, !tbaa !72, !range !73, !noundef !74
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.lr.ph.split.us.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i
  %i.v = load ptr, ptr %0, align 8, !tbaa !75     ; 2 uses
  %i.w = load i32, ptr %i.s, align 4, !tbaa !137  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i.i.i.i.us.i.i.i.i.i.i = shl nuw nsw i64 %i.x, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i.i.i.i.us.i.i.i.i.i.i
  %.not17.i.i.i.i.us.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not17.i.i.i.i.us.i.i.i.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit, label %.lr.ph.i.i.i.i.preheader.us.i.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.us.i.i.i.i.i.i:          ; preds = %.lr.ph.split.us.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionEEUlPKNS4_4UserEE_EclINS4_5Value18user_iterator_implIS9_EEEEbT_.exit.thread6.loopexit.us.i.i.i.i.i.i
  %.sroa.03.012.us.i.i.i.i.i.i = phi ptr [ %i.ae, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionEEUlPKNS4_4UserEE_EclINS4_5Value18user_iterator_implIS9_EEEEbT_.exit.thread6.loopexit.us.i.i.i.i.i.i ], [ %i.q, %.lr.ph.split.us.i.i.i.i.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.012.us.i.i.i.i.i.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !115
  br label %.lr.ph.i.i.i.i.us.i.i.i.i.i.i

.lr.ph.i.i.i.i.us.i.i.i.i.i.i:                    ; preds = %bb.e, %.lr.ph.i.i.i.i.preheader.us.i.i.i.i.i.i
  %.01218.i.i.i.i.us.i.i.i.i.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.v, %.lr.ph.i.i.i.i.preheader.us.i.i.i.i.i.i ] ; 2 uses
  %i.ab = load ptr, ptr %.01218.i.i.i.i.us.i.i.i.i.i.i, align 8, !tbaa !138
  %.not15.i.i.i.not.i.us.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not15.i.i.i.not.i.us.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionEEUlPKNS4_4UserEE_EclINS4_5Value18user_iterator_implIS9_EEEEbT_.exit.thread6.loopexit.us.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.us.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.us.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.us.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.y
  br i1 %.not.i.i.i.i.us.i.i.i.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit, label %.lr.ph.i.i.i.i.us.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionEEUlPKNS4_4UserEE_EclINS4_5Value18user_iterator_implIS9_EEEEbT_.exit.thread6.loopexit.us.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.us.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.012.us.i.i.i.i.i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !109 ; 2 uses
  %.not.us.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.us.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionE.exit, label %.lr.ph.i.i.i.i.preheader.us.i.i.i.i.i.i, !llvm.loop !1727

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionEEUlPKNS4_4UserEE_EclINS4_5Value18user_iterator_implIS9_EEEEbT_.exit.thread6.i.i.i.i.i.i
  %.sroa.03.012.i.i.i.i.i.i = phi ptr [ %i.ar, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionEEUlPKNS4_4UserEE_EclINS4_5Value18user_iterator_implIS9_EEEEbT_.exit.thread6.i.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.012.i.i.i.i.i.i, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !115 ; 2 uses
  %i.ah = load i8, ptr %i.r, align 8, !tbaa !72, !range !73, !noundef !74
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionEEUlPKNS4_4UserEE_EclINS4_5Value18user_iterator_implIS9_EEEEbT_.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.aj = load ptr, ptr %0, align 8, !tbaa !75    ; 2 uses
  %i.ak = load i32, ptr %i.s, align 4, !tbaa !137 ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.al, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %.not17.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not17.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.f, %bb.g
  %.01218.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %bb.g ], [ %i.aj, %bb.f ] ; 2 uses
  %i.ao = load ptr, ptr %.01218.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !138
  %.not15.i.i.i.not.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.ag
  br i1 %.not15.i.i.i.not.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionEEUlPKNS4_4UserEE_EclINS4_5Value18user_iterator_implIS9_EEEEbT_.exit.thread6.i.i.i.i.i.i, label %bb.g

_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionEEUlPKNS4_4UserEE_EclINS4_5Value18user_iterator_implIS9_EEEEbT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ap = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.ag) #27
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionEEUlPKNS4_4UserEE_EclINS4_5Value18user_iterator_implIS9_EEEEbT_.exit.thread6.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionEEUlPKNS4_4UserEE_EclINS4_5Value18user_iterator_implIS9_EEEEbT_.exit.thread6.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionEEUlPKNS4_4UserEE_EclINS4_5Value18user_iterator_implIS9_EEEEbT_.exit.i.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.03.012.i.i.i.i.i.i, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !109 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionE.exit, label %.lr.ph.split.i.i.i.i.i.i, !llvm.loop !1728

_ZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionE.exit: ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionEEUlPKNS4_4UserEE_EclINS4_5Value18user_iterator_implIS9_EEEEbT_.exit.thread6.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionEEUlPKNS4_4UserEE_EclINS4_5Value18user_iterator_implIS9_EEEEbT_.exit.thread6.loopexit.us.i.i.i.i.i.i, %bb.d, %_ZN4llvm3isaIJNS_10AssumeInstEEPKNS_11InstructionEEEbRKT0_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load i8, ptr %i.as, align 8, !tbaa !72, !range !73, !noalias !1731, !noundef !74
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.h, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionE.exit
  %i.av = load ptr, ptr %0, align 8, !tbaa !75, !noalias !1731 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !137, !noalias !1731 ; 4 uses
  %i.ay = zext i32 %i.ax to i64
  %.idx.i.i = shl nuw nsw i64 %i.ay, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx.i.i ; 2 uses
  %.not22.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.critedge.i.i
  %.023.i.i = phi ptr [ %i.bb, %.critedge.i.i ], [ %i.av, %bb.h ] ; 2 uses
  %i.ba = load ptr, ptr %.023.i.i, align 8, !tbaa !138, !noalias !1731
  %.not15.i.i = icmp eq ptr %i.ba, %1
  br i1 %.not15.i.i, label %_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bb, %i.az
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !136, !noalias !1731
  %i.be = icmp ult i32 %i.ax, %i.bd
  br i1 %i.be, label %bb.i, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.bf = add nuw i32 %i.ax, 1
  store i32 %i.bf, ptr %i.aw, align 4, !tbaa !137, !noalias !1731
  store ptr %1, ptr %i.az, align 8, !tbaa !138, !noalias !1731
  br label %_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %_ZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionE.exit
  %i.bg = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull %1) #27, !noalias !1731 ; 0 uses
  br label %_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit

_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit: ; preds = %bb.f, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionEEUlPKNS4_4UserEE_EclINS4_5Value18user_iterator_implIS9_EEEEbT_.exit.i.i.i.i.i.i, %bb.g, %bb.e, %.lr.ph.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i, %bb.i, %.lr.ph.split.us.i.i.i.i.i.i, %_ZN4llvm3isaIJNS_10AssumeInstEEPKNS_11InstructionEEEbRKT0_.exit.thread.i
  %.0.i5 = phi i1 [ false, %bb.e ], [ true, %.lr.ph.i.i ], [ true, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ false, %_ZN4llvm3isaIJNS_10AssumeInstEEPKNS_11InstructionEEEbRKT0_.exit.thread.i ], [ false, %.lr.ph.split.us.i.i.i.i.i.i ], [ false, %bb.g ], [ true, %bb.i ], [ false, %_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_121EphemeralValueTracker11isEphemeralEPKN4llvm11InstructionEEUlPKNS4_4UserEE_EclINS4_5Value18user_iterator_implIS9_EEEEbT_.exit.i.i.i.i.i.i ], [ false, %bb.f ]
  ret i1 %.0.i5
}

declare noundef zeroext i1 @_ZNK4llvm5Value8hasNUsesEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9StoreInst10setOperandEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(73) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.b ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !178  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN4llvm3Use14removeFromListEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !109  ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !114
  %.not2.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not2.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.h, align 8, !tbaa !178
  store ptr null, ptr %i.f, align 8, !tbaa !109
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.d, align 8, !tbaa !178
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i:          ; preds = %bb.d, %bb.a
  store ptr %2, ptr %i.c, align 8, !tbaa !106
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %_ZN4llvm3UseaSEPNS_5ValueE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i
  %i.i = load i8, ptr %2, align 8, !tbaa !107
  %i.j = icmp ugt i8 %i.i, 10
  br i1 %i.j, label %bb.f, label %_ZN4llvm3UseaSEPNS_5ValueE.exit

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !114  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !109
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !178
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i:          ; preds = %bb.g, %bb.f
  store ptr %i.k, ptr %i.d, align 8, !tbaa !178
  store ptr %i.c, ptr %i.k, align 8, !tbaa !114
  br label %_ZN4llvm3UseaSEPNS_5ValueE.exit

_ZN4llvm3UseaSEPNS_5ValueE.exit:                  ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i, %bb.e, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2at23getDVRAssignmentMarkersEPKNS_11InstructionE(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.934") align 8 %0, ptr noundef %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !149
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm11Instruction11getMetadataEj.exit.thread, label %_ZNK4llvm11Instruction11getMetadataEj.exit

_ZNK4llvm11Instruction11getMetadataEj.exit:       ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK4llvm5Value15getMetadataImplEj(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 38) #28 ; 2 uses
  %.not.not = icmp eq ptr %i.c, null
  br i1 %.not.not, label %_ZNK4llvm11Instruction11getMetadataEj.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm11Instruction11getMetadataEj.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !1734
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.f = inttoptr i64 %i.e to ptr
  tail call void @_ZN4llvm23ReplaceableMetadataImpl28getAllDbgVariableRecordUsersEv(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.934") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %i.f) #27
  br label %bb.c

_ZNK4llvm11Instruction11getMetadataEj.exit.thread: ; preds = %bb.a, %_ZNK4llvm11Instruction11getMetadataEj.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %0, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.h, align 8, !tbaa !112
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.i, align 4, !tbaa !113
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK4llvm11Instruction11getMetadataEj.exit.thread
  ret void
}

declare void @_ZNK4llvm17DbgVariableRecord12location_opsEv(ptr dead_on_unwind writable sret(%"class.llvm::iterator_range.939") align 8, ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #4

declare void @_ZN4llvm17DbgVariableRecord25replaceVariableLocationOpEPNS_5ValueES2_b(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvm11Instruction12dropLocationEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm11Instruction16dropOneDbgRecordEPNS_9DbgRecordE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm10BasicBlock6spliceENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES0_EELb0ELb0EEEPS0_S6_S6_(ptr noundef nonnull align 8 dereferenceable(80), ptr, i64, ptr noundef, ptr, i64, ptr noundef byval(%"class.llvm::ilist_iterator_w_bits") align 8) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm16isWritableObjectEPKNS_5ValueERb(ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

declare i16 @_ZN4llvm20PointerMayBeCapturedEPKNS_5ValueENS_17CaptureComponentsENS_12function_refIFbS3_EEEj(ptr noundef, i8 noundef zeroext, ptr, i64, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm16capturesAnythingENS_17CaptureComponentsE(i8 noundef zeroext %0) #1 comdat {
bb.a:
  %i.a = icmp ne i8 %0, 0
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZN4llvm24isDereferenceablePointerEPKNS_5ValueEPNS_4TypeERKNS_13SimplifyQueryEb(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(59), i1 noundef zeroext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm11Instruction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm19getUnderlyingObjectEPKNS_5ValueEj(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12function_refIFbNS_17CaptureComponentsEEE11callback_fnIS2_EEblS1_(i64 noundef %0, i8 noundef zeroext %1) #3 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = tail call noundef zeroext i1 %i.a(i8 noundef zeroext %1) #27
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !1739 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1739 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1739 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !1739
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !252    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !248
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !249

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !252
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit, label %bb.c, !prof !119

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !248
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !250, !llvm.loop !46

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !508
  %i.ao = shl i32 %i.b, 1
end_hunk_0
