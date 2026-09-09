Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TargetLowering?download=true
inline.NumInlined: 10476
inline.NumDeleted: 2372
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4llvm11SmallVectorINS_7SDValueELj32EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE:bb.a
  %.011.i.i.i.i.i.unr = phi ptr [ %i.g, %.lr.ph.i.i.i.i.preheader.i ], [ %i.l, %.lr.ph.i.i.i.i.i.prol ]
  %.0810.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.preheader.i ], [ %i.k, %.lr.ph.i.i.i.i.i.prol ]
  %i.m = icmp ult i64 %i.h, 120
  br i1 %i.m, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %.011.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %.0810.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0810.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !372
  %i.n = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 16, i1 false), !tbaa.struct !372
  %i.p = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 16, i1 false), !tbaa.struct !372
  %i.r = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 120
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 16, i1 false), !tbaa.struct !372
  %i.t = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 160 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i.3 = icmp eq ptr %i.t, %i.d
  br i1 %.not.i.i.i.i.i.3, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !790

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.pre8.i = load i32, ptr %i.b, align 8, !tbaa !255
  br label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPKNS_5SDUseEvEEvT_S7_.exit

_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPKNS_5SDUseEvEEvT_S7_.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i
  %i.v = phi i32 [ %.pre8.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE18uninitialized_copyIPKNS_5SDUseEPS1_EEvT_S8_T0_.exit.loopexit.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i ]
  %i.w = trunc i64 %2 to i32
  %i.x = add i32 %i.v, %i.w
  store i32 %i.x, ptr %i.b, align 8, !tbaa !255
  ret void
}

declare noundef zeroext i1 @_ZN4llvm16isNullFPConstantENS_7SDValueE(ptr, i32) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !255  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !344
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !460

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i32 %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !256
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.e ; 2 uses
  store ptr %1, ptr %i.g, align 1
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %2, ptr %.sroa.32.0..sroa_idx, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !255
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !255
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::ArrayRef.315") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm5APInt9setBitValEjb(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i32 %1, 63
  %i.b = zext nneg i32 %i.a to i64
  %i.c = shl nuw i64 1, %i.b                      ; 3 uses
  br i1 %2, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !384
  %i.f = icmp ult i32 %i.e, 65
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %0, align 8, !tbaa !361
  %i.h = or i64 %i.g, %i.c
  store i64 %i.h, ptr %0, align 8, !tbaa !361
  br label %_ZN4llvm5APInt6setBitEj.exit

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !361
  %i.j = lshr i32 %1, 6
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !302
  %i.n = or i64 %i.m, %i.c
  store i64 %i.n, ptr %i.l, align 8, !tbaa !302
  br label %_ZN4llvm5APInt6setBitEj.exit

bb.e:                                             ; preds = %bb.a
  %i.o = xor i64 %i.c, -1                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !384
  %i.r = icmp ult i32 %i.q, 65
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %0, align 8, !tbaa !361
  %i.t = and i64 %i.s, %i.o
  store i64 %i.t, ptr %0, align 8, !tbaa !361
  br label %_ZN4llvm5APInt6setBitEj.exit

bb.g:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8, !tbaa !361
  %i.v = lshr i32 %1, 6
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !302
  %i.z = and i64 %i.y, %i.o
  store i64 %i.z, ptr %i.x, align 8, !tbaa !302
  br label %_ZN4llvm5APInt6setBitEj.exit

_ZN4llvm5APInt6setBitEj.exit:                     ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvmanERKNS_5APIntEOS0_(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !384  ; 2 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !361
  %i.e = load i64, ptr %2, align 8, !tbaa !361
  %i.f = and i64 %i.e, %i.d                       ; 2 uses
  store i64 %i.f, ptr %2, align 8, !tbaa !361
  br label %_ZN4llvm5APIntaNERKS0_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvm5APInt17andAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %1) #28
  %.pre = load i32, ptr %i.a, align 8, !tbaa !384
  %.pre3 = load i64, ptr %2, align 8
  br label %_ZN4llvm5APIntaNERKS0_.exit

_ZN4llvm5APIntaNERKS0_.exit:                      ; preds = %bb.b, %bb.c
  %i.g = phi i64 [ %i.f, %bb.b ], [ %.pre3, %bb.c ]
  %i.h = phi i32 [ %i.b, %bb.b ], [ %.pre, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.i, align 8, !tbaa !384
  store i64 %i.g, ptr %0, align 8
  store i32 0, ptr %i.a, align 8, !tbaa !384
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11SmallVectorIiLj32EEC2IivEENS_8ArrayRefIT_EE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr %1, i64 %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !255
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 32, ptr %i.c, align 4, !tbaa !344
  %.idx = shl nuw nsw i64 %2, 2
  %i.d = icmp ugt i64 %2, 32
  br i1 %i.d, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread: ; preds = %bb.a
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i64 noundef %2, i64 noundef 4) #28
  %.pre8.pre.i = load i32, ptr %i.b, align 8, !tbaa !255
  %i.e = zext i32 %.pre8.pre.i to i64
  br label %bb.b

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i:    ; preds = %bb.a
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN4llvm15SmallVectorImplIiE6appendIPKivEEvT_S5_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i
  %.pre8.i5 = phi i64 [ %i.e, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread ], [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i ]
  %i.f = load ptr, ptr %0, align 8, !tbaa !256
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pre8.i5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 4 %1, i64 %.idx, i1 false)
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !255
  br label %_ZN4llvm15SmallVectorImplIiE6appendIPKivEEvT_S5_.exit

_ZN4llvm15SmallVectorImplIiE6appendIPKivEEvT_S5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i, %bb.b
  %i.h = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i ], [ %.pre.i, %bb.b ]
  %i.i = trunc i64 %2 to i32
  %i.j = add i32 %i.h, %i.i
  store i32 %i.j, ptr %i.b, align 8, !tbaa !255
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm14TargetLowering23buildLegalVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_15MutableArrayRefIiEERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435) %0, i16 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %4, i32 %5, ptr nofree noundef byval(%"class.llvm::SDValue") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.llvm::MutableArrayRef") align 8 captures(none) %7, ptr noundef nonnull align 8 dereferenceable(920) %8) local_unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %"class.llvm::ArrayRef.476", align 8 ; 3 uses
  %i.a = load ptr, ptr %7, align 8, !tbaa !457    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !458  ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 600
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %i.a, i64 %i.c, i16 %1, ptr %2) #28
  br i1 %i.g, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.022.0.copyload23 = load ptr, ptr %6, align 8, !tbaa !258
  %.sroa.4.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.4.0.copyload25 = load i32, ptr %.sroa.4.0..sroa_idx24, align 8, !tbaa !257
  store ptr %4, ptr %6, align 8, !tbaa !258
  store i32 %5, ptr %.sroa.4.0..sroa_idx24, align 8, !tbaa !257
  %i.h = trunc i64 %i.c to i32                    ; 5 uses
  %.not17.i = icmp eq i32 %i.h, 0
  br i1 %.not17.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.i = and i64 %i.c, 4294967295                 ; 3 uses
  %i.j = sub i32 0, %i.h                          ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.c, 4294967288               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert36 = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat37 = shufflevector <4 x i32> %broadcast.splatinsert36, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue52, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue52 ] ; 9 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !tbaa !257 ; 3 uses
  %wide.load38 = load <4 x i32>, ptr %10, align 4, !tbaa !257 ; 3 uses
  %11 = icmp sgt <4 x i32> %wide.load, splat (i32 -1) ; 4 uses
  %i.l = icmp sgt <4 x i32> %wide.load38, splat (i32 -1) ; 4 uses
  %12 = icmp slt <4 x i32> %wide.load, %broadcast.splat37
  %i.m = icmp slt <4 x i32> %wide.load38, %broadcast.splat37
  %13 = select <4 x i1> %12, <4 x i32> %broadcast.splat37, <4 x i32> %broadcast.splat
  %i.n = select <4 x i1> %i.m, <4 x i32> %broadcast.splat37, <4 x i32> %broadcast.splat
  %14 = add <4 x i32> %13, %wide.load             ; 4 uses
  %i.o = add <4 x i32> %i.n, %wide.load38         ; 4 uses
  %i.p = extractelement <4 x i1> %11, i64 0
  br i1 %i.p, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %15 = extractelement <4 x i32> %14, i64 0
  store i32 %15, ptr %i.k, align 4, !tbaa !257
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %16 = extractelement <4 x i1> %11, i64 1
  br i1 %16, label %pred.store.if39, label %pred.store.continue40

pred.store.if39:                                  ; preds = %pred.store.continue
  %17 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %19 = extractelement <4 x i32> %14, i64 1
  store i32 %19, ptr %18, align 4, !tbaa !257
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue
  %20 = extractelement <4 x i1> %11, i64 2
  br i1 %20, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %pred.store.continue40
  %21 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = extractelement <4 x i32> %14, i64 2
  store i32 %23, ptr %22, align 4, !tbaa !257
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue40
  %24 = extractelement <4 x i1> %11, i64 3
  br i1 %24, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue42
  %25 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 12
  %27 = extractelement <4 x i32> %14, i64 3
  store i32 %27, ptr %26, align 4, !tbaa !257
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %28 = extractelement <4 x i1> %i.l, i64 0
  br i1 %28, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue44
  %29 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.q = extractelement <4 x i32> %i.o, i64 0
  store i32 %i.q, ptr %30, align 4, !tbaa !257
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %i.r = extractelement <4 x i1> %i.l, i64 1
  br i1 %i.r, label %pred.store.if47, label %pred.store.continue48

pred.store.if47:                                  ; preds = %pred.store.continue46
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.u = extractelement <4 x i32> %i.o, i64 1
  store i32 %i.u, ptr %i.t, align 4, !tbaa !257
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %i.v = extractelement <4 x i1> %i.l, i64 2
  br i1 %i.v, label %pred.store.if49, label %pred.store.continue50

pred.store.if49:                                  ; preds = %pred.store.continue48
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = extractelement <4 x i32> %i.o, i64 2
  store i32 %i.y, ptr %i.x, align 4, !tbaa !257
  br label %pred.store.continue50

pred.store.continue50:                            ; preds = %pred.store.if49, %pred.store.continue48
  %i.z = extractelement <4 x i1> %i.l, i64 3
  br i1 %i.z, label %pred.store.if51, label %pred.store.continue52

pred.store.if51:                                  ; preds = %pred.store.continue50
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.ac = extractelement <4 x i32> %i.o, i64 3
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !257
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.if51, %pred.store.continue50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !791

middle.block:                                     ; preds = %pred.store.continue52
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !257 ; 3 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.c, label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i
  %i.ah = icmp slt i32 %i.af, %i.h
  %.sink.p.i = select i1 %i.ah, i32 %i.h, i32 %i.j
  %.sink.i = add i32 %.sink.p.i, %i.af
  store i32 %.sink.i, ptr %i.ae, align 4, !tbaa !257
  br label %bb.c

bb.c:                                             ; preds = %.sink.split.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !792

.loopexit:                                        ; preds = %bb.c, %middle.block, %bb.b
  %i.ai = load ptr, ptr %0, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 600
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %i.a, i64 %i.c, i16 %1, ptr %2) #28
  br i1 %i.al, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.a, %.loopexit
  %.sroa.4.034 = phi i32 [ %.sroa.4.0.copyload25, %.loopexit ], [ %5, %bb.a ]
  %.sroa.022.033 = phi ptr [ %.sroa.022.0.copyload23, %.loopexit ], [ %4, %bb.a ]
  store ptr %i.a, ptr %9, align 8, !tbaa !457
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.c, ptr %i.am, align 8, !tbaa !458
  %i.an = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %8, i16 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %.sroa.022.033, i32 %.sroa.4.034, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.476") align 8 %9) #28 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.an, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.an, 1
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %.thread
  %.sroa.427.0 = phi i32 [ %.fca.1.extract, %.thread ], [ 0, %.loopexit ]
  %.sroa.026.0 = phi ptr [ %.fca.0.extract, %.thread ], [ null, %.loopexit ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.026.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.427.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare noundef zeroext i1 @_ZNK4llvm6SDNode12isOnlyUserOfEPKS0_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i16, ptr } @_ZNK4llvm3EVT13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !366    ; 4 uses
  %.not.i = icmp eq i16 %i.a, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.b = add i16 %i.a, -19
  %spec.select.i.i = icmp ult i16 %i.b, 197
  br i1 %spec.select.i.i, label %bb.b, label %bb.d

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #32
  br i1 %i.c, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.split
  %i.d = zext nneg i16 %i.a to i64
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !351
  %i.h = insertvalue { i16, ptr } poison, i16 %i.g, 0
  %i.i = insertvalue { i16, ptr } %i.h, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  %i.j = tail call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #28
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.d:                                             ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  %.sroa.31.0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.31.0.copyload = load ptr, ptr %.sroa.31.0..0..sroa_idx, align 8, !tbaa !348
  %i.k = insertvalue { i16, ptr } poison, i16 %i.a, 0
  %i.l = insertvalue { i16, ptr } %i.k, ptr %.sroa.31.0.copyload, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.c, %bb.b, %bb.d
  %.fca.1.insert.merged = phi { i16, ptr } [ %i.l, %bb.d ], [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  ret { i16, ptr } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i16, ptr } @_ZNK4llvm18TargetLoweringBase25getLegalTypeToTransformToERNS_11LLVMContextENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { i16, ptr } %i.c(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 %2, ptr %3) #28 ; 3 uses
  %.sroa.0.016 = extractvalue { i16, ptr } %i.d, 0 ; 2 uses
  %storemerge17 = extractvalue { i16, ptr } %i.d, 1 ; 2 uses
  %.not.i18 = icmp ne i16 %.sroa.0.016, %2
  %i.e = icmp ne ptr %storemerge17, %3
  %i.f = select i1 %.not.i18, i1 true, i1 %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %storemerge20 = phi ptr [ %storemerge, %.lr.ph ], [ %storemerge17, %bb.a ] ; 2 uses
  %.sroa.0.019 = phi i16 [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.016, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 568
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call { i16, ptr } %i.i(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 %.sroa.0.019, ptr %storemerge20) #28 ; 3 uses
  %.sroa.0.0 = extractvalue { i16, ptr } %i.j, 0  ; 2 uses
  %storemerge = extractvalue { i16, ptr } %i.j, 1 ; 2 uses
  %.not.i = icmp ne i16 %.sroa.0.0, %.sroa.0.019
  %i.k = icmp ne ptr %storemerge, %storemerge20
  %i.l = select i1 %.not.i, i1 true, i1 %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.pn.lcssa = phi { i16, ptr } [ %i.d, %bb.a ], [ %i.j, %.lr.ph ]
  ret { i16, ptr } %.pn.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendEmS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr %2, i32 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !255  ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = add i64 %1, %i.c                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !344
  %i.g = zext i32 %i.f to i64
  %.not.i.i = icmp ugt i64 %i.d, %i.g
  br i1 %.not.i.i, label %bb.b, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit, !prof !390

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.h, i64 noundef %i.d, i64 noundef 16) #28
  %.pre = load i32, ptr %i.a, align 8, !tbaa !255 ; 2 uses
  %.pre5 = zext i32 %.pre to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit: ; preds = %bb.a, %bb.b
  %.pre-phi = phi i64 [ %i.c, %bb.a ], [ %.pre5, %bb.b ]
  %i.i = phi i32 [ %i.b, %bb.a ], [ %.pre, %bb.b ]
  %.not7.i.i.i = icmp eq i64 %1, 0
  br i1 %.not7.i.i.i, label %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !256
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.pre-phi ; 2 uses
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.prol ], [ %i.k, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.068.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store ptr %2, ptr %.09.i.i.i.prol, align 8, !tbaa !258
  %.sroa.2.0..09.i.i.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.prol, i64 8
  store i32 %3, ptr %.sroa.2.0..09.i.i.i.sroa_idx.prol, align 8, !tbaa !257
  %i.l = add i64 %.068.i.i.i.prol, -1             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !795

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi ptr [ %i.k, %.lr.ph.i.i.i.preheader ], [ %i.m, %.lr.ph.i.i.i.prol ]
  %.068.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.prol ]
  %i.n = icmp ult i64 %1, 8
  br i1 %i.n, label %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ %.068.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store ptr %2, ptr %.09.i.i.i, align 8, !tbaa !258
  %.sroa.2.0..09.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  store i32 %3, ptr %.sroa.2.0..09.i.i.i.sroa_idx, align 8, !tbaa !257
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16
  store ptr %2, ptr %i.o, align 8, !tbaa !258
  %.sroa.2.0..09.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 24
  store i32 %3, ptr %.sroa.2.0..09.i.i.i.sroa_idx.1, align 8, !tbaa !257
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 32
  store ptr %2, ptr %i.p, align 8, !tbaa !258
  %.sroa.2.0..09.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 40
  store i32 %3, ptr %.sroa.2.0..09.i.i.i.sroa_idx.2, align 8, !tbaa !257
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 48
  store ptr %2, ptr %i.q, align 8, !tbaa !258
end_hunk_0
