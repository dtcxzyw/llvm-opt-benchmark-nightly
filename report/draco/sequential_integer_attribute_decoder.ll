Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_integer_attribute_decoder?download=true
inline.NumInlined: 2410
inline.NumDeleted: 886
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputePredictedValueENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKii:bb.a
  br label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sink.i.i157 = phi i32 [ %spec.select.i.i, %bb.c ], [ %spec.select.i.i, %bb.d ], [ -1, %bb.a ]
  %.sink.i.i87 = phi i32 [ %i.k, %bb.c ], [ %i.l, %bb.d ], [ -1, %bb.a ]
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = zext i32 %.sink.i.i157 to i64
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !204, !noalias !461 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  %i.r = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !461
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !129  ; 2 uses
  %i.u = sext i32 %i.r to i64                     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !118
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !58   ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2                 ; 4 uses
  %.not.i.i88 = icmp ugt i64 %i.ab, %i.u
  br i1 %.not.i.i88, label %_ZNKSt6vectorIiSaIiEE2atEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.u, i64 noundef %i.ab) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit:                  ; preds = %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.ac = zext i32 %.sink.i.i87 to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !206, !noalias !462
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.u
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !102 ; 4 uses
  %i.ah = sext i32 %i.ae to i64                   ; 3 uses
  %.not.i.i89 = icmp ugt i64 %i.ab, %i.ah
  br i1 %.not.i.i89, label %_ZNKSt6vectorIiSaIiEE2atEm.exit90, label %bb.f

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.ah, i64 noundef %i.ab) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit90:                ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !102 ; 3 uses
  %i.ak = icmp slt i32 %i.aj, %3
  %i.al = icmp slt i32 %i.ag, %3                  ; 2 uses
  %or.cond85 = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond85, label %bb.g, label %bb.q

bb.g:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit90
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.an = load i32, ptr %i.am, align 8, !tbaa !211, !noalias !463 ; 2 uses
  %i.ao = mul nsw i32 %i.an, %i.ag
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ap
  %i.ar = load <2 x i32>, ptr %i.aq, align 4, !tbaa !102, !noalias !463
  %i.as = sitofp <2 x i32> %i.ar to <2 x float>   ; 4 uses
  %i.at = mul nsw i32 %i.an, %i.aj
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %2, i64 %i.au
  %i.aw = load <2 x i32>, ptr %i.av, align 4, !tbaa !102, !noalias !464
  %i.ax = sitofp <2 x i32> %i.aw to <2 x float>   ; 5 uses
  %i.ay = extractelement <2 x float> %i.ax, i64 0 ; 2 uses
  %i.az = extractelement <2 x float> %i.as, i64 0
  %i.ba = fcmp oeq float %i.ay, %i.az
  %i.bb = extractelement <2 x float> %i.ax, i64 1 ; 2 uses
  %i.bc = extractelement <2 x float> %i.as, i64 1
  %i.bd = fcmp oeq float %i.bb, %i.bc
  %.lcssa.i = select i1 %i.ba, i1 %i.bd, i1 false
  br i1 %.lcssa.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bf = fpext <2 x float> %i.ax to <2 x double>
  %i.bg = fptosi float %i.ay to i32
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !161 ; 3 uses
  %i.bi = fcmp ogt <2 x double> %i.bf, splat (double f0x41DFFFFFFFC00000)
  %i.bj = fcmp olt <2 x float> %i.ax, splat (float f0xCF000000)
  %i.bk = or <2 x i1> %i.bj, %i.bi                ; 2 uses
  %i.bl = extractelement <2 x i1> %i.bk, i64 0
  %.sink = select i1 %i.bl, i32 -2147483648, i32 %i.bg
  store i32 %.sink, ptr %i.bh, align 4, !tbaa !102
  %i.bm = extractelement <2 x i1> %i.bk, i64 1
  br i1 %i.bm, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = fptosi float %i.bb to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !102
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 -2147483648, ptr %i.bp, align 4, !tbaa !102
  br label %.loopexit

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !212, !noalias !465
  %i.bs = sext i32 %3 to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !214, !noalias !465 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false), !tbaa !215, !alias.scope !465
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !210, !noalias !465 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 100
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !98, !range !216, !noalias !466, !noundef !217
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit, label %.else.i

.else.i:                                          ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !466
  %i.cc = zext i32 %i.bu to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cc
  %storemerge.i.else.val.i = load i32, ptr %i.cd, align 4, !tbaa !102, !noalias !466
  br label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit

_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit: ; preds = %bb.k, %.else.i
  %storemerge.i.i = phi i32 [ %i.bu, %bb.k ], [ %storemerge.i.else.val.i, %.else.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !465
  store i32 %storemerge.i.i, ptr %6, align 4, !tbaa !219, !noalias !465
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !101, !noalias !465
  %i.cg = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIfEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.bw, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6, i8 noundef signext %i.cf, ptr noundef nonnull align 4 %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !465
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.ch = load ptr, ptr %i.bq, align 8, !tbaa !212, !noalias !467
  %i.ci = sext i32 %i.ag to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !214, !noalias !467 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false), !tbaa !215, !alias.scope !467
  %i.cl = load ptr, ptr %i.bv, align 8, !tbaa !210, !noalias !467 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 100
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !98, !range !216, !noalias !468, !noundef !217
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit94, label %.else.i91

.else.i91:                                        ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !468
  %i.cr = zext i32 %i.ck to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cr
  %storemerge.i.else.val.i92 = load i32, ptr %i.cs, align 4, !tbaa !102, !noalias !468
  br label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit94

_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit94: ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit, %.else.i91
  %storemerge.i.i93 = phi i32 [ %i.ck, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit ], [ %storemerge.i.else.val.i92, %.else.i91 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !467
  store i32 %storemerge.i.i93, ptr %5, align 4, !tbaa !219, !noalias !467
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !101, !noalias !467
  %i.cv = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIfEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.cl, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5, i8 noundef signext %i.cu, ptr noundef nonnull align 4 %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !467
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.cw = load ptr, ptr %i.bq, align 8, !tbaa !212, !noalias !469
  %i.cx = sext i32 %i.aj to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !214, !noalias !469 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false), !tbaa !215, !alias.scope !469
  %i.da = load ptr, ptr %i.bv, align 8, !tbaa !210, !noalias !469 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 100
  %i.dc = load i8, ptr %i.db, align 4, !tbaa !98, !range !216, !noalias !470, !noundef !217
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit98, label %.else.i95

.else.i95:                                        ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit94
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  %i.df = load ptr, ptr %i.de, align 8, !noalias !470
  %i.dg = zext i32 %i.cz to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dg
  %storemerge.i.else.val.i96 = load i32, ptr %i.dh, align 4, !tbaa !102, !noalias !470
  br label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit98

_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit98: ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit94, %.else.i95
  %storemerge.i.i97 = phi i32 [ %i.cz, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit94 ], [ %storemerge.i.else.val.i96, %.else.i95 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !469
  store i32 %storemerge.i.i97, ptr %4, align 4, !tbaa !219, !noalias !469
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !101, !noalias !469
  %i.dk = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIfEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.da, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef signext %i.dj, ptr noundef nonnull align 4 %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !469
  %i.dl = load float, ptr %9, align 4, !tbaa !215, !noalias !471
  %i.dm = load float, ptr %8, align 4, !tbaa !215, !noalias !471 ; 2 uses
  %i.dn = fsub float %i.dl, %i.dm                 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !215, !noalias !471
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !215, !noalias !471 ; 2 uses
  %i.ds = fsub float %i.dp, %i.dr                 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.du = load float, ptr %i.dt, align 4, !tbaa !215, !noalias !471
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !215, !noalias !471 ; 2 uses
  %i.dx = fsub float %i.du, %i.dw                 ; 4 uses
  %10 = fmul float %i.dn, %i.dn
  %i.dy = call float @llvm.fmuladd.f32(float %i.ds, float %i.ds, float %10)
  %i.dz = call noundef float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float %i.dy) ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !160
  %i.ec = icmp slt i32 %i.eb, 258
  %i.ed = fcmp ogt float %i.dz, 0.000000e+00
  %or.cond = or i1 %i.ec, %i.ed
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit98
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !215, !noalias !472
  %i.eg = fsub float %i.ef, %i.dw                 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !215, !noalias !472
  %i.ej = fsub float %i.ei, %i.dr                 ; 2 uses
  %i.ek = load float, ptr %7, align 4, !tbaa !215, !noalias !472
  %i.el = fsub float %i.ek, %i.dm                 ; 2 uses
  %i.em = call float @llvm.fmuladd.f32(float %i.dn, float %i.el, float 0.000000e+00)
  %i.en = call float @llvm.fmuladd.f32(float %i.ds, float %i.ej, float %i.em)
  %i.eo = call noundef float @llvm.fmuladd.f32(float %i.dx, float %i.eg, float %i.en)
  %i.ep = fdiv float %i.eo, %i.dz                 ; 4 uses
  %i.eq = fmul float %i.dn, %i.ep
  %i.er = fmul float %i.ds, %i.ep
  %i.es = fmul float %i.dx, %i.ep
  %i.et = fsub float %i.el, %i.eq                 ; 2 uses
  %i.eu = fsub float %i.ej, %i.er                 ; 2 uses
  %i.ev = fsub float %i.eg, %i.es                 ; 2 uses
  %11 = fmul float %i.et, %i.et
  %i.ew = call float @llvm.fmuladd.f32(float %i.eu, float %i.eu, float %11)
  %i.ex = call noundef float @llvm.fmuladd.f32(float %i.ev, float %i.ev, float %i.ew)
  %i.ey = fdiv float %i.ex, %i.dz
  %i.ez = call noundef float @sqrtf(float noundef %i.ey) #17
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit98, %bb.l
  %.0155 = phi float [ %i.ep, %bb.l ], [ 0.000000e+00, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit98 ]
  %.076 = phi float [ %i.ez, %bb.l ], [ 0.000000e+00, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit98 ] ; 2 uses
  %i.fa = fsub <2 x float> %i.ax, %i.as           ; 3 uses
  %i.fb = extractelement <2 x float> %i.fa, i64 0
  %i.fc = fmul float %i.fb, %.076                 ; 2 uses
  %i.fd = insertelement <2 x float> poison, float %.0155, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> %i.fe, <2 x float> %i.as)
  %i.fg = extractelement <2 x float> %i.fa, i64 1
  %i.fh = fmul float %i.fg, %.076                 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !143
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !143 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !144 ; 3 uses
  %i.fo = icmp ne ptr %i.fj, %i.fl
  %i.fp = icmp ne i32 %i.fn, 0                    ; 2 uses
  %.not164 = select i1 %i.fo, i1 true, i1 %i.fp   ; 2 uses
  br i1 %.not164, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.fq = zext i32 %i.fn to i64
  %i.fr = add nsw i64 %i.fq, -1                   ; 3 uses
  %i.fs = sdiv i64 %i.fr, 64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fs
  %i.fu = and i64 %i.fr, -9223372036854775745
  %i.fv = icmp ugt i64 %i.fu, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.fv, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ft, i64 %storemerge.idx.i.i.i.i.i
  %i.fw = and i64 %i.fr, 63
  %i.fx = shl nuw i64 1, %i.fw
  %i.fy = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !186
  %i.fz = and i64 %i.fy, %i.fx
  %.not161 = icmp eq i64 %i.fz, 0                 ; 2 uses
  %i.ga = add i32 %i.fn, -1
  store i32 %i.ga, ptr %i.fm, align 8, !tbaa !144
  br i1 %i.fp, label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 63, ptr %i.fm, align 8, !tbaa !144
  %i.gb = getelementptr inbounds i8, ptr %i.fl, i64 -8
  store ptr %i.gb, ptr %i.fk, align 8, !tbaa !143
  br label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit

_ZNSt6vectorIbSaIbEE8pop_backEv.exit:             ; preds = %bb.n, %bb.o
  %i.gc = fneg float %i.fc
  %i.gd = fneg float %i.fh
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !161
  %.sroa.6.0.p = select i1 %.not161, float %i.gc, float %i.fc
  %.sroa.0111.0.p = select i1 %.not161, float %i.fh, float %i.gd
  %i.gg = insertelement <2 x float> poison, float %.sroa.0111.0.p, i64 0
  %i.gh = insertelement <2 x float> %i.gg, float %.sroa.6.0.p, i64 1
  %i.gi = fadd <2 x float> %i.ff, %i.gh
  %i.gj = fpext <2 x float> %i.gi to <2 x double>
  %i.gk = fadd <2 x double> %i.gj, splat (double 5.000000e-01)
  %i.gl = call <2 x double> @llvm.floor.v2f64(<2 x double> %i.gk) ; 4 uses
  %i.gm = fcmp uno <2 x double> %i.gl, zeroinitializer
  %i.gn = fcmp ogt <2 x double> %i.gl, splat (double f0x41DFFFFFFFC00000)
  %i.go = or <2 x i1> %i.gm, %i.gn
  %i.gp = fcmp olt <2 x double> %i.gl, splat (double f0xC1E0000000000000)
  %i.gq = or <2 x i1> %i.gp, %i.go
  %i.gr = fptosi <2 x double> %i.gl to <2 x i32>
  %i.gs = select <2 x i1> %i.gq, <2 x i32> splat (i32 -2147483648), <2 x i32> %i.gr
  store <2 x i32> %i.gs, ptr %i.gf, align 4, !tbaa !102
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.loopexit

bb.q:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit90
  br i1 %i.al, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gt = icmp sgt i32 %3, 0
  br i1 %i.gt, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.r
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !211
  %i.gw = icmp sgt i32 %i.gv, 0
  br i1 %i.gw, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !161
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gz = add nsw i32 %3, -1
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv
  store i32 0, ptr %i.ha, align 4, !tbaa !102
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hb = load i32, ptr %i.gu, align 8, !tbaa !211
  %i.hc = sext i32 %i.hb to i64
  %i.hd = icmp slt i64 %indvars.iv.next, %i.hc
  br i1 %i.hd, label %bb.t, label %.loopexit, !llvm.loop !459

bb.u:                                             ; preds = %bb.q, %bb.s
  %.sink197 = phi i32 [ %i.gz, %bb.s ], [ %i.ag, %bb.q ]
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !211 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hh = icmp sgt i32 %i.hf, 0
  br i1 %i.hh, label %.lr.ph168, label %.loopexit

.lr.ph168:                                        ; preds = %bb.u
  %i.hi = mul nsw i32 %i.hf, %.sink197
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !161
  %i.hl = sext i32 %i.hi to i64
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.hl
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph168, %bb.v
  %indvars.iv172 = phi i64 [ 0, %.lr.ph168 ], [ %indvars.iv.next173, %bb.v ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv172
  %i.hm = load i32, ptr %gep, align 4, !tbaa !102
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv172
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !102
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.ho = load i32, ptr %i.hg, align 8, !tbaa !211
  %i.hp = sext i32 %i.ho to i64
  %i.hq = icmp slt i64 %indvars.iv.next173, %i.hp
  br i1 %i.hq, label %bb.v, label %.loopexit, !llvm.loop !460

.loopexit:                                        ; preds = %bb.t, %bb.v, %bb.p, %bb.j, %bb.i, %.preheader, %bb.u
  %.3 = phi i1 [ true, %bb.v ], [ true, %bb.u ], [ true, %.preheader ], [ true, %bb.i ], [ %.not164, %bb.p ], [ true, %bb.j ], [ true, %bb.t ]
  ret i1 %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIfEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, i8 noundef signext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !100
  switch i32 %i.c, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit [
    i32 1, label %bb.c
    i32 2, label %bb.f
    i32 3, label %bb.i
    i32 4, label %bb.l
    i32 5, label %bb.o
    i32 6, label %bb.r
    i32 7, label %bb.u
    i32 8, label %bb.x
    i32 9, label %bb.aa
    i32 10, label %bb.ad
    i32 11, label %bb.ag
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %1, align 4, !tbaa !219
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !220
  %i.i = zext i32 %i.d to i64
  %i.j = mul nsw i64 %i.h, %i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !90     ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92
  %i.m = getelementptr i8, ptr %i.l, i64 %i.j
  %i.n = getelementptr i8, ptr %i.m, i64 %i.f     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !103   ; 2 uses
  %.sroa.speculated29.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.p)
  %.not30.i = icmp eq i8 %.sroa.speculated29.i, 0
  br i1 %.not30.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !94   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i8, ptr %i.s, align 8, !range !216
  %.fr47.i = freeze i8 %i.t
  %i.u = trunc i8 %.fr47.i to i1
  %i.v = icmp ugt ptr %i.r, %i.n                  ; 2 uses
  br i1 %i.u, label %.lr.ph.split.us.i, label %.lr.ph.split.i

end_hunk_0
begin_hunk_1_@_ZN5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21ComputePredictedValueENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKii:bb.a
  %storemerge.i = phi i32 [ %i.p, %bb.b ], [ -1, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ] ; 2 uses
  %i.q = icmp eq i32 %.sink.i87, -1
  br i1 %i.q, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit89, label %bb.c

bb.c:                                             ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.r = zext i32 %.sink.i87 to i64
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !204, !noalias !759
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  %i.u = load i32, ptr %i.t, align 4, !tbaa !206, !noalias !759
  %i.v = sext i32 %i.u to i64
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit89

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit89: ; preds = %bb.a, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %bb.c
  %storemerge.i164 = phi i32 [ %storemerge.i, %bb.c ], [ %storemerge.i, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ -1, %bb.a ]
  %storemerge.i88 = phi i64 [ %i.v, %bb.c ], [ -1, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ -1, %bb.a ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !135  ; 2 uses
  %i.y = sext i32 %storemerge.i164 to i64         ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !118
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !58  ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 2                 ; 4 uses
  %.not.i.i = icmp ugt i64 %i.af, %i.y
  br i1 %.not.i.i, label %_ZNKSt6vectorIiSaIiEE2atEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit89
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.y, i64 noundef %i.af) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit:                  ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit89
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.y
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !102 ; 4 uses
  %.not.i.i90 = icmp ult i64 %storemerge.i88, %i.af
  br i1 %.not.i.i90, label %_ZNKSt6vectorIiSaIiEE2atEm.exit91, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %storemerge.i88, i64 noundef %i.af) #20
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit91:                ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %storemerge.i88
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !102 ; 3 uses
  %i.ak = icmp slt i32 %i.aj, %3
  %i.al = icmp slt i32 %i.ah, %3                  ; 2 uses
  %or.cond85 = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond85, label %bb.f, label %bb.p

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit91
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.an = load i32, ptr %i.am, align 8, !tbaa !240, !noalias !760 ; 2 uses
  %i.ao = mul nsw i32 %i.an, %i.ah
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ap
  %i.ar = load <2 x i32>, ptr %i.aq, align 4, !tbaa !102, !noalias !760
  %i.as = sitofp <2 x i32> %i.ar to <2 x float>   ; 4 uses
  %i.at = mul nsw i32 %i.an, %i.aj
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %2, i64 %i.au
  %i.aw = load <2 x i32>, ptr %i.av, align 4, !tbaa !102, !noalias !761
  %i.ax = sitofp <2 x i32> %i.aw to <2 x float>   ; 5 uses
  %i.ay = extractelement <2 x float> %i.ax, i64 0 ; 2 uses
  %i.az = extractelement <2 x float> %i.as, i64 0
  %i.ba = fcmp oeq float %i.ay, %i.az
  %i.bb = extractelement <2 x float> %i.ax, i64 1 ; 2 uses
  %i.bc = extractelement <2 x float> %i.as, i64 1
  %i.bd = fcmp oeq float %i.bb, %i.bc
  %.lcssa.i = select i1 %i.ba, i1 %i.bd, i1 false
  br i1 %.lcssa.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bf = fpext <2 x float> %i.ax to <2 x double>
  %i.bg = fptosi float %i.ay to i32
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !161 ; 3 uses
  %i.bi = fcmp ogt <2 x double> %i.bf, splat (double f0x41DFFFFFFFC00000)
  %i.bj = fcmp olt <2 x float> %i.ax, splat (float f0xCF000000)
  %i.bk = or <2 x i1> %i.bj, %i.bi                ; 2 uses
  %i.bl = extractelement <2 x i1> %i.bk, i64 0
  %.sink = select i1 %i.bl, i32 -2147483648, i32 %i.bg
  store i32 %.sink, ptr %i.bh, align 4, !tbaa !102
  %i.bm = extractelement <2 x i1> %i.bk, i64 1
  br i1 %i.bm, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = fptosi float %i.bb to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !102
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 -2147483648, ptr %i.bp, align 4, !tbaa !102
  br label %.loopexit

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !241, !noalias !762
  %i.bs = sext i32 %3 to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !214, !noalias !762 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false), !tbaa !215, !alias.scope !762
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !239, !noalias !762 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 100
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !98, !range !216, !noalias !763, !noundef !217
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit, label %.else.i

.else.i:                                          ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !763
  %i.cc = zext i32 %i.bu to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cc
  %storemerge.i.else.val.i = load i32, ptr %i.cd, align 4, !tbaa !102, !noalias !763
  br label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit

_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit: ; preds = %bb.j, %.else.i
  %storemerge.i.i = phi i32 [ %i.bu, %bb.j ], [ %storemerge.i.else.val.i, %.else.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !762
  store i32 %storemerge.i.i, ptr %6, align 4, !tbaa !219, !noalias !762
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !101, !noalias !762
  %i.cg = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIfEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.bw, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %6, i8 noundef signext %i.cf, ptr noundef nonnull align 4 %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !762
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.ch = load ptr, ptr %i.bq, align 8, !tbaa !241, !noalias !764
  %i.ci = sext i32 %i.ah to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !214, !noalias !764 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false), !tbaa !215, !alias.scope !764
  %i.cl = load ptr, ptr %i.bv, align 8, !tbaa !239, !noalias !764 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 100
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !98, !range !216, !noalias !765, !noundef !217
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit95, label %.else.i92

.else.i92:                                        ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !765
  %i.cr = zext i32 %i.ck to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cr
  %storemerge.i.else.val.i93 = load i32, ptr %i.cs, align 4, !tbaa !102, !noalias !765
  br label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit95

_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit95: ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit, %.else.i92
  %storemerge.i.i94 = phi i32 [ %i.ck, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit ], [ %storemerge.i.else.val.i93, %.else.i92 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !764
  store i32 %storemerge.i.i94, ptr %5, align 4, !tbaa !219, !noalias !764
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !101, !noalias !764
  %i.cv = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIfEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.cl, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5, i8 noundef signext %i.cu, ptr noundef nonnull align 4 %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !764
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !766)
  %i.cw = load ptr, ptr %i.bq, align 8, !tbaa !241, !noalias !766
  %i.cx = sext i32 %i.aj to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !214, !noalias !766 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false), !tbaa !215, !alias.scope !766
  %i.da = load ptr, ptr %i.bv, align 8, !tbaa !239, !noalias !766 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 100
  %i.dc = load i8, ptr %i.db, align 4, !tbaa !98, !range !216, !noalias !767, !noundef !217
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit99, label %.else.i96

.else.i96:                                        ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit95
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  %i.df = load ptr, ptr %i.de, align 8, !noalias !767
  %i.dg = zext i32 %i.cz to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dg
  %storemerge.i.else.val.i97 = load i32, ptr %i.dh, align 4, !tbaa !102, !noalias !767
  br label %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit99

_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit99: ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit95, %.else.i96
  %storemerge.i.i98 = phi i32 [ %i.cz, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit95 ], [ %storemerge.i.else.val.i97, %.else.i96 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !766
  store i32 %storemerge.i.i98, ptr %4, align 4, !tbaa !219, !noalias !766
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !101, !noalias !766
  %i.dk = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIfEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.da, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef signext %i.dj, ptr noundef nonnull align 4 %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !766
  %i.dl = load float, ptr %9, align 4, !tbaa !215, !noalias !768
  %i.dm = load float, ptr %8, align 4, !tbaa !215, !noalias !768 ; 2 uses
  %i.dn = fsub float %i.dl, %i.dm                 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !215, !noalias !768
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !215, !noalias !768 ; 2 uses
  %i.ds = fsub float %i.dp, %i.dr                 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.du = load float, ptr %i.dt, align 4, !tbaa !215, !noalias !768
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !215, !noalias !768 ; 2 uses
  %i.dx = fsub float %i.du, %i.dw                 ; 4 uses
  %10 = fmul float %i.dn, %i.dn
  %i.dy = call float @llvm.fmuladd.f32(float %i.ds, float %i.ds, float %10)
  %i.dz = call noundef float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float %i.dy) ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !236
  %i.ec = icmp slt i32 %i.eb, 258
  %i.ed = fcmp ogt float %i.dz, 0.000000e+00
  %or.cond = or i1 %i.ec, %i.ed
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit99
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !215, !noalias !769
  %i.eg = fsub float %i.ef, %i.dw                 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !215, !noalias !769
  %i.ej = fsub float %i.ei, %i.dr                 ; 2 uses
  %i.ek = load float, ptr %7, align 4, !tbaa !215, !noalias !769
  %i.el = fsub float %i.ek, %i.dm                 ; 2 uses
  %i.em = call float @llvm.fmuladd.f32(float %i.dn, float %i.el, float 0.000000e+00)
  %i.en = call float @llvm.fmuladd.f32(float %i.ds, float %i.ej, float %i.em)
  %i.eo = call noundef float @llvm.fmuladd.f32(float %i.dx, float %i.eg, float %i.en)
  %i.ep = fdiv float %i.eo, %i.dz                 ; 4 uses
  %i.eq = fmul float %i.dn, %i.ep
  %i.er = fmul float %i.ds, %i.ep
  %i.es = fmul float %i.dx, %i.ep
  %i.et = fsub float %i.el, %i.eq                 ; 2 uses
  %i.eu = fsub float %i.ej, %i.er                 ; 2 uses
  %i.ev = fsub float %i.eg, %i.es                 ; 2 uses
  %11 = fmul float %i.et, %i.et
  %i.ew = call float @llvm.fmuladd.f32(float %i.eu, float %i.eu, float %11)
  %i.ex = call noundef float @llvm.fmuladd.f32(float %i.ev, float %i.ev, float %i.ew)
  %i.ey = fdiv float %i.ex, %i.dz
  %i.ez = call noundef float @sqrtf(float noundef %i.ey) #17
  br label %bb.l

bb.l:                                             ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit99, %bb.k
  %.0156 = phi float [ %i.ep, %bb.k ], [ 0.000000e+00, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit99 ]
  %.076 = phi float [ %i.ez, %bb.k ], [ 0.000000e+00, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit99 ] ; 2 uses
  %i.fa = fsub <2 x float> %i.ax, %i.as           ; 3 uses
  %i.fb = extractelement <2 x float> %i.fa, i64 0
  %i.fc = fmul float %i.fb, %.076                 ; 2 uses
  %i.fd = insertelement <2 x float> poison, float %.0156, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> %i.fe, <2 x float> %i.as)
  %i.fg = extractelement <2 x float> %i.fa, i64 1
  %i.fh = fmul float %i.fg, %.076                 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !143
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !143 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !144 ; 3 uses
  %i.fo = icmp ne ptr %i.fj, %i.fl
  %i.fp = icmp ne i32 %i.fn, 0                    ; 2 uses
  %.not171 = select i1 %i.fo, i1 true, i1 %i.fp   ; 2 uses
  br i1 %.not171, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.fq = zext i32 %i.fn to i64
  %i.fr = add nsw i64 %i.fq, -1                   ; 3 uses
  %i.fs = sdiv i64 %i.fr, 64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fs
  %i.fu = and i64 %i.fr, -9223372036854775745
  %i.fv = icmp ugt i64 %i.fu, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.fv, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ft, i64 %storemerge.idx.i.i.i.i.i
  %i.fw = and i64 %i.fr, 63
  %i.fx = shl nuw i64 1, %i.fw
  %i.fy = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !186
  %i.fz = and i64 %i.fy, %i.fx
  %.not168 = icmp eq i64 %i.fz, 0                 ; 2 uses
  %i.ga = add i32 %i.fn, -1
  store i32 %i.ga, ptr %i.fm, align 8, !tbaa !144
  br i1 %i.fp, label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 63, ptr %i.fm, align 8, !tbaa !144
  %i.gb = getelementptr inbounds i8, ptr %i.fl, i64 -8
  store ptr %i.gb, ptr %i.fk, align 8, !tbaa !143
  br label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit

_ZNSt6vectorIbSaIbEE8pop_backEv.exit:             ; preds = %bb.m, %bb.n
  %i.gc = fneg float %i.fc
  %i.gd = fneg float %i.fh
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !161
  %.sroa.6.0.p = select i1 %.not168, float %i.gc, float %i.fc
  %.sroa.0112.0.p = select i1 %.not168, float %i.fh, float %i.gd
  %i.gg = insertelement <2 x float> poison, float %.sroa.0112.0.p, i64 0
  %i.gh = insertelement <2 x float> %i.gg, float %.sroa.6.0.p, i64 1
  %i.gi = fadd <2 x float> %i.ff, %i.gh
  %i.gj = fpext <2 x float> %i.gi to <2 x double>
  %i.gk = fadd <2 x double> %i.gj, splat (double 5.000000e-01)
  %i.gl = call <2 x double> @llvm.floor.v2f64(<2 x double> %i.gk) ; 4 uses
  %i.gm = fcmp uno <2 x double> %i.gl, zeroinitializer
  %i.gn = fcmp ogt <2 x double> %i.gl, splat (double f0x41DFFFFFFFC00000)
  %i.go = or <2 x i1> %i.gm, %i.gn
  %i.gp = fcmp olt <2 x double> %i.gl, splat (double f0xC1E0000000000000)
  %i.gq = or <2 x i1> %i.gp, %i.go
  %i.gr = fptosi <2 x double> %i.gl to <2 x i32>
  %i.gs = select <2 x i1> %i.gq, <2 x i32> splat (i32 -2147483648), <2 x i32> %i.gr
  store <2 x i32> %i.gs, ptr %i.gf, align 4, !tbaa !102
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.loopexit

bb.p:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit91
  br i1 %i.al, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gt = icmp sgt i32 %3, 0
  br i1 %i.gt, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.q
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !240
  %i.gw = icmp sgt i32 %i.gv, 0
  br i1 %i.gw, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !161
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gz = add nsw i32 %3, -1
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv
  store i32 0, ptr %i.ha, align 4, !tbaa !102
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hb = load i32, ptr %i.gu, align 8, !tbaa !240
  %i.hc = sext i32 %i.hb to i64
  %i.hd = icmp slt i64 %indvars.iv.next, %i.hc
  br i1 %i.hd, label %bb.s, label %.loopexit, !llvm.loop !756

bb.t:                                             ; preds = %bb.p, %bb.r
  %.sink202 = phi i32 [ %i.gz, %bb.r ], [ %i.ah, %bb.p ]
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !240 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hh = icmp sgt i32 %i.hf, 0
  br i1 %i.hh, label %.lr.ph175, label %.loopexit

.lr.ph175:                                        ; preds = %bb.t
  %i.hi = mul nsw i32 %i.hf, %.sink202
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !161
  %i.hl = sext i32 %i.hi to i64
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.hl
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph175, %bb.u
  %indvars.iv179 = phi i64 [ 0, %.lr.ph175 ], [ %indvars.iv.next180, %bb.u ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv179
  %i.hm = load i32, ptr %gep, align 4, !tbaa !102
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv179
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !102
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %i.ho = load i32, ptr %i.hg, align 8, !tbaa !240
  %i.hp = sext i32 %i.ho to i64
  %i.hq = icmp slt i64 %indvars.iv.next180, %i.hp
  br i1 %i.hq, label %bb.u, label %.loopexit, !llvm.loop !757

.loopexit:                                        ; preds = %bb.s, %bb.u, %bb.o, %bb.i, %bb.h, %.preheader, %bb.t
  %.3 = phi i1 [ true, %bb.u ], [ true, %bb.t ], [ true, %.preheader ], [ true, %bb.h ], [ %.not171, %bb.o ], [ true, %bb.i ], [ true, %bb.s ]
  ret i1 %.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.g) #18
  br label %_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit

_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #18, !inline_history !173
  br label %_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEED2Ev.exit

_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEED2Ev.exit: ; preds = %_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
end_hunk_1
