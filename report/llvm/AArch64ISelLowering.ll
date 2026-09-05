Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64ISelLowering?download=true
inline.NumInlined: 31494
inline.NumDeleted: 6083
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 174
begin_hunk_0_@_ZL11GenerateTBLN4llvm7SDValueENS_8ArrayRefIiEERNS_12SelectionDAGE:bb.a
  %.sroa.0.0.copyload.i.i179 = load i64, ptr %i.z, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.y, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i180 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i179, 0
  %.fca.1.insert.i.i181 = insertvalue { i64, i8 } %.fca.0.insert.i.i180, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.e:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.aa = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.d, %bb.e
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i181, %bb.d ], [ %i.aa, %bb.e ] ; 2 uses
  %.fca.1.extract145 = extractvalue { i64, i8 } %.pn.i, 1
  %i.ab = trunc nuw i8 %.fca.1.extract145 to i1
  br i1 %i.ab, label %bb.f, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.f:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.119) #36
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract144 = extractvalue { i64, i8 } %.pn.i, 0
  %i.ac = lshr i64 %.fca.0.extract144, 3          ; 2 uses
  %i.ad = trunc i64 %i.ac to i32                  ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0257.0.copyload, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !383 ; 2 uses
  %i.ag = add i32 %i.af, -53
  %spec.select.i.i = icmp ult i32 %i.ag, 2
  br i1 %spec.select.i.i, label %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ah = icmp eq i32 %i.af, 248
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.01113.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.sroa.0257.0.copyload, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.01113.i, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !384
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !385 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !383
  %i.an = icmp eq i32 %i.am, 248
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.g
  %.011.lcssa12.i = phi ptr [ %.sroa.0257.0.copyload, %bb.g ], [ %i.ak, %.lr.ph.i ] ; 3 uses
  %i.ao = call noundef zeroext i1 @_ZN4llvm3ISD29isConstantSplatVectorAllZerosEPKNS_6SDNodeEb(ptr noundef nonnull %.011.lcssa12.i, i1 noundef zeroext false) #35
  br i1 %i.ao, label %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.lcssa12.i, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !383
  %.not.i182 = icmp eq i32 %i.aq, 582
  br i1 %.not.i182, label %bb.i, label %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit.thread288

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.011.lcssa12.i, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !384 ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %i.as, align 8, !tbaa !394 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !337 ; 2 uses
  %i.at = call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.04.0.copyload.i, i32 %.sroa.5.0.copyload.i) #35
  br i1 %i.at, label %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit.thread, label %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit

_ZL13isZerosVectorPKN4llvm6SDNodeE.exit:          ; preds = %bb.i
  %i.au = call noundef zeroext i1 @_ZN4llvm16isNullFPConstantENS_7SDValueE(ptr %.sroa.04.0.copyload.i, i32 %.sroa.5.0.copyload.i) #35
  br i1 %i.au, label %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit.thread, label %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit.thread288

_ZL13isZerosVectorPKN4llvm6SDNodeE.exit.thread:   ; preds = %bb.i, %._crit_edge.i, %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit, %_ZNK4llvm8TypeSizecvmEv.exit
  br label %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit.thread288

_ZL13isZerosVectorPKN4llvm6SDNodeE.exit.thread288: ; preds = %bb.h, %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit.thread, %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit
  %.sroa.0249.0 = phi ptr [ %.sroa.0257.0.copyload, %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit.thread ], [ %.sroa.0249.0.copyload, %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit ], [ %.sroa.0249.0.copyload, %bb.h ] ; 4 uses
  %.sroa.0257.0 = phi ptr [ %.sroa.0249.0.copyload, %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit.thread ], [ %.sroa.0257.0.copyload, %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit ], [ %.sroa.0257.0.copyload, %bb.h ]
  %.sroa.8261.0 = phi i32 [ %.sroa.8.sroa.0.0.copyload, %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit.thread ], [ %.sroa.8261.0.copyload, %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit ], [ %.sroa.8261.0.copyload, %bb.h ]
  %.sroa.8.sroa.0.0 = phi i32 [ %.sroa.8261.0.copyload, %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit.thread ], [ %.sroa.8.sroa.0.0.copyload, %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit ], [ %.sroa.8.sroa.0.0.copyload, %bb.h ]
  %.0 = phi i1 [ true, %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit.thread ], [ false, %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit ], [ false, %bb.h ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0249.0, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !383 ; 2 uses
  %i.ax = add i32 %i.aw, -53
  %spec.select.i.i183 = icmp ult i32 %i.ax, 2
  br i1 %spec.select.i.i183, label %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit193, label %bb.j

bb.j:                                             ; preds = %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit.thread288
  %i.ay = icmp eq i32 %i.aw, 248
  br i1 %i.ay, label %.lr.ph.i191, label %._crit_edge.i184

.lr.ph.i191:                                      ; preds = %bb.j, %.lr.ph.i191
  %.01113.i192 = phi ptr [ %i.bb, %.lr.ph.i191 ], [ %.sroa.0249.0, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %.01113.i192, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !384
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !385 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !383
  %i.be = icmp eq i32 %i.bd, 248
  br i1 %i.be, label %.lr.ph.i191, label %._crit_edge.i184, !llvm.loop !7

._crit_edge.i184:                                 ; preds = %.lr.ph.i191, %bb.j
  %.011.lcssa12.i185 = phi ptr [ %.sroa.0249.0, %bb.j ], [ %i.bb, %.lr.ph.i191 ] ; 3 uses
  %i.bf = call noundef zeroext i1 @_ZN4llvm3ISD29isConstantSplatVectorAllZerosEPKNS_6SDNodeEb(ptr noundef nonnull %.011.lcssa12.i185, i1 noundef zeroext false) #35
  br i1 %i.bf, label %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit193, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i184
  %i.bg = getelementptr inbounds nuw i8, ptr %.011.lcssa12.i185, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !383
  %.not.i186 = icmp eq i32 %i.bh, 582
  br i1 %.not.i186, label %bb.l, label %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit193

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.lcssa12.i185, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !384 ; 2 uses
  %.sroa.04.0.copyload.i188 = load ptr, ptr %i.bj, align 8, !tbaa !394 ; 2 uses
  %.sroa.5.0..sroa_idx.i189 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.5.0.copyload.i190 = load i32, ptr %.sroa.5.0..sroa_idx.i189, align 8, !tbaa !337 ; 2 uses
  %i.bk = call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.04.0.copyload.i188, i32 %.sroa.5.0.copyload.i190) #35
  br i1 %i.bk, label %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit193, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = call noundef zeroext i1 @_ZN4llvm16isNullFPConstantENS_7SDValueE(ptr %.sroa.04.0.copyload.i188, i32 %.sroa.5.0.copyload.i190) #35
  br label %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit193

_ZL13isZerosVectorPKN4llvm6SDNodeE.exit193:       ; preds = %bb.m, %bb.l, %bb.k, %._crit_edge.i184, %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit.thread288
  %i.bm = phi i1 [ true, %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit.thread288 ], [ false, %bb.k ], [ true, %._crit_edge.i184 ], [ true, %bb.l ], [ %i.bl, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.bn = load ptr, ptr %i.i, align 8, !tbaa !379
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.k ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.bo, align 8, !tbaa !227 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !380
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %8, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.bp, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit193
  %i.bq = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.br = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bq ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 -16
  %.sroa.0.0.copyload.i.i3.i = load i64, ptr %i.bs, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.br, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i4.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i3.i, 0
  %.fca.1.insert.i.i5.i = insertvalue { i64, i8 } %.fca.0.insert.i.i4.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

bb.o:                                             ; preds = %_ZL13isZerosVectorPKN4llvm6SDNodeE.exit193
  %i.bt = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #37
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit:     ; preds = %bb.n, %bb.o
  %.pn.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i5.i, %bb.n ], [ %i.bt, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %.fca.1.extract129 = extractvalue { i64, i8 } %.pn.i.i, 1
  %i.bu = trunc nuw i8 %.fca.1.extract129 to i1
  br i1 %i.bu, label %bb.p, label %_ZNK4llvm8TypeSizecvmEv.exit194

bb.p:                                             ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.119) #36
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit194:                  ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  %.fca.0.extract128 = extractvalue { i64, i8 } %.pn.i.i, 0
  %.not176.not = icmp eq i64 %.fca.0.extract128, 128 ; 4 uses
  %spec.select = select i1 %.not176.not, i16 48, i16 47 ; 4 uses
  %spec.select290 = select i1 %.not176.not, i32 16, i32 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.bv, ptr %12, align 8, !tbaa !62
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 10 uses
  store i32 0, ptr %i.bw, align 8, !tbaa !413
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 4 uses
  store i32 8, ptr %i.bx, align 4, !tbaa !601
  %.idx = shl nuw nsw i64 %3, 2
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %.not294 = icmp eq i64 %3, 0
  br i1 %.not294, label %._crit_edge297.split, label %.lr.ph296

.lr.ph296:                                        ; preds = %_ZNK4llvm8TypeSizecvmEv.exit194
  %.not311 = icmp eq i32 %i.ad, 0
  %i.bz = sub nsw i32 0, %spec.select290          ; 2 uses
  br i1 %.not311, label %._crit_edge297.split, label %.lr.ph296.split

.lr.ph296.split:                                  ; preds = %.lr.ph296
  br i1 %.0, label %.lr.ph296.split.split.us, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph296.split
  %wide.trip.count = and i64 %i.ac, 4294967295
  br label %.lr.ph

.lr.ph296.split.split.us:                         ; preds = %.lr.ph296.split
  br i1 %i.bm, label %.lr.ph.us.us, label %.lr.ph.us

.lr.ph.us.us:                                     ; preds = %.lr.ph296.split.split.us, %._crit_edge.split.us.us.split.us305
  %.0170295.us.us = phi ptr [ %i.cn, %._crit_edge.split.us.us.split.us305 ], [ %2, %.lr.ph296.split.split.us ] ; 2 uses
  %i.ca = load i32, ptr %.0170295.us.us, align 4, !tbaa !337
  %i.cb = mul i32 %i.ca, %i.ad
  br label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.us.us.us304, %.lr.ph.us.us
  %.0171293.us.us.us300 = phi i32 [ 0, %.lr.ph.us.us ], [ %i.cm, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.us.us.us304 ] ; 2 uses
  %i.cc = add i32 %.0171293.us.us.us300, %i.cb    ; 2 uses
  %i.cd = icmp ult i32 %i.cc, %spec.select290
  %.p.us.us.us301 = select i1 %i.cd, i32 %spec.select290, i32 %i.bz
  %.0172.us.us.us302 = add i32 %.p.us.us.us301, %i.cc ; 2 uses
  %.not177.us.us.us.not = icmp ult i32 %.0172.us.us.us302, %spec.select290
  %narrow = select i1 %.not177.us.us.us.not, i32 %.0172.us.us.us302, i32 255
  %spec.select310 = zext i32 %narrow to i64
  %i.ce = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %4, i64 noundef %spec.select310, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract109.us.us.us306 = extractvalue { ptr, i32 } %i.ce, 0 ; 2 uses
  %.fca.1.extract110.us.us.us307 = extractvalue { ptr, i32 } %i.ce, 1 ; 2 uses
  %i.cf = load i32, ptr %i.bw, align 8, !tbaa !413 ; 2 uses
  %i.cg = load i32, ptr %i.bx, align 4, !tbaa !601
  %.not.i195.us.us.us308 = icmp ult i32 %i.cf, %i.cg
  br i1 %.not.i195.us.us.us308, label %bb.s, label %bb.r, !prof !677

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr %.fca.0.extract109.us.us.us306, i32 %.fca.1.extract110.us.us.us307)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.us.us.us304

bb.s:                                             ; preds = %bb.q
  %i.ch = zext i32 %i.cf to i64
  %i.ci = load ptr, ptr %12, align 8, !tbaa !62
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.ch ; 2 uses
  store ptr %.fca.0.extract109.us.us.us306, ptr %i.cj, align 1
  %.sroa.32.0..sroa_idx.i.us.us.us303 = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i32 %.fca.1.extract110.us.us.us307, ptr %.sroa.32.0..sroa_idx.i.us.us.us303, align 1
  %i.ck = load i32, ptr %i.bw, align 8, !tbaa !413
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.bw, align 8, !tbaa !413
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.us.us.us304

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.us.us.us304: ; preds = %bb.s, %bb.r
  %i.cm = add nuw i32 %.0171293.us.us.us300, 1    ; 2 uses
  %exitcond317.not = icmp eq i32 %i.cm, %i.ad
  br i1 %exitcond317.not, label %._crit_edge.split.us.us.split.us305, label %bb.q, !llvm.loop !1947

._crit_edge.split.us.us.split.us305:              ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.us.us.us304
  %i.cn = getelementptr inbounds nuw i8, ptr %.0170295.us.us, i64 4 ; 2 uses
  %.not.us.us = icmp eq ptr %i.cn, %i.by
  br i1 %.not.us.us, label %._crit_edge297.split, label %.lr.ph.us.us

.lr.ph.us:                                        ; preds = %.lr.ph296.split.split.us, %._crit_edge.split.us.us.split.us
  %.0170295.us = phi ptr [ %i.dc, %._crit_edge.split.us.us.split.us ], [ %2, %.lr.ph296.split.split.us ] ; 2 uses
  %i.co = load i32, ptr %.0170295.us, align 4, !tbaa !337
  %i.cp = mul i32 %i.co, %i.ad
  br label %bb.t

bb.t:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.us.us.us, %.lr.ph.us
  %.0171293.us.us.us = phi i32 [ 0, %.lr.ph.us ], [ %i.db, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.us.us.us ] ; 2 uses
  %i.cq = add i32 %.0171293.us.us.us, %i.cp       ; 2 uses
  %i.cr = icmp ult i32 %i.cq, %spec.select290
  %.p.us.us.us = select i1 %i.cr, i32 %spec.select290, i32 %i.bz
  %.0172.us.us.us = add i32 %.p.us.us.us, %i.cq
  %i.cs = zext i32 %.0172.us.us.us to i64
  %i.ct = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %4, i64 noundef %i.cs, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract109.us.us.us = extractvalue { ptr, i32 } %i.ct, 0 ; 2 uses
  %.fca.1.extract110.us.us.us = extractvalue { ptr, i32 } %i.ct, 1 ; 2 uses
  %i.cu = load i32, ptr %i.bw, align 8, !tbaa !413 ; 2 uses
  %i.cv = load i32, ptr %i.bx, align 4, !tbaa !601
  %.not.i195.us.us.us = icmp ult i32 %i.cu, %i.cv
  br i1 %.not.i195.us.us.us, label %bb.v, label %bb.u, !prof !677

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr %.fca.0.extract109.us.us.us, i32 %.fca.1.extract110.us.us.us)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.us.us.us

bb.v:                                             ; preds = %bb.t
  %i.cw = zext i32 %i.cu to i64
  %i.cx = load ptr, ptr %12, align 8, !tbaa !62
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.cw ; 2 uses
  store ptr %.fca.0.extract109.us.us.us, ptr %i.cy, align 1
  %.sroa.32.0..sroa_idx.i.us.us.us = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 %.fca.1.extract110.us.us.us, ptr %.sroa.32.0..sroa_idx.i.us.us.us, align 1
  %i.cz = load i32, ptr %i.bw, align 8, !tbaa !413
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.bw, align 8, !tbaa !413
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.us.us.us

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.us.us.us: ; preds = %bb.v, %bb.u
  %i.db = add nuw i32 %.0171293.us.us.us, 1       ; 2 uses
  %exitcond316.not = icmp eq i32 %i.db, %i.ad
  br i1 %exitcond316.not, label %._crit_edge.split.us.us.split.us, label %bb.t, !llvm.loop !1947

._crit_edge.split.us.us.split.us:                 ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.us.us.us
  %i.dc = getelementptr inbounds nuw i8, ptr %.0170295.us, i64 4 ; 2 uses
  %.not.us = icmp eq ptr %i.dc, %i.by
  br i1 %.not.us, label %._crit_edge297.split, label %.lr.ph.us

._crit_edge297.split:                             ; preds = %._crit_edge.split, %._crit_edge.split.us.us.split.us, %._crit_edge.split.us.us.split.us305, %.lr.ph296, %_ZNK4llvm8TypeSizecvmEv.exit194
  store ptr %.sroa.0257.0, ptr %13, align 8, !tbaa !394
  %.sroa.8261.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.sroa.8261.0, ptr %.sroa.8261.0..sroa_idx262, align 8, !tbaa !337
  %.sroa.9.0..sroa_idx266 = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx266, align 4
  %i.dd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %spec.select, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13) #35 ; 2 uses
  %.fca.0.extract78 = extractvalue { ptr, i32 } %i.dd, 0 ; 5 uses
  %.fca.1.extract79 = extractvalue { ptr, i32 } %i.dd, 1 ; 5 uses
  store ptr %.sroa.0249.0, ptr %14, align 8, !tbaa !394
  %.sroa.8.0..sroa_idx254 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.sroa.8.sroa.0.0, ptr %.sroa.8.0..sroa_idx254, align 8, !tbaa !337
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx254.sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 %.sroa.8.sroa.6.0.copyload, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx254.sroa_idx, align 4
  %i.de = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %spec.select, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14) #35 ; 2 uses
  %.fca.0.extract66 = extractvalue { ptr, i32 } %i.de, 0 ; 2 uses
  %.fca.1.extract67 = extractvalue { ptr, i32 } %i.de, 1 ; 2 uses
  br i1 %i.bm, label %bb.z, label %bb.ac

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge.split
  %.0170295 = phi ptr [ %i.dh, %._crit_edge.split ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.df = load i32, ptr %.0170295, align 4, !tbaa !337
  %i.dg = mul i32 %i.df, %i.ad
  br label %bb.w

._crit_edge.split:                                ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %.0170295, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.dh, %i.by
  br i1 %.not, label %._crit_edge297.split, label %.lr.ph

bb.w:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ] ; 2 uses
  %i.di = trunc nuw i64 %indvars.iv to i32
  %i.dj = add i32 %i.dg, %i.di                    ; 2 uses
  %.not177 = icmp uge i32 %i.dj, %spec.select290
  %i.dk = select i1 %i.bm, i1 %.not177, i1 false
  %i.dl = zext i32 %i.dj to i64
  %i.dm = select i1 %i.dk, i64 255, i64 %i.dl
  %i.dn = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %4, i64 noundef %i.dm, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract109 = extractvalue { ptr, i32 } %i.dn, 0 ; 2 uses
  %.fca.1.extract110 = extractvalue { ptr, i32 } %i.dn, 1 ; 2 uses
  %i.do = load i32, ptr %i.bw, align 8, !tbaa !413 ; 2 uses
  %i.dp = load i32, ptr %i.bx, align 4, !tbaa !601
  %.not.i195 = icmp ult i32 %i.do, %i.dp
  br i1 %.not.i195, label %bb.y, label %bb.x, !prof !677

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr %.fca.0.extract109, i32 %.fca.1.extract110)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.y:                                             ; preds = %bb.w
  %i.dq = zext i32 %i.do to i64
  %i.dr = load ptr, ptr %12, align 8, !tbaa !62
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.dq ; 2 uses
  store ptr %.fca.0.extract109, ptr %i.ds, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i32 %.fca.1.extract110, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.dt = load i32, ptr %i.bw, align 8, !tbaa !413
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.bw, align 8, !tbaa !413
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.x, %bb.y
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %bb.w, !llvm.loop !1947

bb.z:                                             ; preds = %._crit_edge297.split
  br i1 %.not176.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %.fca.0.extract78, ptr %15, align 8, !tbaa !394
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract79, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !337
  store ptr %.fca.0.extract78, ptr %16, align 8, !tbaa !394
  %.sroa.11.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract79, ptr %.sroa.11.0..sroa_idx89, align 8, !tbaa !337
  %i.dv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 48, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16) #35 ; 2 uses
  %.fca.0.extract59 = extractvalue { ptr, i32 } %i.dv, 0
  %.fca.1.extract60 = extractvalue { ptr, i32 } %i.dv, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.083.0 = phi ptr [ %.fca.0.extract59, %bb.aa ], [ %.fca.0.extract78, %bb.z ]
  %.sroa.11.0 = phi i32 [ %.fca.1.extract60, %bb.aa ], [ %.fca.1.extract79, %bb.z ]
  %i.dw = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %4, i64 noundef 756, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract51 = extractvalue { ptr, i32 } %i.dw, 0
  %.fca.1.extract52 = extractvalue { ptr, i32 } %i.dw, 1
  store ptr %.fca.0.extract51, ptr %17, align 8
  %.sroa.254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract52, ptr %.sroa.254.0..sroa_idx, align 8
  store ptr %.sroa.083.0, ptr %18, align 8, !tbaa !394
  %.sroa.11.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx91, align 8, !tbaa !337
  %i.dx = load ptr, ptr %12, align 8, !tbaa !62
  %i.dy = zext nneg i32 %spec.select290 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.dx, ptr %7, align 8, !tbaa !692
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.dy, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !473
  %i.dz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %spec.select, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.463") align 8 %7) #35 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.fca.0.extract46 = extractvalue { ptr, i32 } %i.dz, 0
  %.fca.1.extract47 = extractvalue { ptr, i32 } %i.dz, 1
  store ptr %.fca.0.extract46, ptr %19, align 8
  %.sroa.249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract47, ptr %.sroa.249.0..sroa_idx, align 8
  %i.ea = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %4, i32 noundef 48, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %spec.select, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #35
  br label %bb.af

bb.ac:                                            ; preds = %._crit_edge297.split
end_hunk_0
