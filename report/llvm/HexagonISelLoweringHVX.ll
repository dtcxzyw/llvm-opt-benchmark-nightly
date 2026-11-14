Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonISelLoweringHVX?download=true
inline.NumInlined: 4886
inline.NumDeleted: 1233
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK4llvm21HexagonTargetLowering23extractHvxSubvectorPredENS_7SDValueES1_RKNS_5SDLocENS_3MVTERNS_12SelectionDAGE:_ZN4llvm3MVT11getVectorVTES0_j.exit
bb.a:                                             ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit
  %i.x = zext i16 %6 to i64
  %i.y = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !151 ; 4 uses
  %i.ab = zext i16 %i.aa to i32
  %i.ac = add i16 %.sroa.0.0.copyload.i.i.i, -163
  %spec.select.i.i170 = icmp ult i16 %i.ac, 53
  br i1 %spec.select.i.i170, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit171

bb.b:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit171:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  %i.ad = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.ae = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -2
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !151 ; 2 uses
  %.lhs.trunc = trunc nuw nsw i32 %spec.select.i to i16
  %i.ah = udiv i16 %.lhs.trunc, %i.ag
  %.zext = zext nneg i16 %i.ah to i32             ; 2 uses
  %i.ai = mul i32 %.zext, %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.aj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.0.0.i, ptr null) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %.fca.0.extract91 = extractvalue { ptr, i32 } %i.aj, 0 ; 2 uses
  %.fca.1.extract92 = extractvalue { ptr, i32 } %i.aj, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.ak, ptr %11, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 9 uses
  store i32 0, ptr %i.al, align 8, !tbaa !190
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 3 uses
  store i32 128, ptr %i.am, align 4, !tbaa !191
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !57, !nonnull !21, !align !58
  %i.ao = call noundef zeroext i1 @_ZNK4llvm16HexagonSubtarget15isHVXVectorTypeENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(519600) %i.an, i16 %6, ptr null, i1 noundef zeroext true) #20
  br i1 %i.ao, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit173, label %bb.g

_ZNK4llvm3MVT20getVectorNumElementsEv.exit173:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit171
  %i.ap = udiv i16 %i.ag, %i.aa                   ; 2 uses
  %.zext211 = zext i16 %i.ap to i32               ; 2 uses
  %.lhs.trunc233 = trunc nuw nsw i32 %spec.select.i to i16
  %i.aq = udiv i16 %.lhs.trunc233, %i.ap
  %.zext234 = zext nneg i16 %i.aq to i32
  %.not166223 = icmp samesign ult i32 %spec.select.i, %.zext211
  br i1 %.not166223, label %._crit_edge225, label %.preheader

.preheader:                                       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit173, %bb.c
  %.0224 = phi i32 [ %i.ay, %bb.c ], [ 0, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit173 ] ; 2 uses
  %i.ar = add i32 %.0224, %i.ai                   ; 2 uses
  br label %bb.d

._crit_edge225:                                   ; preds = %bb.c, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit173
  store ptr %.fca.0.extract91, ptr %12, align 8, !tbaa !202
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract92, ptr %.sroa.598.0..sroa_idx, align 8, !tbaa !152
  %i.as = load ptr, ptr %11, align 8, !tbaa !24
  store ptr %i.as, ptr %13, align 8, !tbaa !321
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.au = load i32, ptr %i.al, align 8, !tbaa !190
  %i.av = zext i32 %i.au to i64
  store i64 %i.av, ptr %i.at, align 8, !tbaa !322
  %i.aw = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %7, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr %.fca.0.extract112, i32 %.fca.1.extract113, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::ArrayRef.312") align 8 %13) #20 ; 2 uses
  %.fca.0.extract72 = extractvalue { ptr, i32 } %i.aw, 0
  %.fca.1.extract73 = extractvalue { ptr, i32 } %i.aw, 1
  store ptr %.fca.0.extract72, ptr %14, align 8, !tbaa !202
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract73, ptr %.sroa.481.0..sroa_idx, align 8, !tbaa !152
  %i.ax = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 582, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %6, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14) #20
  br label %bb.k

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %i.ay = add nuw nsw i32 %.0224, 1               ; 2 uses
  %.not166 = icmp eq i32 %i.ay, %.zext234
  br i1 %.not166, label %._crit_edge225, label %.preheader, !llvm.loop !660

bb.d:                                             ; preds = %.preheader, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.0160222 = phi i32 [ 0, %.preheader ], [ %i.bg, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ]
  %i.az = load i32, ptr %i.al, align 8, !tbaa !190 ; 2 uses
  %i.ba = load i32, ptr %i.am, align 4, !tbaa !191
  %.not.i = icmp ult i32 %i.az, %i.ba
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !168

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %i.ar)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.f:                                             ; preds = %bb.d
  %i.bb = zext i32 %i.az to i64
  %i.bc = load ptr, ptr %11, align 8, !tbaa !24
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bb
  store i32 %i.ar, ptr %i.bd, align 1
  %i.be = load i32, ptr %i.al, align 8, !tbaa !190
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.al, align 8, !tbaa !190
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.e, %bb.f
  %i.bg = add nuw nsw i32 %.0160222, 1            ; 2 uses
  %.not168 = icmp eq i32 %i.bg, %.zext211
  br i1 %.not168, label %bb.c, label %bb.d, !llvm.loop !661

bb.g:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit171
  %i.bh = udiv i16 8, %i.aa
  %.zext213 = zext nneg i16 %i.bh to i32
  %i.bi = lshr exact i32 %spec.select.i, 3
  %.not165216 = icmp ugt i16 %i.aa, 8
  br i1 %.not165216, label %.split221, label %.preheader215

.preheader215:                                    ; preds = %bb.g, %.split
  %.0161219 = phi i32 [ %i.cc, %.split ], [ 0, %bb.g ]
  br label %.preheader214

.split221:                                        ; preds = %.split, %bb.g
  %i.bj = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering7getZeroERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr noundef nonnull align 8 dereferenceable(920) %7) #20 ; 2 uses
  %.fca.0.extract53 = extractvalue { ptr, i32 } %i.bj, 0
  %.fca.1.extract54 = extractvalue { ptr, i32 } %i.bj, 1
  store ptr %.fca.0.extract91, ptr %15, align 8, !tbaa !202
  %.sroa.598.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract92, ptr %.sroa.598.0..sroa_idx99, align 8, !tbaa !152
  %i.bk = load ptr, ptr %11, align 8, !tbaa !24
  store ptr %i.bk, ptr %16, align 8, !tbaa !321
  %i.bl = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bm = load i32, ptr %i.al, align 8, !tbaa !190
  %i.bn = zext i32 %i.bm to i64
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !322
  %i.bo = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %7, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr %.fca.0.extract112, i32 %.fca.1.extract113, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::ArrayRef.312") align 8 %16) #20 ; 2 uses
  %.fca.0.extract39 = extractvalue { ptr, i32 } %i.bo, 0 ; 2 uses
  %.fca.1.extract40 = extractvalue { ptr, i32 } %i.bo, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  store ptr %.fca.0.extract39, ptr %18, align 8, !tbaa !202
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract40, ptr %.sroa.549.0..sroa_idx, align 8, !tbaa !152
  %i.bp = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %.fca.0.extract53, ptr %i.bp, align 8, !tbaa !202
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i32 %.fca.1.extract54, ptr %.sroa.458.0..sroa_idx, align 8, !tbaa !152
  store ptr %18, ptr %17, align 8, !tbaa !194
  %i.bq = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 2, ptr %i.bq, align 8, !tbaa !195
  %i.br = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 575, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %17) #20 ; 2 uses
  %.fca.0.extract30 = extractvalue { ptr, i32 } %i.br, 0
  %.fca.1.extract31 = extractvalue { ptr, i32 } %i.br, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  store ptr %.fca.0.extract39, ptr %20, align 8, !tbaa !202
  %.sroa.549.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %.fca.1.extract40, ptr %.sroa.549.0..sroa_idx50, align 8, !tbaa !152
  %i.bs = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.bt = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %7, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract22 = extractvalue { ptr, i32 } %i.bt, 0
  %.fca.1.extract23 = extractvalue { ptr, i32 } %i.bt, 1
  store ptr %.fca.0.extract22, ptr %i.bs, align 8
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i32 %.fca.1.extract23, ptr %.sroa.225.0..sroa_idx, align 8
  store ptr %20, ptr %19, align 8, !tbaa !194
  %i.bu = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 2, ptr %i.bu, align 8, !tbaa !195
  %i.bv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 575, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %19) #20 ; 2 uses
  %.fca.0.extract18 = extractvalue { ptr, i32 } %i.bv, 0
  %.fca.1.extract19 = extractvalue { ptr, i32 } %i.bv, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.bw = call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering10getCombineENS_7SDValueES1_RKNS_5SDLocENS_3MVTERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %.fca.0.extract18, i32 %.fca.1.extract19, ptr %.fca.0.extract30, i32 %.fca.1.extract31, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 47, ptr noundef nonnull align 8 dereferenceable(920) %7) #20 ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.bw, 0
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.bw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  store ptr %.fca.0.extract8, ptr %21, align 8, !tbaa !202
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %.fca.1.extract9, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !152
  %i.bx = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.by = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %7, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.by, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.by, 1
  store ptr %.fca.0.extract1, ptr %i.bx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 24
  store i32 %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %21, ptr %8, align 8, !tbaa !396
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !395
  %i.bz = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 1188, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %6, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %8) #20
  %.fca.0.insert.i = insertvalue { ptr, i32 } poison, ptr %i.bz, 0
  %.fca.1.insert.i = insertvalue { ptr, i32 } %.fca.0.insert.i, i32 0, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.k

.preheader214:                                    ; preds = %.preheader215, %._crit_edge
  %.0162218 = phi i32 [ 0, %.preheader215 ], [ %i.cd, %._crit_edge ] ; 2 uses
  %i.ca = add i32 %.0162218, %i.v
  %i.cb = mul i32 %i.ca, %.zext                   ; 2 uses
  br label %bb.h

.split:                                           ; preds = %._crit_edge
  %i.cc = add i32 %.0161219, 1                    ; 2 uses
  %.not = icmp eq i32 %i.cc, %i.bi
  br i1 %.not, label %.split221, label %.preheader215, !llvm.loop !662

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit178
  %i.cd = add nuw nsw i32 %.0162218, 1            ; 2 uses
  %.not164 = icmp eq i32 %i.cd, %i.ab
  br i1 %.not164, label %.split, label %.preheader214, !llvm.loop !663

bb.h:                                             ; preds = %.preheader214, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit178
  %.0163217 = phi i32 [ 0, %.preheader214 ], [ %i.cl, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit178 ]
  %i.ce = load i32, ptr %i.al, align 8, !tbaa !190 ; 2 uses
  %i.cf = load i32, ptr %i.am, align 4, !tbaa !191
  %.not.i177 = icmp ult i32 %i.ce, %i.cf
  br i1 %.not.i177, label %bb.j, label %bb.i, !prof !168

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %i.cb)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit178

bb.j:                                             ; preds = %bb.h
  %i.cg = zext i32 %i.ce to i64
  %i.ch = load ptr, ptr %11, align 8, !tbaa !24
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cg
  store i32 %i.cb, ptr %i.ci, align 1
  %i.cj = load i32, ptr %i.al, align 8, !tbaa !190
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.al, align 8, !tbaa !190
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit178

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit178: ; preds = %bb.i, %bb.j
  %i.cl = add nuw nsw i32 %.0163217, 1            ; 2 uses
  %.not165 = icmp eq i32 %i.cl, %.zext213
  br i1 %.not165, label %._crit_edge, label %bb.h, !llvm.loop !664

bb.k:                                             ; preds = %.split221, %._crit_edge225
  %.pn = phi { ptr, i32 } [ %i.ax, %._crit_edge225 ], [ %.fca.1.insert.i, %.split221 ]
  %i.cm = load ptr, ptr %11, align 8, !tbaa !24   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.ak
  br i1 %i.cn, label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef %i.cm) #20
  br label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit

_ZN4llvm11SmallVectorIiLj128EED2Ev.exit:          ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  ret { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering21insertHvxSubvectorRegENS_7SDValueES1_S1_RKNS_5SDLocERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr nofree noundef byval(%"class.llvm::SDValue") align 8 captures(none) %5, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(920) %7) local_unnamed_addr #3 align 2 {
bb.a:
  %8 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"class.llvm::ArrayRef.51", align 8 ; 3 uses
  %14 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %15 = alloca %"class.llvm::ArrayRef.51", align 8 ; 3 uses
  %16 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %26 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %27 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %28 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %31 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %33 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %34 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %35 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %36 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %37 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %38 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %39 = alloca %"class.llvm::ArrayRef.51", align 8 ; 3 uses
  %40 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %41 = alloca %"class.llvm::ArrayRef.51", align 8 ; 3 uses
  %42 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %43 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %44 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %45 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !196
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.d, align 8, !tbaa !149 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !196
  %i.g = zext i32 %4 to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.g
  %.sroa.0.0.copyload.i.i.i380 = load i16, ptr %i.h, align 8, !tbaa !149 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 518448 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57, !nonnull !21, !align !58 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 432
  %i.l = load i32, ptr %i.k, align 8, !tbaa !143
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 344
  %i.o = load i8, ptr %i.n, align 8, !range !20
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = select i1 %i.m, i1 %i.p, i1 false
  %spec.select.i = select i1 %i.q, i32 64, i32 128 ; 4 uses
  %i.r = zext i16 %.sroa.0.0.copyload.i.i.i to i64 ; 2 uses
  %i.s = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !149  ; 3 uses
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.v ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.x, align 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.w, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.y = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.y, label %bb.b, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.8) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.a
  %i.z = trunc i64 %.sroa.0.0.copyload.i to i32   ; 2 uses
  %i.aa = tail call noundef zeroext i1 @_ZNK4llvm16HexagonSubtarget15isHVXVectorTypeENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(519600) %i.j, i16 %.sroa.0.0.copyload.i.i.i, ptr null, i1 noundef zeroext false) #20
  br i1 %i.aa, label %bb.c, label %_ZNK4llvm21HexagonTargetLowering11isHvxPairTyENS_3MVTE.exit.thread

_ZNK4llvm21HexagonTargetLowering11isHvxPairTyENS_3MVTE.exit.thread: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ab = shl nuw nsw i32 %spec.select.i, 3
  %i.ac = udiv i32 %i.ab, %i.z
  %i.ad = tail call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.u, i32 noundef %i.ac)
  br label %bb.l

bb.c:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ae = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.r ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.ae, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.af = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.af, label %bb.d, label %_ZNK4llvm21HexagonTargetLowering11isHvxPairTyENS_3MVTE.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.8) #22
  unreachable

_ZNK4llvm21HexagonTargetLowering11isHvxPairTyENS_3MVTE.exit: ; preds = %bb.c
  %i.ag = getelementptr i8, ptr %i.ae, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ag, align 16
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !57, !nonnull !21, !align !58 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 432
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !143
  %i.ak = icmp sgt i32 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 344
  %i.am = load i8, ptr %i.al, align 8, !range !20
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false
  %i.ap = select i1 %i.ao, i64 1024, i64 2048
  %i.aq = icmp eq i64 %.sroa.0.0.copyload.i.i, %i.ap
  %i.ar = shl nuw nsw i32 %spec.select.i, 3
  %i.as = udiv i32 %i.ar, %i.z
  %i.at = tail call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.u, i32 noundef %i.as) ; 5 uses
  br i1 %i.aq, label %bb.e, label %bb.l

bb.e:                                             ; preds = %_ZNK4llvm21HexagonTargetLowering11isHvxPairTyENS_3MVTE.exit
  %i.au = tail call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering6LoHalfENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr nonnull %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %7) ; 2 uses
  %.fca.0.extract234 = extractvalue { ptr, i32 } %i.au, 0 ; 3 uses
  %.fca.1.extract235 = extractvalue { ptr, i32 } %i.au, 1 ; 3 uses
  %i.av = tail call { ptr, i32 } @_ZNK4llvm21HexagonTargetLowering6HiHalfENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518456) %0, ptr nonnull %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %7) ; 2 uses
  %.fca.0.extract224 = extractvalue { ptr, i32 } %i.av, 0 ; 3 uses
  %.fca.1.extract225 = extractvalue { ptr, i32 } %i.av, 1 ; 3 uses
  %i.aw = add i16 %i.at, -163
  %spec.select.i.i = icmp ult i16 %i.aw, 53
  br i1 %spec.select.i.i, label %bb.f, label %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit: ; preds = %bb.e
  %i.ax = zext i16 %i.at to i64
  %i.ay = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 -2
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !151
  %i.bb = zext i16 %i.ba to i64
  %i.bc = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %7, i64 noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract213 = extractvalue { ptr, i32 } %i.bc, 0 ; 2 uses
  %.fca.1.extract214 = extractvalue { ptr, i32 } %i.bc, 1 ; 2 uses
  %.sroa.0207.0.copyload = load ptr, ptr %5, align 8, !tbaa !202 ; 3 uses
  %.sroa.2208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.2208.0.copyload = load i32, ptr %.sroa.2208.0..sroa_idx, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %.fca.0.extract213, ptr %10, align 8
  %.sroa.2445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract214, ptr %.sroa.2445.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_ZNK4llvm21HexagonTargetLowering15compressHvxPredENS_7SDValueERKNS_5SDLocENS_3MVTERNS_12SelectionDAGE:_ZN4llvm3MVT11getVectorVTES0_j.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.bp = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %5, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #20 ; 2 uses
  %.fca.0.extract35 = extractvalue { ptr, i32 } %i.bp, 0
  %.fca.1.extract36 = extractvalue { ptr, i32 } %i.bp, 1
  store ptr %.fca.0.extract35, ptr %i.bo, align 8
  %.sroa.238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i32 %.fca.1.extract36, ptr %.sroa.238.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %18, ptr %7, align 8, !tbaa !396
  %.sroa.2.0..sroa_idx.i206 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 3, ptr %.sroa.2.0..sroa_idx.i206, align 8, !tbaa !395
  %i.bq = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 2861, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  store ptr %i.bm, ptr %20, align 8, !tbaa !202
  %.sroa.654.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 0, ptr %.sroa.654.0..sroa_idx57, align 8, !tbaa !152
  %i.br = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !202
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i32 0, ptr %.sroa.443.0..sroa_idx, align 8, !tbaa !152
  store ptr %20, ptr %19, align 8, !tbaa !194
  %i.bs = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 2, ptr %i.bs, align 8, !tbaa !195
  %i.bt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 194, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.51") align 8 %19) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.bu = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  store ptr %i.bu, ptr %21, align 8, !tbaa !24
  %i.bv = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  store i32 0, ptr %i.bv, align 8, !tbaa !190
  %i.bw = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 2 uses
  store i32 128, ptr %i.bw, align 4, !tbaa !191
  %i.bx = add nsw i32 %spec.select.i, -1
  %i.by = select i1 %i.k, i32 3, i32 4
  br label %bb.x

bb.e:                                             ; preds = %.preheader
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit

bb.f:                                             ; preds = %.preheader
  %i.bz = zext i32 %i.aj to i64
  %i.ca = load ptr, ptr %13, align 8, !tbaa !24
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  store ptr %i.ai, ptr %i.cb, align 1
  %i.cc = load i32, ptr %i.af, align 8, !tbaa !190
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.af, align 8, !tbaa !190
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit: ; preds = %bb.e, %bb.f
  %i.ce = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.ad, i64 noundef 2, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %i.cf = load i32, ptr %i.af, align 8, !tbaa !190 ; 2 uses
  %i.cg = load i32, ptr %i.ag, align 4, !tbaa !191
  %.not.i.1 = icmp ult i32 %i.cf, %i.cg
  br i1 %.not.i.1, label %bb.h, label %bb.g, !prof !168

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.ce)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.1

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit
  %i.ch = zext i32 %i.cf to i64
  %i.ci = load ptr, ptr %13, align 8, !tbaa !24
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ch
  store ptr %i.ce, ptr %i.cj, align 1
  %i.ck = load i32, ptr %i.af, align 8, !tbaa !190
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.af, align 8, !tbaa !190
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.1

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.1: ; preds = %bb.h, %bb.g
  %i.cm = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.ad, i64 noundef 4, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %i.cn = load i32, ptr %i.af, align 8, !tbaa !190 ; 2 uses
  %i.co = load i32, ptr %i.ag, align 4, !tbaa !191
  %.not.i.2 = icmp ult i32 %i.cn, %i.co
  br i1 %.not.i.2, label %bb.j, label %bb.i, !prof !168

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.1
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.cm)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.2

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.1
  %i.cp = zext i32 %i.cn to i64
  %i.cq = load ptr, ptr %13, align 8, !tbaa !24
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cp
  store ptr %i.cm, ptr %i.cr, align 1
  %i.cs = load i32, ptr %i.af, align 8, !tbaa !190
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.af, align 8, !tbaa !190
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.2

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.2: ; preds = %bb.j, %bb.i
  %i.cu = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.ad, i64 noundef 8, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %i.cv = load i32, ptr %i.af, align 8, !tbaa !190 ; 2 uses
  %i.cw = load i32, ptr %i.ag, align 4, !tbaa !191
  %.not.i.3 = icmp ult i32 %i.cv, %i.cw
  br i1 %.not.i.3, label %bb.l, label %bb.k, !prof !168

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.2
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.cu)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.3

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.2
  %i.cx = zext i32 %i.cv to i64
  %i.cy = load ptr, ptr %13, align 8, !tbaa !24
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx
  store ptr %i.cu, ptr %i.cz, align 1
  %i.da = load i32, ptr %i.af, align 8, !tbaa !190
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.af, align 8, !tbaa !190
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.3

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.3: ; preds = %bb.l, %bb.k
  %i.dc = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.ad, i64 noundef 16, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %i.dd = load i32, ptr %i.af, align 8, !tbaa !190 ; 2 uses
  %i.de = load i32, ptr %i.ag, align 4, !tbaa !191
  %.not.i.4 = icmp ult i32 %i.dd, %i.de
  br i1 %.not.i.4, label %bb.n, label %bb.m, !prof !168

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.3
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.dc)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.4

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.3
  %i.df = zext i32 %i.dd to i64
  %i.dg = load ptr, ptr %13, align 8, !tbaa !24
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.df
  store ptr %i.dc, ptr %i.dh, align 1
  %i.di = load i32, ptr %i.af, align 8, !tbaa !190
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.af, align 8, !tbaa !190
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.4

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.4: ; preds = %bb.n, %bb.m
  %i.dk = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.ad, i64 noundef 32, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %i.dl = load i32, ptr %i.af, align 8, !tbaa !190 ; 2 uses
  %i.dm = load i32, ptr %i.ag, align 4, !tbaa !191
  %.not.i.5 = icmp ult i32 %i.dl, %i.dm
  br i1 %.not.i.5, label %bb.p, label %bb.o, !prof !168

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.4
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.dk)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.5

bb.p:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.4
  %i.dn = zext i32 %i.dl to i64
  %i.do = load ptr, ptr %13, align 8, !tbaa !24
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dn
  store ptr %i.dk, ptr %i.dp, align 1
  %i.dq = load i32, ptr %i.af, align 8, !tbaa !190
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr %i.af, align 8, !tbaa !190
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.5

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.5: ; preds = %bb.p, %bb.o
  %i.ds = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.ad, i64 noundef 64, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %i.dt = load i32, ptr %i.af, align 8, !tbaa !190 ; 2 uses
  %i.du = load i32, ptr %i.ag, align 4, !tbaa !191
  %.not.i.6 = icmp ult i32 %i.dt, %i.du
  br i1 %.not.i.6, label %bb.r, label %bb.q, !prof !168

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.5
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.ds)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.6

bb.r:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.5
  %i.dv = zext i32 %i.dt to i64
  %i.dw = load ptr, ptr %13, align 8, !tbaa !24
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dv
  store ptr %i.ds, ptr %i.dx, align 1
  %i.dy = load i32, ptr %i.af, align 8, !tbaa !190
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr %i.af, align 8, !tbaa !190
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.6

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.6: ; preds = %bb.r, %bb.q
  %i.ea = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.ad, i64 noundef 128, i1 noundef zeroext false, i1 noundef zeroext false) #20 ; 2 uses
  %i.eb = load i32, ptr %i.af, align 8, !tbaa !190 ; 2 uses
  %i.ec = load i32, ptr %i.ag, align 4, !tbaa !191
  %.not.i.7 = icmp ult i32 %i.eb, %i.ec
  br i1 %.not.i.7, label %bb.t, label %bb.s, !prof !168

bb.s:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.6
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.ea)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.7

bb.t:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.6
  %i.ed = zext i32 %i.eb to i64
  %i.ee = load ptr, ptr %13, align 8, !tbaa !24
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ed
  store ptr %i.ea, ptr %i.ef, align 1
  %i.eg = load i32, ptr %i.af, align 8, !tbaa !190
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr %i.af, align 8, !tbaa !190
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.7

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit.7: ; preds = %bb.t, %bb.s
  %i.ei = add nuw i32 %.0252, 1                   ; 2 uses
  %.not = icmp eq i32 %i.ei, %i.ah
  br i1 %.not, label %bb.b, label %.preheader, !llvm.loop !665

bb.u:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.fca.1.extract22 = extractvalue { ptr, i32 } %i.bt, 1
  %.fca.0.extract21 = extractvalue { ptr, i32 } %i.bt, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.ej = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.i, ptr null) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.ej, 0
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.ej, 1
  store ptr %.fca.0.extract8, ptr %22, align 8
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 %.fca.1.extract9, ptr %.sroa.211.0..sroa_idx, align 8
  %i.ek = load ptr, ptr %21, align 8, !tbaa !24
  store ptr %i.ek, ptr %23, align 8, !tbaa !321
  %i.el = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.em = load i32, ptr %i.bv, align 8, !tbaa !190
  %i.en = zext i32 %i.em to i64
  store i64 %i.en, ptr %i.el, align 8, !tbaa !322
  %i.eo = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %.sroa.0.0.i, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %.fca.0.extract21, i32 %.fca.1.extract22, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22, ptr noundef nonnull byval(%"class.llvm::ArrayRef.312") align 8 %23) #20 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.eo, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.eo, 1
  %i.ep = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 %4, ptr null, ptr %.fca.0.extract4, i32 %.fca.1.extract5) #20
  %i.eq = load ptr, ptr %21, align 8, !tbaa !24   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.bu
  br i1 %i.er, label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.eq) #20
  br label %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit

_ZN4llvm11SmallVectorIiLj128EED2Ev.exit:          ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %i.es = load ptr, ptr %13, align 8, !tbaa !24   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.ae
  br i1 %i.et, label %_ZN4llvm11SmallVectorIPNS_8ConstantELj128EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit
  call void @free(ptr noundef %i.es) #20
  br label %_ZN4llvm11SmallVectorIPNS_8ConstantELj128EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_8ConstantELj128EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIiLj128EED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  ret { ptr, i32 } %i.ep

bb.x:                                             ; preds = %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.0194253 = phi i32 [ 0, %_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE.exit ], [ %i.ff, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ] ; 3 uses
  %i.eu = shl i32 %.0194253, 3
  %i.ev = and i32 %i.eu, %i.bx
  %i.ew = lshr i32 %.0194253, %i.by
  %i.ex = add nuw nsw i32 %i.ev, %i.ew            ; 2 uses
  %i.ey = load i32, ptr %i.bv, align 8, !tbaa !190 ; 2 uses
  %i.ez = load i32, ptr %i.bw, align 4, !tbaa !191
  %.not.i210 = icmp ult i32 %i.ey, %i.ez
  br i1 %.not.i210, label %bb.z, label %bb.y, !prof !168

bb.y:                                             ; preds = %bb.x
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %21, i32 noundef %i.ex)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.z:                                             ; preds = %bb.x
  %i.fa = zext i32 %i.ey to i64
  %i.fb = load ptr, ptr %21, align 8, !tbaa !24
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fa
  store i32 %i.ex, ptr %i.fc, align 1
  %i.fd = load i32, ptr %i.bv, align 8, !tbaa !190
  %i.fe = add i32 %i.fd, 1
  store i32 %i.fe, ptr %i.bv, align 8, !tbaa !190
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.y, %bb.z
  %i.ff = add nuw nsw i32 %.0194253, 1            ; 2 uses
  %.not197 = icmp eq i32 %i.ff, %spec.select.i
  br i1 %.not197, label %bb.u, label %bb.x, !llvm.loop !666
}

declare noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4llvm12SelectionDAG19getSplatBuildVectorENS_3EVTERKNS_5SDLocENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %0, i16 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %4, i32 %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %6 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %8 = alloca %"class.llvm::SmallVector.459", align 8 ; 9 uses
  %9 = alloca %"class.llvm::ArrayRef.51", align 8 ; 3 uses
  store i16 %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !189
  %i.d = add i32 %i.c, -53
  %spec.select.i.i = icmp ult i32 %i.d, 2
  br i1 %spec.select.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.e = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %1, ptr %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %.not.i.i = icmp eq i16 %1, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.c
  %i.f = add i16 %1, -163
  %spec.select.i.i.i = icmp ult i16 %i.f, 53
  br i1 %spec.select.i.i.i, label %bb.d, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.c
  %i.g = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.h = zext i16 %1 to i64
  %i.i = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !151
  %i.l = zext i16 %i.k to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.e:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.m = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.e
  %i.n = phi i32 [ %i.l, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.m, %bb.e ] ; 5 uses
  %i.o = zext i32 %i.n to i64                     ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.p, ptr %8, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.q, align 8, !tbaa !190
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 16, ptr %i.r, align 4, !tbaa !191
  %i.s = icmp ugt i32 %i.n, 16
  br i1 %i.s, label %.lr.ph.i.i.i.preheader.i.i.i, label %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i

.lr.ph.i.i.i.preheader.i.i.i:                     ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %8, ptr noundef nonnull %i.p, i64 noundef %i.o, i64 noundef 16) #20
  %i.t = load ptr, ptr %8, align 8, !tbaa !24     ; 3 uses
  %xtraiter23 = and i64 %i.o, 7                   ; 2 uses
  %lcmp.mod24.not = icmp eq i64 %xtraiter23, 0
  br i1 %lcmp.mod24.not, label %.lr.ph.i.i.i.preheader.i.i.i.new, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.t, %.lr.ph.i.i.i.preheader.i.i.i ] ; 3 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.preheader.i.i.i ]
  %prol.iter25 = phi i64 [ %prol.iter25.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader.i.i.i ]
  store ptr %4, ptr %.09.i.i.i.i.i.i.prol, align 8, !tbaa !202
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 8
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.prol, align 8, !tbaa !152
  %i.u = add nsw i64 %.068.i.i.i.i.i.i.prol, -1   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter25.next = add i64 %prol.iter25, 1     ; 2 uses
  %prol.iter25.cmp.not = icmp eq i64 %prol.iter25.next, %xtraiter23
  br i1 %prol.iter25.cmp.not, label %.lr.ph.i.i.i.preheader.i.i.i.new, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !667

.lr.ph.i.i.i.preheader.i.i.i.new:                 ; preds = %.lr.ph.i.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.i.preheader.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.unr = phi i64 [ %i.o, %.lr.ph.i.i.i.preheader.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.i.i.new
  %.09.i.i.i.i.i.i = phi ptr [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.preheader.i.i.i.new ], [ %i.ae, %.lr.ph.i.i.i.i.i.i ] ; 17 uses
  %.068.i.i.i.i.i.i = phi i64 [ %.068.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.preheader.i.i.i.new ], [ %i.ad, %.lr.ph.i.i.i.i.i.i ]
  store ptr %4, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !202
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i, align 8, !tbaa !152
  %i.w = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  store ptr %4, ptr %i.w, align 8, !tbaa !202
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.1, align 8, !tbaa !152
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  store ptr %4, ptr %i.x, align 8, !tbaa !202
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 40
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.2, align 8, !tbaa !152
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  store ptr %4, ptr %i.y, align 8, !tbaa !202
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 56
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.3, align 8, !tbaa !152
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 64
  store ptr %4, ptr %i.z, align 8, !tbaa !202
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 72
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.4, align 8, !tbaa !152
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 80
  store ptr %4, ptr %i.aa, align 8, !tbaa !202
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 88
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.5, align 8, !tbaa !152
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 96
  store ptr %4, ptr %i.ab, align 8, !tbaa !202
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 104
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.6, align 8, !tbaa !152
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 112
  store ptr %4, ptr %i.ac, align 8, !tbaa !202
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 120
  store i32 %5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.7, align 8, !tbaa !152
  %i.ad = add nsw i64 %.068.i.i.i.i.i.i, -8       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !668

_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i: ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i
  %xtraiter = and i64 %i.o, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.068.i.i.i.i.i.prol = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  store ptr %4, ptr %.09.i.i.i.i.i.prol, align 8, !tbaa !202
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 8
  store i32 %5, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.prol, align 8, !tbaa !152
  %i.af = add nsw i64 %.068.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !669

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.unr = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.i.prol ]
  %i.ah = icmp ult i32 %i.n, 8
  br i1 %i.ah, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.068.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store ptr %4, ptr %.09.i.i.i.i.i, align 8, !tbaa !202
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  store i32 %5, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i, align 8, !tbaa !152
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  store ptr %4, ptr %i.ai, align 8, !tbaa !202
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  store i32 %5, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.1, align 8, !tbaa !152
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 32
end_hunk_1
