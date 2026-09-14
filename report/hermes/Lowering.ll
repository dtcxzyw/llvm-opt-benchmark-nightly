Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Lowering?download=true
inline.NumInlined: 1539
inline.NumDeleted: 776
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6hermes22LowerNumericProperties13runOnFunctionEPNS_8FunctionE:bb.a
bb.z:                                             ; preds = %bb.t
  %i.cq = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0108.0119, i32 noundef 3) #12 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !32
  %.not.i84 = icmp eq i8 %i.cr, 116
  br i1 %.not.i84, label %bb.aa, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

bb.aa:                                            ; preds = %bb.z
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %.sroa.0.0.copyload.i.i86 = load ptr, ptr %i.cs, align 8, !tbaa !158 ; 2 uses
  %.sroa.0.0.copyload.i87 = load ptr, ptr %.sroa.0.0.copyload.i.i86, align 8, !tbaa !159 ; 3 uses
  %.sroa.2.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i86, i64 8
  %.sroa.2.0.copyload.i89 = load i64, ptr %.sroa.2.0..sroa_idx.i88, align 8, !tbaa !160 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i87, i64 %.sroa.2.0.copyload.i89
  %i.cu = icmp samesign eq i64 %.sroa.2.0.copyload.i89, 0
  br i1 %i.cu, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = load i8, ptr %.sroa.0.0.copyload.i87, align 1, !tbaa !161
  %i.cw = icmp eq i8 %i.cv, 48
  br i1 %i.cw, label %.split.i.i.i102, label %.preheader.i.i.i90

.split.i.i.i102:                                  ; preds = %bb.ab
  %i.cx = icmp eq i64 %.sroa.2.0.copyload.i89, 1
  br i1 %i.cx, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

.preheader.i.i.i90:                               ; preds = %bb.ab, %bb.ad
  %.0.i.i.i91 = phi i64 [ %.fr.i.i.i94, %bb.ad ], [ 0, %bb.ab ]
  %.016.i.i.i92 = phi ptr [ %i.df, %bb.ad ], [ %.sroa.0.0.copyload.i87, %bb.ab ] ; 2 uses
  %i.cy = load i8, ptr %.016.i.i.i92, align 1, !tbaa !161 ; 2 uses
  %i.cz = add i8 %i.cy, -58
  %or.cond.i.i.i93 = icmp ult i8 %i.cz, -10
  br i1 %or.cond.i.i.i93, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %bb.ac

bb.ac:                                            ; preds = %.preheader.i.i.i90
  %i.da = zext nneg i8 %i.cy to i64
  %i.db = mul nuw nsw i64 %.0.i.i.i91, 10
  %i.dc = add nsw i64 %i.db, -48
  %i.dd = add nsw i64 %i.dc, %i.da
  %.fr.i.i.i94 = freeze i64 %i.dd                 ; 4 uses
  %i.de = icmp samesign ult i64 %.fr.i.i.i94, 4294967296
  br i1 %i.de, label %bb.ad, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

bb.ad:                                            ; preds = %bb.ac
  %i.df = getelementptr inbounds nuw i8, ptr %.016.i.i.i92, i64 1 ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.df, %i.ct
  br i1 %.not.i.i.i95, label %.critedge.i.i.i96, label %.preheader.i.i.i90, !llvm.loop !6

.critedge.i.i.i96:                                ; preds = %bb.ad
  %.not42.i.i.i97 = icmp eq i64 %.fr.i.i.i94, 4294967295
  br i1 %.not42.i.i.i97, label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit, label %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i98

_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i98: ; preds = %.critedge.i.i.i96
  %extract.t.i99 = trunc nuw i64 %.fr.i.i.i94 to i32
  %i.dg = uitofp i32 %extract.t.i99 to double
  br label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split

_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split: ; preds = %.split.i.i.i102, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i98, %.split.i.i.i82, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i78, %.split.i.i.i62, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i58, %.split.i.i.i42, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i38, %.split.i.i.i, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i
  %.off0.i101.sink = phi double [ 0.000000e+00, %.split.i.i.i82 ], [ 0.000000e+00, %.split.i.i.i62 ], [ 0.000000e+00, %.split.i.i.i42 ], [ 0.000000e+00, %.split.i.i.i ], [ %i.am, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i ], [ %i.bf, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i38 ], [ %i.by, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i58 ], [ %i.cp, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i78 ], [ %i.dg, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i98 ], [ 0.000000e+00, %.split.i.i.i102 ]
  %.sink152 = phi i32 [ 1, %.split.i.i.i82 ], [ 2, %.split.i.i.i62 ], [ 2, %.split.i.i.i42 ], [ 1, %.split.i.i.i ], [ 1, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i ], [ 2, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i38 ], [ 2, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i58 ], [ 1, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i78 ], [ 3, %_ZN6hermes12toArrayIndexEN4llvh9StringRefE.exit.i98 ], [ 3, %.split.i.i.i102 ]
  %i.dh = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %2, double noundef %.off0.i101.sink) #12
  call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0108.0119, ptr noundef %i.dh, i32 noundef %.sink152) #12
  br label %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit

_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit: ; preds = %bb.ac, %.preheader.i.i.i90, %bb.x, %.preheader.i.i.i70, %bb.r, %.preheader.i.i.i50, %bb.l, %.preheader.i.i.i30, %bb.f, %.preheader.i.i.i, %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split, %.critedge.i.i.i96, %.split.i.i.i102, %bb.aa, %bb.z, %.critedge.i.i.i76, %.split.i.i.i82, %bb.v, %bb.u, %.critedge.i.i.i56, %.split.i.i.i62, %bb.p, %bb.o, %.critedge.i.i.i36, %.split.i.i.i42, %bb.j, %bb.i, %.critedge.i.i.i, %.split.i.i.i, %bb.d, %bb.c, %bb.t
  %.2 = phi i1 [ %.1118, %bb.t ], [ %.1118, %bb.z ], [ %.1118, %.split.i.i.i102 ], [ %.1118, %.critedge.i.i.i96 ], [ %.1118, %bb.aa ], [ %.1118, %bb.c ], [ %.1118, %bb.x ], [ %.1118, %bb.d ], [ %.1118, %.critedge.i.i.i ], [ %.1118, %.split.i.i.i ], [ %.1118, %bb.r ], [ %.1118, %bb.i ], [ %.1118, %.split.i.i.i82 ], [ %.1118, %bb.j ], [ %.1118, %.critedge.i.i.i36 ], [ %.1118, %.split.i.i.i42 ], [ %.1118, %bb.l ], [ %.1118, %bb.o ], [ %.1118, %.critedge.i.i.i76 ], [ %.1118, %bb.p ], [ %.1118, %.critedge.i.i.i56 ], [ %.1118, %.split.i.i.i62 ], [ true, %_ZN6hermes22LowerNumericProperties23stringToNumericPropertyERNS_9IRBuilderERNS_11InstructionEj.exit.sink.split ], [ %.1118, %bb.u ], [ %.1118, %bb.f ], [ %.1118, %bb.v ], [ %.1118, %.preheader.i.i.i ], [ %.1118, %.preheader.i.i.i30 ], [ %.1118, %.preheader.i.i.i50 ], [ %.1118, %.preheader.i.i.i70 ], [ %.1118, %.preheader.i.i.i90 ], [ %.1118, %bb.ac ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0108.0119, i64 8
  %.sroa.0108.0 = load ptr, ptr %i.di, align 8, !tbaa !22 ; 2 uses
  %.not115 = icmp eq ptr %.sroa.0108.0, %i.q
  br i1 %.not115, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes15LimitAllocArray13runOnFunctionEPNS_8FunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::IRBuilder", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.sroa.059.094 = load ptr, ptr %i.a, align 8, !tbaa !22 ; 2 uses
  %.not6295 = icmp eq ptr %.sroa.059.094, %i.b
  br i1 %.not6295, label %._crit_edge100, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.b

._crit_edge100:                                   ; preds = %._crit_edge92, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.1.lcssa, %._crit_edge92 ]
  ret i1 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph99, %._crit_edge92
  %.sroa.059.097 = phi ptr [ %.sroa.059.094, %.lr.ph99 ], [ %.sroa.059.0, %._crit_edge92 ] ; 3 uses
  %.096 = phi i1 [ false, %.lr.ph99 ], [ %.1.lcssa, %._crit_edge92 ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.059.097, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.059.097, i64 56 ; 2 uses
  %.sroa.055.083 = load ptr, ptr %i.g, align 8, !tbaa !22 ; 2 uses
  %.not6384 = icmp eq ptr %.sroa.055.083, %i.h
  br i1 %.not6384, label %._crit_edge92, label %.lr.ph91

._crit_edge92:                                    ; preds = %bb.i, %bb.b
  %.1.lcssa = phi i1 [ %.096, %bb.b ], [ %.4, %bb.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.059.097, i64 8
  %.sroa.059.0 = load ptr, ptr %i.i, align 8, !tbaa !22 ; 2 uses
  %.not62 = icmp eq ptr %.sroa.059.0, %i.b
  br i1 %.not62, label %._crit_edge100, label %bb.b

.lr.ph91:                                         ; preds = %bb.b, %bb.i
  %.sroa.055.086 = phi ptr [ %.sroa.055.0, %bb.i ], [ %.sroa.055.083, %bb.b ] ; 19 uses
  %.185 = phi i1 [ %.4, %bb.i ], [ %.096, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.055.086, i64 16 ; 4 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !32
  %i.l = icmp ne i8 %i.k, 54
  %.not64 = icmp eq ptr %.sroa.055.086, null
  %.not = or i1 %.not64, %i.l
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph91
  %i.m = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086) #12
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !88
  store ptr %i.o, ptr %2, align 8, !tbaa !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  call void @_ZN6hermes9IRBuilder22setInsertionPointAfterEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %.sroa.055.086) #12
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.055.086, i64 112
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !93
  %i.r = shufflevector <2 x ptr> %i.q, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.r, ptr %i.e, align 8, !tbaa !93
  %i.s = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086) #12 ; 3 uses
  %i.t = icmp ugt i32 %i.s, 1
  br i1 %i.t, label %.lr.ph, label %.outer._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.outer
  %.047.ph73 = phi i32 [ %i.ar, %.outer ], [ 1, %bb.d ] ; 11 uses
  %.048.ph72 = phi i32 [ %i.u, %.outer ], [ -1, %bb.d ]
  %i.u = add i32 %.048.ph72, 1                    ; 3 uses
  %i.v = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12
  %i.w = load i8, ptr %i.v, align 8, !tbaa !32
  %i.x = icmp eq i8 %i.w, 115
  br i1 %i.x, label %.critedge.peel, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.y = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12
  %i.z = load i8, ptr %i.y, align 8, !tbaa !32
  %.not113 = icmp eq i8 %i.z, 112
  br i1 %.not113, label %.critedge.peel, label %.outer

.critedge.peel:                                   ; preds = %bb.e, %.lr.ph
  %i.aa = add i32 %i.s, -1                        ; 2 uses
  %i.ab = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12
  %i.ac = uitofp i32 %i.u to double
  %i.ad = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %2, double noundef %i.ac) #12
  %i.ae = call noundef ptr @_ZN6hermes9IRBuilder26createStoreOwnPropertyInstEPNS_5ValueES2_S2_NS0_14PropEnumerableE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.ab, ptr noundef nonnull %i.j, ptr noundef %i.ad, i32 noundef 1) #12 ; 0 uses
  call void @_ZN6hermes11Instruction13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12
  %i.af = icmp ult i32 %.047.ph73, %i.aa
  br i1 %i.af, label %.peel.next, label %.outer._crit_edge

.peel.next:                                       ; preds = %.critedge.peel, %.critedge
  %.04669 = phi i32 [ %i.al, %.critedge ], [ %i.aa, %.critedge.peel ]
  %.04868 = phi i32 [ %i.ag, %.critedge ], [ %i.u, %.critedge.peel ]
  %i.ag = add i32 %.04868, 1                      ; 2 uses
  %i.ah = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !32
  %i.aj = icmp eq i8 %i.ai, 115
  br i1 %i.aj, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.peel.next
  %i.ak = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %.peel.next
  %i.al = add i32 %.04669, -1                     ; 2 uses
  %i.am = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12
  %i.an = uitofp i32 %i.ag to double
  %i.ao = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %2, double noundef %i.an) #12
  %i.ap = call noundef ptr @_ZN6hermes9IRBuilder26createStoreOwnPropertyInstEPNS_5ValueES2_S2_NS0_14PropEnumerableE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.am, ptr noundef nonnull %i.j, ptr noundef %i.ao, i32 noundef 1) #12 ; 0 uses
  call void @_ZN6hermes11Instruction13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.047.ph73) #12
  %i.aq = icmp ult i32 %.047.ph73, %i.al
  br i1 %i.aq, label %.peel.next, label %.outer._crit_edge, !llvm.loop !257

.outer:                                           ; preds = %bb.e
  %i.ar = add nuw i32 %.047.ph73, 1               ; 2 uses
  %i.as = icmp ult i32 %i.ar, %i.s
  br i1 %i.as, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !258

.outer._crit_edge:                                ; preds = %.outer, %.critedge, %.critedge.peel, %bb.d
  %.2.lcssa = phi i1 [ true, %.critedge ], [ %.185, %bb.d ], [ true, %.critedge.peel ], [ %.185, %.outer ]
  %i.at = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086) #12
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.outer._crit_edge
  %i.av = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086) #12
  %.04577 = add i32 %i.av, -2                     ; 2 uses
  %i.aw = load i32, ptr %i.f, align 8, !tbaa !262
  %.not5378 = icmp ult i32 %.04577, %i.aw
  br i1 %.not5378, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %.04580 = phi i32 [ %.045, %bb.h ], [ %.04577, %bb.g ] ; 3 uses
  %.045.in79108 = add i32 %.04580, 1              ; 2 uses
  %i.ax = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.045.in79108) #12
  %i.ay = uitofp i32 %.04580 to double
  %i.az = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %2, double noundef %i.ay) #12
  %i.ba = call noundef ptr @_ZN6hermes9IRBuilder26createStoreOwnPropertyInstEPNS_5ValueES2_S2_NS0_14PropEnumerableE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.ax, ptr noundef nonnull %i.j, ptr noundef %i.az, i32 noundef 1) #12 ; 0 uses
  call void @_ZN6hermes11Instruction13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.055.086, i32 noundef %.045.in79108) #12
  %.045 = add i32 %.04580, -1                     ; 2 uses
  %i.bb = load i32, ptr %i.f, align 8, !tbaa !262
  %.not53 = icmp ult i32 %.045, %i.bb
  br i1 %.not53, label %.loopexit, label %bb.h, !llvm.loop !259

.loopexit:                                        ; preds = %bb.h, %bb.g, %.outer._crit_edge
  %.3 = phi i1 [ %.2.lcssa, %.outer._crit_edge ], [ true, %bb.g ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph91, %bb.c, %.loopexit
  %.4 = phi i1 [ %.3, %.loopexit ], [ %.185, %bb.c ], [ %.185, %.lr.ph91 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.055.086, i64 8
  %.sroa.055.0 = load ptr, ptr %i.bc, align 8, !tbaa !22 ; 2 uses
  %.not63 = icmp eq ptr %.sroa.055.0, %i.h
  br i1 %.not63, label %._crit_edge92, label %.lr.ph91
}

declare void @_ZN6hermes9IRBuilder22setInsertionPointAfterEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder26createStoreOwnPropertyInstEPNS_5ValueES2_S2_NS0_14PropEnumerableE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes11Instruction13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN6hermes15LowerCondBranch19isOperatorSupportedENS_18BinaryOperatorInst6OpKindE(i32 noundef %0) local_unnamed_addr #4 align 2 {
bb.a:
  %.off = add i32 %0, -1
  %switch = icmp ult i32 %.off, 8
  ret i1 %switch
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes15LowerCondBranch13runOnFunctionEPNS_8FunctionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::IRBuilder", align 8 ; 7 uses
  %3 = alloca %"class.llvh::DenseMap.95", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88
  store ptr %i.b, ptr %2, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.sroa.089.0123 = load ptr, ptr %i.d, align 8, !tbaa !22 ; 2 uses
  %.not92124 = icmp eq ptr %.sroa.089.0123, %i.e
  br i1 %.not92124, label %._crit_edge129, label %.lr.ph128

.lr.ph128:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 6 uses
  br label %bb.b

._crit_edge129:                                   ; preds = %._crit_edge122, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.1.lcssa175, %._crit_edge122 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i1 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph128, %._crit_edge122
  %.sroa.089.0126 = phi ptr [ %.sroa.089.0123, %.lr.ph128 ], [ %.sroa.089.0, %._crit_edge122 ] ; 3 uses
  %.0125 = phi i1 [ false, %.lr.ph128 ], [ %.1.lcssa175, %._crit_edge122 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.089.0126, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.089.0126, i64 56 ; 2 uses
  %.sroa.085.0114 = load ptr, ptr %i.j, align 8, !tbaa !22 ; 2 uses
  %.not93115 = icmp eq ptr %.sroa.085.0114, %i.k
  br i1 %.not93115, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.t
  %.pre = load i32, ptr %i.h, align 8, !tbaa !164
  %.pre146 = load ptr, ptr %3, align 8, !tbaa !165 ; 7 uses
  %.pre147 = load i32, ptr %i.g, align 8, !tbaa !166 ; 2 uses
  %i.l = icmp eq i32 %.pre, 0
  %i.m = zext i32 %.pre147 to i64                 ; 4 uses
  br i1 %i.l, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %i.n = phi i64 [ %i.m, %._crit_edge ], [ 0, %bb.b ] ; 2 uses
  %.1.lcssa176 = phi i1 [ %.5, %._crit_edge ], [ %.0125, %bb.b ]
  %i.o = phi ptr [ %.pre146, %._crit_edge ], [ null, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.n ; 2 uses
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14CondBranchInstEPNS2_17CompareBranchInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit

bb.c:                                             ; preds = %._crit_edge
  %.idx.i = shl nuw nsw i64 %i.m, 4
  %i.q = getelementptr i8, ptr %.pre146, i64 %.idx.i ; 5 uses
  %.not5.i5.i10.i2.i = icmp eq i32 %.pre147, 0
  br i1 %.not5.i5.i10.i2.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14CondBranchInstEPNS2_17CompareBranchInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit, label %.lr.ph.i6.i12.i3.i

.lr.ph.i6.i12.i3.i:                               ; preds = %bb.c, %.critedge2.i8.i14.i6.i
  %.sroa.0.3.i4.i = phi ptr [ %i.s, %.critedge2.i8.i14.i6.i ], [ %.pre146, %bb.c ] ; 3 uses
  %i.r = load ptr, ptr %.sroa.0.3.i4.i, align 8, !tbaa !168
  %magicptr.i7.i13.i5.i = ptrtoint ptr %i.r to i64
  switch i64 %magicptr.i7.i13.i5.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14CondBranchInstEPNS2_17CompareBranchInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit [
    i64 -8, label %.critedge2.i8.i14.i6.i
    i64 -16, label %.critedge2.i8.i14.i6.i
  ]

.critedge2.i8.i14.i6.i:                           ; preds = %.lr.ph.i6.i12.i3.i, %.lr.ph.i6.i12.i3.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i, i64 16 ; 2 uses
  %.not.i9.i15.i7.i = icmp eq ptr %i.s, %i.q
  br i1 %.not.i9.i15.i7.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14CondBranchInstEPNS2_17CompareBranchInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit, label %.lr.ph.i6.i12.i3.i, !llvm.loop !263

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14CondBranchInstEPNS2_17CompareBranchInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5beginEv.exit: ; preds = %.lr.ph.i6.i12.i3.i, %.critedge2.i8.i14.i6.i, %._crit_edge.thread, %bb.c
  %i.t = phi i64 [ %i.n, %._crit_edge.thread ], [ 0, %bb.c ], [ %i.m, %.critedge2.i8.i14.i6.i ], [ %i.m, %.lr.ph.i6.i12.i3.i ]
  %.1.lcssa175 = phi i1 [ %.1.lcssa176, %._crit_edge.thread ], [ %.5, %bb.c ], [ %.5, %.critedge2.i8.i14.i6.i ], [ %.5, %.lr.ph.i6.i12.i3.i ] ; 2 uses
  %i.u = phi ptr [ %i.o, %._crit_edge.thread ], [ %.pre146, %bb.c ], [ %.pre146, %.critedge2.i8.i14.i6.i ], [ %.pre146, %.lr.ph.i6.i12.i3.i ] ; 2 uses
  %.pn14.i = phi ptr [ %i.p, %._crit_edge.thread ], [ %.pre146, %bb.c ], [ %.sroa.0.3.i4.i, %.lr.ph.i6.i12.i3.i ], [ %i.q, %.critedge2.i8.i14.i6.i ] ; 2 uses
  %.pn12.i = phi ptr [ %i.p, %._crit_edge.thread ], [ %i.q, %bb.c ], [ %i.q, %.critedge2.i8.i14.i6.i ], [ %i.q, %.lr.ph.i6.i12.i3.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.t ; 2 uses
  %.not94119 = icmp eq ptr %.pn14.i, %i.v
  br i1 %.not94119, label %._crit_edge122, label %.lr.ph121

.lr.ph:                                           ; preds = %bb.b, %bb.t
  %.sroa.085.0117 = phi ptr [ %.sroa.085.0, %bb.t ], [ %.sroa.085.0114, %bb.b ] ; 18 uses
  %.1116 = phi i1 [ %.5, %bb.t ], [ %.0125, %bb.b ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.085.0117, i64 16
  %i.x = load i8, ptr %i.w, align 8, !tbaa !32
  %i.y = icmp ne i8 %i.x, 81
  %.not95 = icmp eq ptr %.sroa.085.0117, null
  %.not = or i1 %.not95, %i.y
  br i1 %.not, label %bb.t, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.z = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.085.0117, i32 noundef 0) #12 ; 4 uses
  %i.aa = call noundef zeroext i1 @_ZNK6hermes5Value10hasOneUserEv(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #12
  br i1 %i.aa, label %bb.e, label %bb.t

bb.e:                                             ; preds = %bb.d
  %i.ab = load i8, ptr %i.z, align 8, !tbaa !32
  %.not96 = icmp eq i8 %i.ab, 34
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 4 uses
  br i1 %.not96, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.ad = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(136) %i.ac, i32 noundef 0) #12
  %i.ae = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(136) %i.ac, i32 noundef 1) #12
  %i.af = call noundef i32 @_ZN6hermes11Instruction20getDerivedSideEffectEv(ptr noundef nonnull align 8 dereferenceable(132) %i.ac) #12
  %.not97 = icmp eq i32 %i.af, 0
  br i1 %.not97, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.085.0117, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.ak = icmp ne ptr %.sroa.085.0117, %i.aj
  %i.al = load ptr, ptr %.sroa.085.0117, align 8
  %.not35192 = icmp eq ptr %i.al, %i.ac
  %.not35 = select i1 %i.ak, i1 %.not35192, i1 false
  br i1 %.not35, label %bb.h, label %bb.t

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 116 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !171
  %.off.i = add i32 %i.an, -1
  %switch.i = icmp ult i32 %.off.i, 8
  br i1 %switch.i, label %bb.i, label %bb.t

bb.i:                                             ; preds = %bb.h
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %.sroa.085.0117) #12
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.085.0117, i64 112
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !93
  %i.aq = shufflevector <2 x ptr> %i.ap, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.aq, ptr %i.f, align 8, !tbaa !93
  %i.ar = load i32, ptr %i.am, align 4, !tbaa !171
  %i.as = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.085.0117, i32 noundef 1) #12 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -16
  %i.av = select i1 %i.at, ptr null, ptr %i.au
  %i.aw = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.085.0117, i32 noundef 2) #12 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -16
  %i.az = select i1 %i.ax, ptr null, ptr %i.ay
  %i.ba = call noundef ptr @_ZN6hermes9IRBuilder23createCompareBranchInstEPNS_5ValueES2_NS_18BinaryOperatorInst6OpKindEPNS_10BasicBlockES6_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.ad, ptr noundef %i.ae, i32 noundef %i.ar, ptr noundef %i.av, ptr noundef %i.az) #12
  %i.bb = load ptr, ptr %3, align 8, !tbaa !165   ; 2 uses
  %i.bc = load i32, ptr %i.g, align 8, !tbaa !166 ; 7 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14CondBranchInstEPNS2_17CompareBranchInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = ptrtoint ptr %.sroa.085.0117 to i64
  %i.bf = trunc i64 %i.be to i32                  ; 2 uses
  %i.bg = lshr i32 %i.bf, 4
  %i.bh = lshr i32 %i.bf, 9
  %i.bi = xor i32 %i.bg, %i.bh
  %i.bj = add i32 %i.bc, -1                       ; 2 uses
  %.02744.i.i.i = and i32 %i.bj, %i.bi            ; 2 uses
  %i.bk = zext nneg i32 %.02744.i.i.i to i64
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bk ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !168 ; 2 uses
  %i.bn = icmp eq ptr %.sroa.085.0117, %i.bm
  br i1 %i.bn, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14CondBranchInstEPNS2_17CompareBranchInstENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit, label %.lr.ph.i.i.i, !prof !114

.lr.ph.i.i.i:                                     ; preds = %bb.j, %bb.l
  %i.bo = phi ptr [ %i.by, %bb.l ], [ %i.bm, %bb.j ] ; 2 uses
end_hunk_0
