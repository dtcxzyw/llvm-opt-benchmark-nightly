Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OMPIRBuilder?download=true
inline.NumInlined: 20937
inline.NumDeleted: 6687
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 101
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4llvm17GetElementPtrInst6CreateEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineENS_14InsertPositionE:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !247  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 254
  %spec.select.i.i.i = icmp eq i32 %i.h, 18
  br i1 %spec.select.i.i.i, label %_ZN4llvm17GetElementPtrInstC2EPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EENS_4User9AllocInfoERKNS_5TwineENS_14InsertPositionE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx.i.i = shl nuw nsw i64 %3, 3
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i
  %.not29.i.i = icmp eq i64 %3, 0
  br i1 %.not29.i.i, label %_ZN4llvm17GetElementPtrInstC2EPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EENS_4User9AllocInfoERKNS_5TwineENS_14InsertPositionE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.02230.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i, label %_ZN4llvm17GetElementPtrInstC2EPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EENS_4User9AllocInfoERKNS_5TwineENS_14InsertPositionE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.02230.i.i = phi ptr [ %i.j, %bb.c ], [ %2, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %.02230.i.i, align 8, !tbaa !249
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !247  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = and i32 %i.o, 254
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ne i32 %i.p, 18
  %.not2428.i.i = icmp eq ptr %i.m, null
  %.not24.i.i = or i1 %.not2428.i.i, %spec.select.i.i.i.i.i.i.i.i.i.i
  br i1 %.not24.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !771
  %i.s = and i32 %i.o, 19
  %i.t = icmp eq i32 %i.s, 19
  %.sroa.2.0.insert.shift.i.i.i.i = select i1 %i.t, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.r to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %i.u = tail call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef nonnull %i.e, i64 %.sroa.0.0.insert.insert.i.i.i.i) #26
  br label %_ZN4llvm17GetElementPtrInstC2EPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EENS_4User9AllocInfoERKNS_5TwineENS_14InsertPositionE.exit

_ZN4llvm17GetElementPtrInstC2EPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EENS_4User9AllocInfoERKNS_5TwineENS_14InsertPositionE.exit: ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.3.i.i = phi ptr [ %i.e, %bb.a ], [ %i.u, %bb.d ], [ %i.e, %bb.b ], [ %i.e, %bb.c ]
  %i.v = and i32 %i.b, 268435455
  tail call void @_ZN4llvm11InstructionC2EPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef %.3.i.i, i32 noundef 35, i32 %i.v, ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.0.sroa.2.0.copyload) #26
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr %0, ptr %i.w, align 8, !tbaa !1013
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.y = tail call noundef ptr @_ZN4llvm17GetElementPtrInst14getIndexedTypeEPNS_4TypeENS_8ArrayRefIPNS_5ValueEEE(ptr noundef %0, ptr %2, i64 %3) #26
  store ptr %i.y, ptr %i.x, align 8, !tbaa !1014
  tail call void @_ZN4llvm17GetElementPtrInst4initEPNS_5ValueENS_8ArrayRefIS2_EERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(34) %4) #26
  ret ptr %i.c
}

declare void @_ZN4llvm17GetElementPtrInst14setNoWrapFlagsENS_14GEPNoWrapFlagsE(ptr noundef nonnull align 8 dereferenceable(88), i32) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm17GetElementPtrInst14getIndexedTypeEPNS_4TypeENS_8ArrayRefIPNS_5ValueEEE(ptr noundef, ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm17GetElementPtrInst4initEPNS_5ValueENS_8ArrayRefIS2_EERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr, i64, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef, i64) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm4UsernwEmNS0_26HungOffOperandsAllocMarkerE(i64 noundef) local_unnamed_addr #4

declare void @_ZN4llvm4User16allocHungoffUsesEjb(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvm7PHINode12growOperandsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm13IRBuilderBase21CreateMemTransferInstEjPNS_5ValueENS_10MaybeAlignES2_S3_S2_bRKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, ptr noundef, i16, ptr noundef, i16, ptr noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZN4llvm8FunctionC1EPNS_12FunctionTypeENS_11GlobalValue12LinkageTypesEjRKNS_5TwineEPNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(140), ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef) unnamed_addr #4

declare ptr @_ZNK4llvm13AttributeList19addAttributeAtIndexERNS_11LLVMContextEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @_ZNK4llvm13AttributeList20addAttributesAtIndexERNS_11LLVMContextEjRKNS_11AttrBuilderE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #4

declare noundef i64 @_ZNK4llvm9StringRef5countES0_(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm10SwitchInstC1EPNS_5ValueEPNS_10BasicBlockEjNS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef, ptr noundef, i32 noundef, ptr, i64) unnamed_addr #4

declare noundef ptr @_ZNK4llvm10BasicBlock18getSingleSuccessorEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare void @_ZN4llvm7CmpInstC2EPNS_4TypeENS_11Instruction8OtherOpsENS0_9PredicateEPNS_5ValueES7_RKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef byval(%"class.llvm::InsertPosition") align 8) unnamed_addr #4

declare { ptr, i64 } @_ZNK4llvm10BasicBlock27getFirstNonPHIOrDbgOrAllocaEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm11Instruction17mayReadFromMemoryEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm11Instruction16mayWriteToMemoryEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #9

declare void @_ZN4llvm8ZExtInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr, i64) unnamed_addr #4

declare void @_ZN4llvm10BasicBlock17removePredecessorEPS0_b(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZN4llvm12LoopInfoBaseINS_10BasicBlockENS_4LoopEE13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZN4llvm8LoopBaseINS_10BasicBlockENS_4LoopEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144)) unnamed_addr #3 align 2

declare noundef ptr @_ZN4llvm13IRBuilderBase16CreateFCmpHelperENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineEPNS_6MDNodeENS_9FMFSourceEb(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef, i64, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvm16DeleteDeadBlocksENS_8ArrayRefIPNS_10BasicBlockEEEPNS_14DomTreeUpdaterEb(ptr, i64, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #14

declare void @_ZN4llvm6MDNode18replaceOperandWithEjPNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6insertIPKNS_9MDOperandEvEEPS2_S8_T_S9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !122    ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !211  ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 5 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  %i.i = icmp eq ptr %1, %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 7 uses
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = add nsw i64 %i.m, %i.g                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !212
  %i.q = zext i32 %i.p to i64
  %i.r = icmp ugt i64 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.s, i64 noundef %i.n, i64 noundef 8) #26
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !211 ; 2 uses
  %.pre8.i = zext i32 %.pre.i to i64
  %.pre64.pre = load ptr, ptr %0, align 8, !tbaa !122
  br label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i: ; preds = %bb.c, %bb.b
  %.pre64 = phi ptr [ %i.a, %bb.b ], [ %.pre64.pre, %bb.c ] ; 2 uses
  %.pre-phi.i = phi i64 [ %i.g, %bb.b ], [ %.pre8.i, %bb.c ]
  %i.t = phi i32 [ %i.f, %bb.b ], [ %.pre.i, %bb.c ]
  %.not9.i.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not9.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendIPKNS_9MDOperandEvEEvT_S8_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre64, i64 %.pre-phi.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i
  %.011.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %2, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %i.v = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !598
  store ptr %i.v, ptr %.011.i.i.i.i.i, align 8, !tbaa !400
  %i.w = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %3
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendIPKNS_9MDOperandEvEEvT_S8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3390

_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendIPKNS_9MDOperandEvEEvT_S8_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i
  %i.y = trunc i64 %i.m to i32
  %i.z = add i32 %i.t, %i.y
  store i32 %i.z, ptr %i.e, align 8, !tbaa !211
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre64, i64 %i.d
  br label %_ZSt4copyIPKN4llvm9MDOperandEPPNS0_8MetadataEET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.a
  %.idx53 = sub i64 0, %i.l
  %i.ab = ashr exact i64 %i.l, 3                  ; 12 uses
  %i.ac = add nsw i64 %i.ab, %i.g                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !212
  %i.af = zext i32 %i.ae to i64
  %i.ag = icmp ugt i64 %i.ac, %i.af
  br i1 %i.ag, label %bb.e, label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ah, i64 noundef %i.ac, i64 noundef 8) #26
  %.pre = load ptr, ptr %0, align 8, !tbaa !122
  %.pre62 = load i32, ptr %i.e, align 8, !tbaa !211 ; 2 uses
  %.pre66 = zext i32 %.pre62 to i64
  br label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %.pre-phi = phi i64 [ %i.g, %bb.d ], [ %.pre66, %bb.e ] ; 3 uses
  %i.ai = phi i32 [ %i.f, %bb.d ], [ %.pre62, %bb.e ] ; 2 uses
  %i.aj = phi ptr [ %i.a, %bb.d ], [ %.pre, %bb.e ] ; 5 uses
  %4 = ptrtoaddr ptr %i.aj to i64                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.d ; 16 uses
  %.idx = shl nuw nsw i64 %.pre-phi, 3            ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx ; 4 uses
  %gepdiff = sub nsw i64 %.idx, %i.d              ; 2 uses
  %i.am = ashr exact i64 %gepdiff, 3              ; 8 uses
  %.not = icmp ult i64 %i.am, %i.ab
  br i1 %.not, label %bb.n, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %.idx53 ; 2 uses
  %i.ao = add nsw i64 %i.ab, %.pre-phi            ; 2 uses
  %i.ap = load i32, ptr %i.ad, align 4, !tbaa !212
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i46

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.as, i64 noundef %i.ao, i64 noundef 8) #26
  %.pre.i48 = load i32, ptr %i.e, align 8, !tbaa !211 ; 2 uses
  %.pre12.i = zext i32 %.pre.i48 to i64
  %.pre63 = load ptr, ptr %0, align 8, !tbaa !122
  br label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i46

_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i46: ; preds = %bb.g, %bb.f
  %i.at = phi ptr [ %i.aj, %bb.f ], [ %.pre63, %bb.g ]
  %.pre-phi.i47 = phi i64 [ %.pre-phi, %bb.f ], [ %.pre12.i, %bb.g ]
  %i.au = phi i32 [ %i.ai, %bb.f ], [ %.pre.i48, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.pre-phi.i47 ; 2 uses
  %i.aw = icmp sgt i64 %i.l, 8
  br i1 %i.aw, label %bb.h, label %bb.i, !prof !213

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i46
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.av, ptr nonnull align 8 %i.an, i64 %i.l, i1 false)
  %.pre11.i = load i32, ptr %i.e, align 8, !tbaa !211
  br label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i46
  %i.ax = icmp eq i64 %i.l, 8
  br i1 %i.ax, label %bb.j, label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !400
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !400
  br label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit

_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.az = phi i32 [ %.pre11.i, %bb.h ], [ %i.au, %bb.i ], [ %i.au, %bb.j ]
  %i.ba = trunc i64 %i.ab to i32
  %i.bb = add i32 %i.az, %i.ba
  store i32 %i.bb, ptr %i.e, align 8, !tbaa !211
  %i.bc = add i64 %i.d, %i.l
  %gepdiff54 = sub i64 %.idx, %i.bc               ; 3 uses
  %i.bd = ashr exact i64 %gepdiff54, 3            ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 1
  br i1 %i.be, label %bb.k, label %bb.l, !prof !213

bb.k:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit
  %i.bf = sub nsw i64 0, %i.bd
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.bf
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr align 8 %i.ak, i64 %gepdiff54, i1 false)
  br label %_ZSt13move_backwardIPPN4llvm8MetadataES3_ET0_T_S5_S4_.exit

bb.l:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit
  %i.bh = icmp eq i64 %gepdiff54, 8
  br i1 %i.bh, label %bb.m, label %_ZSt13move_backwardIPPN4llvm8MetadataES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.bj = load ptr, ptr %i.ak, align 8, !tbaa !400
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !400
  br label %_ZSt13move_backwardIPPN4llvm8MetadataES3_ET0_T_S5_S4_.exit

_ZSt13move_backwardIPPN4llvm8MetadataES3_ET0_T_S5_S4_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.bk = icmp sgt i64 %i.ab, 0
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i49.preheader, label %_ZSt4copyIPKN4llvm9MDOperandEPPNS0_8MetadataEET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i49.preheader:                     ; preds = %_ZSt13move_backwardIPPN4llvm8MetadataES3_ET0_T_S5_S4_.exit
  %min.iters.check = icmp ult i64 %i.ab, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i49.preheader103, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i49.preheader
  %i.bl = add i64 %4, %i.b
  %i.bm = add i64 %i.c, %i.k
  %i.bn = sub i64 %i.bm, %i.bl
  %diff.check = icmp ugt i64 %i.bn, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i49.preheader103, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 9223372036854775804     ; 3 uses
  %i.bo = and i64 %i.ab, 3
  %i.bp = shl i64 %n.vec, 3                       ; 2 uses
  %i.bq = getelementptr i8, ptr %i.ak, i64 %i.bp
  %i.br = getelementptr i8, ptr %2, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.bs ; 2 uses
  %next.gep80 = getelementptr i8, ptr %2, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep80, align 8, !tbaa !598
  %wide.load81 = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !598
  %i.bu = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !400
  store <2 x ptr> %wide.load81, ptr %i.bu, align 8, !tbaa !400
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !3391

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIPKN4llvm9MDOperandEPPNS0_8MetadataEET0_T_S8_S7_.exit, label %.lr.ph.i.i.i.i.i49.preheader103

.lr.ph.i.i.i.i.i49.preheader103:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i49.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.ab, %vector.memcheck ], [ %i.ab, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.bo, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.bq, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader103, %.lr.ph.i.i.i.i.i49
  %.012.i.i.i.i.i = phi i64 [ %i.bz, %.lr.ph.i.i.i.i.i49 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i49.preheader103 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i49 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i49.preheader103 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i49 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i49.preheader103 ] ; 2 uses
  %i.bw = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !598
  store ptr %i.bw, ptr %.0811.i.i.i.i.i, align 8, !tbaa !400
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bz = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ca = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i49, label %_ZSt4copyIPKN4llvm9MDOperandEPPNS0_8MetadataEET0_T_S8_S7_.exit, !llvm.loop !3392

bb.n:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit
  %i.cb = trunc i64 %i.ab to i32
  %i.cc = add i32 %i.ai, %i.cb                    ; 2 uses
  store i32 %i.cc, ptr %i.e, align 8, !tbaa !211
  %.not.i.i = icmp eq i64 %i.d, %.idx
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.cd
  %i.cf = sub nsw i64 0, %i.am
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr align 8 %i.ak, i64 %gepdiff, i1 false)
  %min.iters.check87 = icmp ult i64 %i.am, 14
  br i1 %min.iters.check87, label %.lr.ph.preheader102, label %vector.memcheck84

vector.memcheck84:                                ; preds = %.lr.ph.preheader
  %i.ch = add i64 %4, %i.b
  %i.ci = add i64 %i.c, %i.k
  %i.cj = sub i64 %i.ci, %i.ch
  %diff.check85 = icmp ugt i64 %i.cj, -32
  br i1 %diff.check85, label %.lr.ph.preheader102, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck84
  %n.vec89 = and i64 %i.am, -4                    ; 3 uses
  %i.ck = shl nsw i64 %n.vec89, 3                 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ak, i64 %i.ck
  %i.cm = and i64 %i.am, 3
  %i.cn = getelementptr i8, ptr %2, i64 %i.ck     ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next96, %vector.body90 ] ; 2 uses
  %i.co = shl i64 %index91, 3                     ; 2 uses
  %next.gep92 = getelementptr i8, ptr %i.ak, i64 %i.co ; 2 uses
  %next.gep93 = getelementptr i8, ptr %2, i64 %i.co ; 2 uses
  %i.cp = getelementptr i8, ptr %next.gep93, i64 16
  %wide.load94 = load <2 x ptr>, ptr %next.gep93, align 8, !tbaa !598
  %wide.load95 = load <2 x ptr>, ptr %i.cp, align 8, !tbaa !598
  %i.cq = getelementptr i8, ptr %next.gep92, i64 16
  store <2 x ptr> %wide.load94, ptr %next.gep92, align 8, !tbaa !400
  store <2 x ptr> %wide.load95, ptr %i.cq, align 8, !tbaa !400
  %index.next96 = add nuw i64 %index91, 4         ; 2 uses
  %i.cr = icmp eq i64 %index.next96, %n.vec89
  br i1 %i.cr, label %middle.block97, label %vector.body90, !llvm.loop !3393

middle.block97:                                   ; preds = %vector.body90
  %cmp.n98 = icmp eq i64 %i.am, %n.vec89
  br i1 %cmp.n98, label %._crit_edge, label %.lr.ph.preheader102

.lr.ph.preheader102:                              ; preds = %vector.memcheck84, %.lr.ph.preheader, %middle.block97
  %.060.ph = phi ptr [ %i.ak, %vector.memcheck84 ], [ %i.ak, %.lr.ph.preheader ], [ %i.cl, %middle.block97 ] ; 2 uses
  %.04059.ph = phi i64 [ %i.am, %vector.memcheck84 ], [ %i.am, %.lr.ph.preheader ], [ %i.cm, %middle.block97 ] ; 4 uses
  %.04258.ph = phi ptr [ %2, %vector.memcheck84 ], [ %2, %.lr.ph.preheader ], [ %i.cn, %middle.block97 ] ; 2 uses
  %i.cs = add nsw i64 %.04059.ph, -1
  %xtraiter = and i64 %.04059.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader102, %.lr.ph.prol
  %.060.prol = phi ptr [ %i.cu, %.lr.ph.prol ], [ %.060.ph, %.lr.ph.preheader102 ] ; 2 uses
  %.04059.prol = phi i64 [ %i.cw, %.lr.ph.prol ], [ %.04059.ph, %.lr.ph.preheader102 ]
  %.04258.prol = phi ptr [ %i.cv, %.lr.ph.prol ], [ %.04258.ph, %.lr.ph.preheader102 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader102 ]
  %i.ct = load ptr, ptr %.04258.prol, align 8, !tbaa !598
  store ptr %i.ct, ptr %.060.prol, align 8, !tbaa !400
  %i.cu = getelementptr inbounds nuw i8, ptr %.060.prol, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.04258.prol, i64 8 ; 3 uses
  %i.cw = add i64 %.04059.prol, -1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !3394

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader102
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader102 ], [ %i.cv, %.lr.ph.prol ]
  %.060.unr = phi ptr [ %.060.ph, %.lr.ph.preheader102 ], [ %i.cu, %.lr.ph.prol ]
  %.04059.unr = phi i64 [ %.04059.ph, %.lr.ph.preheader102 ], [ %i.cw, %.lr.ph.prol ]
  %.04258.unr = phi ptr [ %.04258.ph, %.lr.ph.preheader102 ], [ %i.cv, %.lr.ph.prol ]
  %i.cx = icmp ult i64 %i.cs, 7
  br i1 %i.cx, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block97, %bb.n
  %.042.lcssa = phi ptr [ %2, %bb.n ], [ %i.cn, %middle.block97 ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.dy, %.lr.ph ] ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %.042.lcssa, %3
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIPKN4llvm9MDOperandEPPNS0_8MetadataEET0_T_S8_S7_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i ], [ %i.al, %._crit_edge ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i ], [ %.042.lcssa, %._crit_edge ] ; 2 uses
  %i.cy = load ptr, ptr %.0810.i.i.i.i, align 8, !tbaa !598
  store ptr %i.cy, ptr %.011.i.i.i.i, align 8, !tbaa !400
  %i.cz = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.cz, %3
  br i1 %.not.i.i.i.i, label %_ZSt4copyIPKN4llvm9MDOperandEPPNS0_8MetadataEET0_T_S8_S7_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3390

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.060 = phi ptr [ %i.dx, %.lr.ph ], [ %.060.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.04059 = phi i64 [ %i.dz, %.lr.ph ], [ %.04059.unr, %.lr.ph.prol.loopexit ]
  %.04258 = phi ptr [ %i.dy, %.lr.ph ], [ %.04258.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.db = load ptr, ptr %.04258, align 8, !tbaa !598
  store ptr %i.db, ptr %.060, align 8, !tbaa !400
  %i.dc = getelementptr inbounds nuw i8, ptr %.060, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.04258, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !598
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !400
  %i.df = getelementptr inbounds nuw i8, ptr %.060, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %.04258, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !598
  store ptr %i.dh, ptr %i.df, align 8, !tbaa !400
  %i.di = getelementptr inbounds nuw i8, ptr %.060, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %.04258, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !598
  store ptr %i.dk, ptr %i.di, align 8, !tbaa !400
  %i.dl = getelementptr inbounds nuw i8, ptr %.060, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %.04258, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !598
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !400
  %i.do = getelementptr inbounds nuw i8, ptr %.060, i64 40
  %i.dp = getelementptr inbounds nuw i8, ptr %.04258, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !598
  store ptr %i.dq, ptr %i.do, align 8, !tbaa !400
  %i.dr = getelementptr inbounds nuw i8, ptr %.060, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %.04258, i64 48
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !598
  store ptr %i.dt, ptr %i.dr, align 8, !tbaa !400
  %i.du = getelementptr inbounds nuw i8, ptr %.060, i64 56
  %i.dv = getelementptr inbounds nuw i8, ptr %.04258, i64 56
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !598
  store ptr %i.dw, ptr %i.du, align 8, !tbaa !400
  %i.dx = getelementptr inbounds nuw i8, ptr %.060, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %.04258, i64 64 ; 2 uses
  %i.dz = add i64 %.04059, -8                     ; 2 uses
  %.not45.7 = icmp eq i64 %i.dz, 0
  br i1 %.not45.7, label %._crit_edge, label %.lr.ph, !llvm.loop !3395

_ZSt4copyIPKN4llvm9MDOperandEPPNS0_8MetadataEET0_T_S8_S7_.exit: ; preds = %.lr.ph.i.i.i.i.i49, %.lr.ph.i.i.i.i, %middle.block, %._crit_edge, %_ZSt13move_backwardIPPN4llvm8MetadataES3_ET0_T_S5_S4_.exit, %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendIPKNS_9MDOperandEvEEvT_S8_.exit
  %.1 = phi ptr [ %i.aa, %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendIPKNS_9MDOperandEvEEvT_S8_.exit ], [ %i.ak, %middle.block ], [ %i.ak, %_ZSt13move_backwardIPPN4llvm8MetadataES3_ET0_T_S5_S4_.exit ], [ %i.ak, %._crit_edge ], [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.ak, %.lr.ph.i.i.i.i.i49 ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6insertIPKS2_vEEPS2_S7_T_S8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !122    ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !211  ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  %i.i = icmp eq ptr %1, %i.h
  %i.j = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.k = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 10 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = add nsw i64 %i.m, %i.g                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !212
  %i.q = zext i32 %i.p to i64
  %i.r = icmp ugt i64 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.s, i64 noundef %i.n, i64 noundef 8) #26
  %.pre8.pre.i = load i32, ptr %i.e, align 8, !tbaa !211
  %.pre62.pre = load ptr, ptr %0, align 8, !tbaa !122
  br label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i: ; preds = %bb.c, %bb.b
  %.pre62 = phi ptr [ %i.a, %bb.b ], [ %.pre62.pre, %bb.c ] ; 2 uses
  %.pre8.i = phi i32 [ %i.f, %bb.b ], [ %.pre8.pre.i, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %2, %3
  br i1 %.not.i.i, label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendIPKS2_vEEvT_S7_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i
  %i.t = zext i32 %.pre8.i to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre62, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 8 %2, i64 %i.l, i1 false)
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !211
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !122
  br label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendIPKS2_vEEvT_S7_.exit

_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendIPKS2_vEEvT_S7_.exit: ; preds = %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i, %bb.d
  %i.v = phi ptr [ %.pre62, %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i ], [ %.pre61, %bb.d ]
  %i.w = phi i32 [ %.pre8.i, %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i ], [ %.pre.i, %bb.d ]
  %i.x = trunc i64 %i.m to i32
  %i.y = add i32 %i.w, %i.x
  store i32 %i.y, ptr %i.e, align 8, !tbaa !211
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.d
  br label %_ZSt4copyIPKPN4llvm8MetadataEPS2_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.a
  %.idx52 = sub i64 0, %i.l
  %i.aa = ashr exact i64 %i.l, 3                  ; 5 uses
  %i.ab = add nsw i64 %i.aa, %i.g                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !212
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp ugt i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.f, label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ag, i64 noundef %i.ab, i64 noundef 8) #26
  %.pre = load ptr, ptr %0, align 8, !tbaa !122
  %.pre59 = load i32, ptr %i.e, align 8, !tbaa !211 ; 2 uses
  %.pre64 = zext i32 %.pre59 to i64
  br label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit: ; preds = %bb.e, %bb.f
  %.pre-phi = phi i64 [ %i.g, %bb.e ], [ %.pre64, %bb.f ] ; 3 uses
  %i.ah = phi i32 [ %i.f, %bb.e ], [ %.pre59, %bb.f ] ; 2 uses
  %i.ai = phi ptr [ %i.a, %bb.e ], [ %.pre, %bb.f ] ; 5 uses
  %4 = ptrtoaddr ptr %i.ai to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.d ; 14 uses
  %.idx = shl nuw nsw i64 %.pre-phi, 3            ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx ; 4 uses
  %gepdiff = sub nsw i64 %.idx, %i.d              ; 2 uses
  %i.al = ashr exact i64 %gepdiff, 3              ; 8 uses
  %.not = icmp ult i64 %i.al, %i.aa
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %.idx52 ; 2 uses
  %i.an = add nsw i64 %i.aa, %.pre-phi            ; 2 uses
  %i.ao = load i32, ptr %i.ac, align 4, !tbaa !212
  %i.ap = zext i32 %i.ao to i64
  %i.aq = icmp ugt i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.h, label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i46

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ar, i64 noundef %i.an, i64 noundef 8) #26
  %.pre.i47 = load i32, ptr %i.e, align 8, !tbaa !211 ; 2 uses
  %.pre12.i = zext i32 %.pre.i47 to i64
  %.pre60 = load ptr, ptr %0, align 8, !tbaa !122
  br label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i46

_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i46: ; preds = %bb.h, %bb.g
  %i.as = phi ptr [ %i.ai, %bb.g ], [ %.pre60, %bb.h ]
  %.pre-phi.i = phi i64 [ %.pre-phi, %bb.g ], [ %.pre12.i, %bb.h ]
  %i.at = phi i32 [ %i.ah, %bb.g ], [ %.pre.i47, %bb.h ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.pre-phi.i ; 2 uses
  %i.av = icmp sgt i64 %i.l, 8                    ; 2 uses
  br i1 %i.av, label %bb.i, label %bb.j, !prof !213

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i46
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.au, ptr nonnull align 8 %i.am, i64 %i.l, i1 false)
  %.pre11.i = load i32, ptr %i.e, align 8, !tbaa !211
  br label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit

bb.j:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit.i46
  %i.aw = icmp eq i64 %i.l, 8
  br i1 %i.aw, label %bb.k, label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !400
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !400
  br label %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit

_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.ay = phi i32 [ %.pre11.i, %bb.i ], [ %i.at, %bb.j ], [ %i.at, %bb.k ]
  %i.az = trunc i64 %i.aa to i32
  %i.ba = add i32 %i.ay, %i.az
  store i32 %i.ba, ptr %i.e, align 8, !tbaa !211
  %i.bb = add i64 %i.d, %i.l
  %gepdiff53 = sub i64 %.idx, %i.bb               ; 3 uses
  %i.bc = ashr exact i64 %gepdiff53, 3            ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 1
  br i1 %i.bd, label %bb.l, label %bb.m, !prof !213

bb.l:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit
  %i.be = sub nsw i64 0, %i.bc
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.be
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bf, ptr align 8 %i.aj, i64 %gepdiff53, i1 false)
  br label %_ZSt13move_backwardIPPN4llvm8MetadataES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit
  %i.bg = icmp eq i64 %gepdiff53, 8
  br i1 %i.bg, label %bb.n, label %_ZSt13move_backwardIPPN4llvm8MetadataES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !400
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !400
  br label %_ZSt13move_backwardIPPN4llvm8MetadataES3_ET0_T_S5_S4_.exit

_ZSt13move_backwardIPPN4llvm8MetadataES3_ET0_T_S5_S4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  br i1 %i.av, label %bb.o, label %bb.p, !prof !213

bb.o:                                             ; preds = %_ZSt13move_backwardIPPN4llvm8MetadataES3_ET0_T_S5_S4_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aj, ptr align 8 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPKPN4llvm8MetadataEPS2_ET0_T_S7_S6_.exit

bb.p:                                             ; preds = %_ZSt13move_backwardIPPN4llvm8MetadataES3_ET0_T_S5_S4_.exit
  %i.bj = icmp eq i64 %i.l, 8
  br i1 %i.bj, label %bb.q, label %_ZSt4copyIPKPN4llvm8MetadataEPS2_ET0_T_S7_S6_.exit

bb.q:                                             ; preds = %bb.p
  %i.bk = load ptr, ptr %2, align 8, !tbaa !400
  store ptr %i.bk, ptr %i.aj, align 8, !tbaa !400
  br label %_ZSt4copyIPKPN4llvm8MetadataEPS2_ET0_T_S7_S6_.exit

bb.r:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE7reserveEm.exit
  %i.bl = trunc i64 %i.aa to i32
  %i.bm = add i32 %i.ah, %i.bl                    ; 2 uses
  store i32 %i.bm, ptr %i.e, align 8, !tbaa !211
  %.not.i.i48 = icmp eq i64 %i.d, %.idx
  br i1 %.not.i.i48, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.r
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bn
  %i.bp = sub nsw i64 0, %i.al
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 8 %i.aj, i64 %gepdiff, i1 false)
  %min.iters.check = icmp ult i64 %i.al, 14
  br i1 %min.iters.check, label %.lr.ph.preheader78, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.br = add i64 %4, %i.b
  %i.bs = add i64 %i.c, %i.k
  %i.bt = sub i64 %i.bs, %i.br
  %diff.check = icmp ugt i64 %i.bt, -32
  br i1 %diff.check, label %.lr.ph.preheader78, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, -4                      ; 3 uses
  %i.bu = shl nsw i64 %n.vec, 3                   ; 2 uses
  %i.bv = getelementptr i8, ptr %i.aj, i64 %i.bu
  %i.bw = and i64 %i.al, 3
  %i.bx = getelementptr i8, ptr %2, i64 %i.bu     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.by ; 2 uses
  %next.gep74 = getelementptr i8, ptr %2, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep74, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep74, align 8, !tbaa !400
  %wide.load75 = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !400
  %i.ca = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !400
  store <2 x ptr> %wide.load75, ptr %i.ca, align 8, !tbaa !400
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !3396

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader78

.lr.ph.preheader78:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.058.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.preheader ], [ %i.bv, %middle.block ] ; 2 uses
  %.04057.ph = phi i64 [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.preheader ], [ %i.bw, %middle.block ] ; 4 uses
  %.04256.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.bx, %middle.block ] ; 2 uses
  %i.cc = add nsw i64 %.04057.ph, -1
  %xtraiter = and i64 %.04057.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader78, %.lr.ph.prol
  %.058.prol = phi ptr [ %i.ce, %.lr.ph.prol ], [ %.058.ph, %.lr.ph.preheader78 ] ; 2 uses
  %.04057.prol = phi i64 [ %i.cg, %.lr.ph.prol ], [ %.04057.ph, %.lr.ph.preheader78 ]
  %.04256.prol = phi ptr [ %i.cf, %.lr.ph.prol ], [ %.04256.ph, %.lr.ph.preheader78 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader78 ]
  %i.cd = load ptr, ptr %.04256.prol, align 8, !tbaa !400
  store ptr %i.cd, ptr %.058.prol, align 8, !tbaa !400
  %i.ce = getelementptr inbounds nuw i8, ptr %.058.prol, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.04256.prol, i64 8 ; 3 uses
  %i.cg = add i64 %.04057.prol, -1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !3397

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader78
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader78 ], [ %i.cf, %.lr.ph.prol ]
  %.058.unr = phi ptr [ %.058.ph, %.lr.ph.preheader78 ], [ %i.ce, %.lr.ph.prol ]
  %.04057.unr = phi i64 [ %.04057.ph, %.lr.ph.preheader78 ], [ %i.cg, %.lr.ph.prol ]
  %.04256.unr = phi ptr [ %.04256.ph, %.lr.ph.preheader78 ], [ %i.cf, %.lr.ph.prol ]
  %i.ch = icmp ult i64 %i.cc, 7
  br i1 %i.ch, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.r
  %.042.lcssa = phi ptr [ %2, %bb.r ], [ %i.bx, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.dh, %.lr.ph ] ; 3 uses
  %.not.i = icmp eq ptr %.042.lcssa, %3
  br i1 %.not.i, label %_ZSt4copyIPKPN4llvm8MetadataEPS2_ET0_T_S7_S6_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.ci = ptrtoint ptr %.042.lcssa to i64
  %i.cj = sub i64 %i.j, %i.ci
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 8 %.042.lcssa, i64 %i.cj, i1 false)
  br label %_ZSt4copyIPKPN4llvm8MetadataEPS2_ET0_T_S7_S6_.exit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.058 = phi ptr [ %i.dg, %.lr.ph ], [ %.058.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.04057 = phi i64 [ %i.di, %.lr.ph ], [ %.04057.unr, %.lr.ph.prol.loopexit ]
  %.04256 = phi ptr [ %i.dh, %.lr.ph ], [ %.04256.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ck = load ptr, ptr %.04256, align 8, !tbaa !400
  store ptr %i.ck, ptr %.058, align 8, !tbaa !400
  %i.cl = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.04256, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !400
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !400
  %i.co = getelementptr inbounds nuw i8, ptr %.058, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %.04256, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !400
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !400
  %i.cr = getelementptr inbounds nuw i8, ptr %.058, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %.04256, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !400
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !400
  %i.cu = getelementptr inbounds nuw i8, ptr %.058, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %.04256, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !400
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !400
  %i.cx = getelementptr inbounds nuw i8, ptr %.058, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %.04256, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !400
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !400
  %i.da = getelementptr inbounds nuw i8, ptr %.058, i64 48
  %i.db = getelementptr inbounds nuw i8, ptr %.04256, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !400
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !400
  %i.dd = getelementptr inbounds nuw i8, ptr %.058, i64 56
  %i.de = getelementptr inbounds nuw i8, ptr %.04256, i64 56
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !400
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !400
  %i.dg = getelementptr inbounds nuw i8, ptr %.058, i64 64
  %i.dh = getelementptr inbounds nuw i8, ptr %.04256, i64 64 ; 2 uses
  %i.di = add i64 %.04057, -8                     ; 2 uses
  %.not45.7 = icmp eq i64 %i.di, 0
  br i1 %.not45.7, label %._crit_edge, label %.lr.ph, !llvm.loop !3398

_ZSt4copyIPKPN4llvm8MetadataEPS2_ET0_T_S7_S6_.exit: ; preds = %bb.s, %._crit_edge, %bb.q, %bb.p, %bb.o, %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendIPKS2_vEEvT_S7_.exit
  %.1 = phi ptr [ %i.z, %_ZN4llvm15SmallVectorImplIPNS_8MetadataEE6appendIPKS2_vEEvT_S7_.exit ], [ %i.aj, %bb.q ], [ %i.aj, %bb.o ], [ %i.aj, %bb.p ], [ %i.aj, %._crit_edge ], [ %i.aj, %bb.s ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !211
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #26
  %i.f = load ptr, ptr %0, align 8, !tbaa !122
  %i.g = load i32, ptr %i.a, align 8, !tbaa !211
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !211
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !211
  ret void
}

declare noundef ptr @_ZN4llvm8MDString3getERNS_11LLVMContextENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm10BasicBlock20getUniquePredecessorEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !881  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !882
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !883
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !250  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.x, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !533
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #26
  br label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i

_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i:           ; preds = %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !533
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i

end_hunk_0
