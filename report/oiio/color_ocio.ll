inline.NumInlined: 6229
inline.NumDeleted: 1603
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E11rehash_implEm:bb.a
_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E22insert_value_on_rehashEmsjOS9_.exit: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ce, ptr noundef nonnull align 8 dereferenceable(104) %i.bw, i64 88, i1 false), !tbaa.struct !1150
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 96
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 104
  store ptr null, ptr %i.cp, align 8, !tbaa !40
  %i.cq = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !60
  store ptr null, ptr %i.by, align 8, !tbaa !40
  store <2 x ptr> %i.cq, ptr %i.co, align 8, !tbaa !60
  store ptr null, ptr %i.bx, align 8, !tbaa !98
  store i32 %.012.i, ptr %i.bz, align 8, !tbaa !1151
  store i16 %.013.i, ptr %i.ca, align 4, !tbaa !149
  br label %bb.r

bb.r:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E22insert_value_on_rehashEmsjOS9_.exit, %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.017.022, i64 112 ; 2 uses
  %.not = icmp eq ptr %i.cr, %i.k
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_114ColorProcessorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_121ColorProcessor_MatrixD0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_121ColorProcessor_Matrix5applyEPfiiilll(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) unnamed_addr #15 align 2 {
bb.a:
  %i.a = icmp eq i32 %4, 3
  %i.b = icmp eq i64 %5, 4                        ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph408, label %.loopexit

.lr.ph408:                                        ; preds = %.preheader
  %i.d = icmp sgt i32 %2, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  br i1 %i.d, label %.lr.ph405.preheader, label %.loopexit

.lr.ph405.preheader:                              ; preds = %.lr.ph408
  %wide.trip.count436 = zext nneg i32 %3 to i64
  br label %.lr.ph405

.lr.ph405:                                        ; preds = %.lr.ph405.preheader, %._crit_edge406
  %indvars.iv433 = phi i64 [ 0, %.lr.ph405.preheader ], [ %indvars.iv.next434, %._crit_edge406 ] ; 2 uses
  %i.i = mul nsw i64 %7, %indvars.iv433
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  br label %bb.b

._crit_edge406:                                   ; preds = %bb.b
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 1 ; 2 uses
  %exitcond437.not = icmp eq i64 %indvars.iv.next434, %wide.trip.count436
  br i1 %exitcond437.not, label %.loopexit, label %.lr.ph405, !llvm.loop !1157

bb.b:                                             ; preds = %.lr.ph405, %bb.b
  %.063403 = phi i32 [ 0, %.lr.ph405 ], [ %i.aj, %bb.b ]
  %.064402 = phi ptr [ %i.j, %.lr.ph405 ], [ %i.ak, %bb.b ] ; 5 uses
  %i.k = load float, ptr %.064402, align 4, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %.064402, i64 4 ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %.064402, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !69
  %i.p = insertelement <4 x float> poison, float %i.k, i64 0
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> zeroinitializer
  %i.r = load <4 x float>, ptr %i.e, align 16, !tbaa !22
  %i.s = fmul <4 x float> %i.q, %i.r
  %i.t = insertelement <4 x float> poison, float %i.m, i64 0
  %i.u = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> zeroinitializer
  %i.v = load <4 x float>, ptr %i.f, align 16, !tbaa !22
  %i.w = fmul <4 x float> %i.u, %i.v
  %i.x = fadd <4 x float> %i.s, %i.w
  %i.y = insertelement <4 x float> poison, float %i.o, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aa = load <4 x float>, ptr %i.g, align 16, !tbaa !22
  %i.ab = fmul <4 x float> %i.z, %i.aa
  %i.ac = fadd <4 x float> %i.x, %i.ab
  %i.ad = load <4 x float>, ptr %i.h, align 16, !tbaa !22
  %i.ae = fmul <4 x float> %i.ad, zeroinitializer
  %i.af = fadd <4 x float> %i.ac, %i.ae           ; 2 uses
  %i.ag = bitcast <4 x float> %i.af to <4 x i32>
  %i.ah = extractelement <4 x i32> %i.ag, i64 0
  store i32 %i.ah, ptr %.064402, align 4, !tbaa !69
  %i.ai = shufflevector <4 x float> %i.af, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.ai, ptr %i.l, align 4, !tbaa !69
  %i.aj = add nuw nsw i32 %.063403, 1             ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.064402, i64 %6
  %exitcond432.not = icmp eq i32 %i.aj, %2
  br i1 %exitcond432.not, label %._crit_edge406, label %bb.b, !llvm.loop !1158

bb.c:                                             ; preds = %bb.a
  %i.al = icmp sgt i32 %4, 3
  %or.cond3 = and i1 %i.al, %i.b
  br i1 %or.cond3, label %.preheader369, label %bb.e

.preheader369:                                    ; preds = %bb.c
  %i.am = icmp sgt i32 %3, 0
  br i1 %i.am, label %.lr.ph401, label %.loopexit

.lr.ph401:                                        ; preds = %.preheader369
  %i.an = icmp sgt i32 %2, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  br i1 %i.an, label %.lr.ph399.preheader, label %.loopexit

.lr.ph399.preheader:                              ; preds = %.lr.ph401
  %wide.trip.count430 = zext nneg i32 %3 to i64
  br label %.lr.ph399

.lr.ph399:                                        ; preds = %.lr.ph399.preheader, %._crit_edge
  %indvars.iv427 = phi i64 [ 0, %.lr.ph399.preheader ], [ %indvars.iv.next428, %._crit_edge ] ; 2 uses
  %i.as = mul nsw i64 %7, %indvars.iv427
  %i.at = getelementptr inbounds i8, ptr %1, i64 %i.as
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next428 = add nuw nsw i64 %indvars.iv427, 1 ; 2 uses
  %exitcond431.not = icmp eq i64 %indvars.iv.next428, %wide.trip.count430
  br i1 %exitcond431.not, label %.loopexit, label %.lr.ph399, !llvm.loop !1159

bb.d:                                             ; preds = %.lr.ph399, %bb.d
  %.060398 = phi i32 [ 0, %.lr.ph399 ], [ %i.bk, %bb.d ]
  %.061397 = phi ptr [ %i.at, %.lr.ph399 ], [ %i.bl, %bb.d ] ; 3 uses
  %i.au = load <4 x float>, ptr %.061397, align 1, !tbaa !22 ; 4 uses
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aw = load <4 x float>, ptr %i.ao, align 16, !tbaa !22
  %i.ax = fmul <4 x float> %i.aw, %i.av
  %i.ay = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.az = load <4 x float>, ptr %i.ap, align 16, !tbaa !22
  %i.ba = fmul <4 x float> %i.ay, %i.az
  %i.bb = fadd <4 x float> %i.ax, %i.ba
  %i.bc = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bd = load <4 x float>, ptr %i.aq, align 16, !tbaa !22
  %i.be = fmul <4 x float> %i.bc, %i.bd
  %i.bf = fadd <4 x float> %i.bb, %i.be
  %i.bg = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bh = load <4 x float>, ptr %i.ar, align 16, !tbaa !22
  %i.bi = fmul <4 x float> %i.bg, %i.bh
  %i.bj = fadd <4 x float> %i.bf, %i.bi
  store <4 x float> %i.bj, ptr %.061397, align 1, !tbaa !22
  %i.bk = add nuw nsw i32 %.060398, 1             ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %.061397, i64 %6
  %exitcond426.not = icmp eq i32 %i.bk, %2
  br i1 %exitcond426.not, label %._crit_edge, label %bb.d, !llvm.loop !1160

bb.e:                                             ; preds = %bb.c
  %i.bm = icmp sgt i32 %3, 0
  br i1 %i.bm, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.bn = icmp sgt i32 %2, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bs = icmp sgt i32 %4, 0
  %or.cond452 = and i1 %i.bn, %i.bs
  br i1 %or.cond452, label %.lr.ph382.us.us.preheader, label %.loopexit

.lr.ph382.us.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count424 = zext nneg i32 %3 to i64
  %exitcond414.not = icmp eq i32 %4, 1
  %exitcond414.not.1 = icmp eq i32 %4, 2
  %exitcond414.not.2 = icmp eq i32 %4, 3
  %exitcond419.not = icmp eq i32 %4, 1
  %exitcond419.not.1 = icmp eq i32 %4, 2
  %exitcond419.not.2 = icmp eq i32 %4, 3
  br label %.lr.ph382.us.us

.lr.ph382.us.us:                                  ; preds = %.lr.ph382.us.us.preheader, %._crit_edge383.split.us.us.split.us.us
  %.sroa.0455.0 = phi <4 x float> [ undef, %.lr.ph382.us.us.preheader ], [ %.sroa.0455.2, %._crit_edge383.split.us.us.split.us.us ]
  %indvars.iv421 = phi i64 [ 0, %.lr.ph382.us.us.preheader ], [ %indvars.iv.next422, %._crit_edge383.split.us.us.split.us.us ] ; 2 uses
  %i.bt = mul nsw i64 %7, %indvars.iv421
  %i.bu = getelementptr inbounds i8, ptr %1, i64 %i.bt
  br label %.lr.ph.us.us.us.us

.lr.ph.us.us.us.us:                               ; preds = %._crit_edge378.us.us.us.us, %.lr.ph382.us.us
  %.sroa.0455.1 = phi <4 x float> [ %.sroa.0455.0, %.lr.ph382.us.us ], [ %.sroa.0455.2, %._crit_edge378.us.us.us.us ]
  %.057380.us.us.us.us = phi i32 [ 0, %.lr.ph382.us.us ], [ %i.cm, %._crit_edge378.us.us.us.us ]
  %.058379.us.us.us.us = phi ptr [ %i.bu, %.lr.ph382.us.us ], [ %i.cn, %._crit_edge378.us.us.us.us ] ; 3 uses
  %i.bv = load float, ptr %.058379.us.us.us.us, align 4, !tbaa !69
  %.sroa.0455.0.vec.insert = insertelement <4 x float> %.sroa.0455.1, float %i.bv, i64 0 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.058379.us.us.us.us, i64 %5 ; 3 uses
  br i1 %exitcond414.not, label %._crit_edge.us.us.us.us, label %bb.f

bb.f:                                             ; preds = %.lr.ph.us.us.us.us
  %8 = load float, ptr %i.bw, align 4, !tbaa !69
  %.sroa.0455.4.vec.insert = insertelement <4 x float> %.sroa.0455.0.vec.insert, float %8, i64 1 ; 2 uses
  %9 = getelementptr inbounds i8, ptr %i.bw, i64 %5 ; 3 uses
  br i1 %exitcond414.not.1, label %._crit_edge.us.us.us.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %10 = load float, ptr %9, align 4, !tbaa !69
  %.sroa.0455.8.vec.insert = insertelement <4 x float> %.sroa.0455.4.vec.insert, float %10, i64 2 ; 2 uses
  %11 = getelementptr inbounds i8, ptr %9, i64 %5 ; 3 uses
  br i1 %exitcond414.not.2, label %._crit_edge.us.us.us.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %12 = load float, ptr %11, align 4, !tbaa !69
  %.sroa.0455.12.vec.insert = insertelement <4 x float> %.sroa.0455.8.vec.insert, float %12, i64 3
  %13 = getelementptr inbounds i8, ptr %11, i64 %5
  br label %._crit_edge.us.us.us.us

bb.i:                                             ; preds = %._crit_edge.us.us.us.us
  %14 = getelementptr inbounds i8, ptr %.lcssa, i64 %5 ; 2 uses
  %.sroa.0.4.vec.extract = extractelement <4 x float> %i.cl, i64 1
  store float %.sroa.0.4.vec.extract, ptr %14, align 4, !tbaa !69
  br i1 %exitcond419.not.1, label %._crit_edge378.us.us.us.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %15 = getelementptr inbounds i8, ptr %14, i64 %5 ; 2 uses
  %.sroa.0.8.vec.extract = extractelement <4 x float> %i.cl, i64 2
  store float %.sroa.0.8.vec.extract, ptr %15, align 4, !tbaa !69
  br i1 %exitcond419.not.2, label %._crit_edge378.us.us.us.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %16 = getelementptr inbounds i8, ptr %15, i64 %5
  %.sroa.0.12.vec.extract = extractelement <4 x float> %i.cl, i64 3
  store float %.sroa.0.12.vec.extract, ptr %16, align 4, !tbaa !69
  br label %._crit_edge378.us.us.us.us

._crit_edge.us.us.us.us:                          ; preds = %bb.h, %bb.g, %bb.f, %.lr.ph.us.us.us.us
  %.sroa.0455.2 = phi <4 x float> [ %.sroa.0455.0.vec.insert, %.lr.ph.us.us.us.us ], [ %.sroa.0455.4.vec.insert, %bb.f ], [ %.sroa.0455.8.vec.insert, %bb.g ], [ %.sroa.0455.12.vec.insert, %bb.h ] ; 6 uses
  %.lcssa = phi ptr [ %i.bw, %.lr.ph.us.us.us.us ], [ %9, %bb.f ], [ %11, %bb.g ], [ %13, %bb.h ] ; 2 uses
  %i.bx = shufflevector <4 x float> %.sroa.0455.2, <4 x float> poison, <4 x i32> zeroinitializer
  %i.by = load <4 x float>, ptr %i.bo, align 16, !tbaa !22
  %i.bz = fmul <4 x float> %i.by, %i.bx
  %i.ca = shufflevector <4 x float> %.sroa.0455.2, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cb = load <4 x float>, ptr %i.bp, align 16, !tbaa !22
  %i.cc = fmul <4 x float> %i.ca, %i.cb
  %i.cd = fadd <4 x float> %i.bz, %i.cc
  %i.ce = shufflevector <4 x float> %.sroa.0455.2, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cf = load <4 x float>, ptr %i.bq, align 16, !tbaa !22
  %i.cg = fmul <4 x float> %i.ce, %i.cf
  %i.ch = fadd <4 x float> %i.cd, %i.cg
  %i.ci = shufflevector <4 x float> %.sroa.0455.2, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cj = load <4 x float>, ptr %i.br, align 16, !tbaa !22
  %i.ck = fmul <4 x float> %i.ci, %i.cj
  %i.cl = fadd <4 x float> %i.ch, %i.ck           ; 4 uses
  %.sroa.0.0.vec.extract = extractelement <4 x float> %i.cl, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.lcssa, align 4, !tbaa !69
  br i1 %exitcond419.not, label %._crit_edge378.us.us.us.us, label %bb.i

._crit_edge378.us.us.us.us:                       ; preds = %bb.k, %bb.j, %bb.i, %._crit_edge.us.us.us.us
  %i.cm = add nuw nsw i32 %.057380.us.us.us.us, 1 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.058379.us.us.us.us, i64 %6
  %exitcond420.not = icmp eq i32 %i.cm, %2
  br i1 %exitcond420.not, label %._crit_edge383.split.us.us.split.us.us, label %.lr.ph.us.us.us.us, !llvm.loop !1161

._crit_edge383.split.us.us.split.us.us:           ; preds = %._crit_edge378.us.us.us.us
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 2 uses
  %exitcond425.not = icmp eq i64 %indvars.iv.next422, %wide.trip.count424
  br i1 %exitcond425.not, label %.loopexit, label %.lr.ph382.us.us, !llvm.loop !1162

.loopexit:                                        ; preds = %._crit_edge383.split.us.us.split.us.us, %._crit_edge, %._crit_edge406, %bb.e, %.lr.ph, %.preheader369, %.lr.ph401, %.preheader, %.lr.ph408
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #19

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS0_3ROIENS0_6paroptESt8functionIFvS2_EE(ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %0, ptr noundef byval(%"class.OpenImageIO::v3_1::paropt") align 8 %1, ptr noundef %2) local_unnamed_addr #24 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %4 = alloca %"class.std::function.201", align 8 ; 12 uses
  call void @_ZN11OpenImageIO4v3_16paropt7resolveEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.a = load i32, ptr %1, align 8, !tbaa !392
  %i.b = load i32, ptr %0, align 8, !tbaa !1163   ; 6 uses
  %.not.i = icmp eq i32 %i.b, -2147483648         ; 2 uses
  br i1 %.not.i, label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1164
  %i.e = sub nsw i32 %i.d, %i.b
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1165
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1166
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.l, %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !1167
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !1168
  %i.r = sub nsw i32 %i.o, %i.q
  %i.s = sext i32 %i.r to i64
  %i.t = mul i64 %i.m, %i.s
  br label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit

_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit:        ; preds = %bb.a, %bb.b
  %i.u = phi i64 [ %i.t, %bb.b ], [ 0, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !399
  %sext = shl i64 %i.w, 32
  %i.x = ashr exact i64 %sext, 32                 ; 2 uses
  %i.y = udiv i64 %i.u, %i.x
  %i.z = trunc i64 %i.y to i32
  %i.aa = add nsw i32 %i.z, 1
  %.sroa.speculated32 = call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.a) ; 3 uses
  store i32 %.sroa.speculated32, ptr %1, align 8, !tbaa !392
  %i.ab = icmp eq i32 %.sroa.speculated32, 1
  br i1 %i.ab, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !412
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.d, label %_ZNKSt8functionIFvN11OpenImageIO4v3_13ROIEEEclES2_.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZSt25__throw_bad_function_callv() #39
  unreachable

_ZNKSt8functionIFvN11OpenImageIO4v3_13ROIEEEclES2_.exit: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !409
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3), !inline_history !1169
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.p

bb.e:                                             ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !398 ; 2 uses
  %i.ai = icmp eq i16 %i.ah, 3
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !1164
  %i.al = sub nsw i32 %i.ak, %i.b
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !1165
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !1166
  %i.aq = sub nsw i32 %i.an, %i.ap
  %i.ar = icmp sle i32 %i.al, %i.aq
  %i.as = zext i1 %i.ar to i16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i16 [ %i.as, %bb.f ], [ %i.ah, %bb.e ]
  switch i16 %.0, label %bb.l [
    i16 1, label %bb.h
    i16 0, label %bb.i
    i16 4, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !1164
  %i.av = sub nsw i32 %i.au, %i.b
  %i.aw = sext i32 %i.av to i64
  br label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12

bb.i:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !1165
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1166
  %i.bb = sub nsw i32 %i.ay, %i.ba
  %i.bc = sext i32 %i.bb to i64
  br label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12

bb.j:                                             ; preds = %bb.g
  br i1 %.not.i, label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !1164
  %i.bf = sub nsw i32 %i.be, %i.b
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !1165
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !1166
  %i.bl = sub nsw i32 %i.bi, %i.bk
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul nsw i64 %i.bm, %i.bg
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !1167
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !1168
  %i.bs = sub nsw i32 %i.bp, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul i64 %i.bn, %i.bt
  %i.bv = call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.x)
  %i.bw = sitofp i64 %i.bv to double
  %i.bx = call double @llvm.sqrt.f64(double %i.bw)
  %i.by = fptosi double %i.bx to i32
  %i.bz = sdiv i32 %i.by, 4
  %i.ca = call i32 @llvm.smax.i32(i32 %i.bz, i32 1)
  %i.cb = zext nneg i32 %i.ca to i64              ; 2 uses
  br label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12

bb.l:                                             ; preds = %bb.g
  %i.cc = sitofp i32 %.sroa.speculated32 to double
  %i.cd = call noundef double @llvm.sqrt.f64(double %i.cc)
  %i.ce = fptosi double %i.cd to i64
  %i.cf = sdiv i64 %i.ce, 2
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.cf, i64 1) ; 2 uses
  br label %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12

_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12:      ; preds = %bb.k, %bb.j, %bb.i, %bb.l, %bb.h
  %.09 = phi i64 [ 0, %bb.h ], [ %i.bc, %bb.i ], [ %.sroa.speculated, %bb.l ], [ %i.cb, %bb.k ], [ 1, %bb.j ]
  %.08 = phi i64 [ %i.aw, %bb.h ], [ 0, %bb.i ], [ %.sroa.speculated, %bb.l ], [ %i.cb, %bb.k ], [ 1, %bb.j ]
  %i.cg = sext i32 %i.b to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !1164
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !1166
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !1165
  %i.cp = sext i32 %i.co to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %4, align 8, !tbaa !1170
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1172
  store ptr @_ZNSt17_Function_handlerIFvllllEZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E9_M_invokeERKSt9_Any_dataOlSE_SE_SE_, ptr %i.cr, align 8, !tbaa !1174
  store ptr @_ZNSt17_Function_handlerIFvllllEZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.cq, align 8, !tbaa !412
  invoke void @_ZN11OpenImageIO4v3_123parallel_for_chunked_2DEllllllOSt8functionIFvllllEENS0_6paroptE(i64 noundef %i.cg, i64 noundef %i.cj, i64 noundef %.08, i64 noundef %i.cm, i64 noundef %i.cp, i64 noundef %.09, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::paropt") align 8 %1)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_13ROI7npixelsEv.exit12
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !412 ; 2 uses
  %.not.i16 = icmp eq ptr %i.cs, null
  br i1 %.not.i16, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = invoke noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
