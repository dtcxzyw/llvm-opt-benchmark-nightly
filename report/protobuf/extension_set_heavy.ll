inline.NumInlined: 1229
inline.NumDeleted: 578
begin_hunk_0_@_ZN6google8protobuf8internal12ExtensionSet14ReleaseMessageEPNS0_5ArenaEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE:bb.a
bb.i:                                             ; preds = %bb.a, %bb.h
  %.019 = phi ptr [ %.0, %bb.h ], [ null, %bb.a ]
  ret ptr %.019
}

declare noundef ptr @_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare void @_ZN6google8protobuf11MessageLite21CheckTypeAndMergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN6google8protobuf8internal12ExtensionSet5EraseEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal12ExtensionSet25UnsafeArenaReleaseMessageEPNS0_5ArenaEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35
  %i.c = tail call noundef ptr @_ZN6google8protobuf8internal12ExtensionSet10FindOrNullEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.b) ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.f = load i8, ptr %i.e, align 2
  %i.g = and i8 %i.f, 4
  %.not = icmp eq i8 %i.g, 0
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !22   ; 3 uses
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  %i.j = load ptr, ptr %3, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.i)
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef %1) ; 3 uses
  %i.r = icmp eq ptr %1, null
  br i1 %i.r, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !22   ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.0 = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ %i.q, %bb.c ], [ %i.h, %bb.b ]
  %i.x = load i32, ptr %i.a, align 4, !tbaa !35
  tail call void @_ZN6google8protobuf8internal12ExtensionSet5EraseEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.x)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.015 = phi ptr [ %.0, %bb.f ], [ null, %bb.a ]
  ret ptr %.015
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal12ExtensionSet25MaybeNewRepeatedExtensionEPNS0_5ArenaEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35
  %i.d = call noundef zeroext i1 @_ZN6google8protobuf8internal12ExtensionSet17MaybeNewExtensionEPNS0_5ArenaEiPKNS0_15FieldDescriptorEPPNS2_9ExtensionE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.a)
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i8, ptr %i.e, align 2, !tbaa !45
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %i.f, ptr %i.h, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  store i8 1, ptr %i.i, align 1, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 10 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2
  %i.l = or i8 %i.k, 1
  store i8 %i.l, ptr %i.j, align 2
  %i.m = icmp eq ptr %1, null
  br i1 %i.m, label %_ZN6google8protobuf5Arena14InternalHelperINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEE3NewEv.exit, label %bb.c, !prof !13

_ZN6google8protobuf5Arena14InternalHelperINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEE3NewEv.exit: ; preds = %bb.b
  %i.n = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #17 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEEEPT_PS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef 24) ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = ptrtoint ptr %1 to i64
  store i64 %i.q, ptr %i.p, align 8, !tbaa !51
  store ptr null, ptr %i.o, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 0, ptr %i.r, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 16, ptr %i.s, align 4, !tbaa !57
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEEEPT_PS1_.exit

_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEEEPT_PS1_.exit: ; preds = %_ZN6google8protobuf5Arena14InternalHelperINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEE3NewEv.exit, %bb.c
  %i.t = phi ptr [ %i.g, %_ZN6google8protobuf5Arena14InternalHelperINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEE3NewEv.exit ], [ %.pre, %bb.c ]
  %.0.i = phi ptr [ %i.n, %_ZN6google8protobuf5Arena14InternalHelperINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEE3NewEv.exit ], [ %i.o, %bb.c ]
  store ptr %.0.i, ptr %i.t, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEEEPT_PS1_.exit
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.u
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal12ExtensionSet10AddMessageEPNS0_5ArenaEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35
  %i.d = call noundef zeroext i1 @_ZN6google8protobuf8internal12ExtensionSet17MaybeNewExtensionEPNS0_5ArenaEiPKNS0_15FieldDescriptorEPPNS2_9ExtensionE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.a)
  br i1 %i.d, label %bb.b, label %_ZN6google8protobuf8internal12ExtensionSet25MaybeNewRepeatedExtensionEPNS0_5ArenaEPKNS0_15FieldDescriptorE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i8, ptr %i.e, align 2, !tbaa !45
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %i.f, ptr %i.h, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  store i8 1, ptr %i.i, align 1, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 10 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2
  %i.l = or i8 %i.k, 1
  store i8 %i.l, ptr %i.j, align 2
  %i.m = icmp eq ptr %1, null
  br i1 %i.m, label %_ZN6google8protobuf5Arena14InternalHelperINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEE3NewEv.exit.i, label %bb.c, !prof !13

_ZN6google8protobuf5Arena14InternalHelperINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEE3NewEv.exit.i: ; preds = %bb.b
  %i.n = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #17 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEEEPT_PS1_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef 24) ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = ptrtoint ptr %1 to i64
  store i64 %i.q, ptr %i.p, align 8, !tbaa !51
  store ptr null, ptr %i.o, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 0, ptr %i.r, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 16, ptr %i.s, align 4, !tbaa !57
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEEEPT_PS1_.exit.i

_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEEEPT_PS1_.exit.i: ; preds = %bb.c, %_ZN6google8protobuf5Arena14InternalHelperINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEE3NewEv.exit.i
  %i.t = phi ptr [ %i.g, %_ZN6google8protobuf5Arena14InternalHelperINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEE3NewEv.exit.i ], [ %.pre.i, %bb.c ]
  %.0.i.i = phi ptr [ %i.n, %_ZN6google8protobuf5Arena14InternalHelperINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEE3NewEv.exit.i ], [ %i.o, %bb.c ]
  store ptr %.0.i.i, ptr %i.t, align 8, !tbaa !22
  br label %_ZN6google8protobuf8internal12ExtensionSet25MaybeNewRepeatedExtensionEPNS0_5ArenaEPKNS0_15FieldDescriptorE.exit

_ZN6google8protobuf8internal12ExtensionSet25MaybeNewRepeatedExtensionEPNS0_5ArenaEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.a, %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEEEPT_PS1_.exit.i
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22   ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 10 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !56   ; 4 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !53   ; 3 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 3 uses
  %i.aa = and i64 %i.z, 1
  %i.ab = icmp eq i64 %i.aa, 0                    ; 2 uses
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6google8protobuf8internal12ExtensionSet25MaybeNewRepeatedExtensionEPNS0_5ArenaEPKNS0_15FieldDescriptorE.exit
  %.not.i.i = icmp ne ptr %i.y, null
  %i.ac = zext i1 %.not.i.i to i32
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i

bb.e:                                             ; preds = %_ZN6google8protobuf8internal12ExtensionSet25MaybeNewRepeatedExtensionEPNS0_5ArenaEPKNS0_15FieldDescriptorE.exit
  %i.ad = add nsw i64 %i.z, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !58
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i: ; preds = %bb.e, %bb.d
  %i.ah = phi i32 [ %i.ac, %bb.d ], [ %i.ag, %bb.e ]
  %i.ai = icmp slt i32 %i.x, %i.ah
  br i1 %i.ai, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEPNT_4TypeEv.exit, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEPNT_4TypeEv.exit.thread

_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEPNT_4TypeEv.exit: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i
  %i.aj = add nsw i32 %i.x, 1
  store i32 %i.aj, ptr %i.w, align 4, !tbaa !3
  %i.ak = add i64 %i.z, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = sext i32 %i.x to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.an
  %.0.i.i24 = select i1 %i.ab, ptr %i.v, ptr %i.ao
  %i.ap = load ptr, ptr %.0.i.i24, align 8, !tbaa !60 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEPNT_4TypeEv.exit._ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEPNT_4TypeEv.exit.thread_crit_edge, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEPNT_4TypeEv.exit._ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEPNT_4TypeEv.exit.thread_crit_edge: ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEPNT_4TypeEv.exit
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !22  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre30 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !56
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEPNT_4TypeEv.exit.thread

_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEPNT_4TypeEv.exit.thread: ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEPNT_4TypeEv.exit._ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEPNT_4TypeEv.exit.thread_crit_edge, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i
  %i.ar = phi i32 [ %.pre30, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEPNT_4TypeEv.exit._ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEPNT_4TypeEv.exit.thread_crit_edge ], [ %i.x, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i ]
  %i.as = phi ptr [ %.pre, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEPNT_4TypeEv.exit._ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEPNT_4TypeEv.exit.thread_crit_edge ], [ %i.v, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i ] ; 2 uses
  %i.at = icmp eq i32 %i.ar, 0
  br i1 %i.at, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEPNT_4TypeEv.exit.thread
  %i.au = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  %i.av = load ptr, ptr %3, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.au) ; 2 uses
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %bb.g, label %..critedge_crit_edge, !prof !13

..critedge_crit_edge:                             ; preds = %bb.f
  %.pre31 = load ptr, ptr %i.v, align 8, !tbaa !53
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str, i32 noundef 238, ptr noundef nonnull @.str.1) #18
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.h

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.g
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #19
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #19
  unreachable

bb.i:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEPNT_4TypeEv.exit.thread
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !53
  %i.bb = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bc = and i64 %i.bb, 1
  %i.bd = icmp eq i64 %i.bc, 0
  %i.be = add i64 %i.bb, -1
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.0.i.i.i.i = select i1 %i.bd, ptr %i.as, ptr %i.bg
  %i.bh = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !60
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.i
  %i.bi = phi ptr [ %i.y, %bb.i ], [ %.pre31, %..critedge_crit_edge ] ; 4 uses
  %.020 = phi ptr [ %i.bh, %bb.i ], [ %i.ay, %..critedge_crit_edge ] ; 6 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge
  store i32 1, ptr %i.w, align 4, !tbaa !3
  %i.bk = load ptr, ptr %.020, align 8, !tbaa !33
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %.020), !inline_history !61 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !62 ; 2 uses
  %i.bq = call noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef %i.bp, ptr noundef %i.bp, ptr noundef %1) ; 2 uses
  store ptr %i.bq, ptr %i.v, align 8, !tbaa !60
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

bb.k:                                             ; preds = %.critedge
  call void @llvm.prefetch.p0(ptr nonnull %i.bi, i32 0, i32 3, i32 1)
  %i.br = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bs = and i64 %i.br, 1
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.l, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bu = load i32, ptr %i.w, align 8, !tbaa !56
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.w, align 4, !tbaa !3
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

bb.n:                                             ; preds = %bb.l
  %i.bw = call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i32 noundef 1, ptr noundef %1)
  %i.bx = load ptr, ptr %.020, align 8, !tbaa !33
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call noundef ptr %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %.020), !inline_history !61 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !62 ; 2 uses
  %i.cd = call noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef %i.cc, ptr noundef %i.cc, ptr noundef %1) ; 2 uses
  store ptr %i.cd, ptr %i.bw, align 8, !tbaa !60
  %i.ce = load ptr, ptr %i.v, align 8, !tbaa !53
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = add i64 %i.cf, -1
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 2, ptr %i.ci, align 4, !tbaa !58
  store i32 2, ptr %i.w, align 8, !tbaa !3
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i: ; preds = %bb.k
  %i.cj = add nsw i64 %i.br, -1
  %i.ck = inttoptr i64 %i.cj to ptr               ; 4 uses
  %i.cl = load i32, ptr %i.w, align 8, !tbaa !56  ; 5 uses
  %i.cm = load i32, ptr %i.ck, align 8, !tbaa !68
  %i.cn = icmp eq i32 %i.cl, %i.cm
  br i1 %i.cn, label %bb.o, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i, !prof !13

bb.o:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i
  %i.co = call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i32 noundef 1, ptr noundef %1) ; 0 uses
  %i.cp = load ptr, ptr %i.v, align 8, !tbaa !53
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = add i64 %i.cq, -1
  %i.cs = inttoptr i64 %i.cr to ptr               ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %.pre.i25 = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !58
  %.pre21.i = load i32, ptr %i.w, align 8, !tbaa !56
  br label %bb.q

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !58 ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, %i.cl
  br i1 %i.cv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cx = add nsw i32 %i.cl, 1
  store i32 %i.cx, ptr %i.w, align 4, !tbaa !3
  %i.cy = sext i32 %i.cl to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.cy
  %.1.i.pre = load ptr, ptr %i.cz, align 8, !tbaa !60
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

bb.q:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i, %bb.o
  %i.da = phi i32 [ %.pre21.i, %bb.o ], [ %i.cl, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i ] ; 2 uses
  %i.db = phi i32 [ %.pre.i25, %bb.o ], [ %i.cu, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i ]
  %.015.i = phi ptr [ %i.cs, %bb.o ], [ %i.ck, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase12ClearedCountEv.exit.i ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %i.dd = add nsw i32 %i.db, 1
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !58
  %i.de = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  %i.df = add nsw i32 %i.da, 1
  store i32 %i.df, ptr %i.w, align 4, !tbaa !3
  %i.dg = sext i32 %i.da to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.dg
  %i.di = load ptr, ptr %.020, align 8, !tbaa !33
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = call noundef ptr %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %.020), !inline_history !61 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !62 ; 2 uses
  %i.do = call noundef ptr @_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef %i.dn, ptr noundef %i.dn, ptr noundef %1) ; 2 uses
  store ptr %i.do, ptr %i.dh, align 8, !tbaa !60
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase11AddInternalEPNS0_5ArenaEN4absl12lts_2025051211FunctionRefIFvS4_RPvEEE.exit: ; preds = %bb.q, %bb.p, %bb.n, %bb.m, %bb.j, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEPNT_4TypeEv.exit
  %.0 = phi ptr [ %i.ap, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEPNT_4TypeEv.exit ], [ %i.bq, %bb.j ], [ %i.bi, %bb.m ], [ %i.cd, %bb.n ], [ %i.do, %bb.q ], [ %.1.i.pre, %bb.p ]
  ret ptr %.0
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal12ExtensionSet19AddAllocatedMessageEPNS0_5ArenaEPKNS0_15FieldDescriptorEPNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35
  %i.d = call noundef zeroext i1 @_ZN6google8protobuf8internal12ExtensionSet17MaybeNewExtensionEPNS0_5ArenaEiPKNS0_15FieldDescriptorEPPNS2_9ExtensionE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.a)
  br i1 %i.d, label %bb.b, label %_ZN6google8protobuf8internal12ExtensionSet25MaybeNewRepeatedExtensionEPNS0_5ArenaEPKNS0_15FieldDescriptorE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i8, ptr %i.e, align 2, !tbaa !45
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %i.f, ptr %i.h, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  store i8 1, ptr %i.i, align 1, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 10 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2
  %i.l = or i8 %i.k, 1
  store i8 %i.l, ptr %i.j, align 2
  %i.m = icmp eq ptr %1, null
  br i1 %i.m, label %_ZN6google8protobuf5Arena14InternalHelperINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEE3NewEv.exit.i, label %bb.c, !prof !13

_ZN6google8protobuf5Arena14InternalHelperINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEE3NewEv.exit.i: ; preds = %bb.b
  %i.n = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #17 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEEEPT_PS1_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef 24) ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = ptrtoint ptr %1 to i64
  store i64 %i.q, ptr %i.p, align 8, !tbaa !51
  store ptr null, ptr %i.o, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 0, ptr %i.r, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 16, ptr %i.s, align 4, !tbaa !57
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEEEPT_PS1_.exit.i

_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEEEPT_PS1_.exit.i: ; preds = %bb.c, %_ZN6google8protobuf5Arena14InternalHelperINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEE3NewEv.exit.i
  %i.t = phi ptr [ %i.g, %_ZN6google8protobuf5Arena14InternalHelperINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEE3NewEv.exit.i ], [ %.pre.i, %bb.c ]
  %.0.i.i = phi ptr [ %i.n, %_ZN6google8protobuf5Arena14InternalHelperINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEE3NewEv.exit.i ], [ %i.o, %bb.c ]
  store ptr %.0.i.i, ptr %i.t, align 8, !tbaa !22
  br label %_ZN6google8protobuf8internal12ExtensionSet25MaybeNewRepeatedExtensionEPNS0_5ArenaEPKNS0_15FieldDescriptorE.exit

_ZN6google8protobuf8internal12ExtensionSet25MaybeNewRepeatedExtensionEPNS0_5ArenaEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.a, %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_16RepeatedPtrFieldINS0_11MessageLiteEEEEEPT_PS1_.exit.i
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22   ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !51   ; 3 uses
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %_ZN6google8protobuf8internal12ExtensionSet25MaybeNewRepeatedExtensionEPNS0_5ArenaEPKNS0_15FieldDescriptorE.exit
  %i.z = add nsw i64 %i.x, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69
  br label %_ZN6google8protobuf8internal18GenericTypeHandlerINS0_11MessageLiteEE8GetArenaEPS3_.exit.i.i

bb.e:                                             ; preds = %_ZN6google8protobuf8internal12ExtensionSet25MaybeNewRepeatedExtensionEPNS0_5ArenaEPKNS0_15FieldDescriptorE.exit
  %i.ac = inttoptr i64 %i.x to ptr
  br label %_ZN6google8protobuf8internal18GenericTypeHandlerINS0_11MessageLiteEE8GetArenaEPS3_.exit.i.i

_ZN6google8protobuf8internal18GenericTypeHandlerINS0_11MessageLiteEE8GetArenaEPS3_.exit.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %bb.d ], [ %i.ac, %bb.e ] ; 2 uses
  %.not.i.i = icmp eq ptr %1, %.0.i.i.i.i.i.i.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN6google8protobuf8internal18GenericTypeHandlerINS0_11MessageLiteEE8GetArenaEPS3_.exit.i.i
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.af = and i64 %i.ae, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase23AllocatedSizeAtCapacityEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = add nsw i64 %i.ae, -1
  %i.ai = inttoptr i64 %i.ah to ptr               ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !58 ; 3 uses
  %i.al = load i32, ptr %i.ai, align 8, !tbaa !68
  %i.am = icmp eq i32 %i.ak, %i.al
  br i1 %i.am, label %bb.h, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread.i.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase23AllocatedSizeAtCapacityEv.exit.i.i: ; preds = %bb.f
  %.not.i.i.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.not.i.i, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase23AllocatedSizeAtCapacityEv.exit.i.i, %bb.g, %_ZN6google8protobuf8internal18GenericTypeHandlerINS0_11MessageLiteEE8GetArenaEPS3_.exit.i.i
  call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24AddAllocatedSlowWithCopyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvPNT_4TypeEPNS0_5ArenaESB_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull %3, ptr noundef %.0.i.i.i.i.i.i.i.i, ptr noundef %1)
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_11MessageLiteEE21AddAllocatedWithArenaEPNS0_5ArenaEPS2_.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i.i: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase23AllocatedSizeAtCapacityEv.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !56 ; 4 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.i, label %bb.k

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread.i.i: ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !56 ; 4 uses
  %i.at = icmp slt i32 %i.as, %i.ak
  br i1 %i.at, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i.i
  %i.au = sext i32 %i.ao to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.au
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit12.i.i

bb.j:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread.i.i
  %i.aw = sext i32 %i.as to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.aw
  %i.ay = sext i32 %i.ak to i64
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit12.i.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit12.i.i: ; preds = %bb.j, %bb.i
  %.in.i.i = phi ptr [ %i.av, %bb.i ], [ %i.ax, %bb.j ]
  %i.az = phi i32 [ %i.ao, %bb.i ], [ %i.as, %bb.j ]
  %i.ba = phi ptr [ %i.an, %bb.i ], [ %i.ar, %bb.j ]
  %i.bb = phi ptr [ %i.v, %bb.i ], [ %i.aq, %bb.j ] ; 2 uses
  %i.bc = phi i64 [ 0, %bb.i ], [ %i.ay, %bb.j ]
  %i.bd = load ptr, ptr %.in.i.i, align 8, !tbaa !60
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bc
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !60
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit12.i.i, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread.i.i, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i.i
  %i.bf = phi ptr [ %i.aq, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread.i.i ], [ %i.bb, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit12.i.i ], [ %i.v, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i.i ]
  %i.bg = phi ptr [ %i.ar, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread.i.i ], [ %i.ba, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit12.i.i ], [ %i.an, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i.i ]
  %i.bh = phi i32 [ %i.as, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread.i.i ], [ %i.az, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit12.i.i ], [ %i.ao, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i.i ] ; 2 uses
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !3
  %i.bj = sext i32 %i.bh to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bj
  store ptr %3, ptr %i.bk, align 8, !tbaa !60
  %i.bl = load ptr, ptr %i.v, align 8, !tbaa !53
  %i.bm = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bn = and i64 %i.bm, 1
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_11MessageLiteEE21AddAllocatedWithArenaEPNS0_5ArenaEPS2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = add nsw i64 %i.bm, -1
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !58
  %i.bt = add nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !58
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_11MessageLiteEE21AddAllocatedWithArenaEPNS0_5ArenaEPS2_.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_11MessageLiteEE21AddAllocatedWithArenaEPNS0_5ArenaEPS2_.exit: ; preds = %bb.h, %bb.k, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal12ExtensionSet30UnsafeArenaAddAllocatedMessageEPNS0_5ArenaEPKNS0_15FieldDescriptorEPNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35
  %i.d = call noundef zeroext i1 @_ZN6google8protobuf8internal12ExtensionSet17MaybeNewExtensionEPNS0_5ArenaEiPKNS0_15FieldDescriptorEPPNS2_9ExtensionE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.a)
  br i1 %i.d, label %bb.b, label %_ZN6google8protobuf8internal12ExtensionSet25MaybeNewRepeatedExtensionEPNS0_5ArenaEPKNS0_15FieldDescriptorE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i8, ptr %i.e, align 2, !tbaa !45
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.ax) #16, !srcloc !166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.aw, ptr noundef nonnull align 1 dereferenceable(64) %i.au, i64 64, i1 false)
  %i.ay = add nuw nsw i64 %i.at, 64               ; 2 uses
  %i.az = icmp samesign ult i64 %i.ay, %i.m
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !168

bb.l:                                             ; preds = %._crit_edge.i, %bb.k, %bb.i, %._crit_edge65.i, %bb.g, %bb.e
  %i.ba = load i64, ptr %2, align 1
  store i64 %i.ba, ptr %i.e, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %3, ptr %i.bb, align 1
  br label %_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit

.split8:                                          ; preds = %bb.a
  %i.bc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #17 ; 14 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !164 ; 2 uses
  %i.bf = icmp slt i8 %i.be, 0
  br i1 %i.bf, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %.split8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !22
  %i.bi = tail call noundef ptr %i.bh(ptr noundef %1, ptr noundef nonnull %i.bc, ptr noundef null), !inline_history !165
  br label %_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %.split8
  %i.bj = icmp eq i8 %i.be, 0
  %i.bk = icmp ult i32 %i.a, 33                   ; 2 uses
  br i1 %i.bj, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  br label %bb.w

bb.q:                                             ; preds = %bb.o
  %i.bn = icmp ult i32 %i.a, 65
  br i1 %i.bn, label %bb.r, label %.preheader.i14

.preheader.i14:                                   ; preds = %bb.q
  %i.bo = icmp ugt i32 %i.a, 80
  br i1 %i.bo, label %.lr.ph64.i16, label %._crit_edge65.i15

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.br, i8 0, i64 32, i1 false)
  br label %bb.w

._crit_edge65.i15:                                ; preds = %.lr.ph64.i16, %.preheader.i14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bt, i8 0, i64 64, i1 false)
  br label %bb.w

.lr.ph64.i16:                                     ; preds = %.preheader.i14, %.lr.ph64.i16
  %i.bu = phi i64 [ %i.bx, %.lr.ph64.i16 ], [ 80, %.preheader.i14 ] ; 2 uses
  %.05563.i17 = phi i64 [ %i.bu, %.lr.ph64.i16 ], [ 16, %.preheader.i14 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.05563.i17 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.bw) #16, !srcloc !166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bv, i8 0, i64 64, i1 false)
  %i.bx = add nuw nsw i64 %i.bu, 64               ; 2 uses
  %i.by = icmp samesign ult i64 %i.bx, %i.b
  br i1 %i.by, label %.lr.ph64.i16, label %._crit_edge65.i15, !llvm.loop !167

bb.s:                                             ; preds = %bb.n
  br i1 %i.bk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -16
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ca, ptr noundef nonnull align 1 dereferenceable(16) %i.cc, i64 16, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cd = icmp ult i32 %i.a, 65
  br i1 %i.cd, label %bb.v, label %.preheader61.i9

.preheader61.i9:                                  ; preds = %bb.u
  %i.ce = icmp ugt i32 %i.a, 80
  br i1 %i.ce, label %.lr.ph.i12, label %._crit_edge.i10

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cf, ptr noundef nonnull align 1 dereferenceable(16) %i.cg, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -32
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ci, ptr noundef nonnull align 1 dereferenceable(32) %i.ck, i64 32, i1 false)
  br label %bb.w

._crit_edge.i10:                                  ; preds = %.lr.ph.i12, %.preheader61.i9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -64
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cm, ptr noundef nonnull align 1 dereferenceable(64) %i.co, i64 64, i1 false)
  br label %bb.w

.lr.ph.i12:                                       ; preds = %.preheader61.i9, %.lr.ph.i12
  %i.cp = phi i64 [ %i.cu, %.lr.ph.i12 ], [ 80, %.preheader61.i9 ] ; 2 uses
  %.062.i13 = phi i64 [ %i.cp, %.lr.ph.i12 ], [ 16, %.preheader61.i9 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 %.062.i13 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cr, i32 0, i32 3, i32 1)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.062.i13 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.ct) #16, !srcloc !166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cs, ptr noundef nonnull align 1 dereferenceable(64) %i.cq, i64 64, i1 false)
  %i.cu = add nuw nsw i64 %i.cp, 64               ; 2 uses
  %i.cv = icmp samesign ult i64 %i.cu, %i.b
  br i1 %i.cv, label %.lr.ph.i12, label %._crit_edge.i10, !llvm.loop !168

bb.w:                                             ; preds = %._crit_edge.i10, %bb.v, %bb.t, %._crit_edge65.i15, %bb.r, %bb.p
  %i.cw = load i64, ptr %2, align 1
  store i64 %i.cw, ptr %i.bc, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr null, ptr %i.cx, align 1
  br label %_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit

_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit: ; preds = %bb.w, %bb.m, %bb.l, %bb.b
  %phi.call = phi ptr [ %i.e, %bb.l ], [ %i.k, %bb.b ], [ %i.bi, %bb.m ], [ %i.bc, %bb.w ]
  ret ptr %phi.call
}

declare noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN6google8protobuf8internal24GeneratedExtensionFinder4FindEiPNS1_13ExtensionInfoE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINS0_15UnknownFieldSetEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_12AppendToListEPKNS0_10DescriptorEPKNS0_14DescriptorPoolEPSt6vectorIPKNS0_15FieldDescriptorESaISV_EEE3$_0NS2_8PrefetchEEEvT_S11_T0_T1_"(ptr %0, i32 %1, ptr readnone captures(address) %2, i32 %3, ptr noundef readonly byval(%class.anon) align 8 captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ne ptr %0, %2
  %i.b = icmp ne i32 %1, %3
  %.not3.i103 = select i1 %i.a, i1 true, i1 %i.b
  br i1 %.not3.i103, label %.lr.ph, label %.preheader93

.preheader93:                                     ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, %bb.a
  %.sroa.11.0.lcssa = phi i32 [ %1, %bb.a ], [ %.sroa.11.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ] ; 2 uses
  %i.c = icmp ne ptr %.sroa.0.0.lcssa, %2
  %i.d = icmp ne i32 %.sroa.11.0.lcssa, %3
  %.not3.i5108 = select i1 %i.c, i1 true, i1 %i.d
  br i1 %.not3.i5108, label %.lr.ph113, label %.preheader

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit
  %.0106 = phi i32 [ %i.ak, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.0105 = phi ptr [ %.sroa.0.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %0, %bb.a ] ; 7 uses
  %.sroa.11.0104 = phi i32 [ %.sroa.11.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %1, %bb.a ] ; 3 uses
  %i.e = and i32 %.sroa.11.0104, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0105, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 34
  %i.j = load i8, ptr %i.i, align 2
  %i.k = trunc i8 %i.j to i1
  %i.l = load ptr, ptr %i.h, align 8
  %spec.select.i = select i1 %i.k, ptr %i.l, ptr %i.h
  tail call void @llvm.prefetch.p0(ptr %spec.select.i, i32 0, i32 3, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 11
  %i.n = load i8, ptr %i.m, align 1, !tbaa !22
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nsw i32 %.sroa.11.0104, 1            ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 10
  %i.q = load i8, ptr %i.p, align 1, !tbaa !22
  %i.r = zext i8 %i.q to i32
  %i.s = icmp eq i32 %i.o, %i.r
  br i1 %i.s, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.01521.i.i.i = phi ptr [ %i.t, %bb.c ], [ %.sroa.0.0105, %bb.b ] ; 2 uses
  %i.t = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !21 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 11
  %i.v = load i8, ptr %i.u, align 1, !tbaa !22
  %.not17.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not17.i.i.i, label %bb.c, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.x = load i8, ptr %i.w, align 1, !tbaa !22    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  %i.z = load i8, ptr %i.y, align 1, !tbaa !22
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !169

.thread.i.i:                                      ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 240
  %i.ac = add i32 %.sroa.11.0104, 1
  %i.ad = and i32 %i.ac, 255
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ae
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.af, %.thread.i.i ], [ %i.ai, %bb.d ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !21 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !22
  %.not.i.i.i.i = icmp eq i8 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 240
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, !llvm.loop !170

.critedge.loopexit23.i.i.i:                       ; preds = %bb.c
  %i.aj = zext i8 %i.x to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %.critedge.loopexit23.i.i.i, %bb.b
  %.sroa.11.2 = phi i32 [ 0, %bb.d ], [ %i.o, %bb.b ], [ %i.aj, %.critedge.loopexit23.i.i.i ], [ %i.o, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %.116.i.i.i, %bb.d ], [ %.sroa.0.0105, %bb.b ], [ %i.t, %.critedge.loopexit23.i.i.i ], [ %.sroa.0.0105, %.lr.ph.i.i.i ] ; 3 uses
  %i.ak = add nuw nsw i32 %.0106, 1
  %i.al = icmp ne ptr %.sroa.0.2, %2
  %i.am = icmp ne i32 %.sroa.11.2, %3
  %.not3.i = select i1 %i.al, i1 true, i1 %i.am
  %i.an = icmp samesign ult i32 %.0106, 15
  %i.ao = select i1 %.not3.i, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph, label %.preheader93, !llvm.loop !171

.preheader:                                       ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38, %.preheader93
  %.sroa.072.0.lcssa = phi ptr [ %0, %.preheader93 ], [ %.sroa.072.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ] ; 2 uses
  %.sroa.1179.0.lcssa = phi i32 [ %1, %.preheader93 ], [ %.sroa.1179.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ] ; 2 uses
  %i.ap = icmp ne ptr %.sroa.072.0.lcssa, %2
  %i.aq = icmp ne i32 %.sroa.1179.0.lcssa, %3
  %.not3.i42116 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.not3.i42116, label %.lr.ph119, label %._crit_edge

.lr.ph113:                                        ; preds = %.preheader93, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38
  %.sroa.0.1112 = phi ptr [ %.sroa.0.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ], [ %.sroa.0.0.lcssa, %.preheader93 ] ; 7 uses
  %.sroa.11.1111 = phi i32 [ %.sroa.11.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ], [ %.sroa.11.0.lcssa, %.preheader93 ] ; 3 uses
  %.sroa.1179.0110 = phi i32 [ %.sroa.1179.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ], [ %1, %.preheader93 ] ; 3 uses
  %.sroa.072.0109 = phi ptr [ %.sroa.072.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ], [ %0, %.preheader93 ] ; 7 uses
  %i.ar = and i32 %.sroa.1179.0110, 255
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.072.0109, i64 16
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %i.as ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !172
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call fastcc void @"_ZZNK6google8protobuf8internal12ExtensionSet12AppendToListEPKNS0_10DescriptorEPKNS0_14DescriptorPoolEPSt6vectorIPKNS0_15FieldDescriptorESaISC_EEENK3$_0clEiRKNS2_9ExtensionE"(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
  %i.ax = and i32 %.sroa.11.1111, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.1112, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 34
  %i.bc = load i8, ptr %i.bb, align 2
  %i.bd = trunc i8 %i.bc to i1
  %i.be = load ptr, ptr %i.ba, align 8
  %spec.select.i6 = select i1 %i.bd, ptr %i.be, ptr %i.ba
  tail call void @llvm.prefetch.p0(ptr %spec.select.i6, i32 0, i32 3, i32 1)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.072.0109, i64 11
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !22
  %.not.i.i7 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i7, label %.thread.i.i18, label %bb.e

bb.e:                                             ; preds = %.lr.ph113
  %i.bh = add nsw i32 %.sroa.1179.0110, 1         ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.072.0109, i64 10
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !22
  %i.bk = zext i8 %i.bj to i32
  %i.bl = icmp eq i32 %i.bh, %i.bk
  br i1 %i.bl, label %.lr.ph.i.i.i14, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22

.lr.ph.i.i.i14:                                   ; preds = %bb.e, %bb.f
  %.01521.i.i.i15 = phi ptr [ %i.bm, %bb.f ], [ %.sroa.072.0109, %bb.e ] ; 2 uses
  %i.bm = load ptr, ptr %.01521.i.i.i15, align 8, !tbaa !21 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 11
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !22
  %.not17.i.i.i16 = icmp eq i8 %i.bo, 0
  br i1 %.not17.i.i.i16, label %bb.f, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22

bb.f:                                             ; preds = %.lr.ph.i.i.i14
  %i.bp = getelementptr inbounds nuw i8, ptr %.01521.i.i.i15, i64 8
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !22  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 10
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !22
  %i.bt = icmp eq i8 %i.bq, %i.bs
  br i1 %i.bt, label %.lr.ph.i.i.i14, label %.critedge.loopexit23.i.i.i17, !llvm.loop !169

.thread.i.i18:                                    ; preds = %.lr.ph113
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.072.0109, i64 240
  %i.bv = add i32 %.sroa.1179.0110, 1
  %i.bw = and i32 %i.bv, 255
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bx
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.thread.i.i18
  %.116.in.i.i.i19 = phi ptr [ %i.by, %.thread.i.i18 ], [ %i.cb, %bb.g ]
  %.116.i.i.i20 = load ptr, ptr %.116.in.i.i.i19, align 8, !tbaa !21 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.116.i.i.i20, i64 11
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !22
  %.not.i.i.i.i21 = icmp eq i8 %i.ca, 0
  %i.cb = getelementptr inbounds nuw i8, ptr %.116.i.i.i20, i64 240
  br i1 %.not.i.i.i.i21, label %bb.g, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22, !llvm.loop !170

.critedge.loopexit23.i.i.i17:                     ; preds = %bb.f
  %i.cc = zext i8 %i.bq to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22: ; preds = %.lr.ph.i.i.i14, %bb.g, %.critedge.loopexit23.i.i.i17, %bb.e
  %.sroa.072.2 = phi ptr [ %.116.i.i.i20, %bb.g ], [ %.sroa.072.0109, %bb.e ], [ %i.bm, %.critedge.loopexit23.i.i.i17 ], [ %.sroa.072.0109, %.lr.ph.i.i.i14 ] ; 2 uses
  %.sroa.1179.2 = phi i32 [ 0, %bb.g ], [ %i.bh, %bb.e ], [ %i.cc, %.critedge.loopexit23.i.i.i17 ], [ %i.bh, %.lr.ph.i.i.i14 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.1112, i64 11
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !22
  %.not.i.i23 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i23, label %.thread.i.i34, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22
  %i.cf = add nsw i32 %.sroa.11.1111, 1           ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.1112, i64 10
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !22
  %i.ci = zext i8 %i.ch to i32
  %i.cj = icmp eq i32 %i.cf, %i.ci
  br i1 %i.cj, label %.lr.ph.i.i.i30, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38

.lr.ph.i.i.i30:                                   ; preds = %bb.h, %bb.i
  %.01521.i.i.i31 = phi ptr [ %i.ck, %bb.i ], [ %.sroa.0.1112, %bb.h ] ; 2 uses
  %i.ck = load ptr, ptr %.01521.i.i.i31, align 8, !tbaa !21 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 11
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !22
  %.not17.i.i.i32 = icmp eq i8 %i.cm, 0
  br i1 %.not17.i.i.i32, label %bb.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38

bb.i:                                             ; preds = %.lr.ph.i.i.i30
  %i.cn = getelementptr inbounds nuw i8, ptr %.01521.i.i.i31, i64 8
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !22  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 10
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !22
  %i.cr = icmp eq i8 %i.co, %i.cq
  br i1 %i.cr, label %.lr.ph.i.i.i30, label %.critedge.loopexit23.i.i.i33, !llvm.loop !169

.thread.i.i34:                                    ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.1112, i64 240
  %i.ct = add i32 %.sroa.11.1111, 1
  %i.cu = and i32 %i.ct, 255
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cv
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.thread.i.i34
  %.116.in.i.i.i35 = phi ptr [ %i.cw, %.thread.i.i34 ], [ %i.cz, %bb.j ]
  %.116.i.i.i36 = load ptr, ptr %.116.in.i.i.i35, align 8, !tbaa !21 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.116.i.i.i36, i64 11
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !22
  %.not.i.i.i.i37 = icmp eq i8 %i.cy, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %.116.i.i.i36, i64 240
  br i1 %.not.i.i.i.i37, label %bb.j, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38, !llvm.loop !170

.critedge.loopexit23.i.i.i33:                     ; preds = %bb.i
  %i.da = zext i8 %i.co to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38: ; preds = %.lr.ph.i.i.i30, %bb.j, %.critedge.loopexit23.i.i.i33, %bb.h
  %.sroa.11.3 = phi i32 [ 0, %bb.j ], [ %i.cf, %bb.h ], [ %i.da, %.critedge.loopexit23.i.i.i33 ], [ %i.cf, %.lr.ph.i.i.i30 ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.116.i.i.i36, %bb.j ], [ %.sroa.0.1112, %bb.h ], [ %i.ck, %.critedge.loopexit23.i.i.i33 ], [ %.sroa.0.1112, %.lr.ph.i.i.i30 ] ; 2 uses
  %i.db = icmp ne ptr %.sroa.0.3, %2
  %i.dc = icmp ne i32 %.sroa.11.3, %3
  %.not3.i5 = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %.not3.i5, label %.lr.ph113, label %.preheader, !llvm.loop !174

.lr.ph119:                                        ; preds = %.preheader, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58
  %.sroa.1179.1118 = phi i32 [ %.sroa.1179.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58 ], [ %.sroa.1179.0.lcssa, %.preheader ] ; 3 uses
  %.sroa.072.1117 = phi ptr [ %.sroa.072.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58 ], [ %.sroa.072.0.lcssa, %.preheader ] ; 7 uses
  %i.dd = and i32 %.sroa.1179.1118, 255
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 16
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %i.de ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !172
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  call fastcc void @"_ZZNK6google8protobuf8internal12ExtensionSet12AppendToListEPKNS0_10DescriptorEPKNS0_14DescriptorPoolEPSt6vectorIPKNS0_15FieldDescriptorESaISC_EEENK3$_0clEiRKNS2_9ExtensionE"(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %i.di)
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 11
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !22
  %.not.i.i43 = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i43, label %.thread.i.i54, label %bb.k

bb.k:                                             ; preds = %.lr.ph119
  %i.dl = add nsw i32 %.sroa.1179.1118, 1         ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 10
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !22
  %i.do = zext i8 %i.dn to i32
  %i.dp = icmp eq i32 %i.dl, %i.do
  br i1 %i.dp, label %.lr.ph.i.i.i50, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58

.lr.ph.i.i.i50:                                   ; preds = %bb.k, %bb.l
  %.01521.i.i.i51 = phi ptr [ %i.dq, %bb.l ], [ %.sroa.072.1117, %bb.k ] ; 2 uses
  %i.dq = load ptr, ptr %.01521.i.i.i51, align 8, !tbaa !21 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 11
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !22
  %.not17.i.i.i52 = icmp eq i8 %i.ds, 0
  br i1 %.not17.i.i.i52, label %bb.l, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58

bb.l:                                             ; preds = %.lr.ph.i.i.i50
  %i.dt = getelementptr inbounds nuw i8, ptr %.01521.i.i.i51, i64 8
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !22  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 10
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !22
  %i.dx = icmp eq i8 %i.du, %i.dw
  br i1 %i.dx, label %.lr.ph.i.i.i50, label %.critedge.loopexit23.i.i.i53, !llvm.loop !169

.thread.i.i54:                                    ; preds = %.lr.ph119
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 240
  %i.dz = add i32 %.sroa.1179.1118, 1
  %i.ea = and i32 %i.dz, 255
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.eb
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.thread.i.i54
  %.116.in.i.i.i55 = phi ptr [ %i.ec, %.thread.i.i54 ], [ %i.ef, %bb.m ]
  %.116.i.i.i56 = load ptr, ptr %.116.in.i.i.i55, align 8, !tbaa !21 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.116.i.i.i56, i64 11
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !22
  %.not.i.i.i.i57 = icmp eq i8 %i.ee, 0
  %i.ef = getelementptr inbounds nuw i8, ptr %.116.i.i.i56, i64 240
  br i1 %.not.i.i.i.i57, label %bb.m, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58, !llvm.loop !170

.critedge.loopexit23.i.i.i53:                     ; preds = %bb.l
  %i.eg = zext i8 %i.du to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58: ; preds = %.lr.ph.i.i.i50, %bb.m, %.critedge.loopexit23.i.i.i53, %bb.k
  %.sroa.072.3 = phi ptr [ %.116.i.i.i56, %bb.m ], [ %.sroa.072.1117, %bb.k ], [ %i.dq, %.critedge.loopexit23.i.i.i53 ], [ %.sroa.072.1117, %.lr.ph.i.i.i50 ] ; 2 uses
  %.sroa.1179.3 = phi i32 [ 0, %bb.m ], [ %i.dl, %bb.k ], [ %i.eg, %.critedge.loopexit23.i.i.i53 ], [ %i.dl, %.lr.ph.i.i.i50 ] ; 2 uses
  %i.eh = icmp ne ptr %.sroa.072.3, %2
  %i.ei = icmp ne i32 %.sroa.1179.3, %3
  %.not3.i42 = select i1 %i.eh, i1 true, i1 %i.ei
  br i1 %.not3.i42, label %.lr.ph119, label %._crit_edge, !llvm.loop !175

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZNK6google8protobuf8internal12ExtensionSet12AppendToListEPKNS0_10DescriptorEPKNS0_14DescriptorPoolEPSt6vectorIPKNS0_15FieldDescriptorESaISC_EEENK3$_0clEiRKNS2_9ExtensionE"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !49, !range !103, !noundef !104
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf8internal12ExtensionSet9Extension5IsSetEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK6google8protobuf8internal12ExtensionSet9Extension7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit

_ZNK6google8protobuf8internal12ExtensionSet9Extension5IsSetEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.g = load i8, ptr %i.f, align 2
  %i.h = and i8 %i.g, 2
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit

bb.c:                                             ; preds = %bb.b, %_ZNK6google8protobuf8internal12ExtensionSet9Extension5IsSetEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !106  ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !176
  %i.n = load ptr, ptr %0, align 8, !tbaa !180
  %i.o = tail call noundef ptr @_ZNK6google8protobuf14DescriptorPool21FindExtensionByNumberEPKNS0_10DescriptorEi(ptr noundef nonnull align 8 dereferenceable(120) %i.m, ptr noundef %i.n, i32 noundef %1) ; 3 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !181, !nonnull !104, !align !182
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !7    ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !183  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !186
  %.not.i4 = icmp eq ptr %i.t, %i.v
  br i1 %.not.i4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.t, align 8, !tbaa !108
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.w, ptr %i.s, align 8, !tbaa !183
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !187  ; 4 uses
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 6 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.h, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #17 ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.aa ; 2 uses
  store ptr %i.o, ptr %i.aj, align 8, !tbaa !108
  %i.ak = icmp sgt i64 %i.aa, 0
  br i1 %i.ak, label %bb.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %i.x, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.not.i17.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.aa) #20
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.ai, ptr %i.r, align 8, !tbaa !187
  store ptr %i.al, ptr %i.s, align 8, !tbaa !183
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.am, ptr %i.u, align 8, !tbaa !186
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit

bb.k:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !181, !nonnull !104, !align !182
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !7  ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !183 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !186
  %.not.i5 = icmp eq ptr %i.ar, %i.at
  br i1 %.not.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.j, ptr %i.ar, align 8, !tbaa !108
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !183
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit

bb.m:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !187 ; 4 uses
  %i.aw = ptrtoint ptr %i.ar to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 6 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.n, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i6

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i6: ; preds = %bb.m
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i.i7 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i7, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 3 uses
  %.not.i.i.i8 = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i8)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #17 ; 4 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 2 uses
  store ptr %i.j, ptr %i.bh, align 8, !tbaa !108
  %i.bi = icmp sgt i64 %i.ay, 0
  br i1 %i.bi, label %bb.o, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i9

bb.o:                                             ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr align 8 %i.av, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i9

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i9: ; preds = %bb.o, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i6
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.not.i17.i.i10 = icmp eq ptr %i.av, null
  br i1 %.not.i17.i.i10, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i11, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i9
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ay) #20
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i11

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i11: ; preds = %bb.p, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i9
  store ptr %i.bg, ptr %i.ap, align 8, !tbaa !187
  store ptr %i.bj, ptr %i.aq, align 8, !tbaa !183
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.bk, ptr %i.as, align 8, !tbaa !186
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf13RepeatedFieldIdE14GrowNoAnnotateEPNS0_5ArenaEbii:bb.a
  %i.l = add nuw nsw i64 %i.j, 8                  ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #17
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !22
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.s
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.t = zext nneg i32 %3 to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %.0.i.i.i, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !22
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8                     ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #16
  br label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !209
  %i.ae = load i64, ptr %1, align 8, !tbaa !212
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !109

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !238 ; 5 uses
  %i.ai = icmp ugt i64 %i.aa, 15
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ak = sub nuw nsw i64 59, %i.aj               ; 2 uses
  %i.al = load i8, ptr %i.ah, align 8, !tbaa !239 ; 3 uses
  %i.am = zext i8 %i.al to i64                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.ak, %i.am
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !109

bb.k:                                             ; preds = %bb.j
  %i.an = lshr exact i64 %i.aa, 3                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !240 ; 2 uses
  %i.aq = icmp ugt i8 %i.al, 1
  br i1 %i.aq, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !109

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp eq i8 %i.al, 1
  br i1 %i.ar, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !241
  store ptr %i.as, ptr %i.w, align 8, !tbaa !241
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %i.am, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.ap, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !239
  %i.at = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.at
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.au = phi i64 [ %i.at, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.au, 3      ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.aa, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.av, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !241
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %i.ao, align 8, !tbaa !240
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.aw = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.aw, ptr %i.ah, align 8, !tbaa !239
  br label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !240
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ak ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !241
  store ptr %i.ba, ptr %i.w, align 8, !tbaa !243
  store ptr %i.w, ptr %i.az, align 8, !tbaa !241
  br label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.bb = load i32, ptr %0, align 8, !tbaa !150
  %i.bc = or i32 %i.bb, 1
  store i32 %i.bc, ptr %0, align 8, !tbaa !150
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bd, align 8, !tbaa !22
  ret void
}

declare noundef zeroext i1 @_ZN6google8protobuf8internal12ValidateEnumEiPKj(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN6google8protobuf15UnknownFieldSet9AddVarintEim(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i64 noundef) local_unnamed_addr #2

declare { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf8internal18EpsCopyInputStream14CanReadFromPtrEiPKc(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream18ReadStringFallbackEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare i32 @utf8_range_IsValid(ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6google8protobuf11MessageLite14_InternalParseEPKcPNS0_8internal12ParseContextE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #2

declare { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6google8protobuf15UnknownFieldSet18AddLengthDelimitedB5cxx11Ei(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare { ptr, i32 } @_ZN6google8protobuf8internal15ReadTagFallbackEPKcj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_26SpaceUsedExcludingSelfLongEvE3$_0NS2_8PrefetchEEEvT_SO_T0_T1_"(ptr readonly captures(address) %0, i32 %1, ptr readnone captures(address) %2, i32 %3, ptr nonnull captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ne ptr %0, %2
  %i.b = icmp ne i32 %1, %3
  %.not3.i105 = select i1 %i.a, i1 true, i1 %i.b
  br i1 %.not3.i105, label %.lr.ph, label %.preheader95

.preheader95:                                     ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, %bb.a
  %.sroa.11.0.lcssa = phi i32 [ %1, %bb.a ], [ %.sroa.11.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ] ; 2 uses
  %i.c = icmp ne ptr %.sroa.0.0.lcssa, %2
  %i.d = icmp ne i32 %.sroa.11.0.lcssa, %3
  %.not3.i6110 = select i1 %i.c, i1 true, i1 %i.d
  br i1 %.not3.i6110, label %.lr.ph115, label %.preheader

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit
  %.0108 = phi i32 [ %i.ak, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.0107 = phi ptr [ %.sroa.0.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %0, %bb.a ] ; 7 uses
  %.sroa.11.0106 = phi i32 [ %.sroa.11.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %1, %bb.a ] ; 3 uses
  %i.e = and i32 %.sroa.11.0106, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0107, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 34
  %i.j = load i8, ptr %i.i, align 2
  %i.k = trunc i8 %i.j to i1
  %i.l = load ptr, ptr %i.h, align 8
  %spec.select.i = select i1 %i.k, ptr %i.l, ptr %i.h
  tail call void @llvm.prefetch.p0(ptr %spec.select.i, i32 0, i32 3, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0107, i64 11
  %i.n = load i8, ptr %i.m, align 1, !tbaa !22
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nsw i32 %.sroa.11.0106, 1            ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0107, i64 10
  %i.q = load i8, ptr %i.p, align 1, !tbaa !22
  %i.r = zext i8 %i.q to i32
  %i.s = icmp eq i32 %i.o, %i.r
  br i1 %i.s, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.01521.i.i.i = phi ptr [ %i.t, %bb.c ], [ %.sroa.0.0107, %bb.b ] ; 2 uses
  %i.t = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !21 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 11
  %i.v = load i8, ptr %i.u, align 1, !tbaa !22
  %.not17.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not17.i.i.i, label %bb.c, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.x = load i8, ptr %i.w, align 1, !tbaa !22    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  %i.z = load i8, ptr %i.y, align 1, !tbaa !22
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !169

.thread.i.i:                                      ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0107, i64 240
  %i.ac = add i32 %.sroa.11.0106, 1
  %i.ad = and i32 %i.ac, 255
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ae
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.af, %.thread.i.i ], [ %i.ai, %bb.d ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !21 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !22
  %.not.i.i.i.i = icmp eq i8 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 240
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, !llvm.loop !170

.critedge.loopexit23.i.i.i:                       ; preds = %bb.c
  %i.aj = zext i8 %i.x to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %.critedge.loopexit23.i.i.i, %bb.b
  %.sroa.11.2 = phi i32 [ 0, %bb.d ], [ %i.o, %bb.b ], [ %i.aj, %.critedge.loopexit23.i.i.i ], [ %i.o, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %.116.i.i.i, %bb.d ], [ %.sroa.0.0107, %bb.b ], [ %i.t, %.critedge.loopexit23.i.i.i ], [ %.sroa.0.0107, %.lr.ph.i.i.i ] ; 3 uses
  %i.ak = add nuw nsw i32 %.0108, 1
  %i.al = icmp ne ptr %.sroa.0.2, %2
  %i.am = icmp ne i32 %.sroa.11.2, %3
  %.not3.i = select i1 %i.al, i1 true, i1 %i.am
  %i.an = icmp samesign ult i32 %.0108, 15
  %i.ao = select i1 %.not3.i, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph, label %.preheader95, !llvm.loop !245

.preheader:                                       ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit39, %.preheader95
  %.sroa.074.0.lcssa = phi ptr [ %0, %.preheader95 ], [ %.sroa.074.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit39 ] ; 2 uses
  %.sroa.1181.0.lcssa = phi i32 [ %1, %.preheader95 ], [ %.sroa.1181.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit39 ] ; 2 uses
  %i.ap = icmp ne ptr %.sroa.074.0.lcssa, %2
  %i.aq = icmp ne i32 %.sroa.1181.0.lcssa, %3
  %.not3.i43118 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.not3.i43118, label %.lr.ph121, label %._crit_edge

.lr.ph115:                                        ; preds = %.preheader95, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit39
  %.sroa.0.1114 = phi ptr [ %.sroa.0.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit39 ], [ %.sroa.0.0.lcssa, %.preheader95 ] ; 7 uses
  %.sroa.11.1113 = phi i32 [ %.sroa.11.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit39 ], [ %.sroa.11.0.lcssa, %.preheader95 ] ; 3 uses
  %.sroa.1181.0112 = phi i32 [ %.sroa.1181.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit39 ], [ %1, %.preheader95 ] ; 3 uses
  %.sroa.074.0111 = phi ptr [ %.sroa.074.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit39 ], [ %0, %.preheader95 ] ; 7 uses
  %i.ar = and i32 %.sroa.1181.0112, 255
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %.sroa.074.0111, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = tail call noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension26SpaceUsedExcludingSelfLongEv(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.au)
  %i.aw = load i64, ptr %4, align 8, !tbaa !110
  %i.ax = add i64 %i.aw, %i.av
  store i64 %i.ax, ptr %4, align 8, !tbaa !110
  %i.ay = and i32 %.sroa.11.1113, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.1114, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 34
  %i.bd = load i8, ptr %i.bc, align 2
  %i.be = trunc i8 %i.bd to i1
  %i.bf = load ptr, ptr %i.bb, align 8
  %spec.select.i7 = select i1 %i.be, ptr %i.bf, ptr %i.bb
  tail call void @llvm.prefetch.p0(ptr %spec.select.i7, i32 0, i32 3, i32 1)
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.074.0111, i64 11
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !22
  %.not.i.i8 = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i8, label %.thread.i.i19, label %bb.e

bb.e:                                             ; preds = %.lr.ph115
  %i.bi = add nsw i32 %.sroa.1181.0112, 1         ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.074.0111, i64 10
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !22
  %i.bl = zext i8 %i.bk to i32
  %i.bm = icmp eq i32 %i.bi, %i.bl
  br i1 %i.bm, label %.lr.ph.i.i.i15, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit23

.lr.ph.i.i.i15:                                   ; preds = %bb.e, %bb.f
  %.01521.i.i.i16 = phi ptr [ %i.bn, %bb.f ], [ %.sroa.074.0111, %bb.e ] ; 2 uses
  %i.bn = load ptr, ptr %.01521.i.i.i16, align 8, !tbaa !21 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 11
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !22
  %.not17.i.i.i17 = icmp eq i8 %i.bp, 0
  br i1 %.not17.i.i.i17, label %bb.f, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit23

bb.f:                                             ; preds = %.lr.ph.i.i.i15
  %i.bq = getelementptr inbounds nuw i8, ptr %.01521.i.i.i16, i64 8
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !22  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 10
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !22
  %i.bu = icmp eq i8 %i.br, %i.bt
  br i1 %i.bu, label %.lr.ph.i.i.i15, label %.critedge.loopexit23.i.i.i18, !llvm.loop !169

.thread.i.i19:                                    ; preds = %.lr.ph115
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.074.0111, i64 240
  %i.bw = add i32 %.sroa.1181.0112, 1
  %i.bx = and i32 %i.bw, 255
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.by
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.thread.i.i19
  %.116.in.i.i.i20 = phi ptr [ %i.bz, %.thread.i.i19 ], [ %i.cc, %bb.g ]
  %.116.i.i.i21 = load ptr, ptr %.116.in.i.i.i20, align 8, !tbaa !21 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.116.i.i.i21, i64 11
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !22
  %.not.i.i.i.i22 = icmp eq i8 %i.cb, 0
  %i.cc = getelementptr inbounds nuw i8, ptr %.116.i.i.i21, i64 240
  br i1 %.not.i.i.i.i22, label %bb.g, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit23, !llvm.loop !170

.critedge.loopexit23.i.i.i18:                     ; preds = %bb.f
  %i.cd = zext i8 %i.br to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit23

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit23: ; preds = %.lr.ph.i.i.i15, %bb.g, %.critedge.loopexit23.i.i.i18, %bb.e
  %.sroa.074.2 = phi ptr [ %.116.i.i.i21, %bb.g ], [ %.sroa.074.0111, %bb.e ], [ %i.bn, %.critedge.loopexit23.i.i.i18 ], [ %.sroa.074.0111, %.lr.ph.i.i.i15 ] ; 2 uses
  %.sroa.1181.2 = phi i32 [ 0, %bb.g ], [ %i.bi, %bb.e ], [ %i.cd, %.critedge.loopexit23.i.i.i18 ], [ %i.bi, %.lr.ph.i.i.i15 ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.1114, i64 11
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !22
  %.not.i.i24 = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i24, label %.thread.i.i35, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit23
  %i.cg = add nsw i32 %.sroa.11.1113, 1           ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.1114, i64 10
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !22
  %i.cj = zext i8 %i.ci to i32
  %i.ck = icmp eq i32 %i.cg, %i.cj
  br i1 %i.ck, label %.lr.ph.i.i.i31, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit39

.lr.ph.i.i.i31:                                   ; preds = %bb.h, %bb.i
  %.01521.i.i.i32 = phi ptr [ %i.cl, %bb.i ], [ %.sroa.0.1114, %bb.h ] ; 2 uses
  %i.cl = load ptr, ptr %.01521.i.i.i32, align 8, !tbaa !21 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 11
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !22
  %.not17.i.i.i33 = icmp eq i8 %i.cn, 0
  br i1 %.not17.i.i.i33, label %bb.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit39

bb.i:                                             ; preds = %.lr.ph.i.i.i31
  %i.co = getelementptr inbounds nuw i8, ptr %.01521.i.i.i32, i64 8
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !22  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 10
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !22
  %i.cs = icmp eq i8 %i.cp, %i.cr
  br i1 %i.cs, label %.lr.ph.i.i.i31, label %.critedge.loopexit23.i.i.i34, !llvm.loop !169

.thread.i.i35:                                    ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit23
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.1114, i64 240
  %i.cu = add i32 %.sroa.11.1113, 1
  %i.cv = and i32 %i.cu, 255
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cw
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.thread.i.i35
  %.116.in.i.i.i36 = phi ptr [ %i.cx, %.thread.i.i35 ], [ %i.da, %bb.j ]
  %.116.i.i.i37 = load ptr, ptr %.116.in.i.i.i36, align 8, !tbaa !21 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.116.i.i.i37, i64 11
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !22
  %.not.i.i.i.i38 = icmp eq i8 %i.cz, 0
  %i.da = getelementptr inbounds nuw i8, ptr %.116.i.i.i37, i64 240
  br i1 %.not.i.i.i.i38, label %bb.j, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit39, !llvm.loop !170

.critedge.loopexit23.i.i.i34:                     ; preds = %bb.i
  %i.db = zext i8 %i.cp to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit39

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit39: ; preds = %.lr.ph.i.i.i31, %bb.j, %.critedge.loopexit23.i.i.i34, %bb.h
  %.sroa.11.3 = phi i32 [ 0, %bb.j ], [ %i.cg, %bb.h ], [ %i.db, %.critedge.loopexit23.i.i.i34 ], [ %i.cg, %.lr.ph.i.i.i31 ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.116.i.i.i37, %bb.j ], [ %.sroa.0.1114, %bb.h ], [ %i.cl, %.critedge.loopexit23.i.i.i34 ], [ %.sroa.0.1114, %.lr.ph.i.i.i31 ] ; 2 uses
  %i.dc = icmp ne ptr %.sroa.0.3, %2
  %i.dd = icmp ne i32 %.sroa.11.3, %3
  %.not3.i6 = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %.not3.i6, label %.lr.ph115, label %.preheader, !llvm.loop !246

.lr.ph121:                                        ; preds = %.preheader, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit59
  %.sroa.1181.1120 = phi i32 [ %.sroa.1181.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit59 ], [ %.sroa.1181.0.lcssa, %.preheader ] ; 3 uses
  %.sroa.074.1119 = phi ptr [ %.sroa.074.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit59 ], [ %.sroa.074.0.lcssa, %.preheader ] ; 7 uses
  %i.de = and i32 %.sroa.1181.1120, 255
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %.sroa.074.1119, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = tail call noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet9Extension26SpaceUsedExcludingSelfLongEv(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dh)
  %i.dj = load i64, ptr %4, align 8, !tbaa !110
  %i.dk = add i64 %i.dj, %i.di
  store i64 %i.dk, ptr %4, align 8, !tbaa !110
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.074.1119, i64 11
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !22
  %.not.i.i44 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i44, label %.thread.i.i55, label %bb.k

bb.k:                                             ; preds = %.lr.ph121
  %i.dn = add nsw i32 %.sroa.1181.1120, 1         ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.074.1119, i64 10
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !22
  %i.dq = zext i8 %i.dp to i32
  %i.dr = icmp eq i32 %i.dn, %i.dq
  br i1 %i.dr, label %.lr.ph.i.i.i51, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit59

.lr.ph.i.i.i51:                                   ; preds = %bb.k, %bb.l
  %.01521.i.i.i52 = phi ptr [ %i.ds, %bb.l ], [ %.sroa.074.1119, %bb.k ] ; 2 uses
  %i.ds = load ptr, ptr %.01521.i.i.i52, align 8, !tbaa !21 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 11
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !22
  %.not17.i.i.i53 = icmp eq i8 %i.du, 0
  br i1 %.not17.i.i.i53, label %bb.l, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit59

bb.l:                                             ; preds = %.lr.ph.i.i.i51
  %i.dv = getelementptr inbounds nuw i8, ptr %.01521.i.i.i52, i64 8
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !22  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 10
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !22
  %i.dz = icmp eq i8 %i.dw, %i.dy
  br i1 %i.dz, label %.lr.ph.i.i.i51, label %.critedge.loopexit23.i.i.i54, !llvm.loop !169

.thread.i.i55:                                    ; preds = %.lr.ph121
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.074.1119, i64 240
  %i.eb = add i32 %.sroa.1181.1120, 1
  %i.ec = and i32 %i.eb, 255
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ed
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.thread.i.i55
  %.116.in.i.i.i56 = phi ptr [ %i.ee, %.thread.i.i55 ], [ %i.eh, %bb.m ]
  %.116.i.i.i57 = load ptr, ptr %.116.in.i.i.i56, align 8, !tbaa !21 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.116.i.i.i57, i64 11
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !22
  %.not.i.i.i.i58 = icmp eq i8 %i.eg, 0
  %i.eh = getelementptr inbounds nuw i8, ptr %.116.i.i.i57, i64 240
  br i1 %.not.i.i.i.i58, label %bb.m, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit59, !llvm.loop !170

.critedge.loopexit23.i.i.i54:                     ; preds = %bb.l
  %i.ei = zext i8 %i.dw to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit59

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit59: ; preds = %.lr.ph.i.i.i51, %bb.m, %.critedge.loopexit23.i.i.i54, %bb.k
  %.sroa.074.3 = phi ptr [ %.116.i.i.i57, %bb.m ], [ %.sroa.074.1119, %bb.k ], [ %i.ds, %.critedge.loopexit23.i.i.i54 ], [ %.sroa.074.1119, %.lr.ph.i.i.i51 ] ; 2 uses
  %.sroa.1181.3 = phi i32 [ 0, %bb.m ], [ %i.dn, %bb.k ], [ %i.ei, %.critedge.loopexit23.i.i.i54 ], [ %i.dn, %.lr.ph.i.i.i51 ] ; 2 uses
  %i.ej = icmp ne ptr %.sroa.074.3, %2
  %i.ek = icmp ne i32 %.sroa.1181.3, %3
  %.not3.i43 = select i1 %i.ej, i1 true, i1 %i.ek
  br i1 %.not3.i43, label %.lr.ph121, label %._crit_edge, !llvm.loop !247

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit59, %.preheader
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef i64 @_ZNK6google8protobuf8internal20RepeatedPtrFieldBase26SpaceUsedExcludingSelfLongINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEmv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53     ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ne ptr %i.a, null
  %i.e = zext i1 %.not.i to i32
  %.pre = add i64 %i.b, -1
  %.pre11 = inttoptr i64 %.pre to ptr
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.b, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !68
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = add nsw i64 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !58
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit: ; preds = %bb.b, %bb.c
  %.pre-phi12 = phi ptr [ %.pre11, %bb.b ], [ %i.g, %bb.c ]
  %i.n = phi i64 [ 0, %bb.b ], [ %i.k, %bb.c ]    ; 2 uses
  %i.o = phi i32 [ %i.e, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre-phi12, i64 8
  %i.q = select i1 %i.d, ptr %0, ptr %i.p
  %i.r = icmp sgt i32 %i.o, 0
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit
  %wide.trip.count = zext nneg i32 %i.o to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit
  %.07.lcssa = phi i64 [ %i.n, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit ], [ %i.w, %.lr.ph ]
  ret i64 %.07.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.078 = phi i64 [ %i.n, %.lr.ph.preheader ], [ %i.w, %.lr.ph ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !60
  %i.u = tail call noundef i64 @_ZN6google8protobuf8internal32StringSpaceUsedExcludingSelfLongERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.t)
  %i.v = add i64 %.078, 32
  %i.w = add i64 %i.v, %i.u                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !248
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { cold }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !12, i64 2}
!11 = !{!"_ZTSN6google8protobuf8internal12ExtensionSetE", !12, i64 0, !12, i64 2, !5, i64 8}
!12 = !{!"short", !5, i64 0}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!15, !16, i64 0}
!15 = !{!"_ZTSN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEEE", !16, i64 0, !17, i64 8, !20, i64 16}
!16 = !{!"p1 _ZTSN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEEE", !9, i64 0}
!17 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_19key_compare_adapterISt4lessIiEiE15checked_compareESaISt4pairIKiN6google8protobuf8internal12ExtensionSet9ExtensionEEEPNS1_10btree_nodeINS1_10map_paramsIiSE_S5_SG_Li256ELb0EEEEEEEE", !18, i64 0}
!18 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_19key_compare_adapterISt4lessIiEiE15checked_compareESaISt4pairIKiN6google8protobuf8internal12ExtensionSet9ExtensionEEEPNS1_10btree_nodeINS1_10map_paramsIiSG_S7_SI_Li256ELb0EEEEEEEESt16integer_sequenceImJLm0ELm1ELm2EEELb1EEE", !19, i64 0}
!19 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageIPNS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEELm2ELb0EEE", !16, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!16, !16, i64 0}
!22 = !{!5, !5, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!26, !4, i64 0}
!26 = !{!"_ZTSN6google8protobuf8internal12ExtensionSet8KeyValueE", !4, i64 0, !27, i64 8}
!27 = !{!"_ZTSN6google8protobuf8internal12ExtensionSet9ExtensionE", !5, i64 0, !5, i64 8, !28, i64 9, !28, i64 10, !28, i64 10, !28, i64 10, !28, i64 11, !29, i64 12, !30, i64 16}
!28 = !{!"bool", !5, i64 0}
!29 = !{!"_ZTSN6google8protobuf8internal12ExtensionSet16TrivialAtomicIntE", !5, i64 0}
!30 = !{!"p1 _ZTSN6google8protobuf15FieldDescriptorE", !9, i64 0}
!31 = distinct !{!31, !24}
!32 = distinct !{!32, !24}
!33 = !{!34, !34, i64 0}
!34 = !{!"vtable pointer", !6, i64 0}
!35 = !{!36, !4, i64 4}
!36 = !{!"_ZTSN6google8protobuf15FieldDescriptorE", !37, i64 0, !28, i64 1, !28, i64 1, !28, i64 1, !28, i64 1, !28, i64 1, !28, i64 1, !5, i64 1, !5, i64 2, !5, i64 3, !28, i64 3, !28, i64 3, !5, i64 3, !4, i64 4, !38, i64 8, !40, i64 16, !41, i64 24, !42, i64 32, !5, i64 40, !5, i64 48, !43, i64 56, !44, i64 64, !44, i64 72, !5, i64 80}
!37 = !{!"_ZTSN6google8protobuf8internal10SymbolBaseE", !5, i64 0}
!38 = !{!"_ZTSN6google8protobuf8internal15DescriptorNamesE", !39, i64 0}
!39 = !{!"p1 omnipotent char", !9, i64 0}
!40 = !{!"p1 _ZTSN6google8protobuf14FileDescriptorE", !9, i64 0}
!41 = !{!"p1 _ZTSN4absl12lts_202505129once_flagE", !9, i64 0}
!42 = !{!"p1 _ZTSN6google8protobuf10DescriptorE", !9, i64 0}
!43 = !{!"p1 _ZTSN6google8protobuf12FieldOptionsE", !9, i64 0}
!44 = !{!"p1 _ZTSN6google8protobuf10FeatureSetE", !9, i64 0}
!45 = !{!36, !5, i64 2}
!46 = !{!47, !47, i64 0}
!47 = !{!"p1 _ZTSN6google8protobuf8internal12ExtensionSet9ExtensionE", !9, i64 0}
!48 = !{!27, !5, i64 8}
!49 = !{!27, !28, i64 9}
!50 = !{!27, !28, i64 11}
!51 = !{!52, !20, i64 0}
!52 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !20, i64 0}
!53 = !{!54, !9, i64 0}
!54 = !{!"_ZTSN6google8protobuf8internal20RepeatedPtrFieldBaseE", !9, i64 0, !4, i64 8, !55, i64 12}
!55 = !{!"_ZTSN6google8protobuf8internal30TaggedInternalMetadataResolverILj0EEE", !4, i64 0}
!56 = !{!54, !4, i64 8}
!57 = !{!55, !4, i64 0}
!58 = !{!59, !4, i64 4}
!59 = !{!"_ZTSN6google8protobuf8internal20RepeatedPtrFieldBase3RepE", !4, i64 0, !4, i64 4, !5, i64 8}
!60 = !{!9, !9, i64 0}
!61 = distinct !{null, null, null, null, null, null, null}
!62 = !{!63, !64, i64 0}
!63 = !{!"_ZTSN6google8protobuf8internal9ClassDataE", !64, i64 0, !65, i64 8, !9, i64 16, !9, i64 24, !66, i64 32, !4, i64 48, !28, i64 52, !28, i64 53}
!64 = !{!"p1 _ZTSN6google8protobuf11MessageLiteE", !9, i64 0}
!65 = !{!"p1 _ZTSN6google8protobuf8internal16TcParseTableBaseE", !9, i64 0}
!66 = !{!"_ZTSN6google8protobuf8internal14MessageCreatorE", !4, i64 0, !67, i64 4, !5, i64 5, !5, i64 8}
!67 = !{!"_ZTSN6google8protobuf8internal14MessageCreator3TagE", !5, i64 0}
!68 = !{!59, !4, i64 0}
end_hunk_2
