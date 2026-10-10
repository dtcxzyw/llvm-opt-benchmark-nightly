Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/attribute_octahedron_transform?download=true
inline.NumInlined: 210
inline.NumDeleted: 126
begin_hunk_0_@_ZNK5draco28AttributeOctahedronTransform25GeneratePortableAttributeERKNS_14PointAttributeERKSt6vectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEESaIS7_EEiPS1_:bb.a
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.bd = add i32 %.042, 1                        ; 2 uses
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !83
  %i.bg = load ptr, ptr %2, align 8, !tbaa !84    ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2
  %i.bl = icmp ugt i64 %i.bk, %i.be
  br i1 %i.bl, label %bb.c, label %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit, !llvm.loop !66

bb.d:                                             ; preds = %.lr.ph45, %.cont
  %indvars.iv51 = phi i64 [ 0, %.lr.ph45 ], [ %indvars.iv.next52, %.cont ] ; 3 uses
  %indvars.iv49 = phi i64 [ 0, %.lr.ph45 ], [ %indvars.iv.next50, %.cont ] ; 2 uses
  %i.bm = load i8, ptr %i.ae, align 4, !tbaa !77, !range !78, !noalias !85, !noundef !80
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %.cont, label %.else

.else:                                            ; preds = %bb.d
  %i.bo = load ptr, ptr %i.af, align 8, !noalias !85
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv51
  %storemerge.i25.else.val = load i32, ptr %i.bp, align 4, !tbaa !56, !noalias !85
  %i.bq = zext i32 %storemerge.i25.else.val to i64
  br label %.cont

.cont:                                            ; preds = %bb.d, %.else
  %storemerge.i25 = phi i64 [ %indvars.iv51, %bb.d ], [ %i.bq, %.else ]
  %i.br = load i64, ptr %i.ag, align 8, !tbaa !50
  %i.bs = load i64, ptr %i.ah, align 8, !tbaa !81 ; 2 uses
  %i.bt = mul nsw i64 %i.bs, %storemerge.i25
  %i.bu = load ptr, ptr %1, align 8, !tbaa !51
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !21
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.br
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.bt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.a, ptr align 1 %i.bx, i64 %i.bs, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @_ZNK5draco17OctahedronToolBox38FloatVectorToQuantizedOctahedralCoordsIfEEvPKT_PiS5_(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %i.by = load i32, ptr %i.d, align 4, !tbaa !56
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv49 ; 2 uses
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !56
  %i.ca = load i32, ptr %i.e, align 4, !tbaa !56
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count
  br i1 %exitcond.not, label %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit, label %bb.d, !llvm.loop !69

_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit: ; preds = %.cont34, %.cont, %.preheader, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %or.cond.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5draco28AttributeOctahedronTransform25InverseTransformAttributeERKNS_14PointAttributeEPS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !91
  %.not = icmp eq i32 %i.b, 9
  br i1 %.not, label %bb.b, label %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.d = load i32, ptr %i.c, align 8, !tbaa !49   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !92
  %.not19 = icmp eq i8 %i.f, 3
  br i1 %.not19, label %bb.c, label %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.i = add i32 %i.h, -2
  %or.cond.i = icmp ult i32 %i.i, 29
  br i1 %or.cond.i, label %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit, label %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit.thread

_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit: ; preds = %bb.c
  %notmask.i.neg = shl nuw nsw i32 1, %i.h
  %i.j = add nsw i32 %notmask.i.neg, -2
  %i.k = uitofp nneg i32 %i.j to float
  %i.l = fdiv float 2.000000e+00, %i.k            ; 2 uses
  %.not28 = icmp eq i32 %i.d, 0
  br i1 %.not28, label %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !51
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 %i.p     ; 5 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !51
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !50   ; 2 uses
  %i.v = getelementptr i8, ptr %i.s, i64 %i.u     ; 5 uses
  %i.w = zext i32 %i.d to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.d, 4
  br i1 %min.iters.check, label %.lr.ph.preheader38, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.x = add i32 %i.d, -1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = mul nuw nsw i64 %i.y, 12
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.u
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 12
  %i.ad = shl nuw nsw i64 %i.y, 3
  %i.ae = getelementptr i8, ptr %i.n, i64 %i.p
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ad
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %bound0 = icmp ult ptr %i.v, %i.ag
  %bound1 = icmp ult ptr %i.q, %i.ac
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4294967292               ; 5 uses
  %i.ah = trunc nuw i64 %n.vec to i32
  %i.ai = mul nuw nsw i64 %n.vec, 12
  %i.aj = getelementptr i8, ptr %i.v, i64 %i.ai
  %i.ak = shl nuw nsw i64 %n.vec, 3
  %i.al = getelementptr i8, ptr %i.q, i64 %i.ak
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.l, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = mul i64 %index, 12
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.am
  %i.an = shl i64 %index, 3
  %next.gep31 = getelementptr i8, ptr %i.q, i64 %i.an
  %wide.vec = load <8 x i32>, ptr %next.gep31, align 4, !tbaa !56, !alias.scope !93 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec32 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ao = sitofp <4 x i32> %strided.vec to <4 x float>
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %broadcast.splat, <4 x float> splat (float -1.000000e+00)) ; 3 uses
  %i.aq = sitofp <4 x i32> %strided.vec32 to <4 x float>
  %i.ar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> %broadcast.splat, <4 x float> splat (float -1.000000e+00)) ; 3 uses
  %i.as = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ap)
  %i.at = fsub <4 x float> splat (float 1.000000e+00), %i.as
  %i.au = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ar)
  %i.av = fsub <4 x float> %i.at, %i.au           ; 5 uses
  %i.aw = fneg <4 x float> %i.av
  %i.ax = fcmp ogt <4 x float> %i.av, zeroinitializer
  %i.ay = select <4 x i1> %i.ax, <4 x float> zeroinitializer, <4 x float> %i.aw ; 3 uses
  %i.az = fcmp olt <4 x float> %i.ap, zeroinitializer
  %i.ba = fneg <4 x float> %i.ay                  ; 2 uses
  %i.bb = select <4 x i1> %i.az, <4 x float> %i.ay, <4 x float> %i.ba
  %i.bc = fadd <4 x float> %i.ap, %i.bb           ; 3 uses
  %i.bd = fcmp olt <4 x float> %i.ar, zeroinitializer
  %i.be = select <4 x i1> %i.bd, <4 x float> %i.ay, <4 x float> %i.ba
  %i.bf = fadd <4 x float> %i.ar, %i.be           ; 3 uses
  %i.bg = fmul <4 x float> %i.bc, %i.bc
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %i.av, <4 x float> %i.bg)
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %i.bf, <4 x float> %i.bh) ; 2 uses
  %i.bj = fpext <4 x float> %i.bi to <4 x double>
  %i.bk = fcmp olt <4 x double> %i.bj, splat (double f0x3EB0C6F7A0B5ED8D) ; 3 uses
  %i.bl = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.bi)
  %i.bm = fdiv <4 x float> splat (float 1.000000e+00), %i.bl ; 3 uses
  %i.bn = fmul <4 x float> %i.av, %i.bm
  %i.bo = fmul <4 x float> %i.bc, %i.bm
  %i.bp = fmul <4 x float> %i.bf, %i.bm
  %predphi = select <4 x i1> %i.bk, <4 x float> zeroinitializer, <4 x float> %i.bn
  %predphi33 = select <4 x i1> %i.bk, <4 x float> zeroinitializer, <4 x float> %i.bo
  %predphi34 = select <4 x i1> %i.bk, <4 x float> zeroinitializer, <4 x float> %i.bp
  %i.bq = shufflevector <4 x float> %predphi, <4 x float> %predphi33, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.br = shufflevector <4 x float> %predphi34, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.bq, <8 x float> %i.br, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep, align 1, !alias.scope !94, !noalias !93
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.w
  br i1 %cmp.n, label %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit.thread, label %.lr.ph.preheader38

.lr.ph.preheader38:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.01627.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ah, %middle.block ]
  %.01726.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.preheader ], [ %i.aj, %middle.block ]
  %.01825.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.preheader ], [ %i.al, %middle.block ]
  %i.bt = insertelement <2 x float> poison, float %i.l, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader38, %_ZNK5draco17OctahedronToolBox37QuantizedOctahedralCoordsToUnitVectorEiiPf.exit
  %.01627 = phi i32 [ %i.ct, %_ZNK5draco17OctahedronToolBox37QuantizedOctahedralCoordsToUnitVectorEiiPf.exit ], [ %.01627.ph, %.lr.ph.preheader38 ]
  %.01726 = phi ptr [ %i.cs, %_ZNK5draco17OctahedronToolBox37QuantizedOctahedralCoordsToUnitVectorEiiPf.exit ], [ %.01726.ph, %.lr.ph.preheader38 ] ; 3 uses
  %.01825 = phi ptr [ %i.bv, %_ZNK5draco17OctahedronToolBox37QuantizedOctahedralCoordsToUnitVectorEiiPf.exit ], [ %.01825.ph, %.lr.ph.preheader38 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.01825, i64 8
  %i.bw = load <2 x i32>, ptr %.01825, align 4, !tbaa !56
  %i.bx = sitofp <2 x i32> %i.bw to <2 x float>
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bu, <2 x float> splat (float -1.000000e+00)) ; 3 uses
  %i.bz = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.by) ; 2 uses
  %i.ca = extractelement <2 x float> %i.bz, i64 0
  %i.cb = fsub float 1.000000e+00, %i.ca
  %i.cc = extractelement <2 x float> %i.bz, i64 1
  %i.cd = fsub float %i.cb, %i.cc                 ; 5 uses
  %i.ce = fneg float %i.cd
  %i.cf = fcmp ogt float %i.cd, 0.000000e+00
  %i.cg = select i1 %i.cf, float 0.000000e+00, float %i.ce ; 2 uses
  %i.ch = fneg float %i.cg
  %i.ci = fcmp olt <2 x float> %i.by, zeroinitializer
  %3 = insertelement <2 x float> poison, float %i.cg, i64 0
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %5 = insertelement <2 x float> poison, float %i.ch, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = select <2 x i1> %i.ci, <2 x float> %4, <2 x float> %6
  %8 = fadd <2 x float> %i.by, %7                 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %8, %8
  %9 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.cd, float %9)
  %10 = extractelement <2 x float> %8, i64 1      ; 2 uses
  %i.ck = tail call float @llvm.fmuladd.f32(float %10, float %10, float %i.cj) ; 2 uses
  %i.cl = fpext float %i.ck to double
  %i.cm = fcmp olt double %i.cl, f0x3EB0C6F7A0B5ED8D
  br i1 %i.cm, label %_ZNK5draco17OctahedronToolBox37QuantizedOctahedralCoordsToUnitVectorEiiPf.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.ck)
  %i.cn = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %11 = fmul float %i.cd, %i.cn
  %i.co = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x float> %8, %i.cp
  br label %_ZNK5draco17OctahedronToolBox37QuantizedOctahedralCoordsToUnitVectorEiiPf.exit

_ZNK5draco17OctahedronToolBox37QuantizedOctahedralCoordsToUnitVectorEiiPf.exit: ; preds = %.lr.ph, %bb.d
  %.sink36.i.i = phi float [ %11, %bb.d ], [ 0.000000e+00, %.lr.ph ]
  %i.cr = phi <2 x float> [ %i.cq, %bb.d ], [ zeroinitializer, %.lr.ph ]
  store float %.sink36.i.i, ptr %.01726, align 1
  %.sroa.423.0..017.sroa_idx = getelementptr inbounds nuw i8, ptr %.01726, i64 4
  store <2 x float> %i.cr, ptr %.sroa.423.0..017.sroa_idx, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %.01726, i64 12
  %i.ct = add nuw i32 %.01627, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ct, %i.d
  br i1 %exitcond.not, label %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit.thread, label %.lr.ph, !llvm.loop !90

_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit.thread: ; preds = %_ZNK5draco17OctahedronToolBox37QuantizedOctahedralCoordsToUnitVectorEiiPf.exit, %middle.block, %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit, %bb.c, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ true, %_ZN5draco17OctahedronToolBox19SetQuantizationBitsEi.exit ], [ true, %middle.block ], [ true, %_ZNK5draco17OctahedronToolBox37QuantizedOctahedralCoordsToUnitVectorEiiPf.exit ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5draco28AttributeOctahedronTransform13SetParametersEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((8, 12)) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5draco28AttributeOctahedronTransform16EncodeParametersEPNS_13EncoderBufferE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.d = icmp ne i32 %i.c, -1                     ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.e = trunc i32 %i.c to i8
  store i8 %i.e, ptr %i.a, align 1, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !106
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.l = load ptr, ptr %1, align 8, !tbaa !107    ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %i.o
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.k)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5draco28AttributeOctahedronTransform16DecodeParametersERKNS_14PointAttributeEPNS_13DecoderBufferE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !111
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !112  ; 2 uses
  %i.e = add i64 %i.d, 1                          ; 2 uses
  %i.f = icmp sge i64 %i.b, %i.e                  ; 2 uses
  br i1 %i.f, label %bb.b, label %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !113
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 %i.d
  %i.i = load i8, ptr %i.h, align 1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !112
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.k, align 8, !tbaa !24
  br label %_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit

_ZN5draco13DecoderBuffer6DecodeIhEEbPT_.exit:     ; preds = %bb.a, %bb.b
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5draco17OctahedronToolBox38FloatVectorToQuantizedOctahedralCoordsIfEEvPKT_PiS5_(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load <2 x float>, ptr %1, align 4, !tbaa !114
  %i.b = fpext <2 x float> %i.a to <2 x double>   ; 2 uses
  %i.c = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.b) ; 2 uses
  %shift = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.c, %shift
  %i.d = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !114
  %.fr = freeze float %i.f
  %i.g = fpext float %.fr to double               ; 2 uses
  %i.h = tail call noundef double @llvm.fabs.f64(double %i.g)
  %i.i = fadd double %i.d, %i.h                   ; 2 uses
  %i.j = fcmp ogt double %i.i, f0x3EB0C6F7A0B5ED8D
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = fdiv double 1.000000e+00, %i.i           ; 2 uses
  %i.l = insertelement <2 x double> poison, double %i.k, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x double> %i.m, %i.b
  %i.o = fmul double %i.k, %i.g
  %i.p = fcmp olt double %i.o, 0.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.8.0 = phi i1 [ %i.p, %bb.b ], [ false, %bb.a ]
  %i.q = phi <2 x double> [ %i.n, %bb.b ], [ <double 1.000000e+00, double 0.000000e+00>, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 4, !tbaa !55   ; 12 uses
  %i.t = sitofp i32 %i.s to double
  %i.u = insertelement <2 x double> poison, double %i.t, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.v, <2 x double> splat (double 5.000000e-01))
  %i.x = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.w)
  %i.y = fptosi <2 x double> %i.x to <2 x i32>    ; 3 uses
  %i.z = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.y, i1 true)
  %i.aa = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.z)
  %i.ab = sub i32 %i.s, %i.aa                     ; 4 uses
  %i.ac = icmp slt i32 %i.ab, 0
  %i.ad = extractelement <2 x i32> %i.y, i64 1    ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = sub i32 0, %i.ab
  %storemerge.p = select i1 %i.ae, i32 %i.ab, i32 %i.af
  %.sroa.9.0 = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 0) ; 4 uses
  %storemerge = select i1 %i.ac, i32 %storemerge.p, i32 0
  %.sroa.5.021 = add i32 %storemerge, %i.ad       ; 4 uses
  %i.ag = sub nsw i32 0, %.sroa.9.0
  %spec.select = select i1 %.sroa.8.0, i32 %i.ag, i32 %.sroa.9.0 ; 2 uses
  %i.ah = extractelement <2 x i32> %i.y, i64 0
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = add nsw i32 %.sroa.5.021, %i.s
  %i.ak = add nsw i32 %spec.select, %i.s
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.al = icmp slt i32 %.sroa.5.021, 0
  br i1 %i.al, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !54
  %i.ao = sub nsw i32 %i.an, %.sroa.9.0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.013.i = phi i32 [ %i.ao, %bb.f ], [ %.sroa.9.0, %bb.e ] ; 2 uses
  %i.ap = icmp slt i32 %spec.select, 0
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = tail call i32 @llvm.abs.i32(i32 %.sroa.5.021, i1 true)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !54
  %i.at = tail call i32 @llvm.abs.i32(i32 %.sroa.5.021, i1 true)
  %i.au = sub nsw i32 %i.as, %i.at
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.d
  %.1.i = phi i32 [ %i.aj, %bb.d ], [ %.013.i, %bb.h ], [ %.013.i, %bb.i ] ; 12 uses
  %.0.i = phi i32 [ %i.ak, %bb.d ], [ %i.aq, %bb.h ], [ %i.au, %bb.i ] ; 11 uses
  %i.av = icmp eq i32 %.1.i, 0                    ; 2 uses
  %i.aw = icmp eq i32 %.0.i, 0                    ; 2 uses
  %i.ax = or i32 %.0.i, %.1.i
  %or.cond.i.i = icmp eq i32 %i.ax, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4 ; 4 uses
  br i1 %or.cond.i.i, label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = icmp eq i32 %.0.i, %.pre.i.i            ; 2 uses
  %or.cond39.i.i = select i1 %i.av, i1 %i.ay, i1 false
  br i1 %or.cond39.i.i, label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = icmp eq i32 %.1.i, %.pre.i.i            ; 2 uses
  %or.cond3.i.i = and i1 %i.aw, %i.az
  br i1 %or.cond3.i.i, label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = icmp sgt i32 %.0.i, %i.s
  %or.cond = and i1 %i.av, %i.ba
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %factor43.i.i = shl i32 %i.s, 1
  %i.bb = sub i32 %factor43.i.i, %.0.i
  br label %_ZNK5draco17OctahedronToolBox40IntegerVectorToQuantizedOctahedralCoordsEPKiPiS3_.exit
end_hunk_0
