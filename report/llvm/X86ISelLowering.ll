Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 253
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 337
begin_hunk_0_@_ZL13LowerCMP_SWAPN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE:switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  store ptr %.fca.0.extract37, ptr %9, align 16, !tbaa !465
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %.sroa.218.0..sroa_idx.i, align 8, !tbaa !240
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ax = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 %switch.ext66, i16 %.sroa.0.0.copyload.i.i.i, ptr null) #39 ; 2 uses
  %.fca.0.extract3.i98 = extractvalue { ptr, i32 } %i.ax, 0
  %.fca.1.extract4.i99 = extractvalue { ptr, i32 } %i.ax, 1
  store ptr %.fca.0.extract3.i98, ptr %i.aw, align 16
  %.sroa.26.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %.fca.1.extract4.i99, ptr %.sroa.26.0..sroa_idx.i100, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %.fca.0.extract37, ptr %i.ay, align 16, !tbaa !465
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 1, ptr %.sroa.556.0..sroa_idx, align 8, !tbaa !240
  %.not.i101 = icmp eq ptr %.fca.0.extract37, null
  %i.az = select i1 %.not.i101, i64 2, i64 3
  store ptr %9, ptr %10, align 8, !tbaa !688
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !689
  %i.bb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr %i.au, i32 %i.av, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %10) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.fca.0.extract28 = extractvalue { ptr, i32 } %i.bb, 0 ; 4 uses
  %.fca.1.extract29 = extractvalue { ptr, i32 } %i.bb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i16 249, ptr %5, align 8, !tbaa !637
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.bc, align 8, !tbaa !705
  %i.bd = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %2, i16 7, ptr null, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %5) #39 ; 2 uses
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  %i.bf = extractvalue { ptr, i32 } %i.bd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  store ptr %.fca.0.extract28, ptr %6, align 16, !tbaa !465
  %.sroa.218.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 1, ptr %.sroa.218.0..sroa_idx.i109, align 8, !tbaa !240
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bh = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 28, i16 7, ptr null) #39 ; 2 uses
  %.fca.0.extract3.i110 = extractvalue { ptr, i32 } %i.bh, 0
  %.fca.1.extract4.i111 = extractvalue { ptr, i32 } %i.bh, 1
  store ptr %.fca.0.extract3.i110, ptr %i.bg, align 16
  %.sroa.26.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.fca.1.extract4.i111, ptr %.sroa.26.0..sroa_idx.i112, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %.fca.0.extract28, ptr %i.bi, align 16, !tbaa !465
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 2, ptr %.sroa.562.0..sroa_idx, align 8, !tbaa !240
  %.not.i113 = icmp eq ptr %.fca.0.extract28, null
  %i.bj = select i1 %.not.i113, i64 2, i64 3
  store ptr %6, ptr %7, align 8, !tbaa !688
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !689
  %i.bl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr %i.be, i32 %i.bf, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %7) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.fca.0.extract14 = extractvalue { ptr, i32 } %i.bl, 0 ; 2 uses
  %.fca.1.extract15 = extractvalue { ptr, i32 } %i.bl, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bm = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %2, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.bm, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.bm, 1
  store ptr %.fca.0.extract1.i, ptr %3, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  store ptr %.fca.0.extract14, ptr %4, align 8, !tbaa !465
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract15, ptr %.sroa.29.0..sroa_idx.i, align 8, !tbaa !240
  %i.bn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 800, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 5, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.bn, 0
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.bn, 1
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !469
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !969
  %i.br = zext i16 %i.bq to i32
  store ptr %.fca.0.extract28, ptr %17, align 8, !tbaa !465
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract29, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !240
  store ptr %.fca.0.extract7, ptr %18, align 8, !tbaa !465
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract8, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !240
  store ptr %.fca.0.extract14, ptr %19, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 1, ptr %.sroa.24.0..sroa_idx, align 8
  %i.bs = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %2, i32 noundef 58, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr %i.bo, i32 %i.br, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  ret { ptr, i32 } %i.bs
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL10LowerCTPOPN4llvm7SDValueERKNS_12X86SubtargetERNS_12SelectionDAGE(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(519752) %2, ptr noundef nonnull align 8 dereferenceable(920) %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.llvm::ArrayRef.420", align 8 ; 5 uses
  %5 = alloca %"class.llvm::SmallVector.431", align 8 ; 10 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %16 = alloca %"class.llvm::SmallVector.429", align 8 ; 9 uses
  %17 = alloca %"class.llvm::ArrayRef.421", align 8 ; 5 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %19 = alloca %"class.llvm::SmallVector.429", align 8 ; 9 uses
  %20 = alloca %"class.llvm::ArrayRef.421", align 8 ; 5 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %22 = alloca %"class.llvm::SDLoc", align 8      ; 17 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %26 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %27 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %28 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %31 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %33 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %34 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %35 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %36 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %37 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %38 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %39 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %40 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %41 = alloca %"class.llvm::SDLoc", align 8      ; 60 uses
  %42 = alloca %"struct.llvm::KnownBits", align 8 ; 12 uses
  %43 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %44 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %45 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %46 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %47 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %48 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %49 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %50 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %51 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %52 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %53 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %54 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %55 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %56 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %57 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %58 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %59 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %60 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %61 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %62 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %63 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %64 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %65 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %66 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %67 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %68 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %69 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %70 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %71 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %72 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %73 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %74 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %75 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %76 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !469
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.d, align 8, !tbaa !345 ; 37 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !638  ; 3 uses
  %.sroa.0301.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !465 ; 14 uses
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.49.0.copyload = load i32, ptr %.sroa.49.0..sroa_idx, align 8, !tbaa !240 ; 14 uses
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.79.0.copyload = load i32, ptr %.sroa.79.0..sroa_idx, align 4 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #39
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !673
  store i64 %i.h, ptr %41, align 8, !tbaa !673
  %i.i = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !674
  store i32 %i.k, ptr %i.i, align 8, !tbaa !676
  %i.l = add i16 %.sroa.0.0.copyload.i.i.i, -2
  %spec.select.i = icmp ult i16 %i.l, 10
  br i1 %spec.select.i, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #39
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %42, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.0301.0.copyload, i32 %.sroa.49.0.copyload, i32 noundef 0) #39
  %i.m = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !643  ; 4 uses
  %i.p = icmp ult i32 %i.o, 65
  br i1 %i.p, label %.split, label %_ZNK4llvm9KnownBits10isConstantEv.exit

.split:                                           ; preds = %bb.b
  %i.q = load i64, ptr %42, align 8, !tbaa !357   ; 3 uses
  %i.r = load i64, ptr %i.m, align 8, !tbaa !357
  %i.s = xor i64 %i.r, %i.q
  %i.t = icmp eq i32 %i.o, 0                      ; 2 uses
  %i.u = sub nuw nsw i32 64, %i.o
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = lshr i64 -1, %i.v
  %.0.i.i.i = select i1 %i.t, i64 0, i64 %i.w
  %i.x = icmp eq i64 %i.s, %.0.i.i.i
  br i1 %i.x, label %bb.c, label %bb.f

_ZNK4llvm9KnownBits10isConstantEv.exit:           ; preds = %bb.b
  %i.y = call noundef zeroext i1 @_ZNK4llvm5APInt19isInverseOfSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(12) %i.m) #40
  br i1 %i.y, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.split, %_ZNK4llvm9KnownBits10isConstantEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !643
  %i.ab = icmp ult i32 %i.aa, 65
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !357
  %i.ad = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ac)
  br label %_ZNK4llvm5APInt8popcountEv.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = call noundef i32 @_ZNK4llvm5APInt23countPopulationSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #40
  %i.af = zext i32 %i.ae to i64
  br label %_ZNK4llvm5APInt8popcountEv.exit

_ZNK4llvm5APInt8popcountEv.exit:                  ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.ad, %bb.d ], [ %i.af, %bb.e ]
  %i.ag = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %.0.i, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 %.sroa.0.0.copyload.i.i.i, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract290 = extractvalue { ptr, i32 } %i.ag, 0
  %.fca.1.extract291 = extractvalue { ptr, i32 } %i.ag, 1
  br label %bb.y

bb.f:                                             ; preds = %.split
  br i1 %i.t, label %bb.h, label %bb.g, !prof !648

bb.g:                                             ; preds = %bb.f
  %i.ah = shl i64 %i.q, %i.v
  %i.ai = xor i64 %i.ah, -1
  %i.aj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ai, i1 false)
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0.i.i436.ph = phi i32 [ 0, %bb.f ], [ %i.ak, %bb.g ]
  %i.al = xor i64 %i.q, -1
  %i.am = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.al, i1 false)
  %i.an = trunc nuw nsw i64 %i.am to i32
  br label %_ZNK4llvm9KnownBits21countMinTrailingZerosEv.exit

bb.i:                                             ; preds = %_ZNK4llvm9KnownBits10isConstantEv.exit
  %i.ao = call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(32) %42) #40
  %i.ap = call noundef i32 @_ZNK4llvm5APInt25countTrailingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(32) %42) #40
  br label %_ZNK4llvm9KnownBits21countMinTrailingZerosEv.exit

_ZNK4llvm9KnownBits21countMinTrailingZerosEv.exit: ; preds = %bb.h, %bb.i
  %.0.i.i436545 = phi i32 [ %.0.i.i436.ph, %bb.h ], [ %i.ao, %bb.i ]
  %.0.i.i437 = phi i32 [ %i.an, %bb.h ], [ %i.ap, %bb.i ] ; 5 uses
  %i.aq = sub i32 %i.o, %.0.i.i436545             ; 5 uses
  %i.ar = sub i32 %i.aq, %.0.i.i437               ; 4 uses
  %i.as = icmp ult i32 %i.ar, 3
  br i1 %i.as, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZNK4llvm9KnownBits21countMinTrailingZerosEv.exit
  %i.at = icmp ugt i32 %i.aq, 2
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %.sroa.0301.0.copyload, ptr %43, align 8, !tbaa !465
  %.sroa.49.0..sroa_idx318 = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i32 %.sroa.49.0.copyload, ptr %.sroa.49.0..sroa_idx318, align 8, !tbaa !240
  %.sroa.79.0..sroa_idx350 = getelementptr inbounds nuw i8, ptr %43, i64 12
  store i32 %.sroa.79.0.copyload, ptr %.sroa.79.0..sroa_idx350, align 4
  %i.au = zext i32 %.0.i.i437 to i64
  %i.av = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getShiftAmountConstantEmNS_3EVTERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.au, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %41) #39 ; 2 uses
  %.fca.0.extract267 = extractvalue { ptr, i32 } %i.av, 0
  %.fca.1.extract268 = extractvalue { ptr, i32 } %i.av, 1
  store ptr %.fca.0.extract267, ptr %44, align 8
  %.sroa.2270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i32 %.fca.1.extract268, ptr %.sroa.2270.0..sroa_idx, align 8
  %i.aw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 200, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %43, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %44) #39 ; 2 uses
  %.fca.0.extract263 = extractvalue { ptr, i32 } %i.aw, 0
  %.fca.1.extract264 = extractvalue { ptr, i32 } %i.aw, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0301.0 = phi ptr [ %.fca.0.extract263, %bb.k ], [ %.sroa.0301.0.copyload, %bb.j ]
  %.sroa.49.0 = phi i32 [ %.fca.1.extract264, %bb.k ], [ %.sroa.49.0.copyload, %bb.j ]
  %i.ax = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.0301.0, i32 %.sroa.49.0, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 7, ptr null) #39 ; 2 uses
  %.fca.0.extract253 = extractvalue { ptr, i32 } %i.ax, 0 ; 2 uses
  %.fca.1.extract254 = extractvalue { ptr, i32 } %i.ax, 1 ; 2 uses
  store ptr %.fca.0.extract253, ptr %45, align 8, !tbaa !465
  %.sroa.49.0..sroa_idx320 = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i32 %.fca.1.extract254, ptr %.sroa.49.0..sroa_idx320, align 8, !tbaa !240
  %.sroa.79.0..sroa_idx352 = getelementptr inbounds nuw i8, ptr %45, i64 12
  store i32 %.sroa.79.0.copyload, ptr %.sroa.79.0..sroa_idx352, align 4
  store ptr %.fca.0.extract253, ptr %47, align 8, !tbaa !465
  %.sroa.49.0..sroa_idx322 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i32 %.fca.1.extract254, ptr %.sroa.49.0..sroa_idx322, align 8, !tbaa !240
  %.sroa.79.0..sroa_idx354 = getelementptr inbounds nuw i8, ptr %47, i64 12
  store i32 %.sroa.79.0.copyload, ptr %.sroa.79.0..sroa_idx354, align 4
  %i.ay = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getShiftAmountConstantEmNS_3EVTERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 1, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %41) #39 ; 2 uses
  %.fca.0.extract245 = extractvalue { ptr, i32 } %i.ay, 0
  %.fca.1.extract246 = extractvalue { ptr, i32 } %i.ay, 1
  store ptr %.fca.0.extract245, ptr %48, align 8
  %.sroa.2248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i32 %.fca.1.extract246, ptr %.sroa.2248.0..sroa_idx, align 8
  %i.az = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 200, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %47, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %48) #39 ; 2 uses
  %.fca.0.extract241 = extractvalue { ptr, i32 } %i.az, 0
  %.fca.1.extract242 = extractvalue { ptr, i32 } %i.az, 1
  store ptr %.fca.0.extract241, ptr %46, align 8
  %.sroa.2244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i32 %.fca.1.extract242, ptr %.sroa.2244.0..sroa_idx, align 8
  %i.ba = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 60, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %45, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %46) #39 ; 2 uses
  %.fca.0.extract237 = extractvalue { ptr, i32 } %i.ba, 0
  %.fca.1.extract238 = extractvalue { ptr, i32 } %i.ba, 1
  %i.bb = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.fca.0.extract237, i32 %.fca.1.extract238, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 %.sroa.0.0.copyload.i.i.i, ptr null) #39 ; 2 uses
  %.fca.0.extract229 = extractvalue { ptr, i32 } %i.bb, 0
  %.fca.1.extract230 = extractvalue { ptr, i32 } %i.bb, 1
  br label %bb.y

bb.m:                                             ; preds = %_ZNK4llvm9KnownBits21countMinTrailingZerosEv.exit
  %i.bc = icmp eq i32 %i.ar, 3
  br i1 %i.bc, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bd = icmp ugt i32 %i.aq, 3
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %.sroa.0301.0.copyload, ptr %49, align 8, !tbaa !465
  %.sroa.49.0..sroa_idx324 = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i32 %.sroa.49.0.copyload, ptr %.sroa.49.0..sroa_idx324, align 8, !tbaa !240
  %.sroa.79.0..sroa_idx356 = getelementptr inbounds nuw i8, ptr %49, i64 12
  store i32 %.sroa.79.0.copyload, ptr %.sroa.79.0..sroa_idx356, align 4
  %i.be = zext i32 %.0.i.i437 to i64
  %i.bf = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getShiftAmountConstantEmNS_3EVTERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.be, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %41) #39 ; 2 uses
  %.fca.0.extract220 = extractvalue { ptr, i32 } %i.bf, 0
  %.fca.1.extract221 = extractvalue { ptr, i32 } %i.bf, 1
  store ptr %.fca.0.extract220, ptr %50, align 8
  %.sroa.2223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i32 %.fca.1.extract221, ptr %.sroa.2223.0..sroa_idx, align 8
  %i.bg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 200, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %49, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %50) #39 ; 2 uses
  %.fca.0.extract216 = extractvalue { ptr, i32 } %i.bg, 0
  %.fca.1.extract217 = extractvalue { ptr, i32 } %i.bg, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.0301.1 = phi ptr [ %.fca.0.extract216, %bb.o ], [ %.sroa.0301.0.copyload, %bb.n ]
  %.sroa.49.1 = phi i32 [ %.fca.1.extract217, %bb.o ], [ %.sroa.49.0.copyload, %bb.n ]
  %i.bh = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.0301.1, i32 %.sroa.49.1, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 7, ptr null) #39 ; 2 uses
  %.fca.0.extract206 = extractvalue { ptr, i32 } %i.bh, 0
  %.fca.1.extract207 = extractvalue { ptr, i32 } %i.bh, 1
  store ptr %.fca.0.extract206, ptr %51, align 8, !tbaa !465
  %.sroa.49.0..sroa_idx326 = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i32 %.fca.1.extract207, ptr %.sroa.49.0..sroa_idx326, align 8, !tbaa !240
  %.sroa.79.0..sroa_idx358 = getelementptr inbounds nuw i8, ptr %51, i64 12
  store i32 %.sroa.79.0.copyload, ptr %.sroa.79.0..sroa_idx358, align 4
  %i.bi = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getShiftAmountConstantEmNS_3EVTERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 1, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %41) #39 ; 2 uses
  %.fca.0.extract198 = extractvalue { ptr, i32 } %i.bi, 0
  %.fca.1.extract199 = extractvalue { ptr, i32 } %i.bi, 1
  store ptr %.fca.0.extract198, ptr %52, align 8
  %.sroa.2201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %52, i64 8
  store i32 %.fca.1.extract199, ptr %.sroa.2201.0..sroa_idx, align 8
  %i.bj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %51, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %52) #39 ; 2 uses
  %.fca.0.extract194 = extractvalue { ptr, i32 } %i.bj, 0
  %.fca.1.extract195 = extractvalue { ptr, i32 } %i.bj, 1
  %i.bk = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 59796, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract187 = extractvalue { ptr, i32 } %i.bk, 0
  %.fca.1.extract188 = extractvalue { ptr, i32 } %i.bk, 1
  store ptr %.fca.0.extract187, ptr %53, align 8
  %.sroa.2190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i32 %.fca.1.extract188, ptr %.sroa.2190.0..sroa_idx, align 8
  store ptr %.fca.0.extract194, ptr %54, align 8, !tbaa !465
  %.sroa.49.0..sroa_idx328 = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i32 %.fca.1.extract195, ptr %.sroa.49.0..sroa_idx328, align 8, !tbaa !240
  %.sroa.79.0..sroa_idx360 = getelementptr inbounds nuw i8, ptr %54, i64 12
  store i32 %.sroa.79.0.copyload, ptr %.sroa.79.0..sroa_idx360, align 4
  %i.bl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 200, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %53, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %54) #39 ; 2 uses
  %.fca.0.extract183 = extractvalue { ptr, i32 } %i.bl, 0
  %.fca.1.extract184 = extractvalue { ptr, i32 } %i.bl, 1
  store ptr %.fca.0.extract183, ptr %55, align 8, !tbaa !465
  %.sroa.49.0..sroa_idx330 = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i32 %.fca.1.extract184, ptr %.sroa.49.0..sroa_idx330, align 8, !tbaa !240
  %.sroa.79.0..sroa_idx362 = getelementptr inbounds nuw i8, ptr %55, i64 12
  store i32 %.sroa.79.0.copyload, ptr %.sroa.79.0..sroa_idx362, align 4
  %i.bm = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract176 = extractvalue { ptr, i32 } %i.bm, 0
  %.fca.1.extract177 = extractvalue { ptr, i32 } %i.bm, 1
  store ptr %.fca.0.extract176, ptr %56, align 8
  %.sroa.2179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i32 %.fca.1.extract177, ptr %.sroa.2179.0..sroa_idx, align 8
  %i.bn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 193, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %55, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %56) #39 ; 2 uses
  %.fca.0.extract172 = extractvalue { ptr, i32 } %i.bn, 0
  %.fca.1.extract173 = extractvalue { ptr, i32 } %i.bn, 1
  %i.bo = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.fca.0.extract172, i32 %.fca.1.extract173, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 %.sroa.0.0.copyload.i.i.i, ptr null) #39 ; 2 uses
  %.fca.0.extract164 = extractvalue { ptr, i32 } %i.bo, 0
  %.fca.1.extract165 = extractvalue { ptr, i32 } %i.bo, 1
  br label %bb.y

bb.q:                                             ; preds = %bb.m
  %i.bp = icmp ult i32 %i.ar, 5
  br i1 %i.bp, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !684
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 176
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !337
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %.thread547, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 4841987667533046032, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 8, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract157 = extractvalue { ptr, i32 } %i.bu, 0
  %.fca.1.extract158 = extractvalue { ptr, i32 } %i.bu, 1
  %i.bv = icmp ugt i32 %i.aq, 4
  br i1 %i.bv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr %.sroa.0301.0.copyload, ptr %57, align 8, !tbaa !465
  %.sroa.49.0..sroa_idx332 = getelementptr inbounds nuw i8, ptr %57, i64 8
  store i32 %.sroa.49.0.copyload, ptr %.sroa.49.0..sroa_idx332, align 8, !tbaa !240
  %.sroa.79.0..sroa_idx364 = getelementptr inbounds nuw i8, ptr %57, i64 12
  store i32 %.sroa.79.0.copyload, ptr %.sroa.79.0..sroa_idx364, align 4
  %i.bw = zext i32 %.0.i.i437 to i64
  %i.bx = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getShiftAmountConstantEmNS_3EVTERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.bw, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %41) #39 ; 2 uses
  %.fca.0.extract148 = extractvalue { ptr, i32 } %i.bx, 0
  %.fca.1.extract149 = extractvalue { ptr, i32 } %i.bx, 1
  store ptr %.fca.0.extract148, ptr %58, align 8
  %.sroa.2151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %58, i64 8
  store i32 %.fca.1.extract149, ptr %.sroa.2151.0..sroa_idx, align 8
  %i.by = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 200, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %57, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %58) #39 ; 2 uses
  %.fca.0.extract144 = extractvalue { ptr, i32 } %i.by, 0
  %.fca.1.extract145 = extractvalue { ptr, i32 } %i.by, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.0301.2 = phi ptr [ %.fca.0.extract144, %bb.t ], [ %.sroa.0301.0.copyload, %bb.s ]
  %.sroa.49.2 = phi i32 [ %.fca.1.extract145, %bb.t ], [ %.sroa.49.0.copyload, %bb.s ]
  %i.bz = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.0301.2, i32 %.sroa.49.2, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 7, ptr null) #39 ; 2 uses
  %.fca.0.extract134 = extractvalue { ptr, i32 } %i.bz, 0
  %.fca.1.extract135 = extractvalue { ptr, i32 } %i.bz, 1
  store ptr %.fca.0.extract134, ptr %59, align 8, !tbaa !465
  %.sroa.49.0..sroa_idx334 = getelementptr inbounds nuw i8, ptr %59, i64 8
  store i32 %.fca.1.extract135, ptr %.sroa.49.0..sroa_idx334, align 8, !tbaa !240
  %.sroa.79.0..sroa_idx366 = getelementptr inbounds nuw i8, ptr %59, i64 12
  store i32 %.sroa.79.0.copyload, ptr %.sroa.79.0..sroa_idx366, align 4
  %i.ca = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract127 = extractvalue { ptr, i32 } %i.ca, 0
  %.fca.1.extract128 = extractvalue { ptr, i32 } %i.ca, 1
  store ptr %.fca.0.extract127, ptr %60, align 8
  %.sroa.2130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i32 %.fca.1.extract128, ptr %.sroa.2130.0..sroa_idx, align 8
  %i.cb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 61, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %59, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %60) #39 ; 2 uses
  %.fca.0.extract123 = extractvalue { ptr, i32 } %i.cb, 0
  %.fca.1.extract124 = extractvalue { ptr, i32 } %i.cb, 1
  store ptr %.fca.0.extract157, ptr %61, align 8, !tbaa !465
  %.sroa.4162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i32 %.fca.1.extract158, ptr %.sroa.4162.0..sroa_idx, align 8, !tbaa !240
end_hunk_0
