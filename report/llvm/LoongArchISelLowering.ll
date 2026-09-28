Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoongArchISelLowering?download=true
inline.NumInlined: 11584
inline.NumDeleted: 2972
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 87
begin_hunk_0_@_ZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS_15MutableArrayRefIiEENS_3MVTERNS_7SDValueES7_RNS_12SelectionDAGERKNS_18LoongArchSubtargetE:bb.a
  %i.ii = add i64 %i.d, %i.ih
  %i.ij = add i64 %i.ih, 4
  %i.ik = tail call i64 @llvm.umax.i64(i64 %i.ii, i64 %i.ij)
  %i.il = xor i64 %i.ih, -1
  %i.im = add i64 %i.ik, %i.il                    ; 2 uses
  %i.in = lshr i64 %i.im, 2
  %i.io = add nuw nsw i64 %i.in, 1                ; 2 uses
  %min.iters.check252 = icmp ult i64 %i.im, 28
  br i1 %min.iters.check252, label %.lr.ph132.preheader266, label %vector.ph253

vector.ph253:                                     ; preds = %.lr.ph132.preheader
  %n.vec254 = and i64 %i.io, 9223372036854775800  ; 3 uses
  %i.ip = shl i64 %n.vec254, 2
  %i.iq = getelementptr i8, ptr %1, i64 %i.ip
  %broadcast.splatinsert255 = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat256 = shufflevector <4 x i32> %broadcast.splatinsert255, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph253
  %index258 = phi i64 [ 0, %vector.ph253 ], [ %index.next262, %vector.body257 ] ; 2 uses
  %i.ir = shl i64 %index258, 2
  %next.gep259 = getelementptr i8, ptr %1, i64 %i.ir ; 3 uses
  %i.is = getelementptr i8, ptr %next.gep259, i64 16 ; 2 uses
  %wide.load260 = load <4 x i32>, ptr %next.gep259, align 4, !tbaa !160 ; 2 uses
  %wide.load261 = load <4 x i32>, ptr %i.is, align 4, !tbaa !160 ; 2 uses
  %i.it = icmp slt <4 x i32> %wide.load260, zeroinitializer
  %i.iu = icmp slt <4 x i32> %wide.load261, zeroinitializer
  %i.iv = select <4 x i1> %i.it, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat256
  %i.iw = select <4 x i1> %i.iu, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat256
  %i.ix = sub nsw <4 x i32> %wide.load260, %i.iv
  %i.iy = sub nsw <4 x i32> %wide.load261, %i.iw
  store <4 x i32> %i.ix, ptr %next.gep259, align 4, !tbaa !160
  store <4 x i32> %i.iy, ptr %i.is, align 4, !tbaa !160
  %index.next262 = add nuw i64 %index258, 8       ; 2 uses
  %i.iz = icmp eq i64 %index.next262, %n.vec254
  br i1 %i.iz, label %middle.block263, label %vector.body257, !llvm.loop !1709

middle.block263:                                  ; preds = %vector.body257
  %cmp.n264 = icmp eq i64 %i.io, %n.vec254
  br i1 %cmp.n264, label %.loopexit, label %.lr.ph132.preheader266

.lr.ph132.preheader266:                           ; preds = %.lr.ph132.preheader, %middle.block263
  %.0331131.ph = phi ptr [ %1, %.lr.ph132.preheader ], [ %i.iq, %middle.block263 ]
  br label %.lr.ph132

.lr.ph132:                                        ; preds = %.lr.ph132.preheader266, %.lr.ph132
  %.0331131 = phi ptr [ %i.je, %.lr.ph132 ], [ %.0331131.ph, %.lr.ph132.preheader266 ] ; 3 uses
  %i.ja = load i32, ptr %.0331131, align 4, !tbaa !160 ; 2 uses
  %i.jb = icmp slt i32 %i.ja, 0
  %i.jc = select i1 %i.jb, i32 0, i32 %i.c
  %i.jd = sub nsw i32 %i.ja, %i.jc
  store i32 %i.jd, ptr %.0331131, align 4, !tbaa !160
  %i.je = getelementptr inbounds nuw i8, ptr %.0331131, i64 4 ; 2 uses
  %i.jf = icmp ult ptr %i.je, %i.e
  br i1 %i.jf, label %.lr.ph132, label %.loopexit, !llvm.loop !1710

bb.bl:                                            ; preds = %.loopexit169
  %or.cond7 = and i1 %i.cd, %i.ff
  br i1 %or.cond7, label %bb.bm, label %.loopexit

bb.bm:                                            ; preds = %bb.bl
  %.sroa.066.0.copyload = load ptr, ptr %4, align 8, !tbaa !365
  %.sroa.267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %.sroa.267.0.copyload = load i32, ptr %.sroa.267.0..sroa_idx, align 8, !tbaa !160
  %i.jg = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 96, ptr null, ptr %.sroa.066.0.copyload, i32 %.sroa.267.0.copyload) #28 ; 2 uses
  %.fca.0.extract62 = extractvalue { ptr, i32 } %i.jg, 0
  %.fca.1.extract63 = extractvalue { ptr, i32 } %i.jg, 1
  store ptr %.fca.0.extract62, ptr %4, align 8, !tbaa !365
  store i32 %.fca.1.extract63, ptr %.sroa.267.0..sroa_idx, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !497
  %i.jh = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %6, i64 noundef 68, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.374.val, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract54 = extractvalue { ptr, i32 } %i.jh, 0
  %.fca.1.extract55 = extractvalue { ptr, i32 } %i.jh, 1
  store ptr %.fca.0.extract54, ptr %16, align 8
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract55, ptr %.sroa.257.0..sroa_idx, align 8
  %i.ji = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 652, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 96, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16) #28 ; 2 uses
  %.fca.0.extract50 = extractvalue { ptr, i32 } %i.ji, 0 ; 2 uses
  %.fca.1.extract51 = extractvalue { ptr, i32 } %i.ji, 1 ; 2 uses
  store ptr %.fca.0.extract50, ptr %4, align 8, !tbaa !365
  store i32 %.fca.1.extract51, ptr %.sroa.267.0..sroa_idx, align 8, !tbaa !160
  %i.jj = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %3, ptr null, ptr %.fca.0.extract50, i32 %.fca.1.extract51) #28 ; 2 uses
  %.fca.0.extract39 = extractvalue { ptr, i32 } %i.jj, 0
  %.fca.1.extract40 = extractvalue { ptr, i32 } %i.jj, 1
  store ptr %.fca.0.extract39, ptr %4, align 8, !tbaa !365
  store i32 %.fca.1.extract40, ptr %.sroa.267.0..sroa_idx, align 8, !tbaa !160
  %i.jk = load ptr, ptr %5, align 8, !tbaa !359   ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !179
  %i.jn = add i32 %i.jm, -53
  %spec.select.i.i462 = icmp ult i32 %i.jn, 2
  br i1 %spec.select.i.i462, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %.sroa.234.0.copyload = load i32, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !160
  %i.jo = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 96, ptr null, ptr nonnull %i.jk, i32 %.sroa.234.0.copyload) #28 ; 2 uses
  %.fca.0.extract29 = extractvalue { ptr, i32 } %i.jo, 0
  %.fca.1.extract30 = extractvalue { ptr, i32 } %i.jo, 1
  store ptr %.fca.0.extract29, ptr %5, align 8, !tbaa !365
  store i32 %.fca.1.extract30, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !497
  %i.jp = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %6, i64 noundef 68, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %.374.val, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  %.fca.0.extract21 = extractvalue { ptr, i32 } %i.jp, 0
  %.fca.1.extract22 = extractvalue { ptr, i32 } %i.jp, 1
  store ptr %.fca.0.extract21, ptr %18, align 8
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract22, ptr %.sroa.224.0..sroa_idx, align 8
  %i.jq = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 652, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 96, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18) #28 ; 2 uses
  %.fca.0.extract17 = extractvalue { ptr, i32 } %i.jq, 0 ; 2 uses
  %.fca.1.extract18 = extractvalue { ptr, i32 } %i.jq, 1 ; 2 uses
  store ptr %.fca.0.extract17, ptr %5, align 8, !tbaa !365
  store i32 %.fca.1.extract18, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !160
  %i.jr = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %3, ptr null, ptr %.fca.0.extract17, i32 %.fca.1.extract18) #28 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.jr, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.jr, 1
  store ptr %.fca.0.extract, ptr %5, align 8, !tbaa !365
  store i32 %.fca.1.extract, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !160
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.js = icmp slt i64 %i.d, %.idx
  br i1 %i.js, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.bo
  %i.jt = ptrtoaddr ptr %1 to i64                 ; 3 uses
  %i.ju = add i64 %i.d, %i.jt
  %i.jv = add i64 %i.ju, 4
  %i.jw = add i64 %.idx, %i.jt
  %i.jx = tail call i64 @llvm.umax.i64(i64 %i.jv, i64 %i.jw)
  %i.jy = xor i64 %i.jt, -1
  %i.jz = add i64 %i.jx, %i.jy
  %i.ka = sub i64 %i.jz, %i.d                     ; 2 uses
  %i.kb = lshr i64 %i.ka, 2
  %i.kc = add nuw nsw i64 %i.kb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ka, 28
  br i1 %min.iters.check, label %.lr.ph.preheader270, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.kc, 9223372036854775800     ; 3 uses
  %i.kd = shl i64 %n.vec, 2
  %i.ke = getelementptr i8, ptr %i.e, i64 %i.kd
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kf = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.e, i64 %i.kf ; 3 uses
  %i.kg = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !160 ; 2 uses
  %wide.load220 = load <4 x i32>, ptr %i.kg, align 4, !tbaa !160 ; 2 uses
  %i.kh = icmp slt <4 x i32> %wide.load, zeroinitializer
  %i.ki = icmp slt <4 x i32> %wide.load220, zeroinitializer
  %i.kj = select <4 x i1> %i.kh, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat
  %i.kk = select <4 x i1> %i.ki, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat
  %i.kl = add nsw <4 x i32> %i.kj, %wide.load
  %i.km = add nsw <4 x i32> %i.kk, %wide.load220
  store <4 x i32> %i.kl, ptr %next.gep, align 4, !tbaa !160
  store <4 x i32> %i.km, ptr %i.kg, align 4, !tbaa !160
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kn = icmp eq i64 %index.next, %n.vec
  br i1 %i.kn, label %middle.block, label %vector.body, !llvm.loop !1711

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kc, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader270

.lr.ph.preheader270:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0130.ph = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.ke, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader270, %.lr.ph
  %.0130 = phi ptr [ %i.ks, %.lr.ph ], [ %.0130.ph, %.lr.ph.preheader270 ] ; 3 uses
  %i.ko = load i32, ptr %.0130, align 4, !tbaa !160 ; 2 uses
  %i.kp = icmp slt i32 %i.ko, 0
  %i.kq = select i1 %i.kp, i32 0, i32 %i.c
  %i.kr = add nsw i32 %i.kq, %i.ko
  store i32 %i.kr, ptr %.0130, align 4, !tbaa !160
  %i.ks = getelementptr inbounds nuw i8, ptr %.0130, i64 4 ; 2 uses
  %i.kt = icmp ult ptr %i.ks, %i.cf
  br i1 %i.kt, label %.lr.ph, label %.loopexit, !llvm.loop !1712

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph136, %.lr.ph132, %middle.block, %middle.block248, %middle.block263, %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit.thread", %bb.bo, %bb.bk, %.preheader, %bb.bl
  %.0326 = phi i1 [ false, %"_ZSt6all_ofIPiZL31canonicalizeShuffleVectorByLaneRKN4llvm5SDLocENS1_15MutableArrayRefIiEENS1_3MVTERNS1_7SDValueES9_RNS1_12SelectionDAGERKNS1_18LoongArchSubtargetEE3$_2EbT_SG_T0_.exit.thread" ], [ false, %bb.bl ], [ true, %.preheader ], [ true, %bb.bk ], [ true, %bb.bo ], [ true, %middle.block263 ], [ true, %middle.block248 ], [ true, %middle.block ], [ true, %.lr.ph136 ], [ true, %.lr.ph132 ], [ true, %.lr.ph ]
  ret i1 %.0326
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL42lowerVECTOR_SHUFFLEAsLanePermuteAndShuffleRKN4llvm5SDLocENS_8ArrayRefIiEENS_3MVTENS_7SDValueES6_RNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr nofree readonly captures(none) %1, i64 %2, i16 %3, ptr %4, i32 %5, ptr noundef nonnull align 8 dereferenceable(920) %6) unnamed_addr #1 {
bb.a:
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %i.a = alloca [2 x i8], align 2                 ; 6 uses
  %8 = alloca %"class.llvm::SmallVector.670", align 8 ; 11 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::ArrayRef.192", align 8 ; 3 uses
  %i.b = alloca [4 x i32], align 16               ; 4 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::ArrayRef.192", align 8 ; 3 uses
  %i.c = trunc i64 %2 to i32                      ; 7 uses
  %i.d = sdiv i32 %i.c, 2                         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i16 0, ptr %i.a, align 2
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %2, 2147483647
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i8, ptr %i.a, align 2, !tbaa !636, !range !40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.pre26 = load i8, ptr %.phi.trans.insert, align 1, !range !40
  %i.f = trunc nuw i8 %.pre to i1
  %i.g = trunc nuw i8 %.pre26 to i1
  %i.h = select i1 %i.f, i1 true, i1 %i.g
  br i1 %i.h, label %bb.e, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !160  ; 2 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.l = urem i32 %i.j, %i.c
  %i.m = udiv i32 %i.l, %i.d                      ; 2 uses
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %i.o = udiv i32 %i.n, %i.d
  %.not85 = icmp eq i32 %i.m, %i.o
  br i1 %.not85, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = zext nneg i32 %i.m to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p
  store i8 1, ptr %i.q, align 1, !tbaa !636
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1713

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.r, ptr %8, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 12, ptr %i.t, align 4, !tbaa !545
  store i32 0, ptr %i.s, align 8, !tbaa !544
  %.idx = shl nuw nsw i64 %2, 2
  %i.u = icmp ugt i64 %2, 12
  br i1 %i.u, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread: ; preds = %bb.e
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.r, i64 noundef %2, i64 noundef 4) #28
  %.pre8.pre.i.i = load i32, ptr %i.s, align 8, !tbaa !544
  %i.v = zext i32 %.pre8.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i:  ; preds = %bb.e
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit.thread, label %_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit

_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit.thread: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i
  store i32 %i.c, ptr %i.s, align 8, !tbaa !544
  br label %._crit_edge19

_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread
  %.pre8.i.i36 = phi i64 [ %i.v, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.thread ], [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i ]
  %i.w = load ptr, ptr %8, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.pre8.i.i36
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 4 %1, i64 %.idx, i1 false)
  %.pre.i.i = load i32, ptr %i.s, align 8, !tbaa !544
  %i.y = add i32 %.pre.i.i, %i.c
  store i32 %i.y, ptr %i.s, align 8, !tbaa !544
  %i.z = load ptr, ptr %8, align 8, !tbaa !34
  %wide.trip.count24 = and i64 %2, 2147483647
  br label %bb.g

._crit_edge19:                                    ; preds = %bb.j, %_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit.thread
  %i.aa = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 96, ptr null, ptr %4, i32 %5) #28 ; 2 uses
  %.fca.0.extract31 = extractvalue { ptr, i32 } %i.aa, 0
  %.fca.1.extract32 = extractvalue { ptr, i32 } %i.aa, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.ab = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 96, ptr null) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %.fca.0.extract21 = extractvalue { ptr, i32 } %i.ab, 0
  %.fca.1.extract22 = extractvalue { ptr, i32 } %i.ab, 1
  store ptr %.fca.0.extract21, ptr %9, align 8
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract22, ptr %.sroa.224.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store <4 x i32> <i32 2, i32 3, i32 0, i32 1>, ptr %i.b, align 16, !tbaa !160
  store ptr %i.b, ptr %10, align 8, !tbaa !558
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 4, ptr %i.ac, align 8, !tbaa !559
  %i.ad = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 96, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %.fca.0.extract31, i32 %.fca.1.extract32, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::ArrayRef.192") align 8 %10) #28 ; 2 uses
  %.fca.0.extract15 = extractvalue { ptr, i32 } %i.ad, 0
  %.fca.1.extract16 = extractvalue { ptr, i32 } %i.ad, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.ae = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %3, ptr null, ptr %.fca.0.extract15, i32 %.fca.1.extract16) #28 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.ae, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.ae, 1
  store ptr %.fca.0.extract6, ptr %11, align 8, !tbaa !365
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !160
  %i.af = load ptr, ptr %8, align 8, !tbaa !34
  store ptr %i.af, ptr %12, align 8, !tbaa !558
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ah = load i32, ptr %i.s, align 8, !tbaa !544
  %i.ai = zext i32 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !559
  %i.aj = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 %3, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %4, i32 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::ArrayRef.192") align 8 %12) #28 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.aj, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.aj, 1
  %i.ak = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.r
  br i1 %i.al, label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge19
  call void @free(ptr noundef %i.ak) #28
  br label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit

_ZN4llvm11SmallVectorIiLj12EED2Ev.exit:           ; preds = %._crit_edge19, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %._crit_edge.thread

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit, %bb.j
  %indvars.iv21 = phi i64 [ 0, %_ZN4llvm15SmallVectorImplIiE6assignIPKivEEvT_S5_.exit ], [ %indvars.iv.next22, %bb.j ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv21 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !160 ; 3 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = urem i32 %i.an, %i.c
  %i.aq = udiv i32 %i.ap, %i.d
  %i.ar = trunc nuw nsw i64 %indvars.iv21 to i32
  %i.as = udiv i32 %i.ar, %i.d                    ; 2 uses
  %.not = icmp eq i32 %i.aq, %i.as
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = urem i32 %i.an, %i.d
  %i.au = mul nuw nsw i32 %i.as, %i.d
  %i.av = add nuw i32 %i.au, %i.c
  %i.aw = add i32 %i.av, %i.at
  store i32 %i.aw, ptr %i.am, align 4, !tbaa !160
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %exitcond25.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count24
  br i1 %exitcond25.not, label %._crit_edge19, label %bb.g, !llvm.loop !1714

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit
  %.sroa.4.0 = phi i32 [ %.fca.1.extract, %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit ], [ 0, %._crit_edge ], [ 0, %bb.a ]
  %.sroa.014.0 = phi ptr [ %.fca.0.extract, %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit ], [ null, %._crit_edge ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
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
  br i1 %.not107, label %bb.b, label %.critedge.preheader, !llvm.loop !1715

bb.k:                                             ; preds = %.lr.ph151, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit122
  %.092150 = phi ptr [ %i.e, %.lr.ph151 ], [ %i.bg, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit122 ] ; 2 uses
  %i.ak = load i32, ptr %.092150, align 4, !tbaa !160 ; 6 uses
end_hunk_0
