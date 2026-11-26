Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_integer_attribute_decoder?download=true
inline.NumInlined: 2410
inline.NumDeleted: 886
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputePredictedValueENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKii:bb.a
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
  %i.dy = call float @llvm.fmuladd.f32(float %i.dn, float %i.dn, float 0.000000e+00)
  %i.dz = call float @llvm.fmuladd.f32(float %i.ds, float %i.ds, float %i.dy)
  %i.ea = call noundef float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float %i.dz) ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !160
  %i.ed = icmp slt i32 %i.ec, 258
  %i.ee = fcmp ogt float %i.ea, 0.000000e+00
  %or.cond = or i1 %i.ed, %i.ee
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit98
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !215, !noalias !472
  %i.eh = fsub float %i.eg, %i.dw                 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !215, !noalias !472
  %i.ek = fsub float %i.ej, %i.dr                 ; 2 uses
  %i.el = load float, ptr %7, align 4, !tbaa !215, !noalias !472
  %i.em = fsub float %i.el, %i.dm                 ; 2 uses
  %i.en = call float @llvm.fmuladd.f32(float %i.dn, float %i.em, float 0.000000e+00)
  %i.eo = call float @llvm.fmuladd.f32(float %i.ds, float %i.ek, float %i.en)
  %i.ep = call noundef float @llvm.fmuladd.f32(float %i.dx, float %i.eh, float %i.eo)
  %i.eq = fdiv float %i.ep, %i.ea                 ; 4 uses
  %i.er = fmul float %i.dn, %i.eq
  %i.es = fmul float %i.ds, %i.eq
  %i.et = fmul float %i.dx, %i.eq
  %i.eu = fsub float %i.em, %i.er                 ; 2 uses
  %i.ev = fsub float %i.ek, %i.es                 ; 2 uses
  %i.ew = fsub float %i.eh, %i.et                 ; 2 uses
  %i.ex = call float @llvm.fmuladd.f32(float %i.eu, float %i.eu, float 0.000000e+00)
  %i.ey = call float @llvm.fmuladd.f32(float %i.ev, float %i.ev, float %i.ex)
  %i.ez = call noundef float @llvm.fmuladd.f32(float %i.ew, float %i.ew, float %i.ey)
  %i.fa = fdiv float %i.ez, %i.ea
  %i.fb = call noundef float @sqrtf(float noundef %i.fa) #17
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit98, %bb.l
  %.0155 = phi float [ %i.eq, %bb.l ], [ 0.000000e+00, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit98 ]
  %.076 = phi float [ %i.fb, %bb.l ], [ 0.000000e+00, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21GetPositionForEntryIdEi.exit98 ] ; 2 uses
  %i.fc = fsub <2 x float> %i.ax, %i.as           ; 3 uses
  %i.fd = extractelement <2 x float> %i.fc, i64 0
  %i.fe = fmul float %i.fd, %.076                 ; 2 uses
  %i.ff = insertelement <2 x float> poison, float %.0155, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.fg, <2 x float> %i.as)
  %i.fi = extractelement <2 x float> %i.fc, i64 1
  %i.fj = fmul float %i.fi, %.076                 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !143
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !143 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !144 ; 3 uses
  %i.fq = icmp ne ptr %i.fl, %i.fn
  %i.fr = icmp ne i32 %i.fp, 0                    ; 2 uses
  %.not164 = select i1 %i.fq, i1 true, i1 %i.fr   ; 2 uses
  br i1 %.not164, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.fs = zext i32 %i.fp to i64
  %i.ft = add nsw i64 %i.fs, -1                   ; 3 uses
  %i.fu = sdiv i64 %i.ft, 64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fu
  %i.fw = and i64 %i.ft, -9223372036854775745
  %i.fx = icmp ugt i64 %i.fw, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.fx, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.fv, i64 %storemerge.idx.i.i.i.i.i
  %i.fy = and i64 %i.ft, 63
  %i.fz = shl nuw i64 1, %i.fy
  %i.ga = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !186
  %i.gb = and i64 %i.ga, %i.fz
  %.not161 = icmp eq i64 %i.gb, 0                 ; 2 uses
  %i.gc = add i32 %i.fp, -1
  store i32 %i.gc, ptr %i.fo, align 8, !tbaa !144
  br i1 %i.fr, label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 63, ptr %i.fo, align 8, !tbaa !144
  %i.gd = getelementptr inbounds i8, ptr %i.fn, i64 -8
  store ptr %i.gd, ptr %i.fm, align 8, !tbaa !143
  br label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit

_ZNSt6vectorIbSaIbEE8pop_backEv.exit:             ; preds = %bb.n, %bb.o
  %i.ge = fneg float %i.fe
  %i.gf = fneg float %i.fj
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !161
  %.sroa.6.0.p = select i1 %.not161, float %i.ge, float %i.fe
  %.sroa.0111.0.p = select i1 %.not161, float %i.fj, float %i.gf
  %i.gi = insertelement <2 x float> poison, float %.sroa.0111.0.p, i64 0
  %i.gj = insertelement <2 x float> %i.gi, float %.sroa.6.0.p, i64 1
  %i.gk = fadd <2 x float> %i.fh, %i.gj
  %i.gl = fpext <2 x float> %i.gk to <2 x double>
  %i.gm = fadd <2 x double> %i.gl, splat (double 5.000000e-01)
  %i.gn = call <2 x double> @llvm.floor.v2f64(<2 x double> %i.gm) ; 4 uses
  %i.go = fcmp uno <2 x double> %i.gn, zeroinitializer
  %i.gp = fcmp ogt <2 x double> %i.gn, splat (double f0x41DFFFFFFFC00000)
  %i.gq = or <2 x i1> %i.go, %i.gp
  %i.gr = fcmp olt <2 x double> %i.gn, splat (double f0xC1E0000000000000)
  %i.gs = or <2 x i1> %i.gr, %i.gq
  %i.gt = fptosi <2 x double> %i.gn to <2 x i32>
  %i.gu = select <2 x i1> %i.gs, <2 x i32> splat (i32 -2147483648), <2 x i32> %i.gt
  store <2 x i32> %i.gu, ptr %i.gh, align 4, !tbaa !102
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.loopexit

bb.q:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit90
  br i1 %i.al, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gv = icmp sgt i32 %3, 0
  br i1 %i.gv, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.r
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !211
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !161
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hb = add nsw i32 %3, -1
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv
  store i32 0, ptr %i.hc, align 4, !tbaa !102
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hd = load i32, ptr %i.gw, align 8, !tbaa !211
  %i.he = sext i32 %i.hd to i64
  %i.hf = icmp slt i64 %indvars.iv.next, %i.he
  br i1 %i.hf, label %bb.t, label %.loopexit, !llvm.loop !459

bb.u:                                             ; preds = %bb.q, %bb.s
  %.sink197 = phi i32 [ %i.hb, %bb.s ], [ %i.ag, %bb.q ]
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !211 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hj = icmp sgt i32 %i.hh, 0
  br i1 %i.hj, label %.lr.ph168, label %.loopexit

.lr.ph168:                                        ; preds = %bb.u
  %i.hk = mul nsw i32 %i.hh, %.sink197
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !161
  %i.hn = sext i32 %i.hk to i64
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.hn
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph168, %bb.v
  %indvars.iv172 = phi i64 [ 0, %.lr.ph168 ], [ %indvars.iv.next173, %bb.v ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv172
  %i.ho = load i32, ptr %gep, align 4, !tbaa !102
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv172
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !102
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.hq = load i32, ptr %i.hi, align 8, !tbaa !211
  %i.hr = sext i32 %i.hq to i64
  %i.hs = icmp slt i64 %indvars.iv.next173, %i.hr
  br i1 %i.hs, label %bb.v, label %.loopexit, !llvm.loop !460

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

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br i1 %i.v, label %.lr.ph43.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.d:                                             ; preds = %.lr.ph43.i
  %i.w = getelementptr inbounds nuw i8, ptr %.01731.us42.i, i64 1 ; 2 uses
  %i.x = icmp ugt ptr %i.r, %i.w
  br i1 %i.x, label %.lr.ph43.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !473

.lr.ph43.i:                                       ; preds = %.lr.ph.split.us.i, %bb.d
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %bb.d ], [ 0, %.lr.ph.split.us.i ] ; 2 uses
  %.01731.us42.i = phi ptr [ %i.w, %bb.d ], [ %i.n, %.lr.ph.split.us.i ] ; 2 uses
  %i.y = load i8, ptr %.01731.us42.i, align 1, !tbaa !103
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv56.i
  %i.aa = sitofp i8 %i.y to float
  %i.ab = fdiv float %i.aa, 1.270000e+02
  store float %i.ab, ptr %i.z, align 4, !tbaa !215
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %i.ac = load i8, ptr %i.o, align 8, !tbaa !103  ; 2 uses
  %.sroa.speculated.us.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ac)
  %i.ad = zext i8 %.sroa.speculated.us.i to i64
  %.not.us.not.i = icmp samesign ult i64 %indvars.iv.next57.i, %i.ad
  br i1 %.not.us.not.i, label %bb.d, label %.critedge.i, !llvm.loop !473

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %i.v, label %.lr.ph39.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.e:                                             ; preds = %.lr.ph39.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0173138.i, i64 1 ; 2 uses
  %i.af = icmp ugt ptr %i.r, %i.ae
  br i1 %i.af, label %.lr.ph39.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !473

.lr.ph39.i:                                       ; preds = %.lr.ph.split.i, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.0173138.i = phi ptr [ %i.ae, %bb.e ], [ %i.n, %.lr.ph.split.i ] ; 2 uses
  %i.ag = load i8, ptr %.0173138.i, align 1, !tbaa !103
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  %i.ai = sitofp i8 %i.ag to float
  store float %i.ai, ptr %i.ah, align 4, !tbaa !215
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aj = load i8, ptr %i.o, align 8, !tbaa !103  ; 2 uses
  %.sroa.speculated.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.aj)
  %i.ak = zext i8 %.sroa.speculated.i to i64
  %.not.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.ak
  br i1 %.not.not.i, label %bb.e, label %.critedge.i, !llvm.loop !473

.critedge.i:                                      ; preds = %.lr.ph39.i, %.lr.ph43.i, %bb.c
  %.lcssa.i = phi i8 [ %i.p, %bb.c ], [ %i.ac, %.lr.ph43.i ], [ %i.aj, %.lr.ph39.i ] ; 2 uses
  %i.al = icmp ult i8 %.lcssa.i, %2
  br i1 %i.al, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit.sink.split, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.f:                                             ; preds = %bb.b
  %i.am = load i32, ptr %1, align 4, !tbaa !219
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !89
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !220
  %i.ar = zext i32 %i.am to i64
  %i.as = mul nsw i64 %i.aq, %i.ar
  %i.at = load ptr, ptr %0, align 8, !tbaa !90    ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !92
  %i.av = getelementptr i8, ptr %i.au, i64 %i.as
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.ao  ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !103 ; 2 uses
  %.sroa.speculated29.i25 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ay)
  %.not30.i26 = icmp eq i8 %.sroa.speculated29.i25, 0
  br i1 %.not30.i26, label %.critedge.i37, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !94 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load i8, ptr %i.bb, align 8, !range !216
  %.fr47.i28 = freeze i8 %i.bc
  %i.bd = trunc i8 %.fr47.i28 to i1
  %i.be = icmp ugt ptr %i.ba, %i.aw               ; 2 uses
  br i1 %i.bd, label %.lr.ph.split.us.i41, label %.lr.ph.split.i29

.lr.ph.split.us.i41:                              ; preds = %.lr.ph.i27
  br i1 %i.be, label %.lr.ph43.i42, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.g:                                             ; preds = %.lr.ph43.i42
  %i.bf = getelementptr inbounds nuw i8, ptr %.01731.us42.i44, i64 1 ; 2 uses
  %i.bg = icmp ugt ptr %i.ba, %i.bf
  br i1 %i.bg, label %.lr.ph43.i42, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !474

.lr.ph43.i42:                                     ; preds = %.lr.ph.split.us.i41, %bb.g
  %indvars.iv56.i43 = phi i64 [ %indvars.iv.next57.i45, %bb.g ], [ 0, %.lr.ph.split.us.i41 ] ; 2 uses
  %.01731.us42.i44 = phi ptr [ %i.bf, %bb.g ], [ %i.aw, %.lr.ph.split.us.i41 ] ; 2 uses
  %i.bh = load i8, ptr %.01731.us42.i44, align 1, !tbaa !103
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv56.i43
  %i.bj = uitofp i8 %i.bh to float
  %i.bk = fdiv float %i.bj, 2.550000e+02
  store float %i.bk, ptr %i.bi, align 4, !tbaa !215
  %indvars.iv.next57.i45 = add nuw nsw i64 %indvars.iv56.i43, 1 ; 2 uses
  %i.bl = load i8, ptr %i.ax, align 8, !tbaa !103 ; 2 uses
  %.sroa.speculated.us.i46 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.bl)
  %i.bm = zext i8 %.sroa.speculated.us.i46 to i64
  %.not.us.not.i47 = icmp samesign ult i64 %indvars.iv.next57.i45, %i.bm
  br i1 %.not.us.not.i47, label %bb.g, label %.critedge.i37, !llvm.loop !474

.lr.ph.split.i29:                                 ; preds = %.lr.ph.i27
  br i1 %i.be, label %.lr.ph39.i31, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.h:                                             ; preds = %.lr.ph39.i31
  %i.bn = getelementptr inbounds nuw i8, ptr %.0173138.i33, i64 1 ; 2 uses
  %i.bo = icmp ugt ptr %i.ba, %i.bn
  br i1 %i.bo, label %.lr.ph39.i31, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !474

.lr.ph39.i31:                                     ; preds = %.lr.ph.split.i29, %bb.h
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i34, %bb.h ], [ 0, %.lr.ph.split.i29 ] ; 2 uses
  %.0173138.i33 = phi ptr [ %i.bn, %bb.h ], [ %i.aw, %.lr.ph.split.i29 ] ; 2 uses
  %i.bp = load i8, ptr %.0173138.i33, align 1, !tbaa !103
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i32
  %i.br = uitofp i8 %i.bp to float
  store float %i.br, ptr %i.bq, align 4, !tbaa !215
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  %i.bs = load i8, ptr %i.ax, align 8, !tbaa !103 ; 2 uses
  %.sroa.speculated.i35 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.bs)
  %i.bt = zext i8 %.sroa.speculated.i35 to i64
  %.not.not.i36 = icmp samesign ult i64 %indvars.iv.next.i34, %i.bt
  br i1 %.not.not.i36, label %bb.h, label %.critedge.i37, !llvm.loop !474

.critedge.i37:                                    ; preds = %.lr.ph39.i31, %.lr.ph43.i42, %bb.f
  %.lcssa.i38 = phi i8 [ %i.ay, %bb.f ], [ %i.bl, %.lr.ph43.i42 ], [ %i.bs, %.lr.ph39.i31 ] ; 2 uses
  %i.bu = icmp ult i8 %.lcssa.i38, %2
  br i1 %i.bu, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit.sink.split, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIafEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.i:                                             ; preds = %bb.b
  %i.bv = load i32, ptr %1, align 4, !tbaa !219
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !89
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !220
  %i.ca = zext i32 %i.bv to i64
  %i.cb = mul nsw i64 %i.bz, %i.ca
  %i.cc = load ptr, ptr %0, align 8, !tbaa !90    ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !92
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.cb
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.bx  ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !103 ; 2 uses
  %.sroa.speculated29.i48 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ch)
end_hunk_0
begin_hunk_1_@_ZN5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEED2Ev:bb.a
_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZN5draco14RAnsBitDecoderD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.a) #17, !inline_history !539
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #18, !inline_history !540
  br label %_ZN5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEED2Ev.exit

_ZN5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE19GetPredictionMethodEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !227
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ne ptr %i.e, null
  %.0.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %.0.i, label %bb.b, label %_ZNK5draco24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEE13IsInitializedEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load <4 x ptr>, ptr %i.g, align 8
  %.fr = freeze <4 x ptr> %i.h
  %i.i = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.j = bitcast <4 x i1> %i.i to i4
  %i.k = icmp eq i4 %i.j, 0
  br i1 %i.k, label %bb.c, label %_ZNK5draco24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEE13IsInitializedEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = load i32, ptr %i.l, align 8, !tbaa !168
  %i.n = icmp ne i32 %i.m, -1
  br label %_ZNK5draco24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEE13IsInitializedEv.exit.thread

_ZNK5draco24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEE13IsInitializedEv.exit.thread: ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ %i.n, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE22GetNumParentAttributesEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE22GetParentAttributeTypeEi(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE18SetParentAttributeEPKNS_14PointAttributeE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !97
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !101
  %.not5 = icmp eq i8 %i.d, 3
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %1, ptr %i.e, align 8, !tbaa !227
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20DecodePredictionDataEPNS_13DecoderBufferE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !55   ; 4 uses
  %i.e = add i64 %i.d, 4                          ; 3 uses
  %.not.i = icmp slt i64 %i.b, %i.e
  br i1 %.not.i, label %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !56     ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %i.d
  %i.h = load i32, ptr %i.g, align 1              ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !55
  %i.i = add i64 %i.d, 8                          ; 3 uses
  %.not14.i = icmp slt i64 %i.b, %i.i
  br i1 %.not14.i, label %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.e
  %i.k = load i32, ptr %i.j, align 1              ; 3 uses
  store i64 %i.i, ptr %i.c, align 8, !tbaa !55
  %i.l = icmp sgt i32 %i.h, %i.k
  br i1 %i.l, label %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.h, ptr %i.m, align 4, !tbaa !174
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.k, ptr %i.n, align 8, !tbaa !175
  %i.o = sext i32 %i.k to i64
  %i.p = sext i32 %i.h to i64
  %i.q = sub nsw i64 %i.o, %i.p                   ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.q, 2147483647
  br i1 %or.cond.i.i, label %bb.e, label %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.r = trunc nuw nsw i64 %i.q to i32            ; 2 uses
  %i.s = add nuw nsw i32 %i.r, 1                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.s, ptr %i.t, align 4, !tbaa !176
  %i.u = lshr i32 %i.s, 1                         ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %i.u, ptr %i.v, align 8, !tbaa !177
  %i.w = sub nsw i32 0, %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.w, ptr %i.x, align 4, !tbaa !178
  %i.y = and i32 %i.r, 1
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.u, -1
  store i32 %i.z, ptr %i.v, align 8, !tbaa !177
  br label %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit

_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit: ; preds = %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !207
  %i.ac = icmp ult i16 %i.ab, 514
  br i1 %i.ac, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit
  %i.ad = add i64 %i.d, 9                         ; 2 uses
  %.not = icmp slt i64 %i.b, %i.ad
  br i1 %.not, label %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.af = load i8, ptr %i.ae, align 1             ; 2 uses
  store i64 %i.ad, ptr %i.c, align 8, !tbaa !55
  %i.ag = icmp ugt i8 %i.af, 1
  br i1 %i.ag, label %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit.thread, label %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit

_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit:     ; preds = %bb.h
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !165
  br label %bb.i

bb.i:                                             ; preds = %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit, %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ak = tail call noundef zeroext i1 @_ZN5draco14RAnsBitDecoder13StartDecodingEPNS_13DecoderBufferE(ptr noundef nonnull align 8 dereferenceable(17) %i.aj, ptr noundef nonnull %1)
  br label %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit.thread

_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit.thread: ; preds = %bb.h, %bb.g, %bb.d, %bb.b, %bb.c, %bb.a, %bb.i
  %.1 = phi i1 [ false, %bb.d ], [ %i.ak, %bb.i ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.g ], [ false, %bb.h ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputeOriginalValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.draco::VectorD.124", align 4 ; 11 uses
  %7 = alloca [2 x i32], align 4                  ; 5 uses
  %8 = alloca %"class.draco::IndexType.93", align 4 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %5, ptr %i.b, align 8, !tbaa !228
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !182
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !183
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2                   ; 2 uses
  %i.l = trunc i64 %i.k to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false), !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %wide.trip.count = and i64 %i.k, 2147483647
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret i1 true

bb.b:                                             ; preds = %.lr.ph, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit ] ; 5 uses
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !128  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !182
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !183 ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2                 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.ae, %indvars.iv
  br i1 %.not.i.i, label %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %indvars.iv, i64 noundef %i.ae) #20
  unreachable

_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit: ; preds = %bb.b
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !185
  store i32 %i.ag, ptr %8, align 4, !tbaa !185
  call void @_ZN5draco48MeshPredictionSchemeGeometricNormalPredictorAreaIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputePredictedValueENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPi(ptr noundef nonnull align 8 dereferenceable(60) %i.a, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %8, ptr noundef nonnull %6)
  %i.ah = load i32, ptr %6, align 4, !tbaa !102   ; 2 uses
  %i.ai = call i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !102 ; 2 uses
  %i.ak = call i32 @llvm.abs.i32(i32 %i.aj, i1 true)
  %narrow.i = add nuw i32 %i.ak, %i.ai
  %i.al = zext i32 %narrow.i to i64
  %i.am = load i32, ptr %i.o, align 4, !tbaa !102 ; 2 uses
  %i.an = call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add nuw nsw i64 %i.al, %i.ao            ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit
  %i.ar = load i32, ptr %i.p, align 8, !tbaa !172
  store i32 %i.ar, ptr %6, align 4, !tbaa !102
  br label %_ZNK5draco17OctahedronToolBox25CanonicalizeIntegerVectorIiEEvPT_.exit

bb.e:                                             ; preds = %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit
  %i.as = sext i32 %i.ah to i64
  %i.at = load i32, ptr %i.p, align 8, !tbaa !172 ; 3 uses
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = mul nsw i64 %i.au, %i.as
  %i.aw = sdiv i64 %i.av, %i.ap
  %i.ax = trunc i64 %i.aw to i32                  ; 2 uses
  store i32 %i.ax, ptr %6, align 4, !tbaa !102
  %i.ay = sext i32 %i.aj to i64
  %i.az = mul nsw i64 %i.au, %i.ay
  %i.ba = sdiv i64 %i.az, %i.ap
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  store i32 %i.bb, ptr %i.n, align 4, !tbaa !102
  %i.bc = icmp sgt i32 %i.am, -1
  %i.bd = call i32 @llvm.abs.i32(i32 %i.ax, i1 true)
  %i.be = call i32 @llvm.abs.i32(i32 %i.bb, i1 true)
  %i.bf = add nuw i32 %i.be, %i.bd                ; 2 uses
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bg = sub i32 %i.at, %i.bf
  store i32 %i.bg, ptr %i.o, align 4, !tbaa !102
  br label %_ZNK5draco17OctahedronToolBox25CanonicalizeIntegerVectorIiEEvPT_.exit

bb.g:                                             ; preds = %bb.e
  %.neg.i = sub i32 %i.bf, %i.at
  store i32 %.neg.i, ptr %i.o, align 4, !tbaa !102
  br label %_ZNK5draco17OctahedronToolBox25CanonicalizeIntegerVectorIiEEvPT_.exit

_ZNK5draco17OctahedronToolBox25CanonicalizeIntegerVectorIiEEvPT_.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.bh = call noundef zeroext i1 @_ZN5draco14RAnsBitDecoder13DecodeNextBitEv(ptr noundef nonnull align 8 dereferenceable(17) %i.q)
  %i.bi = load i32, ptr %6, align 4, !tbaa !102   ; 2 uses
  br i1 %i.bh, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %_ZNK5draco17OctahedronToolBox25CanonicalizeIntegerVectorIiEEvPT_.exit
  %i.bj = sub nsw i32 0, %i.bi                    ; 2 uses
  store i32 %i.bj, ptr %6, align 4, !tbaa !103
  %i.bk = load <2 x i32>, ptr %i.n, align 4, !tbaa !102, !noalias !544
  %i.bl = sub nsw <2 x i32> zeroinitializer, %i.bk ; 2 uses
  store <2 x i32> %i.bl, ptr %i.n, align 4, !tbaa !103
  %i.bm = extractelement <2 x i32> %i.bl, i64 0
  br label %bb.i

thread-pre-split:                                 ; preds = %_ZNK5draco17OctahedronToolBox25CanonicalizeIntegerVectorIiEEvPT_.exit
  %.pr11 = load i32, ptr %i.n, align 4, !tbaa !102
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split, %bb.h
  %i.bn = phi i32 [ %.pr11, %thread-pre-split ], [ %i.bm, %bb.h ] ; 4 uses
  %i.bo = phi i32 [ %i.bi, %thread-pre-split ], [ %i.bj, %bb.h ]
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = load i32, ptr %i.p, align 8, !tbaa !172 ; 2 uses
  %i.br = add nsw i32 %i.bq, %i.bn
  %i.bs = load i32, ptr %i.o, align 4, !tbaa !102
  %i.bt = add nsw i32 %i.bs, %i.bq
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.bu = icmp slt i32 %i.bn, 0
  br i1 %i.bu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bv = load i32, ptr %i.o, align 4, !tbaa !102 ; 2 uses
  %i.bw = call i32 @llvm.abs.i32(i32 %i.bv, i1 true)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bx = load i32, ptr %i.r, align 8, !tbaa !170
  %i.by = load i32, ptr %i.o, align 4, !tbaa !102 ; 2 uses
  %i.bz = call i32 @llvm.abs.i32(i32 %i.by, i1 true)
  %i.ca = sub nsw i32 %i.bx, %i.bz
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cb = phi i32 [ %i.bv, %bb.l ], [ %i.by, %bb.m ]
  %.013.i = phi i32 [ %i.bw, %bb.l ], [ %i.ca, %bb.m ] ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cd = call i32 @llvm.abs.i32(i32 %i.bn, i1 true)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ce = load i32, ptr %i.r, align 8, !tbaa !170
  %i.cf = call i32 @llvm.abs.i32(i32 %i.bn, i1 true)
  %i.cg = sub nsw i32 %i.ce, %i.cf
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.j
  %.1.i = phi i32 [ %i.br, %bb.j ], [ %.013.i, %bb.o ], [ %.013.i, %bb.p ] ; 12 uses
  %.0.i = phi i32 [ %i.bt, %bb.j ], [ %i.cd, %bb.o ], [ %i.cg, %bb.p ] ; 11 uses
  %i.ch = icmp eq i32 %.1.i, 0                    ; 2 uses
  %i.ci = icmp eq i32 %.0.i, 0                    ; 2 uses
  %i.cj = or i32 %.0.i, %.1.i
  %or.cond.i.i = icmp eq i32 %i.cj, 0
  %.pre.i.i = load i32, ptr %i.r, align 8         ; 4 uses
  br i1 %or.cond.i.i, label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = icmp eq i32 %.0.i, %.pre.i.i            ; 2 uses
  %or.cond39.i.i = select i1 %i.ch, i1 %i.ck, i1 false
  br i1 %or.cond39.i.i, label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = icmp eq i32 %.1.i, %.pre.i.i            ; 2 uses
  %or.cond3.i.i = and i1 %i.ci, %i.cl
  br i1 %or.cond3.i.i, label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.ch, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cm = load i32, ptr %i.p, align 8, !tbaa !172 ; 2 uses
  %i.cn = icmp sgt i32 %.0.i, %i.cm
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %factor43.i.i = shl i32 %i.cm, 1
  %i.co = sub i32 %factor43.i.i, %.0.i
  br label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit

bb.w:                                             ; preds = %bb.u, %bb.t
  br i1 %i.cl, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cp = load i32, ptr %i.p, align 8, !tbaa !172 ; 2 uses
  %i.cq = icmp slt i32 %.0.i, %i.cp
  br i1 %i.cq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %factor42.i.i = shl i32 %i.cp, 1
  %i.cr = sub i32 %factor42.i.i, %.0.i
  br label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit

bb.z:                                             ; preds = %bb.x, %bb.w
  br i1 %i.ck, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.cs = load i32, ptr %i.p, align 8, !tbaa !172 ; 2 uses
  %i.ct = icmp slt i32 %.1.i, %i.cs
  br i1 %i.ct, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %factor41.i.i = shl i32 %i.cs, 1
  %i.cu = sub i32 %factor41.i.i, %.1.i
  br label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit

bb.ac:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.ci, label %bb.ad, label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cv = load i32, ptr %i.p, align 8, !tbaa !172 ; 2 uses
  %i.cw = icmp sgt i32 %.1.i, %i.cv
  br i1 %i.cw, label %bb.ae, label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit

bb.ae:                                            ; preds = %bb.ad
  %factor.i.i = shl i32 %i.cv, 1
  %i.cx = sub i32 %factor.i.i, %.1.i
  br label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit

_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit: ; preds = %bb.q, %bb.r, %bb.s, %bb.v, %bb.y, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %.025.i.i = phi i32 [ %.0.i, %bb.ac ], [ %i.co, %bb.v ], [ %i.cr, %bb.y ], [ %.0.i, %bb.ab ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ %.1.i, %bb.s ], [ %.0.i, %bb.r ], [ %.pre.i.i, %bb.q ]
  %.0.i.i = phi i32 [ %.1.i, %bb.ac ], [ 0, %bb.v ], [ %.1.i, %bb.y ], [ %i.cu, %bb.ab ], [ %i.cx, %bb.ae ], [ %.1.i, %bb.ad ], [ %.1.i, %bb.s ], [ %.0.i, %bb.r ], [ %.pre.i.i, %bb.q ]
  store i32 %.0.i.i, ptr %7, align 4, !tbaa !102
  store i32 %.025.i.i, ptr %9, align 4, !tbaa !102
  %i.cy = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cy
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cy
  %i.db = load i32, ptr %i.s, align 8, !tbaa !179
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph.i.i.a, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit

.lr.ph.i.i.a:                                     ; preds = %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit
  %10 = load ptr, ptr %i.v, align 8               ; 3 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ak, %.lr.ph.i.i.a
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.a ], [ %indvars.iv.next.i.i, %bb.ak ] ; 4 uses
  %11 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.i.i
  %12 = load i32, ptr %11, align 4, !tbaa !102    ; 3 uses
  %i.dd = load i32, ptr %i.t, align 8, !tbaa !175 ; 2 uses
  %i.de = icmp sgt i32 %12, %i.dd
  br i1 %i.de, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %13 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.i.i
  store i32 %i.dd, ptr %13, align 4, !tbaa !102
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.df = load i32, ptr %i.u, align 4, !tbaa !174 ; 2 uses
  %i.dg = icmp slt i32 %12, %i.df
  %14 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.i.i ; 2 uses
  br i1 %i.dg, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.df, ptr %14, align 4, !tbaa !102
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  store i32 %12, ptr %14, align 4, !tbaa !102
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ag
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dh = load i32, ptr %i.s, align 8, !tbaa !179 ; 2 uses
  %15 = sext i32 %i.dh to i64
  %16 = icmp slt i64 %indvars.iv.next.i.i, %15
  br i1 %16, label %bb.af, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i, !llvm.loop !1

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i: ; preds = %bb.ak
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit

.lr.ph.i:                                         ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i, %bb.ao
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ao ], [ 0, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.i
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !102
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !102
  %i.dn = add i32 %i.dm, %i.dk                    ; 5 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.i ; 2 uses
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !102
  %i.dp = load i32, ptr %i.t, align 8, !tbaa !175
  %i.dq = icmp sgt i32 %i.dn, %i.dp
  br i1 %i.dq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph.i
  %i.dr = load i32, ptr %i.w, align 4, !tbaa !176
  %i.ds = sub nsw i32 %i.dn, %i.dr
  br label %.sink.split.i

bb.am:                                            ; preds = %.lr.ph.i
  %i.dt = load i32, ptr %i.u, align 4, !tbaa !174
  %i.du = icmp slt i32 %i.dn, %i.dt
  br i1 %i.du, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dv = load i32, ptr %i.w, align 4, !tbaa !176
  %i.dw = add nsw i32 %i.dv, %i.dn
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.an, %bb.al
  %.sink.i = phi i32 [ %i.ds, %bb.al ], [ %i.dw, %bb.an ]
  store i32 %.sink.i, ptr %i.do, align 4, !tbaa !102
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split.i, %bb.am
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dx = load i32, ptr %i.s, align 8, !tbaa !179
  %i.dy = sext i32 %i.dx to i64
  %i.dz = icmp slt i64 %indvars.iv.next.i, %i.dy
  br i1 %i.dz, label %.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit, !llvm.loop !2

_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit: ; preds = %bb.ao, %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !543
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco48MeshPredictionSchemeGeometricNormalPredictorAreaIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco48MeshPredictionSchemeGeometricNormalPredictorAreaIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23SetNormalPredictionModeENS_20NormalPredictionModeE(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %switch = icmp ult i32 %1, 2                    ; 2 uses
  br i1 %switch, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %1, ptr %i.a, align 8, !tbaa !165
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.sink.split
  ret i1 %switch
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE23GetNormalPredictionModeEv(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !165
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco48MeshPredictionSchemeGeometricNormalPredictorAreaIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE21ComputePredictedValueENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPi(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %4 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %5 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %6 = alloca %"class.draco::VertexCornersIterator", align 8 ; 7 uses
  %7 = alloca %"class.draco::VectorD.120", align 8 ; 7 uses
  %8 = alloca %"class.draco::VectorD.120", align 8 ; 7 uses
  %9 = alloca %"class.draco::VectorD.120", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.c = load i32, ptr %1, align 4, !tbaa !185    ; 5 uses
  store ptr %i.b, ptr %6, align 8, !tbaa !230
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.c, ptr %i.d, align 8, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 %i.c, ptr %i.e, align 4, !tbaa !185
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 1, ptr %i.f, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.h = zext i32 %i.c to i64
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !204, !noalias !581
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.h
  %i.k = load i32, ptr %i.j, align 4, !tbaa !206, !noalias !581
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !129, !noalias !580 ; 2 uses
  %i.n = zext i32 %i.k to i64                     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !118, !noalias !580
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !58, !noalias !580 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.u, %i.n
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIiSaIiEE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.n, i64 noundef %i.u) #20, !noalias !580
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit.i:                ; preds = %bb.a
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.n
  %i.w = load i32, ptr %i.v, align 4, !tbaa !102, !noalias !580
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !228, !noalias !583
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !214, !noalias !583 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !227, !noalias !583 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 100
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !98, !range !216, !noalias !584, !noundef !217
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %.else.i.i

.else.i.i:                                        ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !584
  %i.aj = zext i32 %i.ab to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj
  %storemerge.i.else.val.i.i = load i32, ptr %i.ak, align 4, !tbaa !102, !noalias !584
  br label %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit.i, %.else.i.i
  %storemerge.i.i.i = phi i32 [ %i.ab, %_ZNKSt6vectorIiSaIiEE2atEm.exit.i ], [ %storemerge.i.else.val.i.i, %.else.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !tbaa !186, !alias.scope !583
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !583
  store i32 %storemerge.i.i.i, ptr %5, align 4, !tbaa !219, !noalias !583
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.am = load i8, ptr %i.al, align 8, !tbaa !101, !noalias !583
  %i.an = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5, i8 noundef signext %i.am, ptr noundef nonnull align 8 %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !583
  %i.ao = icmp eq i32 %i.c, -1
  br i1 %i.ao, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit42
  %i.aw = phi i32 [ %i.c, %.lr.ph ], [ %i.fg, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit42 ] ; 4 uses
  %.sroa.072.0120 = phi i64 [ 0, %.lr.ph ], [ %i.fb, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit42 ]
  %.sroa.12.0119 = phi i64 [ 0, %.lr.ph ], [ %i.fd, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit42 ]
  %.sroa.21.0118 = phi i64 [ 0, %.lr.ph ], [ %i.ff, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit42 ]
  %i.ax = load i32, ptr %i.ap, align 8, !tbaa !165
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.az = load i32, ptr %1, align 4, !tbaa !185   ; 5 uses
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = insertelement <2 x i32> poison, i32 %i.az, i64 0
  %i.bc = shufflevector <2 x i32> %i.bb, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bd = add nuw <2 x i32> %i.bc, <i32 0, i32 1>
  %i.be = urem <2 x i32> %i.bd, splat (i32 3)
  %i.bf = icmp eq <2 x i32> %i.be, zeroinitializer ; 2 uses
  %i.bg = extractelement <2 x i1> %i.bf, i64 1
  %spec.select.i.i.v = select i1 %i.bg, i32 -2, i32 1
  %spec.select.i.i = add i32 %i.az, %spec.select.i.i.v ; 2 uses
  %i.bh = extractelement <2 x i1> %i.bf, i64 0
  br i1 %i.bh, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = add i32 %i.az, -1
  br label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.g:                                             ; preds = %bb.e
  %i.bj = add i32 %i.az, 2
  br label %_ZNK5draco24MeshAttributeCornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

bb.h:                                             ; preds = %bb.c
  %i.bk = insertelement <2 x i32> poison, i32 %i.aw, i64 0
end_hunk_1
begin_hunk_2_@_ZN5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21ComputePredictedValueENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPKii:bb.a
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
  %i.dy = call float @llvm.fmuladd.f32(float %i.dn, float %i.dn, float 0.000000e+00)
  %i.dz = call float @llvm.fmuladd.f32(float %i.ds, float %i.ds, float %i.dy)
  %i.ea = call noundef float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float %i.dz) ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !236
  %i.ed = icmp slt i32 %i.ec, 258
  %i.ee = fcmp ogt float %i.ea, 0.000000e+00
  %or.cond = or i1 %i.ed, %i.ee
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit99
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !215, !noalias !769
  %i.eh = fsub float %i.eg, %i.dw                 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !215, !noalias !769
  %i.ek = fsub float %i.ej, %i.dr                 ; 2 uses
  %i.el = load float, ptr %7, align 4, !tbaa !215, !noalias !769
  %i.em = fsub float %i.el, %i.dm                 ; 2 uses
  %i.en = call float @llvm.fmuladd.f32(float %i.dn, float %i.em, float 0.000000e+00)
  %i.eo = call float @llvm.fmuladd.f32(float %i.ds, float %i.ek, float %i.en)
  %i.ep = call noundef float @llvm.fmuladd.f32(float %i.dx, float %i.eh, float %i.eo)
  %i.eq = fdiv float %i.ep, %i.ea                 ; 4 uses
  %i.er = fmul float %i.dn, %i.eq
  %i.es = fmul float %i.ds, %i.eq
  %i.et = fmul float %i.dx, %i.eq
  %i.eu = fsub float %i.em, %i.er                 ; 2 uses
  %i.ev = fsub float %i.ek, %i.es                 ; 2 uses
  %i.ew = fsub float %i.eh, %i.et                 ; 2 uses
  %i.ex = call float @llvm.fmuladd.f32(float %i.eu, float %i.eu, float 0.000000e+00)
  %i.ey = call float @llvm.fmuladd.f32(float %i.ev, float %i.ev, float %i.ex)
  %i.ez = call noundef float @llvm.fmuladd.f32(float %i.ew, float %i.ew, float %i.ey)
  %i.fa = fdiv float %i.ez, %i.ea
  %i.fb = call noundef float @sqrtf(float noundef %i.fa) #17
  br label %bb.l

bb.l:                                             ; preds = %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit99, %bb.k
  %.0156 = phi float [ %i.eq, %bb.k ], [ 0.000000e+00, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit99 ]
  %.076 = phi float [ %i.fb, %bb.k ], [ 0.000000e+00, %_ZNK5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21GetPositionForEntryIdEi.exit99 ] ; 2 uses
  %i.fc = fsub <2 x float> %i.ax, %i.as           ; 3 uses
  %i.fd = extractelement <2 x float> %i.fc, i64 0
  %i.fe = fmul float %i.fd, %.076                 ; 2 uses
  %i.ff = insertelement <2 x float> poison, float %.0156, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.fg, <2 x float> %i.as)
  %i.fi = extractelement <2 x float> %i.fc, i64 1
  %i.fj = fmul float %i.fi, %.076                 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !143
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !143 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !144 ; 3 uses
  %i.fq = icmp ne ptr %i.fl, %i.fn
  %i.fr = icmp ne i32 %i.fp, 0                    ; 2 uses
  %.not171 = select i1 %i.fq, i1 true, i1 %i.fr   ; 2 uses
  br i1 %.not171, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.fs = zext i32 %i.fp to i64
  %i.ft = add nsw i64 %i.fs, -1                   ; 3 uses
  %i.fu = sdiv i64 %i.ft, 64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fu
  %i.fw = and i64 %i.ft, -9223372036854775745
  %i.fx = icmp ugt i64 %i.fw, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.fx, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.fv, i64 %storemerge.idx.i.i.i.i.i
  %i.fy = and i64 %i.ft, 63
  %i.fz = shl nuw i64 1, %i.fy
  %i.ga = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !186
  %i.gb = and i64 %i.ga, %i.fz
  %.not168 = icmp eq i64 %i.gb, 0                 ; 2 uses
  %i.gc = add i32 %i.fp, -1
  store i32 %i.gc, ptr %i.fo, align 8, !tbaa !144
  br i1 %i.fr, label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 63, ptr %i.fo, align 8, !tbaa !144
  %i.gd = getelementptr inbounds i8, ptr %i.fn, i64 -8
  store ptr %i.gd, ptr %i.fm, align 8, !tbaa !143
  br label %_ZNSt6vectorIbSaIbEE8pop_backEv.exit

_ZNSt6vectorIbSaIbEE8pop_backEv.exit:             ; preds = %bb.m, %bb.n
  %i.ge = fneg float %i.fe
  %i.gf = fneg float %i.fj
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !161
  %.sroa.6.0.p = select i1 %.not168, float %i.ge, float %i.fe
  %.sroa.0112.0.p = select i1 %.not168, float %i.fj, float %i.gf
  %i.gi = insertelement <2 x float> poison, float %.sroa.0112.0.p, i64 0
  %i.gj = insertelement <2 x float> %i.gi, float %.sroa.6.0.p, i64 1
  %i.gk = fadd <2 x float> %i.fh, %i.gj
  %i.gl = fpext <2 x float> %i.gk to <2 x double>
  %i.gm = fadd <2 x double> %i.gl, splat (double 5.000000e-01)
  %i.gn = call <2 x double> @llvm.floor.v2f64(<2 x double> %i.gm) ; 4 uses
  %i.go = fcmp uno <2 x double> %i.gn, zeroinitializer
  %i.gp = fcmp ogt <2 x double> %i.gn, splat (double f0x41DFFFFFFFC00000)
  %i.gq = or <2 x i1> %i.go, %i.gp
  %i.gr = fcmp olt <2 x double> %i.gn, splat (double f0xC1E0000000000000)
  %i.gs = or <2 x i1> %i.gr, %i.gq
  %i.gt = fptosi <2 x double> %i.gn to <2 x i32>
  %i.gu = select <2 x i1> %i.gs, <2 x i32> splat (i32 -2147483648), <2 x i32> %i.gt
  store <2 x i32> %i.gu, ptr %i.gh, align 4, !tbaa !102
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIbSaIbEE8pop_backEv.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.loopexit

bb.p:                                             ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit91
  br i1 %i.al, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gv = icmp sgt i32 %3, 0
  br i1 %i.gv, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.q
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !240
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !161
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hb = add nsw i32 %3, -1
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv
  store i32 0, ptr %i.hc, align 4, !tbaa !102
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hd = load i32, ptr %i.gw, align 8, !tbaa !240
  %i.he = sext i32 %i.hd to i64
  %i.hf = icmp slt i64 %indvars.iv.next, %i.he
  br i1 %i.hf, label %bb.s, label %.loopexit, !llvm.loop !756

bb.t:                                             ; preds = %bb.p, %bb.r
  %.sink202 = phi i32 [ %i.hb, %bb.r ], [ %i.ah, %bb.p ]
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !240 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hj = icmp sgt i32 %i.hh, 0
  br i1 %i.hj, label %.lr.ph175, label %.loopexit

.lr.ph175:                                        ; preds = %bb.t
  %i.hk = mul nsw i32 %i.hh, %.sink202
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !161
  %i.hn = sext i32 %i.hk to i64
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.hn
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph175, %bb.u
  %indvars.iv179 = phi i64 [ 0, %.lr.ph175 ], [ %indvars.iv.next180, %bb.u ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv179
  %i.ho = load i32, ptr %gep, align 4, !tbaa !102
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv179
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !102
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %i.hq = load i32, ptr %i.hi, align 8, !tbaa !240
  %i.hr = sext i32 %i.hq to i64
  %i.hs = icmp slt i64 %indvars.iv.next180, %i.hr
  br i1 %i.hs, label %bb.u, label %.loopexit, !llvm.loop !757

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
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.g) #18, !inline_history !770
  br label %_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit.i

_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit.i: ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #18, !inline_history !771
  br label %_ZN5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit

_ZN5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit: ; preds = %_ZN5draco46MeshPredictionSchemeTexCoordsPortablePredictorIiNS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE19GetPredictionMethodEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !243
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK5draco24MeshPredictionSchemeDataINS_11CornerTableEE13IsInitializedEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !132
  %.not.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %.not1.i = icmp eq ptr %i.f, null
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8
  %.not2.i = icmp eq ptr %i.h, null
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %.not2.i
  br i1 %or.cond5.i, label %_ZNK5draco24MeshPredictionSchemeDataINS_11CornerTableEE13IsInitializedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !134
  %i.k = icmp ne ptr %i.j, null
  br label %_ZNK5draco24MeshPredictionSchemeDataINS_11CornerTableEE13IsInitializedEv.exit

_ZNK5draco24MeshPredictionSchemeDataINS_11CornerTableEE13IsInitializedEv.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.k, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE22GetNumParentAttributesEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE22GetParentAttributeTypeEi(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE18SetParentAttributeEPKNS_14PointAttributeE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !97
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !101
  %.not8 = icmp eq i8 %i.d, 3
  br i1 %.not8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %1, ptr %i.e, align 8, !tbaa !243
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco44MeshPredictionSchemeTexCoordsPortableDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20DecodePredictionDataEPNS_13DecoderBufferE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.draco::RAnsBitDecoder", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !55   ; 2 uses
  %i.e = add i64 %i.d, 4                          ; 2 uses
  %.not = icmp slt i64 %i.b, %i.e
  br i1 %.not, label %_ZN5draco13DecoderBuffer6DecodeIiEEbPT_.exit.thread, label %_ZN5draco13DecoderBuffer6DecodeIiEEbPT_.exit

_ZN5draco13DecoderBuffer6DecodeIiEEbPT_.exit:     ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !56
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %i.d
  %i.h = load i32, ptr %i.g, align 1              ; 6 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !55
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.b, label %_ZN5draco13DecoderBuffer6DecodeIiEEbPT_.exit.thread

bb.b:                                             ; preds = %_ZN5draco13DecoderBuffer6DecodeIiEEbPT_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.k = zext nneg i32 %i.h to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !143  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !144  ; 2 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !143  ; 2 uses
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = shl nsw i64 %i.s, 3
  %i.u = zext i32 %i.o to i64
  %i.v = add nsw i64 %i.t, %i.u                   ; 2 uses
  %i.w = icmp ugt i64 %i.v, %i.k
end_hunk_2
begin_hunk_3_@_ZN5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev:bb.a
_ZN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZN5draco14RAnsBitDecoderD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.a) #17, !inline_history !814
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #18, !inline_history !815
  br label %_ZN5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit

_ZN5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE19GetPredictionMethodEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !245
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ne ptr %i.e, null
  %.0.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %.0.i, label %bb.b, label %_ZNK5draco24MeshPredictionSchemeDataINS_11CornerTableEE13IsInitializedEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load <4 x ptr>, ptr %i.g, align 8
  %.fr = freeze <4 x ptr> %i.h
  %i.i = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.j = bitcast <4 x i1> %i.i to i4
  %i.k = icmp eq i4 %i.j, 0
  br i1 %i.k, label %bb.c, label %_ZNK5draco24MeshPredictionSchemeDataINS_11CornerTableEE13IsInitializedEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = load i32, ptr %i.l, align 8, !tbaa !168
  %i.n = icmp ne i32 %i.m, -1
  br label %_ZNK5draco24MeshPredictionSchemeDataINS_11CornerTableEE13IsInitializedEv.exit.thread

_ZNK5draco24MeshPredictionSchemeDataINS_11CornerTableEE13IsInitializedEv.exit.thread: ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ %i.n, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE22GetNumParentAttributesEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE22GetParentAttributeTypeEi(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE18SetParentAttributeEPKNS_14PointAttributeE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !97
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !101
  %.not5 = icmp eq i8 %i.d, 3
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %1, ptr %i.e, align 8, !tbaa !245
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20DecodePredictionDataEPNS_13DecoderBufferE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !55   ; 4 uses
  %i.e = add i64 %i.d, 4                          ; 3 uses
  %.not.i = icmp slt i64 %i.b, %i.e
  br i1 %.not.i, label %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !56     ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %i.d
  %i.h = load i32, ptr %i.g, align 1              ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !55
  %i.i = add i64 %i.d, 8                          ; 3 uses
  %.not14.i = icmp slt i64 %i.b, %i.i
  br i1 %.not14.i, label %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.e
  %i.k = load i32, ptr %i.j, align 1              ; 3 uses
  store i64 %i.i, ptr %i.c, align 8, !tbaa !55
  %i.l = icmp sgt i32 %i.h, %i.k
  br i1 %i.l, label %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.h, ptr %i.m, align 4, !tbaa !174
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.k, ptr %i.n, align 8, !tbaa !175
  %i.o = sext i32 %i.k to i64
  %i.p = sext i32 %i.h to i64
  %i.q = sub nsw i64 %i.o, %i.p                   ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.q, 2147483647
  br i1 %or.cond.i.i, label %bb.e, label %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.r = trunc nuw nsw i64 %i.q to i32            ; 2 uses
  %i.s = add nuw nsw i32 %i.r, 1                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.s, ptr %i.t, align 4, !tbaa !176
  %i.u = lshr i32 %i.s, 1                         ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %i.u, ptr %i.v, align 8, !tbaa !177
  %i.w = sub nsw i32 0, %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.w, ptr %i.x, align 4, !tbaa !178
  %i.y = and i32 %i.r, 1
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.u, -1
  store i32 %i.z, ptr %i.v, align 8, !tbaa !177
  br label %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit

_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit: ; preds = %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !207
  %i.ac = icmp ult i16 %i.ab, 514
  br i1 %i.ac, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit
  %i.ad = add i64 %i.d, 9                         ; 2 uses
  %.not = icmp slt i64 %i.b, %i.ad
  br i1 %.not, label %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.af = load i8, ptr %i.ae, align 1             ; 2 uses
  store i64 %i.ad, ptr %i.c, align 8, !tbaa !55
  %i.ag = icmp ugt i8 %i.af, 1
  br i1 %i.ag, label %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit.thread, label %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit

_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit:     ; preds = %bb.h
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !238
  br label %bb.i

bb.i:                                             ; preds = %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit, %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ak = tail call noundef zeroext i1 @_ZN5draco14RAnsBitDecoder13StartDecodingEPNS_13DecoderBufferE(ptr noundef nonnull align 8 dereferenceable(17) %i.aj, ptr noundef nonnull %1)
  br label %_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit.thread

_ZN5draco37PredictionSchemeWrapDecodingTransformIiiE19DecodeTransformDataEPNS_13DecoderBufferE.exit.thread: ; preds = %bb.h, %bb.g, %bb.d, %bb.b, %bb.c, %bb.a, %bb.i
  %.1 = phi i1 [ false, %bb.d ], [ %i.ak, %bb.i ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.g ], [ false, %bb.h ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco42MeshPredictionSchemeGeometricNormalDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21ComputeOriginalValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.draco::VectorD.124", align 4 ; 11 uses
  %7 = alloca [2 x i32], align 4                  ; 5 uses
  %8 = alloca %"class.draco::IndexType.93", align 4 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %5, ptr %i.b, align 8, !tbaa !246
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !182
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !183
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2                   ; 2 uses
  %i.l = trunc i64 %i.k to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false), !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %wide.trip.count = and i64 %i.k, 2147483647
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret i1 true

bb.b:                                             ; preds = %.lr.ph, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit ] ; 5 uses
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !182
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !183 ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2                 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.ae, %indvars.iv
  br i1 %.not.i.i, label %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %indvars.iv, i64 noundef %i.ae) #20
  unreachable

_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit: ; preds = %bb.b
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !185
  store i32 %i.ag, ptr %8, align 4, !tbaa !185
  call void @_ZN5draco48MeshPredictionSchemeGeometricNormalPredictorAreaIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21ComputePredictedValueENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPi(ptr noundef nonnull align 8 dereferenceable(60) %i.a, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %8, ptr noundef nonnull %6)
  %i.ah = load i32, ptr %6, align 4, !tbaa !102   ; 2 uses
  %i.ai = call i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !102 ; 2 uses
  %i.ak = call i32 @llvm.abs.i32(i32 %i.aj, i1 true)
  %narrow.i = add nuw i32 %i.ak, %i.ai
  %i.al = zext i32 %narrow.i to i64
  %i.am = load i32, ptr %i.o, align 4, !tbaa !102 ; 2 uses
  %i.an = call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add nuw nsw i64 %i.al, %i.ao            ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit
  %i.ar = load i32, ptr %i.p, align 8, !tbaa !172
  store i32 %i.ar, ptr %6, align 4, !tbaa !102
  br label %_ZNK5draco17OctahedronToolBox25CanonicalizeIntegerVectorIiEEvPT_.exit

bb.e:                                             ; preds = %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE2atEm.exit
  %i.as = sext i32 %i.ah to i64
  %i.at = load i32, ptr %i.p, align 8, !tbaa !172 ; 3 uses
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = mul nsw i64 %i.au, %i.as
  %i.aw = sdiv i64 %i.av, %i.ap
  %i.ax = trunc i64 %i.aw to i32                  ; 2 uses
  store i32 %i.ax, ptr %6, align 4, !tbaa !102
  %i.ay = sext i32 %i.aj to i64
  %i.az = mul nsw i64 %i.au, %i.ay
  %i.ba = sdiv i64 %i.az, %i.ap
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  store i32 %i.bb, ptr %i.n, align 4, !tbaa !102
  %i.bc = icmp sgt i32 %i.am, -1
  %i.bd = call i32 @llvm.abs.i32(i32 %i.ax, i1 true)
  %i.be = call i32 @llvm.abs.i32(i32 %i.bb, i1 true)
  %i.bf = add nuw i32 %i.be, %i.bd                ; 2 uses
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bg = sub i32 %i.at, %i.bf
  store i32 %i.bg, ptr %i.o, align 4, !tbaa !102
  br label %_ZNK5draco17OctahedronToolBox25CanonicalizeIntegerVectorIiEEvPT_.exit

bb.g:                                             ; preds = %bb.e
  %.neg.i = sub i32 %i.bf, %i.at
  store i32 %.neg.i, ptr %i.o, align 4, !tbaa !102
  br label %_ZNK5draco17OctahedronToolBox25CanonicalizeIntegerVectorIiEEvPT_.exit

_ZNK5draco17OctahedronToolBox25CanonicalizeIntegerVectorIiEEvPT_.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.bh = call noundef zeroext i1 @_ZN5draco14RAnsBitDecoder13DecodeNextBitEv(ptr noundef nonnull align 8 dereferenceable(17) %i.q)
  %i.bi = load i32, ptr %6, align 4, !tbaa !102   ; 2 uses
  br i1 %i.bh, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %_ZNK5draco17OctahedronToolBox25CanonicalizeIntegerVectorIiEEvPT_.exit
  %i.bj = sub nsw i32 0, %i.bi                    ; 2 uses
  store i32 %i.bj, ptr %6, align 4, !tbaa !103
  %i.bk = load <2 x i32>, ptr %i.n, align 4, !tbaa !102, !noalias !819
  %i.bl = sub nsw <2 x i32> zeroinitializer, %i.bk ; 2 uses
  store <2 x i32> %i.bl, ptr %i.n, align 4, !tbaa !103
  %i.bm = extractelement <2 x i32> %i.bl, i64 0
  br label %bb.i

thread-pre-split:                                 ; preds = %_ZNK5draco17OctahedronToolBox25CanonicalizeIntegerVectorIiEEvPT_.exit
  %.pr11 = load i32, ptr %i.n, align 4, !tbaa !102
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split, %bb.h
  %i.bn = phi i32 [ %.pr11, %thread-pre-split ], [ %i.bm, %bb.h ] ; 4 uses
  %i.bo = phi i32 [ %i.bi, %thread-pre-split ], [ %i.bj, %bb.h ]
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = load i32, ptr %i.p, align 8, !tbaa !172 ; 2 uses
  %i.br = add nsw i32 %i.bq, %i.bn
  %i.bs = load i32, ptr %i.o, align 4, !tbaa !102
  %i.bt = add nsw i32 %i.bs, %i.bq
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.bu = icmp slt i32 %i.bn, 0
  br i1 %i.bu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bv = load i32, ptr %i.o, align 4, !tbaa !102 ; 2 uses
  %i.bw = call i32 @llvm.abs.i32(i32 %i.bv, i1 true)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bx = load i32, ptr %i.r, align 8, !tbaa !170
  %i.by = load i32, ptr %i.o, align 4, !tbaa !102 ; 2 uses
  %i.bz = call i32 @llvm.abs.i32(i32 %i.by, i1 true)
  %i.ca = sub nsw i32 %i.bx, %i.bz
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cb = phi i32 [ %i.bv, %bb.l ], [ %i.by, %bb.m ]
  %.013.i = phi i32 [ %i.bw, %bb.l ], [ %i.ca, %bb.m ] ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cd = call i32 @llvm.abs.i32(i32 %i.bn, i1 true)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ce = load i32, ptr %i.r, align 8, !tbaa !170
  %i.cf = call i32 @llvm.abs.i32(i32 %i.bn, i1 true)
  %i.cg = sub nsw i32 %i.ce, %i.cf
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.j
  %.1.i = phi i32 [ %i.br, %bb.j ], [ %.013.i, %bb.o ], [ %.013.i, %bb.p ] ; 12 uses
  %.0.i = phi i32 [ %i.bt, %bb.j ], [ %i.cd, %bb.o ], [ %i.cg, %bb.p ] ; 11 uses
  %i.ch = icmp eq i32 %.1.i, 0                    ; 2 uses
  %i.ci = icmp eq i32 %.0.i, 0                    ; 2 uses
  %i.cj = or i32 %.0.i, %.1.i
  %or.cond.i.i = icmp eq i32 %i.cj, 0
  %.pre.i.i = load i32, ptr %i.r, align 8         ; 4 uses
  br i1 %or.cond.i.i, label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = icmp eq i32 %.0.i, %.pre.i.i            ; 2 uses
  %or.cond39.i.i = select i1 %i.ch, i1 %i.ck, i1 false
  br i1 %or.cond39.i.i, label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = icmp eq i32 %.1.i, %.pre.i.i            ; 2 uses
  %or.cond3.i.i = and i1 %i.ci, %i.cl
  br i1 %or.cond3.i.i, label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.ch, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cm = load i32, ptr %i.p, align 8, !tbaa !172 ; 2 uses
  %i.cn = icmp sgt i32 %.0.i, %i.cm
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %factor43.i.i = shl i32 %i.cm, 1
  %i.co = sub i32 %factor43.i.i, %.0.i
  br label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit

bb.w:                                             ; preds = %bb.u, %bb.t
  br i1 %i.cl, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cp = load i32, ptr %i.p, align 8, !tbaa !172 ; 2 uses
  %i.cq = icmp slt i32 %.0.i, %i.cp
  br i1 %i.cq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %factor42.i.i = shl i32 %i.cp, 1
  %i.cr = sub i32 %factor42.i.i, %.0.i
  br label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit

bb.z:                                             ; preds = %bb.x, %bb.w
  br i1 %i.ck, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.cs = load i32, ptr %i.p, align 8, !tbaa !172 ; 2 uses
  %i.ct = icmp slt i32 %.1.i, %i.cs
  br i1 %i.ct, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %factor41.i.i = shl i32 %i.cs, 1
  %i.cu = sub i32 %factor41.i.i, %.1.i
  br label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit

bb.ac:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.ci, label %bb.ad, label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cv = load i32, ptr %i.p, align 8, !tbaa !172 ; 2 uses
  %i.cw = icmp sgt i32 %.1.i, %i.cv
  br i1 %i.cw, label %bb.ae, label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit

bb.ae:                                            ; preds = %bb.ad
  %factor.i.i = shl i32 %i.cv, 1
  %i.cx = sub i32 %factor.i.i, %.1.i
  br label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit

_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit: ; preds = %bb.q, %bb.r, %bb.s, %bb.v, %bb.y, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %.025.i.i = phi i32 [ %.0.i, %bb.ac ], [ %i.co, %bb.v ], [ %i.cr, %bb.y ], [ %.0.i, %bb.ab ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ %.1.i, %bb.s ], [ %.0.i, %bb.r ], [ %.pre.i.i, %bb.q ]
  %.0.i.i = phi i32 [ %.1.i, %bb.ac ], [ 0, %bb.v ], [ %.1.i, %bb.y ], [ %i.cu, %bb.ab ], [ %i.cx, %bb.ae ], [ %.1.i, %bb.ad ], [ %.1.i, %bb.s ], [ %.0.i, %bb.r ], [ %.pre.i.i, %bb.q ]
  store i32 %.0.i.i, ptr %7, align 4, !tbaa !102
  store i32 %.025.i.i, ptr %9, align 4, !tbaa !102
  %i.cy = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cy
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cy
  %i.db = load i32, ptr %i.s, align 8, !tbaa !179
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph.i.i.a, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit

.lr.ph.i.i.a:                                     ; preds = %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit
  %10 = load ptr, ptr %i.v, align 8               ; 3 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ak, %.lr.ph.i.i.a
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.a ], [ %indvars.iv.next.i.i, %bb.ak ] ; 4 uses
  %11 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.i.i
  %12 = load i32, ptr %11, align 4, !tbaa !102    ; 3 uses
  %i.dd = load i32, ptr %i.t, align 8, !tbaa !175 ; 2 uses
  %i.de = icmp sgt i32 %12, %i.dd
  br i1 %i.de, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %13 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.i.i
  store i32 %i.dd, ptr %13, align 4, !tbaa !102
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.df = load i32, ptr %i.u, align 4, !tbaa !174 ; 2 uses
  %i.dg = icmp slt i32 %12, %i.df
  %14 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.i.i ; 2 uses
  br i1 %i.dg, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.df, ptr %14, align 4, !tbaa !102
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  store i32 %12, ptr %14, align 4, !tbaa !102
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ag
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dh = load i32, ptr %i.s, align 8, !tbaa !179 ; 2 uses
  %15 = sext i32 %i.dh to i64
  %16 = icmp slt i64 %indvars.iv.next.i.i, %15
  br i1 %16, label %bb.af, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i, !llvm.loop !1

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i: ; preds = %bb.ak
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit

.lr.ph.i:                                         ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i, %bb.ao
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ao ], [ 0, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.i
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !102
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !102
  %i.dn = add i32 %i.dm, %i.dk                    ; 5 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.i ; 2 uses
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !102
  %i.dp = load i32, ptr %i.t, align 8, !tbaa !175
  %i.dq = icmp sgt i32 %i.dn, %i.dp
  br i1 %i.dq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph.i
  %i.dr = load i32, ptr %i.w, align 4, !tbaa !176
  %i.ds = sub nsw i32 %i.dn, %i.dr
  br label %.sink.split.i

bb.am:                                            ; preds = %.lr.ph.i
  %i.dt = load i32, ptr %i.u, align 4, !tbaa !174
  %i.du = icmp slt i32 %i.dn, %i.dt
  br i1 %i.du, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dv = load i32, ptr %i.w, align 4, !tbaa !176
  %i.dw = add nsw i32 %i.dv, %i.dn
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.an, %bb.al
  %.sink.i = phi i32 [ %i.ds, %bb.al ], [ %i.dw, %bb.an ]
  store i32 %.sink.i, ptr %i.do, align 4, !tbaa !102
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split.i, %bb.am
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dx = load i32, ptr %i.s, align 8, !tbaa !179
  %i.dy = sext i32 %i.dx to i64
  %i.dz = icmp slt i64 %indvars.iv.next.i, %i.dy
  br i1 %i.dz, label %.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit, !llvm.loop !2

_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit: ; preds = %bb.ao, %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !818
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco48MeshPredictionSchemeGeometricNormalPredictorAreaIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco48MeshPredictionSchemeGeometricNormalPredictorAreaIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23SetNormalPredictionModeENS_20NormalPredictionModeE(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %switch = icmp ult i32 %1, 2                    ; 2 uses
  br i1 %switch, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %1, ptr %i.a, align 8, !tbaa !238
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.sink.split
  ret i1 %switch
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE23GetNormalPredictionModeEv(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !238
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco48MeshPredictionSchemeGeometricNormalPredictorAreaIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE21ComputePredictedValueENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEPi(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %4 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %5 = alloca %"class.draco::IndexType", align 4  ; 4 uses
  %6 = alloca %"class.draco::VertexCornersIterator.141", align 8 ; 7 uses
  %7 = alloca %"class.draco::VectorD.120", align 8 ; 7 uses
  %8 = alloca %"class.draco::VectorD.120", align 8 ; 8 uses
  %9 = alloca %"class.draco::VectorD.120", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.c = load i32, ptr %1, align 4, !tbaa !185    ; 4 uses
  store ptr %i.b, ptr %6, align 8, !tbaa !248
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.c, ptr %i.d, align 8, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  store i32 %i.c, ptr %i.e, align 4, !tbaa !185
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 1, ptr %i.f, align 8, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.g = icmp eq i32 %i.c, -1
  br i1 %i.g, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.c to i64
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !204, !noalias !856
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.h
  %i.k = load i32, ptr %i.j, align 4, !tbaa !206, !noalias !856
  %i.l = zext i32 %i.k to i64
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %bb.b, %bb.a
  %storemerge.i.i = phi i64 [ %i.l, %bb.b ], [ 4294967295, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !135, !noalias !855 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !118, !noalias !855
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !58, !noalias !855 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2                   ; 2 uses
  %.not.i.i.i = icmp ult i64 %storemerge.i.i, %i.u
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIiSaIiEE2atEm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %storemerge.i.i, i64 noundef %i.u) #20, !noalias !855
  unreachable

_ZNKSt6vectorIiSaIiEE2atEm.exit.i:                ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %storemerge.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !102, !noalias !855
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !246, !noalias !858
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !214, !noalias !858 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !245, !noalias !858 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 100
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !98, !range !216, !noalias !859, !noundef !217
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %.else.i.i

.else.i.i:                                        ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !859
  %i.aj = zext i32 %i.ab to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj
  %storemerge.i.else.val.i.i = load i32, ptr %i.ak, align 4, !tbaa !102, !noalias !859
  br label %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNKSt6vectorIiSaIiEE2atEm.exit.i, %.else.i.i
  %storemerge.i.i.i = phi i32 [ %i.ab, %_ZNKSt6vectorIiSaIiEE2atEm.exit.i ], [ %storemerge.i.else.val.i.i, %.else.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !tbaa !186, !alias.scope !858
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !858
  store i32 %storemerge.i.i.i, ptr %5, align 4, !tbaa !219, !noalias !858
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.am = load i8, ptr %i.al, align 8, !tbaa !101, !noalias !858
  %i.an = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5, i8 noundef signext %i.am, ptr noundef nonnull align 8 %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !858
  %i.ao = load i32, ptr %i.e, align 4, !tbaa !185 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit46
  %i.ax = phi i32 [ %i.ao, %.lr.ph ], [ %i.fh, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit46 ] ; 4 uses
  %.sroa.077.0126 = phi i64 [ 0, %.lr.ph ], [ %i.fc, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit46 ]
  %.sroa.12.0125 = phi i64 [ 0, %.lr.ph ], [ %i.fe, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit46 ]
  %.sroa.21.0124 = phi i64 [ 0, %.lr.ph ], [ %i.fg, %_ZNK5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_11CornerTableEEEE20GetPositionForCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit46 ]
  %i.ay = load i32, ptr %i.aq, align 8, !tbaa !238
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ba = load i32, ptr %1, align 4, !tbaa !185   ; 5 uses
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, label %bb.f

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  br label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i31

bb.f:                                             ; preds = %bb.e
  %i.bc = insertelement <2 x i32> poison, i32 %i.ba, i64 0
  %i.bd = shufflevector <2 x i32> %i.bc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.be = add nuw <2 x i32> %i.bd, <i32 0, i32 1>
  %i.bf = urem <2 x i32> %i.be, splat (i32 3)
  %i.bg = icmp eq <2 x i32> %i.bf, zeroinitializer ; 2 uses
  %i.bh = extractelement <2 x i1> %i.bg, i64 1
  %spec.select.i.v = select i1 %i.bh, i32 -2, i32 1
  %spec.select.i = add i32 %i.ba, %spec.select.i.v ; 2 uses
  %i.bi = extractelement <2 x i1> %i.bg, i64 0
end_hunk_3
begin_hunk_4_@_ZN5draco28PredictionSchemeDeltaDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEE21ComputeOriginalValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  store i32 %i.ac, ptr %i.ae, align 4, !tbaa !102
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 %i.y, ptr %i.ae, align 4, !tbaa !102
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.af = load i32, ptr %i.a, align 8, !tbaa !179 ; 3 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next.i.i, %i.ag
  br i1 %i.ah, label %bb.e, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i, !llvm.loop !1

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i: ; preds = %bb.j
  %i.ai = icmp sgt i32 %i.af, 0
  br i1 %i.ai, label %.lr.ph.i, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit

.lr.ph.i:                                         ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.o ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !102
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !102
  %i.ao = add i32 %i.an, %i.al                    ; 5 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !102
  %i.aq = load i32, ptr %i.u, align 8, !tbaa !175
  %i.ar = icmp sgt i32 %i.ao, %i.aq
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %i.aj, align 4, !tbaa !176
  %i.at = sub nsw i32 %i.ao, %i.as
  br label %.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.au = load i32, ptr %i.v, align 4, !tbaa !174
  %i.av = icmp slt i32 %i.ao, %i.au
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = load i32, ptr %i.aj, align 4, !tbaa !176
  %i.ax = add nsw i32 %i.aw, %i.ao
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %bb.l
  %.sink.i = phi i32 [ %i.at, %bb.l ], [ %i.ax, %bb.n ]
  store i32 %.sink.i, ptr %i.ap, align 4, !tbaa !102
  br label %bb.o

bb.o:                                             ; preds = %.sink.split.i, %bb.m
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !179 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv.next.i, %i.az
  br i1 %i.ba, label %bb.k, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit, !llvm.loop !2

_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit: ; preds = %bb.o, %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i
  %i.bb = phi i32 [ %i.af, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i ], [ %i.s, %_ZN5draco33PredictionSchemeWrapTransformBaseIiE4InitEi.exit ], [ %i.ay, %bb.o ] ; 2 uses
  %i.bc = icmp slt i32 %4, %3
  br i1 %i.bc, label %.lr.ph, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit

.lr.ph:                                           ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  %i.bd = sub nsw i64 0, %i.c
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bh = icmp sgt i32 %i.bb, 0
  br i1 %i.bh, label %.lr.ph.split.preheader, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.bi = sext i32 %3 to i64
  br label %.lr.ph.split

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit30, %.lr.ph, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #18
  ret i1 true

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit30
  %i.bj = phi i32 [ %i.bb, %.lr.ph.split.preheader ], [ %i.cs, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit30 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.c, %.lr.ph.split.preheader ], [ %indvars.iv.next, %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit30 ] ; 3 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bd
  %i.bm = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.bn = icmp sgt i32 %i.bj, 0
  br i1 %i.bn, label %.lr.ph.i.i21, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit30

.lr.ph.i.i21:                                     ; preds = %.lr.ph.split
  %i.bo = load ptr, ptr %i.b, align 8             ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.u, %.lr.ph.i.i21
  %indvars.iv.i.i22 = phi i64 [ 0, %.lr.ph.i.i21 ], [ %indvars.iv.next.i.i23, %bb.u ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i22
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !102 ; 3 uses
  %i.br = load i32, ptr %i.be, align 8, !tbaa !175 ; 2 uses
  %i.bs = icmp sgt i32 %i.bq, %i.br
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i22
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !102
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.bu = load i32, ptr %i.bf, align 4, !tbaa !174 ; 2 uses
  %i.bv = icmp slt i32 %i.bq, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i22 ; 2 uses
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !102
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  store i32 %i.bq, ptr %i.bw, align 4, !tbaa !102
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q
  %indvars.iv.next.i.i23 = add nuw nsw i64 %indvars.iv.i.i22, 1 ; 2 uses
  %i.bx = load i32, ptr %i.a, align 8, !tbaa !179 ; 3 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next.i.i23, %i.by
  br i1 %i.bz, label %bb.p, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i24, !llvm.loop !1

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i24: ; preds = %bb.u
  %i.ca = icmp sgt i32 %i.bx, 0
  br i1 %i.ca, label %.lr.ph.i25, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit30

.lr.ph.i25:                                       ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i24, %bb.y
  %indvars.iv.i26 = phi i64 [ %indvars.iv.next.i27, %bb.y ], [ 0, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i24 ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i26
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !102
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.i26
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !102
  %i.cf = add i32 %i.ce, %i.cc                    ; 5 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i26 ; 2 uses
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !102
  %i.ch = load i32, ptr %i.be, align 8, !tbaa !175
  %i.ci = icmp sgt i32 %i.cf, %i.ch
  br i1 %i.ci, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i25
  %i.cj = load i32, ptr %i.bg, align 4, !tbaa !176
  %i.ck = sub nsw i32 %i.cf, %i.cj
  br label %.sink.split.i28

bb.w:                                             ; preds = %.lr.ph.i25
  %i.cl = load i32, ptr %i.bf, align 4, !tbaa !174
  %i.cm = icmp slt i32 %i.cf, %i.cl
  br i1 %i.cm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cn = load i32, ptr %i.bg, align 4, !tbaa !176
  %i.co = add nsw i32 %i.cn, %i.cf
  br label %.sink.split.i28

.sink.split.i28:                                  ; preds = %bb.x, %bb.v
  %.sink.i29 = phi i32 [ %i.ck, %bb.v ], [ %i.co, %bb.x ]
  store i32 %.sink.i29, ptr %i.cg, align 4, !tbaa !102
  br label %bb.y

bb.y:                                             ; preds = %.sink.split.i28, %bb.w
  %indvars.iv.next.i27 = add nuw nsw i64 %indvars.iv.i26, 1 ; 2 uses
  %i.cp = load i32, ptr %i.a, align 8, !tbaa !179 ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next.i27, %i.cq
  br i1 %i.cr, label %.lr.ph.i25, label %_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit30, !llvm.loop !2

_ZNK5draco37PredictionSchemeWrapDecodingTransformIiiE20ComputeOriginalValueEPKiS3_Pi.exit30: ; preds = %bb.y, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i24, %.lr.ph.split
  %i.cs = phi i32 [ %i.bj, %.lr.ph.split ], [ %i.bx, %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.i24 ], [ %i.cp, %bb.y ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.c ; 2 uses
  %i.ct = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %i.ct, label %.lr.ph.split, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, !llvm.loop !887
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #20 = { noreturn }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null, null}
!1 = distinct !{!1, !95}
!2 = distinct !{!2, !95}
!3 = distinct !{!3, !95}
!4 = distinct !{!4, !95}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"p1 _ZTSN5draco37PredictionSchemeTypedDecoderInterfaceIiiEE", !15, i64 0}
!17 = !{!"_ZTSSt10_Head_baseILm0EPN5draco37PredictionSchemeTypedDecoderInterfaceIiiEELb0EE", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"p1 _ZTSN5draco17PointCloudDecoderE", !15, i64 0}
!20 = !{!"p1 _ZTSN5draco14PointAttributeE", !15, i64 0}
!21 = !{!"_ZTSSt10_Head_baseILm0EPN5draco14PointAttributeELb0EE", !20, i64 0}
!22 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco14PointAttributeESt14default_deleteIS1_EEE", !21, i64 0}
!23 = !{!"_ZTSSt5tupleIJPN5draco14PointAttributeESt14default_deleteIS1_EEE", !22, i64 0}
!24 = !{!"_ZTSSt15__uniq_ptr_implIN5draco14PointAttributeESt14default_deleteIS1_EE", !23, i64 0}
!25 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco14PointAttributeESt14default_deleteIS1_ELb1ELb1EE", !24, i64 0}
!26 = !{!"_ZTSSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EE", !25, i64 0}
!27 = !{!"_ZTSN5draco26SequentialAttributeDecoderE", !19, i64 8, !20, i64 16, !10, i64 24, !26, i64 32}
!28 = !{!27, !19, i64 8}
!29 = !{!"p1 _ZTSN5draco10PointCloudE", !15, i64 0}
!30 = !{!"p1 _ZTSSt10unique_ptrIN5draco26AttributesDecoderInterfaceESt14default_deleteIS1_EE", !15, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco26AttributesDecoderInterfaceESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco26AttributesDecoderInterfaceESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !31, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN5draco26AttributesDecoderInterfaceESt14default_deleteIS2_EESaIS5_EE", !32, i64 0}
!34 = !{!"_ZTSSt6vectorISt10unique_ptrIN5draco26AttributesDecoderInterfaceESt14default_deleteIS2_EESaIS5_EE", !33, i64 0}
!35 = !{!"p1 int", !15, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !36, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !37, i64 0}
!39 = !{!"_ZTSSt6vectorIiSaIiEE", !38, i64 0}
!40 = !{!"p1 _ZTSN5draco13DecoderBufferE", !15, i64 0}
!41 = !{!"p1 _ZTSN5draco12DracoOptionsINS_17GeometryAttribute4TypeEEE", !15, i64 0}
!42 = !{!"_ZTSN5draco17PointCloudDecoderE", !29, i64 8, !34, i64 16, !39, i64 40, !40, i64 64, !9, i64 72, !9, i64 73, !41, i64 80}
!43 = !{!42, !9, i64 72}
!44 = !{!"p1 _ZTSN5draco9IndexTypeIjNS_20PointIndex_tag_type_EEE", !15, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_20PointIndex_tag_type_EEESaIS3_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!45, !44, i64 8}
!47 = !{!45, !44, i64 0}
!48 = !{!"p1 omnipotent char", !15, i64 0}
!49 = !{!"long", !9, i64 0}
!50 = !{!"_ZTSN5draco13DecoderBuffer10BitDecoderE", !48, i64 0, !48, i64 8, !49, i64 16}
!51 = !{!"bool", !9, i64 0}
!52 = !{!"short", !9, i64 0}
!53 = !{!"_ZTSN5draco13DecoderBufferE", !48, i64 0, !49, i64 8, !49, i64 16, !50, i64 24, !51, i64 48, !52, i64 50}
!54 = !{!53, !49, i64 8}
!55 = !{!53, !49, i64 16}
!56 = !{!53, !48, i64 0}
!57 = !{!16, !16, i64 0}
!58 = !{!36, !35, i64 0}
!59 = !{!36, !35, i64 16}
!60 = !{!"p1 _ZTSN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEEE", !15, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!20, !20, i64 0}
!63 = !{!"p1 _ZTSN5draco10DataBufferE", !15, i64 0}
!64 = !{!"_ZTSN5draco20DataBufferDescriptorE", !49, i64 0, !49, i64 8}
!65 = !{!"_ZTSN5draco8DataTypeE", !9, i64 0}
!66 = !{!"_ZTSN5draco17GeometryAttribute4TypeE", !9, i64 0}
!67 = !{!"_ZTSN5draco17GeometryAttributeE", !63, i64 0, !64, i64 8, !9, i64 24, !65, i64 28, !51, i64 32, !49, i64 40, !49, i64 48, !66, i64 56, !10, i64 60}
!68 = !{!"_ZTSSt10_Head_baseILm0EPN5draco10DataBufferELb0EE", !63, i64 0}
!69 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco10DataBufferESt14default_deleteIS1_EEE", !68, i64 0}
!70 = !{!"_ZTSSt5tupleIJPN5draco10DataBufferESt14default_deleteIS1_EEE", !69, i64 0}
!71 = !{!"_ZTSSt15__uniq_ptr_implIN5draco10DataBufferESt14default_deleteIS1_EE", !70, i64 0}
!72 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco10DataBufferESt14default_deleteIS1_ELb1ELb1EE", !71, i64 0}
!73 = !{!"_ZTSSt10unique_ptrIN5draco10DataBufferESt14default_deleteIS1_EE", !72, i64 0}
!74 = !{!"p1 _ZTSN5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE", !15, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE12_Vector_implE", !75, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE", !76, i64 0}
!78 = !{!"_ZTSSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE", !77, i64 0}
!79 = !{!"_ZTSN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEEE", !78, i64 0}
!80 = !{!"p1 _ZTSN5draco22AttributeTransformDataE", !15, i64 0}
!81 = !{!"_ZTSSt10_Head_baseILm0EPN5draco22AttributeTransformDataELb0EE", !80, i64 0}
!82 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco22AttributeTransformDataESt14default_deleteIS1_EEE", !81, i64 0}
!83 = !{!"_ZTSSt5tupleIJPN5draco22AttributeTransformDataESt14default_deleteIS1_EEE", !82, i64 0}
!84 = !{!"_ZTSSt15__uniq_ptr_implIN5draco22AttributeTransformDataESt14default_deleteIS1_EE", !83, i64 0}
!85 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco22AttributeTransformDataESt14default_deleteIS1_ELb1ELb1EE", !84, i64 0}
!86 = !{!"_ZTSSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EE", !85, i64 0}
!87 = !{!"_ZTSN5draco14PointAttributeE", !67, i64 0, !73, i64 64, !79, i64 72, !10, i64 96, !51, i64 100, !86, i64 104}
!88 = !{!87, !10, i64 96}
!89 = !{!67, !49, i64 48}
!90 = !{!67, !63, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!92 = !{!91, !48, i64 0}
!93 = !{!63, !63, i64 0}
!94 = !{!91, !48, i64 8}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!27, !20, i64 16}
!97 = !{!67, !66, i64 56}
!98 = !{!87, !51, i64 100}
!99 = !{!75, !74, i64 0}
!100 = !{!67, !65, i64 28}
!101 = !{!67, !9, i64 24}
!102 = !{!10, !10, i64 0}
!103 = !{!9, !9, i64 0}
!104 = !{!"llvm.loop.isvectorized", i32 1}
!105 = !{!"llvm.loop.unroll.runtime.disable"}
!106 = !{!52, !52, i64 0}
!107 = !{!42, !29, i64 8}
!108 = !{!"p1 _ZTSSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EE", !15, i64 0}
!109 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !108, i64 0, !108, i64 8, !108, i64 16}
!110 = !{!109, !108, i64 0}
!111 = !{!"_ZTSN5draco25PredictionSchemeInterfaceE"}
!112 = !{!"_ZTSN5draco32PredictionSchemeDecoderInterfaceE", !111, i64 0}
!113 = !{!"_ZTSN5draco37PredictionSchemeTypedDecoderInterfaceIiiEE", !112, i64 0}
!114 = !{!"_ZTSN5draco33PredictionSchemeWrapTransformBaseIiEE", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !39, i64 24}
!115 = !{!"_ZTSN5draco37PredictionSchemeWrapDecodingTransformIiiEE", !114, i64 0}
!116 = !{!"_ZTSN5draco23PredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEEEE", !113, i64 0, !20, i64 8, !115, i64 16}
!117 = !{!116, !20, i64 8}
!118 = !{!36, !35, i64 8}
!119 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!120 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!121 = !{!"p1 _ZTSN5draco4MeshE", !15, i64 0}
!122 = !{!"p1 _ZTSN5draco24MeshAttributeCornerTableE", !15, i64 0}
!123 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !15, i64 0}
!124 = !{!"p1 _ZTSSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE", !15, i64 0}
!125 = !{!"_ZTSN5draco24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEE", !121, i64 0, !122, i64 8, !123, i64 16, !124, i64 24}
!126 = !{!125, !121, i64 0}
!127 = !{!125, !122, i64 8}
!128 = !{!125, !124, i64 24}
!129 = !{!125, !123, i64 16}
!130 = !{!"p1 _ZTSN5draco11CornerTableE", !15, i64 0}
!131 = !{!"_ZTSN5draco24MeshPredictionSchemeDataINS_11CornerTableEEE", !121, i64 0, !130, i64 8, !123, i64 16, !124, i64 24}
!132 = !{!131, !121, i64 0}
!133 = !{!131, !130, i64 8}
!134 = !{!131, !124, i64 24}
!135 = !{!131, !123, i64 16}
!136 = !{!121, !121, i64 0}
!137 = !{!122, !122, i64 0}
!138 = !{!123, !123, i64 0}
!139 = !{!124, !124, i64 0}
!140 = !{i64 0, i64 8, !136, i64 8, i64 8, !137, i64 16, i64 8, !138, i64 24, i64 8, !139}
!141 = !{!"p1 long", !15, i64 0}
!142 = !{!"_ZTSSt18_Bit_iterator_base", !141, i64 0, !10, i64 8}
!143 = !{!142, !141, i64 0}
!144 = !{!142, !10, i64 8}
!145 = !{!"_ZTSSt13_Bit_iterator", !142, i64 0}
!146 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !145, i64 0, !145, i64 16, !141, i64 32}
!147 = !{!146, !141, i64 32}
!148 = !{!"_ZTSN5draco27MeshPredictionSchemeDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEEE", !116, i64 0, !125, i64 64}
!149 = !{!"_ZTSN5draco31constrained_multi_parallelogram4ModeE", !9, i64 0}
!150 = !{!"_ZTSSt10_Head_baseILm0EPiLb0EE", !35, i64 0}
!151 = !{!"_ZTSSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEE", !150, i64 0}
!152 = !{!"_ZTSSt5tupleIJPiSt14default_deleteIA_iEEE", !151, i64 0}
!153 = !{!"_ZTSSt15__uniq_ptr_implIiSt14default_deleteIA_iEE", !152, i64 0}
!154 = !{!"_ZTSSt15__uniq_ptr_dataIiSt14default_deleteIA_iELb1ELb1EE", !153, i64 0}
!155 = !{!"_ZTSSt10unique_ptrIA_iSt14default_deleteIS0_EE", !154, i64 0}
!156 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !146, i64 0}
!157 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !156, i64 0}
!158 = !{!"_ZTSSt6vectorIbSaIbEE", !157, i64 0}
!159 = !{!"_ZTSN5draco36MeshPredictionSchemeTexCoordsDecoderIiNS_37PredictionSchemeWrapDecodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEEE", !148, i64 0, !20, i64 96, !44, i64 104, !155, i64 112, !10, i64 120, !158, i64 128, !10, i64 168}
!160 = !{!159, !10, i64 168}
!161 = !{!35, !35, i64 0}
end_hunk_4
