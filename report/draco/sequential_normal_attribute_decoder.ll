Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_normal_attribute_decoder?download=true
inline.NumInlined: 1126
inline.NumDeleted: 472
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5draco48MeshPredictionSchemeGeometricNormalPredictorAreaIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputePredictedValueENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPi:bb.a

bb.i:                                             ; preds = %bb.h
  %i.br = add i32 %i.aw, -1
  br label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.bs = add i32 %i.aw, 2
  br label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %bb.d, %bb.j, %bb.i, %bb.g, %bb.f
  %.sroa.070.0 = phi i32 [ %i.bs, %bb.j ], [ %i.bi, %bb.f ], [ %i.bj, %bb.g ], [ %i.br, %bb.i ], [ -1, %bb.d ]
  %.sroa.071.0 = phi i32 [ %spec.select.i.i25, %bb.j ], [ %spec.select.i.i, %bb.f ], [ %spec.select.i.i, %bb.g ], [ %spec.select.i.i25, %bb.i ], [ -1, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !121, !noalias !259
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.bv = zext i32 %.sroa.071.0 to i64
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !127, !noalias !260
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !129, !noalias !260
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !130, !noalias !259 ; 2 uses
  %i.ca = zext i32 %i.by to i64                   ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !131, !noalias !259
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !132, !noalias !259 ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2                 ; 2 uses
  %.not.i.i.i31 = icmp ugt i64 %i.ch, %i.ca
  br i1 %.not.i.i.i31, label %_ZNKSt6vectorIiSaIiEE2atEm.exit.i32, label %bb.k

bb.k:                                             ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.ca, i64 noundef %i.ch) #16, !noalias !259
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit.i32:              ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ca
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !117, !noalias !259
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.ck = load ptr, ptr %i.x, align 8, !tbaa !111, !noalias !262
  %i.cl = sext i32 %i.cj to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !134, !noalias !262 ; 2 uses
  %i.co = load ptr, ptr %i.ac, align 8, !tbaa !102, !noalias !262 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 100
  %i.cq = load i8, ptr %i.cp, align 4, !tbaa !152, !range !153, !noalias !263, !noundef !96
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit36, label %.else.i.i33

.else.i.i33:                                      ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit.i32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !263
  %i.cu = zext i32 %i.cn to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu
  %storemerge.i.else.val.i.i34 = load i32, ptr %i.cv, align 4, !tbaa !117, !noalias !263
  br label %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit36

_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit36: ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit.i32, %.else.i.i33
  %storemerge.i.i.i35 = phi i32 [ %i.cn, %_ZNKSt6vectorIiSaIiEE2atEm.exit.i32 ], [ %storemerge.i.else.val.i.i34, %.else.i.i33 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !tbaa !154, !alias.scope !262
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !262
  store i32 %storemerge.i.i.i35, ptr %4, align 4, !tbaa !156, !noalias !262
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !28, !noalias !262
  %i.cy = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.co, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef signext %i.cx, ptr noundef nonnull align 8 %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !262
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !121, !noalias !264
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 88
  %i.db = zext i32 %.sroa.070.0 to i64
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !127, !noalias !265
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.db
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !129, !noalias !265
  %i.df = load ptr, ptr %i.l, align 8, !tbaa !130, !noalias !264 ; 2 uses
  %i.dg = zext i32 %i.de to i64                   ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !131, !noalias !264
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !132, !noalias !264 ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 2                 ; 2 uses
  %.not.i.i.i37 = icmp ugt i64 %i.dn, %i.dg
  br i1 %.not.i.i.i37, label %_ZNKSt6vectorIiSaIiEE2atEm.exit.i38, label %bb.l

bb.l:                                             ; preds = %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit36
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.dg, i64 noundef %i.dn) #16, !noalias !264
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit.i38:              ; preds = %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit36
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dg
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !117, !noalias !264
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.dq = load ptr, ptr %i.x, align 8, !tbaa !111, !noalias !267
  %i.dr = sext i32 %i.dp to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !134, !noalias !267 ; 2 uses
  %i.du = load ptr, ptr %i.ac, align 8, !tbaa !102, !noalias !267 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 100
  %i.dw = load i8, ptr %i.dv, align 4, !tbaa !152, !range !153, !noalias !268, !noundef !96
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit42, label %.else.i.i39

.else.i.i39:                                      ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit.i38
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !268
  %i.ea = zext i32 %i.dt to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ea
  %storemerge.i.else.val.i.i40 = load i32, ptr %i.eb, align 4, !tbaa !117, !noalias !268
  br label %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit42

_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit42: ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit.i38, %.else.i.i39
  %storemerge.i.i.i41 = phi i32 [ %i.dt, %_ZNKSt6vectorIiSaIiEE2atEm.exit.i38 ], [ %storemerge.i.else.val.i.i40, %.else.i.i39 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !tbaa !154, !alias.scope !267
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !267
  store i32 %storemerge.i.i.i41, ptr %3, align 4, !tbaa !156, !noalias !267
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !28, !noalias !267
  %i.ee = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.du, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %3, i8 noundef signext %i.ed, ptr noundef nonnull align 8 %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !267
  %i.ef = load i64, ptr %8, align 8, !tbaa !154, !noalias !269
  %i.eg = load i64, ptr %7, align 8, !tbaa !154, !noalias !269 ; 2 uses
  %i.eh = sub nsw i64 %i.ef, %i.eg                ; 2 uses
  %i.ei = load i64, ptr %i.aq, align 8, !tbaa !154, !noalias !269
  %i.ej = load i64, ptr %i.ar, align 8, !tbaa !154, !noalias !269 ; 2 uses
  %i.ek = sub nsw i64 %i.ei, %i.ej                ; 2 uses
  %i.el = load i64, ptr %i.as, align 8, !tbaa !154, !noalias !269
  %i.em = load i64, ptr %i.at, align 8, !tbaa !154, !noalias !269 ; 2 uses
  %i.en = sub nsw i64 %i.el, %i.em                ; 2 uses
  %i.eo = load i64, ptr %9, align 8, !tbaa !154, !noalias !270
  %i.ep = sub nsw i64 %i.eo, %i.eg                ; 2 uses
  %i.eq = load i64, ptr %i.au, align 8, !tbaa !154, !noalias !270
  %i.er = sub nsw i64 %i.eq, %i.ej                ; 2 uses
  %i.es = load i64, ptr %i.av, align 8, !tbaa !154, !noalias !270
  %i.et = sub nsw i64 %i.es, %i.em                ; 2 uses
  %i.eu = mul nsw i64 %i.et, %i.ek
  %i.ev = mul nsw i64 %i.er, %i.en
  %i.ew = mul nsw i64 %i.ep, %i.en
  %i.ex = mul nsw i64 %i.et, %i.eh
  %i.ey = mul nsw i64 %i.er, %i.eh
  %i.ez = mul nsw i64 %i.ep, %i.ek
  %i.fa = sub i64 %.sroa.072.0120, %i.ev
  %i.fb = add i64 %i.fa, %i.eu                    ; 2 uses
  %i.fc = add i64 %i.ew, %.sroa.12.0119
  %i.fd = sub i64 %i.fc, %i.ex                    ; 2 uses
  %i.fe = sub i64 %.sroa.21.0118, %i.ez
  %i.ff = add i64 %i.fe, %i.ey                    ; 2 uses
  call void @_ZN5draco21VertexCornersIteratorINS_24MeshAttributeCornerTableEE4NextEv(ptr noundef nonnull align 8 dereferenceable(17) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.fg = load i32, ptr %i.e, align 4, !tbaa !119 ; 2 uses
  %i.fh = icmp eq i32 %i.fg, -1
  br i1 %i.fh, label %._crit_edge, label %bb.c, !llvm.loop !253

._crit_edge:                                      ; preds = %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit42, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %.sroa.21.0.lcssa = phi i64 [ 0, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %i.ff, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit42 ] ; 6 uses
  %.sroa.12.0.lcssa = phi i64 [ 0, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %i.fd, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit42 ] ; 5 uses
  %.sroa.072.0.lcssa = phi i64 [ 0, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %i.fb, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit42 ] ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !95
  %i.fk = icmp eq i32 %i.fj, 0
  %i.fl = call noundef i64 @llvm.abs.i64(i64 %.sroa.072.0.lcssa, i1 true) ; 3 uses
  %i.fm = call noundef i64 @llvm.abs.i64(i64 %.sroa.12.0.lcssa, i1 true) ; 3 uses
  %i.fn = xor i64 %i.fm, 9223372036854775807
  %.not.1.i = icmp samesign ugt i64 %i.fl, %i.fn  ; 2 uses
  br i1 %i.fk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge
  br i1 %.not.1.i, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit

_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit:          ; preds = %bb.m
  %i.fo = add nuw nsw i64 %i.fl, %i.fm            ; 2 uses
  %i.fp = call noundef i64 @llvm.abs.i64(i64 %.sroa.21.0.lcssa, i1 true) ; 2 uses
  %i.fq = xor i64 %i.fp, 9223372036854775807
  %.not.2.i = icmp samesign ugt i64 %i.fo, %i.fq
  %i.fr = add nuw nsw i64 %i.fo, %i.fp
  %i.fs = shl i64 %i.fr, 32
  %i.ft = ashr exact i64 %i.fs, 32
  %i.fu = select i1 %.not.2.i, i64 -1, i64 %i.ft  ; 2 uses
  %i.fv = icmp sgt i64 %i.fu, 536870912
  br i1 %i.fv, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread

bb.n:                                             ; preds = %._crit_edge
  br i1 %.not.1.i, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fw = add nuw nsw i64 %i.fl, %i.fm            ; 2 uses
  %i.fx = call noundef i64 @llvm.abs.i64(i64 %.sroa.21.0.lcssa, i1 true) ; 2 uses
  %i.fy = xor i64 %i.fx, 9223372036854775807
  %.not.2.i44 = icmp samesign ugt i64 %i.fw, %i.fy
  br i1 %.not.2.i44, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit47

_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit47:        ; preds = %bb.o
  %i.fz = add nuw nsw i64 %i.fw, %i.fx            ; 2 uses
  %i.ga = icmp samesign ugt i64 %i.fz, 536870912
  br i1 %i.ga, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread

_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split: ; preds = %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit47, %bb.n, %bb.o, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit
  %spec.select.i46104.sink = phi i64 [ %i.fu, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit ], [ %i.fz, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit47 ], [ 9223372036854775807, %bb.n ], [ 9223372036854775807, %bb.o ]
  %i.gb = lshr i64 %spec.select.i46104.sink, 29   ; 3 uses
  %i.gc = sdiv i64 %.sroa.072.0.lcssa, %i.gb
  %i.gd = sdiv i64 %.sroa.12.0.lcssa, %i.gb
  %i.ge = sdiv i64 %.sroa.21.0.lcssa, %i.gb
  br label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread

_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread:   ; preds = %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split, %bb.m, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit47, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit
  %.sroa.21.1 = phi i64 [ %.sroa.21.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit47 ], [ %.sroa.21.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit ], [ %.sroa.21.0.lcssa, %bb.m ], [ %i.ge, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split ]
  %.sroa.12.1 = phi i64 [ %.sroa.12.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit47 ], [ %.sroa.12.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit ], [ %.sroa.12.0.lcssa, %bb.m ], [ %i.gd, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split ]
  %.sroa.072.1 = phi i64 [ %.sroa.072.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit47 ], [ %.sroa.072.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit ], [ %.sroa.072.0.lcssa, %bb.m ], [ %i.gc, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split ]
  %i.gf = trunc i64 %.sroa.072.1 to i32
  store i32 %i.gf, ptr %2, align 4, !tbaa !117
  %i.gg = trunc i64 %.sroa.12.1 to i32
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !117
  %i.gi = trunc i64 %.sroa.21.1 to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco21VertexCornersIteratorINS_24MeshAttributeCornerTableEE4NextEv(ptr noundef nonnull align 8 dereferenceable(17) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !124, !range !153, !noundef !96
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load ptr, ptr %0, align 8, !tbaa !123    ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !119  ; 6 uses
  %i.g = icmp eq i32 %i.f, -1                     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, label %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.b
  %i.h = add nuw i32 %i.f, 1                      ; 2 uses
  %i.i = urem i32 %i.h, 3
  %.not.i.i.i = icmp eq i32 %i.i, 0
  %i.j = add i32 %i.f, -2
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %i.j, i32 %i.h ; 4 uses
  %i.k = icmp eq i32 %spec.select.i.i.i, -1
  br i1 %i.k, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !291, !noalias !292
  %i.m = lshr i32 %spec.select.i.i.i, 6
  %.zext.i.i.i = zext nneg i32 %i.m to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.zext.i.i.i
  %i.o = and i32 %spec.select.i.i.i, 63
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw i64 1, %i.p
  %i.r = load i64, ptr %i.n, align 8, !tbaa !154, !noalias !292
  %i.s = and i64 %i.r, %i.q
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !312, !noalias !292
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = zext i32 %spec.select.i.i.i to i64
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !116, !noalias !313
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.w
  %i.z = load i32, ptr %i.y, align 4, !tbaa !119, !noalias !313 ; 3 uses
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, label %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread: ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.b, %bb.c, %_ZNK5draco24MeshAttributeCornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  store i32 -1, ptr %i.e, align 4, !tbaa !119
  br label %bb.d

_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.ab = add nuw i32 %i.z, 1                     ; 2 uses
  %i.ac = urem i32 %i.ab, 3
  %.not.i.i1.i = icmp eq i32 %i.ac, 0
  %i.ad = add i32 %i.z, -2
  %spec.select.i.i2.i = select i1 %.not.i.i1.i, i32 %i.ad, i32 %i.ab ; 3 uses
  store i32 %spec.select.i.i2.i, ptr %i.e, align 4, !tbaa !119
  %i.ae = icmp eq i32 %spec.select.i.i2.i, -1
  br i1 %i.ae, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !119 ; 4 uses
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = urem i32 %i.ag, 3
  %.not.i.i.i1 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i1, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i: ; preds = %bb.e
  %i.aj = add i32 %i.ag, -1
  br label %bb.f

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.e
  %i.ak = add i32 %i.ag, 2                        ; 2 uses
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i
  %.sink.i.i9.i = phi i32 [ %i.aj, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i ], [ %i.ak, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ] ; 3 uses
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !291, !noalias !314
  %i.an = lshr i32 %.sink.i.i9.i, 6
  %.zext.i.i.i2 = zext nneg i32 %i.an to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.zext.i.i.i2
  %i.ap = and i32 %.sink.i.i9.i, 63
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = load i64, ptr %i.ao, align 8, !tbaa !154, !noalias !314
  %i.at = and i64 %i.ar, %i.as
  %.not.i.i3 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i3, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i4, label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i4: ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !312, !noalias !314
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = zext i32 %.sink.i.i9.i to i64
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !116, !noalias !315
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !119, !noalias !315 ; 4 uses
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i4
  %i.bc = urem i32 %i.ba, 3
  %.not.i.i1.i5 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i1.i5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = add i32 %i.ba, -1
  br label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.i:                                             ; preds = %bb.g
  %i.be = add i32 %i.ba, 2
  br label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %bb.d, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.f, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i4, %bb.h, %bb.i
  %.sink.i.i2.i = phi i32 [ %i.bd, %bb.h ], [ %i.be, %bb.i ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i4 ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ]
  store i32 %.sink.i.i2.i, ptr %i.e, align 4, !tbaa !119
  store i8 0, ptr %i.a, align 8, !tbaa !124
  br label %bb.r

bb.j:                                             ; preds = %_ZNK5draco24MeshAttributeCornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !119
  %i.bh = icmp eq i32 %spec.select.i.i2.i, %i.bg
  br i1 %i.bh, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  store i32 -1, ptr %i.e, align 4, !tbaa !119
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  br i1 %i.g, label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit15, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = urem i32 %i.f, 3
  %.not.i.i.i6 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i6, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i14, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i7

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i7: ; preds = %bb.m
  %i.bj = add i32 %i.f, -1
  br label %bb.n

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i14: ; preds = %bb.m
  %i.bk = add i32 %i.f, 2                         ; 2 uses
  %i.bl = icmp eq i32 %i.bk, -1
  br i1 %i.bl, label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit15, label %bb.n

bb.n:                                             ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i14, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i7
  %.sink.i.i9.i8 = phi i32 [ %i.bj, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i7 ], [ %i.bk, %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i14 ] ; 3 uses
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !291, !noalias !316
  %i.bn = lshr i32 %.sink.i.i9.i8, 6
  %.zext.i.i.i9 = zext nneg i32 %i.bn to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.zext.i.i.i9
  %i.bp = and i32 %.sink.i.i9.i8, 63
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = load i64, ptr %i.bo, align 8, !tbaa !154, !noalias !316
  %i.bt = and i64 %i.br, %i.bs
  %.not.i.i10 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i10, label %_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i12, label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit15

_ZNK5draco24MeshAttributeCornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i12: ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !312, !noalias !316
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = zext i32 %.sink.i.i9.i8 to i64
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !116, !noalias !317
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bx
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !119, !noalias !317 ; 4 uses
  %i.cb = icmp eq i32 %i.ca, -1
  br i1 %i.cb, label %_ZNK5draco24MeshAttributeCornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit15, label %bb.o
end_hunk_0
begin_hunk_1_@_ZN5draco48MeshPredictionSchemeGeometricNormalPredictorAreaIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21ComputePredictedValueENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPi:bb.a
  br i1 %i.bu, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i31, label %bb.l

bb.l:                                             ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !383
  %i.bw = zext i32 %.sroa.076.0 to i64
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !127, !noalias !384
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !129, !noalias !384
  %i.ca = zext i32 %i.bz to i64
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i31

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i31: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, %bb.l, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %.sroa.075.0109 = phi i32 [ %.sroa.075.0, %bb.l ], [ %.sroa.075.0, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ -1, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread ] ; 2 uses
  %storemerge.i.i32 = phi i64 [ %i.ca, %bb.l ], [ 4294967295, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ 4294967295, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread ] ; 3 uses
  %i.cb = load ptr, ptr %i.m, align 8, !tbaa !165, !noalias !383 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !131, !noalias !383
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !132, !noalias !383 ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 2                 ; 2 uses
  %.not.i.i.i33 = icmp ult i64 %storemerge.i.i32, %i.ci
  br i1 %.not.i.i.i33, label %_ZNKSt6vectorIiSaIiEE2atEm.exit.i34, label %bb.m

bb.m:                                             ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i31
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %storemerge.i.i32, i64 noundef %i.ci) #16, !noalias !383
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit.i34:              ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i31
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %storemerge.i.i32
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !117, !noalias !383
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.cl = load ptr, ptr %i.x, align 8, !tbaa !159, !noalias !386
  %i.cm = sext i32 %i.ck to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !134, !noalias !386 ; 2 uses
  %i.cp = load ptr, ptr %i.ac, align 8, !tbaa !158, !noalias !386 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 100
  %i.cr = load i8, ptr %i.cq, align 4, !tbaa !152, !range !153, !noalias !387, !noundef !96
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit38, label %.else.i.i35

.else.i.i35:                                      ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit.i34
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 72
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !387
  %i.cv = zext i32 %i.co to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cv
  %storemerge.i.else.val.i.i36 = load i32, ptr %i.cw, align 4, !tbaa !117, !noalias !387
  br label %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit38

_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit38: ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit.i34, %.else.i.i35
  %storemerge.i.i.i37 = phi i32 [ %i.co, %_ZNKSt6vectorIiSaIiEE2atEm.exit.i34 ], [ %storemerge.i.else.val.i.i36, %.else.i.i35 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !tbaa !154, !alias.scope !386
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !386
  store i32 %storemerge.i.i.i37, ptr %4, align 4, !tbaa !156, !noalias !386
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !28, !noalias !386
  %i.cz = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.cp, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef signext %i.cy, ptr noundef nonnull align 8 %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !386
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %i.da = icmp eq i32 %.sroa.075.0109, -1
  br i1 %i.da, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i39, label %bb.n

bb.n:                                             ; preds = %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit38
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !388
  %i.dc = zext i32 %.sroa.075.0109 to i64
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !127, !noalias !389
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.dc
  %i.df = load i32, ptr %i.de, align 4, !tbaa !129, !noalias !389
  %i.dg = zext i32 %i.df to i64
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i39

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i39: ; preds = %bb.n, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit38
  %storemerge.i.i40 = phi i64 [ %i.dg, %bb.n ], [ 4294967295, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit38 ] ; 3 uses
  %i.dh = load ptr, ptr %i.m, align 8, !tbaa !165, !noalias !388 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !131, !noalias !388
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !132, !noalias !388 ; 2 uses
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = ashr exact i64 %i.dn, 2                 ; 2 uses
  %.not.i.i.i41 = icmp ult i64 %storemerge.i.i40, %i.do
  br i1 %.not.i.i.i41, label %_ZNKSt6vectorIiSaIiEE2atEm.exit.i42, label %bb.o

bb.o:                                             ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i39
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %storemerge.i.i40, i64 noundef %i.do) #16, !noalias !388
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit.i42:              ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i39
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %storemerge.i.i40
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !117, !noalias !388
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.dr = load ptr, ptr %i.x, align 8, !tbaa !159, !noalias !391
  %i.ds = sext i32 %i.dq to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !134, !noalias !391 ; 2 uses
  %i.dv = load ptr, ptr %i.ac, align 8, !tbaa !158, !noalias !391 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 100
  %i.dx = load i8, ptr %i.dw, align 4, !tbaa !152, !range !153, !noalias !392, !noundef !96
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit46, label %.else.i.i43

.else.i.i43:                                      ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit.i42
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 72
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !392
  %i.eb = zext i32 %i.du to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.eb
  %storemerge.i.else.val.i.i44 = load i32, ptr %i.ec, align 4, !tbaa !117, !noalias !392
  br label %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit46

_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit46: ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit.i42, %.else.i.i43
  %storemerge.i.i.i45 = phi i32 [ %i.du, %_ZNKSt6vectorIiSaIiEE2atEm.exit.i42 ], [ %storemerge.i.else.val.i.i44, %.else.i.i43 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !tbaa !154, !alias.scope !391
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !391
  store i32 %storemerge.i.i.i45, ptr %3, align 4, !tbaa !156, !noalias !391
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !28, !noalias !391
  %i.ef = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.dv, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %3, i8 noundef signext %i.ee, ptr noundef nonnull align 8 %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !391
  %i.eg = load i64, ptr %8, align 8, !tbaa !154, !noalias !393
  %i.eh = load i64, ptr %7, align 8, !tbaa !154, !noalias !393 ; 2 uses
  %i.ei = sub nsw i64 %i.eg, %i.eh                ; 2 uses
  %i.ej = load i64, ptr %i.ar, align 8, !tbaa !154, !noalias !393
  %i.ek = load i64, ptr %i.as, align 8, !tbaa !154, !noalias !393 ; 2 uses
  %i.el = sub nsw i64 %i.ej, %i.ek                ; 2 uses
  %i.em = load i64, ptr %i.at, align 8, !tbaa !154, !noalias !393
  %i.en = load i64, ptr %i.au, align 8, !tbaa !154, !noalias !393 ; 2 uses
  %i.eo = sub nsw i64 %i.em, %i.en                ; 2 uses
  %i.ep = load i64, ptr %9, align 8, !tbaa !154, !noalias !394
  %i.eq = sub nsw i64 %i.ep, %i.eh                ; 2 uses
  %i.er = load i64, ptr %i.av, align 8, !tbaa !154, !noalias !394
  %i.es = sub nsw i64 %i.er, %i.ek                ; 2 uses
  %i.et = load i64, ptr %i.aw, align 8, !tbaa !154, !noalias !394
  %i.eu = sub nsw i64 %i.et, %i.en                ; 2 uses
  %i.ev = mul nsw i64 %i.eu, %i.el
  %i.ew = mul nsw i64 %i.es, %i.eo
  %i.ex = mul nsw i64 %i.eq, %i.eo
  %i.ey = mul nsw i64 %i.eu, %i.ei
  %i.ez = mul nsw i64 %i.es, %i.ei
  %i.fa = mul nsw i64 %i.eq, %i.el
  %i.fb = sub i64 %.sroa.077.0126, %i.ew
  %i.fc = add i64 %i.fb, %i.ev                    ; 2 uses
  %i.fd = add i64 %i.ex, %.sroa.12.0125
  %i.fe = sub i64 %i.fd, %i.ey                    ; 2 uses
  %i.ff = sub i64 %.sroa.21.0124, %i.fa
  %i.fg = add i64 %i.ff, %i.ez                    ; 2 uses
  call void @_ZN5draco21VertexCornersIteratorINS_11CornerTableEE4NextEv(ptr noundef nonnull align 8 dereferenceable(17) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.fh = load i32, ptr %i.e, align 4, !tbaa !119 ; 2 uses
  %i.fi = icmp eq i32 %i.fh, -1
  br i1 %i.fi, label %._crit_edge, label %bb.d, !llvm.loop !377

._crit_edge:                                      ; preds = %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit46, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %.sroa.21.0.lcssa = phi i64 [ 0, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %i.fg, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit46 ] ; 6 uses
  %.sroa.12.0.lcssa = phi i64 [ 0, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %i.fe, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit46 ] ; 5 uses
  %.sroa.077.0.lcssa = phi i64 [ 0, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %i.fc, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit46 ] ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !101
  %i.fl = icmp eq i32 %i.fk, 0
  %i.fm = call noundef i64 @llvm.abs.i64(i64 %.sroa.077.0.lcssa, i1 true) ; 3 uses
  %i.fn = call noundef i64 @llvm.abs.i64(i64 %.sroa.12.0.lcssa, i1 true) ; 3 uses
  %i.fo = xor i64 %i.fn, 9223372036854775807
  %.not.1.i = icmp samesign ugt i64 %i.fm, %i.fo  ; 2 uses
  br i1 %i.fl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge
  br i1 %.not.1.i, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit

_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit:          ; preds = %bb.p
  %i.fp = add nuw nsw i64 %i.fm, %i.fn            ; 2 uses
  %i.fq = call noundef i64 @llvm.abs.i64(i64 %.sroa.21.0.lcssa, i1 true) ; 2 uses
  %i.fr = xor i64 %i.fq, 9223372036854775807
  %.not.2.i = icmp samesign ugt i64 %i.fp, %i.fr
  %i.fs = add nuw nsw i64 %i.fp, %i.fq
  %i.ft = shl i64 %i.fs, 32
  %i.fu = ashr exact i64 %i.ft, 32
  %i.fv = select i1 %.not.2.i, i64 -1, i64 %i.fu  ; 2 uses
  %i.fw = icmp sgt i64 %i.fv, 536870912
  br i1 %i.fw, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread

bb.q:                                             ; preds = %._crit_edge
  br i1 %.not.1.i, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fx = add nuw nsw i64 %i.fm, %i.fn            ; 2 uses
  %i.fy = call noundef i64 @llvm.abs.i64(i64 %.sroa.21.0.lcssa, i1 true) ; 2 uses
  %i.fz = xor i64 %i.fy, 9223372036854775807
  %.not.2.i49 = icmp samesign ugt i64 %i.fx, %i.fz
  br i1 %.not.2.i49, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit52

_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit52:        ; preds = %bb.r
  %i.ga = add nuw nsw i64 %i.fx, %i.fy            ; 2 uses
  %i.gb = icmp samesign ugt i64 %i.ga, 536870912
  br i1 %i.gb, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread

_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split: ; preds = %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit52, %bb.q, %bb.r, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit
  %spec.select.i51112.sink = phi i64 [ %i.fv, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit ], [ %i.ga, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit52 ], [ 9223372036854775807, %bb.q ], [ 9223372036854775807, %bb.r ]
  %i.gc = lshr i64 %spec.select.i51112.sink, 29   ; 3 uses
  %i.gd = sdiv i64 %.sroa.077.0.lcssa, %i.gc
  %i.ge = sdiv i64 %.sroa.12.0.lcssa, %i.gc
  %i.gf = sdiv i64 %.sroa.21.0.lcssa, %i.gc
  br label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread

_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread:   ; preds = %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split, %bb.p, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit52, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit
  %.sroa.21.1 = phi i64 [ %.sroa.21.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit52 ], [ %.sroa.21.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit ], [ %.sroa.21.0.lcssa, %bb.p ], [ %i.gf, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split ]
  %.sroa.12.1 = phi i64 [ %.sroa.12.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit52 ], [ %.sroa.12.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit ], [ %.sroa.12.0.lcssa, %bb.p ], [ %i.ge, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split ]
  %.sroa.077.1 = phi i64 [ %.sroa.077.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit52 ], [ %.sroa.077.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit ], [ %.sroa.077.0.lcssa, %bb.p ], [ %i.gd, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split ]
  %i.gg = trunc i64 %.sroa.077.1 to i32
  store i32 %i.gg, ptr %2, align 4, !tbaa !117
  %i.gh = trunc i64 %.sroa.12.1 to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !117
  %i.gj = trunc i64 %.sroa.21.1 to i32
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco21VertexCornersIteratorINS_11CornerTableEE4NextEv(ptr noundef nonnull align 8 dereferenceable(17) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !164, !range !153, !noundef !96
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load ptr, ptr %0, align 8, !tbaa !163    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !119  ; 6 uses
  %i.g = icmp eq i32 %i.f, -1                     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.b
  %i.h = add nuw i32 %i.f, 1                      ; 2 uses
  %i.i = urem i32 %i.h, 3
  %.not.i.i = icmp eq i32 %i.i, 0
  %i.j = add i32 %i.f, -2
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.j, i32 %i.h ; 2 uses
  %i.k = icmp eq i32 %spec.select.i.i, -1
  br i1 %i.k, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.m = zext i32 %spec.select.i.i to i64
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !116, !noalias !407
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !119, !noalias !407 ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, label %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %bb.b, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  store i32 -1, ptr %i.e, align 4, !tbaa !119
  br label %bb.c

_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.r = add nuw i32 %i.p, 1                      ; 2 uses
  %i.s = urem i32 %i.r, 3
  %.not.i1.i = icmp eq i32 %i.s, 0
  %i.t = add i32 %i.p, -2
  %spec.select.i2.i = select i1 %.not.i1.i, i32 %i.t, i32 %i.r ; 3 uses
  store i32 %spec.select.i2.i, ptr %i.e, align 4, !tbaa !119
  %i.u = icmp eq i32 %spec.select.i2.i, -1
  br i1 %i.u, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !119  ; 4 uses
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = urem i32 %i.w, 3
  %.not.i.i1 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i1, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i: ; preds = %bb.d
  %i.z = add i32 %i.w, -1
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i2

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.d
  %i.aa = add i32 %i.w, 2                         ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i2

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i2: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i
  %.sink.i9.i = phi i32 [ %i.z, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i ], [ %i.aa, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ad = zext i32 %.sink.i9.i to i64
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !116, !noalias !408
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !119, !noalias !408 ; 4 uses
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i2
  %i.ai = urem i32 %i.ag, 3
  %.not.i1.i3 = icmp eq i32 %i.ai, 0
  br i1 %.not.i1.i3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = add i32 %i.ag, -1
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = add i32 %i.ag, 2
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %bb.c, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i2, %bb.f, %bb.g
  %.sink.i2.i = phi i32 [ %i.aj, %bb.f ], [ %i.ak, %bb.g ], [ -1, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i2 ], [ -1, %bb.c ], [ -1, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ]
  store i32 %.sink.i2.i, ptr %i.e, align 4, !tbaa !119
  store i8 0, ptr %i.a, align 8, !tbaa !164
  br label %bb.o

bb.h:                                             ; preds = %_ZNK5draco11CornerTable9SwingLeftENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !119
  %i.an = icmp eq i32 %spec.select.i2.i, %i.am
  br i1 %i.an, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  store i32 -1, ptr %i.e, align 4, !tbaa !119
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  br i1 %i.g, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit11, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = urem i32 %i.f, 3
  %.not.i.i4 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i4, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i10, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i5

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i5: ; preds = %bb.k
  %i.ap = add i32 %i.f, -1
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i6

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i10: ; preds = %bb.k
  %i.aq = add i32 %i.f, 2                         ; 2 uses
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit11, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i6

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i6: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i10, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i5
  %.sink.i9.i7 = phi i32 [ %i.ap, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i5 ], [ %i.aq, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i10 ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.at = zext i32 %.sink.i9.i7 to i64
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !116, !noalias !409
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !119, !noalias !409 ; 4 uses
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit11, label %bb.l

bb.l:                                             ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i6
  %i.ay = urem i32 %i.aw, 3
  %.not.i1.i8 = icmp eq i32 %i.ay, 0
  br i1 %.not.i1.i8, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = add i32 %i.aw, -1
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit11

bb.n:                                             ; preds = %bb.l
  %i.ba = add i32 %i.aw, 2
  br label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit11

_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit11: ; preds = %bb.j, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i10, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i6, %bb.m, %bb.n
  %.sink.i2.i9 = phi i32 [ %i.az, %bb.m ], [ %i.ba, %bb.n ], [ -1, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i6 ], [ -1, %bb.j ], [ -1, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i10 ]
  store i32 %.sink.i2.i9, ptr %i.e, align 4, !tbaa !119
  br label %bb.o

bb.o:                                             ; preds = %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %bb.i, %bb.h, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit11
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco28PredictionSchemeDeltaDecoderIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco28PredictionSchemeDeltaDecoderIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEEE19GetPredictionMethodEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco28PredictionSchemeDeltaDecoderIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEEE13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco28PredictionSchemeDeltaDecoderIiNS_49PredictionSchemeNormalOctahedronDecodingTransformIiEEE21ComputeOriginalValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1
begin_hunk_2_@_ZN5draco48MeshPredictionSchemeGeometricNormalPredictorAreaIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputePredictedValueENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPi:bb.a

bb.i:                                             ; preds = %bb.h
  %i.br = add i32 %i.aw, -1
  br label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.bs = add i32 %i.aw, 2
  br label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %bb.d, %bb.j, %bb.i, %bb.g, %bb.f
  %.sroa.070.0 = phi i32 [ %i.bs, %bb.j ], [ %i.bi, %bb.f ], [ %i.bj, %bb.g ], [ %i.br, %bb.i ], [ -1, %bb.d ]
  %.sroa.071.0 = phi i32 [ %spec.select.i.i25, %bb.j ], [ %spec.select.i.i, %bb.f ], [ %spec.select.i.i, %bb.g ], [ %spec.select.i.i25, %bb.i ], [ -1, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !121, !noalias !466
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.bv = zext i32 %.sroa.071.0 to i64
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !127, !noalias !467
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !129, !noalias !467
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !130, !noalias !466 ; 2 uses
  %i.ca = zext i32 %i.by to i64                   ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !131, !noalias !466
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !132, !noalias !466 ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2                 ; 2 uses
  %.not.i.i.i31 = icmp ugt i64 %i.ch, %i.ca
  br i1 %.not.i.i.i31, label %_ZNKSt6vectorIiSaIiEE2atEm.exit.i32, label %bb.k

bb.k:                                             ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.ca, i64 noundef %i.ch) #16, !noalias !466
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit.i32:              ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ca
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !117, !noalias !466
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.ck = load ptr, ptr %i.x, align 8, !tbaa !171, !noalias !469
  %i.cl = sext i32 %i.cj to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !134, !noalias !469 ; 2 uses
  %i.co = load ptr, ptr %i.ac, align 8, !tbaa !170, !noalias !469 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 100
  %i.cq = load i8, ptr %i.cp, align 4, !tbaa !152, !range !153, !noalias !470, !noundef !96
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit36, label %.else.i.i33

.else.i.i33:                                      ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit.i32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !470
  %i.cu = zext i32 %i.cn to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu
  %storemerge.i.else.val.i.i34 = load i32, ptr %i.cv, align 4, !tbaa !117, !noalias !470
  br label %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit36

_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit36: ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit.i32, %.else.i.i33
  %storemerge.i.i.i35 = phi i32 [ %i.cn, %_ZNKSt6vectorIiSaIiEE2atEm.exit.i32 ], [ %storemerge.i.else.val.i.i34, %.else.i.i33 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !tbaa !154, !alias.scope !469
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !469
  store i32 %storemerge.i.i.i35, ptr %4, align 4, !tbaa !156, !noalias !469
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !28, !noalias !469
  %i.cy = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.co, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef signext %i.cx, ptr noundef nonnull align 8 %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !469
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !121, !noalias !471
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 88
  %i.db = zext i32 %.sroa.070.0 to i64
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !127, !noalias !472
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.db
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !129, !noalias !472
  %i.df = load ptr, ptr %i.l, align 8, !tbaa !130, !noalias !471 ; 2 uses
  %i.dg = zext i32 %i.de to i64                   ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !131, !noalias !471
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !132, !noalias !471 ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 2                 ; 2 uses
  %.not.i.i.i37 = icmp ugt i64 %i.dn, %i.dg
  br i1 %.not.i.i.i37, label %_ZNKSt6vectorIiSaIiEE2atEm.exit.i38, label %bb.l

bb.l:                                             ; preds = %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit36
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.dg, i64 noundef %i.dn) #16, !noalias !471
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit.i38:              ; preds = %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit36
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dg
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !117, !noalias !471
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.dq = load ptr, ptr %i.x, align 8, !tbaa !171, !noalias !474
  %i.dr = sext i32 %i.dp to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !134, !noalias !474 ; 2 uses
  %i.du = load ptr, ptr %i.ac, align 8, !tbaa !170, !noalias !474 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 100
  %i.dw = load i8, ptr %i.dv, align 4, !tbaa !152, !range !153, !noalias !475, !noundef !96
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit42, label %.else.i.i39

.else.i.i39:                                      ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit.i38
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !475
  %i.ea = zext i32 %i.dt to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ea
  %storemerge.i.else.val.i.i40 = load i32, ptr %i.eb, align 4, !tbaa !117, !noalias !475
  br label %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit42

_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit42: ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit.i38, %.else.i.i39
  %storemerge.i.i.i41 = phi i32 [ %i.dt, %_ZNKSt6vectorIiSaIiEE2atEm.exit.i38 ], [ %storemerge.i.else.val.i.i40, %.else.i.i39 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !tbaa !154, !alias.scope !474
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !474
  store i32 %storemerge.i.i.i41, ptr %3, align 4, !tbaa !156, !noalias !474
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !28, !noalias !474
  %i.ee = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.du, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %3, i8 noundef signext %i.ed, ptr noundef nonnull align 8 %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !474
  %i.ef = load i64, ptr %8, align 8, !tbaa !154, !noalias !476
  %i.eg = load i64, ptr %7, align 8, !tbaa !154, !noalias !476 ; 2 uses
  %i.eh = sub nsw i64 %i.ef, %i.eg                ; 2 uses
  %i.ei = load i64, ptr %i.aq, align 8, !tbaa !154, !noalias !476
  %i.ej = load i64, ptr %i.ar, align 8, !tbaa !154, !noalias !476 ; 2 uses
  %i.ek = sub nsw i64 %i.ei, %i.ej                ; 2 uses
  %i.el = load i64, ptr %i.as, align 8, !tbaa !154, !noalias !476
  %i.em = load i64, ptr %i.at, align 8, !tbaa !154, !noalias !476 ; 2 uses
  %i.en = sub nsw i64 %i.el, %i.em                ; 2 uses
  %i.eo = load i64, ptr %9, align 8, !tbaa !154, !noalias !477
  %i.ep = sub nsw i64 %i.eo, %i.eg                ; 2 uses
  %i.eq = load i64, ptr %i.au, align 8, !tbaa !154, !noalias !477
  %i.er = sub nsw i64 %i.eq, %i.ej                ; 2 uses
  %i.es = load i64, ptr %i.av, align 8, !tbaa !154, !noalias !477
  %i.et = sub nsw i64 %i.es, %i.em                ; 2 uses
  %i.eu = mul nsw i64 %i.et, %i.ek
  %i.ev = mul nsw i64 %i.er, %i.en
  %i.ew = mul nsw i64 %i.ep, %i.en
  %i.ex = mul nsw i64 %i.et, %i.eh
  %i.ey = mul nsw i64 %i.er, %i.eh
  %i.ez = mul nsw i64 %i.ep, %i.ek
  %i.fa = sub i64 %.sroa.072.0120, %i.ev
  %i.fb = add i64 %i.fa, %i.eu                    ; 2 uses
  %i.fc = add i64 %i.ew, %.sroa.12.0119
  %i.fd = sub i64 %i.fc, %i.ex                    ; 2 uses
  %i.fe = sub i64 %.sroa.21.0118, %i.ez
  %i.ff = add i64 %i.fe, %i.ey                    ; 2 uses
  call void @_ZN5draco21VertexCornersIteratorINS_24MeshAttributeCornerTableEE4NextEv(ptr noundef nonnull align 8 dereferenceable(17) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.fg = load i32, ptr %i.e, align 4, !tbaa !119 ; 2 uses
  %i.fh = icmp eq i32 %i.fg, -1
  br i1 %i.fh, label %._crit_edge, label %bb.c, !llvm.loop !460

._crit_edge:                                      ; preds = %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit42, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %.sroa.21.0.lcssa = phi i64 [ 0, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %i.ff, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit42 ] ; 6 uses
  %.sroa.12.0.lcssa = phi i64 [ 0, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %i.fd, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit42 ] ; 5 uses
  %.sroa.072.0.lcssa = phi i64 [ 0, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %i.fb, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit42 ] ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !167
  %i.fk = icmp eq i32 %i.fj, 0
  %i.fl = call noundef i64 @llvm.abs.i64(i64 %.sroa.072.0.lcssa, i1 true) ; 3 uses
  %i.fm = call noundef i64 @llvm.abs.i64(i64 %.sroa.12.0.lcssa, i1 true) ; 3 uses
  %i.fn = xor i64 %i.fm, 9223372036854775807
  %.not.1.i = icmp samesign ugt i64 %i.fl, %i.fn  ; 2 uses
  br i1 %i.fk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge
  br i1 %.not.1.i, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit

_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit:          ; preds = %bb.m
  %i.fo = add nuw nsw i64 %i.fl, %i.fm            ; 2 uses
  %i.fp = call noundef i64 @llvm.abs.i64(i64 %.sroa.21.0.lcssa, i1 true) ; 2 uses
  %i.fq = xor i64 %i.fp, 9223372036854775807
  %.not.2.i = icmp samesign ugt i64 %i.fo, %i.fq
  %i.fr = add nuw nsw i64 %i.fo, %i.fp
  %i.fs = shl i64 %i.fr, 32
  %i.ft = ashr exact i64 %i.fs, 32
  %i.fu = select i1 %.not.2.i, i64 -1, i64 %i.ft  ; 2 uses
  %i.fv = icmp sgt i64 %i.fu, 536870912
  br i1 %i.fv, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread

bb.n:                                             ; preds = %._crit_edge
  br i1 %.not.1.i, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fw = add nuw nsw i64 %i.fl, %i.fm            ; 2 uses
  %i.fx = call noundef i64 @llvm.abs.i64(i64 %.sroa.21.0.lcssa, i1 true) ; 2 uses
  %i.fy = xor i64 %i.fx, 9223372036854775807
  %.not.2.i44 = icmp samesign ugt i64 %i.fw, %i.fy
  br i1 %.not.2.i44, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit47

_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit47:        ; preds = %bb.o
  %i.fz = add nuw nsw i64 %i.fw, %i.fx            ; 2 uses
  %i.ga = icmp samesign ugt i64 %i.fz, 536870912
  br i1 %i.ga, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread

_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split: ; preds = %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit47, %bb.n, %bb.o, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit
  %spec.select.i46104.sink = phi i64 [ %i.fu, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit ], [ %i.fz, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit47 ], [ 9223372036854775807, %bb.n ], [ 9223372036854775807, %bb.o ]
  %i.gb = lshr i64 %spec.select.i46104.sink, 29   ; 3 uses
  %i.gc = sdiv i64 %.sroa.072.0.lcssa, %i.gb
  %i.gd = sdiv i64 %.sroa.12.0.lcssa, %i.gb
  %i.ge = sdiv i64 %.sroa.21.0.lcssa, %i.gb
  br label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread

_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread:   ; preds = %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split, %bb.m, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit47, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit
  %.sroa.21.1 = phi i64 [ %.sroa.21.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit47 ], [ %.sroa.21.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit ], [ %.sroa.21.0.lcssa, %bb.m ], [ %i.ge, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split ]
  %.sroa.12.1 = phi i64 [ %.sroa.12.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit47 ], [ %.sroa.12.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit ], [ %.sroa.12.0.lcssa, %bb.m ], [ %i.gd, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split ]
  %.sroa.072.1 = phi i64 [ %.sroa.072.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit47 ], [ %.sroa.072.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit ], [ %.sroa.072.0.lcssa, %bb.m ], [ %i.gc, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split ]
  %i.gf = trunc i64 %.sroa.072.1 to i32
  store i32 %i.gf, ptr %2, align 4, !tbaa !117
  %i.gg = trunc i64 %.sroa.12.1 to i32
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !117
  %i.gi = trunc i64 %.sroa.21.1 to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5draco62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiE20ComputeOriginalValueENS_7VectorDIiLi2EEES3_(ptr dead_on_unwind noalias writable sret(%"class.draco::VectorD.111") align 4 %0, ptr noundef nonnull align 4 dereferenceable(20) %1, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !55   ; 4 uses
  %i.c = load i32, ptr %2, align 4, !tbaa !117, !noalias !480
  %i.d = sub nsw i32 %i.c, %i.b                   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !117, !noalias !480
  %i.g = sub nsw i32 %i.f, %i.b                   ; 7 uses
  %.sroa.441.0.insert.ext = zext i32 %i.g to i64
  %.sroa.441.0.insert.shift = shl nuw i64 %.sroa.441.0.insert.ext, 32
  %.sroa.040.0.insert.ext = zext i32 %i.d to i64
  %.sroa.040.0.insert.insert = or disjoint i64 %.sroa.441.0.insert.shift, %.sroa.040.0.insert.ext
  store i64 %.sroa.040.0.insert.insert, ptr %2, align 4, !tbaa !157
  %i.h = tail call i32 @llvm.abs.i32(i32 %i.d, i1 true)
  %i.i = tail call i32 @llvm.abs.i32(i32 %i.g, i1 true)
  %i.j = add nuw i32 %i.i, %i.h
  %i.k = load i32, ptr %i.a, align 4, !tbaa !55   ; 3 uses
  %.not = icmp ugt i32 %i.j, %i.k                 ; 2 uses
  br i1 %.not, label %bb.b, label %thread-pre-split

bb.b:                                             ; preds = %bb.a
  %i.l = icmp sgt i32 %i.d, -1
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = icmp sgt i32 %i.g, -1
  br i1 %i.m, label %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i32 %i.d, 0
  br i1 %i.n, label %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.o = icmp slt i32 %i.g, 1
  br i1 %i.o, label %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = phi i32 [ 1, %bb.d ], [ -1, %bb.e ]
  %.inv22.i.i = icmp slt i32 %i.g, 1
  %i.q = select i1 %.inv22.i.i, i32 -1, i32 1
  br label %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit

_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.021.i.i = phi i32 [ %i.q, %bb.f ], [ 1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.d ] ; 2 uses
  %.0.i.i = phi i32 [ %i.p, %bb.f ], [ 1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.d ] ; 2 uses
  %i.r = mul nsw i32 %.0.i.i, %i.k                ; 2 uses
  %i.s = mul nsw i32 %.021.i.i, %i.k              ; 2 uses
  %i.t = shl i32 %i.d, 1
  %i.u = sub i32 %i.t, %i.r                       ; 2 uses
  %i.v = shl i32 %i.g, 1
  %i.w = sub i32 %i.v, %i.s                       ; 2 uses
  %i.x = mul nsw i32 %.0.i.i, %.021.i.i
  %i.y = icmp sgt i32 %i.x, -1                    ; 2 uses
  %i.z = sub i32 0, %i.w
  %i.aa = sub i32 0, %i.u
  %.028.i.i = select i1 %i.y, i32 %i.z, i32 %i.w
  %.027.i.i = select i1 %i.y, i32 %i.aa, i32 %i.u
  %i.ab = add i32 %.028.i.i, %i.r
  %i.ac = add i32 %.027.i.i, %i.s
  %i.ad = sdiv i32 %i.ab, 2                       ; 2 uses
  store i32 %i.ad, ptr %2, align 4, !tbaa !117
  %i.ae = sdiv i32 %i.ac, 2                       ; 2 uses
  store i32 %i.ae, ptr %i.e, align 4, !tbaa !117
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.a, %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit
  %i.af = phi i32 [ %i.ae, %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit ], [ %i.g, %bb.a ] ; 9 uses
  %i.ag = phi i32 [ %i.ad, %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE13InvertDiamondEPiS2_.exit ], [ %i.d, %bb.a ] ; 6 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %bb.g

bb.g:                                             ; preds = %thread-pre-split
  %i.ai = icmp slt i32 %i.ag, 0
  br i1 %i.ai, label %.split, label %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE16GetRotationCountENS_7VectorDIiLi2EEE.exit.thread

bb.h:                                             ; preds = %thread-pre-split
  %i.aj = icmp eq i32 %i.af, 0
  br i1 %i.aj, label %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE16GetRotationCountENS_7VectorDIiLi2EEE.exit, label %.split60

.split60:                                         ; preds = %bb.h
  %.inv11.i = icmp slt i32 %i.af, 1
  br i1 %.inv11.i, label %.thread68, label %.thread89

_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE16GetRotationCountENS_7VectorDIiLi2EEE.exit.thread: ; preds = %bb.g
  %i.ak = icmp sgt i32 %i.af, -1
  br i1 %i.ak, label %.thread73, label %.thread68

.split:                                           ; preds = %bb.g
  %i.al = icmp slt i32 %i.af, 1
  %.inv.i = icmp sgt i32 %i.af, 0
  %.10.i = select i1 %.inv.i, i32 3, i32 0
  br i1 %i.al, label %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE16GetRotationCountENS_7VectorDIiLi2EEE.exit, label %.thread89

.thread73:                                        ; preds = %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE16GetRotationCountENS_7VectorDIiLi2EEE.exit.thread
  %i.am = sub nsw i32 0, %i.ag
  %i.an = sub nsw i32 0, %i.af
  br label %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE11RotatePointENS_7VectorDIiLi2EEEi.exit

.thread68:                                        ; preds = %.split60, %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE16GetRotationCountENS_7VectorDIiLi2EEE.exit.thread
  %i.ao = sub nsw i32 0, %i.ag
  br label %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE11RotatePointENS_7VectorDIiLi2EEEi.exit

.thread89:                                        ; preds = %.split, %.split60
  %i.ap = sub nsw i32 0, %i.af
  br label %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE11RotatePointENS_7VectorDIiLi2EEEi.exit

_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE11RotatePointENS_7VectorDIiLi2EEEi.exit: ; preds = %.thread68, %.thread73, %.thread89
  %.0.i75864 = phi i32 [ 3, %.thread89 ], [ 1, %.thread68 ], [ 2, %.thread73 ]
  %.sroa.037.0 = phi i32 [ %i.ap, %.thread89 ], [ %i.af, %.thread68 ], [ %i.am, %.thread73 ] ; 2 uses
  %.sroa.738.0 = phi i32 [ %i.ag, %.thread89 ], [ %i.ao, %.thread68 ], [ %i.an, %.thread73 ] ; 2 uses
  %.sroa.738.0.insert.ext = zext i32 %.sroa.738.0 to i64
  %.sroa.738.0.insert.shift = shl nuw i64 %.sroa.738.0.insert.ext, 32
  %.sroa.037.0.insert.ext = zext i32 %.sroa.037.0 to i64
  %.sroa.037.0.insert.insert = or disjoint i64 %.sroa.738.0.insert.shift, %.sroa.037.0.insert.ext
  store i64 %.sroa.037.0.insert.insert, ptr %2, align 4, !tbaa !157
  br label %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE16GetRotationCountENS_7VectorDIiLi2EEE.exit

_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE16GetRotationCountENS_7VectorDIiLi2EEE.exit: ; preds = %bb.h, %.split, %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE11RotatePointENS_7VectorDIiLi2EEEi.exit
  %i.aq = phi i32 [ %.sroa.738.0, %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE11RotatePointENS_7VectorDIiLi2EEEi.exit ], [ %i.af, %.split ], [ 0, %bb.h ]
  %i.ar = phi i32 [ %.sroa.037.0, %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE11RotatePointENS_7VectorDIiLi2EEEi.exit ], [ %i.ag, %.split ], [ 0, %bb.h ]
  %.0.i759 = phi i32 [ %.0.i75864, %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE11RotatePointENS_7VectorDIiLi2EEEi.exit ], [ %.10.i, %.split ], [ 0, %bb.h ]
  %.0.i5057 = phi i1 [ false, %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE11RotatePointENS_7VectorDIiLi2EEEi.exit ], [ true, %.split ], [ true, %bb.h ]
  %i.as = load i32, ptr %3, align 4, !tbaa !117
  %i.at = add i32 %i.as, %i.ar                    ; 5 uses
  %i.au = load i32, ptr %i.a, align 4, !tbaa !55  ; 6 uses
  %i.av = icmp sgt i32 %i.at, %i.au
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE16GetRotationCountENS_7VectorDIiLi2EEE.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !52
  %i.ay = sub nsw i32 %i.at, %i.ax
  br label %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE6ModMaxEi.exit

bb.j:                                             ; preds = %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE16GetRotationCountENS_7VectorDIiLi2EEE.exit
  %i.az = sub nsw i32 0, %i.au
  %i.ba = icmp slt i32 %i.at, %i.az
  br i1 %i.ba, label %bb.k, label %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE6ModMaxEi.exit

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !52
  %i.bd = add nsw i32 %i.bc, %i.at
  br label %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE6ModMaxEi.exit

_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE6ModMaxEi.exit: ; preds = %bb.i, %bb.j, %bb.k
  %.0.i.i8 = phi i32 [ %i.ay, %bb.i ], [ %i.bd, %bb.k ], [ %i.at, %bb.j ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !117
  %i.bg = add i32 %i.bf, %i.aq                    ; 5 uses
  %i.bh = icmp sgt i32 %i.bg, %i.au
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE6ModMaxEi.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !52
  %i.bk = sub nsw i32 %i.bg, %i.bj
  br label %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE6ModMaxEi.exit10

bb.m:                                             ; preds = %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE6ModMaxEi.exit
  %i.bl = sub nsw i32 0, %i.au
  %i.bm = icmp slt i32 %i.bg, %i.bl
  br i1 %i.bm, label %bb.n, label %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE6ModMaxEi.exit10

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !52
  %i.bp = add nsw i32 %i.bo, %i.bg
  br label %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE6ModMaxEi.exit10

_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE6ModMaxEi.exit10: ; preds = %bb.l, %bb.m, %bb.n
  %.0.i.i9 = phi i32 [ %i.bk, %bb.l ], [ %i.bp, %bb.n ], [ %i.bg, %bb.m ] ; 5 uses
  br i1 %.0.i5057, label %_ZNK5draco58PredictionSchemeNormalOctahedronCanonicalizedTransformBaseIiE11RotatePointENS_7VectorDIiLi2EEEi.exit11, label %bb.o

bb.o:                                             ; preds = %_ZNK5draco45PredictionSchemeNormalOctahedronTransformBaseIiE6ModMaxEi.exit10
end_hunk_2
begin_hunk_3_@_ZN5draco48MeshPredictionSchemeGeometricNormalPredictorAreaIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21ComputePredictedValueENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPi:bb.a
  br i1 %i.bu, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i31, label %bb.l

bb.l:                                             ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !526
  %i.bw = zext i32 %.sroa.076.0 to i64
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !127, !noalias !527
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !129, !noalias !527
  %i.ca = zext i32 %i.bz to i64
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i31

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i31: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, %bb.l, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %.sroa.075.0109 = phi i32 [ %.sroa.075.0, %bb.l ], [ %.sroa.075.0, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ -1, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread ] ; 2 uses
  %storemerge.i.i32 = phi i64 [ %i.ca, %bb.l ], [ 4294967295, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ 4294967295, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread ] ; 3 uses
  %i.cb = load ptr, ptr %i.m, align 8, !tbaa !165, !noalias !526 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !131, !noalias !526
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !132, !noalias !526 ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 2                 ; 2 uses
  %.not.i.i.i33 = icmp ult i64 %storemerge.i.i32, %i.ci
  br i1 %.not.i.i.i33, label %_ZNKSt6vectorIiSaIiEE2atEm.exit.i34, label %bb.m

bb.m:                                             ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i31
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %storemerge.i.i32, i64 noundef %i.ci) #16, !noalias !526
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit.i34:              ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i31
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %storemerge.i.i32
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !117, !noalias !526
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %i.cl = load ptr, ptr %i.x, align 8, !tbaa !173, !noalias !529
  %i.cm = sext i32 %i.ck to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !134, !noalias !529 ; 2 uses
  %i.cp = load ptr, ptr %i.ac, align 8, !tbaa !172, !noalias !529 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 100
  %i.cr = load i8, ptr %i.cq, align 4, !tbaa !152, !range !153, !noalias !530, !noundef !96
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit38, label %.else.i.i35

.else.i.i35:                                      ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit.i34
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 72
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !530
  %i.cv = zext i32 %i.co to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cv
  %storemerge.i.else.val.i.i36 = load i32, ptr %i.cw, align 4, !tbaa !117, !noalias !530
  br label %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit38

_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit38: ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit.i34, %.else.i.i35
  %storemerge.i.i.i37 = phi i32 [ %i.co, %_ZNKSt6vectorIiSaIiEE2atEm.exit.i34 ], [ %storemerge.i.else.val.i.i36, %.else.i.i35 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !tbaa !154, !alias.scope !529
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !529
  store i32 %storemerge.i.i.i37, ptr %4, align 4, !tbaa !156, !noalias !529
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !28, !noalias !529
  %i.cz = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.cp, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef signext %i.cy, ptr noundef nonnull align 8 %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !529
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.da = icmp eq i32 %.sroa.075.0109, -1
  br i1 %i.da, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i39, label %bb.n

bb.n:                                             ; preds = %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit38
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !161, !noalias !531
  %i.dc = zext i32 %.sroa.075.0109 to i64
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !127, !noalias !532
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.dc
  %i.df = load i32, ptr %i.de, align 4, !tbaa !129, !noalias !532
  %i.dg = zext i32 %i.df to i64
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i39

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i39: ; preds = %bb.n, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit38
  %storemerge.i.i40 = phi i64 [ %i.dg, %bb.n ], [ 4294967295, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit38 ] ; 3 uses
  %i.dh = load ptr, ptr %i.m, align 8, !tbaa !165, !noalias !531 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !131, !noalias !531
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !132, !noalias !531 ; 2 uses
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = ashr exact i64 %i.dn, 2                 ; 2 uses
  %.not.i.i.i41 = icmp ult i64 %storemerge.i.i40, %i.do
  br i1 %.not.i.i.i41, label %_ZNKSt6vectorIiSaIiEE2atEm.exit.i42, label %bb.o

bb.o:                                             ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i39
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %storemerge.i.i40, i64 noundef %i.do) #16, !noalias !531
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit.i42:              ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i39
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %storemerge.i.i40
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !117, !noalias !531
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.dr = load ptr, ptr %i.x, align 8, !tbaa !173, !noalias !534
  %i.ds = sext i32 %i.dq to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !134, !noalias !534 ; 2 uses
  %i.dv = load ptr, ptr %i.ac, align 8, !tbaa !172, !noalias !534 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 100
  %i.dx = load i8, ptr %i.dw, align 4, !tbaa !152, !range !153, !noalias !535, !noundef !96
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit46, label %.else.i.i43

.else.i.i43:                                      ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit.i42
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 72
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !535
  %i.eb = zext i32 %i.du to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.eb
  %storemerge.i.else.val.i.i44 = load i32, ptr %i.ec, align 4, !tbaa !117, !noalias !535
  br label %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit46

_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit46: ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit.i42, %.else.i.i43
  %storemerge.i.i.i45 = phi i32 [ %i.du, %_ZNKSt6vectorIiSaIiEE2atEm.exit.i42 ], [ %storemerge.i.else.val.i.i44, %.else.i.i43 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !tbaa !154, !alias.scope !534
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !534
  store i32 %storemerge.i.i.i45, ptr %3, align 4, !tbaa !156, !noalias !534
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !28, !noalias !534
  %i.ef = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.dv, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %3, i8 noundef signext %i.ee, ptr noundef nonnull align 8 %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !534
  %i.eg = load i64, ptr %8, align 8, !tbaa !154, !noalias !536
  %i.eh = load i64, ptr %7, align 8, !tbaa !154, !noalias !536 ; 2 uses
  %i.ei = sub nsw i64 %i.eg, %i.eh                ; 2 uses
  %i.ej = load i64, ptr %i.ar, align 8, !tbaa !154, !noalias !536
  %i.ek = load i64, ptr %i.as, align 8, !tbaa !154, !noalias !536 ; 2 uses
  %i.el = sub nsw i64 %i.ej, %i.ek                ; 2 uses
  %i.em = load i64, ptr %i.at, align 8, !tbaa !154, !noalias !536
  %i.en = load i64, ptr %i.au, align 8, !tbaa !154, !noalias !536 ; 2 uses
  %i.eo = sub nsw i64 %i.em, %i.en                ; 2 uses
  %i.ep = load i64, ptr %9, align 8, !tbaa !154, !noalias !537
  %i.eq = sub nsw i64 %i.ep, %i.eh                ; 2 uses
  %i.er = load i64, ptr %i.av, align 8, !tbaa !154, !noalias !537
  %i.es = sub nsw i64 %i.er, %i.ek                ; 2 uses
  %i.et = load i64, ptr %i.aw, align 8, !tbaa !154, !noalias !537
  %i.eu = sub nsw i64 %i.et, %i.en                ; 2 uses
  %i.ev = mul nsw i64 %i.eu, %i.el
  %i.ew = mul nsw i64 %i.es, %i.eo
  %i.ex = mul nsw i64 %i.eq, %i.eo
  %i.ey = mul nsw i64 %i.eu, %i.ei
  %i.ez = mul nsw i64 %i.es, %i.ei
  %i.fa = mul nsw i64 %i.eq, %i.el
  %i.fb = sub i64 %.sroa.077.0126, %i.ew
  %i.fc = add i64 %i.fb, %i.ev                    ; 2 uses
  %i.fd = add i64 %i.ex, %.sroa.12.0125
  %i.fe = sub i64 %i.fd, %i.ey                    ; 2 uses
  %i.ff = sub i64 %.sroa.21.0124, %i.fa
  %i.fg = add i64 %i.ff, %i.ez                    ; 2 uses
  call void @_ZN5draco21VertexCornersIteratorINS_11CornerTableEE4NextEv(ptr noundef nonnull align 8 dereferenceable(17) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.fh = load i32, ptr %i.e, align 4, !tbaa !119 ; 2 uses
  %i.fi = icmp eq i32 %i.fh, -1
  br i1 %i.fi, label %._crit_edge, label %bb.d, !llvm.loop !520

._crit_edge:                                      ; preds = %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit46, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %.sroa.21.0.lcssa = phi i64 [ 0, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %i.fg, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit46 ] ; 6 uses
  %.sroa.12.0.lcssa = phi i64 [ 0, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %i.fe, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit46 ] ; 5 uses
  %.sroa.077.0.lcssa = phi i64 [ 0, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %i.fc, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit46 ] ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !169
  %i.fl = icmp eq i32 %i.fk, 0
  %i.fm = call noundef i64 @llvm.abs.i64(i64 %.sroa.077.0.lcssa, i1 true) ; 3 uses
  %i.fn = call noundef i64 @llvm.abs.i64(i64 %.sroa.12.0.lcssa, i1 true) ; 3 uses
  %i.fo = xor i64 %i.fn, 9223372036854775807
  %.not.1.i = icmp samesign ugt i64 %i.fm, %i.fo  ; 2 uses
  br i1 %i.fl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge
  br i1 %.not.1.i, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit

_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit:          ; preds = %bb.p
  %i.fp = add nuw nsw i64 %i.fm, %i.fn            ; 2 uses
  %i.fq = call noundef i64 @llvm.abs.i64(i64 %.sroa.21.0.lcssa, i1 true) ; 2 uses
  %i.fr = xor i64 %i.fq, 9223372036854775807
  %.not.2.i = icmp samesign ugt i64 %i.fp, %i.fr
  %i.fs = add nuw nsw i64 %i.fp, %i.fq
  %i.ft = shl i64 %i.fs, 32
  %i.fu = ashr exact i64 %i.ft, 32
  %i.fv = select i1 %.not.2.i, i64 -1, i64 %i.fu  ; 2 uses
  %i.fw = icmp sgt i64 %i.fv, 536870912
  br i1 %i.fw, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread

bb.q:                                             ; preds = %._crit_edge
  br i1 %.not.1.i, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fx = add nuw nsw i64 %i.fm, %i.fn            ; 2 uses
  %i.fy = call noundef i64 @llvm.abs.i64(i64 %.sroa.21.0.lcssa, i1 true) ; 2 uses
  %i.fz = xor i64 %i.fy, 9223372036854775807
  %.not.2.i49 = icmp samesign ugt i64 %i.fx, %i.fz
  br i1 %.not.2.i49, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit52

_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit52:        ; preds = %bb.r
  %i.ga = add nuw nsw i64 %i.fx, %i.fy            ; 2 uses
  %i.gb = icmp samesign ugt i64 %i.ga, 536870912
  br i1 %i.gb, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split, label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread

_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split: ; preds = %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit52, %bb.q, %bb.r, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit
  %spec.select.i51112.sink = phi i64 [ %i.fv, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit ], [ %i.ga, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit52 ], [ 9223372036854775807, %bb.q ], [ 9223372036854775807, %bb.r ]
  %i.gc = lshr i64 %spec.select.i51112.sink, 29   ; 3 uses
  %i.gd = sdiv i64 %.sroa.077.0.lcssa, %i.gc
  %i.ge = sdiv i64 %.sroa.12.0.lcssa, %i.gc
  %i.gf = sdiv i64 %.sroa.21.0.lcssa, %i.gc
  br label %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread

_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread:   ; preds = %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split, %bb.p, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit52, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit
  %.sroa.21.1 = phi i64 [ %.sroa.21.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit52 ], [ %.sroa.21.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit ], [ %.sroa.21.0.lcssa, %bb.p ], [ %i.gf, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split ]
  %.sroa.12.1 = phi i64 [ %.sroa.12.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit52 ], [ %.sroa.12.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit ], [ %.sroa.12.0.lcssa, %bb.p ], [ %i.ge, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split ]
  %.sroa.077.1 = phi i64 [ %.sroa.077.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit52 ], [ %.sroa.077.0.lcssa, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit ], [ %.sroa.077.0.lcssa, %bb.p ], [ %i.gd, %_ZNK5draco7VectorDIlLi3EE6AbsSumEv.exit.thread.sink.split ]
  %i.gg = trunc i64 %.sroa.077.1 to i32
  store i32 %i.gg, ptr %2, align 4, !tbaa !117
  %i.gh = trunc i64 %.sroa.12.1 to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !117
  %i.gj = trunc i64 %.sroa.21.1 to i32
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco25PredictionSchemeInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco28PredictionSchemeDeltaDecoderIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco28PredictionSchemeDeltaDecoderIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEEE19GetPredictionMethodEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco28PredictionSchemeDeltaDecoderIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEEE13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco28PredictionSchemeDeltaDecoderIiNS_62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiEEE21ComputeOriginalValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.draco::VectorD.111", align 8 ; 4 uses
  %7 = alloca %"class.draco::VectorD.111", align 8 ; 4 uses
  %8 = alloca %"class.draco::VectorD.111", align 8 ; 4 uses
  %9 = alloca %"class.draco::VectorD.111", align 8 ; 4 uses
  %10 = alloca %"class.draco::VectorD.111", align 8 ; 4 uses
  %11 = alloca %"class.draco::VectorD.111", align 8 ; 4 uses
  %i.a = sext i32 %4 to i64                       ; 4 uses
  %i.b = icmp slt i32 %4, 0
  %i.c = shl nsw i64 %i.a, 2
  %i.d = select i1 %i.b, i64 -1, i64 %i.c         ; 2 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #15 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 %i.d, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.g = load <2 x i32>, ptr %i.e, align 4, !tbaa !117
  store <2 x i32> %i.g, ptr %10, align 8, !tbaa !117
  %i.h = load <2 x i32>, ptr %1, align 4, !tbaa !117
  store <2 x i32> %i.h, ptr %11, align 8, !tbaa !117
  invoke void @_ZNK5draco62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiE20ComputeOriginalValueENS_7VectorDIiLi2EEES3_(ptr dead_on_unwind nonnull writable sret(%"class.draco::VectorD.111") align 4 %9, ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(8) %10, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(8) %11)
          to label %_ZNK5draco62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiE20ComputeOriginalValueEPKiS3_Pi.exit unwind label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK5draco62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiE20ComputeOriginalValueEPKiS3_Pi.exit: ; preds = %bb.a
  %i.i = load <2 x i32>, ptr %9, align 8, !tbaa !117
  store <2 x i32> %i.i, ptr %2, align 4, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.j = icmp slt i32 %4, %3
  br i1 %i.j, label %.lr.ph, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit

.lr.ph:                                           ; preds = %_ZNK5draco62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiE20ComputeOriginalValueEPKiS3_Pi.exit
  %i.k = sub nsw i64 0, %i.a
  %i.l = sext i32 %3 to i64
  br label %bb.b

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.c, %_ZNK5draco62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiE20ComputeOriginalValueEPKiS3_Pi.exit
  call void @_ZdaPv(ptr noundef nonnull %i.e) #14
  ret i1 true

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.a, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.k
  %i.o = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.p = load <2 x i32>, ptr %i.n, align 4, !tbaa !117
  store <2 x i32> %i.p, ptr %7, align 8, !tbaa !117
  %i.q = load <2 x i32>, ptr %i.o, align 4, !tbaa !117
  store <2 x i32> %i.q, ptr %8, align 8, !tbaa !117
  invoke void @_ZNK5draco62PredictionSchemeNormalOctahedronCanonicalizedDecodingTransformIiE20ComputeOriginalValueENS_7VectorDIiLi2EEES3_(ptr dead_on_unwind nonnull writable sret(%"class.draco::VectorD.111") align 4 %6, ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(8) %7, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(8) %8)
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.r = load <2 x i32>, ptr %6, align 8, !tbaa !117
  store <2 x i32> %i.r, ptr %i.m, align 4, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.a ; 2 uses
  %i.s = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.s, label %bb.b, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, !llvm.loop !538

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit24.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %bb.a
  %lpad.loopexit.split-lp30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.e) #14
  resume { ptr, i32 } %lpad.loopexit.split-lp30
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"vtable pointer", !3, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 _ZTSN5draco17PointCloudDecoderE", !10, i64 0}
!12 = !{!"p1 _ZTSN5draco14PointAttributeE", !10, i64 0}
!13 = !{!"_ZTSSt10_Head_baseILm0EPN5draco14PointAttributeELb0EE", !12, i64 0}
!14 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco14PointAttributeESt14default_deleteIS1_EEE", !13, i64 0}
!15 = !{!"_ZTSSt5tupleIJPN5draco14PointAttributeESt14default_deleteIS1_EEE", !14, i64 0}
!16 = !{!"_ZTSSt15__uniq_ptr_implIN5draco14PointAttributeESt14default_deleteIS1_EE", !15, i64 0}
!17 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco14PointAttributeESt14default_deleteIS1_ELb1ELb1EE", !16, i64 0}
!18 = !{!"_ZTSSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EE", !17, i64 0}
!19 = !{!"_ZTSN5draco26SequentialAttributeDecoderE", !11, i64 8, !12, i64 16, !5, i64 24, !18, i64 32}
!20 = !{!19, !12, i64 16}
!21 = !{!"p1 _ZTSN5draco10DataBufferE", !10, i64 0}
!22 = !{!"long", !4, i64 0}
!23 = !{!"_ZTSN5draco20DataBufferDescriptorE", !22, i64 0, !22, i64 8}
!24 = !{!"_ZTSN5draco8DataTypeE", !4, i64 0}
!25 = !{!"bool", !4, i64 0}
!26 = !{!"_ZTSN5draco17GeometryAttribute4TypeE", !4, i64 0}
!27 = !{!"_ZTSN5draco17GeometryAttributeE", !21, i64 0, !23, i64 8, !4, i64 24, !24, i64 28, !25, i64 32, !22, i64 40, !22, i64 48, !26, i64 56, !5, i64 60}
!28 = !{!27, !4, i64 24}
!29 = !{!27, !24, i64 28}
!30 = !{!19, !11, i64 8}
!31 = !{!"p1 _ZTSN5draco10PointCloudE", !10, i64 0}
!32 = !{!"p1 _ZTSSt10unique_ptrIN5draco26AttributesDecoderInterfaceESt14default_deleteIS1_EE", !10, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco26AttributesDecoderInterfaceESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco26AttributesDecoderInterfaceESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !33, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN5draco26AttributesDecoderInterfaceESt14default_deleteIS2_EESaIS5_EE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorISt10unique_ptrIN5draco26AttributesDecoderInterfaceESt14default_deleteIS2_EESaIS5_EE", !35, i64 0}
!37 = !{!"p1 int", !10, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !38, i64 0}
!40 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !39, i64 0}
!41 = !{!"_ZTSSt6vectorIiSaIiEE", !40, i64 0}
end_hunk_3
