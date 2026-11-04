Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/sequential_integer_attribute_encoder?download=true
inline.NumInlined: 2377
inline.NumDeleted: 912
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZNK5draco17GeometryAttribute12ConvertValueIlEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_:bb.a

bb.y:                                             ; preds = %bb.x
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i104
  store i64 %i.fz, ptr %i.gb, align 8, !tbaa !128
  %i.gc = getelementptr inbounds nuw i8, ptr %.01733.i, i64 8
  %indvars.iv.next.i105 = add nuw nsw i64 %indvars.iv.i104, 1 ; 2 uses
  %i.gd = load i8, ptr %i.fj, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i106 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.gd)
  %i.ge = zext i8 %.sroa.speculated.i106 to i64
  %.not.not.i107 = icmp samesign ult i64 %indvars.iv.next.i105, %i.ge
  br i1 %.not.not.i107, label %bb.w, label %.critedge.i108, !llvm.loop !510

.critedge.i108:                                   ; preds = %bb.y, %bb.v
  %.lcssa.i109 = phi i8 [ %i.fk, %bb.v ], [ %i.gd, %bb.y ] ; 2 uses
  %i.gf = icmp ult i8 %.lcssa.i109, %2
  br i1 %i.gf, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit.sink.split, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.z:                                             ; preds = %bb.b
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated32.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.gh)
  %.not33.i = icmp eq i8 %.sroa.speculated32.i, 0
  br i1 %.not33.i, label %.critedge.i116, label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.z
  %i.gi = load i32, ptr %1, align 4, !tbaa !86
  %i.gj = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !125
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !243
  %i.gn = zext i32 %i.gi to i64
  %i.go = mul nsw i64 %i.gm, %i.gn
  %i.gp = getelementptr i8, ptr %i.gk, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !122
  %i.gs = getelementptr i8, ptr %i.gp, i64 %i.gr  ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !244 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gw = load i8, ptr %i.gv, align 8, !range !61
  %.fr47.i = freeze i8 %i.gw
  %i.gx = trunc i8 %.fr47.i to i1
  %i.gy = icmp ule ptr %i.gu, %i.gs
  %or.cond.not.i = select i1 %i.gx, i1 true, i1 %i.gy
  br i1 %or.cond.not.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, label %.lr.ph41.i

bb.aa:                                            ; preds = %bb.ab
  %i.gz = getelementptr inbounds nuw i8, ptr %.0173440.i, i64 4 ; 2 uses
  %i.ha = icmp ugt ptr %i.gu, %i.gz
  br i1 %i.ha, label %.lr.ph41.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !511

.lr.ph41.i:                                       ; preds = %.lr.ph.i111, %bb.aa
  %indvars.iv.i112 = phi i64 [ %indvars.iv.next.i113, %bb.aa ], [ 0, %.lr.ph.i111 ] ; 2 uses
  %.0173440.i = phi ptr [ %i.gz, %bb.aa ], [ %i.gs, %.lr.ph.i111 ] ; 2 uses
  %i.hb = load float, ptr %.0173440.i, align 4, !tbaa !247 ; 4 uses
  %i.hc = tail call float @llvm.fabs.f32(float %i.hb)
  %or.cond.i.i = fcmp ueq float %i.hc, +inf
  %i.hd = fcmp olt float %i.hb, f0xDF000000
  %or.cond11.i.i = or i1 %i.hd, %or.cond.i.i
  %i.he = fcmp oge float %i.hb, f0x5F000000
  %or.cond12.i.i = or i1 %i.he, %or.cond11.i.i
  br i1 %or.cond12.i.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph41.i
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i112
  %i.hg = fptosi float %i.hb to i64
  store i64 %i.hg, ptr %i.hf, align 8, !tbaa !128
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %i.hh = load i8, ptr %i.gg, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i114 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.hh)
  %i.hi = zext i8 %.sroa.speculated.i114 to i64
  %.not.not.i115 = icmp samesign ult i64 %indvars.iv.next.i113, %i.hi
  br i1 %.not.not.i115, label %bb.aa, label %.critedge.i116, !llvm.loop !511

.critedge.i116:                                   ; preds = %bb.ab, %bb.z
  %.lcssa.i117 = phi i8 [ %i.gh, %bb.z ], [ %i.hh, %bb.ab ] ; 2 uses
  %i.hj = icmp ult i8 %.lcssa.i117, %2
  br i1 %i.hj, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit.sink.split, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ac:                                            ; preds = %bb.b
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated32.i120 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.hl)
  %.not33.i121 = icmp eq i8 %.sroa.speculated32.i120, 0
  br i1 %.not33.i121, label %.critedge.i134, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %bb.ac
  %i.hm = load i32, ptr %1, align 4, !tbaa !86
  %i.hn = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !125
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !243
  %i.hr = zext i32 %i.hm to i64
  %i.hs = mul nsw i64 %i.hq, %i.hr
  %i.ht = getelementptr i8, ptr %i.ho, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !122
  %i.hw = getelementptr i8, ptr %i.ht, i64 %i.hv  ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !244 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ia = load i8, ptr %i.hz, align 8, !range !61
  %.fr47.i123 = freeze i8 %i.ia
  %i.ib = trunc i8 %.fr47.i123 to i1
  %i.ic = icmp ule ptr %i.hy, %i.hw
  %or.cond.not.i124 = select i1 %i.ib, i1 true, i1 %i.ic
  br i1 %or.cond.not.i124, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, label %.lr.ph41.i125

bb.ad:                                            ; preds = %bb.ae
  %i.id = getelementptr inbounds nuw i8, ptr %.0173440.i127, i64 8 ; 2 uses
  %i.ie = icmp ugt ptr %i.hy, %i.id
  br i1 %i.ie, label %.lr.ph41.i125, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !512

.lr.ph41.i125:                                    ; preds = %.lr.ph.i122, %bb.ad
  %indvars.iv.i126 = phi i64 [ %indvars.iv.next.i131, %bb.ad ], [ 0, %.lr.ph.i122 ] ; 2 uses
  %.0173440.i127 = phi ptr [ %i.id, %bb.ad ], [ %i.hw, %.lr.ph.i122 ] ; 2 uses
  %i.if = load double, ptr %.0173440.i127, align 8, !tbaa !248 ; 4 uses
  %i.ig = tail call double @llvm.fabs.f64(double %i.if)
  %or.cond.i.i128 = fcmp ueq double %i.ig, +inf
  %i.ih = fcmp olt double %i.if, f0xC3E0000000000000
  %or.cond11.i.i129 = or i1 %i.ih, %or.cond.i.i128
  %i.ii = fcmp oge double %i.if, f0x43E0000000000000
  %or.cond12.i.i130 = or i1 %i.ii, %or.cond11.i.i129
  br i1 %or.cond12.i.i130, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph41.i125
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i126
  %i.ik = fptosi double %i.if to i64
  store i64 %i.ik, ptr %i.ij, align 8, !tbaa !128
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i126, 1 ; 2 uses
  %i.il = load i8, ptr %i.hk, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i132 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.il)
  %i.im = zext i8 %.sroa.speculated.i132 to i64
  %.not.not.i133 = icmp samesign ult i64 %indvars.iv.next.i131, %i.im
  br i1 %.not.not.i133, label %bb.ad, label %.critedge.i134, !llvm.loop !512

.critedge.i134:                                   ; preds = %bb.ae, %bb.ac
  %.lcssa.i135 = phi i8 [ %i.hl, %bb.ac ], [ %i.il, %bb.ae ] ; 2 uses
  %i.in = icmp ult i8 %.lcssa.i135, %2
  br i1 %i.in, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit.sink.split, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.af:                                            ; preds = %bb.b
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ip = load i8, ptr %i.io, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated29.i139 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ip)
  %.not30.i140 = icmp eq i8 %.sroa.speculated29.i139, 0
  br i1 %.not30.i140, label %.critedge.i148, label %.lr.ph.i141

.lr.ph.i141:                                      ; preds = %bb.af
  %i.iq = load i32, ptr %1, align 4, !tbaa !86
  %i.ir = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !125
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !243
  %i.iv = zext i32 %i.iq to i64
  %i.iw = mul nsw i64 %i.iu, %i.iv
  %i.ix = getelementptr i8, ptr %i.is, i64 %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !122
  %i.ja = getelementptr i8, ptr %i.ix, i64 %i.iz  ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !244 ; 2 uses
  %i.jd = icmp ugt ptr %i.jc, %i.ja
  br i1 %i.jd, label %.lr.ph, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ag:                                            ; preds = %.lr.ph
  %i.je = getelementptr inbounds nuw i8, ptr %.01731.i143259, i64 1 ; 2 uses
  %i.jf = icmp ugt ptr %i.jc, %i.je
  br i1 %i.jf, label %.lr.ph, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !513

.lr.ph:                                           ; preds = %.lr.ph.i141, %bb.ag
  %.01731.i143259 = phi ptr [ %i.je, %bb.ag ], [ %i.ja, %.lr.ph.i141 ] ; 2 uses
  %indvars.iv.i142258 = phi i64 [ %indvars.iv.next.i145, %bb.ag ], [ 0, %.lr.ph.i141 ] ; 2 uses
  %i.jg = load i8, ptr %.01731.i143259, align 1, !tbaa !239, !range !61, !noundef !62
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i142258
  %i.ji = zext nneg i8 %i.jg to i64
  store i64 %i.ji, ptr %i.jh, align 8, !tbaa !128
  %indvars.iv.next.i145 = add nuw nsw i64 %indvars.iv.i142258, 1 ; 2 uses
  %i.jj = load i8, ptr %i.io, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i146 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.jj)
  %i.jk = zext i8 %.sroa.speculated.i146 to i64
  %.not.not.i147 = icmp samesign ult i64 %indvars.iv.next.i145, %i.jk
  br i1 %.not.not.i147, label %bb.ag, label %.critedge.i148, !llvm.loop !513

.critedge.i148:                                   ; preds = %.lr.ph, %bb.af
  %.lcssa.i149 = phi i8 [ %i.ip, %bb.af ], [ %i.jj, %.lr.ph ] ; 2 uses
  %i.jl = icmp ult i8 %.lcssa.i149, %2
  br i1 %i.jl, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit.sink.split, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit.sink.split: ; preds = %.critedge.i148, %.critedge.i134, %.critedge.i116, %.critedge.i108, %.critedge.i99, %.critedge.i86, %.critedge.i73, %.critedge.i60, %.critedge.i47, %.critedge.i34, %.critedge.i
  %.lcssa.i149.sink = phi i8 [ %.lcssa.i135, %.critedge.i134 ], [ %.lcssa.i117, %.critedge.i116 ], [ %.lcssa.i109, %.critedge.i108 ], [ %.lcssa.i100, %.critedge.i99 ], [ %.lcssa.i87, %.critedge.i86 ], [ %.lcssa.i74, %.critedge.i73 ], [ %.lcssa.i61, %.critedge.i60 ], [ %.lcssa.i48, %.critedge.i47 ], [ %.lcssa.i35, %.critedge.i34 ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i149, %.critedge.i148 ]
  %i.jm = zext i8 %2 to i64
  %i.jn = zext i8 %.lcssa.i149.sink to i64        ; 2 uses
  %i.jo = shl nuw nsw i64 %i.jn, 3
  %scevgep.i151 = getelementptr i8, ptr %3, i64 %i.jo
  %i.jp = xor i64 %i.jn, -1
  %i.jq = add nsw i64 %i.jp, %i.jm
  %i.jr = shl nsw i64 %i.jq, 3
  %i.js = and i64 %i.jr, 34359738360
  %i.jt = add nuw nsw i64 %i.js, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i151, i8 0, i64 range(i64 0, 2041) %i.jt, i1 false), !tbaa !128
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit: ; preds = %bb.ag, %.lr.ph41.i125, %bb.ad, %.lr.ph41.i, %bb.aa, %bb.x, %bb.w, %bb.t, %bb.q, %bb.n, %bb.k, %bb.h, %bb.f, %bb.d, %.lr.ph.i141, %.lr.ph.i27, %.lr.ph.i, %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit.sink.split, %.critedge.i148, %.critedge.i134, %.lr.ph.i122, %.critedge.i116, %.lr.ph.i111, %.critedge.i108, %.critedge.i99, %.critedge.i86, %.critedge.i73, %.critedge.i60, %.critedge.i47, %.critedge.i34, %.critedge.i, %bb.b, %bb.a
  %.0 = phi i1 [ false, %.lr.ph.i27 ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.t ], [ false, %bb.n ], [ true, %.critedge.i108 ], [ true, %_ZNK5draco17GeometryAttribute17ConvertTypedValueIalEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit.sink.split ], [ true, %.critedge.i116 ], [ true, %.critedge.i148 ], [ true, %.critedge.i ], [ false, %.lr.ph41.i ], [ true, %.critedge.i34 ], [ false, %.lr.ph.i111 ], [ true, %.critedge.i47 ], [ false, %.lr.ph.i ], [ true, %.critedge.i60 ], [ true, %.critedge.i134 ], [ true, %.critedge.i73 ], [ false, %bb.x ], [ true, %.critedge.i86 ], [ false, %.lr.ph.i122 ], [ true, %.critedge.i99 ], [ false, %bb.k ], [ false, %.lr.ph.i141 ], [ false, %.lr.ph41.i125 ], [ false, %bb.q ], [ false, %bb.w ], [ false, %bb.aa ], [ false, %bb.ad ], [ false, %bb.ag ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco48MeshPredictionSchemeGeometricNormalPredictorBaseIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEEE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #17
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEEE, i64 16), ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #19, !inline_history !190
  br label %_ZN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEED2Ev.exit

_ZN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEEE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #17, !inline_history !514
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEEE, i64 16), ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #19, !inline_history !515
  br label %_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEED2Ev.exit

_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 240) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE19GetPredictionMethodEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !249
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ne ptr %i.e, null
  %.0.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %.0.i, label %bb.b, label %_ZNK5draco24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEE13IsInitializedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !157
  %.not.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8
  %.not1.i = icmp eq ptr %i.j, null
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8
  %.not2.i = icmp eq ptr %i.l, null
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %.not2.i
  br i1 %or.cond5.i, label %_ZNK5draco24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEE13IsInitializedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !159
  %i.o = icmp ne ptr %i.n, null
  br label %_ZNK5draco24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEE13IsInitializedEv.exit

_ZNK5draco24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEE13IsInitializedEv.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.o, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE22GetNumParentAttributesEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE22GetParentAttributeTypeEi(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE18SetParentAttributeEPKNS_14PointAttributeE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !138
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !121
  %.not5 = icmp eq i8 %i.d, 3
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %1, ptr %i.e, align 8, !tbaa !249
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco42MeshPredictionSchemeGeometricNormalEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEENS_24MeshPredictionSchemeDataINS_24MeshAttributeCornerTableEEEE20EncodePredictionDataEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !201
  store i32 %i.d, ptr %i.a, align 4, !tbaa !96
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !119
  %i.g = icmp slt i64 %i.f, 1
  br i1 %i.g, label %_ZN5draco13EncoderBuffer6EncodeIiEEbRKT_.exit.i, label %_ZN5draco13EncoderBuffer6EncodeIiEEbRKT_.exit.thread.i

_ZN5draco13EncoderBuffer6EncodeIiEEbRKT_.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  br label %bb.c

_ZN5draco13EncoderBuffer6EncodeIiEEbRKT_.exit.i:  ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !120
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.k = load ptr, ptr %1, align 8, !tbaa !120    ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull %i.j)
  %.pr.i = load i64, ptr %i.e, align 8, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !202
  store i32 %i.q, ptr %i.b, align 4, !tbaa !96
  %i.r = icmp slt i64 %.pr.i, 1
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5draco13EncoderBuffer6EncodeIiEEbRKT_.exit.i
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !120
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.u = load ptr, ptr %1, align 8, !tbaa !120    ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %i.x
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull %i.t)
  br label %bb.c

bb.c:                                             ; preds = %_ZN5draco13EncoderBuffer6EncodeIiEEbRKT_.exit.thread.i, %_ZN5draco13EncoderBuffer6EncodeIiEEbRKT_.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull %1)
  ret i1 true
end_hunk_0
begin_hunk_1_@_ZN5draco28PredictionSchemeDeltaEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEE23ComputeCorrectionValuesEPKiPiiiPKNS_9IndexTypeIjNS_20PointIndex_tag_type_EEE:bb.a
  store i32 %.sink.i, ptr %i.cc, align 4, !tbaa !96
  br label %bb.q

bb.q:                                             ; preds = %.sink.split.i, %bb.o
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1 ; 2 uses
  %i.cl = load i32, ptr %i.a, align 8, !tbaa !203
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next.i22, %i.cm
  br i1 %i.cn, label %.lr.ph.i.i, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, !llvm.loop !3

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit34
  %i.co = phi i32 [ %i.dx, %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit34 ], [ %i.ay, %.lr.ph ] ; 2 uses
  %.041 = phi i32 [ %.0, %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit34 ], [ %.040, %.lr.ph ] ; 2 uses
  %i.cp = zext nneg i32 %.041 to i64              ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cp
  %i.cs = icmp sgt i32 %i.co, 0
  br i1 %i.cs, label %.lr.ph.i.lr.ph.i24, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit34

.lr.ph.i.lr.ph.i24:                               ; preds = %.lr.ph.split
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.as
  br label %.lr.ph.i.i25

.lr.ph.i.i25:                                     ; preds = %bb.aa, %.lr.ph.i.lr.ph.i24
  %indvars.iv.i26 = phi i64 [ 0, %.lr.ph.i.lr.ph.i24 ], [ %indvars.iv.next.i31, %bb.aa ] ; 4 uses
  %.01516.i27 = phi ptr [ %i.ct, %.lr.ph.i.lr.ph.i24 ], [ %i.cu, %bb.aa ]
  %i.cu = load ptr, ptr %i.b, align 8             ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %.lr.ph.i.i25
  %indvars.iv.i.i28 = phi i64 [ 0, %.lr.ph.i.i25 ], [ %indvars.iv.next.i.i29, %bb.w ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.01516.i27, i64 %indvars.iv.i.i28
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !96 ; 3 uses
  %i.cx = load i32, ptr %i.at, align 8, !tbaa !202 ; 2 uses
  %i.cy = icmp sgt i32 %i.cw, %i.cx
  br i1 %i.cy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.i.i28
  store i32 %i.cx, ptr %i.cz, align 4, !tbaa !96
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.da = load i32, ptr %i.au, align 4, !tbaa !201 ; 2 uses
  %i.db = icmp slt i32 %i.cw, %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.i.i28 ; 2 uses
  br i1 %i.db, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %i.da, ptr %i.dc, align 4, !tbaa !96
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store i32 %i.cw, ptr %i.dc, align 4, !tbaa !96
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  %indvars.iv.next.i.i29 = add nuw nsw i64 %indvars.iv.i.i28, 1 ; 2 uses
  %i.dd = load i32, ptr %i.a, align 8, !tbaa !203
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next.i.i29, %i.de
  br i1 %i.df, label %bb.r, label %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i30, !llvm.loop !2

_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i30: ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.i26
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !96
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.i26
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !96
  %i.dk = sub nsw i32 %i.dh, %i.dj                ; 5 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.i26 ; 2 uses
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !96
  %i.dm = load i32, ptr %i.av, align 4, !tbaa !206
  %i.dn = icmp slt i32 %i.dk, %i.dm
  br i1 %i.dn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i30
  %i.do = load i32, ptr %i.ax, align 4, !tbaa !204
  %i.dp = add nsw i32 %i.do, %i.dk
  br label %.sink.split.i32

bb.y:                                             ; preds = %_ZNK5draco33PredictionSchemeWrapTransformBaseIiE19ClampPredictedValueEPKi.exit.loopexit.i30
  %i.dq = load i32, ptr %i.aw, align 8, !tbaa !205
  %i.dr = icmp sgt i32 %i.dk, %i.dq
  br i1 %i.dr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ds = load i32, ptr %i.ax, align 4, !tbaa !204
  %i.dt = sub nsw i32 %i.dk, %i.ds
  br label %.sink.split.i32

.sink.split.i32:                                  ; preds = %bb.z, %bb.x
  %.sink.i33 = phi i32 [ %i.dt, %bb.z ], [ %i.dp, %bb.x ]
  store i32 %.sink.i33, ptr %i.dl, align 4, !tbaa !96
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split.i32, %bb.y
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i26, 1 ; 2 uses
  %i.du = load i32, ptr %i.a, align 8, !tbaa !203 ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp slt i64 %indvars.iv.next.i31, %i.dv
  br i1 %i.dw, label %.lr.ph.i.i25, label %_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit34, !llvm.loop !3

_ZNK5draco37PredictionSchemeWrapEncodingTransformIiiE17ComputeCorrectionEPKiS3_Pi.exit34: ; preds = %bb.aa, %.lr.ph.split
  %i.dx = phi i32 [ %i.co, %.lr.ph.split ], [ %i.du, %bb.aa ]
  %.0 = sub nsw i32 %.041, %4                     ; 2 uses
  %i.dy = icmp sgt i32 %.0, 0
  br i1 %i.dy, label %.lr.ph.split, label %._crit_edge, !llvm.loop !797

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.q, %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.bd) #19
  ret i1 true
}

declare noundef zeroext i1 @_ZNK5draco7Options7GetBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #1

declare noundef i32 @_ZNK5draco7Options6GetIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, i8 noundef signext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.draco::IndexType", align 4  ; 2 uses
  %5 = alloca %"class.draco::IndexType", align 4  ; 2 uses
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !45
  switch i32 %i.c, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit [
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.j
    i32 5, label %bb.m
    i32 6, label %bb.p
    i32 7, label %bb.t
    i32 8, label %bb.x
    i32 9, label %bb.ab
    i32 10, label %bb.ac
    i32 11, label %bb.ad
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !105   ; 2 uses
  %.sroa.speculated29.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.e)
  %.not30.i = icmp eq i8 %.sroa.speculated29.i, 0
  br i1 %.not30.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.f = load i32, ptr %1, align 4, !tbaa !86
  %i.g = load ptr, ptr %0, align 8, !tbaa !123    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !125
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !243
  %i.k = zext i32 %i.f to i64
  %i.l = mul nsw i64 %i.j, %i.k
  %i.m = getelementptr i8, ptr %i.h, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !122
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !244  ; 2 uses
  %i.s = icmp ugt ptr %i.r, %i.p
  br i1 %i.s, label %.lr.ph207, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.d:                                             ; preds = %.lr.ph207
  %i.t = getelementptr inbounds nuw i8, ptr %.01731.i206, i64 1 ; 2 uses
  %i.u = icmp ugt ptr %i.r, %i.t
  br i1 %i.u, label %.lr.ph207, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !798

.lr.ph207:                                        ; preds = %.lr.ph.i, %bb.d
  %.01731.i206 = phi ptr [ %i.t, %bb.d ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i205 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.v = load i8, ptr %.01731.i206, align 1, !tbaa !105
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i205
  %i.x = sext i8 %i.v to i32
  store i32 %i.x, ptr %i.w, align 4, !tbaa !96
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i205, 1 ; 2 uses
  %i.y = load i8, ptr %i.d, align 8, !tbaa !105   ; 2 uses
  %.sroa.speculated.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.y)
  %i.z = zext i8 %.sroa.speculated.i to i64
  %.not.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.z
  br i1 %.not.not.i, label %bb.d, label %.critedge.i, !llvm.loop !798

.critedge.i:                                      ; preds = %.lr.ph207, %bb.c
  %.lcssa.i = phi i8 [ %i.e, %bb.c ], [ %i.y, %.lr.ph207 ] ; 2 uses
  %i.aa = icmp ult i8 %.lcssa.i, %2
  br i1 %i.aa, label %.lr.ph36.preheader.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i:                             ; preds = %.critedge.i
  %i.ab = zext i8 %2 to i64
  %i.ac = zext i8 %.lcssa.i to i64                ; 2 uses
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %scevgep.i = getelementptr i8, ptr %3, i64 %i.ad
  %i.ae = xor i64 %i.ac, -1
  %i.af = add nsw i64 %i.ae, %i.ab
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = and i64 %i.ag, 17179869180
  %i.ai = add nuw nsw i64 %i.ah, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 range(i64 0, 1021) %i.ai, i1 false), !tbaa !96
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.e:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated29.i25 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ak)
  %.not30.i26 = icmp eq i8 %.sroa.speculated29.i25, 0
  br i1 %.not30.i26, label %.critedge.i34, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.e
  %i.al = load i32, ptr %1, align 4, !tbaa !86
  %i.am = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !125
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !243
  %i.aq = zext i32 %i.al to i64
  %i.ar = mul nsw i64 %i.ap, %i.aq
  %i.as = getelementptr i8, ptr %i.an, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i64, ptr %i.at, align 8, !tbaa !122
  %i.av = getelementptr i8, ptr %i.as, i64 %i.au  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !244 ; 2 uses
  %i.ay = icmp ugt ptr %i.ax, %i.av
  br i1 %i.ay, label %.lr.ph204, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.f:                                             ; preds = %.lr.ph204
  %i.az = getelementptr inbounds nuw i8, ptr %.01731.i29203, i64 1 ; 2 uses
  %i.ba = icmp ugt ptr %i.ax, %i.az
  br i1 %i.ba, label %.lr.ph204, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !799

.lr.ph204:                                        ; preds = %.lr.ph.i27, %bb.f
  %.01731.i29203 = phi ptr [ %i.az, %bb.f ], [ %i.av, %.lr.ph.i27 ] ; 2 uses
  %indvars.iv.i28202 = phi i64 [ %indvars.iv.next.i31, %bb.f ], [ 0, %.lr.ph.i27 ] ; 2 uses
  %i.bb = load i8, ptr %.01731.i29203, align 1, !tbaa !105
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i28202
  %i.bd = zext i8 %i.bb to i32
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !96
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i28202, 1 ; 2 uses
  %i.be = load i8, ptr %i.aj, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i32 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.be)
  %i.bf = zext i8 %.sroa.speculated.i32 to i64
  %.not.not.i33 = icmp samesign ult i64 %indvars.iv.next.i31, %i.bf
  br i1 %.not.not.i33, label %bb.f, label %.critedge.i34, !llvm.loop !799

.critedge.i34:                                    ; preds = %.lr.ph204, %bb.e
  %.lcssa.i35 = phi i8 [ %i.ak, %bb.e ], [ %i.be, %.lr.ph204 ] ; 2 uses
  %i.bg = icmp ult i8 %.lcssa.i35, %2
  br i1 %i.bg, label %.lr.ph36.preheader.i36, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i36:                           ; preds = %.critedge.i34
  %i.bh = zext i8 %2 to i64
  %i.bi = zext i8 %.lcssa.i35 to i64              ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %scevgep.i37 = getelementptr i8, ptr %3, i64 %i.bj
  %i.bk = xor i64 %i.bi, -1
  %i.bl = add nsw i64 %i.bk, %i.bh
  %i.bm = shl nsw i64 %i.bl, 2
  %i.bn = and i64 %i.bm, 17179869180
  %i.bo = add nuw nsw i64 %i.bn, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i37, i8 0, i64 range(i64 0, 1021) %i.bo, i1 false), !tbaa !96
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.g:                                             ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated29.i38 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.bq)
  %.not30.i39 = icmp eq i8 %.sroa.speculated29.i38, 0
  br i1 %.not30.i39, label %.critedge.i47, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.g
  %i.br = load i32, ptr %1, align 4, !tbaa !86
  %i.bs = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !125
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !243
  %i.bw = zext i32 %i.br to i64
  %i.bx = mul nsw i64 %i.bv, %i.bw
  %i.by = getelementptr i8, ptr %i.bt, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !122
  %i.cb = getelementptr i8, ptr %i.by, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !244
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i40
  %indvars.iv.i41 = phi i64 [ 0, %.lr.ph.i40 ], [ %indvars.iv.next.i44, %bb.i ] ; 2 uses
  %.01731.i42 = phi ptr [ %i.cb, %.lr.ph.i40 ], [ %i.ci, %bb.i ] ; 3 uses
  %i.ce = icmp ugt ptr %i.cd, %.01731.i42
  br i1 %i.ce, label %bb.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.i:                                             ; preds = %bb.h
  %i.cf = load i16, ptr %.01731.i42, align 2, !tbaa !246
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i41
  %i.ch = sext i16 %i.cf to i32
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !96
  %i.ci = getelementptr inbounds nuw i8, ptr %.01731.i42, i64 2
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i41, 1 ; 2 uses
  %i.cj = load i8, ptr %i.bp, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i45 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.cj)
  %i.ck = zext i8 %.sroa.speculated.i45 to i64
  %.not.not.i46 = icmp samesign ult i64 %indvars.iv.next.i44, %i.ck
  br i1 %.not.not.i46, label %bb.h, label %.critedge.i47, !llvm.loop !800

.critedge.i47:                                    ; preds = %bb.i, %bb.g
  %.lcssa.i48 = phi i8 [ %i.bq, %bb.g ], [ %i.cj, %bb.i ] ; 2 uses
  %i.cl = icmp ult i8 %.lcssa.i48, %2
  br i1 %i.cl, label %.lr.ph36.preheader.i49, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i49:                           ; preds = %.critedge.i47
  %i.cm = zext i8 %2 to i64
  %i.cn = zext i8 %.lcssa.i48 to i64              ; 2 uses
  %i.co = shl nuw nsw i64 %i.cn, 2
  %scevgep.i50 = getelementptr i8, ptr %3, i64 %i.co
  %i.cp = xor i64 %i.cn, -1
  %i.cq = add nsw i64 %i.cp, %i.cm
  %i.cr = shl nsw i64 %i.cq, 2
  %i.cs = and i64 %i.cr, 17179869180
  %i.ct = add nuw nsw i64 %i.cs, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i50, i8 0, i64 range(i64 0, 1021) %i.ct, i1 false), !tbaa !96
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.j:                                             ; preds = %bb.b
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated29.i51 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.cv)
  %.not30.i52 = icmp eq i8 %.sroa.speculated29.i51, 0
  br i1 %.not30.i52, label %.critedge.i60, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %bb.j
  %i.cw = load i32, ptr %1, align 4, !tbaa !86
  %i.cx = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !125
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !243
  %i.db = zext i32 %i.cw to i64
  %i.dc = mul nsw i64 %i.da, %i.db
  %i.dd = getelementptr i8, ptr %i.cy, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.df = load i64, ptr %i.de, align 8, !tbaa !122
  %i.dg = getelementptr i8, ptr %i.dd, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !244
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i53
  %indvars.iv.i54 = phi i64 [ 0, %.lr.ph.i53 ], [ %indvars.iv.next.i57, %bb.l ] ; 2 uses
  %.01731.i55 = phi ptr [ %i.dg, %.lr.ph.i53 ], [ %i.dn, %bb.l ] ; 3 uses
  %i.dj = icmp ugt ptr %i.di, %.01731.i55
  br i1 %i.dj, label %bb.l, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.l:                                             ; preds = %bb.k
  %i.dk = load i16, ptr %.01731.i55, align 2, !tbaa !246
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i54
  %i.dm = zext i16 %i.dk to i32
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !96
  %i.dn = getelementptr inbounds nuw i8, ptr %.01731.i55, i64 2
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %i.do = load i8, ptr %i.cu, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i58 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.do)
  %i.dp = zext i8 %.sroa.speculated.i58 to i64
  %.not.not.i59 = icmp samesign ult i64 %indvars.iv.next.i57, %i.dp
  br i1 %.not.not.i59, label %bb.k, label %.critedge.i60, !llvm.loop !801

.critedge.i60:                                    ; preds = %bb.l, %bb.j
  %.lcssa.i61 = phi i8 [ %i.cv, %bb.j ], [ %i.do, %bb.l ] ; 2 uses
  %i.dq = icmp ult i8 %.lcssa.i61, %2
  br i1 %i.dq, label %.lr.ph36.preheader.i62, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i62:                           ; preds = %.critedge.i60
  %i.dr = zext i8 %2 to i64
  %i.ds = zext i8 %.lcssa.i61 to i64              ; 2 uses
  %i.dt = shl nuw nsw i64 %i.ds, 2
  %scevgep.i63 = getelementptr i8, ptr %3, i64 %i.dt
  %i.du = xor i64 %i.ds, -1
  %i.dv = add nsw i64 %i.du, %i.dr
  %i.dw = shl nsw i64 %i.dv, 2
  %i.dx = and i64 %i.dw, 17179869180
  %i.dy = add nuw nsw i64 %i.dx, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i63, i8 0, i64 range(i64 0, 1021) %i.dy, i1 false), !tbaa !96
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.m:                                             ; preds = %bb.b
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated29.i64 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ea)
  %.not30.i65 = icmp eq i8 %.sroa.speculated29.i64, 0
  br i1 %.not30.i65, label %.critedge.i73, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %bb.m
  %i.eb = load i32, ptr %1, align 4, !tbaa !86
  %i.ec = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !125
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !243
  %i.eg = zext i32 %i.eb to i64
  %i.eh = mul nsw i64 %i.ef, %i.eg
  %i.ei = getelementptr i8, ptr %i.ed, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !122
  %i.el = getelementptr i8, ptr %i.ei, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !244
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i66
  %indvars.iv.i67 = phi i64 [ 0, %.lr.ph.i66 ], [ %indvars.iv.next.i70, %bb.o ] ; 2 uses
  %.01731.i68 = phi ptr [ %i.el, %.lr.ph.i66 ], [ %i.er, %bb.o ] ; 3 uses
  %i.eo = icmp ugt ptr %i.en, %.01731.i68
  br i1 %i.eo, label %bb.o, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.o:                                             ; preds = %bb.n
  %i.ep = load i32, ptr %.01731.i68, align 4, !tbaa !96
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i67
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !96
  %i.er = getelementptr inbounds nuw i8, ptr %.01731.i68, i64 4
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i67, 1 ; 2 uses
  %i.es = load i8, ptr %i.dz, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i71 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.es)
  %i.et = zext i8 %.sroa.speculated.i71 to i64
  %.not.not.i72 = icmp samesign ult i64 %indvars.iv.next.i70, %i.et
  br i1 %.not.not.i72, label %bb.n, label %.critedge.i73, !llvm.loop !802

.critedge.i73:                                    ; preds = %bb.o, %bb.m
  %.lcssa.i74 = phi i8 [ %i.ea, %bb.m ], [ %i.es, %bb.o ] ; 2 uses
  %i.eu = icmp ult i8 %.lcssa.i74, %2
  br i1 %i.eu, label %.lr.ph36.preheader.i75, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i75:                           ; preds = %.critedge.i73
  %i.ev = zext i8 %2 to i64
  %i.ew = zext i8 %.lcssa.i74 to i64              ; 2 uses
  %i.ex = shl nuw nsw i64 %i.ew, 2
  %scevgep.i76 = getelementptr i8, ptr %3, i64 %i.ex
  %i.ey = xor i64 %i.ew, -1
  %i.ez = add nsw i64 %i.ey, %i.ev
  %i.fa = shl nsw i64 %i.ez, 2
  %i.fb = and i64 %i.fa, 17179869180
  %i.fc = add nuw nsw i64 %i.fb, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i76, i8 0, i64 range(i64 0, 1021) %i.fc, i1 false), !tbaa !96
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.p:                                             ; preds = %bb.b
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated31.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.fe)
  %.not32.i = icmp eq i8 %.sroa.speculated31.i, 0
  br i1 %.not32.i, label %.critedge.i82, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %bb.p
  %i.ff = load i32, ptr %1, align 4, !tbaa !86
  %i.fg = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !125
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !243
  %i.fk = zext i32 %i.ff to i64
  %i.fl = mul nsw i64 %i.fj, %i.fk
  %i.fm = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !122
  %i.fp = getelementptr i8, ptr %i.fm, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !244
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.i77
  %indvars.iv.i78 = phi i64 [ 0, %.lr.ph.i77 ], [ %indvars.iv.next.i79, %bb.s ] ; 2 uses
  %.01733.i = phi ptr [ %i.fp, %.lr.ph.i77 ], [ %i.fw, %bb.s ] ; 3 uses
  %i.fs = icmp ugt ptr %i.fr, %.01733.i
  br i1 %i.fs, label %bb.r, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.r:                                             ; preds = %bb.q
  %i.ft = load i32, ptr %.01733.i, align 4, !tbaa !96 ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, -1
  br i1 %i.fu, label %bb.s, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.s:                                             ; preds = %bb.r
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i78
  store i32 %i.ft, ptr %i.fv, align 4, !tbaa !96
  %i.fw = getelementptr inbounds nuw i8, ptr %.01733.i, i64 4
  %indvars.iv.next.i79 = add nuw nsw i64 %indvars.iv.i78, 1 ; 2 uses
  %i.fx = load i8, ptr %i.fd, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i80 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.fx)
  %i.fy = zext i8 %.sroa.speculated.i80 to i64
  %.not.not.i81 = icmp samesign ult i64 %indvars.iv.next.i79, %i.fy
  br i1 %.not.not.i81, label %bb.q, label %.critedge.i82, !llvm.loop !803

.critedge.i82:                                    ; preds = %bb.s, %bb.p
  %.lcssa.i83 = phi i8 [ %i.fe, %bb.p ], [ %i.fx, %bb.s ] ; 2 uses
  %i.fz = icmp ult i8 %.lcssa.i83, %2
  br i1 %i.fz, label %.lr.ph38.preheader.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph38.preheader.i:                             ; preds = %.critedge.i82
  %i.ga = zext i8 %2 to i64
  %i.gb = zext i8 %.lcssa.i83 to i64              ; 2 uses
  %i.gc = shl nuw nsw i64 %i.gb, 2
  %scevgep.i84 = getelementptr i8, ptr %3, i64 %i.gc
  %i.gd = xor i64 %i.gb, -1
  %i.ge = add nsw i64 %i.gd, %i.ga
  %i.gf = shl nsw i64 %i.ge, 2
  %i.gg = and i64 %i.gf, 17179869180
  %i.gh = add nuw nsw i64 %i.gg, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i84, i8 0, i64 range(i64 0, 1021) %i.gh, i1 false), !tbaa !96
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.t:                                             ; preds = %bb.b
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated31.i85 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.gj)
  %.not32.i86 = icmp eq i8 %.sroa.speculated31.i85, 0
  br i1 %.not32.i86, label %.critedge.i94, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.t
  %i.gk = load i32, ptr %1, align 4, !tbaa !86
  %i.gl = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !125
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !243
  %i.gp = zext i32 %i.gk to i64
  %i.gq = mul nsw i64 %i.go, %i.gp
  %i.gr = getelementptr i8, ptr %i.gm, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !122
  %i.gu = getelementptr i8, ptr %i.gr, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !244
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.lr.ph.i87
  %indvars.iv.i88 = phi i64 [ 0, %.lr.ph.i87 ], [ %indvars.iv.next.i91, %bb.w ] ; 2 uses
  %.01733.i89 = phi ptr [ %i.gu, %.lr.ph.i87 ], [ %i.hc, %bb.w ] ; 3 uses
  %i.gx = icmp ugt ptr %i.gw, %.01733.i89
  br i1 %i.gx, label %bb.v, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.v:                                             ; preds = %bb.u
  %i.gy = load i64, ptr %.01733.i89, align 8, !tbaa !128 ; 2 uses
  %i.gz = add i64 %i.gy, 2147483648
  %or.cond.i.i = icmp ult i64 %i.gz, 4294967296
  br i1 %or.cond.i.i, label %bb.w, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.w:                                             ; preds = %bb.v
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i88
  %i.hb = trunc nsw i64 %i.gy to i32
  store i32 %i.hb, ptr %i.ha, align 4, !tbaa !96
  %i.hc = getelementptr inbounds nuw i8, ptr %.01733.i89, i64 8
  %indvars.iv.next.i91 = add nuw nsw i64 %indvars.iv.i88, 1 ; 2 uses
  %i.hd = load i8, ptr %i.gi, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i92 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.hd)
  %i.he = zext i8 %.sroa.speculated.i92 to i64
  %.not.not.i93 = icmp samesign ult i64 %indvars.iv.next.i91, %i.he
  br i1 %.not.not.i93, label %bb.u, label %.critedge.i94, !llvm.loop !804

.critedge.i94:                                    ; preds = %bb.w, %bb.t
  %.lcssa.i95 = phi i8 [ %i.gj, %bb.t ], [ %i.hd, %bb.w ] ; 2 uses
  %i.hf = icmp ult i8 %.lcssa.i95, %2
  br i1 %i.hf, label %.lr.ph38.preheader.i96, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph38.preheader.i96:                           ; preds = %.critedge.i94
  %i.hg = zext i8 %2 to i64
  %i.hh = zext i8 %.lcssa.i95 to i64              ; 2 uses
  %i.hi = shl nuw nsw i64 %i.hh, 2
  %scevgep.i97 = getelementptr i8, ptr %3, i64 %i.hi
  %i.hj = xor i64 %i.hh, -1
  %i.hk = add nsw i64 %i.hj, %i.hg
  %i.hl = shl nsw i64 %i.hk, 2
  %i.hm = and i64 %i.hl, 17179869180
  %i.hn = add nuw nsw i64 %i.hm, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i97, i8 0, i64 range(i64 0, 1021) %i.hn, i1 false), !tbaa !96
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.x:                                             ; preds = %bb.b
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated31.i98 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.hp)
  %.not32.i99 = icmp eq i8 %.sroa.speculated31.i98, 0
  br i1 %.not32.i99, label %.critedge.i107, label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %bb.x
  %i.hq = load i32, ptr %1, align 4, !tbaa !86
  %i.hr = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !125
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !243
  %i.hv = zext i32 %i.hq to i64
  %i.hw = mul nsw i64 %i.hu, %i.hv
  %i.hx = getelementptr i8, ptr %i.hs, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !122
  %i.ia = getelementptr i8, ptr %i.hx, i64 %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !244
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i100
  %indvars.iv.i101 = phi i64 [ 0, %.lr.ph.i100 ], [ %indvars.iv.next.i104, %bb.aa ] ; 2 uses
  %.01733.i102 = phi ptr [ %i.ia, %.lr.ph.i100 ], [ %i.ii, %bb.aa ] ; 3 uses
  %i.id = icmp ugt ptr %i.ic, %.01733.i102
  br i1 %i.id, label %bb.z, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.z:                                             ; preds = %bb.y
  %i.ie = load i64, ptr %.01733.i102, align 8, !tbaa !128 ; 2 uses
  %i.if = icmp ult i64 %i.ie, 2147483648
  br i1 %i.if, label %bb.aa, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.aa:                                            ; preds = %bb.z
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i101
  %i.ih = trunc nuw nsw i64 %i.ie to i32
  store i32 %i.ih, ptr %i.ig, align 4, !tbaa !96
  %i.ii = getelementptr inbounds nuw i8, ptr %.01733.i102, i64 8
  %indvars.iv.next.i104 = add nuw nsw i64 %indvars.iv.i101, 1 ; 2 uses
  %i.ij = load i8, ptr %i.ho, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i105 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ij)
  %i.ik = zext i8 %.sroa.speculated.i105 to i64
  %.not.not.i106 = icmp samesign ult i64 %indvars.iv.next.i104, %i.ik
  br i1 %.not.not.i106, label %bb.y, label %.critedge.i107, !llvm.loop !805

.critedge.i107:                                   ; preds = %bb.aa, %bb.x
  %.lcssa.i108 = phi i8 [ %i.hp, %bb.x ], [ %i.ij, %bb.aa ] ; 2 uses
  %i.il = icmp ult i8 %.lcssa.i108, %2
  br i1 %i.il, label %.lr.ph38.preheader.i109, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph38.preheader.i109:                          ; preds = %.critedge.i107
  %i.im = zext i8 %2 to i64
  %i.in = zext i8 %.lcssa.i108 to i64             ; 2 uses
  %i.io = shl nuw nsw i64 %i.in, 2
  %scevgep.i110 = getelementptr i8, ptr %3, i64 %i.io
  %i.ip = xor i64 %i.in, -1
  %i.iq = add nsw i64 %i.ip, %i.im
  %i.ir = shl nsw i64 %i.iq, 2
  %i.is = and i64 %i.ir, 17179869180
  %i.it = add nuw nsw i64 %i.is, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i110, i8 0, i64 range(i64 0, 1021) %i.it, i1 false), !tbaa !96
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ab:                                            ; preds = %bb.b
  %i.iu = load i32, ptr %1, align 4, !tbaa !86
  store i32 %i.iu, ptr %4, align 4, !tbaa !86
  %i.iv = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute17ConvertTypedValueIfiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef zeroext %2, ptr noundef nonnull %3)
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ac:                                            ; preds = %bb.b
  %i.iw = load i32, ptr %1, align 4, !tbaa !86
  store i32 %i.iw, ptr %5, align 4, !tbaa !86
  %i.ix = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute17ConvertTypedValueIdiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5, i8 noundef zeroext %2, ptr noundef nonnull %3)
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ad:                                            ; preds = %bb.b
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated29.i111 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.iz)
  %.not30.i112 = icmp eq i8 %.sroa.speculated29.i111, 0
  br i1 %.not30.i112, label %.critedge.i120, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.ad
  %i.ja = load i32, ptr %1, align 4, !tbaa !86
  %i.jb = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !125
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !243
  %i.jf = zext i32 %i.ja to i64
  %i.jg = mul nsw i64 %i.je, %i.jf
  %i.jh = getelementptr i8, ptr %i.jc, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !122
  %i.jk = getelementptr i8, ptr %i.jh, i64 %i.jj  ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !244 ; 2 uses
  %i.jn = icmp ugt ptr %i.jm, %i.jk
  br i1 %i.jn, label %.lr.ph, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ae:                                            ; preds = %.lr.ph
  %i.jo = getelementptr inbounds nuw i8, ptr %.01731.i115201, i64 1 ; 2 uses
  %i.jp = icmp ugt ptr %i.jm, %i.jo
  br i1 %i.jp, label %.lr.ph, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !806

.lr.ph:                                           ; preds = %.lr.ph.i113, %bb.ae
  %.01731.i115201 = phi ptr [ %i.jo, %bb.ae ], [ %i.jk, %.lr.ph.i113 ] ; 2 uses
  %indvars.iv.i114200 = phi i64 [ %indvars.iv.next.i117, %bb.ae ], [ 0, %.lr.ph.i113 ] ; 2 uses
  %i.jq = load i8, ptr %.01731.i115201, align 1, !tbaa !239, !range !61, !noundef !62
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i114200
  %i.js = zext nneg i8 %i.jq to i32
  store i32 %i.js, ptr %i.jr, align 4, !tbaa !96
  %indvars.iv.next.i117 = add nuw nsw i64 %indvars.iv.i114200, 1 ; 2 uses
  %i.jt = load i8, ptr %i.iy, align 8, !tbaa !105 ; 2 uses
  %.sroa.speculated.i118 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.jt)
  %i.ju = zext i8 %.sroa.speculated.i118 to i64
  %.not.not.i119 = icmp samesign ult i64 %indvars.iv.next.i117, %i.ju
  br i1 %.not.not.i119, label %bb.ae, label %.critedge.i120, !llvm.loop !806

.critedge.i120:                                   ; preds = %.lr.ph, %bb.ad
  %.lcssa.i121 = phi i8 [ %i.iz, %bb.ad ], [ %i.jt, %.lr.ph ] ; 2 uses
  %i.jv = icmp ult i8 %.lcssa.i121, %2
  br i1 %i.jv, label %.lr.ph36.preheader.i122, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i122:                          ; preds = %.critedge.i120
  %i.jw = zext i8 %2 to i64
  %i.jx = zext i8 %.lcssa.i121 to i64             ; 2 uses
  %i.jy = shl nuw nsw i64 %i.jx, 2
  %scevgep.i123 = getelementptr i8, ptr %3, i64 %i.jy
  %i.jz = xor i64 %i.jx, -1
  %i.ka = add nsw i64 %i.jz, %i.jw
  %i.kb = shl nsw i64 %i.ka, 2
  %i.kc = and i64 %i.kb, 17179869180
  %i.kd = add nuw nsw i64 %i.kc, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i123, i8 0, i64 range(i64 0, 1021) %i.kd, i1 false), !tbaa !96
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit: ; preds = %bb.ae, %bb.z, %bb.y, %bb.v, %bb.u, %bb.r, %bb.q, %bb.n, %bb.k, %bb.h, %bb.f, %bb.d, %.lr.ph.i113, %.lr.ph.i27, %.lr.ph.i, %.lr.ph36.preheader.i122, %.critedge.i120, %.lr.ph38.preheader.i109, %.critedge.i107, %.lr.ph38.preheader.i96, %.critedge.i94, %.lr.ph38.preheader.i, %.critedge.i82, %.lr.ph36.preheader.i75, %.critedge.i73, %.lr.ph36.preheader.i62, %.critedge.i60, %.lr.ph36.preheader.i49, %.critedge.i47, %.lr.ph36.preheader.i36, %.critedge.i34, %.lr.ph36.preheader.i, %.critedge.i, %bb.b, %bb.a, %bb.ac, %bb.ab
  %.0 = phi i1 [ false, %bb.n ], [ false, %bb.a ], [ false, %bb.b ], [ false, %.lr.ph.i ], [ false, %.lr.ph.i27 ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ true, %.lr.ph36.preheader.i122 ], [ true, %.critedge.i120 ], [ %i.iv, %bb.ab ], [ %i.ix, %bb.ac ], [ true, %.critedge.i ], [ true, %.lr.ph36.preheader.i ], [ true, %.critedge.i34 ], [ true, %.lr.ph36.preheader.i36 ], [ true, %.critedge.i47 ], [ true, %.lr.ph36.preheader.i49 ], [ true, %.critedge.i60 ], [ true, %.lr.ph36.preheader.i62 ], [ true, %.critedge.i73 ], [ true, %.lr.ph36.preheader.i75 ], [ true, %.critedge.i82 ], [ true, %.lr.ph38.preheader.i ], [ false, %bb.v ], [ true, %.critedge.i94 ], [ true, %.lr.ph38.preheader.i96 ], [ false, %bb.r ], [ true, %.critedge.i107 ], [ true, %.lr.ph38.preheader.i109 ], [ false, %.lr.ph.i113 ], [ false, %bb.z ], [ false, %bb.k ], [ false, %bb.q ], [ false, %bb.u ], [ false, %bb.y ], [ false, %bb.ae ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco17GeometryAttribute17ConvertTypedValueIfiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !243
  %i.f = zext i32 %i.a to i64
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = load ptr, ptr %0, align 8, !tbaa !123    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g
  %i.k = getelementptr i8, ptr %i.j, i64 %i.c     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !105   ; 2 uses
  %.sroa.speculated32 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.m)
  %.not33 = icmp eq i8 %.sroa.speculated32, 0
  br i1 %.not33, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !244  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i8, ptr %i.p, align 8, !range !61
  %.fr59 = freeze i8 %i.q
  %i.r = trunc i8 %.fr59 to i1
  %i.s = icmp ugt ptr %i.o, %i.k                  ; 2 uses
  br i1 %i.r, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph51, label %.loopexit

bb.b:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.01734.us50, i64 4 ; 2 uses
  %i.u = icmp ugt ptr %i.o, %i.t
  br i1 %i.u, label %.lr.ph51, label %.loopexit, !llvm.loop !807

.lr.ph51:                                         ; preds = %.lr.ph.split.us, %bb.b
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %bb.b ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.01734.us50 = phi ptr [ %i.t, %bb.b ], [ %i.k, %.lr.ph.split.us ] ; 2 uses
  %i.v = load float, ptr %.01734.us50, align 4, !tbaa !247 ; 6 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv66
  %i.x = tail call float @llvm.fabs.f32(float %i.v)
  %or.cond13.i.us = fcmp one float %i.x, +inf
  %i.y = fcmp uge float %i.v, f0xCF000000
  %or.cond14.not16.i.us = and i1 %i.y, %or.cond13.i.us
  %i.z = fcmp ult float %i.v, f0x4F000000
  %or.cond15.i.us = and i1 %i.z, %or.cond14.not16.i.us
  br i1 %or.cond15.i.us, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph51
  %i.aa = fcmp ogt float %i.v, 1.000000e+00
  %i.ab = fcmp olt float %i.v, 0.000000e+00
  %or.cond.i.us = or i1 %i.aa, %i.ab
  br i1 %or.cond.i.us, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = fpext float %i.v to double
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double f0x41DFFFFFFFC00000, double 5.000000e-01)
  %i.ae = tail call double @llvm.floor.f64(double %i.ad)
  %i.af = fptosi double %i.ae to i32
  store i32 %i.af, ptr %i.w, align 4, !tbaa !96
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.ag = load i8, ptr %i.l, align 8, !tbaa !105  ; 2 uses
  %.sroa.speculated.us = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ag)
  %i.ah = zext i8 %.sroa.speculated.us to i64
  %.not.us.not = icmp samesign ult i64 %indvars.iv.next67, %i.ah
  br i1 %.not.us.not, label %bb.b, label %.critedge, !llvm.loop !807

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph44, label %.loopexit

bb.e:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.0173443, i64 4 ; 2 uses
  %i.aj = icmp ugt ptr %i.o, %i.ai
  br i1 %i.aj, label %.lr.ph44, label %.loopexit, !llvm.loop !807

.lr.ph44:                                         ; preds = %.lr.ph.split, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph.split ] ; 2 uses
  %.0173443 = phi ptr [ %i.ai, %bb.e ], [ %i.k, %.lr.ph.split ] ; 2 uses
  %i.ak = load float, ptr %.0173443, align 4, !tbaa !247 ; 4 uses
  %i.al = tail call float @llvm.fabs.f32(float %i.ak)
  %or.cond13.i = fcmp one float %i.al, +inf
  %i.am = fcmp uge float %i.ak, f0xCF000000
  %or.cond14.not16.i = and i1 %i.am, %or.cond13.i
  %i.an = fcmp ult float %i.ak, f0x4F000000
  %or.cond15.i = and i1 %i.an, %or.cond14.not16.i
  br i1 %or.cond15.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph44
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ap = fptosi float %i.ak to i32
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i8, ptr %i.l, align 8, !tbaa !105  ; 2 uses
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.aq)
  %i.ar = zext i8 %.sroa.speculated to i64
  %.not.not = icmp samesign ult i64 %indvars.iv.next, %i.ar
  br i1 %.not.not, label %bb.e, label %.critedge, !llvm.loop !807

.critedge:                                        ; preds = %bb.f, %bb.d, %bb.a
  %.lcssa = phi i8 [ %i.m, %bb.a ], [ %i.ag, %bb.d ], [ %i.aq, %bb.f ] ; 3 uses
  %i.as = icmp ult i8 %.lcssa, %2
  br i1 %i.as, label %.lr.ph58.preheader, label %.loopexit

.lr.ph58.preheader:                               ; preds = %.critedge
  %i.at = zext i8 %2 to i64
  %i.au = zext i8 %.lcssa to i64
  %i.av = zext i8 %.lcssa to i64
  %i.aw = shl nuw nsw i64 %i.av, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.aw
  %i.ax = xor i64 %i.au, -1
  %i.ay = add nsw i64 %i.ax, %i.at
  %i.az = shl nsw i64 %i.ay, 2
  %i.ba = and i64 %i.az, 17179869180
  %i.bb = add nuw nsw i64 %i.ba, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 range(i64 0, 1021) %i.bb, i1 false), !tbaa !96
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.lr.ph44, %bb.b, %.lr.ph51, %bb.c, %.lr.ph58.preheader, %.lr.ph.split.us, %.lr.ph.split, %.critedge
  %.not30 = phi i1 [ true, %.critedge ], [ true, %.lr.ph58.preheader ], [ false, %.lr.ph.split ], [ false, %.lr.ph.split.us ], [ false, %bb.b ], [ false, %bb.c ], [ false, %.lr.ph51 ], [ false, %.lr.ph44 ], [ false, %bb.e ]
  ret i1 %.not30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco17GeometryAttribute17ConvertTypedValueIdiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !243
  %i.f = zext i32 %i.a to i64
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = load ptr, ptr %0, align 8, !tbaa !123    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g
  %i.k = getelementptr i8, ptr %i.j, i64 %i.c     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !105   ; 2 uses
  %.sroa.speculated32 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.m)
  %.not33 = icmp eq i8 %.sroa.speculated32, 0
  br i1 %.not33, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !244  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i8, ptr %i.p, align 8, !range !61
  %.fr59 = freeze i8 %i.q
  %i.r = trunc i8 %.fr59 to i1
  %i.s = icmp ugt ptr %i.o, %i.k                  ; 2 uses
  br i1 %i.r, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph51, label %.loopexit

bb.b:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.01734.us50, i64 8 ; 2 uses
  %i.u = icmp ugt ptr %i.o, %i.t
  br i1 %i.u, label %.lr.ph51, label %.loopexit, !llvm.loop !808

.lr.ph51:                                         ; preds = %.lr.ph.split.us, %bb.b
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %bb.b ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.01734.us50 = phi ptr [ %i.t, %bb.b ], [ %i.k, %.lr.ph.split.us ] ; 2 uses
  %i.v = load double, ptr %.01734.us50, align 8, !tbaa !248 ; 6 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv66
  %i.x = tail call double @llvm.fabs.f64(double %i.v)
  %or.cond13.i.us = fcmp one double %i.x, +inf
  %i.y = fcmp uge double %i.v, f0xC1E0000000000000
  %or.cond14.not16.i.us = and i1 %i.y, %or.cond13.i.us
  %i.z = fcmp ult double %i.v, f0x41DFFFFFFFC00000
  %or.cond15.i.us = and i1 %i.z, %or.cond14.not16.i.us
  br i1 %or.cond15.i.us, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph51
  %i.aa = fcmp ogt double %i.v, 1.000000e+00
  %i.ab = fcmp olt double %i.v, 0.000000e+00
  %or.cond.i.us = or i1 %i.aa, %i.ab
  br i1 %or.cond.i.us, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.v, double f0x41DFFFFFFFC00000, double 5.000000e-01)
  %i.ad = tail call double @llvm.floor.f64(double %i.ac)
  %storemerge.i.us = fptosi double %i.ad to i32
  store i32 %storemerge.i.us, ptr %i.w, align 4, !tbaa !96
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.ae = load i8, ptr %i.l, align 8, !tbaa !105  ; 2 uses
  %.sroa.speculated.us = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ae)
  %i.af = zext i8 %.sroa.speculated.us to i64
  %.not.us.not = icmp samesign ult i64 %indvars.iv.next67, %i.af
  br i1 %.not.us.not, label %bb.b, label %.critedge, !llvm.loop !808

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph44, label %.loopexit

bb.e:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.0173443, i64 8 ; 2 uses
  %i.ah = icmp ugt ptr %i.o, %i.ag
  br i1 %i.ah, label %.lr.ph44, label %.loopexit, !llvm.loop !808

.lr.ph44:                                         ; preds = %.lr.ph.split, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph.split ] ; 2 uses
  %.0173443 = phi ptr [ %i.ag, %bb.e ], [ %i.k, %.lr.ph.split ] ; 2 uses
  %i.ai = load double, ptr %.0173443, align 8, !tbaa !248 ; 4 uses
  %i.aj = tail call double @llvm.fabs.f64(double %i.ai)
  %or.cond13.i = fcmp one double %i.aj, +inf
  %i.ak = fcmp uge double %i.ai, f0xC1E0000000000000
  %or.cond14.not16.i = and i1 %i.ak, %or.cond13.i
  %i.al = fcmp ult double %i.ai, f0x41DFFFFFFFC00000
  %or.cond15.i = and i1 %i.al, %or.cond14.not16.i
  br i1 %or.cond15.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph44
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %storemerge.i = fptosi double %i.ai to i32
  store i32 %storemerge.i, ptr %i.am, align 4, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = load i8, ptr %i.l, align 8, !tbaa !105  ; 2 uses
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.an)
  %i.ao = zext i8 %.sroa.speculated to i64
  %.not.not = icmp samesign ult i64 %indvars.iv.next, %i.ao
  br i1 %.not.not, label %bb.e, label %.critedge, !llvm.loop !808

.critedge:                                        ; preds = %bb.f, %bb.d, %bb.a
  %.lcssa = phi i8 [ %i.m, %bb.a ], [ %i.ae, %bb.d ], [ %i.an, %bb.f ] ; 3 uses
  %i.ap = icmp ult i8 %.lcssa, %2
  br i1 %i.ap, label %.lr.ph58.preheader, label %.loopexit

.lr.ph58.preheader:                               ; preds = %.critedge
  %i.aq = zext i8 %2 to i64
  %i.ar = zext i8 %.lcssa to i64
  %i.as = zext i8 %.lcssa to i64
  %i.at = shl nuw nsw i64 %i.as, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.at
  %i.au = xor i64 %i.ar, -1
  %i.av = add nsw i64 %i.au, %i.aq
  %i.aw = shl nsw i64 %i.av, 2
  %i.ax = and i64 %i.aw, 17179869180
  %i.ay = add nuw nsw i64 %i.ax, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 range(i64 0, 1021) %i.ay, i1 false), !tbaa !96
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.lr.ph44, %bb.b, %.lr.ph51, %bb.c, %.lr.ph58.preheader, %.lr.ph.split.us, %.lr.ph.split, %.critedge
  %.not30 = phi i1 [ true, %.critedge ], [ true, %.lr.ph58.preheader ], [ false, %.lr.ph.split ], [ false, %.lr.ph.split.us ], [ false, %bb.b ], [ false, %bb.c ], [ false, %.lr.ph51 ], [ false, %.lr.ph44 ], [ false, %bb.e ]
  ret i1 %.not30
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{null, null}
!1 = distinct !{!1, !94}
!2 = distinct !{!2, !94}
!3 = distinct !{!3, !94}
!4 = distinct !{!4, !94}
!5 = distinct !{!5, !94}
!6 = distinct !{!6, !94}
!7 = distinct !{!7, !94}
!8 = distinct !{!8, !94}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"vtable pointer", !12, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"any pointer", !13, i64 0}
!20 = !{!"p1 _ZTSN5draco37PredictionSchemeTypedEncoderInterfaceIiiEE", !19, i64 0}
!21 = !{!"_ZTSSt10_Head_baseILm0EPN5draco37PredictionSchemeTypedEncoderInterfaceIiiEELb0EE", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{!"p1 _ZTSN5draco17PointCloudEncoderE", !19, i64 0}
!24 = !{!"p1 _ZTSN5draco14PointAttributeE", !19, i64 0}
!25 = !{!"p1 int", !19, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIiSaIiEE", !28, i64 0}
!30 = !{!"bool", !13, i64 0}
!31 = !{!"_ZTSSt10_Head_baseILm0EPN5draco14PointAttributeELb0EE", !24, i64 0}
!32 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco14PointAttributeESt14default_deleteIS1_EEE", !31, i64 0}
!33 = !{!"_ZTSSt5tupleIJPN5draco14PointAttributeESt14default_deleteIS1_EEE", !32, i64 0}
!34 = !{!"_ZTSSt15__uniq_ptr_implIN5draco14PointAttributeESt14default_deleteIS1_EE", !33, i64 0}
!35 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco14PointAttributeESt14default_deleteIS1_ELb1ELb1EE", !34, i64 0}
!36 = !{!"_ZTSSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EE", !35, i64 0}
!37 = !{!"_ZTSN5draco26SequentialAttributeEncoderE", !23, i64 8, !24, i64 16, !14, i64 24, !29, i64 32, !30, i64 56, !36, i64 64}
!38 = !{!37, !24, i64 16}
!39 = !{!"p1 _ZTSN5draco10DataBufferE", !19, i64 0}
!40 = !{!"long", !13, i64 0}
!41 = !{!"_ZTSN5draco20DataBufferDescriptorE", !40, i64 0, !40, i64 8}
!42 = !{!"_ZTSN5draco8DataTypeE", !13, i64 0}
!43 = !{!"_ZTSN5draco17GeometryAttribute4TypeE", !13, i64 0}
!44 = !{!"_ZTSN5draco17GeometryAttributeE", !39, i64 0, !41, i64 8, !13, i64 24, !42, i64 28, !30, i64 32, !40, i64 40, !40, i64 48, !43, i64 56, !14, i64 60}
!45 = !{!44, !42, i64 28}
!46 = !{!"p1 _ZTSN5draco10PointCloudE", !19, i64 0}
!47 = !{!"p1 _ZTSSt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS1_EE", !19, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!49 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !48, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EESaIS5_EE", !49, i64 0}
!51 = !{!"_ZTSSt6vectorISt10unique_ptrIN5draco17AttributesEncoderESt14default_deleteIS2_EESaIS5_EE", !50, i64 0}
!52 = !{!"p1 _ZTSN5draco13EncoderBufferE", !19, i64 0}
!53 = !{!"p1 _ZTSN5draco18EncoderOptionsBaseIiEE", !19, i64 0}
!54 = !{!"_ZTSN5draco17PointCloudEncoderE", !46, i64 8, !51, i64 16, !29, i64 40, !29, i64 64, !52, i64 88, !53, i64 96, !40, i64 104}
!55 = !{!54, !53, i64 96}
!56 = !{!20, !20, i64 0}
!57 = !{!37, !23, i64 8}
!58 = !{!54, !46, i64 8}
!59 = !{!"p1 _ZTSSt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS1_EE", !19, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN5draco14PointAttributeESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{i8 0, i8 2}
!62 = !{}
!63 = !{!24, !24, i64 0}
!64 = !{!"_ZTSSt10_Head_baseILm0EPN5draco10DataBufferELb0EE", !39, i64 0}
!65 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco10DataBufferESt14default_deleteIS1_EEE", !64, i64 0}
!66 = !{!"_ZTSSt5tupleIJPN5draco10DataBufferESt14default_deleteIS1_EEE", !65, i64 0}
!67 = !{!"_ZTSSt15__uniq_ptr_implIN5draco10DataBufferESt14default_deleteIS1_EE", !66, i64 0}
!68 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco10DataBufferESt14default_deleteIS1_ELb1ELb1EE", !67, i64 0}
!69 = !{!"_ZTSSt10unique_ptrIN5draco10DataBufferESt14default_deleteIS1_EE", !68, i64 0}
!70 = !{!"p1 _ZTSN5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE", !19, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!72 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE12_Vector_implE", !71, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE", !72, i64 0}
!74 = !{!"_ZTSSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE", !73, i64 0}
!75 = !{!"_ZTSN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEEE", !74, i64 0}
!76 = !{!"p1 _ZTSN5draco22AttributeTransformDataE", !19, i64 0}
!77 = !{!"_ZTSSt10_Head_baseILm0EPN5draco22AttributeTransformDataELb0EE", !76, i64 0}
!78 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco22AttributeTransformDataESt14default_deleteIS1_EEE", !77, i64 0}
!79 = !{!"_ZTSSt5tupleIJPN5draco22AttributeTransformDataESt14default_deleteIS1_EEE", !78, i64 0}
!80 = !{!"_ZTSSt15__uniq_ptr_implIN5draco22AttributeTransformDataESt14default_deleteIS1_EE", !79, i64 0}
!81 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco22AttributeTransformDataESt14default_deleteIS1_ELb1ELb1EE", !80, i64 0}
!82 = !{!"_ZTSSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EE", !81, i64 0}
!83 = !{!"_ZTSN5draco14PointAttributeE", !44, i64 0, !69, i64 64, !75, i64 72, !14, i64 96, !30, i64 100, !82, i64 104}
!84 = !{!83, !14, i64 96}
!85 = !{!"_ZTSN5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE", !14, i64 0}
!86 = !{!85, !14, i64 0}
!87 = !{!"p1 _ZTSN5draco9IndexTypeIjNS_20PointIndex_tag_type_EEE", !19, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_20PointIndex_tag_type_EEESaIS3_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!89 = !{!88, !87, i64 8}
!90 = !{!88, !87, i64 0}
!91 = !{!83, !30, i64 100}
!92 = !{!"_ZTSN5draco9IndexTypeIjNS_20PointIndex_tag_type_EEE", !14, i64 0}
!93 = !{!92, !14, i64 0}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !{!14, !14, i64 0}
!97 = !{!71, !70, i64 8}
!98 = !{!71, !70, i64 0}
!99 = !{!"llvm.loop.isvectorized", i32 1}
!100 = !{!"llvm.loop.unroll.runtime.disable"}
!101 = !{!26, !25, i64 0}
!102 = !{!26, !25, i64 16}
!103 = !{!"p1 _ZTSN5draco23PredictionSchemeEncoderIiNS_37PredictionSchemeWrapEncodingTransformIiiEEEE", !19, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{!13, !13, i64 0}
!106 = !{!"p1 omnipotent char", !19, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!108 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !107, i64 0}
!109 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !108, i64 0}
!110 = !{!"_ZTSSt6vectorIcSaIcEE", !109, i64 0}
!111 = !{!"p1 _ZTSN5draco13EncoderBuffer10BitEncoderE", !19, i64 0}
!112 = !{!"_ZTSSt10_Head_baseILm0EPN5draco13EncoderBuffer10BitEncoderELb0EE", !111, i64 0}
!113 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EEE", !112, i64 0}
!114 = !{!"_ZTSSt5tupleIJPN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EEE", !113, i64 0}
!115 = !{!"_ZTSSt15__uniq_ptr_implIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EE", !114, i64 0}
!116 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_ELb1ELb1EE", !115, i64 0}
!117 = !{!"_ZTSSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EE", !116, i64 0}
!118 = !{!"_ZTSN5draco13EncoderBufferE", !110, i64 0, !117, i64 24, !40, i64 32, !30, i64 40}
!119 = !{!118, !40, i64 32}
!120 = !{!106, !106, i64 0}
!121 = !{!44, !13, i64 24}
!122 = !{!44, !40, i64 48}
!123 = !{!44, !39, i64 0}
end_hunk_1
