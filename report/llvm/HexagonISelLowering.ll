Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelLowering?download=true
inline.NumInlined: 5380
inline.NumDeleted: 1748
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZNK4llvm21HexagonTargetLowering23getBuildVectorConstIntsENS_8ArrayRefINS_7SDValueEEENS_3MVTERNS_12SelectionDAGENS_15MutableArrayRefIPNS_11ConstantIntEEE:bb.a
.lr.ph:                                           ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.o = load ptr, ptr %5, align 8                ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = and i64 %2, 4294967295
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_6SDNodeEEEDcPT0_.exit.thread, %_ZNK4llvm8TypeSizecvmEv.exit
  %.019.lcssa = phi i1 [ true, %_ZNK4llvm8TypeSizecvmEv.exit ], [ %.3, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_6SDNodeEEEDcPT0_.exit.thread ]
  ret i1 %.019.lcssa

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_6SDNodeEEEDcPT0_.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_6SDNodeEEEDcPT0_.exit.thread ] ; 5 uses
  %.01938 = phi i1 [ true, %.lr.ph ], [ %.3, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_6SDNodeEEEDcPT0_.exit.thread ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %.sroa.0.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !393 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !410  ; 2 uses
  %i.u = add i32 %i.t, -53
  %spec.select.i.i = icmp ult i32 %i.u, 2
  br i1 %spec.select.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.l, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #25
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store ptr %i.v, ptr %i.w, align 8, !tbaa !624
  br label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

bb.e:                                             ; preds = %bb.c
  switch i32 %i.t, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_6SDNodeEEEDcPT0_.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
    i32 38, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_6SDNodeEEEDcPT0_.exit
    i32 13, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_6SDNodeEEEDcPT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit: ; preds = %bb.e, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %i.z, i32 noundef %i.i) #25
  %i.aa = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeERKNS_5APIntE(ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(12) %6) #25
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !624
  %i.ac = load i32, ptr %i.p, align 8, !tbaa !171
  %i.ad = icmp ugt i32 %i.ac, 64
  br i1 %i.ad, label %bb.f, label %_ZN4llvm5APIntD2Ev.exit

bb.f:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit
  %i.ae = load ptr, ptr %6, align 8, !tbaa !172   ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN4llvm5APIntD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #29
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_6SDNodeEEEDcPT0_.exit, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_6SDNodeEEEDcPT0_.exit: ; preds = %bb.e, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !916
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !172, !noalias !917
  %.not.i = icmp eq ptr %i.aj, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_6SDNodeEEEDcPT0_.exit
  call void @_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #25
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit

bb.i:                                             ; preds = %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_6SDNodeEEEDcPT0_.exit
  call void @_ZNK4llvm6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #25
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit

_ZNK4llvm7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.h, %bb.i
  %i.ak = load i32, ptr %i.n, align 8, !tbaa !171
  %i.al = icmp ult i32 %i.ak, 65
  %i.am = load ptr, ptr %7, align 8
  %spec.select.i = select i1 %i.al, ptr %7, ptr %i.am
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !172
  %i.an = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.l, i64 noundef %.0.i, i1 noundef zeroext false, i1 noundef zeroext false) #25
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !624
  %i.ap = load i32, ptr %i.n, align 8, !tbaa !171
  %i.aq = icmp ugt i32 %i.ap, 64
  br i1 %i.aq, label %bb.j, label %_ZN4llvm5APIntD2Ev.exit25

bb.j:                                             ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit
  %i.ar = load ptr, ptr %7, align 8, !tbaa !172   ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN4llvm5APIntD2Ev.exit25, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #29
  br label %_ZN4llvm5APIntD2Ev.exit25

_ZN4llvm5APIntD2Ev.exit25:                        ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_6SDNodeEEEDcPT0_.exit.thread: ; preds = %bb.e, %_ZN4llvm5APIntD2Ev.exit, %_ZN4llvm5APIntD2Ev.exit25, %bb.d
  %.3 = phi i1 [ %.01938, %bb.d ], [ %.01938, %_ZN4llvm5APIntD2Ev.exit ], [ %.01938, %_ZN4llvm5APIntD2Ev.exit25 ], [ false, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !913
}

declare noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeERKNS_5APIntE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #5

declare void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(518456) %0, ptr nofree readonly captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr noundef nonnull align 8 dereferenceable(920) %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvm::ArrayRef.225", align 8 ; 5 uses
  %7 = alloca %"class.llvm::ArrayRef.225", align 8 ; 5 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %9 = alloca %"class.llvm::SmallVector.597", align 8 ; 11 uses
  %10 = alloca %"class.llvm::MutableArrayRef.595", align 8 ; 3 uses
  %11 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"class.llvm::ArrayRef.225", align 8 ; 3 uses
  %14 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %15 = alloca %"class.llvm::ArrayRef.225", align 8 ; 3 uses
  %16 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %17 = alloca %"class.llvm::ArrayRef.225", align 8 ; 3 uses
  %18 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %19 = alloca %"class.llvm::ArrayRef.225", align 8 ; 3 uses
  %20 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %21 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %i.a = zext i16 %4 to i64
  %i.b = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 -2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !24   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.e, ptr %9, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i32 0, ptr %i.f, align 8, !tbaa !255
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 4, ptr %i.g, align 4, !tbaa !256
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj4EEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %2, 4
  br i1 %i.i, label %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 8) #25
  %.pre.i.i.i = load i32, ptr %i.f, align 8, !tbaa !255
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %2, %.pre13.i.i.i
  %.pre.pre = load ptr, ptr %9, align 8, !tbaa !22 ; 2 uses
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i, %bb.b
  %i.j = phi ptr [ %i.e, %bb.b ], [ %.pre.pre, %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ 0, %bb.b ], [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i ] ; 2 uses
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %.pre-phi.i.i3.i
  %i.l = sub i64 %2, %.pre-phi.i.i3.i
  %i.m = shl i64 %i.l, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.m, i1 false), !tbaa !624
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i
  %.pre = phi ptr [ %i.j, %.lr.ph.preheader.i.i.i ], [ %.pre.pre, %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i ]
  %i.n = trunc i64 %2 to i32                      ; 2 uses
  store i32 %i.n, ptr %i.f, align 8, !tbaa !255
  br label %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj4EEC2Em.exit

_ZN4llvm11SmallVectorIPNS_11ConstantIntELj4EEC2Em.exit: ; preds = %bb.a, %.sink.split.i.i.i
  %i.o = phi i32 [ %i.n, %.sink.split.i.i.i ], [ 0, %bb.a ] ; 5 uses
  %i.p = phi ptr [ %.pre, %.sink.split.i.i.i ], [ %i.e, %bb.a ]
  store ptr %i.p, ptr %10, align 8, !tbaa !627
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.r = zext i32 %i.o to i64
  store i64 %i.r, ptr %i.q, align 8, !tbaa !628
  %i.s = call noundef zeroext i1 @_ZNK4llvm21HexagonTargetLowering23getBuildVectorConstIntsENS_8ArrayRefINS_7SDValueEEENS_3MVTERNS_12SelectionDAGENS_15MutableArrayRefIPNS_11ConstantIntEEE(ptr nonnull align 8 poison, ptr %1, i64 %2, i16 %4, ptr noundef nonnull align 8 dereferenceable(920) %5, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef.595") align 8 %10)
  %.not362 = icmp eq i32 %i.o, 0
  br i1 %.not362, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj4EEC2Em.exit
  %i.t = zext i32 %i.o to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %.sroa.0185.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !393 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0185.0.copyload, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !410  ; 2 uses
  %22 = icmp slt i32 %i.w, 0
  %.0.v.i = select i1 %22, i32 -11, i32 53
  %.0.i = icmp eq i32 %i.w, %.0.v.i
  br i1 %.0.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.t
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !918

._crit_edge:                                      ; preds = %bb.c, %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj4EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.x = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 %4, ptr null) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.t

bb.d:                                             ; preds = %.lr.ph
  %i.y = trunc nuw i64 %indvars.iv to i32
  br i1 %i.s, label %bb.e, label %.thread357

bb.e:                                             ; preds = %bb.d
  %.val = load ptr, ptr %9, align 8, !tbaa !22    ; 6 uses
  %.val258 = load i32, ptr %i.f, align 8, !tbaa !255 ; 3 uses
  %i.z = zext i32 %.val258 to i64                 ; 2 uses
  %.idx1.i = shl nuw nsw i64 %i.z, 3              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx1.i
  %i.ab = lshr i64 %i.z, 2                        ; 2 uses
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.e
  %i.ac = and i64 %.idx1.i, 34359738336
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.val, i64 %i.ac
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i.i
  %.044.i.i.i.i.i = phi i64 [ %i.ap, %bb.i ], [ %i.ab, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.02943.i.i.i.i.i = phi ptr [ %i.ao, %bb.i ], [ %.val, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i = load ptr, ptr %.02943.i.i.i.i.i, align 8, !tbaa !624
  %i.ad = getelementptr i8, ptr %.029.val32.i.i.i.i.i, i64 1
  %.029.val32.val.i.i.i.i.i = load i8, ptr %i.ad, align 1
  %i.ae = icmp sgt i8 %.029.val32.val.i.i.i.i.i, -1
  br i1 %i.ae, label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit", label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 8
  %.val31.i.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !624
  %i.ag = getelementptr i8, ptr %.val31.i.i.i.i.i, i64 1
  %.val31.val.i.i.i.i.i = load i8, ptr %i.ag, align 1
  %i.ah = icmp sgt i8 %.val31.val.i.i.i.i.i, -1
  br i1 %i.ah, label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 16
  %.val30.i.i.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !624
  %i.aj = getelementptr i8, ptr %.val30.i.i.i.i.i, i64 1
  %.val30.val.i.i.i.i.i = load i8, ptr %i.aj, align 1
  %i.ak = icmp sgt i8 %.val30.val.i.i.i.i.i, -1
  br i1 %i.ak, label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit399", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 24
  %.val.i.i.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !624
  %i.am = getelementptr i8, ptr %.val.i.i.i.i.i, i64 1
  %.val.val.i.i.i.i.i = load i8, ptr %i.am, align 1
  %i.an = icmp sgt i8 %.val.val.i.i.i.i.i, -1
  br i1 %i.an, label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit401", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 32
  %i.ap = add nsw i64 %.044.i.i.i.i.i, -1
  %i.aq = icmp sgt i64 %.044.i.i.i.i.i, 1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !919

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.i
  %i.ar = and i32 %.val258, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.e
  %.pre-phi50.i.i.i.i.i = phi i32 [ %i.ar, %._crit_edge.loopexit.i.i.i.i.i ], [ %.val258, %bb.e ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %.val, %bb.e ] ; 5 uses
  switch i32 %.pre-phi50.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread" [
    i32 3, label %bb.j
    i32 2, label %bb.l
    i32 1, label %bb.n
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.029.val.i.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i.i, align 8, !tbaa !624
  %i.as = getelementptr i8, ptr %.029.val.i.i.i.i.i, i64 1
  %.029.val.val.i.i.i.i.i = load i8, ptr %i.as, align 1
  %i.at = icmp sgt i8 %.029.val.val.i.i.i.i.i, -1
  br i1 %i.at, label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.au, %bb.k ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i, align 8, !tbaa !624
  %i.av = getelementptr i8, ptr %.1.val.i.i.i.i.i, i64 1
  %.1.val.val.i.i.i.i.i = load i8, ptr %i.av, align 1
  %i.aw = icmp sgt i8 %.1.val.val.i.i.i.i.i, -1
  br i1 %i.aw, label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.ax, %bb.m ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i, align 8, !tbaa !624
  %i.ay = getelementptr i8, ptr %.2.val.i.i.i.i.i, i64 1
  %.2.val.val.i.i.i.i.i = load i8, ptr %i.ay, align 1
  %i.az = icmp sgt i8 %.2.val.val.i.i.i.i.i, -1
  br i1 %i.az, label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit", label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread"

"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 8
  br label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit399": ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit401": ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 24
  br label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i, %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit399", %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit401", %bb.j, %bb.l, %bb.n
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %bb.l ], [ %.029.lcssa.i.i.i.i.i, %bb.j ], [ %.2.i.i.i.i.i, %bb.n ], [ %i.bc, %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit401" ], [ %i.bb, %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit399" ], [ %i.ba, %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02943.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.bd = icmp eq ptr %i.aa, %.028.i.i.i.i.i
  br i1 %i.bd, label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread", label %bb.o

"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread": ; preds = %bb.n, %._crit_edge.i.i.i.i.i, %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"
  %i.be = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering7getZeroERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr noundef nonnull align 8 dereferenceable(920) %5)
  br label %bb.t

bb.o:                                             ; preds = %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"
  %i.bf = icmp eq i16 %i.d, 5
  br i1 %i.bf, label %bb.q, label %.critedge.thread

.thread357:                                       ; preds = %bb.d
  switch i16 %i.d, label %.thread357.unreachabledefault [
    i16 6, label %.critedge.thread.thread
    i16 13, label %.critedge.thread359
    i16 5, label %.thread
  ]

.thread:                                          ; preds = %.thread357
  %i.bg = icmp eq i16 %i.d, 5
  call void @llvm.assume(i1 %i.bg)
  %.0246372 = add i32 %i.y, 1                     ; 2 uses
  %.not249373 = icmp eq i32 %.0246372, %i.o
  %.sroa.290.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.290.0.copyload.pre = load i32, ptr %.sroa.290.0..sroa_idx.phi.trans.insert, align 8 ; 2 uses
  br i1 %.not249373, label %.critedge257, label %.lr.ph375

.critedge.thread:                                 ; preds = %bb.o
  %i.bh = load ptr, ptr %.val, align 8, !tbaa !624 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !171
  %i.bl = icmp ult i32 %i.bk, 65
  %i.bm = load ptr, ptr %i.bi, align 8
  %spec.select.i.i = select i1 %i.bl, ptr %i.bi, ptr %i.bm
  %.0.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !172
  %i.bn = and i64 %.0.i.i, 65535
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !624 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !171
  %i.bt = icmp ult i32 %i.bs, 65
  %i.bu = load ptr, ptr %i.bq, align 8
  %spec.select.i.i259 = select i1 %i.bt, ptr %i.bq, ptr %i.bu
  %.0.i.i260 = load i64, ptr %spec.select.i.i259, align 8, !tbaa !172
  %i.bv = shl i64 %.0.i.i260, 16
  %.masked253 = and i64 %i.bv, 4294901760
  %i.bw = or disjoint i64 %.masked253, %i.bn
  %i.bx = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %5, i64 noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract167 = extractvalue { ptr, i32 } %i.bx, 0
  %.fca.1.extract168 = extractvalue { ptr, i32 } %i.bx, 1
  %i.by = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %4, ptr null, ptr %.fca.0.extract167, i32 %.fca.1.extract168) #25
  br label %bb.t

.critedge.thread359:                              ; preds = %.thread357
  %.sroa.0155.0.copyload = load ptr, ptr %1, align 8, !tbaa !393
  %.sroa.2156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2156.0.copyload = load i32, ptr %.sroa.2156.0..sroa_idx, align 8, !tbaa !150
  %i.bz = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 6, ptr null, ptr %.sroa.0155.0.copyload, i32 %.sroa.2156.0.copyload) #25 ; 2 uses
  %.fca.0.extract151 = extractvalue { ptr, i32 } %i.bz, 0
  %.fca.1.extract152 = extractvalue { ptr, i32 } %i.bz, 1
  %i.ca = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, ptr %.fca.0.extract151, i32 %.fca.1.extract152, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null) #25 ; 2 uses
  %.fca.0.extract147 = extractvalue { ptr, i32 } %i.ca, 0
  %.fca.1.extract148 = extractvalue { ptr, i32 } %i.ca, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0139.0.copyload = load ptr, ptr %i.cb, align 8, !tbaa !393
  %.sroa.2140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2140.0.copyload = load i32, ptr %.sroa.2140.0..sroa_idx, align 8, !tbaa !150
  %i.cc = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 6, ptr null, ptr %.sroa.0139.0.copyload, i32 %.sroa.2140.0.copyload) #25 ; 2 uses
  %.fca.0.extract135 = extractvalue { ptr, i32 } %i.cc, 0
  %.fca.1.extract136 = extractvalue { ptr, i32 } %i.cc, 1
  %i.cd = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, ptr %.fca.0.extract135, i32 %.fca.1.extract136, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null) #25 ; 2 uses
  %.fca.0.extract131 = extractvalue { ptr, i32 } %i.cd, 0
  %.fca.1.extract132 = extractvalue { ptr, i32 } %i.cd, 1
  br label %bb.p

.critedge.thread.thread:                          ; preds = %.thread357
  %.sroa.0318.0.copyload = load ptr, ptr %1, align 8, !tbaa !393
  %.sroa.6320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6320.0.copyload = load i32, ptr %.sroa.6320.0..sroa_idx, align 8, !tbaa !150
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0314.0.copyload = load ptr, ptr %i.ce, align 8, !tbaa !393
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !150
  br label %bb.p

bb.p:                                             ; preds = %.critedge.thread.thread, %.critedge.thread359
  %.sroa.0314.0 = phi ptr [ %.fca.0.extract131, %.critedge.thread359 ], [ %.sroa.0314.0.copyload, %.critedge.thread.thread ]
  %.sroa.6.0 = phi i32 [ %.fca.1.extract132, %.critedge.thread359 ], [ %.sroa.6.0.copyload, %.critedge.thread.thread ]
  %.sroa.0318.0 = phi ptr [ %.fca.0.extract147, %.critedge.thread359 ], [ %.sroa.0318.0.copyload, %.critedge.thread.thread ]
  %.sroa.6320.0 = phi i32 [ %.fca.1.extract148, %.critedge.thread359 ], [ %.sroa.6320.0.copyload, %.critedge.thread.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  store ptr %.sroa.0314.0, ptr %11, align 8, !tbaa !393
  %.sroa.6.0..sroa_idx316 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx316, align 8, !tbaa !150
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %.sroa.0318.0, ptr %i.cf, align 8, !tbaa !393
  %.sroa.6320.0..sroa_idx321 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 %.sroa.6320.0, ptr %.sroa.6320.0..sroa_idx321, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %11, ptr %7, align 8, !tbaa !619
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !416
  %i.cg = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 973, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.ch = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %4, ptr null, ptr %i.cg, i32 0) #25
  br label %bb.t

.thread357.unreachabledefault:                    ; preds = %.thread357
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ci = load ptr, ptr %9, align 8, !tbaa !22    ; 4 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !624 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !171
  %i.cn = icmp ult i32 %i.cm, 65
  %i.co = load ptr, ptr %i.ck, align 8
  %spec.select.i.i261 = select i1 %i.cn, ptr %i.ck, ptr %i.co
  %.0.i.i262 = load i64, ptr %spec.select.i.i261, align 8, !tbaa !172
  %i.cp = and i64 %.0.i.i262, 255
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !624 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !171
  %i.cv = icmp ult i32 %i.cu, 65
  %i.cw = load ptr, ptr %i.cs, align 8
  %spec.select.i.i263 = select i1 %i.cv, ptr %i.cs, ptr %i.cw
  %.0.i.i264 = load i64, ptr %spec.select.i.i263, align 8, !tbaa !172
  %i.cx = shl i64 %.0.i.i264, 8
  %i.cy = and i64 %i.cx, 65280
  %i.cz = or disjoint i64 %i.cy, %i.cp
  %i.da = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !624 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !171
  %i.df = icmp ult i32 %i.de, 65
  %i.dg = load ptr, ptr %i.dc, align 8
  %spec.select.i.i265 = select i1 %i.df, ptr %i.dc, ptr %i.dg
  %.0.i.i266 = load i64, ptr %spec.select.i.i265, align 8, !tbaa !172
  %i.dh = shl i64 %.0.i.i266, 16
  %i.di = and i64 %i.dh, 16711680
  %i.dj = or disjoint i64 %i.cz, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !624 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !171
  %i.dp = icmp ult i32 %i.do, 65
  %i.dq = load ptr, ptr %i.dm, align 8
  %spec.select.i.i267 = select i1 %i.dp, ptr %i.dm, ptr %i.dq
  %.0.i.i268 = load i64, ptr %spec.select.i.i267, align 8, !tbaa !172
  %i.dr = shl i64 %.0.i.i268, 24
  %.masked = and i64 %i.dr, 4278190080
  %i.ds = or disjoint i64 %i.dj, %.masked
  %i.dt = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %5, i64 noundef %i.ds, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract107 = extractvalue { ptr, i32 } %i.dt, 0
  %.fca.1.extract108 = extractvalue { ptr, i32 } %i.dt, 1
  %i.du = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 43, ptr null, ptr %.fca.0.extract107, i32 %.fca.1.extract108) #25
  br label %bb.t

.lr.ph375:                                        ; preds = %.thread, %bb.s
  %.0246374 = phi i32 [ %.0246, %bb.s ], [ %.0246372, %.thread ] ; 2 uses
  %i.dv = zext i32 %.0246374 to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.dv ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !166 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %.sroa.0185.0.copyload
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ea = load i32, ptr %i.dz, align 8
  %i.eb = icmp eq i32 %i.ea, %.sroa.290.0.copyload.pre
  %i.ec = select i1 %i.dy, i1 %i.eb, i1 false
  br i1 %i.ec, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph375
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !410 ; 2 uses
  %23 = icmp slt i32 %i.ee, 0
  %.0.v.i269 = select i1 %23, i32 -11, i32 53
  %.0.i270 = icmp eq i32 %i.ee, %.0.v.i269
  br i1 %.0.i270, label %bb.s, label %.preheader.preheader

bb.s:                                             ; preds = %.lr.ph375, %bb.r
  %.0246 = add i32 %.0246374, 1                   ; 2 uses
  %.not249 = icmp eq i32 %.0246, %i.o
  br i1 %.not249, label %.critedge257, label %.lr.ph375, !llvm.loop !920

.critedge257:                                     ; preds = %bb.s, %.thread
  %i.ef = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, ptr %.sroa.0185.0.copyload, i32 %.sroa.290.0.copyload.pre, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null) #25 ; 2 uses
  %.fca.0.extract85 = extractvalue { ptr, i32 } %i.ef, 0
  %.fca.1.extract86 = extractvalue { ptr, i32 } %i.ef, 1
  store ptr %.fca.0.extract85, ptr %12, align 8, !tbaa !393
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract86, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !150
  %i.eg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 175, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12) #25
  br label %bb.t

.preheader.preheader:                             ; preds = %bb.r
  %.sroa.069.0.copyload = load ptr, ptr %1, align 8, !tbaa !393
  %.sroa.270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.270.0.copyload = load i32, ptr %.sroa.270.0..sroa_idx, align 8, !tbaa !150
  %i.eh = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, ptr %.sroa.069.0.copyload, i32 %.sroa.270.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null) #25 ; 2 uses
  %.fca.0.extract65 = extractvalue { ptr, i32 } %i.eh, 0
  %.fca.1.extract66 = extractvalue { ptr, i32 } %i.eh, 1
  %i.ei = call { ptr, i32 } @_ZN4llvm12SelectionDAG18getZeroExtendInRegENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, ptr %.fca.0.extract65, i32 %.fca.1.extract66, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 5, ptr null) #25 ; 2 uses
  %.fca.0.extract55 = extractvalue { ptr, i32 } %i.ei, 0
  %.fca.1.extract56 = extractvalue { ptr, i32 } %i.ei, 1
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.069.0.copyload.1 = load ptr, ptr %i.ej, align 8, !tbaa !393
  %.sroa.270.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.270.0.copyload.1 = load i32, ptr %.sroa.270.0..sroa_idx.1, align 8, !tbaa !150
  %i.ek = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, ptr %.sroa.069.0.copyload.1, i32 %.sroa.270.0.copyload.1, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null) #25 ; 2 uses
  %.fca.0.extract65.1 = extractvalue { ptr, i32 } %i.ek, 0
  %.fca.1.extract66.1 = extractvalue { ptr, i32 } %i.ek, 1
  %i.el = call { ptr, i32 } @_ZN4llvm12SelectionDAG18getZeroExtendInRegENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, ptr %.fca.0.extract65.1, i32 %.fca.1.extract66.1, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 5, ptr null) #25 ; 2 uses
  %.fca.0.extract55.1 = extractvalue { ptr, i32 } %i.el, 0
  %.fca.1.extract56.1 = extractvalue { ptr, i32 } %i.el, 1
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.069.0.copyload.2 = load ptr, ptr %i.em, align 8, !tbaa !393
  %.sroa.270.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.270.0.copyload.2 = load i32, ptr %.sroa.270.0..sroa_idx.2, align 8, !tbaa !150
  %i.en = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, ptr %.sroa.069.0.copyload.2, i32 %.sroa.270.0.copyload.2, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null) #25 ; 2 uses
  %.fca.0.extract65.2 = extractvalue { ptr, i32 } %i.en, 0
  %.fca.1.extract66.2 = extractvalue { ptr, i32 } %i.en, 1
  %i.eo = call { ptr, i32 } @_ZN4llvm12SelectionDAG18getZeroExtendInRegENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, ptr %.fca.0.extract65.2, i32 %.fca.1.extract66.2, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 5, ptr null) #25 ; 2 uses
  %.fca.0.extract55.2 = extractvalue { ptr, i32 } %i.eo, 0
  %.fca.1.extract56.2 = extractvalue { ptr, i32 } %i.eo, 1
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.069.0.copyload.3 = load ptr, ptr %i.ep, align 8, !tbaa !393
  %.sroa.270.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.270.0.copyload.3 = load i32, ptr %.sroa.270.0..sroa_idx.3, align 8, !tbaa !150
  %i.eq = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, ptr %.sroa.069.0.copyload.3, i32 %.sroa.270.0.copyload.3, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null) #25 ; 2 uses
  %.fca.0.extract65.3 = extractvalue { ptr, i32 } %i.eq, 0
  %.fca.1.extract66.3 = extractvalue { ptr, i32 } %i.eq, 1
  %i.er = call { ptr, i32 } @_ZN4llvm12SelectionDAG18getZeroExtendInRegENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, ptr %.fca.0.extract65.3, i32 %.fca.1.extract66.3, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 5, ptr null) #25 ; 2 uses
  %.fca.0.extract55.3 = extractvalue { ptr, i32 } %i.er, 0
  %.fca.1.extract56.3 = extractvalue { ptr, i32 } %i.er, 1
  %i.es = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %5, i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract45 = extractvalue { ptr, i32 } %i.es, 0 ; 2 uses
  %.fca.1.extract46 = extractvalue { ptr, i32 } %i.es, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  store ptr %.fca.0.extract55.1, ptr %14, align 8, !tbaa !393
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract56.1, ptr %.sroa.13.16..sroa_idx, align 8, !tbaa !150
  %i.et = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %.fca.0.extract45, ptr %i.et, align 8, !tbaa !393
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.fca.1.extract46, ptr %.sroa.551.0..sroa_idx, align 8, !tbaa !150
  store ptr %14, ptr %13, align 8, !tbaa !397
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 2, ptr %i.eu, align 8, !tbaa !398
  %i.ev = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %13) #25 ; 2 uses
  %.fca.0.extract36 = extractvalue { ptr, i32 } %i.ev, 0
  %.fca.1.extract37 = extractvalue { ptr, i32 } %i.ev, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  store ptr %.fca.0.extract55.3, ptr %16, align 8, !tbaa !393
  %.sroa.27.48..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract56.3, ptr %.sroa.27.48..sroa_idx, align 8, !tbaa !150
  %i.ew = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %.fca.0.extract45, ptr %i.ew, align 8, !tbaa !393
  %.sroa.551.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 %.fca.1.extract46, ptr %.sroa.551.0..sroa_idx52, align 8, !tbaa !150
  store ptr %16, ptr %15, align 8, !tbaa !397
  %i.ex = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 2, ptr %i.ex, align 8, !tbaa !398
  %i.ey = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %15) #25 ; 2 uses
  %.fca.0.extract27 = extractvalue { ptr, i32 } %i.ey, 0
  %.fca.1.extract28 = extractvalue { ptr, i32 } %i.ey, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  store ptr %.fca.0.extract55, ptr %18, align 8, !tbaa !393
  %.sroa.6.0..sroa_idx386 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract56, ptr %.sroa.6.0..sroa_idx386, align 8, !tbaa !150
  %i.ez = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %.fca.0.extract36, ptr %i.ez, align 8, !tbaa !393
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i32 %.fca.1.extract37, ptr %.sroa.443.0..sroa_idx, align 8, !tbaa !150
  store ptr %18, ptr %17, align 8, !tbaa !397
  %i.fa = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 2, ptr %i.fa, align 8, !tbaa !398
  %i.fb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 194, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %17) #25 ; 2 uses
  %.fca.0.extract18 = extractvalue { ptr, i32 } %i.fb, 0
  %.fca.1.extract19 = extractvalue { ptr, i32 } %i.fb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  store ptr %.fca.0.extract55.2, ptr %20, align 8, !tbaa !393
  %.sroa.20.32..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %.fca.1.extract56.2, ptr %.sroa.20.32..sroa_idx, align 8, !tbaa !150
  %i.fc = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %.fca.0.extract27, ptr %i.fc, align 8, !tbaa !393
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i32 %.fca.1.extract28, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !150
  store ptr %20, ptr %19, align 8, !tbaa !397
  %i.fd = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 2, ptr %i.fd, align 8, !tbaa !398
  %i.fe = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 194, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %19) #25 ; 2 uses
  %.fca.0.extract10 = extractvalue { ptr, i32 } %i.fe, 0
  %.fca.1.extract11 = extractvalue { ptr, i32 } %i.fe, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  store ptr %.fca.0.extract10, ptr %21, align 8, !tbaa !393
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %.fca.1.extract11, ptr %.sroa.417.0..sroa_idx, align 8, !tbaa !150
  %i.ff = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %.fca.0.extract18, ptr %i.ff, align 8, !tbaa !393
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 24
  store i32 %.fca.1.extract19, ptr %.sroa.425.0..sroa_idx, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %21, ptr %6, align 8, !tbaa !619
  %.sroa.2.0..sroa_idx.i271 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 2, ptr %.sroa.2.0..sroa_idx.i271, align 8, !tbaa !416
  %i.fg = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 973, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  %i.fh = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 43, ptr null, ptr %i.fg, i32 0) #25
  br label %bb.t

bb.t:                                             ; preds = %.critedge257, %.preheader.preheader, %bb.q, %bb.p, %.critedge.thread, %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread", %._crit_edge
  %.pn254 = phi { ptr, i32 } [ %i.x, %._crit_edge ], [ %i.be, %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj4EEEZNKS_21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread" ], [ %i.by, %.critedge.thread ], [ %i.ch, %bb.p ], [ %i.du, %bb.q ], [ %i.eg, %.critedge257 ], [ %i.fh, %.preheader.preheader ]
  %i.fi = load ptr, ptr %9, align 8, !tbaa !22    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.e
  br i1 %i.fj, label %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj4EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.fi) #25
  br label %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_11ConstantIntELj4EED2Ev.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  ret { ptr, i32 } %.pn254
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering7getZeroERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = add i16 %2, -19
  %spec.select.i = icmp ult i16 %i.a, 197
  br i1 %spec.select.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i16 %2 to i64
  %i.c = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.b ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.c, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.d = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.d, label %bb.c, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.102) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.c, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 16
  %i.f = trunc i64 %.sroa.0.0.copyload.i to i32   ; 3 uses
  %i.g = icmp ult i32 %i.f, 65
  br i1 %i.g, label %_ZN4llvm3MVT12getIntegerVTEj.exit, label %bb.d

_ZN4llvm3MVT12getIntegerVTEj.exit:                ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.h = tail call range(i32 0, 8) i32 @llvm.ctpop.i32(i32 %i.f)
  %i.i = icmp eq i32 %i.h, 1
  %i.j = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.f, i1 true)
  %switch.idx.cast.i = trunc nuw nsw i32 %i.j to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 2
  %.sroa.0.0.i = select i1 %i.i, i16 %switch.offset.i, i16 0
  %i.k = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %.sroa.0.0.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract20 = extractvalue { ptr, i32 } %i.k, 0
  %.fca.1.extract21 = extractvalue { ptr, i32 } %i.k, 1
  %i.l = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %2, ptr null, ptr %.fca.0.extract20, i32 %.fca.1.extract21) #25
  br label %common.ret70

common.ret70:                                     ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit, %bb.g, %bb.f, %bb.d
  %common.ret70.op = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.l, %_ZN4llvm3MVT12getIntegerVTEj.exit ], [ %i.r, %bb.g ], [ %i.p, %bb.f ]
  ret { ptr, i32 } %common.ret70.op

bb.d:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.m = tail call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering7getZeroERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 7, ptr noundef nonnull align 8 dereferenceable(920) %3) ; 2 uses
  %.fca.0.extract11 = extractvalue { ptr, i32 } %i.m, 0
  %.fca.1.extract12 = extractvalue { ptr, i32 } %i.m, 1
  store ptr %.fca.0.extract11, ptr %4, align 8
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract12, ptr %.sroa.214.0..sroa_idx, align 8
  %i.n = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 175, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %2, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4) #25
  br label %common.ret70

bb.e:                                             ; preds = %bb.a
  %i.o = add i16 %2, -2
  %or.cond.i = icmp ult i16 %i.o, 10
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %2, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25
  br label %common.ret70

bb.g:                                             ; preds = %bb.e
  %i.q = add i16 %2, -12
  %or.cond.i48 = icmp ult i16 %i.q, 7
  tail call void @llvm.assume(i1 %or.cond.i48)
  %i.r = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPEdRKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %3, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %2, ptr null, i1 noundef zeroext false) #25
  br label %common.ret70
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG18getZeroExtendInRegENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(518456) %0, ptr nofree readonly captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr noundef nonnull align 8 dereferenceable(920) %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.604", align 8 ; 11 uses
  %8 = alloca %"class.llvm::MutableArrayRef.595", align 8 ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = zext i16 %4 to i64
  %i.b = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 -2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !24   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i32 0, ptr %i.f, align 8, !tbaa !255
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 8, ptr %i.g, align 4, !tbaa !256
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj8EEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %2, 8
  br i1 %i.i, label %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 8) #25
  %.pre.i.i.i = load i32, ptr %i.f, align 8, !tbaa !255
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %2, %.pre13.i.i.i
  %.pre.pre = load ptr, ptr %7, align 8, !tbaa !22 ; 2 uses
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i, %bb.b
  %i.j = phi ptr [ %i.e, %bb.b ], [ %.pre.pre, %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ 0, %bb.b ], [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i ] ; 2 uses
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %.pre-phi.i.i3.i
  %i.l = sub i64 %2, %.pre-phi.i.i3.i
  %i.m = shl i64 %i.l, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.m, i1 false), !tbaa !624
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i
  %.pre = phi ptr [ %i.j, %.lr.ph.preheader.i.i.i ], [ %.pre.pre, %_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEE7reserveEm.exit.i.i.i ]
  %i.n = trunc i64 %2 to i32                      ; 2 uses
  store i32 %i.n, ptr %i.f, align 8, !tbaa !255
  br label %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj8EEC2Em.exit

_ZN4llvm11SmallVectorIPNS_11ConstantIntELj8EEC2Em.exit: ; preds = %bb.a, %.sink.split.i.i.i
  %i.o = phi i32 [ %i.n, %.sink.split.i.i.i ], [ 0, %bb.a ] ; 13 uses
  %i.p = phi ptr [ %.pre, %.sink.split.i.i.i ], [ %i.e, %bb.a ]
  store ptr %i.p, ptr %8, align 8, !tbaa !627
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.r = zext i32 %i.o to i64
  store i64 %i.r, ptr %i.q, align 8, !tbaa !628
  %i.s = call noundef zeroext i1 @_ZNK4llvm21HexagonTargetLowering23getBuildVectorConstIntsENS_8ArrayRefINS_7SDValueEEENS_3MVTERNS_12SelectionDAGENS_15MutableArrayRefIPNS_11ConstantIntEEE(ptr nonnull align 8 poison, ptr %1, i64 %2, i16 %4, ptr noundef nonnull align 8 dereferenceable(920) %5, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef.595") align 8 %8) ; 2 uses
  %.not209 = icmp eq i32 %i.o, 0
  br i1 %.not209, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj8EEC2Em.exit
  %i.t = zext i32 %i.o to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %.sroa.096.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !393 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.096.0.copyload, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !410  ; 2 uses
  %10 = icmp slt i32 %i.w, 0
  %.0.v.i = select i1 %10, i32 -11, i32 53
  %.0.i = icmp eq i32 %i.w, %.0.v.i
  br i1 %.0.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.t
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !921

._crit_edge:                                      ; preds = %bb.c, %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj8EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.x = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %4, ptr null) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ab

bb.d:                                             ; preds = %.lr.ph
  %i.y = trunc nuw i64 %indvars.iv to i32
  br i1 %i.s, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %.val = load ptr, ptr %7, align 8, !tbaa !22    ; 4 uses
  %.val150 = load i32, ptr %i.f, align 8, !tbaa !255 ; 3 uses
  %i.z = zext i32 %.val150 to i64                 ; 2 uses
  %.idx1.i = shl nuw nsw i64 %i.z, 3              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx1.i
  %i.ab = lshr i64 %i.z, 2                        ; 2 uses
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.e
  %i.ac = and i64 %.idx1.i, 34359738336
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.val, i64 %i.ac
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i.i
  %.044.i.i.i.i.i = phi i64 [ %i.ap, %bb.i ], [ %i.ab, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.02943.i.i.i.i.i = phi ptr [ %i.ao, %bb.i ], [ %.val, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i = load ptr, ptr %.02943.i.i.i.i.i, align 8, !tbaa !624
  %i.ad = getelementptr i8, ptr %.029.val32.i.i.i.i.i, i64 1
  %.029.val32.val.i.i.i.i.i = load i8, ptr %i.ad, align 1
  %i.ae = icmp sgt i8 %.029.val32.val.i.i.i.i.i, -1
  br i1 %i.ae, label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit", label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 8
  %.val31.i.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !624
  %i.ag = getelementptr i8, ptr %.val31.i.i.i.i.i, i64 1
  %.val31.val.i.i.i.i.i = load i8, ptr %i.ag, align 1
  %i.ah = icmp sgt i8 %.val31.val.i.i.i.i.i, -1
  br i1 %i.ah, label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 16
  %.val30.i.i.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !624
  %i.aj = getelementptr i8, ptr %.val30.i.i.i.i.i, i64 1
  %.val30.val.i.i.i.i.i = load i8, ptr %i.aj, align 1
  %i.ak = icmp sgt i8 %.val30.val.i.i.i.i.i, -1
  br i1 %i.ak, label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit242", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 24
  %.val.i.i.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !624
  %i.am = getelementptr i8, ptr %.val.i.i.i.i.i, i64 1
  %.val.val.i.i.i.i.i = load i8, ptr %i.am, align 1
  %i.an = icmp sgt i8 %.val.val.i.i.i.i.i, -1
  br i1 %i.an, label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit244", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 32
  %i.ap = add nsw i64 %.044.i.i.i.i.i, -1
  %i.aq = icmp sgt i64 %.044.i.i.i.i.i, 1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !922

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.i
  %i.ar = and i32 %.val150, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.e
  %.pre-phi50.i.i.i.i.i = phi i32 [ %i.ar, %._crit_edge.loopexit.i.i.i.i.i ], [ %.val150, %bb.e ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %.val, %bb.e ] ; 5 uses
  switch i32 %.pre-phi50.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread" [
    i32 3, label %bb.j
    i32 2, label %bb.l
    i32 1, label %bb.n
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.029.val.i.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i.i, align 8, !tbaa !624
  %i.as = getelementptr i8, ptr %.029.val.i.i.i.i.i, i64 1
  %.029.val.val.i.i.i.i.i = load i8, ptr %i.as, align 1
  %i.at = icmp sgt i8 %.029.val.val.i.i.i.i.i, -1
  br i1 %i.at, label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.au, %bb.k ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i, align 8, !tbaa !624
  %i.av = getelementptr i8, ptr %.1.val.i.i.i.i.i, i64 1
  %.1.val.val.i.i.i.i.i = load i8, ptr %i.av, align 1
  %i.aw = icmp sgt i8 %.1.val.val.i.i.i.i.i, -1
  br i1 %i.aw, label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.ax, %bb.m ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i, align 8, !tbaa !624
  %i.ay = getelementptr i8, ptr %.2.val.i.i.i.i.i, i64 1
  %.2.val.val.i.i.i.i.i = load i8, ptr %i.ay, align 1
  %i.az = icmp sgt i8 %.2.val.val.i.i.i.i.i, -1
  br i1 %i.az, label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit", label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread"

"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 8
  br label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit242": ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit244": ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 24
  br label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i, %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit242", %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit244", %bb.j, %bb.l, %bb.n
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %bb.l ], [ %.029.lcssa.i.i.i.i.i, %bb.j ], [ %.2.i.i.i.i.i, %bb.n ], [ %i.bc, %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit244" ], [ %i.bb, %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit242" ], [ %i.ba, %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02943.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.bd = icmp eq ptr %i.aa, %.028.i.i.i.i.i
  br i1 %i.bd, label %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread", label %bb.o

"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread": ; preds = %bb.n, %._crit_edge.i.i.i.i.i, %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit"
  %i.be = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering7getZeroERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr noundef nonnull align 8 dereferenceable(920) %5)
  br label %bb.ab

bb.o:                                             ; preds = %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit", %bb.d
  switch i16 %i.d, label %.loopexit [
    i16 6, label %.critedge
    i16 13, label %.critedge
  ]

.critedge:                                        ; preds = %bb.o, %bb.o
  %.0142219 = add i32 %i.y, 1                     ; 2 uses
  %.not146.not220 = icmp eq i32 %.0142219, %i.o
  br i1 %.not146.not220, label %.critedge149, label %.lr.ph222

.lr.ph222:                                        ; preds = %.critedge
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bg = load i32, ptr %i.bf, align 8
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph222, %bb.r
  %.0142221 = phi i32 [ %.0142219, %.lr.ph222 ], [ %.0142, %bb.r ] ; 2 uses
  %i.bh = zext i32 %.0142221 to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.bh ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !166 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %.sroa.096.0.copyload
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = icmp eq i32 %i.bm, %i.bg
  %i.bo = select i1 %i.bk, i1 %i.bn, i1 false
  br i1 %i.bo, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !410 ; 2 uses
  %11 = icmp slt i32 %i.bq, 0
  %.0.v.i151 = select i1 %11, i32 -11, i32 53
  %.0.i152 = icmp eq i32 %i.bq, %.0.v.i151
  br i1 %.0.i152, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.p, %bb.q
  %.0142 = add i32 %.0142221, 1                   ; 2 uses
  %.not146.not = icmp eq i32 %.0142, %i.o
  br i1 %.not146.not, label %.critedge149, label %bb.p, !llvm.loop !923

.critedge149:                                     ; preds = %bb.r, %.critedge
  %i.br = icmp eq i16 %i.d, 13
  %.sroa.272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.272.0.copyload = load i32, ptr %.sroa.272.0..sroa_idx, align 8, !tbaa !150 ; 2 uses
  br i1 %i.br, label %bb.s, label %.thread197

bb.s:                                             ; preds = %.critedge149
  %i.bs = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 6, ptr null, ptr %.sroa.096.0.copyload, i32 %.sroa.272.0.copyload) #25 ; 2 uses
  %.fca.0.extract67 = extractvalue { ptr, i32 } %i.bs, 0
  %.fca.1.extract68 = extractvalue { ptr, i32 } %i.bs, 1
  br label %.thread197

.thread197:                                       ; preds = %.critedge149, %bb.s
  %.sroa.074.0 = phi ptr [ %.fca.0.extract67, %bb.s ], [ %.sroa.096.0.copyload, %.critedge149 ]
  %.sroa.575.0 = phi i32 [ %.fca.1.extract68, %bb.s ], [ %.sroa.272.0.copyload, %.critedge149 ]
  %i.bt = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, ptr %.sroa.074.0, i32 %.sroa.575.0, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null) #25 ; 2 uses
  %.fca.0.extract57 = extractvalue { ptr, i32 } %i.bt, 0
  %.fca.1.extract58 = extractvalue { ptr, i32 } %i.bt, 1
  store ptr %.fca.0.extract57, ptr %9, align 8, !tbaa !393
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract58, ptr %.sroa.465.0..sroa_idx, align 8, !tbaa !150
  %i.bu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 175, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #25
  br label %bb.ab

.loopexit:                                        ; preds = %bb.q, %bb.o
  br i1 %i.s, label %bb.t, label %bb.x

bb.t:                                             ; preds = %.loopexit
  %i.bv = zext i16 %i.d to i64
  %i.bw = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bv ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.bw, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bx = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.bx, label %bb.u, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.102) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.t
  %i.by = getelementptr i8, ptr %i.bw, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.by, align 16
  %i.bz = and i64 %.sroa.0.0.copyload.i, 4294967295 ; 4 uses
  %notmask = shl nsw i64 -1, %i.bz
  %i.ca = xor i64 %notmask, -1                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !22    ; 3 uses
  %xtraiter = and i32 %i.o, 1
  %i.cc = icmp eq i32 %i.o, 1
  br i1 %i.cc, label %.epil.preheader, label %_ZNK4llvm8TypeSizecvmEv.exit.new

_ZNK4llvm8TypeSizecvmEv.exit.new:                 ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %unroll_iter = and i32 %i.o, -2
  br label %bb.w

.unr-lcssa:                                       ; preds = %bb.w
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.v, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %_ZNK4llvm8TypeSizecvmEv.exit
  %indvars.iv231.epil.init = phi i64 [ 0, %_ZNK4llvm8TypeSizecvmEv.exit ], [ %indvars.iv.next232.1, %.unr-lcssa ]
  %.0143224.epil.init = phi i64 [ 0, %_ZNK4llvm8TypeSizecvmEv.exit ], [ %i.du, %.unr-lcssa ]
  %lcmp.mod267 = trunc i32 %i.o to i1
  call void @llvm.assume(i1 %lcmp.mod267)
  %i.cd = shl i64 %.0143224.epil.init, %i.bz
  %i.ce = trunc nuw i64 %indvars.iv231.epil.init to i32
  %i.cf = xor i32 %i.ce, -1
  %i.cg = add i32 %i.o, %i.cf
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !624 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !171
  %i.cn = icmp ult i32 %i.cm, 65
  %i.co = load ptr, ptr %i.ck, align 8
  %spec.select.i.i.epil = select i1 %i.cn, ptr %i.ck, ptr %i.co
  %.0.i.i.epil = load i64, ptr %spec.select.i.i.epil, align 8, !tbaa !172
  %i.cp = and i64 %.0.i.i.epil, %i.ca
  %i.cq = or i64 %i.cp, %i.cd
  br label %bb.v

bb.v:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.du, %.unr-lcssa ], [ %i.cq, %.epil.preheader ]
  %i.cr = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %5, i64 noundef %.lcssa, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 8, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract36 = extractvalue { ptr, i32 } %i.cr, 0
  %.fca.1.extract37 = extractvalue { ptr, i32 } %i.cr, 1
  %i.cs = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %4, ptr null, ptr %.fca.0.extract36, i32 %.fca.1.extract37) #25
  br label %bb.ab

bb.w:                                             ; preds = %bb.w, %_ZNK4llvm8TypeSizecvmEv.exit.new
  %indvars.iv231 = phi i64 [ 0, %_ZNK4llvm8TypeSizecvmEv.exit.new ], [ %indvars.iv.next232.1, %bb.w ] ; 3 uses
  %.0143224 = phi i64 [ 0, %_ZNK4llvm8TypeSizecvmEv.exit.new ], [ %i.du, %bb.w ]
  %niter = phi i32 [ 0, %_ZNK4llvm8TypeSizecvmEv.exit.new ], [ %niter.next.1, %bb.w ]
  %i.ct = shl i64 %.0143224, %i.bz
  %i.cu = trunc nuw i64 %indvars.iv231 to i32
  %i.cv = xor i32 %i.cu, -1
  %i.cw = add i32 %i.o, %i.cv
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !624 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !171
  %i.dd = icmp ult i32 %i.dc, 65
  %i.de = load ptr, ptr %i.da, align 8
  %spec.select.i.i = select i1 %i.dd, ptr %i.da, ptr %i.de
  %.0.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !172
  %i.df = and i64 %.0.i.i, %i.ca
  %i.dg = or i64 %i.df, %i.ct
  %i.dh = shl i64 %i.dg, %i.bz
  %i.di = trunc i64 %indvars.iv231 to i32
  %i.dj = xor i32 %i.di, -2
  %i.dk = add i32 %i.o, %i.dj
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !624 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !171
  %i.dr = icmp ult i32 %i.dq, 65
  %i.ds = load ptr, ptr %i.do, align 8
  %spec.select.i.i.1 = select i1 %i.dr, ptr %i.do, ptr %i.ds
  %.0.i.i.1 = load i64, ptr %spec.select.i.i.1, align 8, !tbaa !172
  %i.dt = and i64 %.0.i.i.1, %i.ca
  %i.du = or i64 %i.dt, %i.dh                     ; 3 uses
  %indvars.iv.next232.1 = add nuw nsw i64 %indvars.iv231, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.w, !llvm.loop !924

bb.x:                                             ; preds = %.loopexit
  %i.dv = lshr i32 %i.o, 1                        ; 2 uses
  %i.dw = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.d, i32 noundef %i.dv) ; 2 uses
  %i.dx = icmp eq i16 %i.d, 7
  br i1 %i.dx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.sroa.022.0.copyload = load ptr, ptr %1, align 8, !tbaa !393
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.523.0.copyload = load i32, ptr %.sroa.523.0..sroa_idx, align 8, !tbaa !150
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.014.0.copyload = load ptr, ptr %i.dy, align 8, !tbaa !393
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !150
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.dz = zext nneg i32 %i.dv to i64              ; 3 uses
  %..i = call i64 @llvm.umin.i64(i64 %i.dz, i64 %2)
  %i.ea = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %1, i64 %..i, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %i.dw, ptr noundef nonnull align 8 dereferenceable(920) %5) ; 2 uses
  %.fca.0.extract15 = extractvalue { ptr, i32 } %i.ea, 0
  %.fca.1.extract16 = extractvalue { ptr, i32 } %i.ea, 1
  %i.eb = sub i64 %2, %i.dz
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.dz
  %i.ed = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering13buildVector32ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %i.ec, i64 %i.eb, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %i.dw, ptr noundef nonnull align 8 dereferenceable(920) %5) ; 2 uses
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.ed, 0
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.ed, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.523.0205 = phi i32 [ %.sroa.523.0.copyload, %bb.y ], [ %.fca.1.extract16, %bb.z ]
  %.sroa.022.0203 = phi ptr [ %.sroa.022.0.copyload, %bb.y ], [ %.fca.0.extract15, %bb.z ]
  %.sroa.5.0 = phi i32 [ %.sroa.5.0.copyload, %bb.y ], [ %.fca.1.extract8, %bb.z ]
  %.sroa.014.0 = phi ptr [ %.sroa.014.0.copyload, %bb.y ], [ %.fca.0.extract7, %bb.z ]
  %i.ee = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering10getCombineENS_7SDValueES1_RKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr nonnull align 8 poison, ptr %.sroa.014.0, i32 %.sroa.5.0, ptr %.sroa.022.0203, i32 %.sroa.523.0205, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %4, ptr noundef nonnull align 8 dereferenceable(920) %5)
  br label %bb.ab

bb.ab:                                            ; preds = %.thread197, %bb.aa, %bb.v, %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread", %._crit_edge
  %.pn = phi { ptr, i32 } [ %i.x, %._crit_edge ], [ %i.be, %"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_11ConstantIntELj8EEEZNKS_21HexagonTargetLowering13buildVector64ENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocENS_3MVTERNS_12SelectionDAGEE3$_0EEbOT_T0_.exit.thread" ], [ %i.cs, %bb.v ], [ %i.ee, %bb.aa ], [ %i.bu, %.thread197 ]
  %i.ef = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.e
  br i1 %i.eg, label %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj8EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef %i.ef) #25
  br label %_ZN4llvm11SmallVectorIPNS_11ConstantIntELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_11ConstantIntELj8EED2Ev.exit: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering13extractVectorENS_7SDValueES1_RKNS_5SDLocENS_3MVTES5_RNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %6, i16 %7, ptr noundef nonnull align 8 dereferenceable(920) %8) local_unnamed_addr #3 align 2 {
bb.a:
  %9 = alloca %"class.llvm::ArrayRef.225", align 8 ; 3 uses
  %10 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"class.llvm::ArrayRef.225", align 8 ; 3 uses
  %14 = alloca [3 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !394
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.d, align 8, !tbaa !24 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK4llvm21HexagonTargetLowering13extractVectorENS_7SDValueES1_RKNS_5SDLocENS_3MVTES5_RNS_12SelectionDAGE:bb.a
  %.sroa.11.0 = extractvalue { ptr, i32 } %.pn283, 1
  %.sroa.0278.0 = extractvalue { ptr, i32 } %.pn283, 0
  %i.bw = add i16 %7, -19
  %spec.select.i.i227 = icmp ult i16 %i.bw, 197
  br i1 %spec.select.i.i227, label %bb.q, label %_ZNK4llvm21HexagonTargetLowering8tyScalarENS_3MVTE.exit237

bb.q:                                             ; preds = %bb.p
  %i.bx = zext nneg i16 %7 to i64
  %i.by = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bx ; 2 uses
  %.sroa.2.0..sroa_idx.i.i229 = getelementptr i8, ptr %i.by, i64 -8
  %.sroa.2.0.copyload.i.i230 = load i8, ptr %.sroa.2.0..sroa_idx.i.i229, align 8
  %i.bz = trunc nuw i8 %.sroa.2.0.copyload.i.i230 to i1
  br i1 %i.bz, label %bb.r, label %_ZNK4llvm8TypeSizecvmEv.exit.i231

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.102) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i231:                ; preds = %bb.q
  %i.ca = getelementptr i8, ptr %i.by, i64 -16
  %.sroa.0.0.copyload.i.i232 = load i64, ptr %i.ca, align 16
  %i.cb = trunc i64 %.sroa.0.0.copyload.i.i232 to i32 ; 2 uses
  %i.cc = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.cb)
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %.split.i.i233, label %_ZNK4llvm21HexagonTargetLowering8tyScalarENS_3MVTE.exit237

.split.i.i233:                                    ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i231
  %i.ce = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cb, i1 true) ; 2 uses
  %i.cf = icmp samesign ult i32 %i.ce, 10
  br i1 %i.cf, label %switch.lookup.i.i234, label %_ZNK4llvm21HexagonTargetLowering8tyScalarENS_3MVTE.exit237

switch.lookup.i.i234:                             ; preds = %.split.i.i233
  %switch.idx.cast.i.i235 = trunc nuw nsw i32 %i.ce to i16
  %switch.offset.i.i236 = add nuw nsw i16 %switch.idx.cast.i.i235, 2
  br label %_ZNK4llvm21HexagonTargetLowering8tyScalarENS_3MVTE.exit237

_ZNK4llvm21HexagonTargetLowering8tyScalarENS_3MVTE.exit237: ; preds = %bb.p, %_ZNK4llvm8TypeSizecvmEv.exit.i231, %.split.i.i233, %switch.lookup.i.i234
  %.sroa.01.0.i228 = phi i16 [ %7, %bb.p ], [ %switch.offset.i.i236, %switch.lookup.i.i234 ], [ 0, %.split.i.i233 ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit.i231 ]
  %i.cg = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %8, ptr %.sroa.0278.0, i32 %.sroa.11.0, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.01.0.i228, ptr null) #25 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.cg, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.cg, 1
  %i.ch = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %8, i16 %7, ptr null, ptr %.fca.0.extract6, i32 %.fca.1.extract7) #25
  br label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm21HexagonTargetLowering8tyScalarENS_3MVTE.exit237, %bb.b
  %.pn285 = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.ch, %_ZNK4llvm21HexagonTargetLowering8tyScalarENS_3MVTE.exit237 ]
  ret { ptr, i32 } %.pn285
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering17extractVectorPredENS_7SDValueES1_RKNS_5SDLocENS_3MVTES5_RNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %6, i16 %7, ptr noundef nonnull align 8 dereferenceable(920) %8) local_unnamed_addr #3 align 2 {
bb.a:
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %11 = alloca %"class.llvm::ArrayRef.225", align 8 ; 5 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca [1 x %"class.llvm::SDValue"], align 8 ; 5 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !394
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.d, align 8, !tbaa !24
  %i.e = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.f = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.e ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.f, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.g = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.g, label %bb.b, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.102) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.f, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 16
  %i.i = trunc i64 %.sroa.0.0.copyload.i to i32   ; 3 uses
  %i.j = zext i16 %6 to i64
  %i.k = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.j ; 2 uses
  %.sroa.2.0..sroa_idx.i147 = getelementptr i8, ptr %i.k, i64 -8
  %.sroa.2.0.copyload.i148 = load i8, ptr %.sroa.2.0..sroa_idx.i147, align 8
  %i.l = trunc nuw i8 %.sroa.2.0.copyload.i148 to i1
  br i1 %i.l, label %bb.c, label %_ZNK4llvm8TypeSizecvmEv.exit151

bb.c:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.102) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit151:                  ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.m = getelementptr i8, ptr %i.k, i64 -16
  %.sroa.0.0.copyload.i146 = load i64, ptr %i.m, align 16 ; 2 uses
  %i.n = trunc i64 %.sroa.0.0.copyload.i146 to i32 ; 2 uses
  %i.o = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %3, i32 %4) #25
  %i.p = icmp eq i64 %.sroa.0.0.copyload.i146, 1
  %or.cond = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit151
  store ptr %1, ptr %12, align 8, !tbaa !393
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %2, ptr %.sroa.5133.0..sroa_idx, align 8, !tbaa !150
  %i.q = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 586, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 2, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12) #25
  br label %bb.j

.critedge:                                        ; preds = %_ZNK4llvm8TypeSizecvmEv.exit151
  %i.r = icmp eq i32 %i.n, 1
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store ptr %1, ptr %13, align 8, !tbaa !393
  %.sroa.5133.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %2, ptr %.sroa.5133.0..sroa_idx136, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %13, ptr %11, align 8, !tbaa !619
  %.sroa.2.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx.i158, align 8, !tbaa !416
  %i.s = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 1243, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.t = udiv i32 8, %i.i
  %i.u = zext nneg i32 %i.t to i64
  %i.v = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %8, i64 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract56 = extractvalue { ptr, i32 } %i.v, 0
  %.fca.1.extract57 = extractvalue { ptr, i32 } %i.v, 1
  store ptr %3, ptr %14, align 8, !tbaa !393
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %4, ptr %.sroa.4125.0..sroa_idx, align 8, !tbaa !150
  store ptr %.fca.0.extract56, ptr %15, align 8, !tbaa !393
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract57, ptr %.sroa.461.0..sroa_idx, align 8, !tbaa !150
  %i.w = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 61, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15) #25 ; 2 uses
  %.fca.0.extract49 = extractvalue { ptr, i32 } %i.w, 0
  %.fca.1.extract50 = extractvalue { ptr, i32 } %i.w, 1
  store ptr %i.s, ptr %16, align 8, !tbaa !393
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 0, ptr %.sroa.470.0..sroa_idx, align 8, !tbaa !150
  store ptr %.fca.0.extract49, ptr %17, align 8, !tbaa !393
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract50, ptr %.sroa.454.0..sroa_idx, align 8, !tbaa !150
  %i.x = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 567, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 2, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17) #25
  br label %bb.j

bb.f:                                             ; preds = %.critedge
  %i.y = udiv i32 %i.i, %i.n                      ; 2 uses
  %i.z = udiv i32 8, %i.i
  store ptr %3, ptr %18, align 8, !tbaa !393
  %.sroa.4125.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %4, ptr %.sroa.4125.0..sroa_idx126, align 8, !tbaa !150
  %i.aa = shl nuw nsw i32 %i.z, 3
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %8, i64 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract36 = extractvalue { ptr, i32 } %i.ac, 0
  %.fca.1.extract37 = extractvalue { ptr, i32 } %i.ac, 1
  store ptr %.fca.0.extract36, ptr %19, align 8
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract37, ptr %.sroa.239.0..sroa_idx, align 8
  %i.ad = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 61, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #25 ; 2 uses
  %.fca.0.extract32 = extractvalue { ptr, i32 } %i.ad, 0
  %.fca.1.extract33 = extractvalue { ptr, i32 } %i.ad, 1
  store ptr %1, ptr %20, align 8, !tbaa !393
  %.sroa.5133.0..sroa_idx134 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %2, ptr %.sroa.5133.0..sroa_idx134, align 8, !tbaa !150
  %i.ae = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 581, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %20) #25 ; 2 uses
  %.fca.0.extract25 = extractvalue { ptr, i32 } %i.ae, 0
  %.fca.1.extract26 = extractvalue { ptr, i32 } %i.ae, 1
  store ptr %.fca.0.extract25, ptr %21, align 8, !tbaa !393
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %.fca.1.extract26, ptr %.sroa.430.0..sroa_idx, align 8, !tbaa !150
  store ptr %.fca.0.extract32, ptr %22, align 8, !tbaa !393
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 %.fca.1.extract33, ptr %.sroa.441.0..sroa_idx, align 8, !tbaa !150
  %i.af = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 200, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22) #25 ; 2 uses
  %.sroa.8.0188 = extractvalue { ptr, i32 } %i.af, 1 ; 2 uses
  %.sroa.023.0189 = extractvalue { ptr, i32 } %i.af, 0 ; 2 uses
  %i.ag = icmp samesign ugt i32 %i.y, 1
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZNK4llvm21HexagonTargetLowering15expandPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit
  %.sroa.023.0192 = phi ptr [ %.sroa.023.0189, %.lr.ph ], [ %.sroa.023.0, %_ZNK4llvm21HexagonTargetLowering15expandPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit ]
  %.sroa.8.0191 = phi i32 [ %.sroa.8.0188, %.lr.ph ], [ %.sroa.8.0, %_ZNK4llvm21HexagonTargetLowering15expandPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit ]
  %.0190 = phi i32 [ %i.y, %.lr.ph ], [ %i.ao, %_ZNK4llvm21HexagonTargetLowering15expandPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit ] ; 2 uses
  %i.ah = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering6LoHalfENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %.sroa.023.0192, i32 %.sroa.8.0191, ptr noundef nonnull align 8 dereferenceable(920) %8) ; 2 uses
  %.fca.0.extract9 = extractvalue { ptr, i32 } %i.ah, 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.ai = getelementptr inbounds nuw i8, ptr %.fca.0.extract9, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !410 ; 2 uses
  %24 = icmp slt i32 %i.aj, 0
  %.0.v.i.i = select i1 %24, i32 -11, i32 53
  %.0.i.i = icmp eq i32 %i.aj, %.0.v.i.i
  br i1 %.0.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.ak = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 8, ptr null) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %_ZNK4llvm21HexagonTargetLowering15expandPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit

bb.i:                                             ; preds = %bb.g
  %.fca.1.extract10 = extractvalue { ptr, i32 } %i.ah, 1
  %i.al = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %8, i16 43, ptr null, ptr nonnull %.fca.0.extract9, i32 %.fca.1.extract10) #25 ; 2 uses
  %.fca.0.extract8.i = extractvalue { ptr, i32 } %i.al, 0
  %.fca.1.extract9.i = extractvalue { ptr, i32 } %i.al, 1
  store ptr %.fca.0.extract8.i, ptr %10, align 8, !tbaa !393
  store i32 %.fca.1.extract9.i, ptr %.sroa.416.0..sroa_idx.i, align 8, !tbaa !150
  %i.am = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 227, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 58, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #25 ; 2 uses
  %.fca.0.extract3.i = extractvalue { ptr, i32 } %i.am, 0
  %.fca.1.extract4.i = extractvalue { ptr, i32 } %i.am, 1
  %i.an = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %8, i16 8, ptr null, ptr %.fca.0.extract3.i, i32 %.fca.1.extract4.i) #25
  br label %_ZNK4llvm21HexagonTargetLowering15expandPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit

_ZNK4llvm21HexagonTargetLowering15expandPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit: ; preds = %bb.h, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %i.an, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.ao = lshr i32 %.0190, 1
  %.sroa.8.0 = extractvalue { ptr, i32 } %.pn.i, 1 ; 2 uses
  %.sroa.023.0 = extractvalue { ptr, i32 } %.pn.i, 0 ; 2 uses
  %i.ap = icmp ugt i32 %.0190, 3
  br i1 %i.ap, label %bb.g, label %._crit_edge, !llvm.loop !925

._crit_edge:                                      ; preds = %_ZNK4llvm21HexagonTargetLowering15expandPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit, %bb.f
  %.sroa.8.0.lcssa = phi i32 [ %.sroa.8.0188, %bb.f ], [ %.sroa.8.0, %_ZNK4llvm21HexagonTargetLowering15expandPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit ]
  %.sroa.023.0.lcssa = phi ptr [ %.sroa.023.0189, %bb.f ], [ %.sroa.023.0, %_ZNK4llvm21HexagonTargetLowering15expandPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit ]
  store ptr %.sroa.023.0.lcssa, ptr %23, align 8, !tbaa !393
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.sroa.8.0.lcssa, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !150
  %i.aq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 580, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23) #25
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.e, %bb.d
  %.pn144 = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.x, %bb.e ], [ %i.aq, %._crit_edge ]
  ret { ptr, i32 } %.pn144
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering6LoHalfENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 7 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !394
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.d, align 8, !tbaa !24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !173
  store i64 %i.f, ptr %4, align 8, !tbaa !173
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !174
  store i32 %i.i, ptr %i.g, align 8, !tbaa !176
  %i.j = add i16 %.sroa.0.0.copyload.i.i.i, -19
  %spec.select.i = icmp ult i16 %i.j, 197
  br i1 %spec.select.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %5, align 8, !tbaa !393
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %2, ptr %.sroa.527.0..sroa_idx, align 8, !tbaa !150
  %i.k = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getTargetExtractSubregEiRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = tail call i32 @_ZNK4llvm21HexagonTargetLowering9typeSplitENS_3MVTE(ptr noundef nonnull align 8 dereferenceable(518456) %0, i16 %.sroa.0.0.copyload.i.i.i) #25
  %.sroa.08.0.extract.trunc = trunc i32 %i.l to i16
  %i.m = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25, !inline_history !629 ; 2 uses
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.m, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.m, 1
  store ptr %1, ptr %6, align 8, !tbaa !393
  %.sroa.527.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %2, ptr %.sroa.527.0..sroa_idx28, align 8, !tbaa !150
  store ptr %.fca.0.extract2, ptr %7, align 8, !tbaa !393
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !150
  %i.n = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.08.0.extract.trunc, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.k, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering6HiHalfENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 7 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !394
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.d, align 8, !tbaa !24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !173
  store i64 %i.f, ptr %4, align 8, !tbaa !173
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !174
  store i32 %i.i, ptr %i.g, align 8, !tbaa !176
  %i.j = add i16 %.sroa.0.0.copyload.i.i.i, -19
  %spec.select.i = icmp ult i16 %i.j, 197
  br i1 %spec.select.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %5, align 8, !tbaa !393
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %2, ptr %.sroa.526.0..sroa_idx, align 8, !tbaa !150
  %i.k = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getTargetExtractSubregEiRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #25
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.l = tail call i32 @_ZNK4llvm21HexagonTargetLowering9typeSplitENS_3MVTE(ptr noundef nonnull align 8 dereferenceable(518456) %0, i16 %.sroa.0.0.copyload.i.i.i) #25 ; 2 uses
  %.sroa.08.0.extract.trunc = trunc i32 %i.l to i16 ; 2 uses
  %i.m = add i16 %.sroa.08.0.extract.trunc, -163
  %spec.select.i.i = icmp ult i16 %i.m, 53
  br i1 %spec.select.i.i, label %bb.d, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.104) #27
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %bb.c
  %.sroa.08.0.extract.trunc.mask = and i32 %i.l, 65535
  %i.n = zext nneg i32 %.sroa.08.0.extract.trunc.mask to i64
  %i.o = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 -2
  %i.q = load i16, ptr %i.p, align 2, !tbaa !30
  %i.r = zext i16 %i.q to i64
  %i.s = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.s, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.s, 1
  store ptr %1, ptr %6, align 8, !tbaa !393
  %.sroa.526.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %2, ptr %.sroa.526.0..sroa_idx27, align 8, !tbaa !150
  store ptr %.fca.0.extract2, ptr %7, align 8, !tbaa !393
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !150
  %i.t = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.08.0.extract.trunc, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #25
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit, %bb.b
  %.pn = phi { ptr, i32 } [ %i.t, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit ], [ %i.k, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret { ptr, i32 } %.pn
}

declare noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr, i32) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering15expandPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(518456) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(920) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !410  ; 2 uses
  %7 = icmp slt i32 %i.b, 0
  %.0.v.i = select i1 %7, i32 -11, i32 53
  %.0.i = icmp eq i32 %i.b, %.0.v.i
  br i1 %.0.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.c = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 8, ptr null) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %4, i16 43, ptr null, ptr nonnull %1, i32 %2) #25 ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.d, 0
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.d, 1
  store ptr %.fca.0.extract8, ptr %6, align 8, !tbaa !393
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract9, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !150
  %i.e = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 227, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 58, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #25 ; 2 uses
  %.fca.0.extract3 = extractvalue { ptr, i32 } %i.e, 0
  %.fca.1.extract4 = extractvalue { ptr, i32 } %i.e, 1
  %i.f = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %4, i16 8, ptr null, ptr %.fca.0.extract3, i32 %.fca.1.extract4) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.c, %bb.b ], [ %i.f, %bb.c ]
  ret { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering12insertVectorENS_7SDValueES1_S1_RKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr nofree noundef byval(%"class.llvm::SDValue") align 8 captures(none) %5, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %7, ptr noundef nonnull align 8 dereferenceable(920) %8) local_unnamed_addr #3 align 2 {
bb.a:
  %9 = alloca %"class.llvm::ArrayRef.225", align 8 ; 3 uses
  %10 = alloca [4 x %"class.llvm::SDValue"], align 8 ; 11 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::ArrayRef.225", align 8 ; 3 uses
  %13 = alloca [4 x %"class.llvm::SDValue"], align 8 ; 11 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !394
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.d, align 8, !tbaa !24 ; 2 uses
  %i.e = zext i16 %.sroa.0.0.copyload.i.i.i to i64 ; 2 uses
  %i.f = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !24
  %i.i = icmp eq i16 %i.h, 2
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering16insertVectorPredENS_7SDValueES1_S1_RKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr nonnull %1, i32 %2, ptr %3, i32 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %7, ptr noundef nonnull align 8 dereferenceable(920) %8)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.e ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.k, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.l = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.l, label %bb.d, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.102) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.k, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.m, align 16
  %i.n = trunc i64 %.sroa.0.0.copyload.i to i32   ; 3 uses
  %i.o = zext i16 %7 to i64
  %i.p = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.o ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16
  %.sroa.0.0.copyload.i174 = load i64, ptr %i.q, align 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i175 = getelementptr i8, ptr %i.p, i64 -8
  %.sroa.2.0.copyload.i176 = load i8, ptr %.sroa.2.0..sroa_idx.i175, align 8
  %i.r = trunc nuw i8 %.sroa.2.0.copyload.i176 to i1
  br i1 %i.r, label %bb.e, label %_ZNK4llvm8TypeSizecvmEv.exit179

bb.e:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.102) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit179:                  ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.s = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.n)
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %.split.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit

.split.i:                                         ; preds = %_ZNK4llvm8TypeSizecvmEv.exit179
  %i.u = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.n, i1 true) ; 2 uses
  %i.v = icmp samesign ult i32 %i.u, 10
  br i1 %i.v, label %switch.lookup.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit

switch.lookup.i:                                  ; preds = %.split.i
  %switch.idx.cast.i = trunc nuw nsw i32 %i.u to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit

_ZN4llvm3MVT12getIntegerVTEj.exit:                ; preds = %_ZNK4llvm8TypeSizecvmEv.exit179, %.split.i, %switch.lookup.i
  %.sroa.0.0.i = phi i16 [ %switch.offset.i, %switch.lookup.i ], [ 0, %.split.i ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit179 ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !394
  %i.y = zext i32 %4 to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %.sroa.0.0.copyload.i.i.i180 = load i16, ptr %i.z, align 8, !tbaa !24
  %i.aa = zext i16 %.sroa.0.0.copyload.i.i.i180 to i64
  %i.ab = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.aa ; 2 uses
  %.sroa.2.0..sroa_idx.i182 = getelementptr i8, ptr %i.ab, i64 -8
  %.sroa.2.0.copyload.i183 = load i8, ptr %.sroa.2.0..sroa_idx.i182, align 8
  %i.ac = trunc nuw i8 %.sroa.2.0.copyload.i183 to i1
  br i1 %i.ac, label %bb.f, label %_ZNK4llvm8TypeSizecvmEv.exit186

bb.f:                                             ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.102) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit186:                  ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit
  %i.ad = getelementptr i8, ptr %i.ab, i64 -16
  %.sroa.0.0.copyload.i181 = load i64, ptr %i.ad, align 16
  %i.ae = trunc i64 %.sroa.0.0.copyload.i181 to i32 ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ae)
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %.split.i188, label %_ZN4llvm3MVT12getIntegerVTEj.exit192

.split.i188:                                      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit186
  %i.ah = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ae, i1 true) ; 2 uses
  %i.ai = icmp samesign ult i32 %i.ah, 10
  br i1 %i.ai, label %switch.lookup.i189, label %_ZN4llvm3MVT12getIntegerVTEj.exit192

switch.lookup.i189:                               ; preds = %.split.i188
  %switch.idx.cast.i190 = trunc nuw nsw i32 %i.ah to i16
  %switch.offset.i191 = add nuw nsw i16 %switch.idx.cast.i190, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit192

_ZN4llvm3MVT12getIntegerVTEj.exit192:             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit186, %.split.i188, %switch.lookup.i189
  %.sroa.0.0.i187 = phi i16 [ %switch.offset.i191, %switch.lookup.i189 ], [ 0, %.split.i188 ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit186 ]
  %i.aj = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %8, i16 %.sroa.0.0.i187, ptr null, ptr nonnull %3, i32 %4) #25 ; 2 uses
  %.fca.0.extract80 = extractvalue { ptr, i32 } %i.aj, 0 ; 2 uses
  %.fca.1.extract81 = extractvalue { ptr, i32 } %i.aj, 1 ; 2 uses
  %i.ak = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %8, i16 %.sroa.0.0.i, ptr null, ptr nonnull %1, i32 %2) #25 ; 2 uses
  %.fca.0.extract69 = extractvalue { ptr, i32 } %i.ak, 0 ; 2 uses
  %.fca.1.extract70 = extractvalue { ptr, i32 } %i.ak, 1 ; 2 uses
  %.not = icmp eq i32 %i.ae, %i.n
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit192
  %i.al = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG16getAnyExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %8, ptr %.fca.0.extract80, i32 %.fca.1.extract81, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.i, ptr null) #25 ; 2 uses
  %.fca.0.extract58 = extractvalue { ptr, i32 } %i.al, 0
  %.fca.1.extract59 = extractvalue { ptr, i32 } %i.al, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4llvm3MVT12getIntegerVTEj.exit192
  %.sroa.0151.0 = phi ptr [ %.fca.0.extract58, %bb.g ], [ %.fca.0.extract80, %_ZN4llvm3MVT12getIntegerVTEj.exit192 ] ; 2 uses
  %.sroa.9.0 = phi i32 [ %.fca.1.extract59, %bb.g ], [ %.fca.1.extract81, %_ZN4llvm3MVT12getIntegerVTEj.exit192 ] ; 2 uses
  %i.am = and i64 %.sroa.0.0.copyload.i174, 4294967295
  %i.an = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %8, i64 noundef %i.am, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract47 = extractvalue { ptr, i32 } %i.an, 0 ; 3 uses
  %.fca.1.extract48 = extractvalue { ptr, i32 } %i.an, 1 ; 3 uses
  %i.ao = load ptr, ptr %5, align 8, !tbaa !166   ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !410
  switch i32 %i.aq, label %bb.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.h, %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !169 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !171
  %i.aw = icmp ult i32 %i.av, 65
  %i.ax = load ptr, ptr %i.at, align 8
  %spec.select.i.i.i = select i1 %i.aw, ptr %i.at, ptr %i.ax
  %.0.i.i.i193 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !172
  %i.ay = mul i64 %.0.i.i.i193, %.sroa.0.0.copyload.i174
  %i.az = and i64 %i.ay, 4294967295
  %i.ba = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %8, i64 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract39 = extractvalue { ptr, i32 } %i.ba, 0
  %.fca.1.extract40 = extractvalue { ptr, i32 } %i.ba, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store ptr %.fca.0.extract69, ptr %10, align 8, !tbaa !393
  %.sroa.7163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract70, ptr %.sroa.7163.0..sroa_idx, align 8, !tbaa !150
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %.sroa.0151.0, ptr %i.bb, align 8, !tbaa !393
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !150
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %.fca.0.extract47, ptr %i.bc, align 8, !tbaa !393
  %.sroa.6.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 %.fca.1.extract48, ptr %.sroa.6.0..sroa_idx54, align 8, !tbaa !150
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %.fca.0.extract39, ptr %i.bd, align 8, !tbaa !393
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 56
  store i32 %.fca.1.extract40, ptr %.sroa.444.0..sroa_idx, align 8, !tbaa !150
  store ptr %10, ptr %9, align 8, !tbaa !397
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 4, ptr %i.be, align 8, !tbaa !398
  %i.bf = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 551, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK4llvm21HexagonTargetLowering16insertVectorPredENS_7SDValueES1_S1_RKNS_5SDLocENS_3MVTERNS_12SelectionDAGE:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.104) #27
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %bb.a
  %i.f = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.g = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !30   ; 2 uses
  %i.j = icmp eq i16 %7, 2
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  store ptr %1, ptr %12, align 8, !tbaa !393
  %.sroa.4167.0..sroa_idx168 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %2, ptr %.sroa.4167.0..sroa_idx168, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %12, ptr %11, align 8, !tbaa !619
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !416
  %i.k = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 1243, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.l = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getSExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %8, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null) #25 ; 2 uses
  %.fca.0.extract107 = extractvalue { ptr, i32 } %i.l, 0
  %.fca.1.extract108 = extractvalue { ptr, i32 } %i.l, 1
  %i.m = udiv i16 8, %i.i
  %i.n = zext nneg i16 %i.m to i64
  %i.o = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %8, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract97 = extractvalue { ptr, i32 } %i.o, 0 ; 2 uses
  %.fca.1.extract98 = extractvalue { ptr, i32 } %i.o, 1 ; 2 uses
  store ptr %.fca.0.extract97, ptr %13, align 8, !tbaa !393
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract98, ptr %.sroa.5103.0..sroa_idx, align 8, !tbaa !150
  %i.p = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 61, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13) #25 ; 2 uses
  %.fca.0.extract90 = extractvalue { ptr, i32 } %i.p, 0
  %.fca.1.extract91 = extractvalue { ptr, i32 } %i.p, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  store ptr %i.k, ptr %15, align 8, !tbaa !393
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 0, ptr %.sroa.4124.0..sroa_idx, align 8, !tbaa !150
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %.fca.0.extract107, ptr %i.q, align 8, !tbaa !393
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.fca.1.extract108, ptr %.sroa.4115.0..sroa_idx, align 8, !tbaa !150
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %.fca.0.extract97, ptr %i.r, align 8, !tbaa !393
  %.sroa.5103.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i32 %.fca.1.extract98, ptr %.sroa.5103.0..sroa_idx104, align 8, !tbaa !150
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 48
  store ptr %.fca.0.extract90, ptr %i.s, align 8, !tbaa !393
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 56
  store i32 %.fca.1.extract91, ptr %.sroa.495.0..sroa_idx, align 8, !tbaa !150
  store ptr %15, ptr %14, align 8, !tbaa !397
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 4, ptr %i.t, align 8, !tbaa !398
  %i.u = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 551, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %14) #25 ; 2 uses
  %.fca.0.extract81 = extractvalue { ptr, i32 } %i.u, 0
  %.fca.1.extract82 = extractvalue { ptr, i32 } %i.u, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  store ptr %.fca.0.extract81, ptr %16, align 8, !tbaa !393
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract82, ptr %.sroa.488.0..sroa_idx, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %16, ptr %10, align 8, !tbaa !619
  %.sroa.2.0..sroa_idx.i177 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx.i177, align 8, !tbaa !416
  %i.v = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 1244, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %10) #25
  %.fca.0.insert.i178 = insertvalue { ptr, i32 } poison, ptr %i.v, 0
  %.fca.1.insert.i179 = insertvalue { ptr, i32 } %.fca.0.insert.i178, i32 0, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.g

bb.d:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  %i.w = add i16 %7, -19
  %spec.select.i = icmp ult i16 %i.w, 197
  br i1 %spec.select.i, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.x = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG14getSExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %8, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 8, ptr null) #25
  br label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit181

bb.e:                                             ; preds = %bb.d
  store ptr %3, ptr %17, align 8, !tbaa !393
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %4, ptr %.sroa.4163.0..sroa_idx, align 8, !tbaa !150
  %i.y = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 581, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17) #25
  %i.z = add nsw i16 %7, -163
  %spec.select.i.i180 = icmp ult i16 %i.z, 53
  br i1 %spec.select.i.i180, label %bb.f, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit181

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.104) #27
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit181:    ; preds = %.thread, %bb.e
  %.pn219 = phi { ptr, i32 } [ %i.x, %.thread ], [ %i.y, %bb.e ] ; 2 uses
  %i.aa = zext i16 %7 to i64
  %i.ab = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !30
  %i.ae = udiv i16 %i.i, %i.ad                    ; 3 uses
  %.sroa.9.1222 = extractvalue { ptr, i32 } %.pn219, 1 ; 2 uses
  %.sroa.071.1223 = extractvalue { ptr, i32 } %.pn219, 0 ; 2 uses
  %i.af = icmp ugt i16 %i.ae, 1
  br i1 %i.af, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit181
  %.zext221 = zext i16 %i.ae to i32
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit181
  %.sroa.9.1.lcssa = phi i32 [ %.sroa.9.1222, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit181 ], [ %.sroa.9.1, %.lr.ph ]
  %.sroa.071.1.lcssa = phi ptr [ %.sroa.071.1223, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit181 ], [ %.sroa.071.1, %.lr.ph ]
  %i.ag = udiv i16 64, %i.ae
  %i.ah = zext nneg i16 %i.ag to i64
  %i.ai = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %8, i64 noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract23 = extractvalue { ptr, i32 } %i.ai, 0 ; 2 uses
  %.fca.1.extract24 = extractvalue { ptr, i32 } %i.ai, 1 ; 2 uses
  store ptr %.fca.0.extract23, ptr %18, align 8, !tbaa !393
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract24, ptr %.sroa.529.0..sroa_idx, align 8, !tbaa !150
  %i.aj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 61, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18) #25 ; 2 uses
  %.fca.0.extract16 = extractvalue { ptr, i32 } %i.aj, 0
  %.fca.1.extract17 = extractvalue { ptr, i32 } %i.aj, 1
  store ptr %1, ptr %19, align 8, !tbaa !393
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %2, ptr %.sroa.4167.0..sroa_idx, align 8, !tbaa !150
  %i.ak = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 581, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #25 ; 2 uses
  %.fca.0.extract9 = extractvalue { ptr, i32 } %i.ak, 0
  %.fca.1.extract10 = extractvalue { ptr, i32 } %i.ak, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  store ptr %.fca.0.extract9, ptr %21, align 8, !tbaa !393
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %.fca.1.extract10, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !150
  %i.al = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %.sroa.071.1.lcssa, ptr %i.al, align 8, !tbaa !393
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 24
  store i32 %.sroa.9.1.lcssa, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !150
  %i.am = getelementptr inbounds nuw i8, ptr %21, i64 32
  store ptr %.fca.0.extract23, ptr %i.am, align 8, !tbaa !393
  %.sroa.529.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %21, i64 40
  store i32 %.fca.1.extract24, ptr %.sroa.529.0..sroa_idx30, align 8, !tbaa !150
  %i.an = getelementptr inbounds nuw i8, ptr %21, i64 48
  store ptr %.fca.0.extract16, ptr %i.an, align 8, !tbaa !393
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 56
  store i32 %.fca.1.extract17, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !150
  store ptr %21, ptr %20, align 8, !tbaa !397
  %i.ao = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 4, ptr %i.ao, align 8, !tbaa !398
  %i.ap = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 551, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %20) #25 ; 2 uses
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.ap, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.ap, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  store ptr %.fca.0.extract2, ptr %22, align 8, !tbaa !393
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !150
  %i.aq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 580, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22) #25
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.071.1226 = phi ptr [ %.sroa.071.1, %.lr.ph ], [ %.sroa.071.1223, %.lr.ph.preheader ]
  %.sroa.9.1225 = phi i32 [ %.sroa.9.1, %.lr.ph ], [ %.sroa.9.1222, %.lr.ph.preheader ]
  %.0224 = phi i32 [ %i.au, %.lr.ph ], [ %.zext221, %.lr.ph.preheader ] ; 2 uses
  %i.ar = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering17contractPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %.sroa.071.1226, i32 %.sroa.9.1225, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(920) %8) ; 2 uses
  %.fca.0.extract47 = extractvalue { ptr, i32 } %i.ar, 0
  %.fca.1.extract48 = extractvalue { ptr, i32 } %i.ar, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.as = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %8, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 7, ptr null) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %.fca.0.extract38 = extractvalue { ptr, i32 } %i.as, 0
  %.fca.1.extract39 = extractvalue { ptr, i32 } %i.as, 1
  %i.at = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering10getCombineENS_7SDValueES1_RKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr nonnull align 8 poison, ptr %.fca.0.extract38, i32 %.fca.1.extract39, ptr %.fca.0.extract47, i32 %.fca.1.extract48, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 8, ptr noundef nonnull align 8 dereferenceable(920) %8) ; 2 uses
  %i.au = lshr i32 %.0224, 1
  %.sroa.9.1 = extractvalue { ptr, i32 } %i.at, 1 ; 2 uses
  %.sroa.071.1 = extractvalue { ptr, i32 } %i.at, 0 ; 2 uses
  %i.av = icmp samesign ugt i32 %.0224, 3
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !926

bb.g:                                             ; preds = %._crit_edge, %bb.c
  %.pn175 = phi { ptr, i32 } [ %.fca.1.insert.i179, %bb.c ], [ %i.aq, %._crit_edge ]
  ret { ptr, i32 } %.pn175
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG16getAnyExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering17contractPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(920) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %8 = alloca %"class.llvm::ArrayRef.580", align 8 ; 3 uses
  %i.a = alloca [8 x i32], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !410  ; 2 uses
  %9 = icmp slt i32 %i.c, 0
  %.0.v.i = select i1 %9, i32 -11, i32 53
  %.0.i = icmp eq i32 %i.c, %.0.v.i
  br i1 %.0.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.d = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %4, i16 47, ptr null, ptr nonnull %1, i32 %2) #25 ; 2 uses
  %.fca.0.extract23 = extractvalue { ptr, i32 } %i.e, 0
  %.fca.1.extract24 = extractvalue { ptr, i32 } %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.f = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 47, ptr null) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.fca.0.extract15 = extractvalue { ptr, i32 } %i.f, 0
  %.fca.1.extract16 = extractvalue { ptr, i32 } %i.f, 1
  store ptr %.fca.0.extract15, ptr %7, align 8
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract16, ptr %.sroa.218.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.a, ptr noundef nonnull align 4 dereferenceable(32) @constinit.93, i64 32, i1 false), !tbaa.struct !441
  store ptr %i.a, ptr %8, align 8, !tbaa !631
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 8, ptr %i.g, align 8, !tbaa !632
  %i.h = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %4, i16 47, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %.fca.0.extract23, i32 %.fca.1.extract24, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::ArrayRef.580") align 8 %8) #25 ; 2 uses
  %.fca.0.extract9 = extractvalue { ptr, i32 } %i.h, 0
  %.fca.1.extract10 = extractvalue { ptr, i32 } %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.i = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %4, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.i, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.i, 1
  %i.j = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering13extractVectorENS_7SDValueES1_RKNS_5SDLocENS_3MVTES5_RNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %.fca.0.extract9, i32 %.fca.1.extract10, ptr %.fca.0.extract1, i32 %.fca.1.extract2, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 43, i16 7, ptr noundef nonnull align 8 dereferenceable(920) %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.j, %bb.c ]
  ret { ptr, i32 } %.pn
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::ArrayRef.580") align 8) local_unnamed_addr #5

declare { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPEdRKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920), double noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering11appendUndefENS_7SDValueENS_3MVTERNS_12SelectionDAGE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(518456) %0, ptr %1, i32 %2, i16 %3, ptr noundef nonnull align 8 dereferenceable(920) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %7 = alloca %"class.llvm::SmallVector.214", align 8 ; 11 uses
  %8 = alloca %"class.llvm::ArrayRef.225", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !394
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.d, align 8, !tbaa !24 ; 3 uses
  %i.e = add i16 %.sroa.0.0.copyload.i.i.i, -163
  %spec.select.i.i = icmp ult i16 %i.e, 53
  br i1 %spec.select.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.104) #27
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %bb.a
  %i.f = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.g = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !30   ; 2 uses
  %i.j = add i16 %3, -163
  %spec.select.i.i34 = icmp ult i16 %i.j, 53
  br i1 %spec.select.i.i34, label %bb.c, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit35

bb.c:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.104) #27
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit35:     ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  %i.k = zext i16 %3 to i64
  %i.l = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !30   ; 2 uses
  %i.o = icmp eq i16 %i.i, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit35
  %i.p = insertvalue { ptr, i32 } poison, ptr %1, 0
  %i.q = insertvalue { ptr, i32 } %i.p, i32 %2, 1
  br label %bb.i

bb.e:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !173
  store i64 %i.s, ptr %6, align 8, !tbaa !173
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.v = load i32, ptr %i.u, align 4, !tbaa !174
  store i32 %i.v, ptr %i.t, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.w, ptr %7, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i32 4, ptr %i.y, align 4, !tbaa !256
  store ptr %1, ptr %i.w, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 8
  store i32 1, ptr %i.x, align 8, !tbaa !255
  %i.z = udiv i16 %i.n, %i.i                      ; 2 uses
  %.zext = zext i16 %i.z to i32
  %i.aa = icmp ugt i16 %i.z, 1
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %.pre = load ptr, ptr %7, align 8, !tbaa !22
  %.pre44 = load i32, ptr %i.x, align 8, !tbaa !255
  %i.ab = zext i32 %.pre44 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.ac = phi i64 [ %i.ab, %._crit_edge.loopexit ], [ 1, %bb.e ]
  %i.ad = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.w, %bb.e ]
  store ptr %i.ad, ptr %8, align 8, !tbaa !397
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !398
  %i.af = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %3, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %8) #25
  %i.ag = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.w
  br i1 %i.ah, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.ag) #25
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit: ; preds = %._crit_edge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.i

.lr.ph:                                           ; preds = %bb.e, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %.043 = phi i32 [ %i.aq, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ], [ 1, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.ai = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i.i.i, ptr null) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.ai, 0 ; 2 uses
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.ai, 1 ; 2 uses
  %i.aj = load i32, ptr %i.x, align 8, !tbaa !255 ; 2 uses
  %i.ak = load i32, ptr %i.y, align 4, !tbaa !256
  %.not.i = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !391

bb.g:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %.fca.0.extract2, i32 %.fca.1.extract3)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.h:                                             ; preds = %.lr.ph
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %7, align 8, !tbaa !22
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.al ; 2 uses
  store ptr %.fca.0.extract2, ptr %i.an, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.ao = load i32, ptr %i.x, align 8, !tbaa !255
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !255
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.g, %bb.h
  %i.aq = add nuw nsw i32 %.043, 1                ; 2 uses
  %i.ar = icmp samesign ult i32 %i.aq, %.zext
  br i1 %i.ar, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !927

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, %bb.d
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.af, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit ]
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering17LowerBUILD_VECTORENS_7SDValueERNS_12SelectionDAGE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(518456) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::ArrayRef.225", align 8 ; 5 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 19 uses
  %10 = alloca %"class.llvm::SmallVector.370", align 8 ; 13 uses
  %11 = alloca [8 x %"class.llvm::SDValue"], align 16 ; 26 uses
  %12 = alloca [1 x %"class.llvm::SDValue"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !394
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.d, align 8, !tbaa !24 ; 8 uses
  %i.e = zext i16 %.sroa.0.0.copyload.i.i.i to i64 ; 2 uses
  %i.f = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.e ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.f, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.g = trunc nuw i8 %.sroa.2.0.copyload.i to i1
end_hunk_2
begin_hunk_3_@_ZNK4llvm21HexagonTargetLowering17LowerBUILD_VECTORENS_7SDValueERNS_12SelectionDAGE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0184.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.8.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering19LowerCONCAT_VECTORSENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"class.llvm::ArrayRef.580", align 8 ; 5 uses
  %i.a = alloca [8 x i32], align 4                ; 4 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 14 uses
  %10 = alloca [2 x %"class.llvm::SmallVector.214"], align 16 ; 19 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %13 = alloca %"class.llvm::ArrayRef.225", align 8 ; 3 uses
  %14 = alloca [4 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !394
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.d
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.e, align 8, !tbaa !24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !173
  store i64 %i.g, ptr %9, align 8, !tbaa !173
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !174
  store i32 %i.j, ptr %i.h, align 8, !tbaa !176
  %i.k = zext i16 %.sroa.0.0.copyload.i.i.i to i64 ; 3 uses
  %i.l = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.k ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.l, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.m = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.m, label %bb.b, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.102) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.l, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 16
  %i.o = icmp eq i64 %.sroa.0.0.copyload.i, 64
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !163  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sroa.0114.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !393
  %.sroa.2115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.2115.0.copyload = load i32, ptr %.sroa.2115.0..sroa_idx, align 8, !tbaa !150
  %.sroa.0111.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !393
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.2112.0.copyload = load i32, ptr %.sroa.2112.0..sroa_idx, align 8, !tbaa !150
  %i.s = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering10getCombineENS_7SDValueES1_RKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr nonnull align 8 poison, ptr %.sroa.0114.0.copyload, i32 %.sroa.2115.0.copyload, ptr %.sroa.0111.0.copyload, i32 %.sroa.2112.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.0.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(920) %3) ; 2 uses
  %.fca.0.extract106 = extractvalue { ptr, i32 } %i.s, 0
  %.fca.1.extract107 = extractvalue { ptr, i32 } %i.s, 1
  br label %bb.s

bb.d:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.t = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.k
  %i.u = getelementptr i8, ptr %i.t, i64 -2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !24
  %i.w = icmp eq i16 %i.v, 2
  br i1 %i.w, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !163  ; 4 uses
  %.sroa.0103.0.copyload = load ptr, ptr %i.y, align 8, !tbaa !393
  %.sroa.2104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.2104.0.copyload = load i32, ptr %.sroa.2104.0..sroa_idx, align 8, !tbaa !150
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0103.0.copyload, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !394
  %i.ab = zext i32 %.sroa.2104.0.copyload to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ab
  %.sroa.0.0.copyload.i.i.i152 = load i16, ptr %i.ac, align 8, !tbaa !24 ; 2 uses
  %i.ad = add i16 %.sroa.0.0.copyload.i.i.i, -163
  %spec.select.i.i = icmp ult i16 %i.ad, 53
  br i1 %spec.select.i.i, label %bb.f, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.104) #27
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %bb.e
  %i.ae = add i16 %.sroa.0.0.copyload.i.i.i152, -163
  %spec.select.i.i153 = icmp ult i16 %i.ae, 53
  br i1 %spec.select.i.i153, label %bb.g, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit154

bb.g:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.104) #27
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit154:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  %i.af = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.k
  %i.ag = getelementptr i8, ptr %i.af, i64 -2
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !30
  %i.ai = zext i16 %.sroa.0.0.copyload.i.i.i152 to i64
  %i.aj = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 -2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.am, ptr %10, align 16, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i32 0, ptr %i.an, align 8, !tbaa !255
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i32 4, ptr %i.ao, align 4, !tbaa !256
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 96
  store ptr %i.ap, ptr %.ptr.1, align 16, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 88
  store i32 0, ptr %i.aq, align 8, !tbaa !255
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 92
  store i32 4, ptr %i.ar, align 4, !tbaa !256
  %i.as = udiv i16 %i.ah, %i.al                   ; 3 uses
  %.zext = zext i16 %i.as to i32                  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = load i16, ptr %i.at, align 8, !tbaa !453 ; 2 uses
  %i.av = zext i16 %i.au to i64
  %.idx211 = mul nuw nsw i64 %i.av, 40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx211
  %.not190197 = icmp eq i16 %i.au, 0
  br i1 %.not190197, label %.preheader, label %.lr.ph200

.lr.ph200:                                        ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit154
  %i.ax = icmp ugt i16 %i.as, 1
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.h

.preheader:                                       ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit154
  %i.az = icmp ugt i16 %i.as, 2
  br i1 %i.az, label %.lr.ph208, label %._crit_edge209

.lr.ph208:                                        ; preds = %.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 32
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 48
  %.sroa.533.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph200, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %.sroa.0170.0198 = phi ptr [ %i.y, %.lr.ph200 ], [ %i.bn, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ] ; 2 uses
  %i.be = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 581, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %.sroa.0170.0198) #25 ; 2 uses
  %.sroa.10.0191 = extractvalue { ptr, i32 } %i.be, 1 ; 2 uses
  %.sroa.082.0192 = extractvalue { ptr, i32 } %i.be, 0 ; 2 uses
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK4llvm21HexagonTargetLowering17contractPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit, %bb.h
  %.sroa.10.0.lcssa = phi i32 [ %.sroa.10.0191, %bb.h ], [ %.sroa.10.0, %_ZNK4llvm21HexagonTargetLowering17contractPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit ]
  %.sroa.082.0.lcssa = phi ptr [ %.sroa.082.0192, %bb.h ], [ %.sroa.082.0, %_ZNK4llvm21HexagonTargetLowering17contractPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit ]
  %i.bf = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering6LoHalfENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %.sroa.082.0.lcssa, i32 %.sroa.10.0.lcssa, ptr noundef nonnull align 8 dereferenceable(920) %3) ; 2 uses
  %.fca.0.extract40 = extractvalue { ptr, i32 } %i.bf, 0 ; 2 uses
  %.fca.1.extract41 = extractvalue { ptr, i32 } %i.bf, 1 ; 2 uses
  %i.bg = load i32, ptr %i.an, align 8, !tbaa !255 ; 2 uses
  %i.bh = load i32, ptr %i.ao, align 4, !tbaa !256
  %.not.i = icmp ult i32 %i.bg, %i.bh
  br i1 %.not.i, label %bb.j, label %bb.i, !prof !391

bb.i:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %.fca.0.extract40, i32 %.fca.1.extract41)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.j:                                             ; preds = %._crit_edge
  %i.bi = zext i32 %i.bg to i64
  %i.bj = load ptr, ptr %10, align 16, !tbaa !22
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bi ; 2 uses
  store ptr %.fca.0.extract40, ptr %i.bk, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %.fca.1.extract41, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.bl = load i32, ptr %i.an, align 8, !tbaa !255
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.an, align 8, !tbaa !255
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.i, %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0170.0198, i64 40 ; 2 uses
  %.not190 = icmp eq ptr %i.bn, %i.aw
  br i1 %.not190, label %.preheader, label %bb.h

.lr.ph:                                           ; preds = %bb.h, %_ZNK4llvm21HexagonTargetLowering17contractPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit
  %.sroa.082.0195 = phi ptr [ %.sroa.082.0, %_ZNK4llvm21HexagonTargetLowering17contractPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit ], [ %.sroa.082.0192, %bb.h ] ; 2 uses
  %.sroa.10.0194 = phi i32 [ %.sroa.10.0, %_ZNK4llvm21HexagonTargetLowering17contractPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit ], [ %.sroa.10.0191, %bb.h ]
  %.0147193 = phi i32 [ %i.by, %_ZNK4llvm21HexagonTargetLowering17contractPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit ], [ %.zext, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.082.0195, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !410 ; 2 uses
  %16 = icmp slt i32 %i.bp, 0
  %.0.v.i.i = select i1 %16, i32 -11, i32 53
  %.0.i.i = icmp eq i32 %i.bp, %.0.v.i.i
  br i1 %.0.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.bq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNK4llvm21HexagonTargetLowering17contractPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit

bb.l:                                             ; preds = %.lr.ph
  %i.br = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 47, ptr null, ptr nonnull %.sroa.082.0195, i32 %.sroa.10.0194) #25 ; 2 uses
  %.fca.0.extract23.i = extractvalue { ptr, i32 } %i.br, 0
  %.fca.1.extract24.i = extractvalue { ptr, i32 } %i.br, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.bs = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 47, ptr null) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.fca.0.extract15.i = extractvalue { ptr, i32 } %i.bs, 0
  %.fca.1.extract16.i = extractvalue { ptr, i32 } %i.bs, 1
  store ptr %.fca.0.extract15.i, ptr %7, align 8
  store i32 %.fca.1.extract16.i, ptr %.sroa.218.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.a, ptr noundef nonnull align 4 dereferenceable(32) @constinit.93, i64 32, i1 false), !tbaa.struct !441
  store ptr %i.a, ptr %8, align 8, !tbaa !631
  store i64 8, ptr %i.ay, align 8, !tbaa !632
  %i.bt = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 47, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %9, ptr %.fca.0.extract23.i, i32 %.fca.1.extract24.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::ArrayRef.580") align 8 %8) #25 ; 2 uses
  %.fca.0.extract9.i = extractvalue { ptr, i32 } %i.bt, 0
  %.fca.1.extract10.i = extractvalue { ptr, i32 } %i.bt, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bu = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.bu, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.bu, 1
  %i.bv = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering13extractVectorENS_7SDValueES1_RKNS_5SDLocENS_3MVTES5_RNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %.fca.0.extract9.i, i32 %.fca.1.extract10.i, ptr %.fca.0.extract1.i, i32 %.fca.1.extract2.i, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 43, i16 7, ptr noundef nonnull align 8 dereferenceable(920) %3)
  br label %_ZNK4llvm21HexagonTargetLowering17contractPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit

_ZNK4llvm21HexagonTargetLowering17contractPredicateENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE.exit: ; preds = %bb.k, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.bq, %bb.k ], [ %i.bv, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.fca.0.extract66 = extractvalue { ptr, i32 } %.pn.i, 0
  %.fca.1.extract67 = extractvalue { ptr, i32 } %.pn.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.bw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.fca.0.extract57 = extractvalue { ptr, i32 } %i.bw, 0
  %.fca.1.extract58 = extractvalue { ptr, i32 } %i.bw, 1
  %i.bx = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering10getCombineENS_7SDValueES1_RKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr nonnull align 8 poison, ptr %.fca.0.extract57, i32 %.fca.1.extract58, ptr %.fca.0.extract66, i32 %.fca.1.extract67, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 8, ptr noundef nonnull align 8 dereferenceable(920) %3) ; 2 uses
  %i.by = lshr i32 %.0147193, 1
  %.sroa.10.0 = extractvalue { ptr, i32 } %i.bx, 1 ; 2 uses
  %.sroa.082.0 = extractvalue { ptr, i32 } %i.bx, 0 ; 2 uses
  %i.bz = icmp samesign ugt i32 %.0147193, 3
  br i1 %i.bz, label %.lr.ph, label %._crit_edge, !llvm.loop !930

bb.m:                                             ; preds = %.lr.ph208, %._crit_edge205
  %.0207 = phi i32 [ %.zext, %.lr.ph208 ], [ %i.cm, %._crit_edge205 ] ; 3 uses
  %.0146206 = phi i32 [ 0, %.lr.ph208 ], [ %i.cd, %._crit_edge205 ] ; 2 uses
  %i.ca = udiv i32 64, %.0207
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.cb, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract27 = extractvalue { ptr, i32 } %i.cc, 0 ; 2 uses
  %.fca.1.extract28 = extractvalue { ptr, i32 } %i.cc, 1 ; 2 uses
  %i.cd = xor i32 %.0146206, 1                    ; 3 uses
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [80 x i8], ptr %10, i64 %i.ce ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  store i32 0, ptr %i.cg, align 8, !tbaa !255
  %i.ch = zext nneg i32 %.0146206 to i64
  %i.ci = getelementptr inbounds nuw [80 x i8], ptr %10, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !255 ; 2 uses
  %.not201 = icmp eq i32 %i.ck, 0
  br i1 %.not201, label %._crit_edge205, label %.lr.ph204

.lr.ph204:                                        ; preds = %bb.m
  store ptr %14, ptr %13, align 8, !tbaa !397
  store i64 4, ptr %i.bd, align 8, !tbaa !398
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  br label %bb.n

._crit_edge205:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit159, %bb.m
  %i.cm = lshr i32 %.0207, 1
  %i.cn = icmp samesign ugt i32 %.0207, 5
  br i1 %i.cn, label %bb.m, label %._crit_edge209.loopexit, !llvm.loop !931

bb.n:                                             ; preds = %.lr.ph204, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit159
  %.0148202 = phi i32 [ 0, %.lr.ph204 ], [ %i.dc, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit159 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.co = zext i32 %.0148202 to i64
  %i.cp = load ptr, ptr %i.ci, align 16, !tbaa !22 ; 2 uses
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i64 16, i1 false), !tbaa.struct !444
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.cr = or disjoint i32 %.0148202, 1
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 16, i1 false), !tbaa.struct !444
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(12) %11, i64 12, i1 false), !tbaa.struct !444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ba, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false), !tbaa.struct !444
  store ptr %.fca.0.extract27, ptr %i.bb, align 8, !tbaa !393
  store i32 %.fca.1.extract28, ptr %.sroa.533.0..sroa_idx, align 8, !tbaa !150
  store ptr %.fca.0.extract27, ptr %i.bc, align 8, !tbaa !393
  store i32 %.fca.1.extract28, ptr %.sroa.533.0..sroa_idx34, align 8, !tbaa !150
  %i.cu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 551, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.225") align 8 %13) #25 ; 2 uses
  %.fca.0.extract15 = extractvalue { ptr, i32 } %i.cu, 0 ; 2 uses
  %.fca.1.extract16 = extractvalue { ptr, i32 } %i.cu, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.cv = load i32, ptr %i.cg, align 8, !tbaa !255 ; 2 uses
  %i.cw = load i32, ptr %i.cl, align 4, !tbaa !256
  %.not.i157 = icmp ult i32 %i.cv, %i.cw
  br i1 %.not.i157, label %bb.p, label %bb.o, !prof !391

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr %.fca.0.extract15, i32 %.fca.1.extract16)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit159

bb.p:                                             ; preds = %bb.n
  %i.cx = zext i32 %i.cv to i64
  %i.cy = load ptr, ptr %i.cf, align 16, !tbaa !22
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.cx ; 2 uses
  store ptr %.fca.0.extract15, ptr %i.cz, align 1
  %.sroa.32.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i32 %.fca.1.extract16, ptr %.sroa.32.0..sroa_idx.i158, align 1
  %i.da = load i32, ptr %i.cg, align 8, !tbaa !255
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cg, align 8, !tbaa !255
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit159

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit159: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.dc = add i32 %.0148202, 2                    ; 2 uses
  %.not = icmp eq i32 %i.dc, %i.ck
  br i1 %.not, label %._crit_edge205, label %bb.n, !llvm.loop !932

._crit_edge209.loopexit:                          ; preds = %._crit_edge205
  %i.dd = zext nneg i32 %i.cd to i64
  br label %._crit_edge209

._crit_edge209:                                   ; preds = %.preheader, %._crit_edge209.loopexit
  %.0146.lcssa = phi i64 [ %i.dd, %._crit_edge209.loopexit ], [ 0, %.preheader ]
  %i.de = getelementptr inbounds nuw [80 x i8], ptr %10, i64 %.0146.lcssa
  %i.df = load ptr, ptr %i.de, align 16, !tbaa !22 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %.sroa.08.0.copyload = load ptr, ptr %i.dg, align 8, !tbaa !393
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %.sroa.29.0.copyload = load i32, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !150
  %.sroa.06.0.copyload = load ptr, ptr %i.df, align 8, !tbaa !393
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.sroa.27.0.copyload = load i32, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !150
  %i.dh = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering10getCombineENS_7SDValueES1_RKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr nonnull align 8 poison, ptr %.sroa.08.0.copyload, i32 %.sroa.29.0.copyload, ptr %.sroa.06.0.copyload, i32 %.sroa.27.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 8, ptr noundef nonnull align 8 dereferenceable(920) %3) ; 2 uses
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.dh, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.dh, 1
  store ptr %.fca.0.extract2, ptr %15, align 8, !tbaa !393
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !150
  %i.di = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 580, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15) #25 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.dk = load ptr, ptr %i.dj, align 16, !tbaa !22 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge209
  call void @free(ptr noundef %i.dk) #25
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit: ; preds = %._crit_edge209, %bb.q
  %i.dn = load ptr, ptr %10, align 16, !tbaa !22  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.1, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit
  call void @free(ptr noundef %i.dn) #25
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.1

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.1: ; preds = %bb.r, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit
  %.fca.0.extract = extractvalue { ptr, i32 } %i.di, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.di, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.1, %bb.d, %bb.c
  %.sroa.5.1 = phi i32 [ %.fca.1.extract107, %bb.c ], [ %.fca.1.extract, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.1 ], [ 0, %bb.d ]
  %.sroa.0189.1 = phi ptr [ %.fca.0.extract106, %bb.c ], [ %.fca.0.extract, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit.1 ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0189.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.5.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering23LowerEXTRACT_VECTOR_ELTENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 4 uses
  %.sroa.018.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !393 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !150 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.018.0.copyload, i64 48
end_hunk_3
