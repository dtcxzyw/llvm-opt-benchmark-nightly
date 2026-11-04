Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoongArchISelLowering?download=true
inline.NumInlined: 11584
inline.NumDeleted: 2972
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 87
begin_hunk_0_@_ZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS_15MutableArrayRefIiEENS_3MVTERNS_7SDValueES7_RNS_12SelectionDAGERKNS_18LoongArchSubtargetE:bb.a
  store i32 %.fca.1.extract79, ptr %.sroa.2106.0..sroa_idx, align 8, !tbaa !160
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.if = icmp sgt i64 %i.e, 0
  br i1 %i.if, label %.lr.ph132.preheader, label %.loopexit

.lr.ph132.preheader:                              ; preds = %bb.bk
  %i.ig = add i64 %i.e, %i.a
  %i.ih = add i64 %i.a, 4
  %i.ii = tail call i64 @llvm.umax.i64(i64 %i.ig, i64 %i.ih)
  %i.ij = xor i64 %i.a, -1
  %i.ik = add i64 %i.ii, %i.ij                    ; 2 uses
  %i.il = lshr i64 %i.ik, 2
  %i.im = add nuw nsw i64 %i.il, 1                ; 2 uses
  %min.iters.check252 = icmp ult i64 %i.ik, 28
  br i1 %min.iters.check252, label %.lr.ph132.preheader266, label %vector.ph253

vector.ph253:                                     ; preds = %.lr.ph132.preheader
  %n.vec254 = and i64 %i.im, 9223372036854775800  ; 3 uses
  %i.in = shl i64 %n.vec254, 2
  %i.io = getelementptr i8, ptr %1, i64 %i.in
  %broadcast.splatinsert255 = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat256 = shufflevector <4 x i32> %broadcast.splatinsert255, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph253
  %index258 = phi i64 [ 0, %vector.ph253 ], [ %index.next262, %vector.body257 ] ; 2 uses
  %i.ip = shl i64 %index258, 2
  %next.gep259 = getelementptr i8, ptr %1, i64 %i.ip ; 3 uses
  %i.iq = getelementptr i8, ptr %next.gep259, i64 16 ; 2 uses
  %wide.load260 = load <4 x i32>, ptr %next.gep259, align 4, !tbaa !160 ; 2 uses
  %wide.load261 = load <4 x i32>, ptr %i.iq, align 4, !tbaa !160 ; 2 uses
  %i.ir = icmp slt <4 x i32> %wide.load260, zeroinitializer
  %i.is = icmp slt <4 x i32> %wide.load261, zeroinitializer
  %i.it = select <4 x i1> %i.ir, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat256
  %i.iu = select <4 x i1> %i.is, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat256
  %i.iv = sub nsw <4 x i32> %wide.load260, %i.it
  %i.iw = sub nsw <4 x i32> %wide.load261, %i.iu
  store <4 x i32> %i.iv, ptr %next.gep259, align 4, !tbaa !160
  store <4 x i32> %i.iw, ptr %i.iq, align 4, !tbaa !160
  %index.next262 = add nuw i64 %index258, 8       ; 2 uses
  %i.ix = icmp eq i64 %index.next262, %n.vec254
  br i1 %i.ix, label %middle.block263, label %vector.body257, !llvm.loop !1716

middle.block263:                                  ; preds = %vector.body257
  %cmp.n264 = icmp eq i64 %i.im, %n.vec254
  br i1 %cmp.n264, label %.loopexit, label %.lr.ph132.preheader266

.lr.ph132.preheader266:                           ; preds = %.lr.ph132.preheader, %middle.block263
  %.0331131.ph = phi ptr [ %1, %.lr.ph132.preheader ], [ %i.io, %middle.block263 ]
  br label %.lr.ph132

.lr.ph132:                                        ; preds = %.lr.ph132.preheader266, %.lr.ph132
  %.0331131 = phi ptr [ %i.jc, %.lr.ph132 ], [ %.0331131.ph, %.lr.ph132.preheader266 ] ; 3 uses
  %i.iy = load i32, ptr %.0331131, align 4, !tbaa !160 ; 2 uses
  %i.iz = icmp slt i32 %i.iy, 0
  %i.ja = select i1 %i.iz, i32 0, i32 %i.d
  %i.jb = sub nsw i32 %i.iy, %i.ja
  store i32 %i.jb, ptr %.0331131, align 4, !tbaa !160
  %i.jc = getelementptr inbounds nuw i8, ptr %.0331131, i64 4 ; 2 uses
  %i.jd = icmp ult ptr %i.jc, %i.f
  br i1 %i.jd, label %.lr.ph132, label %.loopexit, !llvm.loop !1717

bb.bl:                                            ; preds = %.loopexit169
  %or.cond7 = and i1 %i.ce, %i.fg
  br i1 %or.cond7, label %bb.bm, label %.loopexit

bb.bm:                                            ; preds = %bb.bl
  %.sroa.066.0.copyload = load ptr, ptr %4, align 8, !tbaa !365
  %.sroa.267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %.sroa.267.0.copyload = load i32, ptr %.sroa.267.0..sroa_idx, align 8, !tbaa !160
  %i.je = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 96, ptr null, ptr %.sroa.066.0.copyload, i32 %.sroa.267.0.copyload) #28 ; 2 uses
  %.fca.0.extract62 = extractvalue { ptr, i32 } %i.je, 0
  %.fca.1.extract63 = extractvalue { ptr, i32 } %i.je, 1
  store ptr %.fca.0.extract62, ptr %4, align 8, !tbaa !365
  store i32 %.fca.1.extract63, ptr %.sroa.267.0..sroa_idx, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !497
  %i.jf = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %6, i64 noundef 68, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.374.val, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract54 = extractvalue { ptr, i32 } %i.jf, 0
  %.fca.1.extract55 = extractvalue { ptr, i32 } %i.jf, 1
  store ptr %.fca.0.extract54, ptr %16, align 8
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract55, ptr %.sroa.257.0..sroa_idx, align 8
  %i.jg = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 652, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 96, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16) #28 ; 2 uses
  %.fca.0.extract50 = extractvalue { ptr, i32 } %i.jg, 0 ; 2 uses
  %.fca.1.extract51 = extractvalue { ptr, i32 } %i.jg, 1 ; 2 uses
  store ptr %.fca.0.extract50, ptr %4, align 8, !tbaa !365
  store i32 %.fca.1.extract51, ptr %.sroa.267.0..sroa_idx, align 8, !tbaa !160
  %i.jh = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %3, ptr null, ptr %.fca.0.extract50, i32 %.fca.1.extract51) #28 ; 2 uses
  %.fca.0.extract39 = extractvalue { ptr, i32 } %i.jh, 0
  %.fca.1.extract40 = extractvalue { ptr, i32 } %i.jh, 1
  store ptr %.fca.0.extract39, ptr %4, align 8, !tbaa !365
  store i32 %.fca.1.extract40, ptr %.sroa.267.0..sroa_idx, align 8, !tbaa !160
  %i.ji = load ptr, ptr %5, align 8, !tbaa !359   ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !179
  %i.jl = add i32 %i.jk, -53
  %spec.select.i.i462 = icmp ult i32 %i.jl, 2
  br i1 %spec.select.i.i462, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %.sroa.234.0.copyload = load i32, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !160
  %i.jm = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 96, ptr null, ptr nonnull %i.ji, i32 %.sroa.234.0.copyload) #28 ; 2 uses
  %.fca.0.extract29 = extractvalue { ptr, i32 } %i.jm, 0
  %.fca.1.extract30 = extractvalue { ptr, i32 } %i.jm, 1
  store ptr %.fca.0.extract29, ptr %5, align 8, !tbaa !365
  store i32 %.fca.1.extract30, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !497
  %i.jn = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %6, i64 noundef 68, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.374.val, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract21 = extractvalue { ptr, i32 } %i.jn, 0
  %.fca.1.extract22 = extractvalue { ptr, i32 } %i.jn, 1
  store ptr %.fca.0.extract21, ptr %18, align 8
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract22, ptr %.sroa.224.0..sroa_idx, align 8
  %i.jo = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 652, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 96, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18) #28 ; 2 uses
  %.fca.0.extract17 = extractvalue { ptr, i32 } %i.jo, 0 ; 2 uses
  %.fca.1.extract18 = extractvalue { ptr, i32 } %i.jo, 1 ; 2 uses
  store ptr %.fca.0.extract17, ptr %5, align 8, !tbaa !365
  store i32 %.fca.1.extract18, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !160
  %i.jp = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %3, ptr null, ptr %.fca.0.extract17, i32 %.fca.1.extract18) #28 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.jp, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.jp, 1
  store ptr %.fca.0.extract, ptr %5, align 8, !tbaa !365
  store i32 %.fca.1.extract, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !160
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.jq = icmp slt i64 %i.e, %.idx
  br i1 %i.jq, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.bo
  %i.jr = add i64 %i.e, %i.a
  %i.js = add i64 %i.jr, 4
  %i.jt = add i64 %.idx, %i.a
  %i.ju = tail call i64 @llvm.umax.i64(i64 %i.js, i64 %i.jt)
  %i.jv = xor i64 %i.a, -1
  %i.jw = add i64 %i.ju, %i.jv
  %i.jx = sub i64 %i.jw, %i.e                     ; 2 uses
  %i.jy = lshr i64 %i.jx, 2
  %i.jz = add nuw nsw i64 %i.jy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.jx, 28
  br i1 %min.iters.check, label %.lr.ph.preheader270, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.jz, 9223372036854775800     ; 3 uses
  %i.ka = shl i64 %n.vec, 2
  %i.kb = getelementptr i8, ptr %i.f, i64 %i.ka
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.kc ; 3 uses
  %i.kd = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !160 ; 2 uses
  %wide.load220 = load <4 x i32>, ptr %i.kd, align 4, !tbaa !160 ; 2 uses
  %i.ke = icmp slt <4 x i32> %wide.load, zeroinitializer
  %i.kf = icmp slt <4 x i32> %wide.load220, zeroinitializer
  %i.kg = select <4 x i1> %i.ke, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat
  %i.kh = select <4 x i1> %i.kf, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat
  %i.ki = add nsw <4 x i32> %i.kg, %wide.load
  %i.kj = add nsw <4 x i32> %i.kh, %wide.load220
  store <4 x i32> %i.ki, ptr %next.gep, align 4, !tbaa !160
  store <4 x i32> %i.kj, ptr %i.kd, align 4, !tbaa !160
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kk = icmp eq i64 %index.next, %n.vec
  br i1 %i.kk, label %middle.block, label %vector.body, !llvm.loop !1718

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jz, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader270

.lr.ph.preheader270:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0130.ph = phi ptr [ %i.f, %.lr.ph.preheader ], [ %i.kb, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader270, %.lr.ph
  %.0130 = phi ptr [ %i.kp, %.lr.ph ], [ %.0130.ph, %.lr.ph.preheader270 ] ; 3 uses
  %i.kl = load i32, ptr %.0130, align 4, !tbaa !160 ; 2 uses
  %i.km = icmp slt i32 %i.kl, 0
  %i.kn = select i1 %i.km, i32 0, i32 %i.d
  %i.ko = add nsw i32 %i.kn, %i.kl
  store i32 %i.ko, ptr %.0130, align 4, !tbaa !160
  %i.kp = getelementptr inbounds nuw i8, ptr %.0130, i64 4 ; 2 uses
  %i.kq = icmp ult ptr %i.kp, %i.cg
  br i1 %i.kq, label %.lr.ph, label %.loopexit, !llvm.loop !1719

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph136, %.lr.ph132, %middle.block, %middle.block248, %middle.block263, %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit.thread", %bb.bo, %bb.bk, %.preheader, %bb.bl
  %.0326 = phi i1 [ false, %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit.thread" ], [ false, %bb.bl ], [ true, %.preheader ], [ true, %bb.bk ], [ true, %bb.bo ], [ true, %middle.block263 ], [ true, %middle.block248 ], [ true, %middle.block ], [ true, %.lr.ph136 ], [ true, %.lr.ph132 ], [ true, %.lr.ph ]
  ret i1 %.0326
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL42lowerVECTOR_SHUFFLEAsLanePermuteAndShuffleRKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr nofree readonly captures(none) %1, i64 %2, i16 %3, ptr %4, i32 %5, ptr noundef nonnull align 8 dereferenceable(920) %6) unnamed_addr #1 {
bb.a:
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %8 = alloca %"class.llvm::SmallVector.670", align 8 ; 11 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::ArrayRef.192", align 8 ; 3 uses
  %i.a = alloca [4 x i32], align 16               ; 4 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::ArrayRef.192", align 8 ; 3 uses
  %i.b = trunc i64 %2 to i32                      ; 7 uses
  %i.c = sdiv i32 %i.b, 2                         ; 6 uses
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %2, 2147483647
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.d
  %i.e = trunc nuw i8 %.sroa.0.2 to i1
  %i.f = trunc nuw i8 %.sroa.5.2 to i1
  %i.g = select i1 %i.e, i1 true, i1 %i.f
  br i1 %i.g, label %bb.e, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.sroa.0.1 = phi i8 [ 0, %.lr.ph.preheader ], [ %.sroa.0.2, %bb.d ] ; 3 uses
  %.sroa.5.1 = phi i8 [ 0, %.lr.ph.preheader ], [ %.sroa.5.2, %bb.d ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !160  ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.k = urem i32 %i.i, %i.b
  %i.l = udiv i32 %i.k, %i.c                      ; 2 uses
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = udiv i32 %i.m, %i.c
  %.not85 = icmp eq i32 %i.l, %i.n
  br i1 %.not85, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.idx = icmp eq i32 %i.l, 1                ; 2 uses
  %spec.select = select i1 %.sroa.idx, i8 %.sroa.0.1, i8 1
  %spec.select36 = select i1 %.sroa.idx, i8 1, i8 %.sroa.5.1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.0.2 = phi i8 [ %.sroa.0.1, %bb.b ], [ %.sroa.0.1, %.lr.ph ], [ %spec.select, %bb.c ] ; 2 uses
  %.sroa.5.2 = phi i8 [ %.sroa.5.1, %bb.b ], [ %.sroa.5.1, %.lr.ph ], [ %spec.select36, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1720

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.o, ptr %8, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 12, ptr %i.q, align 4, !tbaa !545
  store i32 0, ptr %i.p, align 8, !tbaa !544
  %.idx = shl nuw nsw i64 %2, 2
  %i.r = icmp ugt i64 %2, 12
  br i1 %i.r, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread: ; preds = %bb.e
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.o, i64 noundef %2, i64 noundef 4) #28
  %.pre8.pre.i.i = load i32, ptr %i.p, align 8, !tbaa !544
  %i.s = zext i32 %.pre8.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i:  ; preds = %bb.e
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit.thread, label %_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit

_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit.thread: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i
  store i32 %i.b, ptr %i.p, align 8, !tbaa !544
  br label %._crit_edge19

_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread
  %.pre8.i.i36 = phi i64 [ %i.s, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread ], [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ]
  %i.t = load ptr, ptr %8, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.pre8.i.i36
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 4 %1, i64 %.idx, i1 false)
  %.pre.i.i = load i32, ptr %i.p, align 8, !tbaa !544
  %i.v = add i32 %.pre.i.i, %i.b
  store i32 %i.v, ptr %i.p, align 8, !tbaa !544
  %i.w = load ptr, ptr %8, align 8, !tbaa !34
  %wide.trip.count24 = and i64 %2, 2147483647
  br label %bb.g

._crit_edge19:                                    ; preds = %bb.j, %_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit.thread
  %i.x = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 96, ptr null, ptr %4, i32 %5) #28 ; 2 uses
  %.fca.0.extract31 = extractvalue { ptr, i32 } %i.x, 0
  %.fca.1.extract32 = extractvalue { ptr, i32 } %i.x, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.y = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 96, ptr null) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %.fca.0.extract21 = extractvalue { ptr, i32 } %i.y, 0
  %.fca.1.extract22 = extractvalue { ptr, i32 } %i.y, 1
  store ptr %.fca.0.extract21, ptr %9, align 8
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract22, ptr %.sroa.224.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store <4 x i32> <i32 2, i32 3, i32 0, i32 1>, ptr %i.a, align 16, !tbaa !160
  store ptr %i.a, ptr %10, align 8, !tbaa !558
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 4, ptr %i.z, align 8, !tbaa !559
  %i.aa = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 96, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %.fca.0.extract31, i32 %.fca.1.extract32, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::ArrayRef.192") align 8 %10) #28 ; 2 uses
  %.fca.0.extract15 = extractvalue { ptr, i32 } %i.aa, 0
  %.fca.1.extract16 = extractvalue { ptr, i32 } %i.aa, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ab = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %3, ptr null, ptr %.fca.0.extract15, i32 %.fca.1.extract16) #28 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.ab, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.ab, 1
  store ptr %.fca.0.extract6, ptr %11, align 8, !tbaa !365
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !160
  %i.ac = load ptr, ptr %8, align 8, !tbaa !34
  store ptr %i.ac, ptr %12, align 8, !tbaa !558
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ae = load i32, ptr %i.p, align 8, !tbaa !544
  %i.af = zext i32 %i.ae to i64
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !559
  %i.ag = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %3, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %4, i32 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::ArrayRef.192") align 8 %12) #28 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ag, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ag, 1
  %i.ah = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.o
  br i1 %i.ai, label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge19
  call void @free(ptr noundef %i.ah) #28
  br label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit

_ZN4llvm11SmallVectorIiLj12EED2Ev.exit:           ; preds = %._crit_edge19, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %._crit_edge.thread

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit, %bb.j
  %indvars.iv21 = phi i64 [ 0, %_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit ], [ %indvars.iv.next22, %bb.j ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv21 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !160 ; 3 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = urem i32 %i.ak, %i.b
  %i.an = udiv i32 %i.am, %i.c
  %i.ao = trunc nuw nsw i64 %indvars.iv21 to i32
  %i.ap = udiv i32 %i.ao, %i.c                    ; 2 uses
  %.not = icmp eq i32 %i.an, %i.ap
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = urem i32 %i.ak, %i.c
  %i.ar = mul nuw nsw i32 %i.ap, %i.c
  %i.as = add nuw i32 %i.ar, %i.b
  %i.at = add i32 %i.as, %i.aq
  store i32 %i.at, ptr %i.aj, align 4, !tbaa !160
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %exitcond25.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count24
  br i1 %exitcond25.not, label %._crit_edge19, label %bb.g, !llvm.loop !1721

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit
  %.sroa.4.0 = phi i32 [ %.fca.1.extract, %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit ], [ 0, %._crit_edge ], [ 0, %bb.a ]
  %.sroa.014.0 = phi ptr [ %.fca.0.extract, %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit ], [ null, %._crit_edge ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.014.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.4.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL26lowerVECTOR_SHUFFLE_XVSHUFRKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr nofree readonly captures(address) %1, i64 %2, i16 %3, ptr %4, i32 %5, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %6, ptr noundef nonnull align 8 dereferenceable(920) %7) unnamed_addr #1 {
bb.a:
  %8 = alloca %"class.llvm::ArrayRef.201", align 8 ; 5 uses
  %9 = alloca %"class.llvm::SmallVector.203", align 8 ; 16 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = trunc i64 %2 to i32                      ; 6 uses
  %i.b = lshr i64 %2, 1                           ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 6 uses
  %sext = shl i64 %i.b, 32
  %i.d = ashr exact i64 %sext, 30                 ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.g, ptr %9, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 14 uses
  store i32 0, ptr %i.h, align 8, !tbaa !544
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 5 uses
  store i32 8, ptr %i.i, align 4, !tbaa !545
  %.not107147 = icmp sgt i64 %i.d, 0
  br i1 %.not107147, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.j = add nsw i32 %i.c, %i.a
  br label %bb.b

.critedge.preheader:                              ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit, %bb.a
  %.not110149 = icmp slt i64 %i.d, %.idx
  br i1 %.not110149, label %.lr.ph151, label %.critedge116

.lr.ph151:                                        ; preds = %.critedge.preheader
  %i.k = add nsw i32 %i.c, %i.a
  %i.l = shl nsw i32 %i.a, 1
  br label %bb.k

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %.0148 = phi ptr [ %1, %.lr.ph ], [ %i.aj, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ] ; 2 uses
  %i.m = load i32, ptr %.0148, align 4, !tbaa !160 ; 5 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %7, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract40 = extractvalue { ptr, i32 } %i.o, 0 ; 2 uses
  %.fca.1.extract41 = extractvalue { ptr, i32 } %i.o, 1 ; 2 uses
  %i.p = load i32, ptr %i.h, align 8, !tbaa !544  ; 2 uses
  %i.q = load i32, ptr %i.i, align 4, !tbaa !545
  %.not.i = icmp ult i32 %i.p, %i.q
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !547

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %.fca.0.extract40, i32 %.fca.1.extract41)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = zext i32 %i.p to i64
  %i.s = load ptr, ptr %9, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.r ; 2 uses
  store ptr %.fca.0.extract40, ptr %i.t, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 %.fca.1.extract41, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.u = load i32, ptr %i.h, align 8, !tbaa !544
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.h, align 8, !tbaa !544
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.f:                                             ; preds = %bb.b
  %i.w = icmp slt i32 %i.m, %i.c
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not = icmp sge i32 %i.m, %i.a
  %i.x = icmp slt i32 %i.m, %i.j
  %or.cond = select i1 %.not, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi i32 [ %i.c, %bb.g ], [ 0, %bb.f ]
  %i.z = sub nsw i32 %i.m, %i.y
  %i.aa = sext i32 %i.z to i64
  %i.ab = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %7, i64 noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract33 = extractvalue { ptr, i32 } %i.ab, 0 ; 2 uses
  %.fca.1.extract34 = extractvalue { ptr, i32 } %i.ab, 1 ; 2 uses
  %i.ac = load i32, ptr %i.h, align 8, !tbaa !544 ; 2 uses
  %i.ad = load i32, ptr %i.i, align 4, !tbaa !545
  %.not.i117 = icmp ult i32 %i.ac, %i.ad
  br i1 %.not.i117, label %bb.j, label %bb.i, !prof !547

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %.fca.0.extract33, i32 %.fca.1.extract34)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = zext i32 %i.ac to i64
  %i.af = load ptr, ptr %9, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ae ; 2 uses
  store ptr %.fca.0.extract33, ptr %i.ag, align 1
  %.sroa.32.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %.fca.1.extract34, ptr %.sroa.32.0..sroa_idx.i118, align 1
  %i.ah = load i32, ptr %i.h, align 8, !tbaa !544
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.h, align 8, !tbaa !544
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.j, %bb.i, %bb.e, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.0148, i64 4 ; 2 uses
  %.not107 = icmp ult ptr %i.aj, %i.e
  br i1 %.not107, label %bb.b, label %.critedge.preheader, !llvm.loop !1722

bb.k:                                             ; preds = %.lr.ph151, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit122
  %.092150 = phi ptr [ %i.e, %.lr.ph151 ], [ %i.bg, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit122 ] ; 2 uses
  %i.ak = load i32, ptr %.092150, align 4, !tbaa !160 ; 6 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.am = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %7, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract18 = extractvalue { ptr, i32 } %i.am, 0 ; 2 uses
  %.fca.1.extract19 = extractvalue { ptr, i32 } %i.am, 1 ; 2 uses
  %i.an = load i32, ptr %i.h, align 8, !tbaa !544 ; 2 uses
  %i.ao = load i32, ptr %i.i, align 4, !tbaa !545
  %.not.i120 = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i120, label %bb.n, label %bb.m, !prof !547

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %.fca.0.extract18, i32 %.fca.1.extract19)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit122

bb.n:                                             ; preds = %bb.l
  %i.ap = zext i32 %i.an to i64
  %i.aq = load ptr, ptr %9, align 8, !tbaa !34
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.ap ; 2 uses
  store ptr %.fca.0.extract18, ptr %i.ar, align 1
  %.sroa.32.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 %.fca.1.extract19, ptr %.sroa.32.0..sroa_idx.i121, align 1
  %i.as = load i32, ptr %i.h, align 8, !tbaa !544
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.h, align 8, !tbaa !544
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit122

bb.o:                                             ; preds = %bb.k
  %.not108 = icmp sge i32 %i.ak, %i.c
  %i.au = icmp slt i32 %i.ak, %i.a                ; 2 uses
  %or.cond112 = and i1 %.not108, %i.au
  br i1 %or.cond112, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not109 = icmp sge i32 %i.ak, %i.k
  %i.av = icmp slt i32 %i.ak, %i.l
  %or.cond114 = select i1 %.not109, i1 %i.av, i1 false
  br i1 %or.cond114, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p, %bb.o
  %. = select i1 %i.au, i32 %i.c, i32 %i.a
  %i.aw = sub nsw i32 %i.ak, %.
  %i.ax = sext i32 %i.aw to i64
  %i.ay = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %7, i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract12 = extractvalue { ptr, i32 } %i.ay, 0 ; 2 uses
  %.fca.1.extract13 = extractvalue { ptr, i32 } %i.ay, 1 ; 2 uses
  %i.az = load i32, ptr %i.h, align 8, !tbaa !544 ; 2 uses
  %i.ba = load i32, ptr %i.i, align 4, !tbaa !545
  %.not.i123 = icmp ult i32 %i.az, %i.ba
  br i1 %.not.i123, label %bb.s, label %bb.r, !prof !547

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %.fca.0.extract12, i32 %.fca.1.extract13)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit122

bb.s:                                             ; preds = %bb.q
  %i.bb = zext i32 %i.az to i64
  %i.bc = load ptr, ptr %9, align 8, !tbaa !34
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bb ; 2 uses
  store ptr %.fca.0.extract12, ptr %i.bd, align 1
  %.sroa.32.0..sroa_idx.i124 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 %.fca.1.extract13, ptr %.sroa.32.0..sroa_idx.i124, align 1
  %i.be = load i32, ptr %i.h, align 8, !tbaa !544
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.h, align 8, !tbaa !544
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit122

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit122: ; preds = %bb.s, %bb.r, %bb.n, %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %.092150, i64 4 ; 2 uses
  %.not110 = icmp ult ptr %i.bg, %i.f
  br i1 %.not110, label %bb.k, label %.critedge116, !llvm.loop !1723

.critedge116:                                     ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit122, %.critedge.preheader
  %i.bh = zext i16 %3 to i64                      ; 2 uses
  %i.bi = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 -2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !45
  %i.bl = zext i16 %i.bk to i64
  %i.bm = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bl
end_hunk_0
