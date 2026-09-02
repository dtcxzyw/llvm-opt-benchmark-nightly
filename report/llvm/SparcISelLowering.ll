Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SparcISelLowering?download=true
inline.NumInlined: 4614
inline.NumDeleted: 1398
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZNK4llvm19SparcTargetLowering14CanLowerReturnEjRNS_15MachineFunctionEbRKNS_15SmallVectorImplINS_3ISD9OutputArgEEERNS_11LLVMContextEPKNS_4TypeE:bb.a
  %8 = alloca %"class.llvm::CCState", align 8     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 16, ptr %i.c, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @_ZN4llvm7CCStateC1EjbRNS_15MachineFunctionERNS_15SmallVectorImplINS_11CCValAssignEEERNS_11LLVMContextEb(ptr noundef nonnull align 8 dereferenceable(420) %8, i32 noundef %1, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(1065) %2, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext false) #21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 433
  %i.g = load i8, ptr %i.f, align 1, !tbaa !46, !range !128, !noundef !129
  %i.h = trunc nuw i8 %i.g to i1
  %_ZL13RetCC_Sparc64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE._ZL13RetCC_Sparc32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE = select i1 %i.h, ptr @_ZL13RetCC_Sparc64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE, ptr @_ZL13RetCC_Sparc32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE
  %i.i = call noundef zeroext i1 @_ZN4llvm7CCState11CheckReturnERKNS_15SmallVectorImplINS_3ISD9OutputArgEEEPFbjNS_3MVTES7_NS_11CCValAssign7LocInfoENS2_10ArgFlagsTyEPNS_4TypeERS0_E(ptr noundef nonnull align 8 dereferenceable(420) %8, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %_ZL13RetCC_Sparc64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE._ZL13RetCC_Sparc32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE) #21
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 368
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 384
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.k) #21
  br label %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 288
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 304
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.o) #21
  br label %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i: ; preds = %bb.c, %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.s) #21
  br label %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i: ; preds = %bb.d, %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZN4llvm7CCStateD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.w) #21
  br label %_ZN4llvm7CCStateD2Ev.exit

_ZN4llvm7CCStateD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.z = load ptr, ptr %7, align 8, !tbaa !8      ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm7CCStateD2Ev.exit
  call void @free(ptr noundef %i.z) #21
  br label %_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit

_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit: ; preds = %_ZN4llvm7CCStateD2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret i1 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4llvm7CCStateC1EjbRNS_15MachineFunctionERNS_15SmallVectorImplINS_11CCValAssignEEERNS_11LLVMContextEb(ptr noundef nonnull align 8 dereferenceable(420), i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) unnamed_addr #2

declare noundef zeroext i1 @_ZN4llvm7CCState11CheckReturnERKNS_15SmallVectorImplINS_3ISD9OutputArgEEEPFbjNS_3MVTES7_NS_11CCValAssign7LocInfoENS2_10ArgFlagsTyEPNS_4TypeERS0_E(ptr noundef nonnull align 8 dereferenceable(420), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL13RetCC_Sparc64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) #0 {
bb.a:
  %8 = alloca %"class.llvm::MVT", align 2         ; 4 uses
  %9 = alloca %"class.llvm::MVT", align 2         ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  store i16 %1, ptr %8, align 2
  store i16 %2, ptr %9, align 2
  store i32 %0, ptr %i.a, align 4, !tbaa !130
  store i32 %3, ptr %i.b, align 4, !tbaa !131
  %i.c = icmp eq i16 %2, 14
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc noundef zeroext i1 @_ZL23Analyze_CC_Sparc64_HalfbRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE(i1 noundef zeroext true, ptr noundef nonnull readonly align 4 dereferenceable(4) %i.a, ptr noundef nonnull readonly align 2 dereferenceable(2) %8, ptr noundef nonnull align 2 dereferenceable(2) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.d, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pr.pre13.pre = load i16, ptr %9, align 2, !tbaa !133
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.pr.pre13 = phi i16 [ %.pr.pre13.pre, %._crit_edge ], [ %2, %bb.a ] ; 2 uses
  %i.e = and i64 %4, 8
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i16 %.pr.pre13, label %.thread [
    i16 7, label %.critedge
    i16 14, label %.critedge
  ]

.critedge:                                        ; preds = %bb.d, %bb.d
  %i.f = call fastcc noundef zeroext i1 @_ZL23Analyze_CC_Sparc64_HalfbRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE(i1 noundef zeroext true, ptr noundef nonnull readonly align 4 dereferenceable(4) %i.a, ptr noundef nonnull readonly align 2 dereferenceable(2) %8, ptr noundef nonnull align 2 dereferenceable(2) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.f, label %bb.f, label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge
  %.pr.pre = load i16, ptr %9, align 2, !tbaa !133
  br label %bb.e

bb.e:                                             ; preds = %.critedge._crit_edge, %bb.c
  %.pr = phi i16 [ %.pr.pre, %.critedge._crit_edge ], [ %.pr.pre13, %bb.c ]
  %i.g = icmp eq i16 %.pr, 7
  br i1 %i.g, label %.thread.sink.split, label %.thread

.thread.sink.split:                               ; preds = %bb.e
  store i16 8, ptr %9, align 2, !tbaa !136
  %i.h = and i64 %4, 2
  %.not12 = icmp eq i64 %i.h, 0
  %i.i = trunc i64 %4 to i1
  %. = select i1 %i.i, i32 2, i32 3
  %.sink = select i1 %.not12, i32 %., i32 1
  store i32 %.sink, ptr %i.b, align 4, !tbaa !131
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.d, %bb.e
  %i.j = call fastcc noundef zeroext i1 @_ZL23Analyze_CC_Sparc64_FullbRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE(i1 noundef zeroext true, ptr noundef nonnull readonly align 4 dereferenceable(4) %i.a, ptr noundef nonnull readonly align 2 dereferenceable(2) %8, ptr noundef nonnull readonly align 2 dereferenceable(2) %9, ptr noundef nonnull readonly align 4 dereferenceable(4) %i.b, i64 %4, ptr noundef nonnull align 8 dereferenceable(420) %7)
  %not. = xor i1 %i.j, true
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.critedge, %bb.b
  %.0 = phi i1 [ false, %.critedge ], [ false, %bb.b ], [ %not., %.thread ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL13RetCC_Sparc32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) #0 {
bb.a:
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %12 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %13 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  switch i16 %2, label %.thread122 [
    i16 7, label %bb.b
    i16 14, label %bb.k
    i16 15, label %bb.r
    i16 17, label %bb.w
    i16 71, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !130  ; 6 uses
  %i.e = and i32 %i.d, 64
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %i.d, 128
  %.not.i.i.1 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %i.d, 256
  %.not.i.i.2 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = and i32 %i.d, 512
  %.not.i.i.3 = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = and i32 %i.d, 1024
  %.not.i.i.4 = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = and i32 %i.d, 2048
  %.not.i.i.5 = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread122

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ]
  %i.k = getelementptr inbounds nuw [2 x i8], ptr @_ZZL24CC_Sparc_Assign_Split_64RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateEE7RegList, i64 %.0613.i.i.lcssa.wide
  %i.l = load i16, ptr %i.k, align 2, !tbaa !137  ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.l) #21
  %i.m = zext i16 %i.l to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !138, !alias.scope !140
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.o, align 8, !tbaa !143, !alias.scope !140
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4, !alias.scope !140
  %i.r = and i8 %i.q, -128
  %i.s = trunc i32 %3 to i8
  %i.t = shl i8 %i.s, 1
  %i.u = and i8 %i.t, 126
  %i.v = or disjoint i8 %i.r, %i.u
  store i8 %i.v, ptr %i.p, align 4, !alias.scope !140
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.w, align 2, !tbaa !136, !alias.scope !140
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 7, ptr %i.x, align 8, !tbaa !136, !alias.scope !140
  store i32 %i.m, ptr %10, align 8, !tbaa !130, !alias.scope !140
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !151, !nonnull !129, !align !176 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !11 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !12
  %.not.i.i33 = icmp ult i32 %i.ab, %i.ad
  br i1 %.not.i.i33, label %bb.i, label %bb.h, !prof !177

bb.h:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %bb.j

bb.i:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.ae = zext i32 %i.ab to i64
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.ah = load i32, ptr %i.aa, align 8, !tbaa !11
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.aa, align 8, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %.thread122

bb.k:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !130 ; 4 uses
  %i.al = and i32 %i.ak, 67108864
  %.not.i.i35 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i35, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit38, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = and i32 %i.ak, 134217728
  %.not.i.i35.1 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i35.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit38, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = and i32 %i.ak, 268435456
  %.not.i.i35.2 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i35.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit38, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = and i32 %i.ak, 536870912
  %.not.i.i35.3 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i35.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit38, label %.thread122

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit38: ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %.0613.i.i34.lcssa.wide = phi i64 [ 0, %bb.k ], [ 1, %bb.l ], [ 2, %bb.m ], [ 3, %bb.n ]
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr @_ZZL13RetCC_Sparc32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2, i64 %.0613.i.i34.lcssa.wide
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !137 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.aq) #21
  %i.ar = zext i16 %i.aq to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.as, align 8, !tbaa !138, !alias.scope !178
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %0, ptr %i.at, align 8, !tbaa !143, !alias.scope !178
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.av = load i8, ptr %i.au, align 4, !alias.scope !178
  %i.aw = and i8 %i.av, -128
  %i.ax = trunc i32 %3 to i8
  %i.ay = shl i8 %i.ax, 1
  %i.az = and i8 %i.ay, 126
  %i.ba = or disjoint i8 %i.aw, %i.az
  store i8 %i.ba, ptr %i.au, align 4, !alias.scope !178
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i16 %1, ptr %i.bb, align 2, !tbaa !136, !alias.scope !178
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 %2, ptr %i.bc, align 8, !tbaa !136, !alias.scope !178
  store i32 %i.ar, ptr %11, align 8, !tbaa !130, !alias.scope !178
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !151, !nonnull !129, !align !176 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !11 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !12
  %.not.i.i39 = icmp ult i32 %i.bg, %i.bi
  br i1 %.not.i.i39, label %bb.p, label %bb.o, !prof !177

bb.o:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit38
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br label %bb.q

bb.p:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit38
  %i.bj = zext i32 %i.bg to i64
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %i.bm = load i32, ptr %i.bf, align 8, !tbaa !11
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bf, align 8, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.thread122

bb.r:                                             ; preds = %bb.a
  %.phi.trans.insert137 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %.pre138 = load ptr, ptr %.phi.trans.insert137, align 8, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre138, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !130 ; 2 uses
  %i.bq = and i32 %i.bp, 67108864
  %.not.i.i42 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i42, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit45, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = and i32 %i.bp, 134217728
  %.not.i.i42.1 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i42.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit45, label %.thread122

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit45: ; preds = %bb.s, %bb.r
  %.0613.i.i41.lcssa.wide = phi i64 [ 0, %bb.r ], [ 1, %bb.s ]
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr @_ZZL13RetCC_Sparc32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3, i64 %.0613.i.i41.lcssa.wide
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !137 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.bt) #21
  %i.bu = zext i16 %i.bt to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.bv, align 8, !tbaa !138, !alias.scope !181
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %0, ptr %i.bw, align 8, !tbaa !143, !alias.scope !181
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 4, !alias.scope !181
  %i.bz = and i8 %i.by, -128
  %i.ca = trunc i32 %3 to i8
  %i.cb = shl i8 %i.ca, 1
  %i.cc = and i8 %i.cb, 126
  %i.cd = or disjoint i8 %i.bz, %i.cc
  store i8 %i.cd, ptr %i.bx, align 4, !alias.scope !181
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 22
  store i16 %1, ptr %i.ce, align 2, !tbaa !136, !alias.scope !181
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i16 %2, ptr %i.cf, align 8, !tbaa !136, !alias.scope !181
  store i32 %i.bu, ptr %12, align 8, !tbaa !130, !alias.scope !181
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !151, !nonnull !129, !align !176 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !11 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !12
  %.not.i.i46 = icmp ult i32 %i.cj, %i.cl
  br i1 %.not.i.i46, label %bb.u, label %bb.t, !prof !177

bb.t:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit45
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(26) %12)
  br label %bb.v

bb.u:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit45
  %i.cm = zext i32 %i.cj to i64
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !8
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %i.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  %i.cp = load i32, ptr %i.ci, align 8, !tbaa !11
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr %i.ci, align 8, !tbaa !11
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %.thread122

bb.w:                                             ; preds = %bb.a
  %i.cr = and i64 %4, 8
  %.not = icmp eq i64 %i.cr, 0
  br i1 %.not, label %.thread122, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !130 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK4llvm19SparcTargetLowering23LowerFormalArguments_32ENS_7SDValueEjbRKNS_15SmallVectorImplINS_3ISD8InputArgEEERKNS_5SDLocERNS_12SelectionDAGERNS2_IS1_EE:bb.a
  %.sroa.20.3 = phi ptr [ %i.qg, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.20.2, %bb.bv ]
  %.sroa.10.2 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.pn, i64 32
  store ptr %.sroa.0657.3, ptr %62, align 8, !tbaa !293
  %i.qh = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.qi = ptrtoint ptr %.sroa.10.2 to i64
  %i.qj = ptrtoint ptr %.sroa.0657.3 to i64
  %i.qk = sub i64 %i.qi, %i.qj
  %i.ql = ashr exact i64 %i.qk, 4
  store i64 %i.ql, ptr %i.qh, align 8, !tbaa !296
  %i.qm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.235") align 8 %62) #21 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.qm, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.qm, 1
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit, %._crit_edge871
  %.sroa.0657.1 = phi ptr [ %.sroa.0657.2, %._crit_edge871 ], [ %.sroa.0657.3, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %.sroa.20.1 = phi ptr [ %.sroa.20.2, %._crit_edge871 ], [ %.sroa.20.3, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit ]
  %.sroa.0806.1 = phi ptr [ %.sroa.0806.0, %._crit_edge871 ], [ %.fca.0.extract, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.18.1 = phi i32 [ %.sroa.18.0, %._crit_edge871 ], [ %.fca.1.extract, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.not.i.i.i634 = icmp eq ptr %.sroa.0657.1, null
  br i1 %.not.i.i.i634, label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.qn = ptrtoint ptr %.sroa.20.1 to i64
  %i.qo = ptrtoint ptr %.sroa.0657.1 to i64
  %i.qp = sub i64 %i.qn, %i.qo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0657.1, i64 noundef %i.qp) #24
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit:    ; preds = %.thread917, %bb.ca, %bb.bz, %bb.be
  %.sroa.0806.2 = phi ptr [ %.sroa.0806.0, %bb.be ], [ %.sroa.0806.1, %bb.bz ], [ %.sroa.0806.1, %bb.ca ], [ %.sroa.0806.0, %.thread917 ]
  %.sroa.18.2 = phi i32 [ %.sroa.18.0, %bb.be ], [ %.sroa.18.1, %bb.bz ], [ %.sroa.18.1, %bb.ca ], [ %.sroa.18.0, %.thread917 ]
  %i.qq = getelementptr inbounds nuw i8, ptr %23, i64 368
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !8  ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %23, i64 384
  %i.qt = icmp eq ptr %i.qr, %i.qs
  br i1 %i.qt, label %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit
  call void @free(ptr noundef %i.qr) #21
  br label %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i: ; preds = %bb.cb, %_ZNSt6vectorIN4llvm7SDValueESaIS1_EED2Ev.exit
  %i.qu = getelementptr inbounds nuw i8, ptr %23, i64 288
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !8  ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %23, i64 304
  %i.qx = icmp eq ptr %i.qv, %i.qw
  br i1 %i.qx, label %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i, label %bb.cc

bb.cc:                                            ; preds = %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.qv) #21
  br label %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i: ; preds = %bb.cc, %_ZN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EED2Ev.exit.i
  %i.qy = getelementptr inbounds nuw i8, ptr %23, i64 144
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !8  ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %23, i64 160
  %i.rb = icmp eq ptr %i.qz, %i.ra
  br i1 %i.rb, label %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i, label %bb.cd

bb.cd:                                            ; preds = %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.qz) #21
  br label %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i: ; preds = %bb.cd, %_ZN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EED2Ev.exit.i
  %i.rc = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !8  ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %23, i64 80
  %i.rf = icmp eq ptr %i.rd, %i.re
  br i1 %i.rf, label %_ZN4llvm7CCStateD2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.rd) #21
  br label %_ZN4llvm7CCStateD2Ev.exit

_ZN4llvm7CCStateD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_11CCValAssignELj4EED2Ev.exit.i, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  %i.rg = load ptr, ptr %22, align 8, !tbaa !8    ; 2 uses
  %i.rh = icmp eq ptr %i.rg, %i.l
  br i1 %i.rh, label %_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %_ZN4llvm7CCStateD2Ev.exit
  call void @free(ptr noundef %i.rg) #21
  br label %_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit

_ZN4llvm11SmallVectorINS_11CCValAssignELj16EED2Ev.exit: ; preds = %_ZN4llvm7CCStateD2Ev.exit, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0806.2, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.18.2, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare void @_ZN4llvm7CCState22AnalyzeFormalArgumentsERKNS_15SmallVectorImplINS_3ISD8InputArgEEEPFbjNS_3MVTES7_NS_11CCValAssign7LocInfoENS2_10ArgFlagsTyEPNS_4TypeERS0_E(ptr noundef nonnull align 8 dereferenceable(420), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL10CC_Sparc32jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) #0 {
bb.a:
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"class.llvm::MVT", align 2         ; 4 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %11 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  store i16 %2, ptr %9, align 2
  %i.a = and i64 %4, 16
  %.not65 = icmp eq i64 %i.a, 0
  br i1 %.not65, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.val17 = load ptr, ptr %i.b, align 8, !tbaa !151 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %0, ptr %i.d, align 8, !tbaa !143, !alias.scope !491
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4, !alias.scope !491
  %i.g = and i8 %i.f, -128
  %i.h = trunc i32 %3 to i8
  %i.i = shl i8 %i.h, 1
  %i.j = and i8 %i.i, 126
  %i.k = or disjoint i8 %i.j, %i.g
  %i.l = or disjoint i8 %i.k, 1
  store i8 %i.l, ptr %i.e, align 4, !alias.scope !491
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %1, ptr %i.m, align 2, !tbaa !136, !alias.scope !491
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %2, ptr %i.n, align 8, !tbaa !136, !alias.scope !491
  store i8 1, ptr %i.c, align 8, !tbaa !138, !alias.scope !491
  store i64 0, ptr %8, align 8, !tbaa !403, !alias.scope !491
  %i.o = getelementptr inbounds nuw i8, ptr %.val17, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !11   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val17, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !12
  %.not.i.i.i = icmp ult i32 %i.p, %i.r
  br i1 %.not.i.i.i, label %bb.d, label %bb.c, !prof !177

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %.val17, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %_ZL20CC_Sparc_Assign_SRetRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

bb.d:                                             ; preds = %bb.b
  %i.s = zext i32 %i.p to i64
  %i.t = load ptr, ptr %.val17, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.v = load i32, ptr %i.o, align 8, !tbaa !11
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.o, align 8, !tbaa !11
  br label %_ZL20CC_Sparc_Assign_SRetRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit

_ZL20CC_Sparc_Assign_SRetRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.u

bb.e:                                             ; preds = %bb.a
  switch i16 %2, label %.thread63 [
    i16 17, label %.thread
    i16 7, label %.critedge
    i16 14, label %.critedge
  ]

.thread:                                          ; preds = %bb.e
  store i16 7, ptr %9, align 2, !tbaa !136
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.e, %.thread
  %.sroa.0.0.copyload4658 = phi i16 [ %2, %bb.e ], [ 7, %.thread ], [ %2, %bb.e ] ; 2 uses
  %.054 = phi i32 [ %3, %bb.e ], [ 11, %.thread ], [ %3, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !130 ; 6 uses
  %i.ab = and i32 %i.aa, 64
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ac = and i32 %i.aa, 128
  %.not.i.i.1 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = and i32 %i.aa, 256
  %.not.i.i.2 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = and i32 %i.aa, 512
  %.not.i.i.3 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = and i32 %i.aa, 1024
  %.not.i.i.4 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = and i32 %i.aa, 2048
  %.not.i.i.5 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %.thread63

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %.critedge, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %.critedge ], [ 1, %bb.f ], [ 2, %bb.g ], [ 3, %bb.h ], [ 4, %bb.i ], [ 5, %bb.j ]
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr @_ZZL24CC_Sparc_Assign_Split_64RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateEE7RegList, i64 %.0613.i.i.lcssa.wide
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !137 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.ai) #21
  %i.aj = zext i16 %i.ai to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.ak, align 8, !tbaa !138, !alias.scope !496
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %0, ptr %i.al, align 8, !tbaa !143, !alias.scope !496
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.an = load i8, ptr %i.am, align 4, !alias.scope !496
  %i.ao = and i8 %i.an, -128
  %i.ap = trunc i32 %.054 to i8
  %i.aq = shl i8 %i.ap, 1
  %i.ar = and i8 %i.aq, 126
  %i.as = or disjoint i8 %i.ao, %i.ar
  store i8 %i.as, ptr %i.am, align 4, !alias.scope !496
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %1, ptr %i.at, align 2, !tbaa !136, !alias.scope !496
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 %.sroa.0.0.copyload4658, ptr %i.au, align 8, !tbaa !136, !alias.scope !496
  store i32 %i.aj, ptr %10, align 8, !tbaa !130, !alias.scope !496
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !151, !nonnull !129, !align !176 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !11 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !12
  %.not.i.i24 = icmp ult i32 %i.ay, %i.ba
  br i1 %.not.i.i24, label %bb.l, label %bb.k, !prof !177

bb.k:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %bb.m

bb.l:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.bb = zext i32 %i.ay to i64
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %i.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.be = load i32, ptr %i.ax, align 8, !tbaa !11
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.ax, align 8, !tbaa !11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.u

.thread63:                                        ; preds = %bb.j, %bb.e
  %.sroa.0.0.copyload4657 = phi i16 [ %2, %bb.e ], [ %.sroa.0.0.copyload4658, %bb.j ] ; 2 uses
  %.056 = phi i32 [ %3, %bb.e ], [ %.054, %bb.j ] ; 3 uses
  switch i16 %.sroa.0.0.copyload4657, label %bb.p [
    i16 15, label %bb.n
    i16 71, label %bb.o
  ]

bb.n:                                             ; preds = %.thread63
  call fastcc void @_ZL24CC_Sparc_Assign_Split_64RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE(i32 %0, i16 %1, ptr noundef nonnull align 2 dereferenceable(2) %9, i32 %.056, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br label %bb.u

bb.o:                                             ; preds = %.thread63
  call fastcc void @_ZL24CC_Sparc_Assign_Split_64RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE(i32 %0, i16 %1, ptr noundef nonnull align 2 dereferenceable(2) %9, i32 %.056, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br label %bb.u

bb.p:                                             ; preds = %.thread63
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !499, !range !128, !noundef !129
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !405 ; 2 uses
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = add i64 %i.bk, 7
  %i.bm = and i64 %i.bl, -4                       ; 2 uses
  %i.bn = sub i64 0, %i.bm
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

bb.r:                                             ; preds = %bb.p
  %i.bo = add i64 %i.bk, 3
  %i.bp = and i64 %i.bo, -4                       ; 2 uses
  %i.bq = add nsw i64 %i.bp, 4
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit: ; preds = %bb.q, %bb.r
  %.sink = phi i64 [ %i.bm, %bb.q ], [ %i.bq, %bb.r ]
  %.0.i = phi i64 [ %i.bn, %bb.q ], [ %i.bp, %bb.r ]
  store i64 %.sink, ptr %i.bj, align 8, !tbaa !405
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.br, align 8, !tbaa !500
  %.sroa.speculated.i = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i, i8 2)
  store i8 %.sroa.speculated.i, ptr %i.br, align 8, !tbaa !500
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %7, i8 2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %0, ptr %i.bt, align 8, !tbaa !143, !alias.scope !501
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 4, !alias.scope !501
  %i.bw = and i8 %i.bv, -128
  %i.bx = trunc i32 %.056 to i8
  %i.by = shl i8 %i.bx, 1
  %i.bz = and i8 %i.by, 126
  %i.ca = or disjoint i8 %i.bw, %i.bz
  store i8 %i.ca, ptr %i.bu, align 4, !alias.scope !501
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i16 %1, ptr %i.cb, align 2, !tbaa !136, !alias.scope !501
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 %.sroa.0.0.copyload4657, ptr %i.cc, align 8, !tbaa !136, !alias.scope !501
  store i8 1, ptr %i.bs, align 8, !tbaa !138, !alias.scope !501
  store i64 %.0.i, ptr %11, align 8, !tbaa !403, !alias.scope !501
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !151, !nonnull !129, !align !176 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !11 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !12
  %.not.i.i25 = icmp ult i32 %i.cg, %i.ci
  br i1 %.not.i.i25, label %bb.t, label %bb.s, !prof !177

bb.s:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(26) %11)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit26

bb.t:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  %i.cj = zext i32 %i.cg to i64
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  %i.cm = load i32, ptr %i.cf, align 8, !tbaa !11
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cf, align 8, !tbaa !11
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit26

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit26: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.u

bb.u:                                             ; preds = %bb.m, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit26, %bb.o, %bb.n, %_ZL20CC_Sparc_Assign_SRetRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE.exit
  ret i1 false
}

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare noundef i32 @_ZN4llvm16MachineFrameInfo17CreateFixedObjectEmlbb(ptr noundef nonnull align 8 dereferenceable(728), i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, i16, ptr, i1 noundef zeroext) local_unnamed_addr #2

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_18MachinePointerInfoENS_10MaybeAlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesEPKNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"struct.llvm::MachinePointerInfo") align 8, i16, i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520), ptr noundef, ptr, i64) local_unnamed_addr #2

declare i32 @_ZN4llvm15MachineFunction9addLiveInENS_10MCRegisterEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(1065), i32, ptr noundef) local_unnamed_addr #2

declare { ptr, i32 } @_ZN4llvm12SelectionDAG12getValueTypeENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr) local_unnamed_addr #2

declare void @_ZN4llvm18MachinePointerInfo13getFixedStackERNS_15MachineFunctionEil(ptr dead_on_unwind writable sret(%"struct.llvm::MachinePointerInfo") align 8, ptr noundef nonnull align 8 dereferenceable(1065), i32 noundef, i64 noundef) local_unnamed_addr #2

declare { ptr, i32 } @_ZN4llvm12SelectionDAG20getMemBasePlusOffsetENS_7SDValueENS_8TypeSizeERKNS_5SDLocENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, i64, i8, ptr noundef nonnull align 8 dereferenceable(12), i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZL10CC_Sparc64jN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE(i32 noundef %0, i16 %1, i16 %2, i32 noundef %3, i64 %4, i64 %5, ptr nofree readnone captures(none) %6, ptr noundef nonnull align 8 dereferenceable(420) %7) #0 {
bb.a:
  %8 = alloca %"class.llvm::MVT", align 2         ; 3 uses
  %9 = alloca %"class.llvm::MVT", align 2         ; 5 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  store i16 %1, ptr %8, align 2
  store i16 %2, ptr %9, align 2
  store i32 %0, ptr %i.a, align 4, !tbaa !130
  store i32 %3, ptr %i.b, align 4, !tbaa !131
  %i.c = and i64 %4, 8
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %thread-pre-split, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i16 %2, label %thread-pre-split [
    i16 7, label %.critedge
    i16 14, label %.critedge
  ]

.critedge:                                        ; preds = %bb.b, %bb.b
  %i.d = call fastcc noundef zeroext i1 @_ZL23Analyze_CC_Sparc64_HalfbRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE(i1 noundef zeroext false, ptr noundef nonnull readonly align 4 dereferenceable(4) %i.a, ptr noundef nonnull readonly align 2 dereferenceable(2) %8, ptr noundef nonnull align 2 dereferenceable(2) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(420) %7)
  br i1 %i.d, label %bb.d, label %.critedge.thread-pre-split_crit_edge

.critedge.thread-pre-split_crit_edge:             ; preds = %.critedge
  %.pr.pre = load i16, ptr %9, align 2, !tbaa !133
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.b, %.critedge.thread-pre-split_crit_edge, %bb.a
  %i.e = phi i16 [ %2, %bb.a ], [ %.pr.pre, %.critedge.thread-pre-split_crit_edge ], [ %2, %bb.b ]
  %i.f = icmp eq i16 %i.e, 7
  br i1 %i.f, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %thread-pre-split
  store i16 8, ptr %9, align 2, !tbaa !136
  %i.g = and i64 %4, 2
end_hunk_1
begin_hunk_2_@_ZL23Analyze_CC_Sparc64_FullbRjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE:bb.a
  br i1 %i.ag, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  %i.ah = icmp eq i16 %i.ad, 15
  %i.ai = icmp ult i32 %i.ac, 128                 ; 3 uses
  %i.aj = and i1 %i.ai, %i.ah
  br i1 %i.aj, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = icmp eq i16 %i.ad, 14                   ; 2 uses
  %i.al = and i1 %i.ai, %i.ak
  br i1 %i.al, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = icmp eq i16 %i.ad, 17
  %i.an = and i1 %i.ai, %i.am
  br i1 %i.an, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  %.sink18 = phi i32 [ 2, %bb.e ], [ 3, %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit ], [ 3, %bb.d ], [ 4, %bb.f ]
  %.sink17 = phi i32 [ 123, %bb.e ], [ 166, %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit ], [ 90, %bb.d ], [ 190, %bb.f ]
  %i.ao = lshr i32 %i.ac, %.sink18
  %i.ap = add nuw nsw i32 %i.ao, %.sink17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.aq = load i32, ptr %1, align 4, !tbaa !130
  %.sroa.03.0.copyload = load i16, ptr %2, align 2, !tbaa !136
  %i.ar = load i32, ptr %4, align 4, !tbaa !131
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.as, align 8, !tbaa !138, !alias.scope !976
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.aq, ptr %i.at, align 8, !tbaa !143, !alias.scope !976
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.av = load i8, ptr %i.au, align 4, !alias.scope !976
  %i.aw = and i8 %i.av, -128
  %i.ax = trunc i32 %i.ar to i8
  %i.ay = shl i8 %i.ax, 1
  %i.az = and i8 %i.ay, 126
  %i.ba = or disjoint i8 %i.aw, %i.az
  store i8 %i.ba, ptr %i.au, align 4, !alias.scope !976
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i16 %.sroa.03.0.copyload, ptr %i.bb, align 2, !tbaa !136, !alias.scope !976
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %i.ad, ptr %i.bc, align 8, !tbaa !136, !alias.scope !976
  store i32 %i.ap, ptr %6, align 8, !tbaa !130, !alias.scope !976
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !151, !nonnull !129, !align !176 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !11 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !12
  %.not.i.i = icmp ult i32 %i.bg, %i.bi
  br i1 %.not.i.i, label %bb.i, label %bb.h, !prof !177

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(26) %6)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit

bb.i:                                             ; preds = %bb.g
  %i.bj = zext i32 %i.bg to i64
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %i.bm = load i32, ptr %i.bf, align 8, !tbaa !11
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bf, align 8, !tbaa !11
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.n

bb.j:                                             ; preds = %bb.f
  br i1 %0, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = add i64 %.0.i, 4
  %spec.select = select i1 %i.ak, i64 %i.bo, i64 %.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.bp = load i32, ptr %1, align 4, !tbaa !130
  %.sroa.01.0.copyload = load i16, ptr %2, align 2, !tbaa !136
  %i.bq = and i64 %spec.select, 4294967295
  %i.br = load i32, ptr %4, align 4, !tbaa !131
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.bp, ptr %i.bt, align 8, !tbaa !143, !alias.scope !979
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 4, !alias.scope !979
  %i.bw = and i8 %i.bv, -128
  %i.bx = trunc i32 %i.br to i8
  %i.by = shl i8 %i.bx, 1
  %i.bz = and i8 %i.by, 126
  %i.ca = or disjoint i8 %i.bz, %i.bw
  store i8 %i.ca, ptr %i.bu, align 4, !alias.scope !979
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %.sroa.01.0.copyload, ptr %i.cb, align 2, !tbaa !136, !alias.scope !979
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %i.ad, ptr %i.cc, align 8, !tbaa !136, !alias.scope !979
  store i8 1, ptr %i.bs, align 8, !tbaa !138, !alias.scope !979
  store i64 %i.bq, ptr %7, align 8, !tbaa !403, !alias.scope !979
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !151, !nonnull !129, !align !176 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !11 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !12
  %.not.i.i40 = icmp ult i32 %i.cg, %i.ci
  br i1 %.not.i.i40, label %bb.m, label %bb.l, !prof !177

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(26) %7)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit41

bb.m:                                             ; preds = %bb.k
  %i.cj = zext i32 %i.cg to i64
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  %i.cm = load i32, ptr %i.cf, align 8, !tbaa !11
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cf, align 8, !tbaa !11
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit41

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit41: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit41, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit
  %.0 = phi i1 [ true, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit ], [ true, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit41 ], [ false, %bb.j ]
  ret i1 %.0
}

declare void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420), i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i32 %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #21
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = load i32, ptr %i.a, align 8, !tbaa !11
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !11
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !11
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm13AttributeList19hasAttributeAtIndexEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL24CC_Sparc_Assign_Split_64RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateE(i32 %.0.val, i16 %.0.val1, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(2) %0, i32 %.0.val3, ptr noundef nonnull align 8 dereferenceable(420) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %3 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %4 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %5 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !130  ; 6 uses
  %i.e = and i32 %i.d, 64
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.d, 128
  %.not.i.i.1 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.d, 256
  %.not.i.i.2 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %i.d, 512
  %.not.i.i.3 = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %i.d, 1024
  %.not.i.i.4 = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = and i32 %i.d, 2048
  %.not.i.i.5 = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0613.i.i.lcssa.wide = phi i64 [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ]
  %i.k = getelementptr inbounds nuw [2 x i8], ptr @_ZZL24CC_Sparc_Assign_Split_64RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateEE7RegList, i64 %.0613.i.i.lcssa.wide
  %i.l = load i16, ptr %i.k, align 2, !tbaa !137  ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %1, i16 noundef zeroext %i.l) #21
  %i.m = zext i16 %i.l to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %.sroa.08.0.copyload = load i16, ptr %0, align 2, !tbaa !136
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !138, !alias.scope !982
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %.0.val, ptr %i.o, align 8, !tbaa !143, !alias.scope !982
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4, !alias.scope !982
  %i.r = and i8 %i.q, -128
  %i.s = trunc i32 %.0.val3 to i8
  %i.t = shl i8 %i.s, 1
  %i.u = and i8 %i.t, 126                         ; 3 uses
  %i.v = or disjoint i8 %i.u, %i.r
  %i.w = or disjoint i8 %i.v, 1
  store i8 %i.w, ptr %i.p, align 4, !alias.scope !982
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i16 %.0.val1, ptr %i.x, align 2, !tbaa !136, !alias.scope !982
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i16 %.sroa.08.0.copyload, ptr %i.y, align 8, !tbaa !136, !alias.scope !982
  store i32 %i.m, ptr %2, align 8, !tbaa !130, !alias.scope !982
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !151, !nonnull !129, !align !176 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !11 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !12
  %.not.i.i38 = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i38, label %bb.h, label %bb.g, !prof !177

bb.g:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(26) %2)
  br label %bb.n

bb.h:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !11
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !11
  br label %bb.n

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %7 = load i8, ptr %6, align 8, !tbaa !499, !range !128, !noundef !129
  %8 = trunc nuw i8 %7 to i1
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %10 = load i64, ptr %9, align 8, !tbaa !405     ; 2 uses
  br i1 %8, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread
  %i.ak = add i64 %10, 11
  %i.al = and i64 %i.ak, -4                       ; 2 uses
  %i.am = sub i64 0, %i.al
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

bb.j:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread
  %i.an = add i64 %10, 3
  %i.ao = and i64 %i.an, -4                       ; 2 uses
  %i.ap = add nsw i64 %i.ao, 8
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit: ; preds = %bb.i, %bb.j
  %.sink = phi i64 [ %i.al, %bb.i ], [ %i.ap, %bb.j ]
  %.0.i = phi i64 [ %i.am, %bb.i ], [ %i.ao, %bb.j ]
  store i64 %.sink, ptr %9, align 8, !tbaa !405
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.aq, align 8, !tbaa !500
  %.sroa.speculated.i = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i, i8 2)
  store i8 %.sroa.speculated.i, ptr %i.aq, align 8, !tbaa !500
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %1, i8 2) #21
  %.sroa.06.0.copyload = load i16, ptr %0, align 2, !tbaa !136
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.0.val, ptr %i.as, align 8, !tbaa !143, !alias.scope !987
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.au = load i8, ptr %i.at, align 4, !alias.scope !987
  %i.av = and i8 %i.au, -128
  %i.aw = trunc i32 %.0.val3 to i8
  %i.ax = shl i8 %i.aw, 1
  %i.ay = and i8 %i.ax, 126
  %i.az = or disjoint i8 %i.ay, %i.av
  %i.ba = or disjoint i8 %i.az, 1
  store i8 %i.ba, ptr %i.at, align 4, !alias.scope !987
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i16 %.0.val1, ptr %i.bb, align 2, !tbaa !136, !alias.scope !987
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i16 %.sroa.06.0.copyload, ptr %i.bc, align 8, !tbaa !136, !alias.scope !987
  store i8 1, ptr %i.ar, align 8, !tbaa !138, !alias.scope !987
  store i64 %.0.i, ptr %3, align 8, !tbaa !403, !alias.scope !987
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !151, !nonnull !129, !align !176 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !11 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !12
  %.not.i.i39 = icmp ult i32 %i.bg, %i.bi
  br i1 %.not.i.i39, label %bb.l, label %bb.k, !prof !177

bb.k:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(26) %3)
  br label %bb.m

bb.l:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  %i.bj = zext i32 %i.bg to i64
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.bm = load i32, ptr %i.bf, align 8, !tbaa !11
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bf, align 8, !tbaa !11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.z

bb.n:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !130 ; 6 uses
  %i.br = and i32 %i.bq, 64
  %.not.i.i42 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i42, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit45, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = and i32 %i.bq, 128
  %.not.i.i42.1 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i42.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit45, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = and i32 %i.bq, 256
  %.not.i.i42.2 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i42.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit45, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = and i32 %i.bq, 512
  %.not.i.i42.3 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i42.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit45, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = and i32 %i.bq, 1024
  %.not.i.i42.4 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i42.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit45, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = and i32 %i.bq, 2048
  %.not.i.i42.5 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i42.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit45, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit45.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit45: ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.0613.i.i41.lcssa.wide = phi i64 [ 0, %bb.n ], [ 1, %bb.o ], [ 2, %bb.p ], [ 3, %bb.q ], [ 4, %bb.r ], [ 5, %bb.s ]
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr @_ZZL24CC_Sparc_Assign_Split_64RjRN4llvm3MVTES2_RNS0_11CCValAssign7LocInfoERNS0_3ISD10ArgFlagsTyERNS0_7CCStateEE7RegList, i64 %.0613.i.i41.lcssa.wide
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !137 ; 2 uses
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %1, i16 noundef zeroext %i.by) #21
  %i.bz = zext i16 %i.by to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %.sroa.02.0.copyload = load i16, ptr %0, align 2, !tbaa !136
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.ca, align 8, !tbaa !138, !alias.scope !992
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.0.val, ptr %i.cb, align 8, !tbaa !143, !alias.scope !992
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 4, !alias.scope !992
  %i.ce = and i8 %i.cd, -128
  %i.cf = or disjoint i8 %i.u, %i.ce
  %i.cg = or disjoint i8 %i.cf, 1
  store i8 %i.cg, ptr %i.cc, align 4, !alias.scope !992
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i16 %.0.val1, ptr %i.ch, align 2, !tbaa !136, !alias.scope !992
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i16 %.sroa.02.0.copyload, ptr %i.ci, align 8, !tbaa !136, !alias.scope !992
  store i32 %i.bz, ptr %4, align 8, !tbaa !130, !alias.scope !992
  %i.cj = load ptr, ptr %i.z, align 8, !tbaa !151, !nonnull !129, !align !176 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !11 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !12
  %.not.i.i46 = icmp ult i32 %i.cl, %i.cn
  br i1 %.not.i.i46, label %bb.u, label %bb.t, !prof !177

bb.t:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit45
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(26) %4)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit47

bb.u:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit45
  %i.co = zext i32 %i.cl to i64
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  %i.cr = load i32, ptr %i.ck, align 8, !tbaa !11
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.ck, align 8, !tbaa !11
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit47

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit47: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.z

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit45.thread: ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %12 = load i8, ptr %11, align 8, !tbaa !499, !range !128, !noundef !129
  %13 = trunc nuw i8 %12 to i1
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %15 = load i64, ptr %14, align 8, !tbaa !405    ; 2 uses
  br i1 %13, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit45.thread
  %i.ct = add i64 %15, 7
  %i.cu = and i64 %i.ct, -4                       ; 2 uses
  %i.cv = sub i64 0, %i.cu
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit51

bb.w:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit45.thread
  %i.cw = add i64 %15, 3
  %i.cx = and i64 %i.cw, -4                       ; 2 uses
  %i.cy = add nsw i64 %i.cx, 4
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit51

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit51: ; preds = %bb.v, %bb.w
  %.sink26 = phi i64 [ %i.cu, %bb.v ], [ %i.cy, %bb.w ]
  %.0.i48 = phi i64 [ %i.cv, %bb.v ], [ %i.cx, %bb.w ]
  store i64 %.sink26, ptr %14, align 8, !tbaa !405
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i49 = load i8, ptr %i.cz, align 8, !tbaa !500
  %.sroa.speculated.i50 = call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i49, i8 2)
  store i8 %.sroa.speculated.i50, ptr %i.cz, align 8, !tbaa !500
  call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %1, i8 2) #21
  %.sroa.0.0.copyload = load i16, ptr %0, align 2, !tbaa !136
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.0.val, ptr %i.db, align 8, !tbaa !143, !alias.scope !997
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 4, !alias.scope !997
  %i.de = and i8 %i.dd, -128
  %i.df = or disjoint i8 %i.u, %i.de
  %i.dg = or disjoint i8 %i.df, 1
  store i8 %i.dg, ptr %i.dc, align 4, !alias.scope !997
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %.0.val1, ptr %i.dh, align 2, !tbaa !136, !alias.scope !997
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %.sroa.0.0.copyload, ptr %i.di, align 8, !tbaa !136, !alias.scope !997
  store i8 1, ptr %i.da, align 8, !tbaa !138, !alias.scope !997
  store i64 %.0.i48, ptr %5, align 8, !tbaa !403, !alias.scope !997
  %i.dj = load ptr, ptr %i.z, align 8, !tbaa !151, !nonnull !129, !align !176 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 3 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !11 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !12
  %.not.i.i52 = icmp ult i32 %i.dl, %i.dn
  br i1 %.not.i.i52, label %bb.y, label %bb.x, !prof !177

bb.x:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit51
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(26) %5)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit53

bb.y:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit51
  %i.do = zext i32 %i.dl to i64
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !8
  %i.dq = getelementptr inbounds nuw [32 x i8], ptr %i.dp, i64 %i.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  %i.dr = load i32, ptr %i.dk, align 8, !tbaa !11
  %i.ds = add i32 %i.dr, 1
  store i32 %i.ds, ptr %i.dk, align 8, !tbaa !11
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit53

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit53: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.z

bb.z:                                             ; preds = %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit47, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit53, %bb.m
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef) local_unnamed_addr #4

declare i8 @_ZNK4llvm12SelectionDAG11getEVTAlignENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr) local_unnamed_addr #2

declare { i16, ptr } @_ZN4llvm3EVT6getEVTEPNS_4TypeEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare { i16, ptr } @_ZN4llvm3EVT19getExtendedVectorVTERNS_11LLVMContextES0_NS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8), i16, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i16 %0, 2                        ; 7 uses
  %i.b = icmp eq i32 %1, 1                        ; 9 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.bb, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %1, 2                        ; 9 uses
  %or.cond3 = and i1 %i.a, %i.c
  br i1 %or.cond3, label %bb.bb, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i32 %1, 4                        ; 9 uses
  %or.cond5 = and i1 %i.a, %i.d
  br i1 %or.cond5, label %bb.bb, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq i32 %1, 8                        ; 9 uses
  %or.cond7 = and i1 %i.a, %i.e
  br i1 %or.cond7, label %bb.bb, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp eq i32 %1, 16                       ; 8 uses
  %or.cond9 = and i1 %i.a, %i.f
  br i1 %or.cond9, label %bb.bb, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = icmp eq i32 %1, 32                       ; 7 uses
  %or.cond11 = and i1 %i.a, %i.g
  br i1 %or.cond11, label %bb.bb, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = icmp eq i32 %1, 64                       ; 2 uses
  %or.cond13 = and i1 %i.a, %i.h
  br i1 %or.cond13, label %bb.bb, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = icmp eq i16 %0, 5                        ; 7 uses
  %or.cond15 = and i1 %i.i, %i.b
  br i1 %or.cond15, label %bb.bb, label %bb.i

bb.i:                                             ; preds = %bb.h
  %or.cond17 = and i1 %i.i, %i.c
  br i1 %or.cond17, label %bb.bb, label %bb.j

bb.j:                                             ; preds = %bb.i
  %or.cond19 = and i1 %i.i, %i.d
  br i1 %or.cond19, label %bb.bb, label %bb.k

bb.k:                                             ; preds = %bb.j
  %or.cond21 = and i1 %i.i, %i.e
  br i1 %or.cond21, label %bb.bb, label %bb.l

bb.l:                                             ; preds = %bb.k
  %or.cond23 = and i1 %i.i, %i.f
  br i1 %or.cond23, label %bb.bb, label %bb.m

bb.m:                                             ; preds = %bb.l
  %or.cond25 = and i1 %i.i, %i.g
  br i1 %or.cond25, label %bb.bb, label %bb.n

bb.n:                                             ; preds = %bb.m
  %or.cond27 = and i1 %i.i, %i.h
  br i1 %or.cond27, label %bb.bb, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.j = icmp eq i16 %0, 6                        ; 6 uses
  %or.cond29 = and i1 %i.j, %i.b
  br i1 %or.cond29, label %bb.bb, label %bb.p

bb.p:                                             ; preds = %bb.o
  %or.cond31 = and i1 %i.j, %i.c
  br i1 %or.cond31, label %bb.bb, label %bb.q

bb.q:                                             ; preds = %bb.p
  %or.cond33 = and i1 %i.j, %i.d
  br i1 %or.cond33, label %bb.bb, label %bb.r

bb.r:                                             ; preds = %bb.q
  %or.cond35 = and i1 %i.j, %i.e
  br i1 %or.cond35, label %bb.bb, label %bb.s

bb.s:                                             ; preds = %bb.r
  %or.cond37 = and i1 %i.j, %i.f
  br i1 %or.cond37, label %bb.bb, label %bb.t

bb.t:                                             ; preds = %bb.s
  %or.cond39 = and i1 %i.j, %i.g
  br i1 %or.cond39, label %bb.bb, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.k = icmp eq i16 %0, 7                        ; 6 uses
  %or.cond41 = and i1 %i.k, %i.b
  br i1 %or.cond41, label %bb.bb, label %bb.v

bb.v:                                             ; preds = %bb.u
  %or.cond43 = and i1 %i.k, %i.c
  br i1 %or.cond43, label %bb.bb, label %bb.w

bb.w:                                             ; preds = %bb.v
  %or.cond45 = and i1 %i.k, %i.d
  br i1 %or.cond45, label %bb.bb, label %bb.x

bb.x:                                             ; preds = %bb.w
  %or.cond47 = and i1 %i.k, %i.e
  br i1 %or.cond47, label %bb.bb, label %bb.y

end_hunk_2
