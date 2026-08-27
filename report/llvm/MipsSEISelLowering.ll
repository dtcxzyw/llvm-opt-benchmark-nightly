Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MipsSEISelLowering?download=true
inline.NumInlined: 3867
inline.NumDeleted: 844
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK4llvm20MipsSETargetLowering14lowerR5900FPOpENS_7SDValueERNS_12SelectionDAGENS_5RTLIB7LibcallE:bb.a
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm20MipsSETargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %4 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %11 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %12 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 6 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %14 = alloca %"class.llvm::ArrayRef.133", align 8 ; 5 uses
  %15 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %16 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %17 = alloca %"class.llvm::SmallVector.468", align 8 ; 29 uses
  %18 = alloca %"class.llvm::APInt", align 8      ; 21 uses
  %19 = alloca %"class.llvm::APInt", align 8      ; 15 uses
  %20 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %21 = alloca %"class.llvm::APInt", align 8      ; 19 uses
  %22 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %23 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %24 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %25 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %26 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %27 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %28 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %29 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %30 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %31 = alloca %"struct.llvm::EVT", align 8       ; 8 uses
  %32 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %33 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %34 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %35 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %36 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %37 = alloca %"class.llvm::APInt", align 8      ; 17 uses
  %38 = alloca %"class.llvm::APInt", align 8      ; 17 uses
  %39 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %40 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %41 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %42 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %43 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %44 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %45 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %46 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %47 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %48 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %49 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %50 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %51 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %52 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %53 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %54 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %55 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %56 = alloca %"class.llvm::ArrayRef.133", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !342, !nonnull !19, !align !56 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !199
  switch i32 %i.d, label %.thread [
    i32 193, label %bb.b
    i32 194, label %bb.o
    i32 61, label %bb.cc
    i32 198, label %bb.fm
    i32 199, label %bb.fo
    i32 200, label %bb.ga
    i32 220, label %bb.ge
    i32 195, label %bb.gh
    i32 222, label %bb.go
    i32 241, label %bb.gq
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23, !nonnull !19, !align !56
  %i.g = getelementptr i8, ptr %i.f, i64 384
  %.val = load i8, ptr %i.g, align 8, !tbaa !57, !range !18, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %52)
  call void @llvm.lifetime.start.p0(ptr nonnull %56)
  %i.h = trunc nuw i8 %.val to i1
  br i1 %i.h, label %bb.c, label %_ZL17performANDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !196  ; 2 uses
  %.sroa.07.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !197 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.05.0.copyload.i = load ptr, ptr %i.k, align 8, !tbaa !197 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !199  ; 2 uses
  %i.n = icmp eq i32 %i.m, 639
  %i.o = and i32 %i.m, -2
  %or.cond.i = icmp eq i32 %i.o, 638
  br i1 %or.cond.i, label %bb.d, label %_ZL17performANDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !199
  switch i32 %i.q, label %_ZL17performANDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i: ; preds = %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #24
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !232  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !235  ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !235
  %i.x = icmp ult i32 %i.w, 65
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  %i.y = load i64, ptr %i.t, align 8, !tbaa !160
  store i64 %i.y, ptr %52, align 8, !tbaa !160
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i

bb.f:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %52, ptr noundef nonnull align 8 dereferenceable(12) %i.t) #24
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %bb.f, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.z = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLEm(ptr noundef nonnull align 8 dereferenceable(16) %52, i64 noundef 1) #24, !noalias !346 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.ab = load i32, ptr %i.u, align 8, !tbaa !235, !noalias !346 ; 3 uses
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !235, !alias.scope !346
  %i.ac = load i64, ptr %52, align 8, !noalias !346 ; 5 uses
  store i64 %i.ac, ptr %51, align 8, !alias.scope !346
  store i32 0, ptr %i.u, align 8, !tbaa !235, !noalias !346
  %i.ad = icmp ult i32 %i.ab, 65
  %i.ae = inttoptr i64 %i.ac to ptr
  br i1 %i.ad, label %bb.g, label %.split.i.i

bb.g:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  %i.af = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ac)
  %or.cond.i.i = icmp eq i64 %i.af, 1
  br i1 %or.cond.i.i, label %_ZNK4llvm5APInt13exactLogBase2Ev.exit.i, label %_ZN4llvm5APIntD2Ev.exit30.thread.i

_ZN4llvm5APIntD2Ev.exit30.thread.i:               ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #24
  br label %_ZL17performANDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

.split.i.i:                                       ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  %i.ag = call noundef zeroext i1 @_ZNK4llvm5APInt18isPowerOf2SlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %51) #26
  br i1 %i.ag, label %_ZNK4llvm5APInt13exactLogBase2Ev.exit.thread22.i, label %_ZNK4llvm5APInt13exactLogBase2Ev.exit.thread.i

_ZNK4llvm5APInt13exactLogBase2Ev.exit.thread22.i: ; preds = %.split.i.i
  %i.ah = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %51) #26
  %i.ai = xor i32 %i.ah, -1
  %i.aj = add i32 %i.ab, %i.ai
  br label %_ZNK4llvm5APInt13exactLogBase2Ev.exit.thread.i

_ZNK4llvm5APInt13exactLogBase2Ev.exit.i:          ; preds = %bb.g
  %i.ak = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 false)
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = sub nuw nsw i32 63, %i.al
  br label %_ZN4llvm5APIntD2Ev.exit30.i

_ZNK4llvm5APInt13exactLogBase2Ev.exit.thread.i:   ; preds = %_ZNK4llvm5APInt13exactLogBase2Ev.exit.thread22.i, %.split.i.i
  %.0.i19.i = phi i32 [ -1, %.split.i.i ], [ %i.aj, %_ZNK4llvm5APInt13exactLogBase2Ev.exit.thread22.i ] ; 4 uses
  %i.an = icmp eq i64 %i.ac, 0
  br i1 %i.an, label %_ZN4llvm5APIntD2Ev.exit30.i, label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %_ZNK4llvm5APInt13exactLogBase2Ev.exit.thread.i
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #28
  %.pr24.pre.i = load i32, ptr %i.u, align 8, !tbaa !235
  %i.ao = icmp ugt i32 %.pr24.pre.i, 64
  br i1 %i.ao, label %bb.h, label %_ZN4llvm5APIntD2Ev.exit30.i

bb.h:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.ap = load ptr, ptr %52, align 8, !tbaa !160  ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN4llvm5APIntD2Ev.exit30.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.ap) #28
  br label %_ZN4llvm5APIntD2Ev.exit30.i

_ZN4llvm5APIntD2Ev.exit30.i:                      ; preds = %bb.i, %bb.h, %_ZN4llvm5APIntD2Ev.exit.i, %_ZNK4llvm5APInt13exactLogBase2Ev.exit.thread.i, %_ZNK4llvm5APInt13exactLogBase2Ev.exit.i
  %.0.i18.ph34.i = phi i32 [ %.0.i19.i, %bb.i ], [ %.0.i19.i, %_ZN4llvm5APIntD2Ev.exit.i ], [ %.0.i19.i, %bb.h ], [ %i.am, %_ZNK4llvm5APInt13exactLogBase2Ev.exit.i ], [ %.0.i19.i, %_ZNK4llvm5APInt13exactLogBase2Ev.exit.thread.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #24
  %i.ar = icmp slt i32 %.0.i18.ph34.i, 1
  br i1 %i.ar, label %_ZL17performANDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit30.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !196 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %.sroa.01.0.copyload.i = load ptr, ptr %i.au, align 8, !tbaa !197 ; 3 uses
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = load i64, ptr %.sroa.63.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #24
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 88
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.aw, align 8, !tbaa !188 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 96
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !190
  store i16 %.sroa.0.0.copyload.i.i, ptr %53, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %53, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.ax, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.az = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ay ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ba, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.az, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bb = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %53) #26
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i:            ; preds = %bb.l, %bb.k
  %.pn.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i.i, %bb.k ], [ %i.bb, %bb.l ] ; 2 uses
  %.fca.1.extract8.i = extractvalue { i64, i8 } %.pn.i.i, 1
  %i.bc = trunc nuw i8 %.fca.1.extract8.i to i1
  br i1 %i.bc, label %bb.m, label %_ZNK4llvm8TypeSizecvmEv.exit.i

bb.m:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i:                   ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i
  %.fca.0.extract7.i = extractvalue { i64, i8 } %.pn.i.i, 0
  %i.bd = trunc i64 %.fca.0.extract7.i to i32     ; 2 uses
  %.not26.i = icmp uge i32 %.0.i18.ph34.i, %i.bd
  %or.cond27.not28.i = and i1 %i.n, %.not26.i
  %i.be = icmp eq i32 %.0.i18.ph34.i, %i.bd
  %or.cond28.i = or i1 %i.be, %or.cond27.not28.i
  br i1 %or.cond28.i, label %.critedge.critedge.i, label %bb.n

.critedge.critedge.i:                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %54, ptr noundef nonnull align 8 dereferenceable(12) %i.at, i64 12, i1 false), !tbaa.struct !237
  %i.bf = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.bf, ptr noundef nonnull align 8 dereferenceable(12) %i.bg, i64 12, i1 false), !tbaa.struct !237
  %i.bh = getelementptr inbounds nuw i8, ptr %54, i64 32
  store ptr %.sroa.01.0.copyload.i, ptr %i.bh, align 16, !tbaa !197
  %.sroa.63.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %54, i64 40
  %.sroa.63.0.extract.trunc.i = trunc i64 %i.av to i32
  store i32 %.sroa.63.0.extract.trunc.i, ptr %.sroa.63.0..sroa_idx4.i, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #24
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !192
  store i64 %i.bj, ptr %55, align 8, !tbaa !192
  %i.bk = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i, i64 68
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !193
  store i32 %i.bm, ptr %i.bk, align 8, !tbaa !194
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !175
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i, i64 66
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !349
  %i.br = zext i16 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i, i64 64
  %i.bt = load i16, ptr %i.bs, align 8, !tbaa !321
  %i.bu = zext i16 %i.bt to i64
  store ptr %54, ptr %56, align 8, !tbaa !207
  %i.bv = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !210
  %i.bw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 639, ptr noundef nonnull align 8 dereferenceable(12) %55, ptr %i.bo, i32 %i.br, ptr noundef nonnull byval(%"class.llvm::ArrayRef.133") align 8 %56) #24 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.bw, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.bw, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #24
  br label %_ZL17performANDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.n:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #24
  br label %_ZL17performANDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

_ZL17performANDCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZN4llvm5APIntD2Ev.exit30.thread.i, %_ZN4llvm5APIntD2Ev.exit30.i, %.critedge.critedge.i, %bb.n
  %.sroa.1014.1.i = phi i32 [ 0, %bb.b ], [ 0, %_ZN4llvm5APIntD2Ev.exit30.i ], [ 0, %bb.d ], [ %.fca.1.extract.i, %.critedge.critedge.i ], [ 0, %bb.n ], [ 0, %bb.c ], [ 0, %_ZN4llvm5APIntD2Ev.exit30.thread.i ]
  %.sroa.013.1.i = phi ptr [ null, %bb.b ], [ null, %_ZN4llvm5APIntD2Ev.exit30.i ], [ null, %bb.d ], [ %.fca.0.extract.i, %.critedge.critedge.i ], [ null, %bb.n ], [ null, %bb.c ], [ null, %_ZN4llvm5APIntD2Ev.exit30.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52)
  call void @llvm.lifetime.end.p0(ptr nonnull %56)
  br label %_ZL17performSHLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.o:                                             ; preds = %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !23, !nonnull !19, !align !56 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 352
  %.val88 = load i8, ptr %i.bz, align 8
  %i.ca = getelementptr i8, ptr %i.by, i64 384
  %.val89 = load i8, ptr %i.ca, align 8, !tbaa !57, !range !18, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %40)
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  call void @llvm.lifetime.start.p0(ptr nonnull %48)
  call void @llvm.lifetime.start.p0(ptr nonnull %49)
  call void @llvm.lifetime.start.p0(ptr nonnull %50)
  %i.cb = trunc nuw i8 %.val89 to i1
  br i1 %i.cb, label %bb.p, label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !175 ; 2 uses
  %.sroa.0.0.copyload.i.i93 = load i16, ptr %i.cd, align 8, !tbaa !188 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i94 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.21.0.copyload.i.i95 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i94, align 8, !tbaa !190
  store i16 %.sroa.0.0.copyload.i.i93, ptr %36, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i.i95, ptr %i.ce, align 8
  %.not.i.i96 = icmp eq i16 %.sroa.0.0.copyload.i.i93, 0
  br i1 %.not.i.i96, label %.split.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = add i16 %.sroa.0.0.copyload.i.i93, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.cf, 144
  br i1 %spec.select.i.i.i.i, label %_ZNK4llvm3EVT14is128BitVectorEv.exit.i, label %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread.i

.split.i:                                         ; preds = %bb.p
  %i.cg = call noundef zeroext i1 @_ZNK4llvm3EVT22isExtended128BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %36) #26
  br i1 %i.cg, label %bb.r, label %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread.i

_ZNK4llvm3EVT14is128BitVectorEv.exit.i:           ; preds = %bb.q
  %i.ch = zext nneg i16 %.sroa.0.0.copyload.i.i93 to i64
  %i.ci = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 -16
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.cj, align 16
  %i.ck = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 128
  br i1 %i.ck, label %bb.r, label %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread.i

bb.r:                                             ; preds = %_ZNK4llvm3EVT14is128BitVectorEv.exit.i, %.split.i
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !196 ; 2 uses
  %.sroa.019.0.copyload.i = load ptr, ptr %i.cm, align 8, !tbaa !197 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %.sroa.016.0.copyload.i = load ptr, ptr %i.cn, align 8, !tbaa !197 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload.i, i64 24
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !199
  %i.cq = icmp eq i32 %i.cp, 193
  br i1 %i.cq, label %bb.s, label %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread.i

bb.s:                                             ; preds = %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload.i, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !199
  %i.ct = icmp eq i32 %i.cs, 193
  br i1 %i.ct, label %bb.t, label %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread.i

bb.t:                                             ; preds = %bb.s
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload.i, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !196 ; 4 uses
  %.sroa.0178.0.copyload.i = load ptr, ptr %i.cv, align 8, !tbaa !197 ; 14 uses
  %.sroa.16187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sroa.16187.0.copyload.i = load i32, ptr %.sroa.16187.0..sroa_idx.i, align 8, !tbaa !163 ; 10 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %.sroa.0149.0.copyload.i = load ptr, ptr %i.cw, align 8, !tbaa !197 ; 14 uses
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %.sroa.16.0.copyload.i = load i32, ptr %.sroa.16.0..sroa_idx.i, align 8, !tbaa !163 ; 11 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload.i, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !196 ; 4 uses
  %.sroa.0117.0.copyload.i = load ptr, ptr %i.cy, align 8, !tbaa !197 ; 16 uses
  %.sroa.17126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.17126.0.copyload.i = load i32, ptr %.sroa.17126.0..sroa_idx.i, align 8, !tbaa !163 ; 12 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %.sroa.086.0.copyload.i = load ptr, ptr %i.cz, align 8, !tbaa !197 ; 15 uses
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %.sroa.17.0.copyload.i = load i32, ptr %.sroa.17.0..sroa_idx.i, align 8, !tbaa !163 ; 11 uses
  %i.da = trunc nuw i8 %.val88 to i1
  %i.db = xor i1 %i.da, true                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  %i.dc = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 10 uses
  store i32 1, ptr %i.dc, align 8, !tbaa !235
  store i64 0, ptr %37, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  %i.dd = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 6 uses
  store i32 1, ptr %i.dd, align 8, !tbaa !235
  store i64 0, ptr %38, align 8, !tbaa !160
  %i.de = call fastcc noundef zeroext i1 @_ZL8isVSplatN4llvm7SDValueERNS_5APIntEb(ptr %.sroa.0178.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(12) %37, i1 noundef zeroext %i.db) ; 2 uses
  br i1 %i.de, label %bb.u, label %.thread.i

bb.u:                                             ; preds = %bb.t
  %i.df = call fastcc noundef zeroext i1 @_ZL8isVSplatN4llvm7SDValueERNS_5APIntEb(ptr %.sroa.0117.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(12) %38, i1 noundef zeroext %i.db)
  br i1 %i.df, label %bb.v, label %.critedge230.thread.i

bb.v:                                             ; preds = %bb.u
  %i.dg = load i32, ptr %i.dc, align 8, !tbaa !235 ; 3 uses
  %i.dh = load i32, ptr %i.dd, align 8, !tbaa !235
  %i.di = icmp eq i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.w, label %.critedge230.thread.i

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24
  %i.dj = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  store i32 %i.dg, ptr %i.dj, align 8, !tbaa !235
  %i.dk = icmp ult i32 %i.dg, 65
  br i1 %i.dk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dl = load i64, ptr %38, align 8, !tbaa !160
  store i64 %i.dl, ptr %40, align 8, !tbaa !160
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i100

bb.y:                                             ; preds = %bb.w
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %40, ptr noundef nonnull align 8 dereferenceable(12) %38) #24
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i100

_ZN4llvm5APIntC2ERKS0_.exit.i100:                 ; preds = %bb.y, %bb.x
  call void @_ZN4llvmcoENS_5APIntE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %39, ptr nofree noundef nonnull align 8 dereferenceable(16) %40)
  %i.dm = load i32, ptr %i.dc, align 8, !tbaa !235
  %i.dn = icmp ult i32 %i.dm, 65
  br i1 %i.dn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i100
  %i.do = load i64, ptr %37, align 8, !tbaa !160
  %i.dp = load i64, ptr %39, align 8, !tbaa !160
  %i.dq = icmp eq i64 %i.do, %i.dp
  br label %.critedge.i

bb.aa:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i100
  %i.dr = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %37, ptr noundef nonnull align 8 dereferenceable(12) %39) #26
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.aa, %bb.z
  %.ph.i = phi i1 [ %i.dr, %bb.aa ], [ %i.dq, %bb.z ]
  %i.ds = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !235
  %i.du = icmp ugt i32 %i.dt, 64
  br i1 %i.du, label %bb.ab, label %_ZN4llvm5APIntD2Ev.exit.i101

bb.ab:                                            ; preds = %.critedge.i
  %i.dv = load ptr, ptr %39, align 8, !tbaa !160  ; 2 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %_ZN4llvm5APIntD2Ev.exit.i101, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdaPv(ptr noundef nonnull %i.dv) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i101

_ZN4llvm5APIntD2Ev.exit.i101:                     ; preds = %bb.ac, %bb.ab, %.critedge.i
  %i.dx = load i32, ptr %i.dj, align 8, !tbaa !235
  %i.dy = icmp ugt i32 %i.dx, 64
  br i1 %i.dy, label %bb.ad, label %.critedge230.i

bb.ad:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i101
  %i.dz = load ptr, ptr %40, align 8, !tbaa !160  ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null
end_hunk_0
begin_hunk_1_@_ZNK4llvm20MipsSETargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %_ZN4llvm5APIntD2Ev.exit254.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZdaPv(ptr noundef nonnull %i.gk) #28
  br label %_ZN4llvm5APIntD2Ev.exit254.i

_ZN4llvm5APIntD2Ev.exit254.i:                     ; preds = %bb.bi, %bb.bh, %.critedge238.i
  %i.gm = load i32, ptr %i.fy, align 8, !tbaa !235
  %i.gn = icmp ugt i32 %i.gm, 64
  br i1 %i.gn, label %bb.bj, label %.critedge239.i

bb.bj:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit254.i
  %i.go = load ptr, ptr %46, align 8, !tbaa !160  ; 2 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %.critedge239.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZdaPv(ptr noundef nonnull %i.go) #28
  br label %.critedge239.i

.critedge239.i:                                   ; preds = %bb.bk, %bb.bj, %_ZN4llvm5APIntD2Ev.exit254.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #24
  br i1 %.ph43.i, label %bb.bl, label %.thread46.i

bb.bl:                                            ; preds = %.critedge239.i, %.critedge236.i
  %.sroa.20.1.i = phi i32 [ %.sroa.17.0.copyload.i, %.critedge236.i ], [ %.sroa.17126.0.copyload.i, %.critedge239.i ]
  %.sroa.01.1.i = phi ptr [ %.sroa.086.0.copyload.i, %.critedge236.i ], [ %.sroa.0117.0.copyload.i, %.critedge239.i ] ; 2 uses
  %.not228.i = icmp eq ptr %.sroa.01.1.i, null
  br i1 %.not228.i, label %.thread46.i, label %.thread75.thread.i

.thread46.i:                                      ; preds = %bb.bl, %.critedge239.i, %bb.bb, %.critedge236.thread.i, %.thread.i
  %.162.i = phi i1 [ true, %bb.bl ], [ %i.de, %.thread.i ], [ true, %.critedge239.i ], [ true, %.critedge236.thread.i ], [ true, %bb.bb ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0178.0.copyload.i, i64 24
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !199
  %.not.i256.i = icmp eq i32 %i.gr, 195
  br i1 %.not.i256.i, label %bb.bm, label %_ZL16isBitwiseInverseN4llvm7SDValueES0_.exit.thread.i

bb.bm:                                            ; preds = %.thread46.i
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0178.0.copyload.i, i64 40 ; 3 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !196
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.gt, align 8, !tbaa !197
  %i.gu = call fastcc noundef zeroext i1 @_ZL15isVectorAllOnesN4llvm7SDValueE(ptr %.sroa.01.0.copyload.i.i)
  %i.gv = load ptr, ptr %i.gs, align 8, !tbaa !196 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 40
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !197 ; 2 uses
  br i1 %i.gu, label %_ZL16isBitwiseInverseN4llvm7SDValueES0_.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gy = call fastcc noundef zeroext i1 @_ZL15isVectorAllOnesN4llvm7SDValueE(ptr %i.gx)
  br i1 %i.gy, label %.split73.i, label %_ZL16isBitwiseInverseN4llvm7SDValueES0_.exit.thread.i

.split73.i:                                       ; preds = %bb.bn
  %i.gz = load ptr, ptr %i.gs, align 8, !tbaa !196 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !212
  %i.hb = icmp eq ptr %i.ha, %.sroa.0117.0.copyload.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hd = load i32, ptr %i.hc, align 8
  %i.he = icmp eq i32 %i.hd, %.sroa.17126.0.copyload.i
  %i.hf = select i1 %i.hb, i1 %i.he, i1 false
  br i1 %i.hf, label %bb.bu, label %_ZL16isBitwiseInverseN4llvm7SDValueES0_.exit.thread.i

_ZL16isBitwiseInverseN4llvm7SDValueES0_.exit.i:   ; preds = %bb.bm
  %i.hg = icmp eq ptr %i.gx, %.sroa.0117.0.copyload.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gv, i64 48
  %i.hi = load i32, ptr %i.hh, align 8
  %i.hj = icmp eq i32 %i.hi, %.sroa.17126.0.copyload.i
  %i.hk = select i1 %i.hg, i1 %i.hj, i1 false
  br i1 %i.hk, label %bb.bu, label %_ZL16isBitwiseInverseN4llvm7SDValueES0_.exit.thread.i

_ZL16isBitwiseInverseN4llvm7SDValueES0_.exit.thread.i: ; preds = %_ZL16isBitwiseInverseN4llvm7SDValueES0_.exit.i, %.split73.i, %bb.bn, %.thread46.i
  %i.hl = call fastcc noundef zeroext i1 @_ZL16isBitwiseInverseN4llvm7SDValueES0_(ptr %.sroa.0149.0.copyload.i, ptr %.sroa.0117.0.copyload.i, i32 %.sroa.17126.0.copyload.i)
  br i1 %i.hl, label %.thread75.i, label %bb.bo

bb.bo:                                            ; preds = %_ZL16isBitwiseInverseN4llvm7SDValueES0_.exit.thread.i
  %i.hm = call fastcc noundef zeroext i1 @_ZL16isBitwiseInverseN4llvm7SDValueES0_(ptr nonnull %.sroa.0178.0.copyload.i, ptr %.sroa.086.0.copyload.i, i32 %.sroa.17.0.copyload.i)
  br i1 %i.hm, label %bb.bu, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hn = call fastcc noundef zeroext i1 @_ZL16isBitwiseInverseN4llvm7SDValueES0_(ptr %.sroa.0149.0.copyload.i, ptr %.sroa.086.0.copyload.i, i32 %.sroa.17.0.copyload.i)
  br i1 %i.hn, label %.thread75.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ho = call fastcc noundef zeroext i1 @_ZL16isBitwiseInverseN4llvm7SDValueES0_(ptr %.sroa.0117.0.copyload.i, ptr nonnull %.sroa.0178.0.copyload.i, i32 %.sroa.16187.0.copyload.i)
  br i1 %i.ho, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hp = call fastcc noundef zeroext i1 @_ZL16isBitwiseInverseN4llvm7SDValueES0_(ptr %.sroa.086.0.copyload.i, ptr nonnull %.sroa.0178.0.copyload.i, i32 %.sroa.16187.0.copyload.i)
  br i1 %i.hp, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hq = call fastcc noundef zeroext i1 @_ZL16isBitwiseInverseN4llvm7SDValueES0_(ptr %.sroa.0117.0.copyload.i, ptr %.sroa.0149.0.copyload.i, i32 %.sroa.16.0.copyload.i)
  br i1 %i.hq, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hr = call fastcc noundef zeroext i1 @_ZL16isBitwiseInverseN4llvm7SDValueES0_(ptr %.sroa.086.0.copyload.i, ptr %.sroa.0149.0.copyload.i, i32 %.sroa.16.0.copyload.i)
  br i1 %i.hr, label %bb.bu, label %.thread91.i

.thread75.i:                                      ; preds = %bb.bp, %_ZL16isBitwiseInverseN4llvm7SDValueES0_.exit.thread.i
  %.sroa.15.2.ph.i = phi i32 [ %.sroa.17.0.copyload.i, %_ZL16isBitwiseInverseN4llvm7SDValueES0_.exit.thread.i ], [ %.sroa.17126.0.copyload.i, %bb.bp ] ; 2 uses
  %.sroa.010.2.ph.i = phi ptr [ %.sroa.086.0.copyload.i, %_ZL16isBitwiseInverseN4llvm7SDValueES0_.exit.thread.i ], [ %.sroa.0117.0.copyload.i, %bb.bp ] ; 2 uses
  %.sroa.14.2.ph.i = phi i32 [ %.sroa.17126.0.copyload.i, %_ZL16isBitwiseInverseN4llvm7SDValueES0_.exit.thread.i ], [ %.sroa.17.0.copyload.i, %bb.bp ] ; 2 uses
  %.sroa.0.2.ph.i = phi ptr [ %.sroa.0117.0.copyload.i, %_ZL16isBitwiseInverseN4llvm7SDValueES0_.exit.thread.i ], [ %.sroa.086.0.copyload.i, %bb.bp ] ; 2 uses
  br i1 %.162.i, label %.thread75.thread.i, label %bb.bx

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bo, %_ZL16isBitwiseInverseN4llvm7SDValueES0_.exit.i, %.split73.i
  %.sroa.15.2.i = phi i32 [ %.sroa.16.0.copyload.i, %bb.br ], [ %.sroa.17.0.copyload.i, %_ZL16isBitwiseInverseN4llvm7SDValueES0_.exit.i ], [ %.sroa.16187.0.copyload.i, %bb.bs ], [ %.sroa.17126.0.copyload.i, %bb.bo ], [ %.sroa.17.0.copyload.i, %.split73.i ], [ %.sroa.16.0.copyload.i, %bb.bq ], [ %.sroa.16187.0.copyload.i, %bb.bt ] ; 2 uses
  %.sroa.010.2.i = phi ptr [ %.sroa.0149.0.copyload.i, %bb.br ], [ %.sroa.086.0.copyload.i, %_ZL16isBitwiseInverseN4llvm7SDValueES0_.exit.i ], [ %.sroa.0178.0.copyload.i, %bb.bs ], [ %.sroa.0117.0.copyload.i, %bb.bo ], [ %.sroa.086.0.copyload.i, %.split73.i ], [ %.sroa.0149.0.copyload.i, %bb.bq ], [ %.sroa.0178.0.copyload.i, %bb.bt ] ; 2 uses
  %.sroa.20.2.i = phi i32 [ %.sroa.17126.0.copyload.i, %bb.br ], [ %.sroa.16.0.copyload.i, %_ZL16isBitwiseInverseN4llvm7SDValueES0_.exit.i ], [ %.sroa.17.0.copyload.i, %bb.bs ], [ %.sroa.16.0.copyload.i, %bb.bo ], [ %.sroa.16.0.copyload.i, %.split73.i ], [ %.sroa.17.0.copyload.i, %bb.bq ], [ %.sroa.17126.0.copyload.i, %bb.bt ] ; 2 uses
  %.sroa.01.2.i = phi ptr [ %.sroa.0117.0.copyload.i, %bb.br ], [ %.sroa.0149.0.copyload.i, %_ZL16isBitwiseInverseN4llvm7SDValueES0_.exit.i ], [ %.sroa.086.0.copyload.i, %bb.bs ], [ %.sroa.0149.0.copyload.i, %bb.bo ], [ %.sroa.0149.0.copyload.i, %.split73.i ], [ %.sroa.086.0.copyload.i, %bb.bq ], [ %.sroa.0117.0.copyload.i, %bb.bt ] ; 3 uses
  %.sroa.14.2.i = phi i32 [ %.sroa.16187.0.copyload.i, %bb.br ], [ %.sroa.17126.0.copyload.i, %_ZL16isBitwiseInverseN4llvm7SDValueES0_.exit.i ], [ %.sroa.16.0.copyload.i, %bb.bs ], [ %.sroa.17.0.copyload.i, %bb.bo ], [ %.sroa.17126.0.copyload.i, %.split73.i ], [ %.sroa.16187.0.copyload.i, %bb.bq ], [ %.sroa.16.0.copyload.i, %bb.bt ] ; 2 uses
  %.sroa.0.2.i = phi ptr [ %.sroa.0178.0.copyload.i, %bb.br ], [ %.sroa.0117.0.copyload.i, %_ZL16isBitwiseInverseN4llvm7SDValueES0_.exit.i ], [ %.sroa.0149.0.copyload.i, %bb.bs ], [ %.sroa.086.0.copyload.i, %bb.bo ], [ %.sroa.0117.0.copyload.i, %.split73.i ], [ %.sroa.0178.0.copyload.i, %bb.bq ], [ %.sroa.0149.0.copyload.i, %bb.bt ] ; 2 uses
  %.not229.i = icmp eq ptr %.sroa.01.2.i, null
  br i1 %.not229.i, label %.thread91.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  br i1 %.162.i, label %.thread75.thread.i, label %bb.bx

.thread75.thread.i:                               ; preds = %bb.bv, %.thread75.i, %bb.bl, %bb.ap
  %.sroa.15.285111.i = phi i32 [ %.sroa.15.2.ph.i, %.thread75.i ], [ %.sroa.15.2.i, %bb.bv ], [ %.sroa.16.0.copyload.i, %bb.ap ], [ %.sroa.16187.0.copyload.i, %bb.bl ] ; 2 uses
  %.sroa.010.286109.i = phi ptr [ %.sroa.010.2.ph.i, %.thread75.i ], [ %.sroa.010.2.i, %bb.bv ], [ %.sroa.0149.0.copyload.i, %bb.ap ], [ %.sroa.0178.0.copyload.i, %bb.bl ] ; 2 uses
  %.sroa.20.287107.i = phi i32 [ %.sroa.16187.0.copyload.i, %.thread75.i ], [ %.sroa.20.2.i, %bb.bv ], [ %.sroa.20.0.i, %bb.ap ], [ %.sroa.20.1.i, %bb.bl ] ; 2 uses
  %.sroa.01.288105.i = phi ptr [ %.sroa.0178.0.copyload.i, %.thread75.i ], [ %.sroa.01.2.i, %bb.bv ], [ %.sroa.01.0.i, %bb.ap ], [ %.sroa.01.1.i, %bb.bl ] ; 2 uses
  %.sroa.14.289103.i = phi i32 [ %.sroa.14.2.ph.i, %.thread75.i ], [ %.sroa.14.2.i, %bb.bv ], [ %.sroa.16187.0.copyload.i, %bb.ap ], [ %.sroa.16.0.copyload.i, %bb.bl ]
  %.sroa.0.290101.i = phi ptr [ %.sroa.0.2.ph.i, %.thread75.i ], [ %.sroa.0.2.i, %bb.bv ], [ %.sroa.0178.0.copyload.i, %bb.ap ], [ %.sroa.0149.0.copyload.i, %bb.bl ]
  %i.hs = call noundef zeroext i1 @_ZNK4llvm5APInt9isAllOnesEv(ptr noundef nonnull align 8 dereferenceable(12) %37)
  br i1 %i.hs, label %.thread91.i, label %bb.bw

bb.bw:                                            ; preds = %.thread75.thread.i
  %i.ht = call noundef zeroext i1 @_ZNK4llvm5APInteqEm(ptr noundef nonnull align 8 dereferenceable(12) %37, i64 noundef 0)
  br i1 %i.ht, label %.thread91.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %.thread75.i
  %.sroa.15.285110.i = phi i32 [ %.sroa.15.2.ph.i, %.thread75.i ], [ %.sroa.15.285111.i, %bb.bw ], [ %.sroa.15.2.i, %bb.bv ]
  %.sroa.010.286108.i = phi ptr [ %.sroa.010.2.ph.i, %.thread75.i ], [ %.sroa.010.286109.i, %bb.bw ], [ %.sroa.010.2.i, %bb.bv ]
  %.sroa.20.287106.i = phi i32 [ %.sroa.16187.0.copyload.i, %.thread75.i ], [ %.sroa.20.287107.i, %bb.bw ], [ %.sroa.20.2.i, %bb.bv ]
  %.sroa.01.288104.i = phi ptr [ %.sroa.0178.0.copyload.i, %.thread75.i ], [ %.sroa.01.288105.i, %bb.bw ], [ %.sroa.01.2.i, %bb.bv ]
  %.sroa.14.289102.i = phi i32 [ %.sroa.14.2.ph.i, %.thread75.i ], [ %.sroa.14.289103.i, %bb.bw ], [ %.sroa.14.2.i, %bb.bv ]
  %.sroa.0.290100.i = phi ptr [ %.sroa.0.2.ph.i, %.thread75.i ], [ %.sroa.0.290101.i, %bb.bw ], [ %.sroa.0.2.i, %bb.bv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #24
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !192
  store i64 %i.hv, ptr %47, align 8, !tbaa !192
  %i.hw = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !193
  store i32 %i.hy, ptr %i.hw, align 8, !tbaa !194
  %.sroa.01.0.copyload.i97 = load i16, ptr %36, align 8, !tbaa !188
  %.sroa.23.0.copyload.i = load ptr, ptr %i.ce, align 8, !tbaa !190
  store ptr %.sroa.0.290100.i, ptr %48, align 8, !tbaa !197
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i32 %.sroa.14.289102.i, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !163
  store ptr %.sroa.010.286108.i, ptr %49, align 8, !tbaa !197
  %.sroa.15.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i32 %.sroa.15.285110.i, ptr %.sroa.15.0..sroa_idx12.i, align 8, !tbaa !163
  store ptr %.sroa.01.288104.i, ptr %50, align 8, !tbaa !197
  %.sroa.20.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i32 %.sroa.20.287106.i, ptr %.sroa.20.0..sroa_idx6.i, align 8, !tbaa !163
  %i.hz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 220, ptr noundef nonnull align 8 dereferenceable(12) %47, i16 %.sroa.01.0.copyload.i97, ptr %.sroa.23.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %48, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %49, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %50) #24 ; 2 uses
  %.fca.0.extract.i98 = extractvalue { ptr, i32 } %i.hz, 0
  %.fca.1.extract.i99 = extractvalue { ptr, i32 } %i.hz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #24
  br label %.thread91.i

.thread91.i:                                      ; preds = %bb.bx, %bb.bw, %.thread75.thread.i, %bb.bu, %bb.bt
  %.sroa.023.0.i = phi ptr [ %.fca.0.extract.i98, %bb.bx ], [ null, %bb.bu ], [ %.sroa.010.286109.i, %.thread75.thread.i ], [ %.sroa.01.288105.i, %bb.bw ], [ null, %bb.bt ]
  %.sroa.12.0.i = phi i32 [ %.fca.1.extract.i99, %bb.bx ], [ 0, %bb.bu ], [ %.sroa.15.285111.i, %.thread75.thread.i ], [ %.sroa.20.287107.i, %bb.bw ], [ 0, %bb.bt ]
  %i.ia = load i32, ptr %i.dd, align 8, !tbaa !235
  %i.ib = icmp ugt i32 %i.ia, 64
  br i1 %i.ib, label %bb.by, label %_ZN4llvm5APIntD2Ev.exit258.i

bb.by:                                            ; preds = %.thread91.i
  %i.ic = load ptr, ptr %38, align 8, !tbaa !160  ; 2 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %_ZN4llvm5APIntD2Ev.exit258.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZdaPv(ptr noundef nonnull %i.ic) #28
  br label %_ZN4llvm5APIntD2Ev.exit258.i

_ZN4llvm5APIntD2Ev.exit258.i:                     ; preds = %bb.bz, %bb.by, %.thread91.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  %i.ie = load i32, ptr %i.dc, align 8, !tbaa !235
  %i.if = icmp ugt i32 %i.ie, 64
  br i1 %i.if, label %bb.ca, label %_ZN4llvm5APIntD2Ev.exit259.i

bb.ca:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit258.i
  %i.ig = load ptr, ptr %37, align 8, !tbaa !160  ; 2 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %_ZN4llvm5APIntD2Ev.exit259.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @_ZdaPv(ptr noundef nonnull %i.ig) #28
  br label %_ZN4llvm5APIntD2Ev.exit259.i

_ZN4llvm5APIntD2Ev.exit259.i:                     ; preds = %bb.cb, %bb.ca, %_ZN4llvm5APIntD2Ev.exit258.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  br label %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread.i

_ZNK4llvm3EVT14is128BitVectorEv.exit.thread.i:    ; preds = %_ZN4llvm5APIntD2Ev.exit259.i, %bb.s, %bb.r, %_ZNK4llvm3EVT14is128BitVectorEv.exit.i, %.split.i, %bb.q
  %.sroa.023.2.i = phi ptr [ null, %_ZNK4llvm3EVT14is128BitVectorEv.exit.i ], [ null, %.split.i ], [ null, %bb.r ], [ %.sroa.023.0.i, %_ZN4llvm5APIntD2Ev.exit259.i ], [ null, %bb.s ], [ null, %bb.q ]
  %.sroa.12.2.i = phi i32 [ 0, %_ZNK4llvm3EVT14is128BitVectorEv.exit.i ], [ 0, %.split.i ], [ 0, %bb.r ], [ %.sroa.12.0.i, %_ZN4llvm5APIntD2Ev.exit259.i ], [ 0, %bb.s ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

_ZL16performORCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit: ; preds = %bb.o, %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread.i
  %.sroa.023.3.i = phi ptr [ %.sroa.023.2.i, %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread.i ], [ null, %bb.o ]
  %.sroa.12.3.i = phi i32 [ %.sroa.12.2.i, %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread.i ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40)
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  call void @llvm.lifetime.end.p0(ptr nonnull %44)
  call void @llvm.lifetime.end.p0(ptr nonnull %46)
  call void @llvm.lifetime.end.p0(ptr nonnull %48)
  call void @llvm.lifetime.end.p0(ptr nonnull %49)
  call void @llvm.lifetime.end.p0(ptr nonnull %50)
  br label %_ZL17performSHLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.cc:                                            ; preds = %bb.a
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !23, !nonnull !19, !align !56
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !175 ; 2 uses
  %.sroa.0.0.copyload.i.i102 = load i16, ptr %i.il, align 8, !tbaa !188 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i103 = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %.sroa.21.0.copyload.i.i104 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i103, align 8, !tbaa !190 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i102, ptr %31, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 4 uses
  store ptr %.sroa.21.0.copyload.i.i104, ptr %i.im, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !196
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 40
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !212 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !199
  switch i32 %i.is, label %_ZL17performMULCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14TargetLowering15DAGCombinerInfoEPKNS_20MipsSETargetLoweringERKNS_13MipsSubtargetE.exit [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i: ; preds = %bb.cc, %bb.cc
  %.not.i.i105 = icmp eq i16 %.sroa.0.0.copyload.i.i102, 0
  br i1 %.not.i.i105, label %_ZNK4llvm3EVT8isVectorEv.exit.i, label %.split.i106

.split.i106:                                      ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i
  %i.it = add i16 %.sroa.0.0.copyload.i.i102, -19
  %spec.select.i.i.i = icmp ult i16 %i.it, 197
  br i1 %spec.select.i.i.i, label %_ZL17performMULCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14TargetLowering15DAGCombinerInfoEPKNS_20MipsSETargetLoweringERKNS_13MipsSubtargetE.exit, label %bb.cd

_ZNK4llvm3EVT8isVectorEv.exit.i:                  ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i
  %i.iu = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %31) #26
  br i1 %i.iu, label %_ZL17performMULCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_14TargetLowering15DAGCombinerInfoEPKNS_20MipsSETargetLoweringERKNS_13MipsSubtargetE.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i, %.split.i106
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 88 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !232 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !235 ; 2 uses
  store i32 %i.ja, ptr %i.iy, align 8, !tbaa !235
  %i.jb = icmp ult i32 %i.ja, 65
  br i1 %i.jb, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.jc = load i64, ptr %i.ix, align 8, !tbaa !160
  store i64 %i.jc, ptr %32, align 8, !tbaa !160
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i107

bb.cf:                                            ; preds = %bb.cd
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %32, ptr noundef nonnull align 8 dereferenceable(12) %i.ix) #24
  %.sroa.010.0.copyload.pre.i = load i16, ptr %31, align 8, !tbaa !188
  %.sroa.212.0.copyload.pre.i = load ptr, ptr %i.im, align 8, !tbaa !190
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i107

_ZN4llvm5APIntC2ERKS0_.exit.i107:                 ; preds = %bb.cf, %bb.ce
  %.sroa.212.0.copyload.i = phi ptr [ %.sroa.21.0.copyload.i.i104, %bb.ce ], [ %.sroa.212.0.copyload.pre.i, %bb.cf ] ; 2 uses
  %.sroa.010.0.copyload.i = phi i16 [ %.sroa.0.0.copyload.i.i102, %bb.ce ], [ %.sroa.010.0.copyload.pre.i, %bb.cf ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  store i16 %.sroa.010.0.copyload.i, ptr %16, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %.sroa.212.0.copyload.i, ptr %i.jd, align 8
  %i.je = call noundef zeroext i1 @_ZNK4llvm13MipsSubtarget9isABI_O32Ev(ptr noundef nonnull align 8 dereferenceable(536) %i.ij) #24
  %i.jf = select i1 %i.je, i32 8, i32 12          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.jg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.jg, ptr %17, align 8, !tbaa !21
  %i.jh = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 20 uses
  store i32 0, ptr %i.jh, align 8, !tbaa !200
  %i.ji = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 4 uses
  store i32 16, ptr %i.ji, align 4, !tbaa !201
  call void @_ZN4llvm15SmallVectorImplINS_5APIntEE6assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(272) %17, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %32)
  %i.jj = load i32, ptr %i.iy, align 8, !tbaa !235 ; 4 uses
  %i.jk = load i32, ptr %i.jh, align 8, !tbaa !200 ; 2 uses
  %.not.i103.i.i = icmp eq i32 %i.jk, 0
  br i1 %.not.i103.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i107
  %i.jl = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 7 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.jn = icmp ult i32 %i.jj, 65                  ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 6 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.jw = ptrtoint ptr %21 to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 4 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.jz = ptrtoint ptr %29 to i64
  %i.ka = ptrtoint ptr %19 to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.kd = ptrtoint ptr %27 to i64
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit83.jt0.i.i, %.lr.ph.i.i
  %i.ke = phi i32 [ %i.jk, %.lr.ph.i.i ], [ %i.tz, %_ZN4llvm5APIntD2Ev.exit83.jt0.i.i ] ; 2 uses
  %.023104.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.124.jt0143.i.i, %_ZN4llvm5APIntD2Ev.exit83.jt0.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.kf = load ptr, ptr %17, align 8, !tbaa !21, !noalias !350 ; 2 uses
  %i.kg = zext i32 %i.ke to i64
  %i.kh = getelementptr inbounds nuw [16 x i8], ptr %i.kf, i64 %i.kg ; 2 uses
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 -16
  %i.kj = getelementptr inbounds i8, ptr %i.kh, i64 -8 ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !235, !noalias !350
  store i32 %i.kk, ptr %i.jl, align 8, !tbaa !235, !alias.scope !350
  %i.kl = load i64, ptr %i.ki, align 8, !noalias !350
  store i64 %i.kl, ptr %18, align 8, !alias.scope !350
  store i32 0, ptr %i.kj, align 8, !tbaa !235, !noalias !350
  %i.km = add i32 %i.ke, -1                       ; 2 uses
  store i32 %i.km, ptr %i.jh, align 8, !tbaa !200, !noalias !350
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [16 x i8], ptr %i.kf, i64 %i.kn ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !235, !noalias !350
  %i.kr = icmp ugt i32 %i.kq, 64
  br i1 %i.kr, label %bb.ch, label %_ZN4llvm15SmallVectorImplINS_5APIntEE12pop_back_valEv.exit.i.i

bb.ch:                                            ; preds = %bb.cg
  %i.ks = load ptr, ptr %i.ko, align 8, !tbaa !160, !noalias !350 ; 2 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %_ZN4llvm15SmallVectorImplINS_5APIntEE12pop_back_valEv.exit.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @_ZdaPv(ptr noundef nonnull %i.ks) #28, !noalias !350
  br label %_ZN4llvm15SmallVectorImplINS_5APIntEE12pop_back_valEv.exit.i.i

_ZN4llvm15SmallVectorImplINS_5APIntEE12pop_back_valEv.exit.i.i: ; preds = %bb.ci, %bb.ch, %bb.cg
  %i.ku = load i32, ptr %i.jl, align 8, !tbaa !235 ; 6 uses
  %i.kv = icmp ult i32 %i.ku, 65                  ; 2 uses
  br i1 %i.kv, label %_ZNK4llvm5APInteqEm.exit.i.i, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i:      ; preds = %_ZN4llvm15SmallVectorImplINS_5APIntEE12pop_back_valEv.exit.i.i
  %i.kw = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %18) #26
  %i.kx = sub i32 %i.ku, %i.kw
  %i.ky = icmp ult i32 %i.kx, 65
  br i1 %i.ky, label %_ZNK4llvm5APInteqEm.exit.thread92.i.i, label %.thread96.i.i

_ZNK4llvm5APInteqEm.exit.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplINS_5APIntEE12pop_back_valEv.exit.i.i
  %.0.i.i.i29.i = load i64, ptr %18, align 8      ; 4 uses
  %i.kz = icmp eq i64 %.0.i.i.i29.i, 0
  %i.la = inttoptr i64 %.0.i.i.i29.i to ptr
  br i1 %i.kz, label %_ZN4llvm5APIntD2Ev.exit83.jt0.i.i, label %_ZNK4llvm5APInteqEm.exit32.i.i, !llvm.loop !353

_ZNK4llvm5APInteqEm.exit.thread92.i.i:            ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i
  %i.lb = load ptr, ptr %18, align 8              ; 4 uses
  %.0.i.i94.i.i = load i64, ptr %i.lb, align 8, !tbaa !160 ; 2 uses
  %i.lc = icmp eq i64 %.0.i.i94.i.i, 0
  br i1 %i.lc, label %.thread148.i.i, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i29._ZNK4llvm5APInteqEm.exit32_crit_edge.i.i, !llvm.loop !353

_ZNK4llvm5APInt13getActiveBitsEv.exit.i29._ZNK4llvm5APInteqEm.exit32_crit_edge.i.i: ; preds = %_ZNK4llvm5APInteqEm.exit.thread92.i.i
  %i.ld = ptrtoint ptr %i.lb to i64
  br label %_ZNK4llvm5APInteqEm.exit32.i.i

_ZNK4llvm5APInteqEm.exit32.i.i:                   ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i29._ZNK4llvm5APInteqEm.exit32_crit_edge.i.i, %_ZNK4llvm5APInteqEm.exit.i.i
  %i.le = phi ptr [ %i.lb, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i29._ZNK4llvm5APInteqEm.exit32_crit_edge.i.i ], [ %i.la, %_ZNK4llvm5APInteqEm.exit.i.i ]
  %.0.i.i31.i.i = phi i64 [ %.0.i.i94.i.i, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i29._ZNK4llvm5APInteqEm.exit32_crit_edge.i.i ], [ %.0.i.i.i29.i, %_ZNK4llvm5APInteqEm.exit.i.i ]
  %i.lf = phi i64 [ %i.ld, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i29._ZNK4llvm5APInteqEm.exit32_crit_edge.i.i ], [ %.0.i.i.i29.i, %_ZNK4llvm5APInteqEm.exit.i.i ]
  %i.lg = icmp eq i64 %.0.i.i31.i.i, 1
  br i1 %i.lg, label %bb.ex, label %bb.cj, !llvm.loop !353

bb.cj:                                            ; preds = %_ZNK4llvm5APInteqEm.exit32.i.i
  %.not28.i.i = icmp ult i32 %.023104.i.i, %i.jf
  br i1 %.not28.i.i, label %bb.ck, label %bb.ew

.thread96.i.i:                                    ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i
  %.not2897.i.i = icmp ult i32 %.023104.i.i, %i.jf
  br i1 %.not2897.i.i, label %.split.i.i117, label %.thread.i.loopexit.i

bb.ck:                                            ; preds = %bb.cj
end_hunk_1
begin_hunk_2_@_ZNK4llvm20MipsSETargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a
bb.fm:                                            ; preds = %bb.a
  %i.wi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !175 ; 2 uses
  %.sroa.0.0.copyload.i.i122 = load i16, ptr %i.wj, align 8, !tbaa !188 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i123 = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %.sroa.21.0.copyload.i.i124 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i123, align 8, !tbaa !190
  %.not.i.i125 = icmp ne i16 %.sroa.0.0.copyload.i.i122, 56
  %i.wk = icmp ne ptr %.sroa.21.0.copyload.i.i124, null
  %.not.i7.i = icmp ne i16 %.sroa.0.0.copyload.i.i122, 43
  %i.wl = and i1 %.not.i.i125, %.not.i7.i
  %or.cond.i126 = select i1 %i.wl, i1 true, i1 %i.wk
  br i1 %or.cond.i126, label %.thread, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !23, !nonnull !19, !align !56
  %i.wo = tail call fastcc { ptr, i32 } @_ZL22performDSPShiftCombinejPN4llvm6SDNodeENS_3EVTERNS_12SelectionDAGERKNS_13MipsSubtargetE(i32 noundef 624, ptr noundef nonnull readonly %1, i16 %.sroa.0.0.copyload.i.i122, ptr null, ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(536) %i.wn) ; 2 uses
  %.fca.0.extract.i127 = extractvalue { ptr, i32 } %i.wo, 0
  %.fca.1.extract.i128 = extractvalue { ptr, i32 } %i.wo, 1
  br label %_ZL17performSHLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.fo:                                            ; preds = %bb.a
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !23, !nonnull !19, !align !56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.wr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !175 ; 2 uses
  %.sroa.0.0.copyload.i.i131 = load i16, ptr %i.ws, align 8, !tbaa !188 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i132 = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %.sroa.21.0.copyload.i.i133 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i132, align 8, !tbaa !190 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wq, i64 384
  %i.wu = load i8, ptr %i.wt, align 8, !tbaa !57, !range !18, !noundef !19
  %i.wv = trunc nuw i8 %i.wu to i1
  br i1 %i.wv, label %bb.fp, label %.critedge36.i

bb.fp:                                            ; preds = %bb.fo
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !196 ; 3 uses
  %.sroa.016.0.copyload.i139 = load ptr, ptr %i.wx, align 8, !tbaa !197 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 40
  %.sroa.013.0.copyload.i = load ptr, ptr %i.wy, align 8, !tbaa !197 ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload.i139, i64 24
  %i.xa = load i32, ptr %i.wz, align 8, !tbaa !199
  %i.xb = icmp eq i32 %i.xa, 198
  br i1 %i.xb, label %bb.fq, label %.critedge36.i

bb.fq:                                            ; preds = %bb.fp
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wx, i64 48
  %.sroa.615.0.copyload.i = load i32, ptr %.sroa.615.0..sroa_idx.i, align 8, !tbaa !163
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload.i139, i64 40
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !196 ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 40
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !212
  %i.xg = icmp eq ptr %.sroa.013.0.copyload.i, %i.xf
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xd, i64 48
  %i.xi = load i32, ptr %i.xh, align 8
  %i.xj = icmp eq i32 %.sroa.615.0.copyload.i, %i.xi
  %i.xk = select i1 %i.xg, i1 %i.xj, i1 false
  br i1 %i.xk, label %bb.fr, label %.critedge36.i

bb.fr:                                            ; preds = %bb.fq
  %.sroa.04.0.copyload.i = load ptr, ptr %i.xd, align 8, !tbaa !197 ; 7 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i, i64 24
  %i.xm = load i32, ptr %i.xl, align 8, !tbaa !199
  switch i32 %i.xm, label %_ZL17performSRACombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i140
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i140
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i140: ; preds = %bb.fr, %bb.fr
  %i.xn = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 24
  %i.xo = load i32, ptr %i.xn, align 8, !tbaa !199 ; 2 uses
  %.not33.i = icmp eq i32 %i.xo, 638
  %i.xp = and i32 %i.xo, -2
  %i.xq = icmp eq i32 %i.xp, 638
  br i1 %i.xq, label %bb.fs, label %_ZL17performSRACombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.fs:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i140
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.xr = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 40
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !196 ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 80 ; 2 uses
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !212 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 88
  %.sroa.0.0.copyload.i39.i = load i16, ptr %i.xv, align 8, !tbaa !188 ; 3 uses
  %.sroa.21.0..sroa_idx.i40.i = getelementptr inbounds nuw i8, ptr %i.xu, i64 96
  %.sroa.21.0.copyload.i41.i = load ptr, ptr %.sroa.21.0..sroa_idx.i40.i, align 8, !tbaa !190
  store i16 %.sroa.0.0.copyload.i39.i, ptr %11, align 8
  %i.xw = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %.sroa.21.0.copyload.i41.i, ptr %i.xw, align 8
  %i.xx = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i, i64 88
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !232 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 24 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xy, i64 32
  %i.yb = load i32, ptr %i.ya, align 8, !tbaa !235
  %i.yc = icmp ult i32 %i.yb, 65
  %i.yd = load ptr, ptr %i.xz, align 8
  %spec.select.i.i.i.i141 = select i1 %i.yc, ptr %i.xz, ptr %i.yd
  %.0.i.i.i44.i = load i64, ptr %spec.select.i.i.i.i141, align 8, !tbaa !160
  %.not.i.i142 = icmp eq i16 %.sroa.0.0.copyload.i39.i, 0
  br i1 %.not.i.i142, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ye = zext i16 %.sroa.0.0.copyload.i39.i to i64
  %i.yf = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ye ; 2 uses
  %i.yg = getelementptr i8, ptr %i.yf, i64 -16
  %.sroa.0.0.copyload.i.i.i143 = load i64, ptr %i.yg, align 16
  %.sroa.2.0..sroa_idx.i.i.i144 = getelementptr i8, ptr %i.yf, i64 -8
  %.sroa.2.0.copyload.i.i.i145 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i144, align 8
  %.fca.0.insert.i.i.i146 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i143, 0
  %.fca.1.insert.i.i.i147 = insertvalue { i64, i8 } %.fca.0.insert.i.i.i146, i8 %.sroa.2.0.copyload.i.i.i145, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i148

bb.fu:                                            ; preds = %bb.fs
  %i.yh = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #26
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i148

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i148:         ; preds = %bb.fu, %bb.ft
  %.pn.i.i149 = phi { i64, i8 } [ %.fca.1.insert.i.i.i147, %bb.ft ], [ %i.yh, %bb.fu ] ; 2 uses
  %.fca.1.extract15.i = extractvalue { i64, i8 } %.pn.i.i149, 1
  %i.yi = trunc nuw i8 %.fca.1.extract15.i to i1
  br i1 %i.yi, label %bb.fv, label %_ZNK4llvm8TypeSizecvmEv.exit.i150

bb.fv:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i148
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i150:                ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i148
  %.fca.0.extract14.i = extractvalue { i64, i8 } %.pn.i.i149, 0
  %i.yj = add i64 %.fca.0.extract14.i, %.0.i.i.i44.i
  %i.yk = trunc i64 %i.yj to i32                  ; 2 uses
  %i.yl = icmp eq i32 %i.yk, 32
  %i.ym = icmp ult i32 %i.yk, 33
  %or.cond.i151 = and i1 %.not33.i, %i.ym
  %or.cond31.i = or i1 %i.yl, %or.cond.i151
  br i1 %or.cond31.i, label %.critedge38.i, label %bb.fw

.critedge38.i:                                    ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i150
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %i.xs, i64 12, i1 false), !tbaa.struct !237
  %i.yn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xs, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.yn, ptr noundef nonnull align 8 dereferenceable(12) %i.yo, i64 12, i1 false), !tbaa.struct !237
  %i.yp = getelementptr inbounds nuw i8, ptr %12, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.yp, ptr noundef nonnull align 8 dereferenceable(12) %i.xt, i64 12, i1 false), !tbaa.struct !237
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.yq = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 72
  %i.yr = load i64, ptr %i.yq, align 8, !tbaa !192
  store i64 %i.yr, ptr %13, align 8, !tbaa !192
  %i.ys = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.yt = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 68
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !193
  store i32 %i.yu, ptr %i.ys, align 8, !tbaa !194
  %i.yv = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 48
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !175
  %i.yx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 66
  %i.yy = load i16, ptr %i.yx, align 2, !tbaa !349
  %i.yz = zext i16 %i.yy to i32
  %i.za = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload.i, i64 64
  %i.zb = load i16, ptr %i.za, align 8, !tbaa !321
  %i.zc = zext i16 %i.zb to i64
  store ptr %12, ptr %14, align 8, !tbaa !207
  %i.zd = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.zc, ptr %i.zd, align 8, !tbaa !210
  %i.ze = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 638, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr %i.yw, i32 %i.yz, ptr noundef nonnull byval(%"class.llvm::ArrayRef.133") align 8 %14) #24 ; 2 uses
  %.fca.0.extract6.i = extractvalue { ptr, i32 } %i.ze, 0
  %.fca.1.extract7.i = extractvalue { ptr, i32 } %i.ze, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %_ZL17performSRACombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.fw:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %.critedge36.i

.critedge36.i:                                    ; preds = %bb.fw, %bb.fq, %bb.fp, %bb.fo
  %.not.i47.i = icmp ne i16 %.sroa.0.0.copyload.i.i131, 56
  %i.zf = icmp ne ptr %.sroa.21.0.copyload.i.i133, null ; 2 uses
  %i.zg = select i1 %.not.i47.i, i1 true, i1 %i.zf
  br i1 %i.zg, label %bb.fx, label %bb.fz

bb.fx:                                            ; preds = %.critedge36.i
  %.not.i48.i = icmp ne i16 %.sroa.0.0.copyload.i.i131, 43
  %i.zh = select i1 %.not.i48.i, i1 true, i1 %i.zf
  br i1 %i.zh, label %_ZL17performSRACombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.zi = getelementptr inbounds nuw i8, ptr %i.wq, i64 379
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !162, !range !18, !noundef !19
  %i.zk = trunc nuw i8 %i.zj to i1
  br i1 %i.zk, label %bb.fz, label %_ZL17performSRACombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.fz:                                            ; preds = %bb.fy, %.critedge36.i
  %i.zl = call fastcc { ptr, i32 } @_ZL22performDSPShiftCombinejPN4llvm6SDNodeENS_3EVTERNS_12SelectionDAGERKNS_13MipsSubtargetE(i32 noundef 625, ptr noundef nonnull readonly %1, i16 %.sroa.0.0.copyload.i.i131, ptr %.sroa.21.0.copyload.i.i133, ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(536) %i.wq) ; 2 uses
  %.fca.0.extract.i134 = extractvalue { ptr, i32 } %i.zl, 0
  %.fca.1.extract.i135 = extractvalue { ptr, i32 } %i.zl, 1
  br label %_ZL17performSRACombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

_ZL17performSRACombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit: ; preds = %bb.fr, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i140, %.critedge38.i, %bb.fx, %bb.fy, %bb.fz
  %.sroa.9.2.i = phi i32 [ %.fca.1.extract.i135, %bb.fz ], [ 0, %bb.fr ], [ %.fca.1.extract7.i, %.critedge38.i ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i140 ], [ 0, %bb.fy ], [ 0, %bb.fx ]
  %.sroa.026.2.i = phi ptr [ %.fca.0.extract.i134, %bb.fz ], [ null, %bb.fr ], [ %.fca.0.extract6.i, %.critedge38.i ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i140 ], [ null, %bb.fy ], [ null, %bb.fx ]
  %.fca.0.insert.i137 = insertvalue { ptr, i32 } poison, ptr %.sroa.026.2.i, 0
  %.fca.1.insert.i138 = insertvalue { ptr, i32 } %.fca.0.insert.i137, i32 %.sroa.9.2.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.gy

bb.ga:                                            ; preds = %bb.a
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !23, !nonnull !19, !align !56 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !175 ; 2 uses
  %.sroa.0.0.copyload.i.i152 = load i16, ptr %i.zp, align 8, !tbaa !188 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i153 = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %.sroa.21.0.copyload.i.i154 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i153, align 8, !tbaa !190 ; 2 uses
  %.not.i.i155 = icmp ne i16 %.sroa.0.0.copyload.i.i152, 56
  %i.zq = icmp ne ptr %.sroa.21.0.copyload.i.i154, null ; 2 uses
  %i.zr = select i1 %.not.i.i155, i1 true, i1 %i.zq
  br i1 %i.zr, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zn, i64 379
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !162, !range !18, !noundef !19
  %i.zu = trunc nuw i8 %i.zt to i1
  br i1 %i.zu, label %bb.gd, label %_ZL17performSRLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.gc:                                            ; preds = %bb.ga
  %.not.i8.i = icmp ne i16 %.sroa.0.0.copyload.i.i152, 43
  %i.zv = select i1 %.not.i8.i, i1 true, i1 %i.zq
  br i1 %i.zv, label %_ZL17performSRLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit, label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %i.zw = tail call fastcc { ptr, i32 } @_ZL22performDSPShiftCombinejPN4llvm6SDNodeENS_3EVTERNS_12SelectionDAGERKNS_13MipsSubtargetE(i32 noundef 626, ptr noundef nonnull readonly %1, i16 %.sroa.0.0.copyload.i.i152, ptr %.sroa.21.0.copyload.i.i154, ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(536) %i.zn) ; 2 uses
  %.fca.0.extract.i161 = extractvalue { ptr, i32 } %i.zw, 0
  %.fca.1.extract.i162 = extractvalue { ptr, i32 } %i.zw, 1
  br label %_ZL17performSRLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

_ZL17performSRLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit: ; preds = %bb.gb, %bb.gc, %bb.gd
  %.sroa.4.0.i157 = phi i32 [ %.fca.1.extract.i162, %bb.gd ], [ 0, %bb.gc ], [ 0, %bb.gb ]
  %.sroa.08.0.i158 = phi ptr [ %.fca.0.extract.i161, %bb.gd ], [ null, %bb.gc ], [ null, %bb.gb ]
  %.fca.0.insert.i159 = insertvalue { ptr, i32 } poison, ptr %.sroa.08.0.i158, 0
  %.fca.1.insert.i160 = insertvalue { ptr, i32 } %.fca.0.insert.i159, i32 %.sroa.4.0.i157, 1
  br label %bb.gy

bb.ge:                                            ; preds = %bb.a
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !175 ; 2 uses
  %.sroa.0.0.copyload.i.i163 = load i16, ptr %i.zy, align 8, !tbaa !188 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i164 = getelementptr inbounds nuw i8, ptr %i.zy, i64 8
  %.sroa.21.0.copyload.i.i165 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i164, align 8, !tbaa !190
  %.not.i.i.i166 = icmp eq i16 %.sroa.0.0.copyload.i.i163, 56
  %i.zz = icmp eq ptr %.sroa.21.0.copyload.i.i165, null
  %.not.i.i9.i = icmp eq i16 %.sroa.0.0.copyload.i.i163, 43
  %i.aaa = or i1 %.not.i.i.i166, %.not.i.i9.i
  %or.cond.i167 = select i1 %i.aaa, i1 %i.zz, i1 false
  br i1 %or.cond.i167, label %bb.gf, label %_ZL21performVSELECTCombinePN4llvm6SDNodeERNS_12SelectionDAGE.exit

bb.gf:                                            ; preds = %bb.ge
  %i.aab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !196 ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aac, align 8, !tbaa !197 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.aae = load i32, ptr %i.aad, align 8, !tbaa !199
  %.not.i170 = icmp eq i32 %i.aae, 621
  br i1 %.not.i170, label %bb.gg, label %_ZL21performVSELECTCombinePN4llvm6SDNodeERNS_12SelectionDAGE.exit

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.aaf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aag = load i64, ptr %i.aaf, align 8, !tbaa !192
  store i64 %i.aag, ptr %10, align 8, !tbaa !192
  %i.aah = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aai = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !193
  store i32 %i.aaj, ptr %i.aah, align 8, !tbaa !194
  %i.aak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !196 ; 3 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 40
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aac, i64 40
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aac, i64 80
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aal, i64 80
  %i.aaq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 620, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.0.0.copyload.i.i163, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.aal, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.aam, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.aan, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.aao, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.aap) #24 ; 2 uses
  %.fca.0.extract.i171 = extractvalue { ptr, i32 } %i.aaq, 0
  %.fca.1.extract.i172 = extractvalue { ptr, i32 } %i.aaq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %_ZL21performVSELECTCombinePN4llvm6SDNodeERNS_12SelectionDAGE.exit

_ZL21performVSELECTCombinePN4llvm6SDNodeERNS_12SelectionDAGE.exit: ; preds = %bb.ge, %bb.gf, %bb.gg
  %.sroa.623.1.i = phi i32 [ 0, %bb.gf ], [ %.fca.1.extract.i172, %bb.gg ], [ 0, %bb.ge ]
  %.sroa.022.1.i = phi ptr [ null, %bb.gf ], [ %.fca.0.extract.i171, %bb.gg ], [ null, %bb.ge ]
  %.fca.0.insert.i168 = insertvalue { ptr, i32 } poison, ptr %.sroa.022.1.i, 0
  %.fca.1.insert.i169 = insertvalue { ptr, i32 } %.fca.0.insert.i168, i32 %.sroa.623.1.i, 1
  br label %bb.gy

bb.gh:                                            ; preds = %bb.a
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !23, !nonnull !19, !align !56
  %i.aat = getelementptr i8, ptr %i.aas, i64 384
  %.val90 = load i8, ptr %i.aat, align 8, !tbaa !57, !range !18, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.aau = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !175 ; 2 uses
  %.sroa.0.0.copyload.i.i173 = load i16, ptr %i.aav, align 8, !tbaa !188 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i174 = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %.sroa.21.0.copyload.i.i175 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i174, align 8, !tbaa !190
  store i16 %.sroa.0.0.copyload.i.i173, ptr %8, align 8
  %i.aaw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i.i175, ptr %i.aaw, align 8
  %i.aax = trunc nuw i8 %.val90 to i1
  br i1 %i.aax, label %bb.gi, label %_ZL17performXORCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_13MipsSubtargetE.exit

bb.gi:                                            ; preds = %bb.gh
  %.not.i.i179 = icmp eq i16 %.sroa.0.0.copyload.i.i173, 0
  br i1 %.not.i.i179, label %.split.i190, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.aay = add i16 %.sroa.0.0.copyload.i.i173, -19
  %spec.select.i.i.i.i180 = icmp ult i16 %i.aay, 144
  br i1 %spec.select.i.i.i.i180, label %_ZNK4llvm3EVT14is128BitVectorEv.exit.i181, label %_ZL17performXORCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_13MipsSubtargetE.exit

.split.i190:                                      ; preds = %bb.gi
  %i.aaz = call noundef zeroext i1 @_ZNK4llvm3EVT22isExtended128BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #26
  br i1 %i.aaz, label %_ZNK4llvm3EVT9isIntegerEv.exit.i, label %_ZL17performXORCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_13MipsSubtargetE.exit

_ZNK4llvm3EVT14is128BitVectorEv.exit.i181:        ; preds = %bb.gj
  %i.aba = zext nneg i16 %.sroa.0.0.copyload.i.i173 to i64
  %i.abb = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.aba
  %i.abc = getelementptr i8, ptr %i.abb, i64 -16
  %.sroa.0.0.copyload.i.i.i.i.i182 = load i64, ptr %i.abc, align 16
  %i.abd = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i182, 128
  %or.cond3.i.i.i = icmp samesign ult i16 %.sroa.0.0.copyload.i.i173, 105
  %or.cond.i183 = select i1 %i.abd, i1 %or.cond3.i.i.i, i1 false
  br i1 %or.cond.i183, label %bb.gk, label %_ZL17performXORCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_13MipsSubtargetE.exit

_ZNK4llvm3EVT9isIntegerEv.exit.i:                 ; preds = %.split.i190
  %i.abe = call noundef zeroext i1 @_ZNK4llvm3EVT17isExtendedIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #26
  br i1 %i.abe, label %bb.gk, label %_ZL17performXORCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_13MipsSubtargetE.exit

bb.gk:                                            ; preds = %_ZNK4llvm3EVT9isIntegerEv.exit.i, %_ZNK4llvm3EVT14is128BitVectorEv.exit.i181
  %i.abf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !196 ; 2 uses
  %.sroa.07.0.copyload.i184 = load ptr, ptr %i.abg, align 8, !tbaa !197 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 40
  %.sroa.06.0.copyload.i = load ptr, ptr %i.abh, align 8, !tbaa !197 ; 2 uses
  %i.abi = call noundef zeroext i1 @_ZN4llvm3ISD20isBuildVectorAllOnesEPKNS_6SDNodeE(ptr noundef %.sroa.07.0.copyload.i184) #24
  br i1 %i.abi, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.abj = call noundef zeroext i1 @_ZN4llvm3ISD20isBuildVectorAllOnesEPKNS_6SDNodeE(ptr noundef %.sroa.06.0.copyload.i) #24
  br i1 %i.abj, label %bb.gm, label %_ZL17performXORCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_13MipsSubtargetE.exit

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %.sroa.0.0.i185 = phi ptr [ %.sroa.06.0.copyload.i, %bb.gk ], [ %.sroa.07.0.copyload.i184, %bb.gl ] ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i185, i64 24
  %i.abl = load i32, ptr %i.abk, align 8, !tbaa !199
  %i.abm = icmp eq i32 %i.abl, 194
  br i1 %i.abm, label %bb.gn, label %_ZL17performXORCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_13MipsSubtargetE.exit

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.abn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.abo = load i64, ptr %i.abn, align 8, !tbaa !192
  store i64 %i.abo, ptr %9, align 8, !tbaa !192
  %i.abp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.abq = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.abr = load i32, ptr %i.abq, align 4, !tbaa !193
  store i32 %i.abr, ptr %i.abp, align 8, !tbaa !194
  %.sroa.01.0.copyload.i186 = load i16, ptr %8, align 8, !tbaa !188
  %.sroa.23.0.copyload.i187 = load ptr, ptr %i.aaw, align 8, !tbaa !190
  %i.abs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i185, i64 40
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !196 ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 40
  %i.abv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 640, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.01.0.copyload.i186, ptr %.sroa.23.0.copyload.i187, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.abt, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.abu) #24 ; 2 uses
  %.fca.0.extract.i188 = extractvalue { ptr, i32 } %i.abv, 0
  %.fca.1.extract.i189 = extractvalue { ptr, i32 } %i.abv, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZL17performXORCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_13MipsSubtargetE.exit

_ZL17performXORCombinePN4llvm6SDNodeERNS_12SelectionDAGERKNS_13MipsSubtargetE.exit: ; preds = %bb.gh, %bb.gj, %.split.i190, %_ZNK4llvm3EVT14is128BitVectorEv.exit.i181, %_ZNK4llvm3EVT9isIntegerEv.exit.i, %bb.gl, %bb.gm, %bb.gn
  %.sroa.611.1.i = phi i32 [ 0, %bb.gh ], [ 0, %bb.gm ], [ 0, %bb.gj ], [ 0, %.split.i190 ], [ 0, %bb.gl ], [ 0, %_ZNK4llvm3EVT9isIntegerEv.exit.i ], [ 0, %_ZNK4llvm3EVT14is128BitVectorEv.exit.i181 ], [ %.fca.1.extract.i189, %bb.gn ]
  %.sroa.010.1.i = phi ptr [ null, %bb.gh ], [ null, %bb.gm ], [ null, %bb.gj ], [ null, %.split.i190 ], [ null, %bb.gl ], [ null, %_ZNK4llvm3EVT9isIntegerEv.exit.i ], [ null, %_ZNK4llvm3EVT14is128BitVectorEv.exit.i181 ], [ %.fca.0.extract.i188, %bb.gn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %_ZL17performSHLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.go:                                            ; preds = %bb.a
  %i.abw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !175 ; 2 uses
  %.sroa.0.0.copyload.i.i191 = load i16, ptr %i.abx, align 8, !tbaa !188 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i192 = getelementptr inbounds nuw i8, ptr %i.abx, i64 8
  %.sroa.21.0.copyload.i.i193 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i192, align 8, !tbaa !190
  %.not.i.i194 = icmp ne i16 %.sroa.0.0.copyload.i.i191, 56
  %i.aby = icmp ne ptr %.sroa.21.0.copyload.i.i193, null
  %.not.i13.i = icmp ne i16 %.sroa.0.0.copyload.i.i191, 43
  %i.abz = and i1 %.not.i.i194, %.not.i13.i
  %or.cond.i195 = select i1 %i.abz, i1 true, i1 %i.aby
  br i1 %or.cond.i195, label %.thread, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.aca = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !196 ; 3 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 80 ; 2 uses
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !212
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 88
  %i.acf = load i32, ptr %i.ace, align 8, !tbaa !384
  %.not.i.i.i.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i191, 56 ; 2 uses
  switch i32 %i.acf, label %.thread [
    i32 17, label %_ZL18isLegalDSPCondCodeN4llvm3EVTENS_3ISD8CondCodeE.exit.thread.i
    i32 22, label %_ZL18isLegalDSPCondCodeN4llvm3EVTENS_3ISD8CondCodeE.exit.thread.i
    i32 20, label %.split.i200
    i32 21, label %.split.i200
    i32 18, label %.split.i200
    i32 19, label %.split.i200
    i32 12, label %_ZL18isLegalDSPCondCodeN4llvm3EVTENS_3ISD8CondCodeE.exit.i
    i32 13, label %_ZL18isLegalDSPCondCodeN4llvm3EVTENS_3ISD8CondCodeE.exit.i
    i32 10, label %_ZL18isLegalDSPCondCodeN4llvm3EVTENS_3ISD8CondCodeE.exit.i
    i32 11, label %_ZL18isLegalDSPCondCodeN4llvm3EVTENS_3ISD8CondCodeE.exit.i
  ]

.split.i200:                                      ; preds = %bb.gp, %bb.gp, %bb.gp, %bb.gp
  br i1 %.not.i.i.i.not.i, label %_ZL18isLegalDSPCondCodeN4llvm3EVTENS_3ISD8CondCodeE.exit.thread.i, label %.thread

_ZL18isLegalDSPCondCodeN4llvm3EVTENS_3ISD8CondCodeE.exit.i: ; preds = %bb.gp, %bb.gp, %bb.gp, %bb.gp
  br i1 %.not.i.i.i.not.i, label %.thread, label %_ZL18isLegalDSPCondCodeN4llvm3EVTENS_3ISD8CondCodeE.exit.thread.i

_ZL18isLegalDSPCondCodeN4llvm3EVTENS_3ISD8CondCodeE.exit.thread.i: ; preds = %_ZL18isLegalDSPCondCodeN4llvm3EVTENS_3ISD8CondCodeE.exit.i, %.split.i200, %bb.gp, %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.acg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ach = load i64, ptr %i.acg, align 8, !tbaa !192
  store i64 %i.ach, ptr %7, align 8, !tbaa !192
  %i.aci = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.acj = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !193
  store i32 %i.ack, ptr %i.aci, align 8, !tbaa !194
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acb, i64 40
  %i.acm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 621, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.copyload.i.i191, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.acb, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.acl, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.acc) #24 ; 2 uses
  %.fca.0.extract.i196 = extractvalue { ptr, i32 } %i.acm, 0
  %.fca.1.extract.i197 = extractvalue { ptr, i32 } %i.acm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZL17performSHLCombinePN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_13MipsSubtargetE.exit

bb.gq:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.acn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !196 ; 2 uses
  %.sroa.0.0.copyload.i201 = load ptr, ptr %i.aco, align 8, !tbaa !197 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aco, i64 8
  %i.acp = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.acq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !175 ; 2 uses
  %.sroa.0.0.copyload.i.i202 = load i16, ptr %i.acr, align 8, !tbaa !188 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i203 = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  %.sroa.21.0.copyload.i.i204 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i203, align 8, !tbaa !190 ; 2 uses
  %.fca.0.insert.i.i = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i.i202, 0
  %.fca.1.insert.i.i = insertvalue { i16, ptr } %.fca.0.insert.i.i, ptr %.sroa.21.0.copyload.i.i204, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i202, ptr %4, align 8
  %i.acs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i.i204, ptr %i.acs, align 8
  %i.act = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i201, i64 24
  %i.acu = load i32, ptr %i.act, align 8, !tbaa !199
  %.not.i205 = icmp eq i32 %i.acu, 250
  br i1 %.not.i205, label %bb.gr, label %_ZL24performFP_TO_UINTCombinePN4llvm6SDNodeERNS_12SelectionDAGE.exit

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %.not.i.i.i.i209 = icmp eq i16 %.sroa.0.0.copyload.i.i202, 0
  br i1 %.not.i.i.i.i209, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.gr
  %i.acv = add i16 %.sroa.0.0.copyload.i.i202, -19
  %spec.select.i.i.i.i.i = icmp ult i16 %i.acv, 197
  br i1 %spec.select.i.i.i.i.i, label %bb.gs, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i

_ZNK4llvm3EVT8isVectorEv.exit.i.i.i:              ; preds = %bb.gr
  %i.acw = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #26
  br i1 %i.acw, label %bb.gt, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i

bb.gs:                                            ; preds = %.split.i.i.i
  %i.acx = zext nneg i16 %.sroa.0.0.copyload.i.i202 to i64
  %i.acy = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.acx
  %i.acz = getelementptr i8, ptr %i.acy, i64 -2
  %i.ada = load i16, ptr %i.acz, align 2, !tbaa !188
  %i.adb = insertvalue { i16, ptr } poison, i16 %i.ada, 0
  %i.adc = insertvalue { i16, ptr } %i.adb, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i

bb.gt:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i.i
  %i.add = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #24
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i

end_hunk_2
