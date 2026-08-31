Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64CallingConvention?download=true
inline.NumInlined: 2246
inline.NumDeleted: 261
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZL23CC_AArch64_Custom_BlockRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE:bb.a
  br i1 %i.fu, label %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit
  %.sroa.speculated = call i8 @llvm.umax.i8(i8 %.sroa.speculated8, i8 3)
  br label %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.thread

_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.thread: ; preds = %.loopexit, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.aa, %bb.ab, %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit
  %.sroa.04.0 = phi i8 [ %.sroa.speculated8, %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit ], [ %.sroa.speculated, %bb.ab ], [ %.sroa.speculated8, %bb.aa ], [ %.sroa.speculated8, %bb.aa ], [ %.sroa.speculated8, %bb.aa ], [ %.sroa.speculated8, %bb.aa ], [ %.sroa.speculated8, %bb.aa ], [ %.sroa.speculated8, %bb.aa ], [ %.sroa.speculated8, %.loopexit ]
  %.sroa.02.0.copyload = load i16, ptr %1, align 2, !tbaa !28
  call fastcc void @_ZL16finishStackBlockRN4llvm15SmallVectorImplINS_11CCValAssignEEENS_3MVTERNS_3ISD10ArgFlagsTyERNS_7CCStateENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i16 %.sroa.02.0.copyload, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(420) %3, i8 %.sroa.04.0)
  br label %.thread58

.thread58:                                        ; preds = %_ZNK4llvm3MVT13is32BitVectorEv.exit, %._crit_edge88, %._crit_edge, %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.thread, %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit, %bb.g
  %.2 = phi i1 [ false, %bb.g ], [ true, %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit ], [ true, %._crit_edge88 ], [ true, %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.thread ], [ true, %._crit_edge ], [ false, %_ZNK4llvm3MVT13is32BitVectorEv.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEEPKt(ptr noundef nonnull align 8 dereferenceable(420) %0, ptr %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not14.i = icmp eq i64 %2, 0
  br i1 %.not14.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.c = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %bb.c ]
  %.0613.i = phi i32 [ 0, %.lr.ph.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !97
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = lshr i32 %i.f, 5
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !11
  %i.k = and i32 %i.f, 31
  %i.l = shl nuw i32 1, %i.k
  %i.m = and i32 %i.l, %i.j
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %.0613.i, 1                      ; 2 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = icmp ugt i64 %2, %i.o
  br i1 %i.p, label %bb.b, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread, !llvm.loop !163

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit: ; preds = %bb.b
  %i.q = zext i32 %.0613.i to i64                 ; 3 uses
  %i.r = icmp eq i64 %2, %i.q
  br i1 %i.r, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.q
  %i.t = load i16, ptr %i.s, align 2, !tbaa !97   ; 2 uses
  %i.u = zext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.q
  %i.w = load i16, ptr %i.v, align 2, !tbaa !97
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %0, i16 noundef zeroext %i.t) #7
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %0, i16 noundef zeroext %i.w) #7
  br label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread: ; preds = %bb.c, %bb.a, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, %bb.d
  %.sroa.05.0 = phi i32 [ %i.u, %bb.d ], [ 0, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i32 %.sroa.05.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %0, i32 noundef %1, i8 %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.idx = shl nuw nsw i64 %4, 1
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %.not10 = icmp eq i64 %4, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i8, ptr %i.b, align 8, !tbaa !301, !range !96, !noundef !58
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !302  ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.g = zext i32 %1 to i64
  %i.h = zext nneg i8 %2 to i64
  %i.i = shl nuw i64 1, %i.h                      ; 2 uses
  %i.j = add nsw i64 %i.g, -1
  %i.k = add i64 %i.j, %i.i
  %i.l = add i64 %i.k, %i.f
  %i.m = sub i64 0, %i.i
  %i.n = and i64 %i.l, %i.m                       ; 2 uses
  %i.o = sub i64 0, %i.n
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

bb.c:                                             ; preds = %._crit_edge
  %i.p = zext nneg i8 %2 to i64
  %i.q = shl nuw i64 1, %i.p                      ; 2 uses
  %i.r = add i64 %i.q, -1
  %i.s = add i64 %i.r, %i.f
  %i.t = sub i64 0, %i.q
  %i.u = and i64 %i.s, %i.t                       ; 2 uses
  %i.v = zext i32 %1 to i64
  %i.w = add nsw i64 %i.u, %i.v
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit: ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ %i.n, %bb.b ], [ %i.w, %bb.c ]
  %.0.i = phi i64 [ %i.o, %bb.b ], [ %i.u, %bb.c ]
  store i64 %.sink, ptr %i.e, align 8, !tbaa !302
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.x, align 8, !tbaa !303
  %.sroa.speculated.i = tail call i8 @llvm.umax.i8(i8 %2, i8 %.sroa.0.0.copyload.i.i)
  store i8 %.sroa.speculated.i, ptr %i.x, align 8, !tbaa !303
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %0, i8 %2) #7
  ret i64 %.0.i

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi ptr [ %i.z, %.lr.ph ], [ %3, %bb.a ] ; 2 uses
  %i.y = load i16, ptr %.011, align 2, !tbaa !97
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %0, i16 noundef zeroext %i.y) #7
  %i.z = getelementptr inbounds nuw i8, ptr %.011, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.z, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %0, i32 noundef %1, i8 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !301, !range !96, !noundef !58
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !302  ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %1 to i64
  %i.g = zext nneg i8 %2 to i64
  %i.h = shl nuw i64 1, %i.g                      ; 2 uses
  %i.i = add nsw i64 %i.f, -1
  %i.j = add i64 %i.i, %i.h
  %i.k = add i64 %i.j, %i.e
  %i.l = sub i64 0, %i.h
  %i.m = and i64 %i.k, %i.l                       ; 2 uses
  store i64 %i.m, ptr %i.d, align 8, !tbaa !302
  %i.n = sub i64 0, %i.m
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = zext nneg i8 %2 to i64
  %i.p = shl nuw i64 1, %i.o                      ; 2 uses
  %i.q = add i64 %i.p, -1
  %i.r = add i64 %i.q, %i.e
  %i.s = sub i64 0, %i.p
  %i.t = and i64 %i.r, %i.s                       ; 2 uses
  %i.u = zext i32 %1 to i64
  %i.v = add nsw i64 %i.t, %i.u
  store i64 %i.v, ptr %i.d, align 8, !tbaa !302
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.n, %bb.b ], [ %i.t, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.w, align 8, !tbaa !303
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %2, i8 %.sroa.0.0.copyload.i)
  store i8 %.sroa.speculated, ptr %i.w, align 8, !tbaa !303
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %0, i8 %2) #7
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm32CC_AArch64_Arm64EC_CFGuard_CheckEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree noundef readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %i.a = icmp eq i16 %2, 8
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11   ; 3 uses
  %i.f = and i32 %i.e, 67108864
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.e, 33554432
  %.not.i.i.1 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %i.e, 16777216
  %.not.i.i.2 = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ]
  %i.i = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm32CC_AArch64_Arm64EC_CFGuard_CheckEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide
  %i.j = load i16, ptr %i.i, align 2, !tbaa !97   ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.j) #7
  %i.k = zext i16 %i.j to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.l, align 8, !tbaa !12, !alias.scope !304
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.m, align 8, !tbaa !17, !alias.scope !304
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !alias.scope !304
  %i.p = and i8 %i.o, -128
  %i.q = trunc i32 %3 to i8
  %i.r = shl i8 %i.q, 1
  %i.s = and i8 %i.r, 126
  %i.t = or disjoint i8 %i.p, %i.s
  store i8 %i.t, ptr %i.n, align 4, !alias.scope !304
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.u, align 2, !tbaa !28, !alias.scope !304
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 8, ptr %i.v, align 8, !tbaa !28, !alias.scope !304
  store i32 %i.k, ptr %8, align 8, !tbaa !11, !alias.scope !304
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29, !nonnull !58, !align !59 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !60   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !61
  %.not.i.i10 = icmp ult i32 %i.z, %i.ab
  br i1 %.not.i.i10, label %bb.f, label %bb.e, !prof !62

bb.e:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %bb.g

bb.f:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.ac = zext i32 %i.z to i64
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.af = load i32, ptr %i.y, align 8, !tbaa !60
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.y, align 8, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.a, %bb.g
  %.1 = phi i1 [ false, %bb.g ], [ true, %bb.a ], [ true, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm24CC_AArch64_Arm64EC_ThunkEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree noundef readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %12 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %13 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %14 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %15 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %16 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %17 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %18 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %19 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %20 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %21 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %i.a = and i64 %4, 8
  %i.b = icmp ne i64 %i.a, 0
  %i.c = icmp eq i16 %2, 8
  %or.cond = select i1 %i.b, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread383

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11
  %i.h = and i32 %i.g, 524288
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread383

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 243) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.i, align 8, !tbaa !12, !alias.scope !307
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.j, align 8, !tbaa !17, !alias.scope !307
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4, !alias.scope !307
  %i.m = and i8 %i.l, -128
  %i.n = trunc i32 %3 to i8
  %i.o = shl i8 %i.n, 1
  %i.p = and i8 %i.o, 126
  %i.q = or disjoint i8 %i.m, %i.p
  store i8 %i.q, ptr %i.k, align 4, !alias.scope !307
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.r, align 2, !tbaa !28, !alias.scope !307
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 8, ptr %i.s, align 8, !tbaa !28, !alias.scope !307
  store i32 243, ptr %8, align 8, !tbaa !11, !alias.scope !307
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !29, !nonnull !58, !align !59 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !60   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !61
  %.not.i.i = icmp ult i32 %i.w, %i.y
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !62

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

bb.e:                                             ; preds = %bb.c
  %i.z = zext i32 %i.w to i64
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.ac = load i32, ptr %i.v, align 8, !tbaa !60
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.v, align 8, !tbaa !60
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

_ZN4llvm7CCState11AllocateRegEt.exit:             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  br label %bb.bj

_ZN4llvm7CCState11AllocateRegEt.exit.thread383:   ; preds = %bb.b, %bb.a
  %i.ae = and i64 %4, 32
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %bb.f, label %.thread394

bb.f:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread383
  switch i16 %2, label %.thread394 [
    i16 2, label %.critedge
    i16 5, label %.critedge
    i16 6, label %.critedge
  ]

.critedge:                                        ; preds = %bb.f, %bb.f, %bb.f
  %i.af = and i64 %4, 2
  %.not616 = icmp eq i64 %i.af, 0
  br i1 %.not616, label %bb.g, label %.thread394

bb.g:                                             ; preds = %.critedge
  %i.ag = trunc i64 %4 to i1
  %. = select i1 %i.ag, i32 2, i32 3
  br label %.thread394

.thread394:                                       ; preds = %bb.f, %_ZN4llvm7CCState11AllocateRegEt.exit.thread383, %bb.g, %.critedge
  %.sroa.0319.1 = phi i16 [ 7, %.critedge ], [ 7, %bb.g ], [ %2, %bb.f ], [ 8, %_ZN4llvm7CCState11AllocateRegEt.exit.thread383 ] ; 7 uses
  %.1133 = phi i32 [ 1, %.critedge ], [ %., %bb.g ], [ %3, %bb.f ], [ 11, %_ZN4llvm7CCState11AllocateRegEt.exit.thread383 ] ; 17 uses
  %i.ah = and i64 %4, 128
  %.not617 = icmp eq i64 %i.ah, 0
  br i1 %.not617, label %_ZN4llvm7CCState11AllocateRegEt.exit166.thread402, label %bb.h

bb.h:                                             ; preds = %.thread394
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !11
  %i.am = and i32 %i.al, 524288
  %.not.i164 = icmp eq i32 %i.am, 0
  br i1 %.not.i164, label %bb.i, label %_ZN4llvm7CCState11AllocateRegEt.exit166.thread402

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 243) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.an, align 8, !tbaa !12, !alias.scope !310
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.ao, align 8, !tbaa !17, !alias.scope !310
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 4, !alias.scope !310
  %i.ar = and i8 %i.aq, -128
  %i.as = trunc i32 %.1133 to i8
  %i.at = shl i8 %i.as, 1
  %i.au = and i8 %i.at, 126
  %i.av = or disjoint i8 %i.ar, %i.au
  store i8 %i.av, ptr %i.ap, align 4, !alias.scope !310
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.aw, align 2, !tbaa !28, !alias.scope !310
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 %.sroa.0319.1, ptr %i.ax, align 8, !tbaa !28, !alias.scope !310
  store i32 243, ptr %9, align 8, !tbaa !11, !alias.scope !310
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !29, !nonnull !58, !align !59 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !60 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !61
  %.not.i.i167 = icmp ult i32 %i.bb, %i.bd
  br i1 %.not.i.i167, label %bb.k, label %bb.j, !prof !62
end_hunk_0
begin_hunk_1_@_ZN4llvm14CC_AArch64_GHCEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  %.not.i.i65.3 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i65.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit68, label %.thread253

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit68: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.0613.i.i64.lcssa.wide = phi i64 [ 0, %bb.j ], [ 1, %bb.k ], [ 2, %bb.l ], [ 3, %bb.m ]
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm14CC_AArch64_GHCEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2, i64 %.0613.i.i64.lcssa.wide
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !97 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.bq) #7
  %i.br = zext i16 %i.bq to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.bs, align 8, !tbaa !12, !alias.scope !478
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.bt, align 8, !tbaa !17, !alias.scope !478
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 4, !alias.scope !478
  %i.bw = and i8 %i.bv, -128
  %i.bx = trunc i32 %3 to i8
  %i.by = shl i8 %i.bx, 1
  %i.bz = and i8 %i.by, 126
  %i.ca = or disjoint i8 %i.bw, %i.bz
  store i8 %i.ca, ptr %i.bu, align 4, !alias.scope !478
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.cb, align 2, !tbaa !28, !alias.scope !478
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 14, ptr %i.cc, align 8, !tbaa !28, !alias.scope !478
  store i32 %i.br, ptr %10, align 8, !tbaa !11, !alias.scope !478
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !29, !nonnull !58, !align !59 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !60 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !61
  %.not.i.i69 = icmp ult i32 %i.cg, %i.ci
  br i1 %.not.i.i69, label %bb.o, label %bb.n, !prof !62

bb.n:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit68
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %bb.p

bb.o:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit68
  %i.cj = zext i32 %i.cg to i64
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.cm = load i32, ptr %i.cf, align 8, !tbaa !60
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cf, align 8, !tbaa !60
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  br label %.thread253

.thread227.thread.fold.split:                     ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread156
  %i.co = trunc i32 %3 to i8
  %i.cp = shl i8 %i.co, 1
  %i.cq = and i8 %i.cp, 126
  br label %.thread227.thread

.thread227.thread:                                ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread156, %_ZN4llvm7CCState11AllocateRegEt.exit.thread156, %_ZN4llvm7CCState11AllocateRegEt.exit.thread156, %_ZN4llvm7CCState11AllocateRegEt.exit.thread156, %_ZN4llvm7CCState11AllocateRegEt.exit.thread156, %.thread227.thread.fold.split
  %.250215230258 = phi i8 [ 14, %_ZN4llvm7CCState11AllocateRegEt.exit.thread156 ], [ 14, %_ZN4llvm7CCState11AllocateRegEt.exit.thread156 ], [ 14, %_ZN4llvm7CCState11AllocateRegEt.exit.thread156 ], [ 14, %_ZN4llvm7CCState11AllocateRegEt.exit.thread156 ], [ 14, %_ZN4llvm7CCState11AllocateRegEt.exit.thread156 ], [ %i.cq, %.thread227.thread.fold.split ]
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !11 ; 4 uses
  %i.cv = and i32 %i.cu, 268435456
  %.not.i.i72 = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i72, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit75, label %bb.q

bb.q:                                             ; preds = %.thread227.thread
  %i.cw = and i32 %i.cu, 536870912
  %.not.i.i72.1 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i72.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit75, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = and i32 %i.cu, 1073741824
  %.not.i.i72.2 = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i72.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit75, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i.i72.3 = icmp sgt i32 %i.cu, -1
  br i1 %.not.i.i72.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit75, label %.thread253

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit75: ; preds = %bb.s, %bb.r, %bb.q, %.thread227.thread
  %.0613.i.i71.lcssa.wide = phi i64 [ 0, %.thread227.thread ], [ 1, %bb.q ], [ 2, %bb.r ], [ 3, %bb.s ]
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm14CC_AArch64_GHCEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3, i64 %.0613.i.i71.lcssa.wide
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !97 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.cz) #7
  %i.da = zext i16 %i.cz to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.db, align 8, !tbaa !12, !alias.scope !481
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %0, ptr %i.dc, align 8, !tbaa !17, !alias.scope !481
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 4, !alias.scope !481
  %i.df = and i8 %i.de, -128
  %i.dg = or disjoint i8 %i.df, %.250215230258
  store i8 %i.dg, ptr %i.dd, align 4, !alias.scope !481
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i16 %1, ptr %i.dh, align 2, !tbaa !28, !alias.scope !481
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 15, ptr %i.di, align 8, !tbaa !28, !alias.scope !481
  store i32 %i.da, ptr %11, align 8, !tbaa !11, !alias.scope !481
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !29, !nonnull !58, !align !59 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !60 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !61
  %.not.i.i76 = icmp ult i32 %i.dm, %i.do
  br i1 %.not.i.i76, label %bb.u, label %bb.t, !prof !62

bb.t:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit75
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br label %bb.v

bb.u:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit75
  %i.dp = zext i32 %i.dm to i64
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !8
  %i.dr = getelementptr inbounds nuw [32 x i8], ptr %i.dq, i64 %i.dp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dr, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %i.ds = load i32, ptr %i.dl, align 8, !tbaa !60
  %i.dt = add i32 %i.ds, 1
  store i32 %i.dt, ptr %i.dl, align 8, !tbaa !60
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  br label %.thread253

.critedge4:                                       ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread156, %_ZN4llvm7CCState11AllocateRegEt.exit.thread156, %_ZN4llvm7CCState11AllocateRegEt.exit.thread156
  %i.du = and i64 %4, 2
  %.not283 = icmp eq i64 %i.du, 0
  br i1 %.not283, label %bb.w, label %.thread244

bb.w:                                             ; preds = %.critedge4
  %i.dv = trunc i64 %4 to i1
  %. = select i1 %i.dv, i32 2, i32 3
  br label %.thread244

.thread244.fold.split:                            ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread156
  br label %.thread244

.thread244:                                       ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread156, %.thread244.fold.split, %bb.w, %.critedge4
  %.351248 = phi i32 [ %3, %.thread244.fold.split ], [ 1, %.critedge4 ], [ %., %bb.w ], [ 7, %_ZN4llvm7CCState11AllocateRegEt.exit.thread156 ]
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !11 ; 10 uses
  %i.ea = and i32 %i.dz, 4
  %.not.i.i79 = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i79, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit82, label %bb.x

bb.x:                                             ; preds = %.thread244
  %i.eb = and i32 %i.dz, 8
  %.not.i.i79.1 = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i79.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit82, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ec = and i32 %i.dz, 16
  %.not.i.i79.2 = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i79.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit82, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ed = and i32 %i.dz, 32
  %.not.i.i79.3 = icmp eq i32 %i.ed, 0
  br i1 %.not.i.i79.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit82, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ee = and i32 %i.dz, 64
  %.not.i.i79.4 = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i79.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit82, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ef = and i32 %i.dz, 128
  %.not.i.i79.5 = icmp eq i32 %i.ef, 0
  br i1 %.not.i.i79.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit82, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eg = and i32 %i.dz, 256
  %.not.i.i79.6 = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i79.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit82, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eh = and i32 %i.dz, 512
  %.not.i.i79.7 = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i79.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit82, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ei = and i32 %i.dz, 1024
  %.not.i.i79.8 = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i79.8, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit82, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ej = and i32 %i.dz, 2048
  %.not.i.i79.9 = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i79.9, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit82, label %.thread253

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit82: ; preds = %.thread244, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.0613.i.i78.lcssa.wide = phi i64 [ 0, %.thread244 ], [ 1, %bb.x ], [ 2, %bb.y ], [ 3, %bb.z ], [ 4, %bb.aa ], [ 5, %bb.ab ], [ 6, %bb.ac ], [ 7, %bb.ad ], [ 8, %bb.ae ], [ 9, %bb.af ]
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm14CC_AArch64_GHCEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList4, i64 %.0613.i.i78.lcssa.wide
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !97 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.el) #7
  %i.em = zext i16 %i.el to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  %i.en = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.en, align 8, !tbaa !12, !alias.scope !484
  %i.eo = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %0, ptr %i.eo, align 8, !tbaa !17, !alias.scope !484
  %i.ep = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 4, !alias.scope !484
  %i.er = and i8 %i.eq, -128
  %i.es = trunc i32 %.351248 to i8
  %i.et = shl i8 %i.es, 1
  %i.eu = and i8 %i.et, 126
  %i.ev = or disjoint i8 %i.er, %i.eu
  store i8 %i.ev, ptr %i.ep, align 4, !alias.scope !484
  %i.ew = getelementptr inbounds nuw i8, ptr %12, i64 22
  store i16 %1, ptr %i.ew, align 2, !tbaa !28, !alias.scope !484
  %i.ex = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i16 8, ptr %i.ex, align 8, !tbaa !28, !alias.scope !484
  store i32 %i.em, ptr %12, align 8, !tbaa !11, !alias.scope !484
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !29, !nonnull !58, !align !59 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 3 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !60 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !61
  %.not.i.i83 = icmp ult i32 %i.fb, %i.fd
  br i1 %.not.i.i83, label %bb.ah, label %bb.ag, !prof !62

bb.ag:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit82
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(26) %12)
  br label %bb.ai

bb.ah:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit82
  %i.fe = zext i32 %i.fb to i64
  %i.ff = load ptr, ptr %i.ez, align 8, !tbaa !8
  %i.fg = getelementptr inbounds nuw [32 x i8], ptr %i.ff, i64 %i.fe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fg, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  %i.fh = load i32, ptr %i.fa, align 8, !tbaa !60
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr %i.fa, align 8, !tbaa !60
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  br label %.thread253

.thread253:                                       ; preds = %bb.af, %bb.s, %bb.m, %bb.f, %_ZN4llvm7CCState11AllocateRegEt.exit.thread156, %bb.ai, %bb.v, %bb.p, %bb.i, %_ZN4llvm7CCState11AllocateRegEt.exit
  %.9 = phi i1 [ false, %_ZN4llvm7CCState11AllocateRegEt.exit ], [ false, %bb.ai ], [ false, %bb.v ], [ false, %bb.p ], [ false, %bb.i ], [ true, %_ZN4llvm7CCState11AllocateRegEt.exit.thread156 ], [ true, %bb.f ], [ true, %bb.s ], [ true, %bb.m ], [ true, %bb.af ]
  ret i1 %.9
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm24CC_AArch64_Preserve_NoneEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree noundef readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !487, !range !96, !noundef !58
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.thread171

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63, !nonnull !58, !align !59
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !165, !nonnull !58, !align !59 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 940
  %i.i = load i32, ptr %i.h, align 4, !tbaa !299  ; 3 uses
  %i.j = and i32 %i.i, -9
  %spec.select.i.i.i = icmp eq i32 %i.j, 1
  br i1 %spec.select.i.i.i, label %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %i.i, label %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit [
    i32 26, label %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.thread
    i32 5, label %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.thread
    i32 27, label %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.thread
    i32 29, label %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.thread
    i32 30, label %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.thread
    i32 28, label %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.thread
  ]

_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 936
  %i.l = load i32, ptr %i.k, align 8, !tbaa !300
  %i.m = icmp eq i32 %i.l, 1
  %i.n = icmp eq i32 %i.i, 47
  %i.o = and i1 %i.n, %i.m
  br i1 %i.o, label %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.thread, label %.thread169

_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.thread: ; preds = %bb.b, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit
  %i.p = tail call noundef zeroext i1 @_ZN4llvm20CC_AArch64_DarwinPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr poison, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.p, label %bb.d, label %bb.bo

bb.d:                                             ; preds = %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.thread
  %.pre = load i8, ptr %i.a, align 4, !tbaa !487, !range !96
  %i.q = trunc nuw i8 %.pre to i1
  br i1 %i.q, label %.thread169, label %.thread171

.thread169:                                       ; preds = %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63, !nonnull !58, !align !59
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !165, !nonnull !58, !align !59
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 940
  %i.w = load i32, ptr %i.v, align 4, !tbaa !299
  %i.x = icmp eq i32 %i.w, 15
  br i1 %i.x, label %bb.e, label %.thread172

bb.e:                                             ; preds = %.thread169
  %i.y = tail call noundef zeroext i1 @_ZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr poison, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.y, label %bb.f, label %bb.bo

bb.f:                                             ; preds = %bb.e
  %.pre165 = load i8, ptr %i.a, align 4, !tbaa !487, !range !96
  %i.z = trunc nuw i8 %.pre165 to i1
  br i1 %i.z, label %.thread172, label %.thread171

.thread172:                                       ; preds = %.thread169, %bb.f
  %i.aa = tail call noundef zeroext i1 @_ZN4llvm16CC_AArch64_AAPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr poison, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.aa, label %.thread171, label %bb.bo

.thread171:                                       ; preds = %bb.a, %bb.d, %.thread172, %bb.f
  %.not = icmp eq i16 %2, 7
  br i1 %.not, label %bb.g, label %.thread

bb.g:                                             ; preds = %.thread171
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !8  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !11 ; 9 uses
  %i.af = and i32 %i.ae, 16
  %.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = and i32 %i.ae, 32
  %.not.i.i.1 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = and i32 %i.ae, 64
  %.not.i.i.2 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = and i32 %i.ae, 128
  %.not.i.i.3 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = and i32 %i.ae, 256
  %.not.i.i.4 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = and i32 %i.ae, 512
  %.not.i.i.5 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = and i32 %i.ae, 1024
  %.not.i.i.6 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = and i32 %i.ae, 2048
  %.not.i.i.7 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = and i32 %i.ae, 4096
  %.not.i.i.8 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.8, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !11 ; 14 uses
  %i.aq = and i32 %i.ap, 65536
  %.not.i.i.9 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.9, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = and i32 %i.ap, 131072
  %.not.i.i.10 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.10, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = and i32 %i.ap, 262144
  %.not.i.i.11 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.11, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = and i32 %i.ap, 524288
  %.not.i.i.12 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.12, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = and i32 %i.ap, 1048576
  %.not.i.i.13 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.13, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = and i32 %i.ap, 2097152
  %.not.i.i.14 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.14, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = and i32 %i.ap, 4194304
  %.not.i.i.15 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.15, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = and i32 %i.ap, 8388608
  %.not.i.i.16 = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.16, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ay = and i32 %i.ap, 67108864
  %.not.i.i.17 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.17, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.az = and i32 %i.ap, 134217728
  %.not.i.i.18 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.18, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ba = and i32 %i.ap, 268435456
  %.not.i.i.19 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.19, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bb = and i32 %i.ap, 536870912
  %.not.i.i.20 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.20, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bc = and i32 %i.ap, 1073741824
  %.not.i.i.21 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.21, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = and i32 %i.ap, 33554432
  %.not.i.i.22 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.22, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread140

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %bb.g ], [ 1, %bb.h ], [ 2, %bb.i ], [ 3, %bb.j ], [ 4, %bb.k ], [ 5, %bb.l ], [ 6, %bb.m ], [ 7, %bb.n ], [ 8, %bb.o ], [ 9, %bb.p ], [ 10, %bb.q ], [ 11, %bb.r ], [ 12, %bb.s ], [ 13, %bb.t ], [ 14, %bb.u ], [ 15, %bb.v ], [ 16, %bb.w ], [ 17, %bb.x ], [ 18, %bb.y ], [ 19, %bb.z ], [ 20, %bb.aa ], [ 21, %bb.ab ], [ 22, %bb.ac ]
  %i.be = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm24CC_AArch64_Preserve_NoneEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !97 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.bf) #7
  %i.bg = zext i16 %i.bf to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.bh, align 8, !tbaa !12, !alias.scope !488
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.bi, align 8, !tbaa !17, !alias.scope !488
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 4, !alias.scope !488
  %i.bl = and i8 %i.bk, -128
  %i.bm = trunc i32 %3 to i8
  %i.bn = shl i8 %i.bm, 1
  %i.bo = and i8 %i.bn, 126
  %i.bp = or disjoint i8 %i.bl, %i.bo
  store i8 %i.bp, ptr %i.bj, align 4, !alias.scope !488
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.bq, align 2, !tbaa !28, !alias.scope !488
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 7, ptr %i.br, align 8, !tbaa !28, !alias.scope !488
  store i32 %i.bg, ptr %8, align 8, !tbaa !11, !alias.scope !488
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !29, !nonnull !58, !align !59 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !60 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !61
  %.not.i.i91 = icmp ult i32 %i.bv, %i.bx
  br i1 %.not.i.i91, label %bb.ae, label %bb.ad, !prof !62

bb.ad:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %bb.af

bb.ae:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.by = zext i32 %i.bv to i64
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !8
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.bz, i64 %i.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.cb = load i32, ptr %i.bu, align 8, !tbaa !60
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.bu, align 8, !tbaa !60
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  br label %bb.bo

.thread:                                          ; preds = %.thread171
  %i.cd = icmp ne i16 %2, 8                       ; 2 uses
  br i1 %i.cd, label %.thread140.thread, label %bb.ag

bb.ag:                                            ; preds = %.thread
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !11 ; 9 uses
  %i.ci = and i32 %i.ch, 8
  %.not.i.i93 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i93, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cj = and i32 %i.ch, 16
  %.not.i.i93.1 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i93.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ck = and i32 %i.ch, 32
  %.not.i.i93.2 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i93.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cl = and i32 %i.ch, 64
  %.not.i.i93.3 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i93.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cm = and i32 %i.ch, 128
  %.not.i.i93.4 = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i93.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cn = and i32 %i.ch, 256
  %.not.i.i93.5 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i93.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.co = and i32 %i.ch, 512
  %.not.i.i93.6 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i93.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cp = and i32 %i.ch, 1024
  %.not.i.i93.7 = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i93.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cq = and i32 %i.ch, 2048
  %.not.i.i93.8 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i93.8, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 28
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !11 ; 14 uses
  %i.ct = and i32 %i.cs, 32768
  %.not.i.i93.9 = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i93.9, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cu = and i32 %i.cs, 65536
  %.not.i.i93.10 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i93.10, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cv = and i32 %i.cs, 131072
  %.not.i.i93.11 = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i93.11, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cw = and i32 %i.cs, 262144
  %.not.i.i93.12 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i93.12, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cx = and i32 %i.cs, 524288
  %.not.i.i93.13 = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i93.13, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cy = and i32 %i.cs, 1048576
  %.not.i.i93.14 = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i93.14, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cz = and i32 %i.cs, 2097152
  %.not.i.i93.15 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i93.15, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.da = and i32 %i.cs, 4194304
  %.not.i.i93.16 = icmp eq i32 %i.da, 0
  br i1 %.not.i.i93.16, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.db = and i32 %i.cs, 33554432
  %.not.i.i93.17 = icmp eq i32 %i.db, 0
  br i1 %.not.i.i93.17, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dc = and i32 %i.cs, 67108864
  %.not.i.i93.18 = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i93.18, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dd = and i32 %i.cs, 134217728
  %.not.i.i93.19 = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i93.19, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.de = and i32 %i.cs, 268435456
  %.not.i.i93.20 = icmp eq i32 %i.de, 0
  br i1 %.not.i.i93.20, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.df = and i32 %i.cs, 536870912
  %.not.i.i93.21 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i93.21, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dg = and i32 %i.cs, 16777216
  %.not.i.i93.22 = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i93.22, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96, label %.thread140.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96: ; preds = %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc
  %.0613.i.i92.lcssa.wide = phi i64 [ 0, %bb.ag ], [ 1, %bb.ah ], [ 2, %bb.ai ], [ 3, %bb.aj ], [ 4, %bb.ak ], [ 5, %bb.al ], [ 6, %bb.am ], [ 7, %bb.an ], [ 8, %bb.ao ], [ 9, %bb.ap ], [ 10, %bb.aq ], [ 11, %bb.ar ], [ 12, %bb.as ], [ 13, %bb.at ], [ 14, %bb.au ], [ 15, %bb.av ], [ 16, %bb.aw ], [ 17, %bb.ax ], [ 18, %bb.ay ], [ 19, %bb.az ], [ 20, %bb.ba ], [ 21, %bb.bb ], [ 22, %bb.bc ]
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm24CC_AArch64_Preserve_NoneEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2, i64 %.0613.i.i92.lcssa.wide
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !97 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.di) #7
  %i.dj = zext i16 %i.di to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.dk, align 8, !tbaa !12, !alias.scope !491
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %i.dl, align 8, !tbaa !17, !alias.scope !491
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 4, !alias.scope !491
  %i.do = and i8 %i.dn, -128
  %i.dp = trunc i32 %3 to i8
  %i.dq = shl i8 %i.dp, 1
  %i.dr = and i8 %i.dq, 126
  %i.ds = or disjoint i8 %i.do, %i.dr
  store i8 %i.ds, ptr %i.dm, align 4, !alias.scope !491
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %1, ptr %i.dt, align 2, !tbaa !28, !alias.scope !491
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 8, ptr %i.du, align 8, !tbaa !28, !alias.scope !491
  store i32 %i.dj, ptr %9, align 8, !tbaa !11, !alias.scope !491
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !29, !nonnull !58, !align !59 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !60 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !61
  %.not.i.i97 = icmp ult i32 %i.dy, %i.ea
  br i1 %.not.i.i97, label %bb.be, label %bb.bd, !prof !62

bb.bd:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %bb.bf

bb.be:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit96
  %i.eb = zext i32 %i.dy to i64
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !8
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %i.ec, i64 %i.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ed, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.ee = load i32, ptr %i.dx, align 8, !tbaa !60
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.dx, align 8, !tbaa !60
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  br label %bb.bo

.thread140.thread:                                ; preds = %bb.bc, %.thread
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !63, !nonnull !58, !align !59
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !165, !nonnull !58, !align !59
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 940
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !299
  %i.em = icmp eq i32 %i.el, 15
  %i.en = or i1 %i.cd, %i.em
  br i1 %i.en, label %_ZN4llvm7CCState11AllocateRegEt.exit103.thread154, label %bb.bk

.thread140:                                       ; preds = %bb.ac
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !63, !nonnull !58, !align !59
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !165, !nonnull !58, !align !59
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 940
  %i.et = load i32, ptr %i.es, align 4, !tbaa !299
  %i.eu = icmp eq i32 %i.et, 15
  br i1 %i.eu, label %_ZN4llvm7CCState11AllocateRegEt.exit103.thread154, label %bb.bg

bb.bg:                                            ; preds = %.thread140
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !11
  %.not.i = icmp sgt i32 %i.ey, -1
  br i1 %.not.i, label %bb.bh, label %_ZN4llvm7CCState11AllocateRegEt.exit103.thread154

bb.bh:                                            ; preds = %bb.bg
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 223) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.ez, align 8, !tbaa !12, !alias.scope !494
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.fa, align 8, !tbaa !17, !alias.scope !494
  %i.fb = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 4, !alias.scope !494
  %i.fd = and i8 %i.fc, -128
  %i.fe = trunc i32 %3 to i8
  %i.ff = shl i8 %i.fe, 1
  %i.fg = and i8 %i.ff, 126
  %i.fh = or disjoint i8 %i.fd, %i.fg
  store i8 %i.fh, ptr %i.fb, align 4, !alias.scope !494
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.fi, align 2, !tbaa !28, !alias.scope !494
  %i.fj = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 7, ptr %i.fj, align 8, !tbaa !28, !alias.scope !494
  store i32 223, ptr %10, align 8, !tbaa !11, !alias.scope !494
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !29, !nonnull !58, !align !59 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 3 uses
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !60 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !61
  %.not.i.i99 = icmp ult i32 %i.fn, %i.fp
  br i1 %.not.i.i99, label %bb.bj, label %bb.bi, !prof !62

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

bb.bj:                                            ; preds = %bb.bh
  %i.fq = zext i32 %i.fn to i64
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !8
  %i.fs = getelementptr inbounds nuw [32 x i8], ptr %i.fr, i64 %i.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fs, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.ft = load i32, ptr %i.fm, align 8, !tbaa !60
  %i.fu = add i32 %i.ft, 1
  store i32 %i.fu, ptr %i.fm, align 8, !tbaa !60
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

_ZN4llvm7CCState11AllocateRegEt.exit:             ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  br label %bb.bo

bb.bk:                                            ; preds = %.thread140.thread
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 28
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !11
  %i.fz = and i32 %i.fy, 1073741824
  %.not.i101 = icmp eq i32 %i.fz, 0
  br i1 %.not.i101, label %bb.bl, label %_ZN4llvm7CCState11AllocateRegEt.exit103.thread154

bb.bl:                                            ; preds = %bb.bk
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 254) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  %i.ga = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.ga, align 8, !tbaa !12, !alias.scope !497
  %i.gb = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %0, ptr %i.gb, align 8, !tbaa !17, !alias.scope !497
  %i.gc = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 4, !alias.scope !497
  %i.ge = and i8 %i.gd, -128
  %i.gf = trunc i32 %3 to i8
  %i.gg = shl i8 %i.gf, 1
  %i.gh = and i8 %i.gg, 126
  %i.gi = or disjoint i8 %i.ge, %i.gh
  store i8 %i.gi, ptr %i.gc, align 4, !alias.scope !497
  %i.gj = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i16 %1, ptr %i.gj, align 2, !tbaa !28, !alias.scope !497
  %i.gk = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 8, ptr %i.gk, align 8, !tbaa !28, !alias.scope !497
  store i32 254, ptr %11, align 8, !tbaa !11, !alias.scope !497
  %i.gl = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !29, !nonnull !58, !align !59 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 3 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !60 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !61
  %.not.i.i104 = icmp ult i32 %i.go, %i.gq
  br i1 %.not.i.i104, label %bb.bn, label %bb.bm, !prof !62

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit103

bb.bn:                                            ; preds = %bb.bl
  %i.gr = zext i32 %i.go to i64
  %i.gs = load ptr, ptr %i.gm, align 8, !tbaa !8
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.gs, i64 %i.gr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.gt, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %i.gu = load i32, ptr %i.gn, align 8, !tbaa !60
  %i.gv = add i32 %i.gu, 1
  store i32 %i.gv, ptr %i.gn, align 8, !tbaa !60
  br label %_ZN4llvm7CCState11AllocateRegEt.exit103

_ZN4llvm7CCState11AllocateRegEt.exit103:          ; preds = %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  br label %bb.bo

_ZN4llvm7CCState11AllocateRegEt.exit103.thread154: ; preds = %.thread140, %bb.bg, %.thread140.thread, %bb.bk
  %i.gw = tail call noundef zeroext i1 @_ZN4llvm16CC_AArch64_AAPCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr poison, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit103, %_ZN4llvm7CCState11AllocateRegEt.exit, %bb.bf, %bb.af, %_ZN4llvm7CCState11AllocateRegEt.exit103.thread154, %.thread172, %bb.e, %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.thread
  %.7 = phi i1 [ false, %.thread172 ], [ %i.gw, %_ZN4llvm7CCState11AllocateRegEt.exit103.thread154 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit103 ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit ], [ false, %bb.bf ], [ false, %bb.af ], [ false, %bb.e ], [ false, %_ZNK4llvm16AArch64Subtarget14isTargetDarwinEv.exit.thread ]
  ret i1 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm19CC_AArch64_Win64PCSEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %"class.llvm::MVT", align 2         ; 2 uses
  %9 = alloca %"class.llvm::MVT", align 2         ; 5 uses
  %10 = alloca %"struct.llvm::ISD::ArgFlagsTy", align 8 ; 6 uses
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %12 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %13 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
end_hunk_1
begin_hunk_2_@_ZN4llvm27RetCC_AArch64_Arm64EC_ThunkEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  br i1 %.not.i.i121, label %bb.t, label %bb.s, !prof !62

bb.s:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit120
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br label %bb.u

bb.t:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit120
  %i.dg = zext i32 %i.dd to i64
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !8
  %i.di = getelementptr inbounds nuw [32 x i8], ptr %i.dh, i64 %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %i.dj = load i32, ptr %i.dc, align 8, !tbaa !60
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.dc, align 8, !tbaa !60
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  br label %.thread390

bb.v:                                             ; preds = %bb.a
  %.phi.trans.insert440 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %.pre441 = load ptr, ptr %.phi.trans.insert440, align 8, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %.pre441, i64 16
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !11 ; 2 uses
  %i.dn = and i32 %i.dm, 65536
  %.not.i.i124 = icmp eq i32 %i.dn, 0
  br i1 %.not.i.i124, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit127, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = and i32 %i.dm, 131072
  %.not.i.i124.1 = icmp eq i32 %i.do, 0
  br i1 %.not.i.i124.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit127, label %.thread390

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit127: ; preds = %bb.w, %bb.v
  %.0613.i.i123.lcssa.wide = phi i64 [ 0, %bb.v ], [ 1, %bb.w ]
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm27RetCC_AArch64_Arm64EC_ThunkEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList5, i64 %.0613.i.i123.lcssa.wide
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !97 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.dq) #7
  %i.dr = zext i16 %i.dq to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  %i.ds = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.ds, align 8, !tbaa !12, !alias.scope !620
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %0, ptr %i.dt, align 8, !tbaa !17, !alias.scope !620
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 4, !alias.scope !620
  %i.dw = and i8 %i.dv, -128
  %i.dx = trunc i32 %3 to i8
  %i.dy = shl i8 %i.dx, 1
  %i.dz = and i8 %i.dy, 126
  %i.ea = or disjoint i8 %i.dw, %i.dz
  store i8 %i.ea, ptr %i.du, align 4, !alias.scope !620
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 22
  store i16 %1, ptr %i.eb, align 2, !tbaa !28, !alias.scope !620
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i16 %2, ptr %i.ec, align 8, !tbaa !28, !alias.scope !620
  store i32 %i.dr, ptr %12, align 8, !tbaa !11, !alias.scope !620
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !29, !nonnull !58, !align !59 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 3 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !60 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !61
  %.not.i.i128 = icmp ult i32 %i.eg, %i.ei
  br i1 %.not.i.i128, label %bb.y, label %bb.x, !prof !62

bb.x:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit127
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(26) %12)
  br label %bb.z

bb.y:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit127
  %i.ej = zext i32 %i.eg to i64
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !8
  %i.el = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.el, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  %i.em = load i32, ptr %i.ef, align 8, !tbaa !60
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.ef, align 8, !tbaa !60
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  br label %.thread390

.thread289:                                       ; preds = %bb.a
  %i.eo = and i64 %4, 32768
  %i.ep = icmp ne i64 %i.eo, 0
  %i.eq = icmp eq i16 %2, 8
  %or.cond = and i1 %i.eq, %i.ep
  br i1 %or.cond, label %.thread297, label %.thread289.thread

.thread291:                                       ; preds = %bb.a
  %i.er = and i64 %4, 32768
  %.not = icmp eq i64 %i.er, 0
  br i1 %.not, label %.thread342, label %.thread297

.thread297:                                       ; preds = %.thread289, %.thread291
  %.082245254264274284295301 = phi i32 [ %3, %.thread289 ], [ 7, %.thread291 ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !11
  %i.ew = and i32 %i.ev, 4
  %.not.i = icmp eq i32 %i.ew, 0
  br i1 %.not.i, label %bb.aa, label %.thread342

bb.aa:                                            ; preds = %.thread297
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 258) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #7
  %i.ex = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 0, ptr %i.ex, align 8, !tbaa !12, !alias.scope !623
  %i.ey = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %0, ptr %i.ey, align 8, !tbaa !17, !alias.scope !623
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 4, !alias.scope !623
  %i.fb = and i8 %i.fa, -128
  %i.fc = trunc i32 %.082245254264274284295301 to i8
  %i.fd = shl i8 %i.fc, 1
  %i.fe = and i8 %i.fd, 126
  %i.ff = or disjoint i8 %i.fb, %i.fe
  store i8 %i.ff, ptr %i.ez, align 4, !alias.scope !623
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 22
  store i16 %1, ptr %i.fg, align 2, !tbaa !28, !alias.scope !623
  %i.fh = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i16 8, ptr %i.fh, align 8, !tbaa !28, !alias.scope !623
  store i32 258, ptr %13, align 8, !tbaa !11, !alias.scope !623
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !29, !nonnull !58, !align !59 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 3 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !60 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !61
  %.not.i.i130 = icmp ult i32 %i.fl, %i.fn
  br i1 %.not.i.i130, label %bb.ac, label %bb.ab, !prof !62

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef nonnull align 8 dereferenceable(26) %13)
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

bb.ac:                                            ; preds = %bb.aa
  %i.fo = zext i32 %i.fl to i64
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !8
  %i.fq = getelementptr inbounds nuw [32 x i8], ptr %i.fp, i64 %i.fo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fq, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false)
  %i.fr = load i32, ptr %i.fk, align 8, !tbaa !60
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr %i.fk, align 8, !tbaa !60
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

_ZN4llvm7CCState11AllocateRegEt.exit:             ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  br label %.thread390

.thread289.thread:                                ; preds = %.thread289
  switch i16 %2, label %.thread390 [
    i16 2, label %.critedge
    i16 5, label %.critedge
    i16 6, label %.critedge
    i16 7, label %.thread324
    i16 8, label %.thread342
    i16 48, label %.critedge2
    i16 62, label %.critedge2
    i16 73, label %.critedge2
    i16 94, label %.critedge2
    i16 112, label %.critedge2
    i16 136, label %.critedge2
    i16 154, label %.critedge2
  ]

.critedge:                                        ; preds = %.thread289.thread, %.thread289.thread, %.thread289.thread
  %i.ft = and i64 %4, 2
  %.not404 = icmp eq i64 %i.ft, 0
  br i1 %.not404, label %bb.ad, label %.thread324

bb.ad:                                            ; preds = %.critedge
  %i.fu = trunc i64 %4 to i1
  %. = select i1 %i.fu, i32 2, i32 3
  br label %.thread324

.thread324:                                       ; preds = %.thread289.thread, %bb.ad, %.critedge
  %.183330 = phi i32 [ %3, %.thread289.thread ], [ 1, %.critedge ], [ %., %bb.ad ]
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !11 ; 3 uses
  %i.fz = and i32 %i.fy, 16777216
  %.not.i.i133 = icmp eq i32 %i.fz, 0
  br i1 %.not.i.i133, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit136, label %bb.ae

bb.ae:                                            ; preds = %.thread324
  %i.ga = and i32 %i.fy, 131072
  %.not.i.i133.1 = icmp eq i32 %i.ga, 0
  br i1 %.not.i.i133.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit136, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gb = and i32 %i.fy, 65536
  %.not.i.i133.2 = icmp eq i32 %i.gb, 0
  br i1 %.not.i.i133.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit136, label %.thread390

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit136: ; preds = %.thread324, %bb.ae, %bb.af
  %.0613.i.i132.lcssa.wide = phi i64 [ 0, %.thread324 ], [ 1, %bb.ae ], [ 2, %bb.af ]
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm27RetCC_AArch64_Arm64EC_ThunkEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList6, i64 %.0613.i.i132.lcssa.wide
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !97 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.gd) #7
  %i.ge = zext i16 %i.gd to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #7
  %i.gf = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 0, ptr %i.gf, align 8, !tbaa !12, !alias.scope !626
  %i.gg = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %0, ptr %i.gg, align 8, !tbaa !17, !alias.scope !626
  %i.gh = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 4, !alias.scope !626
  %i.gj = and i8 %i.gi, -128
  %i.gk = trunc i32 %.183330 to i8
  %i.gl = shl i8 %i.gk, 1
  %i.gm = and i8 %i.gl, 126
  %i.gn = or disjoint i8 %i.gj, %i.gm
  store i8 %i.gn, ptr %i.gh, align 4, !alias.scope !626
  %i.go = getelementptr inbounds nuw i8, ptr %14, i64 22
  store i16 %1, ptr %i.go, align 2, !tbaa !28, !alias.scope !626
  %i.gp = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i16 7, ptr %i.gp, align 8, !tbaa !28, !alias.scope !626
  store i32 %i.ge, ptr %14, align 8, !tbaa !11, !alias.scope !626
  %i.gq = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !29, !nonnull !58, !align !59 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 3 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !60 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !61
  %.not.i.i137 = icmp ult i32 %i.gt, %i.gv
  br i1 %.not.i.i137, label %bb.ah, label %bb.ag, !prof !62

bb.ag:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit136
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 8 dereferenceable(26) %14)
  br label %bb.ai

bb.ah:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit136
  %i.gw = zext i32 %i.gt to i64
  %i.gx = load ptr, ptr %i.gr, align 8, !tbaa !8
  %i.gy = getelementptr inbounds nuw [32 x i8], ptr %i.gx, i64 %i.gw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.gy, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false)
  %i.gz = load i32, ptr %i.gs, align 8, !tbaa !60
  %i.ha = add i32 %i.gz, 1
  store i32 %i.ha, ptr %i.gs, align 8, !tbaa !60
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  br label %.thread390

.thread342:                                       ; preds = %.thread289.thread, %.thread297, %.thread291
  %.183331345 = phi i32 [ %3, %.thread289.thread ], [ 7, %.thread291 ], [ %.082245254264274284295301, %.thread297 ]
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 28
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !11 ; 3 uses
  %i.hf = and i32 %i.he, 8388608
  %.not.i.i140 = icmp eq i32 %i.hf, 0
  br i1 %.not.i.i140, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit143, label %bb.aj

bb.aj:                                            ; preds = %.thread342
  %i.hg = and i32 %i.he, 65536
  %.not.i.i140.1 = icmp eq i32 %i.hg, 0
  br i1 %.not.i.i140.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit143, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hh = and i32 %i.he, 32768
  %.not.i.i140.2 = icmp eq i32 %i.hh, 0
  br i1 %.not.i.i140.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit143, label %.thread390

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit143: ; preds = %.thread342, %bb.aj, %bb.ak
  %.0613.i.i139.lcssa.wide = phi i64 [ 0, %.thread342 ], [ 1, %bb.aj ], [ 2, %bb.ak ]
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm27RetCC_AArch64_Arm64EC_ThunkEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList7, i64 %.0613.i.i139.lcssa.wide
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !97 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.hj) #7
  %i.hk = zext i16 %i.hj to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #7
  %i.hl = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i8 0, ptr %i.hl, align 8, !tbaa !12, !alias.scope !629
  %i.hm = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %0, ptr %i.hm, align 8, !tbaa !17, !alias.scope !629
  %i.hn = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 4, !alias.scope !629
  %i.hp = and i8 %i.ho, -128
  %i.hq = trunc i32 %.183331345 to i8
  %i.hr = shl i8 %i.hq, 1
  %i.hs = and i8 %i.hr, 126
  %i.ht = or disjoint i8 %i.hp, %i.hs
  store i8 %i.ht, ptr %i.hn, align 4, !alias.scope !629
  %i.hu = getelementptr inbounds nuw i8, ptr %15, i64 22
  store i16 %1, ptr %i.hu, align 2, !tbaa !28, !alias.scope !629
  %i.hv = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i16 8, ptr %i.hv, align 8, !tbaa !28, !alias.scope !629
  store i32 %i.hk, ptr %15, align 8, !tbaa !11, !alias.scope !629
  %i.hw = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !29, !nonnull !58, !align !59 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 3 uses
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !60 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !61
  %.not.i.i144 = icmp ult i32 %i.hz, %i.ib
  br i1 %.not.i.i144, label %bb.am, label %bb.al, !prof !62

bb.al:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit143
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, ptr noundef nonnull align 8 dereferenceable(26) %15)
  br label %bb.an

bb.am:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit143
  %i.ic = zext i32 %i.hz to i64
  %i.id = load ptr, ptr %i.hx, align 8, !tbaa !8
  %i.ie = getelementptr inbounds nuw [32 x i8], ptr %i.id, i64 %i.ic
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ie, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false)
  %i.if = load i32, ptr %i.hy, align 8, !tbaa !60
  %i.ig = add i32 %i.if, 1
  store i32 %i.ig, ptr %i.hy, align 8, !tbaa !60
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7
  br label %.thread390

.critedge2:                                       ; preds = %.thread289.thread, %.thread289.thread, %.thread289.thread, %.thread289.thread, %.thread289.thread, %.thread289.thread, %.thread289.thread
  %i.ih = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !11 ; 4 uses
  %i.il = and i32 %i.ik, 65536
  %.not.i.i147 = icmp eq i32 %i.il, 0
  br i1 %.not.i.i147, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit150, label %bb.ao

bb.ao:                                            ; preds = %.critedge2
  %i.im = and i32 %i.ik, 131072
  %.not.i.i147.1 = icmp eq i32 %i.im, 0
  br i1 %.not.i.i147.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit150, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.in = and i32 %i.ik, 262144
  %.not.i.i147.2 = icmp eq i32 %i.in, 0
  br i1 %.not.i.i147.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit150, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.io = and i32 %i.ik, 524288
  %.not.i.i147.3 = icmp eq i32 %i.io, 0
  br i1 %.not.i.i147.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit150, label %.thread390

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit150: ; preds = %bb.aq, %bb.ap, %bb.ao, %.critedge2
  %.0613.i.i146.lcssa.wide = phi i64 [ 0, %.critedge2 ], [ 1, %bb.ao ], [ 2, %bb.ap ], [ 3, %bb.aq ]
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm27RetCC_AArch64_Arm64EC_ThunkEjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList8, i64 %.0613.i.i146.lcssa.wide
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !97 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.iq) #7
  %i.ir = zext i16 %i.iq to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #7
  %i.is = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i8 0, ptr %i.is, align 8, !tbaa !12, !alias.scope !632
  %i.it = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %0, ptr %i.it, align 8, !tbaa !17, !alias.scope !632
  %i.iu = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 2 uses
  %i.iv = load i8, ptr %i.iu, align 4, !alias.scope !632
  %i.iw = and i8 %i.iv, -128
  %i.ix = trunc i32 %3 to i8
  %i.iy = shl i8 %i.ix, 1
  %i.iz = and i8 %i.iy, 126
  %i.ja = or disjoint i8 %i.iw, %i.iz
  store i8 %i.ja, ptr %i.iu, align 4, !alias.scope !632
  %i.jb = getelementptr inbounds nuw i8, ptr %16, i64 22
  store i16 %1, ptr %i.jb, align 2, !tbaa !28, !alias.scope !632
  %i.jc = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i16 %2, ptr %i.jc, align 8, !tbaa !28, !alias.scope !632
  store i32 %i.ir, ptr %16, align 8, !tbaa !11, !alias.scope !632
  %i.jd = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !29, !nonnull !58, !align !59 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 3 uses
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !60 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 12
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !61
  %.not.i.i151 = icmp ult i32 %i.jg, %i.ji
  br i1 %.not.i.i151, label %bb.as, label %bb.ar, !prof !62

bb.ar:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit150
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.je, ptr noundef nonnull align 8 dereferenceable(26) %16)
  br label %bb.at

bb.as:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit150
  %i.jj = zext i32 %i.jg to i64
  %i.jk = load ptr, ptr %i.je, align 8, !tbaa !8
  %i.jl = getelementptr inbounds nuw [32 x i8], ptr %i.jk, i64 %i.jj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jl, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false)
  %i.jm = load i32, ptr %i.jf, align 8, !tbaa !60
  %i.jn = add i32 %i.jm, 1
  store i32 %i.jn, ptr %i.jf, align 8, !tbaa !60
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #7
  br label %.thread390

.thread390:                                       ; preds = %.thread289.thread, %bb.w, %bb.r, %bb.m, %bb.h, %bb.c, %bb.ak, %bb.aq, %bb.af, %bb.at, %bb.an, %bb.ai, %_ZN4llvm7CCState11AllocateRegEt.exit, %bb.z, %bb.u, %bb.p, %bb.k, %bb.f
  %.17 = phi i1 [ false, %bb.f ], [ false, %bb.at ], [ false, %bb.an ], [ false, %bb.ai ], [ false, %_ZN4llvm7CCState11AllocateRegEt.exit ], [ false, %bb.z ], [ false, %bb.u ], [ false, %bb.p ], [ false, %bb.k ], [ true, %bb.aq ], [ true, %.thread289.thread ], [ true, %bb.af ], [ true, %bb.ak ], [ true, %bb.c ], [ true, %bb.h ], [ true, %bb.m ], [ true, %bb.r ], [ true, %bb.w ]
  ret i1 %.17
}

declare void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420), i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(26) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::CCValAssign", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 32) #7
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = load i32, ptr %i.a, align 8, !tbaa !60
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !60
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL16finishStackBlockRN4llvm15SmallVectorImplINS_11CCValAssignEEENS_3MVTERNS_3ISD10ArgFlagsTyERNS_7CCStateENS_5AlignE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i16 %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(420) %3, i8 %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %i.a = add i16 %1, -163
  %spec.select.i = icmp ult i16 %i.a, 53
  br i1 %spec.select.i, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63, !nonnull !58, !align !59
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !165, !nonnull !58, !align !59
  %i.f = load i64, ptr %2, align 4
  %i.g = and i64 %i.f, -6442450945
  store i64 %i.g, ptr %2, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 12 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i32, ptr %i.j, align 4, !tbaa !11   ; 2 uses
  %i.l = and i32 %i.k, 4096                       ; 2 uses
  %.not131 = icmp eq i32 %i.l, 0
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.c, label %_ZN4llvm7CCState11AllocateRegEt.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %3, i16 noundef zeroext 268) #7
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !8   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre98 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !11
  br label %_ZN4llvm7CCState11AllocateRegEt.exit

_ZN4llvm7CCState11AllocateRegEt.exit:             ; preds = %bb.b, %bb.c
  %i.m = phi i32 [ %i.k, %bb.b ], [ %.pre98, %bb.c ] ; 2 uses
  %i.n = phi ptr [ %i.i, %bb.b ], [ %.pre, %bb.c ]
  %i.o = and i32 %i.m, 8192                       ; 2 uses
  %.not132 = icmp eq i32 %i.o, 0
  %.not.i.1 = icmp eq i32 %i.o, 0
  br i1 %.not.i.1, label %bb.d, label %_ZN4llvm7CCState11AllocateRegEt.exit.1

bb.d:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %3, i16 noundef zeroext 269) #7
end_hunk_2
