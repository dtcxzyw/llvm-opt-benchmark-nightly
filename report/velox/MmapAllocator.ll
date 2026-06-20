inline.NumInlined: 3478
inline.NumDeleted: 1648
begin_hunk_0_@_ZN8facebook5velox6memory13MmapAllocator9SizeClass14allocateLockedEiPmRNS1_10AllocationE:bb.a
bb.h:                                             ; preds = %bb.g
  %i.ac = icmp eq ptr %2, null
  br i1 %i.ac, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !270
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit, %bb.i
  %.150.ph = phi i32 [ %i.cc, %_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit ], [ %.049, %bb.i ] ; 3 uses
  %.027.ph = phi i32 [ %i.al, %_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit ], [ 0, %bb.i ] ; 3 uses
  %.026.ph = phi i32 [ %spec.store.select, %_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit ], [ %i.ae, %bb.i ]
  %i.ak = load ptr, ptr %i.af, align 8
  %umax = tail call i32 @llvm.umax.i32(i32 %.027.ph, i32 %i.b)
  %exitcond.not73.not = icmp ult i32 %.027.ph, %i.b
  br i1 %exitcond.not73.not, label %.lr.ph, label %.thread

bb.j:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i32 %i.al, %umax
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !309

.lr.ph:                                           ; preds = %.outer, %bb.j
  %.02675 = phi i32 [ %spec.store.select, %bb.j ], [ %.026.ph, %.outer ] ; 2 uses
  %.02774 = phi i32 [ %i.al, %bb.j ], [ %.027.ph, %.outer ]
  %i.al = add i32 %.02774, 1                      ; 3 uses
  %i.am = add i32 %.02675, 1                      ; 2 uses
  %i.an = zext i32 %i.am to i64
  %.not29 = icmp ult i64 %i.an, %i.c
  %spec.store.select = select i1 %.not29, i32 %i.am, i32 0 ; 5 uses
  %i.ao = zext i32 %spec.store.select to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !69 ; 2 uses
  %.not31 = icmp eq i64 %i.aq, -1
  br i1 %.not31, label %bb.j, label %bb.k, !llvm.loop !309

bb.k:                                             ; preds = %.lr.ph
  %i.ar = sext i32 %spec.store.select to i64      ; 2 uses
  %i.as = xor i64 %i.aq, -1                       ; 2 uses
  %i.at = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.as)
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %.150.ph, i32 %i.au) ; 3 uses
  %i.av = icmp sgt i32 %.150.ph, 0
  br i1 %i.av, label %.lr.ph.i, label %_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit

.lr.ph.i:                                         ; preds = %bb.k
  %i.aw = shl nsw i32 %spec.store.select, 6
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %.lr.ph.i
  %.023.i = phi i64 [ %i.as, %.lr.ph.i ], [ %i.ca, %bb.o ] ; 3 uses
  %.01922.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cb, %bb.o ]
  %i.ax = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.023.i, i1 true) ; 4 uses
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !113
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ar
  %i.bb = trunc nuw nsw i64 %i.ax to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = lshr i64 %i.ax, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !109
  %i.bh = or i8 %i.bd, %i.bg
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !109
  %i.bi = load ptr, ptr %i.ag, align 8, !tbaa !113
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ar
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !69
  %i.bl = shl nuw i64 1, %i.ax
  %i.bm = and i64 %i.bk, %i.bl
  %.not.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = load i64, ptr %i.ah, align 8, !tbaa !182
  %i.bo = load i64, ptr %2, align 8, !tbaa !69
  %i.bp = add i64 %i.bo, %i.bn
  store i64 %i.bp, ptr %2, align 8, !tbaa !69
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bq = load i32, ptr %i.d, align 4, !tbaa !206
  %i.br = add nsw i32 %i.bq, -1
  store i32 %i.br, ptr %i.d, align 4, !tbaa !206
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bs = load ptr, ptr %i.ai, align 8, !tbaa !180
  %i.bt = load i64, ptr %i.ah, align 8, !tbaa !182 ; 2 uses
  %i.bu = or disjoint i32 %i.aw, %i.ay
  %i.bv = sext i32 %i.bu to i64
  %i.bw = shl nsw i64 %i.bv, 12
  %i.bx = mul i64 %i.bw, %i.bt
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bx
  tail call void @_ZN8facebook5velox6memory10Allocation6appendEPhm(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %i.by, i64 noundef %i.bt)
  %i.bz = add i64 %.023.i, -1
  %i.ca = and i64 %i.bz, %.023.i
  %i.cb = add nuw nsw i32 %.01922.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cb, %.sroa.speculated.i
  br i1 %exitcond.not.i, label %_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit, label %bb.l, !llvm.loop !310

_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit: ; preds = %bb.o, %bb.k
  %i.cc = sub nsw i32 %.150.ph, %.sroa.speculated.i ; 2 uses
  %i.cd = sext i32 %.sroa.speculated.i to i64
  %i.ce = load i64, ptr %i.aj, align 8, !tbaa !311
  %i.cf = add i64 %i.ce, %i.cd
  store i64 %i.cf, ptr %i.aj, align 8, !tbaa !311
  %.not32 = icmp eq i32 %i.cc, 0
  br i1 %.not32, label %.thread54, label %.outer

.thread54:                                        ; preds = %_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE.exit
  store i32 %.02675, ptr %i.ad, align 8, !tbaa !270
  br label %.thread

.thread:                                          ; preds = %.outer, %bb.j, %.thread54, %bb.h, %bb.g
  %.5 = phi i1 [ false, %bb.h ], [ true, %bb.g ], [ true, %.thread54 ], [ false, %bb.j ], [ false, %.outer ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS1_10AllocationE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.xsimd::batch", align 32     ; 5 uses
  %4 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  br label %.thread65

.thread65:                                        ; preds = %._crit_edge, %bb.a
  %.040 = phi i32 [ %1, %bb.a ], [ %.24261, %._crit_edge ]
  %i.f = tail call noundef i32 @_ZN8facebook5velox6memory13MmapAllocator9SizeClass19findMappedFreeGroupEv(ptr noundef nonnull align 8 dereferenceable(192) %0) ; 4 uses
  %i.g = shl i32 %i.f, 3                          ; 3 uses
  %i.h = add i32 %i.g, 8                          ; 3 uses
  %.not101 = icmp eq i32 %i.g, -8
  br i1 %.not101, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread65
  %i.i = sext i32 %i.g to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread56
  %indvars.iv114 = phi i64 [ %i.i, %.lr.ph.preheader ], [ %indvars.iv.next115, %.thread56 ] ; 5 uses
  %.099 = phi i1 [ false, %.lr.ph.preheader ], [ %.163, %.thread56 ]
  %.14197 = phi i32 [ %.040, %.lr.ph.preheader ], [ %.24261, %.thread56 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !113, !noalias !312
  %i.k = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv114
  %i.l = load <4 x i64>, ptr %i.k, align 1, !tbaa !109, !noalias !315
  %i.m = xor <4 x i64> %i.l, splat (i64 -1)
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !113, !noalias !312
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv114
  %i.p = load <4 x i64>, ptr %i.o, align 1, !tbaa !109, !noalias !322
  %i.q = and <4 x i64> %i.p, %i.m                 ; 2 uses
  store <4 x i64> %i.q, ptr %3, align 32, !alias.scope !329
  %i.r = icmp ne <4 x i64> %i.q, zeroinitializer
  %i.s = bitcast <4 x i1> %i.r to i4              ; 2 uses
  %i.t = icmp eq i4 %i.s, 0
  %.pre = trunc nsw i64 %indvars.iv114 to i32     ; 2 uses
  br i1 %i.t, label %.thread56, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph
  %i.u = tail call range(i4 0, 5) i4 @llvm.cttz.i4(i4 %i.s, i1 true)
  %i.v = shl i64 %indvars.iv114, 6
  %i.w = zext nneg i4 %i.u to i64
  %i.x = shl nuw nsw i64 %i.w, 6
  br label %bb.b

bb.b:                                             ; preds = %"_ZZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i", %.lr.ph.i.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %"_ZZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i" ], [ %i.x, %.lr.ph.i.i ] ; 4 uses
  %.4 = phi i32 [ %.6, %"_ZZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i" ], [ %.14197, %.lr.ph.i.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %i.y = lshr exact i64 %indvars.iv, 3
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !69  ; 2 uses
  %.not.i46.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i46.i.i, label %"_ZZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i", label %.preheader.i47.i.i.preheader

.preheader.i47.i.i.preheader:                     ; preds = %bb.b
  %i.ab = add i64 %i.v, %indvars.iv
  %.masked = and i64 %i.ab, 4294967232
  %.not.i.not.not.i49.i.i141 = icmp eq i32 %.4, 0
  br i1 %.not.i.not.not.i49.i.i141, label %.thread65.thread, label %.lr.ph144

.preheader.i47.i.i:                               ; preds = %.lr.ph144
  %.not.i.not.not.i49.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.not.not.i49.i.i, label %.thread65.thread, label %.lr.ph144, !llvm.loop !332

.lr.ph144:                                        ; preds = %.preheader.i47.i.i.preheader, %.preheader.i47.i.i
  %.012.i.i.i143 = phi i64 [ %i.at, %.preheader.i47.i.i ], [ %i.aa, %.preheader.i47.i.i.preheader ] ; 3 uses
  %.5142 = phi i32 [ %i.ar, %.preheader.i47.i.i ], [ %.4, %.preheader.i47.i.i.preheader ]
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i.i.i143, i1 true) ; 2 uses
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.ae = or disjoint i64 %.masked, %i.ac         ; 2 uses
  %i.af = trunc nuw nsw i64 %i.ac to i8
  %i.ag = and i8 %i.af, 7
  %i.ah = shl nuw i8 1, %i.ag
  %i.ai = lshr i64 %i.ae, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !109
  %i.al = or i8 %i.ak, %i.ah
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !109
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !180
  %i.an = load i64, ptr %i.d, align 8, !tbaa !182 ; 2 uses
  %i.ao = shl nuw nsw i64 %i.ae, 12
  %i.ap = mul i64 %i.ao, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  tail call void @_ZN8facebook5velox6memory10Allocation6appendEPhm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %i.aq, i64 noundef %i.an)
  %i.ar = add nsw i32 %.5142, -1                  ; 3 uses
  %i.as = add i64 %.012.i.i.i143, -1
  %i.at = and i64 %i.as, %.012.i.i.i143           ; 2 uses
  %.not11.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not11.i.i.i, label %"_ZZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i", label %.preheader.i47.i.i, !llvm.loop !332

"_ZZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i": ; preds = %.lr.ph144, %bb.b
  %.6 = phi i32 [ %.4, %bb.b ], [ %i.ar, %.lr.ph144 ] ; 3 uses
  %i.au = icmp samesign ugt i64 %indvars.iv, 128
  br i1 %i.au, label %"_ZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_.exit", label %bb.b, !llvm.loop !333

"_ZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_.exit": ; preds = %"_ZZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_ENKUliE_clEi.exit.i.i"
  %.not = icmp eq i32 %.6, 0
  br i1 %.not, label %.preheader, label %.thread56

.preheader:                                       ; preds = %"_ZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_.exit"
  %i.av = load ptr, ptr %i.b, align 8
  %i.aw = load ptr, ptr %i.a, align 8
  %storemerge23145 = add nuw i32 %.pre, 4         ; 2 uses
  %i.ax = icmp ult i32 %storemerge23145, %i.h
  br i1 %i.ax, label %.lr.ph147, label %._crit_edge148

bb.c:                                             ; preds = %.lr.ph147
  %storemerge23 = add nuw i32 %storemerge23146, 4 ; 2 uses
  %i.ay = icmp ult i32 %storemerge23, %i.h
  br i1 %i.ay, label %.lr.ph147, label %._crit_edge148, !llvm.loop !334

.lr.ph147:                                        ; preds = %.preheader, %bb.c
  %storemerge23146 = phi i32 [ %storemerge23, %bb.c ], [ %storemerge23145, %.preheader ] ; 2 uses
  %i.az = sext i32 %storemerge23146 to i64        ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.az
  %i.bb = load <4 x i64>, ptr %i.ba, align 1, !tbaa !109, !noalias !335
  %i.bc = xor <4 x i64> %i.bb, splat (i64 -1)
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.az
  %i.be = load <4 x i64>, ptr %i.bd, align 1, !tbaa !109, !noalias !344
  %i.bf = and <4 x i64> %i.be, %i.bc
  %i.bg = icmp ne <4 x i64> %i.bf, zeroinitializer
  %i.bh = bitcast <4 x i1> %i.bg to i4
  %i.bi = icmp eq i4 %i.bh, 0
  br i1 %i.bi, label %bb.c, label %.thread65.thread, !llvm.loop !334

._crit_edge148:                                   ; preds = %bb.c, %.preheader
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !113
  %i.bk = zext i32 %i.f to i64                    ; 2 uses
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !109
  %i.bo = and i64 %i.bk, 7
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !109
  %i.br = and i8 %i.bq, %i.bn
  store i8 %i.br, ptr %i.bm, align 1, !tbaa !109
  br label %.thread65.thread

.thread65.thread:                                 ; preds = %.preheader.i47.i.i.preheader, %.preheader.i47.i.i, %.lr.ph147, %._crit_edge148
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.f

.thread56:                                        ; preds = %"_ZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_.exit", %.lr.ph
  %.163 = phi i1 [ %.099, %.lr.ph ], [ true, %"_ZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_.exit" ] ; 2 uses
  %.24261 = phi i32 [ %.14197, %.lr.ph ], [ %.6, %"_ZN8facebook5velox4bits8testBitsIZNS0_6memory13MmapAllocator9SizeClass22allocateFromMappedFreeEiRNS3_10AllocationEE3$_0EEbPKmiibT_.exit" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.bs = add nuw i32 %.pre, 4
  %i.bt = icmp ult i32 %i.bs, %i.h
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 4
  br i1 %i.bt, label %.lr.ph, label %._crit_edge, !llvm.loop !351

._crit_edge:                                      ; preds = %.thread56
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !113
  %i.bv = zext i32 %i.f to i64                    ; 2 uses
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !109
  %i.bz = and i64 %i.bv, 7
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !109
  %i.cc = and i8 %i.cb, %i.by
  store i8 %i.cc, ptr %i.bx, align 1, !tbaa !109
  br i1 %.163, label %.thread65, label %.loopexit, !llvm.loop !352

.critedge:                                        ; preds = %.thread65
  %i.cd = load ptr, ptr %i.e, align 8, !tbaa !113
  %i.ce = lshr i32 %i.f, 3
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cf ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !109
  %i.ci = and i8 %i.ch, 127
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str, i32 noundef 774, i32 noundef 2)
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %.loopexit
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull @.str.5, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull @.str.48, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cm = load i64, ptr %i.d, align 8, !tbaa !182
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, i64 noundef %i.cm)
          to label %.thread71 unwind label %bb.e  ; 0 uses

.thread71:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %.loopexit
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %i.co

bb.f:                                             ; preds = %.thread65.thread, %.thread71
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory13MmapAllocator9SizeClass11allocateAnyEiRiRmRNS1_10AllocationE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load i64, ptr %i.d, align 8, !tbaa !69
  %i.f = xor i64 %i.e, -1                         ; 2 uses
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.f)
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = load i32, ptr %2, align 4, !tbaa !3      ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.h) ; 3 uses
  %i.j = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = shl nsw i32 %1, 6
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load i32, ptr %2, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.p = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.i, %bb.a ]
  %i.q = sub nsw i32 %i.p, %.sroa.speculated
  store i32 %i.q, ptr %2, align 4, !tbaa !3
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.023 = phi i64 [ %i.f, %.lr.ph ], [ %i.au, %bb.e ] ; 3 uses
  %.01922 = phi i32 [ 0, %.lr.ph ], [ %i.av, %bb.e ]
  %i.r = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.023, i1 true) ; 4 uses
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.b
  %i.v = trunc nuw nsw i64 %i.r to i8
  %i.w = and i8 %i.v, 7
  %i.x = shl nuw i8 1, %i.w
  %i.y = lshr i64 %i.r, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !109
  %i.ab = or i8 %i.aa, %i.x
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !109
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !113
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.b
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !69
  %i.af = shl nuw i64 1, %i.r
  %i.ag = and i64 %i.ae, %i.af
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !182
  %i.ai = load i64, ptr %3, align 8, !tbaa !69
  %i.aj = add i64 %i.ai, %i.ah
end_hunk_0
