Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Instruction?download=true
inline.NumInlined: 5444
inline.NumDeleted: 3591
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm9sandboxir7Tracker17emplaceIfTrackingINS0_13GenericSetterIXadL_ZNKS0_9FenceInst11getOrderingEvEEXadL_ZNS4_11setOrderingENS_14AtomicOrderingEEEEEJPS4_EEEbDpT0_:bb.a
; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm9sandboxir9FenceInst14setSyncScopeIDEh(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !18, !align !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = tail call noundef zeroext i1 @_ZN4llvm9sandboxir7Tracker17emplaceIfTrackingINS0_13GenericSetterIXadL_ZNKS0_9FenceInst14getSyncScopeIDEvEEXadL_ZNS4_14setSyncScopeIDEhEEEEJPS4_EEEbDpT0_(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull %0) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i8 %1, ptr %i.g, align 8, !tbaa !299
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm9sandboxir7Tracker17emplaceIfTrackingINS0_13GenericSetterIXadL_ZNKS0_9FenceInst14getSyncScopeIDEvEEXadL_ZNS4_14setSyncScopeIDEhEEEEJPS4_EEEbDpT0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.49", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !95
  %i.c = icmp eq i32 %i.b, 1                      ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.d = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19, !noalias !301, !inline_history !304 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm9sandboxir13GenericSetterIXadL_ZNKS0_9FenceInst14getSyncScopeIDEvEEXadL_ZNS2_14setSyncScopeIDEhEEEE, i64 16), ptr %i.d, align 8, !tbaa !88, !noalias !301
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !305, !noalias !301
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53, !noalias !301
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load i8, ptr %i.i, align 8, !tbaa !299, !noalias !301
  store i8 %i.j, ptr %i.f, align 8, !tbaa !307, !noalias !301
  store ptr %i.d, ptr %2, align 8, !tbaa !111
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !92   ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !114
  %.not.i.i.not.i.i = icmp ult i32 %i.l, %i.p
  %.pre3.i.i = load ptr, ptr %0, align 8, !tbaa !90 ; 4 uses
  %i.q = ptrtoint ptr %i.d to i64                 ; 2 uses
  br i1 %.not.i.i.not.i.i, label %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit, label %bb.c, !prof !115

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.pre3.i.i, i64 %i.m
  %i.s = icmp uge ptr %2, %.pre3.i.i
  %i.t = icmp ult ptr %2, %i.r
  %spec.select.i.i.i.i.i.i = and i1 %i.s, %i.t
  br i1 %spec.select.i.i.i.i.i.i, label %bb.d, label %.critedge.i.i.i.i, !prof !116

bb.d:                                             ; preds = %bb.c
  %i.u = ptrtoint ptr %2 to i64
  %i.v = ptrtoint ptr %.pre3.i.i to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.n)
  %i.x = load ptr, ptr %0, align 8, !tbaa !90     ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.w ; 2 uses
  %.pre = load i64, ptr %i.y, align 8, !tbaa !117
  br label %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit

.critedge.i.i.i.i:                                ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.n)
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !90
  br label %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit

_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit: ; preds = %bb.b, %bb.d, %.critedge.i.i.i.i
  %i.z = phi i64 [ %i.q, %bb.b ], [ %.pre, %bb.d ], [ %i.q, %.critedge.i.i.i.i ]
  %i.aa = phi ptr [ %.pre3.i.i, %bb.b ], [ %i.x, %bb.d ], [ %.pre.i.i, %.critedge.i.i.i.i ]
  %.016.i.i.i.i = phi ptr [ %2, %bb.b ], [ %i.y, %bb.d ], [ %2, %.critedge.i.i.i.i ]
  %i.ab = load i32, ptr %i.k, align 8, !tbaa !92  ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ac
  store i64 %i.z, ptr %i.ad, align 8, !tbaa !117
  store ptr null, ptr %.016.i.i.i.i, align 8, !tbaa !117
  %i.ae = add i32 %i.ab, 1
  store i32 %i.ae, ptr %i.k, align 8, !tbaa !92
  %i.af = load ptr, ptr %2, align 8, !tbaa !117   ; 3 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm9sandboxir13GenericSetterIXadL_ZNKS1_9FenceInst14getSyncScopeIDEvEEXadL_ZNS3_14setSyncScopeIDEhEEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm9sandboxir12IRChangeBaseEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm9sandboxir12IRChangeBaseEEclEPS2_.exit.i: ; preds = %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !88
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #18, !inline_history !118
  br label %_ZNSt10unique_ptrIN4llvm9sandboxir13GenericSetterIXadL_ZNKS1_9FenceInst14getSyncScopeIDEvEEXadL_ZNS3_14setSyncScopeIDEhEEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm9sandboxir13GenericSetterIXadL_ZNKS1_9FenceInst14getSyncScopeIDEvEEXadL_ZNS3_14setSyncScopeIDEhEEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm9sandboxir12IRChangeBaseEEclEPS2_.exit.i, %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZNSt10unique_ptrIN4llvm9sandboxir13GenericSetterIXadL_ZNKS1_9FenceInst14getSyncScopeIDEvEEXadL_ZNS3_14setSyncScopeIDEhEEEESt14default_deleteIS4_EED2Ev.exit
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm9sandboxir10SelectInst6createEPNS0_5ValueES3_S3_NS0_14InsertPositionERNS0_7ContextERKNS_5TwineE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly byval(%"class.llvm::sandboxir::InsertPosition") align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(488) %4, ptr noundef nonnull align 8 dereferenceable(34) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::sandboxir::InsertPosition", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.a = call noundef ptr @_ZNK4llvm9sandboxir10BBIterator13getNodeParentEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #18 ; 2 uses
  %.sroa.310.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.310.0.copyload.i = load ptr, ptr %.sroa.310.0..sroa_idx.i, align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50, !nonnull !18, !align !19 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 384 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53, !noalias !308 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.310.0.copyload.i, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.h = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK4llvm9sandboxir10BBIterator8getInstrENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr %.sroa.310.0.copyload.i, i64 %.sroa.2.0.copyload.i.i.i) #18
  %i.i = call noundef ptr @_ZNK4llvm9sandboxir11Instruction25getTopmostLLVMInstructionEv(ptr noundef nonnull align 8 dereferenceable(36) %i.h) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  store ptr %i.l, ptr %i.m, align 8, !tbaa !266
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  store ptr %i.j, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.i) #18
  %i.p = load i64, ptr %i.o, align 8, !tbaa !276
  store i64 %i.p, ptr %i.d, align 8, !tbaa !276
  br label %_ZN4llvm9sandboxir11Instruction12setInsertPosENS0_14InsertPositionE.exit

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  store ptr %i.f, ptr %i.q, align 8, !tbaa !266
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  store ptr %i.g, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  store i16 0, ptr %.sroa.4.0..sroa_idx.i8.i, align 8
  br label %_ZN4llvm9sandboxir11Instruction12setInsertPosENS0_14InsertPositionE.exit

_ZN4llvm9sandboxir11Instruction12setInsertPosENS0_14InsertPositionE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.y = call noundef ptr @_ZN4llvm13IRBuilderBase12CreateSelectEPNS_5ValueES2_S2_RKNS_5TwineEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef %i.t, ptr noundef %i.v, ptr noundef %i.x, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef null) #18 ; 3 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !277
  %.not = icmp eq i8 %i.z, 89
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm9sandboxir11Instruction12setInsertPosENS0_14InsertPositionE.exit
  %i.aa = call noundef ptr @_ZN4llvm9sandboxir7Context16createSelectInstEPNS_10SelectInstE(ptr noundef nonnull align 8 dereferenceable(488) %4, ptr noundef nonnull %i.y) #18
  br label %bb.f

bb.e:                                             ; preds = %_ZN4llvm9sandboxir11Instruction12setInsertPosENS0_14InsertPositionE.exit
  %i.ab = call noundef ptr @_ZN4llvm9sandboxir7Context19getOrCreateConstantEPNS_8ConstantE(ptr noundef nonnull align 8 dereferenceable(488) %4, ptr noundef nonnull %i.y) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1 = phi ptr [ %i.ab, %bb.e ], [ %i.aa, %bb.d ]
  ret ptr %.1
}

declare noundef ptr @_ZN4llvm13IRBuilderBase12CreateSelectEPNS_5ValueES2_S2_RKNS_5TwineEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm9sandboxir7Context16createSelectInstEPNS_10SelectInstE(ptr noundef nonnull align 8 dereferenceable(488), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm9sandboxir7Context19getOrCreateConstantEPNS_8ConstantE(ptr noundef nonnull align 8 dereferenceable(488), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm9sandboxir10SelectInst10swapValuesEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.49", align 8 ; 9 uses
  %2 = alloca %"class.llvm::sandboxir::Use", align 8 ; 2 uses
  %3 = alloca %"class.llvm::sandboxir::Use", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !18, !align !19 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !88, !noalias !311
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !311
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.llvm::sandboxir::Use") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1, i1 noundef zeroext true) #18, !inline_history !314
  %i.g = load ptr, ptr %0, align 8, !tbaa !88, !noalias !315
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noalias !315
  call void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.llvm::sandboxir::Use") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, i1 noundef zeroext true) #18, !inline_history !314
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.k = load i32, ptr %i.j, align 8, !tbaa !95
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.b, label %_ZN4llvm9sandboxir7Tracker17emplaceIfTrackingINS0_7UseSwapEJNS0_3UseES4_EEEbDpT0_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload2 = load <3 x ptr>, ptr %2, align 8
  %.sroa.03.0.copyload4 = load <3 x ptr>, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.m = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19, !noalias !318 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm9sandboxir7UseSwapE, i64 16), ptr %i.m, align 8, !tbaa !88, !noalias !318
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store <3 x ptr> %.sroa.0.0.copyload2, ptr %i.n, align 8, !noalias !318
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store <3 x ptr> %.sroa.03.0.copyload4, ptr %i.o, align 8, !noalias !318
  store ptr %i.m, ptr %1, align 8, !tbaa !111
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !92   ; 2 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !114
  %.not.i.i.not.i.i.i = icmp ult i32 %i.q, %i.u
  %.pre3.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !90 ; 4 uses
  %i.v = ptrtoint ptr %i.m to i64                 ; 2 uses
  br i1 %.not.i.i.not.i.i.i, label %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit.i, label %bb.c, !prof !115

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.pre3.i.i.i, i64 %i.r
  %i.x = icmp uge ptr %1, %.pre3.i.i.i
  %i.y = icmp ult ptr %1, %i.w
  %spec.select.i.i.i.i.i.i.i = and i1 %i.x, %i.y
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.d, label %.critedge.i.i.i.i.i, !prof !116

bb.d:                                             ; preds = %bb.c
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = ptrtoint ptr %.pre3.i.i.i to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %i.s)
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !90  ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.ab ; 2 uses
  %.pre.i = load i64, ptr %i.ad, align 8, !tbaa !117
  br label %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit.i

.critedge.i.i.i.i.i:                              ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %i.s)
  %.pre.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !90
  br label %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit.i

_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit.i: ; preds = %.critedge.i.i.i.i.i, %bb.d, %bb.b
  %i.ae = phi i64 [ %i.v, %bb.b ], [ %.pre.i, %bb.d ], [ %i.v, %.critedge.i.i.i.i.i ]
  %i.af = phi ptr [ %.pre3.i.i.i, %bb.b ], [ %i.ac, %bb.d ], [ %.pre.i.i.i, %.critedge.i.i.i.i.i ]
  %.016.i.i.i.i.i = phi ptr [ %1, %bb.b ], [ %i.ad, %bb.d ], [ %1, %.critedge.i.i.i.i.i ]
  %i.ag = load i32, ptr %i.p, align 8, !tbaa !92  ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ah
  store i64 %i.ae, ptr %i.ai, align 8, !tbaa !117
  store ptr null, ptr %.016.i.i.i.i.i, align 8, !tbaa !117
  %i.aj = add i32 %i.ag, 1
  store i32 %i.aj, ptr %i.p, align 8, !tbaa !92
  %i.ak = load ptr, ptr %1, align 8, !tbaa !117   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm9sandboxir7UseSwapESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm9sandboxir12IRChangeBaseEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4llvm9sandboxir12IRChangeBaseEEclEPS2_.exit.i.i: ; preds = %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !88
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak) #18, !inline_history !321
  br label %_ZNSt10unique_ptrIN4llvm9sandboxir7UseSwapESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm9sandboxir7UseSwapESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm9sandboxir12IRChangeBaseEEclEPS2_.exit.i.i, %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %_ZN4llvm9sandboxir7Tracker17emplaceIfTrackingINS0_7UseSwapEJNS0_3UseES4_EEEbDpT0_.exit

_ZN4llvm9sandboxir7Tracker17emplaceIfTrackingINS0_7UseSwapEJNS0_3UseES4_EEEbDpT0_.exit: ; preds = %bb.a, %_ZNSt10unique_ptrIN4llvm9sandboxir7UseSwapESt14default_deleteIS2_EED2Ev.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !53 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -64
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -32
  call void @_ZN4llvm3Use4swapERS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.ar) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm9sandboxir10SelectInst7classofEPKNS0_5ValueE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !154
  %i.c = icmp eq i32 %i.b, 35
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm9sandboxir12BrInstCommon12LLVMBBToSBBBclEPNS_10BasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !322, !nonnull !18, !align !19
  %i.b = tail call noundef ptr @_ZNK4llvm9sandboxir7Context8getValueEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(488) %i.a, ptr noundef %1) #18
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm9sandboxir12BrInstCommon17ConstLLVMBBToSBBBclEPKNS_10BasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !324, !nonnull !18, !align !19
  %i.b = tail call noundef ptr @_ZNK4llvm9sandboxir7Context8getValueEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(488) %i.a, ptr noundef %1) #18
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm9sandboxir12UncondBrInst6createEPNS0_10BasicBlockENS0_14InsertPositionERNS0_7ContextE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly byval(%"class.llvm::sandboxir::InsertPosition") align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(488) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %4 = alloca %"class.llvm::sandboxir::InsertPosition", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = call noundef ptr @_ZNK4llvm9sandboxir10BBIterator13getNodeParentEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #18 ; 2 uses
  %.sroa.310.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.310.0.copyload.i = load ptr, ptr %.sroa.310.0..sroa_idx.i, align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50, !nonnull !18, !align !19 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 384 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53, !noalias !326 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.310.0.copyload.i, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.h = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK4llvm9sandboxir10BBIterator8getInstrENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr %.sroa.310.0.copyload.i, i64 %.sroa.2.0.copyload.i.i.i) #18
  %i.i = call noundef ptr @_ZNK4llvm9sandboxir11Instruction25getTopmostLLVMInstructionEv(ptr noundef nonnull align 8 dereferenceable(36) %i.h) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  store ptr %i.l, ptr %i.m, align 8, !tbaa !266
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  store ptr %i.j, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.i) #18
  %i.p = load i64, ptr %i.o, align 8, !tbaa !276
  store i64 %i.p, ptr %i.d, align 8, !tbaa !276
  br label %_ZN4llvm9sandboxir11Instruction12setInsertPosENS0_14InsertPositionE.exit

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  store ptr %i.f, ptr %i.q, align 8, !tbaa !266
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  store ptr %i.g, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  store i16 0, ptr %.sroa.4.0..sroa_idx.i8.i, align 8
  br label %_ZN4llvm9sandboxir11Instruction12setInsertPosENS0_14InsertPositionE.exit

_ZN4llvm9sandboxir11Instruction12setInsertPosENS0_14InsertPositionE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53
  %i.u = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 1) #18 ; 4 uses
  call void @_ZN4llvm12UncondBrInstC1EPNS_10BasicBlockENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef %i.t, ptr null, i64 0) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  store i16 257, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !278, !nonnull !18, !align !19 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.y, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #18, !inline_history !329
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull %i.u) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.ac = call noundef ptr @_ZN4llvm9sandboxir7Context18createUncondBrInstEPNS_12UncondBrInstE(ptr noundef nonnull align 8 dereferenceable(488) %2, ptr noundef nonnull %i.u) #18
  ret ptr %i.ac
}

declare noundef ptr @_ZN4llvm9sandboxir7Context18createUncondBrInstEPNS_12UncondBrInstE(ptr noundef nonnull align 8 dereferenceable(488), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm9sandboxir12UncondBrInst12getSuccessorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !18, !align !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.g = tail call noundef ptr @_ZNK4llvm9sandboxir7Context8getValueEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(488) %i.b, ptr noundef %i.f) #18
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm9sandboxir12UncondBrInst12setSuccessorEPNS0_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !18, !align !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = tail call noundef zeroext i1 @_ZN4llvm9sandboxir7Tracker17emplaceIfTrackingINS0_13GenericSetterIXadL_ZNKS0_12UncondBrInst12getSuccessorEvEEXadL_ZNS4_12setSuccessorEPNS0_10BasicBlockEEEEEJPS4_EEEbDpT0_(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull %0) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53   ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 -16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !122  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %i.f, i64 -24 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm9sandboxir17ShuffleVectorInst6createEPNS0_5ValueES3_NS_8ArrayRefIiEENS0_14InsertPositionERNS0_7ContextERKNS_5TwineE:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ag, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !88
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %i.ac, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #18, !inline_history !950
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull %i.ac) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit: ; preds = %_ZN4llvm9sandboxir11Instruction12setInsertPosENS0_14InsertPositionE.exit, %bb.d
  %.1.i = phi ptr [ %i.ac, %bb.d ], [ %i.ab, %_ZN4llvm9sandboxir11Instruction12setInsertPosENS0_14InsertPositionE.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ak = load i8, ptr %.1.i, align 8, !tbaa !277
  %.not = icmp eq i8 %i.ak, 95
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit
  %i.al = call noundef ptr @_ZN4llvm9sandboxir7Context23createShuffleVectorInstEPNS_17ShuffleVectorInstE(ptr noundef nonnull align 8 dereferenceable(488) %5, ptr noundef nonnull %.1.i) #18
  br label %bb.g

bb.f:                                             ; preds = %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit
  %i.am = call noundef ptr @_ZN4llvm9sandboxir7Context19getOrCreateConstantEPNS_8ConstantE(ptr noundef nonnull align 8 dereferenceable(488) %5, ptr noundef nonnull %.1.i) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.1 = phi ptr [ %i.am, %bb.f ], [ %i.al, %bb.e ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm9sandboxir17ShuffleVectorInst14setShuffleMaskENS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !18, !align !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = tail call noundef zeroext i1 @_ZN4llvm9sandboxir7Tracker17emplaceIfTrackingINS0_20ShuffleVectorSetMaskEJPNS0_17ShuffleVectorInstEEEEbDpT0_(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull %0) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  tail call void @_ZN4llvm17ShuffleVectorInst14setShuffleMaskENS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr %1, i64 %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm9sandboxir7Tracker17emplaceIfTrackingINS0_20ShuffleVectorSetMaskEJPNS0_17ShuffleVectorInstEEEEbDpT0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.49", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !95
  %i.c = icmp eq i32 %i.b, 1                      ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.d = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19, !noalias !954 ; 3 uses
  tail call void @_ZN4llvm9sandboxir20ShuffleVectorSetMaskC1EPNS0_17ShuffleVectorInstE(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef %1) #18, !noalias !954
  store ptr %i.d, ptr %2, align 8, !tbaa !111
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !92   ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !114
  %.not.i.i.not.i.i = icmp ult i32 %i.f, %i.j
  %.pre3.i.i = load ptr, ptr %0, align 8, !tbaa !90 ; 4 uses
  %i.k = ptrtoint ptr %i.d to i64                 ; 2 uses
  br i1 %.not.i.i.not.i.i, label %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit, label %bb.c, !prof !115

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.pre3.i.i, i64 %i.g
  %i.m = icmp uge ptr %2, %.pre3.i.i
  %i.n = icmp ult ptr %2, %i.l
  %spec.select.i.i.i.i.i.i = and i1 %i.m, %i.n
  br i1 %spec.select.i.i.i.i.i.i, label %bb.d, label %.critedge.i.i.i.i, !prof !116

bb.d:                                             ; preds = %bb.c
  %i.o = ptrtoint ptr %2 to i64
  %i.p = ptrtoint ptr %.pre3.i.i to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.h)
  %i.r = load ptr, ptr %0, align 8, !tbaa !90     ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.q ; 2 uses
  %.pre = load i64, ptr %i.s, align 8, !tbaa !117
  br label %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit

.critedge.i.i.i.i:                                ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.h)
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !90
  br label %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit

_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit: ; preds = %bb.b, %bb.d, %.critedge.i.i.i.i
  %i.t = phi i64 [ %i.k, %bb.b ], [ %.pre, %bb.d ], [ %i.k, %.critedge.i.i.i.i ]
  %i.u = phi ptr [ %.pre3.i.i, %bb.b ], [ %i.r, %bb.d ], [ %.pre.i.i, %.critedge.i.i.i.i ]
  %.016.i.i.i.i = phi ptr [ %2, %bb.b ], [ %i.s, %bb.d ], [ %2, %.critedge.i.i.i.i ]
  %i.v = load i32, ptr %i.e, align 8, !tbaa !92   ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.w
  store i64 %i.t, ptr %i.x, align 8, !tbaa !117
  store ptr null, ptr %.016.i.i.i.i, align 8, !tbaa !117
  %i.y = add i32 %i.v, 1
  store i32 %i.y, ptr %i.e, align 8, !tbaa !92
  %i.z = load ptr, ptr %2, align 8, !tbaa !117    ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm9sandboxir20ShuffleVectorSetMaskESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm9sandboxir12IRChangeBaseEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm9sandboxir12IRChangeBaseEEclEPS2_.exit.i: ; preds = %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !88
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #18, !inline_history !118
  br label %_ZNSt10unique_ptrIN4llvm9sandboxir20ShuffleVectorSetMaskESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm9sandboxir20ShuffleVectorSetMaskESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm9sandboxir12IRChangeBaseEEclEPS2_.exit.i, %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZNSt10unique_ptrIN4llvm9sandboxir20ShuffleVectorSetMaskESt14default_deleteIS2_EED2Ev.exit
  ret i1 %i.c
}

declare void @_ZN4llvm17ShuffleVectorInst14setShuffleMaskENS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(112), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm9sandboxir17ShuffleVectorInst7getTypeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50, !nonnull !18, !align !19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !389  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8, !tbaa !245
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN4llvm9sandboxir7Context7getTypeEPNS_4TypeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.j = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_9sandboxir4TypeENS5_7Context11TypeDeleterEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !957 ; 2 uses
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.j, 0 ; 2 uses
  %.fca.1.extract.i.i.i = extractvalue { ptr, i8 } %i.j, 1
  %i.k = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  br i1 %i.k, label %bb.c, label %_ZNSt10unique_ptrIN4llvm9sandboxir4TypeENS1_7Context11TypeDeleterEED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.l = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19 ; 3 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !245
  store ptr %i.m, ptr %i.l, align 8, !tbaa !251
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.c, ptr %i.n, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !253  ; 2 uses
  store ptr %i.l, ptr %i.o, align 8, !tbaa !253
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm9sandboxir4TypeENS1_7Context11TypeDeleterEED2Ev.exit.i, label %_ZN4llvm9sandboxir7Context11TypeDeleterclEPNS0_4TypeE.exit.i.i.i.i.i

_ZN4llvm9sandboxir7Context11TypeDeleterclEPNS0_4TypeE.exit.i.i.i.i.i: ; preds = %bb.c
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 16) #21
  br label %_ZNSt10unique_ptrIN4llvm9sandboxir4TypeENS1_7Context11TypeDeleterEED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm9sandboxir4TypeENS1_7Context11TypeDeleterEED2Ev.exit.i: ; preds = %_ZN4llvm9sandboxir7Context11TypeDeleterclEPNS0_4TypeE.exit.i.i.i.i.i, %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !253
  br label %_ZN4llvm9sandboxir7Context7getTypeEPNS_4TypeE.exit

_ZN4llvm9sandboxir7Context7getTypeEPNS_4TypeE.exit: ; preds = %bb.a, %_ZNSt10unique_ptrIN4llvm9sandboxir4TypeENS1_7Context11TypeDeleterEED2Ev.exit.i
  %.0.i = phi ptr [ %i.r, %_ZNSt10unique_ptrIN4llvm9sandboxir4TypeENS1_7Context11TypeDeleterEED2Ev.exit.i ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm9sandboxir17ShuffleVectorInst7commuteEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.49", align 8 ; 9 uses
  %2 = alloca %"class.llvm::sandboxir::Use", align 8 ; 2 uses
  %3 = alloca %"class.llvm::sandboxir::Use", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !18, !align !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = tail call noundef zeroext i1 @_ZN4llvm9sandboxir7Tracker17emplaceIfTrackingINS0_20ShuffleVectorSetMaskEJPNS0_17ShuffleVectorInstEEEEbDpT0_(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull %0) ; 0 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !18, !align !19 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !88, !noalias !962
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noalias !962
  call void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.llvm::sandboxir::Use") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 0, i1 noundef zeroext true) #18, !inline_history !314
  %i.j = load ptr, ptr %0, align 8, !tbaa !88, !noalias !965
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !noalias !965
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.llvm::sandboxir::Use") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1, i1 noundef zeroext true) #18, !inline_history !314
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.n = load i32, ptr %i.m, align 8, !tbaa !95
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.b, label %_ZN4llvm9sandboxir7Tracker17emplaceIfTrackingINS0_7UseSwapEJNS0_3UseES4_EEEbDpT0_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload2 = load <3 x ptr>, ptr %2, align 8
  %.sroa.03.0.copyload4 = load <3 x ptr>, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.p = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19, !noalias !968 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm9sandboxir7UseSwapE, i64 16), ptr %i.p, align 8, !tbaa !88, !noalias !968
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store <3 x ptr> %.sroa.0.0.copyload2, ptr %i.q, align 8, !noalias !968
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store <3 x ptr> %.sroa.03.0.copyload4, ptr %i.r, align 8, !noalias !968
  store ptr %i.p, ptr %1, align 8, !tbaa !111
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !92   ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !114
  %.not.i.i.not.i.i.i = icmp ult i32 %i.t, %i.x
  %.pre3.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !90 ; 4 uses
  %i.y = ptrtoint ptr %i.p to i64                 ; 2 uses
  br i1 %.not.i.i.not.i.i.i, label %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit.i, label %bb.c, !prof !115

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.pre3.i.i.i, i64 %i.u
  %i.aa = icmp uge ptr %1, %.pre3.i.i.i
  %i.ab = icmp ult ptr %1, %i.z
  %spec.select.i.i.i.i.i.i.i = and i1 %i.aa, %i.ab
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.d, label %.critedge.i.i.i.i.i, !prof !116

bb.d:                                             ; preds = %bb.c
  %i.ac = ptrtoint ptr %1 to i64
  %i.ad = ptrtoint ptr %.pre3.i.i.i to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(128) %i.f, i64 noundef %i.v)
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !90  ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.ae ; 2 uses
  %.pre.i = load i64, ptr %i.ag, align 8, !tbaa !117
  br label %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit.i

.critedge.i.i.i.i.i:                              ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_9sandboxir12IRChangeBaseESt14default_deleteIS3_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(128) %i.f, i64 noundef %i.v)
  %.pre.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !90
  br label %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit.i

_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit.i: ; preds = %.critedge.i.i.i.i.i, %bb.d, %bb.b
  %i.ah = phi i64 [ %i.y, %bb.b ], [ %.pre.i, %bb.d ], [ %i.y, %.critedge.i.i.i.i.i ]
  %i.ai = phi ptr [ %.pre3.i.i.i, %bb.b ], [ %i.af, %bb.d ], [ %.pre.i.i.i, %.critedge.i.i.i.i.i ]
  %.016.i.i.i.i.i = phi ptr [ %1, %bb.b ], [ %i.ag, %bb.d ], [ %1, %.critedge.i.i.i.i.i ]
  %i.aj = load i32, ptr %i.s, align 8, !tbaa !92  ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.ah, ptr %i.al, align 8, !tbaa !117
  store ptr null, ptr %.016.i.i.i.i.i, align 8, !tbaa !117
  %i.am = add i32 %i.aj, 1
  store i32 %i.am, ptr %i.s, align 8, !tbaa !92
  %i.an = load ptr, ptr %1, align 8, !tbaa !117   ; 3 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm9sandboxir7UseSwapESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm9sandboxir12IRChangeBaseEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4llvm9sandboxir12IRChangeBaseEEclEPS2_.exit.i.i: ; preds = %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !88
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #18, !inline_history !321
  br label %_ZNSt10unique_ptrIN4llvm9sandboxir7UseSwapESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm9sandboxir7UseSwapESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm9sandboxir12IRChangeBaseEEclEPS2_.exit.i.i, %_ZN4llvm9sandboxir7Tracker5trackEOSt10unique_ptrINS0_12IRChangeBaseESt14default_deleteIS3_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %_ZN4llvm9sandboxir7Tracker17emplaceIfTrackingINS0_7UseSwapEJNS0_3UseES4_EEEbDpT0_.exit

_ZN4llvm9sandboxir7Tracker17emplaceIfTrackingINS0_7UseSwapEJNS0_3UseES4_EEEbDpT0_.exit: ; preds = %bb.a, %_ZNSt10unique_ptrIN4llvm9sandboxir7UseSwapESt14default_deleteIS2_EED2Ev.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53
  call void @_ZN4llvm17ShuffleVectorInst7commuteEv(ptr noundef nonnull align 8 dereferenceable(112) %i.as) #18
  ret void
}

declare void @_ZN4llvm17ShuffleVectorInst7commuteEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm9sandboxir17ShuffleVectorInst24getShuffleMaskForBitcodeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !18, !align !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !971
  %i.g = tail call noundef ptr @_ZN4llvm9sandboxir7Context19getOrCreateConstantEPNS_8ConstantE(ptr noundef nonnull align 8 dereferenceable(488) %i.b, ptr noundef %i.f) #18
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm9sandboxir17ShuffleVectorInst28convertShuffleMaskForBitcodeENS_8ArrayRefIiEEPNS0_4TypeE(ptr %0, i64 %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !644, !nonnull !18, !align !19
  %i.c = load ptr, ptr %2, align 8, !tbaa !251
  %i.d = tail call noundef ptr @_ZN4llvm17ShuffleVectorInst28convertShuffleMaskForBitcodeENS_8ArrayRefIiEEPNS_4TypeE(ptr %0, i64 %1, ptr noundef %i.c) #18
  %i.e = tail call noundef ptr @_ZN4llvm9sandboxir7Context19getOrCreateConstantEPNS_8ConstantE(ptr noundef nonnull align 8 dereferenceable(488) %i.b, ptr noundef %i.d) #18
  ret ptr %i.e
}

declare noundef ptr @_ZN4llvm17ShuffleVectorInst28convertShuffleMaskForBitcodeENS_8ArrayRefIiEEPNS_4TypeE(ptr, i64, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm9sandboxir18ExtractElementInst20getVectorOperandTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %"class.llvm::sandboxir::Use", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50, !nonnull !18, !align !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.d = load ptr, ptr %0, align 8, !tbaa !88, !noalias !979
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !979
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.llvm::sandboxir::Use") align 8 %1, ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 0, i1 noundef zeroext true) #18, !inline_history !982
  %i.g = call noundef ptr @_ZNK4llvm9sandboxir3Use3getEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.h = call noundef ptr @_ZNK4llvm9sandboxir5Value7getTypeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.g) #18
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !251  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8, !tbaa !245
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN4llvm9sandboxir7Context7getTypeEPNS_4TypeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.l = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4TypeESt10unique_ptrINS_9sandboxir4TypeENS5_7Context11TypeDeleterEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !983 ; 2 uses
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.l, 0 ; 2 uses
  %.fca.1.extract.i.i.i = extractvalue { ptr, i8 } %i.l, 1
  %i.m = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  br i1 %i.m, label %bb.c, label %_ZNSt10unique_ptrIN4llvm9sandboxir4TypeENS1_7Context11TypeDeleterEED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.n = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19 ; 3 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !245
  store ptr %i.o, ptr %i.n, align 8, !tbaa !251
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.c, ptr %i.p, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !253  ; 2 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !253
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm9sandboxir4TypeENS1_7Context11TypeDeleterEED2Ev.exit.i, label %_ZN4llvm9sandboxir7Context11TypeDeleterclEPNS0_4TypeE.exit.i.i.i.i.i

_ZN4llvm9sandboxir7Context11TypeDeleterclEPNS0_4TypeE.exit.i.i.i.i.i: ; preds = %bb.c
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 16) #21
  br label %_ZNSt10unique_ptrIN4llvm9sandboxir4TypeENS1_7Context11TypeDeleterEED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm9sandboxir4TypeENS1_7Context11TypeDeleterEED2Ev.exit.i: ; preds = %_ZN4llvm9sandboxir7Context11TypeDeleterclEPNS0_4TypeE.exit.i.i.i.i.i, %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !253
  br label %_ZN4llvm9sandboxir7Context7getTypeEPNS_4TypeE.exit

_ZN4llvm9sandboxir7Context7getTypeEPNS_4TypeE.exit: ; preds = %bb.a, %_ZNSt10unique_ptrIN4llvm9sandboxir4TypeENS1_7Context11TypeDeleterEED2Ev.exit.i
  %.0.i = phi ptr [ %i.t, %_ZNSt10unique_ptrIN4llvm9sandboxir4TypeENS1_7Context11TypeDeleterEED2Ev.exit.i ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.0.i
}

declare noundef ptr @_ZNK4llvm9sandboxir5Value7getTypeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm9sandboxir16ExtractValueInst6createEPNS0_5ValueENS_8ArrayRefIjEENS0_14InsertPositionERNS0_7ContextERKNS_5TwineE(ptr nofree noundef readonly captures(none) %0, ptr %1, i64 %2, ptr nofree noundef readonly byval(%"class.llvm::sandboxir::InsertPosition") align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(488) %4, ptr noundef nonnull align 8 dereferenceable(34) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %7 = alloca %"class.llvm::sandboxir::InsertPosition", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.a = call noundef ptr @_ZNK4llvm9sandboxir10BBIterator13getNodeParentEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #18 ; 2 uses
  %.sroa.310.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.310.0.copyload.i = load ptr, ptr %.sroa.310.0..sroa_idx.i, align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50, !nonnull !18, !align !19 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 384 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53, !noalias !988 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.310.0.copyload.i, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.h = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK4llvm9sandboxir10BBIterator8getInstrENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr %.sroa.310.0.copyload.i, i64 %.sroa.2.0.copyload.i.i.i) #18
  %i.i = call noundef ptr @_ZNK4llvm9sandboxir11Instruction25getTopmostLLVMInstructionEv(ptr noundef nonnull align 8 dereferenceable(36) %i.h) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  store ptr %i.l, ptr %i.m, align 8, !tbaa !266
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  store ptr %i.j, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.i) #18
  %i.p = load i64, ptr %i.o, align 8, !tbaa !276
  store i64 %i.p, ptr %i.d, align 8, !tbaa !276
  br label %_ZN4llvm9sandboxir11Instruction12setInsertPosENS0_14InsertPositionE.exit

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  store ptr %i.f, ptr %i.q, align 8, !tbaa !266
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  store ptr %i.g, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  store i16 0, ptr %.sroa.4.0..sroa_idx.i8.i, align 8
  br label %_ZN4llvm9sandboxir11Instruction12setInsertPosENS0_14InsertPositionE.exit

end_hunk_1
