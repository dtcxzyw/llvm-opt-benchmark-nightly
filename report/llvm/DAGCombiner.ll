Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DAGCombiner?download=true
inline.NumInlined: 30676
inline.NumDeleted: 6198
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZNK4llvm9KnownBits20countMinLeadingZerosEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !405  ; 3 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %_ZNK4llvm5APInt10countl_oneEv.exit, label %bb.c, !prof !526

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !tbaa !75
  %i.f = sub nuw nsw i32 64, %i.b
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl i64 %i.e, %i.g
  %i.i = xor i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 false)
  %i.k = trunc nuw nsw i64 %i.j to i32
  br label %_ZNK4llvm5APInt10countl_oneEv.exit

bb.d:                                             ; preds = %bb.a
  %i.l = tail call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #37
  br label %_ZNK4llvm5APInt10countl_oneEv.exit

_ZNK4llvm5APInt10countl_oneEv.exit:               ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.l, %bb.d ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm5APInt18getSignificantBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !405  ; 6 uses
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = and i32 %i.c, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = icmp ult i32 %i.b, 65                    ; 3 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = lshr i32 %i.c, 6
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %.in.i.i.i.i = select i1 %i.g, ptr %0, ptr %i.k
  %i.l = load i64, ptr %.in.i.i.i.i, align 8, !tbaa !75
  %i.m = and i64 %i.f, %i.l
  %.not.i = icmp eq i64 %i.m, 0
  %i.n = ptrtoint ptr %i.h to i64                 ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i32 %i.b, 0
  br i1 %i.o, label %_ZNK4llvm5APInt14getNumSignBitsEv.exit, label %bb.d, !prof !526

bb.d:                                             ; preds = %bb.c
  %i.p = sub nuw nsw i32 64, %i.b
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl i64 %i.n, %i.q
  %i.s = xor i64 %i.r, -1
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 false)
  %i.u = trunc nuw nsw i64 %i.t to i32
  br label %_ZNK4llvm5APInt14getNumSignBitsEv.exit

bb.e:                                             ; preds = %bb.b
  %i.v = tail call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #37
  br label %_ZNK4llvm5APInt14getNumSignBitsEv.exit

bb.f:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.neg.i.i = add nsw i32 %i.b, -64
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 false)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = add nsw i32 %.neg.i.i, %i.x
  br label %_ZNK4llvm5APInt14getNumSignBitsEv.exit

bb.h:                                             ; preds = %bb.f
  %i.z = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #37
  br label %_ZNK4llvm5APInt14getNumSignBitsEv.exit

_ZNK4llvm5APInt14getNumSignBitsEv.exit:           ; preds = %bb.c, %bb.d, %bb.e, %bb.g, %bb.h
  %i.aa = phi i32 [ 0, %bb.c ], [ %i.v, %bb.e ], [ %i.u, %bb.d ], [ %i.y, %bb.g ], [ %i.z, %bb.h ]
  %i.ab = add i32 %i.b, 1
  %i.ac = sub i32 %i.ab, %i.aa
  ret i32 %i.ac
}

declare noundef ptr @_ZNK4llvm3EVT13getTypeForEVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #10

declare noundef i32 @_ZNK4llvm18MachinePointerInfo12getAddrSpaceEv(ptr noundef nonnull align 8 dereferenceable(21)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm3EVT15isFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !387    ; 4 uses
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i16 %i.a, -12
  %or.cond.i = icmp ult i16 %i.b, 7
  %i.c = add i16 %i.a, -105
  %or.cond3.i = icmp ult i16 %i.c, 58
  %or.cond4.i = or i1 %or.cond.i, %or.cond3.i
  %i.d = add i16 %i.a, -195
  %spec.select.i = icmp ult i16 %i.d, 21
  %i.e = or i1 %spec.select.i, %or.cond4.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZN12_GLOBAL__N_111DAGCombiner25reassociateOpsCommutativeEjRKN4llvm5SDLocENS1_7SDValueES5_NS1_11SDNodeFlagsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(952) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %3, i32 %4, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %5, i32 %6) unnamed_addr #3 align 2 {
bb.a:
  %7 = alloca %"class.llvm::ArrayRef", align 8    ; 3 uses
  %8 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %15 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %16 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %19 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %20 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %23 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %26 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %27 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %28 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212
  %i.c = zext i32 %4 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.d, align 8, !tbaa !214 ; 14 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !216 ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !72
  %.not = icmp eq i32 %i.f, %1
  br i1 %.not, label %bb.b, label %.critedge223

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !204  ; 6 uses
  %.sroa.0283.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !74 ; 13 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !198 ; 11 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.sroa.19.0.copyload = load i32, ptr %.sroa.19.0..sroa_idx, align 4 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.0242.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !74 ; 14 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.17.0.copyload = load i32, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !198 ; 12 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 4 ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.k = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG37isConstantIntBuildVectorOrConstantIntENS_7SDValueEb(ptr noundef nonnull align 8 dereferenceable(920) %i.j, ptr %.sroa.0242.0.copyload, i32 %.sroa.17.0.copyload, i1 noundef zeroext true) #36
  br i1 %i.k, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.e, align 8, !tbaa !72
  %i.m = icmp eq i32 %i.l, 59
  br i1 %i.m, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 28
  %.sroa.0.0.copyload.i = load i32, ptr %i.n, align 4, !tbaa !198
  %31 = trunc i32 %.sroa.0.0.copyload.i to i1
  %i.o = and i32 %6, 1
  %spec.select345 = select i1 %31, i32 %i.o, i32 0
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c
  %.sroa.0237.0 = phi i32 [ 0, %bb.c ], [ %spec.select345, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.0150.0.copyload = load ptr, ptr %5, align 8, !tbaa !74 ; 2 uses
  %.sroa.2151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2151.0.copyload = load i32, ptr %.sroa.2151.0..sroa_idx, align 8, !tbaa !198 ; 2 uses
  %i.q = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG37isConstantIntBuildVectorOrConstantIntENS_7SDValueEb(ptr noundef nonnull align 8 dereferenceable(920) %i.p, ptr %.sroa.0150.0.copyload, i32 %.sroa.2151.0.copyload, i1 noundef zeroext true) #36
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.critedge
  %i.r = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store ptr %.sroa.0242.0.copyload, ptr %8, align 8, !tbaa !74
  %.sroa.17.0..sroa_idx265 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.17.0.copyload, ptr %.sroa.17.0..sroa_idx265, align 8, !tbaa !198
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.s, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !217
  store ptr %8, ptr %7, align 8, !tbaa !383
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 2, ptr %i.t, align 8, !tbaa !384
  %i.u = call { ptr, i32 } @_ZN4llvm12SelectionDAG22FoldConstantArithmeticEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.r, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %7, i32 0) #36 ; 2 uses
  %.fca.0.extract141 = extractvalue { ptr, i32 } %i.u, 0 ; 2 uses
  %.fca.1.extract142 = extractvalue { ptr, i32 } %i.u, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %.not346 = icmp eq ptr %.fca.0.extract141, null
  br i1 %.not346, label %.critedge223, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = and i32 %6, 8
  %.not347 = icmp eq i32 %i.v, 0
  br i1 %.not347, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 28
  %.sroa.0.0.copyload.i224 = load i32, ptr %i.w, align 4, !tbaa !198
  %.sroa.0.0.copyload.i224.fr = freeze i32 %.sroa.0.0.copyload.i224
  %i.x = and i32 %.sroa.0.0.copyload.i224.fr, 8
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  %i.y = phi i32 [ %i.x, %bb.g ], [ 0, %bb.f ]
  %i.z = and i32 %.sroa.0237.0, -9
  %i.aa = or disjoint i32 %i.y, %i.z
  %i.ab = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  store ptr %.sroa.0283.0.copyload, ptr %9, align 8, !tbaa !74
  %.sroa.16.0..sroa_idx296 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.16.0.copyload, ptr %.sroa.16.0..sroa_idx296, align 8, !tbaa !198
  %.sroa.19.0..sroa_idx314 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %.sroa.19.0.copyload, ptr %.sroa.19.0..sroa_idx314, align 4
  store ptr %.fca.0.extract141, ptr %10, align 8, !tbaa !74
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract142, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !198
  %i.ac = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.ab, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, i32 %i.aa) #36 ; 2 uses
  %.fca.0.extract133 = extractvalue { ptr, i32 } %i.ac, 0
  %.fca.1.extract134 = extractvalue { ptr, i32 } %i.ac, 1
  br label %.critedge223

bb.h:                                             ; preds = %.critedge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !347, !nonnull !53, !align !197 ; 2 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1864
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(518435) %i.ae, ptr noundef nonnull align 8 dereferenceable(920) %i.af, ptr nonnull %3, i32 %4, ptr %.sroa.0150.0.copyload, i32 %.sroa.2151.0.copyload) #36
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.am = load i64, ptr %i.al, align 8, !tbaa !352
  store i64 %i.am, ptr %11, align 8, !tbaa !352
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !351
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !396
  store ptr %.sroa.0283.0.copyload, ptr %12, align 8, !tbaa !74
  %.sroa.16.0..sroa_idx298 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.sroa.16.0.copyload, ptr %.sroa.16.0..sroa_idx298, align 8, !tbaa !198
  %.sroa.19.0..sroa_idx316 = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 %.sroa.19.0.copyload, ptr %.sroa.19.0..sroa_idx316, align 4
  %i.aq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.ak, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %11, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, i32 %.sroa.0237.0) #36 ; 2 uses
  %.fca.0.extract113 = extractvalue { ptr, i32 } %i.aq, 0
  %.fca.1.extract114 = extractvalue { ptr, i32 } %i.aq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  %i.ar = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  store ptr %.fca.0.extract113, ptr %13, align 8, !tbaa !74
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract114, ptr %.sroa.4125.0..sroa_idx, align 8, !tbaa !198
  store ptr %.sroa.0242.0.copyload, ptr %14, align 8, !tbaa !74
  %.sroa.17.0..sroa_idx255 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.sroa.17.0.copyload, ptr %.sroa.17.0..sroa_idx255, align 8, !tbaa !198
  %.sroa.21.0..sroa_idx273 = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 %.sroa.21.0.copyload, ptr %.sroa.21.0..sroa_idx273, align 4
  %i.as = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.ar, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, i32 %.sroa.0237.0) #36 ; 2 uses
  %.fca.0.extract105 = extractvalue { ptr, i32 } %i.as, 0
  %.fca.1.extract106 = extractvalue { ptr, i32 } %i.as, 1
  br label %.critedge223

bb.j:                                             ; preds = %bb.h, %bb.b
  %i.at = add i32 %1, -193
  %or.cond = icmp ult i32 %i.at, 2                ; 2 uses
  br i1 %or.cond, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %5, align 8, !tbaa !193   ; 3 uses
  %i.av = icmp eq ptr %i.au, %.sroa.0283.0.copyload
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = load i32, ptr %i.aw, align 8            ; 3 uses
  %i.ay = icmp eq i32 %i.ax, %.sroa.16.0.copyload
  %i.az = select i1 %i.av, i1 %i.ay, i1 false
  br i1 %i.az, label %.critedge223, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = icmp eq ptr %i.au, %.sroa.0242.0.copyload
  %i.bb = icmp eq i32 %i.ax, %.sroa.17.0.copyload
  %i.bc = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %i.bc, label %.critedge223, label %.thread343

bb.m:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %1, 195
  %.sroa.099.0.copyload.pre = load ptr, ptr %5, align 8, !tbaa !74 ; 4 uses
  br i1 %i.bd, label %bb.n, label %..thread343_crit_edge

..thread343_crit_edge:                            ; preds = %bb.m
  %.sroa.2100.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2100.0.copyload.pre = load i32, ptr %.sroa.2100.0..sroa_idx.phi.trans.insert, align 8, !tbaa !198
  br label %.thread343

bb.n:                                             ; preds = %bb.m
  %i.be = icmp eq ptr %.sroa.099.0.copyload.pre, %.sroa.0283.0.copyload
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bg = load i32, ptr %i.bf, align 8            ; 3 uses
  %i.bh = icmp eq i32 %i.bg, %.sroa.16.0.copyload
  %i.bi = select i1 %i.be, i1 %i.bh, i1 false
  br i1 %i.bi, label %.critedge223, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = icmp eq ptr %.sroa.099.0.copyload.pre, %.sroa.0242.0.copyload
  %i.bk = icmp eq i32 %i.bg, %.sroa.17.0.copyload
  %i.bl = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %i.bl, label %.critedge223, label %.thread343

.thread343:                                       ; preds = %..thread343_crit_edge, %bb.l, %bb.o
  %.sroa.2100.0.copyload = phi i32 [ %i.ax, %bb.l ], [ %i.bg, %bb.o ], [ %.sroa.2100.0.copyload.pre, %..thread343_crit_edge ] ; 3 uses
  %.sroa.099.0.copyload = phi ptr [ %i.au, %bb.l ], [ %.sroa.099.0.copyload.pre, %bb.o ], [ %.sroa.099.0.copyload.pre, %..thread343_crit_edge ] ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !347, !nonnull !53, !align !197 ; 2 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !45
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1864
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(518435) %i.bn, ptr noundef nonnull align 8 dereferenceable(920) %i.bo, ptr nonnull %3, i32 %4, ptr %.sroa.099.0.copyload, i32 %.sroa.2100.0.copyload) #36
  br i1 %i.bs, label %bb.p, label %.critedge223

bb.p:                                             ; preds = %.thread343
  %i.bt = icmp ne ptr %.sroa.099.0.copyload, %.sroa.0242.0.copyload
  %i.bu = icmp ne i32 %.sroa.2100.0.copyload, %.sroa.17.0.copyload
  %.not3.i = select i1 %i.bt, i1 true, i1 %i.bu
  br i1 %.not3.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bv = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197 ; 2 uses
  %i.bw = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.bv, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i) #36 ; 2 uses
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  %i.by = extractvalue { ptr, i32 } %i.bw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  store ptr %.sroa.0283.0.copyload, ptr %15, align 8, !tbaa !74
  %.sroa.16.0..sroa_idx308 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.sroa.16.0.copyload, ptr %.sroa.16.0..sroa_idx308, align 8, !tbaa !198
  %i.bz = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bz, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !217
  %i.ca = call noundef ptr @_ZN4llvm12SelectionDAG15getNodeIfExistsEjNS_8SDVTListENS_8ArrayRefINS_7SDValueEEEb(ptr noundef nonnull align 8 dereferenceable(920) %i.bv, i32 noundef %1, ptr %i.bx, i32 %i.by, ptr nonnull %15, i64 2, i1 noundef zeroext false) #36 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  %.not208 = icmp eq ptr %i.ca, null
  br i1 %.not208, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197 ; 2 uses
  %i.cc = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.cb, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i) #36 ; 2 uses
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  %i.ce = extractvalue { ptr, i32 } %i.cc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  store ptr %i.ca, ptr %16, align 8, !tbaa !193
  %i.cf = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 0, ptr %i.cf, align 8, !tbaa !211
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %.sroa.0242.0.copyload, ptr %i.cg, align 8, !tbaa !74
  %.sroa.17.0..sroa_idx267 = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 %.sroa.17.0.copyload, ptr %.sroa.17.0..sroa_idx267, align 8, !tbaa !198
  %i.ch = call noundef zeroext i1 @_ZN4llvm12SelectionDAG13doesNodeExistEjNS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.cb, i32 noundef %1, ptr %i.cd, i32 %i.ce, ptr nonnull %16, i64 2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  br i1 %i.ch, label %bb.s, label %.critedge217

.critedge217:                                     ; preds = %bb.r
  %i.ci = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  store ptr %i.ca, ptr %17, align 8, !tbaa !193
end_hunk_0
